# Use the official Python image as a base image
FROM python:3.11-slim

# Set the working directory in the container
WORKDIR /app

# Copy the application code to the container
COPY . .

# Install necessary dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port that the Flask app runs on
EXPOSE 9696

# Command to run the Flask application
CMD ["python", "diamond.py"]
