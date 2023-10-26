// Made with Amplify Shader Editor v1.9.1.8
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "ALP/Billboard Cross Wind"
{
	Properties
	{
		[HideInInspector] _EmissionColor("Emission Color", Color) = (1,1,1,1)
		[HideInInspector] _AlphaCutoff("Alpha Cutoff ", Range(0, 1)) = 0.5
		[DE_DrawerCategory(SURFACE OPTIONS,true,_Cull,0,0)]_CATEGORY_SURFACEOPTIONS("CATEGORY_SURFACEOPTIONS", Float) = 1
		[Enum(Front,2,Back,1,Both,0)]_Cull("Render Face", Int) = 0
		[DE_DrawerSpace(10)]_SPACE_SURFACEOPTIONS("SPACE_SURFACEOPTIONS", Float) = 0
		[DE_DrawerCategory(ALPHA CLIPPING,true,_GlancingClipMode,0,0)]_CATEGORY_ALPHACLIPPING("CATEGORY_ALPHACLIPPING", Float) = 0
		[DE_DrawerToggleLeft]_GlancingClipMode("Enable Clip Glancing Angle", Float) = 0
		[DE_DrawerSliderSimple(_AlphaRemapMin, _AlphaRemapMax,0, 1)]_AlphaRemap("Alpha Remapping", Vector) = (0,1,0,0)
		[HideInInspector]_AlphaRemapMin("AlphaRemapMin", Float) = 0
		[HideInInspector]_AlphaRemapMax("AlphaRemapMax", Float) = 1
		_AlphaCutoffBias("Alpha Cutoff Bias", Range( 0 , 1)) = 0.5
		[DE_DrawerSpace(10)]_SPACE_ALPHACLIP("SPACE_ALPHACLIP", Float) = 0
		[DE_DrawerCategory(SHADOW,true,_AlphaCutoffBiasShadow,0,0)]_CATEGORY_SHADOW("CATEGORY_SHADOW", Float) = 0
		_AlphaCutoffBiasShadow("Alpha Cutoff Bias Shadow", Range( 0.01 , 1)) = 0.5
		[DE_DrawerSpace(10)]_SPACE_SHADOW("SPACE_SHADOW", Float) = 0
		[DE_DrawerCategory(SURFACE INPUTS,true,_MainTex,0,0)]_CATEGORY_SURFACEINPUTS("CATEGORY_SURFACE INPUTS", Float) = 1
		_BaseColor("Base Color", Color) = (1,1,1,0)
		_Brightness("Brightness", Range( 0 , 2)) = 1
		[DE_DrawerTextureSingleLine]_MainTex("Base Map", 2D) = "white" {}
		[DE_DrawerTilingOffset]_MainUVs("Main UVs", Vector) = (1,1,0,0)
		[Normal][DE_DrawerTextureSingleLine]_BumpMap("Normal Map", 2D) = "bump" {}
		[DE_DrawerFloatEnum(Flip _Mirror _None)]_DoubleSidedNormalMode("Normal Mode", Float) = 0
		_NormalStrength("Normal Strength", Float) = 1
		[DE_DrawerSpace(10)]_SPACE_SURFACEINPUTS("SPACE_SURFACE INPUTS", Float) = 0
		[DE_DrawerCategory(METALLIC,true,_MetallicStrength,0,0)]_CATEGORY_METALLIC("CATEGORY_METALLIC", Float) = 0
		_MetallicStrength("Metallic Strength", Range( 0 , 1)) = 0
		[DE_DrawerSpace(10)]_SPACE_METALLIC("SPACE_METALLIC", Float) = 0
		[DE_DrawerCategory(OCCLUSION,true,_OcclusionStrengthAORemapMin,0,0)]_CATEGORY_OCCLUSION("CATEGORY_OCCLUSION", Float) = 0
		[DE_DrawerFloatEnum(Map _Baked)]_OcclusionSourceBaked("Occlusion Source", Float) = 0
		[DE_DrawerSliderSimple(_OcclusionStrengthAORemapMin, _OcclusionStrengthAORemapMax,0, 1)]_OcclusionStrengthAO("Occlusion Strength", Vector) = (0,0,0,0)
		[HideInInspector]_OcclusionStrengthAORemapMin("OcclusionStrengthAORemapMin", Float) = 0
		[HideInInspector]_OcclusionStrengthAORemapMax("Occlusion StrengthAORemapMax", Float) = 0
		[DE_DrawerSpace(10)]_SPACE_OCCLUSION("SPACE_OCCLUSION", Float) = 0
		[DE_DrawerCategory(SMOOTHNESS,true,_SmoothnessStrengthRemapMin,0,0)]_CATEGORY_SMOOTHNESS("CATEGORY_SMOOTHNESS", Float) = 0
		[DE_DrawerSliderSimple(_SmoothnessStrengthRemapMin, _SmoothnessStrengthRemapMax,0, 1)]_SmoothnessStrength("Smoothness Strength", Vector) = (0,0,0,0)
		[HideInInspector]_SmoothnessStrengthRemapMin("Smoothness StrengthRemapMin", Float) = 0
		[HideInInspector]_SmoothnessStrengthRemapMax("Smoothness StrengthRemapMax", Float) = 0
		[DE_DrawerToggleNoKeyword]_SmoothnessFresnelEnable("Enable Fresnel", Float) = 0
		_SmoothnessFresnelScale("Fresnel Scale", Range( 0 , 3)) = 1.1
		_SmoothnessFresnelPower("Fresnel Power", Range( 0 , 20)) = 10
		[DE_DrawerSpace(10)]_SPACE_SMOOTHNESS("SPACE_SMOOTHNESS", Float) = 0
		[DE_DrawerCategory(WIND,true,_WindEnable,0,0)]_CATEGORY_WIND("CATEGORY_WIND", Float) = 0
		[DE_DrawerToggleLeft]_WindEnable("ENABLE WIND", Float) = 0
		[DE_DrawerFloatEnum(Global _Local)]_WindEnableMode("Enable Wind Mode", Float) = 0
		[Header(WIND GLOBAL)]_WindGlobalIntensity("Wind Intensity", Float) = 1
		[Header(WIND LOCAL)]_WindLocalIntensity("Local Wind Intensity", Float) = 1
		_WindLocalPulseFrequency("Local Wind Pulse Frequency", Float) = 0.1
		_WindLocalRandomOffset("Local Random Offset", Float) = 0.2
		_WindLocalDirection("Local Wind Direction", Range( 0 , 360)) = 0
		[ASEEnd][DE_DrawerSpace(10)]_SPACE_WIND("SPACE_WIND", Float) = 0


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
			#define _ALPHATEST_SHADOW_ON 1
			#define _ALPHATEST_ON 1
			#define _NORMALMAP 1
			#define ASE_SRP_VERSION 120112
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

			#define ASE_NEEDS_VERT_POSITION
			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_VERT_TANGENT
			#define ASE_NEEDS_FRAG_WORLD_VIEW_DIR
			#define ASE_NEEDS_FRAG_WORLD_TANGENT
			#define ASE_NEEDS_FRAG_WORLD_BITANGENT
			#define ASE_NEEDS_FRAG_WORLD_NORMAL
			#define ASE_NEEDS_FRAG_WORLD_POSITION


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
				float4 ase_color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			half4 _SmoothnessStrength;
			float4 _AlphaRemap;
			float4 _MainUVs;
			half4 _BaseColor;
			half4 _OcclusionStrengthAO;
			float _CATEGORY_SMOOTHNESS;
			float _SPACE_SMOOTHNESS;
			half _SmoothnessFresnelScale;
			half _SmoothnessFresnelPower;
			half _SmoothnessFresnelEnable;
			half _OcclusionStrengthAORemapMin;
			half _OcclusionStrengthAORemapMax;
			float _CATEGORY_OCCLUSION;
			float _SPACE_OCCLUSION;
			half _OcclusionSourceBaked;
			float _AlphaRemapMin;
			float _AlphaRemapMax;
			half _GlancingClipMode;
			float _CATEGORY_ALPHACLIPPING;
			float _SPACE_ALPHACLIP;
			half _AlphaCutoffBias;
			half _AlphaCutoffBiasShadow;
			half _SmoothnessStrengthRemapMax;
			int _Cull;
			half _SmoothnessStrengthRemapMin;
			float _SPACE_METALLIC;
			float _SPACE_SURFACEOPTIONS;
			float _CATEGORY_SURFACEOPTIONS;
			float _SPACE_SURFACEINPUTS;
			float _CATEGORY_SURFACEINPUTS;
			half _WindGlobalIntensity;
			half _WindLocalIntensity;
			half _WindEnableMode;
			half _WindLocalRandomOffset;
			float _CATEGORY_SHADOW;
			half _WindLocalPulseFrequency;
			half _WindEnable;
			float _CATEGORY_WIND;
			float _SPACE_WIND;
			half _Brightness;
			half _NormalStrength;
			half _DoubleSidedNormalMode;
			float _MetallicStrength;
			float _CATEGORY_METALLIC;
			half _WindLocalDirection;
			float _SPACE_SHADOW;
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

			float _GlobalWindBillboardIntensity;
			float _GlobalWindIntensity;
			float _GlobalWindRandomOffset;
			float _GlobalWindPulse;
			float _GlobalWindDirection;
			float _GlobalWindBillboardEnabled;
			TEXTURE2D(_MainTex);
			SAMPLER(sampler_MainTex);
			TEXTURE2D(_BumpMap);
			SAMPLER(sampler_BumpMap);


			//#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/Varyings.hlsl"
			//#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/PBRForwardPass.hlsl"

			//#ifdef HAVE_VFX_MODIFICATION
			//#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/VisualEffectVertex.hlsl"
			//#endif

			float4 mod289( float4 x )
			{
				return x - floor(x * (1.0 / 289.0)) * 289.0;
			}
			
			float4 perm( float4 x )
			{
				return mod289(((x * 34.0) + 1.0) * x);
			}
			
			float SimpleNoise3D( float3 p )
			{
				 float3 a = floor(p);
				    float3 d = p - a;
				    d = d * d * (3.0 - 2.0 * d);
				 float4 b = a.xxyy + float4(0.0, 1.0, 0.0, 1.0);
				    float4 k1 = perm(b.xyxy);
				 float4 k2 = perm(k1.xyxy + b.zzww);
				    float4 c = k2 + a.zzzz;
				    float4 k3 = perm(c);
				    float4 k4 = perm(c + 1.0);
				    float4 o1 = frac(k3 * (1.0 / 41.0));
				 float4 o2 = frac(k4 * (1.0 / 41.0));
				    float4 o3 = o2 * d.z + o1 * (1.0 - d.z);
				    float2 o4 = o3.yw * d.x + o3.xz * (1.0 - d.x);
				    return o4.y * d.y + o4.x * (1.0 - d.y);
			}
			
			float2 DirectionalEquation( float _WindDirection )
			{
				float d = _WindDirection * 0.0174532924;
				float xL = cos(d) + 1 / 2;
				float zL = sin(d) + 1 / 2;
				return float2(zL,xL);
			}
			
			float3 _NormalModefloat3switch( float m_switch, float3 m_Flip, float3 m_Mirror, float3 m_None )
			{
				if(m_switch ==0)
					return m_Flip;
				else if(m_switch ==1)
					return m_Mirror;
				else if(m_switch ==2)
					return m_None;
				else
				return float3(0,0,0);
			}
			

			VertexOutput VertexFunction( VertexInput v  )
			{
				VertexOutput o = (VertexOutput)0;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				//Calculate new billboard vertex position and normal;
				float3 upCamVec = float3( 0, 1, 0 );
				float3 forwardCamVec = -normalize ( UNITY_MATRIX_V._m20_m21_m22 );
				float3 rightCamVec = normalize( UNITY_MATRIX_V._m00_m01_m02 );
				float4x4 rotationCamMatrix = float4x4( rightCamVec, 0, upCamVec, 0, forwardCamVec, 0, 0, 0, 0, 1 );
				v.ase_normal = normalize( mul( float4( v.ase_normal , 0 ), rotationCamMatrix )).xyz;
				v.ase_tangent.xyz = normalize( mul( float4( v.ase_tangent.xyz , 0 ), rotationCamMatrix )).xyz;
				//This unfortunately must be made to take non-uniform scaling into account;
				//Transform to world coords, apply rotation and transform back to local;
				v.vertex = mul( v.vertex , unity_ObjectToWorld );
				v.vertex = mul( v.vertex , rotationCamMatrix );
				v.vertex = mul( v.vertex , unity_WorldToObject );
				float3 localBillboard721_g44961 = ( 0 );
				float3 VERTEX_POSITION_MATRIX2352_g57735 = mul( GetObjectToWorldMatrix(), float4( v.vertex.xyz , 0.0 ) ).xyz;
				float3 break2265_g57735 = VERTEX_POSITION_MATRIX2352_g57735;
				float GlobalWindBillboardIntensity3181_g57735 = _GlobalWindBillboardIntensity;
				float GlobalWindIntensity3173_g57735 = _GlobalWindIntensity;
				float WIND_MODE2462_g57735 = _WindEnableMode;
				float lerpResult3148_g57735 = lerp( ( ( _WindGlobalIntensity * GlobalWindBillboardIntensity3181_g57735 ) * GlobalWindIntensity3173_g57735 ) , _WindLocalIntensity , WIND_MODE2462_g57735);
				float _WIND_STRENGHT2400_g57735 = lerpResult3148_g57735;
				float GlobalWindRandomOffset3174_g57735 = _GlobalWindRandomOffset;
				float lerpResult3149_g57735 = lerp( GlobalWindRandomOffset3174_g57735 , _WindLocalRandomOffset , WIND_MODE2462_g57735);
				float4 transform3073_g57735 = mul(GetObjectToWorldMatrix(),float4( 0,0,0,1 ));
				float2 appendResult2307_g57735 = (float2(transform3073_g57735.x , transform3073_g57735.z));
				float dotResult2341_g57735 = dot( appendResult2307_g57735 , float2( 12.9898,78.233 ) );
				float lerpResult2238_g57735 = lerp( 0.8 , ( ( lerpResult3149_g57735 / 2.0 ) + 0.9 ) , frac( ( sin( dotResult2341_g57735 ) * 43758.55 ) ));
				float _WIND_RANDOM_OFFSET2244_g57735 = ( ( _TimeParameters.x * 0.05 ) * lerpResult2238_g57735 );
				float _WIND_TUBULENCE_RANDOM2274_g57735 = ( sin( ( ( _WIND_RANDOM_OFFSET2244_g57735 * 40.0 ) - ( VERTEX_POSITION_MATRIX2352_g57735.z / 15.0 ) ) ) * 0.5 );
				float GlobalWindPulse3177_g57735 = _GlobalWindPulse;
				float lerpResult3152_g57735 = lerp( GlobalWindPulse3177_g57735 , _WindLocalPulseFrequency , WIND_MODE2462_g57735);
				float _WIND_PULSE2421_g57735 = lerpResult3152_g57735;
				float FUNC_Angle2470_g57735 = ( _WIND_STRENGHT2400_g57735 * ( 1.0 + sin( ( ( ( ( _WIND_RANDOM_OFFSET2244_g57735 * 2.0 ) + _WIND_TUBULENCE_RANDOM2274_g57735 ) - ( VERTEX_POSITION_MATRIX2352_g57735.z / 50.0 ) ) - ( v.ase_color.r / 20.0 ) ) ) ) * sqrt( v.ase_color.r ) * _WIND_PULSE2421_g57735 );
				float FUNC_Angle_SinA2424_g57735 = sin( FUNC_Angle2470_g57735 );
				float FUNC_Angle_CosA2362_g57735 = cos( FUNC_Angle2470_g57735 );
				float GlobalWindDirection3175_g57735 = _GlobalWindDirection;
				float lerpResult3150_g57735 = lerp( GlobalWindDirection3175_g57735 , _WindLocalDirection , WIND_MODE2462_g57735);
				float _WindDirection2249_g57735 = lerpResult3150_g57735;
				float2 localDirectionalEquation2249_g57735 = DirectionalEquation( _WindDirection2249_g57735 );
				float2 break2469_g57735 = localDirectionalEquation2249_g57735;
				float _WIND_DIRECTION_X2418_g57735 = break2469_g57735.x;
				float lerpResult2258_g57735 = lerp( break2265_g57735.x , ( ( break2265_g57735.y * FUNC_Angle_SinA2424_g57735 ) + ( break2265_g57735.x * FUNC_Angle_CosA2362_g57735 ) ) , _WIND_DIRECTION_X2418_g57735);
				float3 break2340_g57735 = VERTEX_POSITION_MATRIX2352_g57735;
				float3 break2233_g57735 = VERTEX_POSITION_MATRIX2352_g57735;
				float _WIND_DIRECTION_Y2416_g57735 = break2469_g57735.y;
				float lerpResult2275_g57735 = lerp( break2233_g57735.z , ( ( break2233_g57735.y * FUNC_Angle_SinA2424_g57735 ) + ( break2233_g57735.z * FUNC_Angle_CosA2362_g57735 ) ) , _WIND_DIRECTION_Y2416_g57735);
				float3 appendResult2235_g57735 = (float3(lerpResult2258_g57735 , ( ( break2340_g57735.y * FUNC_Angle_CosA2362_g57735 ) - ( break2340_g57735.z * FUNC_Angle_SinA2424_g57735 ) ) , lerpResult2275_g57735));
				float3 VERTEX_POSITION_Neg3006_g57735 = appendResult2235_g57735;
				float GlobalWindBillboardEnabled3180_g57735 = _GlobalWindBillboardEnabled;
				float3 lerpResult3153_g57735 = lerp( float3(0,0,0) , ( VERTEX_POSITION_Neg3006_g57735 - VERTEX_POSITION_MATRIX2352_g57735 ) , GlobalWindBillboardEnabled3180_g57735);
				float3 VERTEX_POSITION2282_g57735 = ( mul( GetWorldToObjectMatrix(), float4( appendResult2235_g57735 , 0.0 ) ).xyz - v.vertex.xyz );
				float3 lerpResult3146_g57735 = lerp( lerpResult3153_g57735 , VERTEX_POSITION2282_g57735 , _WindEnableMode);
				float WindEnable3144_g57735 = _WindEnable;
				float3 lerpResult3143_g57735 = lerp( VERTEX_POSITION_MATRIX2352_g57735 , lerpResult3146_g57735 , WindEnable3144_g57735);
				float3 lerpResult3142_g57735 = lerp( float3(0,0,0) , lerpResult3143_g57735 , ( _WindEnable + ( ( _CATEGORY_WIND + _SPACE_WIND ) * 0.0 ) ));
				float3 temp_output_457_0_g44961 = lerpResult3142_g57735;
				{
				v.vertex.xyz += temp_output_457_0_g44961;
				}
				
				float2 Offset235_g57733 = (_MainUVs).zw;
				float2 temp_output_41_0_g57733 = ( ( v.texcoord.xy * (_MainUVs).xy ) + Offset235_g57733 );
				float2 vertexToFrag70_g57733 = temp_output_41_0_g57733;
				o.ase_texcoord8.xy = vertexToFrag70_g57733;
				
				o.ase_color = v.ase_color;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord8.zw = 0;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.vertex.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif

				float3 vertexValue = localBillboard721_g44961;

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
						, bool ase_vface : SV_IsFrontFace ) : SV_Target
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

				float2 vertexToFrag70_g57733 = IN.ase_texcoord8.xy;
				float4 tex2DNode3_g44961 = SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, vertexToFrag70_g57733 );
				float3 temp_output_28_0_g44961 = ( (_BaseColor).rgb * (tex2DNode3_g44961).rgb * _Brightness );
				
				float3 unpack748_g44961 = UnpackNormalScale( SAMPLE_TEXTURE2D( _BumpMap, sampler_BumpMap, vertexToFrag70_g57733 ), _NormalStrength );
				unpack748_g44961.z = lerp( 1, unpack748_g44961.z, saturate(_NormalStrength) );
				float3 worldToViewDir560_g44961 = normalize( mul( UNITY_MATRIX_V, float4( SafeNormalize(_MainLightPosition.xyz), 0 ) ).xyz );
				float dotResult307_g44961 = dot( unpack748_g44961 , worldToViewDir560_g44961 );
				float3 appendResult306_g44961 = (float3(dotResult307_g44961 , dotResult307_g44961 , dotResult307_g44961));
				float3 temp_output_304_0_g44961 = ( unpack748_g44961 + saturate( appendResult306_g44961 ) );
				float3 temp_output_24_0_g57378 = temp_output_304_0_g44961;
				float temp_output_50_0_g57378 = _DoubleSidedNormalMode;
				float m_switch64_g57378 = temp_output_50_0_g57378;
				float3 m_Flip64_g57378 = float3(-1,-1,-1);
				float3 m_Mirror64_g57378 = float3(1,1,-1);
				float3 m_None64_g57378 = float3(1,1,1);
				float3 local_NormalModefloat3switch64_g57378 = _NormalModefloat3switch( m_switch64_g57378 , m_Flip64_g57378 , m_Mirror64_g57378 , m_None64_g57378 );
				float3 switchResult58_g57378 = (((ase_vface>0)?(temp_output_24_0_g57378):(( temp_output_24_0_g57378 * local_NormalModefloat3switch64_g57378 ))));
				
				float lerpResult362_g57728 = lerp( ( _SmoothnessStrengthRemapMin + ( _SmoothnessStrength.x * 0.0 ) ) , ( _SmoothnessStrengthRemapMax + ( ( _CATEGORY_SMOOTHNESS + _SPACE_SMOOTHNESS ) * 0.0 ) ) , 0.0);
				float2 appendResult368_g57728 = (float2(WorldViewDirection.xy));
				float3 appendResult367_g57728 = (float3(appendResult368_g57728 , ( WorldViewDirection.z / 1.06 )));
				float3 temp_output_263_0_g57728 = temp_output_304_0_g44961;
				float3 normalizeResult310_g57728 = normalize( ( ( WorldTangent * temp_output_263_0_g57728.x ) + ( WorldBiTangent * temp_output_263_0_g57728.y ) + ( WorldNormal * temp_output_263_0_g57728.z ) ) );
				float fresnelNdotV309_g57728 = dot( normalize( normalizeResult310_g57728 ), appendResult367_g57728 );
				float fresnelNode309_g57728 = ( 0.0 + ( 1.0 - _SmoothnessFresnelScale ) * pow( max( 1.0 - fresnelNdotV309_g57728 , 0.0001 ), _SmoothnessFresnelPower ) );
				float lerpResult335_g57728 = lerp( lerpResult362_g57728 , ( lerpResult362_g57728 - fresnelNode309_g57728 ) , _SmoothnessFresnelEnable);
				
				float temp_output_185_0_g57724 = ( 1.0 - ( _OcclusionStrengthAORemapMin + ( _OcclusionStrengthAO.x * 0.0 ) ) );
				float temp_output_186_0_g57724 = ( 1.0 - ( _OcclusionStrengthAORemapMax + ( ( _CATEGORY_OCCLUSION + _SPACE_OCCLUSION ) * 0.0 ) ) );
				float lerpResult143_g57724 = lerp( temp_output_185_0_g57724 , temp_output_186_0_g57724 , 0.0);
				float lerpResult75_g57724 = lerp( temp_output_185_0_g57724 , temp_output_186_0_g57724 , IN.ase_color.a);
				float lerpResult73_g57724 = lerp( lerpResult143_g57724 , lerpResult75_g57724 , _OcclusionSourceBaked);
				
				float temp_output_22_0_g57718 = tex2DNode3_g44961.a;
				float3 normalizeResult79_g57723 = normalize( cross( ddy( WorldPosition ) , ddx( WorldPosition ) ) );
				float dotResult74_g57718 = dot( normalizeResult79_g57723 , WorldViewDirection );
				float lerpResult80_g57718 = lerp( 1.0 , ( 1.0 - ( ( 1.0 - abs( dotResult74_g57718 ) ) * ( 1.0 - abs( dotResult74_g57718 ) ) ) ) , ( _GlancingClipMode + ( ( _CATEGORY_ALPHACLIPPING + _SPACE_ALPHACLIP ) * 0.0 ) ));
				float temp_output_98_0_g57718 = ( ( (0.0 + (( 1.0 - temp_output_22_0_g57718 ) - 0.0) * (( _AlphaRemapMin + ( _AlphaRemap.x * 0.0 ) ) - 0.0) / (1.0 - 0.0)) + (0.0 + (temp_output_22_0_g57718 - 0.0) * (_AlphaRemapMax - 0.0) / (1.0 - 0.0)) ) * lerpResult80_g57718 );
				
				float temp_output_77_0_g57712 = ( _AlphaCutoffBiasShadow + ( ( _CATEGORY_SHADOW + _SPACE_SHADOW ) * 0.0 ) );
				

				float3 BaseColor = temp_output_28_0_g44961;
				float3 Normal = switchResult58_g57378;
				float3 Emission = 0;
				float3 Specular = 0.5;
				float Metallic = ( _MetallicStrength + ( ( _CATEGORY_METALLIC + _SPACE_METALLIC ) * 0.0 ) );
				float Smoothness = saturate( lerpResult335_g57728 );
				float Occlusion = saturate( lerpResult73_g57724 );
				float Alpha = temp_output_98_0_g57718;
				float AlphaClipThreshold = _AlphaCutoffBias;
				float AlphaClipThresholdShadow = temp_output_77_0_g57712;
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
			#define _ALPHATEST_SHADOW_ON 1
			#define _ALPHATEST_ON 1
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

			#define ASE_NEEDS_VERT_POSITION
			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_FRAG_WORLD_POSITION


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
				float4 ase_color : COLOR;
				float4 ase_texcoord : TEXCOORD0;
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
				float4 ase_texcoord3 : TEXCOORD3;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			half4 _SmoothnessStrength;
			float4 _AlphaRemap;
			float4 _MainUVs;
			half4 _BaseColor;
			half4 _OcclusionStrengthAO;
			float _CATEGORY_SMOOTHNESS;
			float _SPACE_SMOOTHNESS;
			half _SmoothnessFresnelScale;
			half _SmoothnessFresnelPower;
			half _SmoothnessFresnelEnable;
			half _OcclusionStrengthAORemapMin;
			half _OcclusionStrengthAORemapMax;
			float _CATEGORY_OCCLUSION;
			float _SPACE_OCCLUSION;
			half _OcclusionSourceBaked;
			float _AlphaRemapMin;
			float _AlphaRemapMax;
			half _GlancingClipMode;
			float _CATEGORY_ALPHACLIPPING;
			float _SPACE_ALPHACLIP;
			half _AlphaCutoffBias;
			half _AlphaCutoffBiasShadow;
			half _SmoothnessStrengthRemapMax;
			int _Cull;
			half _SmoothnessStrengthRemapMin;
			float _SPACE_METALLIC;
			float _SPACE_SURFACEOPTIONS;
			float _CATEGORY_SURFACEOPTIONS;
			float _SPACE_SURFACEINPUTS;
			float _CATEGORY_SURFACEINPUTS;
			half _WindGlobalIntensity;
			half _WindLocalIntensity;
			half _WindEnableMode;
			half _WindLocalRandomOffset;
			float _CATEGORY_SHADOW;
			half _WindLocalPulseFrequency;
			half _WindEnable;
			float _CATEGORY_WIND;
			float _SPACE_WIND;
			half _Brightness;
			half _NormalStrength;
			half _DoubleSidedNormalMode;
			float _MetallicStrength;
			float _CATEGORY_METALLIC;
			half _WindLocalDirection;
			float _SPACE_SHADOW;
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

			float _GlobalWindBillboardIntensity;
			float _GlobalWindIntensity;
			float _GlobalWindRandomOffset;
			float _GlobalWindPulse;
			float _GlobalWindDirection;
			float _GlobalWindBillboardEnabled;
			TEXTURE2D(_MainTex);
			SAMPLER(sampler_MainTex);


			//#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/Varyings.hlsl"
			//#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShadowCasterPass.hlsl"

			//#ifdef HAVE_VFX_MODIFICATION
			//#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/VisualEffectVertex.hlsl"
			//#endif

			float4 mod289( float4 x )
			{
				return x - floor(x * (1.0 / 289.0)) * 289.0;
			}
			
			float4 perm( float4 x )
			{
				return mod289(((x * 34.0) + 1.0) * x);
			}
			
			float SimpleNoise3D( float3 p )
			{
				 float3 a = floor(p);
				    float3 d = p - a;
				    d = d * d * (3.0 - 2.0 * d);
				 float4 b = a.xxyy + float4(0.0, 1.0, 0.0, 1.0);
				    float4 k1 = perm(b.xyxy);
				 float4 k2 = perm(k1.xyxy + b.zzww);
				    float4 c = k2 + a.zzzz;
				    float4 k3 = perm(c);
				    float4 k4 = perm(c + 1.0);
				    float4 o1 = frac(k3 * (1.0 / 41.0));
				 float4 o2 = frac(k4 * (1.0 / 41.0));
				    float4 o3 = o2 * d.z + o1 * (1.0 - d.z);
				    float2 o4 = o3.yw * d.x + o3.xz * (1.0 - d.x);
				    return o4.y * d.y + o4.x * (1.0 - d.y);
			}
			
			float2 DirectionalEquation( float _WindDirection )
			{
				float d = _WindDirection * 0.0174532924;
				float xL = cos(d) + 1 / 2;
				float zL = sin(d) + 1 / 2;
				return float2(zL,xL);
			}
			

			float3 _LightDirection;
			float3 _LightPosition;

			VertexOutput VertexFunction( VertexInput v )
			{
				VertexOutput o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( o );

				//Calculate new billboard vertex position and normal;
				float3 upCamVec = float3( 0, 1, 0 );
				float3 forwardCamVec = -normalize ( UNITY_MATRIX_V._m20_m21_m22 );
				float3 rightCamVec = normalize( UNITY_MATRIX_V._m00_m01_m02 );
				float4x4 rotationCamMatrix = float4x4( rightCamVec, 0, upCamVec, 0, forwardCamVec, 0, 0, 0, 0, 1 );
				v.ase_normal = normalize( mul( float4( v.ase_normal , 0 ), rotationCamMatrix )).xyz;
				v.ase_tangent.xyz = normalize( mul( float4( v.ase_tangent.xyz , 0 ), rotationCamMatrix )).xyz;
				//This unfortunately must be made to take non-uniform scaling into account;
				//Transform to world coords, apply rotation and transform back to local;
				v.vertex = mul( v.vertex , unity_ObjectToWorld );
				v.vertex = mul( v.vertex , rotationCamMatrix );
				v.vertex = mul( v.vertex , unity_WorldToObject );
				float3 localBillboard721_g44961 = ( 0 );
				float3 VERTEX_POSITION_MATRIX2352_g57735 = mul( GetObjectToWorldMatrix(), float4( v.vertex.xyz , 0.0 ) ).xyz;
				float3 break2265_g57735 = VERTEX_POSITION_MATRIX2352_g57735;
				float GlobalWindBillboardIntensity3181_g57735 = _GlobalWindBillboardIntensity;
				float GlobalWindIntensity3173_g57735 = _GlobalWindIntensity;
				float WIND_MODE2462_g57735 = _WindEnableMode;
				float lerpResult3148_g57735 = lerp( ( ( _WindGlobalIntensity * GlobalWindBillboardIntensity3181_g57735 ) * GlobalWindIntensity3173_g57735 ) , _WindLocalIntensity , WIND_MODE2462_g57735);
				float _WIND_STRENGHT2400_g57735 = lerpResult3148_g57735;
				float GlobalWindRandomOffset3174_g57735 = _GlobalWindRandomOffset;
				float lerpResult3149_g57735 = lerp( GlobalWindRandomOffset3174_g57735 , _WindLocalRandomOffset , WIND_MODE2462_g57735);
				float4 transform3073_g57735 = mul(GetObjectToWorldMatrix(),float4( 0,0,0,1 ));
				float2 appendResult2307_g57735 = (float2(transform3073_g57735.x , transform3073_g57735.z));
				float dotResult2341_g57735 = dot( appendResult2307_g57735 , float2( 12.9898,78.233 ) );
				float lerpResult2238_g57735 = lerp( 0.8 , ( ( lerpResult3149_g57735 / 2.0 ) + 0.9 ) , frac( ( sin( dotResult2341_g57735 ) * 43758.55 ) ));
				float _WIND_RANDOM_OFFSET2244_g57735 = ( ( _TimeParameters.x * 0.05 ) * lerpResult2238_g57735 );
				float _WIND_TUBULENCE_RANDOM2274_g57735 = ( sin( ( ( _WIND_RANDOM_OFFSET2244_g57735 * 40.0 ) - ( VERTEX_POSITION_MATRIX2352_g57735.z / 15.0 ) ) ) * 0.5 );
				float GlobalWindPulse3177_g57735 = _GlobalWindPulse;
				float lerpResult3152_g57735 = lerp( GlobalWindPulse3177_g57735 , _WindLocalPulseFrequency , WIND_MODE2462_g57735);
				float _WIND_PULSE2421_g57735 = lerpResult3152_g57735;
				float FUNC_Angle2470_g57735 = ( _WIND_STRENGHT2400_g57735 * ( 1.0 + sin( ( ( ( ( _WIND_RANDOM_OFFSET2244_g57735 * 2.0 ) + _WIND_TUBULENCE_RANDOM2274_g57735 ) - ( VERTEX_POSITION_MATRIX2352_g57735.z / 50.0 ) ) - ( v.ase_color.r / 20.0 ) ) ) ) * sqrt( v.ase_color.r ) * _WIND_PULSE2421_g57735 );
				float FUNC_Angle_SinA2424_g57735 = sin( FUNC_Angle2470_g57735 );
				float FUNC_Angle_CosA2362_g57735 = cos( FUNC_Angle2470_g57735 );
				float GlobalWindDirection3175_g57735 = _GlobalWindDirection;
				float lerpResult3150_g57735 = lerp( GlobalWindDirection3175_g57735 , _WindLocalDirection , WIND_MODE2462_g57735);
				float _WindDirection2249_g57735 = lerpResult3150_g57735;
				float2 localDirectionalEquation2249_g57735 = DirectionalEquation( _WindDirection2249_g57735 );
				float2 break2469_g57735 = localDirectionalEquation2249_g57735;
				float _WIND_DIRECTION_X2418_g57735 = break2469_g57735.x;
				float lerpResult2258_g57735 = lerp( break2265_g57735.x , ( ( break2265_g57735.y * FUNC_Angle_SinA2424_g57735 ) + ( break2265_g57735.x * FUNC_Angle_CosA2362_g57735 ) ) , _WIND_DIRECTION_X2418_g57735);
				float3 break2340_g57735 = VERTEX_POSITION_MATRIX2352_g57735;
				float3 break2233_g57735 = VERTEX_POSITION_MATRIX2352_g57735;
				float _WIND_DIRECTION_Y2416_g57735 = break2469_g57735.y;
				float lerpResult2275_g57735 = lerp( break2233_g57735.z , ( ( break2233_g57735.y * FUNC_Angle_SinA2424_g57735 ) + ( break2233_g57735.z * FUNC_Angle_CosA2362_g57735 ) ) , _WIND_DIRECTION_Y2416_g57735);
				float3 appendResult2235_g57735 = (float3(lerpResult2258_g57735 , ( ( break2340_g57735.y * FUNC_Angle_CosA2362_g57735 ) - ( break2340_g57735.z * FUNC_Angle_SinA2424_g57735 ) ) , lerpResult2275_g57735));
				float3 VERTEX_POSITION_Neg3006_g57735 = appendResult2235_g57735;
				float GlobalWindBillboardEnabled3180_g57735 = _GlobalWindBillboardEnabled;
				float3 lerpResult3153_g57735 = lerp( float3(0,0,0) , ( VERTEX_POSITION_Neg3006_g57735 - VERTEX_POSITION_MATRIX2352_g57735 ) , GlobalWindBillboardEnabled3180_g57735);
				float3 VERTEX_POSITION2282_g57735 = ( mul( GetWorldToObjectMatrix(), float4( appendResult2235_g57735 , 0.0 ) ).xyz - v.vertex.xyz );
				float3 lerpResult3146_g57735 = lerp( lerpResult3153_g57735 , VERTEX_POSITION2282_g57735 , _WindEnableMode);
				float WindEnable3144_g57735 = _WindEnable;
				float3 lerpResult3143_g57735 = lerp( VERTEX_POSITION_MATRIX2352_g57735 , lerpResult3146_g57735 , WindEnable3144_g57735);
				float3 lerpResult3142_g57735 = lerp( float3(0,0,0) , lerpResult3143_g57735 , ( _WindEnable + ( ( _CATEGORY_WIND + _SPACE_WIND ) * 0.0 ) ));
				float3 temp_output_457_0_g44961 = lerpResult3142_g57735;
				{
				v.vertex.xyz += temp_output_457_0_g44961;
				}
				
				float2 Offset235_g57733 = (_MainUVs).zw;
				float2 temp_output_41_0_g57733 = ( ( v.ase_texcoord.xy * (_MainUVs).xy ) + Offset235_g57733 );
				float2 vertexToFrag70_g57733 = temp_output_41_0_g57733;
				o.ase_texcoord3.xy = vertexToFrag70_g57733;
				
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord3.zw = 0;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.vertex.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif

				float3 vertexValue = localBillboard721_g44961;
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
				float4 ase_tangent : TANGENT;
				float4 ase_color : COLOR;
				float4 ase_texcoord : TEXCOORD0;

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
				o.ase_color = v.ase_color;
				o.ase_texcoord = v.ase_texcoord;
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
				o.ase_color = patch[0].ase_color * bary.x + patch[1].ase_color * bary.y + patch[2].ase_color * bary.z;
				o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
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

				float2 vertexToFrag70_g57733 = IN.ase_texcoord3.xy;
				float4 tex2DNode3_g44961 = SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, vertexToFrag70_g57733 );
				float temp_output_22_0_g57718 = tex2DNode3_g44961.a;
				float3 normalizeResult79_g57723 = normalize( cross( ddy( WorldPosition ) , ddx( WorldPosition ) ) );
				float3 ase_worldViewDir = ( _WorldSpaceCameraPos.xyz - WorldPosition );
				ase_worldViewDir = SafeNormalize( ase_worldViewDir );
				float dotResult74_g57718 = dot( normalizeResult79_g57723 , ase_worldViewDir );
				float lerpResult80_g57718 = lerp( 1.0 , ( 1.0 - ( ( 1.0 - abs( dotResult74_g57718 ) ) * ( 1.0 - abs( dotResult74_g57718 ) ) ) ) , ( _GlancingClipMode + ( ( _CATEGORY_ALPHACLIPPING + _SPACE_ALPHACLIP ) * 0.0 ) ));
				float temp_output_98_0_g57718 = ( ( (0.0 + (( 1.0 - temp_output_22_0_g57718 ) - 0.0) * (( _AlphaRemapMin + ( _AlphaRemap.x * 0.0 ) ) - 0.0) / (1.0 - 0.0)) + (0.0 + (temp_output_22_0_g57718 - 0.0) * (_AlphaRemapMax - 0.0) / (1.0 - 0.0)) ) * lerpResult80_g57718 );
				
				float temp_output_77_0_g57712 = ( _AlphaCutoffBiasShadow + ( ( _CATEGORY_SHADOW + _SPACE_SHADOW ) * 0.0 ) );
				

				float Alpha = temp_output_98_0_g57718;
				float AlphaClipThreshold = _AlphaCutoffBias;
				float AlphaClipThresholdShadow = temp_output_77_0_g57712;

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
			#define _ALPHATEST_SHADOW_ON 1
			#define _ALPHATEST_ON 1
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

			#define ASE_NEEDS_VERT_POSITION
			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_FRAG_WORLD_POSITION


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
				float4 ase_color : COLOR;
				float4 ase_texcoord : TEXCOORD0;
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
				float4 ase_texcoord3 : TEXCOORD3;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			half4 _SmoothnessStrength;
			float4 _AlphaRemap;
			float4 _MainUVs;
			half4 _BaseColor;
			half4 _OcclusionStrengthAO;
			float _CATEGORY_SMOOTHNESS;
			float _SPACE_SMOOTHNESS;
			half _SmoothnessFresnelScale;
			half _SmoothnessFresnelPower;
			half _SmoothnessFresnelEnable;
			half _OcclusionStrengthAORemapMin;
			half _OcclusionStrengthAORemapMax;
			float _CATEGORY_OCCLUSION;
			float _SPACE_OCCLUSION;
			half _OcclusionSourceBaked;
			float _AlphaRemapMin;
			float _AlphaRemapMax;
			half _GlancingClipMode;
			float _CATEGORY_ALPHACLIPPING;
			float _SPACE_ALPHACLIP;
			half _AlphaCutoffBias;
			half _AlphaCutoffBiasShadow;
			half _SmoothnessStrengthRemapMax;
			int _Cull;
			half _SmoothnessStrengthRemapMin;
			float _SPACE_METALLIC;
			float _SPACE_SURFACEOPTIONS;
			float _CATEGORY_SURFACEOPTIONS;
			float _SPACE_SURFACEINPUTS;
			float _CATEGORY_SURFACEINPUTS;
			half _WindGlobalIntensity;
			half _WindLocalIntensity;
			half _WindEnableMode;
			half _WindLocalRandomOffset;
			float _CATEGORY_SHADOW;
			half _WindLocalPulseFrequency;
			half _WindEnable;
			float _CATEGORY_WIND;
			float _SPACE_WIND;
			half _Brightness;
			half _NormalStrength;
			half _DoubleSidedNormalMode;
			float _MetallicStrength;
			float _CATEGORY_METALLIC;
			half _WindLocalDirection;
			float _SPACE_SHADOW;
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

			float _GlobalWindBillboardIntensity;
			float _GlobalWindIntensity;
			float _GlobalWindRandomOffset;
			float _GlobalWindPulse;
			float _GlobalWindDirection;
			float _GlobalWindBillboardEnabled;
			TEXTURE2D(_MainTex);
			SAMPLER(sampler_MainTex);


			//#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/Varyings.hlsl"
			//#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/DepthOnlyPass.hlsl"

			//#ifdef HAVE_VFX_MODIFICATION
			//#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/VisualEffectVertex.hlsl"
			//#endif

			float4 mod289( float4 x )
			{
				return x - floor(x * (1.0 / 289.0)) * 289.0;
			}
			
			float4 perm( float4 x )
			{
				return mod289(((x * 34.0) + 1.0) * x);
			}
			
			float SimpleNoise3D( float3 p )
			{
				 float3 a = floor(p);
				    float3 d = p - a;
				    d = d * d * (3.0 - 2.0 * d);
				 float4 b = a.xxyy + float4(0.0, 1.0, 0.0, 1.0);
				    float4 k1 = perm(b.xyxy);
				 float4 k2 = perm(k1.xyxy + b.zzww);
				    float4 c = k2 + a.zzzz;
				    float4 k3 = perm(c);
				    float4 k4 = perm(c + 1.0);
				    float4 o1 = frac(k3 * (1.0 / 41.0));
				 float4 o2 = frac(k4 * (1.0 / 41.0));
				    float4 o3 = o2 * d.z + o1 * (1.0 - d.z);
				    float2 o4 = o3.yw * d.x + o3.xz * (1.0 - d.x);
				    return o4.y * d.y + o4.x * (1.0 - d.y);
			}
			
			float2 DirectionalEquation( float _WindDirection )
			{
				float d = _WindDirection * 0.0174532924;
				float xL = cos(d) + 1 / 2;
				float zL = sin(d) + 1 / 2;
				return float2(zL,xL);
			}
			

			VertexOutput VertexFunction( VertexInput v  )
			{
				VertexOutput o = (VertexOutput)0;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				//Calculate new billboard vertex position and normal;
				float3 upCamVec = float3( 0, 1, 0 );
				float3 forwardCamVec = -normalize ( UNITY_MATRIX_V._m20_m21_m22 );
				float3 rightCamVec = normalize( UNITY_MATRIX_V._m00_m01_m02 );
				float4x4 rotationCamMatrix = float4x4( rightCamVec, 0, upCamVec, 0, forwardCamVec, 0, 0, 0, 0, 1 );
				v.ase_normal = normalize( mul( float4( v.ase_normal , 0 ), rotationCamMatrix )).xyz;
				v.ase_tangent.xyz = normalize( mul( float4( v.ase_tangent.xyz , 0 ), rotationCamMatrix )).xyz;
				//This unfortunately must be made to take non-uniform scaling into account;
				//Transform to world coords, apply rotation and transform back to local;
				v.vertex = mul( v.vertex , unity_ObjectToWorld );
				v.vertex = mul( v.vertex , rotationCamMatrix );
				v.vertex = mul( v.vertex , unity_WorldToObject );
				float3 localBillboard721_g44961 = ( 0 );
				float3 VERTEX_POSITION_MATRIX2352_g57735 = mul( GetObjectToWorldMatrix(), float4( v.vertex.xyz , 0.0 ) ).xyz;
				float3 break2265_g57735 = VERTEX_POSITION_MATRIX2352_g57735;
				float GlobalWindBillboardIntensity3181_g57735 = _GlobalWindBillboardIntensity;
				float GlobalWindIntensity3173_g57735 = _GlobalWindIntensity;
				float WIND_MODE2462_g57735 = _WindEnableMode;
				float lerpResult3148_g57735 = lerp( ( ( _WindGlobalIntensity * GlobalWindBillboardIntensity3181_g57735 ) * GlobalWindIntensity3173_g57735 ) , _WindLocalIntensity , WIND_MODE2462_g57735);
				float _WIND_STRENGHT2400_g57735 = lerpResult3148_g57735;
				float GlobalWindRandomOffset3174_g57735 = _GlobalWindRandomOffset;
				float lerpResult3149_g57735 = lerp( GlobalWindRandomOffset3174_g57735 , _WindLocalRandomOffset , WIND_MODE2462_g57735);
				float4 transform3073_g57735 = mul(GetObjectToWorldMatrix(),float4( 0,0,0,1 ));
				float2 appendResult2307_g57735 = (float2(transform3073_g57735.x , transform3073_g57735.z));
				float dotResult2341_g57735 = dot( appendResult2307_g57735 , float2( 12.9898,78.233 ) );
				float lerpResult2238_g57735 = lerp( 0.8 , ( ( lerpResult3149_g57735 / 2.0 ) + 0.9 ) , frac( ( sin( dotResult2341_g57735 ) * 43758.55 ) ));
				float _WIND_RANDOM_OFFSET2244_g57735 = ( ( _TimeParameters.x * 0.05 ) * lerpResult2238_g57735 );
				float _WIND_TUBULENCE_RANDOM2274_g57735 = ( sin( ( ( _WIND_RANDOM_OFFSET2244_g57735 * 40.0 ) - ( VERTEX_POSITION_MATRIX2352_g57735.z / 15.0 ) ) ) * 0.5 );
				float GlobalWindPulse3177_g57735 = _GlobalWindPulse;
				float lerpResult3152_g57735 = lerp( GlobalWindPulse3177_g57735 , _WindLocalPulseFrequency , WIND_MODE2462_g57735);
				float _WIND_PULSE2421_g57735 = lerpResult3152_g57735;
				float FUNC_Angle2470_g57735 = ( _WIND_STRENGHT2400_g57735 * ( 1.0 + sin( ( ( ( ( _WIND_RANDOM_OFFSET2244_g57735 * 2.0 ) + _WIND_TUBULENCE_RANDOM2274_g57735 ) - ( VERTEX_POSITION_MATRIX2352_g57735.z / 50.0 ) ) - ( v.ase_color.r / 20.0 ) ) ) ) * sqrt( v.ase_color.r ) * _WIND_PULSE2421_g57735 );
				float FUNC_Angle_SinA2424_g57735 = sin( FUNC_Angle2470_g57735 );
				float FUNC_Angle_CosA2362_g57735 = cos( FUNC_Angle2470_g57735 );
				float GlobalWindDirection3175_g57735 = _GlobalWindDirection;
				float lerpResult3150_g57735 = lerp( GlobalWindDirection3175_g57735 , _WindLocalDirection , WIND_MODE2462_g57735);
				float _WindDirection2249_g57735 = lerpResult3150_g57735;
				float2 localDirectionalEquation2249_g57735 = DirectionalEquation( _WindDirection2249_g57735 );
				float2 break2469_g57735 = localDirectionalEquation2249_g57735;
				float _WIND_DIRECTION_X2418_g57735 = break2469_g57735.x;
				float lerpResult2258_g57735 = lerp( break2265_g57735.x , ( ( break2265_g57735.y * FUNC_Angle_SinA2424_g57735 ) + ( break2265_g57735.x * FUNC_Angle_CosA2362_g57735 ) ) , _WIND_DIRECTION_X2418_g57735);
				float3 break2340_g57735 = VERTEX_POSITION_MATRIX2352_g57735;
				float3 break2233_g57735 = VERTEX_POSITION_MATRIX2352_g57735;
				float _WIND_DIRECTION_Y2416_g57735 = break2469_g57735.y;
				float lerpResult2275_g57735 = lerp( break2233_g57735.z , ( ( break2233_g57735.y * FUNC_Angle_SinA2424_g57735 ) + ( break2233_g57735.z * FUNC_Angle_CosA2362_g57735 ) ) , _WIND_DIRECTION_Y2416_g57735);
				float3 appendResult2235_g57735 = (float3(lerpResult2258_g57735 , ( ( break2340_g57735.y * FUNC_Angle_CosA2362_g57735 ) - ( break2340_g57735.z * FUNC_Angle_SinA2424_g57735 ) ) , lerpResult2275_g57735));
				float3 VERTEX_POSITION_Neg3006_g57735 = appendResult2235_g57735;
				float GlobalWindBillboardEnabled3180_g57735 = _GlobalWindBillboardEnabled;
				float3 lerpResult3153_g57735 = lerp( float3(0,0,0) , ( VERTEX_POSITION_Neg3006_g57735 - VERTEX_POSITION_MATRIX2352_g57735 ) , GlobalWindBillboardEnabled3180_g57735);
				float3 VERTEX_POSITION2282_g57735 = ( mul( GetWorldToObjectMatrix(), float4( appendResult2235_g57735 , 0.0 ) ).xyz - v.vertex.xyz );
				float3 lerpResult3146_g57735 = lerp( lerpResult3153_g57735 , VERTEX_POSITION2282_g57735 , _WindEnableMode);
				float WindEnable3144_g57735 = _WindEnable;
				float3 lerpResult3143_g57735 = lerp( VERTEX_POSITION_MATRIX2352_g57735 , lerpResult3146_g57735 , WindEnable3144_g57735);
				float3 lerpResult3142_g57735 = lerp( float3(0,0,0) , lerpResult3143_g57735 , ( _WindEnable + ( ( _CATEGORY_WIND + _SPACE_WIND ) * 0.0 ) ));
				float3 temp_output_457_0_g44961 = lerpResult3142_g57735;
				{
				v.vertex.xyz += temp_output_457_0_g44961;
				}
				
				float2 Offset235_g57733 = (_MainUVs).zw;
				float2 temp_output_41_0_g57733 = ( ( v.ase_texcoord.xy * (_MainUVs).xy ) + Offset235_g57733 );
				float2 vertexToFrag70_g57733 = temp_output_41_0_g57733;
				o.ase_texcoord3.xy = vertexToFrag70_g57733;
				
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord3.zw = 0;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.vertex.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif

				float3 vertexValue = localBillboard721_g44961;

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
				float4 ase_tangent : TANGENT;
				float4 ase_color : COLOR;
				float4 ase_texcoord : TEXCOORD0;

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
				o.ase_color = v.ase_color;
				o.ase_texcoord = v.ase_texcoord;
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
				o.ase_color = patch[0].ase_color * bary.x + patch[1].ase_color * bary.y + patch[2].ase_color * bary.z;
				o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
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

				float2 vertexToFrag70_g57733 = IN.ase_texcoord3.xy;
				float4 tex2DNode3_g44961 = SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, vertexToFrag70_g57733 );
				float temp_output_22_0_g57718 = tex2DNode3_g44961.a;
				float3 normalizeResult79_g57723 = normalize( cross( ddy( WorldPosition ) , ddx( WorldPosition ) ) );
				float3 ase_worldViewDir = ( _WorldSpaceCameraPos.xyz - WorldPosition );
				ase_worldViewDir = SafeNormalize( ase_worldViewDir );
				float dotResult74_g57718 = dot( normalizeResult79_g57723 , ase_worldViewDir );
				float lerpResult80_g57718 = lerp( 1.0 , ( 1.0 - ( ( 1.0 - abs( dotResult74_g57718 ) ) * ( 1.0 - abs( dotResult74_g57718 ) ) ) ) , ( _GlancingClipMode + ( ( _CATEGORY_ALPHACLIPPING + _SPACE_ALPHACLIP ) * 0.0 ) ));
				float temp_output_98_0_g57718 = ( ( (0.0 + (( 1.0 - temp_output_22_0_g57718 ) - 0.0) * (( _AlphaRemapMin + ( _AlphaRemap.x * 0.0 ) ) - 0.0) / (1.0 - 0.0)) + (0.0 + (temp_output_22_0_g57718 - 0.0) * (_AlphaRemapMax - 0.0) / (1.0 - 0.0)) ) * lerpResult80_g57718 );
				

				float Alpha = temp_output_98_0_g57718;
				float AlphaClipThreshold = _AlphaCutoffBias;
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
			#define _ALPHATEST_SHADOW_ON 1
			#define _ALPHATEST_ON 1
			#define _NORMALMAP 1
			#define ASE_SRP_VERSION 120112
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

			#define ASE_NEEDS_VERT_POSITION
			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_FRAG_WORLD_POSITION


			struct VertexInput
			{
				float4 vertex : POSITION;
				float3 ase_normal : NORMAL;
				float4 texcoord0 : TEXCOORD0;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
				float4 ase_tangent : TANGENT;
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
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			half4 _SmoothnessStrength;
			float4 _AlphaRemap;
			float4 _MainUVs;
			half4 _BaseColor;
			half4 _OcclusionStrengthAO;
			float _CATEGORY_SMOOTHNESS;
			float _SPACE_SMOOTHNESS;
			half _SmoothnessFresnelScale;
			half _SmoothnessFresnelPower;
			half _SmoothnessFresnelEnable;
			half _OcclusionStrengthAORemapMin;
			half _OcclusionStrengthAORemapMax;
			float _CATEGORY_OCCLUSION;
			float _SPACE_OCCLUSION;
			half _OcclusionSourceBaked;
			float _AlphaRemapMin;
			float _AlphaRemapMax;
			half _GlancingClipMode;
			float _CATEGORY_ALPHACLIPPING;
			float _SPACE_ALPHACLIP;
			half _AlphaCutoffBias;
			half _AlphaCutoffBiasShadow;
			half _SmoothnessStrengthRemapMax;
			int _Cull;
			half _SmoothnessStrengthRemapMin;
			float _SPACE_METALLIC;
			float _SPACE_SURFACEOPTIONS;
			float _CATEGORY_SURFACEOPTIONS;
			float _SPACE_SURFACEINPUTS;
			float _CATEGORY_SURFACEINPUTS;
			half _WindGlobalIntensity;
			half _WindLocalIntensity;
			half _WindEnableMode;
			half _WindLocalRandomOffset;
			float _CATEGORY_SHADOW;
			half _WindLocalPulseFrequency;
			half _WindEnable;
			float _CATEGORY_WIND;
			float _SPACE_WIND;
			half _Brightness;
			half _NormalStrength;
			half _DoubleSidedNormalMode;
			float _MetallicStrength;
			float _CATEGORY_METALLIC;
			half _WindLocalDirection;
			float _SPACE_SHADOW;
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

			float _GlobalWindBillboardIntensity;
			float _GlobalWindIntensity;
			float _GlobalWindRandomOffset;
			float _GlobalWindPulse;
			float _GlobalWindDirection;
			float _GlobalWindBillboardEnabled;
			TEXTURE2D(_MainTex);
			SAMPLER(sampler_MainTex);


			//#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/Varyings.hlsl"
			//#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/LightingMetaPass.hlsl"

			//#ifdef HAVE_VFX_MODIFICATION
			//#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/VisualEffectVertex.hlsl"
			//#endif

			float4 mod289( float4 x )
			{
				return x - floor(x * (1.0 / 289.0)) * 289.0;
			}
			
			float4 perm( float4 x )
			{
				return mod289(((x * 34.0) + 1.0) * x);
			}
			
			float SimpleNoise3D( float3 p )
			{
				 float3 a = floor(p);
				    float3 d = p - a;
				    d = d * d * (3.0 - 2.0 * d);
				 float4 b = a.xxyy + float4(0.0, 1.0, 0.0, 1.0);
				    float4 k1 = perm(b.xyxy);
				 float4 k2 = perm(k1.xyxy + b.zzww);
				    float4 c = k2 + a.zzzz;
				    float4 k3 = perm(c);
				    float4 k4 = perm(c + 1.0);
				    float4 o1 = frac(k3 * (1.0 / 41.0));
				 float4 o2 = frac(k4 * (1.0 / 41.0));
				    float4 o3 = o2 * d.z + o1 * (1.0 - d.z);
				    float2 o4 = o3.yw * d.x + o3.xz * (1.0 - d.x);
				    return o4.y * d.y + o4.x * (1.0 - d.y);
			}
			
			float2 DirectionalEquation( float _WindDirection )
			{
				float d = _WindDirection * 0.0174532924;
				float xL = cos(d) + 1 / 2;
				float zL = sin(d) + 1 / 2;
				return float2(zL,xL);
			}
			

			VertexOutput VertexFunction( VertexInput v  )
			{
				VertexOutput o = (VertexOutput)0;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				//Calculate new billboard vertex position and normal;
				float3 upCamVec = float3( 0, 1, 0 );
				float3 forwardCamVec = -normalize ( UNITY_MATRIX_V._m20_m21_m22 );
				float3 rightCamVec = normalize( UNITY_MATRIX_V._m00_m01_m02 );
				float4x4 rotationCamMatrix = float4x4( rightCamVec, 0, upCamVec, 0, forwardCamVec, 0, 0, 0, 0, 1 );
				v.ase_normal = normalize( mul( float4( v.ase_normal , 0 ), rotationCamMatrix )).xyz;
				v.ase_tangent.xyz = normalize( mul( float4( v.ase_tangent.xyz , 0 ), rotationCamMatrix )).xyz;
				//This unfortunately must be made to take non-uniform scaling into account;
				//Transform to world coords, apply rotation and transform back to local;
				v.vertex = mul( v.vertex , unity_ObjectToWorld );
				v.vertex = mul( v.vertex , rotationCamMatrix );
				v.vertex = mul( v.vertex , unity_WorldToObject );
				float3 localBillboard721_g44961 = ( 0 );
				float3 VERTEX_POSITION_MATRIX2352_g57735 = mul( GetObjectToWorldMatrix(), float4( v.vertex.xyz , 0.0 ) ).xyz;
				float3 break2265_g57735 = VERTEX_POSITION_MATRIX2352_g57735;
				float GlobalWindBillboardIntensity3181_g57735 = _GlobalWindBillboardIntensity;
				float GlobalWindIntensity3173_g57735 = _GlobalWindIntensity;
				float WIND_MODE2462_g57735 = _WindEnableMode;
				float lerpResult3148_g57735 = lerp( ( ( _WindGlobalIntensity * GlobalWindBillboardIntensity3181_g57735 ) * GlobalWindIntensity3173_g57735 ) , _WindLocalIntensity , WIND_MODE2462_g57735);
				float _WIND_STRENGHT2400_g57735 = lerpResult3148_g57735;
				float GlobalWindRandomOffset3174_g57735 = _GlobalWindRandomOffset;
				float lerpResult3149_g57735 = lerp( GlobalWindRandomOffset3174_g57735 , _WindLocalRandomOffset , WIND_MODE2462_g57735);
				float4 transform3073_g57735 = mul(GetObjectToWorldMatrix(),float4( 0,0,0,1 ));
				float2 appendResult2307_g57735 = (float2(transform3073_g57735.x , transform3073_g57735.z));
				float dotResult2341_g57735 = dot( appendResult2307_g57735 , float2( 12.9898,78.233 ) );
				float lerpResult2238_g57735 = lerp( 0.8 , ( ( lerpResult3149_g57735 / 2.0 ) + 0.9 ) , frac( ( sin( dotResult2341_g57735 ) * 43758.55 ) ));
				float _WIND_RANDOM_OFFSET2244_g57735 = ( ( _TimeParameters.x * 0.05 ) * lerpResult2238_g57735 );
				float _WIND_TUBULENCE_RANDOM2274_g57735 = ( sin( ( ( _WIND_RANDOM_OFFSET2244_g57735 * 40.0 ) - ( VERTEX_POSITION_MATRIX2352_g57735.z / 15.0 ) ) ) * 0.5 );
				float GlobalWindPulse3177_g57735 = _GlobalWindPulse;
				float lerpResult3152_g57735 = lerp( GlobalWindPulse3177_g57735 , _WindLocalPulseFrequency , WIND_MODE2462_g57735);
				float _WIND_PULSE2421_g57735 = lerpResult3152_g57735;
				float FUNC_Angle2470_g57735 = ( _WIND_STRENGHT2400_g57735 * ( 1.0 + sin( ( ( ( ( _WIND_RANDOM_OFFSET2244_g57735 * 2.0 ) + _WIND_TUBULENCE_RANDOM2274_g57735 ) - ( VERTEX_POSITION_MATRIX2352_g57735.z / 50.0 ) ) - ( v.ase_color.r / 20.0 ) ) ) ) * sqrt( v.ase_color.r ) * _WIND_PULSE2421_g57735 );
				float FUNC_Angle_SinA2424_g57735 = sin( FUNC_Angle2470_g57735 );
				float FUNC_Angle_CosA2362_g57735 = cos( FUNC_Angle2470_g57735 );
				float GlobalWindDirection3175_g57735 = _GlobalWindDirection;
				float lerpResult3150_g57735 = lerp( GlobalWindDirection3175_g57735 , _WindLocalDirection , WIND_MODE2462_g57735);
				float _WindDirection2249_g57735 = lerpResult3150_g57735;
				float2 localDirectionalEquation2249_g57735 = DirectionalEquation( _WindDirection2249_g57735 );
				float2 break2469_g57735 = localDirectionalEquation2249_g57735;
				float _WIND_DIRECTION_X2418_g57735 = break2469_g57735.x;
				float lerpResult2258_g57735 = lerp( break2265_g57735.x , ( ( break2265_g57735.y * FUNC_Angle_SinA2424_g57735 ) + ( break2265_g57735.x * FUNC_Angle_CosA2362_g57735 ) ) , _WIND_DIRECTION_X2418_g57735);
				float3 break2340_g57735 = VERTEX_POSITION_MATRIX2352_g57735;
				float3 break2233_g57735 = VERTEX_POSITION_MATRIX2352_g57735;
				float _WIND_DIRECTION_Y2416_g57735 = break2469_g57735.y;
				float lerpResult2275_g57735 = lerp( break2233_g57735.z , ( ( break2233_g57735.y * FUNC_Angle_SinA2424_g57735 ) + ( break2233_g57735.z * FUNC_Angle_CosA2362_g57735 ) ) , _WIND_DIRECTION_Y2416_g57735);
				float3 appendResult2235_g57735 = (float3(lerpResult2258_g57735 , ( ( break2340_g57735.y * FUNC_Angle_CosA2362_g57735 ) - ( break2340_g57735.z * FUNC_Angle_SinA2424_g57735 ) ) , lerpResult2275_g57735));
				float3 VERTEX_POSITION_Neg3006_g57735 = appendResult2235_g57735;
				float GlobalWindBillboardEnabled3180_g57735 = _GlobalWindBillboardEnabled;
				float3 lerpResult3153_g57735 = lerp( float3(0,0,0) , ( VERTEX_POSITION_Neg3006_g57735 - VERTEX_POSITION_MATRIX2352_g57735 ) , GlobalWindBillboardEnabled3180_g57735);
				float3 VERTEX_POSITION2282_g57735 = ( mul( GetWorldToObjectMatrix(), float4( appendResult2235_g57735 , 0.0 ) ).xyz - v.vertex.xyz );
				float3 lerpResult3146_g57735 = lerp( lerpResult3153_g57735 , VERTEX_POSITION2282_g57735 , _WindEnableMode);
				float WindEnable3144_g57735 = _WindEnable;
				float3 lerpResult3143_g57735 = lerp( VERTEX_POSITION_MATRIX2352_g57735 , lerpResult3146_g57735 , WindEnable3144_g57735);
				float3 lerpResult3142_g57735 = lerp( float3(0,0,0) , lerpResult3143_g57735 , ( _WindEnable + ( ( _CATEGORY_WIND + _SPACE_WIND ) * 0.0 ) ));
				float3 temp_output_457_0_g44961 = lerpResult3142_g57735;
				{
				v.vertex.xyz += temp_output_457_0_g44961;
				}
				
				float2 Offset235_g57733 = (_MainUVs).zw;
				float2 temp_output_41_0_g57733 = ( ( v.texcoord0.xy * (_MainUVs).xy ) + Offset235_g57733 );
				float2 vertexToFrag70_g57733 = temp_output_41_0_g57733;
				o.ase_texcoord4.xy = vertexToFrag70_g57733;
				
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord4.zw = 0;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.vertex.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif

				float3 vertexValue = localBillboard721_g44961;

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
				float4 ase_tangent : TANGENT;
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
				o.ase_tangent = v.ase_tangent;
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
				o.ase_tangent = patch[0].ase_tangent * bary.x + patch[1].ase_tangent * bary.y + patch[2].ase_tangent * bary.z;
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

				float2 vertexToFrag70_g57733 = IN.ase_texcoord4.xy;
				float4 tex2DNode3_g44961 = SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, vertexToFrag70_g57733 );
				float3 temp_output_28_0_g44961 = ( (_BaseColor).rgb * (tex2DNode3_g44961).rgb * _Brightness );
				
				float temp_output_22_0_g57718 = tex2DNode3_g44961.a;
				float3 normalizeResult79_g57723 = normalize( cross( ddy( WorldPosition ) , ddx( WorldPosition ) ) );
				float3 ase_worldViewDir = ( _WorldSpaceCameraPos.xyz - WorldPosition );
				ase_worldViewDir = SafeNormalize( ase_worldViewDir );
				float dotResult74_g57718 = dot( normalizeResult79_g57723 , ase_worldViewDir );
				float lerpResult80_g57718 = lerp( 1.0 , ( 1.0 - ( ( 1.0 - abs( dotResult74_g57718 ) ) * ( 1.0 - abs( dotResult74_g57718 ) ) ) ) , ( _GlancingClipMode + ( ( _CATEGORY_ALPHACLIPPING + _SPACE_ALPHACLIP ) * 0.0 ) ));
				float temp_output_98_0_g57718 = ( ( (0.0 + (( 1.0 - temp_output_22_0_g57718 ) - 0.0) * (( _AlphaRemapMin + ( _AlphaRemap.x * 0.0 ) ) - 0.0) / (1.0 - 0.0)) + (0.0 + (temp_output_22_0_g57718 - 0.0) * (_AlphaRemapMax - 0.0) / (1.0 - 0.0)) ) * lerpResult80_g57718 );
				

				float3 BaseColor = temp_output_28_0_g44961;
				float3 Emission = 0;
				float Alpha = temp_output_98_0_g57718;
				float AlphaClipThreshold = _AlphaCutoffBias;

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
			#define _ALPHATEST_SHADOW_ON 1
			#define _ALPHATEST_ON 1
			#define _NORMALMAP 1
			#define ASE_SRP_VERSION 120112
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

			#define ASE_NEEDS_VERT_POSITION
			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_FRAG_WORLD_POSITION


			struct VertexInput
			{
				float4 vertex : POSITION;
				float3 ase_normal : NORMAL;
				float4 ase_tangent : TANGENT;
				float4 ase_color : COLOR;
				float4 ase_texcoord : TEXCOORD0;
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
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			half4 _SmoothnessStrength;
			float4 _AlphaRemap;
			float4 _MainUVs;
			half4 _BaseColor;
			half4 _OcclusionStrengthAO;
			float _CATEGORY_SMOOTHNESS;
			float _SPACE_SMOOTHNESS;
			half _SmoothnessFresnelScale;
			half _SmoothnessFresnelPower;
			half _SmoothnessFresnelEnable;
			half _OcclusionStrengthAORemapMin;
			half _OcclusionStrengthAORemapMax;
			float _CATEGORY_OCCLUSION;
			float _SPACE_OCCLUSION;
			half _OcclusionSourceBaked;
			float _AlphaRemapMin;
			float _AlphaRemapMax;
			half _GlancingClipMode;
			float _CATEGORY_ALPHACLIPPING;
			float _SPACE_ALPHACLIP;
			half _AlphaCutoffBias;
			half _AlphaCutoffBiasShadow;
			half _SmoothnessStrengthRemapMax;
			int _Cull;
			half _SmoothnessStrengthRemapMin;
			float _SPACE_METALLIC;
			float _SPACE_SURFACEOPTIONS;
			float _CATEGORY_SURFACEOPTIONS;
			float _SPACE_SURFACEINPUTS;
			float _CATEGORY_SURFACEINPUTS;
			half _WindGlobalIntensity;
			half _WindLocalIntensity;
			half _WindEnableMode;
			half _WindLocalRandomOffset;
			float _CATEGORY_SHADOW;
			half _WindLocalPulseFrequency;
			half _WindEnable;
			float _CATEGORY_WIND;
			float _SPACE_WIND;
			half _Brightness;
			half _NormalStrength;
			half _DoubleSidedNormalMode;
			float _MetallicStrength;
			float _CATEGORY_METALLIC;
			half _WindLocalDirection;
			float _SPACE_SHADOW;
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

			float _GlobalWindBillboardIntensity;
			float _GlobalWindIntensity;
			float _GlobalWindRandomOffset;
			float _GlobalWindPulse;
			float _GlobalWindDirection;
			float _GlobalWindBillboardEnabled;
			TEXTURE2D(_MainTex);
			SAMPLER(sampler_MainTex);


			//#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/Varyings.hlsl"
			//#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/PBR2DPass.hlsl"

			//#ifdef HAVE_VFX_MODIFICATION
			//#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/VisualEffectVertex.hlsl"
			//#endif

			float4 mod289( float4 x )
			{
				return x - floor(x * (1.0 / 289.0)) * 289.0;
			}
			
			float4 perm( float4 x )
			{
				return mod289(((x * 34.0) + 1.0) * x);
			}
			
			float SimpleNoise3D( float3 p )
			{
				 float3 a = floor(p);
				    float3 d = p - a;
				    d = d * d * (3.0 - 2.0 * d);
				 float4 b = a.xxyy + float4(0.0, 1.0, 0.0, 1.0);
				    float4 k1 = perm(b.xyxy);
				 float4 k2 = perm(k1.xyxy + b.zzww);
				    float4 c = k2 + a.zzzz;
				    float4 k3 = perm(c);
				    float4 k4 = perm(c + 1.0);
				    float4 o1 = frac(k3 * (1.0 / 41.0));
				 float4 o2 = frac(k4 * (1.0 / 41.0));
				    float4 o3 = o2 * d.z + o1 * (1.0 - d.z);
				    float2 o4 = o3.yw * d.x + o3.xz * (1.0 - d.x);
				    return o4.y * d.y + o4.x * (1.0 - d.y);
			}
			
			float2 DirectionalEquation( float _WindDirection )
			{
				float d = _WindDirection * 0.0174532924;
				float xL = cos(d) + 1 / 2;
				float zL = sin(d) + 1 / 2;
				return float2(zL,xL);
			}
			

			VertexOutput VertexFunction( VertexInput v  )
			{
				VertexOutput o = (VertexOutput)0;
				UNITY_SETUP_INSTANCE_ID( v );
				UNITY_TRANSFER_INSTANCE_ID( v, o );
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( o );

				//Calculate new billboard vertex position and normal;
				float3 upCamVec = float3( 0, 1, 0 );
				float3 forwardCamVec = -normalize ( UNITY_MATRIX_V._m20_m21_m22 );
				float3 rightCamVec = normalize( UNITY_MATRIX_V._m00_m01_m02 );
				float4x4 rotationCamMatrix = float4x4( rightCamVec, 0, upCamVec, 0, forwardCamVec, 0, 0, 0, 0, 1 );
				v.ase_normal = normalize( mul( float4( v.ase_normal , 0 ), rotationCamMatrix )).xyz;
				v.ase_tangent.xyz = normalize( mul( float4( v.ase_tangent.xyz , 0 ), rotationCamMatrix )).xyz;
				//This unfortunately must be made to take non-uniform scaling into account;
				//Transform to world coords, apply rotation and transform back to local;
				v.vertex = mul( v.vertex , unity_ObjectToWorld );
				v.vertex = mul( v.vertex , rotationCamMatrix );
				v.vertex = mul( v.vertex , unity_WorldToObject );
				float3 localBillboard721_g44961 = ( 0 );
				float3 VERTEX_POSITION_MATRIX2352_g57735 = mul( GetObjectToWorldMatrix(), float4( v.vertex.xyz , 0.0 ) ).xyz;
				float3 break2265_g57735 = VERTEX_POSITION_MATRIX2352_g57735;
				float GlobalWindBillboardIntensity3181_g57735 = _GlobalWindBillboardIntensity;
				float GlobalWindIntensity3173_g57735 = _GlobalWindIntensity;
				float WIND_MODE2462_g57735 = _WindEnableMode;
				float lerpResult3148_g57735 = lerp( ( ( _WindGlobalIntensity * GlobalWindBillboardIntensity3181_g57735 ) * GlobalWindIntensity3173_g57735 ) , _WindLocalIntensity , WIND_MODE2462_g57735);
				float _WIND_STRENGHT2400_g57735 = lerpResult3148_g57735;
				float GlobalWindRandomOffset3174_g57735 = _GlobalWindRandomOffset;
				float lerpResult3149_g57735 = lerp( GlobalWindRandomOffset3174_g57735 , _WindLocalRandomOffset , WIND_MODE2462_g57735);
				float4 transform3073_g57735 = mul(GetObjectToWorldMatrix(),float4( 0,0,0,1 ));
				float2 appendResult2307_g57735 = (float2(transform3073_g57735.x , transform3073_g57735.z));
				float dotResult2341_g57735 = dot( appendResult2307_g57735 , float2( 12.9898,78.233 ) );
				float lerpResult2238_g57735 = lerp( 0.8 , ( ( lerpResult3149_g57735 / 2.0 ) + 0.9 ) , frac( ( sin( dotResult2341_g57735 ) * 43758.55 ) ));
				float _WIND_RANDOM_OFFSET2244_g57735 = ( ( _TimeParameters.x * 0.05 ) * lerpResult2238_g57735 );
				float _WIND_TUBULENCE_RANDOM2274_g57735 = ( sin( ( ( _WIND_RANDOM_OFFSET2244_g57735 * 40.0 ) - ( VERTEX_POSITION_MATRIX2352_g57735.z / 15.0 ) ) ) * 0.5 );
				float GlobalWindPulse3177_g57735 = _GlobalWindPulse;
				float lerpResult3152_g57735 = lerp( GlobalWindPulse3177_g57735 , _WindLocalPulseFrequency , WIND_MODE2462_g57735);
				float _WIND_PULSE2421_g57735 = lerpResult3152_g57735;
				float FUNC_Angle2470_g57735 = ( _WIND_STRENGHT2400_g57735 * ( 1.0 + sin( ( ( ( ( _WIND_RANDOM_OFFSET2244_g57735 * 2.0 ) + _WIND_TUBULENCE_RANDOM2274_g57735 ) - ( VERTEX_POSITION_MATRIX2352_g57735.z / 50.0 ) ) - ( v.ase_color.r / 20.0 ) ) ) ) * sqrt( v.ase_color.r ) * _WIND_PULSE2421_g57735 );
				float FUNC_Angle_SinA2424_g57735 = sin( FUNC_Angle2470_g57735 );
				float FUNC_Angle_CosA2362_g57735 = cos( FUNC_Angle2470_g57735 );
				float GlobalWindDirection3175_g57735 = _GlobalWindDirection;
				float lerpResult3150_g57735 = lerp( GlobalWindDirection3175_g57735 , _WindLocalDirection , WIND_MODE2462_g57735);
				float _WindDirection2249_g57735 = lerpResult3150_g57735;
				float2 localDirectionalEquation2249_g57735 = DirectionalEquation( _WindDirection2249_g57735 );
				float2 break2469_g57735 = localDirectionalEquation2249_g57735;
				float _WIND_DIRECTION_X2418_g57735 = break2469_g57735.x;
				float lerpResult2258_g57735 = lerp( break2265_g57735.x , ( ( break2265_g57735.y * FUNC_Angle_SinA2424_g57735 ) + ( break2265_g57735.x * FUNC_Angle_CosA2362_g57735 ) ) , _WIND_DIRECTION_X2418_g57735);
				float3 break2340_g57735 = VERTEX_POSITION_MATRIX2352_g57735;
				float3 break2233_g57735 = VERTEX_POSITION_MATRIX2352_g57735;
				float _WIND_DIRECTION_Y2416_g57735 = break2469_g57735.y;
				float lerpResult2275_g57735 = lerp( break2233_g57735.z , ( ( break2233_g57735.y * FUNC_Angle_SinA2424_g57735 ) + ( break2233_g57735.z * FUNC_Angle_CosA2362_g57735 ) ) , _WIND_DIRECTION_Y2416_g57735);
				float3 appendResult2235_g57735 = (float3(lerpResult2258_g57735 , ( ( break2340_g57735.y * FUNC_Angle_CosA2362_g57735 ) - ( break2340_g57735.z * FUNC_Angle_SinA2424_g57735 ) ) , lerpResult2275_g57735));
				float3 VERTEX_POSITION_Neg3006_g57735 = appendResult2235_g57735;
				float GlobalWindBillboardEnabled3180_g57735 = _GlobalWindBillboardEnabled;
				float3 lerpResult3153_g57735 = lerp( float3(0,0,0) , ( VERTEX_POSITION_Neg3006_g57735 - VERTEX_POSITION_MATRIX2352_g57735 ) , GlobalWindBillboardEnabled3180_g57735);
				float3 VERTEX_POSITION2282_g57735 = ( mul( GetWorldToObjectMatrix(), float4( appendResult2235_g57735 , 0.0 ) ).xyz - v.vertex.xyz );
				float3 lerpResult3146_g57735 = lerp( lerpResult3153_g57735 , VERTEX_POSITION2282_g57735 , _WindEnableMode);
				float WindEnable3144_g57735 = _WindEnable;
				float3 lerpResult3143_g57735 = lerp( VERTEX_POSITION_MATRIX2352_g57735 , lerpResult3146_g57735 , WindEnable3144_g57735);
				float3 lerpResult3142_g57735 = lerp( float3(0,0,0) , lerpResult3143_g57735 , ( _WindEnable + ( ( _CATEGORY_WIND + _SPACE_WIND ) * 0.0 ) ));
				float3 temp_output_457_0_g44961 = lerpResult3142_g57735;
				{
				v.vertex.xyz += temp_output_457_0_g44961;
				}
				
				float2 Offset235_g57733 = (_MainUVs).zw;
				float2 temp_output_41_0_g57733 = ( ( v.ase_texcoord.xy * (_MainUVs).xy ) + Offset235_g57733 );
				float2 vertexToFrag70_g57733 = temp_output_41_0_g57733;
				o.ase_texcoord2.xy = vertexToFrag70_g57733;
				
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord2.zw = 0;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.vertex.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif

				float3 vertexValue = localBillboard721_g44961;

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
				float4 ase_tangent : TANGENT;
				float4 ase_color : COLOR;
				float4 ase_texcoord : TEXCOORD0;

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
				o.ase_color = v.ase_color;
				o.ase_texcoord = v.ase_texcoord;
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
				o.ase_color = patch[0].ase_color * bary.x + patch[1].ase_color * bary.y + patch[2].ase_color * bary.z;
				o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
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

				float2 vertexToFrag70_g57733 = IN.ase_texcoord2.xy;
				float4 tex2DNode3_g44961 = SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, vertexToFrag70_g57733 );
				float3 temp_output_28_0_g44961 = ( (_BaseColor).rgb * (tex2DNode3_g44961).rgb * _Brightness );
				
				float temp_output_22_0_g57718 = tex2DNode3_g44961.a;
				float3 normalizeResult79_g57723 = normalize( cross( ddy( WorldPosition ) , ddx( WorldPosition ) ) );
				float3 ase_worldViewDir = ( _WorldSpaceCameraPos.xyz - WorldPosition );
				ase_worldViewDir = SafeNormalize( ase_worldViewDir );
				float dotResult74_g57718 = dot( normalizeResult79_g57723 , ase_worldViewDir );
				float lerpResult80_g57718 = lerp( 1.0 , ( 1.0 - ( ( 1.0 - abs( dotResult74_g57718 ) ) * ( 1.0 - abs( dotResult74_g57718 ) ) ) ) , ( _GlancingClipMode + ( ( _CATEGORY_ALPHACLIPPING + _SPACE_ALPHACLIP ) * 0.0 ) ));
				float temp_output_98_0_g57718 = ( ( (0.0 + (( 1.0 - temp_output_22_0_g57718 ) - 0.0) * (( _AlphaRemapMin + ( _AlphaRemap.x * 0.0 ) ) - 0.0) / (1.0 - 0.0)) + (0.0 + (temp_output_22_0_g57718 - 0.0) * (_AlphaRemapMax - 0.0) / (1.0 - 0.0)) ) * lerpResult80_g57718 );
				

				float3 BaseColor = temp_output_28_0_g44961;
				float Alpha = temp_output_98_0_g57718;
				float AlphaClipThreshold = _AlphaCutoffBias;

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
			#define _ALPHATEST_SHADOW_ON 1
			#define _ALPHATEST_ON 1
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

			#define ASE_NEEDS_VERT_POSITION
			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_VERT_TANGENT
			#define ASE_NEEDS_FRAG_WORLD_POSITION


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
				float4 ase_color : COLOR;
				float4 ase_texcoord : TEXCOORD0;
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
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			half4 _SmoothnessStrength;
			float4 _AlphaRemap;
			float4 _MainUVs;
			half4 _BaseColor;
			half4 _OcclusionStrengthAO;
			float _CATEGORY_SMOOTHNESS;
			float _SPACE_SMOOTHNESS;
			half _SmoothnessFresnelScale;
			half _SmoothnessFresnelPower;
			half _SmoothnessFresnelEnable;
			half _OcclusionStrengthAORemapMin;
			half _OcclusionStrengthAORemapMax;
			float _CATEGORY_OCCLUSION;
			float _SPACE_OCCLUSION;
			half _OcclusionSourceBaked;
			float _AlphaRemapMin;
			float _AlphaRemapMax;
			half _GlancingClipMode;
			float _CATEGORY_ALPHACLIPPING;
			float _SPACE_ALPHACLIP;
			half _AlphaCutoffBias;
			half _AlphaCutoffBiasShadow;
			half _SmoothnessStrengthRemapMax;
			int _Cull;
			half _SmoothnessStrengthRemapMin;
			float _SPACE_METALLIC;
			float _SPACE_SURFACEOPTIONS;
			float _CATEGORY_SURFACEOPTIONS;
			float _SPACE_SURFACEINPUTS;
			float _CATEGORY_SURFACEINPUTS;
			half _WindGlobalIntensity;
			half _WindLocalIntensity;
			half _WindEnableMode;
			half _WindLocalRandomOffset;
			float _CATEGORY_SHADOW;
			half _WindLocalPulseFrequency;
			half _WindEnable;
			float _CATEGORY_WIND;
			float _SPACE_WIND;
			half _Brightness;
			half _NormalStrength;
			half _DoubleSidedNormalMode;
			float _MetallicStrength;
			float _CATEGORY_METALLIC;
			half _WindLocalDirection;
			float _SPACE_SHADOW;
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

			float _GlobalWindBillboardIntensity;
			float _GlobalWindIntensity;
			float _GlobalWindRandomOffset;
			float _GlobalWindPulse;
			float _GlobalWindDirection;
			float _GlobalWindBillboardEnabled;
			TEXTURE2D(_BumpMap);
			SAMPLER(sampler_BumpMap);
			TEXTURE2D(_MainTex);
			SAMPLER(sampler_MainTex);


			//#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/Varyings.hlsl"
			//#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/DepthNormalsOnlyPass.hlsl"

			//#ifdef HAVE_VFX_MODIFICATION
			//#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/VisualEffectVertex.hlsl"
			//#endif

			float4 mod289( float4 x )
			{
				return x - floor(x * (1.0 / 289.0)) * 289.0;
			}
			
			float4 perm( float4 x )
			{
				return mod289(((x * 34.0) + 1.0) * x);
			}
			
			float SimpleNoise3D( float3 p )
			{
				 float3 a = floor(p);
				    float3 d = p - a;
				    d = d * d * (3.0 - 2.0 * d);
				 float4 b = a.xxyy + float4(0.0, 1.0, 0.0, 1.0);
				    float4 k1 = perm(b.xyxy);
				 float4 k2 = perm(k1.xyxy + b.zzww);
				    float4 c = k2 + a.zzzz;
				    float4 k3 = perm(c);
				    float4 k4 = perm(c + 1.0);
				    float4 o1 = frac(k3 * (1.0 / 41.0));
				 float4 o2 = frac(k4 * (1.0 / 41.0));
				    float4 o3 = o2 * d.z + o1 * (1.0 - d.z);
				    float2 o4 = o3.yw * d.x + o3.xz * (1.0 - d.x);
				    return o4.y * d.y + o4.x * (1.0 - d.y);
			}
			
			float2 DirectionalEquation( float _WindDirection )
			{
				float d = _WindDirection * 0.0174532924;
				float xL = cos(d) + 1 / 2;
				float zL = sin(d) + 1 / 2;
				return float2(zL,xL);
			}
			
			float3 _NormalModefloat3switch( float m_switch, float3 m_Flip, float3 m_Mirror, float3 m_None )
			{
				if(m_switch ==0)
					return m_Flip;
				else if(m_switch ==1)
					return m_Mirror;
				else if(m_switch ==2)
					return m_None;
				else
				return float3(0,0,0);
			}
			

			VertexOutput VertexFunction( VertexInput v  )
			{
				VertexOutput o = (VertexOutput)0;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				//Calculate new billboard vertex position and normal;
				float3 upCamVec = float3( 0, 1, 0 );
				float3 forwardCamVec = -normalize ( UNITY_MATRIX_V._m20_m21_m22 );
				float3 rightCamVec = normalize( UNITY_MATRIX_V._m00_m01_m02 );
				float4x4 rotationCamMatrix = float4x4( rightCamVec, 0, upCamVec, 0, forwardCamVec, 0, 0, 0, 0, 1 );
				v.ase_normal = normalize( mul( float4( v.ase_normal , 0 ), rotationCamMatrix )).xyz;
				v.ase_tangent.xyz = normalize( mul( float4( v.ase_tangent.xyz , 0 ), rotationCamMatrix )).xyz;
				//This unfortunately must be made to take non-uniform scaling into account;
				//Transform to world coords, apply rotation and transform back to local;
				v.vertex = mul( v.vertex , unity_ObjectToWorld );
				v.vertex = mul( v.vertex , rotationCamMatrix );
				v.vertex = mul( v.vertex , unity_WorldToObject );
				float3 localBillboard721_g44961 = ( 0 );
				float3 VERTEX_POSITION_MATRIX2352_g57735 = mul( GetObjectToWorldMatrix(), float4( v.vertex.xyz , 0.0 ) ).xyz;
				float3 break2265_g57735 = VERTEX_POSITION_MATRIX2352_g57735;
				float GlobalWindBillboardIntensity3181_g57735 = _GlobalWindBillboardIntensity;
				float GlobalWindIntensity3173_g57735 = _GlobalWindIntensity;
				float WIND_MODE2462_g57735 = _WindEnableMode;
				float lerpResult3148_g57735 = lerp( ( ( _WindGlobalIntensity * GlobalWindBillboardIntensity3181_g57735 ) * GlobalWindIntensity3173_g57735 ) , _WindLocalIntensity , WIND_MODE2462_g57735);
				float _WIND_STRENGHT2400_g57735 = lerpResult3148_g57735;
				float GlobalWindRandomOffset3174_g57735 = _GlobalWindRandomOffset;
				float lerpResult3149_g57735 = lerp( GlobalWindRandomOffset3174_g57735 , _WindLocalRandomOffset , WIND_MODE2462_g57735);
				float4 transform3073_g57735 = mul(GetObjectToWorldMatrix(),float4( 0,0,0,1 ));
				float2 appendResult2307_g57735 = (float2(transform3073_g57735.x , transform3073_g57735.z));
				float dotResult2341_g57735 = dot( appendResult2307_g57735 , float2( 12.9898,78.233 ) );
				float lerpResult2238_g57735 = lerp( 0.8 , ( ( lerpResult3149_g57735 / 2.0 ) + 0.9 ) , frac( ( sin( dotResult2341_g57735 ) * 43758.55 ) ));
				float _WIND_RANDOM_OFFSET2244_g57735 = ( ( _TimeParameters.x * 0.05 ) * lerpResult2238_g57735 );
				float _WIND_TUBULENCE_RANDOM2274_g57735 = ( sin( ( ( _WIND_RANDOM_OFFSET2244_g57735 * 40.0 ) - ( VERTEX_POSITION_MATRIX2352_g57735.z / 15.0 ) ) ) * 0.5 );
				float GlobalWindPulse3177_g57735 = _GlobalWindPulse;
				float lerpResult3152_g57735 = lerp( GlobalWindPulse3177_g57735 , _WindLocalPulseFrequency , WIND_MODE2462_g57735);
				float _WIND_PULSE2421_g57735 = lerpResult3152_g57735;
				float FUNC_Angle2470_g57735 = ( _WIND_STRENGHT2400_g57735 * ( 1.0 + sin( ( ( ( ( _WIND_RANDOM_OFFSET2244_g57735 * 2.0 ) + _WIND_TUBULENCE_RANDOM2274_g57735 ) - ( VERTEX_POSITION_MATRIX2352_g57735.z / 50.0 ) ) - ( v.ase_color.r / 20.0 ) ) ) ) * sqrt( v.ase_color.r ) * _WIND_PULSE2421_g57735 );
				float FUNC_Angle_SinA2424_g57735 = sin( FUNC_Angle2470_g57735 );
				float FUNC_Angle_CosA2362_g57735 = cos( FUNC_Angle2470_g57735 );
				float GlobalWindDirection3175_g57735 = _GlobalWindDirection;
				float lerpResult3150_g57735 = lerp( GlobalWindDirection3175_g57735 , _WindLocalDirection , WIND_MODE2462_g57735);
				float _WindDirection2249_g57735 = lerpResult3150_g57735;
				float2 localDirectionalEquation2249_g57735 = DirectionalEquation( _WindDirection2249_g57735 );
				float2 break2469_g57735 = localDirectionalEquation2249_g57735;
				float _WIND_DIRECTION_X2418_g57735 = break2469_g57735.x;
				float lerpResult2258_g57735 = lerp( break2265_g57735.x , ( ( break2265_g57735.y * FUNC_Angle_SinA2424_g57735 ) + ( break2265_g57735.x * FUNC_Angle_CosA2362_g57735 ) ) , _WIND_DIRECTION_X2418_g57735);
				float3 break2340_g57735 = VERTEX_POSITION_MATRIX2352_g57735;
				float3 break2233_g57735 = VERTEX_POSITION_MATRIX2352_g57735;
				float _WIND_DIRECTION_Y2416_g57735 = break2469_g57735.y;
				float lerpResult2275_g57735 = lerp( break2233_g57735.z , ( ( break2233_g57735.y * FUNC_Angle_SinA2424_g57735 ) + ( break2233_g57735.z * FUNC_Angle_CosA2362_g57735 ) ) , _WIND_DIRECTION_Y2416_g57735);
				float3 appendResult2235_g57735 = (float3(lerpResult2258_g57735 , ( ( break2340_g57735.y * FUNC_Angle_CosA2362_g57735 ) - ( break2340_g57735.z * FUNC_Angle_SinA2424_g57735 ) ) , lerpResult2275_g57735));
				float3 VERTEX_POSITION_Neg3006_g57735 = appendResult2235_g57735;
				float GlobalWindBillboardEnabled3180_g57735 = _GlobalWindBillboardEnabled;
				float3 lerpResult3153_g57735 = lerp( float3(0,0,0) , ( VERTEX_POSITION_Neg3006_g57735 - VERTEX_POSITION_MATRIX2352_g57735 ) , GlobalWindBillboardEnabled3180_g57735);
				float3 VERTEX_POSITION2282_g57735 = ( mul( GetWorldToObjectMatrix(), float4( appendResult2235_g57735 , 0.0 ) ).xyz - v.vertex.xyz );
				float3 lerpResult3146_g57735 = lerp( lerpResult3153_g57735 , VERTEX_POSITION2282_g57735 , _WindEnableMode);
				float WindEnable3144_g57735 = _WindEnable;
				float3 lerpResult3143_g57735 = lerp( VERTEX_POSITION_MATRIX2352_g57735 , lerpResult3146_g57735 , WindEnable3144_g57735);
				float3 lerpResult3142_g57735 = lerp( float3(0,0,0) , lerpResult3143_g57735 , ( _WindEnable + ( ( _CATEGORY_WIND + _SPACE_WIND ) * 0.0 ) ));
				float3 temp_output_457_0_g44961 = lerpResult3142_g57735;
				{
				v.vertex.xyz += temp_output_457_0_g44961;
				}
				
				float2 Offset235_g57733 = (_MainUVs).zw;
				float2 temp_output_41_0_g57733 = ( ( v.ase_texcoord.xy * (_MainUVs).xy ) + Offset235_g57733 );
				float2 vertexToFrag70_g57733 = temp_output_41_0_g57733;
				o.ase_texcoord5.xy = vertexToFrag70_g57733;
				
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord5.zw = 0;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.vertex.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif

				float3 vertexValue = localBillboard721_g44961;

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
				float4 ase_color : COLOR;
				float4 ase_texcoord : TEXCOORD0;

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
				o.ase_color = v.ase_color;
				o.ase_texcoord = v.ase_texcoord;
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
				o.ase_color = patch[0].ase_color * bary.x + patch[1].ase_color * bary.y + patch[2].ase_color * bary.z;
				o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
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
						, bool ase_vface : SV_IsFrontFace ) : SV_TARGET
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

				float2 vertexToFrag70_g57733 = IN.ase_texcoord5.xy;
				float3 unpack748_g44961 = UnpackNormalScale( SAMPLE_TEXTURE2D( _BumpMap, sampler_BumpMap, vertexToFrag70_g57733 ), _NormalStrength );
				unpack748_g44961.z = lerp( 1, unpack748_g44961.z, saturate(_NormalStrength) );
				float3 worldToViewDir560_g44961 = normalize( mul( UNITY_MATRIX_V, float4( SafeNormalize(_MainLightPosition.xyz), 0 ) ).xyz );
				float dotResult307_g44961 = dot( unpack748_g44961 , worldToViewDir560_g44961 );
				float3 appendResult306_g44961 = (float3(dotResult307_g44961 , dotResult307_g44961 , dotResult307_g44961));
				float3 temp_output_304_0_g44961 = ( unpack748_g44961 + saturate( appendResult306_g44961 ) );
				float3 temp_output_24_0_g57378 = temp_output_304_0_g44961;
				float temp_output_50_0_g57378 = _DoubleSidedNormalMode;
				float m_switch64_g57378 = temp_output_50_0_g57378;
				float3 m_Flip64_g57378 = float3(-1,-1,-1);
				float3 m_Mirror64_g57378 = float3(1,1,-1);
				float3 m_None64_g57378 = float3(1,1,1);
				float3 local_NormalModefloat3switch64_g57378 = _NormalModefloat3switch( m_switch64_g57378 , m_Flip64_g57378 , m_Mirror64_g57378 , m_None64_g57378 );
				float3 switchResult58_g57378 = (((ase_vface>0)?(temp_output_24_0_g57378):(( temp_output_24_0_g57378 * local_NormalModefloat3switch64_g57378 ))));
				
				float4 tex2DNode3_g44961 = SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, vertexToFrag70_g57733 );
				float temp_output_22_0_g57718 = tex2DNode3_g44961.a;
				float3 normalizeResult79_g57723 = normalize( cross( ddy( WorldPosition ) , ddx( WorldPosition ) ) );
				float3 ase_worldViewDir = ( _WorldSpaceCameraPos.xyz - WorldPosition );
				ase_worldViewDir = SafeNormalize( ase_worldViewDir );
				float dotResult74_g57718 = dot( normalizeResult79_g57723 , ase_worldViewDir );
				float lerpResult80_g57718 = lerp( 1.0 , ( 1.0 - ( ( 1.0 - abs( dotResult74_g57718 ) ) * ( 1.0 - abs( dotResult74_g57718 ) ) ) ) , ( _GlancingClipMode + ( ( _CATEGORY_ALPHACLIPPING + _SPACE_ALPHACLIP ) * 0.0 ) ));
				float temp_output_98_0_g57718 = ( ( (0.0 + (( 1.0 - temp_output_22_0_g57718 ) - 0.0) * (( _AlphaRemapMin + ( _AlphaRemap.x * 0.0 ) ) - 0.0) / (1.0 - 0.0)) + (0.0 + (temp_output_22_0_g57718 - 0.0) * (_AlphaRemapMax - 0.0) / (1.0 - 0.0)) ) * lerpResult80_g57718 );
				

				float3 Normal = switchResult58_g57378;
				float Alpha = temp_output_98_0_g57718;
				float AlphaClipThreshold = _AlphaCutoffBias;
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
			#define _ALPHATEST_SHADOW_ON 1
			#define _ALPHATEST_ON 1
			#define _NORMALMAP 1
			#define ASE_SRP_VERSION 120112
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

			#define ASE_NEEDS_VERT_POSITION
			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_VERT_TANGENT
			#define ASE_NEEDS_FRAG_WORLD_VIEW_DIR
			#define ASE_NEEDS_FRAG_WORLD_TANGENT
			#define ASE_NEEDS_FRAG_WORLD_BITANGENT
			#define ASE_NEEDS_FRAG_WORLD_NORMAL
			#define ASE_NEEDS_FRAG_WORLD_POSITION


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
				float4 ase_color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			half4 _SmoothnessStrength;
			float4 _AlphaRemap;
			float4 _MainUVs;
			half4 _BaseColor;
			half4 _OcclusionStrengthAO;
			float _CATEGORY_SMOOTHNESS;
			float _SPACE_SMOOTHNESS;
			half _SmoothnessFresnelScale;
			half _SmoothnessFresnelPower;
			half _SmoothnessFresnelEnable;
			half _OcclusionStrengthAORemapMin;
			half _OcclusionStrengthAORemapMax;
			float _CATEGORY_OCCLUSION;
			float _SPACE_OCCLUSION;
			half _OcclusionSourceBaked;
			float _AlphaRemapMin;
			float _AlphaRemapMax;
			half _GlancingClipMode;
			float _CATEGORY_ALPHACLIPPING;
			float _SPACE_ALPHACLIP;
			half _AlphaCutoffBias;
			half _AlphaCutoffBiasShadow;
			half _SmoothnessStrengthRemapMax;
			int _Cull;
			half _SmoothnessStrengthRemapMin;
			float _SPACE_METALLIC;
			float _SPACE_SURFACEOPTIONS;
			float _CATEGORY_SURFACEOPTIONS;
			float _SPACE_SURFACEINPUTS;
			float _CATEGORY_SURFACEINPUTS;
			half _WindGlobalIntensity;
			half _WindLocalIntensity;
			half _WindEnableMode;
			half _WindLocalRandomOffset;
			float _CATEGORY_SHADOW;
			half _WindLocalPulseFrequency;
			half _WindEnable;
			float _CATEGORY_WIND;
			float _SPACE_WIND;
			half _Brightness;
			half _NormalStrength;
			half _DoubleSidedNormalMode;
			float _MetallicStrength;
			float _CATEGORY_METALLIC;
			half _WindLocalDirection;
			float _SPACE_SHADOW;
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

			float _GlobalWindBillboardIntensity;
			float _GlobalWindIntensity;
			float _GlobalWindRandomOffset;
			float _GlobalWindPulse;
			float _GlobalWindDirection;
			float _GlobalWindBillboardEnabled;
			TEXTURE2D(_MainTex);
			SAMPLER(sampler_MainTex);
			TEXTURE2D(_BumpMap);
			SAMPLER(sampler_BumpMap);


			//#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/Varyings.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/UnityGBuffer.hlsl"
			//#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/PBRGBufferPass.hlsl"

			float4 mod289( float4 x )
			{
				return x - floor(x * (1.0 / 289.0)) * 289.0;
			}
			
			float4 perm( float4 x )
			{
				return mod289(((x * 34.0) + 1.0) * x);
			}
			
			float SimpleNoise3D( float3 p )
			{
				 float3 a = floor(p);
				    float3 d = p - a;
				    d = d * d * (3.0 - 2.0 * d);
				 float4 b = a.xxyy + float4(0.0, 1.0, 0.0, 1.0);
				    float4 k1 = perm(b.xyxy);
				 float4 k2 = perm(k1.xyxy + b.zzww);
				    float4 c = k2 + a.zzzz;
				    float4 k3 = perm(c);
				    float4 k4 = perm(c + 1.0);
				    float4 o1 = frac(k3 * (1.0 / 41.0));
				 float4 o2 = frac(k4 * (1.0 / 41.0));
				    float4 o3 = o2 * d.z + o1 * (1.0 - d.z);
				    float2 o4 = o3.yw * d.x + o3.xz * (1.0 - d.x);
				    return o4.y * d.y + o4.x * (1.0 - d.y);
			}
			
			float2 DirectionalEquation( float _WindDirection )
			{
				float d = _WindDirection * 0.0174532924;
				float xL = cos(d) + 1 / 2;
				float zL = sin(d) + 1 / 2;
				return float2(zL,xL);
			}
			
			float3 _NormalModefloat3switch( float m_switch, float3 m_Flip, float3 m_Mirror, float3 m_None )
			{
				if(m_switch ==0)
					return m_Flip;
				else if(m_switch ==1)
					return m_Mirror;
				else if(m_switch ==2)
					return m_None;
				else
				return float3(0,0,0);
			}
			

			VertexOutput VertexFunction( VertexInput v  )
			{
				VertexOutput o = (VertexOutput)0;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				//Calculate new billboard vertex position and normal;
				float3 upCamVec = float3( 0, 1, 0 );
				float3 forwardCamVec = -normalize ( UNITY_MATRIX_V._m20_m21_m22 );
				float3 rightCamVec = normalize( UNITY_MATRIX_V._m00_m01_m02 );
				float4x4 rotationCamMatrix = float4x4( rightCamVec, 0, upCamVec, 0, forwardCamVec, 0, 0, 0, 0, 1 );
				v.ase_normal = normalize( mul( float4( v.ase_normal , 0 ), rotationCamMatrix )).xyz;
				v.ase_tangent.xyz = normalize( mul( float4( v.ase_tangent.xyz , 0 ), rotationCamMatrix )).xyz;
				//This unfortunately must be made to take non-uniform scaling into account;
				//Transform to world coords, apply rotation and transform back to local;
				v.vertex = mul( v.vertex , unity_ObjectToWorld );
				v.vertex = mul( v.vertex , rotationCamMatrix );
				v.vertex = mul( v.vertex , unity_WorldToObject );
				float3 localBillboard721_g44961 = ( 0 );
				float3 VERTEX_POSITION_MATRIX2352_g57735 = mul( GetObjectToWorldMatrix(), float4( v.vertex.xyz , 0.0 ) ).xyz;
				float3 break2265_g57735 = VERTEX_POSITION_MATRIX2352_g57735;
				float GlobalWindBillboardIntensity3181_g57735 = _GlobalWindBillboardIntensity;
				float GlobalWindIntensity3173_g57735 = _GlobalWindIntensity;
				float WIND_MODE2462_g57735 = _WindEnableMode;
				float lerpResult3148_g57735 = lerp( ( ( _WindGlobalIntensity * GlobalWindBillboardIntensity3181_g57735 ) * GlobalWindIntensity3173_g57735 ) , _WindLocalIntensity , WIND_MODE2462_g57735);
				float _WIND_STRENGHT2400_g57735 = lerpResult3148_g57735;
				float GlobalWindRandomOffset3174_g57735 = _GlobalWindRandomOffset;
				float lerpResult3149_g57735 = lerp( GlobalWindRandomOffset3174_g57735 , _WindLocalRandomOffset , WIND_MODE2462_g57735);
				float4 transform3073_g57735 = mul(GetObjectToWorldMatrix(),float4( 0,0,0,1 ));
				float2 appendResult2307_g57735 = (float2(transform3073_g57735.x , transform3073_g57735.z));
				float dotResult2341_g57735 = dot( appendResult2307_g57735 , float2( 12.9898,78.233 ) );
				float lerpResult2238_g57735 = lerp( 0.8 , ( ( lerpResult3149_g57735 / 2.0 ) + 0.9 ) , frac( ( sin( dotResult2341_g57735 ) * 43758.55 ) ));
				float _WIND_RANDOM_OFFSET2244_g57735 = ( ( _TimeParameters.x * 0.05 ) * lerpResult2238_g57735 );
				float _WIND_TUBULENCE_RANDOM2274_g57735 = ( sin( ( ( _WIND_RANDOM_OFFSET2244_g57735 * 40.0 ) - ( VERTEX_POSITION_MATRIX2352_g57735.z / 15.0 ) ) ) * 0.5 );
				float GlobalWindPulse3177_g57735 = _GlobalWindPulse;
				float lerpResult3152_g57735 = lerp( GlobalWindPulse3177_g57735 , _WindLocalPulseFrequency , WIND_MODE2462_g57735);
				float _WIND_PULSE2421_g57735 = lerpResult3152_g57735;
				float FUNC_Angle2470_g57735 = ( _WIND_STRENGHT2400_g57735 * ( 1.0 + sin( ( ( ( ( _WIND_RANDOM_OFFSET2244_g57735 * 2.0 ) + _WIND_TUBULENCE_RANDOM2274_g57735 ) - ( VERTEX_POSITION_MATRIX2352_g57735.z / 50.0 ) ) - ( v.ase_color.r / 20.0 ) ) ) ) * sqrt( v.ase_color.r ) * _WIND_PULSE2421_g57735 );
				float FUNC_Angle_SinA2424_g57735 = sin( FUNC_Angle2470_g57735 );
				float FUNC_Angle_CosA2362_g57735 = cos( FUNC_Angle2470_g57735 );
				float GlobalWindDirection3175_g57735 = _GlobalWindDirection;
				float lerpResult3150_g57735 = lerp( GlobalWindDirection3175_g57735 , _WindLocalDirection , WIND_MODE2462_g57735);
				float _WindDirection2249_g57735 = lerpResult3150_g57735;
				float2 localDirectionalEquation2249_g57735 = DirectionalEquation( _WindDirection2249_g57735 );
				float2 break2469_g57735 = localDirectionalEquation2249_g57735;
				float _WIND_DIRECTION_X2418_g57735 = break2469_g57735.x;
				float lerpResult2258_g57735 = lerp( break2265_g57735.x , ( ( break2265_g57735.y * FUNC_Angle_SinA2424_g57735 ) + ( break2265_g57735.x * FUNC_Angle_CosA2362_g57735 ) ) , _WIND_DIRECTION_X2418_g57735);
				float3 break2340_g57735 = VERTEX_POSITION_MATRIX2352_g57735;
				float3 break2233_g57735 = VERTEX_POSITION_MATRIX2352_g57735;
				float _WIND_DIRECTION_Y2416_g57735 = break2469_g57735.y;
				float lerpResult2275_g57735 = lerp( break2233_g57735.z , ( ( break2233_g57735.y * FUNC_Angle_SinA2424_g57735 ) + ( break2233_g57735.z * FUNC_Angle_CosA2362_g57735 ) ) , _WIND_DIRECTION_Y2416_g57735);
				float3 appendResult2235_g57735 = (float3(lerpResult2258_g57735 , ( ( break2340_g57735.y * FUNC_Angle_CosA2362_g57735 ) - ( break2340_g57735.z * FUNC_Angle_SinA2424_g57735 ) ) , lerpResult2275_g57735));
				float3 VERTEX_POSITION_Neg3006_g57735 = appendResult2235_g57735;
				float GlobalWindBillboardEnabled3180_g57735 = _GlobalWindBillboardEnabled;
				float3 lerpResult3153_g57735 = lerp( float3(0,0,0) , ( VERTEX_POSITION_Neg3006_g57735 - VERTEX_POSITION_MATRIX2352_g57735 ) , GlobalWindBillboardEnabled3180_g57735);
				float3 VERTEX_POSITION2282_g57735 = ( mul( GetWorldToObjectMatrix(), float4( appendResult2235_g57735 , 0.0 ) ).xyz - v.vertex.xyz );
				float3 lerpResult3146_g57735 = lerp( lerpResult3153_g57735 , VERTEX_POSITION2282_g57735 , _WindEnableMode);
				float WindEnable3144_g57735 = _WindEnable;
				float3 lerpResult3143_g57735 = lerp( VERTEX_POSITION_MATRIX2352_g57735 , lerpResult3146_g57735 , WindEnable3144_g57735);
				float3 lerpResult3142_g57735 = lerp( float3(0,0,0) , lerpResult3143_g57735 , ( _WindEnable + ( ( _CATEGORY_WIND + _SPACE_WIND ) * 0.0 ) ));
				float3 temp_output_457_0_g44961 = lerpResult3142_g57735;
				{
				v.vertex.xyz += temp_output_457_0_g44961;
				}
				
				float2 Offset235_g57733 = (_MainUVs).zw;
				float2 temp_output_41_0_g57733 = ( ( v.texcoord.xy * (_MainUVs).xy ) + Offset235_g57733 );
				float2 vertexToFrag70_g57733 = temp_output_41_0_g57733;
				o.ase_texcoord8.xy = vertexToFrag70_g57733;
				
				o.ase_color = v.ase_color;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord8.zw = 0;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.vertex.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif

				float3 vertexValue = localBillboard721_g44961;

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
								, bool ase_vface : SV_IsFrontFace )
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

				float2 vertexToFrag70_g57733 = IN.ase_texcoord8.xy;
				float4 tex2DNode3_g44961 = SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, vertexToFrag70_g57733 );
				float3 temp_output_28_0_g44961 = ( (_BaseColor).rgb * (tex2DNode3_g44961).rgb * _Brightness );
				
				float3 unpack748_g44961 = UnpackNormalScale( SAMPLE_TEXTURE2D( _BumpMap, sampler_BumpMap, vertexToFrag70_g57733 ), _NormalStrength );
				unpack748_g44961.z = lerp( 1, unpack748_g44961.z, saturate(_NormalStrength) );
				float3 worldToViewDir560_g44961 = normalize( mul( UNITY_MATRIX_V, float4( SafeNormalize(_MainLightPosition.xyz), 0 ) ).xyz );
				float dotResult307_g44961 = dot( unpack748_g44961 , worldToViewDir560_g44961 );
				float3 appendResult306_g44961 = (float3(dotResult307_g44961 , dotResult307_g44961 , dotResult307_g44961));
				float3 temp_output_304_0_g44961 = ( unpack748_g44961 + saturate( appendResult306_g44961 ) );
				float3 temp_output_24_0_g57378 = temp_output_304_0_g44961;
				float temp_output_50_0_g57378 = _DoubleSidedNormalMode;
				float m_switch64_g57378 = temp_output_50_0_g57378;
				float3 m_Flip64_g57378 = float3(-1,-1,-1);
				float3 m_Mirror64_g57378 = float3(1,1,-1);
				float3 m_None64_g57378 = float3(1,1,1);
				float3 local_NormalModefloat3switch64_g57378 = _NormalModefloat3switch( m_switch64_g57378 , m_Flip64_g57378 , m_Mirror64_g57378 , m_None64_g57378 );
				float3 switchResult58_g57378 = (((ase_vface>0)?(temp_output_24_0_g57378):(( temp_output_24_0_g57378 * local_NormalModefloat3switch64_g57378 ))));
				
				float lerpResult362_g57728 = lerp( ( _SmoothnessStrengthRemapMin + ( _SmoothnessStrength.x * 0.0 ) ) , ( _SmoothnessStrengthRemapMax + ( ( _CATEGORY_SMOOTHNESS + _SPACE_SMOOTHNESS ) * 0.0 ) ) , 0.0);
				float2 appendResult368_g57728 = (float2(WorldViewDirection.xy));
				float3 appendResult367_g57728 = (float3(appendResult368_g57728 , ( WorldViewDirection.z / 1.06 )));
				float3 temp_output_263_0_g57728 = temp_output_304_0_g44961;
				float3 normalizeResult310_g57728 = normalize( ( ( WorldTangent * temp_output_263_0_g57728.x ) + ( WorldBiTangent * temp_output_263_0_g57728.y ) + ( WorldNormal * temp_output_263_0_g57728.z ) ) );
				float fresnelNdotV309_g57728 = dot( normalize( normalizeResult310_g57728 ), appendResult367_g57728 );
				float fresnelNode309_g57728 = ( 0.0 + ( 1.0 - _SmoothnessFresnelScale ) * pow( max( 1.0 - fresnelNdotV309_g57728 , 0.0001 ), _SmoothnessFresnelPower ) );
				float lerpResult335_g57728 = lerp( lerpResult362_g57728 , ( lerpResult362_g57728 - fresnelNode309_g57728 ) , _SmoothnessFresnelEnable);
				
				float temp_output_185_0_g57724 = ( 1.0 - ( _OcclusionStrengthAORemapMin + ( _OcclusionStrengthAO.x * 0.0 ) ) );
				float temp_output_186_0_g57724 = ( 1.0 - ( _OcclusionStrengthAORemapMax + ( ( _CATEGORY_OCCLUSION + _SPACE_OCCLUSION ) * 0.0 ) ) );
				float lerpResult143_g57724 = lerp( temp_output_185_0_g57724 , temp_output_186_0_g57724 , 0.0);
				float lerpResult75_g57724 = lerp( temp_output_185_0_g57724 , temp_output_186_0_g57724 , IN.ase_color.a);
				float lerpResult73_g57724 = lerp( lerpResult143_g57724 , lerpResult75_g57724 , _OcclusionSourceBaked);
				
				float temp_output_22_0_g57718 = tex2DNode3_g44961.a;
				float3 normalizeResult79_g57723 = normalize( cross( ddy( WorldPosition ) , ddx( WorldPosition ) ) );
				float dotResult74_g57718 = dot( normalizeResult79_g57723 , WorldViewDirection );
				float lerpResult80_g57718 = lerp( 1.0 , ( 1.0 - ( ( 1.0 - abs( dotResult74_g57718 ) ) * ( 1.0 - abs( dotResult74_g57718 ) ) ) ) , ( _GlancingClipMode + ( ( _CATEGORY_ALPHACLIPPING + _SPACE_ALPHACLIP ) * 0.0 ) ));
				float temp_output_98_0_g57718 = ( ( (0.0 + (( 1.0 - temp_output_22_0_g57718 ) - 0.0) * (( _AlphaRemapMin + ( _AlphaRemap.x * 0.0 ) ) - 0.0) / (1.0 - 0.0)) + (0.0 + (temp_output_22_0_g57718 - 0.0) * (_AlphaRemapMax - 0.0) / (1.0 - 0.0)) ) * lerpResult80_g57718 );
				
				float temp_output_77_0_g57712 = ( _AlphaCutoffBiasShadow + ( ( _CATEGORY_SHADOW + _SPACE_SHADOW ) * 0.0 ) );
				

				float3 BaseColor = temp_output_28_0_g44961;
				float3 Normal = switchResult58_g57378;
				float3 Emission = 0;
				float3 Specular = 0.5;
				float Metallic = ( _MetallicStrength + ( ( _CATEGORY_METALLIC + _SPACE_METALLIC ) * 0.0 ) );
				float Smoothness = saturate( lerpResult335_g57728 );
				float Occlusion = saturate( lerpResult73_g57724 );
				float Alpha = temp_output_98_0_g57718;
				float AlphaClipThreshold = _AlphaCutoffBias;
				float AlphaClipThresholdShadow = temp_output_77_0_g57712;
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
			#define _ALPHATEST_SHADOW_ON 1
			#define _ALPHATEST_ON 1
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

			#define ASE_NEEDS_VERT_POSITION
			#define ASE_NEEDS_VERT_NORMAL


			struct VertexInput
			{
				float4 vertex : POSITION;
				float3 ase_normal : NORMAL;
				float4 ase_tangent : TANGENT;
				float4 ase_color : COLOR;
				float4 ase_texcoord : TEXCOORD0;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct VertexOutput
			{
				float4 clipPos : SV_POSITION;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_texcoord1 : TEXCOORD1;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			half4 _SmoothnessStrength;
			float4 _AlphaRemap;
			float4 _MainUVs;
			half4 _BaseColor;
			half4 _OcclusionStrengthAO;
			float _CATEGORY_SMOOTHNESS;
			float _SPACE_SMOOTHNESS;
			half _SmoothnessFresnelScale;
			half _SmoothnessFresnelPower;
			half _SmoothnessFresnelEnable;
			half _OcclusionStrengthAORemapMin;
			half _OcclusionStrengthAORemapMax;
			float _CATEGORY_OCCLUSION;
			float _SPACE_OCCLUSION;
			half _OcclusionSourceBaked;
			float _AlphaRemapMin;
			float _AlphaRemapMax;
			half _GlancingClipMode;
			float _CATEGORY_ALPHACLIPPING;
			float _SPACE_ALPHACLIP;
			half _AlphaCutoffBias;
			half _AlphaCutoffBiasShadow;
			half _SmoothnessStrengthRemapMax;
			int _Cull;
			half _SmoothnessStrengthRemapMin;
			float _SPACE_METALLIC;
			float _SPACE_SURFACEOPTIONS;
			float _CATEGORY_SURFACEOPTIONS;
			float _SPACE_SURFACEINPUTS;
			float _CATEGORY_SURFACEINPUTS;
			half _WindGlobalIntensity;
			half _WindLocalIntensity;
			half _WindEnableMode;
			half _WindLocalRandomOffset;
			float _CATEGORY_SHADOW;
			half _WindLocalPulseFrequency;
			half _WindEnable;
			float _CATEGORY_WIND;
			float _SPACE_WIND;
			half _Brightness;
			half _NormalStrength;
			half _DoubleSidedNormalMode;
			float _MetallicStrength;
			float _CATEGORY_METALLIC;
			half _WindLocalDirection;
			float _SPACE_SHADOW;
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

			float _GlobalWindBillboardIntensity;
			float _GlobalWindIntensity;
			float _GlobalWindRandomOffset;
			float _GlobalWindPulse;
			float _GlobalWindDirection;
			float _GlobalWindBillboardEnabled;
			TEXTURE2D(_MainTex);
			SAMPLER(sampler_MainTex);


			//#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/Varyings.hlsl"
			//#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/SelectionPickingPass.hlsl"

			//#ifdef HAVE_VFX_MODIFICATION
			//#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/VisualEffectVertex.hlsl"
			//#endif

			float4 mod289( float4 x )
			{
				return x - floor(x * (1.0 / 289.0)) * 289.0;
			}
			
			float4 perm( float4 x )
			{
				return mod289(((x * 34.0) + 1.0) * x);
			}
			
			float SimpleNoise3D( float3 p )
			{
				 float3 a = floor(p);
				    float3 d = p - a;
				    d = d * d * (3.0 - 2.0 * d);
				 float4 b = a.xxyy + float4(0.0, 1.0, 0.0, 1.0);
				    float4 k1 = perm(b.xyxy);
				 float4 k2 = perm(k1.xyxy + b.zzww);
				    float4 c = k2 + a.zzzz;
				    float4 k3 = perm(c);
				    float4 k4 = perm(c + 1.0);
				    float4 o1 = frac(k3 * (1.0 / 41.0));
				 float4 o2 = frac(k4 * (1.0 / 41.0));
				    float4 o3 = o2 * d.z + o1 * (1.0 - d.z);
				    float2 o4 = o3.yw * d.x + o3.xz * (1.0 - d.x);
				    return o4.y * d.y + o4.x * (1.0 - d.y);
			}
			
			float2 DirectionalEquation( float _WindDirection )
			{
				float d = _WindDirection * 0.0174532924;
				float xL = cos(d) + 1 / 2;
				float zL = sin(d) + 1 / 2;
				return float2(zL,xL);
			}
			

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

				//Calculate new billboard vertex position and normal;
				float3 upCamVec = float3( 0, 1, 0 );
				float3 forwardCamVec = -normalize ( UNITY_MATRIX_V._m20_m21_m22 );
				float3 rightCamVec = normalize( UNITY_MATRIX_V._m00_m01_m02 );
				float4x4 rotationCamMatrix = float4x4( rightCamVec, 0, upCamVec, 0, forwardCamVec, 0, 0, 0, 0, 1 );
				v.ase_normal = normalize( mul( float4( v.ase_normal , 0 ), rotationCamMatrix )).xyz;
				v.ase_tangent.xyz = normalize( mul( float4( v.ase_tangent.xyz , 0 ), rotationCamMatrix )).xyz;
				//This unfortunately must be made to take non-uniform scaling into account;
				//Transform to world coords, apply rotation and transform back to local;
				v.vertex = mul( v.vertex , unity_ObjectToWorld );
				v.vertex = mul( v.vertex , rotationCamMatrix );
				v.vertex = mul( v.vertex , unity_WorldToObject );
				float3 localBillboard721_g44961 = ( 0 );
				float3 VERTEX_POSITION_MATRIX2352_g57735 = mul( GetObjectToWorldMatrix(), float4( v.vertex.xyz , 0.0 ) ).xyz;
				float3 break2265_g57735 = VERTEX_POSITION_MATRIX2352_g57735;
				float GlobalWindBillboardIntensity3181_g57735 = _GlobalWindBillboardIntensity;
				float GlobalWindIntensity3173_g57735 = _GlobalWindIntensity;
				float WIND_MODE2462_g57735 = _WindEnableMode;
				float lerpResult3148_g57735 = lerp( ( ( _WindGlobalIntensity * GlobalWindBillboardIntensity3181_g57735 ) * GlobalWindIntensity3173_g57735 ) , _WindLocalIntensity , WIND_MODE2462_g57735);
				float _WIND_STRENGHT2400_g57735 = lerpResult3148_g57735;
				float GlobalWindRandomOffset3174_g57735 = _GlobalWindRandomOffset;
				float lerpResult3149_g57735 = lerp( GlobalWindRandomOffset3174_g57735 , _WindLocalRandomOffset , WIND_MODE2462_g57735);
				float4 transform3073_g57735 = mul(GetObjectToWorldMatrix(),float4( 0,0,0,1 ));
				float2 appendResult2307_g57735 = (float2(transform3073_g57735.x , transform3073_g57735.z));
				float dotResult2341_g57735 = dot( appendResult2307_g57735 , float2( 12.9898,78.233 ) );
				float lerpResult2238_g57735 = lerp( 0.8 , ( ( lerpResult3149_g57735 / 2.0 ) + 0.9 ) , frac( ( sin( dotResult2341_g57735 ) * 43758.55 ) ));
				float _WIND_RANDOM_OFFSET2244_g57735 = ( ( _TimeParameters.x * 0.05 ) * lerpResult2238_g57735 );
				float _WIND_TUBULENCE_RANDOM2274_g57735 = ( sin( ( ( _WIND_RANDOM_OFFSET2244_g57735 * 40.0 ) - ( VERTEX_POSITION_MATRIX2352_g57735.z / 15.0 ) ) ) * 0.5 );
				float GlobalWindPulse3177_g57735 = _GlobalWindPulse;
				float lerpResult3152_g57735 = lerp( GlobalWindPulse3177_g57735 , _WindLocalPulseFrequency , WIND_MODE2462_g57735);
				float _WIND_PULSE2421_g57735 = lerpResult3152_g57735;
				float FUNC_Angle2470_g57735 = ( _WIND_STRENGHT2400_g57735 * ( 1.0 + sin( ( ( ( ( _WIND_RANDOM_OFFSET2244_g57735 * 2.0 ) + _WIND_TUBULENCE_RANDOM2274_g57735 ) - ( VERTEX_POSITION_MATRIX2352_g57735.z / 50.0 ) ) - ( v.ase_color.r / 20.0 ) ) ) ) * sqrt( v.ase_color.r ) * _WIND_PULSE2421_g57735 );
				float FUNC_Angle_SinA2424_g57735 = sin( FUNC_Angle2470_g57735 );
				float FUNC_Angle_CosA2362_g57735 = cos( FUNC_Angle2470_g57735 );
				float GlobalWindDirection3175_g57735 = _GlobalWindDirection;
				float lerpResult3150_g57735 = lerp( GlobalWindDirection3175_g57735 , _WindLocalDirection , WIND_MODE2462_g57735);
				float _WindDirection2249_g57735 = lerpResult3150_g57735;
				float2 localDirectionalEquation2249_g57735 = DirectionalEquation( _WindDirection2249_g57735 );
				float2 break2469_g57735 = localDirectionalEquation2249_g57735;
				float _WIND_DIRECTION_X2418_g57735 = break2469_g57735.x;
				float lerpResult2258_g57735 = lerp( break2265_g57735.x , ( ( break2265_g57735.y * FUNC_Angle_SinA2424_g57735 ) + ( break2265_g57735.x * FUNC_Angle_CosA2362_g57735 ) ) , _WIND_DIRECTION_X2418_g57735);
				float3 break2340_g57735 = VERTEX_POSITION_MATRIX2352_g57735;
				float3 break2233_g57735 = VERTEX_POSITION_MATRIX2352_g57735;
				float _WIND_DIRECTION_Y2416_g57735 = break2469_g57735.y;
				float lerpResult2275_g57735 = lerp( break2233_g57735.z , ( ( break2233_g57735.y * FUNC_Angle_SinA2424_g57735 ) + ( break2233_g57735.z * FUNC_Angle_CosA2362_g57735 ) ) , _WIND_DIRECTION_Y2416_g57735);
				float3 appendResult2235_g57735 = (float3(lerpResult2258_g57735 , ( ( break2340_g57735.y * FUNC_Angle_CosA2362_g57735 ) - ( break2340_g57735.z * FUNC_Angle_SinA2424_g57735 ) ) , lerpResult2275_g57735));
				float3 VERTEX_POSITION_Neg3006_g57735 = appendResult2235_g57735;
				float GlobalWindBillboardEnabled3180_g57735 = _GlobalWindBillboardEnabled;
				float3 lerpResult3153_g57735 = lerp( float3(0,0,0) , ( VERTEX_POSITION_Neg3006_g57735 - VERTEX_POSITION_MATRIX2352_g57735 ) , GlobalWindBillboardEnabled3180_g57735);
				float3 VERTEX_POSITION2282_g57735 = ( mul( GetWorldToObjectMatrix(), float4( appendResult2235_g57735 , 0.0 ) ).xyz - v.vertex.xyz );
				float3 lerpResult3146_g57735 = lerp( lerpResult3153_g57735 , VERTEX_POSITION2282_g57735 , _WindEnableMode);
				float WindEnable3144_g57735 = _WindEnable;
				float3 lerpResult3143_g57735 = lerp( VERTEX_POSITION_MATRIX2352_g57735 , lerpResult3146_g57735 , WindEnable3144_g57735);
				float3 lerpResult3142_g57735 = lerp( float3(0,0,0) , lerpResult3143_g57735 , ( _WindEnable + ( ( _CATEGORY_WIND + _SPACE_WIND ) * 0.0 ) ));
				float3 temp_output_457_0_g44961 = lerpResult3142_g57735;
				{
				v.vertex.xyz += temp_output_457_0_g44961;
				}
				
				float2 Offset235_g57733 = (_MainUVs).zw;
				float2 temp_output_41_0_g57733 = ( ( v.ase_texcoord.xy * (_MainUVs).xy ) + Offset235_g57733 );
				float2 vertexToFrag70_g57733 = temp_output_41_0_g57733;
				o.ase_texcoord.xy = vertexToFrag70_g57733;
				float3 ase_worldPos = TransformObjectToWorld( (v.vertex).xyz );
				o.ase_texcoord1.xyz = ase_worldPos;
				
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord.zw = 0;
				o.ase_texcoord1.w = 0;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.vertex.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif

				float3 vertexValue = localBillboard721_g44961;

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
				float4 ase_tangent : TANGENT;
				float4 ase_color : COLOR;
				float4 ase_texcoord : TEXCOORD0;

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
				o.ase_color = v.ase_color;
				o.ase_texcoord = v.ase_texcoord;
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
				o.ase_color = patch[0].ase_color * bary.x + patch[1].ase_color * bary.y + patch[2].ase_color * bary.z;
				o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
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

				float2 vertexToFrag70_g57733 = IN.ase_texcoord.xy;
				float4 tex2DNode3_g44961 = SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, vertexToFrag70_g57733 );
				float temp_output_22_0_g57718 = tex2DNode3_g44961.a;
				float3 ase_worldPos = IN.ase_texcoord1.xyz;
				float3 normalizeResult79_g57723 = normalize( cross( ddy( ase_worldPos ) , ddx( ase_worldPos ) ) );
				float3 ase_worldViewDir = ( _WorldSpaceCameraPos.xyz - ase_worldPos );
				ase_worldViewDir = SafeNormalize( ase_worldViewDir );
				float dotResult74_g57718 = dot( normalizeResult79_g57723 , ase_worldViewDir );
				float lerpResult80_g57718 = lerp( 1.0 , ( 1.0 - ( ( 1.0 - abs( dotResult74_g57718 ) ) * ( 1.0 - abs( dotResult74_g57718 ) ) ) ) , ( _GlancingClipMode + ( ( _CATEGORY_ALPHACLIPPING + _SPACE_ALPHACLIP ) * 0.0 ) ));
				float temp_output_98_0_g57718 = ( ( (0.0 + (( 1.0 - temp_output_22_0_g57718 ) - 0.0) * (( _AlphaRemapMin + ( _AlphaRemap.x * 0.0 ) ) - 0.0) / (1.0 - 0.0)) + (0.0 + (temp_output_22_0_g57718 - 0.0) * (_AlphaRemapMax - 0.0) / (1.0 - 0.0)) ) * lerpResult80_g57718 );
				

				surfaceDescription.Alpha = temp_output_98_0_g57718;
				surfaceDescription.AlphaClipThreshold = _AlphaCutoffBias;

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
			#define _ALPHATEST_SHADOW_ON 1
			#define _ALPHATEST_ON 1
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

			#define ASE_NEEDS_VERT_POSITION
			#define ASE_NEEDS_VERT_NORMAL


			struct VertexInput
			{
				float4 vertex : POSITION;
				float3 ase_normal : NORMAL;
				float4 ase_tangent : TANGENT;
				float4 ase_color : COLOR;
				float4 ase_texcoord : TEXCOORD0;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct VertexOutput
			{
				float4 clipPos : SV_POSITION;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_texcoord1 : TEXCOORD1;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			half4 _SmoothnessStrength;
			float4 _AlphaRemap;
			float4 _MainUVs;
			half4 _BaseColor;
			half4 _OcclusionStrengthAO;
			float _CATEGORY_SMOOTHNESS;
			float _SPACE_SMOOTHNESS;
			half _SmoothnessFresnelScale;
			half _SmoothnessFresnelPower;
			half _SmoothnessFresnelEnable;
			half _OcclusionStrengthAORemapMin;
			half _OcclusionStrengthAORemapMax;
			float _CATEGORY_OCCLUSION;
			float _SPACE_OCCLUSION;
			half _OcclusionSourceBaked;
			float _AlphaRemapMin;
			float _AlphaRemapMax;
			half _GlancingClipMode;
			float _CATEGORY_ALPHACLIPPING;
			float _SPACE_ALPHACLIP;
			half _AlphaCutoffBias;
			half _AlphaCutoffBiasShadow;
			half _SmoothnessStrengthRemapMax;
			int _Cull;
			half _SmoothnessStrengthRemapMin;
			float _SPACE_METALLIC;
			float _SPACE_SURFACEOPTIONS;
			float _CATEGORY_SURFACEOPTIONS;
			float _SPACE_SURFACEINPUTS;
			float _CATEGORY_SURFACEINPUTS;
			half _WindGlobalIntensity;
			half _WindLocalIntensity;
			half _WindEnableMode;
			half _WindLocalRandomOffset;
			float _CATEGORY_SHADOW;
			half _WindLocalPulseFrequency;
			half _WindEnable;
			float _CATEGORY_WIND;
			float _SPACE_WIND;
			half _Brightness;
			half _NormalStrength;
			half _DoubleSidedNormalMode;
			float _MetallicStrength;
			float _CATEGORY_METALLIC;
			half _WindLocalDirection;
			float _SPACE_SHADOW;
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

			float _GlobalWindBillboardIntensity;
			float _GlobalWindIntensity;
			float _GlobalWindRandomOffset;
			float _GlobalWindPulse;
			float _GlobalWindDirection;
			float _GlobalWindBillboardEnabled;
			TEXTURE2D(_MainTex);
			SAMPLER(sampler_MainTex);


			//#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/Varyings.hlsl"
			//#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/SelectionPickingPass.hlsl"

			//#ifdef HAVE_VFX_MODIFICATION
			//#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/VisualEffectVertex.hlsl"
			//#endif

			float4 mod289( float4 x )
			{
				return x - floor(x * (1.0 / 289.0)) * 289.0;
			}
			
			float4 perm( float4 x )
			{
				return mod289(((x * 34.0) + 1.0) * x);
			}
			
			float SimpleNoise3D( float3 p )
			{
				 float3 a = floor(p);
				    float3 d = p - a;
				    d = d * d * (3.0 - 2.0 * d);
				 float4 b = a.xxyy + float4(0.0, 1.0, 0.0, 1.0);
				    float4 k1 = perm(b.xyxy);
				 float4 k2 = perm(k1.xyxy + b.zzww);
				    float4 c = k2 + a.zzzz;
				    float4 k3 = perm(c);
				    float4 k4 = perm(c + 1.0);
				    float4 o1 = frac(k3 * (1.0 / 41.0));
				 float4 o2 = frac(k4 * (1.0 / 41.0));
				    float4 o3 = o2 * d.z + o1 * (1.0 - d.z);
				    float2 o4 = o3.yw * d.x + o3.xz * (1.0 - d.x);
				    return o4.y * d.y + o4.x * (1.0 - d.y);
			}
			
			float2 DirectionalEquation( float _WindDirection )
			{
				float d = _WindDirection * 0.0174532924;
				float xL = cos(d) + 1 / 2;
				float zL = sin(d) + 1 / 2;
				return float2(zL,xL);
			}
			

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

				//Calculate new billboard vertex position and normal;
				float3 upCamVec = float3( 0, 1, 0 );
				float3 forwardCamVec = -normalize ( UNITY_MATRIX_V._m20_m21_m22 );
				float3 rightCamVec = normalize( UNITY_MATRIX_V._m00_m01_m02 );
				float4x4 rotationCamMatrix = float4x4( rightCamVec, 0, upCamVec, 0, forwardCamVec, 0, 0, 0, 0, 1 );
				v.ase_normal = normalize( mul( float4( v.ase_normal , 0 ), rotationCamMatrix )).xyz;
				v.ase_tangent.xyz = normalize( mul( float4( v.ase_tangent.xyz , 0 ), rotationCamMatrix )).xyz;
				//This unfortunately must be made to take non-uniform scaling into account;
				//Transform to world coords, apply rotation and transform back to local;
				v.vertex = mul( v.vertex , unity_ObjectToWorld );
				v.vertex = mul( v.vertex , rotationCamMatrix );
				v.vertex = mul( v.vertex , unity_WorldToObject );
				float3 localBillboard721_g44961 = ( 0 );
				float3 VERTEX_POSITION_MATRIX2352_g57735 = mul( GetObjectToWorldMatrix(), float4( v.vertex.xyz , 0.0 ) ).xyz;
				float3 break2265_g57735 = VERTEX_POSITION_MATRIX2352_g57735;
				float GlobalWindBillboardIntensity3181_g57735 = _GlobalWindBillboardIntensity;
				float GlobalWindIntensity3173_g57735 = _GlobalWindIntensity;
				float WIND_MODE2462_g57735 = _WindEnableMode;
				float lerpResult3148_g57735 = lerp( ( ( _WindGlobalIntensity * GlobalWindBillboardIntensity3181_g57735 ) * GlobalWindIntensity3173_g57735 ) , _WindLocalIntensity , WIND_MODE2462_g57735);
				float _WIND_STRENGHT2400_g57735 = lerpResult3148_g57735;
				float GlobalWindRandomOffset3174_g57735 = _GlobalWindRandomOffset;
				float lerpResult3149_g57735 = lerp( GlobalWindRandomOffset3174_g57735 , _WindLocalRandomOffset , WIND_MODE2462_g57735);
				float4 transform3073_g57735 = mul(GetObjectToWorldMatrix(),float4( 0,0,0,1 ));
				float2 appendResult2307_g57735 = (float2(transform3073_g57735.x , transform3073_g57735.z));
				float dotResult2341_g57735 = dot( appendResult2307_g57735 , float2( 12.9898,78.233 ) );
				float lerpResult2238_g57735 = lerp( 0.8 , ( ( lerpResult3149_g57735 / 2.0 ) + 0.9 ) , frac( ( sin( dotResult2341_g57735 ) * 43758.55 ) ));
				float _WIND_RANDOM_OFFSET2244_g57735 = ( ( _TimeParameters.x * 0.05 ) * lerpResult2238_g57735 );
				float _WIND_TUBULENCE_RANDOM2274_g57735 = ( sin( ( ( _WIND_RANDOM_OFFSET2244_g57735 * 40.0 ) - ( VERTEX_POSITION_MATRIX2352_g57735.z / 15.0 ) ) ) * 0.5 );
				float GlobalWindPulse3177_g57735 = _GlobalWindPulse;
				float lerpResult3152_g57735 = lerp( GlobalWindPulse3177_g57735 , _WindLocalPulseFrequency , WIND_MODE2462_g57735);
				float _WIND_PULSE2421_g57735 = lerpResult3152_g57735;
				float FUNC_Angle2470_g57735 = ( _WIND_STRENGHT2400_g57735 * ( 1.0 + sin( ( ( ( ( _WIND_RANDOM_OFFSET2244_g57735 * 2.0 ) + _WIND_TUBULENCE_RANDOM2274_g57735 ) - ( VERTEX_POSITION_MATRIX2352_g57735.z / 50.0 ) ) - ( v.ase_color.r / 20.0 ) ) ) ) * sqrt( v.ase_color.r ) * _WIND_PULSE2421_g57735 );
				float FUNC_Angle_SinA2424_g57735 = sin( FUNC_Angle2470_g57735 );
				float FUNC_Angle_CosA2362_g57735 = cos( FUNC_Angle2470_g57735 );
				float GlobalWindDirection3175_g57735 = _GlobalWindDirection;
				float lerpResult3150_g57735 = lerp( GlobalWindDirection3175_g57735 , _WindLocalDirection , WIND_MODE2462_g57735);
				float _WindDirection2249_g57735 = lerpResult3150_g57735;
				float2 localDirectionalEquation2249_g57735 = DirectionalEquation( _WindDirection2249_g57735 );
				float2 break2469_g57735 = localDirectionalEquation2249_g57735;
				float _WIND_DIRECTION_X2418_g57735 = break2469_g57735.x;
				float lerpResult2258_g57735 = lerp( break2265_g57735.x , ( ( break2265_g57735.y * FUNC_Angle_SinA2424_g57735 ) + ( break2265_g57735.x * FUNC_Angle_CosA2362_g57735 ) ) , _WIND_DIRECTION_X2418_g57735);
				float3 break2340_g57735 = VERTEX_POSITION_MATRIX2352_g57735;
				float3 break2233_g57735 = VERTEX_POSITION_MATRIX2352_g57735;
				float _WIND_DIRECTION_Y2416_g57735 = break2469_g57735.y;
				float lerpResult2275_g57735 = lerp( break2233_g57735.z , ( ( break2233_g57735.y * FUNC_Angle_SinA2424_g57735 ) + ( break2233_g57735.z * FUNC_Angle_CosA2362_g57735 ) ) , _WIND_DIRECTION_Y2416_g57735);
				float3 appendResult2235_g57735 = (float3(lerpResult2258_g57735 , ( ( break2340_g57735.y * FUNC_Angle_CosA2362_g57735 ) - ( break2340_g57735.z * FUNC_Angle_SinA2424_g57735 ) ) , lerpResult2275_g57735));
				float3 VERTEX_POSITION_Neg3006_g57735 = appendResult2235_g57735;
				float GlobalWindBillboardEnabled3180_g57735 = _GlobalWindBillboardEnabled;
				float3 lerpResult3153_g57735 = lerp( float3(0,0,0) , ( VERTEX_POSITION_Neg3006_g57735 - VERTEX_POSITION_MATRIX2352_g57735 ) , GlobalWindBillboardEnabled3180_g57735);
				float3 VERTEX_POSITION2282_g57735 = ( mul( GetWorldToObjectMatrix(), float4( appendResult2235_g57735 , 0.0 ) ).xyz - v.vertex.xyz );
				float3 lerpResult3146_g57735 = lerp( lerpResult3153_g57735 , VERTEX_POSITION2282_g57735 , _WindEnableMode);
				float WindEnable3144_g57735 = _WindEnable;
				float3 lerpResult3143_g57735 = lerp( VERTEX_POSITION_MATRIX2352_g57735 , lerpResult3146_g57735 , WindEnable3144_g57735);
				float3 lerpResult3142_g57735 = lerp( float3(0,0,0) , lerpResult3143_g57735 , ( _WindEnable + ( ( _CATEGORY_WIND + _SPACE_WIND ) * 0.0 ) ));
				float3 temp_output_457_0_g44961 = lerpResult3142_g57735;
				{
				v.vertex.xyz += temp_output_457_0_g44961;
				}
				
				float2 Offset235_g57733 = (_MainUVs).zw;
				float2 temp_output_41_0_g57733 = ( ( v.ase_texcoord.xy * (_MainUVs).xy ) + Offset235_g57733 );
				float2 vertexToFrag70_g57733 = temp_output_41_0_g57733;
				o.ase_texcoord.xy = vertexToFrag70_g57733;
				float3 ase_worldPos = TransformObjectToWorld( (v.vertex).xyz );
				o.ase_texcoord1.xyz = ase_worldPos;
				
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord.zw = 0;
				o.ase_texcoord1.w = 0;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.vertex.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif

				float3 vertexValue = localBillboard721_g44961;

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
				float4 ase_tangent : TANGENT;
				float4 ase_color : COLOR;
				float4 ase_texcoord : TEXCOORD0;

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
				o.ase_color = v.ase_color;
				o.ase_texcoord = v.ase_texcoord;
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
				o.ase_color = patch[0].ase_color * bary.x + patch[1].ase_color * bary.y + patch[2].ase_color * bary.z;
				o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
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

				float2 vertexToFrag70_g57733 = IN.ase_texcoord.xy;
				float4 tex2DNode3_g44961 = SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, vertexToFrag70_g57733 );
				float temp_output_22_0_g57718 = tex2DNode3_g44961.a;
				float3 ase_worldPos = IN.ase_texcoord1.xyz;
				float3 normalizeResult79_g57723 = normalize( cross( ddy( ase_worldPos ) , ddx( ase_worldPos ) ) );
				float3 ase_worldViewDir = ( _WorldSpaceCameraPos.xyz - ase_worldPos );
				ase_worldViewDir = SafeNormalize( ase_worldViewDir );
				float dotResult74_g57718 = dot( normalizeResult79_g57723 , ase_worldViewDir );
				float lerpResult80_g57718 = lerp( 1.0 , ( 1.0 - ( ( 1.0 - abs( dotResult74_g57718 ) ) * ( 1.0 - abs( dotResult74_g57718 ) ) ) ) , ( _GlancingClipMode + ( ( _CATEGORY_ALPHACLIPPING + _SPACE_ALPHACLIP ) * 0.0 ) ));
				float temp_output_98_0_g57718 = ( ( (0.0 + (( 1.0 - temp_output_22_0_g57718 ) - 0.0) * (( _AlphaRemapMin + ( _AlphaRemap.x * 0.0 ) ) - 0.0) / (1.0 - 0.0)) + (0.0 + (temp_output_22_0_g57718 - 0.0) * (_AlphaRemapMax - 0.0) / (1.0 - 0.0)) ) * lerpResult80_g57718 );
				

				surfaceDescription.Alpha = temp_output_98_0_g57718;
				surfaceDescription.AlphaClipThreshold = _AlphaCutoffBias;

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
Node;AmplifyShaderEditor.IntNode;469;129.7367,261.577;Inherit;False;Property;_Cull;Render Face;1;1;[Enum];Create;False;0;0;1;Front,2,Back,1,Both,0;True;0;False;0;2;False;0;1;INT;0
Node;AmplifyShaderEditor.RangedFloatNode;479;127.226,182.3306;Inherit;False;Property;_SPACE_SURFACEOPTIONS;SPACE_SURFACEOPTIONS;2;0;Create;True;0;0;0;True;1;DE_DrawerSpace(10);False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;480;125.752,108.1207;Inherit;False;Property;_CATEGORY_SURFACEOPTIONS;CATEGORY_SURFACEOPTIONS;0;0;Create;True;0;0;0;True;1;DE_DrawerCategory(SURFACE OPTIONS,true,_Cull,0,0);False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;483;128.95,344.8214;Float;False;False;-1;2;DE_ShaderGUI;0;1;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;ExtraPrePass;0;0;ExtraPrePass;5;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;False;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;4;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;UniversalMaterialType=Lit;True;3;True;12;all;0;False;True;1;1;False;;0;False;;0;1;False;;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;0;False;False;0;Hidden/DE/Utility/Fallback;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;484;128.95,344.8214;Float;False;True;-1;2;ALP8310_DE_ShaderGUI;0;12;ALP/Billboard Cross Wind;94348b07e5e8bab40bd6c8a1e3df54cd;True;Forward;0;1;Forward;20;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;True;True;0;True;_Cull;False;False;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;4;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;UniversalMaterialType=Lit;True;3;True;12;all;0;False;True;1;1;False;;0;False;;1;1;False;;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;1;LightMode=UniversalForward;False;False;0;;0;0;Standard;41;Workflow;1;0;Surface;0;0;  Refraction Model;0;0;  Blend;0;0;Two Sided;1;0;Fragment Normal Space,InvertActionOnDeselection;0;0;Forward Only;0;0;Transmission;0;0;  Transmission Shadow;0.5,False,;0;Translucency;0;0;  Translucency Strength;1,False,;0;  Normal Distortion;0.5,False,;0;  Scattering;2,False,;0;  Direct;0.9,False,;0;  Ambient;0.1,False,;0;  Shadow;0.5,False,;0;Cast Shadows;1;0;  Use Shadow Threshold;1;638176264586315698;Receive Shadows;1;0;GPU Instancing;1;0;LOD CrossFade;1;0;Built-in Fog;1;0;_FinalColorxAlpha;0;0;Meta Pass;1;0;Override Baked GI;0;0;Extra Pre Pass;0;0;DOTS Instancing;0;0;Tessellation;0;0;  Phong;0;0;  Strength;0.5,True,_TessellationPhong;0;  Type;0;0;  Tess;16,True,_TessellationStrength;0;  Min;10,True,_TessellationDistanceMin;0;  Max;25,True,_TessellationDistanceMax;0;  Edge Length;16,False,;0;  Max Displacement;25,False,;0;Write Depth;0;0;  Early Z;0;0;Vertex Position,InvertActionOnDeselection;1;0;Debug Display;0;0;Clear Coat;0;0;0;10;False;True;True;True;True;True;True;True;True;True;False;;True;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;485;128.95,344.8214;Float;False;False;-1;2;DE_ShaderGUI;0;1;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;ShadowCaster;0;2;ShadowCaster;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;False;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;4;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;UniversalMaterialType=Lit;True;3;True;12;all;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;False;False;True;False;False;False;False;0;False;;False;False;False;False;False;False;False;False;False;True;1;False;;True;3;False;;False;True;1;LightMode=ShadowCaster;False;False;0;Hidden/DE/Utility/Fallback;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;486;128.95,344.8214;Float;False;False;-1;2;DE_ShaderGUI;0;1;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;DepthOnly;0;3;DepthOnly;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;False;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;4;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;UniversalMaterialType=Lit;True;3;True;12;all;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;False;False;True;False;False;False;False;0;False;;False;False;False;False;False;False;False;False;False;True;1;False;;False;False;True;1;LightMode=DepthOnly;False;False;0;Hidden/DE/Utility/Fallback;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;487;128.95,344.8214;Float;False;False;-1;2;DE_ShaderGUI;0;1;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;Meta;0;4;Meta;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;False;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;4;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;UniversalMaterialType=Lit;True;3;True;12;all;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;LightMode=Meta;False;False;0;Hidden/DE/Utility/Fallback;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;488;128.95,344.8214;Float;False;False;-1;2;DE_ShaderGUI;0;1;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;Universal2D;0;5;Universal2D;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;False;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;4;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;UniversalMaterialType=Lit;True;3;True;12;all;0;False;True;1;1;False;;0;False;;1;1;False;;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;False;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;1;LightMode=Universal2D;False;False;0;Hidden/DE/Utility/Fallback;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;489;128.95,344.8214;Float;False;False;-1;2;DE_ShaderGUI;0;1;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;DepthNormals;0;6;DepthNormals;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;False;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;4;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;UniversalMaterialType=Lit;True;3;True;12;all;0;False;True;1;1;False;;0;False;;0;1;False;;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;False;;True;3;False;;False;True;1;LightMode=DepthNormals;False;False;0;Hidden/DE/Utility/Fallback;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;490;128.95,344.8214;Float;False;False;-1;2;DE_ShaderGUI;0;1;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;GBuffer;0;7;GBuffer;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;False;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;4;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;UniversalMaterialType=Lit;True;3;True;12;all;0;False;True;1;1;False;;0;False;;1;1;False;;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;1;LightMode=UniversalGBuffer;False;False;0;Hidden/DE/Utility/Fallback;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;491;128.95,344.8214;Float;False;False;-1;2;DE_ShaderGUI;0;1;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;SceneSelectionPass;0;8;SceneSelectionPass;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;False;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;4;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;UniversalMaterialType=Lit;True;3;True;12;all;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;LightMode=SceneSelectionPass;False;False;0;Hidden/DE/Utility/Fallback;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;492;128.95,344.8214;Float;False;False;-1;2;DE_ShaderGUI;0;1;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;ScenePickingPass;0;9;ScenePickingPass;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;False;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;4;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;UniversalMaterialType=Lit;True;3;True;12;all;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;LightMode=Picking;False;False;0;Hidden/DE/Utility/Fallback;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.FunctionNode;448;-332.0298,338.7457;Inherit;False;DESF Core Billboard;3;;44961;e3fce2294f3bde941a48e407ffdf732f;4,139,2,729,2,865,0,69,0;1;457;FLOAT3;0,0,0;False;12;FLOAT3;0;FLOAT3;556;FLOAT;56;FLOAT3;770;FLOAT;50;FLOAT;57;FLOAT;49;FLOAT;351;FLOAT;649;FLOAT3;458;SAMPLERSTATE;703;SAMPLERSTATE;708
Node;AmplifyShaderEditor.FunctionNode;447;-570.8885,338.7452;Inherit;False;DESF Weather Wind;97;;57735;b135a554f7e4d0b41bba02c61b34ae74;5,2432,2,3133,2,2371,2,3138,0,3139,0;0;1;FLOAT3;2190
WireConnection;484;0;448;0
WireConnection;484;1;448;556
WireConnection;484;3;448;56
WireConnection;484;4;448;50
WireConnection;484;5;448;57
WireConnection;484;6;448;49
WireConnection;484;7;448;351
WireConnection;484;16;448;649
WireConnection;484;8;448;458
WireConnection;448;457;447;2190
ASEEND*/
//CHKSM=0EBEF550B1BEAA5B3F5DBE59D7618EFD5121ED01