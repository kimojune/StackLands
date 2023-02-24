//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Custom/SuperSampled Texture" {
Properties {
_MainTex ("Texture", 2D) = "white" { }
_Color ("Tint", Color) = (1,1,1,1)
_Bias ("Mip Bias", Range(-4, 4)) = -0.75
[KeywordEnum(Off, 2x2 RGSS, 8x Halton, 16x16 OGSS)] _SuperSampling ("Super Sampling Technique", Float) = 1
_AAScale ("AA Pixel Width", Range(0, 10)) = 1.25
_StencilComp ("Stencil Comparison", Float) = 8
_Stencil ("Stencil ID", Float) = 0
_StencilOp ("Stencil Operation", Float) = 0
_StencilWriteMask ("Stencil Write Mask", Float) = 255
_StencilReadMask ("Stencil Read Mask", Float) = 255
_ColorMask ("Color Mask", Float) = 15
}
SubShader {
 Tags { "QUEUE" = "Transparent" "RenderType" = "Transparent" }
 Pass {
  Tags { "QUEUE" = "Transparent" "RenderType" = "Transparent" }
  Blend SrcAlpha OneMinusSrcAlpha, SrcAlpha OneMinusSrcAlpha
  ColorMask 0 0
  ZWrite Off
  Stencil {
   ReadMask 0
   WriteMask 0
   Comp Disabled
   Pass Keep
   Fail Keep
   ZFail Keep
  }
  GpuProgramID 37719
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_SUPERSAMPLING_16X16_OGSS" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_SUPERSAMPLING_16X16_OGSS" }
"// shader disassembly not supported on DXBC"
}
}
}
}
}