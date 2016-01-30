with Ada.Text_IO;


package body GL.Programs.Shaders.Files is




   procedure Set (Item : Shader; Name : File_Name) is
      use Ada;
      use Ada.Directories;
      subtype Shading_Language_Bounded is Shading_Language (1 .. Natural (Size (String (Name))));
      package Shading_Language_Bounded_IO is new Direct_IO (Shading_Language_Bounded);
      use Shading_Language_Bounded_IO;
      File : File_Type;
      Buffer : Shading_Language_Bounded;
   begin
      Open  (File, In_File, String (Name));
      Read  (File, Buffer);
      Close (File);
      Set (Item, Buffer);
   end;



   procedure Compile (Item : Shader; Name : File_Name) is
   begin
      Set (Item, Name);
      Compile (Item);
   end;

end;
