# ☁️ myRice | Aesthetic Rainmeter Suite

A minimal, clean, and semi-transparent suite for Rainmeter, designed with the **Comfortaa** font and a focus on sleek functionality.

> "A cozy space for your desktop." ✨

---

## 🎨 Preview
<img width="2879" height="1799" alt="image" src="https://github.com/user-attachments/assets/a3f40169-b1cd-41cb-903f-fcc0dfb92146" />

---

## 🛠️ Modules Included
This suite comes with 6 fully interactive modules:
*   **⌚ Clock:** Centered 24h clock with a bottom-right seconds display and date.
*   **🚀 App Launcher:** Quick access to your favorite apps with a custom pink hover highlight and functional Google search bar.
*   **📺 Watch Tracker:** Keep track of your anime or TV show progress with simple `+` and `-` buttons.
*   **💻 System Info:** Real-time monitoring of CPU usage, RAM, and Disk space with a rounded profile picture.
*   **🐙 GitHub Activity:** A live contribution graph that fetches your real data, featuring a dynamic activity ring and floating tooltips.
*   **🎵 Music Player:** A sleek Spotify-style player with album art, progress bar, and custom inverted controls.

---

## 📥 Getting Started

### 1. Prerequisites
Before installing the suite, you need to set up the environment:

*   **Rainmeter:** Download and install the latest version from [rainmeter.net](https://www.rainmeter.net/).
*   **Font:** Install the **Comfortaa** font. It is essential for the text to look correct!
*   **WebNowPlaying Plugin:** This is required for the Music Player. 
    1. Download the `.rmskin` from [WebNowPlaying Redux](https://github.com/tjhrulz/WebNowPlaying/releases).
    2. Double-click to install.
    3. Install the **WebNowPlaying Companion** extension in your browser (Chrome/Edge).

### 2. Installation
1.  Download this repository as a `.zip` file.
2.  Extract the folder into your Rainmeter Skins directory (usually `Documents\Rainmeter\Skins`).
3.  Open Rainmeter, click **Refresh All**, and load the `.ini` files from the `myRice` folder.

---

## ⚙️ Customization

To make this suite yours, right-click any skin and select **"Edit Skin"**.

### 🐙 GitHub Tracker
In `GithubTracker.ini`, change the `Username` variable to your own:
```ini
[Variables]
Username=YourGithubName
```
*Note: Ensure your GitHub profile is set to **Public** for the data to fetch correctly!*

### 🚀 App Launcher
In `Launcher.ini`, update the paths to point to where your programs are installed:
```ini
[Variables]
App1Path="C:\Path\To\Your\App.exe"
```

### 💻 Profile Picture
Replace the `profile.png` in the `SysInfo` folder with your own image to update the system monitor avatar.

---

## 📝 Notes & Credits
*   **Icons:** Most icons were sourced as PNGs. You can swap them in the folder—just keep the filenames the same!
*   **Colors:** All colors are controlled via variables in the `[Variables]` section of each `.ini` file. Feel free to play with the Alpha (transparency) values!

---

**Made with ❤️ by indxo.**
*If you like this rice, feel free to give the repo a ⭐!*

