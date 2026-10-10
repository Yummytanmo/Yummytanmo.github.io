# Academic CVs

The website publishes `assets/files/Wenxuan_Wang_CV.pdf`. Its editable source is
`Wenxuan_Wang_CV.yaml`, rendered with RenderCV 2.8 and Python 3.12 or newer:

```sh
uv venv --python 3.12 .venv-rendercv
uv pip install --python .venv-rendercv/bin/python -r cv/requirements.txt
.venv-rendercv/bin/rendercv render cv/Wenxuan_Wang_CV.yaml
cp cv/rendercv_output/Wenxuan_Wang_CV.pdf assets/files/Wenxuan_Wang_CV.pdf
```

The Chinese version uses `Wenxuan_Wang_Resume_ZH.yaml`, the same custom templates,
and the bundled Noto Sans SC font. Render and publish it with:

```sh
.venv-rendercv/bin/rendercv render cv/Wenxuan_Wang_Resume_ZH.yaml
cp cv/rendercv_output/Wenxuan_Wang_Resume_ZH.pdf assets/files/Wenxuan_Wang_Resume_ZH.pdf
```

Keep both language versions in sync when changing research, author roles,
publication status, projects, or awards. The homepage CV icon opens the English PDF.

Run these commands from the repository root. RenderCV downloads the official
Typst `fontawesome` package on its first render. Generated files stay in
`cv/rendercv_output/`; Jekyll excludes the entire `cv/` source directory.

The `engineeringresumes/` templates customize the contact labels, give research
entries the full page width, align expertise labels with narrower descriptions
that keep individual phrases together,
and keep project and award dates aligned without
reserving unnecessary space. Keep this directory beside the YAML when rendering.

The layout follows the restrained serif typography and research descriptions in
[Shuaihang Chen's reference CV](https://bianhua-12.github.io/attaches/CV.pdf).
Full author lists are retained in the YAML; the PDF presents author role, venue,
paper/code links, and two research highlights for each paper.

Research summaries and reported results were checked on October 10, 2026 against:

- [D-OPCD](https://arxiv.org/abs/2610.07250): agent experience distillation, the
  60.52 to 65.09 average direct-generation score, and the second-round 1.83-point
  gain relative to the skill-free harness on the updated generator.
- [SubtleMemory](https://arxiv.org/abs/2606.05761): relational memory benchmark,
  1,522 evaluation instances, 10 histories, and stage-specific diagnostics.
- [APB](https://arxiv.org/abs/2606.04874): 4,209 cases, 22 domains, five settings,
  12 evaluated models, and 200 tasks each from ToolSandbox and tau-squared-bench.

EMNLP 2026 Findings acceptance for APB was confirmed by the author; SubtleMemory
also records it in the arXiv comments. D-OPCD is labeled as under review, as
confirmed by the author.
