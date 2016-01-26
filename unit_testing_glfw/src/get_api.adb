with Interfaces.C;
with System.Address_Image;
with GLFW;
with GLFW.APIs;
with Ada.Text_IO;
with GLFW.Windows;


procedure Get_API is

   use Interfaces.C;
   use System;
   use Ada.Text_IO;
   use GLFW;
   use GLFW.APIs;
   use GLFW.Windows;

   A : API;
   W : Window;

begin

   Initialize;

   W := Create (400, 400, To_C ("Hello"));
   Make_Context_Current (W);

   A := Get ("glVertexAttribPointer");

   Put_Line (Address_Image (A));

   Destroy (W);

end;
