FROM python:3.9 AS builder

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# Étape pour ajouter Nginx
RUN apt-get update && apt-get install -y nginx
COPY nginx.conf /etc/nginx/nginx.conf

# Expose le port 80 pour Nginx
EXPOSE 80

# Démarre Nginx et l'application FastAPI
CMD service nginx start && uvicorn mini-groq:app --host 0.0.0.0 --port 5000

