pragma Ada_95;
with System;
package ada_main is
   pragma Warnings (Off);

   gnat_argc : Integer;
   gnat_argv : System.Address;
   gnat_envp : System.Address;

   pragma Import (C, gnat_argc);
   pragma Import (C, gnat_argv);
   pragma Import (C, gnat_envp);

   gnat_exit_status : Integer;
   pragma Import (C, gnat_exit_status);

   GNAT_Version : constant String :=
                    "GNAT Version: GPL 2015 (20150428-49)" & ASCII.NUL;
   pragma Export (C, GNAT_Version, "__gnat_version");

   Ada_Main_Program_Name : constant String := "_ada_draw" & ASCII.NUL;
   pragma Export (C, Ada_Main_Program_Name, "__gnat_ada_main_program_name");

   procedure adainit;
   pragma Export (C, adainit, "adainit");

   procedure adafinal;
   pragma Export (C, adafinal, "adafinal");

   function main
     (argc : Integer;
      argv : System.Address;
      envp : System.Address)
      return Integer;
   pragma Export (C, main, "main");

   type Version_32 is mod 2 ** 32;
   u00001 : constant Version_32 := 16#67d74f27#;
   pragma Export (C, u00001, "drawB");
   u00002 : constant Version_32 := 16#fbff4c67#;
   pragma Export (C, u00002, "system__standard_libraryB");
   u00003 : constant Version_32 := 16#f72f352b#;
   pragma Export (C, u00003, "system__standard_libraryS");
   u00004 : constant Version_32 := 16#3ffc8e18#;
   pragma Export (C, u00004, "adaS");
   u00005 : constant Version_32 := 16#b612ca65#;
   pragma Export (C, u00005, "ada__exceptionsB");
   u00006 : constant Version_32 := 16#1d190453#;
   pragma Export (C, u00006, "ada__exceptionsS");
   u00007 : constant Version_32 := 16#a46739c0#;
   pragma Export (C, u00007, "ada__exceptions__last_chance_handlerB");
   u00008 : constant Version_32 := 16#3aac8c92#;
   pragma Export (C, u00008, "ada__exceptions__last_chance_handlerS");
   u00009 : constant Version_32 := 16#f4ce8c3a#;
   pragma Export (C, u00009, "systemS");
   u00010 : constant Version_32 := 16#a207fefe#;
   pragma Export (C, u00010, "system__soft_linksB");
   u00011 : constant Version_32 := 16#af945ded#;
   pragma Export (C, u00011, "system__soft_linksS");
   u00012 : constant Version_32 := 16#b01dad17#;
   pragma Export (C, u00012, "system__parametersB");
   u00013 : constant Version_32 := 16#8ae48145#;
   pragma Export (C, u00013, "system__parametersS");
   u00014 : constant Version_32 := 16#b19b6653#;
   pragma Export (C, u00014, "system__secondary_stackB");
   u00015 : constant Version_32 := 16#5faf4353#;
   pragma Export (C, u00015, "system__secondary_stackS");
   u00016 : constant Version_32 := 16#39a03df9#;
   pragma Export (C, u00016, "system__storage_elementsB");
   u00017 : constant Version_32 := 16#d90dc63e#;
   pragma Export (C, u00017, "system__storage_elementsS");
   u00018 : constant Version_32 := 16#41837d1e#;
   pragma Export (C, u00018, "system__stack_checkingB");
   u00019 : constant Version_32 := 16#7a71e7d2#;
   pragma Export (C, u00019, "system__stack_checkingS");
   u00020 : constant Version_32 := 16#393398c1#;
   pragma Export (C, u00020, "system__exception_tableB");
   u00021 : constant Version_32 := 16#5ad7ea2f#;
   pragma Export (C, u00021, "system__exception_tableS");
   u00022 : constant Version_32 := 16#ce4af020#;
   pragma Export (C, u00022, "system__exceptionsB");
   u00023 : constant Version_32 := 16#9cade1cc#;
   pragma Export (C, u00023, "system__exceptionsS");
   u00024 : constant Version_32 := 16#37d758f1#;
   pragma Export (C, u00024, "system__exceptions__machineS");
   u00025 : constant Version_32 := 16#b895431d#;
   pragma Export (C, u00025, "system__exceptions_debugB");
   u00026 : constant Version_32 := 16#472c9584#;
   pragma Export (C, u00026, "system__exceptions_debugS");
   u00027 : constant Version_32 := 16#570325c8#;
   pragma Export (C, u00027, "system__img_intB");
   u00028 : constant Version_32 := 16#f6156cf8#;
   pragma Export (C, u00028, "system__img_intS");
   u00029 : constant Version_32 := 16#b98c3e16#;
   pragma Export (C, u00029, "system__tracebackB");
   u00030 : constant Version_32 := 16#6af355e1#;
   pragma Export (C, u00030, "system__tracebackS");
   u00031 : constant Version_32 := 16#9ed49525#;
   pragma Export (C, u00031, "system__traceback_entriesB");
   u00032 : constant Version_32 := 16#f4957a4a#;
   pragma Export (C, u00032, "system__traceback_entriesS");
   u00033 : constant Version_32 := 16#8c33a517#;
   pragma Export (C, u00033, "system__wch_conB");
   u00034 : constant Version_32 := 16#efb3aee8#;
   pragma Export (C, u00034, "system__wch_conS");
   u00035 : constant Version_32 := 16#9721e840#;
   pragma Export (C, u00035, "system__wch_stwB");
   u00036 : constant Version_32 := 16#c2a282e9#;
   pragma Export (C, u00036, "system__wch_stwS");
   u00037 : constant Version_32 := 16#92b797cb#;
   pragma Export (C, u00037, "system__wch_cnvB");
   u00038 : constant Version_32 := 16#e004141b#;
   pragma Export (C, u00038, "system__wch_cnvS");
   u00039 : constant Version_32 := 16#6033a23f#;
   pragma Export (C, u00039, "interfacesS");
   u00040 : constant Version_32 := 16#ece6fdb6#;
   pragma Export (C, u00040, "system__wch_jisB");
   u00041 : constant Version_32 := 16#60740d3a#;
   pragma Export (C, u00041, "system__wch_jisS");
   u00042 : constant Version_32 := 16#af50e98f#;
   pragma Export (C, u00042, "ada__stringsS");
   u00043 : constant Version_32 := 16#e5480ede#;
   pragma Export (C, u00043, "ada__strings__fixedB");
   u00044 : constant Version_32 := 16#a86b22b3#;
   pragma Export (C, u00044, "ada__strings__fixedS");
   u00045 : constant Version_32 := 16#e2ea8656#;
   pragma Export (C, u00045, "ada__strings__mapsB");
   u00046 : constant Version_32 := 16#1e526bec#;
   pragma Export (C, u00046, "ada__strings__mapsS");
   u00047 : constant Version_32 := 16#41937159#;
   pragma Export (C, u00047, "system__bit_opsB");
   u00048 : constant Version_32 := 16#0765e3a3#;
   pragma Export (C, u00048, "system__bit_opsS");
   u00049 : constant Version_32 := 16#699628fa#;
   pragma Export (C, u00049, "system__unsigned_typesS");
   u00050 : constant Version_32 := 16#12c24a43#;
   pragma Export (C, u00050, "ada__charactersS");
   u00051 : constant Version_32 := 16#4b7bb96a#;
   pragma Export (C, u00051, "ada__characters__latin_1S");
   u00052 : constant Version_32 := 16#d22169ac#;
   pragma Export (C, u00052, "ada__strings__searchB");
   u00053 : constant Version_32 := 16#c1ab8667#;
   pragma Export (C, u00053, "ada__strings__searchS");
   u00054 : constant Version_32 := 16#28f088c2#;
   pragma Export (C, u00054, "ada__text_ioB");
   u00055 : constant Version_32 := 16#1a9b0017#;
   pragma Export (C, u00055, "ada__text_ioS");
   u00056 : constant Version_32 := 16#10558b11#;
   pragma Export (C, u00056, "ada__streamsB");
   u00057 : constant Version_32 := 16#2e6701ab#;
   pragma Export (C, u00057, "ada__streamsS");
   u00058 : constant Version_32 := 16#db5c917c#;
   pragma Export (C, u00058, "ada__io_exceptionsS");
   u00059 : constant Version_32 := 16#12c8cd7d#;
   pragma Export (C, u00059, "ada__tagsB");
   u00060 : constant Version_32 := 16#ce72c228#;
   pragma Export (C, u00060, "ada__tagsS");
   u00061 : constant Version_32 := 16#c3335bfd#;
   pragma Export (C, u00061, "system__htableB");
   u00062 : constant Version_32 := 16#700c3fd0#;
   pragma Export (C, u00062, "system__htableS");
   u00063 : constant Version_32 := 16#089f5cd0#;
   pragma Export (C, u00063, "system__string_hashB");
   u00064 : constant Version_32 := 16#d25254ae#;
   pragma Export (C, u00064, "system__string_hashS");
   u00065 : constant Version_32 := 16#b44f9ae7#;
   pragma Export (C, u00065, "system__val_unsB");
   u00066 : constant Version_32 := 16#793ec5c1#;
   pragma Export (C, u00066, "system__val_unsS");
   u00067 : constant Version_32 := 16#27b600b2#;
   pragma Export (C, u00067, "system__val_utilB");
   u00068 : constant Version_32 := 16#586e3ac4#;
   pragma Export (C, u00068, "system__val_utilS");
   u00069 : constant Version_32 := 16#d1060688#;
   pragma Export (C, u00069, "system__case_utilB");
   u00070 : constant Version_32 := 16#d0c7e5ed#;
   pragma Export (C, u00070, "system__case_utilS");
   u00071 : constant Version_32 := 16#84a27f0d#;
   pragma Export (C, u00071, "interfaces__c_streamsB");
   u00072 : constant Version_32 := 16#8bb5f2c0#;
   pragma Export (C, u00072, "interfaces__c_streamsS");
   u00073 : constant Version_32 := 16#845f5a34#;
   pragma Export (C, u00073, "system__crtlS");
   u00074 : constant Version_32 := 16#431faf3c#;
   pragma Export (C, u00074, "system__file_ioB");
   u00075 : constant Version_32 := 16#53bf6d5f#;
   pragma Export (C, u00075, "system__file_ioS");
   u00076 : constant Version_32 := 16#b7ab275c#;
   pragma Export (C, u00076, "ada__finalizationB");
   u00077 : constant Version_32 := 16#19f764ca#;
   pragma Export (C, u00077, "ada__finalizationS");
   u00078 : constant Version_32 := 16#95817ed8#;
   pragma Export (C, u00078, "system__finalization_rootB");
   u00079 : constant Version_32 := 16#bb3cffaa#;
   pragma Export (C, u00079, "system__finalization_rootS");
   u00080 : constant Version_32 := 16#769e25e6#;
   pragma Export (C, u00080, "interfaces__cB");
   u00081 : constant Version_32 := 16#4a38bedb#;
   pragma Export (C, u00081, "interfaces__cS");
   u00082 : constant Version_32 := 16#ee0f26dd#;
   pragma Export (C, u00082, "system__os_libB");
   u00083 : constant Version_32 := 16#d7b69782#;
   pragma Export (C, u00083, "system__os_libS");
   u00084 : constant Version_32 := 16#1a817b8e#;
   pragma Export (C, u00084, "system__stringsB");
   u00085 : constant Version_32 := 16#8a719d5c#;
   pragma Export (C, u00085, "system__stringsS");
   u00086 : constant Version_32 := 16#09511692#;
   pragma Export (C, u00086, "system__file_control_blockS");
   u00087 : constant Version_32 := 16#3c2c2217#;
   pragma Export (C, u00087, "glS");
   u00088 : constant Version_32 := 16#7dfb01f4#;
   pragma Export (C, u00088, "gl__cS");
   u00089 : constant Version_32 := 16#2c7d263c#;
   pragma Export (C, u00089, "interfaces__c__stringsB");
   u00090 : constant Version_32 := 16#603c1c44#;
   pragma Export (C, u00090, "interfaces__c__stringsS");
   u00091 : constant Version_32 := 16#7a6bd1ac#;
   pragma Export (C, u00091, "gl__c__completeS");
   u00092 : constant Version_32 := 16#ba3418a3#;
   pragma Export (C, u00092, "gl__c__accessoriesS");
   u00093 : constant Version_32 := 16#b487749a#;
   pragma Export (C, u00093, "gl__c__initializationsB");
   u00094 : constant Version_32 := 16#b2af9b8d#;
   pragma Export (C, u00094, "gl__c__initializationsS");
   u00095 : constant Version_32 := 16#e8fdfb36#;
   pragma Export (C, u00095, "gl__programsB");
   u00096 : constant Version_32 := 16#f134f8ef#;
   pragma Export (C, u00096, "gl__programsS");
   u00097 : constant Version_32 := 16#976c82f3#;
   pragma Export (C, u00097, "gl__programs__shadersB");
   u00098 : constant Version_32 := 16#316f384d#;
   pragma Export (C, u00098, "gl__programs__shadersS");
   u00099 : constant Version_32 := 16#57a37a42#;
   pragma Export (C, u00099, "system__address_imageB");
   u00100 : constant Version_32 := 16#55221100#;
   pragma Export (C, u00100, "system__address_imageS");
   u00101 : constant Version_32 := 16#1767a79e#;
   pragma Export (C, u00101, "system__assertionsB");
   u00102 : constant Version_32 := 16#3943a0ae#;
   pragma Export (C, u00102, "system__assertionsS");
   u00103 : constant Version_32 := 16#9777733a#;
   pragma Export (C, u00103, "system__img_lliB");
   u00104 : constant Version_32 := 16#e581d9eb#;
   pragma Export (C, u00104, "system__img_lliS");
   u00105 : constant Version_32 := 16#eef535cd#;
   pragma Export (C, u00105, "system__img_unsB");
   u00106 : constant Version_32 := 16#f662140d#;
   pragma Export (C, u00106, "system__img_unsS");
   u00107 : constant Version_32 := 16#f79033d5#;
   pragma Export (C, u00107, "gl__programs__shaders__filesB");
   u00108 : constant Version_32 := 16#6b37b2ab#;
   pragma Export (C, u00108, "gl__programs__shaders__filesS");
   u00109 : constant Version_32 := 16#eb1be9af#;
   pragma Export (C, u00109, "system__direct_ioB");
   u00110 : constant Version_32 := 16#56af6a04#;
   pragma Export (C, u00110, "system__direct_ioS");
   u00111 : constant Version_32 := 16#6ea605be#;
   pragma Export (C, u00111, "ada__directoriesB");
   u00112 : constant Version_32 := 16#c9f0eb84#;
   pragma Export (C, u00112, "ada__directoriesS");
   u00113 : constant Version_32 := 16#649a98f6#;
   pragma Export (C, u00113, "ada__calendarB");
   u00114 : constant Version_32 := 16#e67a5d0a#;
   pragma Export (C, u00114, "ada__calendarS");
   u00115 : constant Version_32 := 16#f4bb3578#;
   pragma Export (C, u00115, "system__os_primitivesB");
   u00116 : constant Version_32 := 16#441f0013#;
   pragma Export (C, u00116, "system__os_primitivesS");
   u00117 : constant Version_32 := 16#0881bbf8#;
   pragma Export (C, u00117, "system__task_lockB");
   u00118 : constant Version_32 := 16#9544bb54#;
   pragma Export (C, u00118, "system__task_lockS");
   u00119 : constant Version_32 := 16#1716ff24#;
   pragma Export (C, u00119, "system__win32S");
   u00120 : constant Version_32 := 16#1a9147da#;
   pragma Export (C, u00120, "system__win32__extS");
   u00121 : constant Version_32 := 16#7bf85949#;
   pragma Export (C, u00121, "ada__calendar__formattingB");
   u00122 : constant Version_32 := 16#937437b5#;
   pragma Export (C, u00122, "ada__calendar__formattingS");
   u00123 : constant Version_32 := 16#e3cca715#;
   pragma Export (C, u00123, "ada__calendar__time_zonesB");
   u00124 : constant Version_32 := 16#991bad49#;
   pragma Export (C, u00124, "ada__calendar__time_zonesS");
   u00125 : constant Version_32 := 16#7ebd8839#;
   pragma Export (C, u00125, "system__val_intB");
   u00126 : constant Version_32 := 16#bc6ba605#;
   pragma Export (C, u00126, "system__val_intS");
   u00127 : constant Version_32 := 16#faa9a7b2#;
   pragma Export (C, u00127, "system__val_realB");
   u00128 : constant Version_32 := 16#0ae7fb2b#;
   pragma Export (C, u00128, "system__val_realS");
   u00129 : constant Version_32 := 16#6c05c057#;
   pragma Export (C, u00129, "system__exn_llfB");
   u00130 : constant Version_32 := 16#48b037e6#;
   pragma Export (C, u00130, "system__exn_llfS");
   u00131 : constant Version_32 := 16#1b28662b#;
   pragma Export (C, u00131, "system__float_controlB");
   u00132 : constant Version_32 := 16#1432cf06#;
   pragma Export (C, u00132, "system__float_controlS");
   u00133 : constant Version_32 := 16#a4beea4d#;
   pragma Export (C, u00133, "system__powten_tableS");
   u00134 : constant Version_32 := 16#8f637df8#;
   pragma Export (C, u00134, "ada__characters__handlingB");
   u00135 : constant Version_32 := 16#3b3f6154#;
   pragma Export (C, u00135, "ada__characters__handlingS");
   u00136 : constant Version_32 := 16#92f05f13#;
   pragma Export (C, u00136, "ada__strings__maps__constantsS");
   u00137 : constant Version_32 := 16#1b6c1696#;
   pragma Export (C, u00137, "ada__directories__validityB");
   u00138 : constant Version_32 := 16#d34bdf62#;
   pragma Export (C, u00138, "ada__directories__validityS");
   u00139 : constant Version_32 := 16#f78329ae#;
   pragma Export (C, u00139, "ada__strings__unboundedB");
   u00140 : constant Version_32 := 16#e303cf90#;
   pragma Export (C, u00140, "ada__strings__unboundedS");
   u00141 : constant Version_32 := 16#5b9edcc4#;
   pragma Export (C, u00141, "system__compare_array_unsigned_8B");
   u00142 : constant Version_32 := 16#5dcdfdb7#;
   pragma Export (C, u00142, "system__compare_array_unsigned_8S");
   u00143 : constant Version_32 := 16#5f72f755#;
   pragma Export (C, u00143, "system__address_operationsB");
   u00144 : constant Version_32 := 16#e7c23209#;
   pragma Export (C, u00144, "system__address_operationsS");
   u00145 : constant Version_32 := 16#6a859064#;
   pragma Export (C, u00145, "system__storage_pools__subpoolsB");
   u00146 : constant Version_32 := 16#e3b008dc#;
   pragma Export (C, u00146, "system__storage_pools__subpoolsS");
   u00147 : constant Version_32 := 16#b5b2aca1#;
   pragma Export (C, u00147, "system__finalization_mastersB");
   u00148 : constant Version_32 := 16#80d8a57a#;
   pragma Export (C, u00148, "system__finalization_mastersS");
   u00149 : constant Version_32 := 16#7268f812#;
   pragma Export (C, u00149, "system__img_boolB");
   u00150 : constant Version_32 := 16#0117fdd1#;
   pragma Export (C, u00150, "system__img_boolS");
   u00151 : constant Version_32 := 16#d7aac20c#;
   pragma Export (C, u00151, "system__ioB");
   u00152 : constant Version_32 := 16#6a8c7b75#;
   pragma Export (C, u00152, "system__ioS");
   u00153 : constant Version_32 := 16#6d4d969a#;
   pragma Export (C, u00153, "system__storage_poolsB");
   u00154 : constant Version_32 := 16#01950bbe#;
   pragma Export (C, u00154, "system__storage_poolsS");
   u00155 : constant Version_32 := 16#63f11652#;
   pragma Export (C, u00155, "system__storage_pools__subpools__finalizationB");
   u00156 : constant Version_32 := 16#fe2f4b3a#;
   pragma Export (C, u00156, "system__storage_pools__subpools__finalizationS");
   u00157 : constant Version_32 := 16#e5ac57f8#;
   pragma Export (C, u00157, "system__atomic_countersB");
   u00158 : constant Version_32 := 16#39b218f0#;
   pragma Export (C, u00158, "system__atomic_countersS");
   u00159 : constant Version_32 := 16#fb75f7f4#;
   pragma Export (C, u00159, "system__machine_codeS");
   u00160 : constant Version_32 := 16#f4e1c091#;
   pragma Export (C, u00160, "system__stream_attributesB");
   u00161 : constant Version_32 := 16#221dd20d#;
   pragma Export (C, u00161, "system__stream_attributesS");
   u00162 : constant Version_32 := 16#55efb7f8#;
   pragma Export (C, u00162, "system__file_attributesS");
   u00163 : constant Version_32 := 16#2e610ef3#;
   pragma Export (C, u00163, "system__os_constantsS");
   u00164 : constant Version_32 := 16#933fac2f#;
   pragma Export (C, u00164, "system__regexpB");
   u00165 : constant Version_32 := 16#014a32df#;
   pragma Export (C, u00165, "system__regexpS");
   u00166 : constant Version_32 := 16#a5b6dc5c#;
   pragma Export (C, u00166, "glfwB");
   u00167 : constant Version_32 := 16#2d7833ac#;
   pragma Export (C, u00167, "glfwS");
   u00168 : constant Version_32 := 16#d7ff54ec#;
   pragma Export (C, u00168, "glfw__apisB");
   u00169 : constant Version_32 := 16#e85410c8#;
   pragma Export (C, u00169, "glfw__apisS");
   u00170 : constant Version_32 := 16#b1a05f49#;
   pragma Export (C, u00170, "glfw__cS");
   u00171 : constant Version_32 := 16#48ccfc6d#;
   pragma Export (C, u00171, "glfw__displaysS");
   u00172 : constant Version_32 := 16#747736b3#;
   pragma Export (C, u00172, "glfw__displays__windowsB");
   u00173 : constant Version_32 := 16#f8a049c1#;
   pragma Export (C, u00173, "glfw__displays__windowsS");
   u00174 : constant Version_32 := 16#bffe4561#;
   pragma Export (C, u00174, "glfw__eventsB");
   u00175 : constant Version_32 := 16#1e23f5c1#;
   pragma Export (C, u00175, "glfw__eventsS");
   u00176 : constant Version_32 := 16#2bf7ad91#;
   pragma Export (C, u00176, "glfw__initializationsB");
   u00177 : constant Version_32 := 16#d998d68d#;
   pragma Export (C, u00177, "glfw__initializationsS");
   u00178 : constant Version_32 := 16#2bce1226#;
   pragma Export (C, u00178, "system__memoryB");
   u00179 : constant Version_32 := 16#adb3ea0e#;
   pragma Export (C, u00179, "system__memoryS");
   --  BEGIN ELABORATION ORDER
   --  ada%s
   --  ada.characters%s
   --  ada.characters.handling%s
   --  ada.characters.latin_1%s
   --  interfaces%s
   --  system%s
   --  system.address_operations%s
   --  system.address_operations%b
   --  system.atomic_counters%s
   --  system.case_util%s
   --  system.case_util%b
   --  system.exn_llf%s
   --  system.exn_llf%b
   --  system.float_control%s
   --  system.float_control%b
   --  system.htable%s
   --  system.img_bool%s
   --  system.img_bool%b
   --  system.img_int%s
   --  system.img_int%b
   --  system.img_lli%s
   --  system.img_lli%b
   --  system.io%s
   --  system.io%b
   --  system.machine_code%s
   --  system.atomic_counters%b
   --  system.os_primitives%s
   --  system.parameters%s
   --  system.parameters%b
   --  system.crtl%s
   --  interfaces.c_streams%s
   --  interfaces.c_streams%b
   --  system.powten_table%s
   --  system.standard_library%s
   --  system.exceptions_debug%s
   --  system.exceptions_debug%b
   --  system.storage_elements%s
   --  system.storage_elements%b
   --  system.stack_checking%s
   --  system.stack_checking%b
   --  system.string_hash%s
   --  system.string_hash%b
   --  system.htable%b
   --  system.strings%s
   --  system.strings%b
   --  system.os_lib%s
   --  system.task_lock%s
   --  system.traceback_entries%s
   --  system.traceback_entries%b
   --  ada.exceptions%s
   --  system.soft_links%s
   --  system.task_lock%b
   --  system.unsigned_types%s
   --  system.img_uns%s
   --  system.img_uns%b
   --  system.val_int%s
   --  system.val_real%s
   --  system.val_uns%s
   --  system.val_util%s
   --  system.val_util%b
   --  system.val_uns%b
   --  system.val_real%b
   --  system.val_int%b
   --  system.wch_con%s
   --  system.wch_con%b
   --  system.wch_cnv%s
   --  system.wch_jis%s
   --  system.wch_jis%b
   --  system.wch_cnv%b
   --  system.wch_stw%s
   --  system.wch_stw%b
   --  ada.exceptions.last_chance_handler%s
   --  ada.exceptions.last_chance_handler%b
   --  system.address_image%s
   --  system.bit_ops%s
   --  system.bit_ops%b
   --  system.compare_array_unsigned_8%s
   --  system.compare_array_unsigned_8%b
   --  system.exception_table%s
   --  system.exception_table%b
   --  ada.io_exceptions%s
   --  ada.strings%s
   --  ada.strings.maps%s
   --  ada.strings.fixed%s
   --  ada.strings.maps.constants%s
   --  ada.strings.search%s
   --  ada.strings.search%b
   --  ada.tags%s
   --  ada.streams%s
   --  ada.streams%b
   --  interfaces.c%s
   --  interfaces.c.strings%s
   --  system.exceptions%s
   --  system.exceptions%b
   --  system.exceptions.machine%s
   --  system.file_control_block%s
   --  system.file_io%s
   --  system.finalization_root%s
   --  system.finalization_root%b
   --  ada.finalization%s
   --  ada.finalization%b
   --  system.os_constants%s
   --  system.storage_pools%s
   --  system.storage_pools%b
   --  system.finalization_masters%s
   --  system.storage_pools.subpools%s
   --  system.storage_pools.subpools.finalization%s
   --  system.storage_pools.subpools.finalization%b
   --  system.stream_attributes%s
   --  system.stream_attributes%b
   --  system.win32%s
   --  system.win32.ext%s
   --  system.os_primitives%b
   --  ada.calendar%s
   --  ada.calendar%b
   --  ada.calendar.time_zones%s
   --  ada.calendar.time_zones%b
   --  ada.calendar.formatting%s
   --  system.assertions%s
   --  system.assertions%b
   --  system.direct_io%s
   --  system.direct_io%b
   --  system.file_attributes%s
   --  system.memory%s
   --  system.memory%b
   --  system.standard_library%b
   --  system.secondary_stack%s
   --  system.storage_pools.subpools%b
   --  system.finalization_masters%b
   --  system.file_io%b
   --  interfaces.c.strings%b
   --  interfaces.c%b
   --  ada.tags%b
   --  ada.strings.fixed%b
   --  ada.strings.maps%b
   --  system.soft_links%b
   --  system.os_lib%b
   --  ada.characters.handling%b
   --  system.secondary_stack%b
   --  ada.calendar.formatting%b
   --  system.address_image%b
   --  ada.strings.unbounded%s
   --  ada.strings.unbounded%b
   --  ada.directories%s
   --  ada.directories.validity%s
   --  ada.directories.validity%b
   --  system.regexp%s
   --  system.regexp%b
   --  ada.directories%b
   --  system.traceback%s
   --  ada.exceptions%b
   --  system.traceback%b
   --  ada.text_io%s
   --  ada.text_io%b
   --  gl%s
   --  gl.c%s
   --  gl.c.accessories%s
   --  gl.c.complete%s
   --  gl.c.initializations%s
   --  gl.c.initializations%b
   --  gl.programs%s
   --  gl.programs%b
   --  gl.programs.shaders%s
   --  gl.programs.shaders%b
   --  gl.programs.shaders.files%s
   --  gl.programs.shaders.files%b
   --  glfw%s
   --  glfw%b
   --  glfw.apis%s
   --  glfw.c%s
   --  glfw.apis%b
   --  glfw.displays%s
   --  glfw.displays.windows%s
   --  glfw.displays.windows%b
   --  glfw.events%s
   --  glfw.events%b
   --  glfw.initializations%s
   --  glfw.initializations%b
   --  draw%b
   --  END ELABORATION ORDER


end ada_main;
