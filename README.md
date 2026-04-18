# crumb

Custom embedded Linux for Raspberry Pi 4, built with Yocto.

## Quick start

```bash
docker build -t baker .
docker run -it -v $(pwd):/home/yocto/crumb baker bash
./setup.sh
source poky/oe-init-build-env build
```