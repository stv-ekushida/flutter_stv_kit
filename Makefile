web_build:
	flutter build web --wasm

builder:
	flutter clean
	flutter pub get

sorter:
	flutter pub run import_sorter:main

slang:
	flutter pub run slang

build_runner:
	flutter pub run build_runner build --delete-conflicting-outputs
