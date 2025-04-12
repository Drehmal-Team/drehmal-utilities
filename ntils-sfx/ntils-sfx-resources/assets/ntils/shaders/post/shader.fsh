#version 330

uniform sampler2D MainSampler;
uniform sampler2D PrevSampler;
uniform sampler2D DataSampler;

uniform vec2 OutSize;
uniform float GameTime;

#moj_import <shader_selector:marker_settings.glsl>
#moj_import <shader_selector:utils.glsl>
#moj_import <shader_selector:data_reader.glsl>

in vec2 texCoord;

out vec4 fragColor;

void main() {

    float phosphorStrength = readChannel(BLUR_CHANNEL);

    fragColor = texture(MainSampler, texCoord);

    
    fragColor = vec4(mix(
                fragColor.xyz,
                min(texture(PrevSampler, texCoord).xyz * 1.01, fragColor.xyz), 
                phosphorStrength
            ),fragColor.w);
    

    /*
    fragColor = vec4(
        mix(
            fragColor.xyz,
            texture(PrevSampler,texCoord).xyz,
            phosphorStrength
        ),
        fragColor.w
    );
    */

    float pixelBrightness = dot(fragColor.xyz,vec3(0.2126, 0.7152, 0.0722));
    
    fragColor = vec4(
        mix(
            fragColor.xyz,
            pixelBrightness * vec3(0.721568627451,0.41568627451,0.886274509804),
            readChannel(PURPLE_CHANNEL)
        )
        ,fragColor.w
        );

    /*
    vec3 blurredPixel = mix(fragColor.xyz,max(texture(PrevSampler, texCoord).xyz * 0.99, fragColor.xyz),phosphorStrength);

    float pixelBrightness = dot(blurredPixel,vec3(0.2126, 0.7152, 0.0722));

    fragColor = vec4(mix(blurredPixel,pixelBrightness * vec3(0.721568627451,0.41568627451,0.886274509804),readChannel(PURPLE_CHANNEL)),fragColor.w);
    */



    //if (texCoord.x < 0.5) fragColor = texture(MainSampler, texCoord);
    //else fragColor = texture(PrevSampler, texCoord);

    /*
    vec4 color = texture(MainSampler, texCoord);

    // yeah baby
    float phosphorStrength = readChannel(BLUR_CHANNEL);
    if (phosphorStrength > 0.001) {
        fragColor = (texture(PrevSampler, texCoord) * phosphorStrength) + (color * (1.-phosphorStrength));
        
        fragColor = (
                        color + 
                        texture(n0Sampler, texCoord) * phosphorStrength * 0.2 +
                        texture(n1Sampler, texCoord) * phosphorStrength * 0.4 +
                        texture(n2Sampler, texCoord) * phosphorStrength * 0.6 +
                        texture(n3Sampler, texCoord) * phosphorStrength * 0.8
                    ) / (1. + 2. * phosphorStrength);
        
    }
    else fragColor = color;
    */

//#define DEBUG
#ifdef DEBUG
    // Show data sampler on screen
    if (texCoord.x < .25 && texCoord.y < .25) {
        uv = texCoord * 4.0;
        vec4 col = texture(DataSampler, uv);
        if (uv.x > 1./5.)
            col = vec4(vec3(fract(decodeColor(col))), 1.0);
        fragColor = col;
    }
#endif
}