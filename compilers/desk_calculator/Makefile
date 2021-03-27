
calc: lexer.cmo parser.cmo calc.cmo
	ocamlc -o $@ $<

calc.cmo: calc.ml
	ocamlc -c $<

parser.cmo: parser.ml
	ocamlc -c $<

parser.cmi: parser.mli
	ocamlc -c $<

parser.ml: parser.mly
	ocamlyacc $<

parser.mli: parser.mly
	ocamlyacc $<

lexer.cmo: lexer.ml parser.cmi
	ocamlc -c $<

lexer.ml: lexer.mll
	ocamllex lexer.mll

clean:
	rm -rf *.cm[io] lexer.ml parser.ml calc
