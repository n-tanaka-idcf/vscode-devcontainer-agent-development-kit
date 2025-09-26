#!/bin/bash

# Install misc commands
aqua install --config .devcontainer/${DEVCONTAINER_NAME}/aqua.yaml

# Install python packages
cd /workspace/${DEVCONTAINER_NAME}
uv sync
uv python install --default
uv sync --frozen
