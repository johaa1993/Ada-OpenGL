with GLFW;
with GLFW.Displays;
with GLFW.Displays.Windows;
with GLFW.Initializations;
with GLFW.Events;

with Interfaces.C;

procedure Create_Window is

   use GLFW;
   use GLFW.Displays;
   use GLFW.Displays.Windows;
   use GLFW.Initializations;
   use GLFW.Events;

   use Interfaces.C;

   W : Window;

begin

   Initialize;

   W := Create (400, 400, To_C ("Hello"));
   Make_Context_Current (W);

   loop
      Wait;
      pragma Warnings (Off);
      exit when Closing (W) = 1;
      pragma Warnings (On);
   end loop;

   Destroy (W);

end;
