# Mon Projet FastAPI

Ceci est un projet FastAPI qui interagit avec l'API Groq.
[![CI/CD Pipeline](https://github.com/Cherycoco/Eval/actions/workflows/docker-deploy.yml/badge.svg?branch=dev)](https://github.com/Cherycoco/Eval/actions/workflows/docker-deploy.yml)

## Instructions d'installation

1. Clonez le dépôt.
2. Installez les dépendances avec `pip install -r requirements.txt`.
3. Exécutez l'application avec `uvicorn main:app --reload`.

## Exemples d'utilisation

### Vérifier l'état de l'API

Pour vérifier si l'API fonctionne, vous pouvez envoyer une requête GET à l'endpoint `/status` :

bash
curl http://localhost:5000/status
![Capture1](https://github.com/user-attachments/assets/4a9b4c4c-ebf9-403a-8ea2-0c5cf40bd0cb)

### Envoyer un prompt au chat
Pour interagir avec l'API et envoyer un prompt, utilisez l'endpoint /chat :
curl -X POST http://localhost:5000/chat -H "Content-Type: application/json" -d '{"prompt":"Where is Paris?"}'
![image](https://github.com/user-attachments/assets/040f890c-9647-4db4-a266-45ce36325577)

## Tests

### Exécution des Tests avec `pytest et tox`
![image](https://github.com/user-attachments/assets/94180758-f65a-4666-8c62-6e9161dd7044)






