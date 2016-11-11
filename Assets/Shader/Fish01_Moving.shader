// Shader created with Shader Forge v1.26 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.26;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:3138,x:32719,y:32712,varname:node_3138,prsc:2|emission-107-RGB,voffset-8312-OUT;n:type:ShaderForge.SFN_Time,id:6219,x:31708,y:32950,varname:node_6219,prsc:2;n:type:ShaderForge.SFN_Panner,id:9571,x:32134,y:32794,varname:node_9571,prsc:2,spu:10,spv:0|UVIN-2844-OUT,DIST-7413-OUT;n:type:ShaderForge.SFN_Multiply,id:2844,x:31922,y:32794,varname:node_2844,prsc:2|A-8981-UVOUT,B-9978-OUT;n:type:ShaderForge.SFN_Slider,id:2629,x:31529,y:33138,ptovrint:False,ptlb:Amplitude,ptin:_Amplitude,varname:node_2629,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1.560966,max:15;n:type:ShaderForge.SFN_TexCoord,id:8981,x:31723,y:32608,varname:node_8981,prsc:2,uv:0;n:type:ShaderForge.SFN_Vector1,id:9978,x:31755,y:32804,varname:node_9978,prsc:2,v1:0.3;n:type:ShaderForge.SFN_RemapRange,id:8026,x:31958,y:33087,varname:node_8026,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-2629-OUT;n:type:ShaderForge.SFN_Divide,id:7413,x:32009,y:32915,varname:node_7413,prsc:2|A-6219-TSL,B-8026-OUT;n:type:ShaderForge.SFN_Vector4,id:7188,x:32287,y:33172,varname:node_7188,prsc:2,v1:0.1,v2:0.1,v3:0.1,v4:1;n:type:ShaderForge.SFN_Multiply,id:8312,x:32537,y:33018,varname:node_8312,prsc:2|A-3997-RGB,B-7188-OUT;n:type:ShaderForge.SFN_Tex2d,id:3997,x:32317,y:32918,ptovrint:False,ptlb:Paralax Map,ptin:_ParalaxMap,varname:node_3997,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:fa683c586f3d6cd47a6636256b3414ba,ntxv:0,isnm:False|UVIN-9571-UVOUT;n:type:ShaderForge.SFN_Tex2d,id:107,x:31932,y:32548,ptovrint:False,ptlb:Albedo,ptin:_Albedo,varname:node_107,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:5cbb77a5d7d9418499e14a6ef41d011c,ntxv:0,isnm:False;proporder:2629-3997-107;pass:END;sub:END;*/

Shader "Shader Forge/NewShader" {
    Properties {
        _Amplitude ("Amplitude", Range(0, 15)) = 1.560966
        _ParalaxMap ("Paralax Map", 2D) = "white" {}
        _Albedo ("Albedo", 2D) = "white" {}
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            #pragma glsl
            uniform float4 _TimeEditor;
            uniform float _Amplitude;
            uniform sampler2D _ParalaxMap; uniform float4 _ParalaxMap_ST;
            uniform sampler2D _Albedo; uniform float4 _Albedo_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                float4 node_6219 = _Time + _TimeEditor;
                float2 node_9571 = ((o.uv0*0.3)+(node_6219.r/(_Amplitude*2.0+-1.0))*float2(10,0));
                float4 _ParalaxMap_var = tex2Dlod(_ParalaxMap,float4(TRANSFORM_TEX(node_9571, _ParalaxMap),0.0,0));
                v.vertex.xyz += (_ParalaxMap_var.rgb*float4(0.1,0.1,0.1,1)).rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
////// Emissive:
                float4 _Albedo_var = tex2D(_Albedo,TRANSFORM_TEX(i.uv0, _Albedo));
                float3 emissive = _Albedo_var.rgb;
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            #pragma glsl
            uniform float4 _TimeEditor;
            uniform float _Amplitude;
            uniform sampler2D _ParalaxMap; uniform float4 _ParalaxMap_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                float4 node_6219 = _Time + _TimeEditor;
                float2 node_9571 = ((o.uv0*0.3)+(node_6219.r/(_Amplitude*2.0+-1.0))*float2(10,0));
                float4 _ParalaxMap_var = tex2Dlod(_ParalaxMap,float4(TRANSFORM_TEX(node_9571, _ParalaxMap),0.0,0));
                v.vertex.xyz += (_ParalaxMap_var.rgb*float4(0.1,0.1,0.1,1)).rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
