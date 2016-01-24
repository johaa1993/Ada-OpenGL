package GLFW.Drops is


   type Drop_Procedure is not null access procedure (W : Window; Count : int; Paths : chars_ptr_array ) with
     Convention => C;


   procedure Set (W : Window; P : Drop_Procedure) with
     Import,
     Convention => C,
     External_Name => "glfwSetDropCallback",
     Pre => W /= Null_Window;

end;
