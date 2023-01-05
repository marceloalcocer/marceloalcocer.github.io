marceloalcocer.github.io
########################

``marceloalcocer``'s GitHub Pages user site.

Built with `Sphinx <https://www.sphinx-doc.org>`_.

Dependencies
============

* `Sphinx <https://www.sphinx-doc.org>`_
* `Furo <https://pradyunsg.me/furo/>`_
* `make <https://www.gnu.org/software/make/>`_ (optional)

Building
========

Use the supplied Makefile::

	~$ make html

or build explicitly with Sphinx::

	~$ sphinx-build -b html source build

The build output will be located in ``build/html``.

Deployment
==========

The site is built and deployed to `marceloalcocer.github.io <https://marceloalcocer.github.io>`_ automatically by a custom workflow.

