target=iot2403

all: ${target}.pdf

%.pdf: %.dvi
	dvipdfmx  -p a4 $<

#%.pdf: %.dvi
#	dvipdfm -p a4 -f $<  -o $@

ebb: 
	cd fig/pdf; ebb -x *.pdf

%.dvi: %.tex
	platex $<
	pbibtex $*
	platex  $<
	platex  $<
