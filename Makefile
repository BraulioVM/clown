release-extension:
	zip -r dist/extension ext


install:
	cd bin; \
	python setup.py install
	@echo Clown installed
	@echo Execute \"crontab -e\" and add \"@reboot `which clownd`\" to your crontab file