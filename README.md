<div align="center">

  ![Contributors](https://img.shields.io/github/contributors/AlfredProtocol/ArchAmbience?style=for-the-badge&color=brightgreen)
  ![Forks](https://img.shields.io/github/forks/AlfredProtocol/ArchAmbience?style=for-the-badge&color=blue)
  ![Stars](https://img.shields.io/github/stars/AlfredProtocol/ArchAmbience?style=for-the-badge&color=informational)
  ![Issues](https://img.shields.io/github/issues/AlfredProtocol/ArchAmbience?style=for-the-badge&color=yellow)
  ![License](https://img.shields.io/badge/license-UNLICENSE-brightgreen?style=for-the-badge)
  ![Linkedin](https://img.shields.io/badge/linkedin-@AlfredProtocol-grey?style=for-the-badge)

  <br />
  <br />

  <img src="https://raw.githubusercontent.com/othneildrew/Best-README-Template/master/images/logo.png" alt="Logo" width="80" height="80">

  ## ArchAmbience

  An awesome README template to jumpstart your projects!
  
  **[Explore the docs »](https://github.com/AlfredProtocol/ArchAmbience)**

  [View Demo](https://github.com/AlfredProtocol/ArchAmbience) · [Report Bug](https://github.com/AlfredProtocol/ArchAmbience/issues) · [Request Feature](https://github.com/AlfredProtocol/ArchAmbience/issues)

</div>

<br />

<details>
  <summary>Table of Contents</summary>
  <ol>
    <li><a href="#about-the-project">About The Project</a></li>
    <li><a href="#getting-started">Getting Started</a></li>
    <li><a href="#usage">Usage</a></li>
  </ol>
</details>

## 🛡️ About The Project

**ArchAmbience** is a minimalist, highly optimized, and aesthetically customized cybersecurity workspace and research environment built around a tactical theme (*Dark/Batman Mode*). This repository stores my configuration files (*dotfiles*) to replicate an identical operating system setup focused on ethical hacking and efficient development.

Unlike heavy and conventional desktop environments, this setup uses a **tiling window manager** that maximizes hardware performance and operator speed through full keyboard-based workflow.

### 🧰 Built With / Core Components

The ecosystem of this environment is built using key open-source community tools:

* **Window Manager:** `bspwm` (Binary Space Partitioning window management system)
* **Hotkeys:** `sxhkd` (Independent and low-latency hotkey daemon)
* **Terminal:** `kitty` (GPU-accelerated, high-performance terminal emulator with native image rendering support)
* **Status Bar:** `polybar` (Modular, informative, and highly customizable status bar)
* **Compositor:** `picom` (Visual effects, transparency blur, and shadows)
* **App Launcher:** `rofi` (Tactical application launcher and dynamic search menu)
* **Text Editor:** `neovim` (Terminal-optimized development and scripting environment)
* **Shell:** `zsh` / `bash` (Interactive command-line environments and automation layers)

### Here some images about the project

* <div align="center">
  <img src="images/archwall.png" alt="Mi escritorio de Batman" width="600">
</div>

* <div align="center">
  <img src="images/archwall2.png" alt="Mi escritorio de Batman" width="600">

</div>


## 🚀 Automation with install.sh (Recommended)

To simplify the full setup process, this repository includes an `install.sh` script.

The goal of this script is to centralize the entire configuration workflow, eliminating the need for manual setup steps.

---

### ⚙️ What does install.sh do?

This script automates the following tasks:

- 📦 Installs all required packages using `pacman`
- 📁 Copies all dotfiles into `~/.config/`
- 🔐 Sets executable permissions (`chmod +x`)
- 🎨 Prepares the BSPWM environment (bar, terminal, compositor, etc.)

---

### 🧠 Main advantage

Instead of manually configuring each component, the user only needs to run a single command to fully set up the environment.

This reduces human error, prevents incomplete setups, and ensures consistency across installations.

---

### 🚀 One-command installation

After cloning the repository:

```bash id="eng2"
chmod +x install.sh
./install.sh ```
```
## without install.sh file in the same way we clone the repository


## 1. 🚀 Getting Started & Installation

Follow these steps carefully to deploy this environment on a clean Arch Linux installation without breaking the session on startup.

### 📋 Prerequisites & Dependencies

Before copying the configuration files to your `~/.config/` directory, you **must** install all the base binaries and components. Missing these will result in a black screen upon login. Run the following command to install the complete ecosystem:

```bash
sudo pacman -S --needed bspwm sxhkd kitty fastfetch picom polybar rofi neovim zsh bash feh xorg-xrandr
```
## 2. 🪟 Display Manager or `.xinitrc`

`bspwm` does not start automatically like heavy desktop environments (GNOME or KDE). You must manually define how your user session will start based on your setup:

### 💠 If you use LightDM / SDDM
No additional configuration is required. `bspwm` will automatically show up as an available session on your login screen.

### 💻 If you use `startx` (Console boot)
Edit your startup file with your preferred editor:

```bash
nano ~/.xinitrc

```
Add the following line at the very end of the file to launch the window manager:
```
exec bspwm
```
## 3. 🔐 Execution Permissions (Common Mistake)

Startup and setup scripts **require execution privileges** to run correctly. These files often lose their executable permissions when cloned from GitHub. You must manually grant permissions after copying them to your system:

```bash
chmod +x ~/.config/bspwm/bspwmrc
chmod +x ~/.config/polybar/launch.sh
chmod +x ~/ArchAmbience/install.sh
```
## 4. 🔤 Fonts & Icons
polybar and rofi rely heavily on specific glyphs (Nerd Fonts or Font Awesome). Without these fonts installed, you will experience empty squares or broken symbols across your status bar and menus.

Install the recommended font package to fix this:
```
sudo pacman -S ttf-nerd-fonts-symbols-common ttf-jetbrains-mono-nerd
```


## 5. 📁 Static File Paths (CRITICAL)

In your `bspwmrc` (and potentially other configurations like `polybar` or `sxhkd`), there are static absolute paths bound to a specific username. For example:

```bash
/home/alfredprotocol/Downloads/BatmanRedWall.png
```

### ⚠️ How to fix this
Before launching your environment, check your configuration files and replace any absolute paths containing alfredprotocol with your actual username or the dynamic home directory shortcut (~/ or $HOME):

Find static paths in your configurations:

```grep -r "alfredprotocol" ~/.config/ ```
* **Replace them manually in your files (bspwmrc, config.ini, etc.) with your own user path:**

Bash
# Replace /home/alfredprotocol with /home/YOUR_USERNAME

**Tip:** Tip: Using the grep command that we included in the guide will allow anyone cloning your repository to instantly find which lines of which files your alfredprotocol username was written on to correct it in seconds.
## 💡 Result

* **Once the script finishes:**

* **BSPWM is fully configured**
Polybar, Rofi, and Fastfetch are ready to use
All required permissions are correctly set
The system is immediately usable
## 🧩 This repository follows the principle:

“Zero manual setup, full automated rice deployment”
The goal is to allow any user to replicate the exact environment without additional configuration steps.


## SETTARGET AND VPN_STATUS
We'll use the right-hand bar of the polybar, which corresponds to the target, with the command `settarget x.x.x.x machine name`. For example, `settarget 10.10.10.10 PCHACK` will make the IP address visible, and to clear it, we simply type `cleartarget....`. It's important to verify that you have OpenVPN installed.

vpn_status
We verify that we have OpenVPN installed: `sudo pacman -S openvpn`

1. Log in to Hackthebox
2. Click "Connect" and select "Machines"
3. Select OpenVPN
4. Select TCP
5. Download it

6. Create a Hackthebox directory and navigate to it
7. Create a directory named HTB and navigate to it
8. Create a directory named VPN and navigate to it
9. Log in as root and enter `sudo su`
10. Use the command `openvpn file.ovpn`

*You will be connected and the status in the polybar will change*

11. To exit, simply press Ctrl+C
