var NAVTREE =
[
  [ "RNAlib-2.4.3", "index.html", [
    [ "ViennaRNA Package core - RNAlib", "index.html", [
      [ "Introduction", "index.html#mp_intro", null ]
    ] ],
    [ "Installation and Configuration of RNAlib Features", "install.html", [
      [ "Installing the ViennaRNA Package", "install.html#installation", [
        [ "Quick-start", "install.html#quickstart", null ],
        [ "Installation without root privileges", "install.html#userdir_install", null ],
        [ "Notes for MacOS X users", "install.html#macosx_notes", null ]
      ] ],
      [ "Configuring RNAlib features", "install.html#configuration", [
        [ "Streaming SIMD Extension (SSE) support", "install.html#config_sse", null ],
        [ "Scripting Interfaces", "install.html#config_swig", null ],
        [ "Cluster Analysis", "install.html#config_cluster", null ],
        [ "Kinfold", "install.html#config_kinfold", null ],
        [ "RNAforester", "install.html#config_forester", null ],
        [ "Kinwalker", "install.html#config_kinwalker", null ],
        [ "Link Time Optimization (LTO)", "install.html#config_lto", null ],
        [ "OpenMP support", "install.html#config_openmp", null ],
        [ "Stochastic backtracking using Boustrophedon scheme", "install.html#config_boustrophedon", null ],
        [ "SVM Z-score filter in RNALfold", "install.html#config_svm", null ],
        [ "GNU Scientific Library", "install.html#config_gsl", null ],
        [ "Disable C11/C++11 feature support", "install.html#config_c11", null ],
        [ "Enable warnings for use of deprecated symbols", "install.html#config_deprecated", null ],
        [ "Single precision partition function", "install.html#config_float_pf", null ],
        [ "Help", "install.html#config_help", null ]
      ] ],
      [ "Linking against RNAlib", "install.html#linking", [
        [ "Compiler and Linker flags", "install.html#linking_flags", null ],
        [ "The pkg-config tool", "install.html#linking_pkgconfig", null ]
      ] ]
    ] ],
    [ "Parsing and Comparing - Functions to Manipulate Structures", "mp_parse.html", null ],
    [ "Utilities - Odds and Ends", "mp_utils.html", [
      [ "Producing secondary structure graphs", "mp_utils.html#utils_ss", null ],
      [ "Producing (colored) dot plots for base pair probabilities", "mp_utils.html#utils_dot", null ],
      [ "Producing (colored) alignments", "mp_utils.html#utils_aln", null ],
      [ "RNA sequence related utilities", "mp_utils.html#utils_seq", null ],
      [ "RNA secondary structure related utilities", "mp_utils.html#utils_struc", null ],
      [ "Miscellaneous Utilities", "mp_utils.html#utils_misc", null ]
    ] ],
    [ "RNAlib API v3.0", "newAPI.html", [
      [ "Introduction", "newAPI.html#newAPI_intro", null ],
      [ "What are the major changes?", "newAPI.html#newAPI_changes", null ],
      [ "How to port your program to the new API", "newAPI.html#newAPI_porting", null ],
      [ "Some Examples using RNAlib API v3.0", "newAPI.html#newAPI_examples", null ]
    ] ],
    [ "Callback Functions", "callbacks.html", null ],
    [ "Scripting Language interface(s)", "scripting.html", [
      [ "Introduction", "scripting.html#scripting_intro", null ],
      [ "Function renaming scheme", "scripting.html#scripting_renaming", null ],
      [ "Object oriented Interface for data structures", "scripting.html#scripting_oo_interface", null ],
      [ "Examples", "scripting.html#scripting_examples", null ],
      [ "Wrapper notes", "scripting.html#scripting_wrappers", null ]
    ] ],
    [ "SWIG Wrapper Notes", "wrappers.html", null ],
    [ "Input / Output File Formats", "file_formats.html", [
      [ "File formats for Multiple Sequence Alignments (MSA)", "file_formats.html#msa-formats", [
        [ "ClustalW format", "file_formats.html#msa-formats-clustal", null ],
        [ "Stockholm 1.0 format", "file_formats.html#msa-formats-stockholm", null ],
        [ "FASTA (Pearson) format", "file_formats.html#msa-formats-fasta", null ],
        [ "MAF format", "file_formats.html#msa-formats-maf", null ]
      ] ],
      [ "File formats to manipulate the RNA folding grammar", "file_formats.html#constraint-formats", [
        [ "Command Files", "file_formats.html#constraint-formats-file", [
          [ "Constraint commands", "file_formats.html#constraint_commands", null ],
          [ "RNA folding grammar exensions", "file_formats.html#domain_commands", null ],
          [ "Specification of the loop type context", "file_formats.html#command_file_loop_types", null ],
          [ "Controlling the orientation of base pairing", "file_formats.html#const_file_orientation", null ],
          [ "Sequence coordinates", "file_formats.html#const_file_seq_coords", null ],
          [ "Valid constraint commands", "file_formats.html#const_file_syntax", null ],
          [ "Valid domain extensions commands", "file_formats.html#domains_syntax", null ]
        ] ]
      ] ]
    ] ],
    [ "RNA Structure Notations", "rna_structure_notations.html", [
      [ "Common Notations for RNA secondary structures", "rna_structure_notations.html#secondary-structure-notations", [
        [ "Dot-Bracket Notation (a.k.a. Dot-Parenthesis Notation)", "rna_structure_notations.html#dot-bracket-notation", null ],
        [ "Extended Dot-Bracket Notation", "rna_structure_notations.html#dot-bracket-ext-notation", null ],
        [ "Washington University Secondary Structure (WUSS) notation", "rna_structure_notations.html#wuss-notation", null ]
      ] ]
    ] ],
    [ "Examples", "mp_example.html", [
      [ "Example programs using the RNAlib C library", "mp_example.html#example_c", [
        [ "Using the 'old' API", "mp_example.html#examples_c_old_API", null ],
        [ "Using the 'new' v3.0 API", "mp_example.html#examples_c_new_API", null ]
      ] ],
      [ "Perl Examples", "mp_example.html#scripting_perl_examples", [
        [ "Using the Flat Interface", "mp_example.html#scripting_perl_examples_flat", null ],
        [ "Using the Object Oriented (OO) Interface", "mp_example.html#scripting_perl_examples_oo", null ]
      ] ],
      [ "Python Examples", "mp_example.html#scripting_python_examples", [
        [ "Using the Flat Interface", "mp_example.html#scripting_python_examples_flat", null ],
        [ "Using the Object Oriented (OO) Interface", "mp_example.html#scripting_python_examples_oo", null ]
      ] ]
    ] ],
    [ "Deprecated List", "deprecated.html", null ],
    [ "Bug List", "bug.html", null ],
    [ "Bibliography", "citelist.html", null ],
    [ "Modules", "modules.html", "modules" ],
    [ "Data Structures", "annotated.html", [
      [ "Data Structures", "annotated.html", "annotated_dup" ],
      [ "Data Structure Index", "classes.html", null ],
      [ "Data Fields", "functions.html", [
        [ "All", "functions.html", "functions_dup" ],
        [ "Variables", "functions_vars.html", "functions_vars" ]
      ] ]
    ] ],
    [ "Files", null, [
      [ "File List", "files.html", "files" ],
      [ "Globals", "globals.html", [
        [ "All", "globals.html", "globals_dup" ],
        [ "Functions", "globals_func.html", "globals_func" ],
        [ "Variables", "globals_vars.html", null ],
        [ "Typedefs", "globals_type.html", null ],
        [ "Enumerations", "globals_enum.html", null ],
        [ "Enumerator", "globals_eval.html", null ],
        [ "Macros", "globals_defs.html", null ]
      ] ]
    ] ]
  ] ]
];

var NAVTREEINDEX =
[
"1_88_84__epars_8h.html",
"grammar_8h.html",
"group__direct__paths.html#ga0b22426253e190bd268f86b01b71220d",
"group__eval.html#ga8831445966b761417e713360791299d8",
"group__hard__constraints.html#ga5070f296c8af2baea10951525519464f",
"group__mfe__cofold.html#ga7612cfeeb1b793f1e4179b1eb53df1f3",
"group__model__details.html#gad3b22044065acc6dee0af68931b52cfd",
"group__string__utils.html#ga301798b43b6f66687985c725efd14f32",
"group__utils.html#ga039bae6153a6415b054dbe6045f83d03",
"structTwoDpfold__vars.html#a32c15a1e31856588259556c9020f32c6"
];

var SYNCONMSG = 'click to disable panel synchronisation';
var SYNCOFFMSG = 'click to enable panel synchronisation';