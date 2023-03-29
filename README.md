# `camera-streamer` based webcam stack

These are the files of the new [`camera-streamer`](https://github.com/ayufan/camera-streamer) based webcam stack for [OctoPi-UpToDate](https://github.com/OctoPrint/OctoPi-UpToDate/).

## Requirements

- `/usr/bin/camera-streamer`, e.g. installed from `camera-streamer` on [apt.octoprint.org](https://apt.octoprint.org)
- `/usr/bin/libcamera-hello` as contained in `libcamera-apps-lite`
- `/usr/bin/v4l2-ctl` as contained in `v4l-utils`

## Installation

```
make install
```

Available config options for `make`:

- `DESTDIR` (default: unset, use this to have `make install` copy things to a build folder or something similar)
- `PREFIX` (default: `/usr`)
- `SCRIPTS_DIR` (default: `$(PREFIX)/bin`)
- `SYSTEMD_DIR` (default: `/etc/systemd/system`)
- `CONFIG_DIR` (default: `/etc/camera-streamer.conf.d`)

Example:

    DESTDIR=build make install

Note that all included scripts and units are written to accomodate the above paths.
