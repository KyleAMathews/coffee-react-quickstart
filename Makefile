publish-gh-pages:
	git checkout gh-pages
	git merge master gh-pages
	cult build
	git add --all .
	git commit -m "New release"
	git push origin gh-pages
	git checkout master
