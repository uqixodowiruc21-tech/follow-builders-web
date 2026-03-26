## Follow Builders Web（GitHub Pages）

这是一个**纯静态网页**：每天从开源项目 [`zarazhangrui/follow-builders`](https://github.com/zarazhangrui/follow-builders) 拉取 `feed-x.json`，展示：

- 数据概况（生成时间、回望窗口、推文数量）
- 今日总结（页面本地规则整理）
- 热点动态（按点赞/转发等互动排序）
- 按人物展开阅读（直达 X 原文）

### 在线访问（GitHub Pages）

部署完成后，访问：

- `https://uqixodowiruc21-tech.github.io/follow-builders-web/`

如果你刚刚开启 Pages，首次可能需要等待 1～3 分钟让 Actions 部署完成。

### 若打开网址提示 “There isn't a GitHub Pages site here”

说明 **仓库里还没成功启用 Pages**，或 **部署工作流还没跑成功**。请按顺序做：

1. 打开： [Settings → Pages](https://github.com/uqixodowiruc21-tech/follow-builders-web/settings/pages)
2. 在 **Build and deployment** 里，把 **Source** 设为 **GitHub Actions**。
3. 打开 [Actions](https://github.com/uqixodowiruc21-tech/follow-builders-web/actions)，进入 **Deploy to GitHub Pages**，点 **Re-run all jobs**。
4. 等 workflow **全部绿色** 后，再等约 1 分钟，再访问：  
   `https://uqixodowiruc21-tech.github.io/follow-builders-web/`

若第 3 步仍失败，把失败步骤的日志发出来即可。

### 部署方式

本仓库通过 GitHub Actions 自动部署到 GitHub Pages（见 `.github/workflows/pages.yml`）。

**首次部署前**必须在仓库里开启一次（只需做一次）：

- Settings → Pages → Source 选择 **GitHub Actions**

### 本地运行（可选）

在 Windows 下双击运行：

- `start-server.bat`（本地访问 `http://localhost:3456`）
- `start-public.bat`（临时公网隧道，地址每次运行可能变化；关闭窗口即失效）

