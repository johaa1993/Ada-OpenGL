with Ada.Directories;
with Ada.Direct_IO;
with Ada.Text_IO;

package GL.Programs.Shaders.Files is

   type File_Name is new String;

   procedure Set (Item : Shader; Name : File_Name);
   procedure Compile (Item : Shader; Name : File_Name);

private


end;
