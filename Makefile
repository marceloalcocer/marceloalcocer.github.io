# Minimal makefile for Sphinx documentation
#

# You can set these variables from the command line.
SPHINXOPTS    =
SPHINXBUILD   = sphinx-build
SPHINXPROJ    = marceloalcocer
SOURCEDIR     = src
BUILDDIR      = build

# HTML (default)
html: Makefile
	@$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)
	cd build/html \
		&& ln -s _static/sunfleet sunfleet \
		&& ln -s _static/svgfragments svgfragments
	cd build/html/ultrajs \
		&& ln -s ../_static/ultrajs/bandlim.css bandlim.css \
		&& ln -s ../_static/ultrajs/bandlim.js bandlim.js


help:
	@$(SPHINXBUILD) -M help "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

.PHONY: help Makefile

# Catch-all target: route all unknown targets to Sphinx using the new
# "make mode" option.  $(O) is meant as a shortcut for $(SPHINXOPTS).
%: Makefile
	@$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)
