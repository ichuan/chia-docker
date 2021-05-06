# chia-docker

Just a wrapper of [official docker image](https://github.com/Chia-Network/chia-docker). Listening ports:

- Node: 8555
- Wallet: 9256

## First time running: generate and keep keys secured

```
docker run --rm -it mixhq/chia
```


## Later, pass keys when starting node

```
mkdir data
# plain keys saved to chia-keys
docker run --restart always -itd --name xch -v $PWD/data:/root/.chia -v $PWD/chia-keys:/chia-keys -e keys=/chia-keys -p 9256:9256 -p 8555:8555 mixhq/chia
```

When wallet started, create a wallet for RPC (ID: 1). Will be prompted to create, otherwise just ignore.

```
docker exec -it xch venv/bin/chia wallet show
```

## Refs
- [Official docker builds](https://github.com/orgs/Chia-Network/packages/container/package/chia)
- [RPC Interfaces](https://github.com/Chia-Network/chia-blockchain/wiki/RPC-Interfaces)
