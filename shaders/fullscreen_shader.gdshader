shader_type canvas_item;

uniform sampler2D SCREEN_TEXTURE:hint_screen_texture, filter_linear_mipmap;//La variable con la imagen renderizando de fondo
void fragment() {
	vec4 bg = texture(SCREEN_TEXTURE, SCREEN_UV);//La imagen, formada con la funcion texture
	float avg = (bg.r + bg.g + bg.b) / 3.0;
	COLOR = vec4(avg,avg,avg,1.0);
}

