// Made with Amplify Shader Editor v1.9.1.8
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "ALP/Surface Detail"
{
	Properties
	{
		[HideInInspector] _EmissionColor("Emission Color", Color) = (1,1,1,1)
		[HideInInspector] _AlphaCutoff("Alpha Cutoff ", Range(0, 1)) = 0.5
		[DE_DrawerCategory(SURFACE OPTIONS,true,_Cull,0,0)]_CATEGORY_SURFACEOPTIONS("CATEGORY_SURFACEOPTIONS", Float) = 1
		[Enum(Front,2,Back,1,Both,0)]_Cull("Render Face", Int) = 2
		[DE_DrawerSpace(10)]_SPACE_SURFACEOPTIONS("SPACE_SURFACEOPTIONS", Float) = 0
		[DE_DrawerCategory(SURFACE INPUTS,true,_MainTex,0,0)]_CATEGORY_SURFACEINPUTS("CATEGORY_SURFACE INPUTS", Float) = 1
		_BaseColor("Base Color", Color) = (1,1,1,0)
		_Brightness("Brightness", Range( 0 , 2)) = 1
		_BaseColorSaturation("Saturation", Range( 0 , 1)) = 0
		[DE_DrawerTextureSingleLine]_MainTex("Base Map", 2D) = "white" {}
		[DE_DrawerTextureSingleLine]_MetallicGlossMap("Metallic Map", 2D) = "white" {}
		[DE_DrawerTextureSingleLine]_OcclusionMap("Occlusion Map", 2D) = "white" {}
		[DE_DrawerTextureSingleLine]_SmoothnessMap("Smoothness Map", 2D) = "white" {}
		[DE_DrawerTilingOffset]_MainUVs("Main UVs", Vector) = (1,1,0,0)
		[Normal][DE_DrawerTextureSingleLine]_BumpMap("Normal Map", 2D) = "bump" {}
		_NormalStrength("Normal Strength", Float) = 1
		[DE_DrawerSpace(10)]_SPACE_SURFACEINPUTS("SPACE_SURFACE INPUTS", Float) = 0
		[DE_DrawerCategory(METALLIC,true,_MetallicStrength,0,0)]_CATEGORY_METALLIC("CATEGORY_METALLIC", Float) = 0
		_MetallicStrength("Metallic Strength", Range( 0 , 1)) = 0
		[DE_DrawerSpace(10)]_SPACE_METALLIC("SPACE_METALLIC", Float) = 0
		[DE_DrawerCategory(OCCLUSION,true,_OcclusionStrengthAORemapMin,0,0)]_CATEGORY_OCCLUSION("CATEGORY_OCCLUSION", Float) = 0
		[DE_DrawerFloatEnum(Map _Baked)]_OcclusionSourceBaked("Occlusion Source", Float) = 0
		[DE_DrawerToggleNoKeyword]_OcclusionSourceInverted("Occlusion Source Inverted", Float) = 0
		[DE_DrawerSliderSimple(_OcclusionStrengthAORemapMin, _OcclusionStrengthAORemapMax,0, 1)]_OcclusionStrengthAO("Occlusion Strength", Vector) = (0,0,0,0)
		[HideInInspector]_OcclusionStrengthAORemapMin("OcclusionStrengthAORemapMin", Float) = 0
		[HideInInspector]_OcclusionStrengthAORemapMax("Occlusion StrengthAORemapMax", Float) = 0
		[DE_DrawerSpace(10)]_SPACE_OCCLUSION("SPACE_OCCLUSION", Float) = 0
		[DE_DrawerCategory(SMOOTHNESS,true,_SmoothnessStrengthRemapMin,0,0)]_CATEGORY_SMOOTHNESS("CATEGORY_SMOOTHNESS", Float) = 0
		[DE_DrawerFloatEnum(Smoothness _Roughness)]_SmoothnessSource("Smoothness Source", Float) = 1
		[DE_DrawerSliderSimple(_SmoothnessStrengthRemapMin, _SmoothnessStrengthRemapMax,0, 1)]_SmoothnessStrength("Smoothness Strength", Vector) = (0,0,0,0)
		[HideInInspector]_SmoothnessStrengthRemapMin("Smoothness StrengthRemapMin", Float) = 0
		[HideInInspector]_SmoothnessStrengthRemapMax("Smoothness StrengthRemapMax", Float) = 0
		[DE_DrawerToggleNoKeyword]_SmoothnessFresnelEnable("Enable Fresnel", Float) = 0
		_SmoothnessFresnelScale("Fresnel Scale", Range( 0 , 3)) = 1.1
		_SmoothnessFresnelPower("Fresnel Power", Range( 0 , 20)) = 10
		[DE_DrawerSpace(10)]_SPACE_SMOOTHNESS("SPACE_SMOOTHNESS", Float) = 0
		[DE_DrawerCategory(DETAIL MAPPING,true,_DetailEnable,0,0)]_CATEGORY_DETAILMAPPING("CATEGORY_DETAIL MAPPING", Float) = 0
		[DE_DrawerToggleLeft]_DetailEnable("ENABLE DETAIL MAP", Float) = 0
		[HDR]_DetailColor("Detail Color", Color) = (1,1,1,0)
		_DetailBrightness("Brightness", Range( 0 , 2)) = 1
		_DetailSaturation("Saturation", Range( 0 , 1)) = 0
		[DE_DrawerTextureSingleLine]_DetailColorMap("Detail Map", 2D) = "white" {}
		[DE_DrawerTilingOffset]_DetailUVs("Detail UVs", Vector) = (1,1,0,0)
		[DE_DrawerFloatEnum(UV0 _UV1 _UV2 _UV3)]_DetailUVMode("Detail UV Mode", Float) = 0
		_DetailUVRotation("Detail UV Rotation", Float) = 0
		[Normal][DE_DrawerTextureSingleLine]_DetailNormalMap("Normal Map", 2D) = "bump" {}
		_DetailNormalStrength("Normal Strength", Float) = 1
		[DE_DrawerFloatEnum(Off _Red _Green _Blue _Alpha)]_DetailBlendVertexColor("Blend Vertex Color", Int) = 0
		[DE_DrawerFloatEnum(BaseColor _Detail)]_DetailBlendSource("Blend Source", Float) = 1
		_DetailBlendStrength("Blend Strength", Range( 0 , 3)) = 1
		_DetailBlendHeight("Blend Height", Range( 0.001 , 3)) = 0.5
		_DetailBlendSmooth("Blend Smooth", Range( 0.001 , 1)) = 0.5
		[DE_DrawerToggleLeft][Space(10)]_DetailMaskEnable("ENABLE DETAIL MAP MASK", Float) = 1
		[DE_DrawerToggleNoKeyword]_DetailMaskIsInverted("Detail Mask Is Inverted", Float) = 0
		[DE_DrawerTextureSingleLine]_DetailMaskMap("Detail Mask", 2D) = "white" {}
		[DE_DrawerTilingOffset]_DetailMaskUVs("Detail Mask UVs", Vector) = (1,1,0,0)
		_DetailMaskUVRotation("Detail Mask Rotation", Float) = 0
		_DetailMaskBlendStrength("Detail Mask Blend Strength", Range( 0.001 , 1)) = 1
		_DetailMaskBlendHardness("Detail Mask Blend Hardness", Range( 0.001 , 5)) = 1
		_DetailMaskBlendFalloff("Detail Mask Blend Falloff", Range( 0.001 , 0.999)) = 1
		[DE_DrawerSpace(10)]_SPACE_DETAIL("SPACE_DETAIL", Float) = 0
		[DE_DrawerCategory(DETAIL MAPPING SECONDARY,true,_DetailSecondaryEnable,0,0)]_CATEGORY_DETAILMAPPINGSECONDARY("CATEGORY_DETAIL MAPPING SECONDARY", Float) = 0
		[DE_DrawerToggleLeft]_DetailSecondaryEnable("ENABLE DETAIL MAP SECONDARY", Float) = 0
		[HDR]_DetailSecondaryColor("Detail Color", Color) = (1,1,1,0)
		_DetailSecondaryBrightness("Brightness", Range( 0 , 2)) = 1
		_DetailSecondarySaturation("Saturation", Range( 0 , 1)) = 0
		[DE_DrawerTextureSingleLine]_DetailSecondaryColorMap("Detail Map", 2D) = "white" {}
		[DE_DrawerTilingOffset]_DetailSecondaryUVs("Detail Secondary UVs", Vector) = (1,1,0,0)
		[DE_DrawerFloatEnum(UV0 _UV1 _UV2 _UV3)]_DetailSecondaryUVMode("Detail Secondary UV Mode", Float) = 0
		_DetailSecondaryUVRotation("Detail Secondary UV Rotation", Float) = 0
		[Normal][DE_DrawerTextureSingleLine]_DetailSecondaryNormalMap("Normal Map", 2D) = "bump" {}
		_DetailSecondaryNormalStrength("Normal Strength", Float) = 1
		[DE_DrawerFloatEnum(Off _Red _Green _Blue _Alpha)]_DetailSecondaryBlendVertexColor("Blend Vertex Color", Int) = 0
		[DE_DrawerFloatEnum(BaseColor _Detail)]_DetailSecondaryBlendSource("Blend Source", Float) = 1
		_DetailSecondaryBlendStrength("Blend Strength", Range( 0.001 , 3)) = 1
		_DetailSecondaryBlendHeight("Blend Height", Range( 0.001 , 3)) = 0.5
		_DetailSecondaryBlendSmooth("Blend Smooth", Range( 0.001 , 1)) = 0.5
		[Header(BLEND WEIGHT)][Space(5)]_DetailSecondaryBlendWeightLayer1("Blend Weight Detail", Range( 0 , 1)) = 0.5
		_DetailSecondaryBlendWeightLayer2("Blend Weight Detail Secondary", Range( 0 , 1)) = 0.5
		[DE_DrawerToggleLeft][Space(10)]_DetailSecondaryMaskEnable("ENABLE DETAIL MAP SECONDARY MASK", Float) = 1
		[DE_DrawerToggleNoKeyword]_DetailSecondaryMaskIsInverted("Detail Mask Is Inverted", Float) = 0
		[DE_DrawerTextureSingleLine]_DetailSecondaryMaskMap("Detail Mask", 2D) = "white" {}
		[DE_DrawerTilingOffset]_DetailSecondaryMaskUVs("Detail Mask UVs", Vector) = (1,1,0,0)
		_DetailSecondaryMaskUVRotation("Detail Mask Rotation", Float) = 0
		_DetailSecondaryMaskBlendStrength("Detail Mask Blend Strength", Range( 0.001 , 1)) = 0.5
		_DetailSecondaryMaskBlendHardness("Detail Mask Blend Hardness", Range( 0.001 , 5)) = 1.35
		_DetailSecondaryMaskBlendFalloff("Detail Mask Blend Falloff", Range( 0.001 , 0.999)) = 0.5
		[ASEEnd][DE_DrawerSpace(10)]_SPACE_DETAILSECONDARY("SPACE_DETAILSECONDARY", Float) = 0


		//_TransmissionShadow( "Transmission Shadow", Range( 0, 1 ) ) = 0.5
		//_TransStrength( "Trans Strength", Range( 0, 50 ) ) = 1
		//_TransNormal( "Trans Normal Distortion", Range( 0, 1 ) ) = 0.5
		//_TransScattering( "Trans Scattering", Range( 1, 50 ) ) = 2
		//_TransDirect( "Trans Direct", Range( 0, 1 ) ) = 0.9
		//_TransAmbient( "Trans Ambient", Range( 0, 1 ) ) = 0.1
		//_TransShadow( "Trans Shadow", Range( 0, 1 ) ) = 0.5
		//_TessPhongStrength( "Tess Phong Strength", Range( 0, 1 ) ) = 0.5
		//_TessValue( "Tess Max Tessellation", Range( 1, 32 ) ) = 16
		//_TessMin( "Tess Min Distance", Float ) = 10
		//_TessMax( "Tess Max Distance", Float ) = 25
		//_TessEdgeLength ( "Tess Edge length", Range( 2, 50 ) ) = 16
		//_TessMaxDisp( "Tess Max Displacement", Float ) = 25

		[HideInInspector][ToggleOff] _SpecularHighlights("Specular Highlights", Float) = 1.0
		[HideInInspector][ToggleOff] _EnvironmentReflections("Environment Reflections", Float) = 1.0
		[HideInInspector][ToggleOff] _ReceiveShadows("Receive Shadows", Float) = 1.0

		[HideInInspector] _QueueOffset("_QueueOffset", Float) = 0
        [HideInInspector] _QueueControl("_QueueControl", Float) = -1

        [HideInInspector][NoScaleOffset] unity_Lightmaps("unity_Lightmaps", 2DArray) = "" {}
        [HideInInspector][NoScaleOffset] unity_LightmapsInd("unity_LightmapsInd", 2DArray) = "" {}
        [HideInInspector][NoScaleOffset] unity_ShadowMasks("unity_ShadowMasks", 2DArray) = "" {}
	}

	SubShader
	{
		LOD 0

		

		Tags { "RenderPipeline"="UniversalPipeline" "RenderType"="Opaque" "Queue"="Geometry" "UniversalMaterialType"="Lit" }

		Cull [_Cull]
		ZWrite On
		ZTest LEqual
		Offset 0 , 0
		AlphaToMask Off

		

		HLSLINCLUDE
		#pragma target 3.5
		#pragma prefer_hlslcc gles
		// ensure rendering platforms toggle list is visible

		#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
		#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Filtering.hlsl"

		#ifndef ASE_TESS_FUNCS
		#define ASE_TESS_FUNCS
		float4 FixedTess( float tessValue )
		{
			return tessValue;
		}

		float CalcDistanceTessFactor (float4 vertex, float minDist, float maxDist, float tess, float4x4 o2w, float3 cameraPos )
		{
			float3 wpos = mul(o2w,vertex).xyz;
			float dist = distance (wpos, cameraPos);
			float f = clamp(1.0 - (dist - minDist) / (maxDist - minDist), 0.01, 1.0) * tess;
			return f;
		}

		float4 CalcTriEdgeTessFactors (float3 triVertexFactors)
		{
			float4 tess;
			tess.x = 0.5 * (triVertexFactors.y + triVertexFactors.z);
			tess.y = 0.5 * (triVertexFactors.x + triVertexFactors.z);
			tess.z = 0.5 * (triVertexFactors.x + triVertexFactors.y);
			tess.w = (triVertexFactors.x + triVertexFactors.y + triVertexFactors.z) / 3.0f;
			return tess;
		}

		float CalcEdgeTessFactor (float3 wpos0, float3 wpos1, float edgeLen, float3 cameraPos, float4 scParams )
		{
			float dist = distance (0.5 * (wpos0+wpos1), cameraPos);
			float len = distance(wpos0, wpos1);
			float f = max(len * scParams.y / (edgeLen * dist), 1.0);
			return f;
		}

		float DistanceFromPlane (float3 pos, float4 plane)
		{
			float d = dot (float4(pos,1.0f), plane);
			return d;
		}

		bool WorldViewFrustumCull (float3 wpos0, float3 wpos1, float3 wpos2, float cullEps, float4 planes[6] )
		{
			float4 planeTest;
			planeTest.x = (( DistanceFromPlane(wpos0, planes[0]) > -cullEps) ? 1.0f : 0.0f ) +
							(( DistanceFromPlane(wpos1, planes[0]) > -cullEps) ? 1.0f : 0.0f ) +
							(( DistanceFromPlane(wpos2, planes[0]) > -cullEps) ? 1.0f : 0.0f );
			planeTest.y = (( DistanceFromPlane(wpos0, planes[1]) > -cullEps) ? 1.0f : 0.0f ) +
							(( DistanceFromPlane(wpos1, planes[1]) > -cullEps) ? 1.0f : 0.0f ) +
							(( DistanceFromPlane(wpos2, planes[1]) > -cullEps) ? 1.0f : 0.0f );
			planeTest.z = (( DistanceFromPlane(wpos0, planes[2]) > -cullEps) ? 1.0f : 0.0f ) +
							(( DistanceFromPlane(wpos1, planes[2]) > -cullEps) ? 1.0f : 0.0f ) +
							(( DistanceFromPlane(wpos2, planes[2]) > -cullEps) ? 1.0f : 0.0f );
			planeTest.w = (( DistanceFromPlane(wpos0, planes[3]) > -cullEps) ? 1.0f : 0.0f ) +
							(( DistanceFromPlane(wpos1, planes[3]) > -cullEps) ? 1.0f : 0.0f ) +
							(( DistanceFromPlane(wpos2, planes[3]) > -cullEps) ? 1.0f : 0.0f );
			return !all (planeTest);
		}

		float4 DistanceBasedTess( float4 v0, float4 v1, float4 v2, float tess, float minDist, float maxDist, float4x4 o2w, float3 cameraPos )
		{
			float3 f;
			f.x = CalcDistanceTessFactor (v0,minDist,maxDist,tess,o2w,cameraPos);
			f.y = CalcDistanceTessFactor (v1,minDist,maxDist,tess,o2w,cameraPos);
			f.z = CalcDistanceTessFactor (v2,minDist,maxDist,tess,o2w,cameraPos);

			return CalcTriEdgeTessFactors (f);
		}

		float4 EdgeLengthBasedTess( float4 v0, float4 v1, float4 v2, float edgeLength, float4x4 o2w, float3 cameraPos, float4 scParams )
		{
			float3 pos0 = mul(o2w,v0).xyz;
			float3 pos1 = mul(o2w,v1).xyz;
			float3 pos2 = mul(o2w,v2).xyz;
			float4 tess;
			tess.x = CalcEdgeTessFactor (pos1, pos2, edgeLength, cameraPos, scParams);
			tess.y = CalcEdgeTessFactor (pos2, pos0, edgeLength, cameraPos, scParams);
			tess.z = CalcEdgeTessFactor (pos0, pos1, edgeLength, cameraPos, scParams);
			tess.w = (tess.x + tess.y + tess.z) / 3.0f;
			return tess;
		}

		float4 EdgeLengthBasedTessCull( float4 v0, float4 v1, float4 v2, float edgeLength, float maxDisplacement, float4x4 o2w, float3 cameraPos, float4 scParams, float4 planes[6] )
		{
			float3 pos0 = mul(o2w,v0).xyz;
			float3 pos1 = mul(o2w,v1).xyz;
			float3 pos2 = mul(o2w,v2).xyz;
			float4 tess;

			if (WorldViewFrustumCull(pos0, pos1, pos2, maxDisplacement, planes))
			{
				tess = 0.0f;
			}
			else
			{
				tess.x = CalcEdgeTessFactor (pos1, pos2, edgeLength, cameraPos, scParams);
				tess.y = CalcEdgeTessFactor (pos2, pos0, edgeLength, cameraPos, scParams);
				tess.z = CalcEdgeTessFactor (pos0, pos1, edgeLength, cameraPos, scParams);
				tess.w = (tess.x + tess.y + tess.z) / 3.0f;
			}
			return tess;
		}
		#endif //ASE_TESS_FUNCS
		ENDHLSL

		
		Pass
		{
			
			Name "Forward"
			Tags { "LightMode"="UniversalForward" }

			Blend One Zero, One Zero
			ZWrite On
			ZTest LEqual
			Offset 0 , 0
			ColorMask RGBA

			

			HLSLPROGRAM

			#define _NORMAL_DROPOFF_TS 1
			#pragma multi_compile_instancing
			#pragma instancing_options renderinglayer
			#pragma multi_compile_fragment _ LOD_FADE_CROSSFADE
			#pragma multi_compile_fog
			#define ASE_FOG 1
			#define _NORMALMAP 1
			#define ASE_SRP_VERSION 120112
			#ifdef UNITY_COLORSPACE_GAMMA//ASE Color Space Def
			#define unity_ColorSpaceDouble half4(2.0, 2.0, 2.0, 2.0)//ASE Color Space Def
			#else // Linear values//ASE Color Space Def
			#define unity_ColorSpaceDouble half4(4.59479380, 4.59479380, 4.59479380, 2.0)//ASE Color Space Def
			#endif//ASE Color Space Def
			#define ASE_USING_SAMPLING_MACROS 1


			#pragma shader_feature_local _RECEIVE_SHADOWS_OFF
			#pragma shader_feature_local_fragment _SPECULARHIGHLIGHTS_OFF
			#pragma shader_feature_local_fragment _ENVIRONMENTREFLECTIONS_OFF

			#pragma multi_compile _ _MAIN_LIGHT_SHADOWS _MAIN_LIGHT_SHADOWS_CASCADE _MAIN_LIGHT_SHADOWS_SCREEN
			#pragma multi_compile _ _ADDITIONAL_LIGHTS_VERTEX _ADDITIONAL_LIGHTS
			#pragma multi_compile_fragment _ _ADDITIONAL_LIGHT_SHADOWS
			#pragma multi_compile_fragment _ _REFLECTION_PROBE_BLENDING
			#pragma multi_compile_fragment _ _REFLECTION_PROBE_BOX_PROJECTION
			#pragma multi_compile_fragment _ _SHADOWS_SOFT
			#pragma multi_compile_fragment _ _SCREEN_SPACE_OCCLUSION
			#pragma multi_compile_fragment _ _DBUFFER_MRT1 _DBUFFER_MRT2 _DBUFFER_MRT3
			#pragma multi_compile_fragment _ _LIGHT_LAYERS
			#pragma multi_compile_fragment _ _LIGHT_COOKIES
			#pragma multi_compile _ _CLUSTERED_RENDERING

			#pragma multi_compile _ LIGHTMAP_SHADOW_MIXING
			#pragma multi_compile _ SHADOWS_SHADOWMASK
			#pragma multi_compile _ DIRLIGHTMAP_COMBINED
			#pragma multi_compile _ LIGHTMAP_ON
			#pragma multi_compile _ DYNAMICLIGHTMAP_ON
			#pragma multi_compile_fragment _ DEBUG_DISPLAY

			#pragma vertex vert
			#pragma fragment frag

			#define SHADERPASS SHADERPASS_FORWARD

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Input.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Shadows.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DBuffer.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"

			#if defined(UNITY_INSTANCING_ENABLED) && defined(_TERRAIN_INSTANCED_PERPIXEL_NORMAL)
				#define ENABLE_TERRAIN_PERPIXEL_NORMAL
			#endif

			#define ASE_NEEDS_FRAG_COLOR
			#define ASE_NEEDS_FRAG_WORLD_VIEW_DIR
			#define ASE_NEEDS_FRAG_WORLD_TANGENT
			#define ASE_NEEDS_FRAG_WORLD_BITANGENT
			#define ASE_NEEDS_FRAG_WORLD_NORMAL


			#if defined(ASE_EARLY_Z_DEPTH_OPTIMIZE) && (SHADER_TARGET >= 45)
				#define ASE_SV_DEPTH SV_DepthLessEqual
				#define ASE_SV_POSITION_QUALIFIERS linear noperspective centroid
			#else
				#define ASE_SV_DEPTH SV_Depth
				#define ASE_SV_POSITION_QUALIFIERS
			#endif

			struct VertexInput
			{
				float4 vertex : POSITION;
				float3 ase_normal : NORMAL;
				float4 ase_tangent : TANGENT;
				float4 texcoord : TEXCOORD0;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct VertexOutput
			{
				ASE_SV_POSITION_QUALIFIERS float4 clipPos : SV_POSITION;
				float4 clipPosV : TEXCOORD0;
				float4 lightmapUVOrVertexSH : TEXCOORD1;
				half4 fogFactorAndVertexLight : TEXCOORD2;
				float4 tSpace0 : TEXCOORD3;
				float4 tSpace1 : TEXCOORD4;
				float4 tSpace2 : TEXCOORD5;
				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
					float4 shadowCoord : TEXCOORD6;
				#endif
				#if defined(DYNAMICLIGHTMAP_ON)
					float2 dynamicLightmapUV : TEXCOORD7;
				#endif
				float4 ase_texcoord8 : TEXCOORD8;
				float4 ase_texcoord9 : TEXCOORD9;
				float4 ase_color : COLOR;
				float4 ase_texcoord10 : TEXCOORD10;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _DetailSecondaryMaskMap_TexelSize;
			float4 _DetailNormalMap_TexelSize;
			half4 _DetailSecondaryColor;
			half4 _SmoothnessStrength;
			float4 _DetailMaskMap_TexelSize;
			float4 _DetailMaskUVs;
			float4 _DetailSecondaryUVs;
			float4 _DetailSecondaryColorMap_TexelSize;
			float4 _DetailUVs;
			float4 _DetailColorMap_TexelSize;
			half4 _OcclusionStrengthAO;
			half4 _DetailColor;
			half4 _BaseColor;
			float4 _MainUVs;
			float4 _DetailSecondaryNormalMap_TexelSize;
			float4 _DetailSecondaryMaskUVs;
			half _DetailNormalStrength;
			float _SPACE_DETAIL;
			float _DetailSecondaryEnable;
			float _CATEGORY_DETAILMAPPING;
			float _CATEGORY_DETAILMAPPINGSECONDARY;
			half _DetailSecondaryBlendHeight;
			int _DetailSecondaryBlendVertexColor;
			float _SPACE_DETAILSECONDARY;
			half _NormalStrength;
			half _DetailSecondaryBlendSmooth;
			half _DetailEnable;
			float _SPACE_METALLIC;
			float _MetallicStrength;
			float _SPACE_OCCLUSION;
			float _CATEGORY_OCCLUSION;
			half _OcclusionStrengthAORemapMax;
			half _OcclusionStrengthAORemapMin;
			half _SmoothnessFresnelEnable;
			half _SmoothnessFresnelPower;
			half _DetailSecondaryNormalStrength;
			half _SmoothnessFresnelScale;
			float _SPACE_SMOOTHNESS;
			float _CATEGORY_SMOOTHNESS;
			half _SmoothnessStrengthRemapMax;
			half _SmoothnessStrengthRemapMin;
			half _DetailSecondaryBlendStrength;
			float _CATEGORY_METALLIC;
			half _SmoothnessSource;
			half _DetailSecondaryBlendSource;
			int _Cull;
			half _DetailSecondaryMaskBlendFalloff;
			half _DetailMaskBlendHardness;
			half _DetailMaskBlendStrength;
			half _DetailMaskIsInverted;
			half _DetailMaskUVRotation;
			float _DetailSaturation;
			half _DetailBrightness;
			half _DetailMaskBlendFalloff;
			half _DetailUVMode;
			half _Brightness;
			float _BaseColorSaturation;
			float _CATEGORY_SURFACEINPUTS;
			float _SPACE_SURFACEINPUTS;
			float _CATEGORY_SURFACEOPTIONS;
			float _SPACE_SURFACEOPTIONS;
			half _DetailUVRotation;
			half _DetailSecondaryMaskEnable;
			half _DetailMaskEnable;
			half _DetailBlendStrength;
			half _DetailSecondaryMaskBlendHardness;
			half _DetailSecondaryMaskBlendStrength;
			half _DetailSecondaryMaskIsInverted;
			half _OcclusionSourceInverted;
			half _DetailSecondaryMaskUVRotation;
			float _DetailSecondarySaturation;
			half _DetailBlendSource;
			half _DetailSecondaryBrightness;
			half _DetailSecondaryUVRotation;
			float _DetailSecondaryBlendWeightLayer2;
			float _DetailSecondaryBlendWeightLayer1;
			half _DetailBlendHeight;
			int _DetailBlendVertexColor;
			half _DetailBlendSmooth;
			half _DetailSecondaryUVMode;
			half _OcclusionSourceBaked;
			#ifdef ASE_TRANSMISSION
				float _TransmissionShadow;
			#endif
			#ifdef ASE_TRANSLUCENCY
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef ASE_TESSELLATION
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END

			// Property used by ScenePickingPass
			#ifdef SCENEPICKINGPASS
				float4 _SelectionID;
			#endif

			// Properties used by SceneSelectionPass
			#ifdef SCENESELECTIONPASS
				int _ObjectId;
				int _PassValue;
			#endif

			TEXTURE2D(_MainTex);
			SAMPLER(sampler_MainTex);
			TEXTURE2D(_DetailColorMap);
			TEXTURE2D(_DetailMaskMap);
			TEXTURE2D(_DetailSecondaryColorMap);
			TEXTURE2D(_DetailSecondaryMaskMap);
			TEXTURE2D(_BumpMap);
			SAMPLER(sampler_BumpMap);
			TEXTURE2D(_DetailNormalMap);
			TEXTURE2D(_DetailSecondaryNormalMap);
			TEXTURE2D(_MetallicGlossMap);
			SAMPLER(sampler_MetallicGlossMap);
			TEXTURE2D(_SmoothnessMap);
			SAMPLER(sampler_SmoothnessMap);
			TEXTURE2D(_OcclusionMap);
			SAMPLER(sampler_OcclusionMap);


			//#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/Varyings.hlsl"
			//#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/PBRForwardPass.hlsl"

			//#ifdef HAVE_VFX_MODIFICATION
			//#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/VisualEffectVertex.hlsl"
			//#endif

			float2 float2switchUVMode80_g57687( float m_switch, float2 m_UV0, float2 m_UV1, float2 m_UV2, float2 m_UV3 )
			{
				if(m_switch ==0)
					return m_UV0;
				else if(m_switch ==1)
					return m_UV1;
				else if(m_switch ==2)
					return m_UV2;
				else if(m_switch ==3)
					return m_UV3;
				else
				return float2(0,0);
			}
			
			float2 float2switchUVMode80_g57689( float m_switch, float2 m_UV0, float2 m_UV1, float2 m_UV2, float2 m_UV3 )
			{
				if(m_switch ==0)
					return m_UV0;
				else if(m_switch ==1)
					return m_UV1;
				else if(m_switch ==2)
					return m_UV2;
				else if(m_switch ==3)
					return m_UV3;
				else
				return float2(0,0);
			}
			
			float MaskVCSwitch44_g57704( float m_switch, float m_Off, float m_R, float m_G, float m_B, float m_A )
			{
				if(m_switch ==0)
					return m_Off;
				else if(m_switch ==1)
					return m_R;
				else if(m_switch ==2)
					return m_G;
				else if(m_switch ==3)
					return m_B;
				else if(m_switch ==4)
					return m_A;
				else
				return float(0);
			}
			
			float2 float2switchUVMode80_g57691( float m_switch, float2 m_UV0, float2 m_UV1, float2 m_UV2, float2 m_UV3 )
			{
				if(m_switch ==0)
					return m_UV0;
				else if(m_switch ==1)
					return m_UV1;
				else if(m_switch ==2)
					return m_UV2;
				else if(m_switch ==3)
					return m_UV3;
				else
				return float2(0,0);
			}
			
			float2 float2switchUVMode80_g57693( float m_switch, float2 m_UV0, float2 m_UV1, float2 m_UV2, float2 m_UV3 )
			{
				if(m_switch ==0)
					return m_UV0;
				else if(m_switch ==1)
					return m_UV1;
				else if(m_switch ==2)
					return m_UV2;
				else if(m_switch ==3)
					return m_UV3;
				else
				return float2(0,0);
			}
			
			float MaskVCSwitch44_g57703( float m_switch, float m_Off, float m_R, float m_G, float m_B, float m_A )
			{
				if(m_switch ==0)
					return m_Off;
				else if(m_switch ==1)
					return m_R;
				else if(m_switch ==2)
					return m_G;
				else if(m_switch ==3)
					return m_B;
				else if(m_switch ==4)
					return m_A;
				else
				return float(0);
			}
			

			VertexOutput VertexFunction( VertexInput v  )
			{
				VertexOutput o = (VertexOutput)0;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				float2 temp_output_1848_0_g57705 = (_MainUVs).xy;
				float2 temp_output_1847_0_g57705 = (_MainUVs).zw;
				float2 Offset235_g57784 = temp_output_1847_0_g57705;
				float2 temp_output_41_0_g57784 = ( ( v.texcoord.xy * temp_output_1848_0_g57705 ) + Offset235_g57784 );
				float2 vertexToFrag70_g57784 = temp_output_41_0_g57784;
				o.ase_texcoord8.xy = vertexToFrag70_g57784;
				float temp_output_6_0_g57687 = _DetailUVRotation;
				float temp_output_200_0_g57687 = radians( temp_output_6_0_g57687 );
				float temp_output_13_0_g57687 = cos( temp_output_200_0_g57687 );
				float m_switch80_g57687 = _DetailUVMode;
				float2 m_UV080_g57687 = v.texcoord.xy;
				float2 m_UV180_g57687 = v.texcoord1.xy;
				float2 m_UV280_g57687 = v.texcoord2.xy;
				float2 m_UV380_g57687 = v.ase_texcoord3.xy;
				float2 localfloat2switchUVMode80_g57687 = float2switchUVMode80_g57687( m_switch80_g57687 , m_UV080_g57687 , m_UV180_g57687 , m_UV280_g57687 , m_UV380_g57687 );
				float2 temp_output_9_0_g57687 = float2( 0.5,0.5 );
				float2 break39_g57687 = ( localfloat2switchUVMode80_g57687 - temp_output_9_0_g57687 );
				float temp_output_14_0_g57687 = sin( temp_output_200_0_g57687 );
				float2 appendResult36_g57687 = (float2(( ( temp_output_13_0_g57687 * break39_g57687.x ) + ( temp_output_14_0_g57687 * break39_g57687.y ) ) , ( ( temp_output_13_0_g57687 * break39_g57687.y ) - ( temp_output_14_0_g57687 * break39_g57687.x ) )));
				float2 Offset235_g57687 = (_DetailUVs).zw;
				float2 temp_output_41_0_g57687 = ( ( ( appendResult36_g57687 * ( (_DetailUVs).xy / 1.0 ) ) + temp_output_9_0_g57687 ) + Offset235_g57687 );
				float2 _ConstantAnchor = float2(0.5,0.5);
				float2 vertexToFrag70_g57687 = ( temp_output_41_0_g57687 - ( ( ( (_DetailUVs).xy / 1.0 ) * _ConstantAnchor ) - _ConstantAnchor ) );
				o.ase_texcoord8.zw = vertexToFrag70_g57687;
				float temp_output_6_0_g57689 = _DetailMaskUVRotation;
				float temp_output_200_0_g57689 = radians( temp_output_6_0_g57689 );
				float temp_output_13_0_g57689 = cos( temp_output_200_0_g57689 );
				float DetailUVMode1060_g57633 = _DetailUVMode;
				float m_switch80_g57689 = DetailUVMode1060_g57633;
				float2 m_UV080_g57689 = v.texcoord.xy;
				float2 m_UV180_g57689 = v.texcoord1.xy;
				float2 m_UV280_g57689 = v.texcoord2.xy;
				float2 m_UV380_g57689 = v.ase_texcoord3.xy;
				float2 localfloat2switchUVMode80_g57689 = float2switchUVMode80_g57689( m_switch80_g57689 , m_UV080_g57689 , m_UV180_g57689 , m_UV280_g57689 , m_UV380_g57689 );
				float2 temp_output_9_0_g57689 = float2( 0.5,0.5 );
				float2 break39_g57689 = ( localfloat2switchUVMode80_g57689 - temp_output_9_0_g57689 );
				float temp_output_14_0_g57689 = sin( temp_output_200_0_g57689 );
				float2 appendResult36_g57689 = (float2(( ( temp_output_13_0_g57689 * break39_g57689.x ) + ( temp_output_14_0_g57689 * break39_g57689.y ) ) , ( ( temp_output_13_0_g57689 * break39_g57689.y ) - ( temp_output_14_0_g57689 * break39_g57689.x ) )));
				float2 Offset235_g57689 = (_DetailMaskUVs).zw;
				float2 temp_output_41_0_g57689 = ( ( ( appendResult36_g57689 * ( (_DetailMaskUVs).xy / 1.0 ) ) + temp_output_9_0_g57689 ) + Offset235_g57689 );
				float2 vertexToFrag70_g57689 = ( temp_output_41_0_g57689 - ( ( ( (_DetailMaskUVs).xy / 1.0 ) * _ConstantAnchor ) - _ConstantAnchor ) );
				o.ase_texcoord9.xy = vertexToFrag70_g57689;
				float temp_output_6_0_g57691 = _DetailSecondaryUVRotation;
				float temp_output_200_0_g57691 = radians( temp_output_6_0_g57691 );
				float temp_output_13_0_g57691 = cos( temp_output_200_0_g57691 );
				float m_switch80_g57691 = _DetailSecondaryUVMode;
				float2 m_UV080_g57691 = v.texcoord.xy;
				float2 m_UV180_g57691 = v.texcoord1.xy;
				float2 m_UV280_g57691 = v.texcoord2.xy;
				float2 m_UV380_g57691 = v.ase_texcoord3.xy;
				float2 localfloat2switchUVMode80_g57691 = float2switchUVMode80_g57691( m_switch80_g57691 , m_UV080_g57691 , m_UV180_g57691 , m_UV280_g57691 , m_UV380_g57691 );
				float2 temp_output_9_0_g57691 = float2( 0.5,0.5 );
				float2 break39_g57691 = ( localfloat2switchUVMode80_g57691 - temp_output_9_0_g57691 );
				float temp_output_14_0_g57691 = sin( temp_output_200_0_g57691 );
				float2 appendResult36_g57691 = (float2(( ( temp_output_13_0_g57691 * break39_g57691.x ) + ( temp_output_14_0_g57691 * break39_g57691.y ) ) , ( ( temp_output_13_0_g57691 * break39_g57691.y ) - ( temp_output_14_0_g57691 * break39_g57691.x ) )));
				float2 Offset235_g57691 = (_DetailSecondaryUVs).zw;
				float2 temp_output_41_0_g57691 = ( ( ( appendResult36_g57691 * ( (_DetailSecondaryUVs).xy / 1.0 ) ) + temp_output_9_0_g57691 ) + Offset235_g57691 );
				float2 vertexToFrag70_g57691 = ( temp_output_41_0_g57691 - ( ( ( (_DetailSecondaryUVs).xy / 1.0 ) * _ConstantAnchor ) - _ConstantAnchor ) );
				o.ase_texcoord9.zw = vertexToFrag70_g57691;
				float temp_output_6_0_g57693 = _DetailSecondaryMaskUVRotation;
				float temp_output_200_0_g57693 = radians( temp_output_6_0_g57693 );
				float temp_output_13_0_g57693 = cos( temp_output_200_0_g57693 );
				float DetailSecondaryUVMode1059_g57633 = _DetailSecondaryUVMode;
				float m_switch80_g57693 = DetailSecondaryUVMode1059_g57633;
				float2 m_UV080_g57693 = v.texcoord.xy;
				float2 m_UV180_g57693 = v.texcoord1.xy;
				float2 m_UV280_g57693 = v.texcoord2.xy;
				float2 m_UV380_g57693 = v.ase_texcoord3.xy;
				float2 localfloat2switchUVMode80_g57693 = float2switchUVMode80_g57693( m_switch80_g57693 , m_UV080_g57693 , m_UV180_g57693 , m_UV280_g57693 , m_UV380_g57693 );
				float2 temp_output_9_0_g57693 = float2( 0.5,0.5 );
				float2 break39_g57693 = ( localfloat2switchUVMode80_g57693 - temp_output_9_0_g57693 );
				float temp_output_14_0_g57693 = sin( temp_output_200_0_g57693 );
				float2 appendResult36_g57693 = (float2(( ( temp_output_13_0_g57693 * break39_g57693.x ) + ( temp_output_14_0_g57693 * break39_g57693.y ) ) , ( ( temp_output_13_0_g57693 * break39_g57693.y ) - ( temp_output_14_0_g57693 * break39_g57693.x ) )));
				float2 Offset235_g57693 = (_DetailSecondaryMaskUVs).zw;
				float2 temp_output_41_0_g57693 = ( ( ( appendResult36_g57693 * ( (_DetailSecondaryMaskUVs).xy / 1.0 ) ) + temp_output_9_0_g57693 ) + Offset235_g57693 );
				float2 vertexToFrag70_g57693 = ( temp_output_41_0_g57693 - ( ( ( (_DetailSecondaryMaskUVs).xy / 1.0 ) * _ConstantAnchor ) - _ConstantAnchor ) );
				o.ase_texcoord10.xy = vertexToFrag70_g57693;
				
				o.ase_color = v.ase_color;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord10.zw = 0;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.vertex.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif

				float3 vertexValue = defaultVertexValue;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					v.vertex.xyz = vertexValue;
				#else
					v.vertex.xyz += vertexValue;
				#endif
				v.ase_normal = v.ase_normal;

				float3 positionWS = TransformObjectToWorld( v.vertex.xyz );
				float3 positionVS = TransformWorldToView( positionWS );
				float4 positionCS = TransformWorldToHClip( positionWS );

				VertexNormalInputs normalInput = GetVertexNormalInputs( v.ase_normal, v.ase_tangent );

				o.tSpace0 = float4( normalInput.normalWS, positionWS.x);
				o.tSpace1 = float4( normalInput.tangentWS, positionWS.y);
				o.tSpace2 = float4( normalInput.bitangentWS, positionWS.z);

				#if defined(LIGHTMAP_ON)
					OUTPUT_LIGHTMAP_UV( v.texcoord1, unity_LightmapST, o.lightmapUVOrVertexSH.xy );
				#endif

				#if !defined(LIGHTMAP_ON)
					OUTPUT_SH( normalInput.normalWS.xyz, o.lightmapUVOrVertexSH.xyz );
				#endif

				#if defined(DYNAMICLIGHTMAP_ON)
					o.dynamicLightmapUV.xy = v.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
				#endif

				#if defined(ENABLE_TERRAIN_PERPIXEL_NORMAL)
					o.lightmapUVOrVertexSH.zw = v.texcoord.xy;
					o.lightmapUVOrVertexSH.xy = v.texcoord.xy * unity_LightmapST.xy + unity_LightmapST.zw;
				#endif

				half3 vertexLight = VertexLighting( positionWS, normalInput.normalWS );

				#ifdef ASE_FOG
					half fogFactor = ComputeFogFactor( positionCS.z );
				#else
					half fogFactor = 0;
				#endif

				o.fogFactorAndVertexLight = half4(fogFactor, vertexLight);

				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
					VertexPositionInputs vertexInput = (VertexPositionInputs)0;
					vertexInput.positionWS = positionWS;
					vertexInput.positionCS = positionCS;
					o.shadowCoord = GetShadowCoord( vertexInput );
				#endif

				o.clipPos = positionCS;
				o.clipPosV = positionCS;
				return o;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float4 vertex : INTERNALTESSPOS;
				float3 ase_normal : NORMAL;
				float4 ase_tangent : TANGENT;
				float4 texcoord : TEXCOORD0;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_color : COLOR;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( VertexInput v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.vertex = v.vertex;
				o.ase_normal = v.ase_normal;
				o.ase_tangent = v.ase_tangent;
				o.texcoord = v.texcoord;
				o.texcoord1 = v.texcoord1;
				o.texcoord2 = v.texcoord2;
				o.texcoord = v.texcoord;
				o.ase_texcoord3 = v.ase_texcoord3;
				o.ase_color = v.ase_color;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
				return patch[id];
			}

			[domain("tri")]
			VertexOutput DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				VertexInput o = (VertexInput) 0;
				o.vertex = patch[0].vertex * bary.x + patch[1].vertex * bary.y + patch[2].vertex * bary.z;
				o.ase_normal = patch[0].ase_normal * bary.x + patch[1].ase_normal * bary.y + patch[2].ase_normal * bary.z;
				o.ase_tangent = patch[0].ase_tangent * bary.x + patch[1].ase_tangent * bary.y + patch[2].ase_tangent * bary.z;
				o.texcoord = patch[0].texcoord * bary.x + patch[1].texcoord * bary.y + patch[2].texcoord * bary.z;
				o.texcoord1 = patch[0].texcoord1 * bary.x + patch[1].texcoord1 * bary.y + patch[2].texcoord1 * bary.z;
				o.texcoord2 = patch[0].texcoord2 * bary.x + patch[1].texcoord2 * bary.y + patch[2].texcoord2 * bary.z;
				o.texcoord = patch[0].texcoord * bary.x + patch[1].texcoord * bary.y + patch[2].texcoord * bary.z;
				o.ase_texcoord3 = patch[0].ase_texcoord3 * bary.x + patch[1].ase_texcoord3 * bary.y + patch[2].ase_texcoord3 * bary.z;
				o.ase_color = patch[0].ase_color * bary.x + patch[1].ase_color * bary.y + patch[2].ase_color * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.vertex.xyz - patch[i].ase_normal * (dot(o.vertex.xyz, patch[i].ase_normal) - dot(patch[i].vertex.xyz, patch[i].ase_normal));
				float phongStrength = _TessPhongStrength;
				o.vertex.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.vertex.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			VertexOutput vert ( VertexInput v )
			{
				return VertexFunction( v );
			}
			#endif

			half4 frag ( VertexOutput IN
						#ifdef ASE_DEPTH_WRITE_ON
						,out float outputDepth : ASE_SV_DEPTH
						#endif
						 ) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID(IN);
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX(IN);

				#ifdef LOD_FADE_CROSSFADE
					LODDitheringTransition( IN.clipPos.xyz, unity_LODFade.x );
				#endif

				#if defined(ENABLE_TERRAIN_PERPIXEL_NORMAL)
					float2 sampleCoords = (IN.lightmapUVOrVertexSH.zw / _TerrainHeightmapRecipSize.zw + 0.5f) * _TerrainHeightmapRecipSize.xy;
					float3 WorldNormal = TransformObjectToWorldNormal(normalize(SAMPLE_TEXTURE2D(_TerrainNormalmapTexture, sampler_TerrainNormalmapTexture, sampleCoords).rgb * 2 - 1));
					float3 WorldTangent = -cross(GetObjectToWorldMatrix()._13_23_33, WorldNormal);
					float3 WorldBiTangent = cross(WorldNormal, -WorldTangent);
				#else
					float3 WorldNormal = normalize( IN.tSpace0.xyz );
					float3 WorldTangent = IN.tSpace1.xyz;
					float3 WorldBiTangent = IN.tSpace2.xyz;
				#endif

				float3 WorldPosition = float3(IN.tSpace0.w,IN.tSpace1.w,IN.tSpace2.w);
				float3 WorldViewDirection = _WorldSpaceCameraPos.xyz  - WorldPosition;
				float4 ShadowCoords = float4( 0, 0, 0, 0 );

				float4 ClipPos = IN.clipPosV;
				float4 ScreenPos = ComputeScreenPos( IN.clipPosV );

				float2 NormalizedScreenSpaceUV = GetNormalizedScreenSpaceUV(IN.clipPos);

				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
					ShadowCoords = IN.shadowCoord;
				#elif defined(MAIN_LIGHT_CALCULATE_SHADOWS)
					ShadowCoords = TransformWorldToShadowCoord( WorldPosition );
				#endif

				WorldViewDirection = SafeNormalize( WorldViewDirection );

				float3 temp_output_1819_0_g57705 = (_BaseColor).rgb;
				float2 vertexToFrag70_g57784 = IN.ase_texcoord8.xy;
				float4 tex2DNode1921_g57705 = SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, vertexToFrag70_g57784 );
				float3 OUT_ALBEDO_RGBA1177_g57705 = (tex2DNode1921_g57705).rgb;
				float3 temp_output_12_0_g57819 = OUT_ALBEDO_RGBA1177_g57705;
				float dotResult28_g57819 = dot( float3(0.2126729,0.7151522,0.072175) , temp_output_12_0_g57819 );
				float3 temp_cast_0 = (dotResult28_g57819).xxx;
				float temp_output_21_0_g57819 = ( 1.0 - _BaseColorSaturation );
				float3 lerpResult31_g57819 = lerp( temp_cast_0 , temp_output_12_0_g57819 , temp_output_21_0_g57819);
				float3 temp_output_7_0_g57705 = ( temp_output_1819_0_g57705 * lerpResult31_g57819 * _Brightness );
				float3 temp_output_39_0_g57633 = temp_output_7_0_g57705;
				float localStochasticTiling159_g57666 = ( 0.0 );
				float2 vertexToFrag70_g57687 = IN.ase_texcoord8.zw;
				float2 temp_output_1334_0_g57633 = vertexToFrag70_g57687;
				float2 UV159_g57666 = temp_output_1334_0_g57633;
				float4 TexelSize159_g57666 = _DetailColorMap_TexelSize;
				float4 Offsets159_g57666 = float4( 0,0,0,0 );
				float2 Weights159_g57666 = float2( 0,0 );
				{
				UV159_g57666 = UV159_g57666 * TexelSize159_g57666.zw - 0.5;
				float2 f = frac( UV159_g57666 );
				UV159_g57666 -= f;
				float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				float4 xs = xn * xn * xn;
				float4 ys = yn * yn * yn;
				float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				float4 c = float4( UV159_g57666.x - 0.5, UV159_g57666.x + 1.5, UV159_g57666.y - 0.5, UV159_g57666.y + 1.5 );
				float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				float w0 = s.x / ( s.x + s.y );
				float w1 = s.z / ( s.z + s.w );
				Offsets159_g57666 = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize159_g57666.xyxy;
				Weights159_g57666 = float2( w0, w1 );
				}
				float4 Input_FetchOffsets70_g57667 = Offsets159_g57666;
				float2 Input_FetchWeights143_g57667 = Weights159_g57666;
				float2 break46_g57667 = Input_FetchWeights143_g57667;
				float4 lerpResult20_g57667 = lerp( SAMPLE_TEXTURE2D( _DetailColorMap, sampler_MainTex, (Input_FetchOffsets70_g57667).yw ) , SAMPLE_TEXTURE2D( _DetailColorMap, sampler_MainTex, (Input_FetchOffsets70_g57667).xw ) , break46_g57667.x);
				float4 lerpResult40_g57667 = lerp( SAMPLE_TEXTURE2D( _DetailColorMap, sampler_MainTex, (Input_FetchOffsets70_g57667).yz ) , SAMPLE_TEXTURE2D( _DetailColorMap, sampler_MainTex, (Input_FetchOffsets70_g57667).xz ) , break46_g57667.x);
				float4 lerpResult22_g57667 = lerp( lerpResult20_g57667 , lerpResult40_g57667 , break46_g57667.y);
				float4 Output_Fetch2D44_g57667 = lerpResult22_g57667;
				float3 temp_output_44_0_g57633 = ( (_DetailColor).rgb * (Output_Fetch2D44_g57667).rgb * _DetailBrightness );
				float3 temp_output_12_0_g57695 = temp_output_44_0_g57633;
				float dotResult28_g57695 = dot( float3(0.2126729,0.7151522,0.072175) , temp_output_12_0_g57695 );
				float3 temp_cast_1 = (dotResult28_g57695).xxx;
				float temp_output_21_0_g57695 = ( 1.0 - _DetailSaturation );
				float3 lerpResult31_g57695 = lerp( temp_cast_1 , temp_output_12_0_g57695 , temp_output_21_0_g57695);
				float3 temp_output_1272_0_g57633 = (unity_ColorSpaceDouble).rgb;
				float3 temp_output_1190_0_g57633 = ( lerpResult31_g57695 * temp_output_1272_0_g57633 );
				float3 BaseColor_RGB40_g57633 = temp_output_39_0_g57633;
				float localStochasticTiling159_g57674 = ( 0.0 );
				float2 vertexToFrag70_g57689 = IN.ase_texcoord9.xy;
				float2 temp_output_1339_0_g57633 = vertexToFrag70_g57689;
				float2 UV159_g57674 = temp_output_1339_0_g57633;
				float4 TexelSize159_g57674 = _DetailMaskMap_TexelSize;
				float4 Offsets159_g57674 = float4( 0,0,0,0 );
				float2 Weights159_g57674 = float2( 0,0 );
				{
				UV159_g57674 = UV159_g57674 * TexelSize159_g57674.zw - 0.5;
				float2 f = frac( UV159_g57674 );
				UV159_g57674 -= f;
				float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				float4 xs = xn * xn * xn;
				float4 ys = yn * yn * yn;
				float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				float4 c = float4( UV159_g57674.x - 0.5, UV159_g57674.x + 1.5, UV159_g57674.y - 0.5, UV159_g57674.y + 1.5 );
				float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				float w0 = s.x / ( s.x + s.y );
				float w1 = s.z / ( s.z + s.w );
				Offsets159_g57674 = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize159_g57674.xyxy;
				Weights159_g57674 = float2( w0, w1 );
				}
				float4 Input_FetchOffsets70_g57675 = Offsets159_g57674;
				float2 Input_FetchWeights143_g57675 = Weights159_g57674;
				float2 break46_g57675 = Input_FetchWeights143_g57675;
				float4 lerpResult20_g57675 = lerp( SAMPLE_TEXTURE2D( _DetailMaskMap, sampler_MainTex, (Input_FetchOffsets70_g57675).yw ) , SAMPLE_TEXTURE2D( _DetailMaskMap, sampler_MainTex, (Input_FetchOffsets70_g57675).xw ) , break46_g57675.x);
				float4 lerpResult40_g57675 = lerp( SAMPLE_TEXTURE2D( _DetailMaskMap, sampler_MainTex, (Input_FetchOffsets70_g57675).yz ) , SAMPLE_TEXTURE2D( _DetailMaskMap, sampler_MainTex, (Input_FetchOffsets70_g57675).xz ) , break46_g57675.x);
				float4 lerpResult22_g57675 = lerp( lerpResult20_g57675 , lerpResult40_g57675 , break46_g57675.y);
				float4 Output_Fetch2D44_g57675 = lerpResult22_g57675;
				float4 break50_g57675 = Output_Fetch2D44_g57675;
				float lerpResult997_g57633 = lerp( ( 1.0 - break50_g57675.r ) , break50_g57675.r , _DetailMaskIsInverted);
				float temp_output_15_0_g57677 = ( 1.0 - lerpResult997_g57633 );
				float temp_output_26_0_g57677 = _DetailMaskBlendStrength;
				float temp_output_24_0_g57677 = _DetailMaskBlendHardness;
				float saferPower2_g57677 = abs( max( saturate( (0.0 + (temp_output_15_0_g57677 - ( 1.0 - temp_output_26_0_g57677 )) * (temp_output_24_0_g57677 - 0.0) / (1.0 - ( 1.0 - temp_output_26_0_g57677 ))) ) , 0.0 ) );
				float temp_output_22_0_g57677 = _DetailMaskBlendFalloff;
				float Blend_DetailMask986_g57633 = saturate( pow( saferPower2_g57677 , ( 1.0 - temp_output_22_0_g57677 ) ) );
				float3 lerpResult1194_g57633 = lerp( BaseColor_RGB40_g57633 , temp_output_1190_0_g57633 , Blend_DetailMask986_g57633);
				float temp_output_1162_0_g57633 = ( 1.0 - Blend_DetailMask986_g57633 );
				float3 appendResult1161_g57633 = (float3(temp_output_1162_0_g57633 , temp_output_1162_0_g57633 , temp_output_1162_0_g57633));
				float3 lerpResult1005_g57633 = lerp( temp_output_1190_0_g57633 , ( ( lerpResult1194_g57633 * Blend_DetailMask986_g57633 ) + appendResult1161_g57633 ) , _DetailMaskEnable);
				float3 BaseColor_Detail255_g57633 = lerpResult1005_g57633;
				float BaseColor_R1273_g57633 = temp_output_39_0_g57633.x;
				float BaseColor_DetailR887_g57633 = Output_Fetch2D44_g57667.r;
				float lerpResult1105_g57633 = lerp( BaseColor_R1273_g57633 , BaseColor_DetailR887_g57633 , _DetailBlendSource);
				float m_switch44_g57704 = (float)_DetailBlendVertexColor;
				float m_Off44_g57704 = 1.0;
				float dotResult58_g57704 = dot( IN.ase_color.g , IN.ase_color.g );
				float dotResult61_g57704 = dot( IN.ase_color.b , IN.ase_color.b );
				float m_R44_g57704 = ( dotResult58_g57704 + dotResult61_g57704 );
				float dotResult57_g57704 = dot( IN.ase_color.r , IN.ase_color.r );
				float m_G44_g57704 = ( dotResult57_g57704 + dotResult58_g57704 );
				float m_B44_g57704 = ( dotResult57_g57704 + dotResult61_g57704 );
				float m_A44_g57704 = IN.ase_color.a;
				float localMaskVCSwitch44_g57704 = MaskVCSwitch44_g57704( m_switch44_g57704 , m_Off44_g57704 , m_R44_g57704 , m_G44_g57704 , m_B44_g57704 , m_A44_g57704 );
				float clampResult54_g57704 = clamp( ( ( localMaskVCSwitch44_g57704 * _DetailBlendHeight ) / _DetailBlendSmooth ) , 0.0 , 1.0 );
				float Blend647_g57633 = saturate( ( ( ( ( lerpResult1105_g57633 - 0.5 ) * ( ( 1.0 - _DetailBlendStrength ) - 0.9 ) ) / ( 1.0 - _DetailBlendSmooth ) ) + ( 1.0 - clampResult54_g57704 ) ) );
				float temp_output_1171_0_g57633 = ( 1.0 - Blend647_g57633 );
				float3 appendResult1174_g57633 = (float3(temp_output_1171_0_g57633 , temp_output_1171_0_g57633 , temp_output_1171_0_g57633));
				float3 temp_output_1180_0_g57633 = ( temp_output_39_0_g57633 * ( ( BaseColor_Detail255_g57633 * Blend647_g57633 ) + appendResult1174_g57633 ) );
				float2 appendResult1114_g57633 = (float2(_DetailSecondaryBlendWeightLayer1 , _DetailSecondaryBlendWeightLayer2));
				float localStochasticTiling159_g57657 = ( 0.0 );
				float2 vertexToFrag70_g57691 = IN.ase_texcoord9.zw;
				float2 temp_output_1342_0_g57633 = vertexToFrag70_g57691;
				float2 UV159_g57657 = temp_output_1342_0_g57633;
				float4 TexelSize159_g57657 = _DetailSecondaryColorMap_TexelSize;
				float4 Offsets159_g57657 = float4( 0,0,0,0 );
				float2 Weights159_g57657 = float2( 0,0 );
				{
				UV159_g57657 = UV159_g57657 * TexelSize159_g57657.zw - 0.5;
				float2 f = frac( UV159_g57657 );
				UV159_g57657 -= f;
				float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				float4 xs = xn * xn * xn;
				float4 ys = yn * yn * yn;
				float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				float4 c = float4( UV159_g57657.x - 0.5, UV159_g57657.x + 1.5, UV159_g57657.y - 0.5, UV159_g57657.y + 1.5 );
				float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				float w0 = s.x / ( s.x + s.y );
				float w1 = s.z / ( s.z + s.w );
				Offsets159_g57657 = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize159_g57657.xyxy;
				Weights159_g57657 = float2( w0, w1 );
				}
				float4 Input_FetchOffsets70_g57659 = Offsets159_g57657;
				float2 Input_FetchWeights143_g57659 = Weights159_g57657;
				float2 break46_g57659 = Input_FetchWeights143_g57659;
				float4 lerpResult20_g57659 = lerp( SAMPLE_TEXTURE2D( _DetailSecondaryColorMap, sampler_MainTex, (Input_FetchOffsets70_g57659).yw ) , SAMPLE_TEXTURE2D( _DetailSecondaryColorMap, sampler_MainTex, (Input_FetchOffsets70_g57659).xw ) , break46_g57659.x);
				float4 lerpResult40_g57659 = lerp( SAMPLE_TEXTURE2D( _DetailSecondaryColorMap, sampler_MainTex, (Input_FetchOffsets70_g57659).yz ) , SAMPLE_TEXTURE2D( _DetailSecondaryColorMap, sampler_MainTex, (Input_FetchOffsets70_g57659).xz ) , break46_g57659.x);
				float4 lerpResult22_g57659 = lerp( lerpResult20_g57659 , lerpResult40_g57659 , break46_g57659.y);
				float4 Output_Fetch2D44_g57659 = lerpResult22_g57659;
				float3 temp_output_436_0_g57633 = ( (_DetailSecondaryColor).rgb * (Output_Fetch2D44_g57659).rgb * _DetailSecondaryBrightness );
				float3 temp_output_12_0_g57696 = temp_output_436_0_g57633;
				float dotResult28_g57696 = dot( float3(0.2126729,0.7151522,0.072175) , temp_output_12_0_g57696 );
				float3 temp_cast_3 = (dotResult28_g57696).xxx;
				float temp_output_21_0_g57696 = ( 1.0 - _DetailSecondarySaturation );
				float3 lerpResult31_g57696 = lerp( temp_cast_3 , temp_output_12_0_g57696 , temp_output_21_0_g57696);
				float3 ColorSpaceDouble1261_g57633 = temp_output_1272_0_g57633;
				float3 temp_output_1239_0_g57633 = ( lerpResult31_g57696 * ColorSpaceDouble1261_g57633 );
				float localStochasticTiling159_g57668 = ( 0.0 );
				float2 vertexToFrag70_g57693 = IN.ase_texcoord10.xy;
				float2 temp_output_1347_0_g57633 = vertexToFrag70_g57693;
				float2 UV159_g57668 = temp_output_1347_0_g57633;
				float4 TexelSize159_g57668 = _DetailSecondaryMaskMap_TexelSize;
				float4 Offsets159_g57668 = float4( 0,0,0,0 );
				float2 Weights159_g57668 = float2( 0,0 );
				{
				UV159_g57668 = UV159_g57668 * TexelSize159_g57668.zw - 0.5;
				float2 f = frac( UV159_g57668 );
				UV159_g57668 -= f;
				float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				float4 xs = xn * xn * xn;
				float4 ys = yn * yn * yn;
				float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				float4 c = float4( UV159_g57668.x - 0.5, UV159_g57668.x + 1.5, UV159_g57668.y - 0.5, UV159_g57668.y + 1.5 );
				float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				float w0 = s.x / ( s.x + s.y );
				float w1 = s.z / ( s.z + s.w );
				Offsets159_g57668 = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize159_g57668.xyxy;
				Weights159_g57668 = float2( w0, w1 );
				}
				float4 Input_FetchOffsets70_g57670 = Offsets159_g57668;
				float2 Input_FetchWeights143_g57670 = Weights159_g57668;
				float2 break46_g57670 = Input_FetchWeights143_g57670;
				float4 lerpResult20_g57670 = lerp( SAMPLE_TEXTURE2D( _DetailSecondaryMaskMap, sampler_MainTex, (Input_FetchOffsets70_g57670).yw ) , SAMPLE_TEXTURE2D( _DetailSecondaryMaskMap, sampler_MainTex, (Input_FetchOffsets70_g57670).xw ) , break46_g57670.x);
				float4 lerpResult40_g57670 = lerp( SAMPLE_TEXTURE2D( _DetailSecondaryMaskMap, sampler_MainTex, (Input_FetchOffsets70_g57670).yz ) , SAMPLE_TEXTURE2D( _DetailSecondaryMaskMap, sampler_MainTex, (Input_FetchOffsets70_g57670).xz ) , break46_g57670.x);
				float4 lerpResult22_g57670 = lerp( lerpResult20_g57670 , lerpResult40_g57670 , break46_g57670.y);
				float4 Output_Fetch2D44_g57670 = lerpResult22_g57670;
				float4 break50_g57670 = Output_Fetch2D44_g57670;
				float lerpResult486_g57633 = lerp( ( 1.0 - break50_g57670.r ) , break50_g57670.r , _DetailSecondaryMaskIsInverted);
				float temp_output_15_0_g57671 = ( 1.0 - lerpResult486_g57633 );
				float temp_output_26_0_g57671 = _DetailSecondaryMaskBlendStrength;
				float temp_output_24_0_g57671 = _DetailSecondaryMaskBlendHardness;
				float saferPower2_g57671 = abs( max( saturate( (0.0 + (temp_output_15_0_g57671 - ( 1.0 - temp_output_26_0_g57671 )) * (temp_output_24_0_g57671 - 0.0) / (1.0 - ( 1.0 - temp_output_26_0_g57671 ))) ) , 0.0 ) );
				float temp_output_22_0_g57671 = _DetailSecondaryMaskBlendFalloff;
				float Blend_DetailSecondaryMask755_g57633 = saturate( pow( saferPower2_g57671 , ( 1.0 - temp_output_22_0_g57671 ) ) );
				float3 lerpResult1234_g57633 = lerp( BaseColor_RGB40_g57633 , temp_output_1239_0_g57633 , Blend_DetailSecondaryMask755_g57633);
				float temp_output_1236_0_g57633 = ( 1.0 - Blend_DetailSecondaryMask755_g57633 );
				float3 appendResult1238_g57633 = (float3(temp_output_1236_0_g57633 , temp_output_1236_0_g57633 , temp_output_1236_0_g57633));
				float3 lerpResult1233_g57633 = lerp( temp_output_1239_0_g57633 , ( ( lerpResult1234_g57633 * Blend_DetailSecondaryMask755_g57633 ) + appendResult1238_g57633 ) , _DetailSecondaryMaskEnable);
				float3 BaseColor_DetailSecondary805_g57633 = lerpResult1233_g57633;
				float BaseColor_DetailSecondaryR1102_g57633 = Output_Fetch2D44_g57659.r;
				float lerpResult1103_g57633 = lerp( BaseColor_R1273_g57633 , BaseColor_DetailSecondaryR1102_g57633 , _DetailSecondaryBlendSource);
				float m_switch44_g57703 = (float)_DetailSecondaryBlendVertexColor;
				float m_Off44_g57703 = 1.0;
				float dotResult58_g57703 = dot( IN.ase_color.g , IN.ase_color.g );
				float dotResult61_g57703 = dot( IN.ase_color.b , IN.ase_color.b );
				float m_R44_g57703 = ( dotResult58_g57703 + dotResult61_g57703 );
				float dotResult57_g57703 = dot( IN.ase_color.r , IN.ase_color.r );
				float m_G44_g57703 = ( dotResult57_g57703 + dotResult58_g57703 );
				float m_B44_g57703 = ( dotResult57_g57703 + dotResult61_g57703 );
				float m_A44_g57703 = IN.ase_color.a;
				float localMaskVCSwitch44_g57703 = MaskVCSwitch44_g57703( m_switch44_g57703 , m_Off44_g57703 , m_R44_g57703 , m_G44_g57703 , m_B44_g57703 , m_A44_g57703 );
				float clampResult54_g57703 = clamp( ( ( localMaskVCSwitch44_g57703 * _DetailSecondaryBlendHeight ) / _DetailSecondaryBlendSmooth ) , 0.0 , 1.0 );
				float BlendSecondary786_g57633 = saturate( ( ( ( ( lerpResult1103_g57633 - 0.5 ) * ( ( 1.0 - _DetailSecondaryBlendStrength ) - 0.9 ) ) / ( 1.0 - _DetailSecondaryBlendSmooth ) ) + ( 1.0 - clampResult54_g57703 ) ) );
				float temp_output_1214_0_g57633 = ( 1.0 - BlendSecondary786_g57633 );
				float3 appendResult1216_g57633 = (float3(temp_output_1214_0_g57633 , temp_output_1214_0_g57633 , temp_output_1214_0_g57633));
				float2 weightedBlendVar1117_g57633 = appendResult1114_g57633;
				float3 weightedAvg1117_g57633 = ( ( weightedBlendVar1117_g57633.x*temp_output_1180_0_g57633 + weightedBlendVar1117_g57633.y*( temp_output_39_0_g57633 * ( ( BaseColor_DetailSecondary805_g57633 * BlendSecondary786_g57633 ) + appendResult1216_g57633 ) ) )/( weightedBlendVar1117_g57633.x + weightedBlendVar1117_g57633.y ) );
				float3 lerpResult489_g57633 = lerp( temp_output_1180_0_g57633 , weightedAvg1117_g57633 , _DetailSecondaryEnable);
				float temp_output_634_0_g57633 = ( _DetailEnable + ( ( _CATEGORY_DETAILMAPPING + _SPACE_DETAIL + _CATEGORY_DETAILMAPPINGSECONDARY + _SPACE_DETAILSECONDARY ) * 0.0 ) );
				float3 lerpResult409_g57633 = lerp( temp_output_39_0_g57633 , lerpResult489_g57633 , temp_output_634_0_g57633);
				
				float4 OUT_NORMAL1178_g57705 = SAMPLE_TEXTURE2D( _BumpMap, sampler_BumpMap, vertexToFrag70_g57784 );
				float3 unpack1731_g57705 = UnpackNormalScale( OUT_NORMAL1178_g57705, _NormalStrength );
				unpack1731_g57705.z = lerp( 1, unpack1731_g57705.z, saturate(_NormalStrength) );
				float3 temp_output_38_0_g57633 = unpack1731_g57705;
				float localStochasticTiling159_g57673 = ( 0.0 );
				float2 UV159_g57673 = temp_output_1334_0_g57633;
				float4 TexelSize159_g57673 = _DetailNormalMap_TexelSize;
				float4 Offsets159_g57673 = float4( 0,0,0,0 );
				float2 Weights159_g57673 = float2( 0,0 );
				{
				UV159_g57673 = UV159_g57673 * TexelSize159_g57673.zw - 0.5;
				float2 f = frac( UV159_g57673 );
				UV159_g57673 -= f;
				float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				float4 xs = xn * xn * xn;
				float4 ys = yn * yn * yn;
				float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				float4 c = float4( UV159_g57673.x - 0.5, UV159_g57673.x + 1.5, UV159_g57673.y - 0.5, UV159_g57673.y + 1.5 );
				float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				float w0 = s.x / ( s.x + s.y );
				float w1 = s.z / ( s.z + s.w );
				Offsets159_g57673 = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize159_g57673.xyxy;
				Weights159_g57673 = float2( w0, w1 );
				}
				float4 Input_FetchOffsets70_g57672 = Offsets159_g57673;
				float2 Input_FetchWeights143_g57672 = Weights159_g57673;
				float2 break46_g57672 = Input_FetchWeights143_g57672;
				float4 lerpResult20_g57672 = lerp( SAMPLE_TEXTURE2D( _DetailNormalMap, sampler_BumpMap, (Input_FetchOffsets70_g57672).yw ) , SAMPLE_TEXTURE2D( _DetailNormalMap, sampler_BumpMap, (Input_FetchOffsets70_g57672).xw ) , break46_g57672.x);
				float4 lerpResult40_g57672 = lerp( SAMPLE_TEXTURE2D( _DetailNormalMap, sampler_BumpMap, (Input_FetchOffsets70_g57672).yz ) , SAMPLE_TEXTURE2D( _DetailNormalMap, sampler_BumpMap, (Input_FetchOffsets70_g57672).xz ) , break46_g57672.x);
				float4 lerpResult22_g57672 = lerp( lerpResult20_g57672 , lerpResult40_g57672 , break46_g57672.y);
				float4 Output_Fetch2D44_g57672 = lerpResult22_g57672;
				float3 unpack499_g57633 = UnpackNormalScale( Output_Fetch2D44_g57672, _DetailNormalStrength );
				unpack499_g57633.z = lerp( 1, unpack499_g57633.z, saturate(_DetailNormalStrength) );
				float3 Normal_In880_g57633 = temp_output_38_0_g57633;
				float3 lerpResult1286_g57633 = lerp( Normal_In880_g57633 , unpack499_g57633 , Blend_DetailMask986_g57633);
				float3 lerpResult1011_g57633 = lerp( unpack499_g57633 , lerpResult1286_g57633 , _DetailMaskEnable);
				float3 Normal_Detail199_g57633 = lerpResult1011_g57633;
				float layeredBlendVar1278_g57633 = Blend647_g57633;
				float3 layeredBlend1278_g57633 = ( lerp( temp_output_38_0_g57633,Normal_Detail199_g57633 , layeredBlendVar1278_g57633 ) );
				float localStochasticTiling159_g57660 = ( 0.0 );
				float2 UV159_g57660 = temp_output_1342_0_g57633;
				float4 TexelSize159_g57660 = _DetailSecondaryNormalMap_TexelSize;
				float4 Offsets159_g57660 = float4( 0,0,0,0 );
				float2 Weights159_g57660 = float2( 0,0 );
				{
				UV159_g57660 = UV159_g57660 * TexelSize159_g57660.zw - 0.5;
				float2 f = frac( UV159_g57660 );
				UV159_g57660 -= f;
				float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				float4 xs = xn * xn * xn;
				float4 ys = yn * yn * yn;
				float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				float4 c = float4( UV159_g57660.x - 0.5, UV159_g57660.x + 1.5, UV159_g57660.y - 0.5, UV159_g57660.y + 1.5 );
				float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				float w0 = s.x / ( s.x + s.y );
				float w1 = s.z / ( s.z + s.w );
				Offsets159_g57660 = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize159_g57660.xyxy;
				Weights159_g57660 = float2( w0, w1 );
				}
				float4 Input_FetchOffsets70_g57661 = Offsets159_g57660;
				float2 Input_FetchWeights143_g57661 = Weights159_g57660;
				float2 break46_g57661 = Input_FetchWeights143_g57661;
				float4 lerpResult20_g57661 = lerp( SAMPLE_TEXTURE2D( _DetailSecondaryNormalMap, sampler_BumpMap, (Input_FetchOffsets70_g57661).yw ) , SAMPLE_TEXTURE2D( _DetailSecondaryNormalMap, sampler_BumpMap, (Input_FetchOffsets70_g57661).xw ) , break46_g57661.x);
				float4 lerpResult40_g57661 = lerp( SAMPLE_TEXTURE2D( _DetailSecondaryNormalMap, sampler_BumpMap, (Input_FetchOffsets70_g57661).yz ) , SAMPLE_TEXTURE2D( _DetailSecondaryNormalMap, sampler_BumpMap, (Input_FetchOffsets70_g57661).xz ) , break46_g57661.x);
				float4 lerpResult22_g57661 = lerp( lerpResult20_g57661 , lerpResult40_g57661 , break46_g57661.y);
				float4 Output_Fetch2D44_g57661 = lerpResult22_g57661;
				float3 unpack500_g57633 = UnpackNormalScale( Output_Fetch2D44_g57661, _DetailSecondaryNormalStrength );
				unpack500_g57633.z = lerp( 1, unpack500_g57633.z, saturate(_DetailSecondaryNormalStrength) );
				float3 lerpResult1285_g57633 = lerp( Normal_In880_g57633 , unpack500_g57633 , Blend_DetailSecondaryMask755_g57633);
				float3 lerpResult1241_g57633 = lerp( unpack500_g57633 , lerpResult1285_g57633 , _DetailSecondaryMaskEnable);
				float3 Normal_DetailSecondary806_g57633 = lerpResult1241_g57633;
				float layeredBlendVar1280_g57633 = BlendSecondary786_g57633;
				float3 layeredBlend1280_g57633 = ( lerp( temp_output_38_0_g57633,Normal_DetailSecondary806_g57633 , layeredBlendVar1280_g57633 ) );
				float2 weightedBlendVar1118_g57633 = appendResult1114_g57633;
				float3 weightedAvg1118_g57633 = ( ( weightedBlendVar1118_g57633.x*layeredBlend1278_g57633 + weightedBlendVar1118_g57633.y*layeredBlend1280_g57633 )/( weightedBlendVar1118_g57633.x + weightedBlendVar1118_g57633.y ) );
				float3 lerpResult488_g57633 = lerp( layeredBlend1278_g57633 , weightedAvg1118_g57633 , _DetailSecondaryEnable);
				float3 break817_g57633 = lerpResult488_g57633;
				float3 appendResult820_g57633 = (float3(break817_g57633.x , break817_g57633.y , ( break817_g57633.z + 0.001 )));
				float3 lerpResult410_g57633 = lerp( temp_output_38_0_g57633 , appendResult820_g57633 , temp_output_634_0_g57633);
				
				float3 MASK_B1440_g57705 = (SAMPLE_TEXTURE2D( _MetallicGlossMap, sampler_MetallicGlossMap, vertexToFrag70_g57784 )).rgb;
				
				float3 MASK_G1438_g57705 = (SAMPLE_TEXTURE2D( _SmoothnessMap, sampler_SmoothnessMap, vertexToFrag70_g57784 )).rgb;
				float temp_output_269_0_g57788 = MASK_G1438_g57705.x;
				float lerpResult347_g57788 = lerp( temp_output_269_0_g57788 , ( 1.0 - temp_output_269_0_g57788 ) , _SmoothnessSource);
				float lerpResult362_g57788 = lerp( ( _SmoothnessStrengthRemapMin + ( _SmoothnessStrength.x * 0.0 ) ) , ( _SmoothnessStrengthRemapMax + ( ( _CATEGORY_SMOOTHNESS + _SPACE_SMOOTHNESS ) * 0.0 ) ) , lerpResult347_g57788);
				float2 appendResult368_g57788 = (float2(WorldViewDirection.xy));
				float3 appendResult367_g57788 = (float3(appendResult368_g57788 , ( WorldViewDirection.z / 1.06 )));
				float3 temp_output_263_0_g57788 = unpack1731_g57705;
				float3 normalizeResult310_g57788 = normalize( ( ( WorldTangent * temp_output_263_0_g57788.x ) + ( WorldBiTangent * temp_output_263_0_g57788.y ) + ( WorldNormal * temp_output_263_0_g57788.z ) ) );
				float fresnelNdotV309_g57788 = dot( normalize( normalizeResult310_g57788 ), appendResult367_g57788 );
				float fresnelNode309_g57788 = ( 0.0 + ( 1.0 - _SmoothnessFresnelScale ) * pow( max( 1.0 - fresnelNdotV309_g57788 , 0.0001 ), _SmoothnessFresnelPower ) );
				float lerpResult335_g57788 = lerp( lerpResult362_g57788 , ( lerpResult362_g57788 - fresnelNode309_g57788 ) , _SmoothnessFresnelEnable);
				
				float temp_output_185_0_g57820 = ( 1.0 - ( _OcclusionStrengthAORemapMin + ( _OcclusionStrengthAO.x * 0.0 ) ) );
				float temp_output_186_0_g57820 = ( 1.0 - ( _OcclusionStrengthAORemapMax + ( ( _CATEGORY_OCCLUSION + _SPACE_OCCLUSION ) * 0.0 ) ) );
				float3 MASK_R1439_g57705 = (SAMPLE_TEXTURE2D( _OcclusionMap, sampler_OcclusionMap, vertexToFrag70_g57784 )).rgb;
				float temp_output_49_0_g57820 = MASK_R1439_g57705.x;
				float lerpResult147_g57820 = lerp( ( 1.0 - temp_output_49_0_g57820 ) , temp_output_49_0_g57820 , _OcclusionSourceInverted);
				float lerpResult143_g57820 = lerp( temp_output_185_0_g57820 , temp_output_186_0_g57820 , lerpResult147_g57820);
				float lerpResult75_g57820 = lerp( temp_output_185_0_g57820 , temp_output_186_0_g57820 , IN.ase_color.a);
				float lerpResult73_g57820 = lerp( lerpResult143_g57820 , lerpResult75_g57820 , _OcclusionSourceBaked);
				

				float3 BaseColor = lerpResult409_g57633;
				float3 Normal = lerpResult410_g57633;
				float3 Emission = 0;
				float3 Specular = 0.5;
				float Metallic = ( MASK_B1440_g57705.x * ( _MetallicStrength + ( ( _CATEGORY_METALLIC + _SPACE_METALLIC ) * 0.0 ) ) );
				float Smoothness = saturate( lerpResult335_g57788 );
				float Occlusion = saturate( lerpResult73_g57820 );
				float Alpha = 1;
				float AlphaClipThreshold = 0.5;
				float AlphaClipThresholdShadow = 0.5;
				float3 BakedGI = 0;
				float3 RefractionColor = 1;
				float RefractionIndex = 1;
				float3 Transmission = 1;
				float3 Translucency = 1;

				#ifdef ASE_DEPTH_WRITE_ON
					float DepthValue = IN.clipPos.z;
				#endif

				#ifdef _CLEARCOAT
					float CoatMask = 0;
					float CoatSmoothness = 0;
				#endif

				#ifdef _ALPHATEST_ON
					clip(Alpha - AlphaClipThreshold);
				#endif

				InputData inputData = (InputData)0;
				inputData.positionWS = WorldPosition;
				inputData.viewDirectionWS = WorldViewDirection;

				#ifdef _NORMALMAP
						#if _NORMAL_DROPOFF_TS
							inputData.normalWS = TransformTangentToWorld(Normal, half3x3(WorldTangent, WorldBiTangent, WorldNormal));
						#elif _NORMAL_DROPOFF_OS
							inputData.normalWS = TransformObjectToWorldNormal(Normal);
						#elif _NORMAL_DROPOFF_WS
							inputData.normalWS = Normal;
						#endif
					inputData.normalWS = NormalizeNormalPerPixel(inputData.normalWS);
				#else
					inputData.normalWS = WorldNormal;
				#endif

				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
					inputData.shadowCoord = ShadowCoords;
				#elif defined(MAIN_LIGHT_CALCULATE_SHADOWS)
					inputData.shadowCoord = TransformWorldToShadowCoord(inputData.positionWS);
				#else
					inputData.shadowCoord = float4(0, 0, 0, 0);
				#endif

				#ifdef ASE_FOG
					inputData.fogCoord = IN.fogFactorAndVertexLight.x;
				#endif
					inputData.vertexLighting = IN.fogFactorAndVertexLight.yzw;

				#if defined(ENABLE_TERRAIN_PERPIXEL_NORMAL)
					float3 SH = SampleSH(inputData.normalWS.xyz);
				#else
					float3 SH = IN.lightmapUVOrVertexSH.xyz;
				#endif

				#if defined(DYNAMICLIGHTMAP_ON)
					inputData.bakedGI = SAMPLE_GI(IN.lightmapUVOrVertexSH.xy, IN.dynamicLightmapUV.xy, SH, inputData.normalWS);
				#else
					inputData.bakedGI = SAMPLE_GI(IN.lightmapUVOrVertexSH.xy, SH, inputData.normalWS);
				#endif

				#ifdef ASE_BAKEDGI
					inputData.bakedGI = BakedGI;
				#endif

				inputData.normalizedScreenSpaceUV = NormalizedScreenSpaceUV;
				inputData.shadowMask = SAMPLE_SHADOWMASK(IN.lightmapUVOrVertexSH.xy);

				#if defined(DEBUG_DISPLAY)
					#if defined(DYNAMICLIGHTMAP_ON)
						inputData.dynamicLightmapUV = IN.dynamicLightmapUV.xy;
					#endif
					#if defined(LIGHTMAP_ON)
						inputData.staticLightmapUV = IN.lightmapUVOrVertexSH.xy;
					#else
						inputData.vertexSH = SH;
					#endif
				#endif

				SurfaceData surfaceData;
				surfaceData.albedo              = BaseColor;
				surfaceData.metallic            = saturate(Metallic);
				surfaceData.specular            = Specular;
				surfaceData.smoothness          = saturate(Smoothness),
				surfaceData.occlusion           = Occlusion,
				surfaceData.emission            = Emission,
				surfaceData.alpha               = saturate(Alpha);
				surfaceData.normalTS            = Normal;
				surfaceData.clearCoatMask       = 0;
				surfaceData.clearCoatSmoothness = 1;

				#ifdef _CLEARCOAT
					surfaceData.clearCoatMask       = saturate(CoatMask);
					surfaceData.clearCoatSmoothness = saturate(CoatSmoothness);
				#endif

				#ifdef _DBUFFER
					ApplyDecalToSurfaceData(IN.clipPos, surfaceData, inputData);
				#endif

				half4 color = UniversalFragmentPBR( inputData, surfaceData);

				#ifdef ASE_TRANSMISSION
				{
					float shadow = _TransmissionShadow;

					Light mainLight = GetMainLight( inputData.shadowCoord );
					float3 mainAtten = mainLight.color * mainLight.distanceAttenuation;
					mainAtten = lerp( mainAtten, mainAtten * mainLight.shadowAttenuation, shadow );
					half3 mainTransmission = max(0 , -dot(inputData.normalWS, mainLight.direction)) * mainAtten * Transmission;
					color.rgb += BaseColor * mainTransmission;

					#ifdef _ADDITIONAL_LIGHTS
						int transPixelLightCount = GetAdditionalLightsCount();
						for (int i = 0; i < transPixelLightCount; ++i)
						{
							Light light = GetAdditionalLight(i, inputData.positionWS);
							float3 atten = light.color * light.distanceAttenuation;
							atten = lerp( atten, atten * light.shadowAttenuation, shadow );

							half3 transmission = max(0 , -dot(inputData.normalWS, light.direction)) * atten * Transmission;
							color.rgb += BaseColor * transmission;
						}
					#endif
				}
				#endif

				#ifdef ASE_TRANSLUCENCY
				{
					float shadow = _TransShadow;
					float normal = _TransNormal;
					float scattering = _TransScattering;
					float direct = _TransDirect;
					float ambient = _TransAmbient;
					float strength = _TransStrength;

					Light mainLight = GetMainLight( inputData.shadowCoord );
					float3 mainAtten = mainLight.color * mainLight.distanceAttenuation;
					mainAtten = lerp( mainAtten, mainAtten * mainLight.shadowAttenuation, shadow );

					half3 mainLightDir = mainLight.direction + inputData.normalWS * normal;
					half mainVdotL = pow( saturate( dot( inputData.viewDirectionWS, -mainLightDir ) ), scattering );
					half3 mainTranslucency = mainAtten * ( mainVdotL * direct + inputData.bakedGI * ambient ) * Translucency;
					color.rgb += BaseColor * mainTranslucency * strength;

					#ifdef _ADDITIONAL_LIGHTS
						int transPixelLightCount = GetAdditionalLightsCount();
						for (int i = 0; i < transPixelLightCount; ++i)
						{
							Light light = GetAdditionalLight(i, inputData.positionWS);
							float3 atten = light.color * light.distanceAttenuation;
							atten = lerp( atten, atten * light.shadowAttenuation, shadow );

							half3 lightDir = light.direction + inputData.normalWS * normal;
							half VdotL = pow( saturate( dot( inputData.viewDirectionWS, -lightDir ) ), scattering );
							half3 translucency = atten * ( VdotL * direct + inputData.bakedGI * ambient ) * Translucency;
							color.rgb += BaseColor * translucency * strength;
						}
					#endif
				}
				#endif

				#ifdef ASE_REFRACTION
					float4 projScreenPos = ScreenPos / ScreenPos.w;
					float3 refractionOffset = ( RefractionIndex - 1.0 ) * mul( UNITY_MATRIX_V, float4( WorldNormal,0 ) ).xyz * ( 1.0 - dot( WorldNormal, WorldViewDirection ) );
					projScreenPos.xy += refractionOffset.xy;
					float3 refraction = SHADERGRAPH_SAMPLE_SCENE_COLOR( projScreenPos.xy ) * RefractionColor;
					color.rgb = lerp( refraction, color.rgb, color.a );
					color.a = 1;
				#endif

				#ifdef ASE_FINAL_COLOR_ALPHA_MULTIPLY
					color.rgb *= color.a;
				#endif

				#ifdef ASE_FOG
					#ifdef TERRAIN_SPLAT_ADDPASS
						color.rgb = MixFogColor(color.rgb, half3( 0, 0, 0 ), IN.fogFactorAndVertexLight.x );
					#else
						color.rgb = MixFog(color.rgb, IN.fogFactorAndVertexLight.x);
					#endif
				#endif

				#ifdef ASE_DEPTH_WRITE_ON
					outputDepth = DepthValue;
				#endif

				return color;
			}

			ENDHLSL
		}

		
		Pass
		{
			
			Name "ShadowCaster"
			Tags { "LightMode"="ShadowCaster" }

			ZWrite On
			ZTest LEqual
			AlphaToMask Off
			ColorMask 0

			HLSLPROGRAM

			#define _NORMAL_DROPOFF_TS 1
			#pragma multi_compile_instancing
			#pragma multi_compile_fragment _ LOD_FADE_CROSSFADE
			#define ASE_FOG 1
			#define _NORMALMAP 1
			#define ASE_SRP_VERSION 120112
			#define ASE_USING_SAMPLING_MACROS 1


			#pragma vertex vert
			#pragma fragment frag

			#pragma multi_compile_vertex _ _CASTING_PUNCTUAL_LIGHT_SHADOW

			#define SHADERPASS SHADERPASS_SHADOWCASTER

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Input.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"

			

			#if defined(ASE_EARLY_Z_DEPTH_OPTIMIZE) && (SHADER_TARGET >= 45)
				#define ASE_SV_DEPTH SV_DepthLessEqual
				#define ASE_SV_POSITION_QUALIFIERS linear noperspective centroid
			#else
				#define ASE_SV_DEPTH SV_Depth
				#define ASE_SV_POSITION_QUALIFIERS
			#endif

			struct VertexInput
			{
				float4 vertex : POSITION;
				float3 ase_normal : NORMAL;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct VertexOutput
			{
				ASE_SV_POSITION_QUALIFIERS float4 clipPos : SV_POSITION;
				float4 clipPosV : TEXCOORD0;
				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
					float3 worldPos : TEXCOORD1;
				#endif
				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					float4 shadowCoord : TEXCOORD2;
				#endif				
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _DetailSecondaryMaskMap_TexelSize;
			float4 _DetailNormalMap_TexelSize;
			half4 _DetailSecondaryColor;
			half4 _SmoothnessStrength;
			float4 _DetailMaskMap_TexelSize;
			float4 _DetailMaskUVs;
			float4 _DetailSecondaryUVs;
			float4 _DetailSecondaryColorMap_TexelSize;
			float4 _DetailUVs;
			float4 _DetailColorMap_TexelSize;
			half4 _OcclusionStrengthAO;
			half4 _DetailColor;
			half4 _BaseColor;
			float4 _MainUVs;
			float4 _DetailSecondaryNormalMap_TexelSize;
			float4 _DetailSecondaryMaskUVs;
			half _DetailNormalStrength;
			float _SPACE_DETAIL;
			float _DetailSecondaryEnable;
			float _CATEGORY_DETAILMAPPING;
			float _CATEGORY_DETAILMAPPINGSECONDARY;
			half _DetailSecondaryBlendHeight;
			int _DetailSecondaryBlendVertexColor;
			float _SPACE_DETAILSECONDARY;
			half _NormalStrength;
			half _DetailSecondaryBlendSmooth;
			half _DetailEnable;
			float _SPACE_METALLIC;
			float _MetallicStrength;
			float _SPACE_OCCLUSION;
			float _CATEGORY_OCCLUSION;
			half _OcclusionStrengthAORemapMax;
			half _OcclusionStrengthAORemapMin;
			half _SmoothnessFresnelEnable;
			half _SmoothnessFresnelPower;
			half _DetailSecondaryNormalStrength;
			half _SmoothnessFresnelScale;
			float _SPACE_SMOOTHNESS;
			float _CATEGORY_SMOOTHNESS;
			half _SmoothnessStrengthRemapMax;
			half _SmoothnessStrengthRemapMin;
			half _DetailSecondaryBlendStrength;
			float _CATEGORY_METALLIC;
			half _SmoothnessSource;
			half _DetailSecondaryBlendSource;
			int _Cull;
			half _DetailSecondaryMaskBlendFalloff;
			half _DetailMaskBlendHardness;
			half _DetailMaskBlendStrength;
			half _DetailMaskIsInverted;
			half _DetailMaskUVRotation;
			float _DetailSaturation;
			half _DetailBrightness;
			half _DetailMaskBlendFalloff;
			half _DetailUVMode;
			half _Brightness;
			float _BaseColorSaturation;
			float _CATEGORY_SURFACEINPUTS;
			float _SPACE_SURFACEINPUTS;
			float _CATEGORY_SURFACEOPTIONS;
			float _SPACE_SURFACEOPTIONS;
			half _DetailUVRotation;
			half _DetailSecondaryMaskEnable;
			half _DetailMaskEnable;
			half _DetailBlendStrength;
			half _DetailSecondaryMaskBlendHardness;
			half _DetailSecondaryMaskBlendStrength;
			half _DetailSecondaryMaskIsInverted;
			half _OcclusionSourceInverted;
			half _DetailSecondaryMaskUVRotation;
			float _DetailSecondarySaturation;
			half _DetailBlendSource;
			half _DetailSecondaryBrightness;
			half _DetailSecondaryUVRotation;
			float _DetailSecondaryBlendWeightLayer2;
			float _DetailSecondaryBlendWeightLayer1;
			half _DetailBlendHeight;
			int _DetailBlendVertexColor;
			half _DetailBlendSmooth;
			half _DetailSecondaryUVMode;
			half _OcclusionSourceBaked;
			#ifdef ASE_TRANSMISSION
				float _TransmissionShadow;
			#endif
			#ifdef ASE_TRANSLUCENCY
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef ASE_TESSELLATION
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END

			// Property used by ScenePickingPass
			#ifdef SCENEPICKINGPASS
				float4 _SelectionID;
			#endif

			// Properties used by SceneSelectionPass
			#ifdef SCENESELECTIONPASS
				int _ObjectId;
				int _PassValue;
			#endif

			

			//#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/Varyings.hlsl"
			//#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShadowCasterPass.hlsl"

			//#ifdef HAVE_VFX_MODIFICATION
			//#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/VisualEffectVertex.hlsl"
			//#endif

			
			float3 _LightDirection;
			float3 _LightPosition;

			VertexOutput VertexFunction( VertexInput v )
			{
				VertexOutput o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( o );

				

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.vertex.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif

				float3 vertexValue = defaultVertexValue;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					v.vertex.xyz = vertexValue;
				#else
					v.vertex.xyz += vertexValue;
				#endif

				v.ase_normal = v.ase_normal;

				float3 positionWS = TransformObjectToWorld( v.vertex.xyz );

				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
					o.worldPos = positionWS;
				#endif

				float3 normalWS = TransformObjectToWorldDir(v.ase_normal);

				#if _CASTING_PUNCTUAL_LIGHT_SHADOW
					float3 lightDirectionWS = normalize(_LightPosition - positionWS);
				#else
					float3 lightDirectionWS = _LightDirection;
				#endif

				float4 clipPos = TransformWorldToHClip(ApplyShadowBias(positionWS, normalWS, lightDirectionWS));

				#if UNITY_REVERSED_Z
					clipPos.z = min(clipPos.z, UNITY_NEAR_CLIP_VALUE);
				#else
					clipPos.z = max(clipPos.z, UNITY_NEAR_CLIP_VALUE);
				#endif

				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					VertexPositionInputs vertexInput = (VertexPositionInputs)0;
					vertexInput.positionWS = positionWS;
					vertexInput.positionCS = clipPos;
					o.shadowCoord = GetShadowCoord( vertexInput );
				#endif

				o.clipPos = clipPos;
				o.clipPosV = clipPos;
				return o;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float4 vertex : INTERNALTESSPOS;
				float3 ase_normal : NORMAL;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( VertexInput v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.vertex = v.vertex;
				o.ase_normal = v.ase_normal;
				
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
				return patch[id];
			}

			[domain("tri")]
			VertexOutput DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				VertexInput o = (VertexInput) 0;
				o.vertex = patch[0].vertex * bary.x + patch[1].vertex * bary.y + patch[2].vertex * bary.z;
				o.ase_normal = patch[0].ase_normal * bary.x + patch[1].ase_normal * bary.y + patch[2].ase_normal * bary.z;
				
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.vertex.xyz - patch[i].ase_normal * (dot(o.vertex.xyz, patch[i].ase_normal) - dot(patch[i].vertex.xyz, patch[i].ase_normal));
				float phongStrength = _TessPhongStrength;
				o.vertex.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.vertex.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			VertexOutput vert ( VertexInput v )
			{
				return VertexFunction( v );
			}
			#endif

			half4 frag(	VertexOutput IN
						#ifdef ASE_DEPTH_WRITE_ON
						,out float outputDepth : ASE_SV_DEPTH
						#endif
						 ) : SV_TARGET
			{
				UNITY_SETUP_INSTANCE_ID( IN );
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( IN );

				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
					float3 WorldPosition = IN.worldPos;
				#endif

				float4 ShadowCoords = float4( 0, 0, 0, 0 );
				float4 ClipPos = IN.clipPosV;
				float4 ScreenPos = ComputeScreenPos( IN.clipPosV );

				#if defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
						ShadowCoords = IN.shadowCoord;
					#elif defined(MAIN_LIGHT_CALCULATE_SHADOWS)
						ShadowCoords = TransformWorldToShadowCoord( WorldPosition );
					#endif
				#endif

				

				float Alpha = 1;
				float AlphaClipThreshold = 0.5;
				float AlphaClipThresholdShadow = 0.5;

				#ifdef ASE_DEPTH_WRITE_ON
					float DepthValue = IN.clipPos.z;
				#endif

				#ifdef _ALPHATEST_ON
					#ifdef _ALPHATEST_SHADOW_ON
						clip(Alpha - AlphaClipThresholdShadow);
					#else
						clip(Alpha - AlphaClipThreshold);
					#endif
				#endif

				#ifdef LOD_FADE_CROSSFADE
					LODDitheringTransition( IN.clipPos.xyz, unity_LODFade.x );
				#endif

				#ifdef ASE_DEPTH_WRITE_ON
					outputDepth = DepthValue;
				#endif

				return 0;
			}
			ENDHLSL
		}

		
		Pass
		{
			
			Name "DepthOnly"
			Tags { "LightMode"="DepthOnly" }

			ZWrite On
			ColorMask 0
			AlphaToMask Off

			HLSLPROGRAM

			#define _NORMAL_DROPOFF_TS 1
			#pragma multi_compile_instancing
			#pragma multi_compile_fragment _ LOD_FADE_CROSSFADE
			#define ASE_FOG 1
			#define _NORMALMAP 1
			#define ASE_SRP_VERSION 120112
			#define ASE_USING_SAMPLING_MACROS 1


			#pragma vertex vert
			#pragma fragment frag

			#define SHADERPASS SHADERPASS_DEPTHONLY

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Input.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"

			

			#if defined(ASE_EARLY_Z_DEPTH_OPTIMIZE) && (SHADER_TARGET >= 45)
				#define ASE_SV_DEPTH SV_DepthLessEqual
				#define ASE_SV_POSITION_QUALIFIERS linear noperspective centroid
			#else
				#define ASE_SV_DEPTH SV_Depth
				#define ASE_SV_POSITION_QUALIFIERS
			#endif

			struct VertexInput
			{
				float4 vertex : POSITION;
				float3 ase_normal : NORMAL;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct VertexOutput
			{
				ASE_SV_POSITION_QUALIFIERS float4 clipPos : SV_POSITION;
				float4 clipPosV : TEXCOORD0;
				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
				float3 worldPos : TEXCOORD1;
				#endif
				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
				float4 shadowCoord : TEXCOORD2;
				#endif
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _DetailSecondaryMaskMap_TexelSize;
			float4 _DetailNormalMap_TexelSize;
			half4 _DetailSecondaryColor;
			half4 _SmoothnessStrength;
			float4 _DetailMaskMap_TexelSize;
			float4 _DetailMaskUVs;
			float4 _DetailSecondaryUVs;
			float4 _DetailSecondaryColorMap_TexelSize;
			float4 _DetailUVs;
			float4 _DetailColorMap_TexelSize;
			half4 _OcclusionStrengthAO;
			half4 _DetailColor;
			half4 _BaseColor;
			float4 _MainUVs;
			float4 _DetailSecondaryNormalMap_TexelSize;
			float4 _DetailSecondaryMaskUVs;
			half _DetailNormalStrength;
			float _SPACE_DETAIL;
			float _DetailSecondaryEnable;
			float _CATEGORY_DETAILMAPPING;
			float _CATEGORY_DETAILMAPPINGSECONDARY;
			half _DetailSecondaryBlendHeight;
			int _DetailSecondaryBlendVertexColor;
			float _SPACE_DETAILSECONDARY;
			half _NormalStrength;
			half _DetailSecondaryBlendSmooth;
			half _DetailEnable;
			float _SPACE_METALLIC;
			float _MetallicStrength;
			float _SPACE_OCCLUSION;
			float _CATEGORY_OCCLUSION;
			half _OcclusionStrengthAORemapMax;
			half _OcclusionStrengthAORemapMin;
			half _SmoothnessFresnelEnable;
			half _SmoothnessFresnelPower;
			half _DetailSecondaryNormalStrength;
			half _SmoothnessFresnelScale;
			float _SPACE_SMOOTHNESS;
			float _CATEGORY_SMOOTHNESS;
			half _SmoothnessStrengthRemapMax;
			half _SmoothnessStrengthRemapMin;
			half _DetailSecondaryBlendStrength;
			float _CATEGORY_METALLIC;
			half _SmoothnessSource;
			half _DetailSecondaryBlendSource;
			int _Cull;
			half _DetailSecondaryMaskBlendFalloff;
			half _DetailMaskBlendHardness;
			half _DetailMaskBlendStrength;
			half _DetailMaskIsInverted;
			half _DetailMaskUVRotation;
			float _DetailSaturation;
			half _DetailBrightness;
			half _DetailMaskBlendFalloff;
			half _DetailUVMode;
			half _Brightness;
			float _BaseColorSaturation;
			float _CATEGORY_SURFACEINPUTS;
			float _SPACE_SURFACEINPUTS;
			float _CATEGORY_SURFACEOPTIONS;
			float _SPACE_SURFACEOPTIONS;
			half _DetailUVRotation;
			half _DetailSecondaryMaskEnable;
			half _DetailMaskEnable;
			half _DetailBlendStrength;
			half _DetailSecondaryMaskBlendHardness;
			half _DetailSecondaryMaskBlendStrength;
			half _DetailSecondaryMaskIsInverted;
			half _OcclusionSourceInverted;
			half _DetailSecondaryMaskUVRotation;
			float _DetailSecondarySaturation;
			half _DetailBlendSource;
			half _DetailSecondaryBrightness;
			half _DetailSecondaryUVRotation;
			float _DetailSecondaryBlendWeightLayer2;
			float _DetailSecondaryBlendWeightLayer1;
			half _DetailBlendHeight;
			int _DetailBlendVertexColor;
			half _DetailBlendSmooth;
			half _DetailSecondaryUVMode;
			half _OcclusionSourceBaked;
			#ifdef ASE_TRANSMISSION
				float _TransmissionShadow;
			#endif
			#ifdef ASE_TRANSLUCENCY
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef ASE_TESSELLATION
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END

			// Property used by ScenePickingPass
			#ifdef SCENEPICKINGPASS
				float4 _SelectionID;
			#endif

			// Properties used by SceneSelectionPass
			#ifdef SCENESELECTIONPASS
				int _ObjectId;
				int _PassValue;
			#endif

			

			//#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/Varyings.hlsl"
			//#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/DepthOnlyPass.hlsl"

			//#ifdef HAVE_VFX_MODIFICATION
			//#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/VisualEffectVertex.hlsl"
			//#endif

			
			VertexOutput VertexFunction( VertexInput v  )
			{
				VertexOutput o = (VertexOutput)0;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.vertex.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif

				float3 vertexValue = defaultVertexValue;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					v.vertex.xyz = vertexValue;
				#else
					v.vertex.xyz += vertexValue;
				#endif

				v.ase_normal = v.ase_normal;
				float3 positionWS = TransformObjectToWorld( v.vertex.xyz );
				float4 positionCS = TransformWorldToHClip( positionWS );

				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
					o.worldPos = positionWS;
				#endif

				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					VertexPositionInputs vertexInput = (VertexPositionInputs)0;
					vertexInput.positionWS = positionWS;
					vertexInput.positionCS = positionCS;
					o.shadowCoord = GetShadowCoord( vertexInput );
				#endif

				o.clipPos = positionCS;
				o.clipPosV = positionCS;
				return o;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float4 vertex : INTERNALTESSPOS;
				float3 ase_normal : NORMAL;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( VertexInput v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.vertex = v.vertex;
				o.ase_normal = v.ase_normal;
				
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
				return patch[id];
			}

			[domain("tri")]
			VertexOutput DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				VertexInput o = (VertexInput) 0;
				o.vertex = patch[0].vertex * bary.x + patch[1].vertex * bary.y + patch[2].vertex * bary.z;
				o.ase_normal = patch[0].ase_normal * bary.x + patch[1].ase_normal * bary.y + patch[2].ase_normal * bary.z;
				
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.vertex.xyz - patch[i].ase_normal * (dot(o.vertex.xyz, patch[i].ase_normal) - dot(patch[i].vertex.xyz, patch[i].ase_normal));
				float phongStrength = _TessPhongStrength;
				o.vertex.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.vertex.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			VertexOutput vert ( VertexInput v )
			{
				return VertexFunction( v );
			}
			#endif

			half4 frag(	VertexOutput IN
						#ifdef ASE_DEPTH_WRITE_ON
						,out float outputDepth : ASE_SV_DEPTH
						#endif
						 ) : SV_TARGET
			{
				UNITY_SETUP_INSTANCE_ID(IN);
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( IN );

				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
				float3 WorldPosition = IN.worldPos;
				#endif

				float4 ShadowCoords = float4( 0, 0, 0, 0 );
				float4 ClipPos = IN.clipPosV;
				float4 ScreenPos = ComputeScreenPos( IN.clipPosV );

				#if defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
						ShadowCoords = IN.shadowCoord;
					#elif defined(MAIN_LIGHT_CALCULATE_SHADOWS)
						ShadowCoords = TransformWorldToShadowCoord( WorldPosition );
					#endif
				#endif

				

				float Alpha = 1;
				float AlphaClipThreshold = 0.5;
				#ifdef ASE_DEPTH_WRITE_ON
					float DepthValue = IN.clipPos.z;
				#endif

				#ifdef _ALPHATEST_ON
					clip(Alpha - AlphaClipThreshold);
				#endif

				#ifdef LOD_FADE_CROSSFADE
					LODDitheringTransition( IN.clipPos.xyz, unity_LODFade.x );
				#endif

				#ifdef ASE_DEPTH_WRITE_ON
					outputDepth = DepthValue;
				#endif

				return 0;
			}
			ENDHLSL
		}

		
		Pass
		{
			
			Name "Meta"
			Tags { "LightMode"="Meta" }

			Cull Off

			HLSLPROGRAM

			#define _NORMAL_DROPOFF_TS 1
			#define ASE_FOG 1
			#define _NORMALMAP 1
			#define ASE_SRP_VERSION 120112
			#ifdef UNITY_COLORSPACE_GAMMA//ASE Color Space Def
			#define unity_ColorSpaceDouble half4(2.0, 2.0, 2.0, 2.0)//ASE Color Space Def
			#else // Linear values//ASE Color Space Def
			#define unity_ColorSpaceDouble half4(4.59479380, 4.59479380, 4.59479380, 2.0)//ASE Color Space Def
			#endif//ASE Color Space Def
			#define ASE_USING_SAMPLING_MACROS 1


			#pragma vertex vert
			#pragma fragment frag

			#pragma shader_feature EDITOR_VISUALIZATION

			#define SHADERPASS SHADERPASS_META

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Input.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/MetaInput.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"

			#define ASE_NEEDS_FRAG_COLOR


			struct VertexInput
			{
				float4 vertex : POSITION;
				float3 ase_normal : NORMAL;
				float4 texcoord0 : TEXCOORD0;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct VertexOutput
			{
				float4 clipPos : SV_POSITION;
				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
					float3 worldPos : TEXCOORD0;
				#endif
				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					float4 shadowCoord : TEXCOORD1;
				#endif
				#ifdef EDITOR_VISUALIZATION
					float4 VizUV : TEXCOORD2;
					float4 LightCoord : TEXCOORD3;
				#endif
				float4 ase_texcoord4 : TEXCOORD4;
				float4 ase_texcoord5 : TEXCOORD5;
				float4 ase_color : COLOR;
				float4 ase_texcoord6 : TEXCOORD6;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _DetailSecondaryMaskMap_TexelSize;
			float4 _DetailNormalMap_TexelSize;
			half4 _DetailSecondaryColor;
			half4 _SmoothnessStrength;
			float4 _DetailMaskMap_TexelSize;
			float4 _DetailMaskUVs;
			float4 _DetailSecondaryUVs;
			float4 _DetailSecondaryColorMap_TexelSize;
			float4 _DetailUVs;
			float4 _DetailColorMap_TexelSize;
			half4 _OcclusionStrengthAO;
			half4 _DetailColor;
			half4 _BaseColor;
			float4 _MainUVs;
			float4 _DetailSecondaryNormalMap_TexelSize;
			float4 _DetailSecondaryMaskUVs;
			half _DetailNormalStrength;
			float _SPACE_DETAIL;
			float _DetailSecondaryEnable;
			float _CATEGORY_DETAILMAPPING;
			float _CATEGORY_DETAILMAPPINGSECONDARY;
			half _DetailSecondaryBlendHeight;
			int _DetailSecondaryBlendVertexColor;
			float _SPACE_DETAILSECONDARY;
			half _NormalStrength;
			half _DetailSecondaryBlendSmooth;
			half _DetailEnable;
			float _SPACE_METALLIC;
			float _MetallicStrength;
			float _SPACE_OCCLUSION;
			float _CATEGORY_OCCLUSION;
			half _OcclusionStrengthAORemapMax;
			half _OcclusionStrengthAORemapMin;
			half _SmoothnessFresnelEnable;
			half _SmoothnessFresnelPower;
			half _DetailSecondaryNormalStrength;
			half _SmoothnessFresnelScale;
			float _SPACE_SMOOTHNESS;
			float _CATEGORY_SMOOTHNESS;
			half _SmoothnessStrengthRemapMax;
			half _SmoothnessStrengthRemapMin;
			half _DetailSecondaryBlendStrength;
			float _CATEGORY_METALLIC;
			half _SmoothnessSource;
			half _DetailSecondaryBlendSource;
			int _Cull;
			half _DetailSecondaryMaskBlendFalloff;
			half _DetailMaskBlendHardness;
			half _DetailMaskBlendStrength;
			half _DetailMaskIsInverted;
			half _DetailMaskUVRotation;
			float _DetailSaturation;
			half _DetailBrightness;
			half _DetailMaskBlendFalloff;
			half _DetailUVMode;
			half _Brightness;
			float _BaseColorSaturation;
			float _CATEGORY_SURFACEINPUTS;
			float _SPACE_SURFACEINPUTS;
			float _CATEGORY_SURFACEOPTIONS;
			float _SPACE_SURFACEOPTIONS;
			half _DetailUVRotation;
			half _DetailSecondaryMaskEnable;
			half _DetailMaskEnable;
			half _DetailBlendStrength;
			half _DetailSecondaryMaskBlendHardness;
			half _DetailSecondaryMaskBlendStrength;
			half _DetailSecondaryMaskIsInverted;
			half _OcclusionSourceInverted;
			half _DetailSecondaryMaskUVRotation;
			float _DetailSecondarySaturation;
			half _DetailBlendSource;
			half _DetailSecondaryBrightness;
			half _DetailSecondaryUVRotation;
			float _DetailSecondaryBlendWeightLayer2;
			float _DetailSecondaryBlendWeightLayer1;
			half _DetailBlendHeight;
			int _DetailBlendVertexColor;
			half _DetailBlendSmooth;
			half _DetailSecondaryUVMode;
			half _OcclusionSourceBaked;
			#ifdef ASE_TRANSMISSION
				float _TransmissionShadow;
			#endif
			#ifdef ASE_TRANSLUCENCY
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef ASE_TESSELLATION
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END

			// Property used by ScenePickingPass
			#ifdef SCENEPICKINGPASS
				float4 _SelectionID;
			#endif

			// Properties used by SceneSelectionPass
			#ifdef SCENESELECTIONPASS
				int _ObjectId;
				int _PassValue;
			#endif

			TEXTURE2D(_MainTex);
			SAMPLER(sampler_MainTex);
			TEXTURE2D(_DetailColorMap);
			TEXTURE2D(_DetailMaskMap);
			TEXTURE2D(_DetailSecondaryColorMap);
			TEXTURE2D(_DetailSecondaryMaskMap);


			//#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/Varyings.hlsl"
			//#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/LightingMetaPass.hlsl"

			//#ifdef HAVE_VFX_MODIFICATION
			//#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/VisualEffectVertex.hlsl"
			//#endif

			float2 float2switchUVMode80_g57687( float m_switch, float2 m_UV0, float2 m_UV1, float2 m_UV2, float2 m_UV3 )
			{
				if(m_switch ==0)
					return m_UV0;
				else if(m_switch ==1)
					return m_UV1;
				else if(m_switch ==2)
					return m_UV2;
				else if(m_switch ==3)
					return m_UV3;
				else
				return float2(0,0);
			}
			
			float2 float2switchUVMode80_g57689( float m_switch, float2 m_UV0, float2 m_UV1, float2 m_UV2, float2 m_UV3 )
			{
				if(m_switch ==0)
					return m_UV0;
				else if(m_switch ==1)
					return m_UV1;
				else if(m_switch ==2)
					return m_UV2;
				else if(m_switch ==3)
					return m_UV3;
				else
				return float2(0,0);
			}
			
			float MaskVCSwitch44_g57704( float m_switch, float m_Off, float m_R, float m_G, float m_B, float m_A )
			{
				if(m_switch ==0)
					return m_Off;
				else if(m_switch ==1)
					return m_R;
				else if(m_switch ==2)
					return m_G;
				else if(m_switch ==3)
					return m_B;
				else if(m_switch ==4)
					return m_A;
				else
				return float(0);
			}
			
			float2 float2switchUVMode80_g57691( float m_switch, float2 m_UV0, float2 m_UV1, float2 m_UV2, float2 m_UV3 )
			{
				if(m_switch ==0)
					return m_UV0;
				else if(m_switch ==1)
					return m_UV1;
				else if(m_switch ==2)
					return m_UV2;
				else if(m_switch ==3)
					return m_UV3;
				else
				return float2(0,0);
			}
			
			float2 float2switchUVMode80_g57693( float m_switch, float2 m_UV0, float2 m_UV1, float2 m_UV2, float2 m_UV3 )
			{
				if(m_switch ==0)
					return m_UV0;
				else if(m_switch ==1)
					return m_UV1;
				else if(m_switch ==2)
					return m_UV2;
				else if(m_switch ==3)
					return m_UV3;
				else
				return float2(0,0);
			}
			
			float MaskVCSwitch44_g57703( float m_switch, float m_Off, float m_R, float m_G, float m_B, float m_A )
			{
				if(m_switch ==0)
					return m_Off;
				else if(m_switch ==1)
					return m_R;
				else if(m_switch ==2)
					return m_G;
				else if(m_switch ==3)
					return m_B;
				else if(m_switch ==4)
					return m_A;
				else
				return float(0);
			}
			

			VertexOutput VertexFunction( VertexInput v  )
			{
				VertexOutput o = (VertexOutput)0;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				float2 temp_output_1848_0_g57705 = (_MainUVs).xy;
				float2 temp_output_1847_0_g57705 = (_MainUVs).zw;
				float2 Offset235_g57784 = temp_output_1847_0_g57705;
				float2 temp_output_41_0_g57784 = ( ( v.texcoord0.xy * temp_output_1848_0_g57705 ) + Offset235_g57784 );
				float2 vertexToFrag70_g57784 = temp_output_41_0_g57784;
				o.ase_texcoord4.xy = vertexToFrag70_g57784;
				float temp_output_6_0_g57687 = _DetailUVRotation;
				float temp_output_200_0_g57687 = radians( temp_output_6_0_g57687 );
				float temp_output_13_0_g57687 = cos( temp_output_200_0_g57687 );
				float m_switch80_g57687 = _DetailUVMode;
				float2 m_UV080_g57687 = v.texcoord0.xy;
				float2 m_UV180_g57687 = v.texcoord1.xy;
				float2 m_UV280_g57687 = v.texcoord2.xy;
				float2 m_UV380_g57687 = v.ase_texcoord3.xy;
				float2 localfloat2switchUVMode80_g57687 = float2switchUVMode80_g57687( m_switch80_g57687 , m_UV080_g57687 , m_UV180_g57687 , m_UV280_g57687 , m_UV380_g57687 );
				float2 temp_output_9_0_g57687 = float2( 0.5,0.5 );
				float2 break39_g57687 = ( localfloat2switchUVMode80_g57687 - temp_output_9_0_g57687 );
				float temp_output_14_0_g57687 = sin( temp_output_200_0_g57687 );
				float2 appendResult36_g57687 = (float2(( ( temp_output_13_0_g57687 * break39_g57687.x ) + ( temp_output_14_0_g57687 * break39_g57687.y ) ) , ( ( temp_output_13_0_g57687 * break39_g57687.y ) - ( temp_output_14_0_g57687 * break39_g57687.x ) )));
				float2 Offset235_g57687 = (_DetailUVs).zw;
				float2 temp_output_41_0_g57687 = ( ( ( appendResult36_g57687 * ( (_DetailUVs).xy / 1.0 ) ) + temp_output_9_0_g57687 ) + Offset235_g57687 );
				float2 _ConstantAnchor = float2(0.5,0.5);
				float2 vertexToFrag70_g57687 = ( temp_output_41_0_g57687 - ( ( ( (_DetailUVs).xy / 1.0 ) * _ConstantAnchor ) - _ConstantAnchor ) );
				o.ase_texcoord4.zw = vertexToFrag70_g57687;
				float temp_output_6_0_g57689 = _DetailMaskUVRotation;
				float temp_output_200_0_g57689 = radians( temp_output_6_0_g57689 );
				float temp_output_13_0_g57689 = cos( temp_output_200_0_g57689 );
				float DetailUVMode1060_g57633 = _DetailUVMode;
				float m_switch80_g57689 = DetailUVMode1060_g57633;
				float2 m_UV080_g57689 = v.texcoord0.xy;
				float2 m_UV180_g57689 = v.texcoord1.xy;
				float2 m_UV280_g57689 = v.texcoord2.xy;
				float2 m_UV380_g57689 = v.ase_texcoord3.xy;
				float2 localfloat2switchUVMode80_g57689 = float2switchUVMode80_g57689( m_switch80_g57689 , m_UV080_g57689 , m_UV180_g57689 , m_UV280_g57689 , m_UV380_g57689 );
				float2 temp_output_9_0_g57689 = float2( 0.5,0.5 );
				float2 break39_g57689 = ( localfloat2switchUVMode80_g57689 - temp_output_9_0_g57689 );
				float temp_output_14_0_g57689 = sin( temp_output_200_0_g57689 );
				float2 appendResult36_g57689 = (float2(( ( temp_output_13_0_g57689 * break39_g57689.x ) + ( temp_output_14_0_g57689 * break39_g57689.y ) ) , ( ( temp_output_13_0_g57689 * break39_g57689.y ) - ( temp_output_14_0_g57689 * break39_g57689.x ) )));
				float2 Offset235_g57689 = (_DetailMaskUVs).zw;
				float2 temp_output_41_0_g57689 = ( ( ( appendResult36_g57689 * ( (_DetailMaskUVs).xy / 1.0 ) ) + temp_output_9_0_g57689 ) + Offset235_g57689 );
				float2 vertexToFrag70_g57689 = ( temp_output_41_0_g57689 - ( ( ( (_DetailMaskUVs).xy / 1.0 ) * _ConstantAnchor ) - _ConstantAnchor ) );
				o.ase_texcoord5.xy = vertexToFrag70_g57689;
				float temp_output_6_0_g57691 = _DetailSecondaryUVRotation;
				float temp_output_200_0_g57691 = radians( temp_output_6_0_g57691 );
				float temp_output_13_0_g57691 = cos( temp_output_200_0_g57691 );
				float m_switch80_g57691 = _DetailSecondaryUVMode;
				float2 m_UV080_g57691 = v.texcoord0.xy;
				float2 m_UV180_g57691 = v.texcoord1.xy;
				float2 m_UV280_g57691 = v.texcoord2.xy;
				float2 m_UV380_g57691 = v.ase_texcoord3.xy;
				float2 localfloat2switchUVMode80_g57691 = float2switchUVMode80_g57691( m_switch80_g57691 , m_UV080_g57691 , m_UV180_g57691 , m_UV280_g57691 , m_UV380_g57691 );
				float2 temp_output_9_0_g57691 = float2( 0.5,0.5 );
				float2 break39_g57691 = ( localfloat2switchUVMode80_g57691 - temp_output_9_0_g57691 );
				float temp_output_14_0_g57691 = sin( temp_output_200_0_g57691 );
				float2 appendResult36_g57691 = (float2(( ( temp_output_13_0_g57691 * break39_g57691.x ) + ( temp_output_14_0_g57691 * break39_g57691.y ) ) , ( ( temp_output_13_0_g57691 * break39_g57691.y ) - ( temp_output_14_0_g57691 * break39_g57691.x ) )));
				float2 Offset235_g57691 = (_DetailSecondaryUVs).zw;
				float2 temp_output_41_0_g57691 = ( ( ( appendResult36_g57691 * ( (_DetailSecondaryUVs).xy / 1.0 ) ) + temp_output_9_0_g57691 ) + Offset235_g57691 );
				float2 vertexToFrag70_g57691 = ( temp_output_41_0_g57691 - ( ( ( (_DetailSecondaryUVs).xy / 1.0 ) * _ConstantAnchor ) - _ConstantAnchor ) );
				o.ase_texcoord5.zw = vertexToFrag70_g57691;
				float temp_output_6_0_g57693 = _DetailSecondaryMaskUVRotation;
				float temp_output_200_0_g57693 = radians( temp_output_6_0_g57693 );
				float temp_output_13_0_g57693 = cos( temp_output_200_0_g57693 );
				float DetailSecondaryUVMode1059_g57633 = _DetailSecondaryUVMode;
				float m_switch80_g57693 = DetailSecondaryUVMode1059_g57633;
				float2 m_UV080_g57693 = v.texcoord0.xy;
				float2 m_UV180_g57693 = v.texcoord1.xy;
				float2 m_UV280_g57693 = v.texcoord2.xy;
				float2 m_UV380_g57693 = v.ase_texcoord3.xy;
				float2 localfloat2switchUVMode80_g57693 = float2switchUVMode80_g57693( m_switch80_g57693 , m_UV080_g57693 , m_UV180_g57693 , m_UV280_g57693 , m_UV380_g57693 );
				float2 temp_output_9_0_g57693 = float2( 0.5,0.5 );
				float2 break39_g57693 = ( localfloat2switchUVMode80_g57693 - temp_output_9_0_g57693 );
				float temp_output_14_0_g57693 = sin( temp_output_200_0_g57693 );
				float2 appendResult36_g57693 = (float2(( ( temp_output_13_0_g57693 * break39_g57693.x ) + ( temp_output_14_0_g57693 * break39_g57693.y ) ) , ( ( temp_output_13_0_g57693 * break39_g57693.y ) - ( temp_output_14_0_g57693 * break39_g57693.x ) )));
				float2 Offset235_g57693 = (_DetailSecondaryMaskUVs).zw;
				float2 temp_output_41_0_g57693 = ( ( ( appendResult36_g57693 * ( (_DetailSecondaryMaskUVs).xy / 1.0 ) ) + temp_output_9_0_g57693 ) + Offset235_g57693 );
				float2 vertexToFrag70_g57693 = ( temp_output_41_0_g57693 - ( ( ( (_DetailSecondaryMaskUVs).xy / 1.0 ) * _ConstantAnchor ) - _ConstantAnchor ) );
				o.ase_texcoord6.xy = vertexToFrag70_g57693;
				
				o.ase_color = v.ase_color;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord6.zw = 0;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.vertex.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif

				float3 vertexValue = defaultVertexValue;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					v.vertex.xyz = vertexValue;
				#else
					v.vertex.xyz += vertexValue;
				#endif

				v.ase_normal = v.ase_normal;

				float3 positionWS = TransformObjectToWorld( v.vertex.xyz );

				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
					o.worldPos = positionWS;
				#endif

				o.clipPos = MetaVertexPosition( v.vertex, v.texcoord1.xy, v.texcoord1.xy, unity_LightmapST, unity_DynamicLightmapST );

				#ifdef EDITOR_VISUALIZATION
					float2 VizUV = 0;
					float4 LightCoord = 0;
					UnityEditorVizData(v.vertex.xyz, v.texcoord0.xy, v.texcoord1.xy, v.texcoord2.xy, VizUV, LightCoord);
					o.VizUV = float4(VizUV, 0, 0);
					o.LightCoord = LightCoord;
				#endif

				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					VertexPositionInputs vertexInput = (VertexPositionInputs)0;
					vertexInput.positionWS = positionWS;
					vertexInput.positionCS = o.clipPos;
					o.shadowCoord = GetShadowCoord( vertexInput );
				#endif

				return o;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float4 vertex : INTERNALTESSPOS;
				float3 ase_normal : NORMAL;
				float4 texcoord0 : TEXCOORD0;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_color : COLOR;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( VertexInput v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.vertex = v.vertex;
				o.ase_normal = v.ase_normal;
				o.texcoord0 = v.texcoord0;
				o.texcoord1 = v.texcoord1;
				o.texcoord2 = v.texcoord2;
				o.ase_texcoord3 = v.ase_texcoord3;
				o.ase_color = v.ase_color;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
				return patch[id];
			}

			[domain("tri")]
			VertexOutput DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				VertexInput o = (VertexInput) 0;
				o.vertex = patch[0].vertex * bary.x + patch[1].vertex * bary.y + patch[2].vertex * bary.z;
				o.ase_normal = patch[0].ase_normal * bary.x + patch[1].ase_normal * bary.y + patch[2].ase_normal * bary.z;
				o.texcoord0 = patch[0].texcoord0 * bary.x + patch[1].texcoord0 * bary.y + patch[2].texcoord0 * bary.z;
				o.texcoord1 = patch[0].texcoord1 * bary.x + patch[1].texcoord1 * bary.y + patch[2].texcoord1 * bary.z;
				o.texcoord2 = patch[0].texcoord2 * bary.x + patch[1].texcoord2 * bary.y + patch[2].texcoord2 * bary.z;
				o.ase_texcoord3 = patch[0].ase_texcoord3 * bary.x + patch[1].ase_texcoord3 * bary.y + patch[2].ase_texcoord3 * bary.z;
				o.ase_color = patch[0].ase_color * bary.x + patch[1].ase_color * bary.y + patch[2].ase_color * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.vertex.xyz - patch[i].ase_normal * (dot(o.vertex.xyz, patch[i].ase_normal) - dot(patch[i].vertex.xyz, patch[i].ase_normal));
				float phongStrength = _TessPhongStrength;
				o.vertex.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.vertex.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			VertexOutput vert ( VertexInput v )
			{
				return VertexFunction( v );
			}
			#endif

			half4 frag(VertexOutput IN  ) : SV_TARGET
			{
				UNITY_SETUP_INSTANCE_ID(IN);
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( IN );

				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
					float3 WorldPosition = IN.worldPos;
				#endif

				float4 ShadowCoords = float4( 0, 0, 0, 0 );

				#if defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
						ShadowCoords = IN.shadowCoord;
					#elif defined(MAIN_LIGHT_CALCULATE_SHADOWS)
						ShadowCoords = TransformWorldToShadowCoord( WorldPosition );
					#endif
				#endif

				float3 temp_output_1819_0_g57705 = (_BaseColor).rgb;
				float2 vertexToFrag70_g57784 = IN.ase_texcoord4.xy;
				float4 tex2DNode1921_g57705 = SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, vertexToFrag70_g57784 );
				float3 OUT_ALBEDO_RGBA1177_g57705 = (tex2DNode1921_g57705).rgb;
				float3 temp_output_12_0_g57819 = OUT_ALBEDO_RGBA1177_g57705;
				float dotResult28_g57819 = dot( float3(0.2126729,0.7151522,0.072175) , temp_output_12_0_g57819 );
				float3 temp_cast_0 = (dotResult28_g57819).xxx;
				float temp_output_21_0_g57819 = ( 1.0 - _BaseColorSaturation );
				float3 lerpResult31_g57819 = lerp( temp_cast_0 , temp_output_12_0_g57819 , temp_output_21_0_g57819);
				float3 temp_output_7_0_g57705 = ( temp_output_1819_0_g57705 * lerpResult31_g57819 * _Brightness );
				float3 temp_output_39_0_g57633 = temp_output_7_0_g57705;
				float localStochasticTiling159_g57666 = ( 0.0 );
				float2 vertexToFrag70_g57687 = IN.ase_texcoord4.zw;
				float2 temp_output_1334_0_g57633 = vertexToFrag70_g57687;
				float2 UV159_g57666 = temp_output_1334_0_g57633;
				float4 TexelSize159_g57666 = _DetailColorMap_TexelSize;
				float4 Offsets159_g57666 = float4( 0,0,0,0 );
				float2 Weights159_g57666 = float2( 0,0 );
				{
				UV159_g57666 = UV159_g57666 * TexelSize159_g57666.zw - 0.5;
				float2 f = frac( UV159_g57666 );
				UV159_g57666 -= f;
				float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				float4 xs = xn * xn * xn;
				float4 ys = yn * yn * yn;
				float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				float4 c = float4( UV159_g57666.x - 0.5, UV159_g57666.x + 1.5, UV159_g57666.y - 0.5, UV159_g57666.y + 1.5 );
				float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				float w0 = s.x / ( s.x + s.y );
				float w1 = s.z / ( s.z + s.w );
				Offsets159_g57666 = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize159_g57666.xyxy;
				Weights159_g57666 = float2( w0, w1 );
				}
				float4 Input_FetchOffsets70_g57667 = Offsets159_g57666;
				float2 Input_FetchWeights143_g57667 = Weights159_g57666;
				float2 break46_g57667 = Input_FetchWeights143_g57667;
				float4 lerpResult20_g57667 = lerp( SAMPLE_TEXTURE2D( _DetailColorMap, sampler_MainTex, (Input_FetchOffsets70_g57667).yw ) , SAMPLE_TEXTURE2D( _DetailColorMap, sampler_MainTex, (Input_FetchOffsets70_g57667).xw ) , break46_g57667.x);
				float4 lerpResult40_g57667 = lerp( SAMPLE_TEXTURE2D( _DetailColorMap, sampler_MainTex, (Input_FetchOffsets70_g57667).yz ) , SAMPLE_TEXTURE2D( _DetailColorMap, sampler_MainTex, (Input_FetchOffsets70_g57667).xz ) , break46_g57667.x);
				float4 lerpResult22_g57667 = lerp( lerpResult20_g57667 , lerpResult40_g57667 , break46_g57667.y);
				float4 Output_Fetch2D44_g57667 = lerpResult22_g57667;
				float3 temp_output_44_0_g57633 = ( (_DetailColor).rgb * (Output_Fetch2D44_g57667).rgb * _DetailBrightness );
				float3 temp_output_12_0_g57695 = temp_output_44_0_g57633;
				float dotResult28_g57695 = dot( float3(0.2126729,0.7151522,0.072175) , temp_output_12_0_g57695 );
				float3 temp_cast_1 = (dotResult28_g57695).xxx;
				float temp_output_21_0_g57695 = ( 1.0 - _DetailSaturation );
				float3 lerpResult31_g57695 = lerp( temp_cast_1 , temp_output_12_0_g57695 , temp_output_21_0_g57695);
				float3 temp_output_1272_0_g57633 = (unity_ColorSpaceDouble).rgb;
				float3 temp_output_1190_0_g57633 = ( lerpResult31_g57695 * temp_output_1272_0_g57633 );
				float3 BaseColor_RGB40_g57633 = temp_output_39_0_g57633;
				float localStochasticTiling159_g57674 = ( 0.0 );
				float2 vertexToFrag70_g57689 = IN.ase_texcoord5.xy;
				float2 temp_output_1339_0_g57633 = vertexToFrag70_g57689;
				float2 UV159_g57674 = temp_output_1339_0_g57633;
				float4 TexelSize159_g57674 = _DetailMaskMap_TexelSize;
				float4 Offsets159_g57674 = float4( 0,0,0,0 );
				float2 Weights159_g57674 = float2( 0,0 );
				{
				UV159_g57674 = UV159_g57674 * TexelSize159_g57674.zw - 0.5;
				float2 f = frac( UV159_g57674 );
				UV159_g57674 -= f;
				float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				float4 xs = xn * xn * xn;
				float4 ys = yn * yn * yn;
				float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				float4 c = float4( UV159_g57674.x - 0.5, UV159_g57674.x + 1.5, UV159_g57674.y - 0.5, UV159_g57674.y + 1.5 );
				float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				float w0 = s.x / ( s.x + s.y );
				float w1 = s.z / ( s.z + s.w );
				Offsets159_g57674 = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize159_g57674.xyxy;
				Weights159_g57674 = float2( w0, w1 );
				}
				float4 Input_FetchOffsets70_g57675 = Offsets159_g57674;
				float2 Input_FetchWeights143_g57675 = Weights159_g57674;
				float2 break46_g57675 = Input_FetchWeights143_g57675;
				float4 lerpResult20_g57675 = lerp( SAMPLE_TEXTURE2D( _DetailMaskMap, sampler_MainTex, (Input_FetchOffsets70_g57675).yw ) , SAMPLE_TEXTURE2D( _DetailMaskMap, sampler_MainTex, (Input_FetchOffsets70_g57675).xw ) , break46_g57675.x);
				float4 lerpResult40_g57675 = lerp( SAMPLE_TEXTURE2D( _DetailMaskMap, sampler_MainTex, (Input_FetchOffsets70_g57675).yz ) , SAMPLE_TEXTURE2D( _DetailMaskMap, sampler_MainTex, (Input_FetchOffsets70_g57675).xz ) , break46_g57675.x);
				float4 lerpResult22_g57675 = lerp( lerpResult20_g57675 , lerpResult40_g57675 , break46_g57675.y);
				float4 Output_Fetch2D44_g57675 = lerpResult22_g57675;
				float4 break50_g57675 = Output_Fetch2D44_g57675;
				float lerpResult997_g57633 = lerp( ( 1.0 - break50_g57675.r ) , break50_g57675.r , _DetailMaskIsInverted);
				float temp_output_15_0_g57677 = ( 1.0 - lerpResult997_g57633 );
				float temp_output_26_0_g57677 = _DetailMaskBlendStrength;
				float temp_output_24_0_g57677 = _DetailMaskBlendHardness;
				float saferPower2_g57677 = abs( max( saturate( (0.0 + (temp_output_15_0_g57677 - ( 1.0 - temp_output_26_0_g57677 )) * (temp_output_24_0_g57677 - 0.0) / (1.0 - ( 1.0 - temp_output_26_0_g57677 ))) ) , 0.0 ) );
				float temp_output_22_0_g57677 = _DetailMaskBlendFalloff;
				float Blend_DetailMask986_g57633 = saturate( pow( saferPower2_g57677 , ( 1.0 - temp_output_22_0_g57677 ) ) );
				float3 lerpResult1194_g57633 = lerp( BaseColor_RGB40_g57633 , temp_output_1190_0_g57633 , Blend_DetailMask986_g57633);
				float temp_output_1162_0_g57633 = ( 1.0 - Blend_DetailMask986_g57633 );
				float3 appendResult1161_g57633 = (float3(temp_output_1162_0_g57633 , temp_output_1162_0_g57633 , temp_output_1162_0_g57633));
				float3 lerpResult1005_g57633 = lerp( temp_output_1190_0_g57633 , ( ( lerpResult1194_g57633 * Blend_DetailMask986_g57633 ) + appendResult1161_g57633 ) , _DetailMaskEnable);
				float3 BaseColor_Detail255_g57633 = lerpResult1005_g57633;
				float BaseColor_R1273_g57633 = temp_output_39_0_g57633.x;
				float BaseColor_DetailR887_g57633 = Output_Fetch2D44_g57667.r;
				float lerpResult1105_g57633 = lerp( BaseColor_R1273_g57633 , BaseColor_DetailR887_g57633 , _DetailBlendSource);
				float m_switch44_g57704 = (float)_DetailBlendVertexColor;
				float m_Off44_g57704 = 1.0;
				float dotResult58_g57704 = dot( IN.ase_color.g , IN.ase_color.g );
				float dotResult61_g57704 = dot( IN.ase_color.b , IN.ase_color.b );
				float m_R44_g57704 = ( dotResult58_g57704 + dotResult61_g57704 );
				float dotResult57_g57704 = dot( IN.ase_color.r , IN.ase_color.r );
				float m_G44_g57704 = ( dotResult57_g57704 + dotResult58_g57704 );
				float m_B44_g57704 = ( dotResult57_g57704 + dotResult61_g57704 );
				float m_A44_g57704 = IN.ase_color.a;
				float localMaskVCSwitch44_g57704 = MaskVCSwitch44_g57704( m_switch44_g57704 , m_Off44_g57704 , m_R44_g57704 , m_G44_g57704 , m_B44_g57704 , m_A44_g57704 );
				float clampResult54_g57704 = clamp( ( ( localMaskVCSwitch44_g57704 * _DetailBlendHeight ) / _DetailBlendSmooth ) , 0.0 , 1.0 );
				float Blend647_g57633 = saturate( ( ( ( ( lerpResult1105_g57633 - 0.5 ) * ( ( 1.0 - _DetailBlendStrength ) - 0.9 ) ) / ( 1.0 - _DetailBlendSmooth ) ) + ( 1.0 - clampResult54_g57704 ) ) );
				float temp_output_1171_0_g57633 = ( 1.0 - Blend647_g57633 );
				float3 appendResult1174_g57633 = (float3(temp_output_1171_0_g57633 , temp_output_1171_0_g57633 , temp_output_1171_0_g57633));
				float3 temp_output_1180_0_g57633 = ( temp_output_39_0_g57633 * ( ( BaseColor_Detail255_g57633 * Blend647_g57633 ) + appendResult1174_g57633 ) );
				float2 appendResult1114_g57633 = (float2(_DetailSecondaryBlendWeightLayer1 , _DetailSecondaryBlendWeightLayer2));
				float localStochasticTiling159_g57657 = ( 0.0 );
				float2 vertexToFrag70_g57691 = IN.ase_texcoord5.zw;
				float2 temp_output_1342_0_g57633 = vertexToFrag70_g57691;
				float2 UV159_g57657 = temp_output_1342_0_g57633;
				float4 TexelSize159_g57657 = _DetailSecondaryColorMap_TexelSize;
				float4 Offsets159_g57657 = float4( 0,0,0,0 );
				float2 Weights159_g57657 = float2( 0,0 );
				{
				UV159_g57657 = UV159_g57657 * TexelSize159_g57657.zw - 0.5;
				float2 f = frac( UV159_g57657 );
				UV159_g57657 -= f;
				float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				float4 xs = xn * xn * xn;
				float4 ys = yn * yn * yn;
				float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				float4 c = float4( UV159_g57657.x - 0.5, UV159_g57657.x + 1.5, UV159_g57657.y - 0.5, UV159_g57657.y + 1.5 );
				float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				float w0 = s.x / ( s.x + s.y );
				float w1 = s.z / ( s.z + s.w );
				Offsets159_g57657 = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize159_g57657.xyxy;
				Weights159_g57657 = float2( w0, w1 );
				}
				float4 Input_FetchOffsets70_g57659 = Offsets159_g57657;
				float2 Input_FetchWeights143_g57659 = Weights159_g57657;
				float2 break46_g57659 = Input_FetchWeights143_g57659;
				float4 lerpResult20_g57659 = lerp( SAMPLE_TEXTURE2D( _DetailSecondaryColorMap, sampler_MainTex, (Input_FetchOffsets70_g57659).yw ) , SAMPLE_TEXTURE2D( _DetailSecondaryColorMap, sampler_MainTex, (Input_FetchOffsets70_g57659).xw ) , break46_g57659.x);
				float4 lerpResult40_g57659 = lerp( SAMPLE_TEXTURE2D( _DetailSecondaryColorMap, sampler_MainTex, (Input_FetchOffsets70_g57659).yz ) , SAMPLE_TEXTURE2D( _DetailSecondaryColorMap, sampler_MainTex, (Input_FetchOffsets70_g57659).xz ) , break46_g57659.x);
				float4 lerpResult22_g57659 = lerp( lerpResult20_g57659 , lerpResult40_g57659 , break46_g57659.y);
				float4 Output_Fetch2D44_g57659 = lerpResult22_g57659;
				float3 temp_output_436_0_g57633 = ( (_DetailSecondaryColor).rgb * (Output_Fetch2D44_g57659).rgb * _DetailSecondaryBrightness );
				float3 temp_output_12_0_g57696 = temp_output_436_0_g57633;
				float dotResult28_g57696 = dot( float3(0.2126729,0.7151522,0.072175) , temp_output_12_0_g57696 );
				float3 temp_cast_3 = (dotResult28_g57696).xxx;
				float temp_output_21_0_g57696 = ( 1.0 - _DetailSecondarySaturation );
				float3 lerpResult31_g57696 = lerp( temp_cast_3 , temp_output_12_0_g57696 , temp_output_21_0_g57696);
				float3 ColorSpaceDouble1261_g57633 = temp_output_1272_0_g57633;
				float3 temp_output_1239_0_g57633 = ( lerpResult31_g57696 * ColorSpaceDouble1261_g57633 );
				float localStochasticTiling159_g57668 = ( 0.0 );
				float2 vertexToFrag70_g57693 = IN.ase_texcoord6.xy;
				float2 temp_output_1347_0_g57633 = vertexToFrag70_g57693;
				float2 UV159_g57668 = temp_output_1347_0_g57633;
				float4 TexelSize159_g57668 = _DetailSecondaryMaskMap_TexelSize;
				float4 Offsets159_g57668 = float4( 0,0,0,0 );
				float2 Weights159_g57668 = float2( 0,0 );
				{
				UV159_g57668 = UV159_g57668 * TexelSize159_g57668.zw - 0.5;
				float2 f = frac( UV159_g57668 );
				UV159_g57668 -= f;
				float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				float4 xs = xn * xn * xn;
				float4 ys = yn * yn * yn;
				float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				float4 c = float4( UV159_g57668.x - 0.5, UV159_g57668.x + 1.5, UV159_g57668.y - 0.5, UV159_g57668.y + 1.5 );
				float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				float w0 = s.x / ( s.x + s.y );
				float w1 = s.z / ( s.z + s.w );
				Offsets159_g57668 = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize159_g57668.xyxy;
				Weights159_g57668 = float2( w0, w1 );
				}
				float4 Input_FetchOffsets70_g57670 = Offsets159_g57668;
				float2 Input_FetchWeights143_g57670 = Weights159_g57668;
				float2 break46_g57670 = Input_FetchWeights143_g57670;
				float4 lerpResult20_g57670 = lerp( SAMPLE_TEXTURE2D( _DetailSecondaryMaskMap, sampler_MainTex, (Input_FetchOffsets70_g57670).yw ) , SAMPLE_TEXTURE2D( _DetailSecondaryMaskMap, sampler_MainTex, (Input_FetchOffsets70_g57670).xw ) , break46_g57670.x);
				float4 lerpResult40_g57670 = lerp( SAMPLE_TEXTURE2D( _DetailSecondaryMaskMap, sampler_MainTex, (Input_FetchOffsets70_g57670).yz ) , SAMPLE_TEXTURE2D( _DetailSecondaryMaskMap, sampler_MainTex, (Input_FetchOffsets70_g57670).xz ) , break46_g57670.x);
				float4 lerpResult22_g57670 = lerp( lerpResult20_g57670 , lerpResult40_g57670 , break46_g57670.y);
				float4 Output_Fetch2D44_g57670 = lerpResult22_g57670;
				float4 break50_g57670 = Output_Fetch2D44_g57670;
				float lerpResult486_g57633 = lerp( ( 1.0 - break50_g57670.r ) , break50_g57670.r , _DetailSecondaryMaskIsInverted);
				float temp_output_15_0_g57671 = ( 1.0 - lerpResult486_g57633 );
				float temp_output_26_0_g57671 = _DetailSecondaryMaskBlendStrength;
				float temp_output_24_0_g57671 = _DetailSecondaryMaskBlendHardness;
				float saferPower2_g57671 = abs( max( saturate( (0.0 + (temp_output_15_0_g57671 - ( 1.0 - temp_output_26_0_g57671 )) * (temp_output_24_0_g57671 - 0.0) / (1.0 - ( 1.0 - temp_output_26_0_g57671 ))) ) , 0.0 ) );
				float temp_output_22_0_g57671 = _DetailSecondaryMaskBlendFalloff;
				float Blend_DetailSecondaryMask755_g57633 = saturate( pow( saferPower2_g57671 , ( 1.0 - temp_output_22_0_g57671 ) ) );
				float3 lerpResult1234_g57633 = lerp( BaseColor_RGB40_g57633 , temp_output_1239_0_g57633 , Blend_DetailSecondaryMask755_g57633);
				float temp_output_1236_0_g57633 = ( 1.0 - Blend_DetailSecondaryMask755_g57633 );
				float3 appendResult1238_g57633 = (float3(temp_output_1236_0_g57633 , temp_output_1236_0_g57633 , temp_output_1236_0_g57633));
				float3 lerpResult1233_g57633 = lerp( temp_output_1239_0_g57633 , ( ( lerpResult1234_g57633 * Blend_DetailSecondaryMask755_g57633 ) + appendResult1238_g57633 ) , _DetailSecondaryMaskEnable);
				float3 BaseColor_DetailSecondary805_g57633 = lerpResult1233_g57633;
				float BaseColor_DetailSecondaryR1102_g57633 = Output_Fetch2D44_g57659.r;
				float lerpResult1103_g57633 = lerp( BaseColor_R1273_g57633 , BaseColor_DetailSecondaryR1102_g57633 , _DetailSecondaryBlendSource);
				float m_switch44_g57703 = (float)_DetailSecondaryBlendVertexColor;
				float m_Off44_g57703 = 1.0;
				float dotResult58_g57703 = dot( IN.ase_color.g , IN.ase_color.g );
				float dotResult61_g57703 = dot( IN.ase_color.b , IN.ase_color.b );
				float m_R44_g57703 = ( dotResult58_g57703 + dotResult61_g57703 );
				float dotResult57_g57703 = dot( IN.ase_color.r , IN.ase_color.r );
				float m_G44_g57703 = ( dotResult57_g57703 + dotResult58_g57703 );
				float m_B44_g57703 = ( dotResult57_g57703 + dotResult61_g57703 );
				float m_A44_g57703 = IN.ase_color.a;
				float localMaskVCSwitch44_g57703 = MaskVCSwitch44_g57703( m_switch44_g57703 , m_Off44_g57703 , m_R44_g57703 , m_G44_g57703 , m_B44_g57703 , m_A44_g57703 );
				float clampResult54_g57703 = clamp( ( ( localMaskVCSwitch44_g57703 * _DetailSecondaryBlendHeight ) / _DetailSecondaryBlendSmooth ) , 0.0 , 1.0 );
				float BlendSecondary786_g57633 = saturate( ( ( ( ( lerpResult1103_g57633 - 0.5 ) * ( ( 1.0 - _DetailSecondaryBlendStrength ) - 0.9 ) ) / ( 1.0 - _DetailSecondaryBlendSmooth ) ) + ( 1.0 - clampResult54_g57703 ) ) );
				float temp_output_1214_0_g57633 = ( 1.0 - BlendSecondary786_g57633 );
				float3 appendResult1216_g57633 = (float3(temp_output_1214_0_g57633 , temp_output_1214_0_g57633 , temp_output_1214_0_g57633));
				float2 weightedBlendVar1117_g57633 = appendResult1114_g57633;
				float3 weightedAvg1117_g57633 = ( ( weightedBlendVar1117_g57633.x*temp_output_1180_0_g57633 + weightedBlendVar1117_g57633.y*( temp_output_39_0_g57633 * ( ( BaseColor_DetailSecondary805_g57633 * BlendSecondary786_g57633 ) + appendResult1216_g57633 ) ) )/( weightedBlendVar1117_g57633.x + weightedBlendVar1117_g57633.y ) );
				float3 lerpResult489_g57633 = lerp( temp_output_1180_0_g57633 , weightedAvg1117_g57633 , _DetailSecondaryEnable);
				float temp_output_634_0_g57633 = ( _DetailEnable + ( ( _CATEGORY_DETAILMAPPING + _SPACE_DETAIL + _CATEGORY_DETAILMAPPINGSECONDARY + _SPACE_DETAILSECONDARY ) * 0.0 ) );
				float3 lerpResult409_g57633 = lerp( temp_output_39_0_g57633 , lerpResult489_g57633 , temp_output_634_0_g57633);
				

				float3 BaseColor = lerpResult409_g57633;
				float3 Emission = 0;
				float Alpha = 1;
				float AlphaClipThreshold = 0.5;

				#ifdef _ALPHATEST_ON
					clip(Alpha - AlphaClipThreshold);
				#endif

				MetaInput metaInput = (MetaInput)0;
				metaInput.Albedo = BaseColor;
				metaInput.Emission = Emission;
				#ifdef EDITOR_VISUALIZATION
					metaInput.VizUV = IN.VizUV.xy;
					metaInput.LightCoord = IN.LightCoord;
				#endif

				return UnityMetaFragment(metaInput);
			}
			ENDHLSL
		}

		
		Pass
		{
			
			Name "Universal2D"
			Tags { "LightMode"="Universal2D" }

			Blend One Zero, One Zero
			ZWrite On
			ZTest LEqual
			Offset 0 , 0
			ColorMask RGBA

			HLSLPROGRAM

			#define _NORMAL_DROPOFF_TS 1
			#define ASE_FOG 1
			#define _NORMALMAP 1
			#define ASE_SRP_VERSION 120112
			#ifdef UNITY_COLORSPACE_GAMMA//ASE Color Space Def
			#define unity_ColorSpaceDouble half4(2.0, 2.0, 2.0, 2.0)//ASE Color Space Def
			#else // Linear values//ASE Color Space Def
			#define unity_ColorSpaceDouble half4(4.59479380, 4.59479380, 4.59479380, 2.0)//ASE Color Space Def
			#endif//ASE Color Space Def
			#define ASE_USING_SAMPLING_MACROS 1


			#pragma vertex vert
			#pragma fragment frag

			#define SHADERPASS SHADERPASS_2D

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Input.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"

			#define ASE_NEEDS_FRAG_COLOR


			struct VertexInput
			{
				float4 vertex : POSITION;
				float3 ase_normal : NORMAL;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct VertexOutput
			{
				float4 clipPos : SV_POSITION;
				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
					float3 worldPos : TEXCOORD0;
				#endif
				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					float4 shadowCoord : TEXCOORD1;
				#endif
				float4 ase_texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_color : COLOR;
				float4 ase_texcoord4 : TEXCOORD4;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _DetailSecondaryMaskMap_TexelSize;
			float4 _DetailNormalMap_TexelSize;
			half4 _DetailSecondaryColor;
			half4 _SmoothnessStrength;
			float4 _DetailMaskMap_TexelSize;
			float4 _DetailMaskUVs;
			float4 _DetailSecondaryUVs;
			float4 _DetailSecondaryColorMap_TexelSize;
			float4 _DetailUVs;
			float4 _DetailColorMap_TexelSize;
			half4 _OcclusionStrengthAO;
			half4 _DetailColor;
			half4 _BaseColor;
			float4 _MainUVs;
			float4 _DetailSecondaryNormalMap_TexelSize;
			float4 _DetailSecondaryMaskUVs;
			half _DetailNormalStrength;
			float _SPACE_DETAIL;
			float _DetailSecondaryEnable;
			float _CATEGORY_DETAILMAPPING;
			float _CATEGORY_DETAILMAPPINGSECONDARY;
			half _DetailSecondaryBlendHeight;
			int _DetailSecondaryBlendVertexColor;
			float _SPACE_DETAILSECONDARY;
			half _NormalStrength;
			half _DetailSecondaryBlendSmooth;
			half _DetailEnable;
			float _SPACE_METALLIC;
			float _MetallicStrength;
			float _SPACE_OCCLUSION;
			float _CATEGORY_OCCLUSION;
			half _OcclusionStrengthAORemapMax;
			half _OcclusionStrengthAORemapMin;
			half _SmoothnessFresnelEnable;
			half _SmoothnessFresnelPower;
			half _DetailSecondaryNormalStrength;
			half _SmoothnessFresnelScale;
			float _SPACE_SMOOTHNESS;
			float _CATEGORY_SMOOTHNESS;
			half _SmoothnessStrengthRemapMax;
			half _SmoothnessStrengthRemapMin;
			half _DetailSecondaryBlendStrength;
			float _CATEGORY_METALLIC;
			half _SmoothnessSource;
			half _DetailSecondaryBlendSource;
			int _Cull;
			half _DetailSecondaryMaskBlendFalloff;
			half _DetailMaskBlendHardness;
			half _DetailMaskBlendStrength;
			half _DetailMaskIsInverted;
			half _DetailMaskUVRotation;
			float _DetailSaturation;
			half _DetailBrightness;
			half _DetailMaskBlendFalloff;
			half _DetailUVMode;
			half _Brightness;
			float _BaseColorSaturation;
			float _CATEGORY_SURFACEINPUTS;
			float _SPACE_SURFACEINPUTS;
			float _CATEGORY_SURFACEOPTIONS;
			float _SPACE_SURFACEOPTIONS;
			half _DetailUVRotation;
			half _DetailSecondaryMaskEnable;
			half _DetailMaskEnable;
			half _DetailBlendStrength;
			half _DetailSecondaryMaskBlendHardness;
			half _DetailSecondaryMaskBlendStrength;
			half _DetailSecondaryMaskIsInverted;
			half _OcclusionSourceInverted;
			half _DetailSecondaryMaskUVRotation;
			float _DetailSecondarySaturation;
			half _DetailBlendSource;
			half _DetailSecondaryBrightness;
			half _DetailSecondaryUVRotation;
			float _DetailSecondaryBlendWeightLayer2;
			float _DetailSecondaryBlendWeightLayer1;
			half _DetailBlendHeight;
			int _DetailBlendVertexColor;
			half _DetailBlendSmooth;
			half _DetailSecondaryUVMode;
			half _OcclusionSourceBaked;
			#ifdef ASE_TRANSMISSION
				float _TransmissionShadow;
			#endif
			#ifdef ASE_TRANSLUCENCY
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef ASE_TESSELLATION
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END

			// Property used by ScenePickingPass
			#ifdef SCENEPICKINGPASS
				float4 _SelectionID;
			#endif

			// Properties used by SceneSelectionPass
			#ifdef SCENESELECTIONPASS
				int _ObjectId;
				int _PassValue;
			#endif

			TEXTURE2D(_MainTex);
			SAMPLER(sampler_MainTex);
			TEXTURE2D(_DetailColorMap);
			TEXTURE2D(_DetailMaskMap);
			TEXTURE2D(_DetailSecondaryColorMap);
			TEXTURE2D(_DetailSecondaryMaskMap);


			//#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/Varyings.hlsl"
			//#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/PBR2DPass.hlsl"

			//#ifdef HAVE_VFX_MODIFICATION
			//#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/VisualEffectVertex.hlsl"
			//#endif

			float2 float2switchUVMode80_g57687( float m_switch, float2 m_UV0, float2 m_UV1, float2 m_UV2, float2 m_UV3 )
			{
				if(m_switch ==0)
					return m_UV0;
				else if(m_switch ==1)
					return m_UV1;
				else if(m_switch ==2)
					return m_UV2;
				else if(m_switch ==3)
					return m_UV3;
				else
				return float2(0,0);
			}
			
			float2 float2switchUVMode80_g57689( float m_switch, float2 m_UV0, float2 m_UV1, float2 m_UV2, float2 m_UV3 )
			{
				if(m_switch ==0)
					return m_UV0;
				else if(m_switch ==1)
					return m_UV1;
				else if(m_switch ==2)
					return m_UV2;
				else if(m_switch ==3)
					return m_UV3;
				else
				return float2(0,0);
			}
			
			float MaskVCSwitch44_g57704( float m_switch, float m_Off, float m_R, float m_G, float m_B, float m_A )
			{
				if(m_switch ==0)
					return m_Off;
				else if(m_switch ==1)
					return m_R;
				else if(m_switch ==2)
					return m_G;
				else if(m_switch ==3)
					return m_B;
				else if(m_switch ==4)
					return m_A;
				else
				return float(0);
			}
			
			float2 float2switchUVMode80_g57691( float m_switch, float2 m_UV0, float2 m_UV1, float2 m_UV2, float2 m_UV3 )
			{
				if(m_switch ==0)
					return m_UV0;
				else if(m_switch ==1)
					return m_UV1;
				else if(m_switch ==2)
					return m_UV2;
				else if(m_switch ==3)
					return m_UV3;
				else
				return float2(0,0);
			}
			
			float2 float2switchUVMode80_g57693( float m_switch, float2 m_UV0, float2 m_UV1, float2 m_UV2, float2 m_UV3 )
			{
				if(m_switch ==0)
					return m_UV0;
				else if(m_switch ==1)
					return m_UV1;
				else if(m_switch ==2)
					return m_UV2;
				else if(m_switch ==3)
					return m_UV3;
				else
				return float2(0,0);
			}
			
			float MaskVCSwitch44_g57703( float m_switch, float m_Off, float m_R, float m_G, float m_B, float m_A )
			{
				if(m_switch ==0)
					return m_Off;
				else if(m_switch ==1)
					return m_R;
				else if(m_switch ==2)
					return m_G;
				else if(m_switch ==3)
					return m_B;
				else if(m_switch ==4)
					return m_A;
				else
				return float(0);
			}
			

			VertexOutput VertexFunction( VertexInput v  )
			{
				VertexOutput o = (VertexOutput)0;
				UNITY_SETUP_INSTANCE_ID( v );
				UNITY_TRANSFER_INSTANCE_ID( v, o );
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( o );

				float2 temp_output_1848_0_g57705 = (_MainUVs).xy;
				float2 temp_output_1847_0_g57705 = (_MainUVs).zw;
				float2 Offset235_g57784 = temp_output_1847_0_g57705;
				float2 temp_output_41_0_g57784 = ( ( v.ase_texcoord.xy * temp_output_1848_0_g57705 ) + Offset235_g57784 );
				float2 vertexToFrag70_g57784 = temp_output_41_0_g57784;
				o.ase_texcoord2.xy = vertexToFrag70_g57784;
				float temp_output_6_0_g57687 = _DetailUVRotation;
				float temp_output_200_0_g57687 = radians( temp_output_6_0_g57687 );
				float temp_output_13_0_g57687 = cos( temp_output_200_0_g57687 );
				float m_switch80_g57687 = _DetailUVMode;
				float2 m_UV080_g57687 = v.ase_texcoord.xy;
				float2 m_UV180_g57687 = v.ase_texcoord1.xy;
				float2 m_UV280_g57687 = v.ase_texcoord2.xy;
				float2 m_UV380_g57687 = v.ase_texcoord3.xy;
				float2 localfloat2switchUVMode80_g57687 = float2switchUVMode80_g57687( m_switch80_g57687 , m_UV080_g57687 , m_UV180_g57687 , m_UV280_g57687 , m_UV380_g57687 );
				float2 temp_output_9_0_g57687 = float2( 0.5,0.5 );
				float2 break39_g57687 = ( localfloat2switchUVMode80_g57687 - temp_output_9_0_g57687 );
				float temp_output_14_0_g57687 = sin( temp_output_200_0_g57687 );
				float2 appendResult36_g57687 = (float2(( ( temp_output_13_0_g57687 * break39_g57687.x ) + ( temp_output_14_0_g57687 * break39_g57687.y ) ) , ( ( temp_output_13_0_g57687 * break39_g57687.y ) - ( temp_output_14_0_g57687 * break39_g57687.x ) )));
				float2 Offset235_g57687 = (_DetailUVs).zw;
				float2 temp_output_41_0_g57687 = ( ( ( appendResult36_g57687 * ( (_DetailUVs).xy / 1.0 ) ) + temp_output_9_0_g57687 ) + Offset235_g57687 );
				float2 _ConstantAnchor = float2(0.5,0.5);
				float2 vertexToFrag70_g57687 = ( temp_output_41_0_g57687 - ( ( ( (_DetailUVs).xy / 1.0 ) * _ConstantAnchor ) - _ConstantAnchor ) );
				o.ase_texcoord2.zw = vertexToFrag70_g57687;
				float temp_output_6_0_g57689 = _DetailMaskUVRotation;
				float temp_output_200_0_g57689 = radians( temp_output_6_0_g57689 );
				float temp_output_13_0_g57689 = cos( temp_output_200_0_g57689 );
				float DetailUVMode1060_g57633 = _DetailUVMode;
				float m_switch80_g57689 = DetailUVMode1060_g57633;
				float2 m_UV080_g57689 = v.ase_texcoord.xy;
				float2 m_UV180_g57689 = v.ase_texcoord1.xy;
				float2 m_UV280_g57689 = v.ase_texcoord2.xy;
				float2 m_UV380_g57689 = v.ase_texcoord3.xy;
				float2 localfloat2switchUVMode80_g57689 = float2switchUVMode80_g57689( m_switch80_g57689 , m_UV080_g57689 , m_UV180_g57689 , m_UV280_g57689 , m_UV380_g57689 );
				float2 temp_output_9_0_g57689 = float2( 0.5,0.5 );
				float2 break39_g57689 = ( localfloat2switchUVMode80_g57689 - temp_output_9_0_g57689 );
				float temp_output_14_0_g57689 = sin( temp_output_200_0_g57689 );
				float2 appendResult36_g57689 = (float2(( ( temp_output_13_0_g57689 * break39_g57689.x ) + ( temp_output_14_0_g57689 * break39_g57689.y ) ) , ( ( temp_output_13_0_g57689 * break39_g57689.y ) - ( temp_output_14_0_g57689 * break39_g57689.x ) )));
				float2 Offset235_g57689 = (_DetailMaskUVs).zw;
				float2 temp_output_41_0_g57689 = ( ( ( appendResult36_g57689 * ( (_DetailMaskUVs).xy / 1.0 ) ) + temp_output_9_0_g57689 ) + Offset235_g57689 );
				float2 vertexToFrag70_g57689 = ( temp_output_41_0_g57689 - ( ( ( (_DetailMaskUVs).xy / 1.0 ) * _ConstantAnchor ) - _ConstantAnchor ) );
				o.ase_texcoord3.xy = vertexToFrag70_g57689;
				float temp_output_6_0_g57691 = _DetailSecondaryUVRotation;
				float temp_output_200_0_g57691 = radians( temp_output_6_0_g57691 );
				float temp_output_13_0_g57691 = cos( temp_output_200_0_g57691 );
				float m_switch80_g57691 = _DetailSecondaryUVMode;
				float2 m_UV080_g57691 = v.ase_texcoord.xy;
				float2 m_UV180_g57691 = v.ase_texcoord1.xy;
				float2 m_UV280_g57691 = v.ase_texcoord2.xy;
				float2 m_UV380_g57691 = v.ase_texcoord3.xy;
				float2 localfloat2switchUVMode80_g57691 = float2switchUVMode80_g57691( m_switch80_g57691 , m_UV080_g57691 , m_UV180_g57691 , m_UV280_g57691 , m_UV380_g57691 );
				float2 temp_output_9_0_g57691 = float2( 0.5,0.5 );
				float2 break39_g57691 = ( localfloat2switchUVMode80_g57691 - temp_output_9_0_g57691 );
				float temp_output_14_0_g57691 = sin( temp_output_200_0_g57691 );
				float2 appendResult36_g57691 = (float2(( ( temp_output_13_0_g57691 * break39_g57691.x ) + ( temp_output_14_0_g57691 * break39_g57691.y ) ) , ( ( temp_output_13_0_g57691 * break39_g57691.y ) - ( temp_output_14_0_g57691 * break39_g57691.x ) )));
				float2 Offset235_g57691 = (_DetailSecondaryUVs).zw;
				float2 temp_output_41_0_g57691 = ( ( ( appendResult36_g57691 * ( (_DetailSecondaryUVs).xy / 1.0 ) ) + temp_output_9_0_g57691 ) + Offset235_g57691 );
				float2 vertexToFrag70_g57691 = ( temp_output_41_0_g57691 - ( ( ( (_DetailSecondaryUVs).xy / 1.0 ) * _ConstantAnchor ) - _ConstantAnchor ) );
				o.ase_texcoord3.zw = vertexToFrag70_g57691;
				float temp_output_6_0_g57693 = _DetailSecondaryMaskUVRotation;
				float temp_output_200_0_g57693 = radians( temp_output_6_0_g57693 );
				float temp_output_13_0_g57693 = cos( temp_output_200_0_g57693 );
				float DetailSecondaryUVMode1059_g57633 = _DetailSecondaryUVMode;
				float m_switch80_g57693 = DetailSecondaryUVMode1059_g57633;
				float2 m_UV080_g57693 = v.ase_texcoord.xy;
				float2 m_UV180_g57693 = v.ase_texcoord1.xy;
				float2 m_UV280_g57693 = v.ase_texcoord2.xy;
				float2 m_UV380_g57693 = v.ase_texcoord3.xy;
				float2 localfloat2switchUVMode80_g57693 = float2switchUVMode80_g57693( m_switch80_g57693 , m_UV080_g57693 , m_UV180_g57693 , m_UV280_g57693 , m_UV380_g57693 );
				float2 temp_output_9_0_g57693 = float2( 0.5,0.5 );
				float2 break39_g57693 = ( localfloat2switchUVMode80_g57693 - temp_output_9_0_g57693 );
				float temp_output_14_0_g57693 = sin( temp_output_200_0_g57693 );
				float2 appendResult36_g57693 = (float2(( ( temp_output_13_0_g57693 * break39_g57693.x ) + ( temp_output_14_0_g57693 * break39_g57693.y ) ) , ( ( temp_output_13_0_g57693 * break39_g57693.y ) - ( temp_output_14_0_g57693 * break39_g57693.x ) )));
				float2 Offset235_g57693 = (_DetailSecondaryMaskUVs).zw;
				float2 temp_output_41_0_g57693 = ( ( ( appendResult36_g57693 * ( (_DetailSecondaryMaskUVs).xy / 1.0 ) ) + temp_output_9_0_g57693 ) + Offset235_g57693 );
				float2 vertexToFrag70_g57693 = ( temp_output_41_0_g57693 - ( ( ( (_DetailSecondaryMaskUVs).xy / 1.0 ) * _ConstantAnchor ) - _ConstantAnchor ) );
				o.ase_texcoord4.xy = vertexToFrag70_g57693;
				
				o.ase_color = v.ase_color;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord4.zw = 0;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.vertex.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif

				float3 vertexValue = defaultVertexValue;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					v.vertex.xyz = vertexValue;
				#else
					v.vertex.xyz += vertexValue;
				#endif

				v.ase_normal = v.ase_normal;

				float3 positionWS = TransformObjectToWorld( v.vertex.xyz );
				float4 positionCS = TransformWorldToHClip( positionWS );

				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
					o.worldPos = positionWS;
				#endif

				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					VertexPositionInputs vertexInput = (VertexPositionInputs)0;
					vertexInput.positionWS = positionWS;
					vertexInput.positionCS = positionCS;
					o.shadowCoord = GetShadowCoord( vertexInput );
				#endif

				o.clipPos = positionCS;

				return o;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float4 vertex : INTERNALTESSPOS;
				float3 ase_normal : NORMAL;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_color : COLOR;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( VertexInput v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.vertex = v.vertex;
				o.ase_normal = v.ase_normal;
				o.ase_texcoord = v.ase_texcoord;
				o.ase_texcoord1 = v.ase_texcoord1;
				o.ase_texcoord2 = v.ase_texcoord2;
				o.ase_texcoord3 = v.ase_texcoord3;
				o.ase_color = v.ase_color;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
				return patch[id];
			}

			[domain("tri")]
			VertexOutput DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				VertexInput o = (VertexInput) 0;
				o.vertex = patch[0].vertex * bary.x + patch[1].vertex * bary.y + patch[2].vertex * bary.z;
				o.ase_normal = patch[0].ase_normal * bary.x + patch[1].ase_normal * bary.y + patch[2].ase_normal * bary.z;
				o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				o.ase_texcoord1 = patch[0].ase_texcoord1 * bary.x + patch[1].ase_texcoord1 * bary.y + patch[2].ase_texcoord1 * bary.z;
				o.ase_texcoord2 = patch[0].ase_texcoord2 * bary.x + patch[1].ase_texcoord2 * bary.y + patch[2].ase_texcoord2 * bary.z;
				o.ase_texcoord3 = patch[0].ase_texcoord3 * bary.x + patch[1].ase_texcoord3 * bary.y + patch[2].ase_texcoord3 * bary.z;
				o.ase_color = patch[0].ase_color * bary.x + patch[1].ase_color * bary.y + patch[2].ase_color * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.vertex.xyz - patch[i].ase_normal * (dot(o.vertex.xyz, patch[i].ase_normal) - dot(patch[i].vertex.xyz, patch[i].ase_normal));
				float phongStrength = _TessPhongStrength;
				o.vertex.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.vertex.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			VertexOutput vert ( VertexInput v )
			{
				return VertexFunction( v );
			}
			#endif

			half4 frag(VertexOutput IN  ) : SV_TARGET
			{
				UNITY_SETUP_INSTANCE_ID( IN );
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( IN );

				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
					float3 WorldPosition = IN.worldPos;
				#endif

				float4 ShadowCoords = float4( 0, 0, 0, 0 );

				#if defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
						ShadowCoords = IN.shadowCoord;
					#elif defined(MAIN_LIGHT_CALCULATE_SHADOWS)
						ShadowCoords = TransformWorldToShadowCoord( WorldPosition );
					#endif
				#endif

				float3 temp_output_1819_0_g57705 = (_BaseColor).rgb;
				float2 vertexToFrag70_g57784 = IN.ase_texcoord2.xy;
				float4 tex2DNode1921_g57705 = SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, vertexToFrag70_g57784 );
				float3 OUT_ALBEDO_RGBA1177_g57705 = (tex2DNode1921_g57705).rgb;
				float3 temp_output_12_0_g57819 = OUT_ALBEDO_RGBA1177_g57705;
				float dotResult28_g57819 = dot( float3(0.2126729,0.7151522,0.072175) , temp_output_12_0_g57819 );
				float3 temp_cast_0 = (dotResult28_g57819).xxx;
				float temp_output_21_0_g57819 = ( 1.0 - _BaseColorSaturation );
				float3 lerpResult31_g57819 = lerp( temp_cast_0 , temp_output_12_0_g57819 , temp_output_21_0_g57819);
				float3 temp_output_7_0_g57705 = ( temp_output_1819_0_g57705 * lerpResult31_g57819 * _Brightness );
				float3 temp_output_39_0_g57633 = temp_output_7_0_g57705;
				float localStochasticTiling159_g57666 = ( 0.0 );
				float2 vertexToFrag70_g57687 = IN.ase_texcoord2.zw;
				float2 temp_output_1334_0_g57633 = vertexToFrag70_g57687;
				float2 UV159_g57666 = temp_output_1334_0_g57633;
				float4 TexelSize159_g57666 = _DetailColorMap_TexelSize;
				float4 Offsets159_g57666 = float4( 0,0,0,0 );
				float2 Weights159_g57666 = float2( 0,0 );
				{
				UV159_g57666 = UV159_g57666 * TexelSize159_g57666.zw - 0.5;
				float2 f = frac( UV159_g57666 );
				UV159_g57666 -= f;
				float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				float4 xs = xn * xn * xn;
				float4 ys = yn * yn * yn;
				float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				float4 c = float4( UV159_g57666.x - 0.5, UV159_g57666.x + 1.5, UV159_g57666.y - 0.5, UV159_g57666.y + 1.5 );
				float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				float w0 = s.x / ( s.x + s.y );
				float w1 = s.z / ( s.z + s.w );
				Offsets159_g57666 = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize159_g57666.xyxy;
				Weights159_g57666 = float2( w0, w1 );
				}
				float4 Input_FetchOffsets70_g57667 = Offsets159_g57666;
				float2 Input_FetchWeights143_g57667 = Weights159_g57666;
				float2 break46_g57667 = Input_FetchWeights143_g57667;
				float4 lerpResult20_g57667 = lerp( SAMPLE_TEXTURE2D( _DetailColorMap, sampler_MainTex, (Input_FetchOffsets70_g57667).yw ) , SAMPLE_TEXTURE2D( _DetailColorMap, sampler_MainTex, (Input_FetchOffsets70_g57667).xw ) , break46_g57667.x);
				float4 lerpResult40_g57667 = lerp( SAMPLE_TEXTURE2D( _DetailColorMap, sampler_MainTex, (Input_FetchOffsets70_g57667).yz ) , SAMPLE_TEXTURE2D( _DetailColorMap, sampler_MainTex, (Input_FetchOffsets70_g57667).xz ) , break46_g57667.x);
				float4 lerpResult22_g57667 = lerp( lerpResult20_g57667 , lerpResult40_g57667 , break46_g57667.y);
				float4 Output_Fetch2D44_g57667 = lerpResult22_g57667;
				float3 temp_output_44_0_g57633 = ( (_DetailColor).rgb * (Output_Fetch2D44_g57667).rgb * _DetailBrightness );
				float3 temp_output_12_0_g57695 = temp_output_44_0_g57633;
				float dotResult28_g57695 = dot( float3(0.2126729,0.7151522,0.072175) , temp_output_12_0_g57695 );
				float3 temp_cast_1 = (dotResult28_g57695).xxx;
				float temp_output_21_0_g57695 = ( 1.0 - _DetailSaturation );
				float3 lerpResult31_g57695 = lerp( temp_cast_1 , temp_output_12_0_g57695 , temp_output_21_0_g57695);
				float3 temp_output_1272_0_g57633 = (unity_ColorSpaceDouble).rgb;
				float3 temp_output_1190_0_g57633 = ( lerpResult31_g57695 * temp_output_1272_0_g57633 );
				float3 BaseColor_RGB40_g57633 = temp_output_39_0_g57633;
				float localStochasticTiling159_g57674 = ( 0.0 );
				float2 vertexToFrag70_g57689 = IN.ase_texcoord3.xy;
				float2 temp_output_1339_0_g57633 = vertexToFrag70_g57689;
				float2 UV159_g57674 = temp_output_1339_0_g57633;
				float4 TexelSize159_g57674 = _DetailMaskMap_TexelSize;
				float4 Offsets159_g57674 = float4( 0,0,0,0 );
				float2 Weights159_g57674 = float2( 0,0 );
				{
				UV159_g57674 = UV159_g57674 * TexelSize159_g57674.zw - 0.5;
				float2 f = frac( UV159_g57674 );
				UV159_g57674 -= f;
				float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				float4 xs = xn * xn * xn;
				float4 ys = yn * yn * yn;
				float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				float4 c = float4( UV159_g57674.x - 0.5, UV159_g57674.x + 1.5, UV159_g57674.y - 0.5, UV159_g57674.y + 1.5 );
				float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				float w0 = s.x / ( s.x + s.y );
				float w1 = s.z / ( s.z + s.w );
				Offsets159_g57674 = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize159_g57674.xyxy;
				Weights159_g57674 = float2( w0, w1 );
				}
				float4 Input_FetchOffsets70_g57675 = Offsets159_g57674;
				float2 Input_FetchWeights143_g57675 = Weights159_g57674;
				float2 break46_g57675 = Input_FetchWeights143_g57675;
				float4 lerpResult20_g57675 = lerp( SAMPLE_TEXTURE2D( _DetailMaskMap, sampler_MainTex, (Input_FetchOffsets70_g57675).yw ) , SAMPLE_TEXTURE2D( _DetailMaskMap, sampler_MainTex, (Input_FetchOffsets70_g57675).xw ) , break46_g57675.x);
				float4 lerpResult40_g57675 = lerp( SAMPLE_TEXTURE2D( _DetailMaskMap, sampler_MainTex, (Input_FetchOffsets70_g57675).yz ) , SAMPLE_TEXTURE2D( _DetailMaskMap, sampler_MainTex, (Input_FetchOffsets70_g57675).xz ) , break46_g57675.x);
				float4 lerpResult22_g57675 = lerp( lerpResult20_g57675 , lerpResult40_g57675 , break46_g57675.y);
				float4 Output_Fetch2D44_g57675 = lerpResult22_g57675;
				float4 break50_g57675 = Output_Fetch2D44_g57675;
				float lerpResult997_g57633 = lerp( ( 1.0 - break50_g57675.r ) , break50_g57675.r , _DetailMaskIsInverted);
				float temp_output_15_0_g57677 = ( 1.0 - lerpResult997_g57633 );
				float temp_output_26_0_g57677 = _DetailMaskBlendStrength;
				float temp_output_24_0_g57677 = _DetailMaskBlendHardness;
				float saferPower2_g57677 = abs( max( saturate( (0.0 + (temp_output_15_0_g57677 - ( 1.0 - temp_output_26_0_g57677 )) * (temp_output_24_0_g57677 - 0.0) / (1.0 - ( 1.0 - temp_output_26_0_g57677 ))) ) , 0.0 ) );
				float temp_output_22_0_g57677 = _DetailMaskBlendFalloff;
				float Blend_DetailMask986_g57633 = saturate( pow( saferPower2_g57677 , ( 1.0 - temp_output_22_0_g57677 ) ) );
				float3 lerpResult1194_g57633 = lerp( BaseColor_RGB40_g57633 , temp_output_1190_0_g57633 , Blend_DetailMask986_g57633);
				float temp_output_1162_0_g57633 = ( 1.0 - Blend_DetailMask986_g57633 );
				float3 appendResult1161_g57633 = (float3(temp_output_1162_0_g57633 , temp_output_1162_0_g57633 , temp_output_1162_0_g57633));
				float3 lerpResult1005_g57633 = lerp( temp_output_1190_0_g57633 , ( ( lerpResult1194_g57633 * Blend_DetailMask986_g57633 ) + appendResult1161_g57633 ) , _DetailMaskEnable);
				float3 BaseColor_Detail255_g57633 = lerpResult1005_g57633;
				float BaseColor_R1273_g57633 = temp_output_39_0_g57633.x;
				float BaseColor_DetailR887_g57633 = Output_Fetch2D44_g57667.r;
				float lerpResult1105_g57633 = lerp( BaseColor_R1273_g57633 , BaseColor_DetailR887_g57633 , _DetailBlendSource);
				float m_switch44_g57704 = (float)_DetailBlendVertexColor;
				float m_Off44_g57704 = 1.0;
				float dotResult58_g57704 = dot( IN.ase_color.g , IN.ase_color.g );
				float dotResult61_g57704 = dot( IN.ase_color.b , IN.ase_color.b );
				float m_R44_g57704 = ( dotResult58_g57704 + dotResult61_g57704 );
				float dotResult57_g57704 = dot( IN.ase_color.r , IN.ase_color.r );
				float m_G44_g57704 = ( dotResult57_g57704 + dotResult58_g57704 );
				float m_B44_g57704 = ( dotResult57_g57704 + dotResult61_g57704 );
				float m_A44_g57704 = IN.ase_color.a;
				float localMaskVCSwitch44_g57704 = MaskVCSwitch44_g57704( m_switch44_g57704 , m_Off44_g57704 , m_R44_g57704 , m_G44_g57704 , m_B44_g57704 , m_A44_g57704 );
				float clampResult54_g57704 = clamp( ( ( localMaskVCSwitch44_g57704 * _DetailBlendHeight ) / _DetailBlendSmooth ) , 0.0 , 1.0 );
				float Blend647_g57633 = saturate( ( ( ( ( lerpResult1105_g57633 - 0.5 ) * ( ( 1.0 - _DetailBlendStrength ) - 0.9 ) ) / ( 1.0 - _DetailBlendSmooth ) ) + ( 1.0 - clampResult54_g57704 ) ) );
				float temp_output_1171_0_g57633 = ( 1.0 - Blend647_g57633 );
				float3 appendResult1174_g57633 = (float3(temp_output_1171_0_g57633 , temp_output_1171_0_g57633 , temp_output_1171_0_g57633));
				float3 temp_output_1180_0_g57633 = ( temp_output_39_0_g57633 * ( ( BaseColor_Detail255_g57633 * Blend647_g57633 ) + appendResult1174_g57633 ) );
				float2 appendResult1114_g57633 = (float2(_DetailSecondaryBlendWeightLayer1 , _DetailSecondaryBlendWeightLayer2));
				float localStochasticTiling159_g57657 = ( 0.0 );
				float2 vertexToFrag70_g57691 = IN.ase_texcoord3.zw;
				float2 temp_output_1342_0_g57633 = vertexToFrag70_g57691;
				float2 UV159_g57657 = temp_output_1342_0_g57633;
				float4 TexelSize159_g57657 = _DetailSecondaryColorMap_TexelSize;
				float4 Offsets159_g57657 = float4( 0,0,0,0 );
				float2 Weights159_g57657 = float2( 0,0 );
				{
				UV159_g57657 = UV159_g57657 * TexelSize159_g57657.zw - 0.5;
				float2 f = frac( UV159_g57657 );
				UV159_g57657 -= f;
				float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				float4 xs = xn * xn * xn;
				float4 ys = yn * yn * yn;
				float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				float4 c = float4( UV159_g57657.x - 0.5, UV159_g57657.x + 1.5, UV159_g57657.y - 0.5, UV159_g57657.y + 1.5 );
				float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				float w0 = s.x / ( s.x + s.y );
				float w1 = s.z / ( s.z + s.w );
				Offsets159_g57657 = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize159_g57657.xyxy;
				Weights159_g57657 = float2( w0, w1 );
				}
				float4 Input_FetchOffsets70_g57659 = Offsets159_g57657;
				float2 Input_FetchWeights143_g57659 = Weights159_g57657;
				float2 break46_g57659 = Input_FetchWeights143_g57659;
				float4 lerpResult20_g57659 = lerp( SAMPLE_TEXTURE2D( _DetailSecondaryColorMap, sampler_MainTex, (Input_FetchOffsets70_g57659).yw ) , SAMPLE_TEXTURE2D( _DetailSecondaryColorMap, sampler_MainTex, (Input_FetchOffsets70_g57659).xw ) , break46_g57659.x);
				float4 lerpResult40_g57659 = lerp( SAMPLE_TEXTURE2D( _DetailSecondaryColorMap, sampler_MainTex, (Input_FetchOffsets70_g57659).yz ) , SAMPLE_TEXTURE2D( _DetailSecondaryColorMap, sampler_MainTex, (Input_FetchOffsets70_g57659).xz ) , break46_g57659.x);
				float4 lerpResult22_g57659 = lerp( lerpResult20_g57659 , lerpResult40_g57659 , break46_g57659.y);
				float4 Output_Fetch2D44_g57659 = lerpResult22_g57659;
				float3 temp_output_436_0_g57633 = ( (_DetailSecondaryColor).rgb * (Output_Fetch2D44_g57659).rgb * _DetailSecondaryBrightness );
				float3 temp_output_12_0_g57696 = temp_output_436_0_g57633;
				float dotResult28_g57696 = dot( float3(0.2126729,0.7151522,0.072175) , temp_output_12_0_g57696 );
				float3 temp_cast_3 = (dotResult28_g57696).xxx;
				float temp_output_21_0_g57696 = ( 1.0 - _DetailSecondarySaturation );
				float3 lerpResult31_g57696 = lerp( temp_cast_3 , temp_output_12_0_g57696 , temp_output_21_0_g57696);
				float3 ColorSpaceDouble1261_g57633 = temp_output_1272_0_g57633;
				float3 temp_output_1239_0_g57633 = ( lerpResult31_g57696 * ColorSpaceDouble1261_g57633 );
				float localStochasticTiling159_g57668 = ( 0.0 );
				float2 vertexToFrag70_g57693 = IN.ase_texcoord4.xy;
				float2 temp_output_1347_0_g57633 = vertexToFrag70_g57693;
				float2 UV159_g57668 = temp_output_1347_0_g57633;
				float4 TexelSize159_g57668 = _DetailSecondaryMaskMap_TexelSize;
				float4 Offsets159_g57668 = float4( 0,0,0,0 );
				float2 Weights159_g57668 = float2( 0,0 );
				{
				UV159_g57668 = UV159_g57668 * TexelSize159_g57668.zw - 0.5;
				float2 f = frac( UV159_g57668 );
				UV159_g57668 -= f;
				float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				float4 xs = xn * xn * xn;
				float4 ys = yn * yn * yn;
				float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				float4 c = float4( UV159_g57668.x - 0.5, UV159_g57668.x + 1.5, UV159_g57668.y - 0.5, UV159_g57668.y + 1.5 );
				float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				float w0 = s.x / ( s.x + s.y );
				float w1 = s.z / ( s.z + s.w );
				Offsets159_g57668 = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize159_g57668.xyxy;
				Weights159_g57668 = float2( w0, w1 );
				}
				float4 Input_FetchOffsets70_g57670 = Offsets159_g57668;
				float2 Input_FetchWeights143_g57670 = Weights159_g57668;
				float2 break46_g57670 = Input_FetchWeights143_g57670;
				float4 lerpResult20_g57670 = lerp( SAMPLE_TEXTURE2D( _DetailSecondaryMaskMap, sampler_MainTex, (Input_FetchOffsets70_g57670).yw ) , SAMPLE_TEXTURE2D( _DetailSecondaryMaskMap, sampler_MainTex, (Input_FetchOffsets70_g57670).xw ) , break46_g57670.x);
				float4 lerpResult40_g57670 = lerp( SAMPLE_TEXTURE2D( _DetailSecondaryMaskMap, sampler_MainTex, (Input_FetchOffsets70_g57670).yz ) , SAMPLE_TEXTURE2D( _DetailSecondaryMaskMap, sampler_MainTex, (Input_FetchOffsets70_g57670).xz ) , break46_g57670.x);
				float4 lerpResult22_g57670 = lerp( lerpResult20_g57670 , lerpResult40_g57670 , break46_g57670.y);
				float4 Output_Fetch2D44_g57670 = lerpResult22_g57670;
				float4 break50_g57670 = Output_Fetch2D44_g57670;
				float lerpResult486_g57633 = lerp( ( 1.0 - break50_g57670.r ) , break50_g57670.r , _DetailSecondaryMaskIsInverted);
				float temp_output_15_0_g57671 = ( 1.0 - lerpResult486_g57633 );
				float temp_output_26_0_g57671 = _DetailSecondaryMaskBlendStrength;
				float temp_output_24_0_g57671 = _DetailSecondaryMaskBlendHardness;
				float saferPower2_g57671 = abs( max( saturate( (0.0 + (temp_output_15_0_g57671 - ( 1.0 - temp_output_26_0_g57671 )) * (temp_output_24_0_g57671 - 0.0) / (1.0 - ( 1.0 - temp_output_26_0_g57671 ))) ) , 0.0 ) );
				float temp_output_22_0_g57671 = _DetailSecondaryMaskBlendFalloff;
				float Blend_DetailSecondaryMask755_g57633 = saturate( pow( saferPower2_g57671 , ( 1.0 - temp_output_22_0_g57671 ) ) );
				float3 lerpResult1234_g57633 = lerp( BaseColor_RGB40_g57633 , temp_output_1239_0_g57633 , Blend_DetailSecondaryMask755_g57633);
				float temp_output_1236_0_g57633 = ( 1.0 - Blend_DetailSecondaryMask755_g57633 );
				float3 appendResult1238_g57633 = (float3(temp_output_1236_0_g57633 , temp_output_1236_0_g57633 , temp_output_1236_0_g57633));
				float3 lerpResult1233_g57633 = lerp( temp_output_1239_0_g57633 , ( ( lerpResult1234_g57633 * Blend_DetailSecondaryMask755_g57633 ) + appendResult1238_g57633 ) , _DetailSecondaryMaskEnable);
				float3 BaseColor_DetailSecondary805_g57633 = lerpResult1233_g57633;
				float BaseColor_DetailSecondaryR1102_g57633 = Output_Fetch2D44_g57659.r;
				float lerpResult1103_g57633 = lerp( BaseColor_R1273_g57633 , BaseColor_DetailSecondaryR1102_g57633 , _DetailSecondaryBlendSource);
				float m_switch44_g57703 = (float)_DetailSecondaryBlendVertexColor;
				float m_Off44_g57703 = 1.0;
				float dotResult58_g57703 = dot( IN.ase_color.g , IN.ase_color.g );
				float dotResult61_g57703 = dot( IN.ase_color.b , IN.ase_color.b );
				float m_R44_g57703 = ( dotResult58_g57703 + dotResult61_g57703 );
				float dotResult57_g57703 = dot( IN.ase_color.r , IN.ase_color.r );
				float m_G44_g57703 = ( dotResult57_g57703 + dotResult58_g57703 );
				float m_B44_g57703 = ( dotResult57_g57703 + dotResult61_g57703 );
				float m_A44_g57703 = IN.ase_color.a;
				float localMaskVCSwitch44_g57703 = MaskVCSwitch44_g57703( m_switch44_g57703 , m_Off44_g57703 , m_R44_g57703 , m_G44_g57703 , m_B44_g57703 , m_A44_g57703 );
				float clampResult54_g57703 = clamp( ( ( localMaskVCSwitch44_g57703 * _DetailSecondaryBlendHeight ) / _DetailSecondaryBlendSmooth ) , 0.0 , 1.0 );
				float BlendSecondary786_g57633 = saturate( ( ( ( ( lerpResult1103_g57633 - 0.5 ) * ( ( 1.0 - _DetailSecondaryBlendStrength ) - 0.9 ) ) / ( 1.0 - _DetailSecondaryBlendSmooth ) ) + ( 1.0 - clampResult54_g57703 ) ) );
				float temp_output_1214_0_g57633 = ( 1.0 - BlendSecondary786_g57633 );
				float3 appendResult1216_g57633 = (float3(temp_output_1214_0_g57633 , temp_output_1214_0_g57633 , temp_output_1214_0_g57633));
				float2 weightedBlendVar1117_g57633 = appendResult1114_g57633;
				float3 weightedAvg1117_g57633 = ( ( weightedBlendVar1117_g57633.x*temp_output_1180_0_g57633 + weightedBlendVar1117_g57633.y*( temp_output_39_0_g57633 * ( ( BaseColor_DetailSecondary805_g57633 * BlendSecondary786_g57633 ) + appendResult1216_g57633 ) ) )/( weightedBlendVar1117_g57633.x + weightedBlendVar1117_g57633.y ) );
				float3 lerpResult489_g57633 = lerp( temp_output_1180_0_g57633 , weightedAvg1117_g57633 , _DetailSecondaryEnable);
				float temp_output_634_0_g57633 = ( _DetailEnable + ( ( _CATEGORY_DETAILMAPPING + _SPACE_DETAIL + _CATEGORY_DETAILMAPPINGSECONDARY + _SPACE_DETAILSECONDARY ) * 0.0 ) );
				float3 lerpResult409_g57633 = lerp( temp_output_39_0_g57633 , lerpResult489_g57633 , temp_output_634_0_g57633);
				

				float3 BaseColor = lerpResult409_g57633;
				float Alpha = 1;
				float AlphaClipThreshold = 0.5;

				half4 color = half4(BaseColor, Alpha );

				#ifdef _ALPHATEST_ON
					clip(Alpha - AlphaClipThreshold);
				#endif

				return color;
			}
			ENDHLSL
		}

		
		Pass
		{
			
			Name "DepthNormals"
			Tags { "LightMode"="DepthNormals" }

			ZWrite On
			Blend One Zero
			ZTest LEqual
			ZWrite On

			HLSLPROGRAM

			#define _NORMAL_DROPOFF_TS 1
			#pragma multi_compile_instancing
			#pragma multi_compile_fragment _ LOD_FADE_CROSSFADE
			#define ASE_FOG 1
			#define _NORMALMAP 1
			#define ASE_SRP_VERSION 120112
			#define ASE_USING_SAMPLING_MACROS 1


			#pragma vertex vert
			#pragma fragment frag

			#define SHADERPASS SHADERPASS_DEPTHNORMALSONLY

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Input.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"

			#define ASE_NEEDS_FRAG_COLOR


			#if defined(ASE_EARLY_Z_DEPTH_OPTIMIZE) && (SHADER_TARGET >= 45)
				#define ASE_SV_DEPTH SV_DepthLessEqual
				#define ASE_SV_POSITION_QUALIFIERS linear noperspective centroid
			#else
				#define ASE_SV_DEPTH SV_Depth
				#define ASE_SV_POSITION_QUALIFIERS
			#endif

			struct VertexInput
			{
				float4 vertex : POSITION;
				float3 ase_normal : NORMAL;
				float4 ase_tangent : TANGENT;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct VertexOutput
			{
				ASE_SV_POSITION_QUALIFIERS float4 clipPos : SV_POSITION;
				float4 clipPosV : TEXCOORD0;
				float3 worldNormal : TEXCOORD1;
				float4 worldTangent : TEXCOORD2;
				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
					float3 worldPos : TEXCOORD3;
				#endif
				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					float4 shadowCoord : TEXCOORD4;
				#endif
				float4 ase_texcoord5 : TEXCOORD5;
				float4 ase_color : COLOR;
				float4 ase_texcoord6 : TEXCOORD6;
				float4 ase_texcoord7 : TEXCOORD7;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _DetailSecondaryMaskMap_TexelSize;
			float4 _DetailNormalMap_TexelSize;
			half4 _DetailSecondaryColor;
			half4 _SmoothnessStrength;
			float4 _DetailMaskMap_TexelSize;
			float4 _DetailMaskUVs;
			float4 _DetailSecondaryUVs;
			float4 _DetailSecondaryColorMap_TexelSize;
			float4 _DetailUVs;
			float4 _DetailColorMap_TexelSize;
			half4 _OcclusionStrengthAO;
			half4 _DetailColor;
			half4 _BaseColor;
			float4 _MainUVs;
			float4 _DetailSecondaryNormalMap_TexelSize;
			float4 _DetailSecondaryMaskUVs;
			half _DetailNormalStrength;
			float _SPACE_DETAIL;
			float _DetailSecondaryEnable;
			float _CATEGORY_DETAILMAPPING;
			float _CATEGORY_DETAILMAPPINGSECONDARY;
			half _DetailSecondaryBlendHeight;
			int _DetailSecondaryBlendVertexColor;
			float _SPACE_DETAILSECONDARY;
			half _NormalStrength;
			half _DetailSecondaryBlendSmooth;
			half _DetailEnable;
			float _SPACE_METALLIC;
			float _MetallicStrength;
			float _SPACE_OCCLUSION;
			float _CATEGORY_OCCLUSION;
			half _OcclusionStrengthAORemapMax;
			half _OcclusionStrengthAORemapMin;
			half _SmoothnessFresnelEnable;
			half _SmoothnessFresnelPower;
			half _DetailSecondaryNormalStrength;
			half _SmoothnessFresnelScale;
			float _SPACE_SMOOTHNESS;
			float _CATEGORY_SMOOTHNESS;
			half _SmoothnessStrengthRemapMax;
			half _SmoothnessStrengthRemapMin;
			half _DetailSecondaryBlendStrength;
			float _CATEGORY_METALLIC;
			half _SmoothnessSource;
			half _DetailSecondaryBlendSource;
			int _Cull;
			half _DetailSecondaryMaskBlendFalloff;
			half _DetailMaskBlendHardness;
			half _DetailMaskBlendStrength;
			half _DetailMaskIsInverted;
			half _DetailMaskUVRotation;
			float _DetailSaturation;
			half _DetailBrightness;
			half _DetailMaskBlendFalloff;
			half _DetailUVMode;
			half _Brightness;
			float _BaseColorSaturation;
			float _CATEGORY_SURFACEINPUTS;
			float _SPACE_SURFACEINPUTS;
			float _CATEGORY_SURFACEOPTIONS;
			float _SPACE_SURFACEOPTIONS;
			half _DetailUVRotation;
			half _DetailSecondaryMaskEnable;
			half _DetailMaskEnable;
			half _DetailBlendStrength;
			half _DetailSecondaryMaskBlendHardness;
			half _DetailSecondaryMaskBlendStrength;
			half _DetailSecondaryMaskIsInverted;
			half _OcclusionSourceInverted;
			half _DetailSecondaryMaskUVRotation;
			float _DetailSecondarySaturation;
			half _DetailBlendSource;
			half _DetailSecondaryBrightness;
			half _DetailSecondaryUVRotation;
			float _DetailSecondaryBlendWeightLayer2;
			float _DetailSecondaryBlendWeightLayer1;
			half _DetailBlendHeight;
			int _DetailBlendVertexColor;
			half _DetailBlendSmooth;
			half _DetailSecondaryUVMode;
			half _OcclusionSourceBaked;
			#ifdef ASE_TRANSMISSION
				float _TransmissionShadow;
			#endif
			#ifdef ASE_TRANSLUCENCY
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef ASE_TESSELLATION
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END

			// Property used by ScenePickingPass
			#ifdef SCENEPICKINGPASS
				float4 _SelectionID;
			#endif

			// Properties used by SceneSelectionPass
			#ifdef SCENESELECTIONPASS
				int _ObjectId;
				int _PassValue;
			#endif

			TEXTURE2D(_BumpMap);
			SAMPLER(sampler_BumpMap);
			TEXTURE2D(_MainTex);
			SAMPLER(sampler_MainTex);
			TEXTURE2D(_DetailColorMap);
			TEXTURE2D(_DetailNormalMap);
			TEXTURE2D(_DetailMaskMap);
			TEXTURE2D(_DetailSecondaryColorMap);
			TEXTURE2D(_DetailSecondaryNormalMap);
			TEXTURE2D(_DetailSecondaryMaskMap);


			//#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/Varyings.hlsl"
			//#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/DepthNormalsOnlyPass.hlsl"

			//#ifdef HAVE_VFX_MODIFICATION
			//#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/VisualEffectVertex.hlsl"
			//#endif

			float2 float2switchUVMode80_g57687( float m_switch, float2 m_UV0, float2 m_UV1, float2 m_UV2, float2 m_UV3 )
			{
				if(m_switch ==0)
					return m_UV0;
				else if(m_switch ==1)
					return m_UV1;
				else if(m_switch ==2)
					return m_UV2;
				else if(m_switch ==3)
					return m_UV3;
				else
				return float2(0,0);
			}
			
			float MaskVCSwitch44_g57704( float m_switch, float m_Off, float m_R, float m_G, float m_B, float m_A )
			{
				if(m_switch ==0)
					return m_Off;
				else if(m_switch ==1)
					return m_R;
				else if(m_switch ==2)
					return m_G;
				else if(m_switch ==3)
					return m_B;
				else if(m_switch ==4)
					return m_A;
				else
				return float(0);
			}
			
			float2 float2switchUVMode80_g57689( float m_switch, float2 m_UV0, float2 m_UV1, float2 m_UV2, float2 m_UV3 )
			{
				if(m_switch ==0)
					return m_UV0;
				else if(m_switch ==1)
					return m_UV1;
				else if(m_switch ==2)
					return m_UV2;
				else if(m_switch ==3)
					return m_UV3;
				else
				return float2(0,0);
			}
			
			float2 float2switchUVMode80_g57691( float m_switch, float2 m_UV0, float2 m_UV1, float2 m_UV2, float2 m_UV3 )
			{
				if(m_switch ==0)
					return m_UV0;
				else if(m_switch ==1)
					return m_UV1;
				else if(m_switch ==2)
					return m_UV2;
				else if(m_switch ==3)
					return m_UV3;
				else
				return float2(0,0);
			}
			
			float MaskVCSwitch44_g57703( float m_switch, float m_Off, float m_R, float m_G, float m_B, float m_A )
			{
				if(m_switch ==0)
					return m_Off;
				else if(m_switch ==1)
					return m_R;
				else if(m_switch ==2)
					return m_G;
				else if(m_switch ==3)
					return m_B;
				else if(m_switch ==4)
					return m_A;
				else
				return float(0);
			}
			
			float2 float2switchUVMode80_g57693( float m_switch, float2 m_UV0, float2 m_UV1, float2 m_UV2, float2 m_UV3 )
			{
				if(m_switch ==0)
					return m_UV0;
				else if(m_switch ==1)
					return m_UV1;
				else if(m_switch ==2)
					return m_UV2;
				else if(m_switch ==3)
					return m_UV3;
				else
				return float2(0,0);
			}
			

			VertexOutput VertexFunction( VertexInput v  )
			{
				VertexOutput o = (VertexOutput)0;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				float2 temp_output_1848_0_g57705 = (_MainUVs).xy;
				float2 temp_output_1847_0_g57705 = (_MainUVs).zw;
				float2 Offset235_g57784 = temp_output_1847_0_g57705;
				float2 temp_output_41_0_g57784 = ( ( v.ase_texcoord.xy * temp_output_1848_0_g57705 ) + Offset235_g57784 );
				float2 vertexToFrag70_g57784 = temp_output_41_0_g57784;
				o.ase_texcoord5.xy = vertexToFrag70_g57784;
				float temp_output_6_0_g57687 = _DetailUVRotation;
				float temp_output_200_0_g57687 = radians( temp_output_6_0_g57687 );
				float temp_output_13_0_g57687 = cos( temp_output_200_0_g57687 );
				float m_switch80_g57687 = _DetailUVMode;
				float2 m_UV080_g57687 = v.ase_texcoord.xy;
				float2 m_UV180_g57687 = v.ase_texcoord1.xy;
				float2 m_UV280_g57687 = v.ase_texcoord2.xy;
				float2 m_UV380_g57687 = v.ase_texcoord3.xy;
				float2 localfloat2switchUVMode80_g57687 = float2switchUVMode80_g57687( m_switch80_g57687 , m_UV080_g57687 , m_UV180_g57687 , m_UV280_g57687 , m_UV380_g57687 );
				float2 temp_output_9_0_g57687 = float2( 0.5,0.5 );
				float2 break39_g57687 = ( localfloat2switchUVMode80_g57687 - temp_output_9_0_g57687 );
				float temp_output_14_0_g57687 = sin( temp_output_200_0_g57687 );
				float2 appendResult36_g57687 = (float2(( ( temp_output_13_0_g57687 * break39_g57687.x ) + ( temp_output_14_0_g57687 * break39_g57687.y ) ) , ( ( temp_output_13_0_g57687 * break39_g57687.y ) - ( temp_output_14_0_g57687 * break39_g57687.x ) )));
				float2 Offset235_g57687 = (_DetailUVs).zw;
				float2 temp_output_41_0_g57687 = ( ( ( appendResult36_g57687 * ( (_DetailUVs).xy / 1.0 ) ) + temp_output_9_0_g57687 ) + Offset235_g57687 );
				float2 _ConstantAnchor = float2(0.5,0.5);
				float2 vertexToFrag70_g57687 = ( temp_output_41_0_g57687 - ( ( ( (_DetailUVs).xy / 1.0 ) * _ConstantAnchor ) - _ConstantAnchor ) );
				o.ase_texcoord5.zw = vertexToFrag70_g57687;
				float temp_output_6_0_g57689 = _DetailMaskUVRotation;
				float temp_output_200_0_g57689 = radians( temp_output_6_0_g57689 );
				float temp_output_13_0_g57689 = cos( temp_output_200_0_g57689 );
				float DetailUVMode1060_g57633 = _DetailUVMode;
				float m_switch80_g57689 = DetailUVMode1060_g57633;
				float2 m_UV080_g57689 = v.ase_texcoord.xy;
				float2 m_UV180_g57689 = v.ase_texcoord1.xy;
				float2 m_UV280_g57689 = v.ase_texcoord2.xy;
				float2 m_UV380_g57689 = v.ase_texcoord3.xy;
				float2 localfloat2switchUVMode80_g57689 = float2switchUVMode80_g57689( m_switch80_g57689 , m_UV080_g57689 , m_UV180_g57689 , m_UV280_g57689 , m_UV380_g57689 );
				float2 temp_output_9_0_g57689 = float2( 0.5,0.5 );
				float2 break39_g57689 = ( localfloat2switchUVMode80_g57689 - temp_output_9_0_g57689 );
				float temp_output_14_0_g57689 = sin( temp_output_200_0_g57689 );
				float2 appendResult36_g57689 = (float2(( ( temp_output_13_0_g57689 * break39_g57689.x ) + ( temp_output_14_0_g57689 * break39_g57689.y ) ) , ( ( temp_output_13_0_g57689 * break39_g57689.y ) - ( temp_output_14_0_g57689 * break39_g57689.x ) )));
				float2 Offset235_g57689 = (_DetailMaskUVs).zw;
				float2 temp_output_41_0_g57689 = ( ( ( appendResult36_g57689 * ( (_DetailMaskUVs).xy / 1.0 ) ) + temp_output_9_0_g57689 ) + Offset235_g57689 );
				float2 vertexToFrag70_g57689 = ( temp_output_41_0_g57689 - ( ( ( (_DetailMaskUVs).xy / 1.0 ) * _ConstantAnchor ) - _ConstantAnchor ) );
				o.ase_texcoord6.xy = vertexToFrag70_g57689;
				float temp_output_6_0_g57691 = _DetailSecondaryUVRotation;
				float temp_output_200_0_g57691 = radians( temp_output_6_0_g57691 );
				float temp_output_13_0_g57691 = cos( temp_output_200_0_g57691 );
				float m_switch80_g57691 = _DetailSecondaryUVMode;
				float2 m_UV080_g57691 = v.ase_texcoord.xy;
				float2 m_UV180_g57691 = v.ase_texcoord1.xy;
				float2 m_UV280_g57691 = v.ase_texcoord2.xy;
				float2 m_UV380_g57691 = v.ase_texcoord3.xy;
				float2 localfloat2switchUVMode80_g57691 = float2switchUVMode80_g57691( m_switch80_g57691 , m_UV080_g57691 , m_UV180_g57691 , m_UV280_g57691 , m_UV380_g57691 );
				float2 temp_output_9_0_g57691 = float2( 0.5,0.5 );
				float2 break39_g57691 = ( localfloat2switchUVMode80_g57691 - temp_output_9_0_g57691 );
				float temp_output_14_0_g57691 = sin( temp_output_200_0_g57691 );
				float2 appendResult36_g57691 = (float2(( ( temp_output_13_0_g57691 * break39_g57691.x ) + ( temp_output_14_0_g57691 * break39_g57691.y ) ) , ( ( temp_output_13_0_g57691 * break39_g57691.y ) - ( temp_output_14_0_g57691 * break39_g57691.x ) )));
				float2 Offset235_g57691 = (_DetailSecondaryUVs).zw;
				float2 temp_output_41_0_g57691 = ( ( ( appendResult36_g57691 * ( (_DetailSecondaryUVs).xy / 1.0 ) ) + temp_output_9_0_g57691 ) + Offset235_g57691 );
				float2 vertexToFrag70_g57691 = ( temp_output_41_0_g57691 - ( ( ( (_DetailSecondaryUVs).xy / 1.0 ) * _ConstantAnchor ) - _ConstantAnchor ) );
				o.ase_texcoord6.zw = vertexToFrag70_g57691;
				float temp_output_6_0_g57693 = _DetailSecondaryMaskUVRotation;
				float temp_output_200_0_g57693 = radians( temp_output_6_0_g57693 );
				float temp_output_13_0_g57693 = cos( temp_output_200_0_g57693 );
				float DetailSecondaryUVMode1059_g57633 = _DetailSecondaryUVMode;
				float m_switch80_g57693 = DetailSecondaryUVMode1059_g57633;
				float2 m_UV080_g57693 = v.ase_texcoord.xy;
				float2 m_UV180_g57693 = v.ase_texcoord1.xy;
				float2 m_UV280_g57693 = v.ase_texcoord2.xy;
				float2 m_UV380_g57693 = v.ase_texcoord3.xy;
				float2 localfloat2switchUVMode80_g57693 = float2switchUVMode80_g57693( m_switch80_g57693 , m_UV080_g57693 , m_UV180_g57693 , m_UV280_g57693 , m_UV380_g57693 );
				float2 temp_output_9_0_g57693 = float2( 0.5,0.5 );
				float2 break39_g57693 = ( localfloat2switchUVMode80_g57693 - temp_output_9_0_g57693 );
				float temp_output_14_0_g57693 = sin( temp_output_200_0_g57693 );
				float2 appendResult36_g57693 = (float2(( ( temp_output_13_0_g57693 * break39_g57693.x ) + ( temp_output_14_0_g57693 * break39_g57693.y ) ) , ( ( temp_output_13_0_g57693 * break39_g57693.y ) - ( temp_output_14_0_g57693 * break39_g57693.x ) )));
				float2 Offset235_g57693 = (_DetailSecondaryMaskUVs).zw;
				float2 temp_output_41_0_g57693 = ( ( ( appendResult36_g57693 * ( (_DetailSecondaryMaskUVs).xy / 1.0 ) ) + temp_output_9_0_g57693 ) + Offset235_g57693 );
				float2 vertexToFrag70_g57693 = ( temp_output_41_0_g57693 - ( ( ( (_DetailSecondaryMaskUVs).xy / 1.0 ) * _ConstantAnchor ) - _ConstantAnchor ) );
				o.ase_texcoord7.xy = vertexToFrag70_g57693;
				
				o.ase_color = v.ase_color;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord7.zw = 0;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.vertex.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif

				float3 vertexValue = defaultVertexValue;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					v.vertex.xyz = vertexValue;
				#else
					v.vertex.xyz += vertexValue;
				#endif

				v.ase_normal = v.ase_normal;
				float3 positionWS = TransformObjectToWorld( v.vertex.xyz );
				float3 normalWS = TransformObjectToWorldNormal( v.ase_normal );
				float4 tangentWS = float4(TransformObjectToWorldDir( v.ase_tangent.xyz), v.ase_tangent.w);
				float4 positionCS = TransformWorldToHClip( positionWS );

				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
					o.worldPos = positionWS;
				#endif

				o.worldNormal = normalWS;
				o.worldTangent = tangentWS;

				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					VertexPositionInputs vertexInput = (VertexPositionInputs)0;
					vertexInput.positionWS = positionWS;
					vertexInput.positionCS = positionCS;
					o.shadowCoord = GetShadowCoord( vertexInput );
				#endif

				o.clipPos = positionCS;
				o.clipPosV = positionCS;
				return o;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float4 vertex : INTERNALTESSPOS;
				float3 ase_normal : NORMAL;
				float4 ase_tangent : TANGENT;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_color : COLOR;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( VertexInput v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.vertex = v.vertex;
				o.ase_normal = v.ase_normal;
				o.ase_tangent = v.ase_tangent;
				o.ase_texcoord = v.ase_texcoord;
				o.ase_texcoord1 = v.ase_texcoord1;
				o.ase_texcoord2 = v.ase_texcoord2;
				o.ase_texcoord3 = v.ase_texcoord3;
				o.ase_color = v.ase_color;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
				return patch[id];
			}

			[domain("tri")]
			VertexOutput DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				VertexInput o = (VertexInput) 0;
				o.vertex = patch[0].vertex * bary.x + patch[1].vertex * bary.y + patch[2].vertex * bary.z;
				o.ase_normal = patch[0].ase_normal * bary.x + patch[1].ase_normal * bary.y + patch[2].ase_normal * bary.z;
				o.ase_tangent = patch[0].ase_tangent * bary.x + patch[1].ase_tangent * bary.y + patch[2].ase_tangent * bary.z;
				o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				o.ase_texcoord1 = patch[0].ase_texcoord1 * bary.x + patch[1].ase_texcoord1 * bary.y + patch[2].ase_texcoord1 * bary.z;
				o.ase_texcoord2 = patch[0].ase_texcoord2 * bary.x + patch[1].ase_texcoord2 * bary.y + patch[2].ase_texcoord2 * bary.z;
				o.ase_texcoord3 = patch[0].ase_texcoord3 * bary.x + patch[1].ase_texcoord3 * bary.y + patch[2].ase_texcoord3 * bary.z;
				o.ase_color = patch[0].ase_color * bary.x + patch[1].ase_color * bary.y + patch[2].ase_color * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.vertex.xyz - patch[i].ase_normal * (dot(o.vertex.xyz, patch[i].ase_normal) - dot(patch[i].vertex.xyz, patch[i].ase_normal));
				float phongStrength = _TessPhongStrength;
				o.vertex.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.vertex.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			VertexOutput vert ( VertexInput v )
			{
				return VertexFunction( v );
			}
			#endif

			half4 frag(	VertexOutput IN
						#ifdef ASE_DEPTH_WRITE_ON
						,out float outputDepth : ASE_SV_DEPTH
						#endif
						 ) : SV_TARGET
			{
				UNITY_SETUP_INSTANCE_ID(IN);
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( IN );

				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
					float3 WorldPosition = IN.worldPos;
				#endif

				float4 ShadowCoords = float4( 0, 0, 0, 0 );
				float3 WorldNormal = IN.worldNormal;
				float4 WorldTangent = IN.worldTangent;

				float4 ClipPos = IN.clipPosV;
				float4 ScreenPos = ComputeScreenPos( IN.clipPosV );

				#if defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
						ShadowCoords = IN.shadowCoord;
					#elif defined(MAIN_LIGHT_CALCULATE_SHADOWS)
						ShadowCoords = TransformWorldToShadowCoord( WorldPosition );
					#endif
				#endif

				float2 vertexToFrag70_g57784 = IN.ase_texcoord5.xy;
				float4 OUT_NORMAL1178_g57705 = SAMPLE_TEXTURE2D( _BumpMap, sampler_BumpMap, vertexToFrag70_g57784 );
				float3 unpack1731_g57705 = UnpackNormalScale( OUT_NORMAL1178_g57705, _NormalStrength );
				unpack1731_g57705.z = lerp( 1, unpack1731_g57705.z, saturate(_NormalStrength) );
				float3 temp_output_38_0_g57633 = unpack1731_g57705;
				float3 temp_output_1819_0_g57705 = (_BaseColor).rgb;
				float4 tex2DNode1921_g57705 = SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, vertexToFrag70_g57784 );
				float3 OUT_ALBEDO_RGBA1177_g57705 = (tex2DNode1921_g57705).rgb;
				float3 temp_output_12_0_g57819 = OUT_ALBEDO_RGBA1177_g57705;
				float dotResult28_g57819 = dot( float3(0.2126729,0.7151522,0.072175) , temp_output_12_0_g57819 );
				float3 temp_cast_1 = (dotResult28_g57819).xxx;
				float temp_output_21_0_g57819 = ( 1.0 - _BaseColorSaturation );
				float3 lerpResult31_g57819 = lerp( temp_cast_1 , temp_output_12_0_g57819 , temp_output_21_0_g57819);
				float3 temp_output_7_0_g57705 = ( temp_output_1819_0_g57705 * lerpResult31_g57819 * _Brightness );
				float3 temp_output_39_0_g57633 = temp_output_7_0_g57705;
				float BaseColor_R1273_g57633 = temp_output_39_0_g57633.x;
				float localStochasticTiling159_g57666 = ( 0.0 );
				float2 vertexToFrag70_g57687 = IN.ase_texcoord5.zw;
				float2 temp_output_1334_0_g57633 = vertexToFrag70_g57687;
				float2 UV159_g57666 = temp_output_1334_0_g57633;
				float4 TexelSize159_g57666 = _DetailColorMap_TexelSize;
				float4 Offsets159_g57666 = float4( 0,0,0,0 );
				float2 Weights159_g57666 = float2( 0,0 );
				{
				UV159_g57666 = UV159_g57666 * TexelSize159_g57666.zw - 0.5;
				float2 f = frac( UV159_g57666 );
				UV159_g57666 -= f;
				float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				float4 xs = xn * xn * xn;
				float4 ys = yn * yn * yn;
				float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				float4 c = float4( UV159_g57666.x - 0.5, UV159_g57666.x + 1.5, UV159_g57666.y - 0.5, UV159_g57666.y + 1.5 );
				float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				float w0 = s.x / ( s.x + s.y );
				float w1 = s.z / ( s.z + s.w );
				Offsets159_g57666 = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize159_g57666.xyxy;
				Weights159_g57666 = float2( w0, w1 );
				}
				float4 Input_FetchOffsets70_g57667 = Offsets159_g57666;
				float2 Input_FetchWeights143_g57667 = Weights159_g57666;
				float2 break46_g57667 = Input_FetchWeights143_g57667;
				float4 lerpResult20_g57667 = lerp( SAMPLE_TEXTURE2D( _DetailColorMap, sampler_MainTex, (Input_FetchOffsets70_g57667).yw ) , SAMPLE_TEXTURE2D( _DetailColorMap, sampler_MainTex, (Input_FetchOffsets70_g57667).xw ) , break46_g57667.x);
				float4 lerpResult40_g57667 = lerp( SAMPLE_TEXTURE2D( _DetailColorMap, sampler_MainTex, (Input_FetchOffsets70_g57667).yz ) , SAMPLE_TEXTURE2D( _DetailColorMap, sampler_MainTex, (Input_FetchOffsets70_g57667).xz ) , break46_g57667.x);
				float4 lerpResult22_g57667 = lerp( lerpResult20_g57667 , lerpResult40_g57667 , break46_g57667.y);
				float4 Output_Fetch2D44_g57667 = lerpResult22_g57667;
				float BaseColor_DetailR887_g57633 = Output_Fetch2D44_g57667.r;
				float lerpResult1105_g57633 = lerp( BaseColor_R1273_g57633 , BaseColor_DetailR887_g57633 , _DetailBlendSource);
				float m_switch44_g57704 = (float)_DetailBlendVertexColor;
				float m_Off44_g57704 = 1.0;
				float dotResult58_g57704 = dot( IN.ase_color.g , IN.ase_color.g );
				float dotResult61_g57704 = dot( IN.ase_color.b , IN.ase_color.b );
				float m_R44_g57704 = ( dotResult58_g57704 + dotResult61_g57704 );
				float dotResult57_g57704 = dot( IN.ase_color.r , IN.ase_color.r );
				float m_G44_g57704 = ( dotResult57_g57704 + dotResult58_g57704 );
				float m_B44_g57704 = ( dotResult57_g57704 + dotResult61_g57704 );
				float m_A44_g57704 = IN.ase_color.a;
				float localMaskVCSwitch44_g57704 = MaskVCSwitch44_g57704( m_switch44_g57704 , m_Off44_g57704 , m_R44_g57704 , m_G44_g57704 , m_B44_g57704 , m_A44_g57704 );
				float clampResult54_g57704 = clamp( ( ( localMaskVCSwitch44_g57704 * _DetailBlendHeight ) / _DetailBlendSmooth ) , 0.0 , 1.0 );
				float Blend647_g57633 = saturate( ( ( ( ( lerpResult1105_g57633 - 0.5 ) * ( ( 1.0 - _DetailBlendStrength ) - 0.9 ) ) / ( 1.0 - _DetailBlendSmooth ) ) + ( 1.0 - clampResult54_g57704 ) ) );
				float localStochasticTiling159_g57673 = ( 0.0 );
				float2 UV159_g57673 = temp_output_1334_0_g57633;
				float4 TexelSize159_g57673 = _DetailNormalMap_TexelSize;
				float4 Offsets159_g57673 = float4( 0,0,0,0 );
				float2 Weights159_g57673 = float2( 0,0 );
				{
				UV159_g57673 = UV159_g57673 * TexelSize159_g57673.zw - 0.5;
				float2 f = frac( UV159_g57673 );
				UV159_g57673 -= f;
				float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				float4 xs = xn * xn * xn;
				float4 ys = yn * yn * yn;
				float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				float4 c = float4( UV159_g57673.x - 0.5, UV159_g57673.x + 1.5, UV159_g57673.y - 0.5, UV159_g57673.y + 1.5 );
				float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				float w0 = s.x / ( s.x + s.y );
				float w1 = s.z / ( s.z + s.w );
				Offsets159_g57673 = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize159_g57673.xyxy;
				Weights159_g57673 = float2( w0, w1 );
				}
				float4 Input_FetchOffsets70_g57672 = Offsets159_g57673;
				float2 Input_FetchWeights143_g57672 = Weights159_g57673;
				float2 break46_g57672 = Input_FetchWeights143_g57672;
				float4 lerpResult20_g57672 = lerp( SAMPLE_TEXTURE2D( _DetailNormalMap, sampler_BumpMap, (Input_FetchOffsets70_g57672).yw ) , SAMPLE_TEXTURE2D( _DetailNormalMap, sampler_BumpMap, (Input_FetchOffsets70_g57672).xw ) , break46_g57672.x);
				float4 lerpResult40_g57672 = lerp( SAMPLE_TEXTURE2D( _DetailNormalMap, sampler_BumpMap, (Input_FetchOffsets70_g57672).yz ) , SAMPLE_TEXTURE2D( _DetailNormalMap, sampler_BumpMap, (Input_FetchOffsets70_g57672).xz ) , break46_g57672.x);
				float4 lerpResult22_g57672 = lerp( lerpResult20_g57672 , lerpResult40_g57672 , break46_g57672.y);
				float4 Output_Fetch2D44_g57672 = lerpResult22_g57672;
				float3 unpack499_g57633 = UnpackNormalScale( Output_Fetch2D44_g57672, _DetailNormalStrength );
				unpack499_g57633.z = lerp( 1, unpack499_g57633.z, saturate(_DetailNormalStrength) );
				float3 Normal_In880_g57633 = temp_output_38_0_g57633;
				float localStochasticTiling159_g57674 = ( 0.0 );
				float2 vertexToFrag70_g57689 = IN.ase_texcoord6.xy;
				float2 temp_output_1339_0_g57633 = vertexToFrag70_g57689;
				float2 UV159_g57674 = temp_output_1339_0_g57633;
				float4 TexelSize159_g57674 = _DetailMaskMap_TexelSize;
				float4 Offsets159_g57674 = float4( 0,0,0,0 );
				float2 Weights159_g57674 = float2( 0,0 );
				{
				UV159_g57674 = UV159_g57674 * TexelSize159_g57674.zw - 0.5;
				float2 f = frac( UV159_g57674 );
				UV159_g57674 -= f;
				float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				float4 xs = xn * xn * xn;
				float4 ys = yn * yn * yn;
				float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				float4 c = float4( UV159_g57674.x - 0.5, UV159_g57674.x + 1.5, UV159_g57674.y - 0.5, UV159_g57674.y + 1.5 );
				float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				float w0 = s.x / ( s.x + s.y );
				float w1 = s.z / ( s.z + s.w );
				Offsets159_g57674 = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize159_g57674.xyxy;
				Weights159_g57674 = float2( w0, w1 );
				}
				float4 Input_FetchOffsets70_g57675 = Offsets159_g57674;
				float2 Input_FetchWeights143_g57675 = Weights159_g57674;
				float2 break46_g57675 = Input_FetchWeights143_g57675;
				float4 lerpResult20_g57675 = lerp( SAMPLE_TEXTURE2D( _DetailMaskMap, sampler_MainTex, (Input_FetchOffsets70_g57675).yw ) , SAMPLE_TEXTURE2D( _DetailMaskMap, sampler_MainTex, (Input_FetchOffsets70_g57675).xw ) , break46_g57675.x);
				float4 lerpResult40_g57675 = lerp( SAMPLE_TEXTURE2D( _DetailMaskMap, sampler_MainTex, (Input_FetchOffsets70_g57675).yz ) , SAMPLE_TEXTURE2D( _DetailMaskMap, sampler_MainTex, (Input_FetchOffsets70_g57675).xz ) , break46_g57675.x);
				float4 lerpResult22_g57675 = lerp( lerpResult20_g57675 , lerpResult40_g57675 , break46_g57675.y);
				float4 Output_Fetch2D44_g57675 = lerpResult22_g57675;
				float4 break50_g57675 = Output_Fetch2D44_g57675;
				float lerpResult997_g57633 = lerp( ( 1.0 - break50_g57675.r ) , break50_g57675.r , _DetailMaskIsInverted);
				float temp_output_15_0_g57677 = ( 1.0 - lerpResult997_g57633 );
				float temp_output_26_0_g57677 = _DetailMaskBlendStrength;
				float temp_output_24_0_g57677 = _DetailMaskBlendHardness;
				float saferPower2_g57677 = abs( max( saturate( (0.0 + (temp_output_15_0_g57677 - ( 1.0 - temp_output_26_0_g57677 )) * (temp_output_24_0_g57677 - 0.0) / (1.0 - ( 1.0 - temp_output_26_0_g57677 ))) ) , 0.0 ) );
				float temp_output_22_0_g57677 = _DetailMaskBlendFalloff;
				float Blend_DetailMask986_g57633 = saturate( pow( saferPower2_g57677 , ( 1.0 - temp_output_22_0_g57677 ) ) );
				float3 lerpResult1286_g57633 = lerp( Normal_In880_g57633 , unpack499_g57633 , Blend_DetailMask986_g57633);
				float3 lerpResult1011_g57633 = lerp( unpack499_g57633 , lerpResult1286_g57633 , _DetailMaskEnable);
				float3 Normal_Detail199_g57633 = lerpResult1011_g57633;
				float layeredBlendVar1278_g57633 = Blend647_g57633;
				float3 layeredBlend1278_g57633 = ( lerp( temp_output_38_0_g57633,Normal_Detail199_g57633 , layeredBlendVar1278_g57633 ) );
				float2 appendResult1114_g57633 = (float2(_DetailSecondaryBlendWeightLayer1 , _DetailSecondaryBlendWeightLayer2));
				float localStochasticTiling159_g57657 = ( 0.0 );
				float2 vertexToFrag70_g57691 = IN.ase_texcoord6.zw;
				float2 temp_output_1342_0_g57633 = vertexToFrag70_g57691;
				float2 UV159_g57657 = temp_output_1342_0_g57633;
				float4 TexelSize159_g57657 = _DetailSecondaryColorMap_TexelSize;
				float4 Offsets159_g57657 = float4( 0,0,0,0 );
				float2 Weights159_g57657 = float2( 0,0 );
				{
				UV159_g57657 = UV159_g57657 * TexelSize159_g57657.zw - 0.5;
				float2 f = frac( UV159_g57657 );
				UV159_g57657 -= f;
				float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				float4 xs = xn * xn * xn;
				float4 ys = yn * yn * yn;
				float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				float4 c = float4( UV159_g57657.x - 0.5, UV159_g57657.x + 1.5, UV159_g57657.y - 0.5, UV159_g57657.y + 1.5 );
				float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				float w0 = s.x / ( s.x + s.y );
				float w1 = s.z / ( s.z + s.w );
				Offsets159_g57657 = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize159_g57657.xyxy;
				Weights159_g57657 = float2( w0, w1 );
				}
				float4 Input_FetchOffsets70_g57659 = Offsets159_g57657;
				float2 Input_FetchWeights143_g57659 = Weights159_g57657;
				float2 break46_g57659 = Input_FetchWeights143_g57659;
				float4 lerpResult20_g57659 = lerp( SAMPLE_TEXTURE2D( _DetailSecondaryColorMap, sampler_MainTex, (Input_FetchOffsets70_g57659).yw ) , SAMPLE_TEXTURE2D( _DetailSecondaryColorMap, sampler_MainTex, (Input_FetchOffsets70_g57659).xw ) , break46_g57659.x);
				float4 lerpResult40_g57659 = lerp( SAMPLE_TEXTURE2D( _DetailSecondaryColorMap, sampler_MainTex, (Input_FetchOffsets70_g57659).yz ) , SAMPLE_TEXTURE2D( _DetailSecondaryColorMap, sampler_MainTex, (Input_FetchOffsets70_g57659).xz ) , break46_g57659.x);
				float4 lerpResult22_g57659 = lerp( lerpResult20_g57659 , lerpResult40_g57659 , break46_g57659.y);
				float4 Output_Fetch2D44_g57659 = lerpResult22_g57659;
				float BaseColor_DetailSecondaryR1102_g57633 = Output_Fetch2D44_g57659.r;
				float lerpResult1103_g57633 = lerp( BaseColor_R1273_g57633 , BaseColor_DetailSecondaryR1102_g57633 , _DetailSecondaryBlendSource);
				float m_switch44_g57703 = (float)_DetailSecondaryBlendVertexColor;
				float m_Off44_g57703 = 1.0;
				float dotResult58_g57703 = dot( IN.ase_color.g , IN.ase_color.g );
				float dotResult61_g57703 = dot( IN.ase_color.b , IN.ase_color.b );
				float m_R44_g57703 = ( dotResult58_g57703 + dotResult61_g57703 );
				float dotResult57_g57703 = dot( IN.ase_color.r , IN.ase_color.r );
				float m_G44_g57703 = ( dotResult57_g57703 + dotResult58_g57703 );
				float m_B44_g57703 = ( dotResult57_g57703 + dotResult61_g57703 );
				float m_A44_g57703 = IN.ase_color.a;
				float localMaskVCSwitch44_g57703 = MaskVCSwitch44_g57703( m_switch44_g57703 , m_Off44_g57703 , m_R44_g57703 , m_G44_g57703 , m_B44_g57703 , m_A44_g57703 );
				float clampResult54_g57703 = clamp( ( ( localMaskVCSwitch44_g57703 * _DetailSecondaryBlendHeight ) / _DetailSecondaryBlendSmooth ) , 0.0 , 1.0 );
				float BlendSecondary786_g57633 = saturate( ( ( ( ( lerpResult1103_g57633 - 0.5 ) * ( ( 1.0 - _DetailSecondaryBlendStrength ) - 0.9 ) ) / ( 1.0 - _DetailSecondaryBlendSmooth ) ) + ( 1.0 - clampResult54_g57703 ) ) );
				float localStochasticTiling159_g57660 = ( 0.0 );
				float2 UV159_g57660 = temp_output_1342_0_g57633;
				float4 TexelSize159_g57660 = _DetailSecondaryNormalMap_TexelSize;
				float4 Offsets159_g57660 = float4( 0,0,0,0 );
				float2 Weights159_g57660 = float2( 0,0 );
				{
				UV159_g57660 = UV159_g57660 * TexelSize159_g57660.zw - 0.5;
				float2 f = frac( UV159_g57660 );
				UV159_g57660 -= f;
				float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				float4 xs = xn * xn * xn;
				float4 ys = yn * yn * yn;
				float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				float4 c = float4( UV159_g57660.x - 0.5, UV159_g57660.x + 1.5, UV159_g57660.y - 0.5, UV159_g57660.y + 1.5 );
				float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				float w0 = s.x / ( s.x + s.y );
				float w1 = s.z / ( s.z + s.w );
				Offsets159_g57660 = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize159_g57660.xyxy;
				Weights159_g57660 = float2( w0, w1 );
				}
				float4 Input_FetchOffsets70_g57661 = Offsets159_g57660;
				float2 Input_FetchWeights143_g57661 = Weights159_g57660;
				float2 break46_g57661 = Input_FetchWeights143_g57661;
				float4 lerpResult20_g57661 = lerp( SAMPLE_TEXTURE2D( _DetailSecondaryNormalMap, sampler_BumpMap, (Input_FetchOffsets70_g57661).yw ) , SAMPLE_TEXTURE2D( _DetailSecondaryNormalMap, sampler_BumpMap, (Input_FetchOffsets70_g57661).xw ) , break46_g57661.x);
				float4 lerpResult40_g57661 = lerp( SAMPLE_TEXTURE2D( _DetailSecondaryNormalMap, sampler_BumpMap, (Input_FetchOffsets70_g57661).yz ) , SAMPLE_TEXTURE2D( _DetailSecondaryNormalMap, sampler_BumpMap, (Input_FetchOffsets70_g57661).xz ) , break46_g57661.x);
				float4 lerpResult22_g57661 = lerp( lerpResult20_g57661 , lerpResult40_g57661 , break46_g57661.y);
				float4 Output_Fetch2D44_g57661 = lerpResult22_g57661;
				float3 unpack500_g57633 = UnpackNormalScale( Output_Fetch2D44_g57661, _DetailSecondaryNormalStrength );
				unpack500_g57633.z = lerp( 1, unpack500_g57633.z, saturate(_DetailSecondaryNormalStrength) );
				float localStochasticTiling159_g57668 = ( 0.0 );
				float2 vertexToFrag70_g57693 = IN.ase_texcoord7.xy;
				float2 temp_output_1347_0_g57633 = vertexToFrag70_g57693;
				float2 UV159_g57668 = temp_output_1347_0_g57633;
				float4 TexelSize159_g57668 = _DetailSecondaryMaskMap_TexelSize;
				float4 Offsets159_g57668 = float4( 0,0,0,0 );
				float2 Weights159_g57668 = float2( 0,0 );
				{
				UV159_g57668 = UV159_g57668 * TexelSize159_g57668.zw - 0.5;
				float2 f = frac( UV159_g57668 );
				UV159_g57668 -= f;
				float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				float4 xs = xn * xn * xn;
				float4 ys = yn * yn * yn;
				float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				float4 c = float4( UV159_g57668.x - 0.5, UV159_g57668.x + 1.5, UV159_g57668.y - 0.5, UV159_g57668.y + 1.5 );
				float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				float w0 = s.x / ( s.x + s.y );
				float w1 = s.z / ( s.z + s.w );
				Offsets159_g57668 = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize159_g57668.xyxy;
				Weights159_g57668 = float2( w0, w1 );
				}
				float4 Input_FetchOffsets70_g57670 = Offsets159_g57668;
				float2 Input_FetchWeights143_g57670 = Weights159_g57668;
				float2 break46_g57670 = Input_FetchWeights143_g57670;
				float4 lerpResult20_g57670 = lerp( SAMPLE_TEXTURE2D( _DetailSecondaryMaskMap, sampler_MainTex, (Input_FetchOffsets70_g57670).yw ) , SAMPLE_TEXTURE2D( _DetailSecondaryMaskMap, sampler_MainTex, (Input_FetchOffsets70_g57670).xw ) , break46_g57670.x);
				float4 lerpResult40_g57670 = lerp( SAMPLE_TEXTURE2D( _DetailSecondaryMaskMap, sampler_MainTex, (Input_FetchOffsets70_g57670).yz ) , SAMPLE_TEXTURE2D( _DetailSecondaryMaskMap, sampler_MainTex, (Input_FetchOffsets70_g57670).xz ) , break46_g57670.x);
				float4 lerpResult22_g57670 = lerp( lerpResult20_g57670 , lerpResult40_g57670 , break46_g57670.y);
				float4 Output_Fetch2D44_g57670 = lerpResult22_g57670;
				float4 break50_g57670 = Output_Fetch2D44_g57670;
				float lerpResult486_g57633 = lerp( ( 1.0 - break50_g57670.r ) , break50_g57670.r , _DetailSecondaryMaskIsInverted);
				float temp_output_15_0_g57671 = ( 1.0 - lerpResult486_g57633 );
				float temp_output_26_0_g57671 = _DetailSecondaryMaskBlendStrength;
				float temp_output_24_0_g57671 = _DetailSecondaryMaskBlendHardness;
				float saferPower2_g57671 = abs( max( saturate( (0.0 + (temp_output_15_0_g57671 - ( 1.0 - temp_output_26_0_g57671 )) * (temp_output_24_0_g57671 - 0.0) / (1.0 - ( 1.0 - temp_output_26_0_g57671 ))) ) , 0.0 ) );
				float temp_output_22_0_g57671 = _DetailSecondaryMaskBlendFalloff;
				float Blend_DetailSecondaryMask755_g57633 = saturate( pow( saferPower2_g57671 , ( 1.0 - temp_output_22_0_g57671 ) ) );
				float3 lerpResult1285_g57633 = lerp( Normal_In880_g57633 , unpack500_g57633 , Blend_DetailSecondaryMask755_g57633);
				float3 lerpResult1241_g57633 = lerp( unpack500_g57633 , lerpResult1285_g57633 , _DetailSecondaryMaskEnable);
				float3 Normal_DetailSecondary806_g57633 = lerpResult1241_g57633;
				float layeredBlendVar1280_g57633 = BlendSecondary786_g57633;
				float3 layeredBlend1280_g57633 = ( lerp( temp_output_38_0_g57633,Normal_DetailSecondary806_g57633 , layeredBlendVar1280_g57633 ) );
				float2 weightedBlendVar1118_g57633 = appendResult1114_g57633;
				float3 weightedAvg1118_g57633 = ( ( weightedBlendVar1118_g57633.x*layeredBlend1278_g57633 + weightedBlendVar1118_g57633.y*layeredBlend1280_g57633 )/( weightedBlendVar1118_g57633.x + weightedBlendVar1118_g57633.y ) );
				float3 lerpResult488_g57633 = lerp( layeredBlend1278_g57633 , weightedAvg1118_g57633 , _DetailSecondaryEnable);
				float3 break817_g57633 = lerpResult488_g57633;
				float3 appendResult820_g57633 = (float3(break817_g57633.x , break817_g57633.y , ( break817_g57633.z + 0.001 )));
				float temp_output_634_0_g57633 = ( _DetailEnable + ( ( _CATEGORY_DETAILMAPPING + _SPACE_DETAIL + _CATEGORY_DETAILMAPPINGSECONDARY + _SPACE_DETAILSECONDARY ) * 0.0 ) );
				float3 lerpResult410_g57633 = lerp( temp_output_38_0_g57633 , appendResult820_g57633 , temp_output_634_0_g57633);
				

				float3 Normal = lerpResult410_g57633;
				float Alpha = 1;
				float AlphaClipThreshold = 0.5;
				#ifdef ASE_DEPTH_WRITE_ON
					float DepthValue = IN.clipPos.z;
				#endif

				#ifdef _ALPHATEST_ON
					clip(Alpha - AlphaClipThreshold);
				#endif

				#ifdef LOD_FADE_CROSSFADE
					LODDitheringTransition( IN.clipPos.xyz, unity_LODFade.x );
				#endif

				#ifdef ASE_DEPTH_WRITE_ON
					outputDepth = DepthValue;
				#endif

				#if defined(_GBUFFER_NORMALS_OCT)
					float2 octNormalWS = PackNormalOctQuadEncode(WorldNormal);
					float2 remappedOctNormalWS = saturate(octNormalWS * 0.5 + 0.5);
					half3 packedNormalWS = PackFloat2To888(remappedOctNormalWS);
					return half4(packedNormalWS, 0.0);
				#else
					#if defined(_NORMALMAP)
						#if _NORMAL_DROPOFF_TS
							float crossSign = (WorldTangent.w > 0.0 ? 1.0 : -1.0) * GetOddNegativeScale();
							float3 bitangent = crossSign * cross(WorldNormal.xyz, WorldTangent.xyz);
							float3 normalWS = TransformTangentToWorld(Normal, half3x3(WorldTangent.xyz, bitangent, WorldNormal.xyz));
						#elif _NORMAL_DROPOFF_OS
							float3 normalWS = TransformObjectToWorldNormal(Normal);
						#elif _NORMAL_DROPOFF_WS
							float3 normalWS = Normal;
						#endif
					#else
						float3 normalWS = WorldNormal;
					#endif
					return half4(NormalizeNormalPerPixel(normalWS), 0.0);
				#endif
			}
			ENDHLSL
		}

		
		Pass
		{
			
			Name "GBuffer"
			Tags { "LightMode"="UniversalGBuffer" }

			Blend One Zero, One Zero
			ZWrite On
			ZTest LEqual
			Offset 0 , 0
			ColorMask RGBA
			

			HLSLPROGRAM

			#define _NORMAL_DROPOFF_TS 1
			#pragma multi_compile_instancing
			#pragma instancing_options renderinglayer
			#pragma multi_compile_fragment _ LOD_FADE_CROSSFADE
			#pragma multi_compile_fog
			#define ASE_FOG 1
			#define _NORMALMAP 1
			#define ASE_SRP_VERSION 120112
			#ifdef UNITY_COLORSPACE_GAMMA//ASE Color Space Def
			#define unity_ColorSpaceDouble half4(2.0, 2.0, 2.0, 2.0)//ASE Color Space Def
			#else // Linear values//ASE Color Space Def
			#define unity_ColorSpaceDouble half4(4.59479380, 4.59479380, 4.59479380, 2.0)//ASE Color Space Def
			#endif//ASE Color Space Def
			#define ASE_USING_SAMPLING_MACROS 1


			#pragma shader_feature_local _RECEIVE_SHADOWS_OFF
			#pragma shader_feature_local_fragment _SPECULARHIGHLIGHTS_OFF
			#pragma shader_feature_local_fragment _ENVIRONMENTREFLECTIONS_OFF

			#pragma multi_compile _ _MAIN_LIGHT_SHADOWS _MAIN_LIGHT_SHADOWS_CASCADE _MAIN_LIGHT_SHADOWS_SCREEN
			#pragma multi_compile_fragment _ _REFLECTION_PROBE_BLENDING
			#pragma multi_compile_fragment _ _REFLECTION_PROBE_BOX_PROJECTION
			#pragma multi_compile_fragment _ _SHADOWS_SOFT
			#pragma multi_compile_fragment _ _DBUFFER_MRT1 _DBUFFER_MRT2 _DBUFFER_MRT3
			#pragma multi_compile_fragment _ _LIGHT_LAYERS
			#pragma multi_compile_fragment _ _RENDER_PASS_ENABLED

			#pragma multi_compile _ LIGHTMAP_SHADOW_MIXING
			#pragma multi_compile _ SHADOWS_SHADOWMASK
			#pragma multi_compile _ DIRLIGHTMAP_COMBINED
			#pragma multi_compile _ LIGHTMAP_ON
			#pragma multi_compile _ DYNAMICLIGHTMAP_ON
			#pragma multi_compile_fragment _ _GBUFFER_NORMALS_OCT

			#pragma vertex vert
			#pragma fragment frag

			#define SHADERPASS SHADERPASS_GBUFFER

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Input.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Shadows.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DBuffer.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"

			#if defined(UNITY_INSTANCING_ENABLED) && defined(_TERRAIN_INSTANCED_PERPIXEL_NORMAL)
				#define ENABLE_TERRAIN_PERPIXEL_NORMAL
			#endif

			#define ASE_NEEDS_FRAG_COLOR
			#define ASE_NEEDS_FRAG_WORLD_VIEW_DIR
			#define ASE_NEEDS_FRAG_WORLD_TANGENT
			#define ASE_NEEDS_FRAG_WORLD_BITANGENT
			#define ASE_NEEDS_FRAG_WORLD_NORMAL


			#if defined(ASE_EARLY_Z_DEPTH_OPTIMIZE) && (SHADER_TARGET >= 45)
				#define ASE_SV_DEPTH SV_DepthLessEqual
				#define ASE_SV_POSITION_QUALIFIERS linear noperspective centroid
			#else
				#define ASE_SV_DEPTH SV_Depth
				#define ASE_SV_POSITION_QUALIFIERS
			#endif

			struct VertexInput
			{
				float4 vertex : POSITION;
				float3 ase_normal : NORMAL;
				float4 ase_tangent : TANGENT;
				float4 texcoord : TEXCOORD0;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct VertexOutput
			{
				ASE_SV_POSITION_QUALIFIERS float4 clipPos : SV_POSITION;
				float4 clipPosV : TEXCOORD0;
				float4 lightmapUVOrVertexSH : TEXCOORD1;
				half4 fogFactorAndVertexLight : TEXCOORD2;
				float4 tSpace0 : TEXCOORD3;
				float4 tSpace1 : TEXCOORD4;
				float4 tSpace2 : TEXCOORD5;
				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
				float4 shadowCoord : TEXCOORD6;
				#endif
				#if defined(DYNAMICLIGHTMAP_ON)
				float2 dynamicLightmapUV : TEXCOORD7;
				#endif
				float4 ase_texcoord8 : TEXCOORD8;
				float4 ase_texcoord9 : TEXCOORD9;
				float4 ase_color : COLOR;
				float4 ase_texcoord10 : TEXCOORD10;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _DetailSecondaryMaskMap_TexelSize;
			float4 _DetailNormalMap_TexelSize;
			half4 _DetailSecondaryColor;
			half4 _SmoothnessStrength;
			float4 _DetailMaskMap_TexelSize;
			float4 _DetailMaskUVs;
			float4 _DetailSecondaryUVs;
			float4 _DetailSecondaryColorMap_TexelSize;
			float4 _DetailUVs;
			float4 _DetailColorMap_TexelSize;
			half4 _OcclusionStrengthAO;
			half4 _DetailColor;
			half4 _BaseColor;
			float4 _MainUVs;
			float4 _DetailSecondaryNormalMap_TexelSize;
			float4 _DetailSecondaryMaskUVs;
			half _DetailNormalStrength;
			float _SPACE_DETAIL;
			float _DetailSecondaryEnable;
			float _CATEGORY_DETAILMAPPING;
			float _CATEGORY_DETAILMAPPINGSECONDARY;
			half _DetailSecondaryBlendHeight;
			int _DetailSecondaryBlendVertexColor;
			float _SPACE_DETAILSECONDARY;
			half _NormalStrength;
			half _DetailSecondaryBlendSmooth;
			half _DetailEnable;
			float _SPACE_METALLIC;
			float _MetallicStrength;
			float _SPACE_OCCLUSION;
			float _CATEGORY_OCCLUSION;
			half _OcclusionStrengthAORemapMax;
			half _OcclusionStrengthAORemapMin;
			half _SmoothnessFresnelEnable;
			half _SmoothnessFresnelPower;
			half _DetailSecondaryNormalStrength;
			half _SmoothnessFresnelScale;
			float _SPACE_SMOOTHNESS;
			float _CATEGORY_SMOOTHNESS;
			half _SmoothnessStrengthRemapMax;
			half _SmoothnessStrengthRemapMin;
			half _DetailSecondaryBlendStrength;
			float _CATEGORY_METALLIC;
			half _SmoothnessSource;
			half _DetailSecondaryBlendSource;
			int _Cull;
			half _DetailSecondaryMaskBlendFalloff;
			half _DetailMaskBlendHardness;
			half _DetailMaskBlendStrength;
			half _DetailMaskIsInverted;
			half _DetailMaskUVRotation;
			float _DetailSaturation;
			half _DetailBrightness;
			half _DetailMaskBlendFalloff;
			half _DetailUVMode;
			half _Brightness;
			float _BaseColorSaturation;
			float _CATEGORY_SURFACEINPUTS;
			float _SPACE_SURFACEINPUTS;
			float _CATEGORY_SURFACEOPTIONS;
			float _SPACE_SURFACEOPTIONS;
			half _DetailUVRotation;
			half _DetailSecondaryMaskEnable;
			half _DetailMaskEnable;
			half _DetailBlendStrength;
			half _DetailSecondaryMaskBlendHardness;
			half _DetailSecondaryMaskBlendStrength;
			half _DetailSecondaryMaskIsInverted;
			half _OcclusionSourceInverted;
			half _DetailSecondaryMaskUVRotation;
			float _DetailSecondarySaturation;
			half _DetailBlendSource;
			half _DetailSecondaryBrightness;
			half _DetailSecondaryUVRotation;
			float _DetailSecondaryBlendWeightLayer2;
			float _DetailSecondaryBlendWeightLayer1;
			half _DetailBlendHeight;
			int _DetailBlendVertexColor;
			half _DetailBlendSmooth;
			half _DetailSecondaryUVMode;
			half _OcclusionSourceBaked;
			#ifdef ASE_TRANSMISSION
				float _TransmissionShadow;
			#endif
			#ifdef ASE_TRANSLUCENCY
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef ASE_TESSELLATION
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END

			// Property used by ScenePickingPass
			#ifdef SCENEPICKINGPASS
				float4 _SelectionID;
			#endif

			// Properties used by SceneSelectionPass
			#ifdef SCENESELECTIONPASS
				int _ObjectId;
				int _PassValue;
			#endif

			TEXTURE2D(_MainTex);
			SAMPLER(sampler_MainTex);
			TEXTURE2D(_DetailColorMap);
			TEXTURE2D(_DetailMaskMap);
			TEXTURE2D(_DetailSecondaryColorMap);
			TEXTURE2D(_DetailSecondaryMaskMap);
			TEXTURE2D(_BumpMap);
			SAMPLER(sampler_BumpMap);
			TEXTURE2D(_DetailNormalMap);
			TEXTURE2D(_DetailSecondaryNormalMap);
			TEXTURE2D(_MetallicGlossMap);
			SAMPLER(sampler_MetallicGlossMap);
			TEXTURE2D(_SmoothnessMap);
			SAMPLER(sampler_SmoothnessMap);
			TEXTURE2D(_OcclusionMap);
			SAMPLER(sampler_OcclusionMap);


			//#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/Varyings.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/UnityGBuffer.hlsl"
			//#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/PBRGBufferPass.hlsl"

			float2 float2switchUVMode80_g57687( float m_switch, float2 m_UV0, float2 m_UV1, float2 m_UV2, float2 m_UV3 )
			{
				if(m_switch ==0)
					return m_UV0;
				else if(m_switch ==1)
					return m_UV1;
				else if(m_switch ==2)
					return m_UV2;
				else if(m_switch ==3)
					return m_UV3;
				else
				return float2(0,0);
			}
			
			float2 float2switchUVMode80_g57689( float m_switch, float2 m_UV0, float2 m_UV1, float2 m_UV2, float2 m_UV3 )
			{
				if(m_switch ==0)
					return m_UV0;
				else if(m_switch ==1)
					return m_UV1;
				else if(m_switch ==2)
					return m_UV2;
				else if(m_switch ==3)
					return m_UV3;
				else
				return float2(0,0);
			}
			
			float MaskVCSwitch44_g57704( float m_switch, float m_Off, float m_R, float m_G, float m_B, float m_A )
			{
				if(m_switch ==0)
					return m_Off;
				else if(m_switch ==1)
					return m_R;
				else if(m_switch ==2)
					return m_G;
				else if(m_switch ==3)
					return m_B;
				else if(m_switch ==4)
					return m_A;
				else
				return float(0);
			}
			
			float2 float2switchUVMode80_g57691( float m_switch, float2 m_UV0, float2 m_UV1, float2 m_UV2, float2 m_UV3 )
			{
				if(m_switch ==0)
					return m_UV0;
				else if(m_switch ==1)
					return m_UV1;
				else if(m_switch ==2)
					return m_UV2;
				else if(m_switch ==3)
					return m_UV3;
				else
				return float2(0,0);
			}
			
			float2 float2switchUVMode80_g57693( float m_switch, float2 m_UV0, float2 m_UV1, float2 m_UV2, float2 m_UV3 )
			{
				if(m_switch ==0)
					return m_UV0;
				else if(m_switch ==1)
					return m_UV1;
				else if(m_switch ==2)
					return m_UV2;
				else if(m_switch ==3)
					return m_UV3;
				else
				return float2(0,0);
			}
			
			float MaskVCSwitch44_g57703( float m_switch, float m_Off, float m_R, float m_G, float m_B, float m_A )
			{
				if(m_switch ==0)
					return m_Off;
				else if(m_switch ==1)
					return m_R;
				else if(m_switch ==2)
					return m_G;
				else if(m_switch ==3)
					return m_B;
				else if(m_switch ==4)
					return m_A;
				else
				return float(0);
			}
			

			VertexOutput VertexFunction( VertexInput v  )
			{
				VertexOutput o = (VertexOutput)0;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				float2 temp_output_1848_0_g57705 = (_MainUVs).xy;
				float2 temp_output_1847_0_g57705 = (_MainUVs).zw;
				float2 Offset235_g57784 = temp_output_1847_0_g57705;
				float2 temp_output_41_0_g57784 = ( ( v.texcoord.xy * temp_output_1848_0_g57705 ) + Offset235_g57784 );
				float2 vertexToFrag70_g57784 = temp_output_41_0_g57784;
				o.ase_texcoord8.xy = vertexToFrag70_g57784;
				float temp_output_6_0_g57687 = _DetailUVRotation;
				float temp_output_200_0_g57687 = radians( temp_output_6_0_g57687 );
				float temp_output_13_0_g57687 = cos( temp_output_200_0_g57687 );
				float m_switch80_g57687 = _DetailUVMode;
				float2 m_UV080_g57687 = v.texcoord.xy;
				float2 m_UV180_g57687 = v.texcoord1.xy;
				float2 m_UV280_g57687 = v.texcoord2.xy;
				float2 m_UV380_g57687 = v.ase_texcoord3.xy;
				float2 localfloat2switchUVMode80_g57687 = float2switchUVMode80_g57687( m_switch80_g57687 , m_UV080_g57687 , m_UV180_g57687 , m_UV280_g57687 , m_UV380_g57687 );
				float2 temp_output_9_0_g57687 = float2( 0.5,0.5 );
				float2 break39_g57687 = ( localfloat2switchUVMode80_g57687 - temp_output_9_0_g57687 );
				float temp_output_14_0_g57687 = sin( temp_output_200_0_g57687 );
				float2 appendResult36_g57687 = (float2(( ( temp_output_13_0_g57687 * break39_g57687.x ) + ( temp_output_14_0_g57687 * break39_g57687.y ) ) , ( ( temp_output_13_0_g57687 * break39_g57687.y ) - ( temp_output_14_0_g57687 * break39_g57687.x ) )));
				float2 Offset235_g57687 = (_DetailUVs).zw;
				float2 temp_output_41_0_g57687 = ( ( ( appendResult36_g57687 * ( (_DetailUVs).xy / 1.0 ) ) + temp_output_9_0_g57687 ) + Offset235_g57687 );
				float2 _ConstantAnchor = float2(0.5,0.5);
				float2 vertexToFrag70_g57687 = ( temp_output_41_0_g57687 - ( ( ( (_DetailUVs).xy / 1.0 ) * _ConstantAnchor ) - _ConstantAnchor ) );
				o.ase_texcoord8.zw = vertexToFrag70_g57687;
				float temp_output_6_0_g57689 = _DetailMaskUVRotation;
				float temp_output_200_0_g57689 = radians( temp_output_6_0_g57689 );
				float temp_output_13_0_g57689 = cos( temp_output_200_0_g57689 );
				float DetailUVMode1060_g57633 = _DetailUVMode;
				float m_switch80_g57689 = DetailUVMode1060_g57633;
				float2 m_UV080_g57689 = v.texcoord.xy;
				float2 m_UV180_g57689 = v.texcoord1.xy;
				float2 m_UV280_g57689 = v.texcoord2.xy;
				float2 m_UV380_g57689 = v.ase_texcoord3.xy;
				float2 localfloat2switchUVMode80_g57689 = float2switchUVMode80_g57689( m_switch80_g57689 , m_UV080_g57689 , m_UV180_g57689 , m_UV280_g57689 , m_UV380_g57689 );
				float2 temp_output_9_0_g57689 = float2( 0.5,0.5 );
				float2 break39_g57689 = ( localfloat2switchUVMode80_g57689 - temp_output_9_0_g57689 );
				float temp_output_14_0_g57689 = sin( temp_output_200_0_g57689 );
				float2 appendResult36_g57689 = (float2(( ( temp_output_13_0_g57689 * break39_g57689.x ) + ( temp_output_14_0_g57689 * break39_g57689.y ) ) , ( ( temp_output_13_0_g57689 * break39_g57689.y ) - ( temp_output_14_0_g57689 * break39_g57689.x ) )));
				float2 Offset235_g57689 = (_DetailMaskUVs).zw;
				float2 temp_output_41_0_g57689 = ( ( ( appendResult36_g57689 * ( (_DetailMaskUVs).xy / 1.0 ) ) + temp_output_9_0_g57689 ) + Offset235_g57689 );
				float2 vertexToFrag70_g57689 = ( temp_output_41_0_g57689 - ( ( ( (_DetailMaskUVs).xy / 1.0 ) * _ConstantAnchor ) - _ConstantAnchor ) );
				o.ase_texcoord9.xy = vertexToFrag70_g57689;
				float temp_output_6_0_g57691 = _DetailSecondaryUVRotation;
				float temp_output_200_0_g57691 = radians( temp_output_6_0_g57691 );
				float temp_output_13_0_g57691 = cos( temp_output_200_0_g57691 );
				float m_switch80_g57691 = _DetailSecondaryUVMode;
				float2 m_UV080_g57691 = v.texcoord.xy;
				float2 m_UV180_g57691 = v.texcoord1.xy;
				float2 m_UV280_g57691 = v.texcoord2.xy;
				float2 m_UV380_g57691 = v.ase_texcoord3.xy;
				float2 localfloat2switchUVMode80_g57691 = float2switchUVMode80_g57691( m_switch80_g57691 , m_UV080_g57691 , m_UV180_g57691 , m_UV280_g57691 , m_UV380_g57691 );
				float2 temp_output_9_0_g57691 = float2( 0.5,0.5 );
				float2 break39_g57691 = ( localfloat2switchUVMode80_g57691 - temp_output_9_0_g57691 );
				float temp_output_14_0_g57691 = sin( temp_output_200_0_g57691 );
				float2 appendResult36_g57691 = (float2(( ( temp_output_13_0_g57691 * break39_g57691.x ) + ( temp_output_14_0_g57691 * break39_g57691.y ) ) , ( ( temp_output_13_0_g57691 * break39_g57691.y ) - ( temp_output_14_0_g57691 * break39_g57691.x ) )));
				float2 Offset235_g57691 = (_DetailSecondaryUVs).zw;
				float2 temp_output_41_0_g57691 = ( ( ( appendResult36_g57691 * ( (_DetailSecondaryUVs).xy / 1.0 ) ) + temp_output_9_0_g57691 ) + Offset235_g57691 );
				float2 vertexToFrag70_g57691 = ( temp_output_41_0_g57691 - ( ( ( (_DetailSecondaryUVs).xy / 1.0 ) * _ConstantAnchor ) - _ConstantAnchor ) );
				o.ase_texcoord9.zw = vertexToFrag70_g57691;
				float temp_output_6_0_g57693 = _DetailSecondaryMaskUVRotation;
				float temp_output_200_0_g57693 = radians( temp_output_6_0_g57693 );
				float temp_output_13_0_g57693 = cos( temp_output_200_0_g57693 );
				float DetailSecondaryUVMode1059_g57633 = _DetailSecondaryUVMode;
				float m_switch80_g57693 = DetailSecondaryUVMode1059_g57633;
				float2 m_UV080_g57693 = v.texcoord.xy;
				float2 m_UV180_g57693 = v.texcoord1.xy;
				float2 m_UV280_g57693 = v.texcoord2.xy;
				float2 m_UV380_g57693 = v.ase_texcoord3.xy;
				float2 localfloat2switchUVMode80_g57693 = float2switchUVMode80_g57693( m_switch80_g57693 , m_UV080_g57693 , m_UV180_g57693 , m_UV280_g57693 , m_UV380_g57693 );
				float2 temp_output_9_0_g57693 = float2( 0.5,0.5 );
				float2 break39_g57693 = ( localfloat2switchUVMode80_g57693 - temp_output_9_0_g57693 );
				float temp_output_14_0_g57693 = sin( temp_output_200_0_g57693 );
				float2 appendResult36_g57693 = (float2(( ( temp_output_13_0_g57693 * break39_g57693.x ) + ( temp_output_14_0_g57693 * break39_g57693.y ) ) , ( ( temp_output_13_0_g57693 * break39_g57693.y ) - ( temp_output_14_0_g57693 * break39_g57693.x ) )));
				float2 Offset235_g57693 = (_DetailSecondaryMaskUVs).zw;
				float2 temp_output_41_0_g57693 = ( ( ( appendResult36_g57693 * ( (_DetailSecondaryMaskUVs).xy / 1.0 ) ) + temp_output_9_0_g57693 ) + Offset235_g57693 );
				float2 vertexToFrag70_g57693 = ( temp_output_41_0_g57693 - ( ( ( (_DetailSecondaryMaskUVs).xy / 1.0 ) * _ConstantAnchor ) - _ConstantAnchor ) );
				o.ase_texcoord10.xy = vertexToFrag70_g57693;
				
				o.ase_color = v.ase_color;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord10.zw = 0;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.vertex.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif

				float3 vertexValue = defaultVertexValue;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					v.vertex.xyz = vertexValue;
				#else
					v.vertex.xyz += vertexValue;
				#endif

				v.ase_normal = v.ase_normal;

				float3 positionWS = TransformObjectToWorld( v.vertex.xyz );
				float3 positionVS = TransformWorldToView( positionWS );
				float4 positionCS = TransformWorldToHClip( positionWS );

				VertexNormalInputs normalInput = GetVertexNormalInputs( v.ase_normal, v.ase_tangent );

				o.tSpace0 = float4( normalInput.normalWS, positionWS.x);
				o.tSpace1 = float4( normalInput.tangentWS, positionWS.y);
				o.tSpace2 = float4( normalInput.bitangentWS, positionWS.z);

				#if defined(LIGHTMAP_ON)
					OUTPUT_LIGHTMAP_UV(v.texcoord1, unity_LightmapST, o.lightmapUVOrVertexSH.xy);
				#endif

				#if defined(DYNAMICLIGHTMAP_ON)
					o.dynamicLightmapUV.xy = v.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
				#endif

				#if !defined(LIGHTMAP_ON)
					OUTPUT_SH(normalInput.normalWS.xyz, o.lightmapUVOrVertexSH.xyz);
				#endif

				#if defined(ENABLE_TERRAIN_PERPIXEL_NORMAL)
					o.lightmapUVOrVertexSH.zw = v.texcoord.xy;
					o.lightmapUVOrVertexSH.xy = v.texcoord.xy * unity_LightmapST.xy + unity_LightmapST.zw;
				#endif

				half3 vertexLight = VertexLighting( positionWS, normalInput.normalWS );

				o.fogFactorAndVertexLight = half4(0, vertexLight);

				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
					VertexPositionInputs vertexInput = (VertexPositionInputs)0;
					vertexInput.positionWS = positionWS;
					vertexInput.positionCS = positionCS;
					o.shadowCoord = GetShadowCoord( vertexInput );
				#endif

				o.clipPos = positionCS;
				o.clipPosV = positionCS;
				return o;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float4 vertex : INTERNALTESSPOS;
				float3 ase_normal : NORMAL;
				float4 ase_tangent : TANGENT;
				float4 texcoord : TEXCOORD0;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_color : COLOR;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( VertexInput v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.vertex = v.vertex;
				o.ase_normal = v.ase_normal;
				o.ase_tangent = v.ase_tangent;
				o.texcoord = v.texcoord;
				o.texcoord1 = v.texcoord1;
				o.texcoord2 = v.texcoord2;
				o.texcoord = v.texcoord;
				o.ase_texcoord3 = v.ase_texcoord3;
				o.ase_color = v.ase_color;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
				return patch[id];
			}

			[domain("tri")]
			VertexOutput DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				VertexInput o = (VertexInput) 0;
				o.vertex = patch[0].vertex * bary.x + patch[1].vertex * bary.y + patch[2].vertex * bary.z;
				o.ase_normal = patch[0].ase_normal * bary.x + patch[1].ase_normal * bary.y + patch[2].ase_normal * bary.z;
				o.ase_tangent = patch[0].ase_tangent * bary.x + patch[1].ase_tangent * bary.y + patch[2].ase_tangent * bary.z;
				o.texcoord = patch[0].texcoord * bary.x + patch[1].texcoord * bary.y + patch[2].texcoord * bary.z;
				o.texcoord1 = patch[0].texcoord1 * bary.x + patch[1].texcoord1 * bary.y + patch[2].texcoord1 * bary.z;
				o.texcoord2 = patch[0].texcoord2 * bary.x + patch[1].texcoord2 * bary.y + patch[2].texcoord2 * bary.z;
				o.texcoord = patch[0].texcoord * bary.x + patch[1].texcoord * bary.y + patch[2].texcoord * bary.z;
				o.ase_texcoord3 = patch[0].ase_texcoord3 * bary.x + patch[1].ase_texcoord3 * bary.y + patch[2].ase_texcoord3 * bary.z;
				o.ase_color = patch[0].ase_color * bary.x + patch[1].ase_color * bary.y + patch[2].ase_color * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.vertex.xyz - patch[i].ase_normal * (dot(o.vertex.xyz, patch[i].ase_normal) - dot(patch[i].vertex.xyz, patch[i].ase_normal));
				float phongStrength = _TessPhongStrength;
				o.vertex.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.vertex.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			VertexOutput vert ( VertexInput v )
			{
				return VertexFunction( v );
			}
			#endif

			FragmentOutput frag ( VertexOutput IN
								#ifdef ASE_DEPTH_WRITE_ON
								,out float outputDepth : ASE_SV_DEPTH
								#endif
								 )
			{
				UNITY_SETUP_INSTANCE_ID(IN);
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX(IN);

				#ifdef LOD_FADE_CROSSFADE
					LODDitheringTransition( IN.clipPos.xyz, unity_LODFade.x );
				#endif

				#if defined(ENABLE_TERRAIN_PERPIXEL_NORMAL)
					float2 sampleCoords = (IN.lightmapUVOrVertexSH.zw / _TerrainHeightmapRecipSize.zw + 0.5f) * _TerrainHeightmapRecipSize.xy;
					float3 WorldNormal = TransformObjectToWorldNormal(normalize(SAMPLE_TEXTURE2D(_TerrainNormalmapTexture, sampler_TerrainNormalmapTexture, sampleCoords).rgb * 2 - 1));
					float3 WorldTangent = -cross(GetObjectToWorldMatrix()._13_23_33, WorldNormal);
					float3 WorldBiTangent = cross(WorldNormal, -WorldTangent);
				#else
					float3 WorldNormal = normalize( IN.tSpace0.xyz );
					float3 WorldTangent = IN.tSpace1.xyz;
					float3 WorldBiTangent = IN.tSpace2.xyz;
				#endif

				float3 WorldPosition = float3(IN.tSpace0.w,IN.tSpace1.w,IN.tSpace2.w);
				float3 WorldViewDirection = _WorldSpaceCameraPos.xyz  - WorldPosition;
				float4 ShadowCoords = float4( 0, 0, 0, 0 );

				float4 ClipPos = IN.clipPosV;
				float4 ScreenPos = ComputeScreenPos( IN.clipPosV );

				float2 NormalizedScreenSpaceUV = GetNormalizedScreenSpaceUV(IN.clipPos);

				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
					ShadowCoords = IN.shadowCoord;
				#elif defined(MAIN_LIGHT_CALCULATE_SHADOWS)
					ShadowCoords = TransformWorldToShadowCoord( WorldPosition );
				#else
					ShadowCoords = float4(0, 0, 0, 0);
				#endif

				WorldViewDirection = SafeNormalize( WorldViewDirection );

				float3 temp_output_1819_0_g57705 = (_BaseColor).rgb;
				float2 vertexToFrag70_g57784 = IN.ase_texcoord8.xy;
				float4 tex2DNode1921_g57705 = SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, vertexToFrag70_g57784 );
				float3 OUT_ALBEDO_RGBA1177_g57705 = (tex2DNode1921_g57705).rgb;
				float3 temp_output_12_0_g57819 = OUT_ALBEDO_RGBA1177_g57705;
				float dotResult28_g57819 = dot( float3(0.2126729,0.7151522,0.072175) , temp_output_12_0_g57819 );
				float3 temp_cast_0 = (dotResult28_g57819).xxx;
				float temp_output_21_0_g57819 = ( 1.0 - _BaseColorSaturation );
				float3 lerpResult31_g57819 = lerp( temp_cast_0 , temp_output_12_0_g57819 , temp_output_21_0_g57819);
				float3 temp_output_7_0_g57705 = ( temp_output_1819_0_g57705 * lerpResult31_g57819 * _Brightness );
				float3 temp_output_39_0_g57633 = temp_output_7_0_g57705;
				float localStochasticTiling159_g57666 = ( 0.0 );
				float2 vertexToFrag70_g57687 = IN.ase_texcoord8.zw;
				float2 temp_output_1334_0_g57633 = vertexToFrag70_g57687;
				float2 UV159_g57666 = temp_output_1334_0_g57633;
				float4 TexelSize159_g57666 = _DetailColorMap_TexelSize;
				float4 Offsets159_g57666 = float4( 0,0,0,0 );
				float2 Weights159_g57666 = float2( 0,0 );
				{
				UV159_g57666 = UV159_g57666 * TexelSize159_g57666.zw - 0.5;
				float2 f = frac( UV159_g57666 );
				UV159_g57666 -= f;
				float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				float4 xs = xn * xn * xn;
				float4 ys = yn * yn * yn;
				float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				float4 c = float4( UV159_g57666.x - 0.5, UV159_g57666.x + 1.5, UV159_g57666.y - 0.5, UV159_g57666.y + 1.5 );
				float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				float w0 = s.x / ( s.x + s.y );
				float w1 = s.z / ( s.z + s.w );
				Offsets159_g57666 = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize159_g57666.xyxy;
				Weights159_g57666 = float2( w0, w1 );
				}
				float4 Input_FetchOffsets70_g57667 = Offsets159_g57666;
				float2 Input_FetchWeights143_g57667 = Weights159_g57666;
				float2 break46_g57667 = Input_FetchWeights143_g57667;
				float4 lerpResult20_g57667 = lerp( SAMPLE_TEXTURE2D( _DetailColorMap, sampler_MainTex, (Input_FetchOffsets70_g57667).yw ) , SAMPLE_TEXTURE2D( _DetailColorMap, sampler_MainTex, (Input_FetchOffsets70_g57667).xw ) , break46_g57667.x);
				float4 lerpResult40_g57667 = lerp( SAMPLE_TEXTURE2D( _DetailColorMap, sampler_MainTex, (Input_FetchOffsets70_g57667).yz ) , SAMPLE_TEXTURE2D( _DetailColorMap, sampler_MainTex, (Input_FetchOffsets70_g57667).xz ) , break46_g57667.x);
				float4 lerpResult22_g57667 = lerp( lerpResult20_g57667 , lerpResult40_g57667 , break46_g57667.y);
				float4 Output_Fetch2D44_g57667 = lerpResult22_g57667;
				float3 temp_output_44_0_g57633 = ( (_DetailColor).rgb * (Output_Fetch2D44_g57667).rgb * _DetailBrightness );
				float3 temp_output_12_0_g57695 = temp_output_44_0_g57633;
				float dotResult28_g57695 = dot( float3(0.2126729,0.7151522,0.072175) , temp_output_12_0_g57695 );
				float3 temp_cast_1 = (dotResult28_g57695).xxx;
				float temp_output_21_0_g57695 = ( 1.0 - _DetailSaturation );
				float3 lerpResult31_g57695 = lerp( temp_cast_1 , temp_output_12_0_g57695 , temp_output_21_0_g57695);
				float3 temp_output_1272_0_g57633 = (unity_ColorSpaceDouble).rgb;
				float3 temp_output_1190_0_g57633 = ( lerpResult31_g57695 * temp_output_1272_0_g57633 );
				float3 BaseColor_RGB40_g57633 = temp_output_39_0_g57633;
				float localStochasticTiling159_g57674 = ( 0.0 );
				float2 vertexToFrag70_g57689 = IN.ase_texcoord9.xy;
				float2 temp_output_1339_0_g57633 = vertexToFrag70_g57689;
				float2 UV159_g57674 = temp_output_1339_0_g57633;
				float4 TexelSize159_g57674 = _DetailMaskMap_TexelSize;
				float4 Offsets159_g57674 = float4( 0,0,0,0 );
				float2 Weights159_g57674 = float2( 0,0 );
				{
				UV159_g57674 = UV159_g57674 * TexelSize159_g57674.zw - 0.5;
				float2 f = frac( UV159_g57674 );
				UV159_g57674 -= f;
				float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				float4 xs = xn * xn * xn;
				float4 ys = yn * yn * yn;
				float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				float4 c = float4( UV159_g57674.x - 0.5, UV159_g57674.x + 1.5, UV159_g57674.y - 0.5, UV159_g57674.y + 1.5 );
				float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				float w0 = s.x / ( s.x + s.y );
				float w1 = s.z / ( s.z + s.w );
				Offsets159_g57674 = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize159_g57674.xyxy;
				Weights159_g57674 = float2( w0, w1 );
				}
				float4 Input_FetchOffsets70_g57675 = Offsets159_g57674;
				float2 Input_FetchWeights143_g57675 = Weights159_g57674;
				float2 break46_g57675 = Input_FetchWeights143_g57675;
				float4 lerpResult20_g57675 = lerp( SAMPLE_TEXTURE2D( _DetailMaskMap, sampler_MainTex, (Input_FetchOffsets70_g57675).yw ) , SAMPLE_TEXTURE2D( _DetailMaskMap, sampler_MainTex, (Input_FetchOffsets70_g57675).xw ) , break46_g57675.x);
				float4 lerpResult40_g57675 = lerp( SAMPLE_TEXTURE2D( _DetailMaskMap, sampler_MainTex, (Input_FetchOffsets70_g57675).yz ) , SAMPLE_TEXTURE2D( _DetailMaskMap, sampler_MainTex, (Input_FetchOffsets70_g57675).xz ) , break46_g57675.x);
				float4 lerpResult22_g57675 = lerp( lerpResult20_g57675 , lerpResult40_g57675 , break46_g57675.y);
				float4 Output_Fetch2D44_g57675 = lerpResult22_g57675;
				float4 break50_g57675 = Output_Fetch2D44_g57675;
				float lerpResult997_g57633 = lerp( ( 1.0 - break50_g57675.r ) , break50_g57675.r , _DetailMaskIsInverted);
				float temp_output_15_0_g57677 = ( 1.0 - lerpResult997_g57633 );
				float temp_output_26_0_g57677 = _DetailMaskBlendStrength;
				float temp_output_24_0_g57677 = _DetailMaskBlendHardness;
				float saferPower2_g57677 = abs( max( saturate( (0.0 + (temp_output_15_0_g57677 - ( 1.0 - temp_output_26_0_g57677 )) * (temp_output_24_0_g57677 - 0.0) / (1.0 - ( 1.0 - temp_output_26_0_g57677 ))) ) , 0.0 ) );
				float temp_output_22_0_g57677 = _DetailMaskBlendFalloff;
				float Blend_DetailMask986_g57633 = saturate( pow( saferPower2_g57677 , ( 1.0 - temp_output_22_0_g57677 ) ) );
				float3 lerpResult1194_g57633 = lerp( BaseColor_RGB40_g57633 , temp_output_1190_0_g57633 , Blend_DetailMask986_g57633);
				float temp_output_1162_0_g57633 = ( 1.0 - Blend_DetailMask986_g57633 );
				float3 appendResult1161_g57633 = (float3(temp_output_1162_0_g57633 , temp_output_1162_0_g57633 , temp_output_1162_0_g57633));
				float3 lerpResult1005_g57633 = lerp( temp_output_1190_0_g57633 , ( ( lerpResult1194_g57633 * Blend_DetailMask986_g57633 ) + appendResult1161_g57633 ) , _DetailMaskEnable);
				float3 BaseColor_Detail255_g57633 = lerpResult1005_g57633;
				float BaseColor_R1273_g57633 = temp_output_39_0_g57633.x;
				float BaseColor_DetailR887_g57633 = Output_Fetch2D44_g57667.r;
				float lerpResult1105_g57633 = lerp( BaseColor_R1273_g57633 , BaseColor_DetailR887_g57633 , _DetailBlendSource);
				float m_switch44_g57704 = (float)_DetailBlendVertexColor;
				float m_Off44_g57704 = 1.0;
				float dotResult58_g57704 = dot( IN.ase_color.g , IN.ase_color.g );
				float dotResult61_g57704 = dot( IN.ase_color.b , IN.ase_color.b );
				float m_R44_g57704 = ( dotResult58_g57704 + dotResult61_g57704 );
				float dotResult57_g57704 = dot( IN.ase_color.r , IN.ase_color.r );
				float m_G44_g57704 = ( dotResult57_g57704 + dotResult58_g57704 );
				float m_B44_g57704 = ( dotResult57_g57704 + dotResult61_g57704 );
				float m_A44_g57704 = IN.ase_color.a;
				float localMaskVCSwitch44_g57704 = MaskVCSwitch44_g57704( m_switch44_g57704 , m_Off44_g57704 , m_R44_g57704 , m_G44_g57704 , m_B44_g57704 , m_A44_g57704 );
				float clampResult54_g57704 = clamp( ( ( localMaskVCSwitch44_g57704 * _DetailBlendHeight ) / _DetailBlendSmooth ) , 0.0 , 1.0 );
				float Blend647_g57633 = saturate( ( ( ( ( lerpResult1105_g57633 - 0.5 ) * ( ( 1.0 - _DetailBlendStrength ) - 0.9 ) ) / ( 1.0 - _DetailBlendSmooth ) ) + ( 1.0 - clampResult54_g57704 ) ) );
				float temp_output_1171_0_g57633 = ( 1.0 - Blend647_g57633 );
				float3 appendResult1174_g57633 = (float3(temp_output_1171_0_g57633 , temp_output_1171_0_g57633 , temp_output_1171_0_g57633));
				float3 temp_output_1180_0_g57633 = ( temp_output_39_0_g57633 * ( ( BaseColor_Detail255_g57633 * Blend647_g57633 ) + appendResult1174_g57633 ) );
				float2 appendResult1114_g57633 = (float2(_DetailSecondaryBlendWeightLayer1 , _DetailSecondaryBlendWeightLayer2));
				float localStochasticTiling159_g57657 = ( 0.0 );
				float2 vertexToFrag70_g57691 = IN.ase_texcoord9.zw;
				float2 temp_output_1342_0_g57633 = vertexToFrag70_g57691;
				float2 UV159_g57657 = temp_output_1342_0_g57633;
				float4 TexelSize159_g57657 = _DetailSecondaryColorMap_TexelSize;
				float4 Offsets159_g57657 = float4( 0,0,0,0 );
				float2 Weights159_g57657 = float2( 0,0 );
				{
				UV159_g57657 = UV159_g57657 * TexelSize159_g57657.zw - 0.5;
				float2 f = frac( UV159_g57657 );
				UV159_g57657 -= f;
				float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				float4 xs = xn * xn * xn;
				float4 ys = yn * yn * yn;
				float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				float4 c = float4( UV159_g57657.x - 0.5, UV159_g57657.x + 1.5, UV159_g57657.y - 0.5, UV159_g57657.y + 1.5 );
				float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				float w0 = s.x / ( s.x + s.y );
				float w1 = s.z / ( s.z + s.w );
				Offsets159_g57657 = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize159_g57657.xyxy;
				Weights159_g57657 = float2( w0, w1 );
				}
				float4 Input_FetchOffsets70_g57659 = Offsets159_g57657;
				float2 Input_FetchWeights143_g57659 = Weights159_g57657;
				float2 break46_g57659 = Input_FetchWeights143_g57659;
				float4 lerpResult20_g57659 = lerp( SAMPLE_TEXTURE2D( _DetailSecondaryColorMap, sampler_MainTex, (Input_FetchOffsets70_g57659).yw ) , SAMPLE_TEXTURE2D( _DetailSecondaryColorMap, sampler_MainTex, (Input_FetchOffsets70_g57659).xw ) , break46_g57659.x);
				float4 lerpResult40_g57659 = lerp( SAMPLE_TEXTURE2D( _DetailSecondaryColorMap, sampler_MainTex, (Input_FetchOffsets70_g57659).yz ) , SAMPLE_TEXTURE2D( _DetailSecondaryColorMap, sampler_MainTex, (Input_FetchOffsets70_g57659).xz ) , break46_g57659.x);
				float4 lerpResult22_g57659 = lerp( lerpResult20_g57659 , lerpResult40_g57659 , break46_g57659.y);
				float4 Output_Fetch2D44_g57659 = lerpResult22_g57659;
				float3 temp_output_436_0_g57633 = ( (_DetailSecondaryColor).rgb * (Output_Fetch2D44_g57659).rgb * _DetailSecondaryBrightness );
				float3 temp_output_12_0_g57696 = temp_output_436_0_g57633;
				float dotResult28_g57696 = dot( float3(0.2126729,0.7151522,0.072175) , temp_output_12_0_g57696 );
				float3 temp_cast_3 = (dotResult28_g57696).xxx;
				float temp_output_21_0_g57696 = ( 1.0 - _DetailSecondarySaturation );
				float3 lerpResult31_g57696 = lerp( temp_cast_3 , temp_output_12_0_g57696 , temp_output_21_0_g57696);
				float3 ColorSpaceDouble1261_g57633 = temp_output_1272_0_g57633;
				float3 temp_output_1239_0_g57633 = ( lerpResult31_g57696 * ColorSpaceDouble1261_g57633 );
				float localStochasticTiling159_g57668 = ( 0.0 );
				float2 vertexToFrag70_g57693 = IN.ase_texcoord10.xy;
				float2 temp_output_1347_0_g57633 = vertexToFrag70_g57693;
				float2 UV159_g57668 = temp_output_1347_0_g57633;
				float4 TexelSize159_g57668 = _DetailSecondaryMaskMap_TexelSize;
				float4 Offsets159_g57668 = float4( 0,0,0,0 );
				float2 Weights159_g57668 = float2( 0,0 );
				{
				UV159_g57668 = UV159_g57668 * TexelSize159_g57668.zw - 0.5;
				float2 f = frac( UV159_g57668 );
				UV159_g57668 -= f;
				float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				float4 xs = xn * xn * xn;
				float4 ys = yn * yn * yn;
				float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				float4 c = float4( UV159_g57668.x - 0.5, UV159_g57668.x + 1.5, UV159_g57668.y - 0.5, UV159_g57668.y + 1.5 );
				float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				float w0 = s.x / ( s.x + s.y );
				float w1 = s.z / ( s.z + s.w );
				Offsets159_g57668 = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize159_g57668.xyxy;
				Weights159_g57668 = float2( w0, w1 );
				}
				float4 Input_FetchOffsets70_g57670 = Offsets159_g57668;
				float2 Input_FetchWeights143_g57670 = Weights159_g57668;
				float2 break46_g57670 = Input_FetchWeights143_g57670;
				float4 lerpResult20_g57670 = lerp( SAMPLE_TEXTURE2D( _DetailSecondaryMaskMap, sampler_MainTex, (Input_FetchOffsets70_g57670).yw ) , SAMPLE_TEXTURE2D( _DetailSecondaryMaskMap, sampler_MainTex, (Input_FetchOffsets70_g57670).xw ) , break46_g57670.x);
				float4 lerpResult40_g57670 = lerp( SAMPLE_TEXTURE2D( _DetailSecondaryMaskMap, sampler_MainTex, (Input_FetchOffsets70_g57670).yz ) , SAMPLE_TEXTURE2D( _DetailSecondaryMaskMap, sampler_MainTex, (Input_FetchOffsets70_g57670).xz ) , break46_g57670.x);
				float4 lerpResult22_g57670 = lerp( lerpResult20_g57670 , lerpResult40_g57670 , break46_g57670.y);
				float4 Output_Fetch2D44_g57670 = lerpResult22_g57670;
				float4 break50_g57670 = Output_Fetch2D44_g57670;
				float lerpResult486_g57633 = lerp( ( 1.0 - break50_g57670.r ) , break50_g57670.r , _DetailSecondaryMaskIsInverted);
				float temp_output_15_0_g57671 = ( 1.0 - lerpResult486_g57633 );
				float temp_output_26_0_g57671 = _DetailSecondaryMaskBlendStrength;
				float temp_output_24_0_g57671 = _DetailSecondaryMaskBlendHardness;
				float saferPower2_g57671 = abs( max( saturate( (0.0 + (temp_output_15_0_g57671 - ( 1.0 - temp_output_26_0_g57671 )) * (temp_output_24_0_g57671 - 0.0) / (1.0 - ( 1.0 - temp_output_26_0_g57671 ))) ) , 0.0 ) );
				float temp_output_22_0_g57671 = _DetailSecondaryMaskBlendFalloff;
				float Blend_DetailSecondaryMask755_g57633 = saturate( pow( saferPower2_g57671 , ( 1.0 - temp_output_22_0_g57671 ) ) );
				float3 lerpResult1234_g57633 = lerp( BaseColor_RGB40_g57633 , temp_output_1239_0_g57633 , Blend_DetailSecondaryMask755_g57633);
				float temp_output_1236_0_g57633 = ( 1.0 - Blend_DetailSecondaryMask755_g57633 );
				float3 appendResult1238_g57633 = (float3(temp_output_1236_0_g57633 , temp_output_1236_0_g57633 , temp_output_1236_0_g57633));
				float3 lerpResult1233_g57633 = lerp( temp_output_1239_0_g57633 , ( ( lerpResult1234_g57633 * Blend_DetailSecondaryMask755_g57633 ) + appendResult1238_g57633 ) , _DetailSecondaryMaskEnable);
				float3 BaseColor_DetailSecondary805_g57633 = lerpResult1233_g57633;
				float BaseColor_DetailSecondaryR1102_g57633 = Output_Fetch2D44_g57659.r;
				float lerpResult1103_g57633 = lerp( BaseColor_R1273_g57633 , BaseColor_DetailSecondaryR1102_g57633 , _DetailSecondaryBlendSource);
				float m_switch44_g57703 = (float)_DetailSecondaryBlendVertexColor;
				float m_Off44_g57703 = 1.0;
				float dotResult58_g57703 = dot( IN.ase_color.g , IN.ase_color.g );
				float dotResult61_g57703 = dot( IN.ase_color.b , IN.ase_color.b );
				float m_R44_g57703 = ( dotResult58_g57703 + dotResult61_g57703 );
				float dotResult57_g57703 = dot( IN.ase_color.r , IN.ase_color.r );
				float m_G44_g57703 = ( dotResult57_g57703 + dotResult58_g57703 );
				float m_B44_g57703 = ( dotResult57_g57703 + dotResult61_g57703 );
				float m_A44_g57703 = IN.ase_color.a;
				float localMaskVCSwitch44_g57703 = MaskVCSwitch44_g57703( m_switch44_g57703 , m_Off44_g57703 , m_R44_g57703 , m_G44_g57703 , m_B44_g57703 , m_A44_g57703 );
				float clampResult54_g57703 = clamp( ( ( localMaskVCSwitch44_g57703 * _DetailSecondaryBlendHeight ) / _DetailSecondaryBlendSmooth ) , 0.0 , 1.0 );
				float BlendSecondary786_g57633 = saturate( ( ( ( ( lerpResult1103_g57633 - 0.5 ) * ( ( 1.0 - _DetailSecondaryBlendStrength ) - 0.9 ) ) / ( 1.0 - _DetailSecondaryBlendSmooth ) ) + ( 1.0 - clampResult54_g57703 ) ) );
				float temp_output_1214_0_g57633 = ( 1.0 - BlendSecondary786_g57633 );
				float3 appendResult1216_g57633 = (float3(temp_output_1214_0_g57633 , temp_output_1214_0_g57633 , temp_output_1214_0_g57633));
				float2 weightedBlendVar1117_g57633 = appendResult1114_g57633;
				float3 weightedAvg1117_g57633 = ( ( weightedBlendVar1117_g57633.x*temp_output_1180_0_g57633 + weightedBlendVar1117_g57633.y*( temp_output_39_0_g57633 * ( ( BaseColor_DetailSecondary805_g57633 * BlendSecondary786_g57633 ) + appendResult1216_g57633 ) ) )/( weightedBlendVar1117_g57633.x + weightedBlendVar1117_g57633.y ) );
				float3 lerpResult489_g57633 = lerp( temp_output_1180_0_g57633 , weightedAvg1117_g57633 , _DetailSecondaryEnable);
				float temp_output_634_0_g57633 = ( _DetailEnable + ( ( _CATEGORY_DETAILMAPPING + _SPACE_DETAIL + _CATEGORY_DETAILMAPPINGSECONDARY + _SPACE_DETAILSECONDARY ) * 0.0 ) );
				float3 lerpResult409_g57633 = lerp( temp_output_39_0_g57633 , lerpResult489_g57633 , temp_output_634_0_g57633);
				
				float4 OUT_NORMAL1178_g57705 = SAMPLE_TEXTURE2D( _BumpMap, sampler_BumpMap, vertexToFrag70_g57784 );
				float3 unpack1731_g57705 = UnpackNormalScale( OUT_NORMAL1178_g57705, _NormalStrength );
				unpack1731_g57705.z = lerp( 1, unpack1731_g57705.z, saturate(_NormalStrength) );
				float3 temp_output_38_0_g57633 = unpack1731_g57705;
				float localStochasticTiling159_g57673 = ( 0.0 );
				float2 UV159_g57673 = temp_output_1334_0_g57633;
				float4 TexelSize159_g57673 = _DetailNormalMap_TexelSize;
				float4 Offsets159_g57673 = float4( 0,0,0,0 );
				float2 Weights159_g57673 = float2( 0,0 );
				{
				UV159_g57673 = UV159_g57673 * TexelSize159_g57673.zw - 0.5;
				float2 f = frac( UV159_g57673 );
				UV159_g57673 -= f;
				float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				float4 xs = xn * xn * xn;
				float4 ys = yn * yn * yn;
				float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				float4 c = float4( UV159_g57673.x - 0.5, UV159_g57673.x + 1.5, UV159_g57673.y - 0.5, UV159_g57673.y + 1.5 );
				float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				float w0 = s.x / ( s.x + s.y );
				float w1 = s.z / ( s.z + s.w );
				Offsets159_g57673 = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize159_g57673.xyxy;
				Weights159_g57673 = float2( w0, w1 );
				}
				float4 Input_FetchOffsets70_g57672 = Offsets159_g57673;
				float2 Input_FetchWeights143_g57672 = Weights159_g57673;
				float2 break46_g57672 = Input_FetchWeights143_g57672;
				float4 lerpResult20_g57672 = lerp( SAMPLE_TEXTURE2D( _DetailNormalMap, sampler_BumpMap, (Input_FetchOffsets70_g57672).yw ) , SAMPLE_TEXTURE2D( _DetailNormalMap, sampler_BumpMap, (Input_FetchOffsets70_g57672).xw ) , break46_g57672.x);
				float4 lerpResult40_g57672 = lerp( SAMPLE_TEXTURE2D( _DetailNormalMap, sampler_BumpMap, (Input_FetchOffsets70_g57672).yz ) , SAMPLE_TEXTURE2D( _DetailNormalMap, sampler_BumpMap, (Input_FetchOffsets70_g57672).xz ) , break46_g57672.x);
				float4 lerpResult22_g57672 = lerp( lerpResult20_g57672 , lerpResult40_g57672 , break46_g57672.y);
				float4 Output_Fetch2D44_g57672 = lerpResult22_g57672;
				float3 unpack499_g57633 = UnpackNormalScale( Output_Fetch2D44_g57672, _DetailNormalStrength );
				unpack499_g57633.z = lerp( 1, unpack499_g57633.z, saturate(_DetailNormalStrength) );
				float3 Normal_In880_g57633 = temp_output_38_0_g57633;
				float3 lerpResult1286_g57633 = lerp( Normal_In880_g57633 , unpack499_g57633 , Blend_DetailMask986_g57633);
				float3 lerpResult1011_g57633 = lerp( unpack499_g57633 , lerpResult1286_g57633 , _DetailMaskEnable);
				float3 Normal_Detail199_g57633 = lerpResult1011_g57633;
				float layeredBlendVar1278_g57633 = Blend647_g57633;
				float3 layeredBlend1278_g57633 = ( lerp( temp_output_38_0_g57633,Normal_Detail199_g57633 , layeredBlendVar1278_g57633 ) );
				float localStochasticTiling159_g57660 = ( 0.0 );
				float2 UV159_g57660 = temp_output_1342_0_g57633;
				float4 TexelSize159_g57660 = _DetailSecondaryNormalMap_TexelSize;
				float4 Offsets159_g57660 = float4( 0,0,0,0 );
				float2 Weights159_g57660 = float2( 0,0 );
				{
				UV159_g57660 = UV159_g57660 * TexelSize159_g57660.zw - 0.5;
				float2 f = frac( UV159_g57660 );
				UV159_g57660 -= f;
				float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				float4 xs = xn * xn * xn;
				float4 ys = yn * yn * yn;
				float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				float4 c = float4( UV159_g57660.x - 0.5, UV159_g57660.x + 1.5, UV159_g57660.y - 0.5, UV159_g57660.y + 1.5 );
				float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				float w0 = s.x / ( s.x + s.y );
				float w1 = s.z / ( s.z + s.w );
				Offsets159_g57660 = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize159_g57660.xyxy;
				Weights159_g57660 = float2( w0, w1 );
				}
				float4 Input_FetchOffsets70_g57661 = Offsets159_g57660;
				float2 Input_FetchWeights143_g57661 = Weights159_g57660;
				float2 break46_g57661 = Input_FetchWeights143_g57661;
				float4 lerpResult20_g57661 = lerp( SAMPLE_TEXTURE2D( _DetailSecondaryNormalMap, sampler_BumpMap, (Input_FetchOffsets70_g57661).yw ) , SAMPLE_TEXTURE2D( _DetailSecondaryNormalMap, sampler_BumpMap, (Input_FetchOffsets70_g57661).xw ) , break46_g57661.x);
				float4 lerpResult40_g57661 = lerp( SAMPLE_TEXTURE2D( _DetailSecondaryNormalMap, sampler_BumpMap, (Input_FetchOffsets70_g57661).yz ) , SAMPLE_TEXTURE2D( _DetailSecondaryNormalMap, sampler_BumpMap, (Input_FetchOffsets70_g57661).xz ) , break46_g57661.x);
				float4 lerpResult22_g57661 = lerp( lerpResult20_g57661 , lerpResult40_g57661 , break46_g57661.y);
				float4 Output_Fetch2D44_g57661 = lerpResult22_g57661;
				float3 unpack500_g57633 = UnpackNormalScale( Output_Fetch2D44_g57661, _DetailSecondaryNormalStrength );
				unpack500_g57633.z = lerp( 1, unpack500_g57633.z, saturate(_DetailSecondaryNormalStrength) );
				float3 lerpResult1285_g57633 = lerp( Normal_In880_g57633 , unpack500_g57633 , Blend_DetailSecondaryMask755_g57633);
				float3 lerpResult1241_g57633 = lerp( unpack500_g57633 , lerpResult1285_g57633 , _DetailSecondaryMaskEnable);
				float3 Normal_DetailSecondary806_g57633 = lerpResult1241_g57633;
				float layeredBlendVar1280_g57633 = BlendSecondary786_g57633;
				float3 layeredBlend1280_g57633 = ( lerp( temp_output_38_0_g57633,Normal_DetailSecondary806_g57633 , layeredBlendVar1280_g57633 ) );
				float2 weightedBlendVar1118_g57633 = appendResult1114_g57633;
				float3 weightedAvg1118_g57633 = ( ( weightedBlendVar1118_g57633.x*layeredBlend1278_g57633 + weightedBlendVar1118_g57633.y*layeredBlend1280_g57633 )/( weightedBlendVar1118_g57633.x + weightedBlendVar1118_g57633.y ) );
				float3 lerpResult488_g57633 = lerp( layeredBlend1278_g57633 , weightedAvg1118_g57633 , _DetailSecondaryEnable);
				float3 break817_g57633 = lerpResult488_g57633;
				float3 appendResult820_g57633 = (float3(break817_g57633.x , break817_g57633.y , ( break817_g57633.z + 0.001 )));
				float3 lerpResult410_g57633 = lerp( temp_output_38_0_g57633 , appendResult820_g57633 , temp_output_634_0_g57633);
				
				float3 MASK_B1440_g57705 = (SAMPLE_TEXTURE2D( _MetallicGlossMap, sampler_MetallicGlossMap, vertexToFrag70_g57784 )).rgb;
				
				float3 MASK_G1438_g57705 = (SAMPLE_TEXTURE2D( _SmoothnessMap, sampler_SmoothnessMap, vertexToFrag70_g57784 )).rgb;
				float temp_output_269_0_g57788 = MASK_G1438_g57705.x;
				float lerpResult347_g57788 = lerp( temp_output_269_0_g57788 , ( 1.0 - temp_output_269_0_g57788 ) , _SmoothnessSource);
				float lerpResult362_g57788 = lerp( ( _SmoothnessStrengthRemapMin + ( _SmoothnessStrength.x * 0.0 ) ) , ( _SmoothnessStrengthRemapMax + ( ( _CATEGORY_SMOOTHNESS + _SPACE_SMOOTHNESS ) * 0.0 ) ) , lerpResult347_g57788);
				float2 appendResult368_g57788 = (float2(WorldViewDirection.xy));
				float3 appendResult367_g57788 = (float3(appendResult368_g57788 , ( WorldViewDirection.z / 1.06 )));
				float3 temp_output_263_0_g57788 = unpack1731_g57705;
				float3 normalizeResult310_g57788 = normalize( ( ( WorldTangent * temp_output_263_0_g57788.x ) + ( WorldBiTangent * temp_output_263_0_g57788.y ) + ( WorldNormal * temp_output_263_0_g57788.z ) ) );
				float fresnelNdotV309_g57788 = dot( normalize( normalizeResult310_g57788 ), appendResult367_g57788 );
				float fresnelNode309_g57788 = ( 0.0 + ( 1.0 - _SmoothnessFresnelScale ) * pow( max( 1.0 - fresnelNdotV309_g57788 , 0.0001 ), _SmoothnessFresnelPower ) );
				float lerpResult335_g57788 = lerp( lerpResult362_g57788 , ( lerpResult362_g57788 - fresnelNode309_g57788 ) , _SmoothnessFresnelEnable);
				
				float temp_output_185_0_g57820 = ( 1.0 - ( _OcclusionStrengthAORemapMin + ( _OcclusionStrengthAO.x * 0.0 ) ) );
				float temp_output_186_0_g57820 = ( 1.0 - ( _OcclusionStrengthAORemapMax + ( ( _CATEGORY_OCCLUSION + _SPACE_OCCLUSION ) * 0.0 ) ) );
				float3 MASK_R1439_g57705 = (SAMPLE_TEXTURE2D( _OcclusionMap, sampler_OcclusionMap, vertexToFrag70_g57784 )).rgb;
				float temp_output_49_0_g57820 = MASK_R1439_g57705.x;
				float lerpResult147_g57820 = lerp( ( 1.0 - temp_output_49_0_g57820 ) , temp_output_49_0_g57820 , _OcclusionSourceInverted);
				float lerpResult143_g57820 = lerp( temp_output_185_0_g57820 , temp_output_186_0_g57820 , lerpResult147_g57820);
				float lerpResult75_g57820 = lerp( temp_output_185_0_g57820 , temp_output_186_0_g57820 , IN.ase_color.a);
				float lerpResult73_g57820 = lerp( lerpResult143_g57820 , lerpResult75_g57820 , _OcclusionSourceBaked);
				

				float3 BaseColor = lerpResult409_g57633;
				float3 Normal = lerpResult410_g57633;
				float3 Emission = 0;
				float3 Specular = 0.5;
				float Metallic = ( MASK_B1440_g57705.x * ( _MetallicStrength + ( ( _CATEGORY_METALLIC + _SPACE_METALLIC ) * 0.0 ) ) );
				float Smoothness = saturate( lerpResult335_g57788 );
				float Occlusion = saturate( lerpResult73_g57820 );
				float Alpha = 1;
				float AlphaClipThreshold = 0.5;
				float AlphaClipThresholdShadow = 0.5;
				float3 BakedGI = 0;
				float3 RefractionColor = 1;
				float RefractionIndex = 1;
				float3 Transmission = 1;
				float3 Translucency = 1;

				#ifdef ASE_DEPTH_WRITE_ON
					float DepthValue = IN.clipPos.z;
				#endif

				#ifdef _ALPHATEST_ON
					clip(Alpha - AlphaClipThreshold);
				#endif

				InputData inputData = (InputData)0;
				inputData.positionWS = WorldPosition;
				inputData.positionCS = IN.clipPos;
				inputData.shadowCoord = ShadowCoords;

				#ifdef _NORMALMAP
					#if _NORMAL_DROPOFF_TS
						inputData.normalWS = TransformTangentToWorld(Normal, half3x3( WorldTangent, WorldBiTangent, WorldNormal ));
					#elif _NORMAL_DROPOFF_OS
						inputData.normalWS = TransformObjectToWorldNormal(Normal);
					#elif _NORMAL_DROPOFF_WS
						inputData.normalWS = Normal;
					#endif
				#else
					inputData.normalWS = WorldNormal;
				#endif

				inputData.normalWS = NormalizeNormalPerPixel(inputData.normalWS);
				inputData.viewDirectionWS = SafeNormalize( WorldViewDirection );

				inputData.vertexLighting = IN.fogFactorAndVertexLight.yzw;

				#if defined(ENABLE_TERRAIN_PERPIXEL_NORMAL)
					float3 SH = SampleSH(inputData.normalWS.xyz);
				#else
					float3 SH = IN.lightmapUVOrVertexSH.xyz;
				#endif

				#ifdef ASE_BAKEDGI
					inputData.bakedGI = BakedGI;
				#else
					#if defined(DYNAMICLIGHTMAP_ON)
						inputData.bakedGI = SAMPLE_GI( IN.lightmapUVOrVertexSH.xy, IN.dynamicLightmapUV.xy, SH, inputData.normalWS);
					#else
						inputData.bakedGI = SAMPLE_GI( IN.lightmapUVOrVertexSH.xy, SH, inputData.normalWS );
					#endif
				#endif

				inputData.normalizedScreenSpaceUV = NormalizedScreenSpaceUV;
				inputData.shadowMask = SAMPLE_SHADOWMASK(IN.lightmapUVOrVertexSH.xy);

				#if defined(DEBUG_DISPLAY)
					#if defined(DYNAMICLIGHTMAP_ON)
						inputData.dynamicLightmapUV = IN.dynamicLightmapUV.xy;
						#endif
					#if defined(LIGHTMAP_ON)
						inputData.staticLightmapUV = IN.lightmapUVOrVertexSH.xy;
					#else
						inputData.vertexSH = SH;
					#endif
				#endif

				#ifdef _DBUFFER
					ApplyDecal(IN.clipPos,
						BaseColor,
						Specular,
						inputData.normalWS,
						Metallic,
						Occlusion,
						Smoothness);
				#endif

				BRDFData brdfData;
				InitializeBRDFData
				(BaseColor, Metallic, Specular, Smoothness, Alpha, brdfData);

				Light mainLight = GetMainLight(inputData.shadowCoord, inputData.positionWS, inputData.shadowMask);
				half4 color;
				MixRealtimeAndBakedGI(mainLight, inputData.normalWS, inputData.bakedGI, inputData.shadowMask);
				color.rgb = GlobalIllumination(brdfData, inputData.bakedGI, Occlusion, inputData.positionWS, inputData.normalWS, inputData.viewDirectionWS);
				color.a = Alpha;

				#ifdef ASE_FINAL_COLOR_ALPHA_MULTIPLY
					color.rgb *= color.a;
				#endif

				#ifdef ASE_DEPTH_WRITE_ON
					outputDepth = DepthValue;
				#endif

				return BRDFDataToGbuffer(brdfData, inputData, Smoothness, Emission + color.rgb, Occlusion);
			}

			ENDHLSL
		}

		
		Pass
		{
			
			Name "SceneSelectionPass"
			Tags { "LightMode"="SceneSelectionPass" }

			Cull Off

			HLSLPROGRAM

			#define _NORMAL_DROPOFF_TS 1
			#define ASE_FOG 1
			#define _NORMALMAP 1
			#define ASE_SRP_VERSION 120112
			#define ASE_USING_SAMPLING_MACROS 1


			#pragma vertex vert
			#pragma fragment frag

			#define SCENESELECTIONPASS 1

			#define ATTRIBUTES_NEED_NORMAL
			#define ATTRIBUTES_NEED_TANGENT
			#define SHADERPASS SHADERPASS_DEPTHONLY

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Input.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"

			

			struct VertexInput
			{
				float4 vertex : POSITION;
				float3 ase_normal : NORMAL;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct VertexOutput
			{
				float4 clipPos : SV_POSITION;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _DetailSecondaryMaskMap_TexelSize;
			float4 _DetailNormalMap_TexelSize;
			half4 _DetailSecondaryColor;
			half4 _SmoothnessStrength;
			float4 _DetailMaskMap_TexelSize;
			float4 _DetailMaskUVs;
			float4 _DetailSecondaryUVs;
			float4 _DetailSecondaryColorMap_TexelSize;
			float4 _DetailUVs;
			float4 _DetailColorMap_TexelSize;
			half4 _OcclusionStrengthAO;
			half4 _DetailColor;
			half4 _BaseColor;
			float4 _MainUVs;
			float4 _DetailSecondaryNormalMap_TexelSize;
			float4 _DetailSecondaryMaskUVs;
			half _DetailNormalStrength;
			float _SPACE_DETAIL;
			float _DetailSecondaryEnable;
			float _CATEGORY_DETAILMAPPING;
			float _CATEGORY_DETAILMAPPINGSECONDARY;
			half _DetailSecondaryBlendHeight;
			int _DetailSecondaryBlendVertexColor;
			float _SPACE_DETAILSECONDARY;
			half _NormalStrength;
			half _DetailSecondaryBlendSmooth;
			half _DetailEnable;
			float _SPACE_METALLIC;
			float _MetallicStrength;
			float _SPACE_OCCLUSION;
			float _CATEGORY_OCCLUSION;
			half _OcclusionStrengthAORemapMax;
			half _OcclusionStrengthAORemapMin;
			half _SmoothnessFresnelEnable;
			half _SmoothnessFresnelPower;
			half _DetailSecondaryNormalStrength;
			half _SmoothnessFresnelScale;
			float _SPACE_SMOOTHNESS;
			float _CATEGORY_SMOOTHNESS;
			half _SmoothnessStrengthRemapMax;
			half _SmoothnessStrengthRemapMin;
			half _DetailSecondaryBlendStrength;
			float _CATEGORY_METALLIC;
			half _SmoothnessSource;
			half _DetailSecondaryBlendSource;
			int _Cull;
			half _DetailSecondaryMaskBlendFalloff;
			half _DetailMaskBlendHardness;
			half _DetailMaskBlendStrength;
			half _DetailMaskIsInverted;
			half _DetailMaskUVRotation;
			float _DetailSaturation;
			half _DetailBrightness;
			half _DetailMaskBlendFalloff;
			half _DetailUVMode;
			half _Brightness;
			float _BaseColorSaturation;
			float _CATEGORY_SURFACEINPUTS;
			float _SPACE_SURFACEINPUTS;
			float _CATEGORY_SURFACEOPTIONS;
			float _SPACE_SURFACEOPTIONS;
			half _DetailUVRotation;
			half _DetailSecondaryMaskEnable;
			half _DetailMaskEnable;
			half _DetailBlendStrength;
			half _DetailSecondaryMaskBlendHardness;
			half _DetailSecondaryMaskBlendStrength;
			half _DetailSecondaryMaskIsInverted;
			half _OcclusionSourceInverted;
			half _DetailSecondaryMaskUVRotation;
			float _DetailSecondarySaturation;
			half _DetailBlendSource;
			half _DetailSecondaryBrightness;
			half _DetailSecondaryUVRotation;
			float _DetailSecondaryBlendWeightLayer2;
			float _DetailSecondaryBlendWeightLayer1;
			half _DetailBlendHeight;
			int _DetailBlendVertexColor;
			half _DetailBlendSmooth;
			half _DetailSecondaryUVMode;
			half _OcclusionSourceBaked;
			#ifdef ASE_TRANSMISSION
				float _TransmissionShadow;
			#endif
			#ifdef ASE_TRANSLUCENCY
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef ASE_TESSELLATION
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END

			// Property used by ScenePickingPass
			#ifdef SCENEPICKINGPASS
				float4 _SelectionID;
			#endif

			// Properties used by SceneSelectionPass
			#ifdef SCENESELECTIONPASS
				int _ObjectId;
				int _PassValue;
			#endif

			

			//#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/Varyings.hlsl"
			//#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/SelectionPickingPass.hlsl"

			//#ifdef HAVE_VFX_MODIFICATION
			//#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/VisualEffectVertex.hlsl"
			//#endif

			
			struct SurfaceDescription
			{
				float Alpha;
				float AlphaClipThreshold;
			};

			VertexOutput VertexFunction(VertexInput v  )
			{
				VertexOutput o;
				ZERO_INITIALIZE(VertexOutput, o);

				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.vertex.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif

				float3 vertexValue = defaultVertexValue;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					v.vertex.xyz = vertexValue;
				#else
					v.vertex.xyz += vertexValue;
				#endif

				v.ase_normal = v.ase_normal;

				float3 positionWS = TransformObjectToWorld( v.vertex.xyz );

				o.clipPos = TransformWorldToHClip(positionWS);

				return o;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float4 vertex : INTERNALTESSPOS;
				float3 ase_normal : NORMAL;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( VertexInput v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.vertex = v.vertex;
				o.ase_normal = v.ase_normal;
				
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
				return patch[id];
			}

			[domain("tri")]
			VertexOutput DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				VertexInput o = (VertexInput) 0;
				o.vertex = patch[0].vertex * bary.x + patch[1].vertex * bary.y + patch[2].vertex * bary.z;
				o.ase_normal = patch[0].ase_normal * bary.x + patch[1].ase_normal * bary.y + patch[2].ase_normal * bary.z;
				
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.vertex.xyz - patch[i].ase_normal * (dot(o.vertex.xyz, patch[i].ase_normal) - dot(patch[i].vertex.xyz, patch[i].ase_normal));
				float phongStrength = _TessPhongStrength;
				o.vertex.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.vertex.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			VertexOutput vert ( VertexInput v )
			{
				return VertexFunction( v );
			}
			#endif

			half4 frag(VertexOutput IN ) : SV_TARGET
			{
				SurfaceDescription surfaceDescription = (SurfaceDescription)0;

				

				surfaceDescription.Alpha = 1;
				surfaceDescription.AlphaClipThreshold = 0.5;

				#if _ALPHATEST_ON
					float alphaClipThreshold = 0.01f;
					#if ALPHA_CLIP_THRESHOLD
						alphaClipThreshold = surfaceDescription.AlphaClipThreshold;
					#endif
					clip(surfaceDescription.Alpha - alphaClipThreshold);
				#endif

				half4 outColor = 0;

				#ifdef SCENESELECTIONPASS
					outColor = half4(_ObjectId, _PassValue, 1.0, 1.0);
				#elif defined(SCENEPICKINGPASS)
					outColor = _SelectionID;
				#endif

				return outColor;
			}

			ENDHLSL
		}

		
		Pass
		{
			
			Name "ScenePickingPass"
			Tags { "LightMode"="Picking" }

			HLSLPROGRAM

			#define _NORMAL_DROPOFF_TS 1
			#define ASE_FOG 1
			#define _NORMALMAP 1
			#define ASE_SRP_VERSION 120112
			#define ASE_USING_SAMPLING_MACROS 1


			#pragma vertex vert
			#pragma fragment frag

		    #define SCENEPICKINGPASS 1

			#define ATTRIBUTES_NEED_NORMAL
			#define ATTRIBUTES_NEED_TANGENT
			#define SHADERPASS SHADERPASS_DEPTHONLY

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Input.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"

			

			struct VertexInput
			{
				float4 vertex : POSITION;
				float3 ase_normal : NORMAL;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct VertexOutput
			{
				float4 clipPos : SV_POSITION;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _DetailSecondaryMaskMap_TexelSize;
			float4 _DetailNormalMap_TexelSize;
			half4 _DetailSecondaryColor;
			half4 _SmoothnessStrength;
			float4 _DetailMaskMap_TexelSize;
			float4 _DetailMaskUVs;
			float4 _DetailSecondaryUVs;
			float4 _DetailSecondaryColorMap_TexelSize;
			float4 _DetailUVs;
			float4 _DetailColorMap_TexelSize;
			half4 _OcclusionStrengthAO;
			half4 _DetailColor;
			half4 _BaseColor;
			float4 _MainUVs;
			float4 _DetailSecondaryNormalMap_TexelSize;
			float4 _DetailSecondaryMaskUVs;
			half _DetailNormalStrength;
			float _SPACE_DETAIL;
			float _DetailSecondaryEnable;
			float _CATEGORY_DETAILMAPPING;
			float _CATEGORY_DETAILMAPPINGSECONDARY;
			half _DetailSecondaryBlendHeight;
			int _DetailSecondaryBlendVertexColor;
			float _SPACE_DETAILSECONDARY;
			half _NormalStrength;
			half _DetailSecondaryBlendSmooth;
			half _DetailEnable;
			float _SPACE_METALLIC;
			float _MetallicStrength;
			float _SPACE_OCCLUSION;
			float _CATEGORY_OCCLUSION;
			half _OcclusionStrengthAORemapMax;
			half _OcclusionStrengthAORemapMin;
			half _SmoothnessFresnelEnable;
			half _SmoothnessFresnelPower;
			half _DetailSecondaryNormalStrength;
			half _SmoothnessFresnelScale;
			float _SPACE_SMOOTHNESS;
			float _CATEGORY_SMOOTHNESS;
			half _SmoothnessStrengthRemapMax;
			half _SmoothnessStrengthRemapMin;
			half _DetailSecondaryBlendStrength;
			float _CATEGORY_METALLIC;
			half _SmoothnessSource;
			half _DetailSecondaryBlendSource;
			int _Cull;
			half _DetailSecondaryMaskBlendFalloff;
			half _DetailMaskBlendHardness;
			half _DetailMaskBlendStrength;
			half _DetailMaskIsInverted;
			half _DetailMaskUVRotation;
			float _DetailSaturation;
			half _DetailBrightness;
			half _DetailMaskBlendFalloff;
			half _DetailUVMode;
			half _Brightness;
			float _BaseColorSaturation;
			float _CATEGORY_SURFACEINPUTS;
			float _SPACE_SURFACEINPUTS;
			float _CATEGORY_SURFACEOPTIONS;
			float _SPACE_SURFACEOPTIONS;
			half _DetailUVRotation;
			half _DetailSecondaryMaskEnable;
			half _DetailMaskEnable;
			half _DetailBlendStrength;
			half _DetailSecondaryMaskBlendHardness;
			half _DetailSecondaryMaskBlendStrength;
			half _DetailSecondaryMaskIsInverted;
			half _OcclusionSourceInverted;
			half _DetailSecondaryMaskUVRotation;
			float _DetailSecondarySaturation;
			half _DetailBlendSource;
			half _DetailSecondaryBrightness;
			half _DetailSecondaryUVRotation;
			float _DetailSecondaryBlendWeightLayer2;
			float _DetailSecondaryBlendWeightLayer1;
			half _DetailBlendHeight;
			int _DetailBlendVertexColor;
			half _DetailBlendSmooth;
			half _DetailSecondaryUVMode;
			half _OcclusionSourceBaked;
			#ifdef ASE_TRANSMISSION
				float _TransmissionShadow;
			#endif
			#ifdef ASE_TRANSLUCENCY
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef ASE_TESSELLATION
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END

			// Property used by ScenePickingPass
			#ifdef SCENEPICKINGPASS
				float4 _SelectionID;
			#endif

			// Properties used by SceneSelectionPass
			#ifdef SCENESELECTIONPASS
				int _ObjectId;
				int _PassValue;
			#endif

			

			//#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/Varyings.hlsl"
			//#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/SelectionPickingPass.hlsl"

			//#ifdef HAVE_VFX_MODIFICATION
			//#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/VisualEffectVertex.hlsl"
			//#endif

			
			struct SurfaceDescription
			{
				float Alpha;
				float AlphaClipThreshold;
			};

			VertexOutput VertexFunction(VertexInput v  )
			{
				VertexOutput o;
				ZERO_INITIALIZE(VertexOutput, o);

				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.vertex.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif

				float3 vertexValue = defaultVertexValue;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					v.vertex.xyz = vertexValue;
				#else
					v.vertex.xyz += vertexValue;
				#endif

				v.ase_normal = v.ase_normal;

				float3 positionWS = TransformObjectToWorld( v.vertex.xyz );
				o.clipPos = TransformWorldToHClip(positionWS);

				return o;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float4 vertex : INTERNALTESSPOS;
				float3 ase_normal : NORMAL;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( VertexInput v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.vertex = v.vertex;
				o.ase_normal = v.ase_normal;
				
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
				return patch[id];
			}

			[domain("tri")]
			VertexOutput DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				VertexInput o = (VertexInput) 0;
				o.vertex = patch[0].vertex * bary.x + patch[1].vertex * bary.y + patch[2].vertex * bary.z;
				o.ase_normal = patch[0].ase_normal * bary.x + patch[1].ase_normal * bary.y + patch[2].ase_normal * bary.z;
				
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.vertex.xyz - patch[i].ase_normal * (dot(o.vertex.xyz, patch[i].ase_normal) - dot(patch[i].vertex.xyz, patch[i].ase_normal));
				float phongStrength = _TessPhongStrength;
				o.vertex.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.vertex.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			VertexOutput vert ( VertexInput v )
			{
				return VertexFunction( v );
			}
			#endif

			half4 frag(VertexOutput IN ) : SV_TARGET
			{
				SurfaceDescription surfaceDescription = (SurfaceDescription)0;

				

				surfaceDescription.Alpha = 1;
				surfaceDescription.AlphaClipThreshold = 0.5;

				#if _ALPHATEST_ON
					float alphaClipThreshold = 0.01f;
					#if ALPHA_CLIP_THRESHOLD
						alphaClipThreshold = surfaceDescription.AlphaClipThreshold;
					#endif
						clip(surfaceDescription.Alpha - alphaClipThreshold);
				#endif

				half4 outColor = 0;

				#ifdef SCENESELECTIONPASS
					outColor = half4(_ObjectId, _PassValue, 1.0, 1.0);
				#elif defined(SCENEPICKINGPASS)
					outColor = _SelectionID;
				#endif

				return outColor;
			}

			ENDHLSL
		}
		
	}
	
	CustomEditor "ALP8310_DE_ShaderGUI"
	FallBack "Hidden/Shader Graph/FallbackError"
	
	Fallback Off
}
/*ASEBEGIN
Version=19108
Node;AmplifyShaderEditor.IntNode;409;1377.362,-756.8927;Inherit;False;Property;_Cull;Render Face;1;1;[Enum];Create;False;0;0;1;Front,2,Back,1,Both,0;True;0;False;2;2;False;0;1;INT;0
Node;AmplifyShaderEditor.RangedFloatNode;419;1373.433,-829.788;Inherit;False;Property;_SPACE_SURFACEOPTIONS;SPACE_SURFACEOPTIONS;2;0;Create;True;0;0;0;True;1;DE_DrawerSpace(10);False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;420;1371.959,-903.998;Inherit;False;Property;_CATEGORY_SURFACEOPTIONS;CATEGORY_SURFACEOPTIONS;0;0;Create;True;0;0;0;True;1;DE_DrawerCategory(SURFACE OPTIONS,true,_Cull,0,0);False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;387;1080.067,-726.7551;Inherit;False;DESF Module Detail;107;;57633;49c077198be2bdb409ab6ad879c0ca28;17,666,1,1023,1,1260,1,665,1,663,1,662,1,1006,1,1012,1,650,1,1067,1,726,1,727,1,874,1,602,1,945,1,1075,1,1316,0;4;39;FLOAT3;0,0,0;False;38;FLOAT3;0,0,1;False;456;SAMPLERSTATE;0;False;464;SAMPLERSTATE;0;False;2;FLOAT3;73;FLOAT3;72
Node;AmplifyShaderEditor.FunctionNode;390;682.4534,-660.196;Inherit;False;DESF Core Surface;3;;57705;c3df20d62907cd04086a1eacc41e29d1;10,183,2,1433,1,1432,1,1434,1,1775,0,1284,0,1943,1,1318,0,249,0,1938,0;1;309;FLOAT3;0,0,0;False;12;FLOAT3;42;FLOAT3;39;FLOAT;0;FLOAT3;1817;FLOAT;41;FLOAT;43;FLOAT;55;FLOAT;1945;FLOAT3;313;SAMPLERSTATE;1659;SAMPLERSTATE;1670;SAMPLERSTATE;1666
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;423;1374.904,-680.6909;Float;False;False;-1;2;DE_ShaderGUI;0;1;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;ExtraPrePass;0;0;ExtraPrePass;5;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;False;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;4;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;UniversalMaterialType=Lit;True;3;True;12;all;0;False;True;1;1;False;;0;False;;0;1;False;;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;0;False;False;0;Hidden/DE/Utility/Fallback;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;424;1374.904,-680.6909;Float;False;True;-1;2;ALP8310_DE_ShaderGUI;0;12;ALP/Surface Detail;94348b07e5e8bab40bd6c8a1e3df54cd;True;Forward;0;1;Forward;20;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;True;True;0;True;_Cull;False;False;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;4;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;UniversalMaterialType=Lit;True;3;True;12;all;0;False;True;1;1;False;;0;False;;1;1;False;;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;1;LightMode=UniversalForward;False;False;0;;0;0;Standard;41;Workflow;1;0;Surface;0;0;  Refraction Model;0;0;  Blend;0;0;Two Sided;1;0;Fragment Normal Space,InvertActionOnDeselection;0;0;Forward Only;0;0;Transmission;0;0;  Transmission Shadow;0.5,True,_ASETransmissionShadow;0;Translucency;0;0;  Translucency Strength;1,True,_ASETranslucencyStrength;0;  Normal Distortion;0.5,True,_ASETranslucencyNormalDistortion;0;  Scattering;2,True,_ASETranslucencyScattering;0;  Direct;0.9,True,_ASETranslucencyScattering;0;  Ambient;0.1,True,_ASETranslucencyAmbient;0;  Shadow;0.5,True,_ASETranslucencyShadow;0;Cast Shadows;1;0;  Use Shadow Threshold;0;0;Receive Shadows;1;0;GPU Instancing;1;0;LOD CrossFade;1;0;Built-in Fog;1;0;_FinalColorxAlpha;0;0;Meta Pass;1;0;Override Baked GI;0;0;Extra Pre Pass;0;0;DOTS Instancing;0;0;Tessellation;0;0;  Phong;0;0;  Strength;0.5,True,_TessellationPhong;0;  Type;0;0;  Tess;16,True,_TessellationStrength;0;  Min;10,True,_TessellationDistanceMin;0;  Max;25,True,_TessellationDistanceMax;0;  Edge Length;16,False,;0;  Max Displacement;25,False,;0;Write Depth;0;0;  Early Z;0;0;Vertex Position,InvertActionOnDeselection;1;0;Debug Display;0;0;Clear Coat;0;0;0;10;False;True;True;True;True;True;True;True;True;True;False;;True;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;425;1374.904,-680.6909;Float;False;False;-1;2;DE_ShaderGUI;0;1;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;ShadowCaster;0;2;ShadowCaster;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;False;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;4;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;UniversalMaterialType=Lit;True;3;True;12;all;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;False;False;True;False;False;False;False;0;False;;False;False;False;False;False;False;False;False;False;True;1;False;;True;3;False;;False;True;1;LightMode=ShadowCaster;False;False;0;Hidden/DE/Utility/Fallback;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;426;1374.904,-680.6909;Float;False;False;-1;2;DE_ShaderGUI;0;1;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;DepthOnly;0;3;DepthOnly;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;False;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;4;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;UniversalMaterialType=Lit;True;3;True;12;all;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;False;False;True;False;False;False;False;0;False;;False;False;False;False;False;False;False;False;False;True;1;False;;False;False;True;1;LightMode=DepthOnly;False;False;0;Hidden/DE/Utility/Fallback;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;427;1374.904,-680.6909;Float;False;False;-1;2;DE_ShaderGUI;0;1;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;Meta;0;4;Meta;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;False;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;4;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;UniversalMaterialType=Lit;True;3;True;12;all;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;LightMode=Meta;False;False;0;Hidden/DE/Utility/Fallback;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;428;1374.904,-680.6909;Float;False;False;-1;2;DE_ShaderGUI;0;1;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;Universal2D;0;5;Universal2D;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;False;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;4;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;UniversalMaterialType=Lit;True;3;True;12;all;0;False;True;1;1;False;;0;False;;1;1;False;;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;False;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;1;LightMode=Universal2D;False;False;0;Hidden/DE/Utility/Fallback;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;429;1374.904,-680.6909;Float;False;False;-1;2;DE_ShaderGUI;0;1;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;DepthNormals;0;6;DepthNormals;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;False;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;4;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;UniversalMaterialType=Lit;True;3;True;12;all;0;False;True;1;1;False;;0;False;;0;1;False;;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;False;;True;3;False;;False;True;1;LightMode=DepthNormals;False;False;0;Hidden/DE/Utility/Fallback;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;430;1374.904,-680.6909;Float;False;False;-1;2;DE_ShaderGUI;0;1;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;GBuffer;0;7;GBuffer;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;False;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;4;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;UniversalMaterialType=Lit;True;3;True;12;all;0;False;True;1;1;False;;0;False;;1;1;False;;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;1;LightMode=UniversalGBuffer;False;False;0;Hidden/DE/Utility/Fallback;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;431;1374.904,-680.6909;Float;False;False;-1;2;DE_ShaderGUI;0;1;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;SceneSelectionPass;0;8;SceneSelectionPass;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;False;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;4;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;UniversalMaterialType=Lit;True;3;True;12;all;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;LightMode=SceneSelectionPass;False;False;0;Hidden/DE/Utility/Fallback;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;432;1374.904,-680.6909;Float;False;False;-1;2;DE_ShaderGUI;0;1;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;ScenePickingPass;0;9;ScenePickingPass;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;False;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;4;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;UniversalMaterialType=Lit;True;3;True;12;all;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;LightMode=Picking;False;False;0;Hidden/DE/Utility/Fallback;0;0;Standard;0;False;0
WireConnection;387;39;390;42
WireConnection;387;38;390;39
WireConnection;387;456;390;1659
WireConnection;387;464;390;1670
WireConnection;424;0;387;73
WireConnection;424;1;387;72
WireConnection;424;3;390;0
WireConnection;424;4;390;41
WireConnection;424;5;390;43
ASEEND*/
//CHKSM=40DDB30067D60782118D6C75300B05E3E445FB79