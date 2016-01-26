with GLFW.Windows;
with Interfaces.C;

package GLFW.Mouses is

   use Interfaces.C;
   use GLFW.Windows;

   type Mouse_X is new double;
   type Mouse_Y is new double;

   procedure Get (W : Window; X : out Mouse_X; Y : out Mouse_Y) with
     Import,
     Convention => C,
     External_Name => "glfwGetCursorPos",
     Pre => W /= Null_Window;

end;
