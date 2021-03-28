// varying vec2 vUv;

varying float vNoise;
varying vec2 vUv;
uniform sampler2D oceanTexture;

void main()	{
	// vec2 newUV = (vUv - vec2(0.5))*resolution.zw + vec2(0.5);
	vec3 color1 = vec3(0., 0., 1.);
	vec3 color2 = vec3(0., 1., 1.);
	vec3 finalcolor = mix(color1, color2, 0.5*(vNoise + 1.));

	vec4 oceanView = texture2D(oceanTexture, vUv);
		
	// gl_FragColor = vec4(finalcolor, 1.);
	gl_FragColor = vec4(vUv,0., 1.);
	gl_FragColor = oceanView;
}