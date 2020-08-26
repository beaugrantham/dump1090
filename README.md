# dump1090

This is a fork of [flightaware/dump1090](https://github.com/flightaware/dump1090) with UI tweaks and Docker support. The Docker image includes NGINX for the UI.

## Building

```
docker build -t dump1090:1.0.0 .
```

## Running

```
docker run \
  -dit \
  -Pp 8080:8080 \
  --name dump1090 \
  --device /dev/bus/usb \
  dump1090:1.0.0 \
  --lat 0.0 \
  --lon 0.0 \
  --quiet
```

## UI

Visit [http://localhost:8080/](http://localhost:8080/) or attach a 1090 viewer to the desired port (e.g. 30005).
