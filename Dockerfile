FROM rwthos/hermit-cargo:latest

ENV DEBIAN_FRONTEND=noninteractive

# Update Software repository
RUN apt-get clean 
RUN apt-get -qq update

RUN PATH="/opt/hermit/bin:/root/.cargo/bin:${PATH}" /root/.cargo/bin/cargo install cargo-xbuild
#RUN PATH="/opt/hermit/bin:/root/.cargo/bin:${PATH}" /root/.cargo/bin/cargo install --git https://github.com/hermitcore/pci_ids_parser.git

ENV XARGO_RUST_SRC="/root/.cargo/lib/rustlib/src/rust/src/"
