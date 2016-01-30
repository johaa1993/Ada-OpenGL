pragma Ada_95;
pragma Source_File_Name (ada_main, Spec_File_Name => "b~draw.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b~draw.adb");
pragma Suppress (Overflow_Check);
with Ada.Exceptions;

package body ada_main is
   pragma Warnings (Off);

   E083 : Short_Integer; pragma Import (Ada, E083, "system__os_lib_E");
   E011 : Short_Integer; pragma Import (Ada, E011, "system__soft_links_E");
   E021 : Short_Integer; pragma Import (Ada, E021, "system__exception_table_E");
   E058 : Short_Integer; pragma Import (Ada, E058, "ada__io_exceptions_E");
   E042 : Short_Integer; pragma Import (Ada, E042, "ada__strings_E");
   E046 : Short_Integer; pragma Import (Ada, E046, "ada__strings__maps_E");
   E136 : Short_Integer; pragma Import (Ada, E136, "ada__strings__maps__constants_E");
   E060 : Short_Integer; pragma Import (Ada, E060, "ada__tags_E");
   E057 : Short_Integer; pragma Import (Ada, E057, "ada__streams_E");
   E081 : Short_Integer; pragma Import (Ada, E081, "interfaces__c_E");
   E090 : Short_Integer; pragma Import (Ada, E090, "interfaces__c__strings_E");
   E023 : Short_Integer; pragma Import (Ada, E023, "system__exceptions_E");
   E086 : Short_Integer; pragma Import (Ada, E086, "system__file_control_block_E");
   E075 : Short_Integer; pragma Import (Ada, E075, "system__file_io_E");
   E079 : Short_Integer; pragma Import (Ada, E079, "system__finalization_root_E");
   E077 : Short_Integer; pragma Import (Ada, E077, "ada__finalization_E");
   E154 : Short_Integer; pragma Import (Ada, E154, "system__storage_pools_E");
   E148 : Short_Integer; pragma Import (Ada, E148, "system__finalization_masters_E");
   E146 : Short_Integer; pragma Import (Ada, E146, "system__storage_pools__subpools_E");
   E114 : Short_Integer; pragma Import (Ada, E114, "ada__calendar_E");
   E124 : Short_Integer; pragma Import (Ada, E124, "ada__calendar__time_zones_E");
   E102 : Short_Integer; pragma Import (Ada, E102, "system__assertions_E");
   E110 : Short_Integer; pragma Import (Ada, E110, "system__direct_io_E");
   E015 : Short_Integer; pragma Import (Ada, E015, "system__secondary_stack_E");
   E140 : Short_Integer; pragma Import (Ada, E140, "ada__strings__unbounded_E");
   E112 : Short_Integer; pragma Import (Ada, E112, "ada__directories_E");
   E165 : Short_Integer; pragma Import (Ada, E165, "system__regexp_E");
   E055 : Short_Integer; pragma Import (Ada, E055, "ada__text_io_E");
   E094 : Short_Integer; pragma Import (Ada, E094, "gl__c__initializations_E");
   E096 : Short_Integer; pragma Import (Ada, E096, "gl__programs_E");
   E098 : Short_Integer; pragma Import (Ada, E098, "gl__programs__shaders_E");
   E108 : Short_Integer; pragma Import (Ada, E108, "gl__programs__shaders__files_E");
   E167 : Short_Integer; pragma Import (Ada, E167, "glfw_E");
   E169 : Short_Integer; pragma Import (Ada, E169, "glfw__apis_E");
   E173 : Short_Integer; pragma Import (Ada, E173, "glfw__displays__windows_E");
   E175 : Short_Integer; pragma Import (Ada, E175, "glfw__events_E");
   E177 : Short_Integer; pragma Import (Ada, E177, "glfw__initializations_E");

   Local_Priority_Specific_Dispatching : constant String := "";
   Local_Interrupt_States : constant String := "";

   Is_Elaborated : Boolean := False;

   procedure finalize_library is
   begin
      E055 := E055 - 1;
      declare
         procedure F1;
         pragma Import (Ada, F1, "ada__text_io__finalize_spec");
      begin
         F1;
      end;
      E112 := E112 - 1;
      E165 := E165 - 1;
      declare
         procedure F2;
         pragma Import (Ada, F2, "system__regexp__finalize_spec");
      begin
         F2;
      end;
      declare
         procedure F3;
         pragma Import (Ada, F3, "ada__directories__finalize_spec");
      begin
         F3;
      end;
      E140 := E140 - 1;
      declare
         procedure F4;
         pragma Import (Ada, F4, "ada__strings__unbounded__finalize_spec");
      begin
         F4;
      end;
      declare
         procedure F5;
         pragma Import (Ada, F5, "system__file_io__finalize_body");
      begin
         E075 := E075 - 1;
         F5;
      end;
      E148 := E148 - 1;
      E146 := E146 - 1;
      E110 := E110 - 1;
      declare
         procedure F6;
         pragma Import (Ada, F6, "system__direct_io__finalize_spec");
      begin
         F6;
      end;
      declare
         procedure F7;
         pragma Import (Ada, F7, "system__storage_pools__subpools__finalize_spec");
      begin
         F7;
      end;
      declare
         procedure F8;
         pragma Import (Ada, F8, "system__finalization_masters__finalize_spec");
      begin
         F8;
      end;
      declare
         procedure Reraise_Library_Exception_If_Any;
            pragma Import (Ada, Reraise_Library_Exception_If_Any, "__gnat_reraise_library_exception_if_any");
      begin
         Reraise_Library_Exception_If_Any;
      end;
   end finalize_library;

   procedure adafinal is
      procedure s_stalib_adafinal;
      pragma Import (C, s_stalib_adafinal, "system__standard_library__adafinal");

      procedure Runtime_Finalize;
      pragma Import (C, Runtime_Finalize, "__gnat_runtime_finalize");

   begin
      if not Is_Elaborated then
         return;
      end if;
      Is_Elaborated := False;
      Runtime_Finalize;
      s_stalib_adafinal;
   end adafinal;

   type No_Param_Proc is access procedure;

   procedure adainit is
      Main_Priority : Integer;
      pragma Import (C, Main_Priority, "__gl_main_priority");
      Time_Slice_Value : Integer;
      pragma Import (C, Time_Slice_Value, "__gl_time_slice_val");
      WC_Encoding : Character;
      pragma Import (C, WC_Encoding, "__gl_wc_encoding");
      Locking_Policy : Character;
      pragma Import (C, Locking_Policy, "__gl_locking_policy");
      Queuing_Policy : Character;
      pragma Import (C, Queuing_Policy, "__gl_queuing_policy");
      Task_Dispatching_Policy : Character;
      pragma Import (C, Task_Dispatching_Policy, "__gl_task_dispatching_policy");
      Priority_Specific_Dispatching : System.Address;
      pragma Import (C, Priority_Specific_Dispatching, "__gl_priority_specific_dispatching");
      Num_Specific_Dispatching : Integer;
      pragma Import (C, Num_Specific_Dispatching, "__gl_num_specific_dispatching");
      Main_CPU : Integer;
      pragma Import (C, Main_CPU, "__gl_main_cpu");
      Interrupt_States : System.Address;
      pragma Import (C, Interrupt_States, "__gl_interrupt_states");
      Num_Interrupt_States : Integer;
      pragma Import (C, Num_Interrupt_States, "__gl_num_interrupt_states");
      Unreserve_All_Interrupts : Integer;
      pragma Import (C, Unreserve_All_Interrupts, "__gl_unreserve_all_interrupts");
      Detect_Blocking : Integer;
      pragma Import (C, Detect_Blocking, "__gl_detect_blocking");
      Default_Stack_Size : Integer;
      pragma Import (C, Default_Stack_Size, "__gl_default_stack_size");
      Leap_Seconds_Support : Integer;
      pragma Import (C, Leap_Seconds_Support, "__gl_leap_seconds_support");

      procedure Runtime_Initialize (Install_Handler : Integer);
      pragma Import (C, Runtime_Initialize, "__gnat_runtime_initialize");

      Finalize_Library_Objects : No_Param_Proc;
      pragma Import (C, Finalize_Library_Objects, "__gnat_finalize_library_objects");
   begin
      if Is_Elaborated then
         return;
      end if;
      Is_Elaborated := True;
      Main_Priority := -1;
      Time_Slice_Value := -1;
      WC_Encoding := 'b';
      Locking_Policy := ' ';
      Queuing_Policy := ' ';
      Task_Dispatching_Policy := ' ';
      Priority_Specific_Dispatching :=
        Local_Priority_Specific_Dispatching'Address;
      Num_Specific_Dispatching := 0;
      Main_CPU := -1;
      Interrupt_States := Local_Interrupt_States'Address;
      Num_Interrupt_States := 0;
      Unreserve_All_Interrupts := 0;
      Detect_Blocking := 0;
      Default_Stack_Size := -1;
      Leap_Seconds_Support := 0;

      Runtime_Initialize (1);

      Finalize_Library_Objects := finalize_library'access;

      System.Soft_Links'Elab_Spec;
      System.Exception_Table'Elab_Body;
      E021 := E021 + 1;
      Ada.Io_Exceptions'Elab_Spec;
      E058 := E058 + 1;
      Ada.Strings'Elab_Spec;
      E042 := E042 + 1;
      Ada.Strings.Maps'Elab_Spec;
      Ada.Strings.Maps.Constants'Elab_Spec;
      E136 := E136 + 1;
      Ada.Tags'Elab_Spec;
      Ada.Streams'Elab_Spec;
      E057 := E057 + 1;
      Interfaces.C'Elab_Spec;
      Interfaces.C.Strings'Elab_Spec;
      System.Exceptions'Elab_Spec;
      E023 := E023 + 1;
      System.File_Control_Block'Elab_Spec;
      E086 := E086 + 1;
      System.Finalization_Root'Elab_Spec;
      E079 := E079 + 1;
      Ada.Finalization'Elab_Spec;
      E077 := E077 + 1;
      System.Storage_Pools'Elab_Spec;
      E154 := E154 + 1;
      System.Finalization_Masters'Elab_Spec;
      System.Storage_Pools.Subpools'Elab_Spec;
      Ada.Calendar'Elab_Spec;
      Ada.Calendar'Elab_Body;
      E114 := E114 + 1;
      Ada.Calendar.Time_Zones'Elab_Spec;
      E124 := E124 + 1;
      System.Assertions'Elab_Spec;
      E102 := E102 + 1;
      System.Direct_Io'Elab_Spec;
      E110 := E110 + 1;
      E146 := E146 + 1;
      System.Finalization_Masters'Elab_Body;
      E148 := E148 + 1;
      System.File_Io'Elab_Body;
      E075 := E075 + 1;
      E090 := E090 + 1;
      E081 := E081 + 1;
      Ada.Tags'Elab_Body;
      E060 := E060 + 1;
      E046 := E046 + 1;
      System.Soft_Links'Elab_Body;
      E011 := E011 + 1;
      System.Os_Lib'Elab_Body;
      E083 := E083 + 1;
      System.Secondary_Stack'Elab_Body;
      E015 := E015 + 1;
      Ada.Strings.Unbounded'Elab_Spec;
      E140 := E140 + 1;
      Ada.Directories'Elab_Spec;
      System.Regexp'Elab_Spec;
      E165 := E165 + 1;
      Ada.Directories'Elab_Body;
      E112 := E112 + 1;
      Ada.Text_Io'Elab_Spec;
      Ada.Text_Io'Elab_Body;
      E055 := E055 + 1;
      E094 := E094 + 1;
      E096 := E096 + 1;
      E098 := E098 + 1;
      E108 := E108 + 1;
      E167 := E167 + 1;
      E169 := E169 + 1;
      E173 := E173 + 1;
      E175 := E175 + 1;
      E177 := E177 + 1;
   end adainit;

   procedure Ada_Main_Program;
   pragma Import (Ada, Ada_Main_Program, "_ada_draw");

   function main
     (argc : Integer;
      argv : System.Address;
      envp : System.Address)
      return Integer
   is
      procedure Initialize (Addr : System.Address);
      pragma Import (C, Initialize, "__gnat_initialize");

      procedure Finalize;
      pragma Import (C, Finalize, "__gnat_finalize");
      SEH : aliased array (1 .. 2) of Integer;

      Ensure_Reference : aliased System.Address := Ada_Main_Program_Name'Address;
      pragma Volatile (Ensure_Reference);

   begin
      gnat_argc := argc;
      gnat_argv := argv;
      gnat_envp := envp;

      Initialize (SEH'Address);
      adainit;
      Ada_Main_Program;
      adafinal;
      Finalize;
      return (gnat_exit_status);
   end;

--  BEGIN Object file/option list
   --   C:\Users\Johan\Documents\GitHub\Ada-OpenGL\unit_testing_glfw_and_gl\obj\draw.o
   --   -LC:\Users\Johan\Documents\GitHub\Ada-OpenGL\unit_testing_glfw_and_gl\obj\
   --   -LC:\Users\Johan\Documents\GitHub\Ada-OpenGL\unit_testing_glfw_and_gl\obj\
   --   -LC:\Users\Johan\Documents\GitHub\Ada-OpenGL\gl\lib\
   --   -LC:\Users\Johan\Documents\GitHub\Ada-OpenGL\glfw\lib\
   --   -LC:/GNAT/2015/lib/gcc/i686-pc-mingw32/4.9.3/adalib/
   --   -static
   --   -lgnat
   --   -Wl,--stack=0x2000000
--  END Object file/option list   

end ada_main;
