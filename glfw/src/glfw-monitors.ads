with System;

package GLFW.Monitors is

   use System;

   type Monitor is new Address;
   Null_Monitor : Monitor := Monitor (Null_Address);

end;
