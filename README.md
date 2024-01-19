# Install Ubuntu Linux on QEMU

Scripts that allow you to install and run Ubuntu Server in QEMU x86_64 architectures on an x86_64 machine.

## Dependency

```shell
sudo apt install qemu-system qemu-user-static
```

## Settings for boot

1. In grub, press `e` to edit Try or Install Ubuntu.
2. Add console parameter to kernel like:

```shell
    linux        /casper/vmlinuz console=ttyS0,115200n8  ---
```

### License

```
Copyright 2024 Vitaliy Zarubin

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```
