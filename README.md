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

说明 **还没成功发布站点**。本仓库使用 **推送到 `gh-pages` 分支** 的方式发布（不依赖 `configure-pages`，避免部分账号下 Actions 源报错）。

请按顺序做：

1. 打开 [Actions](https://github.com/uqixodowiruc21-tech/follow-builders-web/actions)，确认 **Deploy to GitHub Pages** 有一次 **全部绿色** 的运行（推送 `main` 会自动触发）。
2. 打开 [Settings → Pages](https://github.com/uqixodowiruc21-tech/follow-builders-web/settings/pages)。
3. **Build and deployment → Source** 选择 **Deploy from a branch**（从分支部署）。
4. **Branch** 选 **`gh-pages`**，文件夹选 **`/ (root)`**，保存。
5. 等约 1 分钟后再访问：  
   `https://uqixodowiruc21-tech.github.io/follow-builders-web/`

> 若之前选的是 **GitHub Actions**，请改成 **Deploy from a branch**，否则 Pages 会一直等不到站点文件。

### 部署方式

- Workflow：`.github/workflows/pages.yml` 使用 [peaceiris/actions-gh-pages](https://github.com/peaceiris/actions-gh-pages) 把 `index.html` 等静态文件推到 **`gh-pages`** 分支。
- Pages：**Source 必须为「从分支部署」+ 分支 `gh-pages`**。

### 本地运行（可选）

在 Windows 下双击运行：

- `start-server.bat`（本地访问 `http://localhost:3456`）
- `start-public.bat`（临时公网隧道，地址每次运行可能变化；关闭窗口即失效）

