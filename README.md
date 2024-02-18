# Vanlog Web Site

## Switch to Quarto

https://www.r-bloggers.com/2022/01/switching-to-quarto-from-blogdown/

Note: update the OS to Ubuntu 20.04 LTS in Netlify.


## Developer setup

### Install R with conda

```bash
conda create -n vanlog-website python=3.11 r-essentials r-base
conda activate vanlog-website
```

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


