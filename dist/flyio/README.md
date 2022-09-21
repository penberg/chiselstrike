# ChiselStrike for Fly.io

```
podman build --tag chiselstrike-fly.io .
```

```
podman run --name chisel --network=host chiselstrike-fly.io:latest
```

```
fly launch --generate-name --now
```

```
chisel --rpc-addr http://<project name>.fly.dev:50051 apply
```
