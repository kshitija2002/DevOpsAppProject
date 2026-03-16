# Use Python base image
FROM python:3.14-slim

# Set working directory
WORKDIR /app

# Copy project files
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir flask

# Expose port
EXPOSE 3000

# Run app
CMD ["python", "app.py"]