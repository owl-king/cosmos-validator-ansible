#!/bin/bash

sed -i.bak -E "s/^minimum-gas-prices *=.*/minimum-gas-prices = \"0.0025ujunox\"/" ~/.juno/config/app.toml
