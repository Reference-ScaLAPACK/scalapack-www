
all: index release-2.2

index: index.txt
	asciidoc -a toc -a toc-title="Menu" index.txt
	scp index.html index.txt julie@zoot.icl.utk.edu:/nfs/www/netlib/scalapack

release-2.1: scalapack-2.1.txt
	asciidoc -a toc -a toc-title="Menu" scalapack-2.1.txt
	scp scalapack-2.1.html scalapack-2.1.txt julie@zoot.icl.utk.edu:/nfs/www/netlib/scalapack

release-2.2: scalapack-2.2.0.txt
		asciidoc -a toc -a toc-title="Menu" scalapack-2.2.0.txt
		scp scalapack-2.2.0.html scalapack-2.2.0.txt julie@zoot.icl.utk.edu:/nfs/www/netlib/scalapack

html:
	tar cfvz explore-html-2.1.tgz explore-html
	scp explore-html-2.1.tgz julie@zoot.icl.utk.edu:/nfs/www/netlib/scalapack

# Do not forget chmod a+r on new files
