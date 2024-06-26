# Utiliser une image de base officielle Python 3.12.2
FROM python:3.12.2

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier le fichier des dépendances dans le répertoire de travail courant
COPY requirements.txt .

# Installer les dépendances
RUN pip install --no-cache-dir -r requirements.txt

# Copier le reste du code source de l'application dans le conteneur
COPY src/ .

# Exposer le port sur lequel l'application Flask écoute
EXPOSE 5020

# Définir la commande pour exécuter l'application Flask
CMD ["flask", "run", "--host=0.0.0.0", "--port=5020"]