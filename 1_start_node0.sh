docker run -d --rm -e TAPLE_HTTPPORT=3000 \
        -e TAPLE_NETWORK_ADDR=/ip4/0.0.0.0/tcp \
        -e TAPLE_NETWORK_P2PPORT=40000 \
        -e TAPLE_NODE_SECRETKEY=abe623f5c8bdb6955ac3874cc8ce28238a60e933d9ec9a10e974fcb145f44989 \
        -e RUST_LOG=info \
        -p 3000:3000 \
        -p 40000:40000 \
        --name="node_0" \
        opencanarias/taple-client:latest