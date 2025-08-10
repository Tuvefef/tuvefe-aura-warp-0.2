#ifndef GLSILLYMACROS 
#define GLSILLYMACROS

#define gdnoiserand(i, t) ((i) * NOISE_RES + vec2(sin((t) * 1.5) * 0.05, cos((t) * 1.5) * 0.05))
#define gdmag2product(x) (dot((x), (x)))
#define gdluma(x) (dot((x).rgb, RGBDEF))
#define gdlumac(x) (clamp(gdluma(x), 0.0, 1.0))
#define gdbiassnap(x, y) (floor((x) * (y)) / (y))
#define gdqtrz(e) ((e) < 0.25 ? 0 : ((e) < 0.5 ? 0.33 : ((e) < 0.75 ? 0.66 : 1)))

#endif