with GL.C;

package GL.Programs is

   use GL.C;

   type Program (<>) is private;

   function Create return Program;


private

   type Program is new GLuint range 1 .. GLuint'Last;

end;
