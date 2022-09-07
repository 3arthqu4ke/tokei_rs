FROM rust:latest
RUN apt-get update && apt-get upgrade -y && apt-get install -y git
WORKDIR /app
RUN rustup default nightly
ADD . /app
RUN cargo build --release
