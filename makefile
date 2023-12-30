.venv:
	python -m venv .venv
	source .venv/bin/activate && make install
	echo 'run `source .venv/bin/activate` to develop cloudsqlite'

venv: .venv

install:
	python -m pip install -U pip
	python -m pip install -Ue .[dev,docs]

release: lint test clean
	flit publish

format:
	python -m ufmt format cloudsqlite

lint:
	python -m flake8 cloudsqlite
	python -m ufmt check cloudsqlite

test:
	python -m coverage run -m cloudsqlite.tests
	python -m coverage report
	python -m mypy -p cloudsqlite

perf:
	python -m unittest -v cloudsqlite.tests.perf

.PHONY: html
html: .venv README.rst docs/*.rst docs/conf.py
	.venv/bin/sphinx-build -an -b html docs html

.PHONY: clean
clean:
	rm -rf build dist html README MANIFEST *.egg-info

.PHONY: distclean
distclean: clean
	rm -rf .venv
