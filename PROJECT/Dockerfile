FROM python:3.8-slim

# Instalar las dependencias del sistema necesarias para construir paquetes Python
RUN apt-get update && apt-get install -y \
    libffi-dev \
    gcc \
    make \
    # otras dependencias necesarias
    && rm -rf /var/lib/apt/lists/*

# Actualizar pip y setuptools
RUN pip install --upgrade pip setuptools

# Copiar los archivos del proyecto
COPY API /app

# Establecer el directorio de trabajo
WORKDIR /app

# Instalar las dependencias de Python
RUN pip3 install -r requirements.txt

# Comando para correr el servidor y las pruebas
