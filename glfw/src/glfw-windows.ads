with Interfaces.C;
with System;
with GLFW.Monitors;


package GLFW.Windows is

   use Interfaces.C;
   use System;
   use GLFW.Monitors;

   type Window is new Address;
   Null_Window : Window := Window (Null_Address);

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


   -- This function makes the OpenGL or OpenGL ES context of the specified window current on the calling thread.
   -- A context can only be made current on a single thread at a time and
   -- each thread can have only a single current context at a time.
   -- By default, making a context non-current implicitly forces a pipeline flush.
   -- On machines that support GL_KHR_context_flush_control,
   -- you can control whether a context performs this flush by setting the GLFW_CONTEXT_RELEASE_BEHAVIOR window hint.
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

   type Close_Flag is new int;

   -- http://www.glfw.org/docs/latest/group__window.html#ga24e02fbfefbb81fc45320989f8140ab5
   function Closing (W : Window) return Close_Flag with
     Import,
     Convention => C,
     External_Name => "glfwWindowShouldClose",
     Pre => W /= Null_Window;

   procedure Swap_Buffers (W : Window) with
     Import,
     Convention => C,
     External_Name => "glfwSwapBuffers",
     Pre => W /= Null_Window;


end;