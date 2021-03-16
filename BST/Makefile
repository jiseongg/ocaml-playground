
all: bst.cmo main.cmo
	ocamlc bst.cmo main.cmo

bst.cmi: bst.mli
	ocamlc -c bst.mli

bst.cmo: bst.ml bst.cmi
	ocamlc -c bst.ml

main.cmi: main.mli
	ocamlc -c main.mli

main.cmo: main.ml main.cmi
	ocamlc -c main.ml

clean:
	rm -rf *.cm[ioa] a.out
