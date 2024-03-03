//para hacer un shader en godot se aplica un archivo .gshader a un material de un nodo
shader_type canvas_item;//los shaders canvas_item son para 2d

void fragment() {//llamado por cada pixel
	vec4 input_color = texture(TEXTURE, UV);//hace referencia a la textura/sprite mediante vector4
	COLOR = vec4(1.0, input_color.g, input_color.b, input_color.a);//hace referencia al color del pixel
	//ALBEDO = vec3(1.0, 0.0, 1.0);
}

void vertex() {
	// Called for every vertex the material is visible on.
}

//void light() {
	// Called for every pixel for every light affecting the CanvasItem.
	// Uncomment to replace the default light processing function with this one.
//}
