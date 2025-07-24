# AI YouTube Control Center — Full Setup

## Run Locally
```
python -m venv venv
source venv/bin/activate  # Windows: venv\Scripts\activate
pip install -r requirements.txt
streamlit run app/dashboard.py
```

## Run in Docker
```
docker build -t ai_youtube_full .
docker run -p 8501:8501 ai_youtube_full
```

## Run with Docker Compose
```
docker-compose up --build
```

## Streamlit Secrets
Fill `.streamlit/secrets.toml` with your API keys for YouTube and Google before deployment.

## GitHub Actions CI/CD
This repository includes a GitHub Actions workflow for Docker build and deploy.
Set `DOCKER_USERNAME` and `DOCKER_PASSWORD` in your repository secrets.

## Deploying to Streamlit Cloud
1. Push this repository to GitHub.
2. Go to https://share.streamlit.io and connect your repo.
3. Set the entrypoint to `app/dashboard.py`.
4. Configure `.streamlit/secrets.toml` in Streamlit Cloud's secrets manager.
