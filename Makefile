web_build:
	flutter build web --wasm

builder:
	flutter clean
	flutter pub get

sorter:
	flutter pub run import_sorter:main

slang:
	flutter pub run slang
