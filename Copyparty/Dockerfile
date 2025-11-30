FROM debian:trixie-slim

RUN apt-get update && apt-get install -y --no-install-recommends \
    ffmpeg \
    curl \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

RUN curl -LsSf https://astral.sh/uv/install.sh | sh

ENV PATH="/root/.local/bin:$PATH"

WORKDIR /app

RUN curl -LO https://github.com/9001/copyparty/releases/latest/download/copyparty-sfx.py
RUN uv init -p 3.13 .
RUN uv add Pillow "pyvips[binary]" pyzmq mutagen argon2-cffi rawpy pillow-heif
COPY party.conf .

CMD ["uv", "run", "copyparty-sfx.py", "-c", "party.conf", "--deps", "--hist", "/root/.config/hist"]

