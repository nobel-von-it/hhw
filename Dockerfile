FROM debian:bookworm-slim

WORKDIR /app

COPY . .

RUN apt-get update && \
    apt-get install -y && \
    apt-get install -y build-essential

RUN make -B

CMD [ "./hhw" ]
