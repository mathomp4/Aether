# ---- Base Python ----
FROM python:3.11-slim

# ---- Install OS deps ----
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        build-essential \
        libgeos-dev \
        proj-bin \
        proj-data \
        libproj-dev \
        gdal-bin \
        libgdal-dev \
        ca-certificates \
        git \
        && rm -rf /var/lib/apt/lists/*

# ---- Virtual environment ----
ENV VIRTUAL_ENV=/aetherenv
RUN python -m venv $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH"

# ---- Set workdir ----
WORKDIR /app

# ---- Copy requirements ----
COPY requirements.txt ./

# ---- Install Python deps ----
RUN pip install --upgrade pip && pip install -r requirements.txt

# ---- Copy your app code ----
COPY . /app

# ---- Expose port for Bokeh ----
EXPOSE 9285

# ---- Default command ----
CMD ["bokeh", "serve", "--show", "aether.py", "--port", "9285", "--allow-websocket-origin=*", "--allow-websocket-origin=localhost:9285"]
