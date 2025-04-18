.PHONY: watch compile

    watch:
		@bash -c "typst watch template/template.typ --root ."

    compile:
		@bash -c "typst compile --root ../../ template/template.typ cv.pdf"
