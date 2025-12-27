# Vanlog Web Site

[![Netlify Status](https://api.netlify.com/api/v1/badges/44119a91-7a9f-42bf-8e16-416c6b8234df/deploy-status)](https://app.netlify.com/projects/vermillion-cranachan-ff98b3/deploys)

## Switch to Quarto

https://www.r-bloggers.com/2022/01/switching-to-quarto-from-blogdown/

Note: update the OS to Ubuntu 20.04 LTS in Netlify.


## Developer setup

### Prerequisites

Install the following software:

- Quarto
- Hugo (`brew install hugo`)

### Preview the website

```bash
quarto preview
```

### Build the website

```bash
quarto render && hugo
hugo serve
```

## Configuration

### Quarto

see [_quarto.yml](_quarto.yml) and [Quarto and Hugo](https://quarto.org/docs/output-formats/hugo.html).

### Hugo

see [config.toml](config.toml)


