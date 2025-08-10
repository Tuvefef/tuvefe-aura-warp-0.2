#ifndef TRIGEXTENS
#define TRIGEXTENS

#include "sillymacros.h"

mat2 gMatriccore(float desym4){
    return mat2(
        cos(desym4), -sin(desym4),
        sin(desym4), cos(desym4)
    );
}

float fveccos(vec2 usym1, vec2 usym2){
    return dot(usym1, usym2) * inversesqrt(
        gdmag2product(usym1) * gdmag2product(usym2)
    );
}


mat2 gbiased2D(float esimx, float esimy) {
    return mat2(1.0, esimx, esimy, 1.0);
}

float arsinh(float e){
    return log(e + sqrt(e * e + 1.0));
}

#endif