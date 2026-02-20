# 🐳 Ubuntu Docker

[![Docker Hub](https://img.shields.io/docker/pulls/alexanderwagnerdev/ubuntu?style=flat-square&logo=docker)](https://hub.docker.com/r/alexanderwagnerdev/ubuntu)
[![Docker](https://img.shields.io/badge/Docker-Ubuntu-E95420?style=flat-square&logo=ubuntu)](https://www.docker.com/)
[![GitHub](https://img.shields.io/github/license/AlexanderWagnerDev/ubuntu-docker?style=flat-square)](https://github.com/AlexanderWagnerDev/ubuntu-docker)

Production-ready Ubuntu Docker image with custom mirror configuration, CA certificates, and security updates.

---

## 🚀 Quick Start

### Docker Hub
```bash
docker pull alexanderwagnerdev/ubuntu:latest
```

### GitHub Container Registry
```bash
docker pull ghcr.io/alexanderwagnerdev/ubuntu-docker:latest
```

### Run
```bash
docker run -it alexanderwagnerdev/ubuntu:latest
```

## ✨ Features

- 🚀 Based on latest Ubuntu LTS
- 🔄 Automatic security updates on build
- 🔐 CA certificates preinstalled
- 🌐 Custom mirror configuration (mirror.awdev.space)
- 🧹 Optimized with autoremove and cache cleanup
- ✅ Ready for production use

## 🔧 Build from Source

If you prefer to build the Docker image yourself:

1. **Clone the repository**:
   ```bash
   git clone https://github.com/AlexanderWagnerDev/ubuntu-docker.git
   cd ubuntu-docker
   ```

2. **Build the image**:
   ```bash
   docker build -t ubuntu-docker .
   ```

3. **Run the container**:
   ```bash
   docker run -it ubuntu-docker
   ```

## 📦 What's Inside

- Latest Ubuntu LTS base image
- Updated system packages
- CA certificates for secure connections
- Custom APT mirror configuration
- Cleaned package cache for optimal size

## 🔗 Links

- **Docker Hub:** [alexanderwagnerdev/ubuntu](https://hub.docker.com/r/alexanderwagnerdev/ubuntu)
- **GitHub Container Registry:** [ghcr.io/alexanderwagnerdev/ubuntu-docker](https://github.com/AlexanderWagnerDev/ubuntu-docker/pkgs/container/ubuntu-docker)
- **GitHub Repository:** [AlexanderWagnerDev/ubuntu-docker](https://github.com/AlexanderWagnerDev/ubuntu-docker)

## 📄 License

This project is open source and available under the GPL 3.0 License.

---

# 🐳 Ubuntu Docker (Deutsch)

Produktionsbereites Ubuntu Docker-Image mit eigener Mirror-Konfiguration, CA-Zertifikaten und Sicherheitsupdates.

---

## 🚀 Schnellstart

### Docker Hub
```bash
docker pull alexanderwagnerdev/ubuntu:latest
```

### GitHub Container Registry
```bash
docker pull ghcr.io/alexanderwagnerdev/ubuntu-docker:latest
```

### Ausführen
```bash
docker run -it alexanderwagnerdev/ubuntu:latest
```

## ✨ Features

- 🚀 Basiert auf aktuellem Ubuntu LTS
- 🔄 Automatische Sicherheitsupdates beim Build
- 🔐 CA-Zertifikate vorinstalliert
- 🌐 Eigene Mirror-Konfiguration (mirror.awdev.space)
- 🧹 Optimiert mit autoremove und Cache-Bereinigung
- ✅ Produktionsbereit

## 🔧 Selbst bauen

Falls du das Docker-Image selbst erstellen möchtest:

1. **Repository klonen**:
   ```bash
   git clone https://github.com/AlexanderWagnerDev/ubuntu-docker.git
   cd ubuntu-docker
   ```

2. **Image bauen**:
   ```bash
   docker build -t ubuntu-docker .
   ```

3. **Container starten**:
   ```bash
   docker run -it ubuntu-docker
   ```

## 📦 Inhalt

- Aktuelles Ubuntu LTS Basis-Image
- Aktualisierte System-Pakete
- CA-Zertifikate für sichere Verbindungen
- Eigene APT-Mirror-Konfiguration
- Bereinigter Paket-Cache für optimale Größe

## 🔗 Links

- **Docker Hub:** [alexanderwagnerdev/ubuntu](https://hub.docker.com/r/alexanderwagnerdev/ubuntu)
- **GitHub Container Registry:** [ghcr.io/alexanderwagnerdev/ubuntu-docker](https://github.com/AlexanderWagnerDev/ubuntu-docker/pkgs/container/ubuntu-docker)
- **GitHub Repository:** [AlexanderWagnerDev/ubuntu-docker](https://github.com/AlexanderWagnerDev/ubuntu-docker)

## 📄 Lizenz

Dieses Projekt ist Open Source und unter der GPL 3.0-Lizenz verfügbar.
