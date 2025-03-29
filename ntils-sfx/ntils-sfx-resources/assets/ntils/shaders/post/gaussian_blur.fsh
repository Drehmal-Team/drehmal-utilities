#version 330

uniform sampler2D InSampler;

uniform vec2 OutSize;
uniform float GameTime;
uniform vec2 Direction;

const float WEIGHTS[5] = float[](0.2270270270, 0.1945945946, 0.1216216216, 0.0540540541, 0.0162162162);
const float OFFSETS[5] = float[](0.,1.,2.,3.,4.);

in vec2 texCoord;
in vec2 oneTexel;

out vec4 fragColor;

void main() {
    vec3 color = vec3(0.);

    for (int i = -4; i < 4; i++) {
        color += WEIGHTS[abs(i)] * texture(InSampler, texCoord + OFFSETS[abs(i)] * Direction * oneTexel).xyz;
    }

    fragColor = vec4(color,1.);
}