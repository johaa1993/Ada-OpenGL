with GLFW;
with GLFW.Displays;
with GLFW.Displays.Windows;
with GLFW.Displays.Windows.Cursors;
with GLFW.Initializations;
with GLFW.Events;

with Interfaces.C;
with Ada.Text_IO;
with Ada.Float_Text_IO;


procedure Test_Mouse is

   use GLFW;
   use GLFW.Displays;
   use GLFW.Displays.Windows;
   use GLFW.Displays.Windows.Cursors;
   use GLFW.Initializations;
   use GLFW.Events;

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
      Wait;

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
