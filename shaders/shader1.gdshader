//Para hacer un shader en godot se aplica un archivo .gshader a un material de un nodo
shader_type canvas_item;//Los shaders canvas_item son para 2d

uniform vec3 externa;//Parametro del shader modificable desde fuera
uniform vec3 uncolor:source_color;//Pueden ser modificados para verse distinto en el inspector

void cosas_generales(){
	float tiempo = TIME;//Time hace referencia al tiempo desde que se carga el shader
	tiempo = sin(tiempo);//Devuelve el seno de un numero
	tiempo = length(externa);//Devuelve la distancia del punto hasta 0
	tiempo = step(0.01, tiempo);//Redondea un numero a escalones
	tiempo = floor(tiempo);//Redondea a entero
}

void fragment() {//Llamado por cada pixel, donde COLOR hace refenencia a un vec4 con rgba del 0 al 1
	vec4 input_color = texture(TEXTURE, UV);//Hace referencia a la textura/sprite mediante vector4
	COLOR = vec4(1.0, input_color.g, input_color.b, input_color.a);//Hace referencia al color del pixel
	//ALBEDO = vec3(1.0, 0.0, 1.0);
}

void vertex() {//vertex se ejecuta por cada vertice del objeto (en este caso canvas_item) por cada frame, donde VERTEX es un vec2 con la posicion del vertice a partir de 0,0(centro) a 128/-128
	if (VERTEX.y > 0.0){
		VERTEX += vec2(30.0);//vertex hace referencia a la posicion x y del vertice a partir del centro hasta 128
	}
}

//void light() {
	// Called for every pixel for every light affecting the CanvasItem.
	// Uncomment to replace the default light processing function with this one.
//}
