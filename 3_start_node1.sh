docker run -d --rm -e TAPLE_HTTPPORT=3001 \
    -e TAPLE_NETWORK_ADDR=/ip4/0.0.0.0/tcp \
    -e TAPLE_NETWORK_P2PPORT=40001 \
    -e TAPLE_NODE_SECRETKEY=ae5ac8625bb2255102b4a0679f88b2673bc8c04e0cc6222e2ab3d7c16dc6a05e \
    -e RUST_LOG=info \
    -e TAPLE_NETWORK_KNOWNNODES=/ip4/172.17.0.2/tcp/40000/p2p/12D3KooWH9j6fStxmxp78woh8VU1QbzrMnHxceA92RBk9oCATiVk \
    -p 3001:3001 \
    -p 40001:40001 \
    --name="node_1" \
    opencanarias/taple-client:latest