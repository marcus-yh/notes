FROM squidfunk/mkdocs-material:latest

ENV PIP_DEPS \
	pillow \
	cairosvg

RUN pip 
