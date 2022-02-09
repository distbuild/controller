FROM rust:latest AS builder
WORKDIR /usr/src/controller
COPY . .
RUN make install && \
    make build

FROM gcr.io/distroless/base-debian11
COPY --from=builder /usr/src/controller/target/release/controller /usr/local/bin/controller
USER nonroot:nonroot
ENTRYPOINT ["controller"]
