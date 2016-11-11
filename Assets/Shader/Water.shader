// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.26 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.26;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:False,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:4013,x:32719,y:32712,varname:node_4013,prsc:2|diff-4487-OUT,spec-3982-R,gloss-3982-R,normal-7420-RGB,alpha-4451-OUT;n:type:ShaderForge.SFN_Tex2d,id:3982,x:31990,y:32462,ptovrint:False,ptlb:Albedo,ptin:_Albedo,varname:node_3982,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:3ff6ae1f77420dd40b8349639015cb9d,ntxv:0,isnm:False;n:type:ShaderForge.SFN_DepthBlend,id:8823,x:32053,y:33295,varname:node_8823,prsc:2|DIST-6326-OUT;n:type:ShaderForge.SFN_Slider,id:6326,x:31757,y:33210,ptovrint:False,ptlb:Amplitude Depth Blend,ptin:_AmplitudeDepthBlend,varname:node_6326,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:3.712763,max:100;n:type:ShaderForge.SFN_Tex2d,id:7420,x:31935,y:32684,ptovrint:False,ptlb:node_7420,ptin:_node_7420,varname:node_7420,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:215e5204c7e4a8d4eb585114ac3c8a6b,ntxv:3,isnm:True|UVIN-690-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:558,x:31373,y:32502,varname:node_558,prsc:2,uv:0;n:type:ShaderForge.SFN_Multiply,id:2761,x:31592,y:32639,varname:node_2761,prsc:2|A-558-UVOUT,B-3996-OUT;n:type:ShaderForge.SFN_Panner,id:690,x:31775,y:32639,varname:node_690,prsc:2,spu:1,spv:1|UVIN-2761-OUT,DIST-273-OUT;n:type:ShaderForge.SFN_Time,id:3610,x:31350,y:32873,varname:node_3610,prsc:2;n:type:ShaderForge.SFN_RemapRange,id:4615,x:31499,y:33058,varname:node_4615,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-5858-OUT;n:type:ShaderForge.SFN_Divide,id:273,x:31634,y:32832,varname:node_273,prsc:2|A-3610-T,B-4615-OUT;n:type:ShaderForge.SFN_Vector1,id:5858,x:31271,y:33070,varname:node_5858,prsc:2,v1:3.317412;n:type:ShaderForge.SFN_Vector1,id:3996,x:31340,y:32711,varname:node_3996,prsc:2,v1:1;n:type:ShaderForge.SFN_Color,id:7204,x:31739,y:32387,ptovrint:False,ptlb:node_7204,ptin:_node_7204,varname:node_7204,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.2,c2:0.4078432,c3:0.5137255,c4:1;n:type:ShaderForge.SFN_Lerp,id:3735,x:32323,y:32465,varname:node_3735,prsc:2|A-7204-RGB,B-3982-RGB,T-2830-OUT;n:type:ShaderForge.SFN_Vector1,id:2830,x:32083,y:32618,varname:node_2830,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Lerp,id:4487,x:32562,y:32563,varname:node_4487,prsc:2|A-3735-OUT,B-7419-RGB,T-7420-R;n:type:ShaderForge.SFN_Color,id:7419,x:32281,y:32293,ptovrint:False,ptlb:node_7419,ptin:_node_7419,varname:node_7419,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Lerp,id:4451,x:32395,y:32998,varname:node_4451,prsc:2|A-8213-OUT,B-9246-OUT,T-8823-OUT;n:type:ShaderForge.SFN_Slider,id:8213,x:31888,y:32929,ptovrint:False,ptlb:Minimum Opacity,ptin:_MinimumOpacity,varname:node_8213,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:9246,x:31904,y:33036,ptovrint:False,ptlb:Maximum Opacity,ptin:_MaximumOpacity,varname:_MinimumOpacity_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.8,max:1;proporder:3982-6326-7420-7204-7419-8213-9246;pass:END;sub:END;*/

Shader "Shader Forge/Water" {
    Properties {
        _Albedo ("Albedo", 2D) = "white" {}
        _AmplitudeDepthBlend ("Amplitude Depth Blend", Range(0, 100)) = 3.712763
        _node_7420 ("node_7420", 2D) = "bump" {}
        _node_7204 ("node_7204", Color) = (0.2,0.4078432,0.5137255,1)
        _node_7419 ("node_7419", Color) = (1,1,1,1)
        _MinimumOpacity ("Minimum Opacity", Range(0, 1)) = 0
        _MaximumOpacity ("Maximum Opacity", Range(0, 1)) = 0.8
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform sampler2D _CameraDepthTexture;
            uniform float4 _TimeEditor;
            uniform sampler2D _Albedo; uniform float4 _Albedo_ST;
            uniform float _AmplitudeDepthBlend;
            uniform sampler2D _node_7420; uniform float4 _node_7420_ST;
            uniform float4 _node_7204;
            uniform float4 _node_7419;
            uniform float _MinimumOpacity;
            uniform float _MaximumOpacity;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                float4 projPos : TEXCOORD5;
                UNITY_FOG_COORDS(6)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 node_3610 = _Time + _TimeEditor;
                float2 node_690 = ((i.uv0*1.0)+(node_3610.g/(3.317412*2.0+-1.0))*float2(1,1));
                float3 _node_7420_var = UnpackNormal(tex2D(_node_7420,TRANSFORM_TEX(node_690, _node_7420)));
                float3 normalLocal = _node_7420_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = 1;
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float4 _Albedo_var = tex2D(_Albedo,TRANSFORM_TEX(i.uv0, _Albedo));
                float gloss = _Albedo_var.r;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float3 specularColor = float3(_Albedo_var.r,_Albedo_var.r,_Albedo_var.r);
                float3 directSpecular = (floor(attenuation) * _LightColor0.xyz) * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularColor;
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float3 diffuseColor = lerp(lerp(_node_7204.rgb,_Albedo_var.rgb,0.5),_node_7419.rgb,_node_7420_var.r);
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                float node_8823 = saturate((sceneZ-partZ)/_AmplitudeDepthBlend);
                fixed4 finalRGBA = fixed4(finalColor,lerp(_MinimumOpacity,_MaximumOpacity,node_8823));
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform sampler2D _CameraDepthTexture;
            uniform float4 _TimeEditor;
            uniform sampler2D _Albedo; uniform float4 _Albedo_ST;
            uniform float _AmplitudeDepthBlend;
            uniform sampler2D _node_7420; uniform float4 _node_7420_ST;
            uniform float4 _node_7204;
            uniform float4 _node_7419;
            uniform float _MinimumOpacity;
            uniform float _MaximumOpacity;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                float4 projPos : TEXCOORD5;
                LIGHTING_COORDS(6,7)
                UNITY_FOG_COORDS(8)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 node_3610 = _Time + _TimeEditor;
                float2 node_690 = ((i.uv0*1.0)+(node_3610.g/(3.317412*2.0+-1.0))*float2(1,1));
                float3 _node_7420_var = UnpackNormal(tex2D(_node_7420,TRANSFORM_TEX(node_690, _node_7420)));
                float3 normalLocal = _node_7420_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float4 _Albedo_var = tex2D(_Albedo,TRANSFORM_TEX(i.uv0, _Albedo));
                float gloss = _Albedo_var.r;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float3 specularColor = float3(_Albedo_var.r,_Albedo_var.r,_Albedo_var.r);
                float3 directSpecular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularColor;
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 diffuseColor = lerp(lerp(_node_7204.rgb,_Albedo_var.rgb,0.5),_node_7419.rgb,_node_7420_var.r);
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                float node_8823 = saturate((sceneZ-partZ)/_AmplitudeDepthBlend);
                fixed4 finalRGBA = fixed4(finalColor * lerp(_MinimumOpacity,_MaximumOpacity,node_8823),0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
