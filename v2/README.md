### How to run the container
```
docker build -t fastaiv2 .

docker run -it -d \ 
  --name fastaiv2 \
  --ipc=host \
  fastaiv2:latest
```

### Reference
https://github.com/fastai/fastsetup
