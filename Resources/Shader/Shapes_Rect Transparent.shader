//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Shapes/Rect Transparent" {
Properties {
[Enum(UnityEngine.Rendering.CompareFunction)] _ZTest ("Z Test", Float) = 4
_ZOffsetFactor ("Z Offset Factor", Float) = 0
_ZOffsetUnits ("Z Offset Units", Float) = 0
[Enum(UnityEngine.Rendering.CompareFunction)] _StencilComp ("Stencil Comparison", Float) = 8
[Enum(UnityEngine.Rendering.StencilOp)] _StencilOpPass ("Stencil Operation Pass", Float) = 0
_StencilID ("Stencil ID", Float) = 0
_StencilReadMask ("Stencil Read Mask", Float) = 255
_StencilWriteMask ("Stencil Write Mask", Float) = 255
}
SubShader {
 Tags { "DisableBatching" = "true" "IGNOREPROJECTOR" = "true" "QUEUE" = "Transparent" "RenderType" = "Transparent" }
 Pass {
  Tags { "DisableBatching" = "true" "IGNOREPROJECTOR" = "true" "QUEUE" = "Transparent" "RenderType" = "Transparent" }
  Blend SrcAlpha OneMinusSrcAlpha, One OneMinusSrcAlpha
  ZTest Off
  ZWrite Off
  Cull Off
  Stencil {
   ReadMask 0
   WriteMask 0
   Comp Disabled
   Pass Keep
   Fail Keep
   ZFail Keep
  }
  GpuProgramID 29154
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "BORDERED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "CORNER_RADIUS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "BORDERED" "CORNER_RADIUS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "BORDERED" "INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "CORNER_RADIUS" "INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "BORDERED" "CORNER_RADIUS" "INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "BORDERED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "CORNER_RADIUS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "BORDERED" "CORNER_RADIUS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "BORDERED" "INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "CORNER_RADIUS" "INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "BORDERED" "CORNER_RADIUS" "INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
}
}
}
}