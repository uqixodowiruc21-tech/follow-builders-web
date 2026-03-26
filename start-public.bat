@echo off
chcp 65001 >nul
cd /d "%~dp0"

echo ========================================
echo  Follow Builders 网页 - 临时公网访问
echo ========================================
echo.
echo 说明：
echo - 会先在本机启动网站（端口 3456），再通过免费隧道暴露到公网。
echo - 公网地址每次运行可能不同；请保持本窗口和后台「serve」窗口不要关。
echo - 电脑关机或关闭窗口后，外网将无法访问（无法由他人代你长期托管）。
echo.

echo [1/2] 正在后台启动本地站点...
start "follow-builders-serve" /MIN cmd /c "cd /d "%~dp0" && npx -y serve . -l 3456"
timeout /t 6 /nobreak >nul

echo [2/2] 正在创建公网隧道（下方会出现 https://xxxx 地址，用浏览器打开即可）...
echo.

where cloudflared >nul 2>&1
if %ERRORLEVEL% equ 0 (
  echo 已检测到 cloudflared，使用 Cloudflare 临时隧道（一般比 localtunnel 更稳定）。
  echo.
  cloudflared tunnel --url http://127.0.0.1:3456
) else (
  echo 未安装 cloudflared 时使用 localtunnel。
  echo 若首次打开网页要求验证 IP，按页面提示操作即可。
  echo 可选：安装 Cloudflare 隧道客户端后重新运行本脚本，体验更好：
  echo   winget install Cloudflare.cloudflared
  echo.
  npx -y localtunnel --port 3456
)

echo.
echo 隧道已结束。若要再次获得公网地址，请重新运行本脚本。
pause
