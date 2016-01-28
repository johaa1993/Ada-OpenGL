with GL.C;

package GL.Programs.Shaders is

   use GL.C;

   type Shader (<>) is private;

   function Validate (S : Shader) return Boolean;
   function Create return Shader with Post => Validate (Create'Result);



private

   type Shader is new GLuint range 1 .. GLuint'Last;

end;
