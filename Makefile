.PHONY: setup
setup:
	python3 -m venv _venv
	source _venv/bin/activate && \
		pip install -r requirements.txt

.PHONY: provision
provision:
	cd ansible && \
		ansible-playbook -i hosts playbook.yml -vv

.PHONY: docs
docs:
	cd rst && \
		sphinx-build -b html -d _build/doctrees . ../docs
