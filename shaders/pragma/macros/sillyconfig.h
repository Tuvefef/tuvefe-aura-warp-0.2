#define NOISE_RES 2.9           //[2.0 2.1 2.2 2.3 2.4 2.5 2.6 2.7 2.8 2.9 3.0]

#define RGBDEF DEF_RED            //[DEF_RED DEF_GREEN DEF_BLUE] red green blue

#define DEF_RED         gdefr()
#define DEF_GREEN       gdefg()
#define DEF_BLUE        gdefb()

    vec3 gdefr(){ return vec3(0.600, 0.160, 0.200); }
    vec3 gdefg(){ return vec3(0.299, 0.587, 0.114); }
    vec3 gdefb(){ return vec3(0.120, 0.200, 0.555); }

#define NOISE_PRESCICION    1   //[1 2] 1-normal 2-pixel
#define NOISE_INTENSITY 0.010   //[0.005 0.010 0.015 0.020 0.025 0.030 0.035 0.040 0.045]
#define NOISE_ANIMATED      1   //[1 2] 1-static 2-animated
#define GHOST_IMG        0.20   //[0.20 0.25 0.30 0.35 0.40 0.45] 0.20 recommended