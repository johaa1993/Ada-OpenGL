with GL.C.Complete;

package body GL.Programs is

   use GL.C.Complete;

   function Create return Program is
      P : Program;
   begin
      P := Program (glCreateProgram.all);
      return P;
   end;

   procedure Link (P : Program) is
   begin
      glLinkProgram (GLuint (P));
   end;


end;