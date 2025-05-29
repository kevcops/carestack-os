# Carestack OS

**Carestack OS** is a customized, immutable Fedora-based Linux distribution built using [uBlue](https://blue-build.org). It is tailored for dental and medical office environments, offering a streamlined experience with secure remote support, productivity apps, and Carestack integration out of the box.

## 🧱 Base Image

Carestack OS is based on the [uBlue main image](https://blue-build.org/images/ublue-main/), using **Kinoite** as the base for an immutable and secure desktop experience with KDE Plasma.

## ✨ Key Features

- ⚡ Immutable OS with automatic updates via OSTree
- 🎨 KDE Plasma desktop environment
- 🦷 Tight integration with Carestack (via Chromium app)
- 🔒 Secure remote support via Tailscale and Splashtop
- 🧩 Flatpak-first app installation model
- 🛠️ First-boot customization via Yafti

## 📦 Preinstalled Flatpaks

These apps are preinstalled and ready to go:

- [Chromium](https://flathub.org/apps/org.chromium.Chromium)
- [Thunderbird](https://flathub.org/apps/org.mozilla.Thunderbird)
- [LibreOffice](https://flathub.org/apps/org.libreoffice.LibreOffice)
- [VLC](https://flathub.org/apps/org.videolan.VLC)
- [Pinta](https://flathub.org/apps/com.github.PintaProject.Pinta)
- [Tailscale](https://flathub.org/apps/com.tailscale.Tailscale)
- [GNOME Boxes](https://flathub.org/apps/org.gnome.Boxes)
- [Bottles](https://flathub.org/apps/com.usebottles.bottles)

## 🧩 Optional Flatpaks via Yafti

Available during onboarding:

- GIMP

## 📥 RPM Packages

Included as native packages:

- Splashtop Streamer

## 🚀 Live ISO

The ISO includes a **Live Environment** and **Install Option**. Users can test Carestack OS before installing.

## 🖼️ Branding

- 💚 Primary branding color: **Green**
- 🔵 Secondary branding color: **Dark Blue**
- 🚀 Custom KDE launcher icon
- 🎞️ Plymouth boot splash with pulsing 3-dot animation
- 🖼️ Default wallpaper set on live and installed systems

## 🧰 Developer Tools

- GitHub Actions CI for builds
- Image signing with [Cosign](https://docs.sigstore.dev/cosign/overview)

## 📦 Container Image

All builds are pushed to [ghcr.io/kevcops/carestack-os](https://github.com/kevcops/carestack-os/pkgs/container/carestack-os)

## 🔐 Signing

Images are signed with `cosign.pub` (included in this repo). Validate with:

```bash
cosign verify ghcr.io/kevcops/carestack-os

💙 Powered by uBlue
Carestack OS is built with blue-build and powered by Fedora’s universal base image technology.