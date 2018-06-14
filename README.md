# Creates a Linda Coin hot wallet 

## Dependencies 
* Docker

## Building  
```bash
./build.sh
```

## Docker Command 
```bash
docker run --name lindad -p 33821:33820 -v node:/root/.Linda linda

```

## Lindad commands 

```bash
docker exec -it lindad /root/Lindad getinfo
```