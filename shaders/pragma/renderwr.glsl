#ifndef RENDERWRDATA
#define RENDERWRDATA

#include "macros/sillyconfig.h"
#include "macros/sillymacros.h"
#include "macros/maths.glsl"
#include "macros/hexbin.h"
#include "noise.glsl"

vec4 fDreamWarpRet(vec2 gCoordDataCoeff, float gFrameDataCoeff){
    vec4 gDataSampler = texture(colortex0, gCoordDataCoeff);
    float gSPRcamera = arsinh(clamp(gDataSampler.b, 0.0, GHOST_IMG));
    gSPRcamera = esymQtzUnfTram(gSPRcamera);
    float ganimDef;

    #if   NOISE_ANIMATED == 1
        ganimDef = 1.0;
    #elif NOISE_ANIMATED == 2
        ganimDef = gFrameDataCoeff;
    #endif

    float gWRdefine = fBlueNoise(gCoordDataCoeff - (ganimDef), gFrameDataCoeff) * NOISE_INTENSITY;
    float gDrtVcos = fveccos(gCoordDataCoeff - vec2(0.5, 0.5), vec2(1.0, 0.0)) * 1.5;
    gDrtVcos = 0.5 + 0.5 * gDrtVcos;
    float gVecoBlend = gSPRcamera * gDrtVcos;

    vec4 gCameraSamplr = texture(colortex0, gCoordDataCoeff + gWRdefine);
    vec4 rcmmix = mix(gCameraSamplr * 0.9, gDataSampler, gVecoBlend);

    return rcmmix;
}

#endif