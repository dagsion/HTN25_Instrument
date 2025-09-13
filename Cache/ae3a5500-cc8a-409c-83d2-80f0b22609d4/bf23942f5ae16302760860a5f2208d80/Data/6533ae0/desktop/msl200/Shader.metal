#include <metal_stdlib>
#include <simd/simd.h>
using namespace metal;
namespace SNAP_VS {
int sc_GetStereoViewIndex()
{
return 0;
}
}
#ifndef sc_TextureRenderingLayout_Regular
#define sc_TextureRenderingLayout_Regular 0
#define sc_TextureRenderingLayout_StereoInstancedClipped 1
#define sc_TextureRenderingLayout_StereoMultiview 2
#endif
// SCC_BACKEND_SHADER_FLAGS_BEGIN__
// NGS_FLAG_IS_NORMAL_MAP Tweak_N12
// NGS_FLAG_IS_NORMAL_MAP Tweak_N58
// SCC_BACKEND_SHADER_FLAGS_END__
//SG_REFLECTION_BEGIN(200)
//attribute vec4 boneData 5
//attribute vec3 blendShape0Pos 6
//attribute vec3 blendShape0Normal 12
//attribute vec3 blendShape1Pos 7
//attribute vec3 blendShape1Normal 13
//attribute vec3 blendShape2Pos 8
//attribute vec3 blendShape2Normal 14
//attribute vec3 blendShape3Pos 9
//attribute vec3 blendShape4Pos 10
//attribute vec3 blendShape5Pos 11
//attribute vec4 position 0
//attribute vec3 normal 1
//attribute vec4 tangent 2
//attribute vec2 texture0 3
//attribute vec2 texture1 4
//attribute vec4 color 18
//attribute vec3 positionNext 15
//attribute vec3 positionPrevious 16
//attribute vec4 strandProperties 17
//output vec4 FragColor0 0
//output vec4 FragColor1 1
//output vec4 FragColor2 2
//output vec4 FragColor3 3
//sampler sampler Tweak_N0SmpSC 0:29
//sampler sampler Tweak_N12SmpSC 0:30
//sampler sampler Tweak_N15SmpSC 0:31
//sampler sampler Tweak_N18SmpSC 0:32
//sampler sampler Tweak_N47SmpSC 0:33
//sampler sampler Tweak_N58SmpSC 0:34
//sampler sampler Tweak_N82SmpSC 0:35
//sampler sampler Tweak_N8SmpSC 0:36
//sampler sampler intensityTextureSmpSC 0:37
//sampler sampler sc_RayTracingHitCasterIdAndBarycentricSmpSC 0:41
//sampler sampler sc_RayTracingRayDirectionSmpSC 0:42
//sampler sampler sc_ScreenTextureSmpSC 0:44
//texture texture2D Tweak_N0 0:4:0:29
//texture texture2D Tweak_N12 0:5:0:30
//texture texture2D Tweak_N15 0:6:0:31
//texture texture2D Tweak_N18 0:7:0:32
//texture texture2D Tweak_N47 0:8:0:33
//texture texture2D Tweak_N58 0:9:0:34
//texture texture2D Tweak_N8 0:10:0:36
//texture texture2D Tweak_N82 0:11:0:35
//texture texture2D intensityTexture 0:12:0:37
//texture utexture2D sc_RayTracingHitCasterIdAndBarycentric 0:23:0:41
//texture texture2D sc_RayTracingRayDirection 0:24:0:42
//texture texture2D sc_ScreenTexture 0:26:0:44
//ubo float sc_BonesUBO 0:3:96 {
//sc_Bone_t sc_Bones 0:[1]:96
//float4 sc_Bones.boneMatrix 0:[3]:16
//float4 sc_Bones.normalMatrix 48:[3]:16
//}
//ubo int UserUniforms 0:47:5808 {
//float4 sc_Time 1376
//float4 sc_UniformConstants 1392
//float4x4 sc_ViewProjectionMatrixArray 1680:[2]:64
//float4x4 sc_ModelViewMatrixArray 1936:[2]:64
//float4x4 sc_ProjectionMatrixArray 2384:[2]:64
//float4x4 sc_ProjectionMatrixInverseArray 2512:[2]:64
//float4x4 sc_ViewMatrixArray 2640:[2]:64
//float4x4 sc_PrevFrameViewProjectionMatrixArray 2896:[2]:64
//float4x4 sc_ModelMatrix 3024
//float4x4 sc_ModelMatrixInverse 3088
//float3x3 sc_NormalMatrix 3152
//float4x4 sc_PrevFrameModelMatrix 3248
//float4 sc_CurrentRenderTargetDims 3456
//sc_Camera_t sc_Camera 3472
//float3 sc_Camera.position 0
//float sc_Camera.aspect 16
//float2 sc_Camera.clipPlanes 24
//float sc_ShadowDensity 3504
//float4 sc_ShadowColor 3520
//float4x4 sc_ProjectorMatrix 3536
//float4 weights0 3616
//float4 weights1 3632
//float4 sc_StereoClipPlanes 3664:[2]:16
//float2 sc_TAAJitterOffset 3704
//uint4 sc_RayTracingCasterConfiguration 3824
//uint4 sc_RayTracingCasterOffsetPNTC 3840
//uint4 sc_RayTracingCasterOffsetTexture 3856
//uint4 sc_RayTracingCasterFormatPNTC 3872
//uint4 sc_RayTracingCasterFormatTexture 3888
//float4 voxelization_params_0 3952
//float4 voxelization_params_frustum_lrbt 3968
//float4 voxelization_params_frustum_nf 3984
//float3 voxelization_params_camera_pos 4000
//float4x4 sc_ModelMatrixVoxelization 4016
//float correctedIntensity 4080
//float3x3 intensityTextureTransform 4144
//float4 intensityTextureUvMinMax 4192
//float4 intensityTextureBorderColor 4208
//int PreviewEnabled 4372
//float alphaTestThreshold 4380
//float4 Tweak_N1 4384
//float3x3 Tweak_N0Transform 4448
//float4 Tweak_N0UvMinMax 4496
//float4 Tweak_N0BorderColor 4512
//float2 Tweak_N73 4528
//float2 Tweak_N72 4536
//float Tweak_N74 4544
//float Tweak_N16 4548
//float4 Tweak_N68 4560
//float3x3 Tweak_N18Transform 4624
//float4 Tweak_N18UvMinMax 4672
//float4 Tweak_N18BorderColor 4688
//float3x3 Tweak_N12Transform 4752
//float4 Tweak_N12UvMinMax 4800
//float4 Tweak_N12BorderColor 4816
//float3x3 Tweak_N58Transform 4880
//float4 Tweak_N58UvMinMax 4928
//float4 Tweak_N58BorderColor 4944
//float Tweak_N17 4960
//float3x3 Tweak_N15Transform 5024
//float4 Tweak_N15UvMinMax 5072
//float4 Tweak_N15BorderColor 5088
//float3x3 Tweak_N82Transform 5152
//float4 Tweak_N82UvMinMax 5200
//float4 Tweak_N82BorderColor 5216
//float Tweak_N24 5232
//float3x3 Tweak_N47Transform 5296
//float4 Tweak_N47UvMinMax 5344
//float4 Tweak_N47BorderColor 5360
//float4 Tweak_N93 5376
//float Tweak_N48 5392
//float3x3 Tweak_N8Transform 5456
//float4 Tweak_N8UvMinMax 5504
//float4 Tweak_N8BorderColor 5520
//float2 Port_Center_N070 5560
//float2 Port_Center_N071 5584
//float3 Port_Default_N052 5600
//float4 Port_Value0_N067 5616
//float4 Port_Default_N067 5632
//float3 Port_Default_N065 5648
//float Port_Strength1_N057 5664
//float Port_Strength2_N057 5668
//float4 Port_Default_N023 5680
//float3 Port_Input1_N042 5696
//float Port_Input1_N264 5728
//float Port_Input1_N268 5732
//float Port_Input1_N270 5736
//float4 Port_Default_N083 5744
//float3 Port_Default_N062 5760
//float3 Port_Default_N059 5776
//float depthRef 5792
//}
//ssbo int sc_RayTracingCasterIndexBuffer 0:0:4 {
//uint sc_RayTracingCasterTriangles 0:[1]:4
//}
//ssbo float sc_RayTracingCasterNonAnimatedVertexBuffer 0:2:4 {
//float sc_RayTracingCasterNonAnimatedVertices 0:[1]:4
//}
//ssbo float sc_RayTracingCasterVertexBuffer 0:1:4 {
//float sc_RayTracingCasterVertices 0:[1]:4
//}
//spec_const bool BLEND_MODE_AVERAGE 0 0
//spec_const bool BLEND_MODE_BRIGHT 1 0
//spec_const bool BLEND_MODE_COLOR_BURN 2 0
//spec_const bool BLEND_MODE_COLOR_DODGE 3 0
//spec_const bool BLEND_MODE_COLOR 4 0
//spec_const bool BLEND_MODE_DARKEN 5 0
//spec_const bool BLEND_MODE_DIFFERENCE 6 0
//spec_const bool BLEND_MODE_DIVIDE 7 0
//spec_const bool BLEND_MODE_DIVISION 8 0
//spec_const bool BLEND_MODE_EXCLUSION 9 0
//spec_const bool BLEND_MODE_FORGRAY 10 0
//spec_const bool BLEND_MODE_HARD_GLOW 11 0
//spec_const bool BLEND_MODE_HARD_LIGHT 12 0
//spec_const bool BLEND_MODE_HARD_MIX 13 0
//spec_const bool BLEND_MODE_HARD_PHOENIX 14 0
//spec_const bool BLEND_MODE_HARD_REFLECT 15 0
//spec_const bool BLEND_MODE_HUE 16 0
//spec_const bool BLEND_MODE_INTENSE 17 0
//spec_const bool BLEND_MODE_LIGHTEN 18 0
//spec_const bool BLEND_MODE_LINEAR_LIGHT 19 0
//spec_const bool BLEND_MODE_LUMINOSITY 20 0
//spec_const bool BLEND_MODE_NEGATION 21 0
//spec_const bool BLEND_MODE_NOTBRIGHT 22 0
//spec_const bool BLEND_MODE_OVERLAY 23 0
//spec_const bool BLEND_MODE_PIN_LIGHT 24 0
//spec_const bool BLEND_MODE_REALISTIC 25 0
//spec_const bool BLEND_MODE_SATURATION 26 0
//spec_const bool BLEND_MODE_SOFT_LIGHT 27 0
//spec_const bool BLEND_MODE_SUBTRACT 28 0
//spec_const bool BLEND_MODE_VIVID_LIGHT 29 0
//spec_const bool ENABLE_STIPPLE_PATTERN_TEST 30 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_Tweak_N0 31 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_Tweak_N12 32 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_Tweak_N15 33 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_Tweak_N18 34 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_Tweak_N47 35 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_Tweak_N58 36 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_Tweak_N82 37 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_Tweak_N8 38 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_intensityTexture 39 0
//spec_const bool SC_USE_UV_MIN_MAX_Tweak_N0 40 0
//spec_const bool SC_USE_UV_MIN_MAX_Tweak_N12 41 0
//spec_const bool SC_USE_UV_MIN_MAX_Tweak_N15 42 0
//spec_const bool SC_USE_UV_MIN_MAX_Tweak_N18 43 0
//spec_const bool SC_USE_UV_MIN_MAX_Tweak_N47 44 0
//spec_const bool SC_USE_UV_MIN_MAX_Tweak_N58 45 0
//spec_const bool SC_USE_UV_MIN_MAX_Tweak_N82 46 0
//spec_const bool SC_USE_UV_MIN_MAX_Tweak_N8 47 0
//spec_const bool SC_USE_UV_MIN_MAX_intensityTexture 48 0
//spec_const bool SC_USE_UV_TRANSFORM_Tweak_N0 49 0
//spec_const bool SC_USE_UV_TRANSFORM_Tweak_N12 50 0
//spec_const bool SC_USE_UV_TRANSFORM_Tweak_N15 51 0
//spec_const bool SC_USE_UV_TRANSFORM_Tweak_N18 52 0
//spec_const bool SC_USE_UV_TRANSFORM_Tweak_N47 53 0
//spec_const bool SC_USE_UV_TRANSFORM_Tweak_N58 54 0
//spec_const bool SC_USE_UV_TRANSFORM_Tweak_N82 55 0
//spec_const bool SC_USE_UV_TRANSFORM_Tweak_N8 56 0
//spec_const bool SC_USE_UV_TRANSFORM_intensityTexture 57 0
//spec_const bool Tweak_N0HasSwappedViews 58 0
//spec_const bool Tweak_N104 59 0
//spec_const bool Tweak_N10 60 0
//spec_const bool Tweak_N12HasSwappedViews 61 0
//spec_const bool Tweak_N15HasSwappedViews 62 0
//spec_const bool Tweak_N18HasSwappedViews 63 0
//spec_const bool Tweak_N20 64 0
//spec_const bool Tweak_N22 65 0
//spec_const bool Tweak_N28 66 0
//spec_const bool Tweak_N34 67 0
//spec_const bool Tweak_N47HasSwappedViews 68 0
//spec_const bool Tweak_N51 69 0
//spec_const bool Tweak_N58HasSwappedViews 70 0
//spec_const bool Tweak_N63 71 0
//spec_const bool Tweak_N64 72 0
//spec_const bool Tweak_N82HasSwappedViews 73 0
//spec_const bool Tweak_N8HasSwappedViews 74 0
//spec_const bool Tweak_N98 75 0
//spec_const bool Tweak_N9 76 0
//spec_const bool UseViewSpaceDepthVariant 77 1
//spec_const bool intensityTextureHasSwappedViews 78 0
//spec_const bool sc_BlendMode_AddWithAlphaFactor 79 0
//spec_const bool sc_BlendMode_Add 80 0
//spec_const bool sc_BlendMode_AlphaTest 81 0
//spec_const bool sc_BlendMode_AlphaToCoverage 82 0
//spec_const bool sc_BlendMode_ColoredGlass 83 0
//spec_const bool sc_BlendMode_Custom 84 0
//spec_const bool sc_BlendMode_Max 85 0
//spec_const bool sc_BlendMode_Min 86 0
//spec_const bool sc_BlendMode_MultiplyOriginal 87 0
//spec_const bool sc_BlendMode_Multiply 88 0
//spec_const bool sc_BlendMode_Normal 89 0
//spec_const bool sc_BlendMode_PremultipliedAlphaAuto 90 0
//spec_const bool sc_BlendMode_PremultipliedAlphaHardware 91 0
//spec_const bool sc_BlendMode_PremultipliedAlpha 92 0
//spec_const bool sc_BlendMode_Screen 93 0
//spec_const bool sc_DepthOnly 94 0
//spec_const bool sc_FramebufferFetch 95 0
//spec_const bool sc_MotionVectorsPass 96 0
//spec_const bool sc_OITCompositingPass 97 0
//spec_const bool sc_OITDepthBoundsPass 98 0
//spec_const bool sc_OITDepthGatherPass 99 0
//spec_const bool sc_OutputBounds 100 0
//spec_const bool sc_ProjectiveShadowsCaster 101 0
//spec_const bool sc_ProjectiveShadowsReceiver 102 0
//spec_const bool sc_RayTracingCasterForceOpaque 103 0
//spec_const bool sc_RenderAlphaToColor 104 0
//spec_const bool sc_ScreenTextureHasSwappedViews 105 0
//spec_const bool sc_TAAEnabled 106 0
//spec_const bool sc_VertexBlendingUseNormals 107 0
//spec_const bool sc_VertexBlending 108 0
//spec_const bool sc_Voxelization 109 0
//spec_const int NODE_33_DROPLIST_ITEM 110 0
//spec_const int NODE_66_DROPLIST_ITEM 111 0
//spec_const int SC_DEVICE_CLASS 112 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_Tweak_N0 113 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_Tweak_N12 114 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_Tweak_N15 115 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_Tweak_N18 116 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_Tweak_N47 117 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_Tweak_N58 118 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_Tweak_N82 119 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_Tweak_N8 120 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_intensityTexture 121 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_Tweak_N0 122 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_Tweak_N12 123 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_Tweak_N15 124 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_Tweak_N18 125 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_Tweak_N47 126 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_Tweak_N58 127 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_Tweak_N82 128 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_Tweak_N8 129 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_intensityTexture 130 -1
//spec_const int Tweak_N0Layout 131 0
//spec_const int Tweak_N12Layout 132 0
//spec_const int Tweak_N15Layout 133 0
//spec_const int Tweak_N18Layout 134 0
//spec_const int Tweak_N43 135 0
//spec_const int Tweak_N45 136 0
//spec_const int Tweak_N47Layout 137 0
//spec_const int Tweak_N53 138 0
//spec_const int Tweak_N58Layout 139 0
//spec_const int Tweak_N76 140 0
//spec_const int Tweak_N82Layout 141 0
//spec_const int Tweak_N8Layout 142 0
//spec_const int Tweak_N90 143 0
//spec_const int Tweak_N94 144 0
//spec_const int Tweak_N96 145 0
//spec_const int intensityTextureLayout 146 0
//spec_const int sc_DepthBufferMode 147 0
//spec_const int sc_RenderingSpace 148 -1
//spec_const int sc_ScreenTextureLayout 149 0
//spec_const int sc_ShaderCacheConstant 150 0
//spec_const int sc_SkinBonesCount 151 0
//spec_const int sc_StereoRenderingMode 152 0
//spec_const int sc_StereoRendering_IsClipDistanceEnabled 153 0
//SG_REFLECTION_END
constant bool BLEND_MODE_AVERAGE [[function_constant(0)]];
constant bool BLEND_MODE_AVERAGE_tmp = is_function_constant_defined(BLEND_MODE_AVERAGE) ? BLEND_MODE_AVERAGE : false;
constant bool BLEND_MODE_BRIGHT [[function_constant(1)]];
constant bool BLEND_MODE_BRIGHT_tmp = is_function_constant_defined(BLEND_MODE_BRIGHT) ? BLEND_MODE_BRIGHT : false;
constant bool BLEND_MODE_COLOR_BURN [[function_constant(2)]];
constant bool BLEND_MODE_COLOR_BURN_tmp = is_function_constant_defined(BLEND_MODE_COLOR_BURN) ? BLEND_MODE_COLOR_BURN : false;
constant bool BLEND_MODE_COLOR_DODGE [[function_constant(3)]];
constant bool BLEND_MODE_COLOR_DODGE_tmp = is_function_constant_defined(BLEND_MODE_COLOR_DODGE) ? BLEND_MODE_COLOR_DODGE : false;
constant bool BLEND_MODE_COLOR [[function_constant(4)]];
constant bool BLEND_MODE_COLOR_tmp = is_function_constant_defined(BLEND_MODE_COLOR) ? BLEND_MODE_COLOR : false;
constant bool BLEND_MODE_DARKEN [[function_constant(5)]];
constant bool BLEND_MODE_DARKEN_tmp = is_function_constant_defined(BLEND_MODE_DARKEN) ? BLEND_MODE_DARKEN : false;
constant bool BLEND_MODE_DIFFERENCE [[function_constant(6)]];
constant bool BLEND_MODE_DIFFERENCE_tmp = is_function_constant_defined(BLEND_MODE_DIFFERENCE) ? BLEND_MODE_DIFFERENCE : false;
constant bool BLEND_MODE_DIVIDE [[function_constant(7)]];
constant bool BLEND_MODE_DIVIDE_tmp = is_function_constant_defined(BLEND_MODE_DIVIDE) ? BLEND_MODE_DIVIDE : false;
constant bool BLEND_MODE_DIVISION [[function_constant(8)]];
constant bool BLEND_MODE_DIVISION_tmp = is_function_constant_defined(BLEND_MODE_DIVISION) ? BLEND_MODE_DIVISION : false;
constant bool BLEND_MODE_EXCLUSION [[function_constant(9)]];
constant bool BLEND_MODE_EXCLUSION_tmp = is_function_constant_defined(BLEND_MODE_EXCLUSION) ? BLEND_MODE_EXCLUSION : false;
constant bool BLEND_MODE_FORGRAY [[function_constant(10)]];
constant bool BLEND_MODE_FORGRAY_tmp = is_function_constant_defined(BLEND_MODE_FORGRAY) ? BLEND_MODE_FORGRAY : false;
constant bool BLEND_MODE_HARD_GLOW [[function_constant(11)]];
constant bool BLEND_MODE_HARD_GLOW_tmp = is_function_constant_defined(BLEND_MODE_HARD_GLOW) ? BLEND_MODE_HARD_GLOW : false;
constant bool BLEND_MODE_HARD_LIGHT [[function_constant(12)]];
constant bool BLEND_MODE_HARD_LIGHT_tmp = is_function_constant_defined(BLEND_MODE_HARD_LIGHT) ? BLEND_MODE_HARD_LIGHT : false;
constant bool BLEND_MODE_HARD_MIX [[function_constant(13)]];
constant bool BLEND_MODE_HARD_MIX_tmp = is_function_constant_defined(BLEND_MODE_HARD_MIX) ? BLEND_MODE_HARD_MIX : false;
constant bool BLEND_MODE_HARD_PHOENIX [[function_constant(14)]];
constant bool BLEND_MODE_HARD_PHOENIX_tmp = is_function_constant_defined(BLEND_MODE_HARD_PHOENIX) ? BLEND_MODE_HARD_PHOENIX : false;
constant bool BLEND_MODE_HARD_REFLECT [[function_constant(15)]];
constant bool BLEND_MODE_HARD_REFLECT_tmp = is_function_constant_defined(BLEND_MODE_HARD_REFLECT) ? BLEND_MODE_HARD_REFLECT : false;
constant bool BLEND_MODE_HUE [[function_constant(16)]];
constant bool BLEND_MODE_HUE_tmp = is_function_constant_defined(BLEND_MODE_HUE) ? BLEND_MODE_HUE : false;
constant bool BLEND_MODE_INTENSE [[function_constant(17)]];
constant bool BLEND_MODE_INTENSE_tmp = is_function_constant_defined(BLEND_MODE_INTENSE) ? BLEND_MODE_INTENSE : false;
constant bool BLEND_MODE_LIGHTEN [[function_constant(18)]];
constant bool BLEND_MODE_LIGHTEN_tmp = is_function_constant_defined(BLEND_MODE_LIGHTEN) ? BLEND_MODE_LIGHTEN : false;
constant bool BLEND_MODE_LINEAR_LIGHT [[function_constant(19)]];
constant bool BLEND_MODE_LINEAR_LIGHT_tmp = is_function_constant_defined(BLEND_MODE_LINEAR_LIGHT) ? BLEND_MODE_LINEAR_LIGHT : false;
constant bool BLEND_MODE_LUMINOSITY [[function_constant(20)]];
constant bool BLEND_MODE_LUMINOSITY_tmp = is_function_constant_defined(BLEND_MODE_LUMINOSITY) ? BLEND_MODE_LUMINOSITY : false;
constant bool BLEND_MODE_NEGATION [[function_constant(21)]];
constant bool BLEND_MODE_NEGATION_tmp = is_function_constant_defined(BLEND_MODE_NEGATION) ? BLEND_MODE_NEGATION : false;
constant bool BLEND_MODE_NOTBRIGHT [[function_constant(22)]];
constant bool BLEND_MODE_NOTBRIGHT_tmp = is_function_constant_defined(BLEND_MODE_NOTBRIGHT) ? BLEND_MODE_NOTBRIGHT : false;
constant bool BLEND_MODE_OVERLAY [[function_constant(23)]];
constant bool BLEND_MODE_OVERLAY_tmp = is_function_constant_defined(BLEND_MODE_OVERLAY) ? BLEND_MODE_OVERLAY : false;
constant bool BLEND_MODE_PIN_LIGHT [[function_constant(24)]];
constant bool BLEND_MODE_PIN_LIGHT_tmp = is_function_constant_defined(BLEND_MODE_PIN_LIGHT) ? BLEND_MODE_PIN_LIGHT : false;
constant bool BLEND_MODE_REALISTIC [[function_constant(25)]];
constant bool BLEND_MODE_REALISTIC_tmp = is_function_constant_defined(BLEND_MODE_REALISTIC) ? BLEND_MODE_REALISTIC : false;
constant bool BLEND_MODE_SATURATION [[function_constant(26)]];
constant bool BLEND_MODE_SATURATION_tmp = is_function_constant_defined(BLEND_MODE_SATURATION) ? BLEND_MODE_SATURATION : false;
constant bool BLEND_MODE_SOFT_LIGHT [[function_constant(27)]];
constant bool BLEND_MODE_SOFT_LIGHT_tmp = is_function_constant_defined(BLEND_MODE_SOFT_LIGHT) ? BLEND_MODE_SOFT_LIGHT : false;
constant bool BLEND_MODE_SUBTRACT [[function_constant(28)]];
constant bool BLEND_MODE_SUBTRACT_tmp = is_function_constant_defined(BLEND_MODE_SUBTRACT) ? BLEND_MODE_SUBTRACT : false;
constant bool BLEND_MODE_VIVID_LIGHT [[function_constant(29)]];
constant bool BLEND_MODE_VIVID_LIGHT_tmp = is_function_constant_defined(BLEND_MODE_VIVID_LIGHT) ? BLEND_MODE_VIVID_LIGHT : false;
constant bool ENABLE_STIPPLE_PATTERN_TEST [[function_constant(30)]];
constant bool ENABLE_STIPPLE_PATTERN_TEST_tmp = is_function_constant_defined(ENABLE_STIPPLE_PATTERN_TEST) ? ENABLE_STIPPLE_PATTERN_TEST : false;
constant bool SC_USE_CLAMP_TO_BORDER_Tweak_N0 [[function_constant(31)]];
constant bool SC_USE_CLAMP_TO_BORDER_Tweak_N0_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_Tweak_N0) ? SC_USE_CLAMP_TO_BORDER_Tweak_N0 : false;
constant bool SC_USE_CLAMP_TO_BORDER_Tweak_N12 [[function_constant(32)]];
constant bool SC_USE_CLAMP_TO_BORDER_Tweak_N12_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_Tweak_N12) ? SC_USE_CLAMP_TO_BORDER_Tweak_N12 : false;
constant bool SC_USE_CLAMP_TO_BORDER_Tweak_N15 [[function_constant(33)]];
constant bool SC_USE_CLAMP_TO_BORDER_Tweak_N15_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_Tweak_N15) ? SC_USE_CLAMP_TO_BORDER_Tweak_N15 : false;
constant bool SC_USE_CLAMP_TO_BORDER_Tweak_N18 [[function_constant(34)]];
constant bool SC_USE_CLAMP_TO_BORDER_Tweak_N18_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_Tweak_N18) ? SC_USE_CLAMP_TO_BORDER_Tweak_N18 : false;
constant bool SC_USE_CLAMP_TO_BORDER_Tweak_N47 [[function_constant(35)]];
constant bool SC_USE_CLAMP_TO_BORDER_Tweak_N47_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_Tweak_N47) ? SC_USE_CLAMP_TO_BORDER_Tweak_N47 : false;
constant bool SC_USE_CLAMP_TO_BORDER_Tweak_N58 [[function_constant(36)]];
constant bool SC_USE_CLAMP_TO_BORDER_Tweak_N58_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_Tweak_N58) ? SC_USE_CLAMP_TO_BORDER_Tweak_N58 : false;
constant bool SC_USE_CLAMP_TO_BORDER_Tweak_N82 [[function_constant(37)]];
constant bool SC_USE_CLAMP_TO_BORDER_Tweak_N82_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_Tweak_N82) ? SC_USE_CLAMP_TO_BORDER_Tweak_N82 : false;
constant bool SC_USE_CLAMP_TO_BORDER_Tweak_N8 [[function_constant(38)]];
constant bool SC_USE_CLAMP_TO_BORDER_Tweak_N8_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_Tweak_N8) ? SC_USE_CLAMP_TO_BORDER_Tweak_N8 : false;
constant bool SC_USE_CLAMP_TO_BORDER_intensityTexture [[function_constant(39)]];
constant bool SC_USE_CLAMP_TO_BORDER_intensityTexture_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_intensityTexture) ? SC_USE_CLAMP_TO_BORDER_intensityTexture : false;
constant bool SC_USE_UV_MIN_MAX_Tweak_N0 [[function_constant(40)]];
constant bool SC_USE_UV_MIN_MAX_Tweak_N0_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_Tweak_N0) ? SC_USE_UV_MIN_MAX_Tweak_N0 : false;
constant bool SC_USE_UV_MIN_MAX_Tweak_N12 [[function_constant(41)]];
constant bool SC_USE_UV_MIN_MAX_Tweak_N12_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_Tweak_N12) ? SC_USE_UV_MIN_MAX_Tweak_N12 : false;
constant bool SC_USE_UV_MIN_MAX_Tweak_N15 [[function_constant(42)]];
constant bool SC_USE_UV_MIN_MAX_Tweak_N15_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_Tweak_N15) ? SC_USE_UV_MIN_MAX_Tweak_N15 : false;
constant bool SC_USE_UV_MIN_MAX_Tweak_N18 [[function_constant(43)]];
constant bool SC_USE_UV_MIN_MAX_Tweak_N18_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_Tweak_N18) ? SC_USE_UV_MIN_MAX_Tweak_N18 : false;
constant bool SC_USE_UV_MIN_MAX_Tweak_N47 [[function_constant(44)]];
constant bool SC_USE_UV_MIN_MAX_Tweak_N47_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_Tweak_N47) ? SC_USE_UV_MIN_MAX_Tweak_N47 : false;
constant bool SC_USE_UV_MIN_MAX_Tweak_N58 [[function_constant(45)]];
constant bool SC_USE_UV_MIN_MAX_Tweak_N58_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_Tweak_N58) ? SC_USE_UV_MIN_MAX_Tweak_N58 : false;
constant bool SC_USE_UV_MIN_MAX_Tweak_N82 [[function_constant(46)]];
constant bool SC_USE_UV_MIN_MAX_Tweak_N82_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_Tweak_N82) ? SC_USE_UV_MIN_MAX_Tweak_N82 : false;
constant bool SC_USE_UV_MIN_MAX_Tweak_N8 [[function_constant(47)]];
constant bool SC_USE_UV_MIN_MAX_Tweak_N8_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_Tweak_N8) ? SC_USE_UV_MIN_MAX_Tweak_N8 : false;
constant bool SC_USE_UV_MIN_MAX_intensityTexture [[function_constant(48)]];
constant bool SC_USE_UV_MIN_MAX_intensityTexture_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_intensityTexture) ? SC_USE_UV_MIN_MAX_intensityTexture : false;
constant bool SC_USE_UV_TRANSFORM_Tweak_N0 [[function_constant(49)]];
constant bool SC_USE_UV_TRANSFORM_Tweak_N0_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_Tweak_N0) ? SC_USE_UV_TRANSFORM_Tweak_N0 : false;
constant bool SC_USE_UV_TRANSFORM_Tweak_N12 [[function_constant(50)]];
constant bool SC_USE_UV_TRANSFORM_Tweak_N12_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_Tweak_N12) ? SC_USE_UV_TRANSFORM_Tweak_N12 : false;
constant bool SC_USE_UV_TRANSFORM_Tweak_N15 [[function_constant(51)]];
constant bool SC_USE_UV_TRANSFORM_Tweak_N15_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_Tweak_N15) ? SC_USE_UV_TRANSFORM_Tweak_N15 : false;
constant bool SC_USE_UV_TRANSFORM_Tweak_N18 [[function_constant(52)]];
constant bool SC_USE_UV_TRANSFORM_Tweak_N18_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_Tweak_N18) ? SC_USE_UV_TRANSFORM_Tweak_N18 : false;
constant bool SC_USE_UV_TRANSFORM_Tweak_N47 [[function_constant(53)]];
constant bool SC_USE_UV_TRANSFORM_Tweak_N47_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_Tweak_N47) ? SC_USE_UV_TRANSFORM_Tweak_N47 : false;
constant bool SC_USE_UV_TRANSFORM_Tweak_N58 [[function_constant(54)]];
constant bool SC_USE_UV_TRANSFORM_Tweak_N58_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_Tweak_N58) ? SC_USE_UV_TRANSFORM_Tweak_N58 : false;
constant bool SC_USE_UV_TRANSFORM_Tweak_N82 [[function_constant(55)]];
constant bool SC_USE_UV_TRANSFORM_Tweak_N82_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_Tweak_N82) ? SC_USE_UV_TRANSFORM_Tweak_N82 : false;
constant bool SC_USE_UV_TRANSFORM_Tweak_N8 [[function_constant(56)]];
constant bool SC_USE_UV_TRANSFORM_Tweak_N8_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_Tweak_N8) ? SC_USE_UV_TRANSFORM_Tweak_N8 : false;
constant bool SC_USE_UV_TRANSFORM_intensityTexture [[function_constant(57)]];
constant bool SC_USE_UV_TRANSFORM_intensityTexture_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_intensityTexture) ? SC_USE_UV_TRANSFORM_intensityTexture : false;
constant bool Tweak_N0HasSwappedViews [[function_constant(58)]];
constant bool Tweak_N0HasSwappedViews_tmp = is_function_constant_defined(Tweak_N0HasSwappedViews) ? Tweak_N0HasSwappedViews : false;
constant bool Tweak_N104 [[function_constant(59)]];
constant bool Tweak_N104_tmp = is_function_constant_defined(Tweak_N104) ? Tweak_N104 : false;
constant bool Tweak_N10 [[function_constant(60)]];
constant bool Tweak_N10_tmp = is_function_constant_defined(Tweak_N10) ? Tweak_N10 : false;
constant bool Tweak_N12HasSwappedViews [[function_constant(61)]];
constant bool Tweak_N12HasSwappedViews_tmp = is_function_constant_defined(Tweak_N12HasSwappedViews) ? Tweak_N12HasSwappedViews : false;
constant bool Tweak_N15HasSwappedViews [[function_constant(62)]];
constant bool Tweak_N15HasSwappedViews_tmp = is_function_constant_defined(Tweak_N15HasSwappedViews) ? Tweak_N15HasSwappedViews : false;
constant bool Tweak_N18HasSwappedViews [[function_constant(63)]];
constant bool Tweak_N18HasSwappedViews_tmp = is_function_constant_defined(Tweak_N18HasSwappedViews) ? Tweak_N18HasSwappedViews : false;
constant bool Tweak_N20 [[function_constant(64)]];
constant bool Tweak_N20_tmp = is_function_constant_defined(Tweak_N20) ? Tweak_N20 : false;
constant bool Tweak_N22 [[function_constant(65)]];
constant bool Tweak_N22_tmp = is_function_constant_defined(Tweak_N22) ? Tweak_N22 : false;
constant bool Tweak_N28 [[function_constant(66)]];
constant bool Tweak_N28_tmp = is_function_constant_defined(Tweak_N28) ? Tweak_N28 : false;
constant bool Tweak_N34 [[function_constant(67)]];
constant bool Tweak_N34_tmp = is_function_constant_defined(Tweak_N34) ? Tweak_N34 : false;
constant bool Tweak_N47HasSwappedViews [[function_constant(68)]];
constant bool Tweak_N47HasSwappedViews_tmp = is_function_constant_defined(Tweak_N47HasSwappedViews) ? Tweak_N47HasSwappedViews : false;
constant bool Tweak_N51 [[function_constant(69)]];
constant bool Tweak_N51_tmp = is_function_constant_defined(Tweak_N51) ? Tweak_N51 : false;
constant bool Tweak_N58HasSwappedViews [[function_constant(70)]];
constant bool Tweak_N58HasSwappedViews_tmp = is_function_constant_defined(Tweak_N58HasSwappedViews) ? Tweak_N58HasSwappedViews : false;
constant bool Tweak_N63 [[function_constant(71)]];
constant bool Tweak_N63_tmp = is_function_constant_defined(Tweak_N63) ? Tweak_N63 : false;
constant bool Tweak_N64 [[function_constant(72)]];
constant bool Tweak_N64_tmp = is_function_constant_defined(Tweak_N64) ? Tweak_N64 : false;
constant bool Tweak_N82HasSwappedViews [[function_constant(73)]];
constant bool Tweak_N82HasSwappedViews_tmp = is_function_constant_defined(Tweak_N82HasSwappedViews) ? Tweak_N82HasSwappedViews : false;
constant bool Tweak_N8HasSwappedViews [[function_constant(74)]];
constant bool Tweak_N8HasSwappedViews_tmp = is_function_constant_defined(Tweak_N8HasSwappedViews) ? Tweak_N8HasSwappedViews : false;
constant bool Tweak_N98 [[function_constant(75)]];
constant bool Tweak_N98_tmp = is_function_constant_defined(Tweak_N98) ? Tweak_N98 : false;
constant bool Tweak_N9 [[function_constant(76)]];
constant bool Tweak_N9_tmp = is_function_constant_defined(Tweak_N9) ? Tweak_N9 : false;
constant bool UseViewSpaceDepthVariant [[function_constant(77)]];
constant bool UseViewSpaceDepthVariant_tmp = is_function_constant_defined(UseViewSpaceDepthVariant) ? UseViewSpaceDepthVariant : true;
constant bool intensityTextureHasSwappedViews [[function_constant(78)]];
constant bool intensityTextureHasSwappedViews_tmp = is_function_constant_defined(intensityTextureHasSwappedViews) ? intensityTextureHasSwappedViews : false;
constant bool sc_BlendMode_AddWithAlphaFactor [[function_constant(79)]];
constant bool sc_BlendMode_AddWithAlphaFactor_tmp = is_function_constant_defined(sc_BlendMode_AddWithAlphaFactor) ? sc_BlendMode_AddWithAlphaFactor : false;
constant bool sc_BlendMode_Add [[function_constant(80)]];
constant bool sc_BlendMode_Add_tmp = is_function_constant_defined(sc_BlendMode_Add) ? sc_BlendMode_Add : false;
constant bool sc_BlendMode_AlphaTest [[function_constant(81)]];
constant bool sc_BlendMode_AlphaTest_tmp = is_function_constant_defined(sc_BlendMode_AlphaTest) ? sc_BlendMode_AlphaTest : false;
constant bool sc_BlendMode_AlphaToCoverage [[function_constant(82)]];
constant bool sc_BlendMode_AlphaToCoverage_tmp = is_function_constant_defined(sc_BlendMode_AlphaToCoverage) ? sc_BlendMode_AlphaToCoverage : false;
constant bool sc_BlendMode_ColoredGlass [[function_constant(83)]];
constant bool sc_BlendMode_ColoredGlass_tmp = is_function_constant_defined(sc_BlendMode_ColoredGlass) ? sc_BlendMode_ColoredGlass : false;
constant bool sc_BlendMode_Custom [[function_constant(84)]];
constant bool sc_BlendMode_Custom_tmp = is_function_constant_defined(sc_BlendMode_Custom) ? sc_BlendMode_Custom : false;
constant bool sc_BlendMode_Max [[function_constant(85)]];
constant bool sc_BlendMode_Max_tmp = is_function_constant_defined(sc_BlendMode_Max) ? sc_BlendMode_Max : false;
constant bool sc_BlendMode_Min [[function_constant(86)]];
constant bool sc_BlendMode_Min_tmp = is_function_constant_defined(sc_BlendMode_Min) ? sc_BlendMode_Min : false;
constant bool sc_BlendMode_MultiplyOriginal [[function_constant(87)]];
constant bool sc_BlendMode_MultiplyOriginal_tmp = is_function_constant_defined(sc_BlendMode_MultiplyOriginal) ? sc_BlendMode_MultiplyOriginal : false;
constant bool sc_BlendMode_Multiply [[function_constant(88)]];
constant bool sc_BlendMode_Multiply_tmp = is_function_constant_defined(sc_BlendMode_Multiply) ? sc_BlendMode_Multiply : false;
constant bool sc_BlendMode_Normal [[function_constant(89)]];
constant bool sc_BlendMode_Normal_tmp = is_function_constant_defined(sc_BlendMode_Normal) ? sc_BlendMode_Normal : false;
constant bool sc_BlendMode_PremultipliedAlphaAuto [[function_constant(90)]];
constant bool sc_BlendMode_PremultipliedAlphaAuto_tmp = is_function_constant_defined(sc_BlendMode_PremultipliedAlphaAuto) ? sc_BlendMode_PremultipliedAlphaAuto : false;
constant bool sc_BlendMode_PremultipliedAlphaHardware [[function_constant(91)]];
constant bool sc_BlendMode_PremultipliedAlphaHardware_tmp = is_function_constant_defined(sc_BlendMode_PremultipliedAlphaHardware) ? sc_BlendMode_PremultipliedAlphaHardware : false;
constant bool sc_BlendMode_PremultipliedAlpha [[function_constant(92)]];
constant bool sc_BlendMode_PremultipliedAlpha_tmp = is_function_constant_defined(sc_BlendMode_PremultipliedAlpha) ? sc_BlendMode_PremultipliedAlpha : false;
constant bool sc_BlendMode_Screen [[function_constant(93)]];
constant bool sc_BlendMode_Screen_tmp = is_function_constant_defined(sc_BlendMode_Screen) ? sc_BlendMode_Screen : false;
constant bool sc_DepthOnly [[function_constant(94)]];
constant bool sc_DepthOnly_tmp = is_function_constant_defined(sc_DepthOnly) ? sc_DepthOnly : false;
constant bool sc_FramebufferFetch [[function_constant(95)]];
constant bool sc_FramebufferFetch_tmp = is_function_constant_defined(sc_FramebufferFetch) ? sc_FramebufferFetch : false;
constant bool sc_MotionVectorsPass [[function_constant(96)]];
constant bool sc_MotionVectorsPass_tmp = is_function_constant_defined(sc_MotionVectorsPass) ? sc_MotionVectorsPass : false;
constant bool sc_OITCompositingPass [[function_constant(97)]];
constant bool sc_OITCompositingPass_tmp = is_function_constant_defined(sc_OITCompositingPass) ? sc_OITCompositingPass : false;
constant bool sc_OITDepthBoundsPass [[function_constant(98)]];
constant bool sc_OITDepthBoundsPass_tmp = is_function_constant_defined(sc_OITDepthBoundsPass) ? sc_OITDepthBoundsPass : false;
constant bool sc_OITDepthGatherPass [[function_constant(99)]];
constant bool sc_OITDepthGatherPass_tmp = is_function_constant_defined(sc_OITDepthGatherPass) ? sc_OITDepthGatherPass : false;
constant bool sc_OutputBounds [[function_constant(100)]];
constant bool sc_OutputBounds_tmp = is_function_constant_defined(sc_OutputBounds) ? sc_OutputBounds : false;
constant bool sc_ProjectiveShadowsCaster [[function_constant(101)]];
constant bool sc_ProjectiveShadowsCaster_tmp = is_function_constant_defined(sc_ProjectiveShadowsCaster) ? sc_ProjectiveShadowsCaster : false;
constant bool sc_ProjectiveShadowsReceiver [[function_constant(102)]];
constant bool sc_ProjectiveShadowsReceiver_tmp = is_function_constant_defined(sc_ProjectiveShadowsReceiver) ? sc_ProjectiveShadowsReceiver : false;
constant bool sc_RayTracingCasterForceOpaque [[function_constant(103)]];
constant bool sc_RayTracingCasterForceOpaque_tmp = is_function_constant_defined(sc_RayTracingCasterForceOpaque) ? sc_RayTracingCasterForceOpaque : false;
constant bool sc_RenderAlphaToColor [[function_constant(104)]];
constant bool sc_RenderAlphaToColor_tmp = is_function_constant_defined(sc_RenderAlphaToColor) ? sc_RenderAlphaToColor : false;
constant bool sc_ScreenTextureHasSwappedViews [[function_constant(105)]];
constant bool sc_ScreenTextureHasSwappedViews_tmp = is_function_constant_defined(sc_ScreenTextureHasSwappedViews) ? sc_ScreenTextureHasSwappedViews : false;
constant bool sc_TAAEnabled [[function_constant(106)]];
constant bool sc_TAAEnabled_tmp = is_function_constant_defined(sc_TAAEnabled) ? sc_TAAEnabled : false;
constant bool sc_VertexBlendingUseNormals [[function_constant(107)]];
constant bool sc_VertexBlendingUseNormals_tmp = is_function_constant_defined(sc_VertexBlendingUseNormals) ? sc_VertexBlendingUseNormals : false;
constant bool sc_VertexBlending [[function_constant(108)]];
constant bool sc_VertexBlending_tmp = is_function_constant_defined(sc_VertexBlending) ? sc_VertexBlending : false;
constant bool sc_Voxelization [[function_constant(109)]];
constant bool sc_Voxelization_tmp = is_function_constant_defined(sc_Voxelization) ? sc_Voxelization : false;
constant int NODE_33_DROPLIST_ITEM [[function_constant(110)]];
constant int NODE_33_DROPLIST_ITEM_tmp = is_function_constant_defined(NODE_33_DROPLIST_ITEM) ? NODE_33_DROPLIST_ITEM : 0;
constant int NODE_66_DROPLIST_ITEM [[function_constant(111)]];
constant int NODE_66_DROPLIST_ITEM_tmp = is_function_constant_defined(NODE_66_DROPLIST_ITEM) ? NODE_66_DROPLIST_ITEM : 0;
constant int SC_DEVICE_CLASS [[function_constant(112)]];
constant int SC_DEVICE_CLASS_tmp = is_function_constant_defined(SC_DEVICE_CLASS) ? SC_DEVICE_CLASS : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_Tweak_N0 [[function_constant(113)]];
constant int SC_SOFTWARE_WRAP_MODE_U_Tweak_N0_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_Tweak_N0) ? SC_SOFTWARE_WRAP_MODE_U_Tweak_N0 : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_Tweak_N12 [[function_constant(114)]];
constant int SC_SOFTWARE_WRAP_MODE_U_Tweak_N12_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_Tweak_N12) ? SC_SOFTWARE_WRAP_MODE_U_Tweak_N12 : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_Tweak_N15 [[function_constant(115)]];
constant int SC_SOFTWARE_WRAP_MODE_U_Tweak_N15_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_Tweak_N15) ? SC_SOFTWARE_WRAP_MODE_U_Tweak_N15 : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_Tweak_N18 [[function_constant(116)]];
constant int SC_SOFTWARE_WRAP_MODE_U_Tweak_N18_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_Tweak_N18) ? SC_SOFTWARE_WRAP_MODE_U_Tweak_N18 : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_Tweak_N47 [[function_constant(117)]];
constant int SC_SOFTWARE_WRAP_MODE_U_Tweak_N47_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_Tweak_N47) ? SC_SOFTWARE_WRAP_MODE_U_Tweak_N47 : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_Tweak_N58 [[function_constant(118)]];
constant int SC_SOFTWARE_WRAP_MODE_U_Tweak_N58_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_Tweak_N58) ? SC_SOFTWARE_WRAP_MODE_U_Tweak_N58 : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_Tweak_N82 [[function_constant(119)]];
constant int SC_SOFTWARE_WRAP_MODE_U_Tweak_N82_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_Tweak_N82) ? SC_SOFTWARE_WRAP_MODE_U_Tweak_N82 : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_Tweak_N8 [[function_constant(120)]];
constant int SC_SOFTWARE_WRAP_MODE_U_Tweak_N8_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_Tweak_N8) ? SC_SOFTWARE_WRAP_MODE_U_Tweak_N8 : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_intensityTexture [[function_constant(121)]];
constant int SC_SOFTWARE_WRAP_MODE_U_intensityTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_intensityTexture) ? SC_SOFTWARE_WRAP_MODE_U_intensityTexture : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_Tweak_N0 [[function_constant(122)]];
constant int SC_SOFTWARE_WRAP_MODE_V_Tweak_N0_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_Tweak_N0) ? SC_SOFTWARE_WRAP_MODE_V_Tweak_N0 : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_Tweak_N12 [[function_constant(123)]];
constant int SC_SOFTWARE_WRAP_MODE_V_Tweak_N12_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_Tweak_N12) ? SC_SOFTWARE_WRAP_MODE_V_Tweak_N12 : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_Tweak_N15 [[function_constant(124)]];
constant int SC_SOFTWARE_WRAP_MODE_V_Tweak_N15_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_Tweak_N15) ? SC_SOFTWARE_WRAP_MODE_V_Tweak_N15 : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_Tweak_N18 [[function_constant(125)]];
constant int SC_SOFTWARE_WRAP_MODE_V_Tweak_N18_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_Tweak_N18) ? SC_SOFTWARE_WRAP_MODE_V_Tweak_N18 : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_Tweak_N47 [[function_constant(126)]];
constant int SC_SOFTWARE_WRAP_MODE_V_Tweak_N47_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_Tweak_N47) ? SC_SOFTWARE_WRAP_MODE_V_Tweak_N47 : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_Tweak_N58 [[function_constant(127)]];
constant int SC_SOFTWARE_WRAP_MODE_V_Tweak_N58_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_Tweak_N58) ? SC_SOFTWARE_WRAP_MODE_V_Tweak_N58 : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_Tweak_N82 [[function_constant(128)]];
constant int SC_SOFTWARE_WRAP_MODE_V_Tweak_N82_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_Tweak_N82) ? SC_SOFTWARE_WRAP_MODE_V_Tweak_N82 : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_Tweak_N8 [[function_constant(129)]];
constant int SC_SOFTWARE_WRAP_MODE_V_Tweak_N8_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_Tweak_N8) ? SC_SOFTWARE_WRAP_MODE_V_Tweak_N8 : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_intensityTexture [[function_constant(130)]];
constant int SC_SOFTWARE_WRAP_MODE_V_intensityTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_intensityTexture) ? SC_SOFTWARE_WRAP_MODE_V_intensityTexture : -1;
constant int Tweak_N0Layout [[function_constant(131)]];
constant int Tweak_N0Layout_tmp = is_function_constant_defined(Tweak_N0Layout) ? Tweak_N0Layout : 0;
constant int Tweak_N12Layout [[function_constant(132)]];
constant int Tweak_N12Layout_tmp = is_function_constant_defined(Tweak_N12Layout) ? Tweak_N12Layout : 0;
constant int Tweak_N15Layout [[function_constant(133)]];
constant int Tweak_N15Layout_tmp = is_function_constant_defined(Tweak_N15Layout) ? Tweak_N15Layout : 0;
constant int Tweak_N18Layout [[function_constant(134)]];
constant int Tweak_N18Layout_tmp = is_function_constant_defined(Tweak_N18Layout) ? Tweak_N18Layout : 0;
constant int Tweak_N43 [[function_constant(135)]];
constant int Tweak_N43_tmp = is_function_constant_defined(Tweak_N43) ? Tweak_N43 : 0;
constant int Tweak_N45 [[function_constant(136)]];
constant int Tweak_N45_tmp = is_function_constant_defined(Tweak_N45) ? Tweak_N45 : 0;
constant int Tweak_N47Layout [[function_constant(137)]];
constant int Tweak_N47Layout_tmp = is_function_constant_defined(Tweak_N47Layout) ? Tweak_N47Layout : 0;
constant int Tweak_N53 [[function_constant(138)]];
constant int Tweak_N53_tmp = is_function_constant_defined(Tweak_N53) ? Tweak_N53 : 0;
constant int Tweak_N58Layout [[function_constant(139)]];
constant int Tweak_N58Layout_tmp = is_function_constant_defined(Tweak_N58Layout) ? Tweak_N58Layout : 0;
constant int Tweak_N76 [[function_constant(140)]];
constant int Tweak_N76_tmp = is_function_constant_defined(Tweak_N76) ? Tweak_N76 : 0;
constant int Tweak_N82Layout [[function_constant(141)]];
constant int Tweak_N82Layout_tmp = is_function_constant_defined(Tweak_N82Layout) ? Tweak_N82Layout : 0;
constant int Tweak_N8Layout [[function_constant(142)]];
constant int Tweak_N8Layout_tmp = is_function_constant_defined(Tweak_N8Layout) ? Tweak_N8Layout : 0;
constant int Tweak_N90 [[function_constant(143)]];
constant int Tweak_N90_tmp = is_function_constant_defined(Tweak_N90) ? Tweak_N90 : 0;
constant int Tweak_N94 [[function_constant(144)]];
constant int Tweak_N94_tmp = is_function_constant_defined(Tweak_N94) ? Tweak_N94 : 0;
constant int Tweak_N96 [[function_constant(145)]];
constant int Tweak_N96_tmp = is_function_constant_defined(Tweak_N96) ? Tweak_N96 : 0;
constant int intensityTextureLayout [[function_constant(146)]];
constant int intensityTextureLayout_tmp = is_function_constant_defined(intensityTextureLayout) ? intensityTextureLayout : 0;
constant int sc_DepthBufferMode [[function_constant(147)]];
constant int sc_DepthBufferMode_tmp = is_function_constant_defined(sc_DepthBufferMode) ? sc_DepthBufferMode : 0;
constant int sc_RenderingSpace [[function_constant(148)]];
constant int sc_RenderingSpace_tmp = is_function_constant_defined(sc_RenderingSpace) ? sc_RenderingSpace : -1;
constant int sc_ScreenTextureLayout [[function_constant(149)]];
constant int sc_ScreenTextureLayout_tmp = is_function_constant_defined(sc_ScreenTextureLayout) ? sc_ScreenTextureLayout : 0;
constant int sc_ShaderCacheConstant [[function_constant(150)]];
constant int sc_ShaderCacheConstant_tmp = is_function_constant_defined(sc_ShaderCacheConstant) ? sc_ShaderCacheConstant : 0;
constant int sc_SkinBonesCount [[function_constant(151)]];
constant int sc_SkinBonesCount_tmp = is_function_constant_defined(sc_SkinBonesCount) ? sc_SkinBonesCount : 0;
constant int sc_StereoRenderingMode [[function_constant(152)]];
constant int sc_StereoRenderingMode_tmp = is_function_constant_defined(sc_StereoRenderingMode) ? sc_StereoRenderingMode : 0;
constant int sc_StereoRendering_IsClipDistanceEnabled [[function_constant(153)]];
constant int sc_StereoRendering_IsClipDistanceEnabled_tmp = is_function_constant_defined(sc_StereoRendering_IsClipDistanceEnabled) ? sc_StereoRendering_IsClipDistanceEnabled : 0;

namespace SNAP_VS {
struct sc_Vertex_t
{
float4 position;
float3 normal;
float3 tangent;
float2 texture0;
float2 texture1;
};
struct sc_PointLight_t
{
int falloffEnabled;
float falloffEndDistance;
float negRcpFalloffEndDistance4;
float angleScale;
float angleOffset;
float3 direction;
float3 position;
float4 color;
};
struct sc_DirectionalLight_t
{
float3 direction;
float4 color;
};
struct sc_AmbientLight_t
{
float3 color;
float intensity;
};
struct sc_SphericalGaussianLight_t
{
float3 color;
float sharpness;
float3 axis;
};
struct sc_LightEstimationData_t
{
sc_SphericalGaussianLight_t sg[12];
float3 ambientLight;
};
struct sc_Camera_t
{
float3 position;
float aspect;
float2 clipPlanes;
};
struct userUniformsObj
{
sc_PointLight_t sc_PointLights[3];
sc_DirectionalLight_t sc_DirectionalLights[5];
sc_AmbientLight_t sc_AmbientLights[3];
sc_LightEstimationData_t sc_LightEstimationData;
float4 sc_EnvmapDiffuseSize;
float4 sc_EnvmapDiffuseDims;
float4 sc_EnvmapDiffuseView;
float4 sc_EnvmapSpecularSize;
float4 sc_EnvmapSpecularDims;
float4 sc_EnvmapSpecularView;
float3 sc_EnvmapRotation;
float sc_EnvmapExposure;
float3 sc_Sh[9];
float sc_ShIntensity;
float4 sc_Time;
float4 sc_UniformConstants;
float4 sc_GeometryInfo;
float4x4 sc_ModelViewProjectionMatrixArray[2];
float4x4 sc_ModelViewProjectionMatrixInverseArray[2];
float4x4 sc_ViewProjectionMatrixArray[2];
float4x4 sc_ViewProjectionMatrixInverseArray[2];
float4x4 sc_ModelViewMatrixArray[2];
float4x4 sc_ModelViewMatrixInverseArray[2];
float3x3 sc_ViewNormalMatrixArray[2];
float3x3 sc_ViewNormalMatrixInverseArray[2];
float4x4 sc_ProjectionMatrixArray[2];
float4x4 sc_ProjectionMatrixInverseArray[2];
float4x4 sc_ViewMatrixArray[2];
float4x4 sc_ViewMatrixInverseArray[2];
float4x4 sc_PrevFrameViewProjectionMatrixArray[2];
float4x4 sc_ModelMatrix;
float4x4 sc_ModelMatrixInverse;
float3x3 sc_NormalMatrix;
float3x3 sc_NormalMatrixInverse;
float4x4 sc_PrevFrameModelMatrix;
float4x4 sc_PrevFrameModelMatrixInverse;
float3 sc_LocalAabbMin;
float3 sc_LocalAabbMax;
float3 sc_WorldAabbMin;
float3 sc_WorldAabbMax;
float4 sc_WindowToViewportTransform;
float4 sc_CurrentRenderTargetDims;
sc_Camera_t sc_Camera;
float sc_ShadowDensity;
float4 sc_ShadowColor;
float4x4 sc_ProjectorMatrix;
float shaderComplexityValue;
float4 weights0;
float4 weights1;
float4 weights2;
float4 sc_StereoClipPlanes[2];
int sc_FallbackInstanceID;
float2 sc_TAAJitterOffset;
float strandWidth;
float strandTaper;
float4 sc_StrandDataMapTextureSize;
float clumpInstanceCount;
float clumpRadius;
float clumpTipScale;
float hairstyleInstanceCount;
float hairstyleNoise;
float4 sc_ScreenTextureSize;
float4 sc_ScreenTextureDims;
float4 sc_ScreenTextureView;
uint4 sc_RayTracingCasterConfiguration;
uint4 sc_RayTracingCasterOffsetPNTC;
uint4 sc_RayTracingCasterOffsetTexture;
uint4 sc_RayTracingCasterFormatPNTC;
uint4 sc_RayTracingCasterFormatTexture;
float4 sc_RayTracingRayDirectionSize;
float4 sc_RayTracingRayDirectionDims;
float4 sc_RayTracingRayDirectionView;
float4 voxelization_params_0;
float4 voxelization_params_frustum_lrbt;
float4 voxelization_params_frustum_nf;
float3 voxelization_params_camera_pos;
float4x4 sc_ModelMatrixVoxelization;
float correctedIntensity;
float4 intensityTextureSize;
float4 intensityTextureDims;
float4 intensityTextureView;
float3x3 intensityTextureTransform;
float4 intensityTextureUvMinMax;
float4 intensityTextureBorderColor;
float reflBlurWidth;
float reflBlurMinRough;
float reflBlurMaxRough;
int overrideTimeEnabled;
float overrideTimeElapsed[32];
float overrideTimeDelta;
int PreviewEnabled;
int PreviewNodeID;
float alphaTestThreshold;
float4 Tweak_N1;
float4 Tweak_N0Size;
float4 Tweak_N0Dims;
float4 Tweak_N0View;
float3x3 Tweak_N0Transform;
float4 Tweak_N0UvMinMax;
float4 Tweak_N0BorderColor;
float2 Tweak_N73;
float2 Tweak_N72;
float Tweak_N74;
float Tweak_N16;
float4 Tweak_N68;
float4 Tweak_N18Size;
float4 Tweak_N18Dims;
float4 Tweak_N18View;
float3x3 Tweak_N18Transform;
float4 Tweak_N18UvMinMax;
float4 Tweak_N18BorderColor;
float4 Tweak_N12Size;
float4 Tweak_N12Dims;
float4 Tweak_N12View;
float3x3 Tweak_N12Transform;
float4 Tweak_N12UvMinMax;
float4 Tweak_N12BorderColor;
float4 Tweak_N58Size;
float4 Tweak_N58Dims;
float4 Tweak_N58View;
float3x3 Tweak_N58Transform;
float4 Tweak_N58UvMinMax;
float4 Tweak_N58BorderColor;
float Tweak_N17;
float4 Tweak_N15Size;
float4 Tweak_N15Dims;
float4 Tweak_N15View;
float3x3 Tweak_N15Transform;
float4 Tweak_N15UvMinMax;
float4 Tweak_N15BorderColor;
float4 Tweak_N82Size;
float4 Tweak_N82Dims;
float4 Tweak_N82View;
float3x3 Tweak_N82Transform;
float4 Tweak_N82UvMinMax;
float4 Tweak_N82BorderColor;
float Tweak_N24;
float4 Tweak_N47Size;
float4 Tweak_N47Dims;
float4 Tweak_N47View;
float3x3 Tweak_N47Transform;
float4 Tweak_N47UvMinMax;
float4 Tweak_N47BorderColor;
float4 Tweak_N93;
float Tweak_N48;
float4 Tweak_N8Size;
float4 Tweak_N8Dims;
float4 Tweak_N8View;
float3x3 Tweak_N8Transform;
float4 Tweak_N8UvMinMax;
float4 Tweak_N8BorderColor;
float4 Port_Import_N085;
float2 Port_Import_N088;
float2 Port_Center_N070;
float2 Port_Import_N089;
float Port_Import_N087;
float2 Port_Center_N071;
float3 Port_Default_N052;
float4 Port_Value0_N067;
float4 Port_Default_N067;
float3 Port_Default_N065;
float Port_Strength1_N057;
float Port_Strength2_N057;
float4 Port_Default_N023;
float3 Port_Input1_N042;
float3 Port_Import_N259;
float Port_Input1_N264;
float Port_Input1_N268;
float Port_Input1_N270;
float4 Port_Default_N083;
float3 Port_Default_N062;
float3 Port_Default_N059;
float depthRef;
};
struct sc_Bone_t
{
float4 boneMatrix[3];
float4 normalMatrix[3];
};
struct sc_Bones_obj
{
sc_Bone_t sc_Bones[1];
};
struct ssPreviewInfo
{
float4 Color;
bool Saved;
};
struct sc_RayTracingCasterIndexBuffer_obj
{
uint sc_RayTracingCasterTriangles[1];
};
struct sc_RayTracingCasterVertexBuffer_obj
{
float sc_RayTracingCasterVertices[1];
};
struct sc_RayTracingCasterNonAnimatedVertexBuffer_obj
{
float sc_RayTracingCasterNonAnimatedVertices[1];
};
struct sc_Set0
{
const device sc_RayTracingCasterIndexBuffer_obj* sc_RayTracingCasterIndexBuffer [[id(0)]];
const device sc_RayTracingCasterVertexBuffer_obj* sc_RayTracingCasterVertexBuffer [[id(1)]];
const device sc_RayTracingCasterNonAnimatedVertexBuffer_obj* sc_RayTracingCasterNonAnimatedVertexBuffer [[id(2)]];
constant sc_Bones_obj* sc_BonesUBO [[id(3)]];
texture2d<float> Tweak_N0 [[id(4)]];
texture2d<float> Tweak_N12 [[id(5)]];
texture2d<float> Tweak_N15 [[id(6)]];
texture2d<float> Tweak_N18 [[id(7)]];
texture2d<float> Tweak_N47 [[id(8)]];
texture2d<float> Tweak_N58 [[id(9)]];
texture2d<float> Tweak_N8 [[id(10)]];
texture2d<float> Tweak_N82 [[id(11)]];
texture2d<float> intensityTexture [[id(12)]];
texture2d<uint> sc_RayTracingHitCasterIdAndBarycentric [[id(23)]];
texture2d<float> sc_RayTracingRayDirection [[id(24)]];
texture2d<float> sc_ScreenTexture [[id(26)]];
sampler Tweak_N0SmpSC [[id(29)]];
sampler Tweak_N12SmpSC [[id(30)]];
sampler Tweak_N15SmpSC [[id(31)]];
sampler Tweak_N18SmpSC [[id(32)]];
sampler Tweak_N47SmpSC [[id(33)]];
sampler Tweak_N58SmpSC [[id(34)]];
sampler Tweak_N82SmpSC [[id(35)]];
sampler Tweak_N8SmpSC [[id(36)]];
sampler intensityTextureSmpSC [[id(37)]];
sampler sc_RayTracingHitCasterIdAndBarycentricSmpSC [[id(41)]];
sampler sc_RayTracingRayDirectionSmpSC [[id(42)]];
sampler sc_ScreenTextureSmpSC [[id(44)]];
constant userUniformsObj* UserUniforms [[id(47)]];
};
struct main_vert_out
{
float3 varPos [[user(locn0)]];
float3 varNormal [[user(locn1)]];
float4 varTangent [[user(locn2)]];
float4 varPackedTex [[user(locn3)]];
float4 varScreenPos [[user(locn4)]];
float2 varScreenTexturePos [[user(locn5)]];
float varViewSpaceDepth [[user(locn6)]];
float2 varShadowTex [[user(locn7)]];
int varStereoViewID [[user(locn8)]];
float varClipDistance [[user(locn9)]];
float4 varColor [[user(locn10)]];
float4 PreviewVertexColor [[user(locn11)]];
float PreviewVertexSaved [[user(locn12)]];
float4 gl_Position [[position]];
};
struct main_vert_in
{
float4 position [[attribute(0)]];
float3 normal [[attribute(1)]];
float4 tangent [[attribute(2)]];
float2 texture0 [[attribute(3)]];
float2 texture1 [[attribute(4)]];
float4 boneData [[attribute(5)]];
float3 blendShape0Pos [[attribute(6)]];
float3 blendShape1Pos [[attribute(7)]];
float3 blendShape2Pos [[attribute(8)]];
float3 blendShape3Pos [[attribute(9)]];
float3 blendShape4Pos [[attribute(10)]];
float3 blendShape5Pos [[attribute(11)]];
float3 blendShape0Normal [[attribute(12)]];
float3 blendShape1Normal [[attribute(13)]];
float3 blendShape2Normal [[attribute(14)]];
float3 positionNext [[attribute(15)]];
float3 positionPrevious [[attribute(16)]];
float4 strandProperties [[attribute(17)]];
float4 color [[attribute(18)]];
};
vertex main_vert_out main_vert(main_vert_in in [[stage_in]],constant sc_Set0& sc_set0 [[buffer(0)]],uint gl_InstanceIndex [[instance_id]])
{
main_vert_out out={};
if ((*sc_set0.UserUniforms).sc_RayTracingCasterConfiguration.x!=0u)
{
float4 param=float4(in.position.xy,(*sc_set0.UserUniforms).depthRef+(1e-10*in.position.z),1.0+(1e-10*in.position.w));
if (sc_ShaderCacheConstant_tmp!=0)
{
param.x+=((*sc_set0.UserUniforms).sc_UniformConstants.x*float(sc_ShaderCacheConstant_tmp));
}
if (sc_StereoRenderingMode_tmp>0)
{
out.varStereoViewID=gl_InstanceIndex%2;
}
float4 l9_0=param;
if (sc_StereoRenderingMode_tmp==1)
{
float l9_1=dot(l9_0,(*sc_set0.UserUniforms).sc_StereoClipPlanes[gl_InstanceIndex%2]);
float l9_2=l9_1;
if (sc_StereoRendering_IsClipDistanceEnabled_tmp==1)
{
}
else
{
out.varClipDistance=l9_2;
}
}
float4 l9_3=float4(param.x,-param.y,(param.z*0.5)+(param.w*0.5),param.w);
out.gl_Position=l9_3;
return out;
}
out.PreviewVertexColor=float4(0.5);
ssPreviewInfo PreviewInfo;
PreviewInfo.Color=float4(0.5);
PreviewInfo.Saved=false;
out.PreviewVertexSaved=0.0;
sc_Vertex_t l9_5;
l9_5.position=in.position;
l9_5.normal=in.normal;
l9_5.tangent=in.tangent.xyz;
l9_5.texture0=in.texture0;
l9_5.texture1=in.texture1;
sc_Vertex_t l9_6=l9_5;
sc_Vertex_t param_1=l9_6;
if ((int(sc_Voxelization_tmp)!=0))
{
sc_Vertex_t l9_7=param_1;
param_1=l9_7;
}
sc_Vertex_t l9_8=param_1;
if ((int(sc_VertexBlending_tmp)!=0))
{
if ((int(sc_VertexBlendingUseNormals_tmp)!=0))
{
sc_Vertex_t l9_9=l9_8;
float3 l9_10=in.blendShape0Pos;
float3 l9_11=in.blendShape0Normal;
float l9_12=(*sc_set0.UserUniforms).weights0.x;
sc_Vertex_t l9_13=l9_9;
float3 l9_14=l9_10;
float l9_15=l9_12;
float3 l9_16=l9_13.position.xyz+(l9_14*l9_15);
l9_13.position=float4(l9_16.x,l9_16.y,l9_16.z,l9_13.position.w);
l9_9=l9_13;
l9_9.normal+=(l9_11*l9_12);
l9_8=l9_9;
sc_Vertex_t l9_17=l9_8;
float3 l9_18=in.blendShape1Pos;
float3 l9_19=in.blendShape1Normal;
float l9_20=(*sc_set0.UserUniforms).weights0.y;
sc_Vertex_t l9_21=l9_17;
float3 l9_22=l9_18;
float l9_23=l9_20;
float3 l9_24=l9_21.position.xyz+(l9_22*l9_23);
l9_21.position=float4(l9_24.x,l9_24.y,l9_24.z,l9_21.position.w);
l9_17=l9_21;
l9_17.normal+=(l9_19*l9_20);
l9_8=l9_17;
sc_Vertex_t l9_25=l9_8;
float3 l9_26=in.blendShape2Pos;
float3 l9_27=in.blendShape2Normal;
float l9_28=(*sc_set0.UserUniforms).weights0.z;
sc_Vertex_t l9_29=l9_25;
float3 l9_30=l9_26;
float l9_31=l9_28;
float3 l9_32=l9_29.position.xyz+(l9_30*l9_31);
l9_29.position=float4(l9_32.x,l9_32.y,l9_32.z,l9_29.position.w);
l9_25=l9_29;
l9_25.normal+=(l9_27*l9_28);
l9_8=l9_25;
}
else
{
sc_Vertex_t l9_33=l9_8;
float3 l9_34=in.blendShape0Pos;
float l9_35=(*sc_set0.UserUniforms).weights0.x;
float3 l9_36=l9_33.position.xyz+(l9_34*l9_35);
l9_33.position=float4(l9_36.x,l9_36.y,l9_36.z,l9_33.position.w);
l9_8=l9_33;
sc_Vertex_t l9_37=l9_8;
float3 l9_38=in.blendShape1Pos;
float l9_39=(*sc_set0.UserUniforms).weights0.y;
float3 l9_40=l9_37.position.xyz+(l9_38*l9_39);
l9_37.position=float4(l9_40.x,l9_40.y,l9_40.z,l9_37.position.w);
l9_8=l9_37;
sc_Vertex_t l9_41=l9_8;
float3 l9_42=in.blendShape2Pos;
float l9_43=(*sc_set0.UserUniforms).weights0.z;
float3 l9_44=l9_41.position.xyz+(l9_42*l9_43);
l9_41.position=float4(l9_44.x,l9_44.y,l9_44.z,l9_41.position.w);
l9_8=l9_41;
sc_Vertex_t l9_45=l9_8;
float3 l9_46=in.blendShape3Pos;
float l9_47=(*sc_set0.UserUniforms).weights0.w;
float3 l9_48=l9_45.position.xyz+(l9_46*l9_47);
l9_45.position=float4(l9_48.x,l9_48.y,l9_48.z,l9_45.position.w);
l9_8=l9_45;
sc_Vertex_t l9_49=l9_8;
float3 l9_50=in.blendShape4Pos;
float l9_51=(*sc_set0.UserUniforms).weights1.x;
float3 l9_52=l9_49.position.xyz+(l9_50*l9_51);
l9_49.position=float4(l9_52.x,l9_52.y,l9_52.z,l9_49.position.w);
l9_8=l9_49;
sc_Vertex_t l9_53=l9_8;
float3 l9_54=in.blendShape5Pos;
float l9_55=(*sc_set0.UserUniforms).weights1.y;
float3 l9_56=l9_53.position.xyz+(l9_54*l9_55);
l9_53.position=float4(l9_56.x,l9_56.y,l9_56.z,l9_53.position.w);
l9_8=l9_53;
}
}
param_1=l9_8;
sc_Vertex_t l9_57=param_1;
if (sc_SkinBonesCount_tmp>0)
{
float4 l9_58=float4(0.0);
if (sc_SkinBonesCount_tmp>0)
{
l9_58=float4(1.0,fract(in.boneData.yzw));
l9_58.x-=dot(l9_58.yzw,float3(1.0));
}
float4 l9_59=l9_58;
float4 l9_60=l9_59;
int l9_61=int(in.boneData.x);
int l9_62=int(in.boneData.y);
int l9_63=int(in.boneData.z);
int l9_64=int(in.boneData.w);
int l9_65=l9_61;
float4 l9_66=l9_57.position;
float3 l9_67=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_68=l9_65;
float4 l9_69=(*sc_set0.sc_BonesUBO).sc_Bones[l9_68].boneMatrix[0];
float4 l9_70=(*sc_set0.sc_BonesUBO).sc_Bones[l9_68].boneMatrix[1];
float4 l9_71=(*sc_set0.sc_BonesUBO).sc_Bones[l9_68].boneMatrix[2];
float4 l9_72[3];
l9_72[0]=l9_69;
l9_72[1]=l9_70;
l9_72[2]=l9_71;
l9_67=float3(dot(l9_66,l9_72[0]),dot(l9_66,l9_72[1]),dot(l9_66,l9_72[2]));
}
else
{
l9_67=l9_66.xyz;
}
float3 l9_73=l9_67;
float3 l9_74=l9_73;
float l9_75=l9_60.x;
int l9_76=l9_62;
float4 l9_77=l9_57.position;
float3 l9_78=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_79=l9_76;
float4 l9_80=(*sc_set0.sc_BonesUBO).sc_Bones[l9_79].boneMatrix[0];
float4 l9_81=(*sc_set0.sc_BonesUBO).sc_Bones[l9_79].boneMatrix[1];
float4 l9_82=(*sc_set0.sc_BonesUBO).sc_Bones[l9_79].boneMatrix[2];
float4 l9_83[3];
l9_83[0]=l9_80;
l9_83[1]=l9_81;
l9_83[2]=l9_82;
l9_78=float3(dot(l9_77,l9_83[0]),dot(l9_77,l9_83[1]),dot(l9_77,l9_83[2]));
}
else
{
l9_78=l9_77.xyz;
}
float3 l9_84=l9_78;
float3 l9_85=l9_84;
float l9_86=l9_60.y;
int l9_87=l9_63;
float4 l9_88=l9_57.position;
float3 l9_89=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_90=l9_87;
float4 l9_91=(*sc_set0.sc_BonesUBO).sc_Bones[l9_90].boneMatrix[0];
float4 l9_92=(*sc_set0.sc_BonesUBO).sc_Bones[l9_90].boneMatrix[1];
float4 l9_93=(*sc_set0.sc_BonesUBO).sc_Bones[l9_90].boneMatrix[2];
float4 l9_94[3];
l9_94[0]=l9_91;
l9_94[1]=l9_92;
l9_94[2]=l9_93;
l9_89=float3(dot(l9_88,l9_94[0]),dot(l9_88,l9_94[1]),dot(l9_88,l9_94[2]));
}
else
{
l9_89=l9_88.xyz;
}
float3 l9_95=l9_89;
float3 l9_96=l9_95;
float l9_97=l9_60.z;
int l9_98=l9_64;
float4 l9_99=l9_57.position;
float3 l9_100=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_101=l9_98;
float4 l9_102=(*sc_set0.sc_BonesUBO).sc_Bones[l9_101].boneMatrix[0];
float4 l9_103=(*sc_set0.sc_BonesUBO).sc_Bones[l9_101].boneMatrix[1];
float4 l9_104=(*sc_set0.sc_BonesUBO).sc_Bones[l9_101].boneMatrix[2];
float4 l9_105[3];
l9_105[0]=l9_102;
l9_105[1]=l9_103;
l9_105[2]=l9_104;
l9_100=float3(dot(l9_99,l9_105[0]),dot(l9_99,l9_105[1]),dot(l9_99,l9_105[2]));
}
else
{
l9_100=l9_99.xyz;
}
float3 l9_106=l9_100;
float3 l9_107=(((l9_74*l9_75)+(l9_85*l9_86))+(l9_96*l9_97))+(l9_106*l9_60.w);
l9_57.position=float4(l9_107.x,l9_107.y,l9_107.z,l9_57.position.w);
int l9_108=l9_61;
float3x3 l9_109=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_108].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_108].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_108].normalMatrix[2].xyz));
float3x3 l9_110=l9_109;
float3x3 l9_111=l9_110;
int l9_112=l9_62;
float3x3 l9_113=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_112].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_112].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_112].normalMatrix[2].xyz));
float3x3 l9_114=l9_113;
float3x3 l9_115=l9_114;
int l9_116=l9_63;
float3x3 l9_117=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_116].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_116].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_116].normalMatrix[2].xyz));
float3x3 l9_118=l9_117;
float3x3 l9_119=l9_118;
int l9_120=l9_64;
float3x3 l9_121=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_120].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_120].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_120].normalMatrix[2].xyz));
float3x3 l9_122=l9_121;
float3x3 l9_123=l9_122;
l9_57.normal=((((l9_111*l9_57.normal)*l9_60.x)+((l9_115*l9_57.normal)*l9_60.y))+((l9_119*l9_57.normal)*l9_60.z))+((l9_123*l9_57.normal)*l9_60.w);
l9_57.tangent=((((l9_111*l9_57.tangent)*l9_60.x)+((l9_115*l9_57.tangent)*l9_60.y))+((l9_119*l9_57.tangent)*l9_60.z))+((l9_123*l9_57.tangent)*l9_60.w);
}
param_1=l9_57;
if (sc_RenderingSpace_tmp==3)
{
out.varPos=float3(0.0);
out.varNormal=param_1.normal;
out.varTangent=float4(param_1.tangent.x,param_1.tangent.y,param_1.tangent.z,out.varTangent.w);
}
else
{
if (sc_RenderingSpace_tmp==4)
{
out.varPos=float3(0.0);
out.varNormal=param_1.normal;
out.varTangent=float4(param_1.tangent.x,param_1.tangent.y,param_1.tangent.z,out.varTangent.w);
}
else
{
if (sc_RenderingSpace_tmp==2)
{
out.varPos=param_1.position.xyz;
out.varNormal=param_1.normal;
out.varTangent=float4(param_1.tangent.x,param_1.tangent.y,param_1.tangent.z,out.varTangent.w);
}
else
{
if (sc_RenderingSpace_tmp==1)
{
out.varPos=((*sc_set0.UserUniforms).sc_ModelMatrix*param_1.position).xyz;
out.varNormal=(*sc_set0.UserUniforms).sc_NormalMatrix*param_1.normal;
float3 l9_124=(*sc_set0.UserUniforms).sc_NormalMatrix*param_1.tangent;
out.varTangent=float4(l9_124.x,l9_124.y,l9_124.z,out.varTangent.w);
}
}
}
}
if ((*sc_set0.UserUniforms).PreviewEnabled==1)
{
param_1.texture0.x=1.0-param_1.texture0.x;
}
out.varColor=in.color;
sc_Vertex_t v=param_1;
float3 WorldPosition=out.varPos;
float3 WorldNormal=out.varNormal;
float3 WorldTangent=out.varTangent.xyz;
if ((*sc_set0.UserUniforms).PreviewEnabled==1)
{
WorldPosition=out.varPos;
WorldNormal=out.varNormal;
WorldTangent=out.varTangent.xyz;
}
sc_Vertex_t param_2=v;
float3 param_3=WorldPosition;
float3 param_4=WorldNormal;
float3 param_5=WorldTangent;
float4 param_6=v.position;
out.varPos=param_3;
out.varNormal=normalize(param_4);
float3 l9_125=normalize(param_5);
out.varTangent=float4(l9_125.x,l9_125.y,l9_125.z,out.varTangent.w);
out.varTangent.w=in.tangent.w;
if ((int(UseViewSpaceDepthVariant_tmp)!=0)&&(((int(sc_OITDepthGatherPass_tmp)!=0)||(int(sc_OITCompositingPass_tmp)!=0))||(int(sc_OITDepthBoundsPass_tmp)!=0)))
{
float4 l9_126=param_2.position;
float4 l9_127=float4(0.0);
if (sc_RenderingSpace_tmp==3)
{
int l9_128=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_128=0;
}
else
{
l9_128=gl_InstanceIndex%2;
}
int l9_129=l9_128;
l9_127=(*sc_set0.UserUniforms).sc_ProjectionMatrixInverseArray[l9_129]*l9_126;
}
else
{
if (sc_RenderingSpace_tmp==2)
{
int l9_130=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_130=0;
}
else
{
l9_130=gl_InstanceIndex%2;
}
int l9_131=l9_130;
l9_127=(*sc_set0.UserUniforms).sc_ViewMatrixArray[l9_131]*l9_126;
}
else
{
if (sc_RenderingSpace_tmp==1)
{
int l9_132=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_132=0;
}
else
{
l9_132=gl_InstanceIndex%2;
}
int l9_133=l9_132;
l9_127=(*sc_set0.UserUniforms).sc_ModelViewMatrixArray[l9_133]*l9_126;
}
else
{
l9_127=l9_126;
}
}
}
float4 l9_134=l9_127;
out.varViewSpaceDepth=-l9_134.z;
}
float4 l9_135=float4(0.0);
if (sc_RenderingSpace_tmp==3)
{
l9_135=param_6;
}
else
{
if (sc_RenderingSpace_tmp==4)
{
int l9_136=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_136=0;
}
else
{
l9_136=gl_InstanceIndex%2;
}
int l9_137=l9_136;
l9_135=((*sc_set0.UserUniforms).sc_ModelViewMatrixArray[l9_137]*param_2.position)*float4(1.0/(*sc_set0.UserUniforms).sc_Camera.aspect,1.0,1.0,1.0);
}
else
{
if (sc_RenderingSpace_tmp==2)
{
int l9_138=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_138=0;
}
else
{
l9_138=gl_InstanceIndex%2;
}
int l9_139=l9_138;
l9_135=(*sc_set0.UserUniforms).sc_ViewProjectionMatrixArray[l9_139]*float4(out.varPos,1.0);
}
else
{
if (sc_RenderingSpace_tmp==1)
{
int l9_140=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_140=0;
}
else
{
l9_140=gl_InstanceIndex%2;
}
int l9_141=l9_140;
l9_135=(*sc_set0.UserUniforms).sc_ViewProjectionMatrixArray[l9_141]*float4(out.varPos,1.0);
}
}
}
}
out.varPackedTex=float4(param_2.texture0,param_2.texture1);
if ((int(sc_ProjectiveShadowsReceiver_tmp)!=0))
{
float4 l9_142=param_2.position;
float4 l9_143=l9_142;
if (sc_RenderingSpace_tmp==1)
{
l9_143=(*sc_set0.UserUniforms).sc_ModelMatrix*l9_142;
}
float4 l9_144=(*sc_set0.UserUniforms).sc_ProjectorMatrix*l9_143;
float2 l9_145=((l9_144.xy/float2(l9_144.w))*0.5)+float2(0.5);
out.varShadowTex=l9_145;
}
float4 l9_146=l9_135;
if (sc_DepthBufferMode_tmp==1)
{
int l9_147=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_147=0;
}
else
{
l9_147=gl_InstanceIndex%2;
}
int l9_148=l9_147;
if ((*sc_set0.UserUniforms).sc_ProjectionMatrixArray[l9_148][2].w!=0.0)
{
float l9_149=2.0/log2((*sc_set0.UserUniforms).sc_Camera.clipPlanes.y+1.0);
l9_146.z=((log2(fast::max((*sc_set0.UserUniforms).sc_Camera.clipPlanes.x,1.0+l9_146.w))*l9_149)-1.0)*l9_146.w;
}
}
float4 l9_150=l9_146;
l9_135=l9_150;
float4 l9_151=l9_135;
if ((int(sc_TAAEnabled_tmp)!=0))
{
float2 l9_152=l9_151.xy+((*sc_set0.UserUniforms).sc_TAAJitterOffset*l9_151.w);
l9_151=float4(l9_152.x,l9_152.y,l9_151.z,l9_151.w);
}
float4 l9_153=l9_151;
l9_135=l9_153;
float4 l9_154=l9_135;
if (sc_ShaderCacheConstant_tmp!=0)
{
l9_154.x+=((*sc_set0.UserUniforms).sc_UniformConstants.x*float(sc_ShaderCacheConstant_tmp));
}
if (sc_StereoRenderingMode_tmp>0)
{
out.varStereoViewID=gl_InstanceIndex%2;
}
float4 l9_155=l9_154;
if (sc_StereoRenderingMode_tmp==1)
{
float l9_156=dot(l9_155,(*sc_set0.UserUniforms).sc_StereoClipPlanes[gl_InstanceIndex%2]);
float l9_157=l9_156;
if (sc_StereoRendering_IsClipDistanceEnabled_tmp==1)
{
}
else
{
out.varClipDistance=l9_157;
}
}
float4 l9_158=float4(l9_154.x,-l9_154.y,(l9_154.z*0.5)+(l9_154.w*0.5),l9_154.w);
out.gl_Position=l9_158;
if ((int(sc_Voxelization_tmp)!=0))
{
sc_Vertex_t l9_159=param_2;
sc_Vertex_t l9_160=l9_159;
if ((int(sc_VertexBlending_tmp)!=0))
{
if ((int(sc_VertexBlendingUseNormals_tmp)!=0))
{
sc_Vertex_t l9_161=l9_160;
float3 l9_162=in.blendShape0Pos;
float3 l9_163=in.blendShape0Normal;
float l9_164=(*sc_set0.UserUniforms).weights0.x;
sc_Vertex_t l9_165=l9_161;
float3 l9_166=l9_162;
float l9_167=l9_164;
float3 l9_168=l9_165.position.xyz+(l9_166*l9_167);
l9_165.position=float4(l9_168.x,l9_168.y,l9_168.z,l9_165.position.w);
l9_161=l9_165;
l9_161.normal+=(l9_163*l9_164);
l9_160=l9_161;
sc_Vertex_t l9_169=l9_160;
float3 l9_170=in.blendShape1Pos;
float3 l9_171=in.blendShape1Normal;
float l9_172=(*sc_set0.UserUniforms).weights0.y;
sc_Vertex_t l9_173=l9_169;
float3 l9_174=l9_170;
float l9_175=l9_172;
float3 l9_176=l9_173.position.xyz+(l9_174*l9_175);
l9_173.position=float4(l9_176.x,l9_176.y,l9_176.z,l9_173.position.w);
l9_169=l9_173;
l9_169.normal+=(l9_171*l9_172);
l9_160=l9_169;
sc_Vertex_t l9_177=l9_160;
float3 l9_178=in.blendShape2Pos;
float3 l9_179=in.blendShape2Normal;
float l9_180=(*sc_set0.UserUniforms).weights0.z;
sc_Vertex_t l9_181=l9_177;
float3 l9_182=l9_178;
float l9_183=l9_180;
float3 l9_184=l9_181.position.xyz+(l9_182*l9_183);
l9_181.position=float4(l9_184.x,l9_184.y,l9_184.z,l9_181.position.w);
l9_177=l9_181;
l9_177.normal+=(l9_179*l9_180);
l9_160=l9_177;
}
else
{
sc_Vertex_t l9_185=l9_160;
float3 l9_186=in.blendShape0Pos;
float l9_187=(*sc_set0.UserUniforms).weights0.x;
float3 l9_188=l9_185.position.xyz+(l9_186*l9_187);
l9_185.position=float4(l9_188.x,l9_188.y,l9_188.z,l9_185.position.w);
l9_160=l9_185;
sc_Vertex_t l9_189=l9_160;
float3 l9_190=in.blendShape1Pos;
float l9_191=(*sc_set0.UserUniforms).weights0.y;
float3 l9_192=l9_189.position.xyz+(l9_190*l9_191);
l9_189.position=float4(l9_192.x,l9_192.y,l9_192.z,l9_189.position.w);
l9_160=l9_189;
sc_Vertex_t l9_193=l9_160;
float3 l9_194=in.blendShape2Pos;
float l9_195=(*sc_set0.UserUniforms).weights0.z;
float3 l9_196=l9_193.position.xyz+(l9_194*l9_195);
l9_193.position=float4(l9_196.x,l9_196.y,l9_196.z,l9_193.position.w);
l9_160=l9_193;
sc_Vertex_t l9_197=l9_160;
float3 l9_198=in.blendShape3Pos;
float l9_199=(*sc_set0.UserUniforms).weights0.w;
float3 l9_200=l9_197.position.xyz+(l9_198*l9_199);
l9_197.position=float4(l9_200.x,l9_200.y,l9_200.z,l9_197.position.w);
l9_160=l9_197;
sc_Vertex_t l9_201=l9_160;
float3 l9_202=in.blendShape4Pos;
float l9_203=(*sc_set0.UserUniforms).weights1.x;
float3 l9_204=l9_201.position.xyz+(l9_202*l9_203);
l9_201.position=float4(l9_204.x,l9_204.y,l9_204.z,l9_201.position.w);
l9_160=l9_201;
sc_Vertex_t l9_205=l9_160;
float3 l9_206=in.blendShape5Pos;
float l9_207=(*sc_set0.UserUniforms).weights1.y;
float3 l9_208=l9_205.position.xyz+(l9_206*l9_207);
l9_205.position=float4(l9_208.x,l9_208.y,l9_208.z,l9_205.position.w);
l9_160=l9_205;
}
}
l9_159=l9_160;
sc_Vertex_t l9_209=l9_159;
if (sc_SkinBonesCount_tmp>0)
{
float4 l9_210=float4(0.0);
if (sc_SkinBonesCount_tmp>0)
{
l9_210=float4(1.0,fract(in.boneData.yzw));
l9_210.x-=dot(l9_210.yzw,float3(1.0));
}
float4 l9_211=l9_210;
float4 l9_212=l9_211;
int l9_213=int(in.boneData.x);
int l9_214=int(in.boneData.y);
int l9_215=int(in.boneData.z);
int l9_216=int(in.boneData.w);
int l9_217=l9_213;
float4 l9_218=l9_209.position;
float3 l9_219=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_220=l9_217;
float4 l9_221=(*sc_set0.sc_BonesUBO).sc_Bones[l9_220].boneMatrix[0];
float4 l9_222=(*sc_set0.sc_BonesUBO).sc_Bones[l9_220].boneMatrix[1];
float4 l9_223=(*sc_set0.sc_BonesUBO).sc_Bones[l9_220].boneMatrix[2];
float4 l9_224[3];
l9_224[0]=l9_221;
l9_224[1]=l9_222;
l9_224[2]=l9_223;
l9_219=float3(dot(l9_218,l9_224[0]),dot(l9_218,l9_224[1]),dot(l9_218,l9_224[2]));
}
else
{
l9_219=l9_218.xyz;
}
float3 l9_225=l9_219;
float3 l9_226=l9_225;
float l9_227=l9_212.x;
int l9_228=l9_214;
float4 l9_229=l9_209.position;
float3 l9_230=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_231=l9_228;
float4 l9_232=(*sc_set0.sc_BonesUBO).sc_Bones[l9_231].boneMatrix[0];
float4 l9_233=(*sc_set0.sc_BonesUBO).sc_Bones[l9_231].boneMatrix[1];
float4 l9_234=(*sc_set0.sc_BonesUBO).sc_Bones[l9_231].boneMatrix[2];
float4 l9_235[3];
l9_235[0]=l9_232;
l9_235[1]=l9_233;
l9_235[2]=l9_234;
l9_230=float3(dot(l9_229,l9_235[0]),dot(l9_229,l9_235[1]),dot(l9_229,l9_235[2]));
}
else
{
l9_230=l9_229.xyz;
}
float3 l9_236=l9_230;
float3 l9_237=l9_236;
float l9_238=l9_212.y;
int l9_239=l9_215;
float4 l9_240=l9_209.position;
float3 l9_241=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_242=l9_239;
float4 l9_243=(*sc_set0.sc_BonesUBO).sc_Bones[l9_242].boneMatrix[0];
float4 l9_244=(*sc_set0.sc_BonesUBO).sc_Bones[l9_242].boneMatrix[1];
float4 l9_245=(*sc_set0.sc_BonesUBO).sc_Bones[l9_242].boneMatrix[2];
float4 l9_246[3];
l9_246[0]=l9_243;
l9_246[1]=l9_244;
l9_246[2]=l9_245;
l9_241=float3(dot(l9_240,l9_246[0]),dot(l9_240,l9_246[1]),dot(l9_240,l9_246[2]));
}
else
{
l9_241=l9_240.xyz;
}
float3 l9_247=l9_241;
float3 l9_248=l9_247;
float l9_249=l9_212.z;
int l9_250=l9_216;
float4 l9_251=l9_209.position;
float3 l9_252=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_253=l9_250;
float4 l9_254=(*sc_set0.sc_BonesUBO).sc_Bones[l9_253].boneMatrix[0];
float4 l9_255=(*sc_set0.sc_BonesUBO).sc_Bones[l9_253].boneMatrix[1];
float4 l9_256=(*sc_set0.sc_BonesUBO).sc_Bones[l9_253].boneMatrix[2];
float4 l9_257[3];
l9_257[0]=l9_254;
l9_257[1]=l9_255;
l9_257[2]=l9_256;
l9_252=float3(dot(l9_251,l9_257[0]),dot(l9_251,l9_257[1]),dot(l9_251,l9_257[2]));
}
else
{
l9_252=l9_251.xyz;
}
float3 l9_258=l9_252;
float3 l9_259=(((l9_226*l9_227)+(l9_237*l9_238))+(l9_248*l9_249))+(l9_258*l9_212.w);
l9_209.position=float4(l9_259.x,l9_259.y,l9_259.z,l9_209.position.w);
int l9_260=l9_213;
float3x3 l9_261=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_260].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_260].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_260].normalMatrix[2].xyz));
float3x3 l9_262=l9_261;
float3x3 l9_263=l9_262;
int l9_264=l9_214;
float3x3 l9_265=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_264].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_264].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_264].normalMatrix[2].xyz));
float3x3 l9_266=l9_265;
float3x3 l9_267=l9_266;
int l9_268=l9_215;
float3x3 l9_269=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_268].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_268].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_268].normalMatrix[2].xyz));
float3x3 l9_270=l9_269;
float3x3 l9_271=l9_270;
int l9_272=l9_216;
float3x3 l9_273=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_272].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_272].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_272].normalMatrix[2].xyz));
float3x3 l9_274=l9_273;
float3x3 l9_275=l9_274;
l9_209.normal=((((l9_263*l9_209.normal)*l9_212.x)+((l9_267*l9_209.normal)*l9_212.y))+((l9_271*l9_209.normal)*l9_212.z))+((l9_275*l9_209.normal)*l9_212.w);
l9_209.tangent=((((l9_263*l9_209.tangent)*l9_212.x)+((l9_267*l9_209.tangent)*l9_212.y))+((l9_271*l9_209.tangent)*l9_212.z))+((l9_275*l9_209.tangent)*l9_212.w);
}
l9_159=l9_209;
float l9_276=(*sc_set0.UserUniforms).voxelization_params_0.y;
float l9_277=(*sc_set0.UserUniforms).voxelization_params_0.z;
float l9_278=(*sc_set0.UserUniforms).voxelization_params_0.w;
float l9_279=(*sc_set0.UserUniforms).voxelization_params_frustum_lrbt.x;
float l9_280=(*sc_set0.UserUniforms).voxelization_params_frustum_lrbt.y;
float l9_281=(*sc_set0.UserUniforms).voxelization_params_frustum_lrbt.z;
float l9_282=(*sc_set0.UserUniforms).voxelization_params_frustum_lrbt.w;
float l9_283=(*sc_set0.UserUniforms).voxelization_params_frustum_nf.x;
float l9_284=(*sc_set0.UserUniforms).voxelization_params_frustum_nf.y;
float3 l9_285=(*sc_set0.UserUniforms).voxelization_params_camera_pos;
float l9_286=l9_276/l9_277;
int l9_287=gl_InstanceIndex;
int l9_288=l9_287;
l9_159.position=(*sc_set0.UserUniforms).sc_ModelMatrixVoxelization*l9_159.position;
float3 l9_289=l9_159.position.xyz;
float3 l9_290=float3(float(l9_288%int(l9_278))*l9_276,float(l9_288/int(l9_278))*l9_276,(float(l9_288)*l9_286)+l9_283);
float3 l9_291=l9_289+l9_290;
float4 l9_292=float4(l9_291-l9_285,1.0);
float l9_293=l9_279;
float l9_294=l9_280;
float l9_295=l9_281;
float l9_296=l9_282;
float l9_297=l9_283;
float l9_298=l9_284;
float4x4 l9_299=float4x4(float4(2.0/(l9_294-l9_293),0.0,0.0,(-(l9_294+l9_293))/(l9_294-l9_293)),float4(0.0,2.0/(l9_296-l9_295),0.0,(-(l9_296+l9_295))/(l9_296-l9_295)),float4(0.0,0.0,(-2.0)/(l9_298-l9_297),(-(l9_298+l9_297))/(l9_298-l9_297)),float4(0.0,0.0,0.0,1.0));
float4x4 l9_300=l9_299;
float4 l9_301=l9_300*l9_292;
l9_301.w=1.0;
out.varScreenPos=l9_301;
float4 l9_302=l9_301*1.0;
if (sc_ShaderCacheConstant_tmp!=0)
{
l9_302.x+=((*sc_set0.UserUniforms).sc_UniformConstants.x*float(sc_ShaderCacheConstant_tmp));
}
if (sc_StereoRenderingMode_tmp>0)
{
out.varStereoViewID=gl_InstanceIndex%2;
}
float4 l9_303=l9_302;
if (sc_StereoRenderingMode_tmp==1)
{
float l9_304=dot(l9_303,(*sc_set0.UserUniforms).sc_StereoClipPlanes[gl_InstanceIndex%2]);
float l9_305=l9_304;
if (sc_StereoRendering_IsClipDistanceEnabled_tmp==1)
{
}
else
{
out.varClipDistance=l9_305;
}
}
float4 l9_306=float4(l9_302.x,-l9_302.y,(l9_302.z*0.5)+(l9_302.w*0.5),l9_302.w);
out.gl_Position=l9_306;
param_2=l9_159;
}
else
{
if ((int(sc_OutputBounds_tmp)!=0))
{
sc_Vertex_t l9_307=param_2;
sc_Vertex_t l9_308=l9_307;
if ((int(sc_VertexBlending_tmp)!=0))
{
if ((int(sc_VertexBlendingUseNormals_tmp)!=0))
{
sc_Vertex_t l9_309=l9_308;
float3 l9_310=in.blendShape0Pos;
float3 l9_311=in.blendShape0Normal;
float l9_312=(*sc_set0.UserUniforms).weights0.x;
sc_Vertex_t l9_313=l9_309;
float3 l9_314=l9_310;
float l9_315=l9_312;
float3 l9_316=l9_313.position.xyz+(l9_314*l9_315);
l9_313.position=float4(l9_316.x,l9_316.y,l9_316.z,l9_313.position.w);
l9_309=l9_313;
l9_309.normal+=(l9_311*l9_312);
l9_308=l9_309;
sc_Vertex_t l9_317=l9_308;
float3 l9_318=in.blendShape1Pos;
float3 l9_319=in.blendShape1Normal;
float l9_320=(*sc_set0.UserUniforms).weights0.y;
sc_Vertex_t l9_321=l9_317;
float3 l9_322=l9_318;
float l9_323=l9_320;
float3 l9_324=l9_321.position.xyz+(l9_322*l9_323);
l9_321.position=float4(l9_324.x,l9_324.y,l9_324.z,l9_321.position.w);
l9_317=l9_321;
l9_317.normal+=(l9_319*l9_320);
l9_308=l9_317;
sc_Vertex_t l9_325=l9_308;
float3 l9_326=in.blendShape2Pos;
float3 l9_327=in.blendShape2Normal;
float l9_328=(*sc_set0.UserUniforms).weights0.z;
sc_Vertex_t l9_329=l9_325;
float3 l9_330=l9_326;
float l9_331=l9_328;
float3 l9_332=l9_329.position.xyz+(l9_330*l9_331);
l9_329.position=float4(l9_332.x,l9_332.y,l9_332.z,l9_329.position.w);
l9_325=l9_329;
l9_325.normal+=(l9_327*l9_328);
l9_308=l9_325;
}
else
{
sc_Vertex_t l9_333=l9_308;
float3 l9_334=in.blendShape0Pos;
float l9_335=(*sc_set0.UserUniforms).weights0.x;
float3 l9_336=l9_333.position.xyz+(l9_334*l9_335);
l9_333.position=float4(l9_336.x,l9_336.y,l9_336.z,l9_333.position.w);
l9_308=l9_333;
sc_Vertex_t l9_337=l9_308;
float3 l9_338=in.blendShape1Pos;
float l9_339=(*sc_set0.UserUniforms).weights0.y;
float3 l9_340=l9_337.position.xyz+(l9_338*l9_339);
l9_337.position=float4(l9_340.x,l9_340.y,l9_340.z,l9_337.position.w);
l9_308=l9_337;
sc_Vertex_t l9_341=l9_308;
float3 l9_342=in.blendShape2Pos;
float l9_343=(*sc_set0.UserUniforms).weights0.z;
float3 l9_344=l9_341.position.xyz+(l9_342*l9_343);
l9_341.position=float4(l9_344.x,l9_344.y,l9_344.z,l9_341.position.w);
l9_308=l9_341;
sc_Vertex_t l9_345=l9_308;
float3 l9_346=in.blendShape3Pos;
float l9_347=(*sc_set0.UserUniforms).weights0.w;
float3 l9_348=l9_345.position.xyz+(l9_346*l9_347);
l9_345.position=float4(l9_348.x,l9_348.y,l9_348.z,l9_345.position.w);
l9_308=l9_345;
sc_Vertex_t l9_349=l9_308;
float3 l9_350=in.blendShape4Pos;
float l9_351=(*sc_set0.UserUniforms).weights1.x;
float3 l9_352=l9_349.position.xyz+(l9_350*l9_351);
l9_349.position=float4(l9_352.x,l9_352.y,l9_352.z,l9_349.position.w);
l9_308=l9_349;
sc_Vertex_t l9_353=l9_308;
float3 l9_354=in.blendShape5Pos;
float l9_355=(*sc_set0.UserUniforms).weights1.y;
float3 l9_356=l9_353.position.xyz+(l9_354*l9_355);
l9_353.position=float4(l9_356.x,l9_356.y,l9_356.z,l9_353.position.w);
l9_308=l9_353;
}
}
l9_307=l9_308;
sc_Vertex_t l9_357=l9_307;
if (sc_SkinBonesCount_tmp>0)
{
float4 l9_358=float4(0.0);
if (sc_SkinBonesCount_tmp>0)
{
l9_358=float4(1.0,fract(in.boneData.yzw));
l9_358.x-=dot(l9_358.yzw,float3(1.0));
}
float4 l9_359=l9_358;
float4 l9_360=l9_359;
int l9_361=int(in.boneData.x);
int l9_362=int(in.boneData.y);
int l9_363=int(in.boneData.z);
int l9_364=int(in.boneData.w);
int l9_365=l9_361;
float4 l9_366=l9_357.position;
float3 l9_367=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_368=l9_365;
float4 l9_369=(*sc_set0.sc_BonesUBO).sc_Bones[l9_368].boneMatrix[0];
float4 l9_370=(*sc_set0.sc_BonesUBO).sc_Bones[l9_368].boneMatrix[1];
float4 l9_371=(*sc_set0.sc_BonesUBO).sc_Bones[l9_368].boneMatrix[2];
float4 l9_372[3];
l9_372[0]=l9_369;
l9_372[1]=l9_370;
l9_372[2]=l9_371;
l9_367=float3(dot(l9_366,l9_372[0]),dot(l9_366,l9_372[1]),dot(l9_366,l9_372[2]));
}
else
{
l9_367=l9_366.xyz;
}
float3 l9_373=l9_367;
float3 l9_374=l9_373;
float l9_375=l9_360.x;
int l9_376=l9_362;
float4 l9_377=l9_357.position;
float3 l9_378=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_379=l9_376;
float4 l9_380=(*sc_set0.sc_BonesUBO).sc_Bones[l9_379].boneMatrix[0];
float4 l9_381=(*sc_set0.sc_BonesUBO).sc_Bones[l9_379].boneMatrix[1];
float4 l9_382=(*sc_set0.sc_BonesUBO).sc_Bones[l9_379].boneMatrix[2];
float4 l9_383[3];
l9_383[0]=l9_380;
l9_383[1]=l9_381;
l9_383[2]=l9_382;
l9_378=float3(dot(l9_377,l9_383[0]),dot(l9_377,l9_383[1]),dot(l9_377,l9_383[2]));
}
else
{
l9_378=l9_377.xyz;
}
float3 l9_384=l9_378;
float3 l9_385=l9_384;
float l9_386=l9_360.y;
int l9_387=l9_363;
float4 l9_388=l9_357.position;
float3 l9_389=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_390=l9_387;
float4 l9_391=(*sc_set0.sc_BonesUBO).sc_Bones[l9_390].boneMatrix[0];
float4 l9_392=(*sc_set0.sc_BonesUBO).sc_Bones[l9_390].boneMatrix[1];
float4 l9_393=(*sc_set0.sc_BonesUBO).sc_Bones[l9_390].boneMatrix[2];
float4 l9_394[3];
l9_394[0]=l9_391;
l9_394[1]=l9_392;
l9_394[2]=l9_393;
l9_389=float3(dot(l9_388,l9_394[0]),dot(l9_388,l9_394[1]),dot(l9_388,l9_394[2]));
}
else
{
l9_389=l9_388.xyz;
}
float3 l9_395=l9_389;
float3 l9_396=l9_395;
float l9_397=l9_360.z;
int l9_398=l9_364;
float4 l9_399=l9_357.position;
float3 l9_400=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_401=l9_398;
float4 l9_402=(*sc_set0.sc_BonesUBO).sc_Bones[l9_401].boneMatrix[0];
float4 l9_403=(*sc_set0.sc_BonesUBO).sc_Bones[l9_401].boneMatrix[1];
float4 l9_404=(*sc_set0.sc_BonesUBO).sc_Bones[l9_401].boneMatrix[2];
float4 l9_405[3];
l9_405[0]=l9_402;
l9_405[1]=l9_403;
l9_405[2]=l9_404;
l9_400=float3(dot(l9_399,l9_405[0]),dot(l9_399,l9_405[1]),dot(l9_399,l9_405[2]));
}
else
{
l9_400=l9_399.xyz;
}
float3 l9_406=l9_400;
float3 l9_407=(((l9_374*l9_375)+(l9_385*l9_386))+(l9_396*l9_397))+(l9_406*l9_360.w);
l9_357.position=float4(l9_407.x,l9_407.y,l9_407.z,l9_357.position.w);
int l9_408=l9_361;
float3x3 l9_409=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_408].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_408].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_408].normalMatrix[2].xyz));
float3x3 l9_410=l9_409;
float3x3 l9_411=l9_410;
int l9_412=l9_362;
float3x3 l9_413=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_412].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_412].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_412].normalMatrix[2].xyz));
float3x3 l9_414=l9_413;
float3x3 l9_415=l9_414;
int l9_416=l9_363;
float3x3 l9_417=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_416].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_416].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_416].normalMatrix[2].xyz));
float3x3 l9_418=l9_417;
float3x3 l9_419=l9_418;
int l9_420=l9_364;
float3x3 l9_421=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_420].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_420].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_420].normalMatrix[2].xyz));
float3x3 l9_422=l9_421;
float3x3 l9_423=l9_422;
l9_357.normal=((((l9_411*l9_357.normal)*l9_360.x)+((l9_415*l9_357.normal)*l9_360.y))+((l9_419*l9_357.normal)*l9_360.z))+((l9_423*l9_357.normal)*l9_360.w);
l9_357.tangent=((((l9_411*l9_357.tangent)*l9_360.x)+((l9_415*l9_357.tangent)*l9_360.y))+((l9_419*l9_357.tangent)*l9_360.z))+((l9_423*l9_357.tangent)*l9_360.w);
}
l9_307=l9_357;
float3 l9_424=(*sc_set0.UserUniforms).voxelization_params_camera_pos;
float2 l9_425=((l9_307.position.xy/float2(l9_307.position.w))*0.5)+float2(0.5);
out.varPackedTex=float4(l9_425.x,l9_425.y,out.varPackedTex.z,out.varPackedTex.w);
l9_307.position=(*sc_set0.UserUniforms).sc_ModelMatrixVoxelization*l9_307.position;
float3 l9_426=l9_307.position.xyz-l9_424;
l9_307.position=float4(l9_426.x,l9_426.y,l9_426.z,l9_307.position.w);
out.varPos=l9_307.position.xyz;
out.varNormal=normalize(l9_307.normal);
float l9_427=(*sc_set0.UserUniforms).voxelization_params_frustum_lrbt.x;
float l9_428=(*sc_set0.UserUniforms).voxelization_params_frustum_lrbt.y;
float l9_429=(*sc_set0.UserUniforms).voxelization_params_frustum_lrbt.z;
float l9_430=(*sc_set0.UserUniforms).voxelization_params_frustum_lrbt.w;
float l9_431=(*sc_set0.UserUniforms).voxelization_params_frustum_nf.x;
float l9_432=(*sc_set0.UserUniforms).voxelization_params_frustum_nf.y;
float l9_433=l9_427;
float l9_434=l9_428;
float l9_435=l9_429;
float l9_436=l9_430;
float l9_437=l9_431;
float l9_438=l9_432;
float4x4 l9_439=float4x4(float4(2.0/(l9_434-l9_433),0.0,0.0,(-(l9_434+l9_433))/(l9_434-l9_433)),float4(0.0,2.0/(l9_436-l9_435),0.0,(-(l9_436+l9_435))/(l9_436-l9_435)),float4(0.0,0.0,(-2.0)/(l9_438-l9_437),(-(l9_438+l9_437))/(l9_438-l9_437)),float4(0.0,0.0,0.0,1.0));
float4x4 l9_440=l9_439;
float4 l9_441=float4(0.0);
float3 l9_442=(l9_440*l9_307.position).xyz;
l9_441=float4(l9_442.x,l9_442.y,l9_442.z,l9_441.w);
l9_441.w=1.0;
out.varScreenPos=l9_441;
float4 l9_443=l9_441*1.0;
float4 l9_444=l9_443;
if (sc_ShaderCacheConstant_tmp!=0)
{
l9_444.x+=((*sc_set0.UserUniforms).sc_UniformConstants.x*float(sc_ShaderCacheConstant_tmp));
}
if (sc_StereoRenderingMode_tmp>0)
{
out.varStereoViewID=gl_InstanceIndex%2;
}
float4 l9_445=l9_444;
if (sc_StereoRenderingMode_tmp==1)
{
float l9_446=dot(l9_445,(*sc_set0.UserUniforms).sc_StereoClipPlanes[gl_InstanceIndex%2]);
float l9_447=l9_446;
if (sc_StereoRendering_IsClipDistanceEnabled_tmp==1)
{
}
else
{
out.varClipDistance=l9_447;
}
}
float4 l9_448=float4(l9_444.x,-l9_444.y,(l9_444.z*0.5)+(l9_444.w*0.5),l9_444.w);
out.gl_Position=l9_448;
param_2=l9_307;
}
}
v=param_2;
if (PreviewInfo.Saved)
{
out.PreviewVertexColor=float4(PreviewInfo.Color.xyz,1.0);
out.PreviewVertexSaved=1.0;
}
return out;
}
} // VERTEX SHADER


namespace SNAP_FS {
struct sc_RayTracingHitPayload
{
float3 viewDirWS;
float3 positionWS;
float3 normalWS;
float4 tangentWS;
float4 color;
float2 uv0;
float2 uv1;
float2 uv2;
float2 uv3;
uint2 id;
};
struct ssGlobals
{
float gTimeElapsed;
float gTimeDelta;
float gTimeElapsedShifted;
float2 Surface_UVCoord0;
float2 Surface_UVCoord1;
float2 gScreenCoord;
float3 VertexTangent_WorldSpace;
float3 VertexNormal_WorldSpace;
float3 VertexBinormal_WorldSpace;
float3 ViewDirWS;
float3 SurfacePosition_WorldSpace;
float4 VertexColor;
};
struct sc_PointLight_t
{
int falloffEnabled;
float falloffEndDistance;
float negRcpFalloffEndDistance4;
float angleScale;
float angleOffset;
float3 direction;
float3 position;
float4 color;
};
struct sc_DirectionalLight_t
{
float3 direction;
float4 color;
};
struct sc_AmbientLight_t
{
float3 color;
float intensity;
};
struct sc_SphericalGaussianLight_t
{
float3 color;
float sharpness;
float3 axis;
};
struct sc_LightEstimationData_t
{
sc_SphericalGaussianLight_t sg[12];
float3 ambientLight;
};
struct sc_Camera_t
{
float3 position;
float aspect;
float2 clipPlanes;
};
struct userUniformsObj
{
sc_PointLight_t sc_PointLights[3];
sc_DirectionalLight_t sc_DirectionalLights[5];
sc_AmbientLight_t sc_AmbientLights[3];
sc_LightEstimationData_t sc_LightEstimationData;
float4 sc_EnvmapDiffuseSize;
float4 sc_EnvmapDiffuseDims;
float4 sc_EnvmapDiffuseView;
float4 sc_EnvmapSpecularSize;
float4 sc_EnvmapSpecularDims;
float4 sc_EnvmapSpecularView;
float3 sc_EnvmapRotation;
float sc_EnvmapExposure;
float3 sc_Sh[9];
float sc_ShIntensity;
float4 sc_Time;
float4 sc_UniformConstants;
float4 sc_GeometryInfo;
float4x4 sc_ModelViewProjectionMatrixArray[2];
float4x4 sc_ModelViewProjectionMatrixInverseArray[2];
float4x4 sc_ViewProjectionMatrixArray[2];
float4x4 sc_ViewProjectionMatrixInverseArray[2];
float4x4 sc_ModelViewMatrixArray[2];
float4x4 sc_ModelViewMatrixInverseArray[2];
float3x3 sc_ViewNormalMatrixArray[2];
float3x3 sc_ViewNormalMatrixInverseArray[2];
float4x4 sc_ProjectionMatrixArray[2];
float4x4 sc_ProjectionMatrixInverseArray[2];
float4x4 sc_ViewMatrixArray[2];
float4x4 sc_ViewMatrixInverseArray[2];
float4x4 sc_PrevFrameViewProjectionMatrixArray[2];
float4x4 sc_ModelMatrix;
float4x4 sc_ModelMatrixInverse;
float3x3 sc_NormalMatrix;
float3x3 sc_NormalMatrixInverse;
float4x4 sc_PrevFrameModelMatrix;
float4x4 sc_PrevFrameModelMatrixInverse;
float3 sc_LocalAabbMin;
float3 sc_LocalAabbMax;
float3 sc_WorldAabbMin;
float3 sc_WorldAabbMax;
float4 sc_WindowToViewportTransform;
float4 sc_CurrentRenderTargetDims;
sc_Camera_t sc_Camera;
float sc_ShadowDensity;
float4 sc_ShadowColor;
float4x4 sc_ProjectorMatrix;
float shaderComplexityValue;
float4 weights0;
float4 weights1;
float4 weights2;
float4 sc_StereoClipPlanes[2];
int sc_FallbackInstanceID;
float2 sc_TAAJitterOffset;
float strandWidth;
float strandTaper;
float4 sc_StrandDataMapTextureSize;
float clumpInstanceCount;
float clumpRadius;
float clumpTipScale;
float hairstyleInstanceCount;
float hairstyleNoise;
float4 sc_ScreenTextureSize;
float4 sc_ScreenTextureDims;
float4 sc_ScreenTextureView;
uint4 sc_RayTracingCasterConfiguration;
uint4 sc_RayTracingCasterOffsetPNTC;
uint4 sc_RayTracingCasterOffsetTexture;
uint4 sc_RayTracingCasterFormatPNTC;
uint4 sc_RayTracingCasterFormatTexture;
float4 sc_RayTracingRayDirectionSize;
float4 sc_RayTracingRayDirectionDims;
float4 sc_RayTracingRayDirectionView;
float4 voxelization_params_0;
float4 voxelization_params_frustum_lrbt;
float4 voxelization_params_frustum_nf;
float3 voxelization_params_camera_pos;
float4x4 sc_ModelMatrixVoxelization;
float correctedIntensity;
float4 intensityTextureSize;
float4 intensityTextureDims;
float4 intensityTextureView;
float3x3 intensityTextureTransform;
float4 intensityTextureUvMinMax;
float4 intensityTextureBorderColor;
float reflBlurWidth;
float reflBlurMinRough;
float reflBlurMaxRough;
int overrideTimeEnabled;
float overrideTimeElapsed[32];
float overrideTimeDelta;
int PreviewEnabled;
int PreviewNodeID;
float alphaTestThreshold;
float4 Tweak_N1;
float4 Tweak_N0Size;
float4 Tweak_N0Dims;
float4 Tweak_N0View;
float3x3 Tweak_N0Transform;
float4 Tweak_N0UvMinMax;
float4 Tweak_N0BorderColor;
float2 Tweak_N73;
float2 Tweak_N72;
float Tweak_N74;
float Tweak_N16;
float4 Tweak_N68;
float4 Tweak_N18Size;
float4 Tweak_N18Dims;
float4 Tweak_N18View;
float3x3 Tweak_N18Transform;
float4 Tweak_N18UvMinMax;
float4 Tweak_N18BorderColor;
float4 Tweak_N12Size;
float4 Tweak_N12Dims;
float4 Tweak_N12View;
float3x3 Tweak_N12Transform;
float4 Tweak_N12UvMinMax;
float4 Tweak_N12BorderColor;
float4 Tweak_N58Size;
float4 Tweak_N58Dims;
float4 Tweak_N58View;
float3x3 Tweak_N58Transform;
float4 Tweak_N58UvMinMax;
float4 Tweak_N58BorderColor;
float Tweak_N17;
float4 Tweak_N15Size;
float4 Tweak_N15Dims;
float4 Tweak_N15View;
float3x3 Tweak_N15Transform;
float4 Tweak_N15UvMinMax;
float4 Tweak_N15BorderColor;
float4 Tweak_N82Size;
float4 Tweak_N82Dims;
float4 Tweak_N82View;
float3x3 Tweak_N82Transform;
float4 Tweak_N82UvMinMax;
float4 Tweak_N82BorderColor;
float Tweak_N24;
float4 Tweak_N47Size;
float4 Tweak_N47Dims;
float4 Tweak_N47View;
float3x3 Tweak_N47Transform;
float4 Tweak_N47UvMinMax;
float4 Tweak_N47BorderColor;
float4 Tweak_N93;
float Tweak_N48;
float4 Tweak_N8Size;
float4 Tweak_N8Dims;
float4 Tweak_N8View;
float3x3 Tweak_N8Transform;
float4 Tweak_N8UvMinMax;
float4 Tweak_N8BorderColor;
float4 Port_Import_N085;
float2 Port_Import_N088;
float2 Port_Center_N070;
float2 Port_Import_N089;
float Port_Import_N087;
float2 Port_Center_N071;
float3 Port_Default_N052;
float4 Port_Value0_N067;
float4 Port_Default_N067;
float3 Port_Default_N065;
float Port_Strength1_N057;
float Port_Strength2_N057;
float4 Port_Default_N023;
float3 Port_Input1_N042;
float3 Port_Import_N259;
float Port_Input1_N264;
float Port_Input1_N268;
float Port_Input1_N270;
float4 Port_Default_N083;
float3 Port_Default_N062;
float3 Port_Default_N059;
float depthRef;
};
struct sc_RayTracingCasterVertexBuffer_obj
{
float sc_RayTracingCasterVertices[1];
};
struct sc_RayTracingCasterNonAnimatedVertexBuffer_obj
{
float sc_RayTracingCasterNonAnimatedVertices[1];
};
struct sc_RayTracingCasterIndexBuffer_obj
{
uint sc_RayTracingCasterTriangles[1];
};
struct ssPreviewInfo
{
float4 Color;
bool Saved;
};
struct sc_Bone_t
{
float4 boneMatrix[3];
float4 normalMatrix[3];
};
struct sc_Bones_obj
{
sc_Bone_t sc_Bones[1];
};
struct sc_Set0
{
const device sc_RayTracingCasterIndexBuffer_obj* sc_RayTracingCasterIndexBuffer [[id(0)]];
const device sc_RayTracingCasterVertexBuffer_obj* sc_RayTracingCasterVertexBuffer [[id(1)]];
const device sc_RayTracingCasterNonAnimatedVertexBuffer_obj* sc_RayTracingCasterNonAnimatedVertexBuffer [[id(2)]];
constant sc_Bones_obj* sc_BonesUBO [[id(3)]];
texture2d<float> Tweak_N0 [[id(4)]];
texture2d<float> Tweak_N12 [[id(5)]];
texture2d<float> Tweak_N15 [[id(6)]];
texture2d<float> Tweak_N18 [[id(7)]];
texture2d<float> Tweak_N47 [[id(8)]];
texture2d<float> Tweak_N58 [[id(9)]];
texture2d<float> Tweak_N8 [[id(10)]];
texture2d<float> Tweak_N82 [[id(11)]];
texture2d<float> intensityTexture [[id(12)]];
texture2d<uint> sc_RayTracingHitCasterIdAndBarycentric [[id(23)]];
texture2d<float> sc_RayTracingRayDirection [[id(24)]];
texture2d<float> sc_ScreenTexture [[id(26)]];
sampler Tweak_N0SmpSC [[id(29)]];
sampler Tweak_N12SmpSC [[id(30)]];
sampler Tweak_N15SmpSC [[id(31)]];
sampler Tweak_N18SmpSC [[id(32)]];
sampler Tweak_N47SmpSC [[id(33)]];
sampler Tweak_N58SmpSC [[id(34)]];
sampler Tweak_N82SmpSC [[id(35)]];
sampler Tweak_N8SmpSC [[id(36)]];
sampler intensityTextureSmpSC [[id(37)]];
sampler sc_RayTracingHitCasterIdAndBarycentricSmpSC [[id(41)]];
sampler sc_RayTracingRayDirectionSmpSC [[id(42)]];
sampler sc_ScreenTextureSmpSC [[id(44)]];
constant userUniformsObj* UserUniforms [[id(47)]];
};
struct main_frag_out
{
float4 FragColor0 [[color(0)]];
float4 FragColor1 [[color(1)]];
float4 FragColor2 [[color(2)]];
float4 FragColor3 [[color(3)]];
};
struct main_frag_in
{
float3 varPos [[user(locn0)]];
float3 varNormal [[user(locn1)]];
float4 varTangent [[user(locn2)]];
float4 varPackedTex [[user(locn3)]];
float4 varScreenPos [[user(locn4)]];
float2 varScreenTexturePos [[user(locn5)]];
float varViewSpaceDepth [[user(locn6)]];
float2 varShadowTex [[user(locn7)]];
int varStereoViewID [[user(locn8)]];
float varClipDistance [[user(locn9)]];
float4 varColor [[user(locn10)]];
float4 PreviewVertexColor [[user(locn11)]];
float PreviewVertexSaved [[user(locn12)]];
};
// Implementation of the GLSL mod() function,which is slightly different than Metal fmod()
template<typename Tx,typename Ty>
Tx mod(Tx x,Ty y)
{
return x-y*floor(x/y);
}
// Implementation of the GLSL radians() function
template<typename T>
T radians(T d)
{
return d*T(0.01745329251);
}
sc_RayTracingHitPayload sc_RayTracingEvaluateHitPayload(thread const int2& screenPos,thread texture2d<float> sc_RayTracingRayDirection,thread sampler sc_RayTracingRayDirectionSmpSC,constant userUniformsObj& UserUniforms,const device sc_RayTracingCasterVertexBuffer_obj& sc_RayTracingCasterVertexBuffer,const device sc_RayTracingCasterNonAnimatedVertexBuffer_obj& sc_RayTracingCasterNonAnimatedVertexBuffer,const device sc_RayTracingCasterIndexBuffer_obj& sc_RayTracingCasterIndexBuffer,thread texture2d<uint> sc_RayTracingHitCasterIdAndBarycentric,thread sampler sc_RayTracingHitCasterIdAndBarycentricSmpSC)
{
uint4 idAndBarycentric=sc_RayTracingHitCasterIdAndBarycentric.read(uint2(screenPos),0);
sc_RayTracingHitPayload rhp;
rhp.id=idAndBarycentric.xy;
if (rhp.id.x!=(UserUniforms.sc_RayTracingCasterConfiguration.y&65535u))
{
return rhp;
}
float2 brcVW=float2(as_type<half2>(idAndBarycentric.z|(idAndBarycentric.w<<uint(16))));
float3 brc=float3((1.0-brcVW.x)-brcVW.y,brcVW);
float2 param=sc_RayTracingRayDirection.read(uint2(screenPos),0).xy;
float3 l9_0=float3(param.x,param.y,(1.0-abs(param.x))-abs(param.y));
float l9_1=fast::clamp(-l9_0.z,0.0,1.0);
float l9_2;
if (l9_0.x>=0.0)
{
l9_2=-l9_1;
}
else
{
l9_2=l9_1;
}
float l9_3=l9_2;
float l9_4;
if (l9_0.y>=0.0)
{
l9_4=-l9_1;
}
else
{
l9_4=l9_1;
}
float2 l9_5=l9_0.xy+float2(l9_3,l9_4);
l9_0=float3(l9_5.x,l9_5.y,l9_0.z);
float3 l9_6=normalize(l9_0);
float3 rayDir=l9_6;
rhp.viewDirWS=-rayDir;
uint param_1=rhp.id.y;
uint l9_7=min(param_1,UserUniforms.sc_RayTracingCasterConfiguration.z);
uint l9_8=l9_7*6u;
uint l9_9=l9_8&4294967292u;
uint4 l9_10=(uint4(uint2(sc_RayTracingCasterIndexBuffer.sc_RayTracingCasterTriangles[l9_9/4u]),uint2(sc_RayTracingCasterIndexBuffer.sc_RayTracingCasterTriangles[(l9_9/4u)+1u]))&uint4(65535u,4294967295u,65535u,4294967295u))>>uint4(0u,16u,0u,16u);
uint3 l9_11;
if (l9_8==l9_9)
{
l9_11=l9_10.xyz;
}
else
{
l9_11=l9_10.yzw;
}
uint3 l9_12=l9_11;
uint3 i=l9_12;
if (UserUniforms.sc_RayTracingCasterConfiguration.x==2u)
{
float3 param_2=brc;
uint3 param_3=i;
uint param_4=0u;
uint3 l9_13=uint3((param_3*uint3(6u))+uint3(param_4));
uint l9_14=l9_13.x;
float3 l9_15=float3(sc_RayTracingCasterNonAnimatedVertexBuffer.sc_RayTracingCasterNonAnimatedVertices[l9_14],sc_RayTracingCasterNonAnimatedVertexBuffer.sc_RayTracingCasterNonAnimatedVertices[l9_14+1u],sc_RayTracingCasterNonAnimatedVertexBuffer.sc_RayTracingCasterNonAnimatedVertices[l9_14+2u]);
uint l9_16=l9_13.y;
float3 l9_17=float3(sc_RayTracingCasterNonAnimatedVertexBuffer.sc_RayTracingCasterNonAnimatedVertices[l9_16],sc_RayTracingCasterNonAnimatedVertexBuffer.sc_RayTracingCasterNonAnimatedVertices[l9_16+1u],sc_RayTracingCasterNonAnimatedVertexBuffer.sc_RayTracingCasterNonAnimatedVertices[l9_16+2u]);
uint l9_18=l9_13.z;
float3 l9_19=float3(sc_RayTracingCasterNonAnimatedVertexBuffer.sc_RayTracingCasterNonAnimatedVertices[l9_18],sc_RayTracingCasterNonAnimatedVertexBuffer.sc_RayTracingCasterNonAnimatedVertices[l9_18+1u],sc_RayTracingCasterNonAnimatedVertexBuffer.sc_RayTracingCasterNonAnimatedVertices[l9_18+2u]);
float3 l9_20=((l9_15*param_2.x)+(l9_17*param_2.y))+(l9_19*param_2.z);
rhp.positionWS=l9_20;
}
else
{
float3 param_5=brc;
uint3 param_6=i;
uint3 l9_21=uint3((param_6.x*(UserUniforms.sc_RayTracingCasterConfiguration.y>>16u))+UserUniforms.sc_RayTracingCasterOffsetPNTC.x,(param_6.y*(UserUniforms.sc_RayTracingCasterConfiguration.y>>16u))+UserUniforms.sc_RayTracingCasterOffsetPNTC.x,(param_6.z*(UserUniforms.sc_RayTracingCasterConfiguration.y>>16u))+UserUniforms.sc_RayTracingCasterOffsetPNTC.x);
float3 l9_22=float3(0.0);
if (UserUniforms.sc_RayTracingCasterFormatPNTC.x==5u)
{
uint l9_23=l9_21.x;
float3 l9_24=float3(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_23],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_23+1u],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_23+2u]);
uint l9_25=l9_21.y;
float3 l9_26=float3(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_25],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_25+1u],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_25+2u]);
uint l9_27=l9_21.z;
float3 l9_28=float3(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_27],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_27+1u],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_27+2u]);
l9_22=((l9_24*param_5.x)+(l9_26*param_5.y))+(l9_28*param_5.z);
}
else
{
if (UserUniforms.sc_RayTracingCasterFormatPNTC.x==6u)
{
uint l9_29=l9_21.x;
float3 l9_30=float3(float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_29]))),float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_29+1u]))).x);
uint l9_31=l9_21.y;
float3 l9_32=float3(float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_31]))),float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_31+1u]))).x);
uint l9_33=l9_21.z;
float3 l9_34=float3(float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_33]))),float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_33+1u]))).x);
l9_22=((l9_30*param_5.x)+(l9_32*param_5.y))+(l9_34*param_5.z);
}
else
{
l9_22=float3(1.0,0.0,0.0);
}
}
float3 l9_35=l9_22;
float3 positionOS=l9_35;
rhp.positionWS=(UserUniforms.sc_ModelMatrix*float4(positionOS,1.0)).xyz;
}
if (UserUniforms.sc_RayTracingCasterOffsetPNTC.y>0u)
{
if (UserUniforms.sc_RayTracingCasterConfiguration.x==2u)
{
float3 param_7=brc;
uint3 param_8=i;
uint param_9=3u;
uint3 l9_36=uint3((param_8*uint3(6u))+uint3(param_9));
uint l9_37=l9_36.x;
float3 l9_38=float3(sc_RayTracingCasterNonAnimatedVertexBuffer.sc_RayTracingCasterNonAnimatedVertices[l9_37],sc_RayTracingCasterNonAnimatedVertexBuffer.sc_RayTracingCasterNonAnimatedVertices[l9_37+1u],sc_RayTracingCasterNonAnimatedVertexBuffer.sc_RayTracingCasterNonAnimatedVertices[l9_37+2u]);
uint l9_39=l9_36.y;
float3 l9_40=float3(sc_RayTracingCasterNonAnimatedVertexBuffer.sc_RayTracingCasterNonAnimatedVertices[l9_39],sc_RayTracingCasterNonAnimatedVertexBuffer.sc_RayTracingCasterNonAnimatedVertices[l9_39+1u],sc_RayTracingCasterNonAnimatedVertexBuffer.sc_RayTracingCasterNonAnimatedVertices[l9_39+2u]);
uint l9_41=l9_36.z;
float3 l9_42=float3(sc_RayTracingCasterNonAnimatedVertexBuffer.sc_RayTracingCasterNonAnimatedVertices[l9_41],sc_RayTracingCasterNonAnimatedVertexBuffer.sc_RayTracingCasterNonAnimatedVertices[l9_41+1u],sc_RayTracingCasterNonAnimatedVertexBuffer.sc_RayTracingCasterNonAnimatedVertices[l9_41+2u]);
float3 l9_43=((l9_38*param_7.x)+(l9_40*param_7.y))+(l9_42*param_7.z);
rhp.normalWS=l9_43;
}
else
{
float3 param_10=brc;
uint3 param_11=i;
uint3 l9_44=uint3((param_11.x*(UserUniforms.sc_RayTracingCasterConfiguration.y>>16u))+UserUniforms.sc_RayTracingCasterOffsetPNTC.y,(param_11.y*(UserUniforms.sc_RayTracingCasterConfiguration.y>>16u))+UserUniforms.sc_RayTracingCasterOffsetPNTC.y,(param_11.z*(UserUniforms.sc_RayTracingCasterConfiguration.y>>16u))+UserUniforms.sc_RayTracingCasterOffsetPNTC.y);
float3 l9_45=float3(0.0);
if (UserUniforms.sc_RayTracingCasterFormatPNTC.y==5u)
{
uint l9_46=l9_44.x;
float3 l9_47=float3(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_46],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_46+1u],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_46+2u]);
uint l9_48=l9_44.y;
float3 l9_49=float3(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_48],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_48+1u],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_48+2u]);
uint l9_50=l9_44.z;
float3 l9_51=float3(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_50],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_50+1u],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_50+2u]);
l9_45=((l9_47*param_10.x)+(l9_49*param_10.y))+(l9_51*param_10.z);
}
else
{
if (UserUniforms.sc_RayTracingCasterFormatPNTC.y==6u)
{
uint l9_52=l9_44.x;
float3 l9_53=float3(float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_52]))),float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_52+1u]))).x);
uint l9_54=l9_44.y;
float3 l9_55=float3(float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_54]))),float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_54+1u]))).x);
uint l9_56=l9_44.z;
float3 l9_57=float3(float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_56]))),float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_56+1u]))).x);
l9_45=((l9_53*param_10.x)+(l9_55*param_10.y))+(l9_57*param_10.z);
}
else
{
l9_45=float3(1.0,0.0,0.0);
}
}
float3 l9_58=l9_45;
float3 normalOS=l9_58;
rhp.normalWS=normalize(UserUniforms.sc_NormalMatrix*normalOS);
}
}
else
{
rhp.normalWS=float3(1.0,0.0,0.0);
}
bool l9_59=!(UserUniforms.sc_RayTracingCasterConfiguration.x==2u);
bool l9_60;
if (l9_59)
{
l9_60=UserUniforms.sc_RayTracingCasterOffsetPNTC.z>0u;
}
else
{
l9_60=l9_59;
}
if (l9_60)
{
float3 param_12=brc;
uint3 param_13=i;
uint3 l9_61=uint3((param_13.x*(UserUniforms.sc_RayTracingCasterConfiguration.y>>16u))+UserUniforms.sc_RayTracingCasterOffsetPNTC.z,(param_13.y*(UserUniforms.sc_RayTracingCasterConfiguration.y>>16u))+UserUniforms.sc_RayTracingCasterOffsetPNTC.z,(param_13.z*(UserUniforms.sc_RayTracingCasterConfiguration.y>>16u))+UserUniforms.sc_RayTracingCasterOffsetPNTC.z);
float4 l9_62=float4(0.0);
if (UserUniforms.sc_RayTracingCasterFormatPNTC.z==5u)
{
uint l9_63=l9_61.x;
float4 l9_64=float4(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_63],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_63+1u],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_63+2u],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_63+3u]);
uint l9_65=l9_61.y;
float4 l9_66=float4(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_65],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_65+1u],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_65+2u],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_65+3u]);
uint l9_67=l9_61.z;
float4 l9_68=float4(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_67],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_67+1u],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_67+2u],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_67+3u]);
l9_62=((l9_64*param_12.x)+(l9_66*param_12.y))+(l9_68*param_12.z);
}
else
{
if (UserUniforms.sc_RayTracingCasterFormatPNTC.z==6u)
{
uint l9_69=l9_61.x;
float4 l9_70=float4(float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_69]))),float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_69+1u]))));
uint l9_71=l9_61.y;
float4 l9_72=float4(float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_71]))),float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_71+1u]))));
uint l9_73=l9_61.z;
float4 l9_74=float4(float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_73]))),float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_73+1u]))));
l9_62=((l9_70*param_12.x)+(l9_72*param_12.y))+(l9_74*param_12.z);
}
else
{
if (UserUniforms.sc_RayTracingCasterFormatPNTC.z==2u)
{
uint l9_75=l9_61.x;
uint l9_76=as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_75]);
uint l9_77=l9_76&255u;
uint l9_78=(l9_76>>uint(8))&255u;
uint l9_79=(l9_76>>uint(16))&255u;
uint l9_80=(l9_76>>uint(24))&255u;
float4 l9_81=float4(float(l9_77),float(l9_78),float(l9_79),float(l9_80))/float4(255.0);
uint l9_82=l9_61.y;
uint l9_83=as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_82]);
uint l9_84=l9_83&255u;
uint l9_85=(l9_83>>uint(8))&255u;
uint l9_86=(l9_83>>uint(16))&255u;
uint l9_87=(l9_83>>uint(24))&255u;
float4 l9_88=float4(float(l9_84),float(l9_85),float(l9_86),float(l9_87))/float4(255.0);
uint l9_89=l9_61.z;
uint l9_90=as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_89]);
uint l9_91=l9_90&255u;
uint l9_92=(l9_90>>uint(8))&255u;
uint l9_93=(l9_90>>uint(16))&255u;
uint l9_94=(l9_90>>uint(24))&255u;
float4 l9_95=float4(float(l9_91),float(l9_92),float(l9_93),float(l9_94))/float4(255.0);
l9_62=((l9_81*param_12.x)+(l9_88*param_12.y))+(l9_95*param_12.z);
}
else
{
l9_62=float4(1.0,0.0,0.0,0.0);
}
}
}
float4 l9_96=l9_62;
float4 tangentOS=l9_96;
float3 tangentWS=normalize(UserUniforms.sc_NormalMatrix*tangentOS.xyz);
rhp.tangentWS=float4(tangentWS,tangentOS.w);
}
else
{
rhp.tangentWS=float4(1.0,0.0,0.0,1.0);
}
if (UserUniforms.sc_RayTracingCasterFormatPNTC.w>0u)
{
float3 param_14=brc;
uint3 param_15=i;
uint3 l9_97=uint3((param_15.x*(UserUniforms.sc_RayTracingCasterConfiguration.y>>16u))+UserUniforms.sc_RayTracingCasterOffsetPNTC.w,(param_15.y*(UserUniforms.sc_RayTracingCasterConfiguration.y>>16u))+UserUniforms.sc_RayTracingCasterOffsetPNTC.w,(param_15.z*(UserUniforms.sc_RayTracingCasterConfiguration.y>>16u))+UserUniforms.sc_RayTracingCasterOffsetPNTC.w);
float4 l9_98=float4(0.0);
if (UserUniforms.sc_RayTracingCasterFormatPNTC.w==5u)
{
uint l9_99=l9_97.x;
float4 l9_100=float4(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_99],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_99+1u],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_99+2u],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_99+3u]);
uint l9_101=l9_97.y;
float4 l9_102=float4(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_101],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_101+1u],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_101+2u],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_101+3u]);
uint l9_103=l9_97.z;
float4 l9_104=float4(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_103],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_103+1u],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_103+2u],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_103+3u]);
l9_98=((l9_100*param_14.x)+(l9_102*param_14.y))+(l9_104*param_14.z);
}
else
{
if (UserUniforms.sc_RayTracingCasterFormatPNTC.w==6u)
{
uint l9_105=l9_97.x;
float4 l9_106=float4(float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_105]))),float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_105+1u]))));
uint l9_107=l9_97.y;
float4 l9_108=float4(float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_107]))),float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_107+1u]))));
uint l9_109=l9_97.z;
float4 l9_110=float4(float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_109]))),float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_109+1u]))));
l9_98=((l9_106*param_14.x)+(l9_108*param_14.y))+(l9_110*param_14.z);
}
else
{
if (UserUniforms.sc_RayTracingCasterFormatPNTC.w==2u)
{
uint l9_111=l9_97.x;
uint l9_112=as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_111]);
uint l9_113=l9_112&255u;
uint l9_114=(l9_112>>uint(8))&255u;
uint l9_115=(l9_112>>uint(16))&255u;
uint l9_116=(l9_112>>uint(24))&255u;
float4 l9_117=float4(float(l9_113),float(l9_114),float(l9_115),float(l9_116))/float4(255.0);
uint l9_118=l9_97.y;
uint l9_119=as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_118]);
uint l9_120=l9_119&255u;
uint l9_121=(l9_119>>uint(8))&255u;
uint l9_122=(l9_119>>uint(16))&255u;
uint l9_123=(l9_119>>uint(24))&255u;
float4 l9_124=float4(float(l9_120),float(l9_121),float(l9_122),float(l9_123))/float4(255.0);
uint l9_125=l9_97.z;
uint l9_126=as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_125]);
uint l9_127=l9_126&255u;
uint l9_128=(l9_126>>uint(8))&255u;
uint l9_129=(l9_126>>uint(16))&255u;
uint l9_130=(l9_126>>uint(24))&255u;
float4 l9_131=float4(float(l9_127),float(l9_128),float(l9_129),float(l9_130))/float4(255.0);
l9_98=((l9_117*param_14.x)+(l9_124*param_14.y))+(l9_131*param_14.z);
}
else
{
l9_98=float4(1.0,0.0,0.0,0.0);
}
}
}
float4 l9_132=l9_98;
rhp.color=l9_132;
}
float2 dummyRedBlack=float2(dot(brc,float3(uint3(1u)-(i%uint3(2u)))),0.0);
if (UserUniforms.sc_RayTracingCasterFormatTexture.x>0u)
{
float3 param_16=brc;
uint3 param_17=i;
uint3 l9_133=uint3((param_17.x*(UserUniforms.sc_RayTracingCasterConfiguration.y>>16u))+UserUniforms.sc_RayTracingCasterOffsetTexture.x,(param_17.y*(UserUniforms.sc_RayTracingCasterConfiguration.y>>16u))+UserUniforms.sc_RayTracingCasterOffsetTexture.x,(param_17.z*(UserUniforms.sc_RayTracingCasterConfiguration.y>>16u))+UserUniforms.sc_RayTracingCasterOffsetTexture.x);
float2 l9_134=float2(0.0);
if (UserUniforms.sc_RayTracingCasterFormatTexture.x==5u)
{
uint l9_135=l9_133.x;
float2 l9_136=float2(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_135],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_135+1u]);
uint l9_137=l9_133.y;
float2 l9_138=float2(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_137],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_137+1u]);
uint l9_139=l9_133.z;
float2 l9_140=float2(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_139],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_139+1u]);
l9_134=((l9_136*param_16.x)+(l9_138*param_16.y))+(l9_140*param_16.z);
}
else
{
if (UserUniforms.sc_RayTracingCasterFormatTexture.x==6u)
{
uint l9_141=l9_133.x;
float2 l9_142=float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_141])));
uint l9_143=l9_133.y;
float2 l9_144=float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_143])));
uint l9_145=l9_133.z;
float2 l9_146=float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_145])));
l9_134=((l9_142*param_16.x)+(l9_144*param_16.y))+(l9_146*param_16.z);
}
else
{
l9_134=float2(1.0,0.0);
}
}
float2 l9_147=l9_134;
rhp.uv0=l9_147;
}
else
{
rhp.uv0=dummyRedBlack;
}
if (UserUniforms.sc_RayTracingCasterFormatTexture.y>0u)
{
float3 param_18=brc;
uint3 param_19=i;
uint3 l9_148=uint3((param_19.x*(UserUniforms.sc_RayTracingCasterConfiguration.y>>16u))+UserUniforms.sc_RayTracingCasterOffsetTexture.y,(param_19.y*(UserUniforms.sc_RayTracingCasterConfiguration.y>>16u))+UserUniforms.sc_RayTracingCasterOffsetTexture.y,(param_19.z*(UserUniforms.sc_RayTracingCasterConfiguration.y>>16u))+UserUniforms.sc_RayTracingCasterOffsetTexture.y);
float2 l9_149=float2(0.0);
if (UserUniforms.sc_RayTracingCasterFormatTexture.y==5u)
{
uint l9_150=l9_148.x;
float2 l9_151=float2(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_150],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_150+1u]);
uint l9_152=l9_148.y;
float2 l9_153=float2(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_152],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_152+1u]);
uint l9_154=l9_148.z;
float2 l9_155=float2(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_154],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_154+1u]);
l9_149=((l9_151*param_18.x)+(l9_153*param_18.y))+(l9_155*param_18.z);
}
else
{
if (UserUniforms.sc_RayTracingCasterFormatTexture.y==6u)
{
uint l9_156=l9_148.x;
float2 l9_157=float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_156])));
uint l9_158=l9_148.y;
float2 l9_159=float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_158])));
uint l9_160=l9_148.z;
float2 l9_161=float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_160])));
l9_149=((l9_157*param_18.x)+(l9_159*param_18.y))+(l9_161*param_18.z);
}
else
{
l9_149=float2(1.0,0.0);
}
}
float2 l9_162=l9_149;
rhp.uv1=l9_162;
}
else
{
rhp.uv1=dummyRedBlack;
}
if (UserUniforms.sc_RayTracingCasterFormatTexture.z>0u)
{
float3 param_20=brc;
uint3 param_21=i;
uint3 l9_163=uint3((param_21.x*(UserUniforms.sc_RayTracingCasterConfiguration.y>>16u))+UserUniforms.sc_RayTracingCasterOffsetTexture.z,(param_21.y*(UserUniforms.sc_RayTracingCasterConfiguration.y>>16u))+UserUniforms.sc_RayTracingCasterOffsetTexture.z,(param_21.z*(UserUniforms.sc_RayTracingCasterConfiguration.y>>16u))+UserUniforms.sc_RayTracingCasterOffsetTexture.z);
float2 l9_164=float2(0.0);
if (UserUniforms.sc_RayTracingCasterFormatTexture.z==5u)
{
uint l9_165=l9_163.x;
float2 l9_166=float2(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_165],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_165+1u]);
uint l9_167=l9_163.y;
float2 l9_168=float2(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_167],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_167+1u]);
uint l9_169=l9_163.z;
float2 l9_170=float2(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_169],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_169+1u]);
l9_164=((l9_166*param_20.x)+(l9_168*param_20.y))+(l9_170*param_20.z);
}
else
{
if (UserUniforms.sc_RayTracingCasterFormatTexture.z==6u)
{
uint l9_171=l9_163.x;
float2 l9_172=float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_171])));
uint l9_173=l9_163.y;
float2 l9_174=float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_173])));
uint l9_175=l9_163.z;
float2 l9_176=float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_175])));
l9_164=((l9_172*param_20.x)+(l9_174*param_20.y))+(l9_176*param_20.z);
}
else
{
l9_164=float2(1.0,0.0);
}
}
float2 l9_177=l9_164;
rhp.uv2=l9_177;
}
else
{
rhp.uv2=dummyRedBlack;
}
if (UserUniforms.sc_RayTracingCasterFormatTexture.w>0u)
{
float3 param_22=brc;
uint3 param_23=i;
uint3 l9_178=uint3((param_23.x*(UserUniforms.sc_RayTracingCasterConfiguration.y>>16u))+UserUniforms.sc_RayTracingCasterOffsetTexture.w,(param_23.y*(UserUniforms.sc_RayTracingCasterConfiguration.y>>16u))+UserUniforms.sc_RayTracingCasterOffsetTexture.w,(param_23.z*(UserUniforms.sc_RayTracingCasterConfiguration.y>>16u))+UserUniforms.sc_RayTracingCasterOffsetTexture.w);
float2 l9_179=float2(0.0);
if (UserUniforms.sc_RayTracingCasterFormatTexture.w==5u)
{
uint l9_180=l9_178.x;
float2 l9_181=float2(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_180],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_180+1u]);
uint l9_182=l9_178.y;
float2 l9_183=float2(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_182],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_182+1u]);
uint l9_184=l9_178.z;
float2 l9_185=float2(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_184],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_184+1u]);
l9_179=((l9_181*param_22.x)+(l9_183*param_22.y))+(l9_185*param_22.z);
}
else
{
if (UserUniforms.sc_RayTracingCasterFormatTexture.w==6u)
{
uint l9_186=l9_178.x;
float2 l9_187=float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_186])));
uint l9_188=l9_178.y;
float2 l9_189=float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_188])));
uint l9_190=l9_178.z;
float2 l9_191=float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_190])));
l9_179=((l9_187*param_22.x)+(l9_189*param_22.y))+(l9_191*param_22.z);
}
else
{
l9_179=float2(1.0,0.0);
}
}
float2 l9_192=l9_179;
rhp.uv3=l9_192;
}
else
{
rhp.uv3=dummyRedBlack;
}
return rhp;
}
float transformSingleColor(thread const float& original,thread const float& intMap,thread const float& target)
{
if (((int(BLEND_MODE_REALISTIC_tmp)!=0)||(int(BLEND_MODE_FORGRAY_tmp)!=0))||(int(BLEND_MODE_NOTBRIGHT_tmp)!=0))
{
return original/pow(1.0-target,intMap);
}
else
{
if ((int(BLEND_MODE_DIVISION_tmp)!=0))
{
return original/(1.0-target);
}
else
{
if ((int(BLEND_MODE_BRIGHT_tmp)!=0))
{
return original/pow(1.0-target,2.0-(2.0*original));
}
}
}
return 0.0;
}
float3 transformColor(thread const float& yValue,thread const float3& original,thread const float3& target,thread const float& weight,thread const float& intMap)
{
if ((int(BLEND_MODE_INTENSE_tmp)!=0))
{
float3 param=original;
float3 l9_0=param;
float4 l9_1;
if (l9_0.y<l9_0.z)
{
l9_1=float4(l9_0.zy,-1.0,0.66666669);
}
else
{
l9_1=float4(l9_0.yz,0.0,-0.33333334);
}
float4 l9_2=l9_1;
float4 l9_3;
if (l9_0.x<l9_2.x)
{
l9_3=float4(l9_2.xyw,l9_0.x);
}
else
{
l9_3=float4(l9_0.x,l9_2.yzx);
}
float4 l9_4=l9_3;
float l9_5=l9_4.x-fast::min(l9_4.w,l9_4.y);
float l9_6=abs(((l9_4.w-l9_4.y)/((6.0*l9_5)+1e-07))+l9_4.z);
float l9_7=l9_4.x;
float3 l9_8=float3(l9_6,l9_5,l9_7);
float3 l9_9=l9_8;
float l9_10=l9_9.z-(l9_9.y*0.5);
float l9_11=l9_9.y/((1.0-abs((2.0*l9_10)-1.0))+1e-07);
float3 l9_12=float3(l9_9.x,l9_11,l9_10);
float3 hslOrig=l9_12;
float3 res=float3(0.0);
res.x=target.x;
res.y=target.y;
res.z=hslOrig.z;
float3 param_1=res;
float l9_13=param_1.x;
float l9_14=abs((6.0*l9_13)-3.0)-1.0;
float l9_15=2.0-abs((6.0*l9_13)-2.0);
float l9_16=2.0-abs((6.0*l9_13)-4.0);
float3 l9_17=fast::clamp(float3(l9_14,l9_15,l9_16),float3(0.0),float3(1.0));
float3 l9_18=l9_17;
float l9_19=(1.0-abs((2.0*param_1.z)-1.0))*param_1.y;
l9_18=((l9_18-float3(0.5))*l9_19)+float3(param_1.z);
float3 l9_20=l9_18;
res=l9_20;
float3 resColor=mix(original,res,float3(weight));
return resColor;
}
else
{
float3 tmpColor=float3(0.0);
float param_2=yValue;
float param_3=intMap;
float param_4=target.x;
tmpColor.x=transformSingleColor(param_2,param_3,param_4);
float param_5=yValue;
float param_6=intMap;
float param_7=target.y;
tmpColor.y=transformSingleColor(param_5,param_6,param_7);
float param_8=yValue;
float param_9=intMap;
float param_10=target.z;
tmpColor.z=transformSingleColor(param_8,param_9,param_10);
tmpColor=fast::clamp(tmpColor,float3(0.0),float3(1.0));
float3 resColor_1=mix(original,tmpColor,float3(weight));
return resColor_1;
}
}
float3 definedBlend(thread const float3& a,thread const float3& b,thread int& varStereoViewID,constant userUniformsObj& UserUniforms,thread texture2d<float> intensityTexture,thread sampler intensityTextureSmpSC)
{
if ((int(BLEND_MODE_LIGHTEN_tmp)!=0))
{
return fast::max(a,b);
}
else
{
if ((int(BLEND_MODE_DARKEN_tmp)!=0))
{
return fast::min(a,b);
}
else
{
if ((int(BLEND_MODE_DIVIDE_tmp)!=0))
{
return b/a;
}
else
{
if ((int(BLEND_MODE_AVERAGE_tmp)!=0))
{
return (a+b)*0.5;
}
else
{
if ((int(BLEND_MODE_SUBTRACT_tmp)!=0))
{
return fast::max((a+b)-float3(1.0),float3(0.0));
}
else
{
if ((int(BLEND_MODE_DIFFERENCE_tmp)!=0))
{
return abs(a-b);
}
else
{
if ((int(BLEND_MODE_NEGATION_tmp)!=0))
{
return float3(1.0)-abs((float3(1.0)-a)-b);
}
else
{
if ((int(BLEND_MODE_EXCLUSION_tmp)!=0))
{
return (a+b)-((a*2.0)*b);
}
else
{
if ((int(BLEND_MODE_OVERLAY_tmp)!=0))
{
float l9_0;
if (a.x<0.5)
{
l9_0=(2.0*a.x)*b.x;
}
else
{
l9_0=1.0-((2.0*(1.0-a.x))*(1.0-b.x));
}
float l9_1=l9_0;
float l9_2;
if (a.y<0.5)
{
l9_2=(2.0*a.y)*b.y;
}
else
{
l9_2=1.0-((2.0*(1.0-a.y))*(1.0-b.y));
}
float l9_3=l9_2;
float l9_4;
if (a.z<0.5)
{
l9_4=(2.0*a.z)*b.z;
}
else
{
l9_4=1.0-((2.0*(1.0-a.z))*(1.0-b.z));
}
return float3(l9_1,l9_3,l9_4);
}
else
{
if ((int(BLEND_MODE_SOFT_LIGHT_tmp)!=0))
{
return (((float3(1.0)-(b*2.0))*a)*a)+((a*2.0)*b);
}
else
{
if ((int(BLEND_MODE_HARD_LIGHT_tmp)!=0))
{
float l9_5;
if (b.x<0.5)
{
l9_5=(2.0*b.x)*a.x;
}
else
{
l9_5=1.0-((2.0*(1.0-b.x))*(1.0-a.x));
}
float l9_6=l9_5;
float l9_7;
if (b.y<0.5)
{
l9_7=(2.0*b.y)*a.y;
}
else
{
l9_7=1.0-((2.0*(1.0-b.y))*(1.0-a.y));
}
float l9_8=l9_7;
float l9_9;
if (b.z<0.5)
{
l9_9=(2.0*b.z)*a.z;
}
else
{
l9_9=1.0-((2.0*(1.0-b.z))*(1.0-a.z));
}
return float3(l9_6,l9_8,l9_9);
}
else
{
if ((int(BLEND_MODE_COLOR_DODGE_tmp)!=0))
{
float l9_10;
if (b.x==1.0)
{
l9_10=b.x;
}
else
{
l9_10=fast::min(a.x/(1.0-b.x),1.0);
}
float l9_11=l9_10;
float l9_12;
if (b.y==1.0)
{
l9_12=b.y;
}
else
{
l9_12=fast::min(a.y/(1.0-b.y),1.0);
}
float l9_13=l9_12;
float l9_14;
if (b.z==1.0)
{
l9_14=b.z;
}
else
{
l9_14=fast::min(a.z/(1.0-b.z),1.0);
}
return float3(l9_11,l9_13,l9_14);
}
else
{
if ((int(BLEND_MODE_COLOR_BURN_tmp)!=0))
{
float l9_15;
if (b.x==0.0)
{
l9_15=b.x;
}
else
{
l9_15=fast::max(1.0-((1.0-a.x)/b.x),0.0);
}
float l9_16=l9_15;
float l9_17;
if (b.y==0.0)
{
l9_17=b.y;
}
else
{
l9_17=fast::max(1.0-((1.0-a.y)/b.y),0.0);
}
float l9_18=l9_17;
float l9_19;
if (b.z==0.0)
{
l9_19=b.z;
}
else
{
l9_19=fast::max(1.0-((1.0-a.z)/b.z),0.0);
}
return float3(l9_16,l9_18,l9_19);
}
else
{
if ((int(BLEND_MODE_LINEAR_LIGHT_tmp)!=0))
{
float l9_20;
if (b.x<0.5)
{
l9_20=fast::max((a.x+(2.0*b.x))-1.0,0.0);
}
else
{
l9_20=fast::min(a.x+(2.0*(b.x-0.5)),1.0);
}
float l9_21=l9_20;
float l9_22;
if (b.y<0.5)
{
l9_22=fast::max((a.y+(2.0*b.y))-1.0,0.0);
}
else
{
l9_22=fast::min(a.y+(2.0*(b.y-0.5)),1.0);
}
float l9_23=l9_22;
float l9_24;
if (b.z<0.5)
{
l9_24=fast::max((a.z+(2.0*b.z))-1.0,0.0);
}
else
{
l9_24=fast::min(a.z+(2.0*(b.z-0.5)),1.0);
}
return float3(l9_21,l9_23,l9_24);
}
else
{
if ((int(BLEND_MODE_VIVID_LIGHT_tmp)!=0))
{
float l9_25;
if (b.x<0.5)
{
float l9_26;
if ((2.0*b.x)==0.0)
{
l9_26=2.0*b.x;
}
else
{
l9_26=fast::max(1.0-((1.0-a.x)/(2.0*b.x)),0.0);
}
l9_25=l9_26;
}
else
{
float l9_27;
if ((2.0*(b.x-0.5))==1.0)
{
l9_27=2.0*(b.x-0.5);
}
else
{
l9_27=fast::min(a.x/(1.0-(2.0*(b.x-0.5))),1.0);
}
l9_25=l9_27;
}
float l9_28=l9_25;
float l9_29;
if (b.y<0.5)
{
float l9_30;
if ((2.0*b.y)==0.0)
{
l9_30=2.0*b.y;
}
else
{
l9_30=fast::max(1.0-((1.0-a.y)/(2.0*b.y)),0.0);
}
l9_29=l9_30;
}
else
{
float l9_31;
if ((2.0*(b.y-0.5))==1.0)
{
l9_31=2.0*(b.y-0.5);
}
else
{
l9_31=fast::min(a.y/(1.0-(2.0*(b.y-0.5))),1.0);
}
l9_29=l9_31;
}
float l9_32=l9_29;
float l9_33;
if (b.z<0.5)
{
float l9_34;
if ((2.0*b.z)==0.0)
{
l9_34=2.0*b.z;
}
else
{
l9_34=fast::max(1.0-((1.0-a.z)/(2.0*b.z)),0.0);
}
l9_33=l9_34;
}
else
{
float l9_35;
if ((2.0*(b.z-0.5))==1.0)
{
l9_35=2.0*(b.z-0.5);
}
else
{
l9_35=fast::min(a.z/(1.0-(2.0*(b.z-0.5))),1.0);
}
l9_33=l9_35;
}
return float3(l9_28,l9_32,l9_33);
}
else
{
if ((int(BLEND_MODE_PIN_LIGHT_tmp)!=0))
{
float l9_36;
if (b.x<0.5)
{
l9_36=fast::min(a.x,2.0*b.x);
}
else
{
l9_36=fast::max(a.x,2.0*(b.x-0.5));
}
float l9_37=l9_36;
float l9_38;
if (b.y<0.5)
{
l9_38=fast::min(a.y,2.0*b.y);
}
else
{
l9_38=fast::max(a.y,2.0*(b.y-0.5));
}
float l9_39=l9_38;
float l9_40;
if (b.z<0.5)
{
l9_40=fast::min(a.z,2.0*b.z);
}
else
{
l9_40=fast::max(a.z,2.0*(b.z-0.5));
}
return float3(l9_37,l9_39,l9_40);
}
else
{
if ((int(BLEND_MODE_HARD_MIX_tmp)!=0))
{
float l9_41;
if (b.x<0.5)
{
float l9_42;
if ((2.0*b.x)==0.0)
{
l9_42=2.0*b.x;
}
else
{
l9_42=fast::max(1.0-((1.0-a.x)/(2.0*b.x)),0.0);
}
l9_41=l9_42;
}
else
{
float l9_43;
if ((2.0*(b.x-0.5))==1.0)
{
l9_43=2.0*(b.x-0.5);
}
else
{
l9_43=fast::min(a.x/(1.0-(2.0*(b.x-0.5))),1.0);
}
l9_41=l9_43;
}
float l9_44=l9_41;
float l9_45;
if (b.y<0.5)
{
float l9_46;
if ((2.0*b.y)==0.0)
{
l9_46=2.0*b.y;
}
else
{
l9_46=fast::max(1.0-((1.0-a.y)/(2.0*b.y)),0.0);
}
l9_45=l9_46;
}
else
{
float l9_47;
if ((2.0*(b.y-0.5))==1.0)
{
l9_47=2.0*(b.y-0.5);
}
else
{
l9_47=fast::min(a.y/(1.0-(2.0*(b.y-0.5))),1.0);
}
l9_45=l9_47;
}
float l9_48=l9_45;
float l9_49;
if (b.z<0.5)
{
float l9_50;
if ((2.0*b.z)==0.0)
{
l9_50=2.0*b.z;
}
else
{
l9_50=fast::max(1.0-((1.0-a.z)/(2.0*b.z)),0.0);
}
l9_49=l9_50;
}
else
{
float l9_51;
if ((2.0*(b.z-0.5))==1.0)
{
l9_51=2.0*(b.z-0.5);
}
else
{
l9_51=fast::min(a.z/(1.0-(2.0*(b.z-0.5))),1.0);
}
l9_49=l9_51;
}
return float3((l9_44<0.5) ? 0.0 : 1.0,(l9_48<0.5) ? 0.0 : 1.0,(l9_49<0.5) ? 0.0 : 1.0);
}
else
{
if ((int(BLEND_MODE_HARD_REFLECT_tmp)!=0))
{
float l9_52;
if (b.x==1.0)
{
l9_52=b.x;
}
else
{
l9_52=fast::min((a.x*a.x)/(1.0-b.x),1.0);
}
float l9_53=l9_52;
float l9_54;
if (b.y==1.0)
{
l9_54=b.y;
}
else
{
l9_54=fast::min((a.y*a.y)/(1.0-b.y),1.0);
}
float l9_55=l9_54;
float l9_56;
if (b.z==1.0)
{
l9_56=b.z;
}
else
{
l9_56=fast::min((a.z*a.z)/(1.0-b.z),1.0);
}
return float3(l9_53,l9_55,l9_56);
}
else
{
if ((int(BLEND_MODE_HARD_GLOW_tmp)!=0))
{
float l9_57;
if (a.x==1.0)
{
l9_57=a.x;
}
else
{
l9_57=fast::min((b.x*b.x)/(1.0-a.x),1.0);
}
float l9_58=l9_57;
float l9_59;
if (a.y==1.0)
{
l9_59=a.y;
}
else
{
l9_59=fast::min((b.y*b.y)/(1.0-a.y),1.0);
}
float l9_60=l9_59;
float l9_61;
if (a.z==1.0)
{
l9_61=a.z;
}
else
{
l9_61=fast::min((b.z*b.z)/(1.0-a.z),1.0);
}
return float3(l9_58,l9_60,l9_61);
}
else
{
if ((int(BLEND_MODE_HARD_PHOENIX_tmp)!=0))
{
return (fast::min(a,b)-fast::max(a,b))+float3(1.0);
}
else
{
if ((int(BLEND_MODE_HUE_tmp)!=0))
{
float3 param=a;
float3 param_1=b;
float3 l9_62=param;
float3 l9_63=l9_62;
float4 l9_64;
if (l9_63.y<l9_63.z)
{
l9_64=float4(l9_63.zy,-1.0,0.66666669);
}
else
{
l9_64=float4(l9_63.yz,0.0,-0.33333334);
}
float4 l9_65=l9_64;
float4 l9_66;
if (l9_63.x<l9_65.x)
{
l9_66=float4(l9_65.xyw,l9_63.x);
}
else
{
l9_66=float4(l9_63.x,l9_65.yzx);
}
float4 l9_67=l9_66;
float l9_68=l9_67.x-fast::min(l9_67.w,l9_67.y);
float l9_69=abs(((l9_67.w-l9_67.y)/((6.0*l9_68)+1e-07))+l9_67.z);
float l9_70=l9_67.x;
float3 l9_71=float3(l9_69,l9_68,l9_70);
float3 l9_72=l9_71;
float l9_73=l9_72.z-(l9_72.y*0.5);
float l9_74=l9_72.y/((1.0-abs((2.0*l9_73)-1.0))+1e-07);
float3 l9_75=float3(l9_72.x,l9_74,l9_73);
float3 l9_76=l9_75;
float3 l9_77=param_1;
float3 l9_78=l9_77;
float4 l9_79;
if (l9_78.y<l9_78.z)
{
l9_79=float4(l9_78.zy,-1.0,0.66666669);
}
else
{
l9_79=float4(l9_78.yz,0.0,-0.33333334);
}
float4 l9_80=l9_79;
float4 l9_81;
if (l9_78.x<l9_80.x)
{
l9_81=float4(l9_80.xyw,l9_78.x);
}
else
{
l9_81=float4(l9_78.x,l9_80.yzx);
}
float4 l9_82=l9_81;
float l9_83=l9_82.x-fast::min(l9_82.w,l9_82.y);
float l9_84=abs(((l9_82.w-l9_82.y)/((6.0*l9_83)+1e-07))+l9_82.z);
float l9_85=l9_82.x;
float3 l9_86=float3(l9_84,l9_83,l9_85);
float3 l9_87=l9_86;
float l9_88=l9_87.z-(l9_87.y*0.5);
float l9_89=l9_87.y/((1.0-abs((2.0*l9_88)-1.0))+1e-07);
float3 l9_90=float3(l9_87.x,l9_89,l9_88);
float3 l9_91=float3(l9_90.x,l9_76.y,l9_76.z);
float l9_92=l9_91.x;
float l9_93=abs((6.0*l9_92)-3.0)-1.0;
float l9_94=2.0-abs((6.0*l9_92)-2.0);
float l9_95=2.0-abs((6.0*l9_92)-4.0);
float3 l9_96=fast::clamp(float3(l9_93,l9_94,l9_95),float3(0.0),float3(1.0));
float3 l9_97=l9_96;
float l9_98=(1.0-abs((2.0*l9_91.z)-1.0))*l9_91.y;
l9_97=((l9_97-float3(0.5))*l9_98)+float3(l9_91.z);
float3 l9_99=l9_97;
float3 l9_100=l9_99;
return l9_100;
}
else
{
if ((int(BLEND_MODE_SATURATION_tmp)!=0))
{
float3 param_2=a;
float3 param_3=b;
float3 l9_101=param_2;
float3 l9_102=l9_101;
float4 l9_103;
if (l9_102.y<l9_102.z)
{
l9_103=float4(l9_102.zy,-1.0,0.66666669);
}
else
{
l9_103=float4(l9_102.yz,0.0,-0.33333334);
}
float4 l9_104=l9_103;
float4 l9_105;
if (l9_102.x<l9_104.x)
{
l9_105=float4(l9_104.xyw,l9_102.x);
}
else
{
l9_105=float4(l9_102.x,l9_104.yzx);
}
float4 l9_106=l9_105;
float l9_107=l9_106.x-fast::min(l9_106.w,l9_106.y);
float l9_108=abs(((l9_106.w-l9_106.y)/((6.0*l9_107)+1e-07))+l9_106.z);
float l9_109=l9_106.x;
float3 l9_110=float3(l9_108,l9_107,l9_109);
float3 l9_111=l9_110;
float l9_112=l9_111.z-(l9_111.y*0.5);
float l9_113=l9_111.y/((1.0-abs((2.0*l9_112)-1.0))+1e-07);
float3 l9_114=float3(l9_111.x,l9_113,l9_112);
float3 l9_115=l9_114;
float l9_116=l9_115.x;
float3 l9_117=param_3;
float3 l9_118=l9_117;
float4 l9_119;
if (l9_118.y<l9_118.z)
{
l9_119=float4(l9_118.zy,-1.0,0.66666669);
}
else
{
l9_119=float4(l9_118.yz,0.0,-0.33333334);
}
float4 l9_120=l9_119;
float4 l9_121;
if (l9_118.x<l9_120.x)
{
l9_121=float4(l9_120.xyw,l9_118.x);
}
else
{
l9_121=float4(l9_118.x,l9_120.yzx);
}
float4 l9_122=l9_121;
float l9_123=l9_122.x-fast::min(l9_122.w,l9_122.y);
float l9_124=abs(((l9_122.w-l9_122.y)/((6.0*l9_123)+1e-07))+l9_122.z);
float l9_125=l9_122.x;
float3 l9_126=float3(l9_124,l9_123,l9_125);
float3 l9_127=l9_126;
float l9_128=l9_127.z-(l9_127.y*0.5);
float l9_129=l9_127.y/((1.0-abs((2.0*l9_128)-1.0))+1e-07);
float3 l9_130=float3(l9_127.x,l9_129,l9_128);
float3 l9_131=float3(l9_116,l9_130.y,l9_115.z);
float l9_132=l9_131.x;
float l9_133=abs((6.0*l9_132)-3.0)-1.0;
float l9_134=2.0-abs((6.0*l9_132)-2.0);
float l9_135=2.0-abs((6.0*l9_132)-4.0);
float3 l9_136=fast::clamp(float3(l9_133,l9_134,l9_135),float3(0.0),float3(1.0));
float3 l9_137=l9_136;
float l9_138=(1.0-abs((2.0*l9_131.z)-1.0))*l9_131.y;
l9_137=((l9_137-float3(0.5))*l9_138)+float3(l9_131.z);
float3 l9_139=l9_137;
float3 l9_140=l9_139;
return l9_140;
}
else
{
if ((int(BLEND_MODE_COLOR_tmp)!=0))
{
float3 param_4=a;
float3 param_5=b;
float3 l9_141=param_5;
float3 l9_142=l9_141;
float4 l9_143;
if (l9_142.y<l9_142.z)
{
l9_143=float4(l9_142.zy,-1.0,0.66666669);
}
else
{
l9_143=float4(l9_142.yz,0.0,-0.33333334);
}
float4 l9_144=l9_143;
float4 l9_145;
if (l9_142.x<l9_144.x)
{
l9_145=float4(l9_144.xyw,l9_142.x);
}
else
{
l9_145=float4(l9_142.x,l9_144.yzx);
}
float4 l9_146=l9_145;
float l9_147=l9_146.x-fast::min(l9_146.w,l9_146.y);
float l9_148=abs(((l9_146.w-l9_146.y)/((6.0*l9_147)+1e-07))+l9_146.z);
float l9_149=l9_146.x;
float3 l9_150=float3(l9_148,l9_147,l9_149);
float3 l9_151=l9_150;
float l9_152=l9_151.z-(l9_151.y*0.5);
float l9_153=l9_151.y/((1.0-abs((2.0*l9_152)-1.0))+1e-07);
float3 l9_154=float3(l9_151.x,l9_153,l9_152);
float3 l9_155=l9_154;
float l9_156=l9_155.x;
float l9_157=l9_155.y;
float3 l9_158=param_4;
float3 l9_159=l9_158;
float4 l9_160;
if (l9_159.y<l9_159.z)
{
l9_160=float4(l9_159.zy,-1.0,0.66666669);
}
else
{
l9_160=float4(l9_159.yz,0.0,-0.33333334);
}
float4 l9_161=l9_160;
float4 l9_162;
if (l9_159.x<l9_161.x)
{
l9_162=float4(l9_161.xyw,l9_159.x);
}
else
{
l9_162=float4(l9_159.x,l9_161.yzx);
}
float4 l9_163=l9_162;
float l9_164=l9_163.x-fast::min(l9_163.w,l9_163.y);
float l9_165=abs(((l9_163.w-l9_163.y)/((6.0*l9_164)+1e-07))+l9_163.z);
float l9_166=l9_163.x;
float3 l9_167=float3(l9_165,l9_164,l9_166);
float3 l9_168=l9_167;
float l9_169=l9_168.z-(l9_168.y*0.5);
float l9_170=l9_168.y/((1.0-abs((2.0*l9_169)-1.0))+1e-07);
float3 l9_171=float3(l9_168.x,l9_170,l9_169);
float3 l9_172=float3(l9_156,l9_157,l9_171.z);
float l9_173=l9_172.x;
float l9_174=abs((6.0*l9_173)-3.0)-1.0;
float l9_175=2.0-abs((6.0*l9_173)-2.0);
float l9_176=2.0-abs((6.0*l9_173)-4.0);
float3 l9_177=fast::clamp(float3(l9_174,l9_175,l9_176),float3(0.0),float3(1.0));
float3 l9_178=l9_177;
float l9_179=(1.0-abs((2.0*l9_172.z)-1.0))*l9_172.y;
l9_178=((l9_178-float3(0.5))*l9_179)+float3(l9_172.z);
float3 l9_180=l9_178;
float3 l9_181=l9_180;
return l9_181;
}
else
{
if ((int(BLEND_MODE_LUMINOSITY_tmp)!=0))
{
float3 param_6=a;
float3 param_7=b;
float3 l9_182=param_6;
float3 l9_183=l9_182;
float4 l9_184;
if (l9_183.y<l9_183.z)
{
l9_184=float4(l9_183.zy,-1.0,0.66666669);
}
else
{
l9_184=float4(l9_183.yz,0.0,-0.33333334);
}
float4 l9_185=l9_184;
float4 l9_186;
if (l9_183.x<l9_185.x)
{
l9_186=float4(l9_185.xyw,l9_183.x);
}
else
{
l9_186=float4(l9_183.x,l9_185.yzx);
}
float4 l9_187=l9_186;
float l9_188=l9_187.x-fast::min(l9_187.w,l9_187.y);
float l9_189=abs(((l9_187.w-l9_187.y)/((6.0*l9_188)+1e-07))+l9_187.z);
float l9_190=l9_187.x;
float3 l9_191=float3(l9_189,l9_188,l9_190);
float3 l9_192=l9_191;
float l9_193=l9_192.z-(l9_192.y*0.5);
float l9_194=l9_192.y/((1.0-abs((2.0*l9_193)-1.0))+1e-07);
float3 l9_195=float3(l9_192.x,l9_194,l9_193);
float3 l9_196=l9_195;
float l9_197=l9_196.x;
float l9_198=l9_196.y;
float3 l9_199=param_7;
float3 l9_200=l9_199;
float4 l9_201;
if (l9_200.y<l9_200.z)
{
l9_201=float4(l9_200.zy,-1.0,0.66666669);
}
else
{
l9_201=float4(l9_200.yz,0.0,-0.33333334);
}
float4 l9_202=l9_201;
float4 l9_203;
if (l9_200.x<l9_202.x)
{
l9_203=float4(l9_202.xyw,l9_200.x);
}
else
{
l9_203=float4(l9_200.x,l9_202.yzx);
}
float4 l9_204=l9_203;
float l9_205=l9_204.x-fast::min(l9_204.w,l9_204.y);
float l9_206=abs(((l9_204.w-l9_204.y)/((6.0*l9_205)+1e-07))+l9_204.z);
float l9_207=l9_204.x;
float3 l9_208=float3(l9_206,l9_205,l9_207);
float3 l9_209=l9_208;
float l9_210=l9_209.z-(l9_209.y*0.5);
float l9_211=l9_209.y/((1.0-abs((2.0*l9_210)-1.0))+1e-07);
float3 l9_212=float3(l9_209.x,l9_211,l9_210);
float3 l9_213=float3(l9_197,l9_198,l9_212.z);
float l9_214=l9_213.x;
float l9_215=abs((6.0*l9_214)-3.0)-1.0;
float l9_216=2.0-abs((6.0*l9_214)-2.0);
float l9_217=2.0-abs((6.0*l9_214)-4.0);
float3 l9_218=fast::clamp(float3(l9_215,l9_216,l9_217),float3(0.0),float3(1.0));
float3 l9_219=l9_218;
float l9_220=(1.0-abs((2.0*l9_213.z)-1.0))*l9_213.y;
l9_219=((l9_219-float3(0.5))*l9_220)+float3(l9_213.z);
float3 l9_221=l9_219;
float3 l9_222=l9_221;
return l9_222;
}
else
{
float3 param_8=a;
float3 param_9=b;
float3 l9_223=param_8;
float l9_224=((0.29899999*l9_223.x)+(0.58700001*l9_223.y))+(0.114*l9_223.z);
float l9_225=l9_224;
float l9_226=1.0;
float l9_227=pow(l9_225,1.0/UserUniforms.correctedIntensity);
int l9_228;
if ((int(intensityTextureHasSwappedViews_tmp)!=0))
{
int l9_229=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_229=0;
}
else
{
l9_229=varStereoViewID;
}
int l9_230=l9_229;
l9_228=1-l9_230;
}
else
{
int l9_231=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_231=0;
}
else
{
l9_231=varStereoViewID;
}
int l9_232=l9_231;
l9_228=l9_232;
}
int l9_233=l9_228;
int l9_234=intensityTextureLayout_tmp;
int l9_235=l9_233;
float2 l9_236=float2(l9_227,0.5);
bool l9_237=(int(SC_USE_UV_TRANSFORM_intensityTexture_tmp)!=0);
float3x3 l9_238=UserUniforms.intensityTextureTransform;
int2 l9_239=int2(SC_SOFTWARE_WRAP_MODE_U_intensityTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_intensityTexture_tmp);
bool l9_240=(int(SC_USE_UV_MIN_MAX_intensityTexture_tmp)!=0);
float4 l9_241=UserUniforms.intensityTextureUvMinMax;
bool l9_242=(int(SC_USE_CLAMP_TO_BORDER_intensityTexture_tmp)!=0);
float4 l9_243=UserUniforms.intensityTextureBorderColor;
float l9_244=0.0;
bool l9_245=l9_242&&(!l9_240);
float l9_246=1.0;
float l9_247=l9_236.x;
int l9_248=l9_239.x;
if (l9_248==1)
{
l9_247=fract(l9_247);
}
else
{
if (l9_248==2)
{
float l9_249=fract(l9_247);
float l9_250=l9_247-l9_249;
float l9_251=step(0.25,fract(l9_250*0.5));
l9_247=mix(l9_249,1.0-l9_249,fast::clamp(l9_251,0.0,1.0));
}
}
l9_236.x=l9_247;
float l9_252=l9_236.y;
int l9_253=l9_239.y;
if (l9_253==1)
{
l9_252=fract(l9_252);
}
else
{
if (l9_253==2)
{
float l9_254=fract(l9_252);
float l9_255=l9_252-l9_254;
float l9_256=step(0.25,fract(l9_255*0.5));
l9_252=mix(l9_254,1.0-l9_254,fast::clamp(l9_256,0.0,1.0));
}
}
l9_236.y=l9_252;
if (l9_240)
{
bool l9_257=l9_242;
bool l9_258;
if (l9_257)
{
l9_258=l9_239.x==3;
}
else
{
l9_258=l9_257;
}
float l9_259=l9_236.x;
float l9_260=l9_241.x;
float l9_261=l9_241.z;
bool l9_262=l9_258;
float l9_263=l9_246;
float l9_264=fast::clamp(l9_259,l9_260,l9_261);
float l9_265=step(abs(l9_259-l9_264),9.9999997e-06);
l9_263*=(l9_265+((1.0-float(l9_262))*(1.0-l9_265)));
l9_259=l9_264;
l9_236.x=l9_259;
l9_246=l9_263;
bool l9_266=l9_242;
bool l9_267;
if (l9_266)
{
l9_267=l9_239.y==3;
}
else
{
l9_267=l9_266;
}
float l9_268=l9_236.y;
float l9_269=l9_241.y;
float l9_270=l9_241.w;
bool l9_271=l9_267;
float l9_272=l9_246;
float l9_273=fast::clamp(l9_268,l9_269,l9_270);
float l9_274=step(abs(l9_268-l9_273),9.9999997e-06);
l9_272*=(l9_274+((1.0-float(l9_271))*(1.0-l9_274)));
l9_268=l9_273;
l9_236.y=l9_268;
l9_246=l9_272;
}
float2 l9_275=l9_236;
bool l9_276=l9_237;
float3x3 l9_277=l9_238;
if (l9_276)
{
l9_275=float2((l9_277*float3(l9_275,1.0)).xy);
}
float2 l9_278=l9_275;
l9_236=l9_278;
float l9_279=l9_236.x;
int l9_280=l9_239.x;
bool l9_281=l9_245;
float l9_282=l9_246;
if ((l9_280==0)||(l9_280==3))
{
float l9_283=l9_279;
float l9_284=0.0;
float l9_285=1.0;
bool l9_286=l9_281;
float l9_287=l9_282;
float l9_288=fast::clamp(l9_283,l9_284,l9_285);
float l9_289=step(abs(l9_283-l9_288),9.9999997e-06);
l9_287*=(l9_289+((1.0-float(l9_286))*(1.0-l9_289)));
l9_283=l9_288;
l9_279=l9_283;
l9_282=l9_287;
}
l9_236.x=l9_279;
l9_246=l9_282;
float l9_290=l9_236.y;
int l9_291=l9_239.y;
bool l9_292=l9_245;
float l9_293=l9_246;
if ((l9_291==0)||(l9_291==3))
{
float l9_294=l9_290;
float l9_295=0.0;
float l9_296=1.0;
bool l9_297=l9_292;
float l9_298=l9_293;
float l9_299=fast::clamp(l9_294,l9_295,l9_296);
float l9_300=step(abs(l9_294-l9_299),9.9999997e-06);
l9_298*=(l9_300+((1.0-float(l9_297))*(1.0-l9_300)));
l9_294=l9_299;
l9_290=l9_294;
l9_293=l9_298;
}
l9_236.y=l9_290;
l9_246=l9_293;
float2 l9_301=l9_236;
int l9_302=l9_234;
int l9_303=l9_235;
float l9_304=l9_244;
float2 l9_305=l9_301;
int l9_306=l9_302;
int l9_307=l9_303;
float3 l9_308=float3(0.0);
if (l9_306==0)
{
l9_308=float3(l9_305,0.0);
}
else
{
if (l9_306==1)
{
l9_308=float3(l9_305.x,(l9_305.y*0.5)+(0.5-(float(l9_307)*0.5)),0.0);
}
else
{
l9_308=float3(l9_305,float(l9_307));
}
}
float3 l9_309=l9_308;
float3 l9_310=l9_309;
float4 l9_311=intensityTexture.sample(intensityTextureSmpSC,l9_310.xy,bias(l9_304));
float4 l9_312=l9_311;
if (l9_242)
{
l9_312=mix(l9_243,l9_312,float4(l9_246));
}
float4 l9_313=l9_312;
float3 l9_314=l9_313.xyz;
float3 l9_315=l9_314;
float l9_316=16.0;
float l9_317=((((l9_315.x*256.0)+l9_315.y)+(l9_315.z/256.0))/257.00391)*l9_316;
float l9_318=l9_317;
if ((int(BLEND_MODE_FORGRAY_tmp)!=0))
{
l9_318=fast::max(l9_318,1.0);
}
if ((int(BLEND_MODE_NOTBRIGHT_tmp)!=0))
{
l9_318=fast::min(l9_318,1.0);
}
float l9_319=l9_225;
float3 l9_320=param_8;
float3 l9_321=param_9;
float l9_322=l9_226;
float l9_323=l9_318;
float3 l9_324=transformColor(l9_319,l9_320,l9_321,l9_322,l9_323);
return l9_324;
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
float4 sc_OutputMotionVectorsIfNeeded(thread const float3& surfacePosWorldSpace,thread const float4& finalColor,thread int& varStereoViewID,constant userUniformsObj& UserUniforms)
{
if ((int(sc_MotionVectorsPass_tmp)!=0))
{
float3 param=surfacePosWorldSpace;
int l9_0=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_0=0;
}
else
{
l9_0=varStereoViewID;
}
int l9_1=l9_0;
float4 l9_2=UserUniforms.sc_ViewProjectionMatrixArray[l9_1]*float4(param,1.0);
float2 l9_3=l9_2.xy/float2(l9_2.w);
l9_2=float4(l9_3.x,l9_3.y,l9_2.z,l9_2.w);
int l9_4=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_4=0;
}
else
{
l9_4=varStereoViewID;
}
int l9_5=l9_4;
float4 l9_6=((UserUniforms.sc_PrevFrameViewProjectionMatrixArray[l9_5]*UserUniforms.sc_PrevFrameModelMatrix)*UserUniforms.sc_ModelMatrixInverse)*float4(param,1.0);
float2 l9_7=l9_6.xy/float2(l9_6.w);
l9_6=float4(l9_7.x,l9_7.y,l9_6.z,l9_6.w);
float2 l9_8=(l9_2.xy-l9_6.xy)*0.5;
float2 l9_9=l9_8;
float l9_10=(l9_9.x*5.0)+0.5;
float l9_11=floor(l9_10*65535.0);
float l9_12=floor(l9_11*0.00390625);
float2 l9_13=float2(l9_12/255.0,(l9_11-(l9_12*256.0))/255.0);
float l9_14=(l9_9.y*5.0)+0.5;
float l9_15=floor(l9_14*65535.0);
float l9_16=floor(l9_15*0.00390625);
float2 l9_17=float2(l9_16/255.0,(l9_15-(l9_16*256.0))/255.0);
float4 l9_18=float4(l9_13,l9_17);
float4 l9_19=l9_18;
return l9_19;
}
else
{
return finalColor;
}
}
fragment main_frag_out main_frag(main_frag_in in [[stage_in]],constant sc_Set0& sc_set0 [[buffer(0)]],float4 gl_FragCoord [[position]])
{
main_frag_out out={};
if ((int(sc_DepthOnly_tmp)!=0))
{
return out;
}
if ((sc_StereoRenderingMode_tmp==1)&&(sc_StereoRendering_IsClipDistanceEnabled_tmp==0))
{
if (in.varClipDistance<0.0)
{
discard_fragment();
}
}
ssPreviewInfo PreviewInfo;
PreviewInfo.Color=in.PreviewVertexColor;
PreviewInfo.Saved=((in.PreviewVertexSaved*1.0)!=0.0) ? true : false;
float4 FinalColor=float4(1.0);
ssGlobals Globals;
Globals.gTimeElapsed=(*sc_set0.UserUniforms).sc_Time.x;
Globals.gTimeDelta=(*sc_set0.UserUniforms).sc_Time.y;
if ((*sc_set0.UserUniforms).sc_RayTracingCasterConfiguration.x!=0u)
{
float4 l9_0=gl_FragCoord;
int2 param=int2(l9_0.xy);
sc_RayTracingHitPayload rhp=sc_RayTracingEvaluateHitPayload(param,sc_set0.sc_RayTracingRayDirection,sc_set0.sc_RayTracingRayDirectionSmpSC,(*sc_set0.UserUniforms),(*sc_set0.sc_RayTracingCasterVertexBuffer),(*sc_set0.sc_RayTracingCasterNonAnimatedVertexBuffer),(*sc_set0.sc_RayTracingCasterIndexBuffer),sc_set0.sc_RayTracingHitCasterIdAndBarycentric,sc_set0.sc_RayTracingHitCasterIdAndBarycentricSmpSC);
if (rhp.id.x!=((*sc_set0.UserUniforms).sc_RayTracingCasterConfiguration.y&65535u))
{
return out;
}
Globals.Surface_UVCoord0=rhp.uv0;
Globals.Surface_UVCoord1=rhp.uv1;
int l9_1=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1=0;
}
else
{
l9_1=in.varStereoViewID;
}
int l9_2=l9_1;
float4 emitterPositionCS=(*sc_set0.UserUniforms).sc_ViewProjectionMatrixArray[l9_2]*float4(rhp.positionWS,1.0);
Globals.gScreenCoord=((emitterPositionCS.xy/float2(emitterPositionCS.w))*0.5)+float2(0.5);
Globals.VertexTangent_WorldSpace=rhp.tangentWS.xyz;
Globals.VertexNormal_WorldSpace=rhp.normalWS;
Globals.VertexBinormal_WorldSpace=cross(Globals.VertexNormal_WorldSpace,Globals.VertexTangent_WorldSpace)*rhp.tangentWS.w;
Globals.SurfacePosition_WorldSpace=rhp.positionWS;
Globals.ViewDirWS=rhp.viewDirWS;
Globals.VertexColor=rhp.color;
}
else
{
Globals.Surface_UVCoord0=in.varPackedTex.xy;
Globals.Surface_UVCoord1=in.varPackedTex.zw;
float4 l9_3=gl_FragCoord;
float2 l9_4=l9_3.xy*(*sc_set0.UserUniforms).sc_CurrentRenderTargetDims.zw;
float2 l9_5=l9_4;
float2 l9_6=float2(0.0);
if (sc_StereoRenderingMode_tmp==1)
{
int l9_7=1;
int l9_8=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_8=0;
}
else
{
l9_8=in.varStereoViewID;
}
int l9_9=l9_8;
int l9_10=l9_9;
float3 l9_11=float3(l9_5,0.0);
int l9_12=l9_7;
int l9_13=l9_10;
if (l9_12==1)
{
l9_11.y=((2.0*l9_11.y)+float(l9_13))-1.0;
}
float2 l9_14=l9_11.xy;
l9_6=l9_14;
}
else
{
l9_6=l9_5;
}
float2 l9_15=l9_6;
float2 l9_16=l9_15;
Globals.gScreenCoord=l9_16;
Globals.VertexTangent_WorldSpace=normalize(in.varTangent.xyz);
Globals.VertexNormal_WorldSpace=normalize(in.varNormal);
Globals.VertexBinormal_WorldSpace=cross(Globals.VertexNormal_WorldSpace,Globals.VertexTangent_WorldSpace)*in.varTangent.w;
Globals.SurfacePosition_WorldSpace=in.varPos;
Globals.ViewDirWS=normalize((*sc_set0.UserUniforms).sc_Camera.position-Globals.SurfacePosition_WorldSpace);
Globals.VertexColor=in.varColor;
}
float4 Output_N1=float4(0.0);
float4 param_1=(*sc_set0.UserUniforms).Tweak_N1;
Output_N1=param_1;
float3 Result_N52=float3(0.0);
float3 param_2=float3(0.0);
float3 param_3=(*sc_set0.UserUniforms).Port_Default_N052;
ssGlobals param_5=Globals;
float3 param_4;
if ((int(Tweak_N28_tmp)!=0))
{
float4 l9_17=float4(0.0);
float4 l9_18=float4(0.0);
float4 l9_19=float4(0.0);
float4 l9_20=float4(0.0);
float4 l9_21=float4(0.0);
ssGlobals l9_22=param_5;
float4 l9_23;
if (NODE_33_DROPLIST_ITEM_tmp==0)
{
float2 l9_24=float2(0.0);
l9_24=l9_22.Surface_UVCoord0;
l9_18=float4(l9_24,0.0,0.0);
l9_23=l9_18;
}
else
{
if (NODE_33_DROPLIST_ITEM_tmp==1)
{
float2 l9_25=float2(0.0);
l9_25=l9_22.Surface_UVCoord1;
l9_19=float4(l9_25,0.0,0.0);
l9_23=l9_19;
}
else
{
if (NODE_33_DROPLIST_ITEM_tmp==2)
{
float2 l9_26=float2(0.0);
l9_26=l9_22.gScreenCoord;
l9_20=float4(l9_26,0.0,0.0);
l9_23=l9_20;
}
else
{
float4 l9_27=float4(0.0);
float4 l9_28=float4(0.0);
float4 l9_29=float4(0.0);
float4 l9_30=float4(0.0);
float4 l9_31=float4(0.0);
ssGlobals l9_32=l9_22;
float4 l9_33;
if (Tweak_N76_tmp==0)
{
float2 l9_34=float2(0.0);
l9_34=l9_32.Surface_UVCoord0;
l9_28=float4(l9_34,0.0,0.0);
l9_33=l9_28;
}
else
{
if (Tweak_N76_tmp==1)
{
float2 l9_35=float2(0.0);
l9_35=l9_32.Surface_UVCoord1;
l9_29=float4(l9_35,0.0,0.0);
l9_33=l9_29;
}
else
{
if (Tweak_N76_tmp==2)
{
float2 l9_36=float2(0.0);
l9_36=l9_32.gScreenCoord;
l9_30=float4(l9_36,0.0,0.0);
l9_33=l9_30;
}
else
{
float2 l9_37=float2(0.0);
l9_37=l9_32.Surface_UVCoord0;
l9_31=float4(l9_37,0.0,0.0);
l9_33=l9_31;
}
}
}
l9_27=l9_33;
float4 l9_38=float4(0.0);
l9_38=l9_27;
float2 l9_39=float2(0.0);
float2 l9_40=(*sc_set0.UserUniforms).Tweak_N73;
l9_39=l9_40;
float2 l9_41=float2(0.0);
l9_41=l9_39;
float2 l9_42=float2(0.0);
l9_42=((l9_38.xy-(*sc_set0.UserUniforms).Port_Center_N070)*l9_41)+(*sc_set0.UserUniforms).Port_Center_N070;
float2 l9_43=float2(0.0);
float2 l9_44=(*sc_set0.UserUniforms).Tweak_N72;
l9_43=l9_44;
float2 l9_45=float2(0.0);
l9_45=l9_43;
float2 l9_46=float2(0.0);
l9_46=l9_42+l9_45;
float l9_47=0.0;
float l9_48=(*sc_set0.UserUniforms).Tweak_N74;
l9_47=l9_48;
float l9_49=0.0;
l9_49=l9_47;
float2 l9_50=float2(0.0);
float2 l9_51=l9_46;
float l9_52=l9_49;
float2 l9_53=(*sc_set0.UserUniforms).Port_Center_N071;
float l9_54=sin(radians(l9_52));
float l9_55=cos(radians(l9_52));
float2 l9_56=l9_51-l9_53;
l9_56=float2(dot(float2(l9_55,l9_54),l9_56),dot(float2(-l9_54,l9_55),l9_56))+l9_53;
l9_50=l9_56;
float2 l9_57=float2(0.0);
l9_57=l9_50;
l9_21=float4(l9_57,0.0,0.0);
l9_23=l9_21;
}
}
}
l9_17=l9_23;
float4 l9_58=float4(0.0);
int l9_59;
if ((int(Tweak_N0HasSwappedViews_tmp)!=0))
{
int l9_60=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_60=0;
}
else
{
l9_60=in.varStereoViewID;
}
int l9_61=l9_60;
l9_59=1-l9_61;
}
else
{
int l9_62=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_62=0;
}
else
{
l9_62=in.varStereoViewID;
}
int l9_63=l9_62;
l9_59=l9_63;
}
int l9_64=l9_59;
int l9_65=Tweak_N0Layout_tmp;
int l9_66=l9_64;
float2 l9_67=l9_17.xy;
bool l9_68=(int(SC_USE_UV_TRANSFORM_Tweak_N0_tmp)!=0);
float3x3 l9_69=(*sc_set0.UserUniforms).Tweak_N0Transform;
int2 l9_70=int2(SC_SOFTWARE_WRAP_MODE_U_Tweak_N0_tmp,SC_SOFTWARE_WRAP_MODE_V_Tweak_N0_tmp);
bool l9_71=(int(SC_USE_UV_MIN_MAX_Tweak_N0_tmp)!=0);
float4 l9_72=(*sc_set0.UserUniforms).Tweak_N0UvMinMax;
bool l9_73=(int(SC_USE_CLAMP_TO_BORDER_Tweak_N0_tmp)!=0);
float4 l9_74=(*sc_set0.UserUniforms).Tweak_N0BorderColor;
float l9_75=0.0;
bool l9_76=l9_73&&(!l9_71);
float l9_77=1.0;
float l9_78=l9_67.x;
int l9_79=l9_70.x;
if (l9_79==1)
{
l9_78=fract(l9_78);
}
else
{
if (l9_79==2)
{
float l9_80=fract(l9_78);
float l9_81=l9_78-l9_80;
float l9_82=step(0.25,fract(l9_81*0.5));
l9_78=mix(l9_80,1.0-l9_80,fast::clamp(l9_82,0.0,1.0));
}
}
l9_67.x=l9_78;
float l9_83=l9_67.y;
int l9_84=l9_70.y;
if (l9_84==1)
{
l9_83=fract(l9_83);
}
else
{
if (l9_84==2)
{
float l9_85=fract(l9_83);
float l9_86=l9_83-l9_85;
float l9_87=step(0.25,fract(l9_86*0.5));
l9_83=mix(l9_85,1.0-l9_85,fast::clamp(l9_87,0.0,1.0));
}
}
l9_67.y=l9_83;
if (l9_71)
{
bool l9_88=l9_73;
bool l9_89;
if (l9_88)
{
l9_89=l9_70.x==3;
}
else
{
l9_89=l9_88;
}
float l9_90=l9_67.x;
float l9_91=l9_72.x;
float l9_92=l9_72.z;
bool l9_93=l9_89;
float l9_94=l9_77;
float l9_95=fast::clamp(l9_90,l9_91,l9_92);
float l9_96=step(abs(l9_90-l9_95),9.9999997e-06);
l9_94*=(l9_96+((1.0-float(l9_93))*(1.0-l9_96)));
l9_90=l9_95;
l9_67.x=l9_90;
l9_77=l9_94;
bool l9_97=l9_73;
bool l9_98;
if (l9_97)
{
l9_98=l9_70.y==3;
}
else
{
l9_98=l9_97;
}
float l9_99=l9_67.y;
float l9_100=l9_72.y;
float l9_101=l9_72.w;
bool l9_102=l9_98;
float l9_103=l9_77;
float l9_104=fast::clamp(l9_99,l9_100,l9_101);
float l9_105=step(abs(l9_99-l9_104),9.9999997e-06);
l9_103*=(l9_105+((1.0-float(l9_102))*(1.0-l9_105)));
l9_99=l9_104;
l9_67.y=l9_99;
l9_77=l9_103;
}
float2 l9_106=l9_67;
bool l9_107=l9_68;
float3x3 l9_108=l9_69;
if (l9_107)
{
l9_106=float2((l9_108*float3(l9_106,1.0)).xy);
}
float2 l9_109=l9_106;
l9_67=l9_109;
float l9_110=l9_67.x;
int l9_111=l9_70.x;
bool l9_112=l9_76;
float l9_113=l9_77;
if ((l9_111==0)||(l9_111==3))
{
float l9_114=l9_110;
float l9_115=0.0;
float l9_116=1.0;
bool l9_117=l9_112;
float l9_118=l9_113;
float l9_119=fast::clamp(l9_114,l9_115,l9_116);
float l9_120=step(abs(l9_114-l9_119),9.9999997e-06);
l9_118*=(l9_120+((1.0-float(l9_117))*(1.0-l9_120)));
l9_114=l9_119;
l9_110=l9_114;
l9_113=l9_118;
}
l9_67.x=l9_110;
l9_77=l9_113;
float l9_121=l9_67.y;
int l9_122=l9_70.y;
bool l9_123=l9_76;
float l9_124=l9_77;
if ((l9_122==0)||(l9_122==3))
{
float l9_125=l9_121;
float l9_126=0.0;
float l9_127=1.0;
bool l9_128=l9_123;
float l9_129=l9_124;
float l9_130=fast::clamp(l9_125,l9_126,l9_127);
float l9_131=step(abs(l9_125-l9_130),9.9999997e-06);
l9_129*=(l9_131+((1.0-float(l9_128))*(1.0-l9_131)));
l9_125=l9_130;
l9_121=l9_125;
l9_124=l9_129;
}
l9_67.y=l9_121;
l9_77=l9_124;
float2 l9_132=l9_67;
int l9_133=l9_65;
int l9_134=l9_66;
float l9_135=l9_75;
float2 l9_136=l9_132;
int l9_137=l9_133;
int l9_138=l9_134;
float3 l9_139=float3(0.0);
if (l9_137==0)
{
l9_139=float3(l9_136,0.0);
}
else
{
if (l9_137==1)
{
l9_139=float3(l9_136.x,(l9_136.y*0.5)+(0.5-(float(l9_138)*0.5)),0.0);
}
else
{
l9_139=float3(l9_136,float(l9_138));
}
}
float3 l9_140=l9_139;
float3 l9_141=l9_140;
float4 l9_142=sc_set0.Tweak_N0.sample(sc_set0.Tweak_N0SmpSC,l9_141.xy,bias(l9_135));
float4 l9_143=l9_142;
if (l9_73)
{
l9_143=mix(l9_74,l9_143,float4(l9_77));
}
float4 l9_144=l9_143;
l9_58=l9_144;
param_2=l9_58.xyz;
param_4=param_2;
}
else
{
param_4=param_3;
}
Result_N52=param_4;
float3 Output_N6=float3(0.0);
Output_N6=Output_N1.xyz*Result_N52;
float4 Result_N23=float4(0.0);
float4 param_6=float4(0.0);
float4 param_7=(*sc_set0.UserUniforms).Port_Default_N023;
ssGlobals param_9=Globals;
float4 param_8;
if ((int(Tweak_N20_tmp)!=0))
{
float l9_145=0.0;
float l9_146=(*sc_set0.UserUniforms).Tweak_N16;
l9_145=l9_146;
float4 l9_147=float4(0.0);
float4 l9_148=(*sc_set0.UserUniforms).Port_Value0_N067;
float4 l9_149=float4(0.0);
float4 l9_150=float4(0.0);
float4 l9_151=(*sc_set0.UserUniforms).Port_Default_N067;
ssGlobals l9_152=param_9;
float4 l9_153;
if (NODE_66_DROPLIST_ITEM_tmp==0)
{
l9_153=l9_148;
}
else
{
if (NODE_66_DROPLIST_ITEM_tmp==1)
{
float4 l9_154=float4(0.0);
float4 l9_155=(*sc_set0.UserUniforms).Tweak_N68;
l9_154=l9_155;
l9_149=l9_154;
l9_153=l9_149;
}
else
{
if (NODE_66_DROPLIST_ITEM_tmp==2)
{
float4 l9_156=float4(0.0);
float4 l9_157=float4(0.0);
float4 l9_158=float4(0.0);
float4 l9_159=float4(0.0);
float4 l9_160=float4(0.0);
ssGlobals l9_161=l9_152;
float4 l9_162;
if (NODE_33_DROPLIST_ITEM_tmp==0)
{
float2 l9_163=float2(0.0);
l9_163=l9_161.Surface_UVCoord0;
l9_157=float4(l9_163,0.0,0.0);
l9_162=l9_157;
}
else
{
if (NODE_33_DROPLIST_ITEM_tmp==1)
{
float2 l9_164=float2(0.0);
l9_164=l9_161.Surface_UVCoord1;
l9_158=float4(l9_164,0.0,0.0);
l9_162=l9_158;
}
else
{
if (NODE_33_DROPLIST_ITEM_tmp==2)
{
float2 l9_165=float2(0.0);
l9_165=l9_161.gScreenCoord;
l9_159=float4(l9_165,0.0,0.0);
l9_162=l9_159;
}
else
{
float4 l9_166=float4(0.0);
float4 l9_167=float4(0.0);
float4 l9_168=float4(0.0);
float4 l9_169=float4(0.0);
float4 l9_170=float4(0.0);
ssGlobals l9_171=l9_161;
float4 l9_172;
if (Tweak_N76_tmp==0)
{
float2 l9_173=float2(0.0);
l9_173=l9_171.Surface_UVCoord0;
l9_167=float4(l9_173,0.0,0.0);
l9_172=l9_167;
}
else
{
if (Tweak_N76_tmp==1)
{
float2 l9_174=float2(0.0);
l9_174=l9_171.Surface_UVCoord1;
l9_168=float4(l9_174,0.0,0.0);
l9_172=l9_168;
}
else
{
if (Tweak_N76_tmp==2)
{
float2 l9_175=float2(0.0);
l9_175=l9_171.gScreenCoord;
l9_169=float4(l9_175,0.0,0.0);
l9_172=l9_169;
}
else
{
float2 l9_176=float2(0.0);
l9_176=l9_171.Surface_UVCoord0;
l9_170=float4(l9_176,0.0,0.0);
l9_172=l9_170;
}
}
}
l9_166=l9_172;
float4 l9_177=float4(0.0);
l9_177=l9_166;
float2 l9_178=float2(0.0);
float2 l9_179=(*sc_set0.UserUniforms).Tweak_N73;
l9_178=l9_179;
float2 l9_180=float2(0.0);
l9_180=l9_178;
float2 l9_181=float2(0.0);
l9_181=((l9_177.xy-(*sc_set0.UserUniforms).Port_Center_N070)*l9_180)+(*sc_set0.UserUniforms).Port_Center_N070;
float2 l9_182=float2(0.0);
float2 l9_183=(*sc_set0.UserUniforms).Tweak_N72;
l9_182=l9_183;
float2 l9_184=float2(0.0);
l9_184=l9_182;
float2 l9_185=float2(0.0);
l9_185=l9_181+l9_184;
float l9_186=0.0;
float l9_187=(*sc_set0.UserUniforms).Tweak_N74;
l9_186=l9_187;
float l9_188=0.0;
l9_188=l9_186;
float2 l9_189=float2(0.0);
float2 l9_190=l9_185;
float l9_191=l9_188;
float2 l9_192=(*sc_set0.UserUniforms).Port_Center_N071;
float l9_193=sin(radians(l9_191));
float l9_194=cos(radians(l9_191));
float2 l9_195=l9_190-l9_192;
l9_195=float2(dot(float2(l9_194,l9_193),l9_195),dot(float2(-l9_193,l9_194),l9_195))+l9_192;
l9_189=l9_195;
float2 l9_196=float2(0.0);
l9_196=l9_189;
l9_160=float4(l9_196,0.0,0.0);
l9_162=l9_160;
}
}
}
l9_156=l9_162;
float4 l9_197=float4(0.0);
int l9_198;
if ((int(Tweak_N0HasSwappedViews_tmp)!=0))
{
int l9_199=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_199=0;
}
else
{
l9_199=in.varStereoViewID;
}
int l9_200=l9_199;
l9_198=1-l9_200;
}
else
{
int l9_201=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_201=0;
}
else
{
l9_201=in.varStereoViewID;
}
int l9_202=l9_201;
l9_198=l9_202;
}
int l9_203=l9_198;
int l9_204=Tweak_N0Layout_tmp;
int l9_205=l9_203;
float2 l9_206=l9_156.xy;
bool l9_207=(int(SC_USE_UV_TRANSFORM_Tweak_N0_tmp)!=0);
float3x3 l9_208=(*sc_set0.UserUniforms).Tweak_N0Transform;
int2 l9_209=int2(SC_SOFTWARE_WRAP_MODE_U_Tweak_N0_tmp,SC_SOFTWARE_WRAP_MODE_V_Tweak_N0_tmp);
bool l9_210=(int(SC_USE_UV_MIN_MAX_Tweak_N0_tmp)!=0);
float4 l9_211=(*sc_set0.UserUniforms).Tweak_N0UvMinMax;
bool l9_212=(int(SC_USE_CLAMP_TO_BORDER_Tweak_N0_tmp)!=0);
float4 l9_213=(*sc_set0.UserUniforms).Tweak_N0BorderColor;
float l9_214=0.0;
bool l9_215=l9_212&&(!l9_210);
float l9_216=1.0;
float l9_217=l9_206.x;
int l9_218=l9_209.x;
if (l9_218==1)
{
l9_217=fract(l9_217);
}
else
{
if (l9_218==2)
{
float l9_219=fract(l9_217);
float l9_220=l9_217-l9_219;
float l9_221=step(0.25,fract(l9_220*0.5));
l9_217=mix(l9_219,1.0-l9_219,fast::clamp(l9_221,0.0,1.0));
}
}
l9_206.x=l9_217;
float l9_222=l9_206.y;
int l9_223=l9_209.y;
if (l9_223==1)
{
l9_222=fract(l9_222);
}
else
{
if (l9_223==2)
{
float l9_224=fract(l9_222);
float l9_225=l9_222-l9_224;
float l9_226=step(0.25,fract(l9_225*0.5));
l9_222=mix(l9_224,1.0-l9_224,fast::clamp(l9_226,0.0,1.0));
}
}
l9_206.y=l9_222;
if (l9_210)
{
bool l9_227=l9_212;
bool l9_228;
if (l9_227)
{
l9_228=l9_209.x==3;
}
else
{
l9_228=l9_227;
}
float l9_229=l9_206.x;
float l9_230=l9_211.x;
float l9_231=l9_211.z;
bool l9_232=l9_228;
float l9_233=l9_216;
float l9_234=fast::clamp(l9_229,l9_230,l9_231);
float l9_235=step(abs(l9_229-l9_234),9.9999997e-06);
l9_233*=(l9_235+((1.0-float(l9_232))*(1.0-l9_235)));
l9_229=l9_234;
l9_206.x=l9_229;
l9_216=l9_233;
bool l9_236=l9_212;
bool l9_237;
if (l9_236)
{
l9_237=l9_209.y==3;
}
else
{
l9_237=l9_236;
}
float l9_238=l9_206.y;
float l9_239=l9_211.y;
float l9_240=l9_211.w;
bool l9_241=l9_237;
float l9_242=l9_216;
float l9_243=fast::clamp(l9_238,l9_239,l9_240);
float l9_244=step(abs(l9_238-l9_243),9.9999997e-06);
l9_242*=(l9_244+((1.0-float(l9_241))*(1.0-l9_244)));
l9_238=l9_243;
l9_206.y=l9_238;
l9_216=l9_242;
}
float2 l9_245=l9_206;
bool l9_246=l9_207;
float3x3 l9_247=l9_208;
if (l9_246)
{
l9_245=float2((l9_247*float3(l9_245,1.0)).xy);
}
float2 l9_248=l9_245;
l9_206=l9_248;
float l9_249=l9_206.x;
int l9_250=l9_209.x;
bool l9_251=l9_215;
float l9_252=l9_216;
if ((l9_250==0)||(l9_250==3))
{
float l9_253=l9_249;
float l9_254=0.0;
float l9_255=1.0;
bool l9_256=l9_251;
float l9_257=l9_252;
float l9_258=fast::clamp(l9_253,l9_254,l9_255);
float l9_259=step(abs(l9_253-l9_258),9.9999997e-06);
l9_257*=(l9_259+((1.0-float(l9_256))*(1.0-l9_259)));
l9_253=l9_258;
l9_249=l9_253;
l9_252=l9_257;
}
l9_206.x=l9_249;
l9_216=l9_252;
float l9_260=l9_206.y;
int l9_261=l9_209.y;
bool l9_262=l9_215;
float l9_263=l9_216;
if ((l9_261==0)||(l9_261==3))
{
float l9_264=l9_260;
float l9_265=0.0;
float l9_266=1.0;
bool l9_267=l9_262;
float l9_268=l9_263;
float l9_269=fast::clamp(l9_264,l9_265,l9_266);
float l9_270=step(abs(l9_264-l9_269),9.9999997e-06);
l9_268*=(l9_270+((1.0-float(l9_267))*(1.0-l9_270)));
l9_264=l9_269;
l9_260=l9_264;
l9_263=l9_268;
}
l9_206.y=l9_260;
l9_216=l9_263;
float2 l9_271=l9_206;
int l9_272=l9_204;
int l9_273=l9_205;
float l9_274=l9_214;
float2 l9_275=l9_271;
int l9_276=l9_272;
int l9_277=l9_273;
float3 l9_278=float3(0.0);
if (l9_276==0)
{
l9_278=float3(l9_275,0.0);
}
else
{
if (l9_276==1)
{
l9_278=float3(l9_275.x,(l9_275.y*0.5)+(0.5-(float(l9_277)*0.5)),0.0);
}
else
{
l9_278=float3(l9_275,float(l9_277));
}
}
float3 l9_279=l9_278;
float3 l9_280=l9_279;
float4 l9_281=sc_set0.Tweak_N0.sample(sc_set0.Tweak_N0SmpSC,l9_280.xy,bias(l9_274));
float4 l9_282=l9_281;
if (l9_212)
{
l9_282=mix(l9_213,l9_282,float4(l9_216));
}
float4 l9_283=l9_282;
l9_197=l9_283;
l9_150=l9_197;
l9_153=l9_150;
}
else
{
l9_153=l9_151;
}
}
}
l9_147=l9_153;
float3 l9_284=float3(0.0);
float3 l9_285=float3(0.0);
float3 l9_286=(*sc_set0.UserUniforms).Port_Default_N065;
ssGlobals l9_287=param_9;
float3 l9_288;
if ((int(Tweak_N64_tmp)!=0))
{
float4 l9_289=float4(0.0);
float4 l9_290=float4(0.0);
float4 l9_291=float4(0.0);
float4 l9_292=float4(0.0);
float4 l9_293=float4(0.0);
ssGlobals l9_294=l9_287;
float4 l9_295;
if (Tweak_N43_tmp==0)
{
float2 l9_296=float2(0.0);
l9_296=l9_294.Surface_UVCoord0;
l9_290=float4(l9_296,0.0,0.0);
l9_295=l9_290;
}
else
{
if (Tweak_N43_tmp==1)
{
float2 l9_297=float2(0.0);
l9_297=l9_294.Surface_UVCoord1;
l9_291=float4(l9_297,0.0,0.0);
l9_295=l9_291;
}
else
{
if (Tweak_N43_tmp==2)
{
float2 l9_298=float2(0.0);
l9_298=l9_294.gScreenCoord;
l9_292=float4(l9_298,0.0,0.0);
l9_295=l9_292;
}
else
{
float4 l9_299=float4(0.0);
float4 l9_300=float4(0.0);
float4 l9_301=float4(0.0);
float4 l9_302=float4(0.0);
float4 l9_303=float4(0.0);
ssGlobals l9_304=l9_294;
float4 l9_305;
if (Tweak_N76_tmp==0)
{
float2 l9_306=float2(0.0);
l9_306=l9_304.Surface_UVCoord0;
l9_300=float4(l9_306,0.0,0.0);
l9_305=l9_300;
}
else
{
if (Tweak_N76_tmp==1)
{
float2 l9_307=float2(0.0);
l9_307=l9_304.Surface_UVCoord1;
l9_301=float4(l9_307,0.0,0.0);
l9_305=l9_301;
}
else
{
if (Tweak_N76_tmp==2)
{
float2 l9_308=float2(0.0);
l9_308=l9_304.gScreenCoord;
l9_302=float4(l9_308,0.0,0.0);
l9_305=l9_302;
}
else
{
float2 l9_309=float2(0.0);
l9_309=l9_304.Surface_UVCoord0;
l9_303=float4(l9_309,0.0,0.0);
l9_305=l9_303;
}
}
}
l9_299=l9_305;
float4 l9_310=float4(0.0);
l9_310=l9_299;
float2 l9_311=float2(0.0);
float2 l9_312=(*sc_set0.UserUniforms).Tweak_N73;
l9_311=l9_312;
float2 l9_313=float2(0.0);
l9_313=l9_311;
float2 l9_314=float2(0.0);
l9_314=((l9_310.xy-(*sc_set0.UserUniforms).Port_Center_N070)*l9_313)+(*sc_set0.UserUniforms).Port_Center_N070;
float2 l9_315=float2(0.0);
float2 l9_316=(*sc_set0.UserUniforms).Tweak_N72;
l9_315=l9_316;
float2 l9_317=float2(0.0);
l9_317=l9_315;
float2 l9_318=float2(0.0);
l9_318=l9_314+l9_317;
float l9_319=0.0;
float l9_320=(*sc_set0.UserUniforms).Tweak_N74;
l9_319=l9_320;
float l9_321=0.0;
l9_321=l9_319;
float2 l9_322=float2(0.0);
float2 l9_323=l9_318;
float l9_324=l9_321;
float2 l9_325=(*sc_set0.UserUniforms).Port_Center_N071;
float l9_326=sin(radians(l9_324));
float l9_327=cos(radians(l9_324));
float2 l9_328=l9_323-l9_325;
l9_328=float2(dot(float2(l9_327,l9_326),l9_328),dot(float2(-l9_326,l9_327),l9_328))+l9_325;
l9_322=l9_328;
float2 l9_329=float2(0.0);
l9_329=l9_322;
l9_293=float4(l9_329,0.0,0.0);
l9_295=l9_293;
}
}
}
l9_289=l9_295;
float4 l9_330=float4(0.0);
int l9_331;
if ((int(Tweak_N18HasSwappedViews_tmp)!=0))
{
int l9_332=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_332=0;
}
else
{
l9_332=in.varStereoViewID;
}
int l9_333=l9_332;
l9_331=1-l9_333;
}
else
{
int l9_334=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_334=0;
}
else
{
l9_334=in.varStereoViewID;
}
int l9_335=l9_334;
l9_331=l9_335;
}
int l9_336=l9_331;
int l9_337=Tweak_N18Layout_tmp;
int l9_338=l9_336;
float2 l9_339=l9_289.xy;
bool l9_340=(int(SC_USE_UV_TRANSFORM_Tweak_N18_tmp)!=0);
float3x3 l9_341=(*sc_set0.UserUniforms).Tweak_N18Transform;
int2 l9_342=int2(SC_SOFTWARE_WRAP_MODE_U_Tweak_N18_tmp,SC_SOFTWARE_WRAP_MODE_V_Tweak_N18_tmp);
bool l9_343=(int(SC_USE_UV_MIN_MAX_Tweak_N18_tmp)!=0);
float4 l9_344=(*sc_set0.UserUniforms).Tweak_N18UvMinMax;
bool l9_345=(int(SC_USE_CLAMP_TO_BORDER_Tweak_N18_tmp)!=0);
float4 l9_346=(*sc_set0.UserUniforms).Tweak_N18BorderColor;
float l9_347=0.0;
bool l9_348=l9_345&&(!l9_343);
float l9_349=1.0;
float l9_350=l9_339.x;
int l9_351=l9_342.x;
if (l9_351==1)
{
l9_350=fract(l9_350);
}
else
{
if (l9_351==2)
{
float l9_352=fract(l9_350);
float l9_353=l9_350-l9_352;
float l9_354=step(0.25,fract(l9_353*0.5));
l9_350=mix(l9_352,1.0-l9_352,fast::clamp(l9_354,0.0,1.0));
}
}
l9_339.x=l9_350;
float l9_355=l9_339.y;
int l9_356=l9_342.y;
if (l9_356==1)
{
l9_355=fract(l9_355);
}
else
{
if (l9_356==2)
{
float l9_357=fract(l9_355);
float l9_358=l9_355-l9_357;
float l9_359=step(0.25,fract(l9_358*0.5));
l9_355=mix(l9_357,1.0-l9_357,fast::clamp(l9_359,0.0,1.0));
}
}
l9_339.y=l9_355;
if (l9_343)
{
bool l9_360=l9_345;
bool l9_361;
if (l9_360)
{
l9_361=l9_342.x==3;
}
else
{
l9_361=l9_360;
}
float l9_362=l9_339.x;
float l9_363=l9_344.x;
float l9_364=l9_344.z;
bool l9_365=l9_361;
float l9_366=l9_349;
float l9_367=fast::clamp(l9_362,l9_363,l9_364);
float l9_368=step(abs(l9_362-l9_367),9.9999997e-06);
l9_366*=(l9_368+((1.0-float(l9_365))*(1.0-l9_368)));
l9_362=l9_367;
l9_339.x=l9_362;
l9_349=l9_366;
bool l9_369=l9_345;
bool l9_370;
if (l9_369)
{
l9_370=l9_342.y==3;
}
else
{
l9_370=l9_369;
}
float l9_371=l9_339.y;
float l9_372=l9_344.y;
float l9_373=l9_344.w;
bool l9_374=l9_370;
float l9_375=l9_349;
float l9_376=fast::clamp(l9_371,l9_372,l9_373);
float l9_377=step(abs(l9_371-l9_376),9.9999997e-06);
l9_375*=(l9_377+((1.0-float(l9_374))*(1.0-l9_377)));
l9_371=l9_376;
l9_339.y=l9_371;
l9_349=l9_375;
}
float2 l9_378=l9_339;
bool l9_379=l9_340;
float3x3 l9_380=l9_341;
if (l9_379)
{
l9_378=float2((l9_380*float3(l9_378,1.0)).xy);
}
float2 l9_381=l9_378;
l9_339=l9_381;
float l9_382=l9_339.x;
int l9_383=l9_342.x;
bool l9_384=l9_348;
float l9_385=l9_349;
if ((l9_383==0)||(l9_383==3))
{
float l9_386=l9_382;
float l9_387=0.0;
float l9_388=1.0;
bool l9_389=l9_384;
float l9_390=l9_385;
float l9_391=fast::clamp(l9_386,l9_387,l9_388);
float l9_392=step(abs(l9_386-l9_391),9.9999997e-06);
l9_390*=(l9_392+((1.0-float(l9_389))*(1.0-l9_392)));
l9_386=l9_391;
l9_382=l9_386;
l9_385=l9_390;
}
l9_339.x=l9_382;
l9_349=l9_385;
float l9_393=l9_339.y;
int l9_394=l9_342.y;
bool l9_395=l9_348;
float l9_396=l9_349;
if ((l9_394==0)||(l9_394==3))
{
float l9_397=l9_393;
float l9_398=0.0;
float l9_399=1.0;
bool l9_400=l9_395;
float l9_401=l9_396;
float l9_402=fast::clamp(l9_397,l9_398,l9_399);
float l9_403=step(abs(l9_397-l9_402),9.9999997e-06);
l9_401*=(l9_403+((1.0-float(l9_400))*(1.0-l9_403)));
l9_397=l9_402;
l9_393=l9_397;
l9_396=l9_401;
}
l9_339.y=l9_393;
l9_349=l9_396;
float2 l9_404=l9_339;
int l9_405=l9_337;
int l9_406=l9_338;
float l9_407=l9_347;
float2 l9_408=l9_404;
int l9_409=l9_405;
int l9_410=l9_406;
float3 l9_411=float3(0.0);
if (l9_409==0)
{
l9_411=float3(l9_408,0.0);
}
else
{
if (l9_409==1)
{
l9_411=float3(l9_408.x,(l9_408.y*0.5)+(0.5-(float(l9_410)*0.5)),0.0);
}
else
{
l9_411=float3(l9_408,float(l9_410));
}
}
float3 l9_412=l9_411;
float3 l9_413=l9_412;
float4 l9_414=sc_set0.Tweak_N18.sample(sc_set0.Tweak_N18SmpSC,l9_413.xy,bias(l9_407));
float4 l9_415=l9_414;
if (l9_345)
{
l9_415=mix(l9_346,l9_415,float4(l9_349));
}
float4 l9_416=l9_415;
l9_330=l9_416;
l9_285=l9_330.xyz;
l9_288=l9_285;
}
else
{
l9_288=l9_286;
}
l9_284=l9_288;
float4 l9_417=float4(0.0);
l9_417=(float4(l9_145)*l9_147)*float4(l9_284,0.0);
float4 l9_418=float4(0.0);
float4 l9_419=l9_417;
float4 l9_420;
if (SC_DEVICE_CLASS_tmp>=2)
{
l9_420=float4(pow(l9_419.x,2.2),pow(l9_419.y,2.2),pow(l9_419.z,2.2),pow(l9_419.w,2.2));
}
else
{
l9_420=l9_419*l9_419;
}
float4 l9_421=l9_420;
l9_418=l9_421;
float4 l9_422=float4(0.0);
float4 l9_423=float4(0.0);
float4 l9_424=float4(0.0);
ssGlobals l9_425=param_9;
float4 l9_426;
if ((int(Tweak_N104_tmp)!=0))
{
float4 l9_427=float4(0.0);
float4 l9_428=float4(0.0);
float4 l9_429=float4(0.0);
ssGlobals l9_430=l9_425;
float4 l9_431;
if ((int(Tweak_N63_tmp)!=0))
{
float4 l9_432=float4(0.0);
float4 l9_433=float4(0.0);
float4 l9_434=float4(0.0);
ssGlobals l9_435=l9_430;
float4 l9_436;
if ((int(Tweak_N10_tmp)!=0))
{
float3 l9_437=float3(0.0);
l9_437=l9_435.VertexTangent_WorldSpace;
float3 l9_438=float3(0.0);
l9_438=l9_435.VertexBinormal_WorldSpace;
float3 l9_439=float3(0.0);
l9_439=l9_435.VertexNormal_WorldSpace;
float3x3 l9_440=float3x3(float3(0.0),float3(0.0),float3(0.0));
l9_440=float3x3(float3(l9_437),float3(l9_438),float3(l9_439));
float4 l9_441=float4(0.0);
float4 l9_442=float4(0.0);
float4 l9_443=float4(0.0);
float4 l9_444=float4(0.0);
float4 l9_445=float4(0.0);
ssGlobals l9_446=l9_435;
float4 l9_447;
if (Tweak_N94_tmp==0)
{
float2 l9_448=float2(0.0);
l9_448=l9_446.Surface_UVCoord0;
l9_442=float4(l9_448,0.0,0.0);
l9_447=l9_442;
}
else
{
if (Tweak_N94_tmp==1)
{
float2 l9_449=float2(0.0);
l9_449=l9_446.Surface_UVCoord1;
l9_443=float4(l9_449,0.0,0.0);
l9_447=l9_443;
}
else
{
if (Tweak_N94_tmp==2)
{
float2 l9_450=float2(0.0);
l9_450=l9_446.gScreenCoord;
l9_444=float4(l9_450,0.0,0.0);
l9_447=l9_444;
}
else
{
float4 l9_451=float4(0.0);
float4 l9_452=float4(0.0);
float4 l9_453=float4(0.0);
float4 l9_454=float4(0.0);
float4 l9_455=float4(0.0);
ssGlobals l9_456=l9_446;
float4 l9_457;
if (Tweak_N76_tmp==0)
{
float2 l9_458=float2(0.0);
l9_458=l9_456.Surface_UVCoord0;
l9_452=float4(l9_458,0.0,0.0);
l9_457=l9_452;
}
else
{
if (Tweak_N76_tmp==1)
{
float2 l9_459=float2(0.0);
l9_459=l9_456.Surface_UVCoord1;
l9_453=float4(l9_459,0.0,0.0);
l9_457=l9_453;
}
else
{
if (Tweak_N76_tmp==2)
{
float2 l9_460=float2(0.0);
l9_460=l9_456.gScreenCoord;
l9_454=float4(l9_460,0.0,0.0);
l9_457=l9_454;
}
else
{
float2 l9_461=float2(0.0);
l9_461=l9_456.Surface_UVCoord0;
l9_455=float4(l9_461,0.0,0.0);
l9_457=l9_455;
}
}
}
l9_451=l9_457;
float4 l9_462=float4(0.0);
l9_462=l9_451;
float2 l9_463=float2(0.0);
float2 l9_464=(*sc_set0.UserUniforms).Tweak_N73;
l9_463=l9_464;
float2 l9_465=float2(0.0);
l9_465=l9_463;
float2 l9_466=float2(0.0);
l9_466=((l9_462.xy-(*sc_set0.UserUniforms).Port_Center_N070)*l9_465)+(*sc_set0.UserUniforms).Port_Center_N070;
float2 l9_467=float2(0.0);
float2 l9_468=(*sc_set0.UserUniforms).Tweak_N72;
l9_467=l9_468;
float2 l9_469=float2(0.0);
l9_469=l9_467;
float2 l9_470=float2(0.0);
l9_470=l9_466+l9_469;
float l9_471=0.0;
float l9_472=(*sc_set0.UserUniforms).Tweak_N74;
l9_471=l9_472;
float l9_473=0.0;
l9_473=l9_471;
float2 l9_474=float2(0.0);
float2 l9_475=l9_470;
float l9_476=l9_473;
float2 l9_477=(*sc_set0.UserUniforms).Port_Center_N071;
float l9_478=sin(radians(l9_476));
float l9_479=cos(radians(l9_476));
float2 l9_480=l9_475-l9_477;
l9_480=float2(dot(float2(l9_479,l9_478),l9_480),dot(float2(-l9_478,l9_479),l9_480))+l9_477;
l9_474=l9_480;
float2 l9_481=float2(0.0);
l9_481=l9_474;
l9_445=float4(l9_481,0.0,0.0);
l9_447=l9_445;
}
}
}
l9_441=l9_447;
float4 l9_482=float4(0.0);
float2 l9_483=l9_441.xy;
int l9_484;
if ((int(Tweak_N12HasSwappedViews_tmp)!=0))
{
int l9_485=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_485=0;
}
else
{
l9_485=in.varStereoViewID;
}
int l9_486=l9_485;
l9_484=1-l9_486;
}
else
{
int l9_487=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_487=0;
}
else
{
l9_487=in.varStereoViewID;
}
int l9_488=l9_487;
l9_484=l9_488;
}
int l9_489=l9_484;
int l9_490=Tweak_N12Layout_tmp;
int l9_491=l9_489;
float2 l9_492=l9_483;
bool l9_493=(int(SC_USE_UV_TRANSFORM_Tweak_N12_tmp)!=0);
float3x3 l9_494=(*sc_set0.UserUniforms).Tweak_N12Transform;
int2 l9_495=int2(SC_SOFTWARE_WRAP_MODE_U_Tweak_N12_tmp,SC_SOFTWARE_WRAP_MODE_V_Tweak_N12_tmp);
bool l9_496=(int(SC_USE_UV_MIN_MAX_Tweak_N12_tmp)!=0);
float4 l9_497=(*sc_set0.UserUniforms).Tweak_N12UvMinMax;
bool l9_498=(int(SC_USE_CLAMP_TO_BORDER_Tweak_N12_tmp)!=0);
float4 l9_499=(*sc_set0.UserUniforms).Tweak_N12BorderColor;
float l9_500=0.0;
bool l9_501=l9_498&&(!l9_496);
float l9_502=1.0;
float l9_503=l9_492.x;
int l9_504=l9_495.x;
if (l9_504==1)
{
l9_503=fract(l9_503);
}
else
{
if (l9_504==2)
{
float l9_505=fract(l9_503);
float l9_506=l9_503-l9_505;
float l9_507=step(0.25,fract(l9_506*0.5));
l9_503=mix(l9_505,1.0-l9_505,fast::clamp(l9_507,0.0,1.0));
}
}
l9_492.x=l9_503;
float l9_508=l9_492.y;
int l9_509=l9_495.y;
if (l9_509==1)
{
l9_508=fract(l9_508);
}
else
{
if (l9_509==2)
{
float l9_510=fract(l9_508);
float l9_511=l9_508-l9_510;
float l9_512=step(0.25,fract(l9_511*0.5));
l9_508=mix(l9_510,1.0-l9_510,fast::clamp(l9_512,0.0,1.0));
}
}
l9_492.y=l9_508;
if (l9_496)
{
bool l9_513=l9_498;
bool l9_514;
if (l9_513)
{
l9_514=l9_495.x==3;
}
else
{
l9_514=l9_513;
}
float l9_515=l9_492.x;
float l9_516=l9_497.x;
float l9_517=l9_497.z;
bool l9_518=l9_514;
float l9_519=l9_502;
float l9_520=fast::clamp(l9_515,l9_516,l9_517);
float l9_521=step(abs(l9_515-l9_520),9.9999997e-06);
l9_519*=(l9_521+((1.0-float(l9_518))*(1.0-l9_521)));
l9_515=l9_520;
l9_492.x=l9_515;
l9_502=l9_519;
bool l9_522=l9_498;
bool l9_523;
if (l9_522)
{
l9_523=l9_495.y==3;
}
else
{
l9_523=l9_522;
}
float l9_524=l9_492.y;
float l9_525=l9_497.y;
float l9_526=l9_497.w;
bool l9_527=l9_523;
float l9_528=l9_502;
float l9_529=fast::clamp(l9_524,l9_525,l9_526);
float l9_530=step(abs(l9_524-l9_529),9.9999997e-06);
l9_528*=(l9_530+((1.0-float(l9_527))*(1.0-l9_530)));
l9_524=l9_529;
l9_492.y=l9_524;
l9_502=l9_528;
}
float2 l9_531=l9_492;
bool l9_532=l9_493;
float3x3 l9_533=l9_494;
if (l9_532)
{
l9_531=float2((l9_533*float3(l9_531,1.0)).xy);
}
float2 l9_534=l9_531;
l9_492=l9_534;
float l9_535=l9_492.x;
int l9_536=l9_495.x;
bool l9_537=l9_501;
float l9_538=l9_502;
if ((l9_536==0)||(l9_536==3))
{
float l9_539=l9_535;
float l9_540=0.0;
float l9_541=1.0;
bool l9_542=l9_537;
float l9_543=l9_538;
float l9_544=fast::clamp(l9_539,l9_540,l9_541);
float l9_545=step(abs(l9_539-l9_544),9.9999997e-06);
l9_543*=(l9_545+((1.0-float(l9_542))*(1.0-l9_545)));
l9_539=l9_544;
l9_535=l9_539;
l9_538=l9_543;
}
l9_492.x=l9_535;
l9_502=l9_538;
float l9_546=l9_492.y;
int l9_547=l9_495.y;
bool l9_548=l9_501;
float l9_549=l9_502;
if ((l9_547==0)||(l9_547==3))
{
float l9_550=l9_546;
float l9_551=0.0;
float l9_552=1.0;
bool l9_553=l9_548;
float l9_554=l9_549;
float l9_555=fast::clamp(l9_550,l9_551,l9_552);
float l9_556=step(abs(l9_550-l9_555),9.9999997e-06);
l9_554*=(l9_556+((1.0-float(l9_553))*(1.0-l9_556)));
l9_550=l9_555;
l9_546=l9_550;
l9_549=l9_554;
}
l9_492.y=l9_546;
l9_502=l9_549;
float2 l9_557=l9_492;
int l9_558=l9_490;
int l9_559=l9_491;
float l9_560=l9_500;
float2 l9_561=l9_557;
int l9_562=l9_558;
int l9_563=l9_559;
float3 l9_564=float3(0.0);
if (l9_562==0)
{
l9_564=float3(l9_561,0.0);
}
else
{
if (l9_562==1)
{
l9_564=float3(l9_561.x,(l9_561.y*0.5)+(0.5-(float(l9_563)*0.5)),0.0);
}
else
{
l9_564=float3(l9_561,float(l9_563));
}
}
float3 l9_565=l9_564;
float3 l9_566=l9_565;
float4 l9_567=sc_set0.Tweak_N12.sample(sc_set0.Tweak_N12SmpSC,l9_566.xy,bias(l9_560));
float4 l9_568=l9_567;
if (l9_498)
{
l9_568=mix(l9_499,l9_568,float4(l9_502));
}
float4 l9_569=l9_568;
float4 l9_570=l9_569;
float3 l9_571=(l9_570.xyz*1.9921875)-float3(1.0);
l9_570=float4(l9_571.x,l9_571.y,l9_571.z,l9_570.w);
l9_482=l9_570;
float3 l9_572=float3(0.0);
l9_572=l9_440*l9_482.xyz;
float3 l9_573=float3(0.0);
float3 l9_574=l9_572;
float l9_575=dot(l9_574,l9_574);
float l9_576;
if (l9_575>0.0)
{
l9_576=1.0/sqrt(l9_575);
}
else
{
l9_576=0.0;
}
float l9_577=l9_576;
float3 l9_578=l9_574*l9_577;
l9_573=l9_578;
l9_433=float4(l9_573,0.0);
l9_436=l9_433;
}
else
{
float3 l9_579=float3(0.0);
l9_579=l9_435.VertexNormal_WorldSpace;
l9_434=float4(l9_579,0.0);
l9_436=l9_434;
}
l9_432=l9_436;
float4 l9_580=float4(0.0);
float4 l9_581=float4(0.0);
float4 l9_582=float4(0.0);
float4 l9_583=float4(0.0);
float4 l9_584=float4(0.0);
ssGlobals l9_585=l9_430;
float4 l9_586;
if (Tweak_N96_tmp==0)
{
float2 l9_587=float2(0.0);
l9_587=l9_585.Surface_UVCoord0;
l9_581=float4(l9_587,0.0,0.0);
l9_586=l9_581;
}
else
{
if (Tweak_N96_tmp==1)
{
float2 l9_588=float2(0.0);
l9_588=l9_585.Surface_UVCoord1;
l9_582=float4(l9_588,0.0,0.0);
l9_586=l9_582;
}
else
{
if (Tweak_N96_tmp==2)
{
float2 l9_589=float2(0.0);
l9_589=l9_585.gScreenCoord;
l9_583=float4(l9_589,0.0,0.0);
l9_586=l9_583;
}
else
{
float4 l9_590=float4(0.0);
float4 l9_591=float4(0.0);
float4 l9_592=float4(0.0);
float4 l9_593=float4(0.0);
float4 l9_594=float4(0.0);
ssGlobals l9_595=l9_585;
float4 l9_596;
if (Tweak_N76_tmp==0)
{
float2 l9_597=float2(0.0);
l9_597=l9_595.Surface_UVCoord0;
l9_591=float4(l9_597,0.0,0.0);
l9_596=l9_591;
}
else
{
if (Tweak_N76_tmp==1)
{
float2 l9_598=float2(0.0);
l9_598=l9_595.Surface_UVCoord1;
l9_592=float4(l9_598,0.0,0.0);
l9_596=l9_592;
}
else
{
if (Tweak_N76_tmp==2)
{
float2 l9_599=float2(0.0);
l9_599=l9_595.gScreenCoord;
l9_593=float4(l9_599,0.0,0.0);
l9_596=l9_593;
}
else
{
float2 l9_600=float2(0.0);
l9_600=l9_595.Surface_UVCoord0;
l9_594=float4(l9_600,0.0,0.0);
l9_596=l9_594;
}
}
}
l9_590=l9_596;
float4 l9_601=float4(0.0);
l9_601=l9_590;
float2 l9_602=float2(0.0);
float2 l9_603=(*sc_set0.UserUniforms).Tweak_N73;
l9_602=l9_603;
float2 l9_604=float2(0.0);
l9_604=l9_602;
float2 l9_605=float2(0.0);
l9_605=((l9_601.xy-(*sc_set0.UserUniforms).Port_Center_N070)*l9_604)+(*sc_set0.UserUniforms).Port_Center_N070;
float2 l9_606=float2(0.0);
float2 l9_607=(*sc_set0.UserUniforms).Tweak_N72;
l9_606=l9_607;
float2 l9_608=float2(0.0);
l9_608=l9_606;
float2 l9_609=float2(0.0);
l9_609=l9_605+l9_608;
float l9_610=0.0;
float l9_611=(*sc_set0.UserUniforms).Tweak_N74;
l9_610=l9_611;
float l9_612=0.0;
l9_612=l9_610;
float2 l9_613=float2(0.0);
float2 l9_614=l9_609;
float l9_615=l9_612;
float2 l9_616=(*sc_set0.UserUniforms).Port_Center_N071;
float l9_617=sin(radians(l9_615));
float l9_618=cos(radians(l9_615));
float2 l9_619=l9_614-l9_616;
l9_619=float2(dot(float2(l9_618,l9_617),l9_619),dot(float2(-l9_617,l9_618),l9_619))+l9_616;
l9_613=l9_619;
float2 l9_620=float2(0.0);
l9_620=l9_613;
l9_584=float4(l9_620,0.0,0.0);
l9_586=l9_584;
}
}
}
l9_580=l9_586;
float4 l9_621=float4(0.0);
float2 l9_622=l9_580.xy;
int l9_623;
if ((int(Tweak_N58HasSwappedViews_tmp)!=0))
{
int l9_624=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_624=0;
}
else
{
l9_624=in.varStereoViewID;
}
int l9_625=l9_624;
l9_623=1-l9_625;
}
else
{
int l9_626=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_626=0;
}
else
{
l9_626=in.varStereoViewID;
}
int l9_627=l9_626;
l9_623=l9_627;
}
int l9_628=l9_623;
int l9_629=Tweak_N58Layout_tmp;
int l9_630=l9_628;
float2 l9_631=l9_622;
bool l9_632=(int(SC_USE_UV_TRANSFORM_Tweak_N58_tmp)!=0);
float3x3 l9_633=(*sc_set0.UserUniforms).Tweak_N58Transform;
int2 l9_634=int2(SC_SOFTWARE_WRAP_MODE_U_Tweak_N58_tmp,SC_SOFTWARE_WRAP_MODE_V_Tweak_N58_tmp);
bool l9_635=(int(SC_USE_UV_MIN_MAX_Tweak_N58_tmp)!=0);
float4 l9_636=(*sc_set0.UserUniforms).Tweak_N58UvMinMax;
bool l9_637=(int(SC_USE_CLAMP_TO_BORDER_Tweak_N58_tmp)!=0);
float4 l9_638=(*sc_set0.UserUniforms).Tweak_N58BorderColor;
float l9_639=0.0;
bool l9_640=l9_637&&(!l9_635);
float l9_641=1.0;
float l9_642=l9_631.x;
int l9_643=l9_634.x;
if (l9_643==1)
{
l9_642=fract(l9_642);
}
else
{
if (l9_643==2)
{
float l9_644=fract(l9_642);
float l9_645=l9_642-l9_644;
float l9_646=step(0.25,fract(l9_645*0.5));
l9_642=mix(l9_644,1.0-l9_644,fast::clamp(l9_646,0.0,1.0));
}
}
l9_631.x=l9_642;
float l9_647=l9_631.y;
int l9_648=l9_634.y;
if (l9_648==1)
{
l9_647=fract(l9_647);
}
else
{
if (l9_648==2)
{
float l9_649=fract(l9_647);
float l9_650=l9_647-l9_649;
float l9_651=step(0.25,fract(l9_650*0.5));
l9_647=mix(l9_649,1.0-l9_649,fast::clamp(l9_651,0.0,1.0));
}
}
l9_631.y=l9_647;
if (l9_635)
{
bool l9_652=l9_637;
bool l9_653;
if (l9_652)
{
l9_653=l9_634.x==3;
}
else
{
l9_653=l9_652;
}
float l9_654=l9_631.x;
float l9_655=l9_636.x;
float l9_656=l9_636.z;
bool l9_657=l9_653;
float l9_658=l9_641;
float l9_659=fast::clamp(l9_654,l9_655,l9_656);
float l9_660=step(abs(l9_654-l9_659),9.9999997e-06);
l9_658*=(l9_660+((1.0-float(l9_657))*(1.0-l9_660)));
l9_654=l9_659;
l9_631.x=l9_654;
l9_641=l9_658;
bool l9_661=l9_637;
bool l9_662;
if (l9_661)
{
l9_662=l9_634.y==3;
}
else
{
l9_662=l9_661;
}
float l9_663=l9_631.y;
float l9_664=l9_636.y;
float l9_665=l9_636.w;
bool l9_666=l9_662;
float l9_667=l9_641;
float l9_668=fast::clamp(l9_663,l9_664,l9_665);
float l9_669=step(abs(l9_663-l9_668),9.9999997e-06);
l9_667*=(l9_669+((1.0-float(l9_666))*(1.0-l9_669)));
l9_663=l9_668;
l9_631.y=l9_663;
l9_641=l9_667;
}
float2 l9_670=l9_631;
bool l9_671=l9_632;
float3x3 l9_672=l9_633;
if (l9_671)
{
l9_670=float2((l9_672*float3(l9_670,1.0)).xy);
}
float2 l9_673=l9_670;
l9_631=l9_673;
float l9_674=l9_631.x;
int l9_675=l9_634.x;
bool l9_676=l9_640;
float l9_677=l9_641;
if ((l9_675==0)||(l9_675==3))
{
float l9_678=l9_674;
float l9_679=0.0;
float l9_680=1.0;
bool l9_681=l9_676;
float l9_682=l9_677;
float l9_683=fast::clamp(l9_678,l9_679,l9_680);
float l9_684=step(abs(l9_678-l9_683),9.9999997e-06);
l9_682*=(l9_684+((1.0-float(l9_681))*(1.0-l9_684)));
l9_678=l9_683;
l9_674=l9_678;
l9_677=l9_682;
}
l9_631.x=l9_674;
l9_641=l9_677;
float l9_685=l9_631.y;
int l9_686=l9_634.y;
bool l9_687=l9_640;
float l9_688=l9_641;
if ((l9_686==0)||(l9_686==3))
{
float l9_689=l9_685;
float l9_690=0.0;
float l9_691=1.0;
bool l9_692=l9_687;
float l9_693=l9_688;
float l9_694=fast::clamp(l9_689,l9_690,l9_691);
float l9_695=step(abs(l9_689-l9_694),9.9999997e-06);
l9_693*=(l9_695+((1.0-float(l9_692))*(1.0-l9_695)));
l9_689=l9_694;
l9_685=l9_689;
l9_688=l9_693;
}
l9_631.y=l9_685;
l9_641=l9_688;
float2 l9_696=l9_631;
int l9_697=l9_629;
int l9_698=l9_630;
float l9_699=l9_639;
float2 l9_700=l9_696;
int l9_701=l9_697;
int l9_702=l9_698;
float3 l9_703=float3(0.0);
if (l9_701==0)
{
l9_703=float3(l9_700,0.0);
}
else
{
if (l9_701==1)
{
l9_703=float3(l9_700.x,(l9_700.y*0.5)+(0.5-(float(l9_702)*0.5)),0.0);
}
else
{
l9_703=float3(l9_700,float(l9_702));
}
}
float3 l9_704=l9_703;
float3 l9_705=l9_704;
float4 l9_706=sc_set0.Tweak_N58.sample(sc_set0.Tweak_N58SmpSC,l9_705.xy,bias(l9_699));
float4 l9_707=l9_706;
if (l9_637)
{
l9_707=mix(l9_638,l9_707,float4(l9_641));
}
float4 l9_708=l9_707;
float4 l9_709=l9_708;
float3 l9_710=(l9_709.xyz*1.9921875)-float3(1.0);
l9_709=float4(l9_710.x,l9_710.y,l9_710.z,l9_709.w);
l9_621=l9_709;
float3 l9_711=float3(0.0);
float3 l9_712=l9_432.xyz;
float l9_713=(*sc_set0.UserUniforms).Port_Strength1_N057;
float3 l9_714=l9_621.xyz;
float l9_715=(*sc_set0.UserUniforms).Port_Strength2_N057;
float3 l9_716=l9_712;
float l9_717=l9_713;
float3 l9_718=l9_714;
float l9_719=l9_715;
float3 l9_720=mix(float3(0.0,0.0,1.0),l9_716,float3(l9_717))+float3(0.0,0.0,1.0);
float3 l9_721=mix(float3(0.0,0.0,1.0),l9_718,float3(l9_719))*float3(-1.0,-1.0,1.0);
float3 l9_722=normalize((l9_720*dot(l9_720,l9_721))-(l9_721*l9_720.z));
l9_714=l9_722;
float3 l9_723=l9_714;
l9_711=l9_723;
l9_428=float4(l9_711,0.0);
l9_431=l9_428;
}
else
{
float4 l9_724=float4(0.0);
float4 l9_725=float4(0.0);
float4 l9_726=float4(0.0);
ssGlobals l9_727=l9_430;
float4 l9_728;
if ((int(Tweak_N10_tmp)!=0))
{
float3 l9_729=float3(0.0);
l9_729=l9_727.VertexTangent_WorldSpace;
float3 l9_730=float3(0.0);
l9_730=l9_727.VertexBinormal_WorldSpace;
float3 l9_731=float3(0.0);
l9_731=l9_727.VertexNormal_WorldSpace;
float3x3 l9_732=float3x3(float3(0.0),float3(0.0),float3(0.0));
l9_732=float3x3(float3(l9_729),float3(l9_730),float3(l9_731));
float4 l9_733=float4(0.0);
float4 l9_734=float4(0.0);
float4 l9_735=float4(0.0);
float4 l9_736=float4(0.0);
float4 l9_737=float4(0.0);
ssGlobals l9_738=l9_727;
float4 l9_739;
if (Tweak_N94_tmp==0)
{
float2 l9_740=float2(0.0);
l9_740=l9_738.Surface_UVCoord0;
l9_734=float4(l9_740,0.0,0.0);
l9_739=l9_734;
}
else
{
if (Tweak_N94_tmp==1)
{
float2 l9_741=float2(0.0);
l9_741=l9_738.Surface_UVCoord1;
l9_735=float4(l9_741,0.0,0.0);
l9_739=l9_735;
}
else
{
if (Tweak_N94_tmp==2)
{
float2 l9_742=float2(0.0);
l9_742=l9_738.gScreenCoord;
l9_736=float4(l9_742,0.0,0.0);
l9_739=l9_736;
}
else
{
float4 l9_743=float4(0.0);
float4 l9_744=float4(0.0);
float4 l9_745=float4(0.0);
float4 l9_746=float4(0.0);
float4 l9_747=float4(0.0);
ssGlobals l9_748=l9_738;
float4 l9_749;
if (Tweak_N76_tmp==0)
{
float2 l9_750=float2(0.0);
l9_750=l9_748.Surface_UVCoord0;
l9_744=float4(l9_750,0.0,0.0);
l9_749=l9_744;
}
else
{
if (Tweak_N76_tmp==1)
{
float2 l9_751=float2(0.0);
l9_751=l9_748.Surface_UVCoord1;
l9_745=float4(l9_751,0.0,0.0);
l9_749=l9_745;
}
else
{
if (Tweak_N76_tmp==2)
{
float2 l9_752=float2(0.0);
l9_752=l9_748.gScreenCoord;
l9_746=float4(l9_752,0.0,0.0);
l9_749=l9_746;
}
else
{
float2 l9_753=float2(0.0);
l9_753=l9_748.Surface_UVCoord0;
l9_747=float4(l9_753,0.0,0.0);
l9_749=l9_747;
}
}
}
l9_743=l9_749;
float4 l9_754=float4(0.0);
l9_754=l9_743;
float2 l9_755=float2(0.0);
float2 l9_756=(*sc_set0.UserUniforms).Tweak_N73;
l9_755=l9_756;
float2 l9_757=float2(0.0);
l9_757=l9_755;
float2 l9_758=float2(0.0);
l9_758=((l9_754.xy-(*sc_set0.UserUniforms).Port_Center_N070)*l9_757)+(*sc_set0.UserUniforms).Port_Center_N070;
float2 l9_759=float2(0.0);
float2 l9_760=(*sc_set0.UserUniforms).Tweak_N72;
l9_759=l9_760;
float2 l9_761=float2(0.0);
l9_761=l9_759;
float2 l9_762=float2(0.0);
l9_762=l9_758+l9_761;
float l9_763=0.0;
float l9_764=(*sc_set0.UserUniforms).Tweak_N74;
l9_763=l9_764;
float l9_765=0.0;
l9_765=l9_763;
float2 l9_766=float2(0.0);
float2 l9_767=l9_762;
float l9_768=l9_765;
float2 l9_769=(*sc_set0.UserUniforms).Port_Center_N071;
float l9_770=sin(radians(l9_768));
float l9_771=cos(radians(l9_768));
float2 l9_772=l9_767-l9_769;
l9_772=float2(dot(float2(l9_771,l9_770),l9_772),dot(float2(-l9_770,l9_771),l9_772))+l9_769;
l9_766=l9_772;
float2 l9_773=float2(0.0);
l9_773=l9_766;
l9_737=float4(l9_773,0.0,0.0);
l9_739=l9_737;
}
}
}
l9_733=l9_739;
float4 l9_774=float4(0.0);
float2 l9_775=l9_733.xy;
int l9_776;
if ((int(Tweak_N12HasSwappedViews_tmp)!=0))
{
int l9_777=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_777=0;
}
else
{
l9_777=in.varStereoViewID;
}
int l9_778=l9_777;
l9_776=1-l9_778;
}
else
{
int l9_779=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_779=0;
}
else
{
l9_779=in.varStereoViewID;
}
int l9_780=l9_779;
l9_776=l9_780;
}
int l9_781=l9_776;
int l9_782=Tweak_N12Layout_tmp;
int l9_783=l9_781;
float2 l9_784=l9_775;
bool l9_785=(int(SC_USE_UV_TRANSFORM_Tweak_N12_tmp)!=0);
float3x3 l9_786=(*sc_set0.UserUniforms).Tweak_N12Transform;
int2 l9_787=int2(SC_SOFTWARE_WRAP_MODE_U_Tweak_N12_tmp,SC_SOFTWARE_WRAP_MODE_V_Tweak_N12_tmp);
bool l9_788=(int(SC_USE_UV_MIN_MAX_Tweak_N12_tmp)!=0);
float4 l9_789=(*sc_set0.UserUniforms).Tweak_N12UvMinMax;
bool l9_790=(int(SC_USE_CLAMP_TO_BORDER_Tweak_N12_tmp)!=0);
float4 l9_791=(*sc_set0.UserUniforms).Tweak_N12BorderColor;
float l9_792=0.0;
bool l9_793=l9_790&&(!l9_788);
float l9_794=1.0;
float l9_795=l9_784.x;
int l9_796=l9_787.x;
if (l9_796==1)
{
l9_795=fract(l9_795);
}
else
{
if (l9_796==2)
{
float l9_797=fract(l9_795);
float l9_798=l9_795-l9_797;
float l9_799=step(0.25,fract(l9_798*0.5));
l9_795=mix(l9_797,1.0-l9_797,fast::clamp(l9_799,0.0,1.0));
}
}
l9_784.x=l9_795;
float l9_800=l9_784.y;
int l9_801=l9_787.y;
if (l9_801==1)
{
l9_800=fract(l9_800);
}
else
{
if (l9_801==2)
{
float l9_802=fract(l9_800);
float l9_803=l9_800-l9_802;
float l9_804=step(0.25,fract(l9_803*0.5));
l9_800=mix(l9_802,1.0-l9_802,fast::clamp(l9_804,0.0,1.0));
}
}
l9_784.y=l9_800;
if (l9_788)
{
bool l9_805=l9_790;
bool l9_806;
if (l9_805)
{
l9_806=l9_787.x==3;
}
else
{
l9_806=l9_805;
}
float l9_807=l9_784.x;
float l9_808=l9_789.x;
float l9_809=l9_789.z;
bool l9_810=l9_806;
float l9_811=l9_794;
float l9_812=fast::clamp(l9_807,l9_808,l9_809);
float l9_813=step(abs(l9_807-l9_812),9.9999997e-06);
l9_811*=(l9_813+((1.0-float(l9_810))*(1.0-l9_813)));
l9_807=l9_812;
l9_784.x=l9_807;
l9_794=l9_811;
bool l9_814=l9_790;
bool l9_815;
if (l9_814)
{
l9_815=l9_787.y==3;
}
else
{
l9_815=l9_814;
}
float l9_816=l9_784.y;
float l9_817=l9_789.y;
float l9_818=l9_789.w;
bool l9_819=l9_815;
float l9_820=l9_794;
float l9_821=fast::clamp(l9_816,l9_817,l9_818);
float l9_822=step(abs(l9_816-l9_821),9.9999997e-06);
l9_820*=(l9_822+((1.0-float(l9_819))*(1.0-l9_822)));
l9_816=l9_821;
l9_784.y=l9_816;
l9_794=l9_820;
}
float2 l9_823=l9_784;
bool l9_824=l9_785;
float3x3 l9_825=l9_786;
if (l9_824)
{
l9_823=float2((l9_825*float3(l9_823,1.0)).xy);
}
float2 l9_826=l9_823;
l9_784=l9_826;
float l9_827=l9_784.x;
int l9_828=l9_787.x;
bool l9_829=l9_793;
float l9_830=l9_794;
if ((l9_828==0)||(l9_828==3))
{
float l9_831=l9_827;
float l9_832=0.0;
float l9_833=1.0;
bool l9_834=l9_829;
float l9_835=l9_830;
float l9_836=fast::clamp(l9_831,l9_832,l9_833);
float l9_837=step(abs(l9_831-l9_836),9.9999997e-06);
l9_835*=(l9_837+((1.0-float(l9_834))*(1.0-l9_837)));
l9_831=l9_836;
l9_827=l9_831;
l9_830=l9_835;
}
l9_784.x=l9_827;
l9_794=l9_830;
float l9_838=l9_784.y;
int l9_839=l9_787.y;
bool l9_840=l9_793;
float l9_841=l9_794;
if ((l9_839==0)||(l9_839==3))
{
float l9_842=l9_838;
float l9_843=0.0;
float l9_844=1.0;
bool l9_845=l9_840;
float l9_846=l9_841;
float l9_847=fast::clamp(l9_842,l9_843,l9_844);
float l9_848=step(abs(l9_842-l9_847),9.9999997e-06);
l9_846*=(l9_848+((1.0-float(l9_845))*(1.0-l9_848)));
l9_842=l9_847;
l9_838=l9_842;
l9_841=l9_846;
}
l9_784.y=l9_838;
l9_794=l9_841;
float2 l9_849=l9_784;
int l9_850=l9_782;
int l9_851=l9_783;
float l9_852=l9_792;
float2 l9_853=l9_849;
int l9_854=l9_850;
int l9_855=l9_851;
float3 l9_856=float3(0.0);
if (l9_854==0)
{
l9_856=float3(l9_853,0.0);
}
else
{
if (l9_854==1)
{
l9_856=float3(l9_853.x,(l9_853.y*0.5)+(0.5-(float(l9_855)*0.5)),0.0);
}
else
{
l9_856=float3(l9_853,float(l9_855));
}
}
float3 l9_857=l9_856;
float3 l9_858=l9_857;
float4 l9_859=sc_set0.Tweak_N12.sample(sc_set0.Tweak_N12SmpSC,l9_858.xy,bias(l9_852));
float4 l9_860=l9_859;
if (l9_790)
{
l9_860=mix(l9_791,l9_860,float4(l9_794));
}
float4 l9_861=l9_860;
float4 l9_862=l9_861;
float3 l9_863=(l9_862.xyz*1.9921875)-float3(1.0);
l9_862=float4(l9_863.x,l9_863.y,l9_863.z,l9_862.w);
l9_774=l9_862;
float3 l9_864=float3(0.0);
l9_864=l9_732*l9_774.xyz;
float3 l9_865=float3(0.0);
float3 l9_866=l9_864;
float l9_867=dot(l9_866,l9_866);
float l9_868;
if (l9_867>0.0)
{
l9_868=1.0/sqrt(l9_867);
}
else
{
l9_868=0.0;
}
float l9_869=l9_868;
float3 l9_870=l9_866*l9_869;
l9_865=l9_870;
l9_725=float4(l9_865,0.0);
l9_728=l9_725;
}
else
{
float3 l9_871=float3(0.0);
l9_871=l9_727.VertexNormal_WorldSpace;
l9_726=float4(l9_871,0.0);
l9_728=l9_726;
}
l9_724=l9_728;
l9_429=l9_724;
l9_431=l9_429;
}
l9_427=l9_431;
float3 l9_872=float3(0.0);
l9_872=-l9_425.ViewDirWS;
float l9_873=0.0;
l9_873=dot(l9_427.xyz,l9_872);
float l9_874=0.0;
l9_874=abs(l9_873);
l9_423=float4(l9_874);
l9_426=l9_423;
}
else
{
float4 l9_875=float4(0.0);
float4 l9_876=float4(0.0);
float4 l9_877=float4(0.0);
ssGlobals l9_878=l9_425;
float4 l9_879;
if ((int(Tweak_N63_tmp)!=0))
{
float4 l9_880=float4(0.0);
float4 l9_881=float4(0.0);
float4 l9_882=float4(0.0);
ssGlobals l9_883=l9_878;
float4 l9_884;
if ((int(Tweak_N10_tmp)!=0))
{
float3 l9_885=float3(0.0);
l9_885=l9_883.VertexTangent_WorldSpace;
float3 l9_886=float3(0.0);
l9_886=l9_883.VertexBinormal_WorldSpace;
float3 l9_887=float3(0.0);
l9_887=l9_883.VertexNormal_WorldSpace;
float3x3 l9_888=float3x3(float3(0.0),float3(0.0),float3(0.0));
l9_888=float3x3(float3(l9_885),float3(l9_886),float3(l9_887));
float4 l9_889=float4(0.0);
float4 l9_890=float4(0.0);
float4 l9_891=float4(0.0);
float4 l9_892=float4(0.0);
float4 l9_893=float4(0.0);
ssGlobals l9_894=l9_883;
float4 l9_895;
if (Tweak_N94_tmp==0)
{
float2 l9_896=float2(0.0);
l9_896=l9_894.Surface_UVCoord0;
l9_890=float4(l9_896,0.0,0.0);
l9_895=l9_890;
}
else
{
if (Tweak_N94_tmp==1)
{
float2 l9_897=float2(0.0);
l9_897=l9_894.Surface_UVCoord1;
l9_891=float4(l9_897,0.0,0.0);
l9_895=l9_891;
}
else
{
if (Tweak_N94_tmp==2)
{
float2 l9_898=float2(0.0);
l9_898=l9_894.gScreenCoord;
l9_892=float4(l9_898,0.0,0.0);
l9_895=l9_892;
}
else
{
float4 l9_899=float4(0.0);
float4 l9_900=float4(0.0);
float4 l9_901=float4(0.0);
float4 l9_902=float4(0.0);
float4 l9_903=float4(0.0);
ssGlobals l9_904=l9_894;
float4 l9_905;
if (Tweak_N76_tmp==0)
{
float2 l9_906=float2(0.0);
l9_906=l9_904.Surface_UVCoord0;
l9_900=float4(l9_906,0.0,0.0);
l9_905=l9_900;
}
else
{
if (Tweak_N76_tmp==1)
{
float2 l9_907=float2(0.0);
l9_907=l9_904.Surface_UVCoord1;
l9_901=float4(l9_907,0.0,0.0);
l9_905=l9_901;
}
else
{
if (Tweak_N76_tmp==2)
{
float2 l9_908=float2(0.0);
l9_908=l9_904.gScreenCoord;
l9_902=float4(l9_908,0.0,0.0);
l9_905=l9_902;
}
else
{
float2 l9_909=float2(0.0);
l9_909=l9_904.Surface_UVCoord0;
l9_903=float4(l9_909,0.0,0.0);
l9_905=l9_903;
}
}
}
l9_899=l9_905;
float4 l9_910=float4(0.0);
l9_910=l9_899;
float2 l9_911=float2(0.0);
float2 l9_912=(*sc_set0.UserUniforms).Tweak_N73;
l9_911=l9_912;
float2 l9_913=float2(0.0);
l9_913=l9_911;
float2 l9_914=float2(0.0);
l9_914=((l9_910.xy-(*sc_set0.UserUniforms).Port_Center_N070)*l9_913)+(*sc_set0.UserUniforms).Port_Center_N070;
float2 l9_915=float2(0.0);
float2 l9_916=(*sc_set0.UserUniforms).Tweak_N72;
l9_915=l9_916;
float2 l9_917=float2(0.0);
l9_917=l9_915;
float2 l9_918=float2(0.0);
l9_918=l9_914+l9_917;
float l9_919=0.0;
float l9_920=(*sc_set0.UserUniforms).Tweak_N74;
l9_919=l9_920;
float l9_921=0.0;
l9_921=l9_919;
float2 l9_922=float2(0.0);
float2 l9_923=l9_918;
float l9_924=l9_921;
float2 l9_925=(*sc_set0.UserUniforms).Port_Center_N071;
float l9_926=sin(radians(l9_924));
float l9_927=cos(radians(l9_924));
float2 l9_928=l9_923-l9_925;
l9_928=float2(dot(float2(l9_927,l9_926),l9_928),dot(float2(-l9_926,l9_927),l9_928))+l9_925;
l9_922=l9_928;
float2 l9_929=float2(0.0);
l9_929=l9_922;
l9_893=float4(l9_929,0.0,0.0);
l9_895=l9_893;
}
}
}
l9_889=l9_895;
float4 l9_930=float4(0.0);
float2 l9_931=l9_889.xy;
int l9_932;
if ((int(Tweak_N12HasSwappedViews_tmp)!=0))
{
int l9_933=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_933=0;
}
else
{
l9_933=in.varStereoViewID;
}
int l9_934=l9_933;
l9_932=1-l9_934;
}
else
{
int l9_935=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_935=0;
}
else
{
l9_935=in.varStereoViewID;
}
int l9_936=l9_935;
l9_932=l9_936;
}
int l9_937=l9_932;
int l9_938=Tweak_N12Layout_tmp;
int l9_939=l9_937;
float2 l9_940=l9_931;
bool l9_941=(int(SC_USE_UV_TRANSFORM_Tweak_N12_tmp)!=0);
float3x3 l9_942=(*sc_set0.UserUniforms).Tweak_N12Transform;
int2 l9_943=int2(SC_SOFTWARE_WRAP_MODE_U_Tweak_N12_tmp,SC_SOFTWARE_WRAP_MODE_V_Tweak_N12_tmp);
bool l9_944=(int(SC_USE_UV_MIN_MAX_Tweak_N12_tmp)!=0);
float4 l9_945=(*sc_set0.UserUniforms).Tweak_N12UvMinMax;
bool l9_946=(int(SC_USE_CLAMP_TO_BORDER_Tweak_N12_tmp)!=0);
float4 l9_947=(*sc_set0.UserUniforms).Tweak_N12BorderColor;
float l9_948=0.0;
bool l9_949=l9_946&&(!l9_944);
float l9_950=1.0;
float l9_951=l9_940.x;
int l9_952=l9_943.x;
if (l9_952==1)
{
l9_951=fract(l9_951);
}
else
{
if (l9_952==2)
{
float l9_953=fract(l9_951);
float l9_954=l9_951-l9_953;
float l9_955=step(0.25,fract(l9_954*0.5));
l9_951=mix(l9_953,1.0-l9_953,fast::clamp(l9_955,0.0,1.0));
}
}
l9_940.x=l9_951;
float l9_956=l9_940.y;
int l9_957=l9_943.y;
if (l9_957==1)
{
l9_956=fract(l9_956);
}
else
{
if (l9_957==2)
{
float l9_958=fract(l9_956);
float l9_959=l9_956-l9_958;
float l9_960=step(0.25,fract(l9_959*0.5));
l9_956=mix(l9_958,1.0-l9_958,fast::clamp(l9_960,0.0,1.0));
}
}
l9_940.y=l9_956;
if (l9_944)
{
bool l9_961=l9_946;
bool l9_962;
if (l9_961)
{
l9_962=l9_943.x==3;
}
else
{
l9_962=l9_961;
}
float l9_963=l9_940.x;
float l9_964=l9_945.x;
float l9_965=l9_945.z;
bool l9_966=l9_962;
float l9_967=l9_950;
float l9_968=fast::clamp(l9_963,l9_964,l9_965);
float l9_969=step(abs(l9_963-l9_968),9.9999997e-06);
l9_967*=(l9_969+((1.0-float(l9_966))*(1.0-l9_969)));
l9_963=l9_968;
l9_940.x=l9_963;
l9_950=l9_967;
bool l9_970=l9_946;
bool l9_971;
if (l9_970)
{
l9_971=l9_943.y==3;
}
else
{
l9_971=l9_970;
}
float l9_972=l9_940.y;
float l9_973=l9_945.y;
float l9_974=l9_945.w;
bool l9_975=l9_971;
float l9_976=l9_950;
float l9_977=fast::clamp(l9_972,l9_973,l9_974);
float l9_978=step(abs(l9_972-l9_977),9.9999997e-06);
l9_976*=(l9_978+((1.0-float(l9_975))*(1.0-l9_978)));
l9_972=l9_977;
l9_940.y=l9_972;
l9_950=l9_976;
}
float2 l9_979=l9_940;
bool l9_980=l9_941;
float3x3 l9_981=l9_942;
if (l9_980)
{
l9_979=float2((l9_981*float3(l9_979,1.0)).xy);
}
float2 l9_982=l9_979;
l9_940=l9_982;
float l9_983=l9_940.x;
int l9_984=l9_943.x;
bool l9_985=l9_949;
float l9_986=l9_950;
if ((l9_984==0)||(l9_984==3))
{
float l9_987=l9_983;
float l9_988=0.0;
float l9_989=1.0;
bool l9_990=l9_985;
float l9_991=l9_986;
float l9_992=fast::clamp(l9_987,l9_988,l9_989);
float l9_993=step(abs(l9_987-l9_992),9.9999997e-06);
l9_991*=(l9_993+((1.0-float(l9_990))*(1.0-l9_993)));
l9_987=l9_992;
l9_983=l9_987;
l9_986=l9_991;
}
l9_940.x=l9_983;
l9_950=l9_986;
float l9_994=l9_940.y;
int l9_995=l9_943.y;
bool l9_996=l9_949;
float l9_997=l9_950;
if ((l9_995==0)||(l9_995==3))
{
float l9_998=l9_994;
float l9_999=0.0;
float l9_1000=1.0;
bool l9_1001=l9_996;
float l9_1002=l9_997;
float l9_1003=fast::clamp(l9_998,l9_999,l9_1000);
float l9_1004=step(abs(l9_998-l9_1003),9.9999997e-06);
l9_1002*=(l9_1004+((1.0-float(l9_1001))*(1.0-l9_1004)));
l9_998=l9_1003;
l9_994=l9_998;
l9_997=l9_1002;
}
l9_940.y=l9_994;
l9_950=l9_997;
float2 l9_1005=l9_940;
int l9_1006=l9_938;
int l9_1007=l9_939;
float l9_1008=l9_948;
float2 l9_1009=l9_1005;
int l9_1010=l9_1006;
int l9_1011=l9_1007;
float3 l9_1012=float3(0.0);
if (l9_1010==0)
{
l9_1012=float3(l9_1009,0.0);
}
else
{
if (l9_1010==1)
{
l9_1012=float3(l9_1009.x,(l9_1009.y*0.5)+(0.5-(float(l9_1011)*0.5)),0.0);
}
else
{
l9_1012=float3(l9_1009,float(l9_1011));
}
}
float3 l9_1013=l9_1012;
float3 l9_1014=l9_1013;
float4 l9_1015=sc_set0.Tweak_N12.sample(sc_set0.Tweak_N12SmpSC,l9_1014.xy,bias(l9_1008));
float4 l9_1016=l9_1015;
if (l9_946)
{
l9_1016=mix(l9_947,l9_1016,float4(l9_950));
}
float4 l9_1017=l9_1016;
float4 l9_1018=l9_1017;
float3 l9_1019=(l9_1018.xyz*1.9921875)-float3(1.0);
l9_1018=float4(l9_1019.x,l9_1019.y,l9_1019.z,l9_1018.w);
l9_930=l9_1018;
float3 l9_1020=float3(0.0);
l9_1020=l9_888*l9_930.xyz;
float3 l9_1021=float3(0.0);
float3 l9_1022=l9_1020;
float l9_1023=dot(l9_1022,l9_1022);
float l9_1024;
if (l9_1023>0.0)
{
l9_1024=1.0/sqrt(l9_1023);
}
else
{
l9_1024=0.0;
}
float l9_1025=l9_1024;
float3 l9_1026=l9_1022*l9_1025;
l9_1021=l9_1026;
l9_881=float4(l9_1021,0.0);
l9_884=l9_881;
}
else
{
float3 l9_1027=float3(0.0);
l9_1027=l9_883.VertexNormal_WorldSpace;
l9_882=float4(l9_1027,0.0);
l9_884=l9_882;
}
l9_880=l9_884;
float4 l9_1028=float4(0.0);
float4 l9_1029=float4(0.0);
float4 l9_1030=float4(0.0);
float4 l9_1031=float4(0.0);
float4 l9_1032=float4(0.0);
ssGlobals l9_1033=l9_878;
float4 l9_1034;
if (Tweak_N96_tmp==0)
{
float2 l9_1035=float2(0.0);
l9_1035=l9_1033.Surface_UVCoord0;
l9_1029=float4(l9_1035,0.0,0.0);
l9_1034=l9_1029;
}
else
{
if (Tweak_N96_tmp==1)
{
float2 l9_1036=float2(0.0);
l9_1036=l9_1033.Surface_UVCoord1;
l9_1030=float4(l9_1036,0.0,0.0);
l9_1034=l9_1030;
}
else
{
if (Tweak_N96_tmp==2)
{
float2 l9_1037=float2(0.0);
l9_1037=l9_1033.gScreenCoord;
l9_1031=float4(l9_1037,0.0,0.0);
l9_1034=l9_1031;
}
else
{
float4 l9_1038=float4(0.0);
float4 l9_1039=float4(0.0);
float4 l9_1040=float4(0.0);
float4 l9_1041=float4(0.0);
float4 l9_1042=float4(0.0);
ssGlobals l9_1043=l9_1033;
float4 l9_1044;
if (Tweak_N76_tmp==0)
{
float2 l9_1045=float2(0.0);
l9_1045=l9_1043.Surface_UVCoord0;
l9_1039=float4(l9_1045,0.0,0.0);
l9_1044=l9_1039;
}
else
{
if (Tweak_N76_tmp==1)
{
float2 l9_1046=float2(0.0);
l9_1046=l9_1043.Surface_UVCoord1;
l9_1040=float4(l9_1046,0.0,0.0);
l9_1044=l9_1040;
}
else
{
if (Tweak_N76_tmp==2)
{
float2 l9_1047=float2(0.0);
l9_1047=l9_1043.gScreenCoord;
l9_1041=float4(l9_1047,0.0,0.0);
l9_1044=l9_1041;
}
else
{
float2 l9_1048=float2(0.0);
l9_1048=l9_1043.Surface_UVCoord0;
l9_1042=float4(l9_1048,0.0,0.0);
l9_1044=l9_1042;
}
}
}
l9_1038=l9_1044;
float4 l9_1049=float4(0.0);
l9_1049=l9_1038;
float2 l9_1050=float2(0.0);
float2 l9_1051=(*sc_set0.UserUniforms).Tweak_N73;
l9_1050=l9_1051;
float2 l9_1052=float2(0.0);
l9_1052=l9_1050;
float2 l9_1053=float2(0.0);
l9_1053=((l9_1049.xy-(*sc_set0.UserUniforms).Port_Center_N070)*l9_1052)+(*sc_set0.UserUniforms).Port_Center_N070;
float2 l9_1054=float2(0.0);
float2 l9_1055=(*sc_set0.UserUniforms).Tweak_N72;
l9_1054=l9_1055;
float2 l9_1056=float2(0.0);
l9_1056=l9_1054;
float2 l9_1057=float2(0.0);
l9_1057=l9_1053+l9_1056;
float l9_1058=0.0;
float l9_1059=(*sc_set0.UserUniforms).Tweak_N74;
l9_1058=l9_1059;
float l9_1060=0.0;
l9_1060=l9_1058;
float2 l9_1061=float2(0.0);
float2 l9_1062=l9_1057;
float l9_1063=l9_1060;
float2 l9_1064=(*sc_set0.UserUniforms).Port_Center_N071;
float l9_1065=sin(radians(l9_1063));
float l9_1066=cos(radians(l9_1063));
float2 l9_1067=l9_1062-l9_1064;
l9_1067=float2(dot(float2(l9_1066,l9_1065),l9_1067),dot(float2(-l9_1065,l9_1066),l9_1067))+l9_1064;
l9_1061=l9_1067;
float2 l9_1068=float2(0.0);
l9_1068=l9_1061;
l9_1032=float4(l9_1068,0.0,0.0);
l9_1034=l9_1032;
}
}
}
l9_1028=l9_1034;
float4 l9_1069=float4(0.0);
float2 l9_1070=l9_1028.xy;
int l9_1071;
if ((int(Tweak_N58HasSwappedViews_tmp)!=0))
{
int l9_1072=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1072=0;
}
else
{
l9_1072=in.varStereoViewID;
}
int l9_1073=l9_1072;
l9_1071=1-l9_1073;
}
else
{
int l9_1074=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1074=0;
}
else
{
l9_1074=in.varStereoViewID;
}
int l9_1075=l9_1074;
l9_1071=l9_1075;
}
int l9_1076=l9_1071;
int l9_1077=Tweak_N58Layout_tmp;
int l9_1078=l9_1076;
float2 l9_1079=l9_1070;
bool l9_1080=(int(SC_USE_UV_TRANSFORM_Tweak_N58_tmp)!=0);
float3x3 l9_1081=(*sc_set0.UserUniforms).Tweak_N58Transform;
int2 l9_1082=int2(SC_SOFTWARE_WRAP_MODE_U_Tweak_N58_tmp,SC_SOFTWARE_WRAP_MODE_V_Tweak_N58_tmp);
bool l9_1083=(int(SC_USE_UV_MIN_MAX_Tweak_N58_tmp)!=0);
float4 l9_1084=(*sc_set0.UserUniforms).Tweak_N58UvMinMax;
bool l9_1085=(int(SC_USE_CLAMP_TO_BORDER_Tweak_N58_tmp)!=0);
float4 l9_1086=(*sc_set0.UserUniforms).Tweak_N58BorderColor;
float l9_1087=0.0;
bool l9_1088=l9_1085&&(!l9_1083);
float l9_1089=1.0;
float l9_1090=l9_1079.x;
int l9_1091=l9_1082.x;
if (l9_1091==1)
{
l9_1090=fract(l9_1090);
}
else
{
if (l9_1091==2)
{
float l9_1092=fract(l9_1090);
float l9_1093=l9_1090-l9_1092;
float l9_1094=step(0.25,fract(l9_1093*0.5));
l9_1090=mix(l9_1092,1.0-l9_1092,fast::clamp(l9_1094,0.0,1.0));
}
}
l9_1079.x=l9_1090;
float l9_1095=l9_1079.y;
int l9_1096=l9_1082.y;
if (l9_1096==1)
{
l9_1095=fract(l9_1095);
}
else
{
if (l9_1096==2)
{
float l9_1097=fract(l9_1095);
float l9_1098=l9_1095-l9_1097;
float l9_1099=step(0.25,fract(l9_1098*0.5));
l9_1095=mix(l9_1097,1.0-l9_1097,fast::clamp(l9_1099,0.0,1.0));
}
}
l9_1079.y=l9_1095;
if (l9_1083)
{
bool l9_1100=l9_1085;
bool l9_1101;
if (l9_1100)
{
l9_1101=l9_1082.x==3;
}
else
{
l9_1101=l9_1100;
}
float l9_1102=l9_1079.x;
float l9_1103=l9_1084.x;
float l9_1104=l9_1084.z;
bool l9_1105=l9_1101;
float l9_1106=l9_1089;
float l9_1107=fast::clamp(l9_1102,l9_1103,l9_1104);
float l9_1108=step(abs(l9_1102-l9_1107),9.9999997e-06);
l9_1106*=(l9_1108+((1.0-float(l9_1105))*(1.0-l9_1108)));
l9_1102=l9_1107;
l9_1079.x=l9_1102;
l9_1089=l9_1106;
bool l9_1109=l9_1085;
bool l9_1110;
if (l9_1109)
{
l9_1110=l9_1082.y==3;
}
else
{
l9_1110=l9_1109;
}
float l9_1111=l9_1079.y;
float l9_1112=l9_1084.y;
float l9_1113=l9_1084.w;
bool l9_1114=l9_1110;
float l9_1115=l9_1089;
float l9_1116=fast::clamp(l9_1111,l9_1112,l9_1113);
float l9_1117=step(abs(l9_1111-l9_1116),9.9999997e-06);
l9_1115*=(l9_1117+((1.0-float(l9_1114))*(1.0-l9_1117)));
l9_1111=l9_1116;
l9_1079.y=l9_1111;
l9_1089=l9_1115;
}
float2 l9_1118=l9_1079;
bool l9_1119=l9_1080;
float3x3 l9_1120=l9_1081;
if (l9_1119)
{
l9_1118=float2((l9_1120*float3(l9_1118,1.0)).xy);
}
float2 l9_1121=l9_1118;
l9_1079=l9_1121;
float l9_1122=l9_1079.x;
int l9_1123=l9_1082.x;
bool l9_1124=l9_1088;
float l9_1125=l9_1089;
if ((l9_1123==0)||(l9_1123==3))
{
float l9_1126=l9_1122;
float l9_1127=0.0;
float l9_1128=1.0;
bool l9_1129=l9_1124;
float l9_1130=l9_1125;
float l9_1131=fast::clamp(l9_1126,l9_1127,l9_1128);
float l9_1132=step(abs(l9_1126-l9_1131),9.9999997e-06);
l9_1130*=(l9_1132+((1.0-float(l9_1129))*(1.0-l9_1132)));
l9_1126=l9_1131;
l9_1122=l9_1126;
l9_1125=l9_1130;
}
l9_1079.x=l9_1122;
l9_1089=l9_1125;
float l9_1133=l9_1079.y;
int l9_1134=l9_1082.y;
bool l9_1135=l9_1088;
float l9_1136=l9_1089;
if ((l9_1134==0)||(l9_1134==3))
{
float l9_1137=l9_1133;
float l9_1138=0.0;
float l9_1139=1.0;
bool l9_1140=l9_1135;
float l9_1141=l9_1136;
float l9_1142=fast::clamp(l9_1137,l9_1138,l9_1139);
float l9_1143=step(abs(l9_1137-l9_1142),9.9999997e-06);
l9_1141*=(l9_1143+((1.0-float(l9_1140))*(1.0-l9_1143)));
l9_1137=l9_1142;
l9_1133=l9_1137;
l9_1136=l9_1141;
}
l9_1079.y=l9_1133;
l9_1089=l9_1136;
float2 l9_1144=l9_1079;
int l9_1145=l9_1077;
int l9_1146=l9_1078;
float l9_1147=l9_1087;
float2 l9_1148=l9_1144;
int l9_1149=l9_1145;
int l9_1150=l9_1146;
float3 l9_1151=float3(0.0);
if (l9_1149==0)
{
l9_1151=float3(l9_1148,0.0);
}
else
{
if (l9_1149==1)
{
l9_1151=float3(l9_1148.x,(l9_1148.y*0.5)+(0.5-(float(l9_1150)*0.5)),0.0);
}
else
{
l9_1151=float3(l9_1148,float(l9_1150));
}
}
float3 l9_1152=l9_1151;
float3 l9_1153=l9_1152;
float4 l9_1154=sc_set0.Tweak_N58.sample(sc_set0.Tweak_N58SmpSC,l9_1153.xy,bias(l9_1147));
float4 l9_1155=l9_1154;
if (l9_1085)
{
l9_1155=mix(l9_1086,l9_1155,float4(l9_1089));
}
float4 l9_1156=l9_1155;
float4 l9_1157=l9_1156;
float3 l9_1158=(l9_1157.xyz*1.9921875)-float3(1.0);
l9_1157=float4(l9_1158.x,l9_1158.y,l9_1158.z,l9_1157.w);
l9_1069=l9_1157;
float3 l9_1159=float3(0.0);
float3 l9_1160=l9_880.xyz;
float l9_1161=(*sc_set0.UserUniforms).Port_Strength1_N057;
float3 l9_1162=l9_1069.xyz;
float l9_1163=(*sc_set0.UserUniforms).Port_Strength2_N057;
float3 l9_1164=l9_1160;
float l9_1165=l9_1161;
float3 l9_1166=l9_1162;
float l9_1167=l9_1163;
float3 l9_1168=mix(float3(0.0,0.0,1.0),l9_1164,float3(l9_1165))+float3(0.0,0.0,1.0);
float3 l9_1169=mix(float3(0.0,0.0,1.0),l9_1166,float3(l9_1167))*float3(-1.0,-1.0,1.0);
float3 l9_1170=normalize((l9_1168*dot(l9_1168,l9_1169))-(l9_1169*l9_1168.z));
l9_1162=l9_1170;
float3 l9_1171=l9_1162;
l9_1159=l9_1171;
l9_876=float4(l9_1159,0.0);
l9_879=l9_876;
}
else
{
float4 l9_1172=float4(0.0);
float4 l9_1173=float4(0.0);
float4 l9_1174=float4(0.0);
ssGlobals l9_1175=l9_878;
float4 l9_1176;
if ((int(Tweak_N10_tmp)!=0))
{
float3 l9_1177=float3(0.0);
l9_1177=l9_1175.VertexTangent_WorldSpace;
float3 l9_1178=float3(0.0);
l9_1178=l9_1175.VertexBinormal_WorldSpace;
float3 l9_1179=float3(0.0);
l9_1179=l9_1175.VertexNormal_WorldSpace;
float3x3 l9_1180=float3x3(float3(0.0),float3(0.0),float3(0.0));
l9_1180=float3x3(float3(l9_1177),float3(l9_1178),float3(l9_1179));
float4 l9_1181=float4(0.0);
float4 l9_1182=float4(0.0);
float4 l9_1183=float4(0.0);
float4 l9_1184=float4(0.0);
float4 l9_1185=float4(0.0);
ssGlobals l9_1186=l9_1175;
float4 l9_1187;
if (Tweak_N94_tmp==0)
{
float2 l9_1188=float2(0.0);
l9_1188=l9_1186.Surface_UVCoord0;
l9_1182=float4(l9_1188,0.0,0.0);
l9_1187=l9_1182;
}
else
{
if (Tweak_N94_tmp==1)
{
float2 l9_1189=float2(0.0);
l9_1189=l9_1186.Surface_UVCoord1;
l9_1183=float4(l9_1189,0.0,0.0);
l9_1187=l9_1183;
}
else
{
if (Tweak_N94_tmp==2)
{
float2 l9_1190=float2(0.0);
l9_1190=l9_1186.gScreenCoord;
l9_1184=float4(l9_1190,0.0,0.0);
l9_1187=l9_1184;
}
else
{
float4 l9_1191=float4(0.0);
float4 l9_1192=float4(0.0);
float4 l9_1193=float4(0.0);
float4 l9_1194=float4(0.0);
float4 l9_1195=float4(0.0);
ssGlobals l9_1196=l9_1186;
float4 l9_1197;
if (Tweak_N76_tmp==0)
{
float2 l9_1198=float2(0.0);
l9_1198=l9_1196.Surface_UVCoord0;
l9_1192=float4(l9_1198,0.0,0.0);
l9_1197=l9_1192;
}
else
{
if (Tweak_N76_tmp==1)
{
float2 l9_1199=float2(0.0);
l9_1199=l9_1196.Surface_UVCoord1;
l9_1193=float4(l9_1199,0.0,0.0);
l9_1197=l9_1193;
}
else
{
if (Tweak_N76_tmp==2)
{
float2 l9_1200=float2(0.0);
l9_1200=l9_1196.gScreenCoord;
l9_1194=float4(l9_1200,0.0,0.0);
l9_1197=l9_1194;
}
else
{
float2 l9_1201=float2(0.0);
l9_1201=l9_1196.Surface_UVCoord0;
l9_1195=float4(l9_1201,0.0,0.0);
l9_1197=l9_1195;
}
}
}
l9_1191=l9_1197;
float4 l9_1202=float4(0.0);
l9_1202=l9_1191;
float2 l9_1203=float2(0.0);
float2 l9_1204=(*sc_set0.UserUniforms).Tweak_N73;
l9_1203=l9_1204;
float2 l9_1205=float2(0.0);
l9_1205=l9_1203;
float2 l9_1206=float2(0.0);
l9_1206=((l9_1202.xy-(*sc_set0.UserUniforms).Port_Center_N070)*l9_1205)+(*sc_set0.UserUniforms).Port_Center_N070;
float2 l9_1207=float2(0.0);
float2 l9_1208=(*sc_set0.UserUniforms).Tweak_N72;
l9_1207=l9_1208;
float2 l9_1209=float2(0.0);
l9_1209=l9_1207;
float2 l9_1210=float2(0.0);
l9_1210=l9_1206+l9_1209;
float l9_1211=0.0;
float l9_1212=(*sc_set0.UserUniforms).Tweak_N74;
l9_1211=l9_1212;
float l9_1213=0.0;
l9_1213=l9_1211;
float2 l9_1214=float2(0.0);
float2 l9_1215=l9_1210;
float l9_1216=l9_1213;
float2 l9_1217=(*sc_set0.UserUniforms).Port_Center_N071;
float l9_1218=sin(radians(l9_1216));
float l9_1219=cos(radians(l9_1216));
float2 l9_1220=l9_1215-l9_1217;
l9_1220=float2(dot(float2(l9_1219,l9_1218),l9_1220),dot(float2(-l9_1218,l9_1219),l9_1220))+l9_1217;
l9_1214=l9_1220;
float2 l9_1221=float2(0.0);
l9_1221=l9_1214;
l9_1185=float4(l9_1221,0.0,0.0);
l9_1187=l9_1185;
}
}
}
l9_1181=l9_1187;
float4 l9_1222=float4(0.0);
float2 l9_1223=l9_1181.xy;
int l9_1224;
if ((int(Tweak_N12HasSwappedViews_tmp)!=0))
{
int l9_1225=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1225=0;
}
else
{
l9_1225=in.varStereoViewID;
}
int l9_1226=l9_1225;
l9_1224=1-l9_1226;
}
else
{
int l9_1227=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1227=0;
}
else
{
l9_1227=in.varStereoViewID;
}
int l9_1228=l9_1227;
l9_1224=l9_1228;
}
int l9_1229=l9_1224;
int l9_1230=Tweak_N12Layout_tmp;
int l9_1231=l9_1229;
float2 l9_1232=l9_1223;
bool l9_1233=(int(SC_USE_UV_TRANSFORM_Tweak_N12_tmp)!=0);
float3x3 l9_1234=(*sc_set0.UserUniforms).Tweak_N12Transform;
int2 l9_1235=int2(SC_SOFTWARE_WRAP_MODE_U_Tweak_N12_tmp,SC_SOFTWARE_WRAP_MODE_V_Tweak_N12_tmp);
bool l9_1236=(int(SC_USE_UV_MIN_MAX_Tweak_N12_tmp)!=0);
float4 l9_1237=(*sc_set0.UserUniforms).Tweak_N12UvMinMax;
bool l9_1238=(int(SC_USE_CLAMP_TO_BORDER_Tweak_N12_tmp)!=0);
float4 l9_1239=(*sc_set0.UserUniforms).Tweak_N12BorderColor;
float l9_1240=0.0;
bool l9_1241=l9_1238&&(!l9_1236);
float l9_1242=1.0;
float l9_1243=l9_1232.x;
int l9_1244=l9_1235.x;
if (l9_1244==1)
{
l9_1243=fract(l9_1243);
}
else
{
if (l9_1244==2)
{
float l9_1245=fract(l9_1243);
float l9_1246=l9_1243-l9_1245;
float l9_1247=step(0.25,fract(l9_1246*0.5));
l9_1243=mix(l9_1245,1.0-l9_1245,fast::clamp(l9_1247,0.0,1.0));
}
}
l9_1232.x=l9_1243;
float l9_1248=l9_1232.y;
int l9_1249=l9_1235.y;
if (l9_1249==1)
{
l9_1248=fract(l9_1248);
}
else
{
if (l9_1249==2)
{
float l9_1250=fract(l9_1248);
float l9_1251=l9_1248-l9_1250;
float l9_1252=step(0.25,fract(l9_1251*0.5));
l9_1248=mix(l9_1250,1.0-l9_1250,fast::clamp(l9_1252,0.0,1.0));
}
}
l9_1232.y=l9_1248;
if (l9_1236)
{
bool l9_1253=l9_1238;
bool l9_1254;
if (l9_1253)
{
l9_1254=l9_1235.x==3;
}
else
{
l9_1254=l9_1253;
}
float l9_1255=l9_1232.x;
float l9_1256=l9_1237.x;
float l9_1257=l9_1237.z;
bool l9_1258=l9_1254;
float l9_1259=l9_1242;
float l9_1260=fast::clamp(l9_1255,l9_1256,l9_1257);
float l9_1261=step(abs(l9_1255-l9_1260),9.9999997e-06);
l9_1259*=(l9_1261+((1.0-float(l9_1258))*(1.0-l9_1261)));
l9_1255=l9_1260;
l9_1232.x=l9_1255;
l9_1242=l9_1259;
bool l9_1262=l9_1238;
bool l9_1263;
if (l9_1262)
{
l9_1263=l9_1235.y==3;
}
else
{
l9_1263=l9_1262;
}
float l9_1264=l9_1232.y;
float l9_1265=l9_1237.y;
float l9_1266=l9_1237.w;
bool l9_1267=l9_1263;
float l9_1268=l9_1242;
float l9_1269=fast::clamp(l9_1264,l9_1265,l9_1266);
float l9_1270=step(abs(l9_1264-l9_1269),9.9999997e-06);
l9_1268*=(l9_1270+((1.0-float(l9_1267))*(1.0-l9_1270)));
l9_1264=l9_1269;
l9_1232.y=l9_1264;
l9_1242=l9_1268;
}
float2 l9_1271=l9_1232;
bool l9_1272=l9_1233;
float3x3 l9_1273=l9_1234;
if (l9_1272)
{
l9_1271=float2((l9_1273*float3(l9_1271,1.0)).xy);
}
float2 l9_1274=l9_1271;
l9_1232=l9_1274;
float l9_1275=l9_1232.x;
int l9_1276=l9_1235.x;
bool l9_1277=l9_1241;
float l9_1278=l9_1242;
if ((l9_1276==0)||(l9_1276==3))
{
float l9_1279=l9_1275;
float l9_1280=0.0;
float l9_1281=1.0;
bool l9_1282=l9_1277;
float l9_1283=l9_1278;
float l9_1284=fast::clamp(l9_1279,l9_1280,l9_1281);
float l9_1285=step(abs(l9_1279-l9_1284),9.9999997e-06);
l9_1283*=(l9_1285+((1.0-float(l9_1282))*(1.0-l9_1285)));
l9_1279=l9_1284;
l9_1275=l9_1279;
l9_1278=l9_1283;
}
l9_1232.x=l9_1275;
l9_1242=l9_1278;
float l9_1286=l9_1232.y;
int l9_1287=l9_1235.y;
bool l9_1288=l9_1241;
float l9_1289=l9_1242;
if ((l9_1287==0)||(l9_1287==3))
{
float l9_1290=l9_1286;
float l9_1291=0.0;
float l9_1292=1.0;
bool l9_1293=l9_1288;
float l9_1294=l9_1289;
float l9_1295=fast::clamp(l9_1290,l9_1291,l9_1292);
float l9_1296=step(abs(l9_1290-l9_1295),9.9999997e-06);
l9_1294*=(l9_1296+((1.0-float(l9_1293))*(1.0-l9_1296)));
l9_1290=l9_1295;
l9_1286=l9_1290;
l9_1289=l9_1294;
}
l9_1232.y=l9_1286;
l9_1242=l9_1289;
float2 l9_1297=l9_1232;
int l9_1298=l9_1230;
int l9_1299=l9_1231;
float l9_1300=l9_1240;
float2 l9_1301=l9_1297;
int l9_1302=l9_1298;
int l9_1303=l9_1299;
float3 l9_1304=float3(0.0);
if (l9_1302==0)
{
l9_1304=float3(l9_1301,0.0);
}
else
{
if (l9_1302==1)
{
l9_1304=float3(l9_1301.x,(l9_1301.y*0.5)+(0.5-(float(l9_1303)*0.5)),0.0);
}
else
{
l9_1304=float3(l9_1301,float(l9_1303));
}
}
float3 l9_1305=l9_1304;
float3 l9_1306=l9_1305;
float4 l9_1307=sc_set0.Tweak_N12.sample(sc_set0.Tweak_N12SmpSC,l9_1306.xy,bias(l9_1300));
float4 l9_1308=l9_1307;
if (l9_1238)
{
l9_1308=mix(l9_1239,l9_1308,float4(l9_1242));
}
float4 l9_1309=l9_1308;
float4 l9_1310=l9_1309;
float3 l9_1311=(l9_1310.xyz*1.9921875)-float3(1.0);
l9_1310=float4(l9_1311.x,l9_1311.y,l9_1311.z,l9_1310.w);
l9_1222=l9_1310;
float3 l9_1312=float3(0.0);
l9_1312=l9_1180*l9_1222.xyz;
float3 l9_1313=float3(0.0);
float3 l9_1314=l9_1312;
float l9_1315=dot(l9_1314,l9_1314);
float l9_1316;
if (l9_1315>0.0)
{
l9_1316=1.0/sqrt(l9_1315);
}
else
{
l9_1316=0.0;
}
float l9_1317=l9_1316;
float3 l9_1318=l9_1314*l9_1317;
l9_1313=l9_1318;
l9_1173=float4(l9_1313,0.0);
l9_1176=l9_1173;
}
else
{
float3 l9_1319=float3(0.0);
l9_1319=l9_1175.VertexNormal_WorldSpace;
l9_1174=float4(l9_1319,0.0);
l9_1176=l9_1174;
}
l9_1172=l9_1176;
l9_877=l9_1172;
l9_879=l9_877;
}
l9_875=l9_879;
float3 l9_1320=float3(0.0);
l9_1320=-l9_425.ViewDirWS;
float l9_1321=0.0;
l9_1321=dot(l9_875.xyz,l9_1320);
float l9_1322=0.0;
l9_1322=abs(l9_1321);
float l9_1323=0.0;
l9_1323=1.0-l9_1322;
l9_424=float4(l9_1323);
l9_426=l9_424;
}
l9_422=l9_426;
float l9_1324=0.0;
float l9_1325=(*sc_set0.UserUniforms).Tweak_N17;
l9_1324=l9_1325;
float4 l9_1326=float4(0.0);
float l9_1327;
if (l9_422.x<=0.0)
{
l9_1327=0.0;
}
else
{
l9_1327=pow(l9_422.x,l9_1324);
}
float l9_1328=l9_1327;
float l9_1329;
if (l9_422.y<=0.0)
{
l9_1329=0.0;
}
else
{
l9_1329=pow(l9_422.y,l9_1324);
}
float l9_1330=l9_1329;
float l9_1331;
if (l9_422.z<=0.0)
{
l9_1331=0.0;
}
else
{
l9_1331=pow(l9_422.z,l9_1324);
}
float l9_1332=l9_1331;
float l9_1333;
if (l9_422.w<=0.0)
{
l9_1333=0.0;
}
else
{
l9_1333=pow(l9_422.w,l9_1324);
}
l9_1326=float4(l9_1328,l9_1330,l9_1332,l9_1333);
float4 l9_1334=float4(0.0);
l9_1334=l9_418*l9_1326;
param_6=l9_1334;
param_8=param_6;
}
else
{
param_8=param_7;
}
Result_N23=param_8;
float3 Result_N62=float3(0.0);
float3 param_10=float3(0.0);
float3 param_11=(*sc_set0.UserUniforms).Port_Default_N062;
ssGlobals param_13=Globals;
float3 param_12;
if ((int(Tweak_N22_tmp)!=0))
{
float3 l9_1335=float3(0.0);
l9_1335=param_13.ViewDirWS;
float4 l9_1336=float4(0.0);
float4 l9_1337=float4(0.0);
float4 l9_1338=float4(0.0);
ssGlobals l9_1339=param_13;
float4 l9_1340;
if ((int(Tweak_N63_tmp)!=0))
{
float4 l9_1341=float4(0.0);
float4 l9_1342=float4(0.0);
float4 l9_1343=float4(0.0);
ssGlobals l9_1344=l9_1339;
float4 l9_1345;
if ((int(Tweak_N10_tmp)!=0))
{
float3 l9_1346=float3(0.0);
l9_1346=l9_1344.VertexTangent_WorldSpace;
float3 l9_1347=float3(0.0);
l9_1347=l9_1344.VertexBinormal_WorldSpace;
float3 l9_1348=float3(0.0);
l9_1348=l9_1344.VertexNormal_WorldSpace;
float3x3 l9_1349=float3x3(float3(0.0),float3(0.0),float3(0.0));
l9_1349=float3x3(float3(l9_1346),float3(l9_1347),float3(l9_1348));
float4 l9_1350=float4(0.0);
float4 l9_1351=float4(0.0);
float4 l9_1352=float4(0.0);
float4 l9_1353=float4(0.0);
float4 l9_1354=float4(0.0);
ssGlobals l9_1355=l9_1344;
float4 l9_1356;
if (Tweak_N94_tmp==0)
{
float2 l9_1357=float2(0.0);
l9_1357=l9_1355.Surface_UVCoord0;
l9_1351=float4(l9_1357,0.0,0.0);
l9_1356=l9_1351;
}
else
{
if (Tweak_N94_tmp==1)
{
float2 l9_1358=float2(0.0);
l9_1358=l9_1355.Surface_UVCoord1;
l9_1352=float4(l9_1358,0.0,0.0);
l9_1356=l9_1352;
}
else
{
if (Tweak_N94_tmp==2)
{
float2 l9_1359=float2(0.0);
l9_1359=l9_1355.gScreenCoord;
l9_1353=float4(l9_1359,0.0,0.0);
l9_1356=l9_1353;
}
else
{
float4 l9_1360=float4(0.0);
float4 l9_1361=float4(0.0);
float4 l9_1362=float4(0.0);
float4 l9_1363=float4(0.0);
float4 l9_1364=float4(0.0);
ssGlobals l9_1365=l9_1355;
float4 l9_1366;
if (Tweak_N76_tmp==0)
{
float2 l9_1367=float2(0.0);
l9_1367=l9_1365.Surface_UVCoord0;
l9_1361=float4(l9_1367,0.0,0.0);
l9_1366=l9_1361;
}
else
{
if (Tweak_N76_tmp==1)
{
float2 l9_1368=float2(0.0);
l9_1368=l9_1365.Surface_UVCoord1;
l9_1362=float4(l9_1368,0.0,0.0);
l9_1366=l9_1362;
}
else
{
if (Tweak_N76_tmp==2)
{
float2 l9_1369=float2(0.0);
l9_1369=l9_1365.gScreenCoord;
l9_1363=float4(l9_1369,0.0,0.0);
l9_1366=l9_1363;
}
else
{
float2 l9_1370=float2(0.0);
l9_1370=l9_1365.Surface_UVCoord0;
l9_1364=float4(l9_1370,0.0,0.0);
l9_1366=l9_1364;
}
}
}
l9_1360=l9_1366;
float4 l9_1371=float4(0.0);
l9_1371=l9_1360;
float2 l9_1372=float2(0.0);
float2 l9_1373=(*sc_set0.UserUniforms).Tweak_N73;
l9_1372=l9_1373;
float2 l9_1374=float2(0.0);
l9_1374=l9_1372;
float2 l9_1375=float2(0.0);
l9_1375=((l9_1371.xy-(*sc_set0.UserUniforms).Port_Center_N070)*l9_1374)+(*sc_set0.UserUniforms).Port_Center_N070;
float2 l9_1376=float2(0.0);
float2 l9_1377=(*sc_set0.UserUniforms).Tweak_N72;
l9_1376=l9_1377;
float2 l9_1378=float2(0.0);
l9_1378=l9_1376;
float2 l9_1379=float2(0.0);
l9_1379=l9_1375+l9_1378;
float l9_1380=0.0;
float l9_1381=(*sc_set0.UserUniforms).Tweak_N74;
l9_1380=l9_1381;
float l9_1382=0.0;
l9_1382=l9_1380;
float2 l9_1383=float2(0.0);
float2 l9_1384=l9_1379;
float l9_1385=l9_1382;
float2 l9_1386=(*sc_set0.UserUniforms).Port_Center_N071;
float l9_1387=sin(radians(l9_1385));
float l9_1388=cos(radians(l9_1385));
float2 l9_1389=l9_1384-l9_1386;
l9_1389=float2(dot(float2(l9_1388,l9_1387),l9_1389),dot(float2(-l9_1387,l9_1388),l9_1389))+l9_1386;
l9_1383=l9_1389;
float2 l9_1390=float2(0.0);
l9_1390=l9_1383;
l9_1354=float4(l9_1390,0.0,0.0);
l9_1356=l9_1354;
}
}
}
l9_1350=l9_1356;
float4 l9_1391=float4(0.0);
float2 l9_1392=l9_1350.xy;
int l9_1393;
if ((int(Tweak_N12HasSwappedViews_tmp)!=0))
{
int l9_1394=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1394=0;
}
else
{
l9_1394=in.varStereoViewID;
}
int l9_1395=l9_1394;
l9_1393=1-l9_1395;
}
else
{
int l9_1396=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1396=0;
}
else
{
l9_1396=in.varStereoViewID;
}
int l9_1397=l9_1396;
l9_1393=l9_1397;
}
int l9_1398=l9_1393;
int l9_1399=Tweak_N12Layout_tmp;
int l9_1400=l9_1398;
float2 l9_1401=l9_1392;
bool l9_1402=(int(SC_USE_UV_TRANSFORM_Tweak_N12_tmp)!=0);
float3x3 l9_1403=(*sc_set0.UserUniforms).Tweak_N12Transform;
int2 l9_1404=int2(SC_SOFTWARE_WRAP_MODE_U_Tweak_N12_tmp,SC_SOFTWARE_WRAP_MODE_V_Tweak_N12_tmp);
bool l9_1405=(int(SC_USE_UV_MIN_MAX_Tweak_N12_tmp)!=0);
float4 l9_1406=(*sc_set0.UserUniforms).Tweak_N12UvMinMax;
bool l9_1407=(int(SC_USE_CLAMP_TO_BORDER_Tweak_N12_tmp)!=0);
float4 l9_1408=(*sc_set0.UserUniforms).Tweak_N12BorderColor;
float l9_1409=0.0;
bool l9_1410=l9_1407&&(!l9_1405);
float l9_1411=1.0;
float l9_1412=l9_1401.x;
int l9_1413=l9_1404.x;
if (l9_1413==1)
{
l9_1412=fract(l9_1412);
}
else
{
if (l9_1413==2)
{
float l9_1414=fract(l9_1412);
float l9_1415=l9_1412-l9_1414;
float l9_1416=step(0.25,fract(l9_1415*0.5));
l9_1412=mix(l9_1414,1.0-l9_1414,fast::clamp(l9_1416,0.0,1.0));
}
}
l9_1401.x=l9_1412;
float l9_1417=l9_1401.y;
int l9_1418=l9_1404.y;
if (l9_1418==1)
{
l9_1417=fract(l9_1417);
}
else
{
if (l9_1418==2)
{
float l9_1419=fract(l9_1417);
float l9_1420=l9_1417-l9_1419;
float l9_1421=step(0.25,fract(l9_1420*0.5));
l9_1417=mix(l9_1419,1.0-l9_1419,fast::clamp(l9_1421,0.0,1.0));
}
}
l9_1401.y=l9_1417;
if (l9_1405)
{
bool l9_1422=l9_1407;
bool l9_1423;
if (l9_1422)
{
l9_1423=l9_1404.x==3;
}
else
{
l9_1423=l9_1422;
}
float l9_1424=l9_1401.x;
float l9_1425=l9_1406.x;
float l9_1426=l9_1406.z;
bool l9_1427=l9_1423;
float l9_1428=l9_1411;
float l9_1429=fast::clamp(l9_1424,l9_1425,l9_1426);
float l9_1430=step(abs(l9_1424-l9_1429),9.9999997e-06);
l9_1428*=(l9_1430+((1.0-float(l9_1427))*(1.0-l9_1430)));
l9_1424=l9_1429;
l9_1401.x=l9_1424;
l9_1411=l9_1428;
bool l9_1431=l9_1407;
bool l9_1432;
if (l9_1431)
{
l9_1432=l9_1404.y==3;
}
else
{
l9_1432=l9_1431;
}
float l9_1433=l9_1401.y;
float l9_1434=l9_1406.y;
float l9_1435=l9_1406.w;
bool l9_1436=l9_1432;
float l9_1437=l9_1411;
float l9_1438=fast::clamp(l9_1433,l9_1434,l9_1435);
float l9_1439=step(abs(l9_1433-l9_1438),9.9999997e-06);
l9_1437*=(l9_1439+((1.0-float(l9_1436))*(1.0-l9_1439)));
l9_1433=l9_1438;
l9_1401.y=l9_1433;
l9_1411=l9_1437;
}
float2 l9_1440=l9_1401;
bool l9_1441=l9_1402;
float3x3 l9_1442=l9_1403;
if (l9_1441)
{
l9_1440=float2((l9_1442*float3(l9_1440,1.0)).xy);
}
float2 l9_1443=l9_1440;
l9_1401=l9_1443;
float l9_1444=l9_1401.x;
int l9_1445=l9_1404.x;
bool l9_1446=l9_1410;
float l9_1447=l9_1411;
if ((l9_1445==0)||(l9_1445==3))
{
float l9_1448=l9_1444;
float l9_1449=0.0;
float l9_1450=1.0;
bool l9_1451=l9_1446;
float l9_1452=l9_1447;
float l9_1453=fast::clamp(l9_1448,l9_1449,l9_1450);
float l9_1454=step(abs(l9_1448-l9_1453),9.9999997e-06);
l9_1452*=(l9_1454+((1.0-float(l9_1451))*(1.0-l9_1454)));
l9_1448=l9_1453;
l9_1444=l9_1448;
l9_1447=l9_1452;
}
l9_1401.x=l9_1444;
l9_1411=l9_1447;
float l9_1455=l9_1401.y;
int l9_1456=l9_1404.y;
bool l9_1457=l9_1410;
float l9_1458=l9_1411;
if ((l9_1456==0)||(l9_1456==3))
{
float l9_1459=l9_1455;
float l9_1460=0.0;
float l9_1461=1.0;
bool l9_1462=l9_1457;
float l9_1463=l9_1458;
float l9_1464=fast::clamp(l9_1459,l9_1460,l9_1461);
float l9_1465=step(abs(l9_1459-l9_1464),9.9999997e-06);
l9_1463*=(l9_1465+((1.0-float(l9_1462))*(1.0-l9_1465)));
l9_1459=l9_1464;
l9_1455=l9_1459;
l9_1458=l9_1463;
}
l9_1401.y=l9_1455;
l9_1411=l9_1458;
float2 l9_1466=l9_1401;
int l9_1467=l9_1399;
int l9_1468=l9_1400;
float l9_1469=l9_1409;
float2 l9_1470=l9_1466;
int l9_1471=l9_1467;
int l9_1472=l9_1468;
float3 l9_1473=float3(0.0);
if (l9_1471==0)
{
l9_1473=float3(l9_1470,0.0);
}
else
{
if (l9_1471==1)
{
l9_1473=float3(l9_1470.x,(l9_1470.y*0.5)+(0.5-(float(l9_1472)*0.5)),0.0);
}
else
{
l9_1473=float3(l9_1470,float(l9_1472));
}
}
float3 l9_1474=l9_1473;
float3 l9_1475=l9_1474;
float4 l9_1476=sc_set0.Tweak_N12.sample(sc_set0.Tweak_N12SmpSC,l9_1475.xy,bias(l9_1469));
float4 l9_1477=l9_1476;
if (l9_1407)
{
l9_1477=mix(l9_1408,l9_1477,float4(l9_1411));
}
float4 l9_1478=l9_1477;
float4 l9_1479=l9_1478;
float3 l9_1480=(l9_1479.xyz*1.9921875)-float3(1.0);
l9_1479=float4(l9_1480.x,l9_1480.y,l9_1480.z,l9_1479.w);
l9_1391=l9_1479;
float3 l9_1481=float3(0.0);
l9_1481=l9_1349*l9_1391.xyz;
float3 l9_1482=float3(0.0);
float3 l9_1483=l9_1481;
float l9_1484=dot(l9_1483,l9_1483);
float l9_1485;
if (l9_1484>0.0)
{
l9_1485=1.0/sqrt(l9_1484);
}
else
{
l9_1485=0.0;
}
float l9_1486=l9_1485;
float3 l9_1487=l9_1483*l9_1486;
l9_1482=l9_1487;
l9_1342=float4(l9_1482,0.0);
l9_1345=l9_1342;
}
else
{
float3 l9_1488=float3(0.0);
l9_1488=l9_1344.VertexNormal_WorldSpace;
l9_1343=float4(l9_1488,0.0);
l9_1345=l9_1343;
}
l9_1341=l9_1345;
float4 l9_1489=float4(0.0);
float4 l9_1490=float4(0.0);
float4 l9_1491=float4(0.0);
float4 l9_1492=float4(0.0);
float4 l9_1493=float4(0.0);
ssGlobals l9_1494=l9_1339;
float4 l9_1495;
if (Tweak_N96_tmp==0)
{
float2 l9_1496=float2(0.0);
l9_1496=l9_1494.Surface_UVCoord0;
l9_1490=float4(l9_1496,0.0,0.0);
l9_1495=l9_1490;
}
else
{
if (Tweak_N96_tmp==1)
{
float2 l9_1497=float2(0.0);
l9_1497=l9_1494.Surface_UVCoord1;
l9_1491=float4(l9_1497,0.0,0.0);
l9_1495=l9_1491;
}
else
{
if (Tweak_N96_tmp==2)
{
float2 l9_1498=float2(0.0);
l9_1498=l9_1494.gScreenCoord;
l9_1492=float4(l9_1498,0.0,0.0);
l9_1495=l9_1492;
}
else
{
float4 l9_1499=float4(0.0);
float4 l9_1500=float4(0.0);
float4 l9_1501=float4(0.0);
float4 l9_1502=float4(0.0);
float4 l9_1503=float4(0.0);
ssGlobals l9_1504=l9_1494;
float4 l9_1505;
if (Tweak_N76_tmp==0)
{
float2 l9_1506=float2(0.0);
l9_1506=l9_1504.Surface_UVCoord0;
l9_1500=float4(l9_1506,0.0,0.0);
l9_1505=l9_1500;
}
else
{
if (Tweak_N76_tmp==1)
{
float2 l9_1507=float2(0.0);
l9_1507=l9_1504.Surface_UVCoord1;
l9_1501=float4(l9_1507,0.0,0.0);
l9_1505=l9_1501;
}
else
{
if (Tweak_N76_tmp==2)
{
float2 l9_1508=float2(0.0);
l9_1508=l9_1504.gScreenCoord;
l9_1502=float4(l9_1508,0.0,0.0);
l9_1505=l9_1502;
}
else
{
float2 l9_1509=float2(0.0);
l9_1509=l9_1504.Surface_UVCoord0;
l9_1503=float4(l9_1509,0.0,0.0);
l9_1505=l9_1503;
}
}
}
l9_1499=l9_1505;
float4 l9_1510=float4(0.0);
l9_1510=l9_1499;
float2 l9_1511=float2(0.0);
float2 l9_1512=(*sc_set0.UserUniforms).Tweak_N73;
l9_1511=l9_1512;
float2 l9_1513=float2(0.0);
l9_1513=l9_1511;
float2 l9_1514=float2(0.0);
l9_1514=((l9_1510.xy-(*sc_set0.UserUniforms).Port_Center_N070)*l9_1513)+(*sc_set0.UserUniforms).Port_Center_N070;
float2 l9_1515=float2(0.0);
float2 l9_1516=(*sc_set0.UserUniforms).Tweak_N72;
l9_1515=l9_1516;
float2 l9_1517=float2(0.0);
l9_1517=l9_1515;
float2 l9_1518=float2(0.0);
l9_1518=l9_1514+l9_1517;
float l9_1519=0.0;
float l9_1520=(*sc_set0.UserUniforms).Tweak_N74;
l9_1519=l9_1520;
float l9_1521=0.0;
l9_1521=l9_1519;
float2 l9_1522=float2(0.0);
float2 l9_1523=l9_1518;
float l9_1524=l9_1521;
float2 l9_1525=(*sc_set0.UserUniforms).Port_Center_N071;
float l9_1526=sin(radians(l9_1524));
float l9_1527=cos(radians(l9_1524));
float2 l9_1528=l9_1523-l9_1525;
l9_1528=float2(dot(float2(l9_1527,l9_1526),l9_1528),dot(float2(-l9_1526,l9_1527),l9_1528))+l9_1525;
l9_1522=l9_1528;
float2 l9_1529=float2(0.0);
l9_1529=l9_1522;
l9_1493=float4(l9_1529,0.0,0.0);
l9_1495=l9_1493;
}
}
}
l9_1489=l9_1495;
float4 l9_1530=float4(0.0);
float2 l9_1531=l9_1489.xy;
int l9_1532;
if ((int(Tweak_N58HasSwappedViews_tmp)!=0))
{
int l9_1533=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1533=0;
}
else
{
l9_1533=in.varStereoViewID;
}
int l9_1534=l9_1533;
l9_1532=1-l9_1534;
}
else
{
int l9_1535=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1535=0;
}
else
{
l9_1535=in.varStereoViewID;
}
int l9_1536=l9_1535;
l9_1532=l9_1536;
}
int l9_1537=l9_1532;
int l9_1538=Tweak_N58Layout_tmp;
int l9_1539=l9_1537;
float2 l9_1540=l9_1531;
bool l9_1541=(int(SC_USE_UV_TRANSFORM_Tweak_N58_tmp)!=0);
float3x3 l9_1542=(*sc_set0.UserUniforms).Tweak_N58Transform;
int2 l9_1543=int2(SC_SOFTWARE_WRAP_MODE_U_Tweak_N58_tmp,SC_SOFTWARE_WRAP_MODE_V_Tweak_N58_tmp);
bool l9_1544=(int(SC_USE_UV_MIN_MAX_Tweak_N58_tmp)!=0);
float4 l9_1545=(*sc_set0.UserUniforms).Tweak_N58UvMinMax;
bool l9_1546=(int(SC_USE_CLAMP_TO_BORDER_Tweak_N58_tmp)!=0);
float4 l9_1547=(*sc_set0.UserUniforms).Tweak_N58BorderColor;
float l9_1548=0.0;
bool l9_1549=l9_1546&&(!l9_1544);
float l9_1550=1.0;
float l9_1551=l9_1540.x;
int l9_1552=l9_1543.x;
if (l9_1552==1)
{
l9_1551=fract(l9_1551);
}
else
{
if (l9_1552==2)
{
float l9_1553=fract(l9_1551);
float l9_1554=l9_1551-l9_1553;
float l9_1555=step(0.25,fract(l9_1554*0.5));
l9_1551=mix(l9_1553,1.0-l9_1553,fast::clamp(l9_1555,0.0,1.0));
}
}
l9_1540.x=l9_1551;
float l9_1556=l9_1540.y;
int l9_1557=l9_1543.y;
if (l9_1557==1)
{
l9_1556=fract(l9_1556);
}
else
{
if (l9_1557==2)
{
float l9_1558=fract(l9_1556);
float l9_1559=l9_1556-l9_1558;
float l9_1560=step(0.25,fract(l9_1559*0.5));
l9_1556=mix(l9_1558,1.0-l9_1558,fast::clamp(l9_1560,0.0,1.0));
}
}
l9_1540.y=l9_1556;
if (l9_1544)
{
bool l9_1561=l9_1546;
bool l9_1562;
if (l9_1561)
{
l9_1562=l9_1543.x==3;
}
else
{
l9_1562=l9_1561;
}
float l9_1563=l9_1540.x;
float l9_1564=l9_1545.x;
float l9_1565=l9_1545.z;
bool l9_1566=l9_1562;
float l9_1567=l9_1550;
float l9_1568=fast::clamp(l9_1563,l9_1564,l9_1565);
float l9_1569=step(abs(l9_1563-l9_1568),9.9999997e-06);
l9_1567*=(l9_1569+((1.0-float(l9_1566))*(1.0-l9_1569)));
l9_1563=l9_1568;
l9_1540.x=l9_1563;
l9_1550=l9_1567;
bool l9_1570=l9_1546;
bool l9_1571;
if (l9_1570)
{
l9_1571=l9_1543.y==3;
}
else
{
l9_1571=l9_1570;
}
float l9_1572=l9_1540.y;
float l9_1573=l9_1545.y;
float l9_1574=l9_1545.w;
bool l9_1575=l9_1571;
float l9_1576=l9_1550;
float l9_1577=fast::clamp(l9_1572,l9_1573,l9_1574);
float l9_1578=step(abs(l9_1572-l9_1577),9.9999997e-06);
l9_1576*=(l9_1578+((1.0-float(l9_1575))*(1.0-l9_1578)));
l9_1572=l9_1577;
l9_1540.y=l9_1572;
l9_1550=l9_1576;
}
float2 l9_1579=l9_1540;
bool l9_1580=l9_1541;
float3x3 l9_1581=l9_1542;
if (l9_1580)
{
l9_1579=float2((l9_1581*float3(l9_1579,1.0)).xy);
}
float2 l9_1582=l9_1579;
l9_1540=l9_1582;
float l9_1583=l9_1540.x;
int l9_1584=l9_1543.x;
bool l9_1585=l9_1549;
float l9_1586=l9_1550;
if ((l9_1584==0)||(l9_1584==3))
{
float l9_1587=l9_1583;
float l9_1588=0.0;
float l9_1589=1.0;
bool l9_1590=l9_1585;
float l9_1591=l9_1586;
float l9_1592=fast::clamp(l9_1587,l9_1588,l9_1589);
float l9_1593=step(abs(l9_1587-l9_1592),9.9999997e-06);
l9_1591*=(l9_1593+((1.0-float(l9_1590))*(1.0-l9_1593)));
l9_1587=l9_1592;
l9_1583=l9_1587;
l9_1586=l9_1591;
}
l9_1540.x=l9_1583;
l9_1550=l9_1586;
float l9_1594=l9_1540.y;
int l9_1595=l9_1543.y;
bool l9_1596=l9_1549;
float l9_1597=l9_1550;
if ((l9_1595==0)||(l9_1595==3))
{
float l9_1598=l9_1594;
float l9_1599=0.0;
float l9_1600=1.0;
bool l9_1601=l9_1596;
float l9_1602=l9_1597;
float l9_1603=fast::clamp(l9_1598,l9_1599,l9_1600);
float l9_1604=step(abs(l9_1598-l9_1603),9.9999997e-06);
l9_1602*=(l9_1604+((1.0-float(l9_1601))*(1.0-l9_1604)));
l9_1598=l9_1603;
l9_1594=l9_1598;
l9_1597=l9_1602;
}
l9_1540.y=l9_1594;
l9_1550=l9_1597;
float2 l9_1605=l9_1540;
int l9_1606=l9_1538;
int l9_1607=l9_1539;
float l9_1608=l9_1548;
float2 l9_1609=l9_1605;
int l9_1610=l9_1606;
int l9_1611=l9_1607;
float3 l9_1612=float3(0.0);
if (l9_1610==0)
{
l9_1612=float3(l9_1609,0.0);
}
else
{
if (l9_1610==1)
{
l9_1612=float3(l9_1609.x,(l9_1609.y*0.5)+(0.5-(float(l9_1611)*0.5)),0.0);
}
else
{
l9_1612=float3(l9_1609,float(l9_1611));
}
}
float3 l9_1613=l9_1612;
float3 l9_1614=l9_1613;
float4 l9_1615=sc_set0.Tweak_N58.sample(sc_set0.Tweak_N58SmpSC,l9_1614.xy,bias(l9_1608));
float4 l9_1616=l9_1615;
if (l9_1546)
{
l9_1616=mix(l9_1547,l9_1616,float4(l9_1550));
}
float4 l9_1617=l9_1616;
float4 l9_1618=l9_1617;
float3 l9_1619=(l9_1618.xyz*1.9921875)-float3(1.0);
l9_1618=float4(l9_1619.x,l9_1619.y,l9_1619.z,l9_1618.w);
l9_1530=l9_1618;
float3 l9_1620=float3(0.0);
float3 l9_1621=l9_1341.xyz;
float l9_1622=(*sc_set0.UserUniforms).Port_Strength1_N057;
float3 l9_1623=l9_1530.xyz;
float l9_1624=(*sc_set0.UserUniforms).Port_Strength2_N057;
float3 l9_1625=l9_1621;
float l9_1626=l9_1622;
float3 l9_1627=l9_1623;
float l9_1628=l9_1624;
float3 l9_1629=mix(float3(0.0,0.0,1.0),l9_1625,float3(l9_1626))+float3(0.0,0.0,1.0);
float3 l9_1630=mix(float3(0.0,0.0,1.0),l9_1627,float3(l9_1628))*float3(-1.0,-1.0,1.0);
float3 l9_1631=normalize((l9_1629*dot(l9_1629,l9_1630))-(l9_1630*l9_1629.z));
l9_1623=l9_1631;
float3 l9_1632=l9_1623;
l9_1620=l9_1632;
l9_1337=float4(l9_1620,0.0);
l9_1340=l9_1337;
}
else
{
float4 l9_1633=float4(0.0);
float4 l9_1634=float4(0.0);
float4 l9_1635=float4(0.0);
ssGlobals l9_1636=l9_1339;
float4 l9_1637;
if ((int(Tweak_N10_tmp)!=0))
{
float3 l9_1638=float3(0.0);
l9_1638=l9_1636.VertexTangent_WorldSpace;
float3 l9_1639=float3(0.0);
l9_1639=l9_1636.VertexBinormal_WorldSpace;
float3 l9_1640=float3(0.0);
l9_1640=l9_1636.VertexNormal_WorldSpace;
float3x3 l9_1641=float3x3(float3(0.0),float3(0.0),float3(0.0));
l9_1641=float3x3(float3(l9_1638),float3(l9_1639),float3(l9_1640));
float4 l9_1642=float4(0.0);
float4 l9_1643=float4(0.0);
float4 l9_1644=float4(0.0);
float4 l9_1645=float4(0.0);
float4 l9_1646=float4(0.0);
ssGlobals l9_1647=l9_1636;
float4 l9_1648;
if (Tweak_N94_tmp==0)
{
float2 l9_1649=float2(0.0);
l9_1649=l9_1647.Surface_UVCoord0;
l9_1643=float4(l9_1649,0.0,0.0);
l9_1648=l9_1643;
}
else
{
if (Tweak_N94_tmp==1)
{
float2 l9_1650=float2(0.0);
l9_1650=l9_1647.Surface_UVCoord1;
l9_1644=float4(l9_1650,0.0,0.0);
l9_1648=l9_1644;
}
else
{
if (Tweak_N94_tmp==2)
{
float2 l9_1651=float2(0.0);
l9_1651=l9_1647.gScreenCoord;
l9_1645=float4(l9_1651,0.0,0.0);
l9_1648=l9_1645;
}
else
{
float4 l9_1652=float4(0.0);
float4 l9_1653=float4(0.0);
float4 l9_1654=float4(0.0);
float4 l9_1655=float4(0.0);
float4 l9_1656=float4(0.0);
ssGlobals l9_1657=l9_1647;
float4 l9_1658;
if (Tweak_N76_tmp==0)
{
float2 l9_1659=float2(0.0);
l9_1659=l9_1657.Surface_UVCoord0;
l9_1653=float4(l9_1659,0.0,0.0);
l9_1658=l9_1653;
}
else
{
if (Tweak_N76_tmp==1)
{
float2 l9_1660=float2(0.0);
l9_1660=l9_1657.Surface_UVCoord1;
l9_1654=float4(l9_1660,0.0,0.0);
l9_1658=l9_1654;
}
else
{
if (Tweak_N76_tmp==2)
{
float2 l9_1661=float2(0.0);
l9_1661=l9_1657.gScreenCoord;
l9_1655=float4(l9_1661,0.0,0.0);
l9_1658=l9_1655;
}
else
{
float2 l9_1662=float2(0.0);
l9_1662=l9_1657.Surface_UVCoord0;
l9_1656=float4(l9_1662,0.0,0.0);
l9_1658=l9_1656;
}
}
}
l9_1652=l9_1658;
float4 l9_1663=float4(0.0);
l9_1663=l9_1652;
float2 l9_1664=float2(0.0);
float2 l9_1665=(*sc_set0.UserUniforms).Tweak_N73;
l9_1664=l9_1665;
float2 l9_1666=float2(0.0);
l9_1666=l9_1664;
float2 l9_1667=float2(0.0);
l9_1667=((l9_1663.xy-(*sc_set0.UserUniforms).Port_Center_N070)*l9_1666)+(*sc_set0.UserUniforms).Port_Center_N070;
float2 l9_1668=float2(0.0);
float2 l9_1669=(*sc_set0.UserUniforms).Tweak_N72;
l9_1668=l9_1669;
float2 l9_1670=float2(0.0);
l9_1670=l9_1668;
float2 l9_1671=float2(0.0);
l9_1671=l9_1667+l9_1670;
float l9_1672=0.0;
float l9_1673=(*sc_set0.UserUniforms).Tweak_N74;
l9_1672=l9_1673;
float l9_1674=0.0;
l9_1674=l9_1672;
float2 l9_1675=float2(0.0);
float2 l9_1676=l9_1671;
float l9_1677=l9_1674;
float2 l9_1678=(*sc_set0.UserUniforms).Port_Center_N071;
float l9_1679=sin(radians(l9_1677));
float l9_1680=cos(radians(l9_1677));
float2 l9_1681=l9_1676-l9_1678;
l9_1681=float2(dot(float2(l9_1680,l9_1679),l9_1681),dot(float2(-l9_1679,l9_1680),l9_1681))+l9_1678;
l9_1675=l9_1681;
float2 l9_1682=float2(0.0);
l9_1682=l9_1675;
l9_1646=float4(l9_1682,0.0,0.0);
l9_1648=l9_1646;
}
}
}
l9_1642=l9_1648;
float4 l9_1683=float4(0.0);
float2 l9_1684=l9_1642.xy;
int l9_1685;
if ((int(Tweak_N12HasSwappedViews_tmp)!=0))
{
int l9_1686=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1686=0;
}
else
{
l9_1686=in.varStereoViewID;
}
int l9_1687=l9_1686;
l9_1685=1-l9_1687;
}
else
{
int l9_1688=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1688=0;
}
else
{
l9_1688=in.varStereoViewID;
}
int l9_1689=l9_1688;
l9_1685=l9_1689;
}
int l9_1690=l9_1685;
int l9_1691=Tweak_N12Layout_tmp;
int l9_1692=l9_1690;
float2 l9_1693=l9_1684;
bool l9_1694=(int(SC_USE_UV_TRANSFORM_Tweak_N12_tmp)!=0);
float3x3 l9_1695=(*sc_set0.UserUniforms).Tweak_N12Transform;
int2 l9_1696=int2(SC_SOFTWARE_WRAP_MODE_U_Tweak_N12_tmp,SC_SOFTWARE_WRAP_MODE_V_Tweak_N12_tmp);
bool l9_1697=(int(SC_USE_UV_MIN_MAX_Tweak_N12_tmp)!=0);
float4 l9_1698=(*sc_set0.UserUniforms).Tweak_N12UvMinMax;
bool l9_1699=(int(SC_USE_CLAMP_TO_BORDER_Tweak_N12_tmp)!=0);
float4 l9_1700=(*sc_set0.UserUniforms).Tweak_N12BorderColor;
float l9_1701=0.0;
bool l9_1702=l9_1699&&(!l9_1697);
float l9_1703=1.0;
float l9_1704=l9_1693.x;
int l9_1705=l9_1696.x;
if (l9_1705==1)
{
l9_1704=fract(l9_1704);
}
else
{
if (l9_1705==2)
{
float l9_1706=fract(l9_1704);
float l9_1707=l9_1704-l9_1706;
float l9_1708=step(0.25,fract(l9_1707*0.5));
l9_1704=mix(l9_1706,1.0-l9_1706,fast::clamp(l9_1708,0.0,1.0));
}
}
l9_1693.x=l9_1704;
float l9_1709=l9_1693.y;
int l9_1710=l9_1696.y;
if (l9_1710==1)
{
l9_1709=fract(l9_1709);
}
else
{
if (l9_1710==2)
{
float l9_1711=fract(l9_1709);
float l9_1712=l9_1709-l9_1711;
float l9_1713=step(0.25,fract(l9_1712*0.5));
l9_1709=mix(l9_1711,1.0-l9_1711,fast::clamp(l9_1713,0.0,1.0));
}
}
l9_1693.y=l9_1709;
if (l9_1697)
{
bool l9_1714=l9_1699;
bool l9_1715;
if (l9_1714)
{
l9_1715=l9_1696.x==3;
}
else
{
l9_1715=l9_1714;
}
float l9_1716=l9_1693.x;
float l9_1717=l9_1698.x;
float l9_1718=l9_1698.z;
bool l9_1719=l9_1715;
float l9_1720=l9_1703;
float l9_1721=fast::clamp(l9_1716,l9_1717,l9_1718);
float l9_1722=step(abs(l9_1716-l9_1721),9.9999997e-06);
l9_1720*=(l9_1722+((1.0-float(l9_1719))*(1.0-l9_1722)));
l9_1716=l9_1721;
l9_1693.x=l9_1716;
l9_1703=l9_1720;
bool l9_1723=l9_1699;
bool l9_1724;
if (l9_1723)
{
l9_1724=l9_1696.y==3;
}
else
{
l9_1724=l9_1723;
}
float l9_1725=l9_1693.y;
float l9_1726=l9_1698.y;
float l9_1727=l9_1698.w;
bool l9_1728=l9_1724;
float l9_1729=l9_1703;
float l9_1730=fast::clamp(l9_1725,l9_1726,l9_1727);
float l9_1731=step(abs(l9_1725-l9_1730),9.9999997e-06);
l9_1729*=(l9_1731+((1.0-float(l9_1728))*(1.0-l9_1731)));
l9_1725=l9_1730;
l9_1693.y=l9_1725;
l9_1703=l9_1729;
}
float2 l9_1732=l9_1693;
bool l9_1733=l9_1694;
float3x3 l9_1734=l9_1695;
if (l9_1733)
{
l9_1732=float2((l9_1734*float3(l9_1732,1.0)).xy);
}
float2 l9_1735=l9_1732;
l9_1693=l9_1735;
float l9_1736=l9_1693.x;
int l9_1737=l9_1696.x;
bool l9_1738=l9_1702;
float l9_1739=l9_1703;
if ((l9_1737==0)||(l9_1737==3))
{
float l9_1740=l9_1736;
float l9_1741=0.0;
float l9_1742=1.0;
bool l9_1743=l9_1738;
float l9_1744=l9_1739;
float l9_1745=fast::clamp(l9_1740,l9_1741,l9_1742);
float l9_1746=step(abs(l9_1740-l9_1745),9.9999997e-06);
l9_1744*=(l9_1746+((1.0-float(l9_1743))*(1.0-l9_1746)));
l9_1740=l9_1745;
l9_1736=l9_1740;
l9_1739=l9_1744;
}
l9_1693.x=l9_1736;
l9_1703=l9_1739;
float l9_1747=l9_1693.y;
int l9_1748=l9_1696.y;
bool l9_1749=l9_1702;
float l9_1750=l9_1703;
if ((l9_1748==0)||(l9_1748==3))
{
float l9_1751=l9_1747;
float l9_1752=0.0;
float l9_1753=1.0;
bool l9_1754=l9_1749;
float l9_1755=l9_1750;
float l9_1756=fast::clamp(l9_1751,l9_1752,l9_1753);
float l9_1757=step(abs(l9_1751-l9_1756),9.9999997e-06);
l9_1755*=(l9_1757+((1.0-float(l9_1754))*(1.0-l9_1757)));
l9_1751=l9_1756;
l9_1747=l9_1751;
l9_1750=l9_1755;
}
l9_1693.y=l9_1747;
l9_1703=l9_1750;
float2 l9_1758=l9_1693;
int l9_1759=l9_1691;
int l9_1760=l9_1692;
float l9_1761=l9_1701;
float2 l9_1762=l9_1758;
int l9_1763=l9_1759;
int l9_1764=l9_1760;
float3 l9_1765=float3(0.0);
if (l9_1763==0)
{
l9_1765=float3(l9_1762,0.0);
}
else
{
if (l9_1763==1)
{
l9_1765=float3(l9_1762.x,(l9_1762.y*0.5)+(0.5-(float(l9_1764)*0.5)),0.0);
}
else
{
l9_1765=float3(l9_1762,float(l9_1764));
}
}
float3 l9_1766=l9_1765;
float3 l9_1767=l9_1766;
float4 l9_1768=sc_set0.Tweak_N12.sample(sc_set0.Tweak_N12SmpSC,l9_1767.xy,bias(l9_1761));
float4 l9_1769=l9_1768;
if (l9_1699)
{
l9_1769=mix(l9_1700,l9_1769,float4(l9_1703));
}
float4 l9_1770=l9_1769;
float4 l9_1771=l9_1770;
float3 l9_1772=(l9_1771.xyz*1.9921875)-float3(1.0);
l9_1771=float4(l9_1772.x,l9_1772.y,l9_1772.z,l9_1771.w);
l9_1683=l9_1771;
float3 l9_1773=float3(0.0);
l9_1773=l9_1641*l9_1683.xyz;
float3 l9_1774=float3(0.0);
float3 l9_1775=l9_1773;
float l9_1776=dot(l9_1775,l9_1775);
float l9_1777;
if (l9_1776>0.0)
{
l9_1777=1.0/sqrt(l9_1776);
}
else
{
l9_1777=0.0;
}
float l9_1778=l9_1777;
float3 l9_1779=l9_1775*l9_1778;
l9_1774=l9_1779;
l9_1634=float4(l9_1774,0.0);
l9_1637=l9_1634;
}
else
{
float3 l9_1780=float3(0.0);
l9_1780=l9_1636.VertexNormal_WorldSpace;
l9_1635=float4(l9_1780,0.0);
l9_1637=l9_1635;
}
l9_1633=l9_1637;
l9_1338=l9_1633;
l9_1340=l9_1338;
}
l9_1336=l9_1340;
float3 l9_1781=float3(0.0);
l9_1781=reflect(l9_1335,l9_1336.xyz);
float3 l9_1782=float3(0.0);
l9_1782=l9_1781*(*sc_set0.UserUniforms).Port_Input1_N042;
float3 l9_1783=float3(0.0);
l9_1783=l9_1782;
float2 l9_1784=float2(0.0);
l9_1784=float2(l9_1783.x,l9_1783.y);
float l9_1785=0.0;
float l9_1786=0.0;
float l9_1787=0.0;
float3 l9_1788=l9_1783;
float l9_1789=l9_1788.x;
float l9_1790=l9_1788.y;
float l9_1791=l9_1788.z;
l9_1785=l9_1789;
l9_1786=l9_1790;
l9_1787=l9_1791;
float l9_1792=0.0;
l9_1792=l9_1785*l9_1785;
float l9_1793=0.0;
l9_1793=l9_1786*l9_1786;
float l9_1794=0.0;
l9_1794=l9_1787+(*sc_set0.UserUniforms).Port_Input1_N264;
float l9_1795=0.0;
l9_1795=l9_1794*l9_1794;
float l9_1796=0.0;
l9_1796=(l9_1792+l9_1793)+l9_1795;
float l9_1797=0.0;
float l9_1798;
if (l9_1796<=0.0)
{
l9_1798=0.0;
}
else
{
l9_1798=sqrt(l9_1796);
}
l9_1797=l9_1798;
float l9_1799=0.0;
l9_1799=l9_1797*(*sc_set0.UserUniforms).Port_Input1_N268;
float2 l9_1800=float2(0.0);
l9_1800=l9_1784/float2(l9_1799);
float2 l9_1801=float2(0.0);
l9_1801=l9_1800+float2((*sc_set0.UserUniforms).Port_Input1_N270);
float2 l9_1802=float2(0.0);
l9_1802=float2(1.0)-l9_1801;
float2 l9_1803=float2(0.0);
l9_1803=l9_1802;
float4 l9_1804=float4(0.0);
int l9_1805;
if ((int(Tweak_N15HasSwappedViews_tmp)!=0))
{
int l9_1806=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1806=0;
}
else
{
l9_1806=in.varStereoViewID;
}
int l9_1807=l9_1806;
l9_1805=1-l9_1807;
}
else
{
int l9_1808=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1808=0;
}
else
{
l9_1808=in.varStereoViewID;
}
int l9_1809=l9_1808;
l9_1805=l9_1809;
}
int l9_1810=l9_1805;
int l9_1811=Tweak_N15Layout_tmp;
int l9_1812=l9_1810;
float2 l9_1813=l9_1803;
bool l9_1814=(int(SC_USE_UV_TRANSFORM_Tweak_N15_tmp)!=0);
float3x3 l9_1815=(*sc_set0.UserUniforms).Tweak_N15Transform;
int2 l9_1816=int2(SC_SOFTWARE_WRAP_MODE_U_Tweak_N15_tmp,SC_SOFTWARE_WRAP_MODE_V_Tweak_N15_tmp);
bool l9_1817=(int(SC_USE_UV_MIN_MAX_Tweak_N15_tmp)!=0);
float4 l9_1818=(*sc_set0.UserUniforms).Tweak_N15UvMinMax;
bool l9_1819=(int(SC_USE_CLAMP_TO_BORDER_Tweak_N15_tmp)!=0);
float4 l9_1820=(*sc_set0.UserUniforms).Tweak_N15BorderColor;
float l9_1821=0.0;
bool l9_1822=l9_1819&&(!l9_1817);
float l9_1823=1.0;
float l9_1824=l9_1813.x;
int l9_1825=l9_1816.x;
if (l9_1825==1)
{
l9_1824=fract(l9_1824);
}
else
{
if (l9_1825==2)
{
float l9_1826=fract(l9_1824);
float l9_1827=l9_1824-l9_1826;
float l9_1828=step(0.25,fract(l9_1827*0.5));
l9_1824=mix(l9_1826,1.0-l9_1826,fast::clamp(l9_1828,0.0,1.0));
}
}
l9_1813.x=l9_1824;
float l9_1829=l9_1813.y;
int l9_1830=l9_1816.y;
if (l9_1830==1)
{
l9_1829=fract(l9_1829);
}
else
{
if (l9_1830==2)
{
float l9_1831=fract(l9_1829);
float l9_1832=l9_1829-l9_1831;
float l9_1833=step(0.25,fract(l9_1832*0.5));
l9_1829=mix(l9_1831,1.0-l9_1831,fast::clamp(l9_1833,0.0,1.0));
}
}
l9_1813.y=l9_1829;
if (l9_1817)
{
bool l9_1834=l9_1819;
bool l9_1835;
if (l9_1834)
{
l9_1835=l9_1816.x==3;
}
else
{
l9_1835=l9_1834;
}
float l9_1836=l9_1813.x;
float l9_1837=l9_1818.x;
float l9_1838=l9_1818.z;
bool l9_1839=l9_1835;
float l9_1840=l9_1823;
float l9_1841=fast::clamp(l9_1836,l9_1837,l9_1838);
float l9_1842=step(abs(l9_1836-l9_1841),9.9999997e-06);
l9_1840*=(l9_1842+((1.0-float(l9_1839))*(1.0-l9_1842)));
l9_1836=l9_1841;
l9_1813.x=l9_1836;
l9_1823=l9_1840;
bool l9_1843=l9_1819;
bool l9_1844;
if (l9_1843)
{
l9_1844=l9_1816.y==3;
}
else
{
l9_1844=l9_1843;
}
float l9_1845=l9_1813.y;
float l9_1846=l9_1818.y;
float l9_1847=l9_1818.w;
bool l9_1848=l9_1844;
float l9_1849=l9_1823;
float l9_1850=fast::clamp(l9_1845,l9_1846,l9_1847);
float l9_1851=step(abs(l9_1845-l9_1850),9.9999997e-06);
l9_1849*=(l9_1851+((1.0-float(l9_1848))*(1.0-l9_1851)));
l9_1845=l9_1850;
l9_1813.y=l9_1845;
l9_1823=l9_1849;
}
float2 l9_1852=l9_1813;
bool l9_1853=l9_1814;
float3x3 l9_1854=l9_1815;
if (l9_1853)
{
l9_1852=float2((l9_1854*float3(l9_1852,1.0)).xy);
}
float2 l9_1855=l9_1852;
l9_1813=l9_1855;
float l9_1856=l9_1813.x;
int l9_1857=l9_1816.x;
bool l9_1858=l9_1822;
float l9_1859=l9_1823;
if ((l9_1857==0)||(l9_1857==3))
{
float l9_1860=l9_1856;
float l9_1861=0.0;
float l9_1862=1.0;
bool l9_1863=l9_1858;
float l9_1864=l9_1859;
float l9_1865=fast::clamp(l9_1860,l9_1861,l9_1862);
float l9_1866=step(abs(l9_1860-l9_1865),9.9999997e-06);
l9_1864*=(l9_1866+((1.0-float(l9_1863))*(1.0-l9_1866)));
l9_1860=l9_1865;
l9_1856=l9_1860;
l9_1859=l9_1864;
}
l9_1813.x=l9_1856;
l9_1823=l9_1859;
float l9_1867=l9_1813.y;
int l9_1868=l9_1816.y;
bool l9_1869=l9_1822;
float l9_1870=l9_1823;
if ((l9_1868==0)||(l9_1868==3))
{
float l9_1871=l9_1867;
float l9_1872=0.0;
float l9_1873=1.0;
bool l9_1874=l9_1869;
float l9_1875=l9_1870;
float l9_1876=fast::clamp(l9_1871,l9_1872,l9_1873);
float l9_1877=step(abs(l9_1871-l9_1876),9.9999997e-06);
l9_1875*=(l9_1877+((1.0-float(l9_1874))*(1.0-l9_1877)));
l9_1871=l9_1876;
l9_1867=l9_1871;
l9_1870=l9_1875;
}
l9_1813.y=l9_1867;
l9_1823=l9_1870;
float2 l9_1878=l9_1813;
int l9_1879=l9_1811;
int l9_1880=l9_1812;
float l9_1881=l9_1821;
float2 l9_1882=l9_1878;
int l9_1883=l9_1879;
int l9_1884=l9_1880;
float3 l9_1885=float3(0.0);
if (l9_1883==0)
{
l9_1885=float3(l9_1882,0.0);
}
else
{
if (l9_1883==1)
{
l9_1885=float3(l9_1882.x,(l9_1882.y*0.5)+(0.5-(float(l9_1884)*0.5)),0.0);
}
else
{
l9_1885=float3(l9_1882,float(l9_1884));
}
}
float3 l9_1886=l9_1885;
float3 l9_1887=l9_1886;
float4 l9_1888=sc_set0.Tweak_N15.sample(sc_set0.Tweak_N15SmpSC,l9_1887.xy,bias(l9_1881));
float4 l9_1889=l9_1888;
if (l9_1819)
{
l9_1889=mix(l9_1820,l9_1889,float4(l9_1823));
}
float4 l9_1890=l9_1889;
l9_1804=l9_1890;
float4 l9_1891=float4(0.0);
float4 l9_1892=float4(0.0);
float4 l9_1893=(*sc_set0.UserUniforms).Port_Default_N083;
ssGlobals l9_1894=param_13;
float4 l9_1895;
if ((int(Tweak_N34_tmp)!=0))
{
float4 l9_1896=float4(0.0);
float4 l9_1897=float4(0.0);
float4 l9_1898=float4(0.0);
float4 l9_1899=float4(0.0);
float4 l9_1900=float4(0.0);
ssGlobals l9_1901=l9_1894;
float4 l9_1902;
if (Tweak_N90_tmp==0)
{
float2 l9_1903=float2(0.0);
l9_1903=l9_1901.Surface_UVCoord0;
l9_1897=float4(l9_1903,0.0,0.0);
l9_1902=l9_1897;
}
else
{
if (Tweak_N90_tmp==1)
{
float2 l9_1904=float2(0.0);
l9_1904=l9_1901.Surface_UVCoord1;
l9_1898=float4(l9_1904,0.0,0.0);
l9_1902=l9_1898;
}
else
{
if (Tweak_N90_tmp==2)
{
float2 l9_1905=float2(0.0);
l9_1905=l9_1901.gScreenCoord;
l9_1899=float4(l9_1905,0.0,0.0);
l9_1902=l9_1899;
}
else
{
float4 l9_1906=float4(0.0);
float4 l9_1907=float4(0.0);
float4 l9_1908=float4(0.0);
float4 l9_1909=float4(0.0);
float4 l9_1910=float4(0.0);
ssGlobals l9_1911=l9_1901;
float4 l9_1912;
if (Tweak_N76_tmp==0)
{
float2 l9_1913=float2(0.0);
l9_1913=l9_1911.Surface_UVCoord0;
l9_1907=float4(l9_1913,0.0,0.0);
l9_1912=l9_1907;
}
else
{
if (Tweak_N76_tmp==1)
{
float2 l9_1914=float2(0.0);
l9_1914=l9_1911.Surface_UVCoord1;
l9_1908=float4(l9_1914,0.0,0.0);
l9_1912=l9_1908;
}
else
{
if (Tweak_N76_tmp==2)
{
float2 l9_1915=float2(0.0);
l9_1915=l9_1911.gScreenCoord;
l9_1909=float4(l9_1915,0.0,0.0);
l9_1912=l9_1909;
}
else
{
float2 l9_1916=float2(0.0);
l9_1916=l9_1911.Surface_UVCoord0;
l9_1910=float4(l9_1916,0.0,0.0);
l9_1912=l9_1910;
}
}
}
l9_1906=l9_1912;
float4 l9_1917=float4(0.0);
l9_1917=l9_1906;
float2 l9_1918=float2(0.0);
float2 l9_1919=(*sc_set0.UserUniforms).Tweak_N73;
l9_1918=l9_1919;
float2 l9_1920=float2(0.0);
l9_1920=l9_1918;
float2 l9_1921=float2(0.0);
l9_1921=((l9_1917.xy-(*sc_set0.UserUniforms).Port_Center_N070)*l9_1920)+(*sc_set0.UserUniforms).Port_Center_N070;
float2 l9_1922=float2(0.0);
float2 l9_1923=(*sc_set0.UserUniforms).Tweak_N72;
l9_1922=l9_1923;
float2 l9_1924=float2(0.0);
l9_1924=l9_1922;
float2 l9_1925=float2(0.0);
l9_1925=l9_1921+l9_1924;
float l9_1926=0.0;
float l9_1927=(*sc_set0.UserUniforms).Tweak_N74;
l9_1926=l9_1927;
float l9_1928=0.0;
l9_1928=l9_1926;
float2 l9_1929=float2(0.0);
float2 l9_1930=l9_1925;
float l9_1931=l9_1928;
float2 l9_1932=(*sc_set0.UserUniforms).Port_Center_N071;
float l9_1933=sin(radians(l9_1931));
float l9_1934=cos(radians(l9_1931));
float2 l9_1935=l9_1930-l9_1932;
l9_1935=float2(dot(float2(l9_1934,l9_1933),l9_1935),dot(float2(-l9_1933,l9_1934),l9_1935))+l9_1932;
l9_1929=l9_1935;
float2 l9_1936=float2(0.0);
l9_1936=l9_1929;
l9_1900=float4(l9_1936,0.0,0.0);
l9_1902=l9_1900;
}
}
}
l9_1896=l9_1902;
float4 l9_1937=float4(0.0);
int l9_1938;
if ((int(Tweak_N82HasSwappedViews_tmp)!=0))
{
int l9_1939=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1939=0;
}
else
{
l9_1939=in.varStereoViewID;
}
int l9_1940=l9_1939;
l9_1938=1-l9_1940;
}
else
{
int l9_1941=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1941=0;
}
else
{
l9_1941=in.varStereoViewID;
}
int l9_1942=l9_1941;
l9_1938=l9_1942;
}
int l9_1943=l9_1938;
int l9_1944=Tweak_N82Layout_tmp;
int l9_1945=l9_1943;
float2 l9_1946=l9_1896.xy;
bool l9_1947=(int(SC_USE_UV_TRANSFORM_Tweak_N82_tmp)!=0);
float3x3 l9_1948=(*sc_set0.UserUniforms).Tweak_N82Transform;
int2 l9_1949=int2(SC_SOFTWARE_WRAP_MODE_U_Tweak_N82_tmp,SC_SOFTWARE_WRAP_MODE_V_Tweak_N82_tmp);
bool l9_1950=(int(SC_USE_UV_MIN_MAX_Tweak_N82_tmp)!=0);
float4 l9_1951=(*sc_set0.UserUniforms).Tweak_N82UvMinMax;
bool l9_1952=(int(SC_USE_CLAMP_TO_BORDER_Tweak_N82_tmp)!=0);
float4 l9_1953=(*sc_set0.UserUniforms).Tweak_N82BorderColor;
float l9_1954=0.0;
bool l9_1955=l9_1952&&(!l9_1950);
float l9_1956=1.0;
float l9_1957=l9_1946.x;
int l9_1958=l9_1949.x;
if (l9_1958==1)
{
l9_1957=fract(l9_1957);
}
else
{
if (l9_1958==2)
{
float l9_1959=fract(l9_1957);
float l9_1960=l9_1957-l9_1959;
float l9_1961=step(0.25,fract(l9_1960*0.5));
l9_1957=mix(l9_1959,1.0-l9_1959,fast::clamp(l9_1961,0.0,1.0));
}
}
l9_1946.x=l9_1957;
float l9_1962=l9_1946.y;
int l9_1963=l9_1949.y;
if (l9_1963==1)
{
l9_1962=fract(l9_1962);
}
else
{
if (l9_1963==2)
{
float l9_1964=fract(l9_1962);
float l9_1965=l9_1962-l9_1964;
float l9_1966=step(0.25,fract(l9_1965*0.5));
l9_1962=mix(l9_1964,1.0-l9_1964,fast::clamp(l9_1966,0.0,1.0));
}
}
l9_1946.y=l9_1962;
if (l9_1950)
{
bool l9_1967=l9_1952;
bool l9_1968;
if (l9_1967)
{
l9_1968=l9_1949.x==3;
}
else
{
l9_1968=l9_1967;
}
float l9_1969=l9_1946.x;
float l9_1970=l9_1951.x;
float l9_1971=l9_1951.z;
bool l9_1972=l9_1968;
float l9_1973=l9_1956;
float l9_1974=fast::clamp(l9_1969,l9_1970,l9_1971);
float l9_1975=step(abs(l9_1969-l9_1974),9.9999997e-06);
l9_1973*=(l9_1975+((1.0-float(l9_1972))*(1.0-l9_1975)));
l9_1969=l9_1974;
l9_1946.x=l9_1969;
l9_1956=l9_1973;
bool l9_1976=l9_1952;
bool l9_1977;
if (l9_1976)
{
l9_1977=l9_1949.y==3;
}
else
{
l9_1977=l9_1976;
}
float l9_1978=l9_1946.y;
float l9_1979=l9_1951.y;
float l9_1980=l9_1951.w;
bool l9_1981=l9_1977;
float l9_1982=l9_1956;
float l9_1983=fast::clamp(l9_1978,l9_1979,l9_1980);
float l9_1984=step(abs(l9_1978-l9_1983),9.9999997e-06);
l9_1982*=(l9_1984+((1.0-float(l9_1981))*(1.0-l9_1984)));
l9_1978=l9_1983;
l9_1946.y=l9_1978;
l9_1956=l9_1982;
}
float2 l9_1985=l9_1946;
bool l9_1986=l9_1947;
float3x3 l9_1987=l9_1948;
if (l9_1986)
{
l9_1985=float2((l9_1987*float3(l9_1985,1.0)).xy);
}
float2 l9_1988=l9_1985;
l9_1946=l9_1988;
float l9_1989=l9_1946.x;
int l9_1990=l9_1949.x;
bool l9_1991=l9_1955;
float l9_1992=l9_1956;
if ((l9_1990==0)||(l9_1990==3))
{
float l9_1993=l9_1989;
float l9_1994=0.0;
float l9_1995=1.0;
bool l9_1996=l9_1991;
float l9_1997=l9_1992;
float l9_1998=fast::clamp(l9_1993,l9_1994,l9_1995);
float l9_1999=step(abs(l9_1993-l9_1998),9.9999997e-06);
l9_1997*=(l9_1999+((1.0-float(l9_1996))*(1.0-l9_1999)));
l9_1993=l9_1998;
l9_1989=l9_1993;
l9_1992=l9_1997;
}
l9_1946.x=l9_1989;
l9_1956=l9_1992;
float l9_2000=l9_1946.y;
int l9_2001=l9_1949.y;
bool l9_2002=l9_1955;
float l9_2003=l9_1956;
if ((l9_2001==0)||(l9_2001==3))
{
float l9_2004=l9_2000;
float l9_2005=0.0;
float l9_2006=1.0;
bool l9_2007=l9_2002;
float l9_2008=l9_2003;
float l9_2009=fast::clamp(l9_2004,l9_2005,l9_2006);
float l9_2010=step(abs(l9_2004-l9_2009),9.9999997e-06);
l9_2008*=(l9_2010+((1.0-float(l9_2007))*(1.0-l9_2010)));
l9_2004=l9_2009;
l9_2000=l9_2004;
l9_2003=l9_2008;
}
l9_1946.y=l9_2000;
l9_1956=l9_2003;
float2 l9_2011=l9_1946;
int l9_2012=l9_1944;
int l9_2013=l9_1945;
float l9_2014=l9_1954;
float2 l9_2015=l9_2011;
int l9_2016=l9_2012;
int l9_2017=l9_2013;
float3 l9_2018=float3(0.0);
if (l9_2016==0)
{
l9_2018=float3(l9_2015,0.0);
}
else
{
if (l9_2016==1)
{
l9_2018=float3(l9_2015.x,(l9_2015.y*0.5)+(0.5-(float(l9_2017)*0.5)),0.0);
}
else
{
l9_2018=float3(l9_2015,float(l9_2017));
}
}
float3 l9_2019=l9_2018;
float3 l9_2020=l9_2019;
float4 l9_2021=sc_set0.Tweak_N82.sample(sc_set0.Tweak_N82SmpSC,l9_2020.xy,bias(l9_2014));
float4 l9_2022=l9_2021;
if (l9_1952)
{
l9_2022=mix(l9_1953,l9_2022,float4(l9_1956));
}
float4 l9_2023=l9_2022;
l9_1937=l9_2023;
l9_1892=l9_1937;
l9_1895=l9_1892;
}
else
{
l9_1895=l9_1893;
}
l9_1891=l9_1895;
float4 l9_2024=float4(0.0);
l9_2024=l9_1804*l9_1891;
float4 l9_2025=float4(0.0);
float4 l9_2026=l9_2024;
float4 l9_2027;
if (SC_DEVICE_CLASS_tmp>=2)
{
l9_2027=float4(pow(l9_2026.x,2.2),pow(l9_2026.y,2.2),pow(l9_2026.z,2.2),pow(l9_2026.w,2.2));
}
else
{
l9_2027=l9_2026*l9_2026;
}
float4 l9_2028=l9_2027;
l9_2025=l9_2028;
float l9_2029=0.0;
float l9_2030=(*sc_set0.UserUniforms).Tweak_N24;
l9_2029=l9_2030;
float4 l9_2031=float4(0.0);
l9_2031=l9_2025*float4(l9_2029);
param_10=l9_2031.xyz;
param_12=param_10;
}
else
{
param_12=param_11;
}
Result_N62=param_12;
float3 Result_N59=float3(0.0);
float3 param_14=float3(0.0);
float3 param_15=(*sc_set0.UserUniforms).Port_Default_N059;
ssGlobals param_17=Globals;
float3 param_16;
if ((int(Tweak_N51_tmp)!=0))
{
float4 l9_2032=float4(0.0);
float4 l9_2033=float4(0.0);
float4 l9_2034=float4(0.0);
float4 l9_2035=float4(0.0);
float4 l9_2036=float4(0.0);
ssGlobals l9_2037=param_17;
float4 l9_2038;
if (Tweak_N53_tmp==0)
{
float2 l9_2039=float2(0.0);
l9_2039=l9_2037.Surface_UVCoord0;
l9_2033=float4(l9_2039,0.0,0.0);
l9_2038=l9_2033;
}
else
{
if (Tweak_N53_tmp==1)
{
float2 l9_2040=float2(0.0);
l9_2040=l9_2037.Surface_UVCoord1;
l9_2034=float4(l9_2040,0.0,0.0);
l9_2038=l9_2034;
}
else
{
if (Tweak_N53_tmp==2)
{
float2 l9_2041=float2(0.0);
l9_2041=l9_2037.gScreenCoord;
l9_2035=float4(l9_2041,0.0,0.0);
l9_2038=l9_2035;
}
else
{
float4 l9_2042=float4(0.0);
float4 l9_2043=float4(0.0);
float4 l9_2044=float4(0.0);
float4 l9_2045=float4(0.0);
float4 l9_2046=float4(0.0);
ssGlobals l9_2047=l9_2037;
float4 l9_2048;
if (Tweak_N76_tmp==0)
{
float2 l9_2049=float2(0.0);
l9_2049=l9_2047.Surface_UVCoord0;
l9_2043=float4(l9_2049,0.0,0.0);
l9_2048=l9_2043;
}
else
{
if (Tweak_N76_tmp==1)
{
float2 l9_2050=float2(0.0);
l9_2050=l9_2047.Surface_UVCoord1;
l9_2044=float4(l9_2050,0.0,0.0);
l9_2048=l9_2044;
}
else
{
if (Tweak_N76_tmp==2)
{
float2 l9_2051=float2(0.0);
l9_2051=l9_2047.gScreenCoord;
l9_2045=float4(l9_2051,0.0,0.0);
l9_2048=l9_2045;
}
else
{
float2 l9_2052=float2(0.0);
l9_2052=l9_2047.Surface_UVCoord0;
l9_2046=float4(l9_2052,0.0,0.0);
l9_2048=l9_2046;
}
}
}
l9_2042=l9_2048;
float4 l9_2053=float4(0.0);
l9_2053=l9_2042;
float2 l9_2054=float2(0.0);
float2 l9_2055=(*sc_set0.UserUniforms).Tweak_N73;
l9_2054=l9_2055;
float2 l9_2056=float2(0.0);
l9_2056=l9_2054;
float2 l9_2057=float2(0.0);
l9_2057=((l9_2053.xy-(*sc_set0.UserUniforms).Port_Center_N070)*l9_2056)+(*sc_set0.UserUniforms).Port_Center_N070;
float2 l9_2058=float2(0.0);
float2 l9_2059=(*sc_set0.UserUniforms).Tweak_N72;
l9_2058=l9_2059;
float2 l9_2060=float2(0.0);
l9_2060=l9_2058;
float2 l9_2061=float2(0.0);
l9_2061=l9_2057+l9_2060;
float l9_2062=0.0;
float l9_2063=(*sc_set0.UserUniforms).Tweak_N74;
l9_2062=l9_2063;
float l9_2064=0.0;
l9_2064=l9_2062;
float2 l9_2065=float2(0.0);
float2 l9_2066=l9_2061;
float l9_2067=l9_2064;
float2 l9_2068=(*sc_set0.UserUniforms).Port_Center_N071;
float l9_2069=sin(radians(l9_2067));
float l9_2070=cos(radians(l9_2067));
float2 l9_2071=l9_2066-l9_2068;
l9_2071=float2(dot(float2(l9_2070,l9_2069),l9_2071),dot(float2(-l9_2069,l9_2070),l9_2071))+l9_2068;
l9_2065=l9_2071;
float2 l9_2072=float2(0.0);
l9_2072=l9_2065;
l9_2036=float4(l9_2072,0.0,0.0);
l9_2038=l9_2036;
}
}
}
l9_2032=l9_2038;
float4 l9_2073=float4(0.0);
int l9_2074;
if ((int(Tweak_N47HasSwappedViews_tmp)!=0))
{
int l9_2075=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2075=0;
}
else
{
l9_2075=in.varStereoViewID;
}
int l9_2076=l9_2075;
l9_2074=1-l9_2076;
}
else
{
int l9_2077=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2077=0;
}
else
{
l9_2077=in.varStereoViewID;
}
int l9_2078=l9_2077;
l9_2074=l9_2078;
}
int l9_2079=l9_2074;
int l9_2080=Tweak_N47Layout_tmp;
int l9_2081=l9_2079;
float2 l9_2082=l9_2032.xy;
bool l9_2083=(int(SC_USE_UV_TRANSFORM_Tweak_N47_tmp)!=0);
float3x3 l9_2084=(*sc_set0.UserUniforms).Tweak_N47Transform;
int2 l9_2085=int2(SC_SOFTWARE_WRAP_MODE_U_Tweak_N47_tmp,SC_SOFTWARE_WRAP_MODE_V_Tweak_N47_tmp);
bool l9_2086=(int(SC_USE_UV_MIN_MAX_Tweak_N47_tmp)!=0);
float4 l9_2087=(*sc_set0.UserUniforms).Tweak_N47UvMinMax;
bool l9_2088=(int(SC_USE_CLAMP_TO_BORDER_Tweak_N47_tmp)!=0);
float4 l9_2089=(*sc_set0.UserUniforms).Tweak_N47BorderColor;
float l9_2090=0.0;
bool l9_2091=l9_2088&&(!l9_2086);
float l9_2092=1.0;
float l9_2093=l9_2082.x;
int l9_2094=l9_2085.x;
if (l9_2094==1)
{
l9_2093=fract(l9_2093);
}
else
{
if (l9_2094==2)
{
float l9_2095=fract(l9_2093);
float l9_2096=l9_2093-l9_2095;
float l9_2097=step(0.25,fract(l9_2096*0.5));
l9_2093=mix(l9_2095,1.0-l9_2095,fast::clamp(l9_2097,0.0,1.0));
}
}
l9_2082.x=l9_2093;
float l9_2098=l9_2082.y;
int l9_2099=l9_2085.y;
if (l9_2099==1)
{
l9_2098=fract(l9_2098);
}
else
{
if (l9_2099==2)
{
float l9_2100=fract(l9_2098);
float l9_2101=l9_2098-l9_2100;
float l9_2102=step(0.25,fract(l9_2101*0.5));
l9_2098=mix(l9_2100,1.0-l9_2100,fast::clamp(l9_2102,0.0,1.0));
}
}
l9_2082.y=l9_2098;
if (l9_2086)
{
bool l9_2103=l9_2088;
bool l9_2104;
if (l9_2103)
{
l9_2104=l9_2085.x==3;
}
else
{
l9_2104=l9_2103;
}
float l9_2105=l9_2082.x;
float l9_2106=l9_2087.x;
float l9_2107=l9_2087.z;
bool l9_2108=l9_2104;
float l9_2109=l9_2092;
float l9_2110=fast::clamp(l9_2105,l9_2106,l9_2107);
float l9_2111=step(abs(l9_2105-l9_2110),9.9999997e-06);
l9_2109*=(l9_2111+((1.0-float(l9_2108))*(1.0-l9_2111)));
l9_2105=l9_2110;
l9_2082.x=l9_2105;
l9_2092=l9_2109;
bool l9_2112=l9_2088;
bool l9_2113;
if (l9_2112)
{
l9_2113=l9_2085.y==3;
}
else
{
l9_2113=l9_2112;
}
float l9_2114=l9_2082.y;
float l9_2115=l9_2087.y;
float l9_2116=l9_2087.w;
bool l9_2117=l9_2113;
float l9_2118=l9_2092;
float l9_2119=fast::clamp(l9_2114,l9_2115,l9_2116);
float l9_2120=step(abs(l9_2114-l9_2119),9.9999997e-06);
l9_2118*=(l9_2120+((1.0-float(l9_2117))*(1.0-l9_2120)));
l9_2114=l9_2119;
l9_2082.y=l9_2114;
l9_2092=l9_2118;
}
float2 l9_2121=l9_2082;
bool l9_2122=l9_2083;
float3x3 l9_2123=l9_2084;
if (l9_2122)
{
l9_2121=float2((l9_2123*float3(l9_2121,1.0)).xy);
}
float2 l9_2124=l9_2121;
l9_2082=l9_2124;
float l9_2125=l9_2082.x;
int l9_2126=l9_2085.x;
bool l9_2127=l9_2091;
float l9_2128=l9_2092;
if ((l9_2126==0)||(l9_2126==3))
{
float l9_2129=l9_2125;
float l9_2130=0.0;
float l9_2131=1.0;
bool l9_2132=l9_2127;
float l9_2133=l9_2128;
float l9_2134=fast::clamp(l9_2129,l9_2130,l9_2131);
float l9_2135=step(abs(l9_2129-l9_2134),9.9999997e-06);
l9_2133*=(l9_2135+((1.0-float(l9_2132))*(1.0-l9_2135)));
l9_2129=l9_2134;
l9_2125=l9_2129;
l9_2128=l9_2133;
}
l9_2082.x=l9_2125;
l9_2092=l9_2128;
float l9_2136=l9_2082.y;
int l9_2137=l9_2085.y;
bool l9_2138=l9_2091;
float l9_2139=l9_2092;
if ((l9_2137==0)||(l9_2137==3))
{
float l9_2140=l9_2136;
float l9_2141=0.0;
float l9_2142=1.0;
bool l9_2143=l9_2138;
float l9_2144=l9_2139;
float l9_2145=fast::clamp(l9_2140,l9_2141,l9_2142);
float l9_2146=step(abs(l9_2140-l9_2145),9.9999997e-06);
l9_2144*=(l9_2146+((1.0-float(l9_2143))*(1.0-l9_2146)));
l9_2140=l9_2145;
l9_2136=l9_2140;
l9_2139=l9_2144;
}
l9_2082.y=l9_2136;
l9_2092=l9_2139;
float2 l9_2147=l9_2082;
int l9_2148=l9_2080;
int l9_2149=l9_2081;
float l9_2150=l9_2090;
float2 l9_2151=l9_2147;
int l9_2152=l9_2148;
int l9_2153=l9_2149;
float3 l9_2154=float3(0.0);
if (l9_2152==0)
{
l9_2154=float3(l9_2151,0.0);
}
else
{
if (l9_2152==1)
{
l9_2154=float3(l9_2151.x,(l9_2151.y*0.5)+(0.5-(float(l9_2153)*0.5)),0.0);
}
else
{
l9_2154=float3(l9_2151,float(l9_2153));
}
}
float3 l9_2155=l9_2154;
float3 l9_2156=l9_2155;
float4 l9_2157=sc_set0.Tweak_N47.sample(sc_set0.Tweak_N47SmpSC,l9_2156.xy,bias(l9_2150));
float4 l9_2158=l9_2157;
if (l9_2088)
{
l9_2158=mix(l9_2089,l9_2158,float4(l9_2092));
}
float4 l9_2159=l9_2158;
l9_2073=l9_2159;
float4 l9_2160=float4(0.0);
float4 l9_2161=(*sc_set0.UserUniforms).Tweak_N93;
l9_2160=l9_2161;
float l9_2162=0.0;
float l9_2163=(*sc_set0.UserUniforms).Tweak_N48;
l9_2162=l9_2163;
float4 l9_2164=float4(0.0);
l9_2164=(l9_2073*l9_2160)*float4(l9_2162);
param_14=l9_2164.xyz;
param_16=param_14;
}
else
{
param_16=param_15;
}
Result_N59=param_16;
float3 Output_N109=float3(0.0);
float3 param_18=Result_N59;
float3 l9_2165;
if (SC_DEVICE_CLASS_tmp>=2)
{
l9_2165=float3(pow(param_18.x,2.2),pow(param_18.y,2.2),pow(param_18.z,2.2));
}
else
{
l9_2165=param_18*param_18;
}
float3 l9_2166=l9_2165;
Output_N109=l9_2166;
float3 Output_N13=float3(0.0);
Output_N13=(Result_N23.xyz+Result_N62)+Output_N109;
float3 Output_N108=float3(0.0);
float3 param_19=Output_N13;
float3 l9_2167;
if (SC_DEVICE_CLASS_tmp>=2)
{
l9_2167=float3(pow(param_19.x,0.45454544),pow(param_19.y,0.45454544),pow(param_19.z,0.45454544));
}
else
{
l9_2167=sqrt(param_19);
}
float3 l9_2168=l9_2167;
Output_N108=l9_2168;
float3 Output_N110=float3(0.0);
Output_N110=Output_N6+Output_N108;
float4 Result_N29=float4(0.0);
float4 param_20=float4(0.0);
float4 param_21=float4(0.0);
ssGlobals param_23=Globals;
float4 param_22;
if ((int(Tweak_N9_tmp)!=0))
{
float4 l9_2169=float4(0.0);
float4 l9_2170=float4(0.0);
float4 l9_2171=float4(0.0);
ssGlobals l9_2172=param_23;
float4 l9_2173;
if ((int(Tweak_N98_tmp)!=0))
{
float4 l9_2174=float4(0.0);
l9_2174=l9_2172.VertexColor;
l9_2170=l9_2174;
l9_2173=l9_2170;
}
else
{
float4 l9_2175=float4(0.0);
float4 l9_2176=float4(0.0);
float4 l9_2177=float4(0.0);
float4 l9_2178=float4(0.0);
float4 l9_2179=float4(0.0);
ssGlobals l9_2180=l9_2172;
float4 l9_2181;
if (Tweak_N45_tmp==0)
{
float2 l9_2182=float2(0.0);
l9_2182=l9_2180.Surface_UVCoord0;
l9_2176=float4(l9_2182,0.0,0.0);
l9_2181=l9_2176;
}
else
{
if (Tweak_N45_tmp==1)
{
float2 l9_2183=float2(0.0);
l9_2183=l9_2180.Surface_UVCoord1;
l9_2177=float4(l9_2183,0.0,0.0);
l9_2181=l9_2177;
}
else
{
if (Tweak_N45_tmp==2)
{
float2 l9_2184=float2(0.0);
l9_2184=l9_2180.gScreenCoord;
l9_2178=float4(l9_2184,0.0,0.0);
l9_2181=l9_2178;
}
else
{
float4 l9_2185=float4(0.0);
float4 l9_2186=float4(0.0);
float4 l9_2187=float4(0.0);
float4 l9_2188=float4(0.0);
float4 l9_2189=float4(0.0);
ssGlobals l9_2190=l9_2180;
float4 l9_2191;
if (Tweak_N76_tmp==0)
{
float2 l9_2192=float2(0.0);
l9_2192=l9_2190.Surface_UVCoord0;
l9_2186=float4(l9_2192,0.0,0.0);
l9_2191=l9_2186;
}
else
{
if (Tweak_N76_tmp==1)
{
float2 l9_2193=float2(0.0);
l9_2193=l9_2190.Surface_UVCoord1;
l9_2187=float4(l9_2193,0.0,0.0);
l9_2191=l9_2187;
}
else
{
if (Tweak_N76_tmp==2)
{
float2 l9_2194=float2(0.0);
l9_2194=l9_2190.gScreenCoord;
l9_2188=float4(l9_2194,0.0,0.0);
l9_2191=l9_2188;
}
else
{
float2 l9_2195=float2(0.0);
l9_2195=l9_2190.Surface_UVCoord0;
l9_2189=float4(l9_2195,0.0,0.0);
l9_2191=l9_2189;
}
}
}
l9_2185=l9_2191;
float4 l9_2196=float4(0.0);
l9_2196=l9_2185;
float2 l9_2197=float2(0.0);
float2 l9_2198=(*sc_set0.UserUniforms).Tweak_N73;
l9_2197=l9_2198;
float2 l9_2199=float2(0.0);
l9_2199=l9_2197;
float2 l9_2200=float2(0.0);
l9_2200=((l9_2196.xy-(*sc_set0.UserUniforms).Port_Center_N070)*l9_2199)+(*sc_set0.UserUniforms).Port_Center_N070;
float2 l9_2201=float2(0.0);
float2 l9_2202=(*sc_set0.UserUniforms).Tweak_N72;
l9_2201=l9_2202;
float2 l9_2203=float2(0.0);
l9_2203=l9_2201;
float2 l9_2204=float2(0.0);
l9_2204=l9_2200+l9_2203;
float l9_2205=0.0;
float l9_2206=(*sc_set0.UserUniforms).Tweak_N74;
l9_2205=l9_2206;
float l9_2207=0.0;
l9_2207=l9_2205;
float2 l9_2208=float2(0.0);
float2 l9_2209=l9_2204;
float l9_2210=l9_2207;
float2 l9_2211=(*sc_set0.UserUniforms).Port_Center_N071;
float l9_2212=sin(radians(l9_2210));
float l9_2213=cos(radians(l9_2210));
float2 l9_2214=l9_2209-l9_2211;
l9_2214=float2(dot(float2(l9_2213,l9_2212),l9_2214),dot(float2(-l9_2212,l9_2213),l9_2214))+l9_2211;
l9_2208=l9_2214;
float2 l9_2215=float2(0.0);
l9_2215=l9_2208;
l9_2179=float4(l9_2215,0.0,0.0);
l9_2181=l9_2179;
}
}
}
l9_2175=l9_2181;
float4 l9_2216=float4(0.0);
int l9_2217;
if ((int(Tweak_N8HasSwappedViews_tmp)!=0))
{
int l9_2218=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2218=0;
}
else
{
l9_2218=in.varStereoViewID;
}
int l9_2219=l9_2218;
l9_2217=1-l9_2219;
}
else
{
int l9_2220=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2220=0;
}
else
{
l9_2220=in.varStereoViewID;
}
int l9_2221=l9_2220;
l9_2217=l9_2221;
}
int l9_2222=l9_2217;
int l9_2223=Tweak_N8Layout_tmp;
int l9_2224=l9_2222;
float2 l9_2225=l9_2175.xy;
bool l9_2226=(int(SC_USE_UV_TRANSFORM_Tweak_N8_tmp)!=0);
float3x3 l9_2227=(*sc_set0.UserUniforms).Tweak_N8Transform;
int2 l9_2228=int2(SC_SOFTWARE_WRAP_MODE_U_Tweak_N8_tmp,SC_SOFTWARE_WRAP_MODE_V_Tweak_N8_tmp);
bool l9_2229=(int(SC_USE_UV_MIN_MAX_Tweak_N8_tmp)!=0);
float4 l9_2230=(*sc_set0.UserUniforms).Tweak_N8UvMinMax;
bool l9_2231=(int(SC_USE_CLAMP_TO_BORDER_Tweak_N8_tmp)!=0);
float4 l9_2232=(*sc_set0.UserUniforms).Tweak_N8BorderColor;
float l9_2233=0.0;
bool l9_2234=l9_2231&&(!l9_2229);
float l9_2235=1.0;
float l9_2236=l9_2225.x;
int l9_2237=l9_2228.x;
if (l9_2237==1)
{
l9_2236=fract(l9_2236);
}
else
{
if (l9_2237==2)
{
float l9_2238=fract(l9_2236);
float l9_2239=l9_2236-l9_2238;
float l9_2240=step(0.25,fract(l9_2239*0.5));
l9_2236=mix(l9_2238,1.0-l9_2238,fast::clamp(l9_2240,0.0,1.0));
}
}
l9_2225.x=l9_2236;
float l9_2241=l9_2225.y;
int l9_2242=l9_2228.y;
if (l9_2242==1)
{
l9_2241=fract(l9_2241);
}
else
{
if (l9_2242==2)
{
float l9_2243=fract(l9_2241);
float l9_2244=l9_2241-l9_2243;
float l9_2245=step(0.25,fract(l9_2244*0.5));
l9_2241=mix(l9_2243,1.0-l9_2243,fast::clamp(l9_2245,0.0,1.0));
}
}
l9_2225.y=l9_2241;
if (l9_2229)
{
bool l9_2246=l9_2231;
bool l9_2247;
if (l9_2246)
{
l9_2247=l9_2228.x==3;
}
else
{
l9_2247=l9_2246;
}
float l9_2248=l9_2225.x;
float l9_2249=l9_2230.x;
float l9_2250=l9_2230.z;
bool l9_2251=l9_2247;
float l9_2252=l9_2235;
float l9_2253=fast::clamp(l9_2248,l9_2249,l9_2250);
float l9_2254=step(abs(l9_2248-l9_2253),9.9999997e-06);
l9_2252*=(l9_2254+((1.0-float(l9_2251))*(1.0-l9_2254)));
l9_2248=l9_2253;
l9_2225.x=l9_2248;
l9_2235=l9_2252;
bool l9_2255=l9_2231;
bool l9_2256;
if (l9_2255)
{
l9_2256=l9_2228.y==3;
}
else
{
l9_2256=l9_2255;
}
float l9_2257=l9_2225.y;
float l9_2258=l9_2230.y;
float l9_2259=l9_2230.w;
bool l9_2260=l9_2256;
float l9_2261=l9_2235;
float l9_2262=fast::clamp(l9_2257,l9_2258,l9_2259);
float l9_2263=step(abs(l9_2257-l9_2262),9.9999997e-06);
l9_2261*=(l9_2263+((1.0-float(l9_2260))*(1.0-l9_2263)));
l9_2257=l9_2262;
l9_2225.y=l9_2257;
l9_2235=l9_2261;
}
float2 l9_2264=l9_2225;
bool l9_2265=l9_2226;
float3x3 l9_2266=l9_2227;
if (l9_2265)
{
l9_2264=float2((l9_2266*float3(l9_2264,1.0)).xy);
}
float2 l9_2267=l9_2264;
l9_2225=l9_2267;
float l9_2268=l9_2225.x;
int l9_2269=l9_2228.x;
bool l9_2270=l9_2234;
float l9_2271=l9_2235;
if ((l9_2269==0)||(l9_2269==3))
{
float l9_2272=l9_2268;
float l9_2273=0.0;
float l9_2274=1.0;
bool l9_2275=l9_2270;
float l9_2276=l9_2271;
float l9_2277=fast::clamp(l9_2272,l9_2273,l9_2274);
float l9_2278=step(abs(l9_2272-l9_2277),9.9999997e-06);
l9_2276*=(l9_2278+((1.0-float(l9_2275))*(1.0-l9_2278)));
l9_2272=l9_2277;
l9_2268=l9_2272;
l9_2271=l9_2276;
}
l9_2225.x=l9_2268;
l9_2235=l9_2271;
float l9_2279=l9_2225.y;
int l9_2280=l9_2228.y;
bool l9_2281=l9_2234;
float l9_2282=l9_2235;
if ((l9_2280==0)||(l9_2280==3))
{
float l9_2283=l9_2279;
float l9_2284=0.0;
float l9_2285=1.0;
bool l9_2286=l9_2281;
float l9_2287=l9_2282;
float l9_2288=fast::clamp(l9_2283,l9_2284,l9_2285);
float l9_2289=step(abs(l9_2283-l9_2288),9.9999997e-06);
l9_2287*=(l9_2289+((1.0-float(l9_2286))*(1.0-l9_2289)));
l9_2283=l9_2288;
l9_2279=l9_2283;
l9_2282=l9_2287;
}
l9_2225.y=l9_2279;
l9_2235=l9_2282;
float2 l9_2290=l9_2225;
int l9_2291=l9_2223;
int l9_2292=l9_2224;
float l9_2293=l9_2233;
float2 l9_2294=l9_2290;
int l9_2295=l9_2291;
int l9_2296=l9_2292;
float3 l9_2297=float3(0.0);
if (l9_2295==0)
{
l9_2297=float3(l9_2294,0.0);
}
else
{
if (l9_2295==1)
{
l9_2297=float3(l9_2294.x,(l9_2294.y*0.5)+(0.5-(float(l9_2296)*0.5)),0.0);
}
else
{
l9_2297=float3(l9_2294,float(l9_2296));
}
}
float3 l9_2298=l9_2297;
float3 l9_2299=l9_2298;
float4 l9_2300=sc_set0.Tweak_N8.sample(sc_set0.Tweak_N8SmpSC,l9_2299.xy,bias(l9_2293));
float4 l9_2301=l9_2300;
if (l9_2231)
{
l9_2301=mix(l9_2232,l9_2301,float4(l9_2235));
}
float4 l9_2302=l9_2301;
l9_2216=l9_2302;
l9_2171=l9_2216;
l9_2173=l9_2171;
}
l9_2169=l9_2173;
float4 l9_2303=float4(0.0);
float4 l9_2304=(*sc_set0.UserUniforms).Tweak_N1;
l9_2303=l9_2304;
float l9_2305=0.0;
l9_2305=l9_2303.w;
float4 l9_2306=float4(0.0);
l9_2306=l9_2169*float4(l9_2305);
param_20=l9_2306;
param_22=param_20;
}
else
{
float4 l9_2307=float4(0.0);
float4 l9_2308=(*sc_set0.UserUniforms).Tweak_N1;
l9_2307=l9_2308;
float l9_2309=0.0;
l9_2309=l9_2307.w;
param_21=float4(l9_2309);
param_22=param_21;
}
Result_N29=param_22;
float4 Value_N3=float4(0.0);
Value_N3=float4(Output_N110.x,Output_N110.y,Output_N110.z,Value_N3.w);
Value_N3.w=Result_N29.x;
FinalColor=Value_N3;
float param_24=FinalColor.w;
if ((int(sc_BlendMode_AlphaTest_tmp)!=0))
{
if (param_24<(*sc_set0.UserUniforms).alphaTestThreshold)
{
discard_fragment();
}
}
if ((int(ENABLE_STIPPLE_PATTERN_TEST_tmp)!=0))
{
float4 l9_2310=gl_FragCoord;
float2 l9_2311=floor(mod(l9_2310.xy,float2(4.0)));
float l9_2312=(mod(dot(l9_2311,float2(4.0,1.0))*9.0,16.0)+1.0)/17.0;
if (param_24<l9_2312)
{
discard_fragment();
}
}
if ((*sc_set0.UserUniforms).sc_RayTracingCasterConfiguration.x!=0u)
{
float4 param_25=FinalColor;
if ((int(sc_RayTracingCasterForceOpaque_tmp)!=0))
{
param_25.w=1.0;
}
float4 l9_2313=fast::max(param_25,float4(0.0));
float4 param_26=l9_2313;
if (sc_ShaderCacheConstant_tmp!=0)
{
param_26.x+=((*sc_set0.UserUniforms).sc_UniformConstants.x*float(sc_ShaderCacheConstant_tmp));
}
out.FragColor0=param_26;
return out;
}
float4 param_27=FinalColor;
if ((int(sc_ProjectiveShadowsCaster_tmp)!=0))
{
float4 l9_2314=param_27;
float4 l9_2315=l9_2314;
float l9_2316=1.0;
if ((((int(sc_BlendMode_Normal_tmp)!=0)||(int(sc_BlendMode_AlphaToCoverage_tmp)!=0))||(int(sc_BlendMode_PremultipliedAlphaHardware_tmp)!=0))||(int(sc_BlendMode_PremultipliedAlphaAuto_tmp)!=0))
{
l9_2316=l9_2315.w;
}
else
{
if ((int(sc_BlendMode_PremultipliedAlpha_tmp)!=0))
{
l9_2316=fast::clamp(l9_2315.w*2.0,0.0,1.0);
}
else
{
if ((int(sc_BlendMode_AddWithAlphaFactor_tmp)!=0))
{
l9_2316=fast::clamp(dot(l9_2315.xyz,float3(l9_2315.w)),0.0,1.0);
}
else
{
if ((int(sc_BlendMode_AlphaTest_tmp)!=0))
{
l9_2316=1.0;
}
else
{
if ((int(sc_BlendMode_Multiply_tmp)!=0))
{
l9_2316=(1.0-dot(l9_2315.xyz,float3(0.33333001)))*l9_2315.w;
}
else
{
if ((int(sc_BlendMode_MultiplyOriginal_tmp)!=0))
{
l9_2316=(1.0-fast::clamp(dot(l9_2315.xyz,float3(1.0)),0.0,1.0))*l9_2315.w;
}
else
{
if ((int(sc_BlendMode_ColoredGlass_tmp)!=0))
{
l9_2316=fast::clamp(dot(l9_2315.xyz,float3(1.0)),0.0,1.0)*l9_2315.w;
}
else
{
if ((int(sc_BlendMode_Add_tmp)!=0))
{
l9_2316=fast::clamp(dot(l9_2315.xyz,float3(1.0)),0.0,1.0);
}
else
{
if ((int(sc_BlendMode_AddWithAlphaFactor_tmp)!=0))
{
l9_2316=fast::clamp(dot(l9_2315.xyz,float3(1.0)),0.0,1.0)*l9_2315.w;
}
else
{
if ((int(sc_BlendMode_Screen_tmp)!=0))
{
l9_2316=dot(l9_2315.xyz,float3(0.33333001))*l9_2315.w;
}
else
{
if ((int(sc_BlendMode_Min_tmp)!=0))
{
l9_2316=1.0-fast::clamp(dot(l9_2315.xyz,float3(1.0)),0.0,1.0);
}
else
{
if ((int(sc_BlendMode_Max_tmp)!=0))
{
l9_2316=fast::clamp(dot(l9_2315.xyz,float3(1.0)),0.0,1.0);
}
}
}
}
}
}
}
}
}
}
}
}
float l9_2317=l9_2316;
float l9_2318=l9_2317;
float l9_2319=(*sc_set0.UserUniforms).sc_ShadowDensity*l9_2318;
float3 l9_2320=mix((*sc_set0.UserUniforms).sc_ShadowColor.xyz,(*sc_set0.UserUniforms).sc_ShadowColor.xyz*l9_2314.xyz,float3((*sc_set0.UserUniforms).sc_ShadowColor.w));
float4 l9_2321=float4(l9_2320.x,l9_2320.y,l9_2320.z,l9_2319);
param_27=l9_2321;
}
else
{
if ((int(sc_RenderAlphaToColor_tmp)!=0))
{
param_27=float4(param_27.w);
}
else
{
if ((int(sc_BlendMode_Custom_tmp)!=0))
{
float4 l9_2322=param_27;
float4 l9_2323=float4(0.0);
float4 l9_2324=float4(0.0);
if ((int(sc_FramebufferFetch_tmp)!=0))
{
float4 l9_2325=out.FragColor0;
float4 l9_2326=l9_2325;
l9_2324=l9_2326;
}
else
{
float4 l9_2327=gl_FragCoord;
float2 l9_2328=l9_2327.xy*(*sc_set0.UserUniforms).sc_CurrentRenderTargetDims.zw;
float2 l9_2329=l9_2328;
float2 l9_2330=float2(0.0);
if (sc_StereoRenderingMode_tmp==1)
{
int l9_2331=1;
int l9_2332=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2332=0;
}
else
{
l9_2332=in.varStereoViewID;
}
int l9_2333=l9_2332;
int l9_2334=l9_2333;
float3 l9_2335=float3(l9_2329,0.0);
int l9_2336=l9_2331;
int l9_2337=l9_2334;
if (l9_2336==1)
{
l9_2335.y=((2.0*l9_2335.y)+float(l9_2337))-1.0;
}
float2 l9_2338=l9_2335.xy;
l9_2330=l9_2338;
}
else
{
l9_2330=l9_2329;
}
float2 l9_2339=l9_2330;
float2 l9_2340=l9_2339;
float2 l9_2341=l9_2340;
float2 l9_2342=l9_2341;
float l9_2343=0.0;
int l9_2344;
if ((int(sc_ScreenTextureHasSwappedViews_tmp)!=0))
{
int l9_2345=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2345=0;
}
else
{
l9_2345=in.varStereoViewID;
}
int l9_2346=l9_2345;
l9_2344=1-l9_2346;
}
else
{
int l9_2347=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2347=0;
}
else
{
l9_2347=in.varStereoViewID;
}
int l9_2348=l9_2347;
l9_2344=l9_2348;
}
int l9_2349=l9_2344;
float2 l9_2350=l9_2342;
int l9_2351=sc_ScreenTextureLayout_tmp;
int l9_2352=l9_2349;
float l9_2353=l9_2343;
float2 l9_2354=l9_2350;
int l9_2355=l9_2351;
int l9_2356=l9_2352;
float3 l9_2357=float3(0.0);
if (l9_2355==0)
{
l9_2357=float3(l9_2354,0.0);
}
else
{
if (l9_2355==1)
{
l9_2357=float3(l9_2354.x,(l9_2354.y*0.5)+(0.5-(float(l9_2356)*0.5)),0.0);
}
else
{
l9_2357=float3(l9_2354,float(l9_2356));
}
}
float3 l9_2358=l9_2357;
float3 l9_2359=l9_2358;
float4 l9_2360=sc_set0.sc_ScreenTexture.sample(sc_set0.sc_ScreenTextureSmpSC,l9_2359.xy,bias(l9_2353));
float4 l9_2361=l9_2360;
float4 l9_2362=l9_2361;
l9_2324=l9_2362;
}
float4 l9_2363=l9_2324;
float3 l9_2364=l9_2363.xyz;
float3 l9_2365=l9_2364;
float3 l9_2366=l9_2322.xyz;
float3 l9_2367=definedBlend(l9_2365,l9_2366,in.varStereoViewID,(*sc_set0.UserUniforms),sc_set0.intensityTexture,sc_set0.intensityTextureSmpSC);
l9_2323=float4(l9_2367.x,l9_2367.y,l9_2367.z,l9_2323.w);
float3 l9_2368=mix(l9_2364,l9_2323.xyz,float3(l9_2322.w));
l9_2323=float4(l9_2368.x,l9_2368.y,l9_2368.z,l9_2323.w);
l9_2323.w=1.0;
float4 l9_2369=l9_2323;
param_27=l9_2369;
}
else
{
if ((int(sc_Voxelization_tmp)!=0))
{
float4 l9_2370=float4(in.varScreenPos.xyz,1.0);
param_27=l9_2370;
}
else
{
if ((int(sc_OutputBounds_tmp)!=0))
{
float4 l9_2371=gl_FragCoord;
float l9_2372=fast::clamp(abs(l9_2371.z),0.0,1.0);
float4 l9_2373=float4(l9_2372,1.0-l9_2372,1.0,1.0);
param_27=l9_2373;
}
else
{
float4 l9_2374=param_27;
float4 l9_2375=float4(0.0);
if ((int(sc_BlendMode_MultiplyOriginal_tmp)!=0))
{
l9_2375=float4(mix(float3(1.0),l9_2374.xyz,float3(l9_2374.w)),l9_2374.w);
}
else
{
if ((int(sc_BlendMode_Screen_tmp)!=0)||(int(sc_BlendMode_PremultipliedAlphaAuto_tmp)!=0))
{
float l9_2376=l9_2374.w;
if ((int(sc_BlendMode_PremultipliedAlphaAuto_tmp)!=0))
{
l9_2376=fast::clamp(l9_2376,0.0,1.0);
}
l9_2375=float4(l9_2374.xyz*l9_2376,l9_2376);
}
else
{
l9_2375=l9_2374;
}
}
float4 l9_2377=l9_2375;
param_27=l9_2377;
}
}
}
}
}
float4 l9_2378=param_27;
FinalColor=l9_2378;
if ((*sc_set0.UserUniforms).PreviewEnabled==1)
{
if (PreviewInfo.Saved)
{
FinalColor=float4(PreviewInfo.Color);
}
else
{
FinalColor=float4(0.0);
}
}
float4 l9_2379=float4(0.0);
l9_2379=float4(0.0);
float4 l9_2380=l9_2379;
float4 Cost=l9_2380;
if (Cost.w>0.0)
{
FinalColor=Cost;
}
FinalColor=fast::max(FinalColor,float4(0.0));
float3 param_28=in.varPos;
float4 param_29=FinalColor;
FinalColor=sc_OutputMotionVectorsIfNeeded(param_28,param_29,in.varStereoViewID,(*sc_set0.UserUniforms));
float4 param_30=FinalColor;
float4 l9_2381=param_30;
if (sc_ShaderCacheConstant_tmp!=0)
{
l9_2381.x+=((*sc_set0.UserUniforms).sc_UniformConstants.x*float(sc_ShaderCacheConstant_tmp));
}
out.FragColor0=l9_2381;
return out;
}
} // FRAGMENT SHADER
