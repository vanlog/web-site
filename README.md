# Vanlog Web Site

[![Netlify Status](https://api.netlify.com/api/v1/badges/44119a91-7a9f-42bf-8e16-416c6b8234df/deploy-status)](https://app.netlify.com/projects/vermillion-cranachan-ff98b3/deploys)

## Switch to Quarto

[Switch to Quarto Howto](https://www.r-bloggers.com/2022/01/switching-to-quarto-from-blogdown/)

Note: update the OS to Ubuntu 20.04 LTS in Netlify.


## Developer setup

### Prerequisites

Install the following software:

- Quarto
- Hugo (`brew install hugo`)

### Preview the website

```bash
make preview
```

This renders the Quarto content and starts the Hugo server on <http://localhost:1313>.
Published pages only — content with `draft: true` in its front matter is skipped.

### Preview drafts

```bash
make preview-draft
```

Same as `make preview` but adds Hugo's `--buildDrafts` flag, so pages marked
`draft: true` are also rendered. Use this to review a draft article locally
before publishing it (setting `draft: false`).

### Build the website

```bash
make render
```

## Configuration

### Quarto

see [_quarto.yml](_quarto.yml) and [Quarto and Hugo](https://quarto.org/docs/output-formats/hugo.html).

### Hugo

see [config.toml](config.toml)


