compile:
	hugo
	sed 's|\.\./|/scripts-and-tools/|g; s|\.\./\.\./|../scripts-and-tools/|g' public/index.xml > public/index.xml.tmp && mv public/index.xml.tmp public/index.xml
	sed 's|/scripts-and-tools//scripts-and-tools/|../|g' public/index.xml > public/index.xml.tmp && mv public/index.xml.tmp public/index.xml
	mv public/index.xml public/rss.xml
