# Wenxuan Wang — Academic Homepage

A Jekyll academic homepage based on [Minimal Light](https://github.com/yaoyao-liu/minimal-light), retaining its two-column layout, serif typography, responsive styling, and automatic dark mode.

## Edit content

- `_config.yml`: name, affiliation, contact links, and appearance. The CV icon remains visible while `cv_link` is empty; fill it in when ready. The X profile is configured through `twitter`.
- `index.md`: biography, research interests, education, internship experience, and honors.
- `_data/publications.yml`: publication entries, ordered as displayed. Optional `image`, `code`, and `page` fields add a thumbnail and links.
- `assets/files/*.bib`: downloadable BibTeX citations.
- `assets/img/avatar.jpg`: profile photo; replace this file or update `avatar` in `_config.yml` to use a different image.

Paper metadata was checked against arXiv on October 10, 2026. SubtleMemory's arXiv comments identify it as EMNLP 2026 Findings; the author confirmed that APB is also EMNLP 2026 Findings. The diffusion context distillation paper is listed as a preprint.

Paper thumbnails are reproduced from the author's arXiv papers:

- `assets/img/d-opcd.png`: https://arxiv.org/html/2610.07250v1/method_overview.png
- `assets/img/subtlememory.png`: https://arxiv.org/html/2606.05761v3/data_construction.png
- `assets/img/agent-planning-benchmark.png`: https://arxiv.org/html/2606.04874v3/main.png

The theme license does not relicense these research figures.

## Local preview

With Ruby and Bundler installed:

```sh
bundle install
bundle exec jekyll serve
```

Open http://localhost:4000. For a production build:

```sh
JEKYLL_ENV=production bundle exec jekyll build --strict_front_matter
```

## GitHub Pages

The workflow in `.github/workflows/deploy.yml` builds and deploys pushes to `main`. In the GitHub repository, set **Settings → Pages → Build and deployment → Source** to **GitHub Actions** before the first deployment. The intended URL is https://yummytanmo.github.io/.

## Theme attribution

Theme source: yaoyao-liu/minimal-light, commit `1ea07f39518ac44644406380c83da6f89037c4fc`. The upstream MIT license and asset notices are retained in `LICENSE`. Local changes add personal content, conditional publication thumbnails, accessible link labels, and a GitHub Pages build workflow.
