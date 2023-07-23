// XY colour shades can center pixel coordinate with scaling to canvas

void mainImage(out vec4 fragColor, in vec2 fragCoord) {
    vec2 uv = (fragCoord * 2.0 - iResolution.xy) / iResolution.y;

    fragColor = vec4(uv.x, uv.y, 0.0, 1.0);
}