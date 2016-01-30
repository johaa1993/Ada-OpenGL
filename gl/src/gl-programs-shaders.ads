with GL.C;

package GL.Programs.Shaders is

   use GL.C;

   type Shade is (Fragment_Shade, Vertex_Shade, Geometry_Shade, Tess_Evaluation_Shade, Tess_Control_Shade);
   type Shader (<>) is private;
   type Log is new String;
   type Shading_Language is new String;
   type Fragment_Shading_Language is new Shading_Language;
   type Geometry_Shading_Language is new Shading_Language;
   type Tess_Evaluation_Shading_Language is new Shading_Language;
   type Tess_Control_Shading_Language is new Shading_Language;

   function Validate (Item : Shader) return Boolean;

   function Create (Item : Shade) return Shader with Post => Validate (Create'Result);
   procedure Attach (Item : Program; Accessory : Shader);
   procedure Delete (Item : Shader);
   procedure Set (Item : Shader; Language : Shading_Language);

   function Compile_Succeed (Item : Shader) return Boolean;
   procedure Compile_Unsafe (Item : Shader);
   procedure Compile (Item : Shader) with Post => Compile_Succeed (Item);
   procedure Compile_Log (Item : Shader; Message : out Log; Count : out Natural);
   function Compile_Log (Item : Shader; Count : Natural := 512) return Log;

private

   type Shader is new GLuint range 1 .. GLuint'Last;

   for Shade'Size use GLenum'Size;
   for Shade use
     (
      Fragment_Shade        => 16#8B30#,
      Vertex_Shade          => 16#8B31#,
      Geometry_Shade        => 16#8DD9#,
      Tess_Evaluation_Shade => 16#8E87#,
      Tess_Control_Shade    => 16#8E88#
     );

end;
