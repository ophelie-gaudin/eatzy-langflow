FROM logspace/langflow:latest

# Create app directory
WORKDIR /app

# Copy your exported flows
COPY flows/ /app/flows/

# Set environment variables
ENV PYTHONWARNINGS="ignore::DeprecationWarning"
ENV LANGFLOW_DATABASE_URL="sqlite:////app/langflow.db"
ENV LANGFLOW_FLOW_STORE_DIR="/app/flows"

ENV HOST="0.0.0.0"

# Debug: List flows to verify they're copied correctly
RUN ls -la /app/flows/

# Railway will set PORT automatically
CMD langflow run --host $HOST --port $PORT