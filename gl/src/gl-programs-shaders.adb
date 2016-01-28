with GL.C.Complete;

package body GL.Programs.Shaders is

   use GL.C.Complete;

   function Create (T : Shade) return Shader is
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

   procedure Attach (P : Program; S : Shader) is
   begin
      glAttachShader (GLuint (P), GLuint (S));
   end;

   procedure Delete (S : Shader) is
   begin
      --glDeleteShader (GLuint (S));
      null;
   end;

   procedure Compile (S : Shader) is
   begin
      glCompileShader (GLuint (S));
   end;


end;
