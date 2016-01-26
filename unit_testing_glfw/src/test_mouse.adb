with GLFW;
with GLFW.Keys;
with GLFW.Mouses;
with GLFW.Windows;
with Interfaces.C;
with Ada.Text_IO;
with Ada.Float_Text_IO;


procedure Test_Mouse is

   use GLFW;
   use GLFW.Keys;
   use GLFW.Mouses;
   use GLFW.Windows;

   use Interfaces.C;

   use Ada.Text_IO;
   use Ada.Float_Text_IO;

   W : Window;
   X : Mouse_X;
   Y : Mouse_Y;

begin

   Initialize;

   W := Create (400, 400, To_C ("Hello"));
   Make_Context_Current (W);

   loop
      Wait_Events;

      Get (W, X, Y);
      Put (Float (X), 6, 3, 0);
      Put (Float (X), 6, 3, 0);
      New_Line;

      pragma Warnings (Off);
      exit when Closing (W) = 1;
      pragma Warnings (On);
   end loop;

   Destroy (W);

end;
