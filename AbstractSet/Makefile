OBJS=OrderedTypes.cmo Set.cmo

all: OrderedTypes.cmo Set.cmo main.cmo
	ocamlc $<

OrderedTypes.cmo: OrderedTypes.ml OrderedTypes.cmi
	ocamlc -c OrderedTypes.ml

OrderedTypes.cmi: OrderedTypes.mli
	ocamlc -c $<

Set.cmo: Set.ml Set.cmi
	ocamlc -c Set.ml

Set.cmi: Set.mli
	ocamlc -c $<

main.cmo: main.ml main.cmi
	ocamlc -c main.ml

main.cmi: main.mli
	ocamlc -c $<

clean:
	rm -rf *.cm[ioa] a.out
