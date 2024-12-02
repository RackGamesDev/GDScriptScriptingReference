#Comentarios
'''Comentarios
multilinea'''


extends Node #Todos los scripts deben derivar de una clase (nodo), es conveniente que deriven de la misma que la del nodo al que se va a agregar el script

var variable = 12 #Declarar una variable para todo el script, se inicializa antes que el _ready, (no necesariamente necesitan tener un valor inicial)
var entero:int = 30 #Para obligar a una variable a ser de x tipo se hace asi
var flotante:float = 3.56
var cadena:String = "asdfasf"
var booleana:bool = true
var vec2:Vector2 = Vector2(1,4)
var vec3:Vector3 = Vector3(1,4, 6)
#Hay muchas mas clases, pero estas son las primitivas
const CONSTANTE = 3.14 #Igual pero con consantes

@export var externa = 0 #Variable global que sera visible desde el inspector y otros scripts (fuera de cualquier funcion)
@export_range(0, 10) var externaRango:int = 5 #Igual pero eligiendo un rango
@export_multiline var textoGrande:String = "" #Igual pero para textos
@onready var nodo:Node2D = $/root/Node2D/objeto #Solo se instancia cuando los nodos estan preparados
#Hay muchos tipos de @ con funcionalidades distintas

var stack : Array = ["asdf", 3, true, [3,5]] #Los arrays funcionan igual que en python, con tipos de valor dinamico
var diccionario: Dictionary = {
	"valor": "propiedad",
	"valor2": 3,
	"otroDiccionario": {"valor": "asdf"}
} #Tambien estan los diccionarios que funcionan igual que json


func funcion(): #Funcion basica, sintaxis similar a la de python
	pass #pass no hace nada

func funcion_int(numA:int, numB:int) -> int: #Funcion que recibe 2 parametros y devuelve otro
	return numA + numB

func _ready(): #Las funciones que empiezan por _ son las por defecto, esta se ejecuta al cargar el nodo
	print("contenido" + cadena) #Imprimir en consola, tambien hay concatenacion de strings
	funcion() #Llamar a la funcion de antes
	print(funcion_int(1,4)) #Llamar a funcion con parametros que devuelve valor
	
	var num = 3 #Se pueden crear variables de cualquier tipo dentro de un scope
	num = num + 3 #Operadores basicos (+ - * / % () // **)
	num -= 1 #Operador con =
	var siono = num == 3 && num < 9 #Esto devuelve true o false (== != < > >= <=  && ||)
	entero = int(booleana) #Transformacion de tipos
	var entero2 := 3 #Cambia su valor y obliga a hacerse de ese tipo
	
	if num != 3: #Uso basico del if para booleanos
		print("si")
	elif num == 5:
		print("medio")
	else:
		print("no")
	
	match num: #Similar al switch para evaluar
		2:
			print(2)
		3:
			print(3)
		_:
			print("otro")
	
	for i in range(1,11): #Bucle basico del 1 al 10
		print(i)
	for posicion in stack: #Bucle por cada posicion de un array
		print(posicion)
	while num > 49: #Bucle while basado en condicion
		print("vuelta")
		break #Bara provocar la salida de cualquier bucle
	

func _process(delta): #se ejecuta 60 veces por segundo, teniendo tambien el deltatime
	pass
