# Use Python 3.6 or later as a base image
FROM python:3.6

RUN apt-get update && apt-get install -y python3-pip

# Copy contents into image
COPY . .

# Install pip dependencies from requirements
RUN pip install --no-cache-dir -r requirements.txt

# Set YOUR_NAME environment variable
ENV YOUR_NAME=zzziyi

# Expose the correct port
EXPOSE 5500

# Create an entrypoint
ENTRYPOINT ["/usr/local/bin/python3","app.py" ]

