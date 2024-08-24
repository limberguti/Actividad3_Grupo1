from fastapi import FastAPI, HTTPException
import mysql.connector
from fastapi.encoders import jsonable_encoder
from fastapi.middleware.cors import CORSMiddleware

app = FastAPI()

app.add_middleware(
    CORSMiddleware,
    allow_origins=["http://localhost:3000"],  # Agrega aquí el origen de tu aplicación de React
    allow_credentials=True,
    allow_methods=["GET", "POST", "PUT", "DELETE"],
    allow_headers=["*"],
)
# Configura la conexión a la base de datos
conn = mysql.connector.connect(
    host="localhost",
    user="root",
    password="",
    database="gamestore"
)

# Obtener todos los videojuegos
@app.get("/videojuegos")
def get_all_videojuegos():
    cursor = conn.cursor(dictionary=True)
    query = "SELECT * FROM VIDEOJUEGO"
    cursor.execute(query)
    result = cursor.fetchall()
    cursor.close()
    return jsonable_encoder(result)

# Obtener un videojuego por su ID
@app.get("/videojuegos/{videojuego_id}")
def get_videojuego(videojuego_id: str):
    cursor = conn.cursor(dictionary=True)
    query = f"SELECT * FROM VIDEOJUEGO WHERE IDVI = '{videojuego_id}'"
    cursor.execute(query)
    result = cursor.fetchone()
    cursor.close()
    return jsonable_encoder(result)

# Obtener videojuegos por nombre de plataforma
@app.get("/videojuegos/plataforma/{plataforma_nombre}")
def get_videojuegos_by_plataforma(plataforma_nombre: str):
    cursor = conn.cursor(dictionary=True)
    query = f"SELECT V.* FROM VIDEOJUEGO V JOIN PERTENECE P ON V.IDVI = P.IDVI JOIN PLATAFORMA PLA ON P.IDPLA = PLA.IDPLA WHERE PLA.NOMBREPLA = '{plataforma_nombre}'"
    cursor.execute(query)
    result = cursor.fetchall()
    cursor.close()
    if len(result) == 0:
        raise HTTPException(status_code=404, detail="No se encontraron videojuegos para la plataforma especificada")
    return jsonable_encoder(result)

# Crear un nuevo videojuego
#@app.post("/videojuegos")
#def create_videojuego(videojuego: dict):
#    cursor = conn.cursor()
#    query = "INSERT INTO VIDEOJUEGO (IDVI, NOMBREVI, PRECIOVI, IMAGENVI, DESCRIPCIONVI, STOCKVI) VALUES (%s, %s, %s, %s, %s, %s)"
#    values = (videojuego["IDVI"], videojuego["NOMBREVI"], videojuego["PRECIOVI"], videojuego["IMAGENVI"], videojuego["DESCRIPCIONVI"], videojuego["STOCKVI"])
#   cursor.execute(query, values)
#    conn.commit()
#    cursor.close()
#    return {"message": "Videojuego creado correctamente"}

# Actualizar un videojuego existente
#@app.put("/videojuegos/{videojuego_id}")
#def update_videojuego(videojuego_id: str, videojuego: dict):
#    cursor = conn.cursor()
#    query = "UPDATE VIDEOJUEGO SET NOMBREVI = %s, PRECIOVI = %s, IMAGENVI = %s, DESCRIPCIONVI = %s, STOCKVI = %s WHERE IDVI = %s"
#    values = (videojuego["NOMBREVI"], videojuego["PRECIOVI"], videojuego["IMAGENVI"], videojuego["DESCRIPCIONVI"], videojuego["STOCKVI"], videojuego_id)
#    cursor.execute(query, values)
#    conn.commit()
#    cursor.close()
#    return {"message": "Videojuego actualizado correctamente"}

# Eliminar un videojuego
#@app.delete("/videojuegos/{videojuego_id}")
#def delete_videojuego(videojuego_id: str):
#    cursor = conn.cursor()
#    query = f"DELETE FROM VIDEOJUEGO WHERE IDVI = '{videojuego_id}'"
#    cursor.execute(query)
#    conn.commit()
#    cursor.close()
#    return {"message": "Videojuego eliminado correctamente"}

if __name__ == "__main__":
    import uvicorn

    uvicorn.run(app, host="0.0.0.0", port=8000)

