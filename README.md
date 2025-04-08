# CH552 Docker SDK 🧰

> 🚀 Portable SDK for CH552 development using SDCC inside Docker containers. Works on both Linux and Windows without needing to install SDCC or setup toolchains manually.

## 📦 What's included

- ✅ **Dockerfile** with SDCC, Make, and Python preinstalled
- ✅ **`docker-compose.yml`** for easy build and run
- ✅ **Cross-platform scripts**: `compilar.sh` (Linux) and `compilar.bat` (Windows)
- ✅ **Blink example** for CH552 in `Blink/` folder
- ✅ **Makefile-based build system** ready for CH55x projects
- ✅ No dependencies outside of Docker



## 🛠 Requirements

- [Docker Desktop](https://www.docker.com/products/docker-desktop) installed on your system
- (Optional) `make` and `python3` if running without Docker


## 🚀 Getting Started

### 🔧 Linux

```bash
chmod +x compilar.sh
./compilar.sh
```

### 🪟 Windows

Double-click on `compilar.bat`


## 🧪 Result

- The output binary file will be generated at:
  ```
  Blink/main.bin
  ```

You can flash it using `chprog.py`, [wchusbdfu](https://github.com/DeqingSun/ch554tools), [WCHISPTool](https://www.wch-ic.com/downloads/WCHISPTool_Setup_exe.html) or any other uploader for CH552.


 > **Note:** The `WCHISPTool` is the official tool from WCH, but it requires a Windows environment. [Flash Firmware to Cocket Nova CH552G Using WCHISPStudio](https://www.hackster.io/mrcronos/flash-firmware-to-cocket-nova-ch552g-using-wchispstudio-f91103).

## 📁 Folder Structure

```
ch552-docker-sdk/
├── Blink/              # Example project (main.c, src/, tools/)
├── Dockerfile          # Image with SDCC, make, python
├── docker-compose.yml  # Docker Compose wrapper
├── compilar.sh         # Linux build script
├── compilar.bat        # Windows build script
└── README.md
```


## 🧱 Based on

This project includes a minimal USB CDC OLED Terminal example by [Stefan Wagner](https://github.com/wagiminator) under Common Creative License.

## 🧑‍💻 Author

Made with 🛠️ by Cesar Bautist a — Embedded systems & tooling enthusiast.


## 📜 License

This SDK is released under the MIT License.  
Example code inside `Blink/` may retain original licenses from contributors (MIT/GPL).

