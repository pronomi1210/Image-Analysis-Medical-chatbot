# Use a base image
FROM python:3.10-slim

# Set the working directory
WORKDIR /app

# Copy your code into the container
COPY . /app

# Install required Python packages
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Expose the port (optional, if your app runs on a port like 5000)
EXPOSE 5000

# Command to run the app
CMD ["python", "app.py"]
