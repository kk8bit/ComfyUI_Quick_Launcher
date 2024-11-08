# ComfyUI 快速启动器

<img src="https://github.com/user-attachments/assets/bd203773-d4a3-41d4-b627-533cc7098920" alt="ComfyUI Quick Launcher" width="50%">

这是一个简易启动器，帮助您快速启动 [ComfyUI](https://github.com/comfyanonymous/ComfyUI)。您可以直接从本项目的 [Releases](https://github.com/kk8bit/ComfyUI_Quick_Launcher/releases) 页面下载对应系统的可执行文件，支持 Windows 和 macOS 系统。

## 功能特点

- 自动检测并激活指定的 Conda 虚拟环境
- 支持直接使用系统 Python 环境运行
- 自动定位并运行 `main.py`
- 设置 UTF-8 终端编码，适合中文输出
- 简洁的命令行提示信息

## 下载与使用

1. **下载**  
   前往 [Releases](https://github.com/kk8bit/ComfyUI_Quick_Launcher/releases) 页面，下载适用于您操作系统的文件：
   - Windows：`ComfyUI Quick Launcher.exe`
   - macOS：`ComfyUI Quick Launcher.app`

2. **使用**  
   - 将下载的启动器文件放置在 ComfyUI 根目录下，确保目录中包含 `main.py` 文件。
   - 双击启动器文件即可运行，程序将自动检测并激活 Conda 环境（如果已安装），否则使用系统 Python 启动 `main.py`。

3. **快捷方式设置**  
   - **macOS 用户**：将启动器文件放入 ComfyUI 根目录后，可以拖动 `.app` 文件到桌面底部的程序坞，以便快速启动。
   - **Windows 用户**：右键点击 `ComfyUI Quick Launcher.exe`，选择“发送到 -> 桌面快捷方式”，以便快速启动。

## 常见问题

- **找不到 `main.py` 错误**：确保启动器文件与 `main.py` 位于同一目录下。
- **Conda 环境未检测到**：如果系统未安装 Conda，将直接使用系统的 Python 运行程序。
- **联系作者**：如遇到问题，请联系 kk8bit。