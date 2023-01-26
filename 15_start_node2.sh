docker run -d --rm -e TAPLE_HTTPPORT=3002 \
    -e TAPLE_NETWORK_ADDR=/ip4/0.0.0.0/tcp \
    -e TAPLE_NETWORK_P2PPORT=40002 \
    -e TAPLE_NODE_SECRETKEY=5101a5ebb01fbbf137dbba4c473b5ca3a442ff7451252160d2e9b2b8ecd705f8 \
    -e RUST_LOG=info \
    -e TAPLE_NETWORK_KNOWNNODES=/ip4/172.17.0.2/tcp/40000/p2p/12D3KooWH9j6fStxmxp78woh8VU1QbzrMnHxceA92RBk9oCATiVk \
    -p 3002:3002 \
    -p 40002:40002 \
    --name="node_2" \
    opencanarias/taple-client:latest