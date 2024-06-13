FROM ubuntu:22.04

RUN apt-get update && apt-get install -y entr ffmpeg && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY image-update.sh .
RUN chmod +x image-update.sh

CMD ["./image-update.sh"]