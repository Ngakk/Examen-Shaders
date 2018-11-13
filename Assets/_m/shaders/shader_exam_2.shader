// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,cmtg:SF,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,acwp:False,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:32961,y:32731,varname:node_3138,prsc:2|normal-6955-OUT,emission-9936-OUT,custl-6042-OUT;n:type:ShaderForge.SFN_Tex2d,id:8940,x:33393,y:32624,ptovrint:False,ptlb:NormalTex,ptin:_NormalTex,varname:node_8940,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:c05436813e6cece48a9a903157dc7beb,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Set,id:7916,x:33799,y:32631,varname:NormalData,prsc:2|IN-6053-OUT;n:type:ShaderForge.SFN_Get,id:6955,x:32644,y:32810,varname:node_6955,prsc:2|IN-7916-OUT;n:type:ShaderForge.SFN_Tex2d,id:6648,x:33393,y:32926,ptovrint:False,ptlb:AlbedoTex,ptin:_AlbedoTex,varname:node_6648,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:96d85c16243575e41928c453c7c6b74b,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Set,id:3793,x:33594,y:32926,varname:AlbedoData,prsc:2|IN-6648-RGB;n:type:ShaderForge.SFN_Lerp,id:6053,x:33654,y:32631,varname:node_6053,prsc:2|A-6447-OUT,B-8940-RGB,T-120-OUT;n:type:ShaderForge.SFN_Vector3,id:6447,x:33393,y:32509,varname:node_6447,prsc:2,v1:0,v2:0,v3:1;n:type:ShaderForge.SFN_Slider,id:120,x:33236,y:32798,ptovrint:False,ptlb:NormalIntensity,ptin:_NormalIntensity,varname:node_120,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:2;n:type:ShaderForge.SFN_Get,id:9936,x:32644,y:32867,varname:node_9936,prsc:2|IN-3793-OUT;n:type:ShaderForge.SFN_LightVector,id:5689,x:33393,y:33124,varname:node_5689,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:5184,x:33393,y:33262,prsc:2,pt:False;n:type:ShaderForge.SFN_Dot,id:9547,x:33583,y:33187,varname:node_9547,prsc:2,dt:1|A-5689-OUT,B-5184-OUT;n:type:ShaderForge.SFN_LightAttenuation,id:683,x:33583,y:33331,varname:node_683,prsc:2;n:type:ShaderForge.SFN_Multiply,id:8713,x:33775,y:33187,varname:node_8713,prsc:2|A-9547-OUT,B-683-OUT;n:type:ShaderForge.SFN_Multiply,id:8805,x:33998,y:33187,varname:node_8805,prsc:2|A-8713-OUT,B-4708-RGB;n:type:ShaderForge.SFN_LightColor,id:4708,x:33775,y:33331,varname:node_4708,prsc:2;n:type:ShaderForge.SFN_Set,id:4336,x:33998,y:33119,varname:ShadowData,prsc:2|IN-8713-OUT;n:type:ShaderForge.SFN_Set,id:8655,x:34173,y:33187,varname:LightData,prsc:2|IN-8805-OUT;n:type:ShaderForge.SFN_Get,id:6042,x:32644,y:32973,varname:node_6042,prsc:2|IN-8655-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8207,x:31706,y:32904,ptovrint:False,ptlb:Invisibility,ptin:_Invisibility,varname:node_8207,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;proporder:8940-120-6648;pass:END;sub:END;*/

Shader "Shader Forge/shader_exam_2" {
    Properties {
        _NormalTex ("NormalTex", 2D) = "bump" {}
        _NormalIntensity ("NormalIntensity", Range(0, 2)) = 1
        _AlbedoTex ("AlbedoTex", 2D) = "white" {}
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
            "CustomTag"="SF"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #if !UNITY_PASS_FORWARDBASE
            #define UNITY_PASS_FORWARDBASE
            #endif
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _NormalTex; uniform float4 _NormalTex_ST;
            uniform sampler2D _AlbedoTex; uniform float4 _AlbedoTex_ST;
            uniform float _NormalIntensity;
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
                LIGHTING_COORDS(5,6)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 _NormalTex_var = UnpackNormal(tex2D(_NormalTex,TRANSFORM_TEX(i.uv0, _NormalTex)));
                float3 NormalData = lerp(float3(0,0,1),_NormalTex_var.rgb,_NormalIntensity);
                float3 normalLocal = NormalData;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                UNITY_LIGHT_ATTENUATION(attenuation, i, i.posWorld.xyz);
////// Emissive:
                float4 _AlbedoTex_var = tex2D(_AlbedoTex,TRANSFORM_TEX(i.uv0, _AlbedoTex));
                float3 AlbedoData = _AlbedoTex_var.rgb;
                float3 emissive = AlbedoData;
                float node_8713 = (max(0,dot(lightDirection,i.normalDir))*attenuation);
                float3 LightData = (node_8713*_LightColor0.rgb);
                float3 finalColor = emissive + LightData;
                return fixed4(finalColor,1);
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
            #if !UNITY_PASS_FORWARDADD
            #define UNITY_PASS_FORWARDADD
            #endif
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _NormalTex; uniform float4 _NormalTex_ST;
            uniform sampler2D _AlbedoTex; uniform float4 _AlbedoTex_ST;
            uniform float _NormalIntensity;
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
                LIGHTING_COORDS(5,6)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 _NormalTex_var = UnpackNormal(tex2D(_NormalTex,TRANSFORM_TEX(i.uv0, _NormalTex)));
                float3 NormalData = lerp(float3(0,0,1),_NormalTex_var.rgb,_NormalIntensity);
                float3 normalLocal = NormalData;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                UNITY_LIGHT_ATTENUATION(attenuation, i, i.posWorld.xyz);
                float node_8713 = (max(0,dot(lightDirection,i.normalDir))*attenuation);
                float3 LightData = (node_8713*_LightColor0.rgb);
                float3 finalColor = LightData;
                return fixed4(finalColor * 1,0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
