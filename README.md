Intelligent DAG Platform (IDP)

The Intelligent DAG Platform (IDP) is a locally hosted AI workflow orchestration platform that combines:

🧠 LLM-based agent execution (LangChain + LangGraph)

🗓️ Workflow scheduling and monitoring (Apache Airflow)

📊 Unified browser interface (Streamlit)

🧱 Modular, domain-based structure for scalable DAG libraries

🚀 MVP Overview

The MVP implements:

A containerized development environment via Docker Compose

Local LLM inference using Ollama (e.g., Mistral)

Lead enrichment DAG with scoring agents

JSON result logging and structured output

Streamlit UI with trigger forms, result summaries, and logs

Modular folder structure supporting future DAGs across business functions (e.g., Marketing, Sales)

📁 Project Structure

├── agents/                # LangChain agents (enricher, scorer, etc.)
├── config/                # Config or utility files
├── dags/                  # Airflow DAG definitions
├── db/                    # Airflow database files (SQLite)
├── docker/                # Dockerfiles
├── flows/                 # LangGraph agent DAG logic
├── logs/                  # Run summaries and DAG logs
├── tools/                 # External tool wrappers (e.g., HubSpot client)
├── ui/                    # Streamlit UI components
├── airflow-init.sh        # Airflow DB/user bootstrap script
├── docker-compose.yml     # Main orchestration definition
├── requirements.txt       # Python requirements

🥪 Running Locally

Requires Docker Desktop with Linux containers enabled

docker-compose up --build

Then access:

Airflow UI → http://localhost:8080

Streamlit UI → http://localhost:8501

Ollama API → http://localhost:11434

🧠 Default Credentials (Airflow)

Username

Password

admin

admin

🛠️ In Progress



📌 Notes

This project runs entirely offline

Ollama is used for local LLM inference; no OpenAI calls

Designed for future extensibility (multi-DAG, multi-agent)

📃 License

MIT License

