cat NeuQuant.js quantizer.js > tmpworker.js
uglifyjs tmpworker.js --output tmpworker.min.js
echo 'module.exports = function() { ' > header.txt
echo '}' > footer.txt
cat header.txt tmpworker.min.js footer.txt > worker.js
browserify exporter.js > ../dist/Animated_GIF.js
rm header.txt footer.txt worker.js tmpworker.js
