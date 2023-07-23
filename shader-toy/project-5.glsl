// Fract function

vec3 palette(float t) {
    vec3 a = vec3(0.235, 0.267, 0.436);
    vec3 b = vec3(0.632, 0.597, 0.144);
    vec3 c = vec3(0.513, 1.461, 1.091);
    vec3 d = vec3(3.479, 2.626, 0.407);

    return a + b * cos(6.28318 * (c * t + d));
}

void mainImage(out vec4 fragColor, in vec2 fragCoord) {
    vec2 uv = (fragCoord * 2.0 - iResolution.xy) / iResolution.y;
    vec2 uv0 = uv;

    uv = fract(uv * 2.0) - 0.5;

    float d = length(uv);

    vec3 col = palette(length(uv0) + iTime);
    d = sin(d * 8. + iTime) / 8.;
    d = abs(d);

    d = 0.02 / d;

    col *= d;

    fragColor = vec4(col, 1.0);
}