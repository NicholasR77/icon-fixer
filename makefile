.PHONY: fix-svg
fix-svg:
	@read -p "Enter SVG filename: " FILE; \
	oslllo-svg-fixer -s ./og/$$FILE.svg -d ./oslo; \
	svgo ./oslo/$$FILE.svg -o ./final --config config.js
