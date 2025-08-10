#version 330 compatibility

out vec2 fDataSpaceCoord;

void main(){
    fDataSpaceCoord = vec2(gl_TextureMatrix[0] * gl_MultiTexCoord0);
    gl_Position = ftransform();
}