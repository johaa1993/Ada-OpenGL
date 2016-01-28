package GL.C.Accessories is

   type glCreateProgram           is access function return GLuint with Convention => C;
   type glLinkProgram             is access procedure (program : GLuint) with Convention => C;
   type glGetProgramiv            is access procedure (program : GLuint; pname : GLenum; params : access GLint) with Convention => C;
   type glGetProgramInfoLog       is access procedure (program : GLuint; maxLength : GLsizei; length : access GLsizei; infoLog : Address) with Convention => C;
   type glUseProgram              is access procedure (program : GLuint) with Convention => C;
   type glCreateShader            is access function (shaderType : GLenum) return GLuint with Convention => C;
   type glShaderSource            is access procedure (shader : GLuint; count : GLsizei; string : access GLchar_array; length : access GLint) with Convention => C;
   type glAttachShader            is access procedure (program, shader : GLuint) with Convention => C;
   type glCompileShader           is access procedure (shader : GLuint) with Convention => C;
   type glGetShaderInfoLog        is access procedure (shader : GLuint; maxLength : GLsizei; length : access GLsizei; infoLog : Address) with Convention => C;
   type glGetShaderiv             is access procedure (shader : GLuint; pname : GLenum; params : access GLint);
   type glUniformMatrix4fv        is access procedure (location : GLint; count : GLsizei; transpose : GLboolean; value : Address) with Convention => C;
   type glGetUniformLocation      is access function (program : GLuint; name : GLchar_array) return GLint with Convention => C;
   type glGenVertexArrays         is access procedure (n : GLsizei; arrays : access GLuint) with Convention => C;
   type glBindVertexArray         is access procedure (arr : GLuint) with Convention => C;
   type glGenBuffers              is access procedure (n : GLsizei; buffers : access GLuint) with Convention => C;
   type glBindBuffer              is access procedure (target : GLenum; buf : GLuint) with Convention => C;
   type glBufferData              is access procedure (target : GLenum; size : GLsizeiptr; data : System.Address; usage : GLenum) with Convention => C;
   type glVertexAttribPointer     is access procedure (index : GLuint; size : GLint; t : GLenum; normalized : GLboolean; stride : GLsizei; pointer : System.Address) with Convention => C;
   type glEnableVertexAttribArray is access procedure (index : GLuint) with Convention => C;
   type glIsShader                is access function (shader : GLuint) return GLboolean with Convention => C;
   type glIsProgram               is access function (program : GLuint) return GLboolean with Convention => C;
   type glIsBuffer                is access function (buffer : GLuint) return GLboolean with Convention => C;
   type glIsVertexArray           is access function (arr : GLuint) return GLboolean with Convention => C;
   type glGetAttribLocation       is access function (program : GLuint; name : GLchar_array) return GLint with Convention => C;
   type glVertexArrayAttribFormat is access procedure (vaobj : GLuint; attribindex : GLuint; size : GLint; t : GLenum; normalized : GLboolean; relativeoffset : GLuint) with Convention => C;
   type glBufferSubData           is access procedure (target : GLenum; offset : GLintptr; size : GLsizeiptr; data : Address) with Convention => C;

end;
