# Utilisation de l'image de base Python
FROM python:3.9

# Création d'un répertoire de travail
WORKDIR /app

# Copie du fichier requirements.txt dans le répertoire de travail
COPY requirements.txt .

# Installation des dépendances Python
RUN pip install --no-cache-dir -r requirements.txt

# Copie de l'ensemble du code source dans le répertoire de travail
COPY . .

# Exposition du port MQTT (par exemple, 1883)
EXPOSE 1883

# Lancement du script simple_mqtt_server.py
CMD ["python", "simple_mqtt_server.py"]
