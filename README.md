# opencpn-macos-docker
Steps, scripts and config to run OpenCPN in a Docker container on macOS.

# Why?

I just wanted to try OpenCPN out without installing anything on my local computer.

# Dependencies

```sh
$ brew cask install xquartz
```

Enable "Allow connections from network clients".

# Build the docker image

```sh
$ docker build -t opencpn .
```

# Start it up

1. Start XQuartz
```sh
$ open -a XQuartz
```

1. Add your IP to access control list
```sh
$ DISPLAY=:0 xhost + $IP
```

1. Pass the `DISPLAY` env var to docker
```
$ docker run -e DISPLAY=$IP:0 -t opencpn
```

# Known issues

Since this setup uses remote X server, it doesn't support [OpenGL](https://opencpn.org/wiki/dokuwiki/doku.php?id=opencpn:opencpn_user_manual:advanced_features:opengl).
