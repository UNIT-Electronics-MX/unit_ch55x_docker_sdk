

# CH552 Docker SDK

> Portable SDK for CH552 firmware development using SDCC inside Docker containers. Includes a cross-platform CLI tool (`spkg`) to simplify builds on both Linux and Windows.

## Features

- Unified CLI tool: `spkg` for Linux, macOS, and Windows (via Git Bash)
- No need to install SDCC or toolchains manually
- Fully Dockerized environment for isolated builds
- Makefile-based project system compatible with CH552/CH55x
- Example project provided in `examples/`


## Requirements

### Common (All Platforms)

- [Docker Desktop](https://www.docker.com/products/docker-desktop)

### Linux/macOS

- Git
- Python 3
- Bash shell
- Superuser privileges required to run Docker

### Windows

- [Git Bash](https://gitforwindows.org/)
- Docker Desktop with WSL2 backend or Hyper-V enabled

> Note: Running `spkg` on Linux may require `sudo` if your user is not part of the `docker` group. You can add your user with:  
> `sudo usermod -aG docker $USER && newgrp docker`

## Installation

Clone the repository:

```bash
git clone https://github.com/your-username/ch552-docker-sdk.git
cd ch552-docker-sdk/spkg
chmod +x spkg
```

(Optional) Install globally:

```bash
sudo ln -s "$(pwd)/spkg" /usr/local/bin/spkg
```

You can now run `spkg` from any location.

---

## Usage

### Show help

```bash
spkg --help
```

### Build a project

```bash
spkg -p ./examples/Blink
```

### Run `make clean`, `all`, `hex`, etc.

```bash
spkg -p ./examples/Blink clean
spkg -p ./examples/Blink all
spkg -p ./examples/Blink hex
```

### Build Docker image

```bash
spkg compose
```

---

## Output

The compiled binary will be generated at:

```
examples/Blink/build/main.bin
```

You can flash it using:

- `tools/chprog.py`
- [wchusbdfu](https://github.com/DeqingSun/ch554tools)
- [WCHISPTool](https://www.wch-ic.com/downloads/WCHISPTool_Setup_exe.html)

---

## Project Structure

```
ch552-docker-sdk/
├── spkg/                   # Self-contained CLI build system
│   ├── spkg                # CLI launcher (bash script)
│   ├── Dockerfile          # SDCC-based build environment
│   └── docker-compose.yml  # Container configuration
├── examples/               # Example CH552 projects
│   └── Blink/              # Blink example (main.c, src/, tools/, Makefile)
└── README.md
```

---

## Author

Developed by Cesar Bautista — Embedded systems engineer and tooling enthusiast.  
Includes portions of public domain and MIT-licensed work by [Stefan Wagner](https://github.com/wagiminator).

---

## License

This SDK is released under the MIT License.  
Example code inside `examples/` may retain original licenses (MIT/GPL/CC-BY).

