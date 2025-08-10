#ifndef HEXBINSH
#define HEXBINSH

float esymQtzUnfTram(float e){
         if(e < 0.25)   return 0;
    else if(e < 0.50)   return 1.0 / 3.0;
    else if(e < 0.75)   return 2.0 / 3.0;
    else                return 1;
}

const uint _dcshex_ = 0x0100u; /*consts in hex*/
const uint _qchhex_ = 0x00010000u;
const uint _cochex_ = 0x01e5u;

#endif