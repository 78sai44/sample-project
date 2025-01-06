# Use an official Python runtime as the base image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the Python script into the container
COPY largest_number.py .

# Install Flask
RUN pip install flask

# Expose the port the app runs on
EXPOSE 5000

# Run the Python script when the container starts
CMD ["python", "largest_number.py"]
