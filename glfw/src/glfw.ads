package GLFW is


   procedure Initialize;

   -- http://www.glfw.org/docs/latest/group__window.html#ga37bd57223967b4211d60ca1a0bf3c832
   procedure Poll_Events with
     Import,
     Convention => C,
     External_Name => "glfwPollEvents";


   procedure Wait_Events with
     Import,
     Convention => C,
     External_Name => "glfwWaitEvents";


end GLFW;






