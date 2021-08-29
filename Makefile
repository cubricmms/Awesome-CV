.PHONY: build resume

CC = xelatex
SRC_DIR = src
RESUME_DIR = $(SRC_DIR)/resume
RESUME_SRCS = $(shell find $(RESUME_DIR) -name '*.tex')

examples: $(foreach x, resume, $x.pdf)

resume.pdf: $(SRC_DIR)/resume.tex $(RESUME_SRCS)
	$(CC) -output-directory=$(SRC_DIR) $<

clean:
	find -E $(SRC_DIR) -regex '.*\.(log|out|aux|pdf)' -exec rm {} \;
