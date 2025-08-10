#ifndef NOISECLTEX10
#define NOISECLTEX10

float fBlueNoise(vec2 gCoordDataCoeff, float gFrameDataCoeff){
    vec2 gResoHex;

    gCoordDataCoeff = gbiased2D(0.0, 0.3) * gCoordDataCoeff; // Sesgado horizontal
    gCoordDataCoeff = gMatriccore(0.5) * gCoordDataCoeff;

    #if   NOISE_PRESCICION == 1
            gResoHex = vec2(_qchhex_);
    #elif NOISE_PRESCICION == 2
            gResoHex = vec2(_cochex_);
    #endif

    vec2 gSnapCoord = gdbiassnap(gCoordDataCoeff, gResoHex);
    vec2 gCoordDataCoeff1 = fract(gdnoiserand(gSnapCoord, gFrameDataCoeff));
    vec4 gNoiseColor = texture(colortex10, gCoordDataCoeff1);
    return gdluma(gNoiseColor);
}

#endif