shader_type canvas_item;

uniform bool onoff = false;
void fragment(){
	if (onoff == true) {
	vec4 color = texture(TEXTURE, UV);
	COLOR = vec4(1.0 - color.rgb, color.a)*0.6;  }
	else {
    vec4 texture_color = texture(TEXTURE, UV);
    texture_color.a *= 0.6;
    COLOR = texture_color; }
}