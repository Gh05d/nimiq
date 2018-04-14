#!/bin/bash
$MININGSKRIPT=start-miner.sh
echo 'Please enter your wallet address: '
read WALLET

echo 'Please enter the number of threads you want to use: '
read THREADS

#Generate Mining Script
cd ..
touch $MININGSCRIPT
chmod +x $MININGSCRIPT

echo "cd core/clients/nodejs/" >> $MININGSCRIPT 

echo 'echo \"The miner runs with $THREADS threads.\"' >> $MININGSCRIPT

env UV_THREADPOOL_SIZE=$THREADS node index.js --dumb --statistics \
 --wallet-address=\"$WALLET\" \
 --miner=$THREADS --network=main >> $MININGSCRIPT
 
 echo "A script called $MININGSKRIPT was created. To start the miner, enter bash $MININGSKRIPT in a terminal."
