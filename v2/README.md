### How to run the container
```bash
docker build -t fastaiv2 .

docker run -it -d \
  --name fastaiv2 \
  --ipc=host \
  fastaiv2:latest
```

### Run `post_install` in the container
```bash
/bin/bash ./post_install.sh
```
### Reference
https://github.com/fastai/fastsetup
