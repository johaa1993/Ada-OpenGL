with GL.C.Complete;

package body GL.Programs.Shaders is

   use GL.C.Complete;

   function Create return Shader is
      S : Shader;
   begin
      S := Shader (glCreateShader (GL_FRAGMENT_SHADER));
      return S;
   end;

   function Validate (S : Shader) return Boolean is
      use type GLboolean;
      B : GLboolean;
   begin
      B := glIsShader (GLuint (S));
      return B = 1;
   end;


end;
