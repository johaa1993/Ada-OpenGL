with GLFW;
with GLFW.Displays;
with GLFW.Displays.Windows;
with GLFW.Displays.Windows.Keys;
with GLFW.Initializations;
with GLFW.Events;
with Interfaces.C;
with Ada.Text_IO;


procedure Test_Keys is

   use GLFW;

   use Interfaces.C;
   use Ada.Text_IO;
   use GLFW;
   use GLFW.Displays;
   use GLFW.Displays.Windows;
   use GLFW.Displays.Windows.Keys;
   use GLFW.Initializations;
   use GLFW.Events;


   W : Window;
   K : Action;

begin

   Initialize;

   W := Create (400, 400, To_C ("Hello"));
   Make_Context_Current (W);

   loop
      Wait;

      K := Get (W, Key_Enter);
      Put_Line (K'Img);

      pragma Warnings (Off);
      exit when Closing (W) = 1;
      pragma Warnings (On);
   end loop;

   Destroy (W);

end;
