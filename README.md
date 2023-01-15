### How to run the container
```
docker build -t fastai .

docker run -it -d \
  --name fastai \
  --ipc=host \
  fastai:latest
```