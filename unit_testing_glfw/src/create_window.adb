with GLFW;
with GLFW.Keys;
with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings; use Interfaces.C.Strings;
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Ada.Strings.Fixed; use Ada.Strings.Fixed;
with System; use System;
with System.Address_Image;


procedure Create_Window is
   use GLFW;
   use GLFW.Keys;
   W : Window;
   I : int;
   K : Key_Status;
   X : Mouse_X;
   Y : Mouse_Y;
begin
   I := Initialize;
   W := Create (400, 400, To_C ("Hello"));
   Make_Context_Current (W);
   loop
      --Poll_Events;

      Wait_Events;

      K := Get (W, Key_Space);
      Put_Line (K'Img);

      Get (W, X, Y);
      Put (Float (X), 6, 3, 0);
      Put (Float (X), 6, 3, 0);
      New_Line;

      pragma Warnings (Off);
      exit when Closing (W) = 1;
      pragma Warnings (On);
   end loop;
end;
