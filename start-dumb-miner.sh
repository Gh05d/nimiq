#!/bin/bash

echo 'Please enter your wallet address: '
read WALLET

echo 'Please enter the number of threads you want to use: '
reat THREADS
cd core/clients/nodejs

echo "The miner runs with $THREADS threads."

env UV_THREADPOOL_SIZE=128 node index.js --dumb --statistics \
 --miner=$THREADS --network=main \
 --wallet-address \"$WALLET\"
