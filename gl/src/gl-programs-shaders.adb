with GL.C.Complete;
with Interfaces.C;

with Ada.Text_IO;
with System.Address_Image;
with Ada.Unchecked_Conversion;
with GL.C.Accessories;
with Interfaces.C.Strings;

package body GL.Programs.Shaders is

   use GL.C.Complete;





   function Create (Item : Shade) return Shader is
      S : Shader;
   begin
      S := Shader (glCreateShader (Item'Enum_Rep));
      return S;
   end;

   function Validate (Item : Shader) return Boolean is
      use type GLboolean;
      B : GLboolean;
   begin
      B := glIsShader (GLuint (Item));
      return B = GL_TRUE;
   end;

   procedure Attach (Item : Program; Accessory : Shader) is
   begin
      glAttachShader (GLuint (Item), GLuint (Accessory));
   end;

   procedure Delete (Item : Shader) is
   begin
      --glDeleteShader (GLuint (S));
      null;
   end;

   procedure Compile_Unsafe (Item : Shader) is
   begin
      glCompileShader (GLuint (Item));
   end;

   procedure Compile (Item : Shader) is
   begin
      Compile_Unsafe (Item);
   end;



   type Info is
     (
      Kind_Info,
      Delete_Info,
      Compile_Info,
      Log_Length_Info,
      Source_Length_Info
     );

   for Info use
     (
      Kind_Info => GL_SHADER_TYPE,
      Delete_Info => GL_DELETE_STATUS,
      Compile_Info => GL_COMPILE_STATUS,
      Log_Length_Info => GL_INFO_LOG_LENGTH,
      Source_Length_Info => GL_SHADER_SOURCE_LENGTH
     );

   for Info'Size use GLenum'Size;


   procedure Get (Item : Shader; P : Info; R : access GLint) is
   begin
      glGetShaderiv (GLuint (Item), P'Enum_Rep, R);
   end;

   function Compile_Succeed (Item : Shader) return Boolean is
      use type GLint;
      R : aliased GLint;
   begin
      Get (Item, Compile_Info, R'Access);
      return R = GL_TRUE;
   end;

   function Get (Item : Shader) return Shade is
      use type GLint;
      Result : aliased GLint;
   begin
      Get (Item, Kind_Info, Result'Access);
      return Shade'Enum_Val (Result);
   end;

   procedure Compile_Log (Item : Shader; Message : out Log; Count : out Natural) is
      use Interfaces.C;
      Length : aliased GLsizei := 0;
      Text : aliased GLstring (1 .. Message'Length);
   begin
      glGetShaderInfoLog (GLuint (Item), Message'Length, Length'Access, Text'Address);
      To_Ada (Text, String (Message), Count);
   end;

   function Compile_Log (Item : Shader; Count : Natural := 512) return Log is
      Text : Log (1 .. Count);
      Length : Natural := 0;
   begin
      Compile_Log (Item, Text, Length);
      return Text (1 .. Length);
   end;




   procedure Set (Item : Shader; Language : Shading_Language) is
      use Interfaces.C;
      use Interfaces.C.Strings;
      C_Content : aliased char_array := To_C (String (Language));
      C_Content_Array : GLstringv (1 .. 1);
      C_Length_Array   : GLintv (1 .. 1);
   begin
      C_Content_Array (1) := To_Chars_Ptr (C_Content'Unrestricted_Access);
      C_Length_Array (1) := C_Content'Length;
      glShaderSource (GLuint (Item), 1, C_Content_Array, C_Length_Array);
   end;




end;
