#!/bin/bash

sed -i.bak -E "s|^(keyring-backend\s*=\s).*$|\1\"file\"|" ~/.juno/config/client.toml

sed -i.bak -E "s|^(chain-id\s*=\s).*$|\1\"uni-6\"|" ~/.juno/config/client.toml
