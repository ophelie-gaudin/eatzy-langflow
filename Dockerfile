FROM logspace/langflow:latest

# Create app directory
WORKDIR /app

# Copy your exported flows
COPY flows/ /app/flows/

# Set environment variables
ENV PYTHONWARNINGS="ignore::DeprecationWarning,ignore::UserWarning,ignore::SAWarning"
ENV LANGFLOW_DATABASE_URL="sqlite:////app/langflow.db"
ENV LANGFLOW_FLOW_STORE_DIR="/app/flows"
ENV HOST="0.0.0.0"

# Railway will set PORT automatically
CMD langflow run --host $HOST --port $PORT