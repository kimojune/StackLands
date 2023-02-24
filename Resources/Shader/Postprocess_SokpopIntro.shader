//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Postprocess/SokpopIntro" {
Properties {
_MainTex ("Texture", 2D) = "white" { }
_CircleSize ("Circle Size", Float) = 0.5
_CircleDelta ("Circle Delta", Float) = 0.1
_XOffset ("X Offset", Float) = 0
_YOffset ("Y Offset", Float) = 0
_Darkness ("Darkness", Float) = 0
}
SubShader {
 Pass {
  ZTest Always
  ZWrite Off
  Cull Off
  Fog {
   Mode Off
  }
  GpuProgramID 13033
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