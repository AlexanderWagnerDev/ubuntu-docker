# 🐳 Ubuntu Docker

[![Docker](https://img.shields.io/badge/Docker-Ubuntu-E95420?style=flat-square&logo=ubuntu)](https://www.docker.com/)
[![GitHub](https://img.shields.io/github/license/AlexanderWagnerDev/ubuntu-docker?style=flat-square)](https://github.com/AlexanderWagnerDev/ubuntu-docker)

Production-ready Ubuntu Docker image with custom mirror configuration, CA certificates, and automatic security updates.

---

## 🚀 Quick Start

```bash
docker pull ghcr.io/alexanderwagnerdev/ubuntu-docker:latest
```

```bash
docker run -it ghcr.io/alexanderwagnerdev/ubuntu-docker:latest
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

## 🐳 GitHub Container Registry

Pre-built images are available on GitHub Container Registry: [ghcr.io/alexanderwagnerdev/ubuntu-docker](https://github.com/AlexanderWagnerDev/ubuntu-docker/pkgs/container/ubuntu-docker)

## 📄 License

This project is open source and available under the MIT License.

---

# 🐳 Ubuntu Docker (Deutsch)

Produktionsbereites Ubuntu Docker-Image mit eigener Mirror-Konfiguration, CA-Zertifikaten und automatischen Sicherheitsupdates.

---

## 🚀 Schnellstart

```bash
docker pull ghcr.io/alexanderwagnerdev/ubuntu-docker:latest
```

```bash
docker run -it ghcr.io/alexanderwagnerdev/ubuntu-docker:latest
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

## 🐳 GitHub Container Registry

Fertige Images sind auf der GitHub Container Registry verfügbar: [ghcr.io/alexanderwagnerdev/ubuntu-docker](https://github.com/AlexanderWagnerDev/ubuntu-docker/pkgs/container/ubuntu-docker)

## 📄 Lizenz

Dieses Projekt ist Open Source und unter der MIT-Lizenz verfügbar.
