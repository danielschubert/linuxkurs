BASES = en/organisation es/organizacion de/organisation
EXTS = eps png pdf
FILES = $(foreach ext,$(EXTS),$(foreach base,$(BASES),$(base).$(ext)))

.PHONY: all
all: $(FILES)

%.eps: %.svg
	inkscape --export-eps=$@ $<

%.eps: %.fig
	fig2dev -L eps $< $@

%.png: %.eps
	convert $< $@

%.pdf: %.eps
	epstopdf --outfile=$@ $<

.PHONY: clean
clean:
	rm -f $(FILES)
