## Follow Builders Web（GitHub Pages）

这是一个**纯静态网页**：每天从开源项目 [`zarazhangrui/follow-builders`](https://github.com/zarazhangrui/follow-builders) 拉取 `feed-x.json`，展示：

- 数据概况（生成时间、回望窗口、推文数量）
- 今日总结（页面本地规则整理）
- 热点动态（按点赞/转发等互动排序）
- 按人物展开阅读（直达 X 原文）

### 在线访问（GitHub Pages）

部署完成后，访问：

- `https://uqixodowiruc21-tech.github.io/follow-builders-web/`

如果你刚刚开启 Pages，首次可能需要等待 1–3 分钟让 Actions 部署完成。

### 部署方式

本仓库通过 GitHub Actions 自动部署到 GitHub Pages（见 `.github/workflows/pages.yml`）。

需要在仓库页面开启：

- Settings → Pages → Source 选择 **GitHub Actions**

### 本地运行（可选）

在 Windows 下双击运行：

- `start-server.bat`（本地访问 `http://localhost:3456`）
- `start-public.bat`（临时公网隧道，地址每次运行可能变化；关闭窗口即失效）

