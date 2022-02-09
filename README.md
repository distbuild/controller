# controller

[![Build Status](https://github.com/distbuild/controller/workflows/CI/badge.svg?branch=main&event=push)](https://github.com/distbuild/controller/actions?query=workflow%3ACI)
[![codecov](https://codecov.io/gh/distbuild/controller/branch/main/graph/badge.svg?token=FM4NOMPT7Q)](https://codecov.io/gh/distbuild/controller)
[![License](https://img.shields.io/github/license/distbuild/controller.svg)](https://github.com/distbuild/controller/blob/main/LICENSE)
[![Tag](https://img.shields.io/github/tag/distbuild/controller.svg)](https://github.com/distbuild/controller/tags)
[![Gitter chat](https://badges.gitter.im/craftslab/distbuild.png)](https://gitter.im/craftslab/distbuild)



## Introduction

*controller* is the build controller of [distbuild](https://github.com/distbuild) written in Rust.



## Prerequisites

- Rust >= 1.57.0



## Run

```bash
git clone https://github.com/distbuild/controller.git

cd controller
make build
./target/release/controller --config-file="$PWD/src/config/config.yml"
```



## Docker

```bash
git clone https://github.com/distbuild/controller.git

cd controller
make docker
docker run -v "$PWD"/src/config:/tmp ghcr.io/distbuild/controller:latest --config-file="/tmp/config.yml"
```



## Usage

```
USAGE:
    controller --config-file <NAME>

OPTIONS:
    -c, --config-file <NAME>    Config file (.yml)
    -h, --help                  Print help information
    -V, --version               Print version information
```



## Settings

*controller* parameters can be set in the directory [config](https://github.com/distbuild/controller/blob/main/src/config).

An example of configuration in [config.yml](https://github.com/distbuild/controller/blob/main/src/config/config.yml):

```yaml
apiVersion: v1
kind: controller
metadata:
  name: controller
spec:
  foo: foo
```



## License

Project License can be found [here](LICENSE).



## Reference
