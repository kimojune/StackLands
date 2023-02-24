//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Unlit/CardopediaBackgroundShader" {
Properties {
_MainTex ("Texture", 2D) = "white" { }
}
SubShader {
 LOD 100
 Tags { "QUEUE" = "Transparent" "RenderType" = "Opaque" }
 Pass {
  LOD 100
  Tags { "QUEUE" = "Transparent" "RenderType" = "Opaque" }
  Blend SrcAlpha OneMinusSrcAlpha, SrcAlpha OneMinusSrcAlpha
  GpuProgramID 57985
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
}
}
}
}