// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.26 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.26;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:4013,x:32719,y:32712,varname:node_4013,prsc:2|diff-6650-OUT,spec-3982-R,gloss-3982-R,normal-7420-RGB,alpha-9103-OUT;n:type:ShaderForge.SFN_Tex2d,id:3982,x:32178,y:32570,ptovrint:False,ptlb:Albedo,ptin:_Albedo,varname:node_3982,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:3ff6ae1f77420dd40b8349639015cb9d,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Slider,id:127,x:31907,y:32937,ptovrint:False,ptlb:node_127,ptin:_node_127,varname:node_127,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.4551804,max:1;n:type:ShaderForge.SFN_DepthBlend,id:8823,x:32329,y:32988,varname:node_8823,prsc:2|DIST-6326-OUT;n:type:ShaderForge.SFN_Slider,id:6326,x:32172,y:33200,ptovrint:False,ptlb:node_6326,ptin:_node_6326,varname:node_6326,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:4.881175,max:10;n:type:ShaderForge.SFN_Multiply,id:9103,x:32546,y:32998,varname:node_9103,prsc:2|A-127-OUT,B-8823-OUT;n:type:ShaderForge.SFN_Multiply,id:2820,x:32500,y:32619,varname:node_2820,prsc:2|A-3982-RGB,B-8823-OUT;n:type:ShaderForge.SFN_Lerp,id:6650,x:32533,y:32813,varname:node_6650,prsc:2|A-1356-RGB,B-3982-RGB,T-8823-OUT;n:type:ShaderForge.SFN_Color,id:1356,x:32144,y:32744,ptovrint:False,ptlb:node_1356,ptin:_node_1356,varname:node_1356,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0.3922414,c3:0.6691177,c4:1;n:type:ShaderForge.SFN_Tex2d,id:7420,x:31943,y:32685,ptovrint:False,ptlb:node_7420,ptin:_node_7420,varname:node_7420,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:215e5204c7e4a8d4eb585114ac3c8a6b,ntxv:0,isnm:False|UVIN-690-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:558,x:31373,y:32502,varname:node_558,prsc:2,uv:0;n:type:ShaderForge.SFN_Multiply,id:2761,x:31592,y:32639,varname:node_2761,prsc:2|A-558-UVOUT,B-1883-OUT;n:type:ShaderForge.SFN_Slider,id:1883,x:31272,y:32767,ptovrint:False,ptlb:node_1883,ptin:_node_1883,varname:node_1883,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.7550863,max:1;n:type:ShaderForge.SFN_Panner,id:690,x:31775,y:32639,varname:node_690,prsc:2,spu:1,spv:1|UVIN-2761-OUT,DIST-273-OUT;n:type:ShaderForge.SFN_Time,id:3610,x:31350,y:32873,varname:node_3610,prsc:2;n:type:ShaderForge.SFN_RemapRange,id:4615,x:31499,y:33058,varname:node_4615,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-9307-OUT;n:type:ShaderForge.SFN_Slider,id:9307,x:31176,y:33166,ptovrint:False,ptlb:node_9307,ptin:_node_9307,varname:node_9307,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:3.317412,max:10;n:type:ShaderForge.SFN_Divide,id:273,x:31634,y:32832,varname:node_273,prsc:2|A-3610-T,B-4615-OUT;proporder:3982-127-6326-1356-7420-1883-9307;pass:END;sub:END;*/

Shader "Shader Forge/Water" {
    Properties {
        _Albedo ("Albedo", 2D) = "white" {}
        _node_127 ("node_127", Range(0, 1)) = 0.4551804
        _node_6326 ("node_6326", Range(0, 10)) = 4.881175
        _node_1356 ("node_1356", Color) = (0,0.3922414,0.6691177,1)
        _node_7420 ("node_7420", 2D) = "white" {}
        _node_1883 ("node_1883", Range(0, 1)) = 0.7550863
        _node_9307 ("node_9307", Range(0, 10)) = 3.317412
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
            ZWrite Off
            
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
            uniform float _node_127;
            uniform float _node_6326;
            uniform float4 _node_1356;
            uniform sampler2D _node_7420; uniform float4 _node_7420_ST;
            uniform float _node_1883;
            uniform float _node_9307;
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
                float2 node_690 = ((i.uv0*_node_1883)+(node_3610.g/(_node_9307*2.0+-1.0))*float2(1,1));
                float4 _node_7420_var = tex2D(_node_7420,TRANSFORM_TEX(node_690, _node_7420));
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
                float node_8823 = saturate((sceneZ-partZ)/_node_6326);
                float3 diffuseColor = lerp(_node_1356.rgb,_Albedo_var.rgb,node_8823);
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor,(_node_127*node_8823));
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
            ZWrite Off
            
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
            uniform float _node_127;
            uniform float _node_6326;
            uniform float4 _node_1356;
            uniform sampler2D _node_7420; uniform float4 _node_7420_ST;
            uniform float _node_1883;
            uniform float _node_9307;
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
                float2 node_690 = ((i.uv0*_node_1883)+(node_3610.g/(_node_9307*2.0+-1.0))*float2(1,1));
                float4 _node_7420_var = tex2D(_node_7420,TRANSFORM_TEX(node_690, _node_7420));
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
                float node_8823 = saturate((sceneZ-partZ)/_node_6326);
                float3 diffuseColor = lerp(_node_1356.rgb,_Albedo_var.rgb,node_8823);
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor * (_node_127*node_8823),0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
