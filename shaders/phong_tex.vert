varying vec3 vN;
varying vec3 v;
void main(void)  
{     
   v = vec3(gl_ModelViewMatrix * gl_Vertex);       
   vN = normalize(gl_NormalMatrix * gl_Normal);
   gl_TexCoord[0] = gl_TextureMatrix[0] * gl_MultiTexCoord0;
   
   gl_Position = gl_ModelViewProjectionMatrix * gl_Vertex;  
}
         