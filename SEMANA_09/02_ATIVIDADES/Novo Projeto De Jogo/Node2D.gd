extends Node2D
#
#len(lista) - j = i
#j = len(lista) - i

var lista = []
var listaAux = []
var aux

func _on_Button_pressed():
	if(len(lista) < 10):
		lista.append(int($LineEdit.text))
		for i in range(len(lista)):
			if(lista[len(lista) - 1] < lista[i]):
				aux = lista[len(lista)-1]
				for j in range (1,(len(lista) - i)):
					lista[len(lista) - j ] = lista[len(lista) - j - 1]
	#				lista[i] = int($LineEdit.text)
				lista[i] = aux

func _on_Button2_pressed():
	$Label.text = str(lista)
