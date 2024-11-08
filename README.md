# [中文说明](./README.zh.md) ComfyUI Quick Launcher

![ComfyUI Quick Launcher](https://github.com/user-attachments/assets/dc15a390-ae64-4ab0-80fb-b39dd1a2baf1)
 
This is a simple launcher designed to help you quickly start [ComfyUI](https://github.com/comfyanonymous/ComfyUI). You can download the executable files directly for Windows and macOS from the [Releases](https://github.com/kk8bit/ComfyUI_Quick_Launcher/releases) page of this repository.

## Features

- Automatically detects and activates the specified Conda virtual environment
- Supports running with the system Python environment if Conda is not available
- Automatically locates and runs `main.py`
- Sets UTF-8 terminal encoding for better support with non-English characters
- Clean and user-friendly command-line prompts

## Download and Usage

1. **Download**  
   Go to the [Releases](https://github.com/kk8bit/ComfyUI_Quick_Launcher/releases) page and download the file for your operating system:
   - Windows: `ComfyUI Quick Launcher.exe`
   - macOS: `ComfyUI Quick Launcher.app`

2. **Usage**  
   - Place the downloaded launcher file in the root directory of ComfyUI, ensuring it is in the same directory as `main.py`.
   - Double-click the launcher to start ComfyUI. The program will attempt to activate the Conda environment if available; otherwise, it will use the system Python to launch `main.py`.

3. **Creating a Shortcut**  
   - **macOS Users**: After placing the `.app` file in the ComfyUI root directory, drag it to the Dock for quick access.
   - **Windows Users**: Right-click `ComfyUI Quick Launcher.exe`, select "Send to -> Desktop (create shortcut)" for quick access.

## FAQ

- **Error: `main.py` not found**: Ensure that the launcher file is in the same directory as `main.py`.
- **Conda environment not detected**: If Conda is not installed, the launcher will use the system Python to run the program.
- **Contact**: For questions or issues, please reach out to kk8bit.