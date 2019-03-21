#pragma once

#define _MASK(num) (0x01 <<(num))
#define _MASK_SETBIT0(_a) (_MASK(_a))
#define _MASK_SETBIT1(_a, _b) (_MASK(_a)|_MASK(_b))
#define _MASK_SETBIT2(_a, _b, _c) (_MASK(_a)|_MASK(_b)|_MASK(_c))
#define _MASK_SETBIT3(_a, _b, _c, _d) (_MASK(_a)|_MASK(_b)|_MASK(_c)|_MASK(_d))
#define _MASK_SETBIT4(_a, _b, _c, _d, _e) (_MASK(_a)|_MASK(_b)|_MASK(_c)|_MASK(_d)|_MASK(_e))
#define _MASK_SETBIT5(_a, _b, _c, _d, _e, _f) (_MASK(_a)|_MASK(_b)|_MASK(_c)|_MASK(_d)|_MASK(_e)|_MASK(_f))
#define _MASK_SETBIT6(_a, _b, _c, _d, _e, _f, _g) (_MASK(_a)|_MASK(_b)|_MASK(_c)|_MASK(_d)|_MASK(_e)|_MASK(_f)|_MASK(_g))
#define _MASK_SETBIT7(_a, _b, _c, _d, _e, _f, _g, _h) (_MASK(_a)|_MASK(_b)|_MASK(_c)|_MASK(_d)|_MASK(_e)|_MASK(_f)|_MASK(_g)|_MASK(_h))
#define _MASK_GETMACRO(_0, _1, _2, _3, _4, _5, _6, _7, NAME, ...) NAME
#define mask(...) _MASK_GETMACRO(__VA_ARGS__, _MASK_SETBIT7, _MASK_SETBIT6, _MASK_SETBIT5, _MASK_SETBIT4, _MASK_SETBIT3, _MASK_SETBIT2, _MASK_SETBIT1, _MASK_SETBIT0)(__VA_ARGS__)