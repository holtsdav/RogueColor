shader_type canvas_item;
uniform bool onoff = false;
void fragment() {
	if (onoff == true) {
    vec4 red_overlay = vec4(1.0, 0.0, 0.0, 0.5); // Red color with 50% opacity
    COLOR = red_overlay;}
	if (onoff == false) {
	vec4 red_overlay = vec4(1.0, 0.0, 0.0, 0);
	COLOR = red_overlay;
	}
}
