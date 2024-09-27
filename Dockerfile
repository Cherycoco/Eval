# Utiliser l'image de base de Python
FROM python:3.9

# Définir le répertoire de travail
WORKDIR /app

# Copier le fichier des dépendances
COPY requirements.txt .

# Installer les dépendances
RUN pip install --no-cache-dir -r requirements.txt

# Copier le code source
COPY . .

# Exposer le port de l'application
EXPOSE 5000

# Commande pour exécuter l'application
CMD ["uvicorn", "mini-groq:app", "--host", "0.0.0.0", "--port", "5000"]
