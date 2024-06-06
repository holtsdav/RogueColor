shader_type canvas_item;
uniform bool OnoffYellow = false; 
uniform bool OnoffPurple = false; // Boolean uniform to toggle the effect
uniform bool Mouse = false;

void fragment() {
    vec4 color = texture(TEXTURE, UV);
    
    if (OnoffPurple && Mouse == false) {
        // Calculate the grayscale value
        float grey = dot(color.rgb, vec3(0.299, 0.587, 0.114));
        
        // If Onoff is true, turn greys into purple
        if (abs(color.r - grey) < 0.1 && abs(color.g - grey) < 0.1 && abs(color.b - grey) < 0.1) {
            color.rgba = vec4(0.5, 0.0, 0.5,0.8); // Purple color
        }
    }
	else if (OnoffPurple == false && Mouse == false){
		color.rgba = vec4 (0.22,0.22,0.22,0.8);
	}
    if (Mouse && OnoffPurple == false){
		color.rgba = vec4 (0.44,0.44,0.44,0.8);
	}
	if (Mouse && OnoffPurple){
		color.rgba = vec4(0.5, 0.0, 0.5,0.9);
	}
	if (Mouse && OnoffYellow){
		color.rgba = vec4(1.0, 0.843, 0,0.9);
	}
	if (Mouse == false && OnoffYellow){
		color.rgba = vec4(1.0, 0.843, 0,0.8);
	}
	
	
    COLOR = color;
}
render_mode blend_mix;