package GLFW.Keys is

   type Key_Status is
     (
      Key_Status_Release,
      Key_Status_Press
     );

   for Key_Status use
     (
      Key_Status_Release => 0,
      Key_Status_Press => 1
     );

   for Key_Status'Size use int'Size;


   type Key is
     (
      Key_Space,
      Key_A,
      Key_B,
      Key_D,
      Key_S,
      Key_W,
      Key_Right,
      Key_Left,
      Key_Down,
      Key_Up,
      Key_Left_Control
     );

   for Key use
     (
      Key_Space => 32,
      Key_A => 65,
      Key_B => 66,
      Key_D => 68,
      Key_S => 83,
      Key_W => 87,
      Key_Right => 262,
      Key_Left => 263,
      Key_Down => 264,
      Key_Up => 265,
      Key_Left_Control => 341
     );
   for Key'Size use int'Size;

   function Get (W : Window; K : Key) return Key_Status with
     Import,
     Convention => C,
     External_Name => "glfwGetKey",
     Pre => W /= Null_Window;



end;
