.PHONY: setup
setup:
	python3 -m venv _venv
	source _venv/bin/activate && \
		pip install -r requirements.txt

.PHONY: docs
docs:
	cd rst && \
		sphinx-build -b html -d _build/doctrees . ../docs
