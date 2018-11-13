// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,cmtg:SF,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,acwp:False,coma:15,ufog:False,aust:False,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:34568,y:32330,varname:node_3138,prsc:2|custl-8454-OUT,alpha-384-OUT;n:type:ShaderForge.SFN_Color,id:7241,x:33997,y:32178,ptovrint:False,ptlb:ColorFresnel,ptin:_ColorFresnel,varname:node_7241,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.4103774,c2:1,c3:0.9875595,c4:1;n:type:ShaderForge.SFN_DepthBlend,id:4955,x:33825,y:32767,varname:node_4955,prsc:2|DIST-7581-OUT;n:type:ShaderForge.SFN_Slider,id:7581,x:33501,y:32767,ptovrint:False,ptlb:DepthBlend,ptin:_DepthBlend,varname:node_7581,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_OneMinus,id:985,x:33995,y:32766,varname:node_985,prsc:2|IN-4955-OUT;n:type:ShaderForge.SFN_Clamp01,id:9764,x:34161,y:32766,varname:node_9764,prsc:2|IN-985-OUT;n:type:ShaderForge.SFN_Fresnel,id:4333,x:33997,y:32504,varname:node_4333,prsc:2|NRM-2090-OUT,EXP-8891-OUT;n:type:ShaderForge.SFN_NormalVector,id:2090,x:33825,y:32465,prsc:2,pt:False;n:type:ShaderForge.SFN_Exp,id:8891,x:33825,y:32623,varname:node_8891,prsc:2,et:0|IN-418-OUT;n:type:ShaderForge.SFN_Slider,id:418,x:33501,y:32623,ptovrint:False,ptlb:node_418,ptin:_node_418,varname:node_418,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Blend,id:384,x:34161,y:32595,varname:node_384,prsc:2,blmd:6,clmp:True|SRC-4333-OUT,DST-9764-OUT;n:type:ShaderForge.SFN_Color,id:9077,x:33997,y:32347,ptovrint:False,ptlb:ColorIntersect,ptin:_ColorIntersect,varname:node_9077,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.7750099,c3:0.3254717,c4:1;n:type:ShaderForge.SFN_Lerp,id:8454,x:34335,y:32327,varname:node_8454,prsc:2|A-7241-RGB,B-9077-RGB,T-9764-OUT;proporder:7241-7581-418-9077;pass:END;sub:END;*/

Shader "Uniat/PEV_06_Blending" {
    Properties {
        _ColorFresnel ("ColorFresnel", Color) = (0.4103774,1,0.9875595,1)
        _DepthBlend ("DepthBlend", Range(0, 1)) = 0
        _node_418 ("node_418", Range(0, 1)) = 0
        _ColorIntersect ("ColorIntersect", Color) = (1,0.7750099,0.3254717,1)
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
            "CustomTag"="SF"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            Cull Off
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #if !UNITY_PASS_FORWARDBASE
            #define UNITY_PASS_FORWARDBASE
            #endif
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _CameraDepthTexture;
            uniform float4 _ColorFresnel;
            uniform float _DepthBlend;
            uniform float _node_418;
            uniform float4 _ColorIntersect;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                float4 projPos : TEXCOORD2;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
////// Lighting:
                float node_9764 = saturate((1.0 - saturate((sceneZ-partZ)/_DepthBlend)));
                float3 finalColor = lerp(_ColorFresnel.rgb,_ColorIntersect.rgb,node_9764);
                float node_384 = saturate((1.0-(1.0-pow(1.0-max(0,dot(i.normalDir, viewDirection)),exp(_node_418)))*(1.0-node_9764)));
                return fixed4(finalColor,node_384);
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #if !UNITY_PASS_SHADOWCASTER
            #define UNITY_PASS_SHADOWCASTER
            #endif
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
