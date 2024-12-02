shader_type canvas_item;//Tipo de shader

const int CONSTGLOBAL = 4;//Se pueden hacer constantes globales fuera de las funciones
void sintaxis_gdshader(){//Funcion de ejemplo
	//La sintaxis de los shaders de godot es similar a glsl
	float flotante, otroflotante = 1.0;//Creacion de variables
	const int constante = 3;//Y constantes
	lowp float miniflotante = 2.0;//Modifica la precision numerica, lowp=8bits mediump=16bits highp=32bits
	bool siono = true;
	int entero = -3;
	uint positivo = uint(3);//int pero siepmre en positivo, tambien se puede hacer con <num>u
	
	vec2 vectordos = vec2(2.0, 4.3);//Hay vectores 2 3 y 4 que son grupos de float/int
	vec3 vectortres = vec3(2.0, 4.3, 32);
	vec4 vectorcuatro = vec4(2.0, 4.3, 4, 6);
	vectorcuatro = vec4(2, vectortres);//Se pueden combinar asi los vectores
	//vecx=vector  ivecx=vector int  uvecx=vector uint  bvecx=vector bool
	mat4 matriz = mat4(vec4(1.0, 1.0, 1.0, 1.0), vec4(1.0, 1.0, 1.0, 1.0), vec4(1.0, 1.0, 1.0, 1.0), vec4(1.0, 1.0, 1.0, 1.0));//Creando matriz de 4x4, tambien esta mat2 y mat3
	vectortres = vectortres.bgr;//Estaria poniendolo al reves, r=b g=g b=r (swizzling)
	
	int stack[4];//Declarar array
	int stack2[3] = int[3](2,4,5);//Llamar a datos array
	int stack3[] = { 4, 6, 7, 3, 4};//Crear array indefinido
	entero = stack3.length();//Devuelve el tamagno del array
	
	
	
	if (siono && flotante >= 2.0 || entero != 4) {//if basico
	} else if(!siono){
	} else {
	}
	int resultado = siono ? 4 : 6;//Si no se cumple la condicion es 6 y si se cumple es 4 (operador ternario)
	switch (entero){//switch case basico
		case 0://Por cada valor posible
			break;//Sale de evaluar
		case 1:
			return;//Tambien sale
		default://Similar al else
			break;
	}
	while(false){//Bucle while basico (obviamente necesita contador)
	}
	do{//Bucle dowhile basico
	}while(false);
	for (int i = 0; i < 10; i++){//Bucle for basico
	}
	
}


vec3 funcion_valor(float a, float b, float c){//Funcion que recibe y devuelve parametros
	return vec3(a, b, c);
}

struct Estructura {//Creacion de structs como en c++
	vec3 posicion;
    vec3 color;
	//Pueden contener cualquier tipo de variable o incluso otros structs
};
void usar_struct(){
	Estructura estr;//Declarar variable a partir del struct
	estr.color.r = 1.0;//Usando las propiedades del struct
	Estructura estr2 = Estructura(vec3(0.0), vec3(1.0));//Declarando la variable del struct directamente
}
