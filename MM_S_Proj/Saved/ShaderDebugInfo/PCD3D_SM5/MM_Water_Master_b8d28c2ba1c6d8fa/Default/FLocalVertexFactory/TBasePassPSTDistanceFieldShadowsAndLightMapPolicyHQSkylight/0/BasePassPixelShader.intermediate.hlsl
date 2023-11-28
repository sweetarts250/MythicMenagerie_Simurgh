#pragma warning(disable : 3571) // pow() intrinsic suggested to be used with abs()
static uint _305 = 0u;
static float _331 = 0.0f;
static uint3 _332 = uint3(0u, 0u, 0u);
static float3 _333 = 0.0f.xxx;
static float4 _334 = 0.0f.xxxx;
static bool4 _335 = bool4(false, false, false, false);
static float4 _343 = 0.0f.xxxx;
static float2 _344 = 0.0f.xx;
static float3 _345 = 0.0f.xxx;

cbuffer View
{
    row_major float4x4 View_View_TranslatedWorldToClip : packoffset(c0);
    row_major float4x4 View_View_RelativeWorldToClip : packoffset(c4);
    row_major float4x4 View_View_TranslatedWorldToView : packoffset(c12);
    row_major float4x4 View_View_ViewToClip : packoffset(c28);
    row_major float4x4 View_View_SVPositionToTranslatedWorld : packoffset(c44);
    float3 View_View_ViewTilePosition : packoffset(c60);
    float3 View_View_MatrixTilePosition : packoffset(c61);
    float3 View_View_ViewForward : packoffset(c62);
    float4 View_View_InvDeviceZToWorldZTransform : packoffset(c67);
    float4 View_View_ScreenPositionScaleBias : packoffset(c68);
    float3 View_View_TranslatedWorldCameraOrigin : packoffset(c70);
    float3 View_View_RelativePreViewTranslation : packoffset(c72);
    row_major float4x4 View_View_ClipToPrevClip : packoffset(c113);
    float4 View_View_ViewRectMin : packoffset(c124);
    float4 View_View_ViewSizeAndInvSize : packoffset(c125);
    float4 View_View_LightProbeSizeRatioAndInvSizeRatio : packoffset(c127);
    float View_View_PreExposure : packoffset(c132.z);
    float View_View_OneOverPreExposure : packoffset(c132.w);
    float4 View_View_DiffuseOverrideParameter : packoffset(c133);
    float4 View_View_SpecularOverrideParameter : packoffset(c134);
    float4 View_View_NormalOverrideParameter : packoffset(c135);
    float2 View_View_RoughnessOverrideParameter : packoffset(c136);
    float View_View_OutOfBoundsMask : packoffset(c137);
    float View_View_GameTime : packoffset(c139.y);
    float View_View_MaterialTextureMipBias : packoffset(c140);
    uint View_View_StateFrameIndexMod8 : packoffset(c141.y);
    float View_View_CameraCut : packoffset(c142.y);
    float View_View_UnlitViewmodeMask : packoffset(c142.z);
    float4 View_View_TranslucencyLightingVolumeMin[2] : packoffset(c145);
    float4 View_View_TranslucencyLightingVolumeInvSize[2] : packoffset(c147);
    float3 View_View_PrecomputedIndirectLightingColorScale : packoffset(c155);
    float3 View_View_PrecomputedIndirectSpecularColorScale : packoffset(c156);
    float View_View_RenderingReflectionCaptureMask : packoffset(c179.w);
    float View_View_SkyLightApplyPrecomputedBentNormalShadowingFlag : packoffset(c182.y);
    float4 View_View_SkyLightColor : packoffset(c183);
    float View_View_ReflectionCubemapMaxMip : packoffset(c192.z);
    float3 View_View_ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight : packoffset(c194);
    int View_View_StereoPassIndex : packoffset(c194.w);
    float4 View_View_GlobalVolumeTranslatedCenterAndExtent[6] : packoffset(c195);
    float4 View_View_GlobalVolumeTranslatedWorldToUVAddAndMul[6] : packoffset(c201);
    int View_View_GlobalDistanceFieldClipmapSizeInPages : packoffset(c219.z);
    float3 View_View_GlobalDistanceFieldInvPageAtlasSize : packoffset(c220);
    float View_View_GlobalVolumeTexelSize : packoffset(c222);
    uint View_View_NumGlobalSDFClipmaps : packoffset(c222.z);
    float3 View_View_VolumetricFogInvGridSize : packoffset(c225);
    float3 View_View_VolumetricFogGridZParams : packoffset(c226);
    float2 View_View_VolumetricFogScreenToResourceUV : packoffset(c229);
    float2 View_View_VolumetricFogUVMax : packoffset(c229.z);
};

StructuredBuffer<float4> View_SkyIrradianceEnvironmentMap;
StructuredBuffer<float4> Scene_GPUScene_GPUScenePrimitiveSceneData;
StructuredBuffer<float4> Scene_GPUScene_GPUSceneLightmapData;
cbuffer TranslucentBasePass
{
    uint TranslucentBasePass_TranslucentBasePass_Shared_Forward_NumReflectionCaptures : packoffset(c0.y);
    uint TranslucentBasePass_TranslucentBasePass_Shared_Forward_NumGridCells : packoffset(c0.w);
    int3 TranslucentBasePass_TranslucentBasePass_Shared_Forward_CulledGridSize : packoffset(c1);
    uint TranslucentBasePass_TranslucentBasePass_Shared_Forward_LightGridPixelSizeShift : packoffset(c2);
    float3 TranslucentBasePass_TranslucentBasePass_Shared_Forward_LightGridZParams : packoffset(c3);
    float4 TranslucentBasePass_TranslucentBasePass_Shared_Reflection_SkyLightParameters : packoffset(c90);
    float4 TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_ReflectionPlane : packoffset(c95);
    float4 TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionOrigin : packoffset(c96);
    float4 TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionXAxis : packoffset(c97);
    float4 TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionYAxis : packoffset(c98);
    row_major float3x4 TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_InverseTransposeMirrorMatrix : packoffset(c99);
    float3 TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionParameters : packoffset(c102);
    float2 TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionParameters2 : packoffset(c103);
    row_major float4x4 TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_ProjectionWithExtraFOV[2] : packoffset(c104);
    float4 TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionScreenScaleBias[2] : packoffset(c112);
    float2 TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionScreenBound : packoffset(c114);
    uint TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_bIsStereo : packoffset(c114.z);
    float TranslucentBasePass_TranslucentBasePass_Shared_Fog_ApplyVolumetricFog : packoffset(c124.w);
    float TranslucentBasePass_TranslucentBasePass_Shared_Fog_VolumetricFogStartDistance : packoffset(c125);
    uint TranslucentBasePass_TranslucentBasePass_Shared_UseBasePassSkylight : packoffset(c140);
    float4 TranslucentBasePass_TranslucentBasePass_HZBUvFactorAndInvFactor : packoffset(c161);
    float4 TranslucentBasePass_TranslucentBasePass_PrevScreenPositionScaleBias : packoffset(c162);
    float2 TranslucentBasePass_TranslucentBasePass_PrevSceneColorBilinearUVMin : packoffset(c163);
    float2 TranslucentBasePass_TranslucentBasePass_PrevSceneColorBilinearUVMax : packoffset(c163.z);
    float TranslucentBasePass_TranslucentBasePass_PrevSceneColorPreExposureInv : packoffset(c164);
    int TranslucentBasePass_TranslucentBasePass_SSRQuality : packoffset(c164.y);
    float TranslucentBasePass_TranslucentBasePass_ReprojectionRadiusScale : packoffset(c171);
    float TranslucentBasePass_TranslucentBasePass_InvClipmapFadeSize : packoffset(c171.w);
    uint TranslucentBasePass_TranslucentBasePass_RadianceProbeClipmapResolution : packoffset(c172.z);
    uint TranslucentBasePass_TranslucentBasePass_NumRadianceProbeClipmaps : packoffset(c172.w);
    uint TranslucentBasePass_TranslucentBasePass_RadianceProbeResolution : packoffset(c173);
    uint TranslucentBasePass_TranslucentBasePass_FinalProbeResolution : packoffset(c173.y);
    uint TranslucentBasePass_TranslucentBasePass_FinalRadianceAtlasMaxMip : packoffset(c173.z);
    float4 TranslucentBasePass_TranslucentBasePass_RadianceProbeSettings[6] : packoffset(c178);
    float4 TranslucentBasePass_TranslucentBasePass_PaddedWorldPositionToRadianceProbeCoordBias[6] : packoffset(c184);
    float4 TranslucentBasePass_TranslucentBasePass_PaddedRadianceProbeCoordToWorldPositionBias[6] : packoffset(c190);
    float2 TranslucentBasePass_TranslucentBasePass_InvProbeFinalRadianceAtlasResolution : packoffset(c196);
    uint TranslucentBasePass_TranslucentBasePass_ProbeAtlasResolutionModuloMask : packoffset(c198);
    uint TranslucentBasePass_TranslucentBasePass_ProbeAtlasResolutionDivideShift : packoffset(c198.y);
    uint TranslucentBasePass_TranslucentBasePass_Enabled : packoffset(c200.z);
    float TranslucentBasePass_TranslucentBasePass_RelativeDepthThreshold : packoffset(c200.w);
    float TranslucentBasePass_TranslucentBasePass_SpecularScale : packoffset(c201);
    float TranslucentBasePass_TranslucentBasePass_Contrast : packoffset(c201.y);
    float3 TranslucentBasePass_TranslucentBasePass_TranslucencyGIGridZParams : packoffset(c205);
    int3 TranslucentBasePass_TranslucentBasePass_TranslucencyGIGridSize : packoffset(c206);
};

StructuredBuffer<uint> TranslucentBasePass_Shared_Forward_NumCulledLightsGrid;
StructuredBuffer<float4> TranslucentBasePass_ProbeWorldOffset;
cbuffer ReflectionCaptureSM5
{
    float4 ReflectionCaptureSM5_ReflectionCaptureSM5_PositionAndRadius[341] : packoffset(c0);
    float4 ReflectionCaptureSM5_ReflectionCaptureSM5_TilePosition[341] : packoffset(c341);
    float4 ReflectionCaptureSM5_ReflectionCaptureSM5_CaptureProperties[341] : packoffset(c682);
    float4 ReflectionCaptureSM5_ReflectionCaptureSM5_CaptureOffsetAndAverageBrightness[341] : packoffset(c1023);
    row_major float4x4 ReflectionCaptureSM5_ReflectionCaptureSM5_BoxTransform[341] : packoffset(c1364);
    float4 ReflectionCaptureSM5_ReflectionCaptureSM5_BoxScales[341] : packoffset(c2728);
};

cbuffer Material
{
    float4 Material_Material_PreshaderBuffer[26] : packoffset(c0);
};

Texture3D<float4> View_GlobalDistanceFieldPageAtlasTexture;
Texture3D<uint4> View_GlobalDistanceFieldPageTableTexture;
SamplerState View_SharedPointClampedSampler;
SamplerState View_SharedBilinearClampedSampler;
SamplerState View_SharedTrilinearWrappedSampler;
Buffer<uint4> TranslucentBasePass_Shared_Forward_CulledLightDataGrid16Bit;
TextureCube<float4> TranslucentBasePass_Shared_Reflection_SkyLightCubemap;
SamplerState TranslucentBasePass_Shared_Reflection_SkyLightCubemapSampler;
TextureCubeArray<float4> TranslucentBasePass_Shared_Reflection_ReflectionCubemap;
SamplerState TranslucentBasePass_Shared_Reflection_ReflectionCubemapSampler;
Texture2D<float4> TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionTexture;
Texture3D<float4> TranslucentBasePass_Shared_Fog_IntegratedLightScattering;
Texture2D<float4> TranslucentBasePass_SceneTextures_SceneDepthTexture;
SamplerState TranslucentBasePass_SceneTextures_PointClampSampler;
Texture3D<float4> TranslucentBasePass_TranslucencyLightingVolumeAmbientInner;
Texture3D<float4> TranslucentBasePass_TranslucencyLightingVolumeAmbientOuter;
Texture3D<float4> TranslucentBasePass_TranslucencyLightingVolumeDirectionalInner;
Texture3D<float4> TranslucentBasePass_TranslucencyLightingVolumeDirectionalOuter;
Texture3D<uint4> TranslucentBasePass_RadianceProbeIndirectionTexture;
Texture2D<float4> TranslucentBasePass_RadianceCacheFinalRadianceAtlas;
Texture2D<float4> TranslucentBasePass_Radiance;
Texture2D<float4> TranslucentBasePass_SceneDepth;
Texture3D<float4> TranslucentBasePass_TranslucencyGIVolumeHistory0;
Texture3D<float4> TranslucentBasePass_TranslucencyGIVolumeHistory1;
SamplerState TranslucentBasePass_TranslucencyGIVolumeSampler;
Texture2D<float4> TranslucentBasePass_HZBTexture;
SamplerState TranslucentBasePass_HZBSampler;
Texture2D<float4> TranslucentBasePass_PrevSceneColor;
SamplerState TranslucentBasePass_PrevSceneColorSampler;
Texture2D<float4> LightmapResourceCluster_LightMapTexture;
Texture2D<float4> LightmapResourceCluster_SkyOcclusionTexture;
SamplerState LightmapResourceCluster_LightMapSampler;
Texture2D<float4> Material_Texture2D_0;
SamplerState Material_Texture2D_0Sampler;
Texture2D<float4> Material_Texture2D_1;
SamplerState Material_Texture2D_1Sampler;
Texture2D<float4> Material_Texture2D_2;
SamplerState Material_Texture2D_2Sampler;
Texture2D<float4> Material_Texture2D_3;
SamplerState Material_Texture2D_3Sampler;
Texture2D<float4> Material_Texture2D_4;
SamplerState Material_Texture2D_4Sampler;
Texture2D<float4> Material_Texture2D_5;
SamplerState Material_Texture2D_5Sampler;
Texture2D<float4> Material_Texture2D_6;
SamplerState Material_Texture2D_6Sampler;

static float4 gl_FragCoord;
static float4 in_var_TEXCOORD10_centroid;
static float4 in_var_TEXCOORD11_centroid;
static float4 in_var_COLOR0;
static float4 in_var_TEXCOORD0[1];
static float4 in_var_TEXCOORD4;
static uint in_var_PRIMITIVE_ID;
static uint in_var_LIGHTMAP_ID;
static float4 in_var_TEXCOORD7;
static float3 in_var_TEXCOORD9;
static float4 out_var_SV_Target0;

struct SPIRV_Cross_Input
{
    float4 in_var_TEXCOORD10_centroid : TEXCOORD10_centroid;
    float4 in_var_TEXCOORD11_centroid : TEXCOORD11_centroid;
    float4 in_var_COLOR0 : COLOR0;
    float4 in_var_TEXCOORD0[1] : TEXCOORD0;
    float4 in_var_TEXCOORD4 : TEXCOORD4;
    nointerpolation uint in_var_PRIMITIVE_ID : PRIMITIVE_ID;
    nointerpolation uint in_var_LIGHTMAP_ID : LIGHTMAP_ID;
    float4 in_var_TEXCOORD7 : TEXCOORD7;
    float3 in_var_TEXCOORD9 : TEXCOORD9;
    float4 gl_FragCoord : SV_Position;
};

struct SPIRV_Cross_Output
{
    float4 out_var_SV_Target0 : SV_Target0;
};

void frag_main()
{
    float _385 = 1.0f / gl_FragCoord.w;
    float3 _418 = -View_View_MatrixTilePosition;
    float3 _419 = -View_View_ViewTilePosition;
    float2 _431 = gl_FragCoord.xy - View_View_ViewRectMin.xy;
    float4 _439 = float4(mad(_431, View_View_ViewSizeAndInvSize.zw, (-0.5f).xx) * float2(2.0f, -2.0f), gl_FragCoord.z, 1.0f) * _385;
    float4 _443 = mul(float4(gl_FragCoord.xyz, 1.0f), View_View_SVPositionToTranslatedWorld);
    float3 _447 = _443.xyz / _443.w.xxx;
    float3 _448 = _447 - View_View_RelativePreViewTranslation;
    float _450 = _439.w;
    float2 _455 = mad(_439.xy / _450.xx, View_View_ScreenPositionScaleBias.xy, View_View_ScreenPositionScaleBias.wz);
    float3 _464 = 0.0f.xxx;
    if (View_View_ViewToClip[3].w >= 1.0f)
    {
        _464 = -View_View_ViewForward;
    }
    else
    {
        _464 = normalize(-_447);
    }
    float2 _494 = (mad(Material_Texture2D_0.SampleBias(Material_Texture2D_0Sampler, mad(float2(in_var_TEXCOORD0[0].x, in_var_TEXCOORD0[0].y), Material_Material_PreshaderBuffer[1].yz, float2(View_View_GameTime * (-0.100000001490116119384765625f), View_View_GameTime * 0.00999999977648258209228515625f)), View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx) + mad(Material_Texture2D_0.SampleBias(Material_Texture2D_0Sampler, mad(float2(in_var_TEXCOORD0[0].x, in_var_TEXCOORD0[0].y), Material_Material_PreshaderBuffer[1].yz, float2(View_View_GameTime * 0.02999999932944774627685546875f, View_View_GameTime * (-0.07500000298023223876953125f))), View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx)) * Material_Material_PreshaderBuffer[1].w.xx;
    float3 _501 = float3(_494, sqrt(clamp(1.0f - dot(_494, _494), 0.0f, 1.0f)));
    float _502 = dot(_501, _501);
    float3 _503 = normalize(_501);
    bool _506 = abs(_502 - 9.9999999747524270787835121154785e-07f) > 9.9999997473787516355514526367188e-06f;
    bool _507 = _502 >= 9.9999999747524270787835121154785e-07f;
    float3 _526 = normalize(mul(normalize((float4(_506 ? (_507 ? _503.x : 0.0f) : 0.0f, _506 ? (_507 ? _503.y : 0.0f) : 0.0f, _506 ? (_507 ? _503.z : 1.0f) : 1.0f, _331).xyz * View_View_NormalOverrideParameter.w) + View_View_NormalOverrideParameter.xyz), float3x3(in_var_TEXCOORD10_centroid.xyz, cross(in_var_TEXCOORD11_centroid.xyz, in_var_TEXCOORD10_centroid.xyz) * in_var_TEXCOORD11_centroid.w, in_var_TEXCOORD11_centroid.xyz))) * 1.0f;
    float _537 = in_var_COLOR0.x - Material_Material_PreshaderBuffer[5].x;
    float3 _572 = normalize(1.0f.xxx);
    float _573 = _572.x;
    float3 _577 = float4(_573, _572.yz, 0.87964594364166259765625f).xyz;
    float3 _579 = _577 * dot(_577, Material_Material_PreshaderBuffer[7].xyz);
    float3 _580 = Material_Material_PreshaderBuffer[7].xyz - _579;
    float3 _585 = _579 + ((_580 * 0.637423992156982421875f) + (cross(_577, _580) * 0.770513236522674560546875f));
    float3 _587 = float4(_573, _572.yz, 0.31415927410125732421875f).xyz;
    float3 _589 = _587 * dot(_587, Material_Material_PreshaderBuffer[6].xyz);
    float3 _590 = Material_Material_PreshaderBuffer[6].xyz - _589;
    float _599 = in_var_COLOR0.y - Material_Material_PreshaderBuffer[10].x;
    float3 _613 = float4(_573, _572.yz, 0.6283185482025146484375f).xyz;
    float3 _615 = _613 * dot(_613, Material_Material_PreshaderBuffer[9].yzw);
    float3 _616 = Material_Material_PreshaderBuffer[9].yzw - _615;
    float2 _638 = float2(in_var_TEXCOORD0[0].x, in_var_TEXCOORD0[0].y) * Material_Material_PreshaderBuffer[11].zw;
    float _649 = in_var_COLOR0.z - Material_Material_PreshaderBuffer[12].x;
    float4 _678 = Material_Texture2D_2.SampleBias(Material_Texture2D_2Sampler, _638, View_View_MaterialTextureMipBias);
    float3 _681 = lerp(lerp(mad(lerp(Material_Material_PreshaderBuffer[7].xyz, Material_Material_PreshaderBuffer[6].xyz, (_537 * Material_Material_PreshaderBuffer[5].z).xxx), ((abs(Material_Material_PreshaderBuffer[5].x - in_var_COLOR0.x) > 9.9999997473787516355514526367188e-06f) ? ((Material_Material_PreshaderBuffer[5].x >= in_var_COLOR0.x) ? 0.0f : 1.0f) : 0.0f).xxx, lerp(Material_Material_PreshaderBuffer[9].yzw, Material_Material_PreshaderBuffer[7].xyz, (in_var_COLOR0.x * Material_Material_PreshaderBuffer[9].x).xxx) * ((abs(_537) > 9.9999997473787516355514526367188e-06f) ? ((in_var_COLOR0.x >= Material_Material_PreshaderBuffer[5].x) ? 0.0f : 1.0f) : 0.0f).xxx), mad(lerp(_585, _589 + ((_590 * 0.951056540012359619140625f) + (cross(_587, _590) * 0.309017002582550048828125f)), (_599 * Material_Material_PreshaderBuffer[10].z).xxx), ((abs(Material_Material_PreshaderBuffer[10].x - in_var_COLOR0.y) > 9.9999997473787516355514526367188e-06f) ? ((Material_Material_PreshaderBuffer[10].x >= in_var_COLOR0.y) ? 0.0f : 1.0f) : 0.0f).xxx, lerp(_615 + ((_616 * 0.809017002582550048828125f) + (cross(_613, _616) * 0.587785243988037109375f)), _585, (in_var_COLOR0.y * Material_Material_PreshaderBuffer[10].w).xxx) * ((abs(_599) > 9.9999997473787516355514526367188e-06f) ? ((in_var_COLOR0.y >= Material_Material_PreshaderBuffer[10].x) ? 0.0f : 1.0f) : 0.0f).xxx), Material_Texture2D_1.SampleBias(Material_Texture2D_1Sampler, _638, View_View_MaterialTextureMipBias).x.xxx), mad(lerp(Material_Material_PreshaderBuffer[6].xyz, Material_Material_PreshaderBuffer[7].xyz, (_649 * Material_Material_PreshaderBuffer[12].z).xxx), ((abs(Material_Material_PreshaderBuffer[12].x - in_var_COLOR0.z) > 9.9999997473787516355514526367188e-06f) ? ((Material_Material_PreshaderBuffer[12].x >= in_var_COLOR0.z) ? 0.0f : 1.0f) : 0.0f).xxx, lerp(Material_Material_PreshaderBuffer[9].yzw, Material_Material_PreshaderBuffer[6].xyz, (in_var_COLOR0.z * Material_Material_PreshaderBuffer[12].w).xxx) * ((abs(_649) > 9.9999997473787516355514526367188e-06f) ? ((in_var_COLOR0.z >= Material_Material_PreshaderBuffer[12].x) ? 0.0f : 1.0f) : 0.0f).xxx), _678.x.xxx);
    float _683 = _681.x * 6.283185482025146484375f;
    float3 _687 = Material_Material_PreshaderBuffer[13].x.xxx;
    float3 _688 = float4(_573, _572.yz, _683).xyz;
    float3 _690 = _688 * dot(_688, _687);
    float3 _691 = _687 - _690;
    float4 _750 = Material_Texture2D_5.SampleBias(Material_Texture2D_5Sampler, mad((((-0.5f).xx + Material_Texture2D_3.SampleBias(Material_Texture2D_3Sampler, float2(View_View_GameTime * Material_Material_PreshaderBuffer[14].z, View_View_GameTime * Material_Material_PreshaderBuffer[14].w) + (mad(float2(in_var_TEXCOORD0[0].x, in_var_TEXCOORD0[0].y), Material_Material_PreshaderBuffer[16].xy, 0.5f.xx) - Material_Material_PreshaderBuffer[16].zw), View_View_MaterialTextureMipBias).xy) * 2.0f.xx) * Material_Material_PreshaderBuffer[17].x.xx, lerp(1.0f, clamp(Material_Texture2D_4.SampleBias(Material_Texture2D_4Sampler, float2(in_var_TEXCOORD0[0].x, in_var_TEXCOORD0[0].y) * Material_Material_PreshaderBuffer[17].y.xx, View_View_MaterialTextureMipBias).x * Material_Material_PreshaderBuffer[17].z, 0.0f, 1.0f), Material_Material_PreshaderBuffer[17].w).xx, float2(in_var_TEXCOORD0[0].x, in_var_TEXCOORD0[0].y) * Material_Material_PreshaderBuffer[18].zw), View_View_MaterialTextureMipBias);
    float _751 = _750.x;
    float _791 = 0.0f;
    do
    {
        [flatten]
        if (View_View_ViewToClip[3u].w < 1.0f)
        {
            _791 = _450;
            break;
        }
        else
        {
            float _777 = _439.z;
            _791 = mad(_777, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_777, View_View_InvDeviceZToWorldZTransform.z, -View_View_InvDeviceZToWorldZTransform.w));
            break;
        }
        break; // unreachable workaround
    } while(false);
    float4 _795 = TranslucentBasePass_SceneTextures_SceneDepthTexture.SampleLevel(TranslucentBasePass_SceneTextures_PointClampSampler, _455, 0.0f);
    float _796 = _795.x;
    float3 _815 = ((View_View_ViewTilePosition + _419) * 2097152.0f) + _447;
    uint3 _817 = uint3(0u, 0u, 0u);
    _817 = _332;
    float _823 = 0.0f;
    uint3 _818 = uint3(0u, 0u, 0u);
    float _914 = 0.0f;
    uint _820 = 0u;
    float _822 = 0.0f;
    for (;;)
    {
        if (_820 < View_View_NumGlobalSDFClipmaps)
        {
            float3 _839 = min(max((_815 - View_View_GlobalVolumeTranslatedCenterAndExtent[_820].xyz) + View_View_GlobalVolumeTranslatedCenterAndExtent[_820].www, 0.0f.xxx), max((View_View_GlobalVolumeTranslatedCenterAndExtent[_820].xyz + View_View_GlobalVolumeTranslatedCenterAndExtent[_820].www) - _815, 0.0f.xxx));
            float _849 = View_View_GlobalVolumeTranslatedCenterAndExtent[_820].w * View_View_GlobalVolumeTexelSize;
            _823 = 8.0f * _849;
            if (min(_839.x, min(_839.y, _839.z)) > _849)
            {
                float3 _859 = frac(frac(mad(_815, View_View_GlobalVolumeTranslatedWorldToUVAddAndMul[_820].www, View_View_GlobalVolumeTranslatedWorldToUVAddAndMul[_820].xyz)));
                float _863 = float(View_View_GlobalDistanceFieldClipmapSizeInPages);
                float3 _870 = (clamp(_859, 0.0f.xxx, 1.0f.xxx) * _863) + float3(int3(0, 0, int(_820 * uint(View_View_GlobalDistanceFieldClipmapSizeInPages))));
                uint4 _880 = View_GlobalDistanceFieldPageTableTexture.Load(int4(int4(int(_870.x), int(_870.y), int(_870.z), 0).xyz, 0));
                uint _881 = _880.x;
                uint _882 = _881 & 16777215u;
                uint3 _913 = uint3(0u, 0u, 0u);
                if (_881 < 4294967295u)
                {
                    uint3 _887 = _817;
                    _887.x = _882 & 127u;
                    _887.y = (_882 >> 7u) & 127u;
                    _887.z = _882 >> 14u;
                    float4 _906 = View_GlobalDistanceFieldPageAtlasTexture.SampleLevel(View_SharedTrilinearWrappedSampler, ((float3(_887 * uint3(8u, 8u, 8u)) + (frac(_859 * _863) * 7.0f)) + 0.5f.xxx) * View_View_GlobalDistanceFieldInvPageAtlasSize, 0.0f);
                    float _907 = _906.x;
                    if (_907 < 1.0f)
                    {
                        _914 = mad(_907, 2.0f, -1.0f) * _823;
                        break;
                    }
                    _913 = _887;
                }
                else
                {
                    _913 = _817;
                }
                _818 = _913;
            }
            else
            {
                _818 = _817;
            }
            _817 = _818;
            _820++;
            _822 = _823;
            continue;
        }
        else
        {
            _914 = _822;
            break;
        }
    }
    float _926 = clamp(mad(mad(dot(_526, normalize(float3(0.0f, 0.0f, 1.0f))), 0.5f, 0.5f), Material_Material_PreshaderBuffer[21].y, Material_Material_PreshaderBuffer[22].x), 0.0f, 1.0f);
    float2 _938 = Material_Material_PreshaderBuffer[22].w.xx;
    float2 _939 = float2(View_View_GameTime * (-0.0500000007450580596923828125f), 0.0f);
    float2 _951 = float2(View_View_GameTime * Material_Material_PreshaderBuffer[23].w, View_View_GameTime * Material_Material_PreshaderBuffer[24].x);
    float2 _961 = Material_Material_PreshaderBuffer[24].y.xx;
    float3 _990 = clamp(lerp(_681, clamp(_690 + ((_691 * cos(_683)) + (cross(_688, _691) * sin(_683))), 0.0f.xxx, 1.0f.xxx), clamp(((_751 <= 0.0f) ? 0.0f : pow(_751, Material_Material_PreshaderBuffer[19].x)) * lerp(Material_Material_PreshaderBuffer[19].z, Material_Material_PreshaderBuffer[19].y, clamp(in_var_COLOR0.w * 0.5f, 0.0f, 1.0f)), 0.0f, 1.0f).xxx), 0.0f.xxx, 1.0f.xxx);
    float _991 = clamp(Material_Material_PreshaderBuffer[19].w, 0.0f, 1.0f);
    float _996 = mad(clamp(Material_Material_PreshaderBuffer[20].y, 0.0f, 1.0f), View_View_RoughnessOverrideParameter.y, View_View_RoughnessOverrideParameter.x);
    float _997 = clamp(min(max(lerp(clamp(((mad(_796, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_796, View_View_InvDeviceZToWorldZTransform.z, -View_View_InvDeviceZToWorldZTransform.w))) - _791) * 0.00999999977648258209228515625f, 0.0f, 1.0f), 1.0f, clamp((1.0f - mad(lerp(Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, mad(float2(in_var_TEXCOORD0[0].x, in_var_TEXCOORD0[0].y), _961, _939), View_View_MaterialTextureMipBias).y, Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, mad(float2(in_var_TEXCOORD0[0].x, in_var_TEXCOORD0[0].y), _961, _951), View_View_MaterialTextureMipBias).y, _926), 3.0f, mad(lerp(Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, mad(float2(in_var_TEXCOORD0[0].x, in_var_TEXCOORD0[0].y), _938, _939), View_View_MaterialTextureMipBias).y, Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, mad(float2(in_var_TEXCOORD0[0].x, in_var_TEXCOORD0[0].y), _938, _951), View_View_MaterialTextureMipBias).y, _926), 2.0f, lerp(_914 * Material_Material_PreshaderBuffer[20].w, Material_Material_PreshaderBuffer[22].z, (_926 <= 0.0f) ? 0.0f : pow(_926, Material_Material_PreshaderBuffer[22].y))))) * Material_Material_PreshaderBuffer[24].z, 0.0f, 1.0f)), Material_Material_PreshaderBuffer[24].w), Material_Material_PreshaderBuffer[25].x), 0.0f, 1.0f);
    float3 _1010 = ((_990 - (_990 * _991)) * View_View_DiffuseOverrideParameter.w) + View_View_DiffuseOverrideParameter.xyz;
    float3 _1017 = (lerp((0.07999999821186065673828125f * clamp(Material_Material_PreshaderBuffer[20].x, 0.0f, 1.0f)).xxx, _990, _991.xxx) * View_View_SpecularOverrideParameter.w) + View_View_SpecularOverrideParameter.xyz;
    bool _1020 = View_View_RenderingReflectionCaptureMask != 0.0f;
    float3 _1025 = 0.0f.xxx;
    if (_1020)
    {
        _1025 = _1010 + (_1017 * 0.449999988079071044921875f);
    }
    else
    {
        _1025 = _1010;
    }
    bool3 _1026 = _1020.xxx;
    float3 _1027 = float3(_1026.x ? 0.0f.xxx.x : _1017.x, _1026.y ? 0.0f.xxx.y : _1017.y, _1026.z ? 0.0f.xxx.z : _1017.z);
    float4 _1034 = LightmapResourceCluster_LightMapTexture.Sample(LightmapResourceCluster_LightMapSampler, in_var_TEXCOORD4.xy * float2(1.0f, 0.5f));
    float4 _1036 = LightmapResourceCluster_LightMapTexture.Sample(LightmapResourceCluster_LightMapSampler, mad(in_var_TEXCOORD4.xy, float2(1.0f, 0.5f), float2(0.0f, 0.5f)));
    uint _1041 = in_var_LIGHTMAP_ID * 15u;
    uint _1042 = _1041 + 4u;
    uint _1046 = _1041 + 6u;
    float3 _1051 = _1034.xyz;
    float _1067 = _526.y;
    float _1068 = _526.z;
    float _1069 = _526.x;
    float3 _1243 = 0.0f.xxx;
    if (TranslucentBasePass_TranslucentBasePass_TranslucencyGIGridSize.z > 0)
    {
        float4 _1176 = mul(((float4(View_View_ViewTilePosition, 0.0f) + float4(_418, 0.0f)) * 2097152.0f) + float4(_448, 1.0f), View_View_RelativeWorldToClip);
        float _1177 = _1176.w;
        float3 _1196 = float3(mad((_1176.xy / _1177.xx).xy, float2(0.5f, -0.5f), 0.5f.xx), (log2(mad(_1177, TranslucentBasePass_TranslucentBasePass_TranslucencyGIGridZParams.x, TranslucentBasePass_TranslucentBasePass_TranslucencyGIGridZParams.y)) * TranslucentBasePass_TranslucentBasePass_TranslucencyGIGridZParams.z) / float(TranslucentBasePass_TranslucentBasePass_TranslucencyGIGridSize.z));
        float4 _1200 = TranslucentBasePass_TranslucencyGIVolumeHistory0.SampleLevel(TranslucentBasePass_TranslucencyGIVolumeSampler, _1196, 0.0f);
        float3 _1201 = _1200.xyz;
        float3 _1205 = TranslucentBasePass_TranslucencyGIVolumeHistory1.SampleLevel(TranslucentBasePass_TranslucencyGIVolumeSampler, _1196, 0.0f).xyz;
        float4 _1207 = 0.0f.xxxx;
        _1207.x = _1200.x;
        float4 _1209 = 0.0f.xxxx;
        _1209.x = _1200.y;
        float4 _1211 = 0.0f.xxxx;
        _1211.x = _1200.z;
        float3 _1215 = _1201 / (dot(_1201, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)) + 9.9999997473787516355514526367188e-06f).xxx;
        float3 _1217 = _1205 * _1215.x;
        float3 _1220 = _1205 * _1215.y;
        float3 _1223 = _1205 * _1215.z;
        float4 _1226 = 0.0f.xxxx;
        _1226.y = (-0.48860299587249755859375f) * _1067;
        _1226.z = 0.48860299587249755859375f * _1068;
        _1226.w = (-0.48860299587249755859375f) * _1069;
        _1226.x = 0.886227548122406005859375f;
        float3 _1233 = _1226.yzw * 2.094395160675048828125f;
        float4 _1234 = float4(_1226.x, _1233.x, _1233.y, _1233.z);
        float3 _1236 = 0.0f.xxx;
        _1236.x = dot(float4(_1207.x, _1217.x, _1217.y, _1217.z), _1234);
        _1236.y = dot(float4(_1209.x, _1220.x, _1220.y, _1220.z), _1234);
        _1236.z = dot(float4(_1211.x, _1223.x, _1223.y, _1223.z), _1234);
        _1243 = max(0.0f.xxx, _1236) * 0.3183098733425140380859375f.xxx;
    }
    else
    {
        float3 _1160 = 0.0f.xxx;
        if (TranslucentBasePass_TranslucentBasePass_Shared_UseBasePassSkylight > 0u)
        {
            float _1112 = 0.0f;
            float _1113 = 0.0f;
            float3 _1114 = 0.0f.xxx;
            [branch]
            if (View_View_SkyLightApplyPrecomputedBentNormalShadowingFlag != 0.0f)
            {
                float4 _1095 = LightmapResourceCluster_SkyOcclusionTexture.Sample(LightmapResourceCluster_LightMapSampler, in_var_TEXCOORD4.xy);
                float _1099 = _1095.w;
                float3 _1102 = normalize(((_1095.xyz * 2.0f) - 1.0f.xxx).xyz);
                float _1106 = mad(mad(_1099, _1099, -1.0f), mad(-_1099, _1099, 1.0f), 1.0f);
                _1112 = lerp(clamp(dot(_1102, _526), 0.0f, 1.0f), 1.0f, _1106);
                _1113 = _1099 * _1099;
                _1114 = lerp(_1102, _526, _1106.xxx);
            }
            else
            {
                _1112 = 1.0f;
                _1113 = 1.0f;
                _1114 = _526;
            }
            float4 _1118 = float4(_1114, 1.0f);
            float3 _1122 = 0.0f.xxx;
            _1122.x = dot(View_SkyIrradianceEnvironmentMap[0u], _1118);
            _1122.y = dot(View_SkyIrradianceEnvironmentMap[1u], _1118);
            _1122.z = dot(View_SkyIrradianceEnvironmentMap[2u], _1118);
            float4 _1133 = _1118.xyzz * _1118.yzzx;
            float3 _1137 = 0.0f.xxx;
            _1137.x = dot(View_SkyIrradianceEnvironmentMap[3u], _1133);
            _1137.y = dot(View_SkyIrradianceEnvironmentMap[4u], _1133);
            _1137.z = dot(View_SkyIrradianceEnvironmentMap[5u], _1133);
            _1160 = (max(0.0f.xxx, (_1122 + _1137) + (View_SkyIrradianceEnvironmentMap[6u].xyz * mad(_1114.x, _1114.x, -(_1114.y * _1114.y)))) * View_View_SkyLightColor.xyz) * (_1113 * _1112);
        }
        else
        {
            _1160 = 0.0f.xxx;
        }
        _1243 = _1160;
    }
    float3 _1244 = mad(mad(_1051 * _1051, Scene_GPUScene_GPUSceneLightmapData[_1042].xyz, Scene_GPUScene_GPUSceneLightmapData[_1046].xyz) * ((exp2(mad(_1034.w + mad(_1036.w, 0.0039215688593685626983642578125f, -0.00196078442968428134918212890625f), Scene_GPUScene_GPUSceneLightmapData[_1042].w, Scene_GPUScene_GPUSceneLightmapData[_1046].w)) - 0.0185813605785369873046875f) * max(0.0f, dot(mad(_1036, Scene_GPUScene_GPUSceneLightmapData[_1041 + 5u], Scene_GPUScene_GPUSceneLightmapData[_1041 + 7u]), float4(_1067, _1068, _1069, 1.0f)))), View_View_PrecomputedIndirectLightingColorScale, _1243);
    uint2 _1284 = uint2(_431 * View_View_LightProbeSizeRatioAndInvSizeRatio.zw) >> (TranslucentBasePass_TranslucentBasePass_Shared_Forward_LightGridPixelSizeShift.xx & uint2(31u, 31u));
    float3 _1298 = (_526 * (2.0f * dot(_464, _526))) - _464;
    bool _1333 = false;
    if (TranslucentBasePass_TranslucentBasePass_Enabled > 0u)
    {
        float _1326 = 0.0f;
        do
        {
            [flatten]
            if (asuint(View_View_ViewToClip[3].w) != 0u)
            {
                _1326 = mad(_450, View_View_ViewToClip[2u].z, View_View_ViewToClip[3u].z);
                break;
            }
            else
            {
                _1326 = 1.0f / ((_450 + View_View_InvDeviceZToWorldZTransform.w) * View_View_InvDeviceZToWorldZTransform.z);
                break;
            }
            break; // unreachable workaround
        } while(false);
        _1333 = (abs(TranslucentBasePass_SceneDepth.SampleLevel(View_SharedPointClampedSampler, _455, 0.0f).x - _1326) < TranslucentBasePass_TranslucentBasePass_RelativeDepthThreshold) ? true : false;
    }
    else
    {
        _1333 = false;
    }
    bool _1337 = !_1333;
    uint _1403 = 0u;
    bool _1404 = false;
    if ((TranslucentBasePass_TranslucentBasePass_FinalProbeResolution > 0u) && _1337)
    {
        uint _1359 = 0u;
        float _1349 = frac(52.98291778564453125f * frac(dot(gl_FragCoord.xy + (float2(32.66500091552734375f, 11.81499958038330078125f) * float(View_View_StateFrameIndexMod8)), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f))));
        float3 _1351 = (View_View_ViewTilePosition * 2097152.0f) + _448;
        uint _1400 = 0u;
        do
        {
            uint _1397 = 0u;
            bool _1398 = false;
            uint _1355 = 0u;
            for (;;)
            {
                _1359 = TranslucentBasePass_TranslucentBasePass_NumRadianceProbeClipmaps;
                if (_1355 < _1359)
                {
                    float3 _1369 = (_1351 * TranslucentBasePass_TranslucentBasePass_RadianceProbeSettings[_1355].y) + TranslucentBasePass_TranslucentBasePass_PaddedWorldPositionToRadianceProbeCoordBias[_1355].xyz;
                    float3 _1374 = clamp((_1369 - 0.5f.xxx) * TranslucentBasePass_TranslucentBasePass_InvClipmapFadeSize, 0.0f.xxx, 1.0f.xxx);
                    float3 _1382 = clamp(((float(TranslucentBasePass_TranslucentBasePass_RadianceProbeClipmapResolution).xxx - 0.5f.xxx) - _1369) * TranslucentBasePass_TranslucentBasePass_InvClipmapFadeSize, 0.0f.xxx, 1.0f.xxx);
                    if (min(min(_1374.x, min(_1374.y, _1374.z)), min(_1382.x, min(_1382.y, _1382.z))) > _1349)
                    {
                        _1397 = _1355;
                        _1398 = true;
                        break;
                    }
                    _1355++;
                    continue;
                }
                else
                {
                    _1397 = _305;
                    _1398 = false;
                    break;
                }
            }
            if (_1398)
            {
                _1400 = _1397;
                break;
            }
            _1400 = _1359;
            break;
        } while(false);
        _1403 = _1400;
        _1404 = (_1400 < _1359) ? true : false;
    }
    else
    {
        _1403 = 0u;
        _1404 = false;
    }
    float3 _2620 = 0.0f.xxx;
    if (_1333)
    {
        _2620 = (pow((TranslucentBasePass_Radiance.SampleLevel(View_SharedPointClampedSampler, _455, 0.0f).xyz * View_View_OneOverPreExposure) * 5.5555553436279296875f, TranslucentBasePass_TranslucentBasePass_Contrast.xxx) * 0.180000007152557373046875f) * TranslucentBasePass_TranslucentBasePass_SpecularScale;
    }
    else
    {
        float3 _2602 = 0.0f.xxx;
        if (_1404)
        {
            float3 _1694 = (View_View_ViewTilePosition * 2097152.0f) + _448;
            float3 _1702 = ((_1694 * TranslucentBasePass_TranslucentBasePass_RadianceProbeSettings[_1403].y) + TranslucentBasePass_TranslucentBasePass_PaddedWorldPositionToRadianceProbeCoordBias[_1403].xyz) - 0.5f.xxx;
            int3 _1704 = int3(floor(_1702));
            float3 _1705 = frac(_1702);
            uint3 _1706 = uint3(_1704);
            uint _1712 = _1403 * TranslucentBasePass_TranslucentBasePass_RadianceProbeClipmapResolution;
            int4 _1717 = int4(uint4(_1706.x + _1712, _1706.yz, 0u));
            uint4 _1721 = TranslucentBasePass_RadianceProbeIndirectionTexture.Load(int4(_1717.xyz, _1717.w));
            uint _1722 = _1721.x;
            float3 _1734 = ((float3(_1706) * TranslucentBasePass_TranslucentBasePass_RadianceProbeSettings[_1403].z) + TranslucentBasePass_TranslucentBasePass_PaddedRadianceProbeCoordToWorldPositionBias[_1403].xyz) + TranslucentBasePass_ProbeWorldOffset[_1722].xyz;
            float _1737 = TranslucentBasePass_TranslucentBasePass_ReprojectionRadiusScale * TranslucentBasePass_TranslucentBasePass_RadianceProbeSettings[_1403].x;
            float3 _1743 = _1694 - float4(_1734, _1737).xyz;
            float _1745 = dot(_1298, _1298);
            float _1746 = dot(_1298, _1743);
            float _1747 = 2.0f * _1746;
            float _1748 = -_1737;
            float _1750 = 4.0f * _1745;
            float _1753 = mad(_1747, _1747, -(_1750 * mad(_1748, _1737, dot(_1743, _1743))));
            float2 _1765 = 0.0f.xx;
            [flatten]
            if (_1753 >= 0.0f)
            {
                _1765 = ((_1746 * (-2.0f)).xx + (float2(-1.0f, 1.0f) * sqrt(_1753))) / (2.0f * _1745).xx;
            }
            else
            {
                _1765 = (-1.0f).xx;
            }
            float3 _1769 = (_1694 + (_1298 * _1765.y)) - _1734;
            float3 _1774 = normalize(_1769);
            float3 _1775 = abs(_1774);
            float _1778 = sqrt(1.0f - _1775.z);
            float _1779 = _1775.x;
            float _1780 = _1775.y;
            float _1784 = min(_1779, _1780) / (max(_1779, _1780) + 5.4210108624275221700372640043497e-20f);
            float _1790 = mad(mad(mad(mad(mad(mad(-0.0251390971243381500244140625f, _1784, 0.0419038832187652587890625f), _1784, 0.08817707002162933349609375f), _1784, -0.2473337352275848388671875f), _1784, 0.006157201714813709259033203125f), _1784, 0.63622653484344482421875f), _1784, 4.0675854506844189018011093139648e-06f);
            float _1793 = (_1779 < _1780) ? (1.0f - _1790) : _1790;
            float2 _1797 = float2(mad(-_1793, _1778, _1778), _1793 * _1778);
            bool2 _1800 = (_1774.z < 0.0f).xx;
            float2 _1802 = 1.0f.xx - _1797.yx;
            uint2 _1812 = TranslucentBasePass_TranslucentBasePass_FinalProbeResolution.xx;
            uint _1818 = TranslucentBasePass_TranslucentBasePass_ProbeAtlasResolutionDivideShift & 31u;
            float _1824 = float(TranslucentBasePass_TranslucentBasePass_RadianceProbeResolution);
            float2 _1831 = float(1u << (TranslucentBasePass_TranslucentBasePass_FinalRadianceAtlasMaxMip & 31u)).xx;
            bool3 _1839 = (_1722 == 4294967295u).xxx;
            float3 _1844 = TranslucentBasePass_RadianceCacheFinalRadianceAtlas.SampleLevel(View_SharedBilinearClampedSampler, (float2(_1812 * uint2(_1722 & TranslucentBasePass_TranslucentBasePass_ProbeAtlasResolutionModuloMask, _1722 >> _1818)) + ((((asfloat(asuint(float2(_1800.x ? _1802.x : _1797.x, _1800.y ? _1802.y : _1797.y)) ^ (asuint(_1774.xy) & uint2(2147483648u, 2147483648u))) * 0.5f) + 0.5f.xx) * _1824) + _1831)) * TranslucentBasePass_TranslucentBasePass_InvProbeFinalRadianceAtlasResolution, 0.0f).xyz;
            uint3 _1848 = uint3(_1704 + int3(0, 0, 1));
            int4 _1854 = int4(uint4(_1848.x + _1712, _1848.yz, 0u));
            uint4 _1857 = TranslucentBasePass_RadianceProbeIndirectionTexture.Load(int4(_1854.xyz, _1854.w));
            uint _1858 = _1857.x;
            float3 _1865 = ((float3(_1848) * TranslucentBasePass_TranslucentBasePass_RadianceProbeSettings[_1403].z) + TranslucentBasePass_TranslucentBasePass_PaddedRadianceProbeCoordToWorldPositionBias[_1403].xyz) + TranslucentBasePass_ProbeWorldOffset[_1858].xyz;
            float3 _1871 = _1694 - float4(_1865, _1737).xyz;
            float _1873 = dot(_1298, _1871);
            float _1874 = 2.0f * _1873;
            float _1878 = mad(_1874, _1874, -(_1750 * mad(_1748, _1737, dot(_1871, _1871))));
            float2 _1890 = 0.0f.xx;
            [flatten]
            if (_1878 >= 0.0f)
            {
                _1890 = ((_1873 * (-2.0f)).xx + (float2(-1.0f, 1.0f) * sqrt(_1878))) / (2.0f * _1745).xx;
            }
            else
            {
                _1890 = (-1.0f).xx;
            }
            float3 _1894 = (_1694 + (_1298 * _1890.y)) - _1865;
            float3 _1899 = normalize(_1894);
            float3 _1900 = abs(_1899);
            float _1903 = sqrt(1.0f - _1900.z);
            float _1904 = _1900.x;
            float _1905 = _1900.y;
            float _1909 = min(_1904, _1905) / (max(_1904, _1905) + 5.4210108624275221700372640043497e-20f);
            float _1915 = mad(mad(mad(mad(mad(mad(-0.0251390971243381500244140625f, _1909, 0.0419038832187652587890625f), _1909, 0.08817707002162933349609375f), _1909, -0.2473337352275848388671875f), _1909, 0.006157201714813709259033203125f), _1909, 0.63622653484344482421875f), _1909, 4.0675854506844189018011093139648e-06f);
            float _1918 = (_1904 < _1905) ? (1.0f - _1915) : _1915;
            float2 _1922 = float2(mad(-_1918, _1903, _1903), _1918 * _1903);
            bool2 _1925 = (_1899.z < 0.0f).xx;
            float2 _1927 = 1.0f.xx - _1922.yx;
            bool3 _1947 = (_1858 == 4294967295u).xxx;
            float3 _1950 = TranslucentBasePass_RadianceCacheFinalRadianceAtlas.SampleLevel(View_SharedBilinearClampedSampler, (float2(_1812 * uint2(_1858 & TranslucentBasePass_TranslucentBasePass_ProbeAtlasResolutionModuloMask, _1858 >> _1818)) + ((((asfloat(asuint(float2(_1925.x ? _1927.x : _1922.x, _1925.y ? _1927.y : _1922.y)) ^ (asuint(_1899.xy) & uint2(2147483648u, 2147483648u))) * 0.5f) + 0.5f.xx) * _1824) + _1831)) * TranslucentBasePass_TranslucentBasePass_InvProbeFinalRadianceAtlasResolution, 0.0f).xyz;
            uint3 _1954 = uint3(_1704 + int3(0, 1, 0));
            int4 _1960 = int4(uint4(_1954.x + _1712, _1954.yz, 0u));
            uint4 _1963 = TranslucentBasePass_RadianceProbeIndirectionTexture.Load(int4(_1960.xyz, _1960.w));
            uint _1964 = _1963.x;
            float3 _1971 = ((float3(_1954) * TranslucentBasePass_TranslucentBasePass_RadianceProbeSettings[_1403].z) + TranslucentBasePass_TranslucentBasePass_PaddedRadianceProbeCoordToWorldPositionBias[_1403].xyz) + TranslucentBasePass_ProbeWorldOffset[_1964].xyz;
            float3 _1977 = _1694 - float4(_1971, _1737).xyz;
            float _1979 = dot(_1298, _1977);
            float _1980 = 2.0f * _1979;
            float _1984 = mad(_1980, _1980, -(_1750 * mad(_1748, _1737, dot(_1977, _1977))));
            float2 _1996 = 0.0f.xx;
            [flatten]
            if (_1984 >= 0.0f)
            {
                _1996 = ((_1979 * (-2.0f)).xx + (float2(-1.0f, 1.0f) * sqrt(_1984))) / (2.0f * _1745).xx;
            }
            else
            {
                _1996 = (-1.0f).xx;
            }
            float3 _2000 = (_1694 + (_1298 * _1996.y)) - _1971;
            float3 _2005 = normalize(_2000);
            float3 _2006 = abs(_2005);
            float _2009 = sqrt(1.0f - _2006.z);
            float _2010 = _2006.x;
            float _2011 = _2006.y;
            float _2015 = min(_2010, _2011) / (max(_2010, _2011) + 5.4210108624275221700372640043497e-20f);
            float _2021 = mad(mad(mad(mad(mad(mad(-0.0251390971243381500244140625f, _2015, 0.0419038832187652587890625f), _2015, 0.08817707002162933349609375f), _2015, -0.2473337352275848388671875f), _2015, 0.006157201714813709259033203125f), _2015, 0.63622653484344482421875f), _2015, 4.0675854506844189018011093139648e-06f);
            float _2024 = (_2010 < _2011) ? (1.0f - _2021) : _2021;
            float2 _2028 = float2(mad(-_2024, _2009, _2009), _2024 * _2009);
            bool2 _2031 = (_2005.z < 0.0f).xx;
            float2 _2033 = 1.0f.xx - _2028.yx;
            bool3 _2053 = (_1964 == 4294967295u).xxx;
            float3 _2056 = TranslucentBasePass_RadianceCacheFinalRadianceAtlas.SampleLevel(View_SharedBilinearClampedSampler, (float2(_1812 * uint2(_1964 & TranslucentBasePass_TranslucentBasePass_ProbeAtlasResolutionModuloMask, _1964 >> _1818)) + ((((asfloat(asuint(float2(_2031.x ? _2033.x : _2028.x, _2031.y ? _2033.y : _2028.y)) ^ (asuint(_2005.xy) & uint2(2147483648u, 2147483648u))) * 0.5f) + 0.5f.xx) * _1824) + _1831)) * TranslucentBasePass_TranslucentBasePass_InvProbeFinalRadianceAtlasResolution, 0.0f).xyz;
            uint3 _2060 = uint3(_1704 + int3(0, 1, 1));
            int4 _2066 = int4(uint4(_2060.x + _1712, _2060.yz, 0u));
            uint4 _2069 = TranslucentBasePass_RadianceProbeIndirectionTexture.Load(int4(_2066.xyz, _2066.w));
            uint _2070 = _2069.x;
            float3 _2077 = ((float3(_2060) * TranslucentBasePass_TranslucentBasePass_RadianceProbeSettings[_1403].z) + TranslucentBasePass_TranslucentBasePass_PaddedRadianceProbeCoordToWorldPositionBias[_1403].xyz) + TranslucentBasePass_ProbeWorldOffset[_2070].xyz;
            float3 _2083 = _1694 - float4(_2077, _1737).xyz;
            float _2085 = dot(_1298, _2083);
            float _2086 = 2.0f * _2085;
            float _2090 = mad(_2086, _2086, -(_1750 * mad(_1748, _1737, dot(_2083, _2083))));
            float2 _2102 = 0.0f.xx;
            [flatten]
            if (_2090 >= 0.0f)
            {
                _2102 = ((_2085 * (-2.0f)).xx + (float2(-1.0f, 1.0f) * sqrt(_2090))) / (2.0f * _1745).xx;
            }
            else
            {
                _2102 = (-1.0f).xx;
            }
            float3 _2106 = (_1694 + (_1298 * _2102.y)) - _2077;
            float3 _2111 = normalize(_2106);
            float3 _2112 = abs(_2111);
            float _2115 = sqrt(1.0f - _2112.z);
            float _2116 = _2112.x;
            float _2117 = _2112.y;
            float _2121 = min(_2116, _2117) / (max(_2116, _2117) + 5.4210108624275221700372640043497e-20f);
            float _2127 = mad(mad(mad(mad(mad(mad(-0.0251390971243381500244140625f, _2121, 0.0419038832187652587890625f), _2121, 0.08817707002162933349609375f), _2121, -0.2473337352275848388671875f), _2121, 0.006157201714813709259033203125f), _2121, 0.63622653484344482421875f), _2121, 4.0675854506844189018011093139648e-06f);
            float _2130 = (_2116 < _2117) ? (1.0f - _2127) : _2127;
            float2 _2134 = float2(mad(-_2130, _2115, _2115), _2130 * _2115);
            bool2 _2137 = (_2111.z < 0.0f).xx;
            float2 _2139 = 1.0f.xx - _2134.yx;
            bool3 _2159 = (_2070 == 4294967295u).xxx;
            float3 _2162 = TranslucentBasePass_RadianceCacheFinalRadianceAtlas.SampleLevel(View_SharedBilinearClampedSampler, (float2(_1812 * uint2(_2070 & TranslucentBasePass_TranslucentBasePass_ProbeAtlasResolutionModuloMask, _2070 >> _1818)) + ((((asfloat(asuint(float2(_2137.x ? _2139.x : _2134.x, _2137.y ? _2139.y : _2134.y)) ^ (asuint(_2111.xy) & uint2(2147483648u, 2147483648u))) * 0.5f) + 0.5f.xx) * _1824) + _1831)) * TranslucentBasePass_TranslucentBasePass_InvProbeFinalRadianceAtlasResolution, 0.0f).xyz;
            uint3 _2166 = uint3(_1704 + int3(1, 0, 0));
            int4 _2172 = int4(uint4(_2166.x + _1712, _2166.yz, 0u));
            uint4 _2175 = TranslucentBasePass_RadianceProbeIndirectionTexture.Load(int4(_2172.xyz, _2172.w));
            uint _2176 = _2175.x;
            float3 _2183 = ((float3(_2166) * TranslucentBasePass_TranslucentBasePass_RadianceProbeSettings[_1403].z) + TranslucentBasePass_TranslucentBasePass_PaddedRadianceProbeCoordToWorldPositionBias[_1403].xyz) + TranslucentBasePass_ProbeWorldOffset[_2176].xyz;
            float3 _2189 = _1694 - float4(_2183, _1737).xyz;
            float _2191 = dot(_1298, _2189);
            float _2192 = 2.0f * _2191;
            float _2196 = mad(_2192, _2192, -(_1750 * mad(_1748, _1737, dot(_2189, _2189))));
            float2 _2208 = 0.0f.xx;
            [flatten]
            if (_2196 >= 0.0f)
            {
                _2208 = ((_2191 * (-2.0f)).xx + (float2(-1.0f, 1.0f) * sqrt(_2196))) / (2.0f * _1745).xx;
            }
            else
            {
                _2208 = (-1.0f).xx;
            }
            float3 _2212 = (_1694 + (_1298 * _2208.y)) - _2183;
            float3 _2217 = normalize(_2212);
            float3 _2218 = abs(_2217);
            float _2221 = sqrt(1.0f - _2218.z);
            float _2222 = _2218.x;
            float _2223 = _2218.y;
            float _2227 = min(_2222, _2223) / (max(_2222, _2223) + 5.4210108624275221700372640043497e-20f);
            float _2233 = mad(mad(mad(mad(mad(mad(-0.0251390971243381500244140625f, _2227, 0.0419038832187652587890625f), _2227, 0.08817707002162933349609375f), _2227, -0.2473337352275848388671875f), _2227, 0.006157201714813709259033203125f), _2227, 0.63622653484344482421875f), _2227, 4.0675854506844189018011093139648e-06f);
            float _2236 = (_2222 < _2223) ? (1.0f - _2233) : _2233;
            float2 _2240 = float2(mad(-_2236, _2221, _2221), _2236 * _2221);
            bool2 _2243 = (_2217.z < 0.0f).xx;
            float2 _2245 = 1.0f.xx - _2240.yx;
            bool3 _2265 = (_2176 == 4294967295u).xxx;
            float3 _2268 = TranslucentBasePass_RadianceCacheFinalRadianceAtlas.SampleLevel(View_SharedBilinearClampedSampler, (float2(_1812 * uint2(_2176 & TranslucentBasePass_TranslucentBasePass_ProbeAtlasResolutionModuloMask, _2176 >> _1818)) + ((((asfloat(asuint(float2(_2243.x ? _2245.x : _2240.x, _2243.y ? _2245.y : _2240.y)) ^ (asuint(_2217.xy) & uint2(2147483648u, 2147483648u))) * 0.5f) + 0.5f.xx) * _1824) + _1831)) * TranslucentBasePass_TranslucentBasePass_InvProbeFinalRadianceAtlasResolution, 0.0f).xyz;
            uint3 _2272 = uint3(_1704 + int3(1, 0, 1));
            int4 _2278 = int4(uint4(_2272.x + _1712, _2272.yz, 0u));
            uint4 _2281 = TranslucentBasePass_RadianceProbeIndirectionTexture.Load(int4(_2278.xyz, _2278.w));
            uint _2282 = _2281.x;
            float3 _2289 = ((float3(_2272) * TranslucentBasePass_TranslucentBasePass_RadianceProbeSettings[_1403].z) + TranslucentBasePass_TranslucentBasePass_PaddedRadianceProbeCoordToWorldPositionBias[_1403].xyz) + TranslucentBasePass_ProbeWorldOffset[_2282].xyz;
            float3 _2295 = _1694 - float4(_2289, _1737).xyz;
            float _2297 = dot(_1298, _2295);
            float _2298 = 2.0f * _2297;
            float _2302 = mad(_2298, _2298, -(_1750 * mad(_1748, _1737, dot(_2295, _2295))));
            float2 _2314 = 0.0f.xx;
            [flatten]
            if (_2302 >= 0.0f)
            {
                _2314 = ((_2297 * (-2.0f)).xx + (float2(-1.0f, 1.0f) * sqrt(_2302))) / (2.0f * _1745).xx;
            }
            else
            {
                _2314 = (-1.0f).xx;
            }
            float3 _2318 = (_1694 + (_1298 * _2314.y)) - _2289;
            float3 _2323 = normalize(_2318);
            float3 _2324 = abs(_2323);
            float _2327 = sqrt(1.0f - _2324.z);
            float _2328 = _2324.x;
            float _2329 = _2324.y;
            float _2333 = min(_2328, _2329) / (max(_2328, _2329) + 5.4210108624275221700372640043497e-20f);
            float _2339 = mad(mad(mad(mad(mad(mad(-0.0251390971243381500244140625f, _2333, 0.0419038832187652587890625f), _2333, 0.08817707002162933349609375f), _2333, -0.2473337352275848388671875f), _2333, 0.006157201714813709259033203125f), _2333, 0.63622653484344482421875f), _2333, 4.0675854506844189018011093139648e-06f);
            float _2342 = (_2328 < _2329) ? (1.0f - _2339) : _2339;
            float2 _2346 = float2(mad(-_2342, _2327, _2327), _2342 * _2327);
            bool2 _2349 = (_2323.z < 0.0f).xx;
            float2 _2351 = 1.0f.xx - _2346.yx;
            bool3 _2371 = (_2282 == 4294967295u).xxx;
            float3 _2374 = TranslucentBasePass_RadianceCacheFinalRadianceAtlas.SampleLevel(View_SharedBilinearClampedSampler, (float2(_1812 * uint2(_2282 & TranslucentBasePass_TranslucentBasePass_ProbeAtlasResolutionModuloMask, _2282 >> _1818)) + ((((asfloat(asuint(float2(_2349.x ? _2351.x : _2346.x, _2349.y ? _2351.y : _2346.y)) ^ (asuint(_2323.xy) & uint2(2147483648u, 2147483648u))) * 0.5f) + 0.5f.xx) * _1824) + _1831)) * TranslucentBasePass_TranslucentBasePass_InvProbeFinalRadianceAtlasResolution, 0.0f).xyz;
            uint3 _2378 = uint3(_1704 + int3(1, 1, 0));
            int4 _2384 = int4(uint4(_2378.x + _1712, _2378.yz, 0u));
            uint4 _2387 = TranslucentBasePass_RadianceProbeIndirectionTexture.Load(int4(_2384.xyz, _2384.w));
            uint _2388 = _2387.x;
            float3 _2395 = ((float3(_2378) * TranslucentBasePass_TranslucentBasePass_RadianceProbeSettings[_1403].z) + TranslucentBasePass_TranslucentBasePass_PaddedRadianceProbeCoordToWorldPositionBias[_1403].xyz) + TranslucentBasePass_ProbeWorldOffset[_2388].xyz;
            float3 _2401 = _1694 - float4(_2395, _1737).xyz;
            float _2403 = dot(_1298, _2401);
            float _2404 = 2.0f * _2403;
            float _2408 = mad(_2404, _2404, -(_1750 * mad(_1748, _1737, dot(_2401, _2401))));
            float2 _2420 = 0.0f.xx;
            [flatten]
            if (_2408 >= 0.0f)
            {
                _2420 = ((_2403 * (-2.0f)).xx + (float2(-1.0f, 1.0f) * sqrt(_2408))) / (2.0f * _1745).xx;
            }
            else
            {
                _2420 = (-1.0f).xx;
            }
            float3 _2424 = (_1694 + (_1298 * _2420.y)) - _2395;
            float3 _2429 = normalize(_2424);
            float3 _2430 = abs(_2429);
            float _2433 = sqrt(1.0f - _2430.z);
            float _2434 = _2430.x;
            float _2435 = _2430.y;
            float _2439 = min(_2434, _2435) / (max(_2434, _2435) + 5.4210108624275221700372640043497e-20f);
            float _2445 = mad(mad(mad(mad(mad(mad(-0.0251390971243381500244140625f, _2439, 0.0419038832187652587890625f), _2439, 0.08817707002162933349609375f), _2439, -0.2473337352275848388671875f), _2439, 0.006157201714813709259033203125f), _2439, 0.63622653484344482421875f), _2439, 4.0675854506844189018011093139648e-06f);
            float _2448 = (_2434 < _2435) ? (1.0f - _2445) : _2445;
            float2 _2452 = float2(mad(-_2448, _2433, _2433), _2448 * _2433);
            bool2 _2455 = (_2429.z < 0.0f).xx;
            float2 _2457 = 1.0f.xx - _2452.yx;
            bool3 _2477 = (_2388 == 4294967295u).xxx;
            float3 _2480 = TranslucentBasePass_RadianceCacheFinalRadianceAtlas.SampleLevel(View_SharedBilinearClampedSampler, (float2(_1812 * uint2(_2388 & TranslucentBasePass_TranslucentBasePass_ProbeAtlasResolutionModuloMask, _2388 >> _1818)) + ((((asfloat(asuint(float2(_2455.x ? _2457.x : _2452.x, _2455.y ? _2457.y : _2452.y)) ^ (asuint(_2429.xy) & uint2(2147483648u, 2147483648u))) * 0.5f) + 0.5f.xx) * _1824) + _1831)) * TranslucentBasePass_TranslucentBasePass_InvProbeFinalRadianceAtlasResolution, 0.0f).xyz;
            uint3 _2484 = uint3(_1704 + int3(1, 1, 1));
            int4 _2490 = int4(uint4(_2484.x + _1712, _2484.yz, 0u));
            uint4 _2493 = TranslucentBasePass_RadianceProbeIndirectionTexture.Load(int4(_2490.xyz, _2490.w));
            uint _2494 = _2493.x;
            float3 _2501 = ((float3(_2484) * TranslucentBasePass_TranslucentBasePass_RadianceProbeSettings[_1403].z) + TranslucentBasePass_TranslucentBasePass_PaddedRadianceProbeCoordToWorldPositionBias[_1403].xyz) + TranslucentBasePass_ProbeWorldOffset[_2494].xyz;
            float3 _2507 = _1694 - float4(_2501, _1737).xyz;
            float _2509 = dot(_1298, _2507);
            float _2510 = 2.0f * _2509;
            float _2514 = mad(_2510, _2510, -(_1750 * mad(_1748, _1737, dot(_2507, _2507))));
            float2 _2526 = 0.0f.xx;
            [flatten]
            if (_2514 >= 0.0f)
            {
                _2526 = ((_2509 * (-2.0f)).xx + (float2(-1.0f, 1.0f) * sqrt(_2514))) / (2.0f * _1745).xx;
            }
            else
            {
                _2526 = (-1.0f).xx;
            }
            float3 _2530 = (_1694 + (_1298 * _2526.y)) - _2501;
            float3 _2535 = normalize(_2530);
            float3 _2536 = abs(_2535);
            float _2539 = sqrt(1.0f - _2536.z);
            float _2540 = _2536.x;
            float _2541 = _2536.y;
            float _2545 = min(_2540, _2541) / (max(_2540, _2541) + 5.4210108624275221700372640043497e-20f);
            float _2551 = mad(mad(mad(mad(mad(mad(-0.0251390971243381500244140625f, _2545, 0.0419038832187652587890625f), _2545, 0.08817707002162933349609375f), _2545, -0.2473337352275848388671875f), _2545, 0.006157201714813709259033203125f), _2545, 0.63622653484344482421875f), _2545, 4.0675854506844189018011093139648e-06f);
            float _2554 = (_2540 < _2541) ? (1.0f - _2551) : _2551;
            float2 _2558 = float2(mad(-_2554, _2539, _2539), _2554 * _2539);
            bool2 _2561 = (_2535.z < 0.0f).xx;
            float2 _2563 = 1.0f.xx - _2558.yx;
            bool3 _2583 = (_2494 == 4294967295u).xxx;
            float3 _2586 = TranslucentBasePass_RadianceCacheFinalRadianceAtlas.SampleLevel(View_SharedBilinearClampedSampler, (float2(_1812 * uint2(_2494 & TranslucentBasePass_TranslucentBasePass_ProbeAtlasResolutionModuloMask, _2494 >> _1818)) + ((((asfloat(asuint(float2(_2561.x ? _2563.x : _2558.x, _2561.y ? _2563.y : _2558.y)) ^ (asuint(_2535.xy) & uint2(2147483648u, 2147483648u))) * 0.5f) + 0.5f.xx) * _1824) + _1831)) * TranslucentBasePass_TranslucentBasePass_InvProbeFinalRadianceAtlasResolution, 0.0f).xyz;
            float3 _2590 = _1705.z.xxx;
            float3 _2596 = _1705.y.xxx;
            _2602 = lerp(lerp(lerp(float3(_1839.x ? 0.0f.xxx.x : _1844.x, _1839.y ? 0.0f.xxx.y : _1844.y, _1839.z ? 0.0f.xxx.z : _1844.z) * ((_1765.y * _1765.y) / (_1737 * dot(_1769, _1298))), float3(_1947.x ? 0.0f.xxx.x : _1950.x, _1947.y ? 0.0f.xxx.y : _1950.y, _1947.z ? 0.0f.xxx.z : _1950.z) * ((_1890.y * _1890.y) / (_1737 * dot(_1894, _1298))), _2590), lerp(float3(_2053.x ? 0.0f.xxx.x : _2056.x, _2053.y ? 0.0f.xxx.y : _2056.y, _2053.z ? 0.0f.xxx.z : _2056.z) * ((_1996.y * _1996.y) / (_1737 * dot(_2000, _1298))), float3(_2159.x ? 0.0f.xxx.x : _2162.x, _2159.y ? 0.0f.xxx.y : _2162.y, _2159.z ? 0.0f.xxx.z : _2162.z) * ((_2102.y * _2102.y) / (_1737 * dot(_2106, _1298))), _2590), _2596), lerp(lerp(float3(_2265.x ? 0.0f.xxx.x : _2268.x, _2265.y ? 0.0f.xxx.y : _2268.y, _2265.z ? 0.0f.xxx.z : _2268.z) * ((_2208.y * _2208.y) / (_1737 * dot(_2212, _1298))), float3(_2371.x ? 0.0f.xxx.x : _2374.x, _2371.y ? 0.0f.xxx.y : _2374.y, _2371.z ? 0.0f.xxx.z : _2374.z) * ((_2314.y * _2314.y) / (_1737 * dot(_2318, _1298))), _2590), lerp(float3(_2477.x ? 0.0f.xxx.x : _2480.x, _2477.y ? 0.0f.xxx.y : _2480.y, _2477.z ? 0.0f.xxx.z : _2480.z) * ((_2420.y * _2420.y) / (_1737 * dot(_2424, _1298))), float3(_2583.x ? 0.0f.xxx.x : _2586.x, _2583.y ? 0.0f.xxx.y : _2586.y, _2583.z ? 0.0f.xxx.z : _2586.z) * ((_2526.y * _2526.y) / (_1737 * dot(_2530, _1298))), _2590), _2596), _1705.x.xxx);
        }
        else
        {
            uint _1414 = (TranslucentBasePass_TranslucentBasePass_Shared_Forward_NumGridCells + ((((min(uint(max(0.0f, log2(mad(_385, TranslucentBasePass_TranslucentBasePass_Shared_Forward_LightGridZParams.x, TranslucentBasePass_TranslucentBasePass_Shared_Forward_LightGridZParams.y)) * TranslucentBasePass_TranslucentBasePass_Shared_Forward_LightGridZParams.z)), uint(TranslucentBasePass_TranslucentBasePass_Shared_Forward_CulledGridSize.z - 1)) * uint(TranslucentBasePass_TranslucentBasePass_Shared_Forward_CulledGridSize.y)) + _1284.y) * uint(TranslucentBasePass_TranslucentBasePass_Shared_Forward_CulledGridSize.x)) + _1284.x)) * 2u;
            uint _1419 = min(TranslucentBasePass_Shared_Forward_NumCulledLightsGrid[_1414], TranslucentBasePass_TranslucentBasePass_Shared_Forward_NumReflectionCaptures);
            uint _1420 = _1414 + 1u;
            float _1427 = mad(-1.2000000476837158203125f, log2(max(_996, 0.001000000047497451305389404296875f)), 1.0f);
            float _1429 = (View_View_ReflectionCubemapMaxMip - 1.0f) - _1427;
            float2 _1431 = 0.0f.xx;
            float4 _1434 = 0.0f.xxxx;
            _1431 = float2(0.0f, 1.0f);
            _1434 = float4(0.0f, 0.0f, 0.0f, 1.0f);
            float2 _1432 = 0.0f.xx;
            float4 _1435 = 0.0f.xxxx;
            [loop]
            for (uint _1436 = 0u; _1436 < _1419; _1431 = _1432, _1434 = _1435, _1436++)
            {
                [branch]
                if (_1434.w < 0.001000000047497451305389404296875f)
                {
                    break;
                }
                uint4 _1447 = TranslucentBasePass_Shared_Forward_CulledLightDataGrid16Bit.Load(TranslucentBasePass_Shared_Forward_NumCulledLightsGrid[_1420] + _1436);
                uint _1448 = _1447.x;
                float3 _1458 = ((ReflectionCaptureSM5_ReflectionCaptureSM5_TilePosition[_1448].xyz + _419) * 2097152.0f) + (ReflectionCaptureSM5_ReflectionCaptureSM5_PositionAndRadius[_1448].xyz + View_View_RelativePreViewTranslation);
                float3 _1463 = _447 - _1458;
                float _1465 = sqrt(dot(_1463, _1463));
                [branch]
                if (_1465 < ReflectionCaptureSM5_ReflectionCaptureSM5_PositionAndRadius[_1448].w)
                {
                    float _1584 = 0.0f;
                    float3 _1585 = 0.0f.xxx;
                    [branch]
                    if (ReflectionCaptureSM5_ReflectionCaptureSM5_CaptureProperties[_1448].z > 0.0f)
                    {
                        float3 _1516 = float4(_1458, ReflectionCaptureSM5_ReflectionCaptureSM5_PositionAndRadius[_1448].w).xyz;
                        float3 _1517 = _447 - _1516;
                        float3 _1523 = mul(float4(_1517, 1.0f), ReflectionCaptureSM5_ReflectionCaptureSM5_BoxTransform[_1448]).xyz;
                        float3 _1529 = mul(float4(_1298, 0.0f), ReflectionCaptureSM5_ReflectionCaptureSM5_BoxTransform[_1448]).xyz;
                        float3 _1530 = 1.0f.xxx / _1529;
                        float3 _1532 = -_1523;
                        float3 _1535 = max(mad(_1532, _1530, (-1.0f).xxx / _1529), mad(_1532, _1530, _1530));
                        float3 _1549 = ReflectionCaptureSM5_ReflectionCaptureSM5_BoxScales[_1448].xyz - (0.5f * ReflectionCaptureSM5_ReflectionCaptureSM5_BoxScales[_1448].w).xxx;
                        float3 _1550 = -_1549;
                        float3 _1551 = _1523 * ReflectionCaptureSM5_ReflectionCaptureSM5_BoxScales[_1448].xyz;
                        bool3 _1552 = bool3(_1551.x < _1550.x, _1551.y < _1550.y, _1551.z < _1550.z);
                        float3 _1554 = abs(mad(_1523, ReflectionCaptureSM5_ReflectionCaptureSM5_BoxScales[_1448].xyz, _1549));
                        bool3 _1565 = bool3(_1551.x > _1549.x, _1551.y > _1549.y, _1551.z > _1549.z);
                        float3 _1567 = abs(mad(_1523, ReflectionCaptureSM5_ReflectionCaptureSM5_BoxScales[_1448].xyz, _1550));
                        _1584 = 1.0f - smoothstep(0.0f, 0.699999988079071044921875f * ReflectionCaptureSM5_ReflectionCaptureSM5_BoxScales[_1448].w, dot(float3(_1552.x ? _1554.x : 0.0f, _1552.y ? _1554.y : 0.0f, _1552.z ? _1554.z : 0.0f), 1.0f.xxx) + dot(float3(_1565.x ? _1567.x : 0.0f, _1565.y ? _1567.y : 0.0f, _1565.z ? _1567.z : 0.0f), 1.0f.xxx));
                        _1585 = (_447 + (_1298 * min(_1535.x, min(_1535.y, _1535.z)))) - (_1516 + ReflectionCaptureSM5_ReflectionCaptureSM5_CaptureOffsetAndAverageBrightness[_1448].xyz);
                    }
                    else
                    {
                        float3 _1484 = _447 - float4(_1458, ReflectionCaptureSM5_ReflectionCaptureSM5_PositionAndRadius[_1448].w).xyz;
                        float _1486 = dot(_1298, _1484);
                        float _1490 = mad(_1486, _1486, -mad(-ReflectionCaptureSM5_ReflectionCaptureSM5_PositionAndRadius[_1448].w, ReflectionCaptureSM5_ReflectionCaptureSM5_PositionAndRadius[_1448].w, dot(_1484, _1484)));
                        float _1505 = 0.0f;
                        float3 _1506 = 0.0f.xxx;
                        [flatten]
                        if (_1490 >= 0.0f)
                        {
                            float _1500 = clamp(mad(2.5f, clamp(_1465 / ReflectionCaptureSM5_ReflectionCaptureSM5_PositionAndRadius[_1448].w, 0.0f, 1.0f), -1.5f), 0.0f, 1.0f);
                            _1505 = mad(-(_1500 * _1500), mad(-2.0f, _1500, 3.0f), 1.0f);
                            _1506 = (_1484 + (_1298 * (sqrt(_1490) - _1486))) - ReflectionCaptureSM5_ReflectionCaptureSM5_CaptureOffsetAndAverageBrightness[_1448].xyz;
                        }
                        else
                        {
                            _1505 = 0.0f;
                            _1506 = _1298;
                        }
                        _1584 = _1505;
                        _1585 = _1506;
                    }
                    float4 _1594 = TranslucentBasePass_Shared_Reflection_ReflectionCubemap.SampleLevel(TranslucentBasePass_Shared_Reflection_ReflectionCubemapSampler, float4(_1585, ReflectionCaptureSM5_ReflectionCaptureSM5_CaptureProperties[_1448].y), _1429);
                    float3 _1597 = _1594.xyz * ReflectionCaptureSM5_ReflectionCaptureSM5_CaptureProperties[_1448].x;
                    float4 _1599 = float4(_1597.x, _1597.y, _1597.z, _1594.w) * _1584;
                    float3 _1604 = _1434.xyz + ((_1599.xyz * _1434.w) * 1.0f);
                    float4 _1605 = float4(_1604.x, _1604.y, _1604.z, _1434.w);
                    _1605.w = _1434.w * (1.0f - _1599.w);
                    float2 _1615 = 0.0f.xx;
                    _1615.x = mad(ReflectionCaptureSM5_ReflectionCaptureSM5_CaptureOffsetAndAverageBrightness[_1448].w * _1584, _1431.y, _1431.x);
                    _1615.y = _1431.y * (1.0f - _1584);
                    _1432 = _1615;
                    _1435 = _1605;
                }
                else
                {
                    _1432 = _1431;
                    _1435 = _1434;
                }
            }
            float3 _1622 = _1434.xyz * View_View_PrecomputedIndirectSpecularColorScale;
            float4 _1623 = float4(_1622.x, _1622.y, _1622.z, _1434.w);
            float _1626 = _1431.x * dot(View_View_PrecomputedIndirectSpecularColorScale, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f));
            float2 _1627 = 0.0f.xx;
            _1627.x = _1626;
            float4 _1669 = 0.0f.xxxx;
            float2 _1670 = 0.0f.xx;
            float3 _1671 = 0.0f.xxx;
            [branch]
            if ((TranslucentBasePass_TranslucentBasePass_Shared_Reflection_SkyLightParameters.y > 0.0f) && true)
            {
                float3 _1648 = TranslucentBasePass_Shared_Reflection_SkyLightCubemap.SampleLevel(TranslucentBasePass_Shared_Reflection_SkyLightCubemapSampler, _1298, (TranslucentBasePass_TranslucentBasePass_Shared_Reflection_SkyLightParameters.x - 1.0f) - _1427).xyz * View_View_SkyLightColor.xyz;
                float4 _1666 = 0.0f.xxxx;
                float2 _1667 = 0.0f.xx;
                float3 _1668 = 0.0f.xxx;
                [flatten]
                if ((TranslucentBasePass_TranslucentBasePass_Shared_Reflection_SkyLightParameters.z < 1.0f) && true)
                {
                    float3 _1661 = _1622.xyz + ((_1648 * _1434.w) * 1.0f);
                    float2 _1665 = 0.0f.xx;
                    _1665.x = mad(View_SkyIrradianceEnvironmentMap[7u].x * dot(View_View_SkyLightColor.xyz, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)), _1431.y, _1626);
                    _1666 = float4(_1661.x, _1661.y, _1661.z, _1434.w);
                    _1667 = _1665;
                    _1668 = 0.0f.xxx;
                }
                else
                {
                    _1666 = _1623;
                    _1667 = _1627;
                    _1668 = _1648 * 1.0f;
                }
                _1669 = _1666;
                _1670 = _1667;
                _1671 = _1668;
            }
            else
            {
                _1669 = _1623;
                _1670 = _1627;
                _1671 = 0.0f.xxx;
            }
            _2602 = ((_1669.xyz * lerp(1.0f, min(dot(_1244, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)) / max(_1670.x, 9.9999997473787516355514526367188e-05f), View_View_ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight.z), smoothstep(0.0f, 1.0f, clamp(mad(_996, View_View_ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight.x, View_View_ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight.y), 0.0f, 1.0f)))).xyz + (_1671 * _1669.w)).xyz;
        }
        _2620 = _2602;
    }
    float3 _2927 = 0.0f.xxx;
    if (((View_View_CameraCut == 0.0f) && (TranslucentBasePass_TranslucentBasePass_SSRQuality > 0)) && _1337)
    {
        float _2645 = min(_450, 1000000.0f);
        float4 _2650 = mul(float4(_1298, 0.0f), View_View_TranslatedWorldToView);
        float _2651 = _2650.z;
        float _2656 = (_2651 < 0.0f) ? min(((-0.949999988079071044921875f) * _450) / _2651, _2645) : _2645;
        float4 _2665 = mul(float4(_447, 1.0f), View_View_TranslatedWorldToClip);
        float4 _2670 = mul(float4(_447 + (_1298 * _2656), 1.0f), View_View_TranslatedWorldToClip);
        float3 _2674 = _2665.xyz * (1.0f / _2665.w);
        float4 _2681 = _2665 + mul(float4(0.0f, 0.0f, _2656, 0.0f), View_View_ViewToClip);
        float3 _2685 = _2681.xyz * (1.0f / _2681.w);
        float3 _2686 = (_2670.xyz * (1.0f / _2670.w)) - _2674;
        float2 _2687 = _2674.xy;
        float _2690 = 0.5f * length(_2686.xy);
        float2 _2699 = 1.0f.xx - (max(abs(_2686.xy + (_2687 * _2690)) - _2690.xx, 0.0f.xx) / abs(_2686.xy));
        float3 _2704 = _2686 * (min(_2699.x, _2699.y) / _2690);
        float _2722 = 0.0f;
        if (asuint(View_View_ViewToClip[3].w) != 0u)
        {
            _2722 = max(0.0f, (_2674.z - _2685.z) * 4.0f);
        }
        else
        {
            _2722 = max(abs(_2704.z), (_2674.z - _2685.z) * 4.0f);
        }
        float _2737 = _2722 * 0.083333335816860198974609375f;
        float3 _2738 = float3((_2704.xy * float2(0.5f, -0.5f)) * TranslucentBasePass_TranslucentBasePass_HZBUvFactorAndInvFactor.xy, _2704.z) * 0.083333335816860198974609375f;
        float3 _2740 = float3(mad(_2687, float2(0.5f, -0.5f), 0.5f.xx) * TranslucentBasePass_TranslucentBasePass_HZBUvFactorAndInvFactor.xy, _2674.z) + (_2738 * (frac(52.98291778564453125f * frac(dot(gl_FragCoord.xy + (float2(32.66500091552734375f, 11.81499958038330078125f) * float(View_View_StateFrameIndexMod8)), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))) - 0.5f));
        bool4 _2742 = bool4(false, false, false, false);
        float4 _2745 = 0.0f.xxxx;
        uint _2751 = 0u;
        float _2753 = 0.0f;
        _2742 = _335;
        _2745 = _334;
        _2751 = 0u;
        _2753 = 0.0f;
        bool4 _2743 = bool4(false, false, false, false);
        float4 _2746 = 0.0f.xxxx;
        bool _2748 = false;
        float _2750 = 0.0f;
        float _2754 = 0.0f;
        bool4 _2813 = bool4(false, false, false, false);
        float4 _2814 = 0.0f.xxxx;
        bool _2815 = false;
        bool _2747 = false;
        float _2749 = 1.0f;
        [loop]
        for (;;)
        {
            if (_2751 < 12u)
            {
                float2 _2758 = _2740.xy;
                float2 _2759 = _2738.xy;
                float _2760 = float(_2751);
                float _2761 = _2760 + 1.0f;
                float _2764 = _2740.z;
                float _2765 = _2738.z;
                float4 _2767 = 0.0f.xxxx;
                _2767.x = mad(_2761, _2765, _2764);
                float _2768 = _2760 + 2.0f;
                _2767.y = mad(_2768, _2765, _2764);
                float _2773 = _2760 + 3.0f;
                _2767.z = mad(_2773, _2765, _2764);
                float _2778 = _2760 + 4.0f;
                _2767.w = mad(_2778, _2765, _2764);
                float _2783 = mad(0.666666686534881591796875f, _996, _2749);
                _2750 = mad(0.666666686534881591796875f, _996, _2783);
                float4 _2787 = 0.0f.xxxx;
                _2787.x = TranslucentBasePass_HZBTexture.SampleLevel(TranslucentBasePass_HZBSampler, _2758 + (_2759 * _2761), _2749).x;
                _2787.y = TranslucentBasePass_HZBTexture.SampleLevel(TranslucentBasePass_HZBSampler, _2758 + (_2759 * _2768), _2749).x;
                _2787.z = TranslucentBasePass_HZBTexture.SampleLevel(TranslucentBasePass_HZBSampler, _2758 + (_2759 * _2773), _2783).x;
                _2787.w = TranslucentBasePass_HZBTexture.SampleLevel(TranslucentBasePass_HZBSampler, _2758 + (_2759 * _2778), _2783).x;
                _2746 = _2767 - _2787;
                float4 _2800 = _2737.xxxx;
                float4 _2802 = abs(_2746 + _2800);
                _2743 = bool4(_2802.x < _2800.x, _2802.y < _2800.y, _2802.z < _2800.z, _2802.w < _2800.w);
                _2748 = (((_2747 || _2743.x) || _2743.y) || _2743.z) || _2743.w;
                [branch]
                if (_2748 || false)
                {
                    _2813 = _2743;
                    _2814 = _2746;
                    _2815 = _2748;
                    break;
                }
                _2754 = _2746.w;
                _2742 = _2743;
                _2745 = _2746;
                _2747 = _2748;
                _2749 = _2750;
                _2751 += 4u;
                _2753 = _2754;
                continue;
            }
            else
            {
                _2813 = _2742;
                _2814 = _2745;
                _2815 = _2747;
                break;
            }
        }
        float3 _2854 = 0.0f.xxx;
        [branch]
        if (_2815)
        {
            float _2828 = 0.0f;
            [flatten]
            if (_2813.z)
            {
                _2828 = _2814.y;
            }
            else
            {
                _2828 = _2814.z;
            }
            float _2836 = 0.0f;
            float _2837 = 0.0f;
            [flatten]
            if (_2813.y)
            {
                _2836 = _2814.y;
                _2837 = _2814.x;
            }
            else
            {
                _2836 = _2813.z ? _2814.z : _2814.w;
                _2837 = _2828;
            }
            float _2843 = 0.0f;
            [flatten]
            if (_2813.x)
            {
                _2843 = _2814.x;
            }
            else
            {
                _2843 = _2836;
            }
            float _2844 = _2813.x ? _2753 : _2837;
            _2854 = _2740 + (_2738 * (((_2813.x ? 0.0f : (_2813.y ? 1.0f : (_2813.z ? 2.0f : 3.0f))) + float(_2751)) + clamp(_2844 / (_2844 - _2843), 0.0f, 1.0f)));
        }
        else
        {
            _2854 = _2740 + (_2738 * float(_2751));
        }
        float3 _2926 = 0.0f.xxx;
        [branch]
        if (_2815)
        {
            float2 _2868 = (mad(mad((_2854.xy * TranslucentBasePass_TranslucentBasePass_HZBUvFactorAndInvFactor.zw).xy, float2(2.0f, -2.0f), float2(-1.0f, 1.0f)).xy, View_View_ScreenPositionScaleBias.xy, View_View_ScreenPositionScaleBias.wz).xy - View_View_ScreenPositionScaleBias.wz) / View_View_ScreenPositionScaleBias.xy;
            float4 _2875 = mul(float4(_2868, _2854.z, 1.0f), View_View_ClipToPrevClip);
            float2 _2879 = _2875.xy / _2875.w.xx;
            float2 _2886 = clamp((abs(_2868) * 5.0f) - 4.0f.xx, 0.0f.xx, 1.0f.xx);
            float2 _2893 = clamp((abs(_2879) * 5.0f) - 4.0f.xx, 0.0f.xx, 1.0f.xx);
            float3 _2910 = -min(-TranslucentBasePass_PrevSceneColor.SampleLevel(TranslucentBasePass_PrevSceneColorSampler, clamp(mad(_2879, TranslucentBasePass_TranslucentBasePass_PrevScreenPositionScaleBias.xy, TranslucentBasePass_TranslucentBasePass_PrevScreenPositionScaleBias.zw), TranslucentBasePass_TranslucentBasePass_PrevSceneColorBilinearUVMin, TranslucentBasePass_TranslucentBasePass_PrevSceneColorBilinearUVMax), 0.0f).xyz, 0.0f.xxx);
            float4 _2911 = float4(_2910.x, _2910.y, _2910.z, _334.w);
            _2911.w = 1.0f;
            float4 _2916 = _2911 * (min(clamp(1.0f - dot(_2886, _2886), 0.0f, 1.0f), clamp(1.0f - dot(_2893, _2893), 0.0f, 1.0f)) * clamp(mad(-6.599999904632568359375f, _996, 2.0f), 0.0f, 1.0f));
            _2926 = (_2620 * (1.0f - _2916.w)) + (_2916.xyz * TranslucentBasePass_TranslucentBasePass_PrevSceneColorPreExposureInv).xyz;
        }
        else
        {
            _2926 = _2620;
        }
        _2927 = _2926;
    }
    else
    {
        _2927 = _2620;
    }
    float3 _3052 = 0.0f.xxx;
    [branch]
    if (abs(dot(TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_ReflectionPlane.xyz, 1.0f.xxx)) > 9.9999997473787516355514526367188e-05f)
    {
        float3 _2953 = _447 - TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionOrigin.xyz;
        float _2986 = 1.0f - clamp((_996 - 0.20000000298023223876953125f) * 10.0f, 0.0f, 1.0f);
        float _2988 = (((1.0f - clamp(mad(abs(dot(TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_ReflectionPlane, float4(_447, -1.0f))), TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionParameters.x, TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionParameters.y), 0.0f, 1.0f)) * (clamp((TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionXAxis.w - abs(dot(_2953, TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionXAxis.xyz))) * TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionParameters.x, 0.0f, 1.0f) * clamp((TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionYAxis.w - abs(dot(_2953, TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionYAxis.xyz))) * TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionParameters.x, 0.0f, 1.0f))) * clamp(mad(dot(TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_ReflectionPlane.xyz, _526), TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionParameters2.x, TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionParameters2.y), 0.0f, 1.0f)) * _2986;
        float4 _3046 = 0.0f.xxxx;
        [branch]
        if (_2988 > 0.0f)
        {
            float4 _3016 = mul(float4(mul(float4(_447 + (reflect(reflect(normalize(_447 - View_View_TranslatedWorldCameraOrigin), -TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_ReflectionPlane.xyz), mul(_526, TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_InverseTransposeMirrorMatrix).xyz) * TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionParameters.z), 1.0f), View_View_TranslatedWorldToView).xyz, 1.0f), TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_ProjectionWithExtraFOV[View_View_StereoPassIndex]);
            uint _3023 = 0u;
            if (TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_bIsStereo != 0u)
            {
                _3023 = uint(View_View_StereoPassIndex);
            }
            else
            {
                _3023 = 0u;
            }
            float4 _3039 = TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionTexture.SampleLevel(TranslucentBasePass_Shared_Reflection_ReflectionCubemapSampler, mad(clamp(_3016.xy / _3016.w.xx, -TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionScreenBound, TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionScreenBound), TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionScreenScaleBias[_3023].xy, TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionScreenScaleBias[_3023].zw), 0.0f);
            float3 _3043 = _3039.xyz * _2986;
            float4 _3044 = float4(_3043.x, _3043.y, _3043.z, 0.0f.xxxx.w);
            _3044.w = _2988 * _3039.w;
            _3046 = _3044;
        }
        else
        {
            _3046 = 0.0f.xxxx;
        }
        _3052 = _3046.xyz + (_2927 * (1.0f - _3046.w));
    }
    else
    {
        _3052 = _2927;
    }
    float4 _3054 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _996) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
    float _3055 = _3054.x;
    float2 _3064 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * mad(min(_3055 * _3055, exp2((-9.27999973297119140625f) * clamp(dot(_526, _464), 0.0f, 1.0f))), _3055, _3054.y)) + _3054.zw;
    bool _3091 = TranslucentBasePass_TranslucentBasePass_Shared_Fog_ApplyVolumetricFog > 0.0f;
    float4 _3174 = 0.0f.xxxx;
    if (_3091)
    {
        float4 _3109 = mul(((float4(View_View_ViewTilePosition, 0.0f) + float4(_418, 0.0f)) * 2097152.0f) + float4(_448, 1.0f), View_View_RelativeWorldToClip);
        float _3110 = _3109.w;
        float4 _3156 = 0.0f.xxxx;
        float _3157 = 0.0f;
        if (_3091)
        {
            float4 _3150 = TranslucentBasePass_Shared_Fog_IntegratedLightScattering.SampleLevel(View_SharedBilinearClampedSampler, min(float3(mad((_3109.xy / _3110.xx).xy, float2(0.5f, -0.5f), 0.5f.xx), (log2(mad(_3110, View_View_VolumetricFogGridZParams.x, View_View_VolumetricFogGridZParams.y)) * View_View_VolumetricFogGridZParams.z) * View_View_VolumetricFogInvGridSize.z) * float3(View_View_VolumetricFogScreenToResourceUV, 1.0f), float3(View_View_VolumetricFogUVMax, 1.0f)), 0.0f);
            float3 _3154 = _3150.xyz * View_View_OneOverPreExposure;
            _3156 = float4(_3154.x, _3154.y, _3154.z, _3150.w);
            _3157 = TranslucentBasePass_TranslucentBasePass_Shared_Fog_VolumetricFogStartDistance;
        }
        else
        {
            _3156 = float4(0.0f, 0.0f, 0.0f, 1.0f);
            _3157 = 0.0f;
        }
        float4 _3162 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _3156, clamp((_450 - _3157) * 100000000.0f, 0.0f, 1.0f).xxxx);
        float _3165 = _3162.w;
        _3174 = float4(_3162.xyz + (in_var_TEXCOORD7.xyz * _3165), _3165 * in_var_TEXCOORD7.w);
    }
    else
    {
        _3174 = in_var_TEXCOORD7;
    }
    float3 _3178 = _447 - View_View_TranslucencyLightingVolumeMin[0].xyz;
    float3 _3182 = _3178 * View_View_TranslucencyLightingVolumeInvSize[0].xyz;
    float3 _3190 = (_447 - View_View_TranslucencyLightingVolumeMin[1].xyz) * View_View_TranslucencyLightingVolumeInvSize[1].xyz;
    float3 _3195 = clamp((0.5f.xxx - abs(mad(_3178, View_View_TranslucencyLightingVolumeInvSize[0].xyz, (-0.5f).xxx))) * 6.0f, 0.0f.xxx, 1.0f.xxx);
    float _3200 = (_3195.x * _3195.y) * _3195.z;
    float4 _3209 = lerp(TranslucentBasePass_TranslucencyLightingVolumeAmbientOuter.SampleLevel(View_SharedBilinearClampedSampler, _3190, 0.0f), TranslucentBasePass_TranslucencyLightingVolumeAmbientInner.SampleLevel(View_SharedBilinearClampedSampler, _3182, 0.0f), _3200.xxxx);
    float3 _3220 = lerp(TranslucentBasePass_TranslucencyLightingVolumeDirectionalOuter.SampleLevel(View_SharedBilinearClampedSampler, _3190, 0.0f).xyz, TranslucentBasePass_TranslucencyLightingVolumeDirectionalInner.SampleLevel(View_SharedBilinearClampedSampler, _3182, 0.0f).xyz, _3200.xxx) * 1.0f;
    float4 _3222 = 0.0f.xxxx;
    _3222.x = _3209.x;
    float4 _3224 = 0.0f.xxxx;
    _3224.x = _3209.y;
    float4 _3226 = 0.0f.xxxx;
    _3226.x = _3209.z;
    float3 _3227 = _3209.xyz;
    float3 _3231 = _3227 / (dot(_3227, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)) + 9.9999997473787516355514526367188e-06f).xxx;
    float3 _3233 = _3220 * _3231.x;
    float3 _3236 = _3220 * _3231.y;
    float3 _3239 = _3220 * _3231.z;
    float4 _3242 = 0.0f.xxxx;
    _3242.y = (-0.48860299587249755859375f) * _1067;
    _3242.z = 0.48860299587249755859375f * _1068;
    _3242.w = (-0.48860299587249755859375f) * _1069;
    _3242.x = 0.886227548122406005859375f;
    float3 _3249 = _3242.yzw * 2.094395160675048828125f;
    float4 _3250 = float4(_3242.x, _3249.x, _3249.y, _3249.z);
    float3 _3252 = 0.0f.xxx;
    _3252.x = dot(float4(_3222.x, _3233.x, _3233.y, _3233.z), _3250);
    _3252.y = dot(float4(_3224.x, _3236.x, _3236.y, _3236.z), _3250);
    _3252.z = dot(float4(_3226.x, _3239.x, _3239.y, _3239.z), _3250);
    float3 _3270 = max(lerp(0.0f.xxx, Material_Material_PreshaderBuffer[2].yzw, Material_Material_PreshaderBuffer[2].x.xxx), 0.0f.xxx);
    float _3356 = 0.0f;
    float3 _3357 = 0.0f.xxx;
    [branch]
    if (View_View_OutOfBoundsMask > 0.0f)
    {
        uint _3276 = in_var_PRIMITIVE_ID * 41u;
        uint _3297 = _3276 + 31u;
        float3 _3306 = abs(((View_View_ViewTilePosition - Scene_GPUScene_GPUScenePrimitiveSceneData[_3276 + 1u].xyz) * 2097152.0f) + (_448 - Scene_GPUScene_GPUScenePrimitiveSceneData[_3276 + 18u].xyz));
        float3 _3307 = float3(Scene_GPUScene_GPUScenePrimitiveSceneData[_3276 + 17u].w, Scene_GPUScene_GPUScenePrimitiveSceneData[_3276 + 24u].w, Scene_GPUScene_GPUScenePrimitiveSceneData[_3276 + 25u].w) + 1.0f.xxx;
        float _3354 = 0.0f;
        float3 _3355 = 0.0f.xxx;
        if (any(bool3(_3306.x > _3307.x, _3306.y > _3307.y, _3306.z > _3307.z)))
        {
            float3 _3334 = View_View_ViewTilePosition * 0.57700002193450927734375f.xxx;
            float3 _3335 = _448 * 0.57700002193450927734375f.xxx;
            float3 _3350 = frac(mad((_3335.x + _3335.y) + _3335.z, 0.00200000009499490261077880859375f, frac(((_3334.x + _3334.y) + _3334.z) * 4194.30419921875f))).xxx;
            _3354 = 1.0f;
            _3355 = lerp(float3(1.0f, 1.0f, 0.0f), float3(0.0f, 1.0f, 1.0f), float3(bool3(_3350.x > 0.5f.xxx.x, _3350.y > 0.5f.xxx.y, _3350.z > 0.5f.xxx.z)));
        }
        else
        {
            float _3332 = 0.0f;
            float3 _3333 = 0.0f.xxx;
            if (Scene_GPUScene_GPUScenePrimitiveSceneData[_3297].x > 0.0f)
            {
                float3 _3317 = abs(_447 - in_var_TEXCOORD9);
                float _3327 = 1.0f - clamp(abs(max(_3317.x, max(_3317.y, _3317.z)) - Scene_GPUScene_GPUScenePrimitiveSceneData[_3297].x) * 20.0f, 0.0f, 1.0f);
                _3332 = float(int(sign(_3327)));
                _3333 = float3(1.0f, 0.0f, 1.0f) * _3327;
            }
            else
            {
                _3332 = _997;
                _3333 = _3270;
            }
            _3354 = _3332;
            _3355 = _3333;
        }
        _3356 = _3354;
        _3357 = _3355;
    }
    else
    {
        _3356 = _997;
        _3357 = _3270;
    }
    float4 _3367 = float4(((mad(_1244 * _1025, max(1.0f.xxx, ((((((_990 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * 1.0f) + ((_990 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * 1.0f) + ((_990 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * 1.0f), lerp(mad(_1025, float4(max(0.0f.xxx, _3252), _331).xyz, ((_3052 * ((_1027 * _3064.x) + (clamp(50.0f * _1027.y, 0.0f, 1.0f) * _3064.y).xxx)) * 1.0f) * max(1.0f.xxx, ((((((_1027 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * 1.0f) + ((_1027 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * 1.0f) + ((_1027 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * 1.0f)), _1025 + (_1027 * 0.449999988079071044921875f), View_View_UnlitViewmodeMask.xxx)) + _3357) * _3174.w) + _3174.xyz, _3356);
    float3 _3373 = min((_3367.xyz * View_View_PreExposure).xyz, 32256.0f.xxx);
    out_var_SV_Target0 = float4(_3373.x, _3373.y, _3373.z, _3367.w);
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
    gl_FragCoord = stage_input.gl_FragCoord;
    gl_FragCoord.w = 1.0 / gl_FragCoord.w;
    in_var_TEXCOORD10_centroid = stage_input.in_var_TEXCOORD10_centroid;
    in_var_TEXCOORD11_centroid = stage_input.in_var_TEXCOORD11_centroid;
    in_var_COLOR0 = stage_input.in_var_COLOR0;
    in_var_TEXCOORD0 = stage_input.in_var_TEXCOORD0;
    in_var_TEXCOORD4 = stage_input.in_var_TEXCOORD4;
    in_var_PRIMITIVE_ID = stage_input.in_var_PRIMITIVE_ID;
    in_var_LIGHTMAP_ID = stage_input.in_var_LIGHTMAP_ID;
    in_var_TEXCOORD7 = stage_input.in_var_TEXCOORD7;
    in_var_TEXCOORD9 = stage_input.in_var_TEXCOORD9;
    frag_main();
    SPIRV_Cross_Output stage_output;
    stage_output.out_var_SV_Target0 = out_var_SV_Target0;
    return stage_output;
}
