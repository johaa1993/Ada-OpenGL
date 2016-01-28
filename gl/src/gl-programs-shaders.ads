with GL.C;

package GL.Programs.Shaders is

   use GL.C;

   type Shade is (Vertex, Fragment);

   type Shader (<>) is private;

   function Validate (S : Shader) return Boolean;
   function Create (T : Shade) return Shader with Post => Validate (Create'Result);
   procedure Attach (P : Program; S : Shader);
   procedure Delete (S : Shader);
   procedure Compile (S : Shader);

private

   type Shader is new GLuint range 1 .. GLuint'Last;

   for Shade'Size use GLenum'Size;

end;
