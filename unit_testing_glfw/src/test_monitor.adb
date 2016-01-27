with GLFW;
with GLFW.Keys;
with GLFW.Mouses;
with GLFW.Windows;
with Interfaces.C;
with Ada.Text_IO;
with Ada.Float_Text_IO;
with Ada.Integer_Text_IO;
with Ada.Strings.Fixed;
with GLFW.Monitors;


procedure Test_Monitor is

   use GLFW;
   use GLFW.Keys;
   use GLFW.Mouses;
   use GLFW.Windows;
   use GLFW.Monitors;

   use Interfaces.C;

   use Ada.Text_IO;
   use Ada.Float_Text_IO;
   use Ada.Integer_Text_IO;
   use Ada.Strings.Fixed;

   --W : Window;
   M : Monitor;
   V : Video_Mode_Access;

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
