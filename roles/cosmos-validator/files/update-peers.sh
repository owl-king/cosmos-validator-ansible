#!/bin/bash

sed -i.bak -e "s/^persistent_peers *=.*/persistent_peers = \"f27f3afa10b62cb7f241f4f958fc3fd2e46a9f27@65.109.23.114:12656,e0fbaf1ef89afad23444e67b334bdf78a4b598fd@65.108.71.92:52656,edc35b09613096598e20f8508c977806093d7eec@194.61.28.217:26656,ed90921d43ede634043d152d7a87e8881fb85e90@65.108.77.106:26709,ec41af656b3450050ae27559b66b877373c44861@65.21.122.47:26656,4a91597dfe3ec715bbf6def225066fbb6ad86cfe@207.180.204.112:36656,f79ce2fab55e56b408d76ddcbc1c82c1a90e315b@54.74.146.114:26656,51f9e32a76d738c51dfa353917cef10729b6a600@161.97.118.84:26656,d81758e6a9044c6247a3ff70e29d4a86ff1a46fc@65.109.90.33:12656,51f7c671de697f6cc7d12f0485592f288c27a408@65.108.138.80:12656\"/" ~/.juno/config/config.toml
