with GLFW.Windows;
with Interfaces.C;
with Interfaces.C.Strings;

package GLFW.Drops is

   use Interfaces.C.Strings;
   use Interfaces.C;
   use GLFW.Windows;

   type Drop_Procedure is not null access procedure (W : Window; Count : int; Paths : chars_ptr_array)
     with Convention => C;


   procedure Set (W : Window; P : Drop_Procedure) with
     Import,
     Convention => C,
     External_Name => "glfwSetDropCallback",
     Pre => W /= Null_Window;

end;
