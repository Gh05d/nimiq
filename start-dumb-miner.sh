#!/bin/bash

echo 'Please enter your wallet address: '
read WALLET

echo 'Please enter the number of threads you want to use: '
read THREADS

cd core/clients/nodejs

echo "The miner runs with $THREADS threads."

echo "You entered this wallet: $WALLET."

env UV_THREADPOOL_SIZE=128 node index.js --dumb --statistics \
 --wallet-address=\"$WALLET\" \
 --miner=$THREADS --network=main
