//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 _texCol = texture2D( gm_BaseTexture,  v_vTexcoord);
    _texCol = vec4(1.0-(_texCol.r),
                    1.0-(_texCol.g),
                      1.0-(_texCol.b),
                        (_texCol.a));
    gl_FragColor = _texCol;
}

