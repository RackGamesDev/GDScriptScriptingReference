#comentarios
'''comentarios
multilinea'''


extends Node #todos los scripts deben derivar de una clase (nodo), es conveniente que deriven de la misma que la del nodo al que se va a agregar el script

var variable = 12 #declarar una variable para todo el script, se inicializa antes que el _ready, (no necesariamente necesitan tener un valor inicial)
var entero:int = 30 #para obligar a una variable a ser de x tipo se hace asi
var flotante:float = 3.56
var cadena:String = "asdfasf"
var booleana:bool = true
var vec2:Vector2 = Vector2(1,4)
var vec3:Vector3 = Vector3(1,4, 6)
#hay muchas mas clases, pero estas son las primitivas
const CONSTANTE = 3.14 #igual pero con consantes

@export var externa = 0 #variable global que sera visible desde el inspector y otros scripts (fuera de cualquier funcion)
@export_range(0, 10) var externaRango:int = 5 #igual pero eligiendo un rango
@export_multiline var textoGrande:String = "" #igual pero para textos
@onready var nodo:Node2D = $/root/Node2D/objeto #solo se instancia cuando los nodos estan preparados
#hay muchos tipos de @export con funcionalidades distintas

var stack : Array = ["asdf", 3, true, [3,5]] #los arrays funcionan igual que en python, con tipos de valor dinamico
var diccionario: Dictionary = {
	"valor": "propiedad",
	"valor2": 3,
	"otroDiccionario": {"valor": "asdf"}
} #tambien estan los diccionarios que funcionan igual que json


func funcion(): #funcion basica, sintaxis similar a la de python
	pass #pass no hace nada

func funcion_int(numA:int, numB:int) -> int: #funcion que recibe 2 parametros y devuelve otro
	return numA + numB

func _ready(): #las funciones que empiezan por _ son las por defecto, esta se ejecuta al cargar el nodo
	print("contenido" + cadena) #imprimir en consola, tambien hay concatenacion de strings
	funcion() #llamar a la funcion de antes
	print(funcion_int(1,4)) #llamar a funcion con parametros que devuelve valor
	
	var num = 3 #se pueden crear variables de cualquier tipo dentro de un scope
	num = num + 3 #operadores basicos (+ - * / % () // **)
	num -= 1 #operador con =
	var siono = num == 3 && num < 9 #esto devuelve true o false (== != < > >= <=  && ||)
	entero = int(booleana) #transformacion de tipos
	var entero2 := 3 #cambia su valor y obliga a hacerse de ese tipo
	
	if num != 3: #uso basico del if para booleanos
		print("si")
	elif num == 5:
		print("medio")
	else:
		print("no")
	
	match num: #similar al switch para evaluar
		2:
			print(2)
		3:
			print(3)
		_:
			print("otro")
	
	for i in range(1,11): #bucle basico del 1 al 10
		print(i)
	for posicion in stack: #bucle por cada posicion de un array
		print(posicion)
	while num > 49: #bucle while basado en condicion
		print("vuelta")
		break #para provocar la salida de cualquier bucle
	

func _process(delta): #se ejecuta 60 veces por segundo, teniendo tambien el deltatime
	pass
