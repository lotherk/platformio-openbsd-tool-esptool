# platformio-openbsd-tool-esptool

This is a fake platformio package to make it work on OpenBSD. It is inspired by [https://github.com/trombik/platformio-freebsd-toolchain-xtensa/](https://github.com/trombik/platformio-freebsd-toolchain-xtensa/).

## Required packages
```
$ pkg_add esptool
```

## Installation

Go to `~/.platformio/packages` and clone this repository. It is important to name the cloned directory `tool-esptool`.
```
$ cd ~/.platformio/packages
$ git clone https://github.com/lotherk/platformio-openbsd-tool-esptool tool-esptool
$ cd tool-esptool
$ ./init.sh
```
