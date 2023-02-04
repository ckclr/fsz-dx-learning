Texture2D    mytexture : register(t0);
SamplerState mysampler : register(s0);

struct vs_out
{
    float4 position : SV_POSITION;
    float2 texcoord : TEX;
    float4 color : COL;
};

float4 ps_main(vs_out input)
    : SV_TARGET
{
    return mytexture.Sample(mysampler, input.texcoord) * input.color;
}
