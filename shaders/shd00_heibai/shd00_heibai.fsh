//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
varying vec4 heibai_Colour;

void main()
{
    /*
        gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
    */
       //获取当前贴图的颜色
    vec4 _texCol = texture2D( gm_BaseTexture,  v_vTexcoord);
    //获取灰度值
    float _texGray = dot(_texCol.rgb, vec3(0.299, 0.587, 0.114));
    //将灰度值分别赋予rgb三色通道
    _texCol.rgb = vec3(_texGray,_texGray,_texGray);
    gl_FragColor = v_vColour*_texCol;
}

