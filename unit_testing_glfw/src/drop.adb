with GLFW;
with GLFW.Displays;
with GLFW.Displays.Windows;
with GLFW.Displays.Windows.Drops;
with GLFW.Initializations;
with GLFW.Events;

with Interfaces.C;
with Interfaces.C.Strings;
with Ada.Text_IO;
with Ada.Integer_Text_IO;



procedure Drop is

   use Interfaces.C.Strings;
   use Interfaces.C;

   use GLFW;
   use GLFW.Displays;
   use GLFW.Displays.Windows;
   use GLFW.Displays.Windows.Drops;
   use GLFW.Initializations;
   use GLFW.Events;


   pragma Warnings (Off);
   procedure Dropped (W : Window; Count : int; Paths : chars_ptr_array) with Convention => C;
   pragma Warnings (On);

   procedure Dropped (W : Window; Count : int; Paths : chars_ptr_array) is
      use Ada.Text_IO;
      use Ada.Integer_Text_IO;
   begin
      Put_Line ("Dropped");
      Put (Integer (Count), 4);
      New_Line;
      for I in 0 .. Count - 1 loop
         Put_Line (Value (Paths (size_t (I))));
      end loop;
   end;

   W : Window;

   use Ada.Text_IO;

begin

   Put_Line ("Initialize");
   Initialize;

   W := Create (400, 400, To_C ("Hello"));
   Make_Context_Current (W);

   Set (W, Dropped'Unrestricted_Access);

   loop
      Wait;
      pragma Warnings (Off);
      exit when Closing (W) = 1;
      pragma Warnings (On);
   end loop;

   Destroy (W);

end;
