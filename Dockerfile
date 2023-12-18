# Use an official Python runtime as the base image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt .

# Install the required Python packages
RUN pip install --no-cache-dir -r requirements.txt

# Copy the web app code into the container
COPY app.js .

# Expose the port the web app will listen on
EXPOSE 5000

# Run the web app using the Flask development server
CMD ["javascript", "app.js"]
