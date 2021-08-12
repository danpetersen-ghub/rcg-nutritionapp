#! /bin/bash
echo "Clearing build directory of old artefacts..."
rm -rf dist/*
echo "Done."

echo "Minifying & copying css..."
sass ./styles.css:./dist/styles.min.css --no-source-map --style=compressed
echo "Done."

echo "Minifying & copying JS files..."
tsc script.js --removeComments --allowJs --outfile dist/script.min.js
echo "Done."

echo "Copying markup..."
cp index.html dist
echo "Done."

echo "Build complete."
