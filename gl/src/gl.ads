with System;
with Interfaces.C;
with Interfaces.C.Strings;

package GL is

   subtype bitfield is Interfaces.C.unsigned;
   subtype boolean is Interfaces.C.unsigned_char;
   subtype float is Interfaces.C.C_float;
   subtype int is Interfaces.C.int;
   subtype intptr is Interfaces.C.ptrdiff_t;
   subtype uint is Interfaces.C.unsigned;
   subtype enum is Interfaces.C.unsigned;
   subtype sizei is Interfaces.C.int;
   subtype sizeiptr is Interfaces.C.ptrdiff_t;
   subtype byte is Interfaces.C.signed_char;
   subtype ubyte is Interfaces.C.unsigned_char;
   subtype void is System.Address;
   subtype char is Interfaces.C.char;
   subtype char_array is Interfaces.C.char_array;


   TRUE                 : constant := 1;
   FALSE                : constant := 0;


   FRAGMENT_SHADER      : constant := 16#8B30#;
   VERTEX_SHADER        : constant := 16#8B31#;
   GEOMETRY_SHADER      : constant := 16#8DD9#;
   COMPILE_STATUS       : constant := 16#8B81#;
   LINK_STATUS          : constant := 16#8B82#;
   ARRAY_BUFFER         : constant := 16#8892#;
   ELEMENT_ARRAY_BUFFER : constant := 16#8893#;
   STATIC_DRAW          : constant := 16#88E4#;
   GL_FLOAT             : constant := 16#1406#;
   TRIANGLES            : constant := 16#0004#;
   ACTIVE_ATTRIBUTES    : constant := 16#8B89#;
   MAJOR_VERSION        : constant := 16#821B#;
   COLOR_BUFFER_BIT     : constant := 16#00004000#;
   DEPTH_BUFFER_BIT     : constant := 16#00000100#;
   DEPTH_TEST           : constant := 16#0B71#;

   type Access_CreateProgram is access function return uint;
   type Access_LinkProgram is access procedure (program : uint);
   type Access_GetProgramiv is access procedure (program : uint; pname : enum; params : access int);
   type Access_GetProgramInfoLog is access procedure (program : uint; maxLength : sizei; length : access sizei; infoLog : System.Address);
   type Access_UseProgram is access procedure (program : uint) with Convention => C;

   type Access_CreateShader is access function (shaderType : enum) return uint;
   type Access_ShaderSource is access procedure (shader : uint; count : sizei; string : access char_array; length : access int);
   type Access_AttachShader is access procedure (program, shader : uint);
   type Access_CompileShader is access procedure (shader : uint);
   type Access_GetShaderInfoLog is access procedure (shader : uint; maxLength : sizei; length : access sizei; infoLog : System.Address);
   type Access_GetShaderiv is access procedure (shader : uint; pname : enum; params : access int);


   type Access_UniformMatrix4fv is access procedure (location : int; count : sizei; transpose : boolean; value : System.Address);
   type Access_GetUniformLocation is access function (program : uint; name : char_array) return int with Convention => C;

   type Access_GenVertexArrays is access procedure (n : sizei; arrays : access uint) with Convention => C;
   type Access_BindVertexArray is access procedure (arr : uint) with Convention => C;

   type Access_GenBuffers is access procedure (n : sizei; buffers : access uint) with Convention => C;
   type Access_BindBuffer is access procedure (target : enum; buf : uint) with Convention => C;
   type Access_BufferData is access procedure (target : enum; size : sizeiptr; data : System.Address; usage : enum) with Convention => C;
   type Access_VertexAttribPointer is access procedure (index : uint; size : int; t : enum; normalized : boolean; stride : sizei; pointer : System.Address) with Convention => C;
   type Access_EnableVertexAttribArray is access procedure (index : uint) with Convention => C;

   type Access_IsShader is access function (shader : uint) return boolean with Convention => C;
   type Access_IsProgram is access function (program : uint) return boolean with Convention => C;
   type Access_IsBuffer is access function (buffer : uint) return boolean with Convention => C;
   type Access_IsVertexArray is access function (arr : uint) return boolean with Convention => C;
   type Access_GetAttribLocation is access function (program : uint; name : char_array) return int with Convention => C;
   type Access_VertexArrayAttribFormat is access procedure (vaobj : uint; attribindex : uint; size : int; t : enum; normalized : boolean; relativeoffset : uint) with Convention => C;


   type Access_BufferSubData is access procedure (target : enum; offset : intptr; size : sizeiptr; data : System.Address) with Convention => C;


   CreateProgram           : Access_CreateProgram;
   CreateShader            : Access_CreateShader;
   AttachShader            : Access_AttachShader;
   LinkProgram             : Access_LinkProgram;
   CompileShader           : Access_CompileShader;
   ShaderSource            : Access_ShaderSource;
   GetShaderInfoLog        : Access_GetShaderInfoLog;
   GetShaderiv             : Access_GetShaderiv;
   GetProgramiv            : Access_GetProgramiv;
   GetProgramInfoLog       : Access_GetProgramInfoLog;
   UniformMatrix4fv        : Access_UniformMatrix4fv;
   GetUniformLocation      : Access_GetUniformLocation;
   GenVertexArrays         : Access_GenVertexArrays;
   GenBuffers              : Access_GenBuffers;
   BindVertexArray         : Access_BindVertexArray;
   BindBuffer              : Access_BindBuffer;
   BufferData              : Access_BufferData;
   BufferSubData           : Access_BufferSubData;
   VertexAttribPointer     : Access_VertexAttribPointer;
   EnableVertexAttribArray : Access_EnableVertexAttribArray;
   UseProgram              : Access_UseProgram;
   --DrawArrays              : Access_DrawArrays;
   IsShader                : Access_IsShader;
   IsProgram               : Access_IsProgram;
   IsBuffer                : Access_IsBuffer;
   IsVertexArray           : Access_IsVertexArray;
   GetAttribLocation       : Access_GetAttribLocation;
   VertexArrayAttribFormat : Access_VertexArrayAttribFormat;







   procedure DrawArrays (mode : enum; first : int; count : sizei) with
     Import,
     Convention => StdCall,
     External_Name => "glDrawArrays";

   function GetError return enum with
     Import,
     Convention => StdCall,
     External_Name => "glGetError";

   procedure GetIntegerv (pname : enum; data : access int) with
     Import,
     Convention => StdCall,
     External_Name => "glGetIntegerv";

   procedure Clear (Bits : bitfield) with
     Import,
     Convention => StdCall,
     External_Name => "glClear";

   procedure Enable (cap : enum) with
     Import,
     Convention => StdCall,
     External_Name => "glEnable";

   procedure Disable (cap : enum) with
     Import,
     Convention => StdCall,
     External_Name => "glDisable";

end;
