with System;
with Interfaces.C;

package GLFW.Monitors is

   use System;
   use Interfaces.C;

   type Monitor is new Address;
   Null_Monitor : Monitor := Monitor (Null_Address);


   type Video_Mode is record
      Width        : int;
      Height       : int;
      Red_Bits     : int;
      Green_Bits   : int;
      Blue_Bits    : int;
      Refresh_Rate : int;
   end record with Convention => C;

   type Video_Mode_Access is access Video_Mode with Convention => C;


   function Get_Primary return Monitor with
     Import,
     Convention => C,
     External_Name => "glfwGetPrimaryMonitor";

   function Get (M : Monitor) return Video_Mode_Access with
     Import,
     Convention => C,
     External_Name => "glfwGetVideoMode";


end;
