
all: Labeled_functions.cmo main.cmo
	ocamlc $^

Labeled_functions.cmo: Labeled_functions.ml Labeled_functions.cmi
	ocamlc -c Labeled_functions.ml

Labeled_functions.cmi: Labeled_functions.mli
	ocamlc -c $^

main.cmo: main.ml main.cmi
	ocamlc -c main.ml

main.cmi: main.mli
	ocamlc -c $^

clean:
	rm -rf *.cm[ioa] a.out
