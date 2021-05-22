






am__is_gnu_make = { \
  if test -z '$(MAKELEVEL)'; then \
    false; \
  elif test -n '$(MAKE_HOST)'; then \
    true; \
  elif test -n '$(MAKE_VERSION)' && test -n '$(CURDIR)'; then \
    true; \
  else \
    false; \
  fi; \
}
am__make_running_with_option = \
  case $${target_option-} in \
      ?) ;; \
      *) echo "am__make_running_with_option: internal error: invalid" \
              "target option '$${target_option-}' specified" >&2; \
         exit 1;; \
  esac; \
  has_opt=no; \
  sane_makeflags=$$MAKEFLAGS; \
  if $(am__is_gnu_make); then \
    sane_makeflags=$$MFLAGS; \
  else \
    case $$MAKEFLAGS in \
      *\\[\ \	]*) \
        bs=\\; \
        sane_makeflags=`printf '%s\n' "$$MAKEFLAGS" \
          | sed "s/$$bs$$bs[$$bs $$bs	]*//g"`;; \
    esac; \
  fi; \
  skip_next=no; \
  strip_trailopt () \
  { \
    flg=`printf '%s\n' "$$flg" | sed "s/$$1.*$$//"`; \
  }; \
  for flg in $$sane_makeflags; do \
    test $$skip_next = yes && { skip_next=no; continue; }; \
    case $$flg in \
      *=*|--*) continue;; \
        -*I) strip_trailopt 'I'; skip_next=yes;; \
      -*I?*) strip_trailopt 'I';; \
        -*O) strip_trailopt 'O'; skip_next=yes;; \
      -*O?*) strip_trailopt 'O';; \
        -*l) strip_trailopt 'l'; skip_next=yes;; \
      -*l?*) strip_trailopt 'l';; \
      -[dEDm]) skip_next=yes;; \
      -[JT]) skip_next=yes;; \
    esac; \
    case $$flg in \
      *$$target_option*) has_opt=yes; break;; \
    esac; \
  done; \
  test $$has_opt = yes
am__make_dryrun = (target_option=n; $(am__make_running_with_option))
am__make_keepgoing = (target_option=k; $(am__make_running_with_option))
pkgdatadir = $(datadir)/i3
pkgincludedir = $(includedir)/i3
pkglibdir = $(libdir)/i3
pkglibexecdir = $(libexecdir)/i3
am__cd = CDPATH="$${ZSH_VERSION+.}$(PATH_SEPARATOR)" && cd
install_sh_DATA = $(install_sh) -c -m 644
install_sh_PROGRAM = $(install_sh) -c
install_sh_SCRIPT = $(install_sh) -c
INSTALL_HEADER = $(INSTALL_DATA)
transform = $(program_transform_name)
NORMAL_INSTALL = :
PRE_INSTALL = :
POST_INSTALL = :
NORMAL_UNINSTALL = :
PRE_UNINSTALL = :
POST_UNINSTALL = :
build_triplet = x86_64-pc-linux-gnu
host_triplet = x86_64-pc-linux-gnu
target_triplet = x86_64-pc-linux-gnu
bin_PROGRAMS = i3$(EXEEXT) i3bar$(EXEEXT) i3-config-wizard$(EXEEXT) \
 i3-dump-log$(EXEEXT) i3-input$(EXEEXT) i3-msg$(EXEEXT) \
 i3-nagbar$(EXEEXT)
check_PROGRAMS = test.commands_parser$(EXEEXT) \
 test.config_parser$(EXEEXT) test.inject_randr15$(EXEEXT)
subdir = .
ACLOCAL_M4 = $(top_srcdir)/aclocal.m4
am__aclocal_m4_deps = $(top_srcdir)/m4/ax_append_flag.m4 \
 $(top_srcdir)/m4/ax_cflags_warn_all.m4 \
 $(top_srcdir)/m4/ax_check_compile_flag.m4 \
 $(top_srcdir)/m4/ax_check_enable_debug.m4 \
 $(top_srcdir)/m4/ax_check_gnu_make.m4 \
 $(top_srcdir)/m4/ax_check_link_flag.m4 \
 $(top_srcdir)/m4/ax_code_coverage.m4 \
 $(top_srcdir)/m4/ax_configure_args.m4 \
 $(top_srcdir)/m4/ax_enable_builddir.m4 \
 $(top_srcdir)/m4/ax_extend_srcdir.m4 \
 $(top_srcdir)/m4/ax_pthread.m4 \
 $(top_srcdir)/m4/ax_require_defined.m4 \
 $(top_srcdir)/m4/ax_sanitizers.m4 $(top_srcdir)/configure.ac
am__configure_deps = $(am__aclocal_m4_deps) $(CONFIGURE_DEPENDENCIES) \
 $(ACLOCAL_M4)
DIST_COMMON = $(srcdir)/Makefile.am $(top_srcdir)/configure \
 $(am__configure_deps) $(dist_bin_SCRIPTS) \
 $(dist_applications_DATA) $(am__dist_docs_notoc_DATA_DIST) \
 $(am__dist_docs_pod_DATA_DIST) $(am__dist_docs_toc_DATA_DIST) \
 $(dist_i3conf_DATA) $(dist_xsessions_DATA) \
 $(i3include_HEADERS) $(am__DIST_COMMON)
am__CONFIG_DISTCLEAN_FILES = config.status config.cache config.log \
 configure.lineno config.status.lineno
mkinstalldirs = $(install_sh) -d
CONFIG_HEADER = config.h
CONFIG_CLEAN_FILES = testcases/lib/i3test.pm man/asciidoc.conf \
 testcases/complete-run.pl
CONFIG_CLEAN_VPATH_FILES =
am__installdirs = "$(DESTDIR)$(bindir)" "$(DESTDIR)$(bindir)" \
 "$(DESTDIR)$(man1dir)" "$(DESTDIR)$(applicationsdir)" \
 "$(DESTDIR)$(docs_notocdir)" "$(DESTDIR)$(docs_poddir)" \
 "$(DESTDIR)$(docs_tocdir)" "$(DESTDIR)$(i3confdir)" \
 "$(DESTDIR)$(xsessionsdir)" "$(DESTDIR)$(i3includedir)"
PROGRAMS = $(bin_PROGRAMS)
LIBRARIES = $(noinst_LIBRARIES)
ARFLAGS = cru
AM_V_AR = $(am__v_AR_$(V))
am__v_AR_ = $(am__v_AR_$(AM_DEFAULT_VERBOSITY))
am__v_AR_0 = @echo "  AR      " $@;
am__v_AR_1 = 
libi3_a_AR = $(AR) $(ARFLAGS)
libi3_a_LIBADD =
am_libi3_a_OBJECTS = libi3_a-dpi.$(OBJEXT) libi3_a-draw_util.$(OBJEXT) \
 libi3_a-fake_configure_notify.$(OBJEXT) libi3_a-font.$(OBJEXT) \
 libi3_a-format_placeholders.$(OBJEXT) \
 libi3_a-g_utf8_make_valid.$(OBJEXT) \
 libi3_a-get_colorpixel.$(OBJEXT) \
 libi3_a-get_config_path.$(OBJEXT) \
 libi3_a-get_exe_path.$(OBJEXT) libi3_a-get_mod_mask.$(OBJEXT) \
 libi3_a-get_process_filename.$(OBJEXT) \
 libi3_a-get_visualtype.$(OBJEXT) libi3_a-ipc_connect.$(OBJEXT) \
 libi3_a-ipc_recv_message.$(OBJEXT) \
 libi3_a-ipc_send_message.$(OBJEXT) \
 libi3_a-is_debug_build.$(OBJEXT) libi3_a-mkdirp.$(OBJEXT) \
 libi3_a-resolve_tilde.$(OBJEXT) \
 libi3_a-root_atom_contents.$(OBJEXT) \
 libi3_a-safewrappers.$(OBJEXT) libi3_a-string.$(OBJEXT) \
 libi3_a-strndup.$(OBJEXT) libi3_a-ucs2_conversion.$(OBJEXT)
libi3_a_OBJECTS = $(am_libi3_a_OBJECTS)
am_i3_OBJECTS = i3-assignments.$(OBJEXT) i3-bindings.$(OBJEXT) \
 i3-click.$(OBJEXT) i3-commands.$(OBJEXT) \
 i3-commands_parser.$(OBJEXT) i3-con.$(OBJEXT) \
 i3-config.$(OBJEXT) i3-config_directives.$(OBJEXT) \
 i3-config_parser.$(OBJEXT) i3-display_version.$(OBJEXT) \
 i3-drag.$(OBJEXT) i3-ewmh.$(OBJEXT) i3-fake_outputs.$(OBJEXT) \
 i3-floating.$(OBJEXT) i3-handlers.$(OBJEXT) i3-ipc.$(OBJEXT) \
 i3-key_press.$(OBJEXT) i3-load_layout.$(OBJEXT) \
 i3-log.$(OBJEXT) i3-main.$(OBJEXT) i3-manage.$(OBJEXT) \
 i3-match.$(OBJEXT) i3-move.$(OBJEXT) i3-output.$(OBJEXT) \
 i3-randr.$(OBJEXT) i3-regex.$(OBJEXT) i3-render.$(OBJEXT) \
 i3-resize.$(OBJEXT) i3-restore_layout.$(OBJEXT) \
 i3-scratchpad.$(OBJEXT) i3-sd-daemon.$(OBJEXT) \
 i3-sighandler.$(OBJEXT) i3-startup.$(OBJEXT) i3-sync.$(OBJEXT) \
 i3-tree.$(OBJEXT) i3-util.$(OBJEXT) i3-version.$(OBJEXT) \
 i3-window.$(OBJEXT) i3-workspace.$(OBJEXT) i3-x.$(OBJEXT) \
 i3-xcb.$(OBJEXT) i3-xcursor.$(OBJEXT) i3-xinerama.$(OBJEXT)
i3_OBJECTS = $(am_i3_OBJECTS)
am__DEPENDENCIES_1 =
am__DEPENDENCIES_2 = $(top_builddir)/libi3.a $(am__DEPENDENCIES_1) \
 $(am__DEPENDENCIES_1) $(am__DEPENDENCIES_1) \
 $(am__DEPENDENCIES_1) $(am__DEPENDENCIES_1) \
 $(am__DEPENDENCIES_1)
i3_DEPENDENCIES = $(am__DEPENDENCIES_2) $(am__DEPENDENCIES_1) \
 $(am__DEPENDENCIES_1) $(am__DEPENDENCIES_1) \
 $(am__DEPENDENCIES_1) $(am__DEPENDENCIES_1) \
 $(am__DEPENDENCIES_1) $(am__DEPENDENCIES_1) \
 $(am__DEPENDENCIES_1) $(am__DEPENDENCIES_1) \
 $(am__DEPENDENCIES_1) $(am__DEPENDENCIES_1) \
 $(am__DEPENDENCIES_1)
i3_LINK = $(CCLD) $(i3_CFLAGS) $(CFLAGS) $(AM_LDFLAGS) $(LDFLAGS) -o \
 $@
am_i3_config_wizard_OBJECTS = i3_config_wizard-main.$(OBJEXT)
i3_config_wizard_OBJECTS = $(am_i3_config_wizard_OBJECTS)
i3_config_wizard_LINK = $(CCLD) $(i3_config_wizard_CFLAGS) $(CFLAGS) \
 $(AM_LDFLAGS) $(LDFLAGS) -o $@
am_i3_dump_log_OBJECTS = i3_dump_log-main.$(OBJEXT)
i3_dump_log_OBJECTS = $(am_i3_dump_log_OBJECTS)
i3_dump_log_DEPENDENCIES = $(am__DEPENDENCIES_1) $(am__DEPENDENCIES_2)
i3_dump_log_LINK = $(CCLD) $(i3_dump_log_CFLAGS) $(CFLAGS) \
 $(AM_LDFLAGS) $(LDFLAGS) -o $@
am_i3_input_OBJECTS = i3_input-keysym2ucs.$(OBJEXT) \
 i3_input-main.$(OBJEXT)
i3_input_OBJECTS = $(am_i3_input_OBJECTS)
i3_input_DEPENDENCIES = $(am__DEPENDENCIES_2) $(am__DEPENDENCIES_1)
i3_input_LINK = $(CCLD) $(i3_input_CFLAGS) $(CFLAGS) $(AM_LDFLAGS) \
 $(LDFLAGS) -o $@
am_i3_msg_OBJECTS = i3_msg-main.$(OBJEXT)
i3_msg_OBJECTS = $(am_i3_msg_OBJECTS)
i3_msg_DEPENDENCIES = $(am__DEPENDENCIES_2)
i3_msg_LINK = $(CCLD) $(i3_msg_CFLAGS) $(CFLAGS) $(AM_LDFLAGS) \
 $(LDFLAGS) -o $@
am_i3_nagbar_OBJECTS = i3_nagbar-main.$(OBJEXT)
i3_nagbar_OBJECTS = $(am_i3_nagbar_OBJECTS)
i3_nagbar_DEPENDENCIES = $(am__DEPENDENCIES_2) $(am__DEPENDENCIES_1) \
 $(am__DEPENDENCIES_1)
i3_nagbar_LINK = $(CCLD) $(i3_nagbar_CFLAGS) $(CFLAGS) $(AM_LDFLAGS) \
 $(LDFLAGS) -o $@
am_i3bar_OBJECTS = i3bar-child.$(OBJEXT) i3bar-config.$(OBJEXT) \
 i3bar-ipc.$(OBJEXT) i3bar-main.$(OBJEXT) i3bar-mode.$(OBJEXT) \
 i3bar-outputs.$(OBJEXT) i3bar-parse_json_header.$(OBJEXT) \
 i3bar-workspaces.$(OBJEXT) i3bar-xcb.$(OBJEXT)
i3bar_OBJECTS = $(am_i3bar_OBJECTS)
i3bar_DEPENDENCIES = $(am__DEPENDENCIES_2) $(am__DEPENDENCIES_1) \
 $(am__DEPENDENCIES_1) $(am__DEPENDENCIES_1) \
 $(am__DEPENDENCIES_1) $(am__DEPENDENCIES_1)
i3bar_LINK = $(CCLD) $(i3bar_CFLAGS) $(CFLAGS) $(AM_LDFLAGS) \
 $(LDFLAGS) -o $@
am_test_commands_parser_OBJECTS =  \
 test_commands_parser-commands_parser.$(OBJEXT)
test_commands_parser_OBJECTS = $(am_test_commands_parser_OBJECTS)
am__DEPENDENCIES_3 = $(am__DEPENDENCIES_2) $(am__DEPENDENCIES_1) \
 $(am__DEPENDENCIES_1) $(am__DEPENDENCIES_1) \
 $(am__DEPENDENCIES_1) $(am__DEPENDENCIES_1) \
 $(am__DEPENDENCIES_1) $(am__DEPENDENCIES_1) \
 $(am__DEPENDENCIES_1) $(am__DEPENDENCIES_1) \
 $(am__DEPENDENCIES_1) $(am__DEPENDENCIES_1) \
 $(am__DEPENDENCIES_1)
test_commands_parser_DEPENDENCIES = $(am__DEPENDENCIES_3)
test_commands_parser_LINK = $(CCLD) $(test_commands_parser_CFLAGS) \
 $(CFLAGS) $(AM_LDFLAGS) $(LDFLAGS) -o $@
am_test_config_parser_OBJECTS =  \
 test_config_parser-config_parser.$(OBJEXT)
test_config_parser_OBJECTS = $(am_test_config_parser_OBJECTS)
test_config_parser_DEPENDENCIES = $(am__DEPENDENCIES_3)
test_config_parser_LINK = $(CCLD) $(test_config_parser_CFLAGS) \
 $(CFLAGS) $(AM_LDFLAGS) $(LDFLAGS) -o $@
am_test_inject_randr15_OBJECTS =  \
 test_inject_randr15-inject_randr1.5.$(OBJEXT)
test_inject_randr15_OBJECTS = $(am_test_inject_randr15_OBJECTS)
test_inject_randr15_DEPENDENCIES = $(am__DEPENDENCIES_3)
test_inject_randr15_LINK = $(CCLD) $(test_inject_randr15_CFLAGS) \
 $(CFLAGS) $(AM_LDFLAGS) $(LDFLAGS) -o $@
am__vpath_adj_setup = srcdirstrip=`echo "$(srcdir)" | sed 's|.|.|g'`;
am__vpath_adj = case $$p in \
    $(srcdir)/*) f=`echo "$$p" | sed "s|^$$srcdirstrip/||"`;; \
    *) f=$$p;; \
  esac;
am__strip_dir = f=`echo $$p | sed -e 's|^.*/||'`;
am__install_max = 40
am__nobase_strip_setup = \
  srcdirstrip=`echo "$(srcdir)" | sed 's/[].[^$$\\*|]/\\\\&/g'`
am__nobase_strip = \
  for p in $$list; do echo "$$p"; done | sed -e "s|$$srcdirstrip/||"
am__nobase_list = $(am__nobase_strip_setup); \
  for p in $$list; do echo "$$p $$p"; done | \
  sed "s| $$srcdirstrip/| |;"' / .*\//!s/ .*/ ./; s,\( .*\)/[^/]*$$,\1,' | \
  $(AWK) 'BEGIN { files["."] = "" } { files[$$2] = files[$$2] " " $$1; \
    if (++n[$$2] == $(am__install_max)) \
      { print $$2, files[$$2]; n[$$2] = 0; files[$$2] = "" } } \
    END { for (dir in files) print dir, files[dir] }'
am__base_list = \
  sed '$$!N;$$!N;$$!N;$$!N;$$!N;$$!N;$$!N;s/\n/ /g' | \
  sed '$$!N;$$!N;$$!N;$$!N;s/\n/ /g'
am__uninstall_files_from_dir = { \
  test -z "$$files" \
    || { test ! -d "$$dir" && test ! -f "$$dir" && test ! -r "$$dir"; } \
    || { echo " ( cd '$$dir' && rm -f" $$files ")"; \
         $(am__cd) "$$dir" && rm -f $$files; }; \
  }
SCRIPTS = $(dist_bin_SCRIPTS)
AM_V_P = $(am__v_P_$(V))
am__v_P_ = $(am__v_P_$(AM_DEFAULT_VERBOSITY))
am__v_P_0 = false
am__v_P_1 = :
AM_V_GEN = $(am__v_GEN_$(V))
am__v_GEN_ = $(am__v_GEN_$(AM_DEFAULT_VERBOSITY))
am__v_GEN_0 = @echo "  GEN     " $@;
am__v_GEN_1 = 
AM_V_at = $(am__v_at_$(V))
am__v_at_ = $(am__v_at_$(AM_DEFAULT_VERBOSITY))
am__v_at_0 = @
am__v_at_1 = 
DEFAULT_INCLUDES = -I. -I$(srcdir)
depcomp = $(SHELL) $(top_srcdir)/depcomp
am__maybe_remake_depfiles = depfiles
am__depfiles_remade = ./$(DEPDIR)/i3-assignments.Po \
 ./$(DEPDIR)/i3-bindings.Po ./$(DEPDIR)/i3-click.Po \
 ./$(DEPDIR)/i3-commands.Po ./$(DEPDIR)/i3-commands_parser.Po \
 ./$(DEPDIR)/i3-con.Po ./$(DEPDIR)/i3-config.Po \
 ./$(DEPDIR)/i3-config_directives.Po \
 ./$(DEPDIR)/i3-config_parser.Po \
 ./$(DEPDIR)/i3-display_version.Po ./$(DEPDIR)/i3-drag.Po \
 ./$(DEPDIR)/i3-ewmh.Po ./$(DEPDIR)/i3-fake_outputs.Po \
 ./$(DEPDIR)/i3-floating.Po ./$(DEPDIR)/i3-handlers.Po \
 ./$(DEPDIR)/i3-ipc.Po ./$(DEPDIR)/i3-key_press.Po \
 ./$(DEPDIR)/i3-load_layout.Po ./$(DEPDIR)/i3-log.Po \
 ./$(DEPDIR)/i3-main.Po ./$(DEPDIR)/i3-manage.Po \
 ./$(DEPDIR)/i3-match.Po ./$(DEPDIR)/i3-move.Po \
 ./$(DEPDIR)/i3-output.Po ./$(DEPDIR)/i3-randr.Po \
 ./$(DEPDIR)/i3-regex.Po ./$(DEPDIR)/i3-render.Po \
 ./$(DEPDIR)/i3-resize.Po ./$(DEPDIR)/i3-restore_layout.Po \
 ./$(DEPDIR)/i3-scratchpad.Po ./$(DEPDIR)/i3-sd-daemon.Po \
 ./$(DEPDIR)/i3-sighandler.Po ./$(DEPDIR)/i3-startup.Po \
 ./$(DEPDIR)/i3-sync.Po ./$(DEPDIR)/i3-tree.Po \
 ./$(DEPDIR)/i3-util.Po ./$(DEPDIR)/i3-version.Po \
 ./$(DEPDIR)/i3-window.Po ./$(DEPDIR)/i3-workspace.Po \
 ./$(DEPDIR)/i3-x.Po ./$(DEPDIR)/i3-xcb.Po \
 ./$(DEPDIR)/i3-xcursor.Po ./$(DEPDIR)/i3-xinerama.Po \
 ./$(DEPDIR)/i3_config_wizard-main.Po \
 ./$(DEPDIR)/i3_dump_log-main.Po \
 ./$(DEPDIR)/i3_input-keysym2ucs.Po \
 ./$(DEPDIR)/i3_input-main.Po ./$(DEPDIR)/i3_msg-main.Po \
 ./$(DEPDIR)/i3_nagbar-main.Po ./$(DEPDIR)/i3bar-child.Po \
 ./$(DEPDIR)/i3bar-config.Po ./$(DEPDIR)/i3bar-ipc.Po \
 ./$(DEPDIR)/i3bar-main.Po ./$(DEPDIR)/i3bar-mode.Po \
 ./$(DEPDIR)/i3bar-outputs.Po \
 ./$(DEPDIR)/i3bar-parse_json_header.Po \
 ./$(DEPDIR)/i3bar-workspaces.Po ./$(DEPDIR)/i3bar-xcb.Po \
 ./$(DEPDIR)/libi3_a-dpi.Po ./$(DEPDIR)/libi3_a-draw_util.Po \
 ./$(DEPDIR)/libi3_a-fake_configure_notify.Po \
 ./$(DEPDIR)/libi3_a-font.Po \
 ./$(DEPDIR)/libi3_a-format_placeholders.Po \
 ./$(DEPDIR)/libi3_a-g_utf8_make_valid.Po \
 ./$(DEPDIR)/libi3_a-get_colorpixel.Po \
 ./$(DEPDIR)/libi3_a-get_config_path.Po \
 ./$(DEPDIR)/libi3_a-get_exe_path.Po \
 ./$(DEPDIR)/libi3_a-get_mod_mask.Po \
 ./$(DEPDIR)/libi3_a-get_process_filename.Po \
 ./$(DEPDIR)/libi3_a-get_visualtype.Po \
 ./$(DEPDIR)/libi3_a-ipc_connect.Po \
 ./$(DEPDIR)/libi3_a-ipc_recv_message.Po \
 ./$(DEPDIR)/libi3_a-ipc_send_message.Po \
 ./$(DEPDIR)/libi3_a-is_debug_build.Po \
 ./$(DEPDIR)/libi3_a-mkdirp.Po \
 ./$(DEPDIR)/libi3_a-resolve_tilde.Po \
 ./$(DEPDIR)/libi3_a-root_atom_contents.Po \
 ./$(DEPDIR)/libi3_a-safewrappers.Po \
 ./$(DEPDIR)/libi3_a-string.Po ./$(DEPDIR)/libi3_a-strndup.Po \
 ./$(DEPDIR)/libi3_a-ucs2_conversion.Po \
 ./$(DEPDIR)/test_commands_parser-commands_parser.Po \
 ./$(DEPDIR)/test_config_parser-config_parser.Po \
 ./$(DEPDIR)/test_inject_randr15-inject_randr1.5.Po
am__mv = mv -f
AM_V_lt = $(am__v_lt_$(V))
am__v_lt_ = $(am__v_lt_$(AM_DEFAULT_VERBOSITY))
am__v_lt_0 = --silent
am__v_lt_1 = 
COMPILE = $(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) \
 $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS)
AM_V_CC = $(am__v_CC_$(V))
am__v_CC_ = $(am__v_CC_$(AM_DEFAULT_VERBOSITY))
am__v_CC_0 = @echo "  CC      " $@;
am__v_CC_1 = 
CCLD = $(CC)
LINK = $(CCLD) $(AM_CFLAGS) $(CFLAGS) $(AM_LDFLAGS) $(LDFLAGS) -o $@
AM_V_CCLD = $(am__v_CCLD_$(V))
am__v_CCLD_ = $(am__v_CCLD_$(AM_DEFAULT_VERBOSITY))
am__v_CCLD_0 = @echo "  CCLD    " $@;
am__v_CCLD_1 = 
SOURCES = $(libi3_a_SOURCES) $(i3_SOURCES) $(i3_config_wizard_SOURCES) \
 $(i3_dump_log_SOURCES) $(i3_input_SOURCES) $(i3_msg_SOURCES) \
 $(i3_nagbar_SOURCES) $(i3bar_SOURCES) \
 $(test_commands_parser_SOURCES) $(test_config_parser_SOURCES) \
 $(test_inject_randr15_SOURCES)
DIST_SOURCES = $(libi3_a_SOURCES) $(i3_SOURCES) \
 $(i3_config_wizard_SOURCES) $(i3_dump_log_SOURCES) \
 $(i3_input_SOURCES) $(i3_msg_SOURCES) $(i3_nagbar_SOURCES) \
 $(i3bar_SOURCES) $(test_commands_parser_SOURCES) \
 $(test_config_parser_SOURCES) $(test_inject_randr15_SOURCES)
am__can_run_installinfo = \
  case $$AM_UPDATE_INFO_DIR in \
    n|no|NO) false;; \
    *) (install-info --version) >/dev/null 2>&1;; \
  esac
man1dir = $(mandir)/man1
NROFF = nroff
MANS = $(dist_man1_MANS)
am__dist_docs_notoc_DATA_DIST = docs/debugging.html
am__dist_docs_pod_DATA_DIST = docs/lib-i3test.html \
 docs/lib-i3test-test.html
am__dist_docs_toc_DATA_DIST = docs/hacking-howto.html \
 docs/userguide.html docs/ipc.html docs/multi-monitor.html \
 docs/wsbar.html docs/testsuite.html docs/i3bar-protocol.html \
 docs/layout-saving.html
DATA = $(dist_applications_DATA) $(dist_docs_notoc_DATA) \
 $(dist_docs_pod_DATA) $(dist_docs_toc_DATA) \
 $(dist_i3conf_DATA) $(dist_xsessions_DATA)
HEADERS = $(i3include_HEADERS)
am__tagged_files = $(HEADERS) $(SOURCES) $(TAGS_FILES) $(LISP) \
 config.h.in
am__uniquify_input = $(AWK) '\
  BEGIN { nonempty = 0; } \
  { items[$$0] = 1; nonempty = 1; } \
  END { if (nonempty) { for (i in items) print i; }; } \
'
am__define_uniq_tagged_files = \
  list='$(am__tagged_files)'; \
  unique=`for i in $$list; do \
    if test -f "$$i"; then echo $$i; else echo $(srcdir)/$$i; fi; \
  done | $(am__uniquify_input)`
ETAGS = etags
CTAGS = ctags
CSCOPE = cscope
AM_RECURSIVE_TARGETS = cscope check recheck
am__tty_colors_dummy = \
  mgn= red= grn= lgn= blu= brg= std=; \
  am__color_tests=no
am__tty_colors = { \
  $(am__tty_colors_dummy); \
  if test "X$(AM_COLOR_TESTS)" = Xno; then \
    am__color_tests=no; \
  elif test "X$(AM_COLOR_TESTS)" = Xalways; then \
    am__color_tests=yes; \
  elif test "X$$TERM" != Xdumb && { test -t 1; } 2>/dev/null; then \
    am__color_tests=yes; \
  fi; \
  if test $$am__color_tests = yes; then \
    red='[0;31m'; \
    grn='[0;32m'; \
    lgn='[1;32m'; \
    blu='[1;34m'; \
    mgn='[0;35m'; \
    brg='[1m'; \
    std='[m'; \
  fi; \
}
am__recheck_rx = ^[ 	]*:recheck:[ 	]*
am__global_test_result_rx = ^[ 	]*:global-test-result:[ 	]*
am__copy_in_global_log_rx = ^[ 	]*:copy-in-global-log:[ 	]*
am__list_recheck_tests = $(AWK) '{ \
  recheck = 1; \
  while ((rc = (getline line < ($$0 ".trs"))) != 0) \
    { \
      if (rc < 0) \
        { \
          if ((getline line2 < ($$0 ".log")) < 0) \
     recheck = 0; \
          break; \
        } \
      else if (line ~ /$(am__recheck_rx)[nN][Oo]/) \
        { \
          recheck = 0; \
          break; \
        } \
      else if (line ~ /$(am__recheck_rx)[yY][eE][sS]/) \
        { \
          break; \
        } \
    }; \
  if (recheck) \
    print $$0; \
  close ($$0 ".trs"); \
  close ($$0 ".log"); \
}'
am__create_global_log = $(AWK) ' \
function fatal(msg) \
{ \
  print "fatal: making $@: " msg | "cat >&2"; \
  exit 1; \
} \
function rst_section(header) \
{ \
  print header; \
  len = length(header); \
  for (i = 1; i <= len; i = i + 1) \
    printf "="; \
  printf "\n\n"; \
} \
{ \
  copy_in_global_log = 1; \
  global_test_result = "RUN"; \
  while ((rc = (getline line < ($$0 ".trs"))) != 0) \
    { \
      if (rc < 0) \
         fatal("failed to read from " $$0 ".trs"); \
      if (line ~ /$(am__global_test_result_rx)/) \
        { \
          sub("$(am__global_test_result_rx)", "", line); \
          sub("[ 	]*$$", "", line); \
          global_test_result = line; \
        } \
      else if (line ~ /$(am__copy_in_global_log_rx)[nN][oO]/) \
        copy_in_global_log = 0; \
    }; \
  if (copy_in_global_log) \
    { \
      rst_section(global_test_result ": " $$0); \
      while ((rc = (getline line < ($$0 ".log"))) != 0) \
      { \
        if (rc < 0) \
          fatal("failed to read from " $$0 ".log"); \
        print line; \
      }; \
      printf "\n"; \
    }; \
  close ($$0 ".trs"); \
  close ($$0 ".log"); \
}'
am__rst_title = { sed 's/.*/   &   /;h;s/./=/g;p;x;s/ *$$//;p;g' && echo; }
am__sh_e_setup = case $$- in *e*) set +e;; esac
am__common_driver_flags = \
  --color-tests "$$am__color_tests" \
  --enable-hard-errors "$$am__enable_hard_errors" \
  --expect-failure "$$am__expect_failure"
am__check_pre = \
$(am__sh_e_setup);					\
$(am__vpath_adj_setup) $(am__vpath_adj)			\
$(am__tty_colors);					\
srcdir=$(srcdir); export srcdir;			\
case "$@" in						\
  */*) am__odir=`echo "./$@" | sed 's|/[^/]*$$||'`;;	\
    *) am__odir=.;; 					\
esac;							\
test "x$$am__odir" = x"." || test -d "$$am__odir" 	\
  || $(MKDIR_P) "$$am__odir" || exit $$?;		\
if test -f "./$$f"; then dir=./;			\
elif test -f "$$f"; then dir=;				\
else dir="$(srcdir)/"; fi;				\
tst=$$dir$$f; log='$@'; 				\
if test -n '$(DISABLE_HARD_ERRORS)'; then		\
  am__enable_hard_errors=no; 				\
else							\
  am__enable_hard_errors=yes; 				\
fi; 							\
case " $(XFAIL_TESTS) " in				\
  *[\ \	]$$f[\ \	]* | *[\ \	]$$dir$$f[\ \	]*) \
    am__expect_failure=yes;;				\
  *)							\
    am__expect_failure=no;;				\
esac; 							\
$(AM_TESTS_ENVIRONMENT) $(TESTS_ENVIRONMENT)
am__set_TESTS_bases = \
  bases='$(TEST_LOGS)'; \
  bases=`for i in $$bases; do echo $$i; done | sed 's/\.log$$//'`; \
  bases=`echo $$bases`
RECHECK_LOGS = $(TEST_LOGS)
TEST_SUITE_LOG = test-suite.log
TEST_EXTENSIONS =  .test
LOG_DRIVER = $(SHELL) $(top_srcdir)/test-driver
LOG_COMPILE = $(LOG_COMPILER) $(AM_LOG_FLAGS) $(LOG_FLAGS)
am__set_b = \
  case '$@' in \
    */*) \
      case '$*' in \
        */*) b='$*';; \
          *) b=`echo '$@' | sed 's/\.log$$//'`; \
       esac;; \
    *) \
      b='$*';; \
  esac
am__test_logs1 = $(TESTS:=.log)
am__test_logs2 = $(am__test_logs1:.log=.log)
TEST_LOGS = $(am__test_logs2:.test.log=.log)
TEST_LOG_DRIVER = $(SHELL) $(top_srcdir)/test-driver
TEST_LOG_COMPILE = $(TEST_LOG_COMPILER) $(AM_TEST_LOG_FLAGS) \
 $(TEST_LOG_FLAGS)
am__DIST_COMMON = $(dist_man1_MANS) $(srcdir)/Makefile.in \
 $(srcdir)/config.h.in $(top_srcdir)/man/asciidoc.conf.in \
 $(top_srcdir)/testcases/complete-run.pl.in \
 $(top_srcdir)/testcases/lib/i3test.pm.in ar-lib compile \
 config.guess config.sub depcomp install-sh missing test-driver
DISTFILES = $(DIST_COMMON) $(DIST_SOURCES) $(TEXINFOS) $(EXTRA_DIST)
distdir = $(PACKAGE)-$(VERSION)
top_distdir = $(distdir)
am__remove_distdir = \
  if test -d "$(distdir)"; then \
    find "$(distdir)" -type d ! -perm -200 -exec chmod u+w {} ';' \
      && rm -rf "$(distdir)" \
      || { sleep 5 && rm -rf "$(distdir)"; }; \
  else :; fi
am__post_remove_distdir = $(am__remove_distdir)
GZIP_ENV = --best
DIST_ARCHIVES = $(distdir).tar.bz2
DIST_TARGETS = dist-bzip2
distuninstallcheck_listfiles = find . -type f -print
am__distuninstallcheck_listfiles = $(distuninstallcheck_listfiles) \
  | sed 's|^\./|$(prefix)/|' | grep -v '$(infodir)/dir$$'
distcleancheck_listfiles = find . -type f -print
ACLOCAL = ${SHELL} /home/muhmud/code/github.com/muhmud/i3/missing aclocal-1.16
AMTAR = $${TAR-tar}
AM_CFLAGS = -Wunused-value
AM_DEFAULT_VERBOSITY = 0
AR = ar
AUTOCONF = ${SHELL} /home/muhmud/code/github.com/muhmud/i3/missing autoconf
AUTOHEADER = ${SHELL} /home/muhmud/code/github.com/muhmud/i3/missing autoheader
AUTOMAKE = ${SHELL} /home/muhmud/code/github.com/muhmud/i3/missing automake-1.16
AWK = gawk
AX_EXTEND_SRCDIR_CPPFLAGS = -DSTRIPPED__FILE__=\"$$(basename $<)\"
CC = gcc
CCDEPMODE = depmode=gcc3
CFLAGS =  -g -O0 -Wall -fsanitize=address -fno-omit-frame-pointer
CODE_COVERAGE_CFLAGS = 
CODE_COVERAGE_CPPFLAGS = 
CODE_COVERAGE_CXXFLAGS = 
CODE_COVERAGE_ENABLED = no
CODE_COVERAGE_LDFLAGS = 
CPP = gcc -E
CPPFLAGS = 
CYGPATH_W = echo
DEFS = -DHAVE_CONFIG_H
DEPDIR = .deps
ECHO_C = 
ECHO_N = -n
ECHO_T = 
EGREP = /bin/grep -E
EXEEXT = 
GCOV = 
GENHTML = 
GLIBGOBJECT_CFLAGS = -I/usr/include/glib-2.0 -I/usr/lib/glib-2.0/include 
GLIBGOBJECT_LIBS = -lgobject-2.0 -lglib-2.0 
GREP = /bin/grep
I3_VERSION = 4.18-326-g2c8ecb67 (2020-11-27, branch \"master\")
INSTALL = /bin/install -c
INSTALL_DATA = ${INSTALL} -m 644
INSTALL_PROGRAM = ${INSTALL}
INSTALL_SCRIPT = ${INSTALL}
INSTALL_STRIP_PROGRAM = $(install_sh) -c -s
LCOV = 
LDFLAGS =  -fsanitize=address
LIBOBJS =  ${LIBOBJDIR}mkdirp$U.o
LIBPCRE_CFLAGS = 
LIBPCRE_LIBS = -lpcre 
LIBS = -lrt -lev -lm 
LIBSN_CFLAGS = -I/usr/include/startup-notification-1.0 
LIBSN_LIBS = -lstartup-notification-1 
LN_S = ln -s
LTLIBOBJS =  ${LIBOBJDIR}mkdirp$U.lo
MAINT = 
MAKEINFO = ${SHELL} /home/muhmud/code/github.com/muhmud/i3/missing makeinfo
MKDIR_P = /bin/mkdir -p
OBJEXT = o
PACKAGE = i3
PACKAGE_BUGREPORT = https://github.com/i3/i3/issues
PACKAGE_NAME = i3
PACKAGE_STRING = i3 4.18.1
PACKAGE_TARNAME = i3
PACKAGE_URL = 
PACKAGE_VERSION = 4.18.1
PANGOCAIRO_CFLAGS = -I/usr/include/cairo -I/usr/include/glib-2.0 -I/usr/lib/glib-2.0/include -I/usr/include/pixman-1 -I/usr/include/freetype2 -I/usr/include/libpng16 -I/usr/include/harfbuzz -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -pthread 
PANGOCAIRO_LIBS = -lpangocairo-1.0 -lpango-1.0 -lgobject-2.0 -lglib-2.0 -lharfbuzz -lcairo 
PATH_ASCIIDOC = /bin/asciidoc
PATH_POD2MAN = /usr/bin/core_perl/pod2man
PATH_SEPARATOR = :
PATH_XMLTO = /bin/xmlto
PKG_CONFIG = /bin/pkg-config
PKG_CONFIG_LIBDIR = 
PKG_CONFIG_PATH = 
PTHREAD_CC = gcc
PTHREAD_CFLAGS = -pthread
PTHREAD_LIBS = 
RANLIB = ranlib
SED = /bin/sed
SET_MAKE = 
SHELL = /bin/sh
STRIP = 
VERSION = 4.18
XCB_CFLAGS = 
XCB_LIBS = -lxcb -lxcb-xkb -lxcb-xinerama -lxcb-randr -lxcb-shape 
XCB_UTIL_CFLAGS = 
XCB_UTIL_CURSOR_CFLAGS = 
XCB_UTIL_CURSOR_LIBS = -lxcb-cursor -lxcb 
XCB_UTIL_KEYSYMS_CFLAGS = 
XCB_UTIL_KEYSYMS_LIBS = -lxcb-keysyms -lxcb 
XCB_UTIL_LIBS = -lxcb-util -lxcb 
XCB_UTIL_WM_CFLAGS = 
XCB_UTIL_WM_LIBS = -lxcb-icccm -lxcb 
XCB_UTIL_XRM_CFLAGS = 
XCB_UTIL_XRM_LIBS = -lxcb-xrm -lxcb 
XKBCOMMON_CFLAGS = 
XKBCOMMON_LIBS = -lxkbcommon-x11 -lxkbcommon 
YAJL_CFLAGS = -I/usr/include/yajl 
YAJL_LIBS = -lyajl 
abs_builddir = /home/muhmud/code/github.com/muhmud/i3/x86_64-pc-linux-gnu
abs_srcdir = /home/muhmud/code/github.com/muhmud/i3/x86_64-pc-linux-gnu/../../i3
abs_top_builddir = /home/muhmud/code/github.com/muhmud/i3/x86_64-pc-linux-gnu
abs_top_srcdir = /home/muhmud/code/github.com/muhmud/i3/x86_64-pc-linux-gnu/../../i3
ac_ct_AR = ar
ac_ct_CC = gcc
am__include = include
am__leading_dot = .
am__quote = 
am__tar = $${TAR-tar} chof - "$$tardir"
am__untar = $${TAR-tar} xf -
ax_enable_builddir_sed = sed
ax_pthread_config = 
bindir = ${exec_prefix}/bin
build = x86_64-pc-linux-gnu
build_alias = 
build_cpu = x86_64
build_os = linux-gnu
build_vendor = pc
builddir = .
datadir = ${datarootdir}
datarootdir = ${prefix}/share
docdir = ${datarootdir}/doc/${PACKAGE_TARNAME}
dvidir = ${docdir}
exec_prefix = ${prefix}
host = x86_64-pc-linux-gnu
host_alias = 
host_cpu = x86_64
host_os = linux-gnu
host_vendor = pc
htmldir = ${docdir}
ifGNUmake = 
includedir = ${prefix}/include
infodir = ${datarootdir}/info
install_sh = ${SHELL} /home/muhmud/code/github.com/muhmud/i3/install-sh
libdir = ${exec_prefix}/lib
libexecdir = ${exec_prefix}/libexec
localedir = ${datarootdir}/locale
localstatedir = ${prefix}/var
mandir = ${datarootdir}/man
mkdir_p = $(MKDIR_P)
oldincludedir = /usr/include
pdfdir = ${docdir}
prefix = /usr/local
program_transform_name = s,x,x,
psdir = ${docdir}
sbindir = ${exec_prefix}/sbin
sharedstatedir = ${prefix}/com
srcdir = .
sysconfdir = ${prefix}/etc
target = x86_64-pc-linux-gnu
target_alias = 
target_cpu = x86_64
target_os = linux-gnu
target_vendor = pc
top_build_prefix = 
top_builddir = .
top_srcdir = .
i3includedir = $(includedir)/i3
i3include_HEADERS = \
 include/i3/ipc.h

dist_bin_SCRIPTS = \
 i3-dmenu-desktop \
 i3-migrate-config-to-v4 \
 i3-save-tree \
 i3-sensible-editor \
 i3-sensible-pager \
 i3-sensible-terminal

i3confdir = $(sysconfdir)/i3
dist_i3conf_DATA = \
 etc/config \
 etc/config.keycodes

I3STATUS_INSTALL_NAME = $(shell echo i3status | sed 's,x,x,')
applicationsdir = $(datarootdir)/applications
xsessionsdir = $(datarootdir)/xsessions
dist_applications_DATA = \
 share/applications/i3.desktop

dist_xsessions_DATA = \
 share/xsessions/i3.desktop \
 share/xsessions/i3-with-shmlog.desktop

noinst_LIBRARIES = libi3.a
check_SCRIPTS = \
 testcases/complete-run.pl

check_DATA = \
 anyevent-i3.stamp

TESTS = testcases/complete-run.pl
EXTRA_DIST = \
 $(dist_docs_toc_DATA:.html=) \
 $(dist_docs_notoc_DATA:.html=) \
 AnyEvent-I3/Changes \
 AnyEvent-I3/MANIFEST \
 AnyEvent-I3/MANIFEST.SKIP \
 AnyEvent-I3/Makefile.PL \
 AnyEvent-I3/README \
 AnyEvent-I3/lib/AnyEvent/I3.pm \
 AnyEvent-I3/t/00-load.t \
 AnyEvent-I3/t/01-workspaces.t \
 AnyEvent-I3/t/02-sugar.t \
 AnyEvent-I3/t/boilerplate.t \
 AnyEvent-I3/t/manifest.t \
 AnyEvent-I3/t/pod-coverage.t \
 AnyEvent-I3/t/pod.t \
 contrib/dump-asy.pl \
 contrib/gtk-tree-watch.pl \
 contrib/i3-wsbar \
 contrib/per-workspace-layout.pl \
 contrib/trivial-bar-script.sh \
 docs/asciidoc-git.conf \
 docs/bigpicture.png \
 docs/i3-pod2html \
 docs/i3-sync.dia \
 docs/i3-sync.png \
 docs/i3-sync-working.dia \
 docs/i3-sync-working.png \
 docs/keyboard-layer1.png \
 docs/keyboard-layer2.png \
 docs/layout-saving-1.png \
 docs/logo-30.png \
 docs/modes.png \
 docs/refcard.html \
 docs/refcard_style.css \
 docs/single_terminal.png \
 docs/snapping.png \
 docs/tree-layout1.png \
 docs/tree-layout2.png \
 docs/tree-shot1.png \
 docs/tree-shot2.png \
 docs/tree-shot3.png \
 docs/tree-shot4.png \
 docs/two_columns.png \
 docs/two_terminals.png \
 docs/wsbar.dia \
 docs/wsbar.png \
 i3bar/LICENSE \
 libi3/README \
 $(asciidoc_MANS:.1=.man) \
 $(asciidoc_MANS:.1=.man) \
 man/asciidoc.conf.in \
 DEPENDS \
 I3_VERSION \
 LICENSE \
 PACKAGE-MAINTAINER \
 RELEASE-NOTES-4.18.1 \
 generate-command-parser.pl \
 parser-specs/commands.spec \
 parser-specs/config.spec \
 parser-specs/highlighting.vim \
 pseudo-doc.doxygen \
 testcases/complete-run.pl.in \
 testcases/i3-test.config \
 testcases/lib/i3test/Test.pm \
 testcases/lib/i3test/Util.pm \
 testcases/lib/i3test/XTEST.pm \
 testcases/lib/i3test.pm.in \
 testcases/lib/SocketActivation.pm \
 testcases/lib/StartXServer.pm \
 testcases/lib/StatusLine.pm \
 testcases/lib/TestWorker.pm \
 testcases/Makefile.PL \
 testcases/new-test \
 testcases/restart-state.golden \
 testcases/t \
 testcases/valgrind.supp

dirstamp = .dirstamp
dirstamps = \
 docs/$(dirstamp) \
 man/$(dirstamp) \
 parser/$(dirstamp) \
 etc/$(dirstamp)

DISTCLEANFILES = $(dirstamps)

docs_tocdir = ${docdir}
docs_notocdir = ${docdir}
docs_poddir = ${docdir}
dist_docs_toc_DATA = \
 docs/hacking-howto.html \
 docs/userguide.html \
 docs/ipc.html \
 docs/multi-monitor.html \
 docs/wsbar.html \
 docs/testsuite.html \
 docs/i3bar-protocol.html \
 docs/layout-saving.html

dist_docs_notoc_DATA = \
 docs/debugging.html

dist_docs_pod_DATA = \
 docs/lib-i3test.html \
 docs/lib-i3test-test.html

dist_man1_MANS = \
 $(asciidoc_MANS) \
 $(pod_MANS)

asciidoc_MANS = \
 man/i3.1 \
 man/i3bar.1 \
 man/i3-msg.1 \
 man/i3-input.1 \
 man/i3-nagbar.1 \
 man/i3-config-wizard.1 \
 man/i3-migrate-config-to-v4.1 \
 man/i3-sensible-editor.1 \
 man/i3-sensible-pager.1 \
 man/i3-sensible-terminal.1 \
 man/i3-dump-log.1

pod_MANS = \
 man/i3-dmenu-desktop.1 \
 man/i3-save-tree.1

AM_CPPFLAGS = \
 -DSYSCONFDIR="\"$(sysconfdir)\"" \
 -I$(top_builddir)/parser \
 -I$(top_srcdir)/include \
 -DSTRIPPED__FILE__=\"$$(basename $<)\"

i3_CFLAGS = \
 $(AM_CFLAGS) \
 $(libi3_CFLAGS) \
 $(LIBSN_CFLAGS) \
 $(XCB_CFLAGS) \
 $(XCB_UTIL_CURSOR_CFLAGS) \
 $(XCB_UTIL_KEYSYM_CFLAGS) \
 $(XCB_UTIL_WM_CFLAGS) \
 $(XCB_UTIL_XRM_CFLAGS) \
 $(XKBCOMMON_CFLAGS) \
 $(YAJL_CFLAGS) \
 $(LIBPCRE_CFLAGS) \
 $(PTHREAD_CFLAGS) \
 $(CODE_COVERAGE_CFLAGS)

i3_CPPFLAGS = \
 $(AM_CPPFLAGS) \
 $(CODE_COVERAGE_CPPFLAGS)

i3_LDADD = \
 $(libi3_LIBS) \
 $(LIBSN_LIBS) \
 $(XCB_LIBS) \
 $(XCB_UTIL_CURSOR_LIBS) \
 $(XCB_UTIL_KEYSYMS_LIBS) \
 $(XCB_UTIL_WM_LIBS) \
 $(XCB_UTIL_XRM_LIBS) \
 $(XKBCOMMON_LIBS) \
 $(YAJL_LIBS) \
 $(LIBPCRE_LIBS) \
 $(PANGOCAIRO_LIBS) \
 $(PTHREAD_LIBS) \
 $(CODE_COVERAGE_LDFLAGS)

libi3_CFLAGS = \
 $(AM_CFLAGS) \
 $(GLIBGOBJECT_CFLAGS) \
 $(XCB_CFLAGS) \
 $(XCB_UTIL_CFLAGS) \
 $(XCB_UTIL_XRM_CFLAGS) \
 $(YAJL_CFLAGS) \
 $(PANGOCAIRO_CFLAGS)

libi3_LIBS = \
 $(top_builddir)/libi3.a \
 $(GLIBGOBJECT_LIBS) \
 $(XCB_LIBS) \
 $(XCB_UTIL_LIBS) \
 $(XCB_UTIL_XRM_LIBS) \
 $(YAJL_LIBS) \
 $(PANGOCAIRO_LIBS)

libi3_a_CFLAGS = \
 $(libi3_CFLAGS)

libi3_a_SOURCES = \
 include/libi3.h \
 libi3/dpi.c \
 libi3/draw_util.c \
 libi3/fake_configure_notify.c \
 libi3/font.c \
 libi3/format_placeholders.c \
 libi3/g_utf8_make_valid.c \
 libi3/get_colorpixel.c \
 libi3/get_config_path.c \
 libi3/get_exe_path.c \
 libi3/get_mod_mask.c \
 libi3/get_process_filename.c \
 libi3/get_visualtype.c \
 libi3/ipc_connect.c \
 libi3/ipc_recv_message.c \
 libi3/ipc_send_message.c \
 libi3/is_debug_build.c \
 libi3/mkdirp.c \
 libi3/resolve_tilde.c \
 libi3/root_atom_contents.c \
 libi3/safewrappers.c \
 libi3/string.c \
 libi3/strndup.c \
 libi3/ucs2_conversion.c

i3_dump_log_CFLAGS = \
 $(AM_CFLAGS) \
 $(PTHREAD_CFLAGS) \
 $(libi3_CFLAGS)

i3_dump_log_LDADD = \
 $(PTHREAD_LIBS) \
 $(libi3_LIBS)

i3_dump_log_SOURCES = \
 i3-dump-log/main.c

i3_input_CFLAGS = \
 $(AM_CFLAGS) \
 $(libi3_CFLAGS)

i3_input_LDADD = \
 $(libi3_LIBS) \
 $(XCB_UTIL_KEYSYMS_LIBS)

i3_input_SOURCES = \
 i3-input/i3-input.h \
 i3-input/keysym2ucs.c \
 i3-input/keysym2ucs.h \
 i3-input/main.c

i3_msg_CFLAGS = \
 $(AM_CFLAGS) \
 $(libi3_CFLAGS)

i3_msg_LDADD = \
 $(libi3_LIBS)

i3_msg_SOURCES = \
 i3-msg/main.c

i3_nagbar_CFLAGS = \
 $(AM_CFLAGS) \
 $(LIBSN_CFLAGS) \
 $(libi3_CFLAGS)

i3_nagbar_LDADD = \
 $(libi3_LIBS) \
 $(LIBSN_LIBS) \
 $(XCB_UTIL_CURSOR_LIBS)

i3_nagbar_SOURCES = \
 i3-nagbar/i3-nagbar-atoms.xmacro.h \
 i3-nagbar/main.c

i3bar_CPPFLAGS = \
 $(AM_CPPFLAGS) \
 -I$(top_srcdir)/i3bar/include

i3bar_CFLAGS = \
 $(AM_CFLAGS) \
 $(libi3_CFLAGS) \
 $(XCB_CFLAGS) \
 $(XKBCOMMON_CFLAGS) \
 $(PANGOCAIRO_CFLAGS) \
 $(YAJL_CFLAGS)

i3bar_LDADD = \
 $(libi3_LIBS) \
 $(XCB_LIBS) \
 $(XCB_UTIL_CURSOR_LIBS) \
 $(XKBCOMMON_LIBS) \
 $(PANGOCAIRO_LIBS) \
 $(YAJL_LIBS)

i3bar_SOURCES = \
 i3bar/include/child.h \
 i3bar/include/common.h \
 i3bar/include/configuration.h \
 i3bar/include/ipc.h \
 i3bar/include/mode.h \
 i3bar/include/outputs.h \
 i3bar/include/parse_json_header.h \
 i3bar/include/trayclients.h \
 i3bar/include/util.h \
 i3bar/include/workspaces.h \
 i3bar/include/xcb_atoms.def \
 i3bar/include/xcb.h \
 i3bar/src/child.c \
 i3bar/src/config.c \
 i3bar/src/ipc.c \
 i3bar/src/main.c \
 i3bar/src/mode.c \
 i3bar/src/outputs.c \
 i3bar/src/parse_json_header.c \
 i3bar/src/workspaces.c \
 i3bar/src/xcb.c

i3_config_wizard_CFLAGS = \
 $(AM_CFLAGS) \
 $(libi3_CFLAGS) \
 $(LIBSN_CFLAGS) \
 $(XKBCOMMON_CFLAGS)

i3_config_wizard_LDADD = \
 $(libi3_LIBS) \
 $(LIBSN_LIBS) \
 $(XCB_UTIL_KEYSYMS_LIBS) \
 $(XKBCOMMON_LIBS)

i3_config_wizard_SOURCES = \
 i3-config-wizard/i3-config-wizard-atoms.xmacro.h \
 i3-config-wizard/main.c \
 i3-config-wizard/xcb.h

i3_config_wizard_DEPENDENCIES = \
 $(top_builddir)/libi3.a

test_inject_randr15_CPPFLAGS = \
 $(AM_CPPFLAGS)

test_inject_randr15_CFLAGS = \
 $(AM_CFLAGS) \
 $(i3_CFLAGS)

test_inject_randr15_SOURCES = \
 testcases/inject_randr1.5.c

test_inject_randr15_LDADD = \
 $(i3_LDADD)

test_commands_parser_CPPFLAGS = \
 $(AM_CPPFLAGS) \
 -DTEST_PARSER

test_commands_parser_CFLAGS = \
 $(AM_CFLAGS) \
 $(i3_CFLAGS)

test_commands_parser_SOURCES = \
 src/commands_parser.c

test_commands_parser_LDADD = \
 $(i3_LDADD)

test_config_parser_CPPFLAGS = \
 $(AM_CPPFLAGS) \
 -DTEST_PARSER

test_config_parser_CFLAGS = \
 $(AM_CFLAGS) \
 $(i3_CFLAGS)

test_config_parser_SOURCES = \
 src/config_parser.c

test_config_parser_LDADD = \
 $(i3_LDADD)

command_parser_SOURCES = \
 parser/GENERATED_command_enums.h \
 parser/GENERATED_command_tokens.h \
 parser/GENERATED_command_call.h

config_parser_SOURCES = \
 parser/GENERATED_config_enums.h \
 parser/GENERATED_config_tokens.h \
 parser/GENERATED_config_call.h

BUILT_SOURCES = $(command_parser_SOURCES) $(config_parser_SOURCES)
i3_SOURCES = \
 include/all.h \
 include/assignments.h \
 include/i3-atoms_NET_SUPPORTED.xmacro.h \
 include/i3-atoms_rest.xmacro.h \
 include/bindings.h \
 include/click.h \
 include/cmdparse.h \
 include/commands.h \
 include/commands_parser.h \
 include/config_directives.h \
 include/configuration.h \
 include/config_parser.h \
 include/con.h \
 include/data.h \
 include/display_version.h \
 include/drag.h \
 include/ewmh.h \
 include/fake_outputs.h \
 include/floating.h \
 include/handlers.h \
 include/i3.h \
 include/ipc.h \
 include/key_press.h \
 include/load_layout.h \
 include/log.h \
 include/main.h \
 include/manage.h \
 include/match.h \
 include/move.h \
 include/output.h \
 include/queue.h \
 include/randr.h \
 include/regex.h \
 include/render.h \
 include/resize.h \
 include/restore_layout.h \
 include/scratchpad.h \
 include/sd-daemon.h \
 include/shmlog.h \
 include/sighandler.h \
 include/startup.h \
 include/sync.h \
 include/tree.h \
 include/util.h \
 include/window.h \
 include/workspace.h \
 include/xcb.h \
 include/xcursor.h \
 include/x.h \
 include/xinerama.h \
 include/yajl_utils.h \
 src/assignments.c \
 src/bindings.c \
 src/click.c \
 src/commands.c \
 src/commands_parser.c \
 src/con.c \
 src/config.c \
 src/config_directives.c \
 src/config_parser.c \
 src/display_version.c \
 src/drag.c \
 src/ewmh.c \
 src/fake_outputs.c \
 src/floating.c \
 src/handlers.c \
 src/ipc.c \
 src/key_press.c \
 src/load_layout.c \
 src/log.c \
 src/main.c \
 src/manage.c \
 src/match.c \
 src/move.c \
 src/output.c \
 src/randr.c \
 src/regex.c \
 src/render.c \
 src/resize.c \
 src/restore_layout.c \
 src/scratchpad.c \
 src/sd-daemon.c \
 src/sighandler.c \
 src/startup.c \
 src/sync.c \
 src/tree.c \
 src/util.c \
 src/version.c \
 src/window.c \
 src/workspace.c \
 src/x.c \
 src/xcb.c \
 src/xcursor.c \
 src/xinerama.c

CLEANFILES = \
 i3-command-parser.stamp \
 i3-config-parser.stamp \
 anyevent-i3.stamp

all-configured : all-all
all all-all:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

am--refresh am--refresh-all:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done
$(srcdir)/Makefile.in:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done
Makefile:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

$(top_builddir)/config.status:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

$(top_srcdir)/configure:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done
$(ACLOCAL_M4):
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done
$(am__aclocal_m4_deps):
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

config.h:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

stamp-h1 stamp-h1-all:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done
$(srcdir)/config.h.in:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

distclean-hdr distclean-hdr-all:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done
testcases/lib/i3test.pm:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done
man/asciidoc.conf:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done
testcases/complete-run.pl:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done
install-binPROGRAMS:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

uninstall-binPROGRAMS:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

clean-binPROGRAMS:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

clean-checkPROGRAMS:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

clean-noinstLIBRARIES:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

libi3.a:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3$(EXEEXT):
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3-config-wizard$(EXEEXT):
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3-dump-log$(EXEEXT):
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3-input$(EXEEXT):
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3-msg$(EXEEXT):
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3-nagbar$(EXEEXT):
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3bar$(EXEEXT):
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

test.commands_parser$(EXEEXT):
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

test.config_parser$(EXEEXT):
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

test.inject_randr15$(EXEEXT):
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done
install-dist_binSCRIPTS:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

uninstall-dist_binSCRIPTS:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

mostlyclean-compile mostlyclean-compile-all:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

distclean-compile distclean-compile-all:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done


$(am__depfiles_remade):
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

am--depfiles am--depfiles-all:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done



libi3_a-dpi.o:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

libi3_a-dpi.obj:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

libi3_a-draw_util.o:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

libi3_a-draw_util.obj:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

libi3_a-fake_configure_notify.o:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

libi3_a-fake_configure_notify.obj:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

libi3_a-font.o:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

libi3_a-font.obj:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

libi3_a-format_placeholders.o:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

libi3_a-format_placeholders.obj:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

libi3_a-g_utf8_make_valid.o:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

libi3_a-g_utf8_make_valid.obj:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

libi3_a-get_colorpixel.o:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

libi3_a-get_colorpixel.obj:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

libi3_a-get_config_path.o:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

libi3_a-get_config_path.obj:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

libi3_a-get_exe_path.o:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

libi3_a-get_exe_path.obj:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

libi3_a-get_mod_mask.o:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

libi3_a-get_mod_mask.obj:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

libi3_a-get_process_filename.o:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

libi3_a-get_process_filename.obj:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

libi3_a-get_visualtype.o:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

libi3_a-get_visualtype.obj:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

libi3_a-ipc_connect.o:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

libi3_a-ipc_connect.obj:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

libi3_a-ipc_recv_message.o:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

libi3_a-ipc_recv_message.obj:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

libi3_a-ipc_send_message.o:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

libi3_a-ipc_send_message.obj:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

libi3_a-is_debug_build.o:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

libi3_a-is_debug_build.obj:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

libi3_a-mkdirp.o:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

libi3_a-mkdirp.obj:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

libi3_a-resolve_tilde.o:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

libi3_a-resolve_tilde.obj:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

libi3_a-root_atom_contents.o:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

libi3_a-root_atom_contents.obj:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

libi3_a-safewrappers.o:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

libi3_a-safewrappers.obj:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

libi3_a-string.o:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

libi3_a-string.obj:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

libi3_a-strndup.o:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

libi3_a-strndup.obj:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

libi3_a-ucs2_conversion.o:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

libi3_a-ucs2_conversion.obj:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3-assignments.o:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3-assignments.obj:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3-bindings.o:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3-bindings.obj:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3-click.o:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3-click.obj:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3-commands.o:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3-commands.obj:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3-commands_parser.o:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3-commands_parser.obj:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3-con.o:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3-con.obj:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3-config.o:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3-config.obj:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3-config_directives.o:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3-config_directives.obj:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3-config_parser.o:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3-config_parser.obj:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3-display_version.o:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3-display_version.obj:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3-drag.o:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3-drag.obj:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3-ewmh.o:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3-ewmh.obj:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3-fake_outputs.o:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3-fake_outputs.obj:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3-floating.o:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3-floating.obj:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3-handlers.o:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3-handlers.obj:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3-ipc.o:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3-ipc.obj:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3-key_press.o:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3-key_press.obj:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3-load_layout.o:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3-load_layout.obj:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3-log.o:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3-log.obj:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3-main.o:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3-main.obj:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3-manage.o:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3-manage.obj:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3-match.o:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3-match.obj:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3-move.o:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3-move.obj:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3-output.o:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3-output.obj:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3-randr.o:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3-randr.obj:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3-regex.o:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3-regex.obj:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3-render.o:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3-render.obj:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3-resize.o:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3-resize.obj:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3-restore_layout.o:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3-restore_layout.obj:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3-scratchpad.o:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3-scratchpad.obj:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3-sd-daemon.o:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3-sd-daemon.obj:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3-sighandler.o:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3-sighandler.obj:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3-startup.o:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3-startup.obj:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3-sync.o:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3-sync.obj:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3-tree.o:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3-tree.obj:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3-util.o:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3-util.obj:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3-version.o:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3-version.obj:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3-window.o:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3-window.obj:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3-workspace.o:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3-workspace.obj:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3-x.o:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3-x.obj:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3-xcb.o:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3-xcb.obj:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3-xcursor.o:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3-xcursor.obj:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3-xinerama.o:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3-xinerama.obj:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3_config_wizard-main.o:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3_config_wizard-main.obj:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3_dump_log-main.o:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3_dump_log-main.obj:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3_input-keysym2ucs.o:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3_input-keysym2ucs.obj:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3_input-main.o:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3_input-main.obj:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3_msg-main.o:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3_msg-main.obj:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3_nagbar-main.o:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3_nagbar-main.obj:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3bar-child.o:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3bar-child.obj:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3bar-config.o:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3bar-config.obj:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3bar-ipc.o:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3bar-ipc.obj:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3bar-main.o:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3bar-main.obj:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3bar-mode.o:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3bar-mode.obj:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3bar-outputs.o:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3bar-outputs.obj:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3bar-parse_json_header.o:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3bar-parse_json_header.obj:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3bar-workspaces.o:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3bar-workspaces.obj:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3bar-xcb.o:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3bar-xcb.obj:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

test_commands_parser-commands_parser.o:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

test_commands_parser-commands_parser.obj:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

test_config_parser-config_parser.o:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

test_config_parser-config_parser.obj:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

test_inject_randr15-inject_randr1.5.o:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

test_inject_randr15-inject_randr1.5.obj:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done
install-man1 install-man1-all:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

uninstall-man1 uninstall-man1-all:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done
install-dist_applicationsDATA:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

uninstall-dist_applicationsDATA:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done
install-dist_docs_notocDATA:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

uninstall-dist_docs_notocDATA:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done
install-dist_docs_podDATA:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

uninstall-dist_docs_podDATA:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done
install-dist_docs_tocDATA:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

uninstall-dist_docs_tocDATA:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done
install-dist_i3confDATA:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

uninstall-dist_i3confDATA:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done
install-dist_xsessionsDATA:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

uninstall-dist_xsessionsDATA:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done
install-i3includeHEADERS:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

uninstall-i3includeHEADERS:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

ID:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done
tags tags-all:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done
TAGS:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

tags-am tags-am-all:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done
ctags ctags-all:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

CTAGS:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done
ctags-am ctags-am-all:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

GTAGS:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done
cscope cscope-all:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done
clean-cscope clean-cscope-all:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done
cscope.files:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done
cscopelist cscopelist-all:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

cscopelist-am cscopelist-am-all:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

distclean-tags distclean-tags-all:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done


am--fnord am--fnord-all $(TEST_LOGS) $(TEST_LOGS:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done
am--force-recheck am--force-recheck-all:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

$(TEST_SUITE_LOG):
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

check-TESTS:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done
recheck recheck-all:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done
testcases/complete-run.pl.log:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

distdir distdir-all:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

distdir-am distdir-am-all:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done
dist-gzip dist-gzip-all:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh ./config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; found=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$found $(PACKAGE)-$(VERSION).*" \
	; if test "$$found" -eq "0" ; then : \
	; BUILD=` grep "^#### .*|" Makefile |tail -1| sed -e 's/.*|//' ` \
	; fi ; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; for f in $$i/$(PACKAGE)-$(VERSION).* \
	; do test -f "$$f" && mv "$$f" $(PUB). ; done ; break ; done
dist-bzip2 dist-bzip2-all:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh ./config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; found=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$found $(PACKAGE)-$(VERSION).*" \
	; if test "$$found" -eq "0" ; then : \
	; BUILD=` grep "^#### .*|" Makefile |tail -1| sed -e 's/.*|//' ` \
	; fi ; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; for f in $$i/$(PACKAGE)-$(VERSION).* \
	; do test -f "$$f" && mv "$$f" $(PUB). ; done ; break ; done

dist-lzip dist-lzip-all:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh ./config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; found=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$found $(PACKAGE)-$(VERSION).*" \
	; if test "$$found" -eq "0" ; then : \
	; BUILD=` grep "^#### .*|" Makefile |tail -1| sed -e 's/.*|//' ` \
	; fi ; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; for f in $$i/$(PACKAGE)-$(VERSION).* \
	; do test -f "$$f" && mv "$$f" $(PUB). ; done ; break ; done

dist-xz dist-xz-all:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh ./config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; found=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$found $(PACKAGE)-$(VERSION).*" \
	; if test "$$found" -eq "0" ; then : \
	; BUILD=` grep "^#### .*|" Makefile |tail -1| sed -e 's/.*|//' ` \
	; fi ; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; for f in $$i/$(PACKAGE)-$(VERSION).* \
	; do test -f "$$f" && mv "$$f" $(PUB). ; done ; break ; done

dist-zstd dist-zstd-all:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh ./config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; found=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$found $(PACKAGE)-$(VERSION).*" \
	; if test "$$found" -eq "0" ; then : \
	; BUILD=` grep "^#### .*|" Makefile |tail -1| sed -e 's/.*|//' ` \
	; fi ; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; for f in $$i/$(PACKAGE)-$(VERSION).* \
	; do test -f "$$f" && mv "$$f" $(PUB). ; done ; break ; done

dist-tarZ dist-tarZ-all:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh ./config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; found=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$found $(PACKAGE)-$(VERSION).*" \
	; if test "$$found" -eq "0" ; then : \
	; BUILD=` grep "^#### .*|" Makefile |tail -1| sed -e 's/.*|//' ` \
	; fi ; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; for f in $$i/$(PACKAGE)-$(VERSION).* \
	; do test -f "$$f" && mv "$$f" $(PUB). ; done ; break ; done

dist-shar dist-shar-all:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh ./config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; found=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$found $(PACKAGE)-$(VERSION).*" \
	; if test "$$found" -eq "0" ; then : \
	; BUILD=` grep "^#### .*|" Makefile |tail -1| sed -e 's/.*|//' ` \
	; fi ; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; for f in $$i/$(PACKAGE)-$(VERSION).* \
	; do test -f "$$f" && mv "$$f" $(PUB). ; done ; break ; done

dist-zip dist-zip-all:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh ./config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; found=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$found $(PACKAGE)-$(VERSION).*" \
	; if test "$$found" -eq "0" ; then : \
	; BUILD=` grep "^#### .*|" Makefile |tail -1| sed -e 's/.*|//' ` \
	; fi ; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; for f in $$i/$(PACKAGE)-$(VERSION).* \
	; do test -f "$$f" && mv "$$f" $(PUB). ; done ; break ; done

dist dist-all:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; found=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$found $(PACKAGE)-$(VERSION).tar.*" \
	; if test "$$found" -eq "0" ; then : \
	; BUILD=` grep "^#### .*|" Makefile |tail -1| sed -e 's/.*|//' ` \
	; fi ; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; for f in $$i/$(PACKAGE)-$(VERSION).tar.* \
	; do test -f "$$f" && mv "$$f" $(PUB). ; done ; break ; done

distcheck distcheck-all:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done
distuninstallcheck distuninstallcheck-all:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done
distcleancheck distcleancheck-all:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done
check-am check-am-all:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done
check check-all:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done
all-am all-am-all:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done
installdirs installdirs-all:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done
install install-all:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done
install-exec install-exec-all:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done
install-data install-data-all:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done
uninstall uninstall-all:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

install-am install-am-all:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

installcheck installcheck-all:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done
install-strip install-strip-all:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done
mostlyclean-generic mostlyclean-generic-all:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

clean-generic clean-generic-all:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

distclean-generic distclean-generic-all:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

maintainer-clean-generic maintainer-clean-generic-all:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done
clean clean-all:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

clean-am clean-am-all:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

distclean distclean-all:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### .*|" Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@ (all local builds)" \
	; test ".$$BUILD" = "." && BUILD="." \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; echo "# rm -r $$i"; done ; echo "# (sleep 3)" ; sleep 3 \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; echo "$$i" | grep "^/" > /dev/null && continue \
	; echo "$$i" | grep "^../" > /dev/null && continue \
	; echo "rm -r $$i"; (rm -r "$$i") ; done ; rm Makefile
distclean-am distclean-am-all:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

dvi dvi-all:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

dvi-am dvi-am-all:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

html html-all:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

html-am html-am-all:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

info info-all:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

info-am info-am-all:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

install-data-am install-data-am-all:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

install-dvi install-dvi-all:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

install-dvi-am install-dvi-am-all:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

install-exec-am install-exec-am-all:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done
install-html install-html-all:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

install-html-am install-html-am-all:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

install-info install-info-all:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

install-info-am install-info-am-all:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

install-man install-man-all:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

install-pdf install-pdf-all:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

install-pdf-am install-pdf-am-all:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

install-ps install-ps-all:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

install-ps-am install-ps-am-all:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

installcheck-am installcheck-am-all:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

maintainer-clean maintainer-clean-all:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done
maintainer-clean-am maintainer-clean-am-all:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

mostlyclean mostlyclean-all:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

mostlyclean-am mostlyclean-am-all:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

pdf pdf-all:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

pdf-am pdf-am-all:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

ps ps-all:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

ps-am ps-am-all:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

uninstall-am uninstall-am-all:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done
uninstall-man uninstall-man-all:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done





CODE_COVERAGE_DIRECTORY ?= $(top_builddir)
CODE_COVERAGE_OUTPUT_FILE ?= $(PACKAGE_NAME)-$(PACKAGE_VERSION)-coverage.info
CODE_COVERAGE_OUTPUT_DIRECTORY ?= $(PACKAGE_NAME)-$(PACKAGE_VERSION)-coverage
CODE_COVERAGE_BRANCH_COVERAGE ?=
CODE_COVERAGE_LCOV_SHOPTS_DEFAULT ?= $(if $(CODE_COVERAGE_BRANCH_COVERAGE),\
--rc lcov_branch_coverage=$(CODE_COVERAGE_BRANCH_COVERAGE))
CODE_COVERAGE_LCOV_SHOPTS ?= $(CODE_COVERAGE_LCOV_SHOPTS_DEFAULT)
CODE_COVERAGE_LCOV_OPTIONS_GCOVPATH ?= --gcov-tool "$(GCOV)"
CODE_COVERAGE_LCOV_OPTIONS_DEFAULT ?= $(CODE_COVERAGE_LCOV_OPTIONS_GCOVPATH)
CODE_COVERAGE_LCOV_OPTIONS ?= $(CODE_COVERAGE_LCOV_OPTIONS_DEFAULT)
CODE_COVERAGE_LCOV_RMOPTS_DEFAULT ?=
CODE_COVERAGE_LCOV_RMOPTS ?= $(CODE_COVERAGE_LCOV_RMOPTS_DEFAULT)
CODE_COVERAGE_GENHTML_OPTIONS_DEFAULT ?=\
$(if $(CODE_COVERAGE_BRANCH_COVERAGE),\
--rc genhtml_branch_coverage=$(CODE_COVERAGE_BRANCH_COVERAGE))
CODE_COVERAGE_GENHTML_OPTIONS ?= $(CODE_COVERAGE_GENHTML_OPTIONS_DEFAULTS)
CODE_COVERAGE_IGNORE_PATTERN ?=

code_coverage_v_lcov_cap = $(code_coverage_v_lcov_cap_$(V))
code_coverage_v_lcov_cap_ = $(code_coverage_v_lcov_cap_$(AM_DEFAULT_VERBOSITY))
code_coverage_v_lcov_cap_0 = @echo "  LCOV   --capture"\
 $(CODE_COVERAGE_OUTPUT_FILE);
code_coverage_v_lcov_ign = $(code_coverage_v_lcov_ign_$(V))
code_coverage_v_lcov_ign_ = $(code_coverage_v_lcov_ign_$(AM_DEFAULT_VERBOSITY))
code_coverage_v_lcov_ign_0 = @echo "  LCOV   --remove /tmp/*"\
 $(CODE_COVERAGE_IGNORE_PATTERN);
code_coverage_v_genhtml = $(code_coverage_v_genhtml_$(V))
code_coverage_v_genhtml_ = $(code_coverage_v_genhtml_$(AM_DEFAULT_VERBOSITY))
code_coverage_v_genhtml_0 = @echo "  GEN   " $(CODE_COVERAGE_OUTPUT_DIRECTORY);
code_coverage_quiet = $(code_coverage_quiet_$(V))
code_coverage_quiet_ = $(code_coverage_quiet_$(AM_DEFAULT_VERBOSITY))
code_coverage_quiet_0 = --quiet

code_coverage_sanitize = $(subst -,_,$(subst .,_,$(1)))

check-code-coverage check-code-coverage-all:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

code-coverage-capture code-coverage-capture-all:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

code-coverage-capture-hook code-coverage-capture-hook-all:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

clean clean-all:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done
code-coverage-clean code-coverage-clean-all:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

GITIGNOREFILES ?=
GITIGNOREFILES += $(CODE_COVERAGE_OUTPUT_FILE) $(CODE_COVERAGE_OUTPUT_DIRECTORY)

AM_DISTCHECK_CONFIGURE_FLAGS ?=
AM_DISTCHECK_CONFIGURE_FLAGS += --disable-code-coverage


echo-version echo-version-all:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

install-exec-hook install-exec-hook-all:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

uninstall-hook uninstall-hook-all:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

etc/config:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

etc/config.keycodes:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

clean-check clean-check-all:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done
clean-local clean-local-all:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

$(dirstamps):
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

$(dist_docs_toc_DATA):
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

$(dist_docs_notoc_DATA):
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

docs/lib-i3test.html:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

docs/lib-i3test-test.html:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

$(asciidoc_MANS):
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

man/%.xml:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

$(pod_MANS):
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done


$(command_parser_SOURCES):
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

$(config_parser_SOURCES):
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

src/i3-commands_parser.$(OBJEXT):
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

src/i3-config_parser.$(OBJEXT):
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3-command-parser.stamp:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

i3-config-parser.stamp:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done


anyevent-i3.stamp:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done


bear bear-all:
	@ HOST="$(HOST)" \
	; test ".$$HOST" = "." && HOST=` sh /home/muhmud/code/github.com/muhmud/i3/config.guess ` \
	; BUILD=` grep "^#### $$HOST " Makefile | sed -e 's/.*|//' ` \
	; use=` basename "$@" -all `; n=` echo $$BUILD | wc -w ` \
	; echo "MAKE $$HOST : $$n * $@"; if test "$$n" -eq "0" ; then : \
	; BUILD=` grep "^####.*|" Makefile |tail -1| sed -e 's/.*|//' ` ; fi \
	; test ".$$BUILD" = "." && BUILD="." \
	; test "$$use" = "$@" && BUILD=` echo "$$BUILD" | tail -1 ` \
	; for i in $$BUILD ; do test ".$$i" = "." && continue \
	; (cd "$$i" && test ! -f configure && $(MAKE) $$use) || exit; done

#### CONFIGURATIONS FOR TOPLEVEL MAKEFILE: 
####  |x86_64-pc-linux-gnu
