#ifndef FINALRENDERWR
#define FINALRENDERWR

#include "pragma/renderwr.glsl"

void fRenderFinalWarp(const vec2 gRenderDataCoord, const float gRenderDataFrame, inout vec4 gFinalRenderData){
    gFinalRenderData = fDreamWarpRet(gRenderDataCoord, gRenderDataFrame);
}

#endif