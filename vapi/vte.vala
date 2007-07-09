[CCode (cprefix = "Vte", lower_case_cprefix = "vte_", cheader_filename = "vte/vte.h")]
namespace Vte {
	[CCode (cprefix = "VTE_ANTI_ALIAS_")]
	public enum TerminalAntiAlias {
		USE_DEFAULT,
		FORCE_ENABLE,
		FORCE_DISABLE,
	}
	[CCode (cprefix = "VTE_ERASE_")]
	public enum TerminalEraseBinding {
		AUTO,
		ASCII_BACKSPACE,
		ASCII_DELETE,
		DELETE_SEQUENCE,
	}
	[CCode (cheader_filename = "vte/reaper.h")]
	public class Reaper : GLib.Object {
		public static int add_child (GLib.Pid pid);
		public static weak Vte.Reaper get ();
		public static GLib.Type get_type ();
		public signal void child_exited (int p0, int p1);
	}
	[CCode (cheader_filename = "vte/vte.h")]
	public class Terminal : Gtk.Widget {
		public weak Gtk.Adjustment adjustment;
		public long char_width;
		public long char_height;
		public long char_ascent;
		public long char_descent;
		public long row_count;
		public long column_count;
		public weak string window_title;
		public weak string icon_title;
		public void copy_clipboard ();
		public void copy_primary ();
		public void feed (string data, long length);
		public void feed_child (string text, long length);
		public void feed_child_binary (string data, long length);
		public int fork_command (string command, string argv, string envv, string directory, bool lastlog, bool utmp, bool wtmp);
		public int forkpty (string envv, string directory, bool lastlog, bool utmp, bool wtmp);
		public weak Gtk.Adjustment get_adjustment ();
		public bool get_allow_bold ();
		public bool get_audible_bell ();
		public long get_char_ascent ();
		public long get_char_descent ();
		public long get_char_height ();
		public long get_char_width ();
		public long get_column_count ();
		public void get_cursor_position (long column, long row);
		public weak string get_default_emulation ();
		public weak string get_emulation ();
		public weak string get_encoding ();
		public weak Pango.FontDescription get_font ();
		public bool get_has_selection ();
		public weak string get_icon_title ();
		public bool get_mouse_autohide ();
		public void get_padding (int xpad, int ypad);
		public long get_row_count ();
		public weak string get_status_line ();
		public weak string get_text (Vte.IsSelectedFunc is_selected, pointer data, GLib.Array attributes);
		public weak string get_text_include_trailing_spaces (Vte.IsSelectedFunc is_selected, pointer data, GLib.Array attributes);
		public weak string get_text_range (long start_row, long start_col, long end_row, long end_col, Vte.IsSelectedFunc is_selected, pointer data, GLib.Array attributes);
		public static weak Gtk.Type get_type ();
		public bool get_using_xft ();
		public bool get_visible_bell ();
		public weak string get_window_title ();
		public void im_append_menuitems (Gtk.MenuShell menushell);
		public bool is_word_char (unichar c);
		public int match_add (string match);
		public weak string match_check (long column, long row, int tag);
		public void match_clear_all ();
		public void match_remove (int tag);
		public void match_set_cursor (int tag, Gdk.Cursor cursor);
		public void match_set_cursor_type (int tag, Gdk.CursorType cursor_type);
		public Terminal ();
		public void paste_clipboard ();
		public void paste_primary ();
		public void reset (bool full, bool clear_history);
		public void select_all ();
		public void select_none ();
		public void set_allow_bold (bool allow_bold);
		public void set_audible_bell (bool is_audible);
		public void set_background_image (Gdk.Pixbuf image);
		public void set_background_image_file (string path);
		public void set_background_saturation (double saturation);
		public void set_background_tint_color (Gdk.Color color);
		public void set_background_transparent (bool transparent);
		public void set_backspace_binding (Vte.TerminalEraseBinding binding);
		public void set_color_background (Gdk.Color background);
		public void set_color_bold (Gdk.Color bold);
		public void set_color_cursor (Gdk.Color cursor_background);
		public void set_color_dim (Gdk.Color dim);
		public void set_color_foreground (Gdk.Color foreground);
		public void set_color_highlight (Gdk.Color highlight_background);
		public void set_colors (Gdk.Color foreground, Gdk.Color background, Gdk.Color palette, long palette_size);
		public void set_cursor_blinks (bool blink);
		public void set_default_colors ();
		public void set_delete_binding (Vte.TerminalEraseBinding binding);
		public void set_emulation (string emulation);
		public void set_encoding (string codeset);
		public void set_font (Pango.FontDescription font_desc);
		public void set_font_from_string (string name);
		public void set_font_from_string_full (string name, Vte.TerminalAntiAlias antialias);
		public void set_font_full (Pango.FontDescription font_desc, Vte.TerminalAntiAlias antialias);
		public void set_mouse_autohide (bool setting);
		public void set_opacity (ushort opacity);
		public void set_pty (int pty_master);
		public void set_scroll_background (bool scroll);
		public void set_scroll_on_keystroke (bool scroll);
		public void set_scroll_on_output (bool scroll);
		public void set_scrollback_lines (long lines);
		public void set_size (long columns, long rows);
		public void set_visible_bell (bool is_visible);
		public void set_word_chars (string spec);
		public signal void child_exited ();
		public signal void window_title_changed ();
		public signal void icon_title_changed ();
		public signal void encoding_changed ();
		public signal void commit (string text, uint size);
		public signal void emulation_changed ();
		public signal void char_size_changed (uint char_width, uint char_height);
		public signal void selection_changed ();
		public signal void contents_changed ();
		public signal void cursor_moved ();
		public signal void deiconify_window ();
		public signal void iconify_window ();
		public signal void raise_window ();
		public signal void lower_window ();
		public signal void refresh_window ();
		public signal void restore_window ();
		public signal void maximize_window ();
		public signal void resize_window (uint width, uint height);
		public signal void move_window (uint x, uint y);
		public signal void status_line_changed ();
		public signal void increase_font_size ();
		public signal void decrease_font_size ();
		public signal void text_modified ();
		public signal void text_inserted ();
		public signal void text_deleted ();
		public signal void text_scrolled (int delta);
	}
	[CCode (cheader_filename = "vte/vteaccess.h")]
	public class TerminalAccessible : Gtk.Accessible, Atk.Text, Atk.Component, Atk.Action {
		public static weak Gtk.Type get_type ();
		public TerminalAccessible (Vte.Terminal terminal);
	}
	[CCode (cheader_filename = "vte/vte.h")]
	public class TerminalAccessibleFactory : Atk.ObjectFactory {
		public static weak Gtk.Type get_type ();
		public TerminalAccessibleFactory ();
	}
	[ReferenceType]
	public struct CharAttributes {
		public long row;
		public long column;
		public Gdk.Color fore;
		public Gdk.Color back;
		public uint underline;
		public uint strikethrough;
	}
	public static delegate bool IsSelectedFunc (Vte.Terminal terminal, long column, long row, pointer data);
}
