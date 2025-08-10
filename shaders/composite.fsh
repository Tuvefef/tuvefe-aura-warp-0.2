#version 330 compatibility

uniform sampler2D colortex0;
uniform sampler2D colortex10;
uniform float frameTime;

in vec2 fDataSpaceCoord;
layout (location = 0) out vec4 color;

#include "warpfinal.glsl"

void main(){
    color = texture(colortex0, fDataSpaceCoord);
    fRenderFinalWarp(fDataSpaceCoord, frameTime, color);
}