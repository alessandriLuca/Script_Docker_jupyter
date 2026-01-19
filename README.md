# Docker-based JupyterLab Environment Launcher

This repository provides simple, cross-platform scripts to launch a **Docker-based JupyterLab environment** with a shared local folder, mainly intended for bioinformatics and data analysis workflows.

The scripts work on **Windows, macOS, and Linux** and automatically set up the required directory structure and Docker volume bindings.

---

## Requirements

Before running the scripts, make sure you have:

- Docker installed and running
- Permission to run Docker containers
- Local port **8888** available

---

## Repository Contents

- `scriptW10.cmd` – Windows (Command Prompt)
- `script.cmd` – Alternative Windows CMD script
- `script_MACOS_LINUX.sh` – macOS / Linux (Bash)

---

## How It Works

The scripts perform the following steps:

1. Check whether `configurationFile.txt` exists  
2. If it does not exist, store the current working directory path inside it  
3. Create a directory based on that path  
4. Mount the directory inside the Docker container as `/sharedFolder`  
5. Start a Docker container with:
   - JupyterLab
   - Docker-in-Docker support
   - Preconfigured bioinformatics environment

---

## Usage

### macOS / Linux

```bash
chmod +x script_MACOS_LINUX.sh
./script_MACOS_LINUX.sh
```

### Windows (Command Prompt)

Open **Command Prompt** in the script directory and run:

```cmd
scriptW10.cmd
```

(or `script.cmd` if preferred)

---

## Docker Configuration

The container is launched with the following settings:

- Image: `repbioinfo/informatica22-23`
- Platform: `linux/amd64`
- Port mapping: `8888:8888`
- Shared volume: local folder → `/sharedFolder`
- Privileged mode enabled
- Docker socket mounted (allows Docker usage inside the container)

---

## Accessing JupyterLab

After launching the container, open your browser and navigate to:

```
http://localhost:8888
```

Inside the container, your local project directory is available at:

```
/sharedFolder
```

All files created there are persisted on your local machine.

---

## Notes

- The container runs in interactive mode
- Closing the terminal will stop the container
- This setup is intended for **local development, teaching, and reproducible analyses**
- Not intended for production deployment

---

## License

Provided as-is for educational and research purposes.
