FROM arm32v7/python:3.7.4-slim-buster

RUN apt-get update && \
    apt-get install -y build-essential \
                       zlib1g-dev \
                       libffi-dev \
                       libssl-dev \
                       git && \
    rm -rf /var/lib/apt/lists/*

RUN pip install pyinstaller==3.5

COPY ./scripts/entrypoint.sh /entrypoint.sh

VOLUME /app/
WORKDIR /app/

ENTRYPOINT ["/entrypoint.sh"]