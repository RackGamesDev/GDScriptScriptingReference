shader_type spatial;//shader usado para materiales de objetos 3d

void vertex() {
	VERTEX.y += sin(TIME * 5.0 + VERTEX.x * 10.0) * 0.2;//tambien se pueden modificar los vertices
}
void fragment() {
	ALBEDO = vec3(1.0, 0.0, 1.0);//en el caso de 3d el color es albedo
	ROUGHNESS = 0.1;//que tanto rebota la luz
	METALLIC = 1.0;//con que nitidez rebota la luz
	ALPHA = 0.9;//tarsparencia
	//EMISSION = ALBEDO;//de que color rebota la luz
	
	/*vec3 color;
	color.r = (sin(TIME * 6.0 + VERTEX.x * 10.0)) * 0.5;
	color.g = (sin(TIME * 7.0 + VERTEX.x * 10.0)) * 0.5;
	color.b = (sin(TIME * 8.0 + VERTEX.x * 10.0)) * 0.5;
	ALBEDO = color;*/
}

//void light() {
	// Called for every pixel for every light affecting the material.
	// Uncomment to replace the default light processing function with this one.
//}
