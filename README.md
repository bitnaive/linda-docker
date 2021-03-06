# Creates a Linda Coin hot wallet 
This container runs Lindad deamon for the purpose of hot/cold wallet masternode setup. These instructions assume you have a fully synced and running Linda wallet on your local computer.  

## Dependencies 
* Ubuntu 16.04 [VPS](https://www.vultr.com/?ref=7263002)
* unzip (sudo apt-get install unzip)
* git (sudo apt-get install git)
* [Docker](https://github.com/docker/docker-install)
* [Docker Compose](https://docs.docker.com/compose/install/#prerequisites)

## Setup Cold Wallet
- Create Masternode address (MN1)and send 2M Linda to it (wait for 15 confirmations)
- In debug console run 
```bash
masternode genkey
masternode outputs
```
- Put the output of previous step into ~/.Linda/masternode.conf
```bash
MN1 <VPS IP ADDRESS>:33820 <genkey> <outputs> 1
```
- make sure port 33820 is open on your VPS firewall

## Building  
Clone this repository to your [VPS](https://www.vultr.com/?ref=7263002) server
```bash
git clone https://github.com/bitnaive/linda-docker
```
Create the ``.env`` file and change
- rpcuser
- rpcpassword
- masternodeprivkey=\<genkey\>

Run the following command:=
```bash
./build.sh
```

## Docker Command 
```bash
docker-compose up -d

```

## Lindad commands 

```bash
docker exec -it masternode1 /Lindad help
docker exec -it masternode1 /Lindad getinfo
```

## Finishing Up
### On your desktop
- Restart your cold wallet
- In debug console type
```bash
masternode start-many
```

### On your VPS server
After waiting for your wallet to sync run
```bash
docker exec -it masternode1 /Lindad masternode start
```


