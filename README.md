# crumb

Custom embedded Linux for Raspberry Pi 4, built with Yocto.

## Quick start

```bash
docker build -t baker .
docker volume create crumb-build
docker run -it \
  -v $(pwd):/home/yocto/crumb-src \
  -v crumb-build:/home/yocto/build \
  baker bash
./setup.sh
./init.sh
bitbake core-image-minimal
```