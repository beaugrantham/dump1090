# dump1090

This is a fork of [flightaware/dump1090](https://github.com/flightaware/dump1090) with UI tweaks and Docker support. The Docker image includes NGINX for the web UI.

## Building

```
docker build -t beaugrantham/dump1090:4.0.0 .
```

## Running

```
docker run \
  -dit \
  -p 8080:8080 \
  --name dump1090 \
  --device /dev/bus/usb \
  beaugrantham/dump1090:1.0.0 \
  --lat 0.0 \
  --lon 0.0 \
  --quiet
```

## UI

Visit [http://localhost:8080/](http://localhost:8080/).

Optionally use `--interactive`.

Optionally use `--net` and map ports 30001-30005,30104 to use a 1090 viewer.
