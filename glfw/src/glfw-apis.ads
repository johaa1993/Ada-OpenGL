with System.Storage_Elements;
with System;
with Interfaces.C;

package GLFW.APIs is

   use System;
   use System.Storage_Elements;
   use Interfaces.C;

   type API is new Address;

   Null_API : constant API := API (Null_Address);

   No_Current_Context_API : constant API := API (To_Address (16#00010002#));

   pragma Warnings (Off);
   function Get (Name : char_array) return API with
     Import,
     Convention => C,
     External_Name => "glfwGetProcAddress",
     Post =>
       Get'Result /= Null_API or
       Get'Result /= No_Current_Context_API;
   pragma Warnings (On);

end;
