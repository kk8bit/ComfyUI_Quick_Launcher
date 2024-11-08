set appPath to POSIX path of (path to me)
set appDirectory to do shell script "dirname \"" & appPath & "\""

-- 定义虚拟环境名称
set condaEnv to "comfyenv" -- 替换为你的 Conda 环境名称

do shell script "osascript -e 'tell application \"Terminal\"
    if (count of windows) is 0 then
        do script \"cd '" & appDirectory & "' && clear; echo \\\"🕹️  如果遇到问题或报错，请与我联系 - kk8bit\\\"; echo; if [ -f main.py ]; then echo \\\"启动文件 main.py 已找到...\\\"; if command -v conda >/dev/null 2>&1; then echo \\\"检测到 Conda，尝试激活虚拟环境 " & condaEnv & "...\\\"; source $(conda info --base)/etc/profile.d/conda.sh && conda activate " & condaEnv & "; else echo \\\"未检测到 Conda，直接使用系统 Python 启动...\\\"; fi; echo \\\"启动 ComfyUI...\\\"; exec python3 main.py --auto-launch; else echo \\\"错误：未找到启动文件 main.py，请将启动器放入 ComfyUI 根目录\\\"; fi\"
        set custom title of front window to \"🕹️ComfyUI 启动器\"
    else
        set currentTab to do script \"cd '" & appDirectory & "' && clear; echo \\\"🕹️  如果遇到问题或报错，请与我联系 - kk8bit\\\"; echo; if [ -f main.py ]; then echo \\\"启动文件 main.py 已找到...\\\"; if command -v conda >/dev/null 2>&1; then echo \\\"检测到 Conda，尝试激活虚拟环境 " & condaEnv & "...\\\"; source $(conda info --base)/etc/profile.d/conda.sh && conda activate " & condaEnv & "; else echo \\\"未检测到 Conda，直接使用系统 Python 启动...\\\"; fi; echo \\\"启动 ComfyUI...\\\"; exec python3 main.py --auto-launch; else echo \\\"错误：未找到启动文件 main.py，请将启动器放入 ComfyUI 根目录\\\"; fi\" in front window
        set custom title of currentTab to \"🕹️ComfyUI 启动器\"
    end if
end tell'"