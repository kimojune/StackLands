//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Shapes/Polyline 2D Screen" {
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
  Blend One OneMinusSrcColor, One OneMinusSrcColor
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
  GpuProgramID 26051
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "JOIN_MITER" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "JOIN_ROUND" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "JOIN_BEVEL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "IS_JOIN_MESH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "IS_JOIN_MESH" "JOIN_MITER" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "IS_JOIN_MESH" "JOIN_ROUND" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "IS_JOIN_MESH" "JOIN_BEVEL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "JOIN_MITER" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "JOIN_ROUND" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "JOIN_BEVEL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "IS_JOIN_MESH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "IS_JOIN_MESH" "JOIN_MITER" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "IS_JOIN_MESH" "JOIN_ROUND" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "IS_JOIN_MESH" "JOIN_BEVEL" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "JOIN_MITER" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "JOIN_ROUND" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "JOIN_BEVEL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "IS_JOIN_MESH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "IS_JOIN_MESH" "JOIN_MITER" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "IS_JOIN_MESH" "JOIN_ROUND" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "IS_JOIN_MESH" "JOIN_BEVEL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "JOIN_MITER" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "JOIN_ROUND" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "JOIN_BEVEL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "IS_JOIN_MESH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "IS_JOIN_MESH" "JOIN_MITER" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "IS_JOIN_MESH" "JOIN_ROUND" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "IS_JOIN_MESH" "JOIN_BEVEL" }
"// shader disassembly not supported on DXBC"
}
}
}
}
}