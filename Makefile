.PHONY: render preview preview-draft

render:
	quarto render

preview: render
	hugo server --port 1313

preview-draft: render
	hugo server --buildDrafts --port 1313
