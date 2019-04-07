#pragma once
#include "core.h"
#include "container.h"
#include "math.h"

typedef struct {
    int8 x;
    int8 y;
} FPoint8;

typedef struct {
    int16 x;
    int16 y;
} FPoint16;

typedef struct {
    FPoint8 Begin;
    FPoint8 End;
} FLineInfo;

typedef struct __FMonocolorBufferDesc {
    uint8 Width;
    uint8 Height;
    byte* Buffer;
} FMonocolorBufferDesc;

typedef TArray CLineVector_FLineInfoArray;
typedef struct {
    CLineVector_FLineInfoArray args;
    FMonocolorBufferDesc BufferDesc;
} CLineVector;

void CLineSet_RenderOnMonocolorBuffer( CLineVector* Vector );
