release-extension:
	zip -r dist/extension ext


install:
	cd bin; \
	python setup.py install
	nohup clownd &
	@echo -----------------
	@echo Clown installed and running
	@echo Execute \"crontab -e\" and add \"@reboot `which clownd`\" to your crontab file
	