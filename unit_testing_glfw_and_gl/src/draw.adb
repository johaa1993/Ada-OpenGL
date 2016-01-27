with GL;
with GL.Init;
with GLFW;
with GLFW.Windows;
with GLFW.APIs;
with Interfaces.C;
with System;
with Ada.Text_IO;


procedure Draw is

   use GLFW;
   use GLFW.Windows;
   use Interfaces.C;


   W : Window;

   procedure Initialize_OpenGL is
      use System;
      use GLFW.APIs;
      use GL;
      function Loader (Name : String) return Address is
         use Ada.Text_IO;
         A : API := Get (To_C (Name));
      begin
         Put_Line (Name);
         return Address (A);
      end;
   begin
      Init (Loader'Access);
   end;

begin


   GLFW.Initialize;

   W := Create (400, 400, To_C ("Hello"));
   Make_Context_Current (W);

   Initialize_OpenGL;

   loop
      Wait_Events;
      pragma Warnings (Off);
      exit when Closing (W) = 1;
      pragma Warnings (On);
   end loop;

   Destroy (W);

end;
