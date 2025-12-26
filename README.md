# SolRig

This is a Bash script that downloads and runs the XMRig miner software adapted for Solana cryptocurrency mining. 

## Prerequisites

- Bash shell (Linux Ubuntu)
- Internet connection
- Solana wallet address
- Number of threads for mining

## Usage

`git clone https://github.com/0ut0flin3/SolRig.git`

`cd SolRig`

`chmod +x ./start_mining.sh`

`./start_mining.sh <Solana address> <threads>`

EXAMPLE:

`./start_mining.sh 6RX2ADdcNWZfaUfuGeHg86AYAoMuLF45Lbgfu3oNGh9i 2`

### the payout occurs automatically as soon as the threshold of 0.15 SOL is reached. To check your real-time balance of the mined SOL run `./check_stats.sh <SOLANA_ADDRESS>` (You need to have `curl` installed)



## Explanation

The script begins by checking if the required arguments are provided. The two arguments required are the Solana wallet address and the number of threads to use for mining. If either of these is missing, the script will display an error message and exit.

Next, some variables are set:
- `ADDRESS` is set to the Solana wallet address provided in the argument.
- `THREADS` is set to the number of threads provided in the argument.
- `ALGO` is set to `randomx`.
- `MINER_URL` is set to the URL of the XMRig miner software release.
- `MINER_DIR` is set to the directory where the miner will be downloaded and extracted.
- `MINER_EXE` is set to the name of the executable file for the miner.
- `POOL_URL` is set to the URL of the mining pool.

After the variables are set, the script checks if the miner software is already downloaded and extracted. If it isn't, the script creates the `SolRig` directory in your `/home`, downloads the miner software and extracts it to the `SolRig` folder.

Finally, the script starts mining by running the miner with the provided arguments. It uses the `ADDRESS` as the username, appends the hostname and a unique worker ID to it, and uses `x` as the password. The `-t` flag is used to specify the number of threads to use for mining.

If the miner software is not found in the `SolRig` directory, the script will display an error message.


## Disclaimer

Cryptocurrency mining can cause a high level of stress on computer hardware and may cause the hardware to fail or become damaged. This script is provided for educational purposes only and the user assumes all risk associated with running this script.

