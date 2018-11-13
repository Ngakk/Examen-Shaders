// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,cmtg:SF,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,acwp:False,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:32820,y:31445,varname:node_3138,prsc:2|custl-3470-OUT,clip-8597-OUT;n:type:ShaderForge.SFN_Set,id:6836,x:31475,y:32406,varname:Gradient,prsc:2|IN-6355-R;n:type:ShaderForge.SFN_FragmentPosition,id:5609,x:31273,y:32370,varname:node_5609,prsc:2;n:type:ShaderForge.SFN_TexCoord,id:638,x:31273,y:32231,varname:node_638,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Tex2d,id:6355,x:31273,y:32522,ptovrint:False,ptlb:GradientMap,ptin:_GradientMap,varname:node_6355,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Get,id:6079,x:32264,y:31613,varname:node_6079,prsc:2|IN-2238-OUT;n:type:ShaderForge.SFN_Slider,id:4491,x:31131,y:32773,ptovrint:False,ptlb:Width,ptin:_Width,varname:node_4491,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.1965812,max:1;n:type:ShaderForge.SFN_Slider,id:2675,x:31131,y:32874,ptovrint:False,ptlb:Height,ptin:_Height,varname:node_2675,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.4273505,max:1;n:type:ShaderForge.SFN_Set,id:261,x:31440,y:32773,varname:Width,prsc:2|IN-4491-OUT;n:type:ShaderForge.SFN_Set,id:5680,x:31440,y:32874,varname:Height,prsc:2|IN-2675-OUT;n:type:ShaderForge.SFN_Get,id:8958,x:31107,y:32993,varname:node_8958,prsc:2|IN-261-OUT;n:type:ShaderForge.SFN_Multiply,id:2714,x:31293,y:32993,varname:node_2714,prsc:2|A-8958-OUT,B-8933-OUT;n:type:ShaderForge.SFN_Vector1,id:8933,x:31128,y:33037,varname:node_8933,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Set,id:6578,x:31483,y:32993,varname:HalfWidth,prsc:2|IN-2714-OUT;n:type:ShaderForge.SFN_Get,id:7912,x:31293,y:33212,varname:node_7912,prsc:2|IN-5680-OUT;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:6533,x:31314,y:33264,varname:node_6533,prsc:2|IN-7912-OUT,IMIN-5745-OUT,IMAX-3805-OUT,OMIN-4522-OUT,OMAX-6603-OUT;n:type:ShaderForge.SFN_Vector1,id:5745,x:31070,y:33124,varname:node_5745,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:3805,x:31070,y:33478,varname:node_3805,prsc:2,v1:1;n:type:ShaderForge.SFN_Get,id:8068,x:30812,y:33282,varname:node_8068,prsc:2|IN-6578-OUT;n:type:ShaderForge.SFN_Subtract,id:4522,x:31070,y:33180,varname:node_4522,prsc:2|A-5745-OUT,B-8068-OUT;n:type:ShaderForge.SFN_Add,id:6603,x:31070,y:33325,varname:node_6603,prsc:2|A-8068-OUT,B-3805-OUT;n:type:ShaderForge.SFN_Set,id:4321,x:31479,y:33264,varname:HeightRemap,prsc:2|IN-6533-OUT;n:type:ShaderForge.SFN_Add,id:1883,x:31298,y:33509,varname:node_1883,prsc:2|A-3281-OUT,B-5059-OUT;n:type:ShaderForge.SFN_Subtract,id:5693,x:31298,y:33658,varname:node_5693,prsc:2|A-3281-OUT,B-5059-OUT;n:type:ShaderForge.SFN_Get,id:3281,x:31070,y:33586,varname:node_3281,prsc:2|IN-4321-OUT;n:type:ShaderForge.SFN_Get,id:5059,x:31070,y:33644,varname:node_5059,prsc:2|IN-6578-OUT;n:type:ShaderForge.SFN_Set,id:4188,x:31507,y:33509,varname:Top,prsc:2|IN-1883-OUT;n:type:ShaderForge.SFN_Set,id:2676,x:31507,y:33658,varname:Bottom,prsc:2|IN-5693-OUT;n:type:ShaderForge.SFN_If,id:8810,x:32226,y:32497,varname:node_8810,prsc:2|A-3377-OUT,B-8654-OUT,GT-7161-OUT,EQ-4907-OUT,LT-4907-OUT;n:type:ShaderForge.SFN_Get,id:8654,x:31977,y:32521,varname:node_8654,prsc:2|IN-4188-OUT;n:type:ShaderForge.SFN_Vector1,id:7161,x:31796,y:32649,varname:node_7161,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:4907,x:32226,y:32651,varname:node_4907,prsc:2,v1:1;n:type:ShaderForge.SFN_Get,id:3377,x:31959,y:32651,varname:node_3377,prsc:2|IN-6836-OUT;n:type:ShaderForge.SFN_If,id:6105,x:32226,y:32735,varname:node_6105,prsc:2|A-3377-OUT,B-415-OUT,GT-4907-OUT,EQ-4907-OUT,LT-7161-OUT;n:type:ShaderForge.SFN_Get,id:415,x:31977,y:32760,varname:node_415,prsc:2|IN-2676-OUT;n:type:ShaderForge.SFN_Multiply,id:7543,x:32471,y:32631,varname:node_7543,prsc:2|A-8810-OUT,B-6105-OUT;n:type:ShaderForge.SFN_Set,id:9687,x:32631,y:32631,varname:WidthIntersection,prsc:2|IN-7543-OUT;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:132,x:32226,y:32980,varname:node_132,prsc:2|IN-8860-OUT,IMIN-5882-OUT,IMAX-5053-OUT,OMIN-3797-OUT,OMAX-6691-OUT;n:type:ShaderForge.SFN_Get,id:8860,x:31937,y:32974,varname:node_8860,prsc:2|IN-6836-OUT;n:type:ShaderForge.SFN_Get,id:5882,x:31937,y:33022,varname:node_5882,prsc:2|IN-2676-OUT;n:type:ShaderForge.SFN_Get,id:5053,x:31937,y:33071,varname:node_5053,prsc:2|IN-4188-OUT;n:type:ShaderForge.SFN_Vector1,id:3797,x:31958,y:33125,varname:node_3797,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:6691,x:31958,y:33178,varname:node_6691,prsc:2,v1:1;n:type:ShaderForge.SFN_Clamp01,id:2842,x:32404,y:32980,varname:node_2842,prsc:2|IN-132-OUT;n:type:ShaderForge.SFN_Set,id:7448,x:32575,y:32980,varname:HeightGradient,prsc:2|IN-2842-OUT;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:9718,x:32202,y:33288,varname:node_9718,prsc:2|IN-2017-OUT,IMIN-2131-OUT,IMAX-2732-OUT,OMIN-5587-OUT,OMAX-3393-OUT;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:271,x:32202,y:33500,varname:node_271,prsc:2|IN-2017-OUT,IMIN-7089-OUT,IMAX-2006-OUT,OMIN-5587-OUT,OMAX-3393-OUT;n:type:ShaderForge.SFN_Vector1,id:5587,x:31821,y:33424,varname:node_5587,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:3393,x:31987,y:33424,varname:node_3393,prsc:2,v1:1;n:type:ShaderForge.SFN_Get,id:2017,x:32181,y:33424,varname:node_2017,prsc:2|IN-6836-OUT;n:type:ShaderForge.SFN_Get,id:7089,x:31839,y:33534,varname:node_7089,prsc:2|IN-2676-OUT;n:type:ShaderForge.SFN_Get,id:2732,x:31839,y:33340,varname:node_2732,prsc:2|IN-4188-OUT;n:type:ShaderForge.SFN_If,id:2296,x:32738,y:33385,varname:node_2296,prsc:2|A-2017-OUT,B-5886-OUT,GT-4521-OUT,EQ-4521-OUT,LT-6765-OUT;n:type:ShaderForge.SFN_Get,id:2131,x:31839,y:33296,varname:node_2131,prsc:2|IN-5680-OUT;n:type:ShaderForge.SFN_Get,id:2006,x:31839,y:33588,varname:node_2006,prsc:2|IN-5680-OUT;n:type:ShaderForge.SFN_OneMinus,id:8036,x:32365,y:33288,varname:node_8036,prsc:2|IN-9718-OUT;n:type:ShaderForge.SFN_Clamp01,id:4521,x:32525,y:33288,varname:node_4521,prsc:2|IN-8036-OUT;n:type:ShaderForge.SFN_Clamp01,id:6765,x:32525,y:33501,varname:node_6765,prsc:2|IN-271-OUT;n:type:ShaderForge.SFN_Get,id:5886,x:32504,y:33444,varname:node_5886,prsc:2|IN-5680-OUT;n:type:ShaderForge.SFN_Set,id:2649,x:32908,y:33385,varname:WidthGradient,prsc:2|IN-2296-OUT;n:type:ShaderForge.SFN_Set,id:1125,x:32717,y:33288,varname:GradientFromHalf,prsc:2|IN-4521-OUT;n:type:ShaderForge.SFN_Set,id:996,x:32717,y:33537,varname:GradientToHalf,prsc:2|IN-6765-OUT;n:type:ShaderForge.SFN_Color,id:240,x:31923,y:31371,ptovrint:False,ptlb:Madera,ptin:_Madera,varname:node_240,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5566038,c2:0.2868443,c3:0.118147,c4:1;n:type:ShaderForge.SFN_Color,id:8966,x:31923,y:31548,ptovrint:False,ptlb:Fuego,ptin:_Fuego,varname:node_8966,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.2117647,c2:1,c3:0.598404,c4:1;n:type:ShaderForge.SFN_Color,id:2400,x:31923,y:31731,ptovrint:False,ptlb:Carbon,ptin:_Carbon,varname:node_2400,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Lerp,id:912,x:32285,y:31494,varname:node_912,prsc:2|A-2400-RGB,B-240-RGB,T-6079-OUT;n:type:ShaderForge.SFN_If,id:1770,x:32242,y:32215,varname:node_1770,prsc:2|A-9418-OUT,B-5794-OUT,GT-4384-OUT,EQ-4384-OUT,LT-1842-OUT;n:type:ShaderForge.SFN_Get,id:9418,x:31964,y:32218,varname:node_9418,prsc:2|IN-6836-OUT;n:type:ShaderForge.SFN_Get,id:5794,x:31964,y:32278,varname:node_5794,prsc:2|IN-5680-OUT;n:type:ShaderForge.SFN_Vector1,id:1842,x:31985,y:32383,varname:node_1842,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:4384,x:31985,y:32328,varname:node_4384,prsc:2,v1:1;n:type:ShaderForge.SFN_Set,id:2238,x:32408,y:32215,varname:HeightAB,prsc:2|IN-1770-OUT;n:type:ShaderForge.SFN_Lerp,id:3470,x:32503,y:31711,varname:node_3470,prsc:2|A-912-OUT,B-8966-RGB,T-4422-OUT;n:type:ShaderForge.SFN_Get,id:4422,x:32323,y:31768,varname:node_4422,prsc:2|IN-2649-OUT;n:type:ShaderForge.SFN_Get,id:8597,x:32582,y:31896,varname:node_8597,prsc:2|IN-2238-OUT;proporder:6355-4491-2675-240-2400-8966;pass:END;sub:END;*/

Shader "Shader Forge/PEV_11_WoodDissolve" {
    Properties {
        _GradientMap ("GradientMap", 2D) = "white" {}
        _Width ("Width", Range(0, 1)) = 0.1965812
        _Height ("Height", Range(0, 1)) = 0.4273505
        _Madera ("Madera", Color) = (0.5566038,0.2868443,0.118147,1)
        _Carbon ("Carbon", Color) = (0.5,0.5,0.5,1)
        _Fuego ("Fuego", Color) = (0.2117647,1,0.598404,1)
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "Queue"="AlphaTest"
            "RenderType"="TransparentCutout"
            "CustomTag"="SF"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Cull Off
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #if !UNITY_PASS_FORWARDBASE
            #define UNITY_PASS_FORWARDBASE
            #endif
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _GradientMap; uniform float4 _GradientMap_ST;
            uniform float _Width;
            uniform float _Height;
            uniform float4 _Madera;
            uniform float4 _Fuego;
            uniform float4 _Carbon;
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
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float4 _GradientMap_var = tex2D(_GradientMap,TRANSFORM_TEX(i.uv0, _GradientMap));
                float Gradient = _GradientMap_var.r;
                float Height = _Height;
                float node_1770_if_leA = step(Gradient,Height);
                float node_1770_if_leB = step(Height,Gradient);
                float node_4384 = 1.0;
                float HeightAB = lerp((node_1770_if_leA*0.0)+(node_1770_if_leB*node_4384),node_4384,node_1770_if_leA*node_1770_if_leB);
                clip(HeightAB - 0.5);
////// Lighting:
                float node_2017 = Gradient;
                float node_2296_if_leA = step(node_2017,Height);
                float node_2296_if_leB = step(Height,node_2017);
                float node_5745 = 0.0;
                float node_3805 = 1.0;
                float Width = _Width;
                float HalfWidth = (Width*0.5);
                float node_8068 = HalfWidth;
                float node_4522 = (node_5745-node_8068);
                float HeightRemap = (node_4522 + ( (Height - node_5745) * ((node_8068+node_3805) - node_4522) ) / (node_3805 - node_5745));
                float node_3281 = HeightRemap;
                float node_5059 = HalfWidth;
                float Bottom = (node_3281-node_5059);
                float node_7089 = Bottom;
                float node_5587 = 0.0;
                float node_3393 = 1.0;
                float node_6765 = saturate((node_5587 + ( (node_2017 - node_7089) * (node_3393 - node_5587) ) / (Height - node_7089)));
                float node_2131 = Height;
                float Top = (node_3281+node_5059);
                float node_4521 = saturate((1.0 - (node_5587 + ( (node_2017 - node_2131) * (node_3393 - node_5587) ) / (Top - node_2131))));
                float WidthGradient = lerp((node_2296_if_leA*node_6765)+(node_2296_if_leB*node_4521),node_4521,node_2296_if_leA*node_2296_if_leB);
                float3 finalColor = lerp(lerp(_Carbon.rgb,_Madera.rgb,HeightAB),_Fuego.rgb,WidthGradient);
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
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _GradientMap; uniform float4 _GradientMap_ST;
            uniform float _Height;
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
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float4 _GradientMap_var = tex2D(_GradientMap,TRANSFORM_TEX(i.uv0, _GradientMap));
                float Gradient = _GradientMap_var.r;
                float Height = _Height;
                float node_1770_if_leA = step(Gradient,Height);
                float node_1770_if_leB = step(Height,Gradient);
                float node_4384 = 1.0;
                float HeightAB = lerp((node_1770_if_leA*0.0)+(node_1770_if_leB*node_4384),node_4384,node_1770_if_leA*node_1770_if_leB);
                clip(HeightAB - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
