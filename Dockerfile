# Use python 3.9 slim edition as base image
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy source code into the container
COPY . /app

# Setup the environment variable for the connection string

ARG OPENAI_API_KEY
ENV OPENAI_API_KEY="cffb634bf69b485d841ea0e98aca18eb"

# Install requirements
RUN pip install -r requirements.txt

EXPOSE 8501

CMD streamlit run --server.port 8501 --logger.level=debug app.py