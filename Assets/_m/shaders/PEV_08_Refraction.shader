// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,cmtg:SF,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,acwp:False,coma:15,ufog:False,aust:False,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33199,y:32329,varname:node_3138,prsc:2|custl-8008-OUT;n:type:ShaderForge.SFN_SceneColor,id:1483,x:32530,y:32781,varname:node_1483,prsc:2|UVIN-5015-OUT;n:type:ShaderForge.SFN_ScreenPos,id:9994,x:31899,y:32500,varname:node_9994,prsc:2,sctp:2;n:type:ShaderForge.SFN_Multiply,id:1550,x:32715,y:32637,varname:node_1550,prsc:2|A-296-RGB,B-1483-RGB;n:type:ShaderForge.SFN_Color,id:296,x:32530,y:32637,ptovrint:False,ptlb:ColorTint,ptin:_ColorTint,varname:node_296,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.6650944,c2:0.8871897,c3:1,c4:1;n:type:ShaderForge.SFN_Add,id:5356,x:32280,y:33555,varname:node_5356,prsc:2|B-2954-OUT;n:type:ShaderForge.SFN_Slider,id:2954,x:31886,y:33618,ptovrint:False,ptlb:node_2954,ptin:_node_2954,varname:node_2954,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:0.08547009,max:1;n:type:ShaderForge.SFN_If,id:7151,x:32646,y:33651,varname:node_7151,prsc:2|A-5356-OUT,B-8082-OUT,GT-5356-OUT,EQ-5356-OUT,LT-2936-OUT;n:type:ShaderForge.SFN_Vector1,id:8082,x:32280,y:33677,varname:node_8082,prsc:2,v1:0;n:type:ShaderForge.SFN_Multiply,id:2936,x:32460,y:33732,varname:node_2936,prsc:2|A-5356-OUT,B-459-OUT;n:type:ShaderForge.SFN_Vector1,id:459,x:32280,y:33785,varname:node_459,prsc:2,v1:-1;n:type:ShaderForge.SFN_If,id:8724,x:33036,y:33648,varname:node_8724,prsc:2|A-7151-OUT,B-9687-OUT,GT-2066-OUT,EQ-7151-OUT,LT-7151-OUT;n:type:ShaderForge.SFN_Vector1,id:9687,x:32632,y:33800,varname:node_9687,prsc:2,v1:1;n:type:ShaderForge.SFN_OneMinus,id:2066,x:32893,y:33786,varname:node_2066,prsc:2|IN-7324-OUT;n:type:ShaderForge.SFN_Subtract,id:7324,x:32893,y:33915,varname:node_7324,prsc:2|A-7151-OUT,B-9687-OUT;n:type:ShaderForge.SFN_Add,id:6693,x:32156,y:32500,varname:node_6693,prsc:2|A-9994-UVOUT,B-9910-OUT;n:type:ShaderForge.SFN_Tex2d,id:4629,x:31745,y:33062,ptovrint:False,ptlb:NormalTexture,ptin:_NormalTexture,varname:node_4629,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Tex2d,id:7838,x:31899,y:32676,ptovrint:False,ptlb:NoiseMap,ptin:_NoiseMap,varname:node_7838,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False|UVIN-4591-UVOUT;n:type:ShaderForge.SFN_ScreenPos,id:4591,x:31704,y:32676,varname:node_4591,prsc:2,sctp:1;n:type:ShaderForge.SFN_Multiply,id:9910,x:32125,y:32676,varname:node_9910,prsc:2|A-7838-R,B-5567-OUT;n:type:ShaderForge.SFN_Slider,id:5567,x:31766,y:32860,ptovrint:False,ptlb:RefractionIntensity,ptin:_RefractionIntensity,varname:node_5567,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.1,max:0.1;n:type:ShaderForge.SFN_SwitchProperty,id:5015,x:32350,y:32769,ptovrint:False,ptlb:UseNormal,ptin:_UseNormal,varname:node_5015,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:True|A-6693-OUT,B-1778-OUT;n:type:ShaderForge.SFN_ScreenPos,id:8746,x:31910,y:32938,varname:node_8746,prsc:2,sctp:2;n:type:ShaderForge.SFN_Append,id:9880,x:31910,y:33079,varname:node_9880,prsc:2|A-4629-R,B-4629-G;n:type:ShaderForge.SFN_Add,id:1778,x:32155,y:32866,varname:node_1778,prsc:2|A-8746-UVOUT,B-4716-OUT;n:type:ShaderForge.SFN_Multiply,id:4716,x:32081,y:33016,varname:node_4716,prsc:2|A-5567-OUT,B-9880-OUT;n:type:ShaderForge.SFN_Fresnel,id:8606,x:32981,y:32796,varname:node_8606,prsc:2|NRM-9516-OUT,EXP-9539-OUT;n:type:ShaderForge.SFN_NormalVector,id:9516,x:32734,y:32796,prsc:2,pt:False;n:type:ShaderForge.SFN_Exp,id:9539,x:32981,y:32930,varname:node_9539,prsc:2,et:0|IN-8530-OUT;n:type:ShaderForge.SFN_Slider,id:8530,x:32577,y:32960,ptovrint:False,ptlb:Fresnel,ptin:_Fresnel,varname:node_8530,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Lerp,id:8008,x:33028,y:32570,varname:node_8008,prsc:2|A-1550-OUT,B-4121-RGB,T-8606-OUT;n:type:ShaderForge.SFN_SceneColor,id:4121,x:32685,y:32473,varname:node_4121,prsc:2|UVIN-1954-UVOUT;n:type:ShaderForge.SFN_ScreenPos,id:1954,x:32530,y:32473,varname:node_1954,prsc:2,sctp:2;proporder:296-2954-7838-5567-5015-4629-8530;pass:END;sub:END;*/

Shader "Shader Forge/PEV_08_Refraction" {
    Properties {
        _ColorTint ("ColorTint", Color) = (0.6650944,0.8871897,1,1)
        _node_2954 ("node_2954", Range(-1, 1)) = 0.08547009
        _NoiseMap ("NoiseMap", 2D) = "white" {}
        _RefractionIntensity ("RefractionIntensity", Range(0, 0.1)) = 0.1
        [MaterialToggle] _UseNormal ("UseNormal", Float ) = 0
        _NormalTexture ("NormalTexture", 2D) = "bump" {}
        _Fresnel ("Fresnel", Range(0, 1)) = 1
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
            "CustomTag"="SF"
        }
        GrabPass{ }
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
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _GrabTexture;
            uniform float4 _ColorTint;
            uniform sampler2D _NormalTexture; uniform float4 _NormalTexture_ST;
            uniform sampler2D _NoiseMap; uniform float4 _NoiseMap_ST;
            uniform float _RefractionIntensity;
            uniform fixed _UseNormal;
            uniform float _Fresnel;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float4 projPos : TEXCOORD3;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float2 sceneUVs = (i.projPos.xy / i.projPos.w);
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
////// Lighting:
                float4 _NoiseMap_var = tex2D(_NoiseMap,TRANSFORM_TEX(float2((sceneUVs.x * 2 - 1)*(_ScreenParams.r/_ScreenParams.g), sceneUVs.y * 2 - 1).rg, _NoiseMap));
                float3 _NormalTexture_var = UnpackNormal(tex2D(_NormalTexture,TRANSFORM_TEX(i.uv0, _NormalTexture)));
                float3 finalColor = lerp((_ColorTint.rgb*tex2D( _GrabTexture, lerp( (sceneUVs.rg+(_NoiseMap_var.r*_RefractionIntensity)), (sceneUVs.rg+(_RefractionIntensity*float2(_NormalTexture_var.r,_NormalTexture_var.g))), _UseNormal )).rgb),tex2D( _GrabTexture, sceneUVs.rg).rgb,pow(1.0-max(0,dot(i.normalDir, viewDirection)),exp(_Fresnel)));
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
