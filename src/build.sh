cat NeuQuant.js quantizer.js > tmpworker.js
echo 'module.exports = function() { ' > header.txt
echo '}' > footer.txt
cat header.txt tmpworker.js footer.txt > worker.js
browserify exporter.js > ../dist/Animated_GIF.js
rm header.txt footer.txt worker.js tmpworker.js
