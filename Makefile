sdk:
	sudo flatpak install -y org.freedesktop.Sdk.Extension.openjdk8/x86_64/21.08

build: sdk
	flatpak-builder --force-clean build-dir io.github.memoryleak.gephi.yml

install:
	flatpak-builder --user --install --force-clean build-dir io.github.memoryleak.gephi.yml

run: install
	flatpak run io.github.memoryleak.gephi

all: build run	
