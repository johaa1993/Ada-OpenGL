package GLFW.Mouses is

   type Mouse_X is new Double;
   type Mouse_Y is new Double;

   procedure Get (W : Window; X : out Mouse_X; Y : out Mouse_Y) with
     Import,
     Convention => C,
     External_Name => "glfwGetCursorPos",
     Pre => W /= Null_Window;

end;
