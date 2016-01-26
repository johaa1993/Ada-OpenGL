with GLFW;
with GLFW.Keys;
with Interfaces.C;
with Ada.Text_IO;


procedure Test_Keys is

   use GLFW;
   use GLFW.Keys;
   use Interfaces.C;
   use Ada.Text_IO;

   W : Window;
   K : Action;

begin

   Initialize;

   W := Create (400, 400, To_C ("Hello"));
   Make_Context_Current (W);

   loop
      Wait_Events;

      K := Get (W, Key_Enter);
      Put_Line (K'Img);

      pragma Warnings (Off);
      exit when Closing (W) = 1;
      pragma Warnings (On);
   end loop;

   Destroy (W);

end;
