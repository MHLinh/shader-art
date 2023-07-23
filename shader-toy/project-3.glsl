// Sine distance function and smooth step funciton

void mainImage(out vec4 fragColor, in vec2 fragCoord) {
    vec2 uv = (fragCoord * 2.0 - iResolution.xy) / iResolution.y;

    float d = length(uv);

    d = sin(d * 8. + iTime) / 8.;
    d = abs(d);

    // d = step(0.1, d);
    d = smoothstep(0.0, 0.1, d);

    fragColor = vec4(d, d, d, 1.0);
}