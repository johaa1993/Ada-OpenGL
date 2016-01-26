with GLFW;
with Interfaces.C;


procedure Create_Window is

   use GLFW;
   use Interfaces.C;

   W : Window;

begin

   Initialize;

   W := Create (400, 400, To_C ("Hello"));
   Make_Context_Current (W);

   loop
      Wait_Events;
      pragma Warnings (Off);
      exit when Closing (W) = 1;
      pragma Warnings (On);
   end loop;

   Destroy (W);

end;
