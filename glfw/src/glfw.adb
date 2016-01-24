package body GLFW is

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


   procedure Initialize is
      I : int := Initialize;
   begin
      null;
   end;

end;
