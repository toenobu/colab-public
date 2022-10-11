.PHONY: virtualenv clean activate deactivate deps

VENV_DIRECTORY = venv

virtualenv:
	python3 -m venv $(VENV_DIRECTORY)

clean:
	echo "Try 'rm -fr $(VENV_DIRECTORY)'"

activate:
	echo "Try 'source $(VENV_DIRECTORY)/bin/activate'"

deactivate:
	echo "Try 'deactivate'"

deps:
	pip install -r requirements.txt
	pip install -r requirements.dev.txt

notebook:
	jupyter notebook
