shader_type canvas_item;

void fragment() {
    vec4 red_overlay = vec4(1.0, 0.0, 0.0, 0.5); // Red color with 50% opacity
    COLOR = red_overlay;
}
