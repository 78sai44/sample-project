# Use an official Python runtime as the base image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the Python script into the container
COPY largest_number.py .

# Run the Python script when the container starts
CMD ["python", "largest_number.py"]
