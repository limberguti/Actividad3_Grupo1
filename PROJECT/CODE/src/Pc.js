import React, { useEffect, useState } from "react";
import NavBar from './components/NavBar';
import './styles/ContainerJuegos.css';
const Pc = () => {
  const [videojuegos, setVideojuegos] = useState([]);
    // Función para obtener los datos de la API
    useEffect(() => {
    fetch('http://localhost:8000/videojuegos/plataforma/PC')
      .then(response => response.json())
      .then(data => setVideojuegos(data))
      .catch(error => console.log(error));
  }, []);

  return (
    <section className="pc-page">
      <NavBar/>
      <h1>Videojuegos</h1>
      <div className="games-container">
      {videojuegos.map(videojuego => (
        <div className="games-container__section" key={videojuego.IDVI}>
          <h2>{videojuego.NOMBREVI}</h2>
          <p className="games__price">Precio: {videojuego.PRECIOVI}</p>
          {/*<p>Descripción: {videojuego.DESCRIPCIONVI}</p>*/}
          <img src={videojuego.IMAGENVI} alt={videojuego.NOMBREVI} />
          {/*<p>Stock: {videojuego.STOCKVI}</p>*/}
        </div>
      ))}
      </div>
    </section>
  );
}

export default Pc;
