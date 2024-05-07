uniform vec3 uDepthColor;
uniform vec3 uSurfaceColor;
uniform float uColoOffset;
uniform float uColorMultiplier;

varying float vElevation;


void main(){

    float mixStrengthColor = (vElevation + uColoOffset) * uColorMultiplier;

    vec3 color = mix(uDepthColor,uSurfaceColor,mixStrengthColor);
    gl_FragColor = vec4(color, 1.0);
}