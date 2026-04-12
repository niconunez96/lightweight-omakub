#!/bin/bash

curl -fsSL https://opencode.ai/install | bash

mkdir -p ~/.config/opencode
cp ~/.local/share/omakub/config/opencode/opencode.json ~/.config/opencode/opencode.json
