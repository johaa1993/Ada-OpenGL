with GL.C.Complete;
with GL.C.Initializations;
with GL.Programs.Shaders;

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

procedure Draw is

   use GLFW;
   use GLFW.Displays;
   use GLFW.Displays.Windows;
   use GLFW.Initializations;
   use GLFW.Events;

   use GL.Programs.Shaders;

   use Interfaces.C;

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


   W : Window;


begin


   GLFW.Initializations.Initialize;

   W := Create (400, 400, To_C ("Hello"));
   Make_Context_Current (W);

   Initialize_OpenGL;

   declare
      S : Shader := Create;
   begin
      null;
   end;



   loop
      GLFW.Events.Poll;
      pragma Warnings (Off);
      exit when Closing (W) = 1;
      pragma Warnings (On);
   end loop;

   Destroy (W);

end;
