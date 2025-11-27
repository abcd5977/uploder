FROM python:3.10-slim-bookworm

# System packages
RUN apt-get update -y \
    && apt-get upgrade -y \
    && apt-get install -y --no-install-recommends \
        gcc \
        libffi-dev \
        musl-dev \
        ffmpeg \
        aria2 \
        python3-pip \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# (Optional) Install Python dependencies
# COPY requirements.txt .
# RUN pip install --no-cache-dir -r requirements.txt

# Add your source files here
# COPY . /app

# Default command
# CMD ["python", "app.py"]

