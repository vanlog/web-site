.PHONY: render preview

render:
	quarto render

preview: render
	hugo server --port 1313
