shader_type canvas_item;//tipo de shader

const int CONSTGLOBAL = 4;//se pueden hacer constantes globales fuera de las funciones
void sintaxis_gdshader(){//funcion de ejemplo
	//la sintaxis de los shaders de godot es similar a glsl
	float flotante, otroflotante = 1.0;//creacion de variables
	const int constante = 3;//y constantes
	lowp float miniflotante = 2.0;//modifica la precision numerica, lowp=8bits mediump=16bits highp=32bits
	bool siono = true;
	int entero = -3;
	uint positivo = uint(3);//int pero siepmre en positivo, tambien se puede hacer con <num>u
	
	vec2 vectordos = vec2(2.0, 4.3);//hay vectores 2 3 y 4 que son grupos de float/int
	vec3 vectortres = vec3(2.0, 4.3, 32);
	vec4 vectorcuatro = vec4(2.0, 4.3, 4, 6);
	vectorcuatro = vec4(2, vectortres);//se pueden combinar asi los vectores
	//vecx=vector  ivecx=vector int  uvecx=vector uint  bvecx=vector bool
	mat4 matriz = mat4(vec4(1.0, 1.0, 1.0, 1.0), vec4(1.0, 1.0, 1.0, 1.0), vec4(1.0, 1.0, 1.0, 1.0), vec4(1.0, 1.0, 1.0, 1.0));//creando matriz de 4x4, tambien esta mat2 y mat3
	vectortres = vectortres.bgr;//estaria poniendolo al reves, r=b g=g b=r (swizzling)
	
	int stack[4];//declarar array
	int stack2[3] = int[3](2,4,5);//llamar a datos array
	int stack3[] = { 4, 6, 7, 3, 4};//crear array indefinido
	entero = stack3.length();//devuelve el tamagno del array
	
	
	
	if (siono && flotante >= 2.0 || entero != 4) {//if basico
	} else if(!siono){
	} else {
	}
	int resultado = siono ? 4 : 6;//si no se cumple la condicion es 6 y si se cumple es 4 (operador ternario)
	switch (entero){//switch case basico
		case 0://por cada valor posible
			break;//sale de evaluar
		case 1:
			return;//tambien sale
		default://similar al else
			break;
	}
	while(false){//bucle while basico (obviamente necesita contador)
	}
	do{//bucle dowhile basico
	}while(false);
	for (int i = 0; i < 10; i++){//bucle for basico
	}
	
}


vec3 funcion_valor(float a, float b, float c){//funcion que recibe y devuelve parametros
	return vec3(a, b, c);
}

struct Estructura {//creacion de structs como en c++
	vec3 posicion;
    vec3 color;
	//pueden contener cualquier tipo de variable o incluso otros structs
};
void usar_struct(){
	Estructura estr;//declarar variable a partir del struct
	estr.color.r = 1.0;//usando las propiedades del struct
	Estructura estr2 = Estructura(vec3(0.0), vec3(1.0));//declarando la variable del struct directamente
}