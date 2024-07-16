FROM rust:1.79.0

COPY . .

RUN cargo install --path .  

ENV ARGS=""

CMD "rplace_backend ${ARGS}" 
