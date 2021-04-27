#!/bin/bash

# Run a development instance of the Template Substrate bridge node.
# To override the default port just export TEMPLATE_PORT=9944

TEMPLATE_PORT="${TEMPLATE_PORT:-9944}"

RUST_LOG=runtime=trace \
    ./target/debug/template-bridge-node --dev --tmp \
    --rpc-cors=all --unsafe-rpc-external --unsafe-ws-external \
    --port 33033 --rpc-port 9933 --ws-port $TEMPLATE_PORT \
