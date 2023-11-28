#pragma warning(disable : 3571) // pow() intrinsic suggested to be used with abs()
static uint _304 = 0u;
static float _330 = 0.0f;
static uint3 _331 = uint3(0u, 0u, 0u);
static float3 _332 = 0.0f.xxx;
static float4 _333 = 0.0f.xxxx;
static bool4 _334 = bool4(false, false, false, false);
static float4 _342 = 0.0f.xxxx;
static float2 _343 = 0.0f.xx;
static float3 _344 = 0.0f.xxx;

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
    float _383 = 1.0f / gl_FragCoord.w;
    float3 _416 = -View_View_MatrixTilePosition;
    float3 _417 = -View_View_ViewTilePosition;
    float2 _429 = gl_FragCoord.xy - View_View_ViewRectMin.xy;
    float4 _437 = float4(mad(_429, View_View_ViewSizeAndInvSize.zw, (-0.5f).xx) * float2(2.0f, -2.0f), gl_FragCoord.z, 1.0f) * _383;
    float4 _441 = mul(float4(gl_FragCoord.xyz, 1.0f), View_View_SVPositionToTranslatedWorld);
    float3 _445 = _441.xyz / _441.w.xxx;
    float3 _446 = _445 - View_View_RelativePreViewTranslation;
    float _448 = _437.w;
    float2 _453 = mad(_437.xy / _448.xx, View_View_ScreenPositionScaleBias.xy, View_View_ScreenPositionScaleBias.wz);
    float3 _462 = 0.0f.xxx;
    if (View_View_ViewToClip[3].w >= 1.0f)
    {
        _462 = -View_View_ViewForward;
    }
    else
    {
        _462 = normalize(-_445);
    }
    float2 _492 = (mad(Material_Texture2D_0.SampleBias(Material_Texture2D_0Sampler, mad(float2(in_var_TEXCOORD0[0].x, in_var_TEXCOORD0[0].y), Material_Material_PreshaderBuffer[1].yz, float2(View_View_GameTime * (-0.100000001490116119384765625f), View_View_GameTime * 0.00999999977648258209228515625f)), View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx) + mad(Material_Texture2D_0.SampleBias(Material_Texture2D_0Sampler, mad(float2(in_var_TEXCOORD0[0].x, in_var_TEXCOORD0[0].y), Material_Material_PreshaderBuffer[1].yz, float2(View_View_GameTime * 0.02999999932944774627685546875f, View_View_GameTime * (-0.07500000298023223876953125f))), View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx)) * Material_Material_PreshaderBuffer[1].w.xx;
    float3 _499 = float3(_492, sqrt(clamp(1.0f - dot(_492, _492), 0.0f, 1.0f)));
    float _500 = dot(_499, _499);
    float3 _501 = normalize(_499);
    bool _504 = abs(_500 - 9.9999999747524270787835121154785e-07f) > 9.9999997473787516355514526367188e-06f;
    bool _505 = _500 >= 9.9999999747524270787835121154785e-07f;
    float3 _524 = normalize(mul(normalize((float4(_504 ? (_505 ? _501.x : 0.0f) : 0.0f, _504 ? (_505 ? _501.y : 0.0f) : 0.0f, _504 ? (_505 ? _501.z : 1.0f) : 1.0f, _330).xyz * View_View_NormalOverrideParameter.w) + View_View_NormalOverrideParameter.xyz), float3x3(in_var_TEXCOORD10_centroid.xyz, cross(in_var_TEXCOORD11_centroid.xyz, in_var_TEXCOORD10_centroid.xyz) * in_var_TEXCOORD11_centroid.w, in_var_TEXCOORD11_centroid.xyz))) * 1.0f;
    float _535 = in_var_COLOR0.x - Material_Material_PreshaderBuffer[5].x;
    float3 _570 = normalize(1.0f.xxx);
    float _571 = _570.x;
    float3 _575 = float4(_571, _570.yz, 0.87964594364166259765625f).xyz;
    float3 _577 = _575 * dot(_575, Material_Material_PreshaderBuffer[7].xyz);
    float3 _578 = Material_Material_PreshaderBuffer[7].xyz - _577;
    float3 _583 = _577 + ((_578 * 0.637423992156982421875f) + (cross(_575, _578) * 0.770513236522674560546875f));
    float3 _585 = float4(_571, _570.yz, 0.31415927410125732421875f).xyz;
    float3 _587 = _585 * dot(_585, Material_Material_PreshaderBuffer[6].xyz);
    float3 _588 = Material_Material_PreshaderBuffer[6].xyz - _587;
    float _597 = in_var_COLOR0.y - Material_Material_PreshaderBuffer[10].x;
    float3 _611 = float4(_571, _570.yz, 0.6283185482025146484375f).xyz;
    float3 _613 = _611 * dot(_611, Material_Material_PreshaderBuffer[9].yzw);
    float3 _614 = Material_Material_PreshaderBuffer[9].yzw - _613;
    float2 _636 = float2(in_var_TEXCOORD0[0].x, in_var_TEXCOORD0[0].y) * Material_Material_PreshaderBuffer[11].zw;
    float _647 = in_var_COLOR0.z - Material_Material_PreshaderBuffer[12].x;
    float4 _676 = Material_Texture2D_2.SampleBias(Material_Texture2D_2Sampler, _636, View_View_MaterialTextureMipBias);
    float3 _679 = lerp(lerp(mad(lerp(Material_Material_PreshaderBuffer[7].xyz, Material_Material_PreshaderBuffer[6].xyz, (_535 * Material_Material_PreshaderBuffer[5].z).xxx), ((abs(Material_Material_PreshaderBuffer[5].x - in_var_COLOR0.x) > 9.9999997473787516355514526367188e-06f) ? ((Material_Material_PreshaderBuffer[5].x >= in_var_COLOR0.x) ? 0.0f : 1.0f) : 0.0f).xxx, lerp(Material_Material_PreshaderBuffer[9].yzw, Material_Material_PreshaderBuffer[7].xyz, (in_var_COLOR0.x * Material_Material_PreshaderBuffer[9].x).xxx) * ((abs(_535) > 9.9999997473787516355514526367188e-06f) ? ((in_var_COLOR0.x >= Material_Material_PreshaderBuffer[5].x) ? 0.0f : 1.0f) : 0.0f).xxx), mad(lerp(_583, _587 + ((_588 * 0.951056540012359619140625f) + (cross(_585, _588) * 0.309017002582550048828125f)), (_597 * Material_Material_PreshaderBuffer[10].z).xxx), ((abs(Material_Material_PreshaderBuffer[10].x - in_var_COLOR0.y) > 9.9999997473787516355514526367188e-06f) ? ((Material_Material_PreshaderBuffer[10].x >= in_var_COLOR0.y) ? 0.0f : 1.0f) : 0.0f).xxx, lerp(_613 + ((_614 * 0.809017002582550048828125f) + (cross(_611, _614) * 0.587785243988037109375f)), _583, (in_var_COLOR0.y * Material_Material_PreshaderBuffer[10].w).xxx) * ((abs(_597) > 9.9999997473787516355514526367188e-06f) ? ((in_var_COLOR0.y >= Material_Material_PreshaderBuffer[10].x) ? 0.0f : 1.0f) : 0.0f).xxx), Material_Texture2D_1.SampleBias(Material_Texture2D_1Sampler, _636, View_View_MaterialTextureMipBias).x.xxx), mad(lerp(Material_Material_PreshaderBuffer[6].xyz, Material_Material_PreshaderBuffer[7].xyz, (_647 * Material_Material_PreshaderBuffer[12].z).xxx), ((abs(Material_Material_PreshaderBuffer[12].x - in_var_COLOR0.z) > 9.9999997473787516355514526367188e-06f) ? ((Material_Material_PreshaderBuffer[12].x >= in_var_COLOR0.z) ? 0.0f : 1.0f) : 0.0f).xxx, lerp(Material_Material_PreshaderBuffer[9].yzw, Material_Material_PreshaderBuffer[6].xyz, (in_var_COLOR0.z * Material_Material_PreshaderBuffer[12].w).xxx) * ((abs(_647) > 9.9999997473787516355514526367188e-06f) ? ((in_var_COLOR0.z >= Material_Material_PreshaderBuffer[12].x) ? 0.0f : 1.0f) : 0.0f).xxx), _676.x.xxx);
    float _681 = _679.x * 6.283185482025146484375f;
    float3 _685 = Material_Material_PreshaderBuffer[13].x.xxx;
    float3 _686 = float4(_571, _570.yz, _681).xyz;
    float3 _688 = _686 * dot(_686, _685);
    float3 _689 = _685 - _688;
    float4 _748 = Material_Texture2D_5.SampleBias(Material_Texture2D_5Sampler, mad((((-0.5f).xx + Material_Texture2D_3.SampleBias(Material_Texture2D_3Sampler, float2(View_View_GameTime * Material_Material_PreshaderBuffer[14].z, View_View_GameTime * Material_Material_PreshaderBuffer[14].w) + (mad(float2(in_var_TEXCOORD0[0].x, in_var_TEXCOORD0[0].y), Material_Material_PreshaderBuffer[16].xy, 0.5f.xx) - Material_Material_PreshaderBuffer[16].zw), View_View_MaterialTextureMipBias).xy) * 2.0f.xx) * Material_Material_PreshaderBuffer[17].x.xx, lerp(1.0f, clamp(Material_Texture2D_4.SampleBias(Material_Texture2D_4Sampler, float2(in_var_TEXCOORD0[0].x, in_var_TEXCOORD0[0].y) * Material_Material_PreshaderBuffer[17].y.xx, View_View_MaterialTextureMipBias).x * Material_Material_PreshaderBuffer[17].z, 0.0f, 1.0f), Material_Material_PreshaderBuffer[17].w).xx, float2(in_var_TEXCOORD0[0].x, in_var_TEXCOORD0[0].y) * Material_Material_PreshaderBuffer[18].zw), View_View_MaterialTextureMipBias);
    float _749 = _748.x;
    float _789 = 0.0f;
    do
    {
        [flatten]
        if (View_View_ViewToClip[3u].w < 1.0f)
        {
            _789 = _448;
            break;
        }
        else
        {
            float _775 = _437.z;
            _789 = mad(_775, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_775, View_View_InvDeviceZToWorldZTransform.z, -View_View_InvDeviceZToWorldZTransform.w));
            break;
        }
        break; // unreachable workaround
    } while(false);
    float4 _793 = TranslucentBasePass_SceneTextures_SceneDepthTexture.SampleLevel(TranslucentBasePass_SceneTextures_PointClampSampler, _453, 0.0f);
    float _794 = _793.x;
    float3 _813 = ((View_View_ViewTilePosition + _417) * 2097152.0f) + _445;
    uint3 _815 = uint3(0u, 0u, 0u);
    _815 = _331;
    float _821 = 0.0f;
    uint3 _816 = uint3(0u, 0u, 0u);
    float _912 = 0.0f;
    uint _818 = 0u;
    float _820 = 0.0f;
    for (;;)
    {
        if (_818 < View_View_NumGlobalSDFClipmaps)
        {
            float3 _837 = min(max((_813 - View_View_GlobalVolumeTranslatedCenterAndExtent[_818].xyz) + View_View_GlobalVolumeTranslatedCenterAndExtent[_818].www, 0.0f.xxx), max((View_View_GlobalVolumeTranslatedCenterAndExtent[_818].xyz + View_View_GlobalVolumeTranslatedCenterAndExtent[_818].www) - _813, 0.0f.xxx));
            float _847 = View_View_GlobalVolumeTranslatedCenterAndExtent[_818].w * View_View_GlobalVolumeTexelSize;
            _821 = 8.0f * _847;
            if (min(_837.x, min(_837.y, _837.z)) > _847)
            {
                float3 _857 = frac(frac(mad(_813, View_View_GlobalVolumeTranslatedWorldToUVAddAndMul[_818].www, View_View_GlobalVolumeTranslatedWorldToUVAddAndMul[_818].xyz)));
                float _861 = float(View_View_GlobalDistanceFieldClipmapSizeInPages);
                float3 _868 = (clamp(_857, 0.0f.xxx, 1.0f.xxx) * _861) + float3(int3(0, 0, int(_818 * uint(View_View_GlobalDistanceFieldClipmapSizeInPages))));
                uint4 _878 = View_GlobalDistanceFieldPageTableTexture.Load(int4(int4(int(_868.x), int(_868.y), int(_868.z), 0).xyz, 0));
                uint _879 = _878.x;
                uint _880 = _879 & 16777215u;
                uint3 _911 = uint3(0u, 0u, 0u);
                if (_879 < 4294967295u)
                {
                    uint3 _885 = _815;
                    _885.x = _880 & 127u;
                    _885.y = (_880 >> 7u) & 127u;
                    _885.z = _880 >> 14u;
                    float4 _904 = View_GlobalDistanceFieldPageAtlasTexture.SampleLevel(View_SharedTrilinearWrappedSampler, ((float3(_885 * uint3(8u, 8u, 8u)) + (frac(_857 * _861) * 7.0f)) + 0.5f.xxx) * View_View_GlobalDistanceFieldInvPageAtlasSize, 0.0f);
                    float _905 = _904.x;
                    if (_905 < 1.0f)
                    {
                        _912 = mad(_905, 2.0f, -1.0f) * _821;
                        break;
                    }
                    _911 = _885;
                }
                else
                {
                    _911 = _815;
                }
                _816 = _911;
            }
            else
            {
                _816 = _815;
            }
            _815 = _816;
            _818++;
            _820 = _821;
            continue;
        }
        else
        {
            _912 = _820;
            break;
        }
    }
    float _924 = clamp(mad(mad(dot(_524, normalize(float3(0.0f, 0.0f, 1.0f))), 0.5f, 0.5f), Material_Material_PreshaderBuffer[21].y, Material_Material_PreshaderBuffer[22].x), 0.0f, 1.0f);
    float2 _936 = Material_Material_PreshaderBuffer[22].w.xx;
    float2 _937 = float2(View_View_GameTime * (-0.0500000007450580596923828125f), 0.0f);
    float2 _949 = float2(View_View_GameTime * Material_Material_PreshaderBuffer[23].w, View_View_GameTime * Material_Material_PreshaderBuffer[24].x);
    float2 _959 = Material_Material_PreshaderBuffer[24].y.xx;
    float3 _988 = clamp(lerp(_679, clamp(_688 + ((_689 * cos(_681)) + (cross(_686, _689) * sin(_681))), 0.0f.xxx, 1.0f.xxx), clamp(((_749 <= 0.0f) ? 0.0f : pow(_749, Material_Material_PreshaderBuffer[19].x)) * lerp(Material_Material_PreshaderBuffer[19].z, Material_Material_PreshaderBuffer[19].y, clamp(in_var_COLOR0.w * 0.5f, 0.0f, 1.0f)), 0.0f, 1.0f).xxx), 0.0f.xxx, 1.0f.xxx);
    float _989 = clamp(Material_Material_PreshaderBuffer[19].w, 0.0f, 1.0f);
    float _994 = mad(clamp(Material_Material_PreshaderBuffer[20].y, 0.0f, 1.0f), View_View_RoughnessOverrideParameter.y, View_View_RoughnessOverrideParameter.x);
    float _995 = clamp(min(max(lerp(clamp(((mad(_794, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_794, View_View_InvDeviceZToWorldZTransform.z, -View_View_InvDeviceZToWorldZTransform.w))) - _789) * 0.00999999977648258209228515625f, 0.0f, 1.0f), 1.0f, clamp((1.0f - mad(lerp(Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, mad(float2(in_var_TEXCOORD0[0].x, in_var_TEXCOORD0[0].y), _959, _937), View_View_MaterialTextureMipBias).y, Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, mad(float2(in_var_TEXCOORD0[0].x, in_var_TEXCOORD0[0].y), _959, _949), View_View_MaterialTextureMipBias).y, _924), 3.0f, mad(lerp(Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, mad(float2(in_var_TEXCOORD0[0].x, in_var_TEXCOORD0[0].y), _936, _937), View_View_MaterialTextureMipBias).y, Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, mad(float2(in_var_TEXCOORD0[0].x, in_var_TEXCOORD0[0].y), _936, _949), View_View_MaterialTextureMipBias).y, _924), 2.0f, lerp(_912 * Material_Material_PreshaderBuffer[20].w, Material_Material_PreshaderBuffer[22].z, (_924 <= 0.0f) ? 0.0f : pow(_924, Material_Material_PreshaderBuffer[22].y))))) * Material_Material_PreshaderBuffer[24].z, 0.0f, 1.0f)), Material_Material_PreshaderBuffer[24].w), Material_Material_PreshaderBuffer[25].x), 0.0f, 1.0f);
    float3 _1008 = ((_988 - (_988 * _989)) * View_View_DiffuseOverrideParameter.w) + View_View_DiffuseOverrideParameter.xyz;
    float3 _1015 = (lerp((0.07999999821186065673828125f * clamp(Material_Material_PreshaderBuffer[20].x, 0.0f, 1.0f)).xxx, _988, _989.xxx) * View_View_SpecularOverrideParameter.w) + View_View_SpecularOverrideParameter.xyz;
    bool _1018 = View_View_RenderingReflectionCaptureMask != 0.0f;
    float3 _1023 = 0.0f.xxx;
    if (_1018)
    {
        _1023 = _1008 + (_1015 * 0.449999988079071044921875f);
    }
    else
    {
        _1023 = _1008;
    }
    bool3 _1024 = _1018.xxx;
    float3 _1025 = float3(_1024.x ? 0.0f.xxx.x : _1015.x, _1024.y ? 0.0f.xxx.y : _1015.y, _1024.z ? 0.0f.xxx.z : _1015.z);
    float4 _1032 = LightmapResourceCluster_LightMapTexture.Sample(LightmapResourceCluster_LightMapSampler, in_var_TEXCOORD4.xy * float2(1.0f, 0.5f));
    float4 _1034 = LightmapResourceCluster_LightMapTexture.Sample(LightmapResourceCluster_LightMapSampler, mad(in_var_TEXCOORD4.xy, float2(1.0f, 0.5f), float2(0.0f, 0.5f)));
    uint _1036 = in_var_LIGHTMAP_ID * 15u;
    float3 _1045 = mad(_1032.xyz, Scene_GPUScene_GPUSceneLightmapData[_1036 + 4u].xyz, Scene_GPUScene_GPUSceneLightmapData[_1036 + 6u].xyz);
    float _1046 = dot(_1045, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f));
    float _1057 = _524.y;
    float _1058 = _524.z;
    float _1059 = _524.x;
    float3 _1204 = 0.0f.xxx;
    if (TranslucentBasePass_TranslucentBasePass_TranslucencyGIGridSize.z > 0)
    {
        float4 _1137 = mul(((float4(View_View_ViewTilePosition, 0.0f) + float4(_416, 0.0f)) * 2097152.0f) + float4(_446, 1.0f), View_View_RelativeWorldToClip);
        float _1138 = _1137.w;
        float3 _1157 = float3(mad((_1137.xy / _1138.xx).xy, float2(0.5f, -0.5f), 0.5f.xx), (log2(mad(_1138, TranslucentBasePass_TranslucentBasePass_TranslucencyGIGridZParams.x, TranslucentBasePass_TranslucentBasePass_TranslucencyGIGridZParams.y)) * TranslucentBasePass_TranslucentBasePass_TranslucencyGIGridZParams.z) / float(TranslucentBasePass_TranslucentBasePass_TranslucencyGIGridSize.z));
        float4 _1161 = TranslucentBasePass_TranslucencyGIVolumeHistory0.SampleLevel(TranslucentBasePass_TranslucencyGIVolumeSampler, _1157, 0.0f);
        float3 _1162 = _1161.xyz;
        float3 _1166 = TranslucentBasePass_TranslucencyGIVolumeHistory1.SampleLevel(TranslucentBasePass_TranslucencyGIVolumeSampler, _1157, 0.0f).xyz;
        float4 _1168 = 0.0f.xxxx;
        _1168.x = _1161.x;
        float4 _1170 = 0.0f.xxxx;
        _1170.x = _1161.y;
        float4 _1172 = 0.0f.xxxx;
        _1172.x = _1161.z;
        float3 _1176 = _1162 / (dot(_1162, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)) + 9.9999997473787516355514526367188e-06f).xxx;
        float3 _1178 = _1166 * _1176.x;
        float3 _1181 = _1166 * _1176.y;
        float3 _1184 = _1166 * _1176.z;
        float4 _1187 = 0.0f.xxxx;
        _1187.y = (-0.48860299587249755859375f) * _1057;
        _1187.z = 0.48860299587249755859375f * _1058;
        _1187.w = (-0.48860299587249755859375f) * _1059;
        _1187.x = 0.886227548122406005859375f;
        float3 _1194 = _1187.yzw * 2.094395160675048828125f;
        float4 _1195 = float4(_1187.x, _1194.x, _1194.y, _1194.z);
        float3 _1197 = 0.0f.xxx;
        _1197.x = dot(float4(_1168.x, _1178.x, _1178.y, _1178.z), _1195);
        _1197.y = dot(float4(_1170.x, _1181.x, _1181.y, _1181.z), _1195);
        _1197.z = dot(float4(_1172.x, _1184.x, _1184.y, _1184.z), _1195);
        _1204 = max(0.0f.xxx, _1197) * 0.3183098733425140380859375f.xxx;
    }
    else
    {
        float3 _1121 = 0.0f.xxx;
        if (TranslucentBasePass_TranslucentBasePass_Shared_UseBasePassSkylight > 0u)
        {
            float4 _1080 = float4(_1059, _1057, _1058, 1.0f);
            float3 _1084 = 0.0f.xxx;
            _1084.x = dot(View_SkyIrradianceEnvironmentMap[0u], _1080);
            _1084.y = dot(View_SkyIrradianceEnvironmentMap[1u], _1080);
            _1084.z = dot(View_SkyIrradianceEnvironmentMap[2u], _1080);
            float4 _1095 = _1080.xyzz * _1080.yzzx;
            float3 _1099 = 0.0f.xxx;
            _1099.x = dot(View_SkyIrradianceEnvironmentMap[3u], _1095);
            _1099.y = dot(View_SkyIrradianceEnvironmentMap[4u], _1095);
            _1099.z = dot(View_SkyIrradianceEnvironmentMap[5u], _1095);
            _1121 = (max(0.0f.xxx, (_1084 + _1099) + (View_SkyIrradianceEnvironmentMap[6u].xyz * mad(_1059, _1059, -(_1057 * _1057)))) * View_View_SkyLightColor.xyz) * 1.0f;
        }
        else
        {
            _1121 = 0.0f.xxx;
        }
        _1204 = _1121;
    }
    float3 _1205 = mad(_1045 * (((exp2(mad(_1046, 16.0f, -8.0f)) - 0.00390625f) * max(0.0f, dot(mad(_1034, Scene_GPUScene_GPUSceneLightmapData[_1036 + 5u], Scene_GPUScene_GPUSceneLightmapData[_1036 + 7u]), float4(_1057, _1058, _1059, 1.0f)))) / max(9.9999997473787516355514526367188e-06f, _1046)), View_View_PrecomputedIndirectLightingColorScale, _1204);
    uint2 _1245 = uint2(_429 * View_View_LightProbeSizeRatioAndInvSizeRatio.zw) >> (TranslucentBasePass_TranslucentBasePass_Shared_Forward_LightGridPixelSizeShift.xx & uint2(31u, 31u));
    float3 _1259 = (_524 * (2.0f * dot(_462, _524))) - _462;
    bool _1294 = false;
    if (TranslucentBasePass_TranslucentBasePass_Enabled > 0u)
    {
        float _1287 = 0.0f;
        do
        {
            [flatten]
            if (asuint(View_View_ViewToClip[3].w) != 0u)
            {
                _1287 = mad(_448, View_View_ViewToClip[2u].z, View_View_ViewToClip[3u].z);
                break;
            }
            else
            {
                _1287 = 1.0f / ((_448 + View_View_InvDeviceZToWorldZTransform.w) * View_View_InvDeviceZToWorldZTransform.z);
                break;
            }
            break; // unreachable workaround
        } while(false);
        _1294 = (abs(TranslucentBasePass_SceneDepth.SampleLevel(View_SharedPointClampedSampler, _453, 0.0f).x - _1287) < TranslucentBasePass_TranslucentBasePass_RelativeDepthThreshold) ? true : false;
    }
    else
    {
        _1294 = false;
    }
    bool _1298 = !_1294;
    uint _1364 = 0u;
    bool _1365 = false;
    if ((TranslucentBasePass_TranslucentBasePass_FinalProbeResolution > 0u) && _1298)
    {
        uint _1320 = 0u;
        float _1310 = frac(52.98291778564453125f * frac(dot(gl_FragCoord.xy + (float2(32.66500091552734375f, 11.81499958038330078125f) * float(View_View_StateFrameIndexMod8)), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f))));
        float3 _1312 = (View_View_ViewTilePosition * 2097152.0f) + _446;
        uint _1361 = 0u;
        do
        {
            uint _1358 = 0u;
            bool _1359 = false;
            uint _1316 = 0u;
            for (;;)
            {
                _1320 = TranslucentBasePass_TranslucentBasePass_NumRadianceProbeClipmaps;
                if (_1316 < _1320)
                {
                    float3 _1330 = (_1312 * TranslucentBasePass_TranslucentBasePass_RadianceProbeSettings[_1316].y) + TranslucentBasePass_TranslucentBasePass_PaddedWorldPositionToRadianceProbeCoordBias[_1316].xyz;
                    float3 _1335 = clamp((_1330 - 0.5f.xxx) * TranslucentBasePass_TranslucentBasePass_InvClipmapFadeSize, 0.0f.xxx, 1.0f.xxx);
                    float3 _1343 = clamp(((float(TranslucentBasePass_TranslucentBasePass_RadianceProbeClipmapResolution).xxx - 0.5f.xxx) - _1330) * TranslucentBasePass_TranslucentBasePass_InvClipmapFadeSize, 0.0f.xxx, 1.0f.xxx);
                    if (min(min(_1335.x, min(_1335.y, _1335.z)), min(_1343.x, min(_1343.y, _1343.z))) > _1310)
                    {
                        _1358 = _1316;
                        _1359 = true;
                        break;
                    }
                    _1316++;
                    continue;
                }
                else
                {
                    _1358 = _304;
                    _1359 = false;
                    break;
                }
            }
            if (_1359)
            {
                _1361 = _1358;
                break;
            }
            _1361 = _1320;
            break;
        } while(false);
        _1364 = _1361;
        _1365 = (_1361 < _1320) ? true : false;
    }
    else
    {
        _1364 = 0u;
        _1365 = false;
    }
    float3 _2581 = 0.0f.xxx;
    if (_1294)
    {
        _2581 = (pow((TranslucentBasePass_Radiance.SampleLevel(View_SharedPointClampedSampler, _453, 0.0f).xyz * View_View_OneOverPreExposure) * 5.5555553436279296875f, TranslucentBasePass_TranslucentBasePass_Contrast.xxx) * 0.180000007152557373046875f) * TranslucentBasePass_TranslucentBasePass_SpecularScale;
    }
    else
    {
        float3 _2563 = 0.0f.xxx;
        if (_1365)
        {
            float3 _1655 = (View_View_ViewTilePosition * 2097152.0f) + _446;
            float3 _1663 = ((_1655 * TranslucentBasePass_TranslucentBasePass_RadianceProbeSettings[_1364].y) + TranslucentBasePass_TranslucentBasePass_PaddedWorldPositionToRadianceProbeCoordBias[_1364].xyz) - 0.5f.xxx;
            int3 _1665 = int3(floor(_1663));
            float3 _1666 = frac(_1663);
            uint3 _1667 = uint3(_1665);
            uint _1673 = _1364 * TranslucentBasePass_TranslucentBasePass_RadianceProbeClipmapResolution;
            int4 _1678 = int4(uint4(_1667.x + _1673, _1667.yz, 0u));
            uint4 _1682 = TranslucentBasePass_RadianceProbeIndirectionTexture.Load(int4(_1678.xyz, _1678.w));
            uint _1683 = _1682.x;
            float3 _1695 = ((float3(_1667) * TranslucentBasePass_TranslucentBasePass_RadianceProbeSettings[_1364].z) + TranslucentBasePass_TranslucentBasePass_PaddedRadianceProbeCoordToWorldPositionBias[_1364].xyz) + TranslucentBasePass_ProbeWorldOffset[_1683].xyz;
            float _1698 = TranslucentBasePass_TranslucentBasePass_ReprojectionRadiusScale * TranslucentBasePass_TranslucentBasePass_RadianceProbeSettings[_1364].x;
            float3 _1704 = _1655 - float4(_1695, _1698).xyz;
            float _1706 = dot(_1259, _1259);
            float _1707 = dot(_1259, _1704);
            float _1708 = 2.0f * _1707;
            float _1709 = -_1698;
            float _1711 = 4.0f * _1706;
            float _1714 = mad(_1708, _1708, -(_1711 * mad(_1709, _1698, dot(_1704, _1704))));
            float2 _1726 = 0.0f.xx;
            [flatten]
            if (_1714 >= 0.0f)
            {
                _1726 = ((_1707 * (-2.0f)).xx + (float2(-1.0f, 1.0f) * sqrt(_1714))) / (2.0f * _1706).xx;
            }
            else
            {
                _1726 = (-1.0f).xx;
            }
            float3 _1730 = (_1655 + (_1259 * _1726.y)) - _1695;
            float3 _1735 = normalize(_1730);
            float3 _1736 = abs(_1735);
            float _1739 = sqrt(1.0f - _1736.z);
            float _1740 = _1736.x;
            float _1741 = _1736.y;
            float _1745 = min(_1740, _1741) / (max(_1740, _1741) + 5.4210108624275221700372640043497e-20f);
            float _1751 = mad(mad(mad(mad(mad(mad(-0.0251390971243381500244140625f, _1745, 0.0419038832187652587890625f), _1745, 0.08817707002162933349609375f), _1745, -0.2473337352275848388671875f), _1745, 0.006157201714813709259033203125f), _1745, 0.63622653484344482421875f), _1745, 4.0675854506844189018011093139648e-06f);
            float _1754 = (_1740 < _1741) ? (1.0f - _1751) : _1751;
            float2 _1758 = float2(mad(-_1754, _1739, _1739), _1754 * _1739);
            bool2 _1761 = (_1735.z < 0.0f).xx;
            float2 _1763 = 1.0f.xx - _1758.yx;
            uint2 _1773 = TranslucentBasePass_TranslucentBasePass_FinalProbeResolution.xx;
            uint _1779 = TranslucentBasePass_TranslucentBasePass_ProbeAtlasResolutionDivideShift & 31u;
            float _1785 = float(TranslucentBasePass_TranslucentBasePass_RadianceProbeResolution);
            float2 _1792 = float(1u << (TranslucentBasePass_TranslucentBasePass_FinalRadianceAtlasMaxMip & 31u)).xx;
            bool3 _1800 = (_1683 == 4294967295u).xxx;
            float3 _1805 = TranslucentBasePass_RadianceCacheFinalRadianceAtlas.SampleLevel(View_SharedBilinearClampedSampler, (float2(_1773 * uint2(_1683 & TranslucentBasePass_TranslucentBasePass_ProbeAtlasResolutionModuloMask, _1683 >> _1779)) + ((((asfloat(asuint(float2(_1761.x ? _1763.x : _1758.x, _1761.y ? _1763.y : _1758.y)) ^ (asuint(_1735.xy) & uint2(2147483648u, 2147483648u))) * 0.5f) + 0.5f.xx) * _1785) + _1792)) * TranslucentBasePass_TranslucentBasePass_InvProbeFinalRadianceAtlasResolution, 0.0f).xyz;
            uint3 _1809 = uint3(_1665 + int3(0, 0, 1));
            int4 _1815 = int4(uint4(_1809.x + _1673, _1809.yz, 0u));
            uint4 _1818 = TranslucentBasePass_RadianceProbeIndirectionTexture.Load(int4(_1815.xyz, _1815.w));
            uint _1819 = _1818.x;
            float3 _1826 = ((float3(_1809) * TranslucentBasePass_TranslucentBasePass_RadianceProbeSettings[_1364].z) + TranslucentBasePass_TranslucentBasePass_PaddedRadianceProbeCoordToWorldPositionBias[_1364].xyz) + TranslucentBasePass_ProbeWorldOffset[_1819].xyz;
            float3 _1832 = _1655 - float4(_1826, _1698).xyz;
            float _1834 = dot(_1259, _1832);
            float _1835 = 2.0f * _1834;
            float _1839 = mad(_1835, _1835, -(_1711 * mad(_1709, _1698, dot(_1832, _1832))));
            float2 _1851 = 0.0f.xx;
            [flatten]
            if (_1839 >= 0.0f)
            {
                _1851 = ((_1834 * (-2.0f)).xx + (float2(-1.0f, 1.0f) * sqrt(_1839))) / (2.0f * _1706).xx;
            }
            else
            {
                _1851 = (-1.0f).xx;
            }
            float3 _1855 = (_1655 + (_1259 * _1851.y)) - _1826;
            float3 _1860 = normalize(_1855);
            float3 _1861 = abs(_1860);
            float _1864 = sqrt(1.0f - _1861.z);
            float _1865 = _1861.x;
            float _1866 = _1861.y;
            float _1870 = min(_1865, _1866) / (max(_1865, _1866) + 5.4210108624275221700372640043497e-20f);
            float _1876 = mad(mad(mad(mad(mad(mad(-0.0251390971243381500244140625f, _1870, 0.0419038832187652587890625f), _1870, 0.08817707002162933349609375f), _1870, -0.2473337352275848388671875f), _1870, 0.006157201714813709259033203125f), _1870, 0.63622653484344482421875f), _1870, 4.0675854506844189018011093139648e-06f);
            float _1879 = (_1865 < _1866) ? (1.0f - _1876) : _1876;
            float2 _1883 = float2(mad(-_1879, _1864, _1864), _1879 * _1864);
            bool2 _1886 = (_1860.z < 0.0f).xx;
            float2 _1888 = 1.0f.xx - _1883.yx;
            bool3 _1908 = (_1819 == 4294967295u).xxx;
            float3 _1911 = TranslucentBasePass_RadianceCacheFinalRadianceAtlas.SampleLevel(View_SharedBilinearClampedSampler, (float2(_1773 * uint2(_1819 & TranslucentBasePass_TranslucentBasePass_ProbeAtlasResolutionModuloMask, _1819 >> _1779)) + ((((asfloat(asuint(float2(_1886.x ? _1888.x : _1883.x, _1886.y ? _1888.y : _1883.y)) ^ (asuint(_1860.xy) & uint2(2147483648u, 2147483648u))) * 0.5f) + 0.5f.xx) * _1785) + _1792)) * TranslucentBasePass_TranslucentBasePass_InvProbeFinalRadianceAtlasResolution, 0.0f).xyz;
            uint3 _1915 = uint3(_1665 + int3(0, 1, 0));
            int4 _1921 = int4(uint4(_1915.x + _1673, _1915.yz, 0u));
            uint4 _1924 = TranslucentBasePass_RadianceProbeIndirectionTexture.Load(int4(_1921.xyz, _1921.w));
            uint _1925 = _1924.x;
            float3 _1932 = ((float3(_1915) * TranslucentBasePass_TranslucentBasePass_RadianceProbeSettings[_1364].z) + TranslucentBasePass_TranslucentBasePass_PaddedRadianceProbeCoordToWorldPositionBias[_1364].xyz) + TranslucentBasePass_ProbeWorldOffset[_1925].xyz;
            float3 _1938 = _1655 - float4(_1932, _1698).xyz;
            float _1940 = dot(_1259, _1938);
            float _1941 = 2.0f * _1940;
            float _1945 = mad(_1941, _1941, -(_1711 * mad(_1709, _1698, dot(_1938, _1938))));
            float2 _1957 = 0.0f.xx;
            [flatten]
            if (_1945 >= 0.0f)
            {
                _1957 = ((_1940 * (-2.0f)).xx + (float2(-1.0f, 1.0f) * sqrt(_1945))) / (2.0f * _1706).xx;
            }
            else
            {
                _1957 = (-1.0f).xx;
            }
            float3 _1961 = (_1655 + (_1259 * _1957.y)) - _1932;
            float3 _1966 = normalize(_1961);
            float3 _1967 = abs(_1966);
            float _1970 = sqrt(1.0f - _1967.z);
            float _1971 = _1967.x;
            float _1972 = _1967.y;
            float _1976 = min(_1971, _1972) / (max(_1971, _1972) + 5.4210108624275221700372640043497e-20f);
            float _1982 = mad(mad(mad(mad(mad(mad(-0.0251390971243381500244140625f, _1976, 0.0419038832187652587890625f), _1976, 0.08817707002162933349609375f), _1976, -0.2473337352275848388671875f), _1976, 0.006157201714813709259033203125f), _1976, 0.63622653484344482421875f), _1976, 4.0675854506844189018011093139648e-06f);
            float _1985 = (_1971 < _1972) ? (1.0f - _1982) : _1982;
            float2 _1989 = float2(mad(-_1985, _1970, _1970), _1985 * _1970);
            bool2 _1992 = (_1966.z < 0.0f).xx;
            float2 _1994 = 1.0f.xx - _1989.yx;
            bool3 _2014 = (_1925 == 4294967295u).xxx;
            float3 _2017 = TranslucentBasePass_RadianceCacheFinalRadianceAtlas.SampleLevel(View_SharedBilinearClampedSampler, (float2(_1773 * uint2(_1925 & TranslucentBasePass_TranslucentBasePass_ProbeAtlasResolutionModuloMask, _1925 >> _1779)) + ((((asfloat(asuint(float2(_1992.x ? _1994.x : _1989.x, _1992.y ? _1994.y : _1989.y)) ^ (asuint(_1966.xy) & uint2(2147483648u, 2147483648u))) * 0.5f) + 0.5f.xx) * _1785) + _1792)) * TranslucentBasePass_TranslucentBasePass_InvProbeFinalRadianceAtlasResolution, 0.0f).xyz;
            uint3 _2021 = uint3(_1665 + int3(0, 1, 1));
            int4 _2027 = int4(uint4(_2021.x + _1673, _2021.yz, 0u));
            uint4 _2030 = TranslucentBasePass_RadianceProbeIndirectionTexture.Load(int4(_2027.xyz, _2027.w));
            uint _2031 = _2030.x;
            float3 _2038 = ((float3(_2021) * TranslucentBasePass_TranslucentBasePass_RadianceProbeSettings[_1364].z) + TranslucentBasePass_TranslucentBasePass_PaddedRadianceProbeCoordToWorldPositionBias[_1364].xyz) + TranslucentBasePass_ProbeWorldOffset[_2031].xyz;
            float3 _2044 = _1655 - float4(_2038, _1698).xyz;
            float _2046 = dot(_1259, _2044);
            float _2047 = 2.0f * _2046;
            float _2051 = mad(_2047, _2047, -(_1711 * mad(_1709, _1698, dot(_2044, _2044))));
            float2 _2063 = 0.0f.xx;
            [flatten]
            if (_2051 >= 0.0f)
            {
                _2063 = ((_2046 * (-2.0f)).xx + (float2(-1.0f, 1.0f) * sqrt(_2051))) / (2.0f * _1706).xx;
            }
            else
            {
                _2063 = (-1.0f).xx;
            }
            float3 _2067 = (_1655 + (_1259 * _2063.y)) - _2038;
            float3 _2072 = normalize(_2067);
            float3 _2073 = abs(_2072);
            float _2076 = sqrt(1.0f - _2073.z);
            float _2077 = _2073.x;
            float _2078 = _2073.y;
            float _2082 = min(_2077, _2078) / (max(_2077, _2078) + 5.4210108624275221700372640043497e-20f);
            float _2088 = mad(mad(mad(mad(mad(mad(-0.0251390971243381500244140625f, _2082, 0.0419038832187652587890625f), _2082, 0.08817707002162933349609375f), _2082, -0.2473337352275848388671875f), _2082, 0.006157201714813709259033203125f), _2082, 0.63622653484344482421875f), _2082, 4.0675854506844189018011093139648e-06f);
            float _2091 = (_2077 < _2078) ? (1.0f - _2088) : _2088;
            float2 _2095 = float2(mad(-_2091, _2076, _2076), _2091 * _2076);
            bool2 _2098 = (_2072.z < 0.0f).xx;
            float2 _2100 = 1.0f.xx - _2095.yx;
            bool3 _2120 = (_2031 == 4294967295u).xxx;
            float3 _2123 = TranslucentBasePass_RadianceCacheFinalRadianceAtlas.SampleLevel(View_SharedBilinearClampedSampler, (float2(_1773 * uint2(_2031 & TranslucentBasePass_TranslucentBasePass_ProbeAtlasResolutionModuloMask, _2031 >> _1779)) + ((((asfloat(asuint(float2(_2098.x ? _2100.x : _2095.x, _2098.y ? _2100.y : _2095.y)) ^ (asuint(_2072.xy) & uint2(2147483648u, 2147483648u))) * 0.5f) + 0.5f.xx) * _1785) + _1792)) * TranslucentBasePass_TranslucentBasePass_InvProbeFinalRadianceAtlasResolution, 0.0f).xyz;
            uint3 _2127 = uint3(_1665 + int3(1, 0, 0));
            int4 _2133 = int4(uint4(_2127.x + _1673, _2127.yz, 0u));
            uint4 _2136 = TranslucentBasePass_RadianceProbeIndirectionTexture.Load(int4(_2133.xyz, _2133.w));
            uint _2137 = _2136.x;
            float3 _2144 = ((float3(_2127) * TranslucentBasePass_TranslucentBasePass_RadianceProbeSettings[_1364].z) + TranslucentBasePass_TranslucentBasePass_PaddedRadianceProbeCoordToWorldPositionBias[_1364].xyz) + TranslucentBasePass_ProbeWorldOffset[_2137].xyz;
            float3 _2150 = _1655 - float4(_2144, _1698).xyz;
            float _2152 = dot(_1259, _2150);
            float _2153 = 2.0f * _2152;
            float _2157 = mad(_2153, _2153, -(_1711 * mad(_1709, _1698, dot(_2150, _2150))));
            float2 _2169 = 0.0f.xx;
            [flatten]
            if (_2157 >= 0.0f)
            {
                _2169 = ((_2152 * (-2.0f)).xx + (float2(-1.0f, 1.0f) * sqrt(_2157))) / (2.0f * _1706).xx;
            }
            else
            {
                _2169 = (-1.0f).xx;
            }
            float3 _2173 = (_1655 + (_1259 * _2169.y)) - _2144;
            float3 _2178 = normalize(_2173);
            float3 _2179 = abs(_2178);
            float _2182 = sqrt(1.0f - _2179.z);
            float _2183 = _2179.x;
            float _2184 = _2179.y;
            float _2188 = min(_2183, _2184) / (max(_2183, _2184) + 5.4210108624275221700372640043497e-20f);
            float _2194 = mad(mad(mad(mad(mad(mad(-0.0251390971243381500244140625f, _2188, 0.0419038832187652587890625f), _2188, 0.08817707002162933349609375f), _2188, -0.2473337352275848388671875f), _2188, 0.006157201714813709259033203125f), _2188, 0.63622653484344482421875f), _2188, 4.0675854506844189018011093139648e-06f);
            float _2197 = (_2183 < _2184) ? (1.0f - _2194) : _2194;
            float2 _2201 = float2(mad(-_2197, _2182, _2182), _2197 * _2182);
            bool2 _2204 = (_2178.z < 0.0f).xx;
            float2 _2206 = 1.0f.xx - _2201.yx;
            bool3 _2226 = (_2137 == 4294967295u).xxx;
            float3 _2229 = TranslucentBasePass_RadianceCacheFinalRadianceAtlas.SampleLevel(View_SharedBilinearClampedSampler, (float2(_1773 * uint2(_2137 & TranslucentBasePass_TranslucentBasePass_ProbeAtlasResolutionModuloMask, _2137 >> _1779)) + ((((asfloat(asuint(float2(_2204.x ? _2206.x : _2201.x, _2204.y ? _2206.y : _2201.y)) ^ (asuint(_2178.xy) & uint2(2147483648u, 2147483648u))) * 0.5f) + 0.5f.xx) * _1785) + _1792)) * TranslucentBasePass_TranslucentBasePass_InvProbeFinalRadianceAtlasResolution, 0.0f).xyz;
            uint3 _2233 = uint3(_1665 + int3(1, 0, 1));
            int4 _2239 = int4(uint4(_2233.x + _1673, _2233.yz, 0u));
            uint4 _2242 = TranslucentBasePass_RadianceProbeIndirectionTexture.Load(int4(_2239.xyz, _2239.w));
            uint _2243 = _2242.x;
            float3 _2250 = ((float3(_2233) * TranslucentBasePass_TranslucentBasePass_RadianceProbeSettings[_1364].z) + TranslucentBasePass_TranslucentBasePass_PaddedRadianceProbeCoordToWorldPositionBias[_1364].xyz) + TranslucentBasePass_ProbeWorldOffset[_2243].xyz;
            float3 _2256 = _1655 - float4(_2250, _1698).xyz;
            float _2258 = dot(_1259, _2256);
            float _2259 = 2.0f * _2258;
            float _2263 = mad(_2259, _2259, -(_1711 * mad(_1709, _1698, dot(_2256, _2256))));
            float2 _2275 = 0.0f.xx;
            [flatten]
            if (_2263 >= 0.0f)
            {
                _2275 = ((_2258 * (-2.0f)).xx + (float2(-1.0f, 1.0f) * sqrt(_2263))) / (2.0f * _1706).xx;
            }
            else
            {
                _2275 = (-1.0f).xx;
            }
            float3 _2279 = (_1655 + (_1259 * _2275.y)) - _2250;
            float3 _2284 = normalize(_2279);
            float3 _2285 = abs(_2284);
            float _2288 = sqrt(1.0f - _2285.z);
            float _2289 = _2285.x;
            float _2290 = _2285.y;
            float _2294 = min(_2289, _2290) / (max(_2289, _2290) + 5.4210108624275221700372640043497e-20f);
            float _2300 = mad(mad(mad(mad(mad(mad(-0.0251390971243381500244140625f, _2294, 0.0419038832187652587890625f), _2294, 0.08817707002162933349609375f), _2294, -0.2473337352275848388671875f), _2294, 0.006157201714813709259033203125f), _2294, 0.63622653484344482421875f), _2294, 4.0675854506844189018011093139648e-06f);
            float _2303 = (_2289 < _2290) ? (1.0f - _2300) : _2300;
            float2 _2307 = float2(mad(-_2303, _2288, _2288), _2303 * _2288);
            bool2 _2310 = (_2284.z < 0.0f).xx;
            float2 _2312 = 1.0f.xx - _2307.yx;
            bool3 _2332 = (_2243 == 4294967295u).xxx;
            float3 _2335 = TranslucentBasePass_RadianceCacheFinalRadianceAtlas.SampleLevel(View_SharedBilinearClampedSampler, (float2(_1773 * uint2(_2243 & TranslucentBasePass_TranslucentBasePass_ProbeAtlasResolutionModuloMask, _2243 >> _1779)) + ((((asfloat(asuint(float2(_2310.x ? _2312.x : _2307.x, _2310.y ? _2312.y : _2307.y)) ^ (asuint(_2284.xy) & uint2(2147483648u, 2147483648u))) * 0.5f) + 0.5f.xx) * _1785) + _1792)) * TranslucentBasePass_TranslucentBasePass_InvProbeFinalRadianceAtlasResolution, 0.0f).xyz;
            uint3 _2339 = uint3(_1665 + int3(1, 1, 0));
            int4 _2345 = int4(uint4(_2339.x + _1673, _2339.yz, 0u));
            uint4 _2348 = TranslucentBasePass_RadianceProbeIndirectionTexture.Load(int4(_2345.xyz, _2345.w));
            uint _2349 = _2348.x;
            float3 _2356 = ((float3(_2339) * TranslucentBasePass_TranslucentBasePass_RadianceProbeSettings[_1364].z) + TranslucentBasePass_TranslucentBasePass_PaddedRadianceProbeCoordToWorldPositionBias[_1364].xyz) + TranslucentBasePass_ProbeWorldOffset[_2349].xyz;
            float3 _2362 = _1655 - float4(_2356, _1698).xyz;
            float _2364 = dot(_1259, _2362);
            float _2365 = 2.0f * _2364;
            float _2369 = mad(_2365, _2365, -(_1711 * mad(_1709, _1698, dot(_2362, _2362))));
            float2 _2381 = 0.0f.xx;
            [flatten]
            if (_2369 >= 0.0f)
            {
                _2381 = ((_2364 * (-2.0f)).xx + (float2(-1.0f, 1.0f) * sqrt(_2369))) / (2.0f * _1706).xx;
            }
            else
            {
                _2381 = (-1.0f).xx;
            }
            float3 _2385 = (_1655 + (_1259 * _2381.y)) - _2356;
            float3 _2390 = normalize(_2385);
            float3 _2391 = abs(_2390);
            float _2394 = sqrt(1.0f - _2391.z);
            float _2395 = _2391.x;
            float _2396 = _2391.y;
            float _2400 = min(_2395, _2396) / (max(_2395, _2396) + 5.4210108624275221700372640043497e-20f);
            float _2406 = mad(mad(mad(mad(mad(mad(-0.0251390971243381500244140625f, _2400, 0.0419038832187652587890625f), _2400, 0.08817707002162933349609375f), _2400, -0.2473337352275848388671875f), _2400, 0.006157201714813709259033203125f), _2400, 0.63622653484344482421875f), _2400, 4.0675854506844189018011093139648e-06f);
            float _2409 = (_2395 < _2396) ? (1.0f - _2406) : _2406;
            float2 _2413 = float2(mad(-_2409, _2394, _2394), _2409 * _2394);
            bool2 _2416 = (_2390.z < 0.0f).xx;
            float2 _2418 = 1.0f.xx - _2413.yx;
            bool3 _2438 = (_2349 == 4294967295u).xxx;
            float3 _2441 = TranslucentBasePass_RadianceCacheFinalRadianceAtlas.SampleLevel(View_SharedBilinearClampedSampler, (float2(_1773 * uint2(_2349 & TranslucentBasePass_TranslucentBasePass_ProbeAtlasResolutionModuloMask, _2349 >> _1779)) + ((((asfloat(asuint(float2(_2416.x ? _2418.x : _2413.x, _2416.y ? _2418.y : _2413.y)) ^ (asuint(_2390.xy) & uint2(2147483648u, 2147483648u))) * 0.5f) + 0.5f.xx) * _1785) + _1792)) * TranslucentBasePass_TranslucentBasePass_InvProbeFinalRadianceAtlasResolution, 0.0f).xyz;
            uint3 _2445 = uint3(_1665 + int3(1, 1, 1));
            int4 _2451 = int4(uint4(_2445.x + _1673, _2445.yz, 0u));
            uint4 _2454 = TranslucentBasePass_RadianceProbeIndirectionTexture.Load(int4(_2451.xyz, _2451.w));
            uint _2455 = _2454.x;
            float3 _2462 = ((float3(_2445) * TranslucentBasePass_TranslucentBasePass_RadianceProbeSettings[_1364].z) + TranslucentBasePass_TranslucentBasePass_PaddedRadianceProbeCoordToWorldPositionBias[_1364].xyz) + TranslucentBasePass_ProbeWorldOffset[_2455].xyz;
            float3 _2468 = _1655 - float4(_2462, _1698).xyz;
            float _2470 = dot(_1259, _2468);
            float _2471 = 2.0f * _2470;
            float _2475 = mad(_2471, _2471, -(_1711 * mad(_1709, _1698, dot(_2468, _2468))));
            float2 _2487 = 0.0f.xx;
            [flatten]
            if (_2475 >= 0.0f)
            {
                _2487 = ((_2470 * (-2.0f)).xx + (float2(-1.0f, 1.0f) * sqrt(_2475))) / (2.0f * _1706).xx;
            }
            else
            {
                _2487 = (-1.0f).xx;
            }
            float3 _2491 = (_1655 + (_1259 * _2487.y)) - _2462;
            float3 _2496 = normalize(_2491);
            float3 _2497 = abs(_2496);
            float _2500 = sqrt(1.0f - _2497.z);
            float _2501 = _2497.x;
            float _2502 = _2497.y;
            float _2506 = min(_2501, _2502) / (max(_2501, _2502) + 5.4210108624275221700372640043497e-20f);
            float _2512 = mad(mad(mad(mad(mad(mad(-0.0251390971243381500244140625f, _2506, 0.0419038832187652587890625f), _2506, 0.08817707002162933349609375f), _2506, -0.2473337352275848388671875f), _2506, 0.006157201714813709259033203125f), _2506, 0.63622653484344482421875f), _2506, 4.0675854506844189018011093139648e-06f);
            float _2515 = (_2501 < _2502) ? (1.0f - _2512) : _2512;
            float2 _2519 = float2(mad(-_2515, _2500, _2500), _2515 * _2500);
            bool2 _2522 = (_2496.z < 0.0f).xx;
            float2 _2524 = 1.0f.xx - _2519.yx;
            bool3 _2544 = (_2455 == 4294967295u).xxx;
            float3 _2547 = TranslucentBasePass_RadianceCacheFinalRadianceAtlas.SampleLevel(View_SharedBilinearClampedSampler, (float2(_1773 * uint2(_2455 & TranslucentBasePass_TranslucentBasePass_ProbeAtlasResolutionModuloMask, _2455 >> _1779)) + ((((asfloat(asuint(float2(_2522.x ? _2524.x : _2519.x, _2522.y ? _2524.y : _2519.y)) ^ (asuint(_2496.xy) & uint2(2147483648u, 2147483648u))) * 0.5f) + 0.5f.xx) * _1785) + _1792)) * TranslucentBasePass_TranslucentBasePass_InvProbeFinalRadianceAtlasResolution, 0.0f).xyz;
            float3 _2551 = _1666.z.xxx;
            float3 _2557 = _1666.y.xxx;
            _2563 = lerp(lerp(lerp(float3(_1800.x ? 0.0f.xxx.x : _1805.x, _1800.y ? 0.0f.xxx.y : _1805.y, _1800.z ? 0.0f.xxx.z : _1805.z) * ((_1726.y * _1726.y) / (_1698 * dot(_1730, _1259))), float3(_1908.x ? 0.0f.xxx.x : _1911.x, _1908.y ? 0.0f.xxx.y : _1911.y, _1908.z ? 0.0f.xxx.z : _1911.z) * ((_1851.y * _1851.y) / (_1698 * dot(_1855, _1259))), _2551), lerp(float3(_2014.x ? 0.0f.xxx.x : _2017.x, _2014.y ? 0.0f.xxx.y : _2017.y, _2014.z ? 0.0f.xxx.z : _2017.z) * ((_1957.y * _1957.y) / (_1698 * dot(_1961, _1259))), float3(_2120.x ? 0.0f.xxx.x : _2123.x, _2120.y ? 0.0f.xxx.y : _2123.y, _2120.z ? 0.0f.xxx.z : _2123.z) * ((_2063.y * _2063.y) / (_1698 * dot(_2067, _1259))), _2551), _2557), lerp(lerp(float3(_2226.x ? 0.0f.xxx.x : _2229.x, _2226.y ? 0.0f.xxx.y : _2229.y, _2226.z ? 0.0f.xxx.z : _2229.z) * ((_2169.y * _2169.y) / (_1698 * dot(_2173, _1259))), float3(_2332.x ? 0.0f.xxx.x : _2335.x, _2332.y ? 0.0f.xxx.y : _2335.y, _2332.z ? 0.0f.xxx.z : _2335.z) * ((_2275.y * _2275.y) / (_1698 * dot(_2279, _1259))), _2551), lerp(float3(_2438.x ? 0.0f.xxx.x : _2441.x, _2438.y ? 0.0f.xxx.y : _2441.y, _2438.z ? 0.0f.xxx.z : _2441.z) * ((_2381.y * _2381.y) / (_1698 * dot(_2385, _1259))), float3(_2544.x ? 0.0f.xxx.x : _2547.x, _2544.y ? 0.0f.xxx.y : _2547.y, _2544.z ? 0.0f.xxx.z : _2547.z) * ((_2487.y * _2487.y) / (_1698 * dot(_2491, _1259))), _2551), _2557), _1666.x.xxx);
        }
        else
        {
            uint _1375 = (TranslucentBasePass_TranslucentBasePass_Shared_Forward_NumGridCells + ((((min(uint(max(0.0f, log2(mad(_383, TranslucentBasePass_TranslucentBasePass_Shared_Forward_LightGridZParams.x, TranslucentBasePass_TranslucentBasePass_Shared_Forward_LightGridZParams.y)) * TranslucentBasePass_TranslucentBasePass_Shared_Forward_LightGridZParams.z)), uint(TranslucentBasePass_TranslucentBasePass_Shared_Forward_CulledGridSize.z - 1)) * uint(TranslucentBasePass_TranslucentBasePass_Shared_Forward_CulledGridSize.y)) + _1245.y) * uint(TranslucentBasePass_TranslucentBasePass_Shared_Forward_CulledGridSize.x)) + _1245.x)) * 2u;
            uint _1380 = min(TranslucentBasePass_Shared_Forward_NumCulledLightsGrid[_1375], TranslucentBasePass_TranslucentBasePass_Shared_Forward_NumReflectionCaptures);
            uint _1381 = _1375 + 1u;
            float _1388 = mad(-1.2000000476837158203125f, log2(max(_994, 0.001000000047497451305389404296875f)), 1.0f);
            float _1390 = (View_View_ReflectionCubemapMaxMip - 1.0f) - _1388;
            float2 _1392 = 0.0f.xx;
            float4 _1395 = 0.0f.xxxx;
            _1392 = float2(0.0f, 1.0f);
            _1395 = float4(0.0f, 0.0f, 0.0f, 1.0f);
            float2 _1393 = 0.0f.xx;
            float4 _1396 = 0.0f.xxxx;
            [loop]
            for (uint _1397 = 0u; _1397 < _1380; _1392 = _1393, _1395 = _1396, _1397++)
            {
                [branch]
                if (_1395.w < 0.001000000047497451305389404296875f)
                {
                    break;
                }
                uint4 _1408 = TranslucentBasePass_Shared_Forward_CulledLightDataGrid16Bit.Load(TranslucentBasePass_Shared_Forward_NumCulledLightsGrid[_1381] + _1397);
                uint _1409 = _1408.x;
                float3 _1419 = ((ReflectionCaptureSM5_ReflectionCaptureSM5_TilePosition[_1409].xyz + _417) * 2097152.0f) + (ReflectionCaptureSM5_ReflectionCaptureSM5_PositionAndRadius[_1409].xyz + View_View_RelativePreViewTranslation);
                float3 _1424 = _445 - _1419;
                float _1426 = sqrt(dot(_1424, _1424));
                [branch]
                if (_1426 < ReflectionCaptureSM5_ReflectionCaptureSM5_PositionAndRadius[_1409].w)
                {
                    float _1545 = 0.0f;
                    float3 _1546 = 0.0f.xxx;
                    [branch]
                    if (ReflectionCaptureSM5_ReflectionCaptureSM5_CaptureProperties[_1409].z > 0.0f)
                    {
                        float3 _1477 = float4(_1419, ReflectionCaptureSM5_ReflectionCaptureSM5_PositionAndRadius[_1409].w).xyz;
                        float3 _1478 = _445 - _1477;
                        float3 _1484 = mul(float4(_1478, 1.0f), ReflectionCaptureSM5_ReflectionCaptureSM5_BoxTransform[_1409]).xyz;
                        float3 _1490 = mul(float4(_1259, 0.0f), ReflectionCaptureSM5_ReflectionCaptureSM5_BoxTransform[_1409]).xyz;
                        float3 _1491 = 1.0f.xxx / _1490;
                        float3 _1493 = -_1484;
                        float3 _1496 = max(mad(_1493, _1491, (-1.0f).xxx / _1490), mad(_1493, _1491, _1491));
                        float3 _1510 = ReflectionCaptureSM5_ReflectionCaptureSM5_BoxScales[_1409].xyz - (0.5f * ReflectionCaptureSM5_ReflectionCaptureSM5_BoxScales[_1409].w).xxx;
                        float3 _1511 = -_1510;
                        float3 _1512 = _1484 * ReflectionCaptureSM5_ReflectionCaptureSM5_BoxScales[_1409].xyz;
                        bool3 _1513 = bool3(_1512.x < _1511.x, _1512.y < _1511.y, _1512.z < _1511.z);
                        float3 _1515 = abs(mad(_1484, ReflectionCaptureSM5_ReflectionCaptureSM5_BoxScales[_1409].xyz, _1510));
                        bool3 _1526 = bool3(_1512.x > _1510.x, _1512.y > _1510.y, _1512.z > _1510.z);
                        float3 _1528 = abs(mad(_1484, ReflectionCaptureSM5_ReflectionCaptureSM5_BoxScales[_1409].xyz, _1511));
                        _1545 = 1.0f - smoothstep(0.0f, 0.699999988079071044921875f * ReflectionCaptureSM5_ReflectionCaptureSM5_BoxScales[_1409].w, dot(float3(_1513.x ? _1515.x : 0.0f, _1513.y ? _1515.y : 0.0f, _1513.z ? _1515.z : 0.0f), 1.0f.xxx) + dot(float3(_1526.x ? _1528.x : 0.0f, _1526.y ? _1528.y : 0.0f, _1526.z ? _1528.z : 0.0f), 1.0f.xxx));
                        _1546 = (_445 + (_1259 * min(_1496.x, min(_1496.y, _1496.z)))) - (_1477 + ReflectionCaptureSM5_ReflectionCaptureSM5_CaptureOffsetAndAverageBrightness[_1409].xyz);
                    }
                    else
                    {
                        float3 _1445 = _445 - float4(_1419, ReflectionCaptureSM5_ReflectionCaptureSM5_PositionAndRadius[_1409].w).xyz;
                        float _1447 = dot(_1259, _1445);
                        float _1451 = mad(_1447, _1447, -mad(-ReflectionCaptureSM5_ReflectionCaptureSM5_PositionAndRadius[_1409].w, ReflectionCaptureSM5_ReflectionCaptureSM5_PositionAndRadius[_1409].w, dot(_1445, _1445)));
                        float _1466 = 0.0f;
                        float3 _1467 = 0.0f.xxx;
                        [flatten]
                        if (_1451 >= 0.0f)
                        {
                            float _1461 = clamp(mad(2.5f, clamp(_1426 / ReflectionCaptureSM5_ReflectionCaptureSM5_PositionAndRadius[_1409].w, 0.0f, 1.0f), -1.5f), 0.0f, 1.0f);
                            _1466 = mad(-(_1461 * _1461), mad(-2.0f, _1461, 3.0f), 1.0f);
                            _1467 = (_1445 + (_1259 * (sqrt(_1451) - _1447))) - ReflectionCaptureSM5_ReflectionCaptureSM5_CaptureOffsetAndAverageBrightness[_1409].xyz;
                        }
                        else
                        {
                            _1466 = 0.0f;
                            _1467 = _1259;
                        }
                        _1545 = _1466;
                        _1546 = _1467;
                    }
                    float4 _1555 = TranslucentBasePass_Shared_Reflection_ReflectionCubemap.SampleLevel(TranslucentBasePass_Shared_Reflection_ReflectionCubemapSampler, float4(_1546, ReflectionCaptureSM5_ReflectionCaptureSM5_CaptureProperties[_1409].y), _1390);
                    float3 _1558 = _1555.xyz * ReflectionCaptureSM5_ReflectionCaptureSM5_CaptureProperties[_1409].x;
                    float4 _1560 = float4(_1558.x, _1558.y, _1558.z, _1555.w) * _1545;
                    float3 _1565 = _1395.xyz + ((_1560.xyz * _1395.w) * 1.0f);
                    float4 _1566 = float4(_1565.x, _1565.y, _1565.z, _1395.w);
                    _1566.w = _1395.w * (1.0f - _1560.w);
                    float2 _1576 = 0.0f.xx;
                    _1576.x = mad(ReflectionCaptureSM5_ReflectionCaptureSM5_CaptureOffsetAndAverageBrightness[_1409].w * _1545, _1392.y, _1392.x);
                    _1576.y = _1392.y * (1.0f - _1545);
                    _1393 = _1576;
                    _1396 = _1566;
                }
                else
                {
                    _1393 = _1392;
                    _1396 = _1395;
                }
            }
            float3 _1583 = _1395.xyz * View_View_PrecomputedIndirectSpecularColorScale;
            float4 _1584 = float4(_1583.x, _1583.y, _1583.z, _1395.w);
            float _1587 = _1392.x * dot(View_View_PrecomputedIndirectSpecularColorScale, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f));
            float2 _1588 = 0.0f.xx;
            _1588.x = _1587;
            float4 _1630 = 0.0f.xxxx;
            float2 _1631 = 0.0f.xx;
            float3 _1632 = 0.0f.xxx;
            [branch]
            if ((TranslucentBasePass_TranslucentBasePass_Shared_Reflection_SkyLightParameters.y > 0.0f) && true)
            {
                float3 _1609 = TranslucentBasePass_Shared_Reflection_SkyLightCubemap.SampleLevel(TranslucentBasePass_Shared_Reflection_SkyLightCubemapSampler, _1259, (TranslucentBasePass_TranslucentBasePass_Shared_Reflection_SkyLightParameters.x - 1.0f) - _1388).xyz * View_View_SkyLightColor.xyz;
                float4 _1627 = 0.0f.xxxx;
                float2 _1628 = 0.0f.xx;
                float3 _1629 = 0.0f.xxx;
                [flatten]
                if ((TranslucentBasePass_TranslucentBasePass_Shared_Reflection_SkyLightParameters.z < 1.0f) && true)
                {
                    float3 _1622 = _1583.xyz + ((_1609 * _1395.w) * 1.0f);
                    float2 _1626 = 0.0f.xx;
                    _1626.x = mad(View_SkyIrradianceEnvironmentMap[7u].x * dot(View_View_SkyLightColor.xyz, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)), _1392.y, _1587);
                    _1627 = float4(_1622.x, _1622.y, _1622.z, _1395.w);
                    _1628 = _1626;
                    _1629 = 0.0f.xxx;
                }
                else
                {
                    _1627 = _1584;
                    _1628 = _1588;
                    _1629 = _1609 * 1.0f;
                }
                _1630 = _1627;
                _1631 = _1628;
                _1632 = _1629;
            }
            else
            {
                _1630 = _1584;
                _1631 = _1588;
                _1632 = 0.0f.xxx;
            }
            _2563 = ((_1630.xyz * lerp(1.0f, min(dot(_1205, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)) / max(_1631.x, 9.9999997473787516355514526367188e-05f), View_View_ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight.z), smoothstep(0.0f, 1.0f, clamp(mad(_994, View_View_ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight.x, View_View_ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight.y), 0.0f, 1.0f)))).xyz + (_1632 * _1630.w)).xyz;
        }
        _2581 = _2563;
    }
    float3 _2888 = 0.0f.xxx;
    if (((View_View_CameraCut == 0.0f) && (TranslucentBasePass_TranslucentBasePass_SSRQuality > 0)) && _1298)
    {
        float _2606 = min(_448, 1000000.0f);
        float4 _2611 = mul(float4(_1259, 0.0f), View_View_TranslatedWorldToView);
        float _2612 = _2611.z;
        float _2617 = (_2612 < 0.0f) ? min(((-0.949999988079071044921875f) * _448) / _2612, _2606) : _2606;
        float4 _2626 = mul(float4(_445, 1.0f), View_View_TranslatedWorldToClip);
        float4 _2631 = mul(float4(_445 + (_1259 * _2617), 1.0f), View_View_TranslatedWorldToClip);
        float3 _2635 = _2626.xyz * (1.0f / _2626.w);
        float4 _2642 = _2626 + mul(float4(0.0f, 0.0f, _2617, 0.0f), View_View_ViewToClip);
        float3 _2646 = _2642.xyz * (1.0f / _2642.w);
        float3 _2647 = (_2631.xyz * (1.0f / _2631.w)) - _2635;
        float2 _2648 = _2635.xy;
        float _2651 = 0.5f * length(_2647.xy);
        float2 _2660 = 1.0f.xx - (max(abs(_2647.xy + (_2648 * _2651)) - _2651.xx, 0.0f.xx) / abs(_2647.xy));
        float3 _2665 = _2647 * (min(_2660.x, _2660.y) / _2651);
        float _2683 = 0.0f;
        if (asuint(View_View_ViewToClip[3].w) != 0u)
        {
            _2683 = max(0.0f, (_2635.z - _2646.z) * 4.0f);
        }
        else
        {
            _2683 = max(abs(_2665.z), (_2635.z - _2646.z) * 4.0f);
        }
        float _2698 = _2683 * 0.083333335816860198974609375f;
        float3 _2699 = float3((_2665.xy * float2(0.5f, -0.5f)) * TranslucentBasePass_TranslucentBasePass_HZBUvFactorAndInvFactor.xy, _2665.z) * 0.083333335816860198974609375f;
        float3 _2701 = float3(mad(_2648, float2(0.5f, -0.5f), 0.5f.xx) * TranslucentBasePass_TranslucentBasePass_HZBUvFactorAndInvFactor.xy, _2635.z) + (_2699 * (frac(52.98291778564453125f * frac(dot(gl_FragCoord.xy + (float2(32.66500091552734375f, 11.81499958038330078125f) * float(View_View_StateFrameIndexMod8)), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))) - 0.5f));
        bool4 _2703 = bool4(false, false, false, false);
        float4 _2706 = 0.0f.xxxx;
        uint _2712 = 0u;
        float _2714 = 0.0f;
        _2703 = _334;
        _2706 = _333;
        _2712 = 0u;
        _2714 = 0.0f;
        bool4 _2704 = bool4(false, false, false, false);
        float4 _2707 = 0.0f.xxxx;
        bool _2709 = false;
        float _2711 = 0.0f;
        float _2715 = 0.0f;
        bool4 _2774 = bool4(false, false, false, false);
        float4 _2775 = 0.0f.xxxx;
        bool _2776 = false;
        bool _2708 = false;
        float _2710 = 1.0f;
        [loop]
        for (;;)
        {
            if (_2712 < 12u)
            {
                float2 _2719 = _2701.xy;
                float2 _2720 = _2699.xy;
                float _2721 = float(_2712);
                float _2722 = _2721 + 1.0f;
                float _2725 = _2701.z;
                float _2726 = _2699.z;
                float4 _2728 = 0.0f.xxxx;
                _2728.x = mad(_2722, _2726, _2725);
                float _2729 = _2721 + 2.0f;
                _2728.y = mad(_2729, _2726, _2725);
                float _2734 = _2721 + 3.0f;
                _2728.z = mad(_2734, _2726, _2725);
                float _2739 = _2721 + 4.0f;
                _2728.w = mad(_2739, _2726, _2725);
                float _2744 = mad(0.666666686534881591796875f, _994, _2710);
                _2711 = mad(0.666666686534881591796875f, _994, _2744);
                float4 _2748 = 0.0f.xxxx;
                _2748.x = TranslucentBasePass_HZBTexture.SampleLevel(TranslucentBasePass_HZBSampler, _2719 + (_2720 * _2722), _2710).x;
                _2748.y = TranslucentBasePass_HZBTexture.SampleLevel(TranslucentBasePass_HZBSampler, _2719 + (_2720 * _2729), _2710).x;
                _2748.z = TranslucentBasePass_HZBTexture.SampleLevel(TranslucentBasePass_HZBSampler, _2719 + (_2720 * _2734), _2744).x;
                _2748.w = TranslucentBasePass_HZBTexture.SampleLevel(TranslucentBasePass_HZBSampler, _2719 + (_2720 * _2739), _2744).x;
                _2707 = _2728 - _2748;
                float4 _2761 = _2698.xxxx;
                float4 _2763 = abs(_2707 + _2761);
                _2704 = bool4(_2763.x < _2761.x, _2763.y < _2761.y, _2763.z < _2761.z, _2763.w < _2761.w);
                _2709 = (((_2708 || _2704.x) || _2704.y) || _2704.z) || _2704.w;
                [branch]
                if (_2709 || false)
                {
                    _2774 = _2704;
                    _2775 = _2707;
                    _2776 = _2709;
                    break;
                }
                _2715 = _2707.w;
                _2703 = _2704;
                _2706 = _2707;
                _2708 = _2709;
                _2710 = _2711;
                _2712 += 4u;
                _2714 = _2715;
                continue;
            }
            else
            {
                _2774 = _2703;
                _2775 = _2706;
                _2776 = _2708;
                break;
            }
        }
        float3 _2815 = 0.0f.xxx;
        [branch]
        if (_2776)
        {
            float _2789 = 0.0f;
            [flatten]
            if (_2774.z)
            {
                _2789 = _2775.y;
            }
            else
            {
                _2789 = _2775.z;
            }
            float _2797 = 0.0f;
            float _2798 = 0.0f;
            [flatten]
            if (_2774.y)
            {
                _2797 = _2775.y;
                _2798 = _2775.x;
            }
            else
            {
                _2797 = _2774.z ? _2775.z : _2775.w;
                _2798 = _2789;
            }
            float _2804 = 0.0f;
            [flatten]
            if (_2774.x)
            {
                _2804 = _2775.x;
            }
            else
            {
                _2804 = _2797;
            }
            float _2805 = _2774.x ? _2714 : _2798;
            _2815 = _2701 + (_2699 * (((_2774.x ? 0.0f : (_2774.y ? 1.0f : (_2774.z ? 2.0f : 3.0f))) + float(_2712)) + clamp(_2805 / (_2805 - _2804), 0.0f, 1.0f)));
        }
        else
        {
            _2815 = _2701 + (_2699 * float(_2712));
        }
        float3 _2887 = 0.0f.xxx;
        [branch]
        if (_2776)
        {
            float2 _2829 = (mad(mad((_2815.xy * TranslucentBasePass_TranslucentBasePass_HZBUvFactorAndInvFactor.zw).xy, float2(2.0f, -2.0f), float2(-1.0f, 1.0f)).xy, View_View_ScreenPositionScaleBias.xy, View_View_ScreenPositionScaleBias.wz).xy - View_View_ScreenPositionScaleBias.wz) / View_View_ScreenPositionScaleBias.xy;
            float4 _2836 = mul(float4(_2829, _2815.z, 1.0f), View_View_ClipToPrevClip);
            float2 _2840 = _2836.xy / _2836.w.xx;
            float2 _2847 = clamp((abs(_2829) * 5.0f) - 4.0f.xx, 0.0f.xx, 1.0f.xx);
            float2 _2854 = clamp((abs(_2840) * 5.0f) - 4.0f.xx, 0.0f.xx, 1.0f.xx);
            float3 _2871 = -min(-TranslucentBasePass_PrevSceneColor.SampleLevel(TranslucentBasePass_PrevSceneColorSampler, clamp(mad(_2840, TranslucentBasePass_TranslucentBasePass_PrevScreenPositionScaleBias.xy, TranslucentBasePass_TranslucentBasePass_PrevScreenPositionScaleBias.zw), TranslucentBasePass_TranslucentBasePass_PrevSceneColorBilinearUVMin, TranslucentBasePass_TranslucentBasePass_PrevSceneColorBilinearUVMax), 0.0f).xyz, 0.0f.xxx);
            float4 _2872 = float4(_2871.x, _2871.y, _2871.z, _333.w);
            _2872.w = 1.0f;
            float4 _2877 = _2872 * (min(clamp(1.0f - dot(_2847, _2847), 0.0f, 1.0f), clamp(1.0f - dot(_2854, _2854), 0.0f, 1.0f)) * clamp(mad(-6.599999904632568359375f, _994, 2.0f), 0.0f, 1.0f));
            _2887 = (_2581 * (1.0f - _2877.w)) + (_2877.xyz * TranslucentBasePass_TranslucentBasePass_PrevSceneColorPreExposureInv).xyz;
        }
        else
        {
            _2887 = _2581;
        }
        _2888 = _2887;
    }
    else
    {
        _2888 = _2581;
    }
    float3 _3013 = 0.0f.xxx;
    [branch]
    if (abs(dot(TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_ReflectionPlane.xyz, 1.0f.xxx)) > 9.9999997473787516355514526367188e-05f)
    {
        float3 _2914 = _445 - TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionOrigin.xyz;
        float _2947 = 1.0f - clamp((_994 - 0.20000000298023223876953125f) * 10.0f, 0.0f, 1.0f);
        float _2949 = (((1.0f - clamp(mad(abs(dot(TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_ReflectionPlane, float4(_445, -1.0f))), TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionParameters.x, TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionParameters.y), 0.0f, 1.0f)) * (clamp((TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionXAxis.w - abs(dot(_2914, TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionXAxis.xyz))) * TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionParameters.x, 0.0f, 1.0f) * clamp((TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionYAxis.w - abs(dot(_2914, TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionYAxis.xyz))) * TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionParameters.x, 0.0f, 1.0f))) * clamp(mad(dot(TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_ReflectionPlane.xyz, _524), TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionParameters2.x, TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionParameters2.y), 0.0f, 1.0f)) * _2947;
        float4 _3007 = 0.0f.xxxx;
        [branch]
        if (_2949 > 0.0f)
        {
            float4 _2977 = mul(float4(mul(float4(_445 + (reflect(reflect(normalize(_445 - View_View_TranslatedWorldCameraOrigin), -TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_ReflectionPlane.xyz), mul(_524, TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_InverseTransposeMirrorMatrix).xyz) * TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionParameters.z), 1.0f), View_View_TranslatedWorldToView).xyz, 1.0f), TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_ProjectionWithExtraFOV[View_View_StereoPassIndex]);
            uint _2984 = 0u;
            if (TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_bIsStereo != 0u)
            {
                _2984 = uint(View_View_StereoPassIndex);
            }
            else
            {
                _2984 = 0u;
            }
            float4 _3000 = TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionTexture.SampleLevel(TranslucentBasePass_Shared_Reflection_ReflectionCubemapSampler, mad(clamp(_2977.xy / _2977.w.xx, -TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionScreenBound, TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionScreenBound), TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionScreenScaleBias[_2984].xy, TranslucentBasePass_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionScreenScaleBias[_2984].zw), 0.0f);
            float3 _3004 = _3000.xyz * _2947;
            float4 _3005 = float4(_3004.x, _3004.y, _3004.z, 0.0f.xxxx.w);
            _3005.w = _2949 * _3000.w;
            _3007 = _3005;
        }
        else
        {
            _3007 = 0.0f.xxxx;
        }
        _3013 = _3007.xyz + (_2888 * (1.0f - _3007.w));
    }
    else
    {
        _3013 = _2888;
    }
    float4 _3015 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _994) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
    float _3016 = _3015.x;
    float2 _3025 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * mad(min(_3016 * _3016, exp2((-9.27999973297119140625f) * clamp(dot(_524, _462), 0.0f, 1.0f))), _3016, _3015.y)) + _3015.zw;
    bool _3052 = TranslucentBasePass_TranslucentBasePass_Shared_Fog_ApplyVolumetricFog > 0.0f;
    float4 _3135 = 0.0f.xxxx;
    if (_3052)
    {
        float4 _3070 = mul(((float4(View_View_ViewTilePosition, 0.0f) + float4(_416, 0.0f)) * 2097152.0f) + float4(_446, 1.0f), View_View_RelativeWorldToClip);
        float _3071 = _3070.w;
        float4 _3117 = 0.0f.xxxx;
        float _3118 = 0.0f;
        if (_3052)
        {
            float4 _3111 = TranslucentBasePass_Shared_Fog_IntegratedLightScattering.SampleLevel(View_SharedBilinearClampedSampler, min(float3(mad((_3070.xy / _3071.xx).xy, float2(0.5f, -0.5f), 0.5f.xx), (log2(mad(_3071, View_View_VolumetricFogGridZParams.x, View_View_VolumetricFogGridZParams.y)) * View_View_VolumetricFogGridZParams.z) * View_View_VolumetricFogInvGridSize.z) * float3(View_View_VolumetricFogScreenToResourceUV, 1.0f), float3(View_View_VolumetricFogUVMax, 1.0f)), 0.0f);
            float3 _3115 = _3111.xyz * View_View_OneOverPreExposure;
            _3117 = float4(_3115.x, _3115.y, _3115.z, _3111.w);
            _3118 = TranslucentBasePass_TranslucentBasePass_Shared_Fog_VolumetricFogStartDistance;
        }
        else
        {
            _3117 = float4(0.0f, 0.0f, 0.0f, 1.0f);
            _3118 = 0.0f;
        }
        float4 _3123 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _3117, clamp((_448 - _3118) * 100000000.0f, 0.0f, 1.0f).xxxx);
        float _3126 = _3123.w;
        _3135 = float4(_3123.xyz + (in_var_TEXCOORD7.xyz * _3126), _3126 * in_var_TEXCOORD7.w);
    }
    else
    {
        _3135 = in_var_TEXCOORD7;
    }
    float3 _3139 = _445 - View_View_TranslucencyLightingVolumeMin[0].xyz;
    float3 _3143 = _3139 * View_View_TranslucencyLightingVolumeInvSize[0].xyz;
    float3 _3151 = (_445 - View_View_TranslucencyLightingVolumeMin[1].xyz) * View_View_TranslucencyLightingVolumeInvSize[1].xyz;
    float3 _3156 = clamp((0.5f.xxx - abs(mad(_3139, View_View_TranslucencyLightingVolumeInvSize[0].xyz, (-0.5f).xxx))) * 6.0f, 0.0f.xxx, 1.0f.xxx);
    float _3161 = (_3156.x * _3156.y) * _3156.z;
    float4 _3170 = lerp(TranslucentBasePass_TranslucencyLightingVolumeAmbientOuter.SampleLevel(View_SharedBilinearClampedSampler, _3151, 0.0f), TranslucentBasePass_TranslucencyLightingVolumeAmbientInner.SampleLevel(View_SharedBilinearClampedSampler, _3143, 0.0f), _3161.xxxx);
    float3 _3181 = lerp(TranslucentBasePass_TranslucencyLightingVolumeDirectionalOuter.SampleLevel(View_SharedBilinearClampedSampler, _3151, 0.0f).xyz, TranslucentBasePass_TranslucencyLightingVolumeDirectionalInner.SampleLevel(View_SharedBilinearClampedSampler, _3143, 0.0f).xyz, _3161.xxx) * 1.0f;
    float4 _3183 = 0.0f.xxxx;
    _3183.x = _3170.x;
    float4 _3185 = 0.0f.xxxx;
    _3185.x = _3170.y;
    float4 _3187 = 0.0f.xxxx;
    _3187.x = _3170.z;
    float3 _3188 = _3170.xyz;
    float3 _3192 = _3188 / (dot(_3188, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)) + 9.9999997473787516355514526367188e-06f).xxx;
    float3 _3194 = _3181 * _3192.x;
    float3 _3197 = _3181 * _3192.y;
    float3 _3200 = _3181 * _3192.z;
    float4 _3203 = 0.0f.xxxx;
    _3203.y = (-0.48860299587249755859375f) * _1057;
    _3203.z = 0.48860299587249755859375f * _1058;
    _3203.w = (-0.48860299587249755859375f) * _1059;
    _3203.x = 0.886227548122406005859375f;
    float3 _3210 = _3203.yzw * 2.094395160675048828125f;
    float4 _3211 = float4(_3203.x, _3210.x, _3210.y, _3210.z);
    float3 _3213 = 0.0f.xxx;
    _3213.x = dot(float4(_3183.x, _3194.x, _3194.y, _3194.z), _3211);
    _3213.y = dot(float4(_3185.x, _3197.x, _3197.y, _3197.z), _3211);
    _3213.z = dot(float4(_3187.x, _3200.x, _3200.y, _3200.z), _3211);
    float3 _3231 = max(lerp(0.0f.xxx, Material_Material_PreshaderBuffer[2].yzw, Material_Material_PreshaderBuffer[2].x.xxx), 0.0f.xxx);
    float _3317 = 0.0f;
    float3 _3318 = 0.0f.xxx;
    [branch]
    if (View_View_OutOfBoundsMask > 0.0f)
    {
        uint _3237 = in_var_PRIMITIVE_ID * 41u;
        uint _3258 = _3237 + 31u;
        float3 _3267 = abs(((View_View_ViewTilePosition - Scene_GPUScene_GPUScenePrimitiveSceneData[_3237 + 1u].xyz) * 2097152.0f) + (_446 - Scene_GPUScene_GPUScenePrimitiveSceneData[_3237 + 18u].xyz));
        float3 _3268 = float3(Scene_GPUScene_GPUScenePrimitiveSceneData[_3237 + 17u].w, Scene_GPUScene_GPUScenePrimitiveSceneData[_3237 + 24u].w, Scene_GPUScene_GPUScenePrimitiveSceneData[_3237 + 25u].w) + 1.0f.xxx;
        float _3315 = 0.0f;
        float3 _3316 = 0.0f.xxx;
        if (any(bool3(_3267.x > _3268.x, _3267.y > _3268.y, _3267.z > _3268.z)))
        {
            float3 _3295 = View_View_ViewTilePosition * 0.57700002193450927734375f.xxx;
            float3 _3296 = _446 * 0.57700002193450927734375f.xxx;
            float3 _3311 = frac(mad((_3296.x + _3296.y) + _3296.z, 0.00200000009499490261077880859375f, frac(((_3295.x + _3295.y) + _3295.z) * 4194.30419921875f))).xxx;
            _3315 = 1.0f;
            _3316 = lerp(float3(1.0f, 1.0f, 0.0f), float3(0.0f, 1.0f, 1.0f), float3(bool3(_3311.x > 0.5f.xxx.x, _3311.y > 0.5f.xxx.y, _3311.z > 0.5f.xxx.z)));
        }
        else
        {
            float _3293 = 0.0f;
            float3 _3294 = 0.0f.xxx;
            if (Scene_GPUScene_GPUScenePrimitiveSceneData[_3258].x > 0.0f)
            {
                float3 _3278 = abs(_445 - in_var_TEXCOORD9);
                float _3288 = 1.0f - clamp(abs(max(_3278.x, max(_3278.y, _3278.z)) - Scene_GPUScene_GPUScenePrimitiveSceneData[_3258].x) * 20.0f, 0.0f, 1.0f);
                _3293 = float(int(sign(_3288)));
                _3294 = float3(1.0f, 0.0f, 1.0f) * _3288;
            }
            else
            {
                _3293 = _995;
                _3294 = _3231;
            }
            _3315 = _3293;
            _3316 = _3294;
        }
        _3317 = _3315;
        _3318 = _3316;
    }
    else
    {
        _3317 = _995;
        _3318 = _3231;
    }
    float4 _3328 = float4(((mad(_1205 * _1023, max(1.0f.xxx, ((((((_988 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * 1.0f) + ((_988 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * 1.0f) + ((_988 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * 1.0f), lerp(mad(_1023, float4(max(0.0f.xxx, _3213), _330).xyz, ((_3013 * ((_1025 * _3025.x) + (clamp(50.0f * _1025.y, 0.0f, 1.0f) * _3025.y).xxx)) * 1.0f) * max(1.0f.xxx, ((((((_1025 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * 1.0f) + ((_1025 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * 1.0f) + ((_1025 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * 1.0f)), _1023 + (_1025 * 0.449999988079071044921875f), View_View_UnlitViewmodeMask.xxx)) + _3318) * _3135.w) + _3135.xyz, _3317);
    float3 _3334 = min((_3328.xyz * View_View_PreExposure).xyz, 32256.0f.xxx);
    out_var_SV_Target0 = float4(_3334.x, _3334.y, _3334.z, _3328.w);
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
