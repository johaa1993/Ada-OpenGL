with Ada.Unchecked_Conversion;

procedure GL.Init ( Load : access function (Name : String) return System.Address ) is
   function Convert is new Ada.Unchecked_Conversion (System.Address, Access_CreateProgram);
   function Convert is new Ada.Unchecked_Conversion (System.Address, Access_CreateShader);
   function Convert is new Ada.Unchecked_Conversion (System.Address, Access_AttachShader);
   function Convert is new Ada.Unchecked_Conversion (System.Address, Access_LinkProgram);
   function Convert is new Ada.Unchecked_Conversion (System.Address, Access_CompileShader);
   function Convert is new Ada.Unchecked_Conversion (System.Address, Access_ShaderSource);
   function Convert is new Ada.Unchecked_Conversion (System.Address, Access_GetShaderInfoLog);
   function Convert is new Ada.Unchecked_Conversion (System.Address, Access_GetShaderiv);
   function Convert is new Ada.Unchecked_Conversion (System.Address, Access_GetProgramInfoLog);
   function Convert is new Ada.Unchecked_Conversion (System.Address, Access_GetProgramiv);
   function Convert is new Ada.Unchecked_Conversion (System.Address, Access_UniformMatrix4fv);
   function Convert is new Ada.Unchecked_Conversion (System.Address, Access_GetUniformLocation);
   function Convert is new Ada.Unchecked_Conversion (System.Address, Access_GenVertexArrays);
   function Convert is new Ada.Unchecked_Conversion (System.Address, Access_GenBuffers);
   function Convert is new Ada.Unchecked_Conversion (System.Address, Access_BindVertexArray);
   function Convert is new Ada.Unchecked_Conversion (System.Address, Access_BindBuffer);
   function Convert is new Ada.Unchecked_Conversion (System.Address, Access_BufferData);
   function Convert is new Ada.Unchecked_Conversion (System.Address, Access_VertexAttribPointer);
   function Convert is new Ada.Unchecked_Conversion (System.Address, Access_EnableVertexAttribArray);
   function Convert is new Ada.Unchecked_Conversion (System.Address, Access_UseProgram);
   --function Convert is new Ada.Unchecked_Conversion (System.Address, Access_DrawArrays);
   function Convert is new Ada.Unchecked_Conversion (System.Address, Access_IsShader);
   function Convert is new Ada.Unchecked_Conversion (System.Address, Access_IsProgram);
   function Convert is new Ada.Unchecked_Conversion (System.Address, Access_IsBuffer);
   function Convert is new Ada.Unchecked_Conversion (System.Address, Access_IsVertexArray);
   function Convert is new Ada.Unchecked_Conversion (System.Address, Access_GetAttribLocation);
   function Convert is new Ada.Unchecked_Conversion (System.Address, Access_VertexArrayAttribFormat);
   function Convert is new Ada.Unchecked_Conversion (System.Address, Access_BufferSubData);


begin
   GL.CreateProgram           := Convert (Load ("gl" & "CreateProgram"));
   GL.CreateShader            := Convert (Load ("gl" & "CreateShader"));
   GL.AttachShader            := Convert (Load ("gl" & "AttachShader"));
   GL.LinkProgram             := Convert (Load ("gl" & "LinkProgram"));
   GL.CompileShader           := Convert (Load ("gl" & "CompileShader"));
   GL.ShaderSource            := Convert (Load ("gl" & "ShaderSource"));
   GL.GetShaderInfoLog        := Convert (Load ("gl" & "GetShaderInfoLog"));
   GL.GetShaderiv             := Convert (Load ("gl" & "GetShaderiv"));
   GL.GetProgramInfoLog       := Convert (Load ("gl" & "GetProgramInfoLog"));
   GL.GetProgramiv            := Convert (Load ("gl" & "GetProgramiv"));
   GL.UniformMatrix4fv        := Convert (Load ("gl" & "UniformMatrix4fv"));
   GL.GetUniformLocation      := Convert (Load ("gl" & "GetUniformLocation"));
   GL.GenVertexArrays         := Convert (Load ("gl" & "GenVertexArrays"));
   GL.GenBuffers              := Convert (Load ("gl" & "GenBuffers"));
   GL.BindVertexArray         := Convert (Load ("gl" & "BindVertexArray"));
   GL.BindBuffer              := Convert (Load ("gl" & "BindBuffer"));
   GL.BufferData              := Convert (Load ("gl" & "BufferData"));
   GL.BufferSubData           := Convert (Load ("gl" & "BufferSubData"));
   GL.VertexAttribPointer     := Convert (Load ("gl" & "VertexAttribPointer"));
   GL.EnableVertexAttribArray := Convert (Load ("gl" & "EnableVertexAttribArray"));
   GL.UseProgram              := Convert (Load ("gl" & "UseProgram"));
   --GL.DrawArrays            := Convert (Load ("gl" & "DrawArrays"));
   GL.IsShader                := Convert (Load ("gl" & "IsShader"));
   GL.IsProgram               := Convert (Load ("gl" & "IsProgram"));
   GL.IsBuffer                := Convert (Load ("gl" & "IsBuffer"));
   GL.IsVertexArray           := Convert (Load ("gl" & "IsVertexArray"));
   GL.GetAttribLocation       := Convert (Load ("gl" & "GetAttribLocation"));
   --GL.VertexArrayAttribFormat := Convert (Load ("gl" & "VertexArrayAttribFormat"));
end;