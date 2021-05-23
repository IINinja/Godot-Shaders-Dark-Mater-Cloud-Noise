//Coded by INinja studio
shader_type canvas_item;

uniform sampler2D noise1;
uniform sampler2D noise2;
uniform vec2 scroll1 =  vec2(0.1, -0.2);
uniform vec2 scroll2 =  vec2(0.1, -0.8);

void fragment(){
	float noise1_val = texture(noise1, UV + TIME * scroll1).r;
	float noise2_val = texture(noise2, UV + TIME * scroll2).r;
	float intesity = (noise1_val * noise2_val);

	COLOR.rgb = vec3(intesity);
}