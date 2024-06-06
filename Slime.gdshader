shader_type canvas_item;
uniform bool onoff = false;

void fragment() {
    vec4 color = texture(TEXTURE, UV);
    float gray = dot(color.rgb, vec3(0.299, 0.587, 0.114));
    COLOR = vec4(vec3(gray), color.a);
	
	if (onoff == true) {
	vec4 color = texture(TEXTURE, UV);
	COLOR = vec4(1.0 - color.rgb, color.a); }
}

