with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings; use Interfaces.C.Strings;
with System; use System;
with System.Storage_Elements; use System.Storage_Elements;

package GLFW is


   type Window is new Address;
   Null_Window : Window := Window (Null_Address);

   type Monitor is new Address;
   Null_Monitor : Monitor := Monitor (Null_Address);



   -- This function creates a window and its associated OpenGL or OpenGL ES context.
   -- Most of the options controlling how the window and its context should be created are specified with window hints.
   --
   -- Successful creation does not change which context is current.
   -- Before you can use the newly created context, you need to make it current.
   -- For information about the share parameter, see Context object sharing.
   pragma Warnings (Off);
   function Create (Width : int; Height : int; Title : char_array; Primary : Monitor := Null_Monitor; Share : Window := Null_Window) return Window with
     Import,
     Convention => C,
     External_Name => "glfwCreateWindow",
     Post => Create'Result /= Null_Window;
   pragma Warnings (On);

   procedure Make_Context_Current (W : Window) with
     Import,
     Convention => C,
     External_Name => "glfwMakeContextCurrent",
     Pre => W /= Null_Window;


   procedure Destroy (W : Window) with
     Import,
     Convention => C,
     External_Name => "glfwDestroyWindow",
     Pre => W /= Null_Window;





   type Hint_Target is
     (
      Hint_Target_Visible,
      Hint_Target_Decorated
     );

   for Hint_Target use
     (
      Hint_Target_Visible => 16#00020004#,
      Hint_Target_Decorated => 16#00020005#
     );

   for Hint_Target'Size use int'Size;

   type Hint_Value is
     (
      Hint_Value_False,
      Hint_Value_True
     );

   for Hint_Value use
     (
      Hint_Value_False => 0,
      Hint_Value_True => 1
     );

   for Hint_Value'Size use int'Size;

   procedure Set_Hint (Target : Hint_Target; Value : Hint_Value) with
     Import,
     Convention => C,
     External_Name => "glfwWindowHint";













   type Mouse_X is new Double;
   type Mouse_Y is new Double;

   procedure Get (W : Window; X : out Mouse_X; Y : out Mouse_Y) with
     Import,
     Convention => C,
     External_Name => "glfwGetCursorPos",
     Pre => W /= Null_Window;





   type API is new Address;

   API_Null : constant API := API (Null_Address);
   API_No_Current_Context : constant API := API (To_Address (16#00010002#));

   pragma Warnings (Off);
   function Get (Name : char_array) return API with
     Import,
     Convention => C,
     External_Name => "glfwGetProcAddress",
     Post =>
       Get'Result /= API_Null or
       Get'Result /= API_No_Current_Context;
   pragma Warnings (On);


   -- This function initializes the GLFW library.
   -- Before most GLFW functions can be used, GLFW must be initialized, and before an application terminates GLFW should be terminated in order to free any resources allocated during or after initialization.
   -- If this function fails, it calls glfwTerminate before returning.
   -- If it succeeds, you should call glfwTerminate before the application exits.
   -- Additional calls to this function after successful initialization but before termination will return GL_TRUE immediately.
   function Initialize return int with
     Import,
     Convention => C,
     External_Name => "glfwInit",
     Post => Initialize'Result /= 0;






   type Close_Flag is new Int;

   -- http://www.glfw.org/docs/latest/group__window.html#ga24e02fbfefbb81fc45320989f8140ab5
   function Closing (W : Window) return Close_Flag with
     Import,
     Convention => C,
     External_Name => "glfwWindowShouldClose",
     Pre => W /= Null_Window;





   -- http://www.glfw.org/docs/latest/group__window.html#ga37bd57223967b4211d60ca1a0bf3c832
   procedure Poll_Events with
     Import,
     Convention => C,
     External_Name => "glfwPollEvents";





   type Drop_Procedure is not null access procedure (W : Window; Count : int; Paths : chars_ptr_array ) with
     Convention => C;


   procedure Set_Drop_Callback (W : Window; P : Drop_Procedure) with
     Import,
     Convention => C,
     External_Name => "glfwSetDropCallback",
     Pre => W /= Null_Window;




   procedure Swap_Buffers (W : Window) with
     Import,
     Convention => C,
     External_Name => "glfwSwapBuffers",
     Pre => W /= Null_Window;









   procedure Wait_Events with
     Import,
     Convention => C,
     External_Name => "glfwWaitEvents";



end GLFW;






