shader_type canvas_item;

uniform float threshold : hint_range(0.0, 1.0) = 0.5;

void fragment() {
    vec4 color = texture(TEXTURE, UV);
    float gray = dot(color.rgb, vec3(0.299, 0.587, 0.114));
    float bw = step(threshold, gray);
    COLOR = vec4(vec3(bw), color.a);
}
