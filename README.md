# controller

[![Build Status](https://github.com/distbuild/controller/workflows/CI/badge.svg?branch=main&event=push)](https://github.com/distbuild/controller/actions?query=workflow%3ACI)
[![codecov](https://codecov.io/gh/distbuild/controller/branch/main/graph/badge.svg?token=PK5RYYYHQ7)](https://codecov.io/gh/distbuild/controller)
[![Go Report Card](https://goreportcard.com/badge/github.com/distbuild/controller)](https://goreportcard.com/report/github.com/distbuild/controller)
[![License](https://img.shields.io/github/license/distbuild/controller.svg)](https://github.com/distbuild/controller/blob/main/LICENSE)
[![Release](https://img.shields.io/github/release/distbuild/controller.svg)](https://github.com/distbuild/controller/releases/latest)



## Introduction

*controller* is the controller of [distbuild](https://github.com/distbuild) written in Go.



## Prerequisites

- Go >= 1.17.0



## Run

```bash
git clone https://github.com/distbuild/controller.git

cd controller
version=latest make build
./bin/controller --config-file="$PWD/config/config.yml"
```



## Docker

```bash
git clone https://github.com/distbuild/controller.git

cd controller
version=latest make docker
docker run -v "$PWD"/config:/tmp ghcr.io/distbuild/controller:latest --config-file="/tmp/config.yml"
```



## Usage

```
usage: controller --config-file=CONFIG-FILE [<flags>]

distbuild controller

Flags:
  --help                     Show context-sensitive help (also try --help-long
                             and --help-man).
  --version                  Show application version.
  --config-file=CONFIG-FILE  Config file (.yml)
```



## Settings

*controller* parameters can be set in the directory [config](https://github.com/distbuild/controller/blob/main/config).

An example of configuration in [config.yml](https://github.com/distbuild/controller/blob/main/config/config.yml):

```yaml
apiVersion: v1
kind: controller
metadata:
  name: controller
spec:
```



## License

Project License can be found [here](LICENSE).



## Reference
