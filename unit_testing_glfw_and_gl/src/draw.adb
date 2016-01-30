with GL.C.Complete;
with GL.C.Initializations;
with GL.Programs.Shaders;
with GL.Programs.Shaders.Files;

with GLFW.Displays;
with GLFW.Displays.Windows;
with GLFW.APIs;
with GLFW.Initializations;
with GLFW.Events;

with Interfaces.C;

with System;
with System.Address_Image;

with Ada.Text_IO;
with Ada.Strings.Fixed;
with Ada.Exceptions;

procedure Draw is

   procedure Initialize_OpenGL is

      use System;
      use GL.C.Initializations;

      function Loader (Name : String) return Address is
         use Ada.Text_IO;
         use Ada.Strings.Fixed;
         A : Address := GLFW.APIs.Get (Name);
      begin
         Put (Head (Name, 30));
         Put (Address_Image (A));
         New_Line;
         return A;
      end;

   begin
      Initialize (Loader'Unrestricted_Access);
   end;


   W : GLFW.Displays.Window;


begin

   declare
      use GLFW.Displays.Windows;
      use GLFW.Initializations;
      use Interfaces.C;
   begin
      Initialize;
      W := Create (400, 400, To_C ("Hello"));
      Make_Context_Current (W);
      Initialize_OpenGL;

      declare
         use Ada.Text_IO;
         use Ada.Exceptions;
         use GL.Programs;
         use GL.Programs.Shaders;
         use GL.Programs.Shaders.Files;
         P : Program := Create;
         S : Shader := Create (Vertex_Shade);
         F : File_Name := "test.glfs";
      begin
         Compile (S, F);
         Attach (P, S);
      exception
         when Error : others =>
            Put_Line ("Exception:");
            Put_Line (Exception_Information (Error));
            Put_Line (String (Compile_Log (S)));
      end;

   end;





   declare
      use GLFW.Displays.Windows;
      use GLFW.Events;
   begin
      loop
         Poll;
         pragma Warnings (Off);
         exit when Closing (W) = 1;
         pragma Warnings (On);
      end loop;
      Destroy (W);
   end;


end;
