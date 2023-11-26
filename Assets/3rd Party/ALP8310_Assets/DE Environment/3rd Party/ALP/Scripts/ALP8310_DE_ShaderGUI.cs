// Support:David Olshefski http://deenvironment.com/

using UnityEngine;
using UnityEditor;
using System.Collections.Generic;
using DEEnvironmentALP8310.Drawers;
#if UNITY_EDITOR
public class ALP8310_DE_ShaderGUI : ShaderGUI
{
    bool showCategory = true;
    bool showAdvanced = false;

    public override void OnGUI(MaterialEditor materialEditor, MaterialProperty[] props)
    {
        var material0 = materialEditor.target as Material;
        //var materials = materialEditor.targets;

        //if (materials.Length > 1)
        //    multiSelection = true;

        DrawDynamicInspector(material0, materialEditor, props);

        //foreach (Material material in materials)
        //{

        //}
    }

    void DrawDynamicInspector(Material material, MaterialEditor materialEditor, MaterialProperty[] props)
    {
        var customPropsList = new List<MaterialProperty>();
        //var customSpaces = new List<int>();
        //var customCategories = new List<int>();

        for (int i = 0; i < props.Length; i++)
        {
            var prop = props[i];

            if (prop.flags == MaterialProperty.PropFlags.HideInInspector)
                continue;

            if (prop.name == "unity_Lightmaps")
                continue;
            if (prop.name == "unity_LightmapsInd")
                continue;
            if (prop.name == "unity_ShadowMasks")
                continue;
            if (prop.name == "_SpecularHighlights")
                continue;
            if (prop.name == "_GlossyReflections")
                continue;

            // DESF DYNAMIC INSPECTORS PLEASE DO NOT CHANGE

            #region [DESF Core UV Reveal]
            if (material.HasProperty("_UVLight00Enable"))
            {
                if (material.GetInt("_UVLight00Enable") == 0)
                {
                    if (prop.name == "_UVLight00Color")
                        continue;
                    if (prop.name == "_UVLight00MainLightInfluence")
                        continue;
                    if (prop.name == "_UVLight00Brightness")
                        continue;
                    if (prop.name == "_UVLight00Map")
                        continue;
                    if (prop.name == "_UVLight00UVs")
                        continue;
                    if (prop.name == "_UVLight00Rotation")
                        continue;
                    if (prop.name == "_UVLight00NormalMap")
                        continue;
                    if (prop.name == "_UVLight00NormalStrength")
                        continue;
                    if (prop.name == "_UVLight00EmissiveRenderFace")
                        continue;
                    if (prop.name == "_EmissionFlags")
                        continue;
                    if (prop.name == "_UVLight00FilteredColor")
                        continue;
                    if (prop.name == "_UVLight00Threshold")
                        continue;
                    if (prop.name == "_UVLight00ThresholdTemp")
                        continue;
                }
            }
            if (material.HasProperty("_UVLight01Enable"))
            {
                if (material.GetInt("_UVLight01Enable") == 0)
                {
                    if (prop.name == "_UVLight01Color")
                        continue;
                    if (prop.name == "_UVLight01MainLightInfluence")
                        continue;
                    if (prop.name == "_UVLight01Brightness")
                        continue;
                    if (prop.name == "_UVLight01Map")
                        continue;
                    if (prop.name == "_UVLight01UVs")
                        continue;
                    if (prop.name == "_UVLight01Rotation")
                        continue;
                    if (prop.name == "_UVLight01NormalMap")
                        continue;
                    if (prop.name == "_UVLight01NormalStrength")
                        continue;
                    if (prop.name == "_UVLight01EmissiveRenderFace")
                        continue;
                    if (prop.name == "_EmissionFlags")
                        continue;
                    if (prop.name == "_UVLight01FilteredColor")
                        continue;
                    if (prop.name == "_UVLight01Threshold")
                        continue;
                    if (prop.name == "_UVLight01ThresholdTemp")
                        continue;
                }
            }
            #endregion [DESF Core UV Reveal]

            #region [DESF Core Fabric]
            if (material.HasProperty("_FuzzMaskEnable"))
            {
                if (material.GetInt("_FuzzMaskEnable") == 0)
                {
                    if (prop.name == "_FuzzMaskColor")
                        continue;
                    if (prop.name == "_FuzzMaskMap")
                        continue;
                    if (prop.name == "_FuzzMaskUV")
                        continue;
                    if (prop.name == "_FuzzMaskStrength")
                        continue;
                }
            }
            if (material.HasProperty("_ThreadMaskEnable"))
            {
                if (material.GetInt("_ThreadMaskEnable") == 0)
                {
                    if (prop.name == "_ThreadNormalMap")
                        continue;
                    if (prop.name == "_ThreadNormalStrength")
                        continue;
                    if (prop.name == "_ThreadMaskUVAffectchannel0")
                        continue;
                    if (prop.name == "_ThreadMaskUVAffectchannel1")
                        continue;
                    if (prop.name == "_ThreadMaskUVAffectchannel2")
                        continue;
                    if (prop.name == "_ThreadMaskUVAffectchannel3")
                        continue;
                    if (prop.name == "_ThreadMaskUV")
                        continue;
                    if (prop.name == "_ThreadMaskMap")
                        continue;
                    if (prop.name == "_ThreadMaskOcclusionStrengthAO")
                        continue;
                    if (prop.name == "_ThreadMaskOcclusionStrengthAORemapMin")
                        continue;
                    if (prop.name == "_ThreadMaskOcclusionStrengthAORemapMax")
                        continue;
                    if (prop.name == "_ThreadMaskSmoothnessStrength")
                        continue;
                    if (prop.name == "_ThreadMaskSmoothnessStrengthRemapMin")
                        continue;
                    if (prop.name == "_ThreadMaskSmoothnessStrengthRemapMax")
                        continue;
                }
            }
            #endregion [DESF Core Fabric]

            #region [DESF Module Baked GI]
            if (material.HasProperty("_BakedGIEnable"))
            {
                if (material.GetInt("_BakedGIEnable") == 0)
                {
                    if (prop.name == "_BakedGIContribution")
                        continue;
                }
            }
            #endregion [DESF Module Baked GI]

            #region [DESF Module Detail]
            if (material.HasProperty("_DetailEnable"))
            {
                if (material.GetInt("_DetailEnable") == 0)
                {
                    if (prop.name == "_DetailColor")
                        continue;
                    if (prop.name == "_DetailBrightness")
                        continue;
                    if (prop.name == "_DetailSaturation")
                        continue;
                    if (prop.name == "_DetailColorMap")
                        continue;
                    if (prop.name == "_DetailUVs")
                        continue;
                    if (prop.name == "_DetailUVMode")
                        continue;
                    if (prop.name == "_DetailUVRotation")
                        continue;
                    if (prop.name == "_DetailMipBias")
                        continue;
                    if (prop.name == "_DetailNormalMap")
                        continue;
                    if (prop.name == "_DetailNormalStrength")
                        continue;
                    if (prop.name == "_DetailBlendVertexColorEnable")
                        continue;
                    if (prop.name == "_DetailBlendVertexColor")
                        continue;
                    if (prop.name == "_DetailBlendSource")
                        continue;
                    if (prop.name == "_DetailBlendStrength")
                        continue;
                    if (prop.name == "_DetailBlendHeight")
                        continue;
                    if (prop.name == "_DetailBlendSmooth")
                        continue;
                    if (prop.name == "_DetailBlendHeight")
                        continue;
                    if (prop.name == "_DetailMicroNormalFilter")
                        continue;
                    if (prop.name == "_DetailMicroNormalStrength")
                        continue;
                    if (prop.name == "_DetailMaskIsInverted")
                        continue;
                    if (prop.name == "_DetailMaskMap")
                        continue;
                    if (prop.name == "_DetailMaskUVs")
                        continue;
                    if (prop.name == "_DetailMaskUVRotation")
                        continue;
                    if (prop.name == "_DetailMaskBlendStrength")
                        continue;
                    if (prop.name == "_DetailMaskBlendHardness")
                        continue;
                    if (prop.name == "_DetailMaskBlendFalloff")
                        continue;
                    if (prop.name == "_DetailMaskNormalFiltering")
                        continue;
                    if (prop.name == "_DetailMaskNormalStrength")
                        continue;
                    if (prop.name == "_DetailSecondaryEnable")
                        continue;
                    if (prop.name == "_DetailSecondaryColor")
                        continue;
                    if (prop.name == "_DetailSecondaryBrightness")
                        continue;
                    if (prop.name == "_DetailSecondarySaturation")
                        continue;
                    if (prop.name == "_DetailSecondaryColorMap")
                        continue;
                    if (prop.name == "_DetailSecondaryUVs")
                        continue;
                    if (prop.name == "_DetailSecondaryUVMode")
                        continue;
                    if (prop.name == "_DetailSecondaryUVRotation")
                        continue;
                    if (prop.name == "_DetailSecondaryNormalMap")
                        continue;
                    if (prop.name == "_DetailSecondaryNormalStrength")
                        continue;
                    if (prop.name == "_DetailSecondaryBlendVertexColorEnable")
                        continue;
                    if (prop.name == "_DetailSecondaryBlendVertexColor")
                        continue;
                    if (prop.name == "_DetailSecondaryBlendSource")
                        continue;
                    if (prop.name == "_DetailSecondaryBlendWeightLayer1")
                        continue;
                    if (prop.name == "_DetailSecondaryBlendWeightLayer2")
                        continue;
                    if (prop.name == "_DetailSecondaryBlendStrength")
                        continue;
                    if (prop.name == "_DetailSecondaryBlendHeight")
                        continue;
                    if (prop.name == "_DetailSecondaryBlendSmooth")
                        continue;
                    if (prop.name == "_DetailSecondaryMaskEnable")
                        continue;
                    if (prop.name == "_DetailSecondaryMaskIsInverted")
                        continue;
                    if (prop.name == "_DetailSecondaryMaskMap")
                        continue;
                    if (prop.name == "_DetailSecondaryMaskUVs")
                        continue;
                    if (prop.name == "_DetailSecondaryMaskUVRotation")
                        continue;
                    if (prop.name == "_DetailSecondaryMaskBlendSource")
                        continue;
                    if (prop.name == "_DetailSecondaryMaskBlendStrength")
                        continue;
                    if (prop.name == "_DetailSecondaryMaskBlendHardness")
                        continue;
                    if (prop.name == "_DetailSecondaryMaskBlendFalloff")
                        continue;
                    if (prop.name == "_DetailSecondaryMaskNormalFiltering")
                        continue;
                    if (prop.name == "_DetailSecondaryMaskNormalStrength")
                        continue;
                }
            }
            if (material.HasProperty("_DetailBlendVertexColorEnable"))
            {
                if (material.GetInt("_DetailBlendVertexColorEnable") == 0)
                {
                    if (prop.name == "_DetailBlendVertexColor")
                        continue;
                }
            }
            if (material.HasProperty("_DetailMaskEnable"))
            {
                if (material.GetInt("_DetailMaskEnable") == 0)
                {
                    if (prop.name == "_DetailMaskIsInverted")
                        continue;
                    if (prop.name == "_DetailMaskMap")
                        continue;
                    if (prop.name == "_DetailMaskUVs")
                        continue;
                    if (prop.name == "_DetailMaskUVRotation")
                        continue;
                    if (prop.name == "_DetailMaskBlendStrength")
                        continue;
                    if (prop.name == "_DetailMaskBlendHardness")
                        continue;
                    if (prop.name == "_DetailMaskBlendFalloff")
                        continue;
                    if (prop.name == "_DetailMaskNormalFiltering")
                        continue;
                    if (prop.name == "_DetailMaskNormalStrength")
                        continue;
                }
            }
            if (material.HasProperty("_DetailSecondaryEnable"))
            {
                if (material.GetInt("_DetailSecondaryEnable") == 0)
                {
                    if (prop.name == "_DetailSecondaryColor")
                        continue;
                    if (prop.name == "_DetailSecondaryBrightness")
                        continue;
                    if (prop.name == "_DetailSecondarySaturation")
                        continue;
                    if (prop.name == "_DetailSecondaryColorMap")
                        continue;
                    if (prop.name == "_DetailSecondaryUVs")
                        continue;
                    if (prop.name == "_DetailSecondaryUVMode")
                        continue;
                    if (prop.name == "_DetailSecondaryUVRotation")
                        continue;
                    if (prop.name == "_DetailSecondaryNormalMap")
                        continue;
                    if (prop.name == "_DetailSecondaryNormalStrength")
                        continue;
                    if (prop.name == "_DetailSecondaryBlendVertexColorEnable")
                        continue;
                    if (prop.name == "_DetailSecondaryBlendVertexColor")
                        continue;
                    if (prop.name == "_DetailSecondaryBlendSource")
                        continue;
                    if (prop.name == "_DetailSecondaryBlendWeightLayer1")
                        continue;
                    if (prop.name == "_DetailSecondaryBlendWeightLayer2")
                        continue;
                    if (prop.name == "_DetailSecondaryBlendStrength")
                        continue;
                    if (prop.name == "_DetailSecondaryBlendHeight")
                        continue;
                    if (prop.name == "_DetailSecondaryBlendSmooth")
                        continue;
                    if (prop.name == "_DetailSecondaryMaskEnable")
                        continue;
                    if (prop.name == "_DetailSecondaryMaskIsInverted")
                        continue;
                    if (prop.name == "_DetailSecondaryMaskMap")
                        continue;
                    if (prop.name == "_DetailSecondaryMaskUVs")
                        continue;
                    if (prop.name == "_DetailSecondaryMaskUVRotation")
                        continue;
                    if (prop.name == "_DetailSecondaryMaskBlendSource")
                        continue;
                    if (prop.name == "_DetailSecondaryMaskBlendStrength")
                        continue;
                    if (prop.name == "_DetailSecondaryMaskBlendHardness")
                        continue;
                    if (prop.name == "_DetailSecondaryMaskBlendFalloff")
                        continue;
                    if (prop.name == "_DetailSecondaryMaskNormalFiltering")
                        continue;
                    if (prop.name == "_DetailSecondaryMaskNormalStrength")
                        continue;
                }
            }
            if (material.HasProperty("_DetailSecondaryBlendVertexColorEnable"))
            {
                if (material.GetInt("_DetailSecondaryBlendVertexColorEnable") == 0)
                {
                    if (prop.name == "_DetailSecondaryBlendVertexColor")
                        continue;
                }
            }
            if (material.HasProperty("_DetailSecondaryMaskEnable"))
            {
                if (material.GetInt("_DetailSecondaryMaskEnable") == 0)
                {
                    if (prop.name == "_DetailSecondaryMaskIsInverted")
                        continue;
                    if (prop.name == "_DetailSecondaryMaskMap")
                        continue;
                    if (prop.name == "_DetailSecondaryMaskUVs")
                        continue;
                    if (prop.name == "_DetailSecondaryMaskUVRotation")
                        continue;
                    if (prop.name == "_DetailSecondaryMaskBlendSource")
                        continue;
                    if (prop.name == "_DetailSecondaryMaskBlendStrength")
                        continue;
                    if (prop.name == "_DetailSecondaryMaskBlendHardness")
                        continue;
                    if (prop.name == "_DetailSecondaryMaskBlendFalloff")
                        continue;
                    if (prop.name == "_DetailSecondaryMaskNormalFiltering")
                        continue;
                    if (prop.name == "_DetailSecondaryMaskNormalStrength")
                        continue;
                }
            }
            #endregion [DESF Module Detail]

            #region [DESF Module Dissolve]
            if (material.HasProperty("_DissolveEnable"))
            {
                if (material.GetInt("_DissolveEnable") == 0)
                {
                    if (prop.name == "_DissolveNoise")
                        continue;
                    if (prop.name == "_DissolveRamp")
                        continue;
                    if (prop.name == "_DissolveUVs")
                        continue;
                    if (prop.name == "_DissolveStrenght")
                        continue;
                }
            }
            if (material.HasProperty("_DissolveFadeEnable"))
            {
                if (material.GetInt("_DissolveFadeEnable") == 0)
                {
                    if (prop.name == "_DissolveFadeStart")
                        continue;
                    if (prop.name == "_DissolveFadeEnd")
                        continue;
                    if (prop.name == "_DissolveDitherEnable")
                        continue;
                    if (prop.name == "_DissolveDitherMap")
                        continue;
                }
            }
            if (material.HasProperty("_DissolveDitherEnable"))
            {
                if (material.GetInt("_DissolveDitherEnable") == 0)
                {
                    if (prop.name == "_DissolveDitherMap")
                        continue;
                }
            }
            #endregion [DESF Module Dissolve]

            #region [DESF Module Emission]
            if (material.HasProperty("_EmissiveEnable"))
            {
                if (material.GetInt("_EmissiveEnable") == 0)
                {
                    if (prop.name == "_EmissiveisGlobal")
                        continue;
                    if (prop.name == "_EmissionFlags")
                        continue;
                    if (prop.name == "_EmissiveRenderFace")
                        continue;
                    if (prop.name == "_EmissiveAffectAlbedoBias")
                        continue;
                    if (prop.name == "_EmissiveColor")
                        continue;
                    if (prop.name == "_EmissiveIntensity")
                        continue;
                    if (prop.name == "_EmissiveIntensityHDRP")
                        continue;
                    if (prop.name == "_EmissiveExposureWeight")
                        continue;
                    if (prop.name == "_EmissiveIsRandom")
                        continue;
                    if (prop.name == "_EmissiveRandomSpeed")
                        continue;
                    if (prop.name == "_EmissiveMapEnable")
                        continue;
                    if (prop.name == "_EmissiveColorMapInverted")
                        continue;
                    if (prop.name == "_EmissiveColorMap")
                        continue;
                    if (prop.name == "_EmissiveColorMapUVs")
                        continue;
                    if (prop.name == "_EmissivePanningisGlobal")
                        continue;
                    if (prop.name == "_EmissivePanningColor")
                        continue;
                    if (prop.name == "_EmissivePanningIntensity")
                        continue;
                    if (prop.name == "_EmissivePanningIntensityHDRP")
                        continue;
                    if (prop.name == "_EmissivePanningExposureWeight")
                        continue;
                    if (prop.name == "_EmissivePanningIsRandom")
                        continue;
                    if (prop.name == "_EmissivePanningRandomSpeed")
                        continue;
                    if (prop.name == "_EmissivePanningRotation")
                        continue;
                    if (prop.name == "_EmissiveColorMapFlicker")
                        continue;
                    if (prop.name == "_EmissivePanningSpeedX")
                        continue;
                    if (prop.name == "_EmissivePanningSpeedY")
                        continue;
                    if (prop.name == "_EmissiveWorldSpaceBlend")
                        continue;
                    if (prop.name == "_EmissiveWorldSpaceOffset")
                        continue;
                    if (prop.name == "_EmissiveWorldSpaceShift")
                        continue;
                    if (prop.name == "_EmissiveWorldSpaceScatter")
                        continue;
                    if (prop.name == "_EmissiveWorldSpaceDistance")
                        continue;
                    if (prop.name == "_EmissiveColorMaskingEnable")
                        continue;
                    if (prop.name == "_EmissiveColorMaskingColor")
                        continue;
                    if (prop.name == "_EmissiveColorMaskingRange")
                        continue;
                    if (prop.name == "_EmissiveColorMaskingFuzziness")
                        continue;
                    if (prop.name == "_EmissiveGlowEnable")
                        continue;
                    if (prop.name == "_EmissiveGlowisGlobal")
                        continue;
                    if (prop.name == "_EmissiveGlowColor")
                        continue;
                    if (prop.name == "_EmissiveGlowIntensity")
                        continue;
                    if (prop.name == "_EmissiveGlowIntensityHDRP")
                        continue;
                    if (prop.name == "_EmissiveGlowExposureWeight")
                        continue;
                    if (prop.name == "_EmissiveGlowIsRandom")
                        continue;
                    if (prop.name == "_EmissiveGlowRandomSpeed")
                        continue;
                    if (prop.name == "_EmissiveMaskEnable")
                        continue;
                    if (prop.name == "_EmissiveMaskisGlobal")
                        continue;
                    if (prop.name == "_EmissiveMask")
                        continue;
                    if (prop.name == "_EmissiveMaskUVs")
                        continue;
                    if (prop.name == "_EmissiveMaskRotation")
                        continue;
                    if (prop.name == "_EmissiveMaskPanningSpeedX")
                        continue;
                    if (prop.name == "_EmissiveMaskPanningSpeedY")
                        continue;
                    if (prop.name == "_EmissiveMaskRColor")
                        continue;
                    if (prop.name == "_EmissiveMaskRIntensity")
                        continue;
                    if (prop.name == "_EmissiveMaskRIntensityHDRP")
                        continue;
                    if (prop.name == "_EmissiveMaskRExposureWeight")
                        continue;
                    if (prop.name == "_EmissiveMaskGColor")
                        continue;
                    if (prop.name == "_EmissiveMaskGIntensity")
                        continue;
                    if (prop.name == "_EmissiveMaskGIntensityHDRP")
                        continue;
                    if (prop.name == "_EmissiveMaskGExposureWeight")
                        continue;
                    if (prop.name == "_EmissiveMaskBColor")
                        continue;
                    if (prop.name == "_EmissiveMaskBIntensity")
                        continue;
                    if (prop.name == "_EmissiveMaskBIntensityHDRP")
                        continue;
                    if (prop.name == "_EmissiveMaskBExposureWeight")
                        continue;
                    if (prop.name == "_EmissiveMaskAColor")
                        continue;
                    if (prop.name == "_EmissiveMaskAIntensity")
                        continue;
                    if (prop.name == "_EmissiveMaskAIntensityHDRP")
                        continue;
                    if (prop.name == "_EmissiveMaskAExposureWeight")
                        continue;
                }
            }
            if (material.HasProperty("_EmissiveMapEnable"))
            {
                if (material.GetInt("_EmissiveMapEnable") == 0)
                {
                    if (prop.name == "_EmissiveColorMapInverted")
                        continue;
                    if (prop.name == "_EmissiveColorMap")
                        continue;
                    if (prop.name == "_EmissiveColorMapUVs")
                        continue;
                    if (prop.name == "_EmissivePanningisGlobal")
                        continue;
                    if (prop.name == "_EmissivePanningColor")
                        continue;
                    if (prop.name == "_EmissivePanningIntensity")
                        continue;
                    if (prop.name == "_EmissivePanningIntensityHDRP")
                        continue;
                    if (prop.name == "_EmissivePanningExposureWeight")
                        continue;
                    if (prop.name == "_EmissivePanningIsRandom")
                        continue;
                    if (prop.name == "_EmissivePanningRandomSpeed")
                        continue;
                    if (prop.name == "_EmissivePanningRotation")
                        continue;
                    if (prop.name == "_EmissiveColorMapFlicker")
                        continue;
                    if (prop.name == "_EmissivePanningSpeedX")
                        continue;
                    if (prop.name == "_EmissivePanningSpeedY")
                        continue;
                    if (prop.name == "_EmissiveWorldSpaceBlend")
                        continue;
                    if (prop.name == "_EmissiveWorldSpaceOffset")
                        continue;
                    if (prop.name == "_EmissiveWorldSpaceShift")
                        continue;
                    if (prop.name == "_EmissiveWorldSpaceScatter")
                        continue;
                    if (prop.name == "_EmissiveWorldSpaceDistance")
                        continue;
                }
            }
            if (material.HasProperty("_EmissiveColorMaskingEnable"))
            {
                if (material.GetInt("_EmissiveColorMaskingEnable") == 0)
                {
                    if (prop.name == "_EmissiveColorMaskingColor")
                        continue;
                    if (prop.name == "_EmissiveColorMaskingRange")
                        continue;
                    if (prop.name == "_EmissiveColorMaskingFuzziness")
                        continue;
                }
            }
            if (material.HasProperty("_EmissiveGlowEnable"))
            {
                if (material.GetInt("_EmissiveGlowEnable") == 0)
                {
                    if (prop.name == "_EmissiveGlowisGlobal")
                        continue;
                    if (prop.name == "_EmissiveGlowColor")
                        continue;
                    if (prop.name == "_EmissiveGlowIntensity")
                        continue;
                    if (prop.name == "_EmissiveGlowIntensityHDRP")
                        continue;
                    if (prop.name == "_EmissiveGlowExposureWeight")
                        continue;
                    if (prop.name == "_EmissiveGlowIsRandom")
                        continue;
                    if (prop.name == "_EmissiveGlowRandomSpeed")
                        continue;
                }
            }
            if (material.HasProperty("_EmissiveMaskEnable"))
            {
                if (material.GetInt("_EmissiveMaskEnable") == 0)
                {
                    if (prop.name == "_EmissiveMaskisGlobal")
                        continue;
                    if (prop.name == "_EmissiveMask")
                        continue;
                    if (prop.name == "_EmissiveMaskUVs")
                        continue;
                    if (prop.name == "_EmissiveMaskRotation")
                        continue;
                    if (prop.name == "_EmissiveMaskPanningSpeedX")
                        continue;
                    if (prop.name == "_EmissiveMaskPanningSpeedY")
                        continue;
                    if (prop.name == "_EmissiveMaskRColor")
                        continue;
                    if (prop.name == "_EmissiveMaskRIntensity")
                        continue;
                    if (prop.name == "_EmissiveMaskRIntensityHDRP")
                        continue;
                    if (prop.name == "_EmissiveMaskRExposureWeight")
                        continue;
                    if (prop.name == "_EmissiveMaskGColor")
                        continue;
                    if (prop.name == "_EmissiveMaskGIntensity")
                        continue;
                    if (prop.name == "_EmissiveMaskGIntensityHDRP")
                        continue;
                    if (prop.name == "_EmissiveMaskGExposureWeight")
                        continue;
                    if (prop.name == "_EmissiveMaskBColor")
                        continue;
                    if (prop.name == "_EmissiveMaskBIntensity")
                        continue;
                    if (prop.name == "_EmissiveMaskBIntensityHDRP")
                        continue;
                    if (prop.name == "_EmissiveMaskBExposureWeight")
                        continue;
                    if (prop.name == "_EmissiveMaskAColor")
                        continue;
                    if (prop.name == "_EmissiveMaskAIntensity")
                        continue;
                    if (prop.name == "_EmissiveMaskAIntensityHDRP")
                        continue;
                    if (prop.name == "_EmissiveMaskAExposureWeight")
                        continue;
                }
            }
            #endregion [DESF Module Emission]

            #region [DESF Module Emission Sonar Scan]
            if (material.HasProperty("_SonarEnable"))
            {
                if (material.GetInt("_SonarEnable") == 0)
                {
                    if (prop.name == "_SonarEmissiveisGlobal")
                        continue;
                    if (prop.name == "_EmissionFlags")
                        continue;
                    if (prop.name == "_SonarEmissiveRenderFace")
                        continue;
                    if (prop.name == "_SonarEmissiveColor")
                        continue;
                    if (prop.name == "_SonarEmissiveIntensity")
                        continue;
                    if (prop.name == "_SonarEmissiveIntensityHDRP")
                        continue;
                    if (prop.name == "_SonarEmissiveExposureWeight")
                        continue;
                    if (prop.name == "_SonarBrightness")
                        continue;
                    if (prop.name == "_SonarSpeed")
                        continue;
                    if (prop.name == "_SonarCurve")
                        continue;
                    if (prop.name == "_SonarFadeMode")
                        continue;
                    if (prop.name == "_SonarFadeRange")
                        continue;
                    if (prop.name == "_SonarFadeDistance")
                        continue;
                }
            }
            #endregion [DESF Module Emission Sonar Scan]

            #region [DESF Module Emission Blending]
            if (material.HasProperty("_BlendEmissiveEnable"))
            {
                if (material.GetInt("_BlendEmissiveEnable") == 0)
                {
                    if (prop.name == "_EmissionFlags")
                        continue;
                    if (prop.name == "_BlendEmissiveRenderFace")
                        continue;
                    if (prop.name == "_BlendEmissiveAffectAlbedoBias")
                        continue;
                    if (prop.name == "_BlendEmissiveMaskMap")
                        continue;
                    if (prop.name == "_BlendEmissionMaskUVs")
                        continue;
                    if (prop.name == "_BlendEmissiveSpace")
                        continue;
                    if (prop.name == "_BlendEmissionWorldSpaceOffset")
                        continue;
                    if (prop.name == "_BlendEmissionWorldSpaceBlend")
                        continue;
                    if (prop.name == "_BlendEmissionWorldSpaceScatter")
                        continue;
                    if (prop.name == "_BlendEmissionWorldSpaceShift")
                        continue;
                    if (prop.name == "_BlendEmissionWorldSpaceDistance")
                        continue;
                    if (prop.name == "_BlendAEmissiveColor")
                        continue;
                    if (prop.name == "_BlendAEmissiveisGlobal")
                        continue;
                    if (prop.name == "_BlendAEmissiveIntensity")
                        continue;
                    if (prop.name == "_BlendAEmissiveIntensityHDRP")
                        continue;
                    if (prop.name == "_BlendAEmissiveExposureWeight")
                        continue;
                    if (prop.name == "_BlendAColorPaletteMode")
                        continue;
                    if (prop.name == "_BlendAColorPaletteSpeed")
                        continue;
                    if (prop.name == "_BlendAColorPaletteIntensity")
                        continue;
                    if (prop.name == "_BlendBEmissiveColor")
                        continue;
                    if (prop.name == "_BlendBEmissiveisGlobal")
                        continue;
                    if (prop.name == "_BlendBEmissiveIntensity")
                        continue;
                    if (prop.name == "_BlendBEmissiveIntensityHDRP")
                        continue;
                    if (prop.name == "_BlendBEmissiveExposureWeight")
                        continue;
                    if (prop.name == "_BlendBColorPaletteMode")
                        continue;
                    if (prop.name == "_BlendBColorPaletteSpeed")
                        continue;
                    if (prop.name == "_BlendBColorPaletteIntensity")
                        continue;
                    if (prop.name == "_BlendGlowEmissiveColor")
                        continue;
                    if (prop.name == "_BlendGlowisGlobal")
                        continue;
                    if (prop.name == "_BlendGlowIntensity")
                        continue;
                    if (prop.name == "_BlendGlowIntensityHDRP")
                        continue;
                    if (prop.name == "_BlendGlowExposureWeight")
                        continue;
                    if (prop.name == "_BlendGlowColorPaletteMode")
                        continue;
                    if (prop.name == "_BlendGlowColorPaletteSpeed")
                        continue;
                    if (prop.name == "_BlendGlowColorPaletteIntensity")
                        continue;
                }
            }
            if (material.HasProperty("_BlendEmissiveSpace"))
            {
                if (material.GetInt("_BlendEmissiveSpace") == 0)
                {
                    if (prop.name == "_BlendEmissionWorldSpaceOffset")
                        continue;
                    if (prop.name == "_BlendEmissionWorldSpaceBlend")
                        continue;
                    if (prop.name == "_BlendEmissionWorldSpaceScatter")
                        continue;
                    if (prop.name == "_BlendEmissionWorldSpaceShift")
                        continue;
                    if (prop.name == "_BlendEmissionWorldSpaceDistance")
                        continue;
                }
            }
            #endregion [DESF Module Emission Blending]

            #region [DESF Module Emission Highlight]
            if (material.HasProperty("_HighlightEmissiveEnable"))
            {
                if (material.GetInt("_HighlightEmissiveEnable") == 0)
                {
                    if (prop.name == "_EmissionFlags")
                        continue;
                    if (prop.name == "_HighlightEmissiveRenderFace")
                        continue;
                    if (prop.name == "_HighlightEmissiveColor")
                        continue;
                    if (prop.name == "_HighlightEmissiveisGlobal")
                        continue;
                    if (prop.name == "_HighlightEmissiveIntensity")
                        continue;
                    if (prop.name == "_HighlightEmissiveIntensityHDRP")
                        continue;
                    if (prop.name == "_HighlightEmissiveExposureWeight")
                        continue;
                    if (prop.name == "_HighlightEmissiveSharpness")
                        continue;
                    if (prop.name == "_HighlightEmissiveOffset")
                        continue;
                    if (prop.name == "_HighlightEmissiveSpeed")
                        continue;
                    if (prop.name == "_HighlightEmissiveSpeedMin")
                        continue;
                    if (prop.name == "_HighlightEmissiveSpeedMax")
                        continue;
                }
            }
            #endregion [DESF Module Emission Highlight]

            #region [DESF Module Emission Holographic]
            if (material.HasProperty("_HologramEmissiveEnable"))
            {
                if (material.GetInt("_HologramEmissiveEnable") == 0)
                {
                    if (prop.name == "_HologramEmissiveRenderFace")
                        continue;
                    if (prop.name == "_HologramEmissiveAffectAlbedoBias")
                        continue;
                    if (prop.name == "_HologramEmissiveMap")
                        continue;
                    if (prop.name == "_HologramGlitchTilingX")
                        continue;
                    if (prop.name == "_HologramGlitchTilingY")
                        continue;
                    if (prop.name == "_HologramGlitchScaleX")
                        continue;
                    if (prop.name == "_HologramGlitchScaleY")
                        continue;
                    if (prop.name == "_HologramGlitchSurfaceStrength")
                        continue;
                    if (prop.name == "_HologramGlitchSurfaceOffset")
                        continue;
                    if (prop.name == "_HologramGlitchEdgeStrength")
                        continue;
                    if (prop.name == "_HologramGlitchEdgeOffset")
                        continue;
                    if (prop.name == "_HologramEmissiveEdgeColor")
                        continue;
                    if (prop.name == "_HologramEmissiveEdgeisGlobal")
                        continue;
                    if (prop.name == "_HologramEmissiveEdgeIntensity")
                        continue;
                    if (prop.name == "_HologramEmissiveEdgeIntensityHDRP")
                        continue;
                    if (prop.name == "_HologramEmissiveEdgeExposureWeight")
                        continue;
                    if (prop.name == "_HologramEmissiveMiddleColor")
                        continue;
                    if (prop.name == "_HologramEmissiveMiddleisGlobal")
                        continue;
                    if (prop.name == "_HologramEmissiveMiddleIntensity")
                        continue;
                    if (prop.name == "_HologramEmissiveMiddleIntensityHDRP")
                        continue;
                    if (prop.name == "_HologramEmissiveMiddleExposureWeight")
                        continue;
                    if (prop.name == "_HologramEmissiveCenterColor")
                        continue;
                    if (prop.name == "_HologramEmissiveCenterisGlobal")
                        continue;
                    if (prop.name == "_HologramEmissiveCenterIntensity")
                        continue;
                    if (prop.name == "_HologramEmissiveCenterIntensityHDRP")
                        continue;
                    if (prop.name == "_HologramEmissiveCenterExposureWeight")
                        continue;
                    if (prop.name == "_HologramFlickerMode")
                        continue;
                    if (prop.name == "_HologramFlickerSpeed")
                        continue;
                }
            }
            #endregion [DESF Module Emission Holographic]

            #region [DESF Module Emission Double Sided]
            if (material.HasProperty("_EmissiveDoubleSidedEnable"))
            {
                if (material.GetInt("_EmissiveDoubleSidedEnable") == 0)
                {
                    if (prop.name == "_EmissiveisGlobal")
                        continue;
                    if (prop.name == "_EmissionFlags")
                        continue;
                    if (prop.name == "_EmissiveAffectAlbedoBias")
                        continue;
                    if (prop.name == "_EmissiveFrontFaceColor")
                        continue;
                    if (prop.name == "_EmissiveFrontFaceisGlobal")
                        continue;
                    if (prop.name == "_EmissiveFrontFaceIntensity")
                        continue;
                    if (prop.name == "_EmissiveFrontFaceIntensityHDRP")
                        continue;
                    if (prop.name == "_EmissiveFrontFaceExposureWeight")
                        continue;
                    if (prop.name == "_EmissiveBackFaceColor")
                        continue;
                    if (prop.name == "_EmissiveBackFaceisGlobal")
                        continue;
                    if (prop.name == "_EmissiveBackFaceIntensity")
                        continue;
                    if (prop.name == "_EmissiveBackFaceIntensityHDRP")
                        continue;
                    if (prop.name == "_EmissiveBackFaceExposureWeight")
                        continue;
                    if (prop.name == "_EmissiveMapEnable")
                        continue;
                    if (prop.name == "_EmissiveColorMap")
                        continue;
                    if (prop.name == "_EmissiveColorMapUVs")
                        continue;
                    if (prop.name == "_EmissiveColorMapNoise")
                        continue;
                    if (prop.name == "_EmissivePanningRotation")
                        continue;
                    if (prop.name == "_EmissivePanningSpeedX")
                        continue;
                    if (prop.name == "_EmissivePanningSpeedY")
                        continue;
                    if (prop.name == "_EmissiveWorldSpaceBlend")
                        continue;
                    if (prop.name == "_EmissiveWorldSpaceOffset")
                        continue;
                    if (prop.name == "_EmissiveWorldSpaceShift")
                        continue;
                    if (prop.name == "_EmissiveWorldSpaceScatter")
                        continue;
                    if (prop.name == "_EmissiveWorldSpaceDistance")
                        continue;
                    if (prop.name == "_EmissiveColorMaskingEnable")
                        continue;
                    if (prop.name == "_EmissiveColorMaskingColor")
                        continue;
                    if (prop.name == "_EmissiveColorMaskingRange")
                        continue;
                    if (prop.name == "_EmissiveColorMaskingFuzziness")
                        continue;
                    if (prop.name == "_EmissiveGlowEnable")
                        continue;
                    if (prop.name == "_EmissiveGlowisGlobal")
                        continue;
                    if (prop.name == "_EmissiveGlowColor")
                        continue;
                    if (prop.name == "_EmissiveGlowIntensity")
                        continue;
                    if (prop.name == "_EmissiveGlowIntensityHDRP")
                        continue;
                    if (prop.name == "_EmissiveGlowExposureWeight")
                        continue;
                    if (prop.name == "_EmissiveMaskEnable")
                        continue;
                    if (prop.name == "_EmissiveMaskisGlobal")
                        continue;
                    if (prop.name == "_EmissiveMask")
                        continue;
                    if (prop.name == "_EmissiveMaskUVs")
                        continue;
                    if (prop.name == "_EmissiveMaskRotation")
                        continue;
                    if (prop.name == "_EmissiveMaskPanningSpeedX")
                        continue;
                    if (prop.name == "_EmissiveMaskPanningSpeedY")
                        continue;
                    if (prop.name == "_EmissiveMaskRColor")
                        continue;
                    if (prop.name == "_EmissiveMaskRIntensity")
                        continue;
                    if (prop.name == "_EmissiveMaskRIntensityHDRP")
                        continue;
                    if (prop.name == "_EmissiveMaskRExposureWeight")
                        continue;
                    if (prop.name == "_EmissiveMaskGColor")
                        continue;
                    if (prop.name == "_EmissiveMaskGIntensity")
                        continue;
                    if (prop.name == "_EmissiveMaskGIntensityHDRP")
                        continue;
                    if (prop.name == "_EmissiveMaskGExposureWeight")
                        continue;
                    if (prop.name == "_EmissiveMaskBColor")
                        continue;
                    if (prop.name == "_EmissiveMaskBIntensity")
                        continue;
                    if (prop.name == "_EmissiveMaskBIntensityHDRP")
                        continue;
                    if (prop.name == "_EmissiveMaskBExposureWeight")
                        continue;
                    if (prop.name == "_EmissiveMaskAColor")
                        continue;
                    if (prop.name == "_EmissiveMaskAIntensity")
                        continue;
                    if (prop.name == "_EmissiveMaskAIntensityHDRP")
                        continue;
                    if (prop.name == "_EmissiveMaskAExposureWeight")
                        continue;
                }
            }
            if (material.HasProperty("_EmissiveMapEnable"))
            {
                if (material.GetInt("_EmissiveMapEnable") == 0)
                {
                    if (prop.name == "_EmissiveColorMap")
                        continue;
                    if (prop.name == "_EmissiveColorMapUVs")
                        continue;
                    if (prop.name == "_EmissiveColorMapNoise")
                        continue;
                    if (prop.name == "_EmissivePanningRotation")
                        continue;
                    if (prop.name == "_EmissivePanningSpeedX")
                        continue;
                    if (prop.name == "_EmissivePanningSpeedY")
                        continue;
                    if (prop.name == "_EmissiveWorldSpaceBlend")
                        continue;
                    if (prop.name == "_EmissiveWorldSpaceOffset")
                        continue;
                    if (prop.name == "_EmissiveWorldSpaceShift")
                        continue;
                    if (prop.name == "_EmissiveWorldSpaceScatter")
                        continue;
                    if (prop.name == "_EmissiveWorldSpaceDistance")
                        continue;
                }
            }
            if (material.HasProperty("_EmissiveColorMaskingEnable"))
            {
                if (material.GetInt("_EmissiveColorMaskingEnable") == 0)
                {
                    if (prop.name == "_EmissiveColorMaskingColor")
                        continue;
                    if (prop.name == "_EmissiveColorMaskingRange")
                        continue;
                    if (prop.name == "_EmissiveColorMaskingFuzziness")
                        continue;
                }
            }
            if (material.HasProperty("_EmissiveGlowEnable"))
            {
                if (material.GetInt("_EmissiveGlowEnable") == 0)
                {
                    if (prop.name == "_EmissiveGlowisGlobal")
                        continue;
                    if (prop.name == "_EmissiveGlowColor")
                        continue;
                    if (prop.name == "_EmissiveGlowIntensity")
                        continue;
                    if (prop.name == "_EmissiveGlowIntensityHDRP")
                        continue;
                    if (prop.name == "_EmissiveGlowExposureWeight")
                        continue;
                }
            }
            if (material.HasProperty("_EmissiveMaskEnable"))
            {
                if (material.GetInt("_EmissiveMaskEnable") == 0)
                {
                    if (prop.name == "_EmissiveMaskisGlobal")
                        continue;
                    if (prop.name == "_EmissiveMask")
                        continue;
                    if (prop.name == "_EmissiveMaskUVs")
                        continue;
                    if (prop.name == "_EmissiveMaskRotation")
                        continue;
                    if (prop.name == "_EmissiveMaskPanningSpeedX")
                        continue;
                    if (prop.name == "_EmissiveMaskPanningSpeedY")
                        continue;
                    if (prop.name == "_EmissiveMaskRColor")
                        continue;
                    if (prop.name == "_EmissiveMaskRIntensity")
                        continue;
                    if (prop.name == "_EmissiveMaskRIntensityHDRP")
                        continue;
                    if (prop.name == "_EmissiveMaskRExposureWeight")
                        continue;
                    if (prop.name == "_EmissiveMaskGColor")
                        continue;
                    if (prop.name == "_EmissiveMaskGIntensity")
                        continue;
                    if (prop.name == "_EmissiveMaskGIntensityHDRP")
                        continue;
                    if (prop.name == "_EmissiveMaskGExposureWeight")
                        continue;
                    if (prop.name == "_EmissiveMaskBColor")
                        continue;
                    if (prop.name == "_EmissiveMaskBIntensity")
                        continue;
                    if (prop.name == "_EmissiveMaskBIntensityHDRP")
                        continue;
                    if (prop.name == "_EmissiveMaskBExposureWeight")
                        continue;
                    if (prop.name == "_EmissiveMaskAColor")
                        continue;
                    if (prop.name == "_EmissiveMaskAIntensity")
                        continue;
                    if (prop.name == "_EmissiveMaskAIntensityHDRP")
                        continue;
                    if (prop.name == "_EmissiveMaskAExposureWeight")
                        continue;
                }
            }
            #endregion [DESF Module Emission Double Sided]

            #region [DESF Module Moss]
            if (material.HasProperty("_MossEnable"))
            {
                if (material.GetInt("_MossEnable") == 0)
                {
                    if (prop.name == "_MossColorTop")
                        continue;
                    if (prop.name == "_MossBrightnessTop")
                        continue;
                    if (prop.name == "_MossColorBottom")
                        continue;
                    if (prop.name == "_MossBrightnessBottom")
                        continue;
                    if (prop.name == "_MossSaturation")
                        continue;
                    if (prop.name == "_MossColorMap")
                        continue;
                    if (prop.name == "_MossUVSpace")
                        continue;
                    if (prop.name == "_MossUVs")
                        continue;
                    if (prop.name == "_MossMetallicStrength")
                        continue;
                    if (prop.name == "_MossOcclusionStrengthAO")
                        continue;
                    if (prop.name == "_MossSmoothnessStrength")
                        continue;
                    if (prop.name == "_MossNormalMap")
                        continue;
                    if (prop.name == "_MossNormalStrength")
                        continue;
                    if (prop.name == "_MossNoiseMap")
                        continue;
                    if (prop.name == "_MossNoiseUV")
                        continue;
                    if (prop.name == "_MossNoiseOffset")
                        continue;
                    if (prop.name == "_MossNoiseLength")
                        continue;
                    if (prop.name == "_MossVetexColorMode")
                        continue;
                    if (prop.name == "_MossVetexColorBlendHeight")
                        continue;
                    if (prop.name == "_MossVetexColorBlendSmooth")
                        continue;
                    if (prop.name == "_MossMode")
                        continue;
                    if (prop.name == "_MossBlendNormalInfluence")
                        continue;
                    if (prop.name == "_MossBlendStrength")
                        continue;
                    if (prop.name == "_MossBlendStrengthHeight")
                        continue;
                    if (prop.name == "_MossBlendOffset")
                        continue;
                    if (prop.name == "_MossBlendSideStrength")
                        continue;
                    if (prop.name == "_MossBlendNormalInfluenceBottom")
                        continue;
                    if (prop.name == "_MossBlendStrengthBottom")
                        continue;
                    if (prop.name == "_MossBlendStrengthHeightBottom")
                        continue;
                    if (prop.name == "_MossBlendOffsetBottom")
                        continue;
                    if (prop.name == "_MossHeightEnable")
                        continue;
                    if (prop.name == "_MossHeightStrength")
                        continue;
                    if (prop.name == "_MossBlendStrengthHeight")
                        continue;
                    if (prop.name == "_MossHeightWeight")
                        continue;
                    if (prop.name == "_MossHeightDepth")
                        continue;
                    if (prop.name == "_MossHeightNoiseScale")
                        continue;
                    if (prop.name == "_MossHeightNoiseShift")
                        continue;
                    if (prop.name == "_MossWetnessEnable")
                        continue;
                    if (prop.name == "_MossWetnessStrength")
                        continue;
                }
            }

            if (material.HasProperty("_MossHeightEnable"))
            {
                if (material.GetInt("_MossHeightEnable") == 0)
                {
                    if (prop.name == "_MossHeightStrength")
                        continue;
                    if (prop.name == "_MossHeightWeight")
                        continue;
                    if (prop.name == "_MossHeightDepth")
                        continue;
                    if (prop.name == "_MossHeightNoiseScale")
                        continue;
                    if (prop.name == "_MossHeightNoiseShift")
                        continue;
                }
            }
            if (material.HasProperty("_MossMode"))
            {
                if (material.GetInt("_MossMode") == 0)
                {
                    if (prop.name == "_MossBlendNormalInfluenceBottom")
                        continue;
                    if (prop.name == "_MossBlendStrengthBottom")
                        continue;
                    if (prop.name == "_MossBlendStrengthHeightBottom")
                        continue;
                    if (prop.name == "_MossBlendOffsetBottom")
                        continue;
                }
            }
            if (material.HasProperty("_MossMode"))
            {
                if (material.GetInt("_MossMode") == 1)
                {
                    if (prop.name == "_MossBlendNormalInfluence")
                        continue;
                    if (prop.name == "_MossBlendStrength")
                        continue;
                    if (prop.name == "_MossBlendStrengthHeight")
                        continue;
                    if (prop.name == "_MossBlendOffset")
                        continue;
                    if (prop.name == "_MossBlendSideStrength")
                        continue;
                }
            }
            if (material.HasProperty("_MossWetnessEnable"))
            {
                if (material.GetInt("_MossWetnessEnable") == 0)
                {
                    if (prop.name == "_MossWetnessStrength")
                        continue;
                }
            }
            #endregion [DESF Module Moss]

            #region [DESF Module Tessellation]
            if (material.HasProperty("_TessellationEnable"))
            {
                if (material.GetInt("_TessellationEnable") == 0)
                {
                    if (prop.name == "_TessellationStrength")
                        continue;
                    if (prop.name == "_TessellationDistanceMin")
                        continue;
                    if (prop.name == "_TessellationDistanceMax")
                        continue;
                    if (prop.name == "_TessellationCulling")
                        continue;
                }
            }
            #endregion [DESF Module Tessellation]

            #region [DESF Module Toon Map]
            if (material.HasProperty("_ToonMapEnable"))
            {
                if (material.GetInt("_ToonMapEnable") == 0)
                {
                    if (prop.name == "_ToonMapMode")
                        continue;
                    if (prop.name == "_ToonMapStereoConverge")
                        continue;
                    if (prop.name == "_ToonMap")
                        continue;
                    if (prop.name == "_ToonMapSaturation")
                        continue;
                }
            }
            #endregion [DESF Module Toon Map]

            #region [DESF Module Color Shift]
            if (material.HasProperty("_ColorShiftEnable"))
            {
                if (material.GetInt("_ColorShiftEnable") == 0)
                {
                    if (prop.name == "_ColorShiftSource")
                        continue;
                    if (prop.name == "_ColorShiftVariation")
                        continue;
                    if (prop.name == "_ColorShiftVariationRGB")
                        continue;
                    if (prop.name == "_ColorShiftInfluence")
                        continue;
                    if (prop.name == "_ColorShiftSaturation")
                        continue;
                    if (prop.name == "_ColorShiftNoiseScale")
                        continue;
                    if (prop.name == "_ColorShiftWorldSpaceDistance")
                        continue;
                    if (prop.name == "_ColorShiftWorldSpaceOffset")
                        continue;
                    if (prop.name == "_ColorShiftWorldSpaceNoiseShift")
                        continue;
                    if (prop.name == "_ColorShiftEnableMask")
                        continue;
                    if (prop.name == "_ColorShiftMaskMap")
                        continue;
                    if (prop.name == "_ColorShiftMaskInverted")
                        continue;
                    if (prop.name == "_ColorShiftMaskFuzziness")
                        continue;
                }
            }
            if (material.HasProperty("_ColorShiftSource"))
            {
                if (material.GetInt("_ColorShiftSource") == 0)
                {
                    if (prop.name == "_ColorShiftWorldSpaceDistance")
                        continue;
                    if (prop.name == "_ColorShiftWorldSpaceOffset")
                        continue;
                    if (prop.name == "_ColorShiftWorldSpaceNoiseShift")
                        continue;
                }
            }
            if (material.HasProperty("_ColorShiftSource"))
            {
                if (material.GetInt("_ColorShiftSource") == 2)
                {
                    if (prop.name == "_ColorShiftWorldSpaceDistance")
                        continue;
                    if (prop.name == "_ColorShiftWorldSpaceOffset")
                        continue;
                    if (prop.name == "_ColorShiftWorldSpaceNoiseShift")
                        continue;
                }
            }
            if (material.HasProperty("_ColorShiftSource"))
            {
                if (material.GetInt("_ColorShiftSource") == 3)
                {
                    if (prop.name == "_ColorShiftWorldSpaceDistance")
                        continue;
                    if (prop.name == "_ColorShiftWorldSpaceOffset")
                        continue;
                    if (prop.name == "_ColorShiftWorldSpaceNoiseShift")
                        continue;
                }
            }
            if (material.HasProperty("_ColorShiftEnableMask"))
            {
                if (material.GetInt("_ColorShiftEnableMask") == 0)
                {
                    if (prop.name == "_ColorShiftMaskMap")
                        continue;
                    if (prop.name == "_ColorShiftMaskInverted")
                        continue;
                    if (prop.name == "_ColorShiftMaskFuzziness")
                        continue;
                }
            }
            #endregion [DESF Module Color Shift]

            #region [DESF Module Outline]
            if (material.HasProperty("_OutlineEnable"))
            {
                if (material.GetInt("_OutlineEnable") == 0)
                {
                    if (prop.name == "_OutlineEmissiveColor")
                        continue;
                    if (prop.name == "_OutlineEmissiveisGlobal")
                        continue;
                    if (prop.name == "_EmissionFlags")
                        continue;
                    if (prop.name == "_OutlineEmissiveIntensity")
                        continue;
                    if (prop.name == "_OutlineEmissiveIntensityHDRP")
                        continue;
                    if (prop.name == "_OutlineEmissiveExposureWeight")
                        continue;
                    if (prop.name == "_OutlineThickness")
                        continue;
                    if (prop.name == "_OutlineDistance")
                        continue;
                    if (prop.name == "_OutlineMaskSource")
                        continue;
                    if (prop.name == "_OutlineMaskMap")
                        continue;
                    if (prop.name == "_OutlineMaskUVs")
                        continue;
                    if (prop.name == "_OutlineMaskPanningSpeedX")
                        continue;
                    if (prop.name == "_OutlineMaskPanningSpeedY")
                        continue;
                }
            }
            if (material.HasProperty("_OutlineMaskSource"))
            {
                if (material.GetInt("_OutlineMaskSource") == 0)
                {
                    if (prop.name == "_OutlineMaskMap")
                        continue;
                    if (prop.name == "_OutlineMaskUVs")
                        continue;
                    if (prop.name == "_OutlineMaskPanningSpeedX")
                        continue;
                    if (prop.name == "_OutlineMaskPanningSpeedY")
                        continue;
                }
            }
            if (material.HasProperty("_OutlineMaskSource"))
            {
                if (material.GetInt("_OutlineMaskSource") == 1)
                {
                    if (prop.name == "_OutlineMaskMap")
                        continue;
                    if (prop.name == "_OutlineMaskUVs")
                        continue;
                    if (prop.name == "_OutlineMaskPanningSpeedX")
                        continue;
                    if (prop.name == "_OutlineMaskPanningSpeedY")
                        continue;
                }
            }
            #endregion [DESF Module Outline]

            #region [DESF Module Reflection Probe URP]
            if (material.HasProperty("_ReflectionProbeEnable"))
            {
                if (material.GetInt("_ReflectionProbeEnable") == 0)
                {
                    if (prop.name == "_ReflectionProbeCloud")
                        continue;
                    if (prop.name == "_ReflectionProbeWobbleX")
                        continue;
                    if (prop.name == "_ReflectionProbeWobbleY")
                        continue;
                    if (prop.name == "_ReflectionProbeWobbleZ")
                        continue;
                    if (prop.name == "_ReflectionProbeLOD")
                        continue;
                    if (prop.name == "_ReflectionProbeBumpScale")
                        continue;
                    if (prop.name == "_ReflectionProbeBumpClamp")
                        continue;
                    if (prop.name == "_ReflectionProbeFresnelEnable")
                        continue;
                    if (prop.name == "_ReflectionProbeFresnelStrength")
                        continue;
                    if (prop.name == "_ReflectionProbeFresnelScale")
                        continue;
                    if (prop.name == "_ReflectionProbeFresnelPower")
                        continue;
                }
            }
            if (material.HasProperty("_ReflectionProbeFresnelEnable"))
            {
                if (material.GetInt("_ReflectionProbeFresnelEnable") == 0)
                {
                    if (prop.name == "_ReflectionProbeFresnelStrength")
                        continue;
                    if (prop.name == "_ReflectionProbeFresnelScale")
                        continue;
                    if (prop.name == "_ReflectionProbeFresnelPower")
                        continue;
                }
            }
            #endregion [DESF Module Reflection Probe URP]

            #region [DESF Module Vertex Melt]
            if (material.HasProperty("_VertexMeltEnable"))
            {
                if (material.GetInt("_VertexMeltEnable") == 0)
                {
                    if (prop.name == "_VertexMeltEmissiveColor")
                        continue;
                    if (prop.name == "_VertexMeltEmissiveisGlobal")
                        continue;
                    if (prop.name == "_EmissionFlags")
                        continue;
                    if (prop.name == "_VertexMeltEmissiveIntensity")
                        continue;
                    if (prop.name == "_VertexMeltEmissiveIntensityHDRP")
                        continue;
                    if (prop.name == "_VertexMeltEmissiveExposureWeight")
                        continue;
                    if (prop.name == "_VertexMeltColorPlaletteSpeed")
                        continue;
                    if (prop.name == "_VertexMeltNoiseMap")
                        continue;
                    if (prop.name == "_VertexMeltNoiseScale")
                        continue;
                    if (prop.name == "_VertexMeltStrength")
                        continue;
                    if (prop.name == "_VertexMeltOscillationAutoEnable")
                        continue;
                    if (prop.name == "_VertexMeltOscillationStrength")
                        continue;
                    if (prop.name == "_VertexMeltOscillationAutoStrength")
                        continue;
                    if (prop.name == "_VertexMeltOscillationAutoLimit")
                        continue;
                    if (prop.name == "_VertexMeltOscillationAutoSpeed")
                        continue;
                }
            }
            if (material.HasProperty("_VertexMeltOscillationAutoEnable"))
            {
                if (material.GetInt("_VertexMeltOscillationAutoEnable") == 0)
                {
                    if (prop.name == "_VertexMeltOscillationAutoStrength")
                        continue;
                    if (prop.name == "_VertexMeltOscillationAutoLimit")
                        continue;
                    if (prop.name == "_VertexMeltOscillationAutoSpeed")
                        continue;
                }
            }
            if (material.HasProperty("_VertexMeltOscillationAutoEnable"))
            {
                if (material.GetInt("_VertexMeltOscillationAutoEnable") == 1)
                {
                    if (prop.name == "_VertexMeltOscillationStrength")
                        continue;
                }
            }
            #endregion [DESF Module Vertex Melt]

            #region [DESF Module Weather Snow]
            if (material.HasProperty("_SnowEnable"))
            {
                if (material.GetInt("_SnowEnable") == 0)
                {
                    if (prop.name == "_SnowColorTop")
                        continue;
                    if (prop.name == "_SnowBrightnessTop")
                        continue;
                    if (prop.name == "_SnowColorBottom")
                        continue;
                    if (prop.name == "_SnowBrightnessBottom")
                        continue;
                    if (prop.name == "_SnowSaturation")
                        continue;
                    if (prop.name == "_SnowColorMap")
                        continue;
                    if (prop.name == "_SnowUVSpace")
                        continue;
                    if (prop.name == "_SnowUVs")
                        continue;
                    if (prop.name == "_SnowBackFaceBias")
                        continue;
                    if (prop.name == "_SnowMetallicStrength")
                        continue;
                    if (prop.name == "_SnowOcclusionStrengthAO")
                        continue;
                    if (prop.name == "_SnowSmoothnessStrength")
                        continue;
                    if (prop.name == "_SnowNormalMap")
                        continue;
                    if (prop.name == "_SnowNormalStrength")
                        continue;
                    if (prop.name == "_SnowSparkleEnable")
                        continue;
                    if (prop.name == "_SnowSparkleColor")
                        continue;
                    if (prop.name == "_SnowSparkleMap")
                        continue;
                    if (prop.name == "_SnowSparkleSaturate")
                        continue;
                    if (prop.name == "_SnowSparkleStrength")
                        continue;
                    if (prop.name == "_SnowSparkleFlicker")
                        continue;
                    if (prop.name == "_SnowSparkleCutoff")
                        continue;
                    if (prop.name == "_SnowSparkleFrequency")
                        continue;
                    if (prop.name == "_SnowSparkleScreenContribution")
                        continue;
                    if (prop.name == "_SnowSparkleAnimation")
                        continue;
                    if (prop.name == "_SnowSparkleSpeed")
                        continue;
                    if (prop.name == "_SnowNoiseMap")
                        continue;
                    if (prop.name == "_SnowNoiseUV")
                        continue;
                    if (prop.name == "_SnowNoiseOffset")
                        continue;
                    if (prop.name == "_SnowNoiseLength")
                        continue;
                    if (prop.name == "_SnowVetexColorMode")
                        continue;
                    if (prop.name == "_SnowVetexColorBlendHeight")
                        continue;
                    if (prop.name == "_SnowVetexColorBlendSmooth")
                        continue;
                    if (prop.name == "_SnowMode")
                        continue;
                    if (prop.name == "_SnowBlendNormalInfluence")
                        continue;
                    if (prop.name == "_SnowBlendStrength")
                        continue;
                    if (prop.name == "_SnowBlendStrengthHeight")
                        continue;
                    if (prop.name == "_SnowBlendOffset")
                        continue;
                    if (prop.name == "_SnowBlendSideStrength")
                        continue;
                    if (prop.name == "_SnowBlendNormalInfluenceBottom")
                        continue;
                    if (prop.name == "_SnowBlendStrengthBottom")
                        continue;
                    if (prop.name == "_SnowBlendStrengthHeightBottom")
                        continue;
                    if (prop.name == "_SnowBlendOffsetBottom")
                        continue;
                    if (prop.name == "_SnowHeightEnable")
                        continue;
                    if (prop.name == "_SnowHeightStrength")
                        continue;
                    if (prop.name == "_SnowBlendStrengthHeight")
                        continue;
                    if (prop.name == "_SnowHeightClipFar")
                        continue;
                    if (prop.name == "_SnowHeightWeight")
                        continue;
                    if (prop.name == "_SnowHeightDepth")
                        continue;
                    if (prop.name == "_SnowHeightNoiseScale")
                        continue;
                    if (prop.name == "_SnowHeightNoiseShift")
                        continue;
                    if (prop.name == "_SnowWetnessEnable")
                        continue;
                    if (prop.name == "_SnowWetnessStrength")
                        continue;
                }
            }
            if (material.HasProperty("_SnowHeightEnable"))
            {
                if (material.GetInt("_SnowHeightEnable") == 0)
                {
                    if (prop.name == "_SnowHeightStrength")
                        continue;
                    if (prop.name == "_SnowHeightClipFar")
                        continue;
                    if (prop.name == "_SnowHeightWeight")
                        continue;
                    if (prop.name == "_SnowHeightDepth")
                        continue;
                    if (prop.name == "_SnowHeightNoiseScale")
                        continue;
                    if (prop.name == "_SnowHeightNoiseShift")
                        continue;
                }
            }
            if (material.HasProperty("_SnowMode"))
            {
                if (material.GetInt("_SnowMode") == 0)
                {
                    if (prop.name == "_SnowBlendNormalInfluenceBottom")
                        continue;
                    if (prop.name == "_SnowBlendStrengthBottom")
                        continue;
                    if (prop.name == "_SnowBlendStrengthHeightBottom")
                        continue;
                    if (prop.name == "_SnowBlendOffsetBottom")
                        continue;
                }
            }
            if (material.HasProperty("_SnowMode"))
            {
                if (material.GetInt("_SnowMode") == 1)
                {
                    if (prop.name == "_SnowBlendNormalInfluence")
                        continue;
                    if (prop.name == "_SnowBlendStrength")
                        continue;
                    if (prop.name == "_SnowBlendStrengthHeight")
                        continue;
                    if (prop.name == "_SnowBlendOffset")
                        continue;
                    if (prop.name == "_SnowBlendSideStrength")
                        continue;
                }
            }
            if (material.HasProperty("_SnowSparkleEnable"))
            {
                if (material.GetInt("_SnowSparkleEnable") == 0)
                {
                    if (prop.name == "_SnowSparkleColor")
                        continue;
                    if (prop.name == "_SnowSparkleMap")
                        continue;
                    if (prop.name == "_SnowSparkleSaturate")
                        continue;
                    if (prop.name == "_SnowSparkleStrength")
                        continue;
                    if (prop.name == "_SnowSparkleFlicker")
                        continue;
                    if (prop.name == "_SnowSparkleCutoff")
                        continue;
                    if (prop.name == "_SnowSparkleFrequency")
                        continue;
                    if (prop.name == "_SnowSparkleScreenContribution")
                        continue;
                    if (prop.name == "_SnowSparkleAnimation")
                        continue;
                    if (prop.name == "_SnowSparkleSpeed")
                        continue;
                }
            }
            if (material.HasProperty("_SnowWetnessEnable"))
            {
                if (material.GetInt("_SnowWetnessEnable") == 0)
                {
                    if (prop.name == "_SnowWetnessStrength")
                        continue;
                }
            }
            #endregion [DESF Module Weather Snow]

            #region [DESF Module Weather Wetness]
            if (material.HasProperty("_WetnessEnable"))
            {
                if (material.GetInt("_WetnessEnable") == 0)
                {
                    if (prop.name == "_WetnessGlobalInfluenceEnable")
                        continue;
                    if (prop.name == "_Wetness")
                        continue;
                    if (prop.name == "_WetnessMask")
                        continue;
                }
            }
            #endregion [DESF Module Weather Wetness]

            #region [DESF Module Weather Rain]
            if (material.HasProperty("_RainEnable"))
            {
                if (material.GetInt("_RainEnable") == 0)
                {
                    if (prop.name == "_RainWetnessisGlobal")
                        continue;
                    if (prop.name == "_RainWetnessStrength")
                        continue;
                    if (prop.name == "_RainWetnessDarken")
                        continue;
                    if (prop.name == "_RainHorizontalEnable")
                        continue;
                    if (prop.name == "_RainHorizontalRainMap")
                        continue;
                    if (prop.name == "_RainHorizontalIntensity")
                        continue;
                    if (prop.name == "_RainHorizontalSpeed")
                        continue;
                    if (prop.name == "_RainHorizontalScreenContribution")
                        continue;
                    if (prop.name == "_RainHorizontalColumns")
                        continue;
                    if (prop.name == "_RainHorizontalRows")
                        continue;
                    if (prop.name == "_RainHorizontalUVTye")
                        continue;
                    if (prop.name == "_RainHorizontalUVs")
                        continue;
                    if (prop.name == "_RainVerticalEnable")
                        continue;
                    if (prop.name == "_RainVerticalRainMap")
                        continue;
                    if (prop.name == "_RainVerticalIntensity")
                        continue;
                    if (prop.name == "_RainVerticalSmoothEdge")
                        continue;
                    if (prop.name == "_RainVerticalSpeed")
                        continue;
                    if (prop.name == "_RainVerticalScreenContribution")
                        continue;
                    if (prop.name == "_RainVerticalColumns")
                        continue;
                    if (prop.name == "_RainVerticalRows")
                        continue;
                    if (prop.name == "_RainVerticalUVType")
                        continue;
                    if (prop.name == "_RainVerticalUVs")
                        continue;
                    if (prop.name == "_RainStaticEnable")
                        continue;
                    if (prop.name == "_RainStaticRainMap")
                        continue;
                    if (prop.name == "_RainStaticIntensity")
                        continue;
                    if (prop.name == "_RainStaticScreenContribution")
                        continue;
                    if (prop.name == "_RainStaticUVType")
                        continue;
                    if (prop.name == "_RainStaticUVs")
                        continue;
                }
            }

            if (material.HasProperty("_RainHorizontalEnable"))
            {
                if (material.GetInt("_RainHorizontalEnable") == 0)
                {
                    if (prop.name == "_RainHorizontalRainMap")
                        continue;
                    if (prop.name == "_RainHorizontalIntensity")
                        continue;
                    if (prop.name == "_RainHorizontalSpeed")
                        continue;
                    if (prop.name == "_RainHorizontalScreenContribution")
                        continue;
                    if (prop.name == "_RainHorizontalColumns")
                        continue;
                    if (prop.name == "_RainHorizontalRows")
                        continue;
                    if (prop.name == "_RainHorizontalUVTye")
                        continue;
                    if (prop.name == "_RainHorizontalUVs")
                        continue;
                }
            }
            if (material.HasProperty("_RainVerticalEnable"))
            {
                if (material.GetInt("_RainVerticalEnable") == 0)
                {
                    if (prop.name == "_RainVerticalRainMap")
                        continue;
                    if (prop.name == "_RainVerticalIntensity")
                        continue;
                    if (prop.name == "_RainVerticalSmoothEdge")
                        continue;
                    if (prop.name == "_RainVerticalSpeed")
                        continue;
                    if (prop.name == "_RainVerticalScreenContribution")
                        continue;
                    if (prop.name == "_RainVerticalColumns")
                        continue;
                    if (prop.name == "_RainVerticalRows")
                        continue;
                    if (prop.name == "_RainVerticalUVType")
                        continue;
                    if (prop.name == "_RainVerticalUVs")
                        continue;
                }
            }
            if (material.HasProperty("_RainStaticEnable"))
            {
                if (material.GetInt("_RainStaticEnable") == 0)
                {
                    if (prop.name == "_RainStaticRainMap")
                        continue;
                    if (prop.name == "_RainStaticIntensity")
                        continue;
                    if (prop.name == "_RainStaticScreenContribution")
                        continue;
                    if (prop.name == "_RainStaticUVType")
                        continue;
                    if (prop.name == "_RainStaticUVs")
                        continue;
                }
            }
            #endregion [DESF Module Weather Rain]

            #region [DESF Module Weather Ice]
            if (material.HasProperty("_IceFlowEnable"))
            {
                if (material.GetInt("_IceFlowEnable") == 0)
                {
                    if (prop.name == "_IceFlowColor0")
                        continue;
                    if (prop.name == "_IceFlowColor1")
                        continue;
                    if (prop.name == "_IceFlowStrength")
                        continue;
                    if (prop.name == "_IceFlowMap")
                        continue;
                    if (prop.name == "_IceFlowUVs")
                        continue;
                    if (prop.name == "_IceFlowSpeedX")
                        continue;
                    if (prop.name == "_IceFlowSpeedY")
                        continue;
                    if (prop.name == "_IceFlowHeightIterations")
                        continue;
                    if (prop.name == "_IceFlowHeightScale")
                        continue;
                    if (prop.name == "_IceFlowHeightReferencePlane")
                        continue;
                }
            }
            if (material.HasProperty("_IceWetnessEnable"))
            {
                if (material.GetInt("_IceWetnessEnable") == 0)
                {
                    if (prop.name == "_IceWetnesssStrength")
                        continue;
                }
            }

            #endregion [DESF Module Weather Ice]

            #region [DESF Module Weather Wind]
            if (material.HasProperty("_WindEnable"))
            {
                if (material.GetInt("_WindEnable") == 0)
                {
                    if (prop.name == "_WindEnableMode")
                        continue;
                    if (prop.name == "_WindEnableType")
                        continue;
                    if (prop.name == "_WindEnableTypeBranch")
                        continue;
                    if (prop.name == "_WindEnableMask")
                        continue;
                    if (prop.name == "_WindGlobalIntensity")
                        continue;
                    if (prop.name == "_WindGlobalTurbulence")
                        continue;
                    if (prop.name == "_WindLocalIntensity")
                        continue;
                    if (prop.name == "_WindLocalTurbulence")
                        continue;
                    if (prop.name == "_WindLocalPulseFrequency")
                        continue;
                    if (prop.name == "_WindLocalRandomOffset")
                        continue;
                    if (prop.name == "_WindLocalDirection")
                        continue;
                    if (prop.name == "_WindMaskType")
                        continue;
                    if (prop.name == "_WindMaskMap")
                        continue;
                    if (prop.name == "_WindMaskMapIntensity")
                        continue;
                    if (prop.name == "_WindMaskProcedralBottomUp")
                        continue;
                    if (prop.name == "_WindMaskProcedralTopDown")
                        continue;
                    if (prop.name == "_WindMaskProcedralSpherical")
                        continue;
                    if (prop.name == "_WindMaskProcedralSphericalInverted")
                        continue;
                    if (prop.name == "_WindFabricOscillating")
                        continue;
                    if (prop.name == "_WindFabricPatternMap")
                        continue;
                    if (prop.name == "_WindFabricIntensity")
                        continue;
                    if (prop.name == "_WindFabricSpeed")
                        continue;
                    if (prop.name == "_WindFabricPulseFrequency")
                        continue;
                    if (prop.name == "_WindFabricDirection")
                        continue;
                }
            }
            if (material.HasProperty("_WindMaskType"))
            {
                if (material.GetInt("_WindMaskType") == 1)
                {
                    if (prop.name == "_WindMaskMap")
                        continue;
                    if (prop.name == "_WindMaskMapIntensity")
                        continue;

                }
            }
            if (material.HasProperty("_WindMaskType"))
            {
                if (material.GetInt("_WindMaskType") == 0)
                {
                    if (prop.name == "_WindMaskProcedralTopDown")
                        continue;
                    if (prop.name == "_WindMaskProcedralBottomUp")
                        continue;
                    if (prop.name == "_WindMaskProcedralSpherical")
                        continue;
                    if (prop.name == "_WindMaskProcedralSphericalInverted")
                        continue;
                }
            }
            if (material.HasProperty("_WindEnableMode"))
            {
                if (material.GetInt("_WindEnableMode") == 1)
                {
                    if (prop.name == "_WindGlobalIntensity")
                        continue;
                    if (prop.name == "_WindGlobalTurbulence")
                        continue;
                }
            }
            if (material.HasProperty("_WindEnableMode"))
            {
                if (material.GetInt("_WindEnableMode") == 0)
                {
                    if (prop.name == "_WindLocalIntensity")
                        continue;
                    if (prop.name == "_WindLocalTurbulence")
                        continue;
                    if (prop.name == "_WindLocalPulseFrequency")
                        continue;
                    if (prop.name == "_WindLocalRandomOffset")
                        continue;
                    if (prop.name == "_WindLocalDirection")
                        continue;
                }
            }
            #endregion [DESF Module Weather Wind]

            #region [DESF Input Displacement]
            if (material.HasProperty("_DisplacementEnable"))
            {
                if (material.GetInt("_DisplacementEnable") == 0)
                {
                    if (prop.name == "_DisplacementNormalReconstructed")
                        continue;
                    if (prop.name == "_DisplacementStrength")
                        continue;
                    if (prop.name == "_DisplacementBlendInversion")
                        continue;
                    if (prop.name == "_DisplacementOffset")
                        continue;
                    if (prop.name == "_ParallaxMap")
                        continue;
                    if (prop.name == "_DisplacementEdgeEnable")
                        continue;
                    if (prop.name == "_DisplacementEdgeMin")
                        continue;
                    if (prop.name == "_DisplacementEdgeMax")
                        continue;
                    if (prop.name == "_DisplacementFadeEnable")
                        continue;
                    if (prop.name == "_DisplacementFadeDepth")
                        continue;
                    if (prop.name == "_DisplacementFadeStart")
                        continue;
                    if (prop.name == "_DisplacementFadeEnd")
                        continue;
                }
            }
            if (material.HasProperty("_00DisplacementEnable"))
            {
                if (material.GetInt("_00DisplacementEnable") == 0)
                {
                    if (prop.name == "_00DisplacementNormalReconstructed")
                        continue;
                    if (prop.name == "_00DisplacementStrength")
                        continue;
                    if (prop.name == "_00DisplacementOffset")
                        continue;
                    if (prop.name == "_00ParallaxMap")
                        continue;
                    if (prop.name == "_00DisplacementEdgeEnable")
                        continue;
                    if (prop.name == "_00DisplacementEdgeMin")
                        continue;
                    if (prop.name == "_00DisplacementEdgeMax")
                        continue;
                    if (prop.name == "_00DisplacementFadeEnable")
                        continue;
                    if (prop.name == "_00DisplacementFadeDepth")
                        continue;
                    if (prop.name == "_00DisplacementFadeStart")
                        continue;
                    if (prop.name == "_00DisplacementFadeEnd")
                        continue;
                }
            }
            if (material.HasProperty("_01DisplacementEnable"))
            {
                if (material.GetInt("_01DisplacementEnable") == 0)
                {
                    if (prop.name == "_01DisplacementNormalReconstructed")
                        continue;
                    if (prop.name == "_01DisplacementStrength")
                        continue;
                    if (prop.name == "_01DisplacementOffset")
                        continue;
                    if (prop.name == "_01ParallaxMap")
                        continue;
                    if (prop.name == "_01DisplacementEdgeEnable")
                        continue;
                    if (prop.name == "_01DisplacementEdgeMin")
                        continue;
                    if (prop.name == "_01DisplacementEdgeMax")
                        continue;
                    if (prop.name == "_01DisplacementFadeEnable")
                        continue;
                    if (prop.name == "_01DisplacementFadeDepth")
                        continue;
                    if (prop.name == "_01DisplacementFadeStart")
                        continue;
                    if (prop.name == "_01DisplacementFadeEnd")
                        continue;
                }
            }
            if (material.HasProperty("_02DisplacementEnable"))
            {
                if (material.GetInt("_02DisplacementEnable") == 0)
                {
                    if (prop.name == "_02DisplacementNormalReconstructed")
                        continue;
                    if (prop.name == "_02DisplacementStrength")
                        continue;
                    if (prop.name == "_02DisplacementOffset")
                        continue;
                    if (prop.name == "_02ParallaxMap")
                        continue;
                    if (prop.name == "_02DisplacementEdgeEnable")
                        continue;
                    if (prop.name == "_02DisplacementEdgeMin")
                        continue;
                    if (prop.name == "_02DisplacementEdgeMax")
                        continue;
                    if (prop.name == "_02DisplacementFadeEnable")
                        continue;
                    if (prop.name == "_02DisplacementFadeDepth")
                        continue;
                    if (prop.name == "_02DisplacementFadeStart")
                        continue;
                    if (prop.name == "_02DisplacementFadeEnd")
                        continue;
                }
            }
            if (material.HasProperty("_DisplacementEdgeEnable"))
            {
                if (material.GetInt("_DisplacementEdgeEnable") == 0)
                {
                    if (prop.name == "_DisplacementEdgeMin")
                        continue;
                    if (prop.name == "_DisplacementEdgeMax")
                        continue;
                }
            }
            if (material.HasProperty("_DisplacementFadeEnable"))
            {
                if (material.GetInt("_DisplacementFadeEnable") == 0)
                {
                    if (prop.name == "_DisplacementFadeDepth")
                        continue;
                    if (prop.name == "_DisplacementFadeStart")
                        continue;
                    if (prop.name == "_DisplacementFadeEnd")
                        continue;
                }
            }
            #endregion [DESF Input Displacement]

            #region [DESF Input Occlusion]
            if (material.HasProperty("_OcclusionSourceBaked"))
            {
                if (material.GetInt("_OcclusionSourceBaked") == 1)
                {
                    if (prop.name == "_OcclusionSourceInverted")
                        continue;
                    if (prop.name == "_OcclusionMap")
                        continue;
                }
            }
            #endregion [DESF Input Occlusion]

            #region [DESF Input Smoothness]
            if (material.HasProperty("_SmoothnessSourceTexture"))
            {
                if (material.GetInt("_SmoothnessSourceTexture") == 0)
                {
                    if (prop.name == "_SmoothnessSource")
                        continue;
                    if (prop.name == "_SmoothnessMap")
                        continue;
                    if (prop.name == "_SmoothnessUVs")
                        continue;
                    if (prop.name == "_SmoothnessRotation")
                        continue;
                }
            }
            if (material.HasProperty("_SmoothnessFresnelEnable"))
            {
                if (material.GetInt("_SmoothnessFresnelEnable") == 0)
                {
                    if (prop.name == "_SmoothnessFresnelScale")
                        continue;
                    if (prop.name == "_SmoothnessFresnelPower")
                        continue;
                }
            }
            #endregion [DESF Input Smoothness]

            #region [DESF Input Smoothness Custom]
            if (material.HasProperty("_00SmoothnessSourceTexture"))
            {
                if (material.GetInt("_00SmoothnessSourceTexture") == 0)
                {
                    if (prop.name == "_00SmoothnessSource")
                        continue;
                    if (prop.name == "_00SmoothnessMap")
                        continue;
                }
            }
            if (material.HasProperty("_00SmoothnessFresnelEnable"))
            {
                if (material.GetInt("_00SmoothnessFresnelEnable") == 0)
                {
                    if (prop.name == "_00SmoothnessFresnelScale")
                        continue;
                    if (prop.name == "_00SmoothnessFresnelPower")
                        continue;
                }
            }
            if (material.HasProperty("_01SmoothnessSourceTexture"))
            {
                if (material.GetInt("_01SmoothnessSourceTexture") == 0)
                {
                    if (prop.name == "_01SmoothnessSource")
                        continue;
                    if (prop.name == "_01SmoothnessMap")
                        continue;
                }
            }
            if (material.HasProperty("_01SmoothnessFresnelEnable"))
            {
                if (material.GetInt("_01SmoothnessFresnelEnable") == 0)
                {
                    if (prop.name == "_01SmoothnessFresnelScale")
                        continue;
                    if (prop.name == "_01SmoothnessFresnelPower")
                        continue;
                }
            }
            if (material.HasProperty("_02SmoothnessSourceTexture"))
            {
                if (material.GetInt("_02SmoothnessSourceTexture") == 0)
                {
                    if (prop.name == "_02SmoothnessSource")
                        continue;
                    if (prop.name == "_02SmoothnessMap")
                        continue;
                }
            }
            if (material.HasProperty("_02SmoothnessFresnelEnable"))
            {
                if (material.GetInt("_02SmoothnessFresnelEnable") == 0)
                {
                    if (prop.name == "_02SmoothnessFresnelScale")
                        continue;
                    if (prop.name == "_02SmoothnessFresnelPower")
                        continue;
                }
            }
            if (material.HasProperty("_DirtSmoothnessSourceTexture"))
            {
                if (material.GetInt("_DirtSmoothnessSourceTexture") == 0)
                {
                    if (prop.name == "_DirtSmoothnessSource")
                        continue;
                    if (prop.name == "_DirtSmoothnessMap")
                        continue;
                }
            }
            if (material.HasProperty("_DirtSmoothnessFresnelEnable"))
            {
                if (material.GetInt("_DirtSmoothnessFresnelEnable") == 0)
                {
                    if (prop.name == "_DirtSmoothnessFresnelScale")
                        continue;
                    if (prop.name == "_DirtSmoothnessFresnelPower")
                        continue;
                }
            }
            if (material.HasProperty("_SnowSmoothnessSourceTexture"))
            {
                if (material.GetInt("_SnowSmoothnessSourceTexture") == 0)
                {
                    if (prop.name == "_SnowSmoothnessSource")
                        continue;
                    if (prop.name == "_SnowSmoothnessMap")
                        continue;
                }
            }
            if (material.HasProperty("_SnowSmoothnessFresnelEnable"))
            {
                if (material.GetInt("_SnowSmoothnessFresnelEnable") == 0)
                {
                    if (prop.name == "_SnowSmoothnessFresnelScale")
                        continue;
                    if (prop.name == "_SnowSmoothnessFresnelPower")
                        continue;
                }
            }
            if (material.HasProperty("_MossSmoothnessSourceTexture"))
            {
                if (material.GetInt("_MossSmoothnessSourceTexture") == 0)
                {
                    if (prop.name == "_MossSmoothnessSource")
                        continue;
                    if (prop.name == "_SnowSmoothnessMap")
                        continue;
                }
            }
            if (material.HasProperty("_MossSmoothnessFresnelEnable"))
            {
                if (material.GetInt("_MossSmoothnessFresnelEnable") == 0)
                {
                    if (prop.name == "_MossSmoothnessFresnelScale")
                        continue;
                    if (prop.name == "_MossSmoothnessFresnelPower")
                        continue;
                }
            }
            #endregion [DESF Input Smoothness Custom]

            #region [DESF Input Specular]
            if (material.HasProperty("_SpecularEnable"))
            {
                if (material.GetInt("_SpecularEnable") == 0)
                {
                    if (prop.name == "_SpecularEnableClamped")
                        continue;
                    if (prop.name == "_SpecularColor")
                        continue;
                    if (prop.name == "_SpecularMode")
                        continue;
                    if (prop.name == "_SpecularWrap")
                        continue;
                    if (prop.name == "_SpecularStrength")
                        continue;
                    if (prop.name == "_SpecularStrengthDielectric")
                        continue;
                    if (prop.name == "_SpecularStrengthDielectricIOR")
                        continue;
                }
            }
            if (material.HasProperty("_SpecularMode"))
            {
                if (material.GetInt("_SpecularMode") == 0)
                {
                    if (prop.name == "_SpecularStrengthDielectric")
                        continue;
                    if (prop.name == "_SpecularStrengthDielectricIOR")
                        continue;
                }
            }
            if (material.HasProperty("_SpecularMode"))
            {
                if (material.GetInt("_SpecularMode") == 1)
                {
                    if (prop.name == "_SpecularStrength")
                        continue;
                    if (prop.name == "_SpecularStrengthDielectricIOR")
                        continue;
                }
            }
            if (material.HasProperty("_SpecularMode"))
            {
                if (material.GetInt("_SpecularMode") == 2)
                {
                    if (prop.name == "_SpecularStrength")
                        continue;
                    if (prop.name == "_SpecularStrengthDielectric")
                        continue;
                }
            }
            #endregion [DESF Input Specular]

            #region [DESF Input Subsurface Forward]
            if (material.HasProperty("_TransmissionEnable"))
            {
                if (material.GetInt("_TransmissionEnable") == 0)
                {
                    if (prop.name == "_TransmissionSource")
                        continue;
                    if (prop.name == "_TransmissionMaskMap")
                        continue;
                    if (prop.name == "_TransmissionMaskInverted")
                        continue;
                    if (prop.name == "_TransmissionMaskStrength")
                        continue;
                    if (prop.name == "_TransmissionMaskFeather")
                        continue;
                    if (prop.name == "_TransmissionColor")
                        continue;
                    if (prop.name == "_TransmissionStrength")
                        continue;
                    if (prop.name == "_TransmissionColorTempEnable")
                        continue;
                    if (prop.name == "_TransmissionColorTemp")
                        continue;
                    if (prop.name == "_URP_TransmissionShadow")
                        continue;
                }
            }
            if (material.HasProperty("_TransmissionSource"))
            {
                if (material.GetInt("_TransmissionSource") == 0)
                {
                    if (prop.name == "_TransmissionMaskMap")
                        continue;
                    if (prop.name == "_TransmissionMaskInverted")
                        continue;
                    if (prop.name == "_TransmissionMaskStrength")
                        continue;
                    if (prop.name == "_TransmissionMaskFeather")
                        continue;
                }
            }
            if (material.HasProperty("_TransmissionColorTempEnable"))
            {
                if (material.GetInt("_TransmissionColorTempEnable") == 0)
                {
                    if (prop.name == "_TransmissionColorTemp")
                        continue;
                }
            }
            if (material.HasProperty("_TranslucencyEnable"))
            {
                if (material.GetInt("_TranslucencyEnable") == 0)
                {
                    if (prop.name == "_TranslucencySource")
                        continue;
                    if (prop.name == "_ThicknessMap")
                        continue;
                    if (prop.name == "_ThicknessMapInverted")
                        continue;
                    if (prop.name == "_ThicknessStrength")
                        continue;
                    if (prop.name == "_ThicknessFeather")
                        continue;
                    if (prop.name == "_TranslucencyColor")
                        continue;
                    if (prop.name == "_TranslucencyStrength")
                        continue;
                    if (prop.name == "_TranslucencyColorTempEnable")
                        continue;
                    if (prop.name == "_TranslucencyColorTemp")
                        continue;
                }
            }
            if (material.HasProperty("_TranslucencySource"))
            {
                if (material.GetInt("_TranslucencySource") == 0)
                {
                    if (prop.name == "_ThicknessMap")
                        continue;
                    if (prop.name == "_ThicknessMapInverted")
                        continue;
                    if (prop.name == "_ThicknessStrength")
                        continue;
                    if (prop.name == "_ThicknessFeather")
                        continue;
                }
            }
            if (material.HasProperty("_TranslucencyColorTempEnable"))
            {
                if (material.GetInt("_TranslucencyColorTempEnable") == 0)
                {
                    if (prop.name == "_TranslucencyColorTemp")
                        continue;
                }
            }
            #endregion [DESF Input Subsurface Forward]

            #region [DESF Input Subsurface Deferred]
            if (material.HasProperty("_SubsurfaceEnable"))
            {
                if (material.GetInt("_SubsurfaceEnable") == 0)
                {
                    if (prop.name == "_SubsurfaceColor")
                        continue;
                    if (prop.name == "_SubsurfaceMaskInverted")
                        continue;
                    if (prop.name == "_SubsurfaceMask")
                        continue;
                    if (prop.name == "_SubsurfaceIntensity")
                        continue;
                    if (prop.name == "_SubsurfaceFeather")
                        continue;
                    if (prop.name == "_SubsurfaceScattering")
                        continue;
                    if (prop.name == "_SubsurfaceAngle")
                        continue;
                    if (prop.name == "_SubsurfaceDistortion")
                        continue;
                }
            }
            #endregion [DESF Input Subsurface Deferred]

            #region [DESF Input Clear Coat]
            if (material.HasProperty("_ClearCoatEnable"))
            {
                if (material.GetInt("_ClearCoatEnable") == 0)
                {
                    if (prop.name == "_ClearCoatNormalMap")
                        continue;
                    if (prop.name == "_ClearCoatUVMode")
                        continue;
                    if (prop.name == "_ClearCoatUVs")
                        continue;
                    if (prop.name == "_ClearCoatAmount")
                        continue;
                    if (prop.name == "_ClearCoatBumpStrength")
                        continue;
                    if (prop.name == "_ClearCoatScale")
                        continue;
                    if (prop.name == "_ClearCoatPower")
                        continue;
                }
            }
            #endregion [DESF Input Clear Coat]

            #region [DESF Input Clear Coat SRP]
            if (material.HasProperty("_CoatMaskEnable"))
            {
                if (material.GetInt("_CoatMaskEnable") == 0)
                {
                    if (prop.name == "_CoatMaskMap")
                        continue;
                    if (prop.name == "_CoatMaskUVMode")
                        continue;
                    if (prop.name == "_CoatMaskUVs")
                        continue;
                    if (prop.name == "_CoatMaskStrength")
                        continue;
                    if (prop.name == "_CoatMaskStrengthRemapMin")
                        continue;
                    if (prop.name == "_CoatMaskStrengthRemapMax")
                        continue;
                    if (prop.name == "_CoatMaskSmoothnessStrength")
                        continue;
                    if (prop.name == "_CoatMaskSmoothnessRemapMin")
                        continue;
                    if (prop.name == "_CoatMaskSmoothnessRemapMax")
                        continue;
                }
            }
            #endregion [DESF Input Clear Coat SRP]

            #region [DESF Input Water Specular]
            if (material.HasProperty("_WaterSpecularEnable"))
            {
                if (material.GetInt("_WaterSpecularEnable") == 0)
                {
                    if (prop.name == "_WaterSpecularEnableClamped")
                        continue;
                    if (prop.name == "_WaterSpecularColor")
                        continue;
                    if (prop.name == "_WaterSpecularStrength")
                        continue;
                    if (prop.name == "_WaterSpecularStrength")
                        continue;
                    if (prop.name == "_WaterSpecularWrap")
                        continue;
                }
            }
            #endregion [DESF Input Water Specular]

            #region [DESF Input Water Foam Shoreline]
            if (material.HasProperty("_FoamShorelineEnable"))
            {
                if (material.GetInt("_FoamShorelineEnable") == 0)
                {
                    if (prop.name == "_FoamShorelineColor")
                        continue;
                    if (prop.name == "_FoamShorelineMap")
                        continue;
                    if (prop.name == "_FoamShorelineUVs")
                        continue;
                    if (prop.name == "_FoamShorelineStrength")
                        continue;
                    if (prop.name == "_FoamShorelineDetailColor")
                        continue;
                    if (prop.name == "_FoamShorelineMapDetail")
                        continue;
                    if (prop.name == "_FoamShorelineSpeed")
                        continue;
                    if (prop.name == "_FoamShorelineDistance")
                        continue;
                    if (prop.name == "_FoamShorelineDetailStrength")
                        continue;
                }
            }
            #endregion [DESF Input Water Foam Shoreline]

            #region [DESF Input Water Foam Offshore]
            if (material.HasProperty("_FoamOffshoreEnable"))
            {
                if (material.GetInt("_FoamOffshoreEnable") == 0)
                {
                    if (prop.name == "_FoamOffshoreColor")
                        continue;
                    if (prop.name == "_FoamOffshoreMap")
                        continue;
                    if (prop.name == "_FoamOffshoreUVs")
                        continue;
                    if (prop.name == "_FoamOffshoreStrength")
                        continue;
                    if (prop.name == "_FoamOffshoreDetailColor")
                        continue;
                    if (prop.name == "_FoamOffshoreMapDetail")
                        continue;
                    if (prop.name == "_FoamOffshoreSpeed")
                        continue;
                    if (prop.name == "_FoamOffshoreDistance")
                        continue;
                    if (prop.name == "_FoamOffshoreEdge")
                        continue;
                    if (prop.name == "_FoamOffshoreDetailStrength")
                        continue;
                }
            }
            #endregion [DESF Input Water Foam Offshore]

            #region [DESF Input Water Normal Map]
            if (material.HasProperty("_WaterNormalEnable"))
            {
                if (material.GetInt("_WaterNormalEnable") == 0)
                {
                    if (prop.name == "_WaterNormalMap")
                        continue;
                    if (prop.name == "_WaterHorizontalNormalMap")
                        continue;
                    if (prop.name == "_WaterNormalStrength")
                        continue;
                    if (prop.name == "_WaterNormalScaleX")
                        continue;
                    if (prop.name == "_WaterNormalScaleY")
                        continue;
                    if (prop.name == "_WaterNormalScaleZ")
                        continue;
                    if (prop.name == "_WaterNormalScaleW")
                        continue;
                    if (prop.name == "_WaterNormalSpeedX")
                        continue;
                    if (prop.name == "_WaterNormalSpeedY")
                        continue;
                    if (prop.name == "_WaterNormalSpeedZ")
                        continue;
                    if (prop.name == "_WaterNormalSpeedW")
                        continue;
                }
            }
            #endregion [DESF Input Water Normal Map]

            #region [DESF Input Water Reflection]
            if (material.HasProperty("_WaterReflectionEnable"))
            {
                if (material.GetInt("_WaterReflectionEnable") == 0)
                {
                    if (prop.name == "_WaterReflectionType")
                        continue;
                    if (prop.name == "_WaterReflectionCubemap")
                        continue;
                    if (prop.name == "_WaterReflectionCloud")
                        continue;
                    if (prop.name == "_WaterReflectionWobble")
                        continue;
                    if (prop.name == "_WaterReflectionSmoothness")
                        continue;
                    if (prop.name == "_WaterReflectionProbeDetailURP")
                        continue;
                    if (prop.name == "_WaterReflectionBumpScale")
                        continue;
                    if (prop.name == "_WaterReflectionBumpClamp")
                        continue;
                    if (prop.name == "_WaterReflectionEnableFresnel")
                        continue;
                    if (prop.name == "_WaterReflectionFresnelStrength")
                        continue;
                    if (prop.name == "_WaterReflectionFresnelBias")
                        continue;
                    if (prop.name == "_WaterReflectionFresnelScale")
                        continue;
                }
            }
            if (material.HasProperty("_WaterReflectionEnableFresnel"))
            {
                if (material.GetInt("_WaterReflectionEnableFresnel") == 0)
                {
                    if (prop.name == "_WaterReflectionFresnelStrength")
                        continue;
                    if (prop.name == "_WaterReflectionFresnelBias")
                        continue;
                    if (prop.name == "_WaterReflectionFresnelScale")
                        continue;
                }
            }
            if (material.HasProperty("_WaterReflectionType"))
            {
                if (material.GetInt("_WaterReflectionType") == 1)
                {
                    if (prop.name == "_WaterReflectionSmoothness")
                        continue;
                }
            }
            if (material.HasProperty("_WaterReflectionType"))
            {
                if (material.GetInt("_WaterReflectionType") == 0)
                {
                    if (prop.name == "_WaterReflectionProbeDetailURP")
                        continue;
                }
            }
            #endregion [DESF Input Water Reflection]

            #region [DESF Input Water Wave Gerstner]
            if (material.HasProperty("_WaveGerstnerEnable"))
            {
                if (material.GetInt("_WaveGerstnerEnable") == 0)
                {
                    if (prop.name == "_WaveGerstnerTessellationStrength")
                        continue;
                    if (prop.name == "_WaveGerstnerTessellationDistanceMin")
                        continue;
                    if (prop.name == "_WaveGerstnerTessellationDistanceMax")
                        continue;
                    if (prop.name == "_WaveGerstner01Enable")
                        continue;
                    if (prop.name == "_WaveGerstner01Direction")
                        continue;
                    if (prop.name == "_WaveGerstner01Speed")
                        continue;
                    if (prop.name == "_WaveGerstner01Length")
                        continue;
                    if (prop.name == "_WaveGerstner01Height")
                        continue;
                    if (prop.name == "_WaveGerstner01PeakSharpness")
                        continue;
                    if (prop.name == "_WaveGerstner02Enable")
                        continue;
                    if (prop.name == "_WaveGerstner02Direction")
                        continue;
                    if (prop.name == "_WaveGerstner02Speed")
                        continue;
                    if (prop.name == "_WaveGerstner02Length")
                        continue;
                    if (prop.name == "_WaveGerstner02Height")
                        continue;
                    if (prop.name == "_WaveGerstner02PeakSharpness")
                        continue;
                    if (prop.name == "_WaveGerstner03Enable")
                        continue;
                    if (prop.name == "_WaveGerstner03Direction")
                        continue;
                    if (prop.name == "_WaveGerstner03Speed")
                        continue;
                    if (prop.name == "_WaveGerstner03Length")
                        continue;
                    if (prop.name == "_WaveGerstner03Height")
                        continue;
                    if (prop.name == "_WaveGerstner03PeakSharpness")
                        continue;
                    if (prop.name == "_WaveGerstner04Enable")
                        continue;
                    if (prop.name == "_WaveGerstner04Direction")
                        continue;
                    if (prop.name == "_WaveGerstner04Speed")
                        continue;
                    if (prop.name == "_WaveGerstner04Length")
                        continue;
                    if (prop.name == "_WaveGerstner04Height")
                        continue;
                    if (prop.name == "_WaveGerstner04PeakSharpness")
                        continue;

                }
            }
            #endregion [DESF Input Water Wave Gerstner]

            #region [DESF Color Gradient Remap]
            if (material.HasProperty("_GradientEnable"))
            {
                if (material.GetInt("_GradientEnable") == 0)
                {
                    if (prop.name == "_GradientInverted")
                        continue;
                    if (prop.name == "_GradientColor")
                        continue;
                    if (prop.name == "_GradientColorSide")
                        continue;
                    if (prop.name == "_GradientColorBottom")
                        continue;
                    if (prop.name == "_GradientColorBottomSide")
                        continue;
                    if (prop.name == "_GradientColorCurvature")
                        continue;
                    if (prop.name == "_GradientRamp")
                        continue;
                    if (prop.name == "_GradientContrast")
                        continue;
                    if (prop.name == "_GradientHeight")
                        continue;
                }
            }
            #endregion [DESF Color Gradient Remap]

            #region [DESF Color Gradient Remap Noise]
            if (material.HasProperty("_GradientNoiseEnable"))
            {
                if (material.GetInt("_GradientNoiseEnable") == 0)
                {
                    if (prop.name == "_GradientInverted")
                        continue;
                    if (prop.name == "_GradientNoiseStrengthRemap")
                        continue;
                    if (prop.name == "_GradientNoiseStrengthMin")
                        continue;
                    if (prop.name == "_GradientNoiseStrengthMax")
                        continue;
                    if (prop.name == "_GradientNoiseScale")
                        continue;
                    if (prop.name == "_GradientNoiseShift")
                        continue;
                }
            }
            #endregion [DESF Color Gradient Remap Noise]

            #region [DESF Light Flicker]
            if (material.HasProperty("_DigitalFlickerEnable"))
            {
                if (material.GetInt("_DigitalFlickerEnable") == 0)
                {
                    if (prop.name == "_DigitalFlickerIsInverted")
                        continue;
                    if (prop.name == "_DigitalFlickerSpeed")
                        continue;
                    if (prop.name == "_DigitalFlickerFrequency")
                        continue;
                    if (prop.name == "_DigitalFlickerFrequencyScale")
                        continue;
                }
            }
            #endregion [DESF Light Flicker]

            #region [DESF Sample Pixellate]
            if (material.HasProperty("_DigitalPixellateEnable"))
            {
                if (material.GetInt("_DigitalPixellateEnable") == 0)
                {
                    if (prop.name == "_DigitalPixellateIsInverted")
                        continue;
                    if (prop.name == "_DigitalPixellateColor")
                        continue;
                    if (prop.name == "_DigitalPixellateMap")
                        continue;
                    if (prop.name == "_DigitalPixellateMipBias")
                        continue;
                    if (prop.name == "_PixellateUVs")
                        continue;
                    if (prop.name == "_DigitalPixellateSize")
                        continue;
                    if (prop.name == "_DigitalPixellateIntensity")
                        continue;
                }
            }
            #endregion [DESF Sample Pixellate]

            #region [DESF UV Shake]
            if (material.HasProperty("_DigitalShakeEnable"))
            {
                if (material.GetInt("_DigitalShakeEnable") == 0)
                {
                    if (prop.name == "_DigitalShakeOpacity")
                        continue;
                    if (prop.name == "_DigitalShakeIntensity")
                        continue;
                    if (prop.name == "_DigitalShakeInterval")
                        continue;
                }
            }
            #endregion [DESF UV Shake]

            #region [DESF Noise Glitch]
            if (material.HasProperty("_DigitalNoiseEnable"))
            {
                if (material.GetInt("_DigitalNoiseEnable") == 0)
                {
                    if (prop.name == "_DigitalNoiseMap")
                        continue;
                    if (prop.name == "_DigitalNoiseMapInverted")
                        continue;
                    if (prop.name == "_DigitalNoiseDirection")
                        continue;
                    if (prop.name == "_DigitalNoiseStrength")
                        continue;
                    if (prop.name == "_DigitalNoiseSpeed")
                        continue;
                    if (prop.name == "_DigitalNoiseWidth")
                        continue;
                }
            }
            #endregion [DESF Noise Glitch]

            #region [DESF Vertex Data Grow]
            if (material.HasProperty("_VertexGrowEnable"))
            {
                if (material.GetInt("_VertexGrowEnable") == 0)
                {
                    if (prop.name == "_VertexGrowXYZ")
                        continue;
                    if (prop.name == "_VertexGrowX")
                        continue;
                    if (prop.name == "_VertexGrowY")
                        continue;
                    if (prop.name == "_VertexGrowZ")
                        continue;
                }
            }
            #endregion [DESF Vertex Data Grow]

            #region [DESF Vertex Data Glitch]
            if (material.HasProperty("_VertexGlitchEnable"))
            {
                if (material.GetInt("_VertexGlitchEnable") == 0)
                {
                    if (prop.name == "_VertexGlitchIntensity")
                        continue;
                    if (prop.name == "_VertexGlitchSpeed")
                        continue;
                    if (prop.name == "_VertexGlitchOffsetX")
                        continue;
                    if (prop.name == "_VertexGlitchOffsetY")
                        continue;
                    if (prop.name == "_VertexGlitchOffsetZ")
                        continue;
                }
            }
            #endregion [DESF Vertex Data Glitch]

            #region [CATEGORY INDEX and SPACES]
            int categoryIndex = 1;

            //customPropsList.Add(prop);

            if (prop.name.Contains("_CATEGORY"))
            {
                categoryIndex++;

                customPropsList.Add(prop);

                if (material.GetInt(prop.name) == 0)
                {
                    showCategory = false;
                    //customCategories.Add(-categoryIndex);
                }
                else
                {
                    showCategory = true;
                    //customCategories.Add(categoryIndex);

                    categoryIndex++;
                }
            }
            else
            {
                if (showCategory)
                {
                    customPropsList.Add(prop);
                    //customCategories.Add(categoryIndex);
                }
            }

        }

        //customSpaces.Add(0);

        //for (int i = 1; i < customCategories.Count; i++)
        //{
        //    if (customCategories[i - 1] != customCategories[i])
        //    {
        //        if (customCategories[i - 1] > 0)
        //        {
        //            customSpaces.Add(10);
        //        }
        //        else
        //        {
        //            customSpaces.Add(0);
        //        }
        //    }
        //    else
        //    {
        //        customSpaces.Add(0);
        //    }
        //}

        //Draw Custom GUI
        for (int i = 0; i < customPropsList.Count; i++)
        {
            var prop = customPropsList[i];

            //GUILayout.Space(customSpaces[i]);

            materialEditor.ShaderProperty(prop, prop.displayName);

        }
        #endregion [CATEGORY INDEX and SPACES]

        #region [ADVANCED SETTINGS]
        showAdvanced = DE_Drawers.DrawInspectorCategory("ADVANCED SETTINGS", showAdvanced, true, 0, 0, material);

        if (showAdvanced)
        {

            #region [SpecularHighlights]
            if (material.HasProperty("_SpecularHighlights"))
            {
                if (material.HasProperty("_SpecularHighlights"))
                {
                    var control = material.GetInt("_SpecularHighlights");

                    bool toggle = false;

                    if (control > 0.5f)
                    {
                        toggle = true;
                    }

                    toggle = EditorGUILayout.Toggle("Specular Highlights", toggle);

                    if (toggle)
                    {
                        material.SetInt("_SpecularHighlights", 1);
                        material.DisableKeyword("_SPECULARHIGHLIGHTS_OFF");
                    }
                    else
                    {
                        material.SetInt("_SpecularHighlights", 0);
                        material.EnableKeyword("_SPECULARHIGHLIGHTS_OFF");
                    }
                }
            }
            #endregion [SpecularHighlights]

            #region [EnvironmentReflections]
            if (material.HasProperty("_EnvironmentReflections"))
            {
                if (material.HasProperty("_EnvironmentReflections"))
                {
                    var control = material.GetInt("_EnvironmentReflections");

                    bool toggle = false;

                    if (control > 0.5f)
                    {
                        toggle = true;
                    }

                    toggle = EditorGUILayout.Toggle("Environment Reflections", toggle);

                    if (toggle)
                    {
                        material.SetInt("_EnvironmentReflections", 1);
                        material.DisableKeyword("_ENVIRONMENTREFLECTIONS_OFF");
                    }
                    else
                    {
                        material.SetInt("_EnvironmentReflections", 0);
                        material.EnableKeyword("_ENVIRONMENTREFLECTIONS_OFF");
                    }
                }
            }
            #endregion [EnvironmentReflections]

            #region [GlossyReflections]
            if (material.HasProperty("_GlossyReflections"))
            {
                if (material.HasProperty("_GlossyReflections"))
                {
                    var control = material.GetInt("_GlossyReflections");

                    bool toggle = false;

                    if (control > 0.5f)
                    {
                        toggle = true;
                    }

                    toggle = EditorGUILayout.Toggle("Glossy Reflections", toggle);

                    if (toggle)
                    {
                        material.SetInt("_GlossyReflections", 1);
                        material.DisableKeyword("_GLOSSYREFLECTIONS_OFF");
                    }
                    else
                    {
                        material.SetInt("_GlossyReflections", 0);
                        material.EnableKeyword("_GLOSSYREFLECTIONS_OFF");
                    }
                }
            }
            #endregion [GlossyReflections]

            #region [ReceiveShadows]
            if (material.HasProperty("_ReceiveShadows"))
            {
                if (material.HasProperty("_ReceiveShadows"))
                {
                    var control = material.GetInt("_ReceiveShadows");

                    bool toggle = false;

                    if (control > 0.5f)
                    {
                        toggle = true;
                    }

                    toggle = EditorGUILayout.Toggle("Receive Shadows", toggle);

                    if (toggle)
                    {
                        material.SetInt("_ReceiveShadows", 1);
                        material.DisableKeyword("_RECEIVE_SHADOWS_OFF");
                    }
                    else
                    {
                        material.SetInt("_ReceiveShadows", 0);
                        material.EnableKeyword("_RECEIVE_SHADOWS_OFF");
                    }
                }
            }
            #endregion [ReceiveShadows]

            #region [EnableInstancingField]
            materialEditor.EnableInstancingField();
            #endregion [EnableInstancingField]

            #region [DoubleSidedGIField]
            materialEditor.DoubleSidedGIField();
            #endregion [DoubleSidedGIField]

            #region [Decal MeshBiasType]
            if (material.HasProperty("_DecalMeshBiasType"))
            {
                var control = material.GetInt("_DecalMeshBiasType");
                var depth = material.GetFloat("_DecalMeshDepthBias");
                var view = material.GetFloat("_DecalMeshViewBias");

                control = EditorGUILayout.Popup("Mesh Bias Type", control, new string[] { "Depth Bias", "View Bias" });

                if (control == 0)
                {
                    depth = EditorGUILayout.FloatField("Depth Bias", depth);
                }
                else
                {
                    view = EditorGUILayout.FloatField("View Bias", view);
                }

                material.SetInt("_DecalMeshBiasType", control);
                material.SetFloat("_DecalMeshDepthBias", depth);
                material.SetFloat("_DecalMeshViewBias", view);
            }
            #endregion [Decal MeshBiasType]

            GUILayout.Space(10);

            #region [Decal DrawOrder]
            if (material.HasProperty("_DrawOrder"))
            {
                var offset = material.GetInt("_DrawOrder");

                offset = EditorGUILayout.IntSlider("Sorting Priority", offset, -50, 50);

                material.SetInt("_DrawOrder", offset);
            }
            #endregion [Decal DrawOrder]

            #region [QueueControl]
            if (material.HasProperty("_QueueControl") && material.HasProperty("_QueueOffset"))
            {
                var control = material.GetInt("_QueueControl");
                var offset = material.GetInt("_QueueOffset");

                if (control < 0)
                {
                    control = 0;
                }

                control = EditorGUILayout.Popup("Queue Control", control, new string[] { "Auto", "User Defined" });

                if (control == 0)
                {
                    offset = EditorGUILayout.IntSlider("Sorting Priority", offset, -50, 50);

                    if (material.GetTag("RenderType", false) == "Transparent")
                    {
                        material.renderQueue = (int)UnityEngine.Rendering.RenderQueue.Transparent + offset;
                    }
                    else
                    {
                        material.renderQueue = (int)UnityEngine.Rendering.RenderQueue.AlphaTest + offset;
                    }
                }
                else
                {
                    materialEditor.RenderQueueField();
                }

                material.SetInt("_QueueControl", control);
                material.SetInt("_QueueOffset", offset);
            }
            #endregion [QueueControl]

            #region [Decal QueueControl]
            if (!material.HasProperty("_QueueControl") && material.HasProperty("_QueueOffset"))
            {
                var offset = material.GetInt("_QueueOffset");

                offset = EditorGUILayout.IntSlider("Sorting Priority", offset, -50, 50);

                if (material.GetTag("RenderType", false) == "Transparent")
                {
                    material.renderQueue = (int)UnityEngine.Rendering.RenderQueue.Transparent + offset;
                }
                else
                {
                    material.renderQueue = (int)UnityEngine.Rendering.RenderQueue.AlphaTest + offset;
                }

                material.SetInt("_QueueOffset", offset);
            }

            if (!material.HasProperty("_QueueControl") && !material.HasProperty("_QueueOffset"))
            {
                materialEditor.RenderQueueField();
            }
        }
        #endregion [Decal QueueControl]

        GUILayout.Space(10);

        #endregion [ADVANCED SETTINGS]
    }
}
#endif