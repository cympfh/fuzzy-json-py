pip-publish: README.rst
	python -m build
	twine check dist/*
	twine upload dist/*.tar.gz

README.rst: README.md
	pandoc --from markdown --to rst README.md -o README.rst
