##
# Copyright 2016 - Matheus Bueno <matheus.almeida211094@gmail.com>
##

RESOURCE = ./resource
BIN = ./bin
SRC = ./src
DESTDIR = /opt/whatsapp_unofficial_client/
PREFIX = 

linux_x64:
	mkdir -p $(PREFIX)$(DESTDIR) || echo "Skip"
	cp -p -f $(SRC)/package.json $(BIN)/linux_x64
	cp -p -f $(SRC)/whatsapp.html $(BIN)/linux_x64
	cp -p -f $(SRC)/whatsapp.png $(BIN)/linux_x64
	mkdir -p $(BIN)/linux_x64/js || echo "Skip"
	cp -p -f -R $(SRC)/js/* $(BIN)/linux_x64/js
	cp -p -f -R $(BIN)/linux_x64/* $(PREFIX)$(DESTDIR)
	chmod +x -R $(PREFIX)$(DESTDIR)
	cp -p -f $(SRC)/whatsapp-desktop.desktop $(PREFIX)/usr/share/applications
	chmod +x $(SRC)/whatsapp-desktop
	cp -p -f $(SRC)/whatsapp-desktop $(PREFIX)/usr/bin

linux_x86:
	mkdir -p $(PREFIX)$(DESTDIR) || echo "Skip"
	cp -p -f $(SRC)/package.json $(BIN)/linux_x86
	cp -p -f $(SRC)/whatsapp.html $(BIN)/linux_x86
	cp -p -f $(SRC)/whatsapp.png $(BIN)/linux_x86
	mkdir -p $(BIN)/linux_x86/js || echo "Skip"
	cp -p -f -R $(SRC)/js/* $(BIN)/linux_x86/js
	cp -p -f -R $(BIN)/linux_x86/* $(PREFIX)$(DESTDIR)
	chmod +x -R $(PREFIX)$(DESTDIR)
	cp -p -f $(SRC)/whatsapp-desktop.desktop $(PREFIX)/usr/share/applications
	chmod +x $(SRC)/whatsapp-desktop
	cp -p -f $(SRC)/whatsapp-desktop $(PREFIX)/usr/bin


