release-extension:
	zip -r dist/extension ext


install:
	cd bin; \
	python setup.py install
	@echo -----------------
	@echo Clown installed
	@echo Execute \"crontab -e\" and add \"@reboot `which clownd`\" to your crontab file
	@echo After that, execute '"nohup clownd &"' or just reboot your computer to get the server running