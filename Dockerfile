FROM rust:latest AS builder
WORKDIR /usr/src/controller
COPY . .
RUN make install && \
    make build

FROM scratch
COPY --from=builder /usr/src/controller/target/release/controller /usr/local/bin/controller
ENTRYPOINT ["controller"]
