extends Node2D

var nome
var teste = false
var valor = 0
var numero = 0  #variável com acento -> erro de declaração de variável
var lista = [] # variável chamada não foi declarada -> ausência do "var" antes do nome da variável
onready var inventario = [[get_node("Inventario/Fruit1"),get_node("Inventario/Label1")],[get_node("Inventario/Fruit2"),get_node("Inventario/Label2")],[get_node("Inventario/Fruit3"),get_node("Inventario/Label3")]]

func Botao_Pressionado():
	#Coletando dados inseridos pelo usuário
	numero = int($LineEdit.text) #Ausência do "$" para indicar caminha de um nó existente
	nome = $LineEdit2.text   # chama variável que não foi inicializada, e comando com ordem inversa, ao invés de coletar dados, o comando tornaria visível na tela a variável nome


func _on_Button2_pressed():
	#Incrementando o número inserido pelo usuário
	for i in range(10):
		numero += i #variável foi chamada sem respeitar que Godot é Case sensitive, ou seja, escrita da variável está errada
		lista.append(numero) #O mesmo erro acima
	$Label.text = str(numero) #chamada de nó com nome errado e caminho do nó errado. Além disso, não houve conversão do tipo int para string


func _on_Button3_pressed():
	
	var i = 0 #variável não inicializada e declarada dentro do loop
	var cont=0 #variável não inicializada e declarada dentro do loop

	#Mudando o nome do usuário de acordo com os dados da lista
	#Se houver algum número ímpar o nome deve adicionar "baldo" ao final
	while(i < len(lista)): #Condição apenas apontava para execução enquanto lista não fosse vazia, o que criava um loop infinito
		
		if((lista[i]%2)==1):
			cont+=1
		if(cont!=0):
			nome = nome+"baldo"
		$Label2.text = nome
		i += 1 #Não há no loop nenhuma variável que irá indicar o fim do loop e a variável "i" não sofria alterações a cada execução do while

