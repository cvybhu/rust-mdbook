# Download and compile mdbook
FROM rust as builder
RUN cargo install mdbook

# Create a clean container and keep just the mdbook executable
FROM rust
COPY --from=builder /usr/local/cargo/bin/mdbook /usr/bin/mdbook
