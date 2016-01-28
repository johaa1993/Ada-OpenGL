with GL;
with GL.Init;
with GLFW;
with GLFW.Displays;
with GLFW.Displays.Windows;
with GLFW.APIs;
with GLFW.Initializations;
with GLFW.Events;
with Interfaces.C;
with System;
with Ada.Text_IO;


procedure Draw is

   use GLFW;
   use GLFW.Displays;
   use GLFW.Displays.Windows;
   use GLFW.Initializations;
   use GLFW.Events;
   use Interfaces.C;

   W : Window;

   procedure Initialize_OpenGL is
      use System;
      use GL;
      function Loader (Name : String) return Address is
         use Ada.Text_IO;
         use GLFW.APIs;
      begin
         Put_Line (Name);
         return Get (Name);
      end;
   begin
      Init (Loader'Access);
   end;

begin


   GLFW.Initializations.Initialize;

   W := Create (400, 400, To_C ("Hello"));
   Make_Context_Current (W);

   Initialize_OpenGL;

   loop
      GLFW.Events.Poll;
      pragma Warnings (Off);
      exit when Closing (W) = 1;
      pragma Warnings (On);
   end loop;

   Destroy (W);

end;
