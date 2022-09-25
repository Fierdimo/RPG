//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float sAdd;
uniform bool sRed;

void main()
{
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	if (sRed)gl_FragColor.r = 1.0;

		//gl_FragColor.rgb += vec3(sAdd);
	
}