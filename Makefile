# compilers
sassc=sassc
rkt=racket -l racket -l xml

# sources
html_rkt=index.rkt
sass=$(wildcard *.sass)

# target
html=$(html_rkt:%.rkt=_target/%.html)
css=$(sass:%.sass=_target/%.css)

all: _target $(html) $(css)

_target:
	mkdir _target

_target/%.html: %.rkt
	$(rkt) -t $< -e '(display-to-file (xexpr->string page) "$@")'

_target/%.css: %.sass
	$(sassc) $< $@

clean:
	rm -rf _target

.PHONY: all clean
