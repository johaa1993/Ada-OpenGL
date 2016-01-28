with GLFW;
with GLFW.Displays;
with GLFW.Displays.Windows;
with GLFW.Displays.Monitors;
with GLFW.Initializations;
with GLFW.Events;


with Interfaces.C;
with Ada.Text_IO;
with Ada.Float_Text_IO;
with Ada.Integer_Text_IO;
with Ada.Strings.Fixed;



procedure Test_Monitor is


   use GLFW;
   use GLFW.Displays;
   use GLFW.Displays.Windows;
   use GLFW.Displays.Monitors;
   use GLFW.Initializations;
   use GLFW.Events;

   use Interfaces.C;

   use Ada.Text_IO;
   use Ada.Float_Text_IO;
   use Ada.Integer_Text_IO;
   use Ada.Strings.Fixed;

   --W : Window;
   M : Monitor;
   V : Video_Mode;

begin

   Initialize;

   --W := Create (400, 400, To_C ("Hello"));
   --Make_Context_Current (W);

   M := Get_Primary;
   V := Get (M);
   Put_Line ("Video Mode");
   Put (Tail ("Width", 14));
   Put (Tail ("Height", 14));
   Put (Tail ("Red_Bits", 14));
   Put (Tail ("Green_Bits", 14));
   Put (Tail ("Blue_Bits", 14));
   Put (Tail ("Refresh_Rate", 14));
   New_Line;
   Put (Integer (V.Width), 14);
   Put (Integer (V.Height), 14);
   Put (Integer (V.Red_Bits), 14);
   Put (Integer (V.Green_Bits), 14);
   Put (Integer (V.Blue_Bits), 14);
   Put (Integer (V.Refresh_Rate), 14);


   --Destroy (W);

end;
