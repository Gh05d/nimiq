#!/bin/bash

echo 'Please enter your wallet address: '
read WALLET

echo 'Please enter the number of threads you want to use: '
read THREADS

echo "Please enter a name for the mining script: "
read MININGSCRIPT

#Generate Mining Script
cd ..
sudo touch $MININGSCRIPT
chmod +x $MININGSCRIPT

echo "cd core/clients/nodejs/" >> $nimiqScript 

echo 'echo \"The miner runs with $THREADS threads.\"' >> $MININGSCRIPT

env UV_THREADPOOL_SIZE=128 node index.js --dumb --statistics \
 --wallet-address=\"$WALLET\" \
 --miner=$THREADS --network=main >> $MININGSCRIPT