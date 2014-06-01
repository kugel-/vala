namespace Gtk {
	[Deprecated (since = "3.10")]
	public delegate void ActionCallback (Action action);
	public delegate bool AccelGroupActivate (Gtk.AccelGroup accel_group, GLib.Object acceleratable, uint keyval, Gdk.ModifierType modifier);
	public delegate bool AccelGroupFindFunc (Gtk.AccelKey key, GLib.Closure closure);
	public delegate void RadioActionCallback (Gtk.Action action, Gtk.Action current);

	[Compact]
	class BindingEntry {
		public static void add_signal (Gtk.BindingSet binding_set, uint keyval, Gdk.ModifierType modifiers, string signal_name, uint n_args, ...);
	}

	[Compact]
	public class BindingSet {
		[CCode (has_construct_function = false)]
		public BindingSet (string set_name);
	}

	public abstract class Container : Gtk.Widget {
		[CCode (vfunc_name = "forall")]
		[NoWrapper]
		public virtual void forall_internal (bool include_internal, Gtk.Callback callback);
		[HasEmitter]
		public virtual signal void set_focus_child (Gtk.Widget? child);
	}

	public class CssProvider : GLib.Object {
		public bool load_from_data (string data, ssize_t length = -1) throws GLib.Error;
	}

	[Compact]
	public class SelectionData {
		[CCode (array_length_pos = 0.1, cname = "gtk_selection_data_get_data_with_length")]
		public unowned uint8[] get_data ();
	}

	public class Style : GLib.Object {
		[NoWrapper]
		public virtual Gtk.Style clone ();
		public Gtk.Style copy ();
		[CCode (instance_pos = -1, vfunc_name = "copy")]
		[NoWrapper]
		public virtual void copy_to (Gtk.Style dest);
	}

	public struct TextAppearance {
		public Gdk.Color bg_color;
		public uint draw_bg;
		public Gdk.Color fg_color;
		public uint inside_selection;
		public uint is_text;
		public Gdk.RGBA? rgba[2];
		public int rise;
		public uint strikethrough;
		public uint underline;
	}

	public class Widget : GLib.Object {
		[NoWrapper, Deprecated, CCode (vfunc_name = "get_preferred_height_for_width")]
		public virtual void get_preferred_height_for_width_internal (int width, out int minimum_height, out int natural_height);
		[NoWrapper, Deprecated, CCode (vfunc_name = "get_preferred_height")]
		public virtual void get_preferred_height_internal (out int minimum_height, out int natural_height);
		[NoWrapper, Deprecated, CCode (vfunc_name = "get_preferred_width_for_height")]
		public virtual void get_preferred_width_for_height_internal (int height, out int minimum_width, out int natural_width);
		[NoWrapper, Deprecated, CCode (vfunc_name = "get_preferred_width")]
		public virtual void get_preferred_width_internal (out int minimum_width, out int natural_width);
	}

	public interface Editable : GLib.Object {
		[NoWrapper]
		public abstract void do_insert_text (string new_text, int new_text_length, ref int position);
		[NoWrapper]
		public abstract void do_delete_text (int start_pos, int end_pos);
	}

	public struct BindingArg {
		[CCode (cname = "d.long_data")]
		public long long_data;
		[CCode (cname = "d.double_data")]
		public double double_data;
		[CCode (cname = "d.string_data")]
		public weak string string_data;
	}

	[Deprecated (since = "3.10")]
	public static Gtk.IconSize icon_size_from_name (string name);
	[Deprecated (since = "3.10")]
	public static unowned string icon_size_get_name (Gtk.IconSize size);
	public static bool icon_size_lookup (Gtk.IconSize size, out int width, out int height);
	[Deprecated (since = "3.10")]
	public static bool icon_size_lookup_for_settings (Gtk.Settings settings, Gtk.IconSize size, out int width, out int height);
	[Deprecated (since = "3.10")]
	public static Gtk.IconSize icon_size_register (string name, int width, int height);
	[Deprecated (since = "3.10")]
	public static void icon_size_register_alias (string alias, Gtk.IconSize target);

	public enum NumberUpLayout {
		[Deprecated (since = "vala-0.24", replacement = "LRTB")]
		LEFT_TO_RIGHT_TOP_TO_BOTTOM,
		[Deprecated (since = "vala-0.24", replacement = "LRBT")]
		LEFT_TO_RIGHT_BOTTOM_TO_TOP,
		[Deprecated (since = "vala-0.24", replacement = "RLTB")]
		RIGHT_TO_LEFT_TOP_TO_BOTTOM,
		[Deprecated (since = "vala-0.24", replacement = "RLBT")]
		RIGHT_TO_LEFT_BOTTOM_TO_TOP,
		[Deprecated (since = "vala-0.24", replacement = "TBLR")]
		TOP_TO_BOTTOM_LEFT_TO_RIGHT,
		[Deprecated (since = "vala-0.24", replacement = "TBRL")]
		TOP_TO_BOTTOM_RIGHT_TO_LEFT,
		[Deprecated (since = "vala-0.24", replacement = "BTLR")]
		BOTTOM_TO_TOP_LEFT_TO_RIGHT,
		[Deprecated (since = "vala-0.24", replacement = "BTRL")]
		BOTTOM_TO_TOP_RIGHT_TO_LEFT
	}

	[CCode (cname = "gint", has_type_id = false)]
	public enum SortColumn {
		[CCode (cname = "GTK_TREE_SORTABLE_DEFAULT_SORT_COLUMN_ID")]
		DEFAULT,
		[CCode (cname = "GTK_TREE_SORTABLE_UNSORTED_SORT_COLUMN_ID")]
		UNSORTED
	}

	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.ABOUT")]
	public const string STOCK_ABOUT;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.ADD")]
	public const string STOCK_ADD;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.APPLY")]
	public const string STOCK_APPLY;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.BOLD")]
	public const string STOCK_BOLD;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.CANCEL")]
	public const string STOCK_CANCEL;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.CAPS_LOCK_WARNING")]
	public const string STOCK_CAPS_LOCK_WARNING;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.CDROM")]
	public const string STOCK_CDROM;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.CLEAR")]
	public const string STOCK_CLEAR;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.CLOSE")]
	public const string STOCK_CLOSE;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.COLOR_PICKER")]
	public const string STOCK_COLOR_PICKER;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.CONNECT")]
	public const string STOCK_CONNECT;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.CONVERT")]
	public const string STOCK_CONVERT;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.COPY")]
	public const string STOCK_COPY;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.CUT")]
	public const string STOCK_CUT;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.DELETE")]
	public const string STOCK_DELETE;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.DIALOG_AUTHENTICATION")]
	public const string STOCK_DIALOG_AUTHENTICATION;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.DIALOG_ERROR")]
	public const string STOCK_DIALOG_ERROR;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.DIALOG_INFO")]
	public const string STOCK_DIALOG_INFO;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.DIALOG_QUESTION")]
	public const string STOCK_DIALOG_QUESTION;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.DIALOG_WARNING")]
	public const string STOCK_DIALOG_WARNING;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.DIRECTORY")]
	public const string STOCK_DIRECTORY;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.DISCARD")]
	public const string STOCK_DISCARD;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.DISCONNECT")]
	public const string STOCK_DISCONNECT;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.DND")]
	public const string STOCK_DND;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.DND_MULTIPLE")]
	public const string STOCK_DND_MULTIPLE;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.EDIT")]
	public const string STOCK_EDIT;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.EXECUTE")]
	public const string STOCK_EXECUTE;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.FILE")]
	public const string STOCK_FILE;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.FIND")]
	public const string STOCK_FIND;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.FIND_AND_REPLACE")]
	public const string STOCK_FIND_AND_REPLACE;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.FLOPPY")]
	public const string STOCK_FLOPPY;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.FULLSCREEN")]
	public const string STOCK_FULLSCREEN;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.GOTO_BOTTOM")]
	public const string STOCK_GOTO_BOTTOM;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.GOTO_FIRST")]
	public const string STOCK_GOTO_FIRST;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.GOTO_LAST")]
	public const string STOCK_GOTO_LAST;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.GOTO_TOP")]
	public const string STOCK_GOTO_TOP;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.GO_BACK")]
	public const string STOCK_GO_BACK;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.GO_DOWN")]
	public const string STOCK_GO_DOWN;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.GO_FORWARD")]
	public const string STOCK_GO_FORWARD;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.GO_UP")]
	public const string STOCK_GO_UP;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.HARDDISK")]
	public const string STOCK_HARDDISK;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.HELP")]
	public const string STOCK_HELP;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.HOME")]
	public const string STOCK_HOME;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.INDENT")]
	public const string STOCK_INDENT;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.INDEX")]
	public const string STOCK_INDEX;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.INFO")]
	public const string STOCK_INFO;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.ITALIC")]
	public const string STOCK_ITALIC;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.JUMP_TO")]
	public const string STOCK_JUMP_TO;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.JUSTIFY_CENTER")]
	public const string STOCK_JUSTIFY_CENTER;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.JUSTIFY_FILL")]
	public const string STOCK_JUSTIFY_FILL;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.JUSTIFY_LEFT")]
	public const string STOCK_JUSTIFY_LEFT;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.JUSTIFY_RIGHT")]
	public const string STOCK_JUSTIFY_RIGHT;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.FULLSCREEN")]
	public const string STOCK_LEAVE_FULLSCREEN;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.MEDIA_FORWARD")]
	public const string STOCK_MEDIA_FORWARD;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.MEDIA_NEXT")]
	public const string STOCK_MEDIA_NEXT;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.MEDIA_PAUSE")]
	public const string STOCK_MEDIA_PAUSE;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.MEDIA_PLAY")]
	public const string STOCK_MEDIA_PLAY;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.MEDIA_PREVIOUS")]
	public const string STOCK_MEDIA_PREVIOUS;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.MEDIA_RECORD")]
	public const string STOCK_MEDIA_RECORD;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.MEDIA_REWIND")]
	public const string STOCK_MEDIA_REWIND;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.MEDIA_STOP")]
	public const string STOCK_MEDIA_STOP;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.MISSING_IMAGE")]
	public const string STOCK_MISSING_IMAGE;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.NETWORK")]
	public const string STOCK_NETWORK;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.NEW")]
	public const string STOCK_NEW;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.NO")]
	public const string STOCK_NO;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.OK")]
	public const string STOCK_OK;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.OPEN")]
	public const string STOCK_OPEN;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.ORIENTATION_LANDSCAPE")]
	public const string STOCK_ORIENTATION_LANDSCAPE;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.ORIENTATION_PORTRAIT")]
	public const string STOCK_ORIENTATION_PORTRAIT;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.ORIENTATION_REVERSE_LANDSCAPE")]
	public const string STOCK_ORIENTATION_REVERSE_LANDSCAPE;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.ORIENTATION_REVERSE_PORTRAIT")]
	public const string STOCK_ORIENTATION_REVERSE_PORTRAIT;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.PAGE_SETUP")]
	public const string STOCK_PAGE_SETUP;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.PASTE")]
	public const string STOCK_PASTE;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.PREFERENCES")]
	public const string STOCK_PREFERENCES;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.PRINT")]
	public const string STOCK_PRINT;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.PRINT_ERROR")]
	public const string STOCK_PRINT_ERROR;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.PRINT_PAUSED")]
	public const string STOCK_PRINT_PAUSED;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.PRINT_PREVIEW")]
	public const string STOCK_PRINT_PREVIEW;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.PRINT_REPORT")]
	public const string STOCK_PRINT_REPORT;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.PRINT_WARNING")]
	public const string STOCK_PRINT_WARNING;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.PROPERTIES")]
	public const string STOCK_PROPERTIES;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.QUIT")]
	public const string STOCK_QUIT;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.REDO")]
	public const string STOCK_REDO;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.REFRESH")]
	public const string STOCK_REFRESH;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.REMOVE")]
	public const string STOCK_REMOVE;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.REVERT_TO_SAVED")]
	public const string STOCK_REVERT_TO_SAVED;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.SAVE")]
	public const string STOCK_SAVE;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.SAVE_AS")]
	public const string STOCK_SAVE_AS;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.SELECT_ALL")]
	public const string STOCK_SELECT_ALL;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.SELECT_COLOR")]
	public const string STOCK_SELECT_COLOR;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.SELECT_FONT")]
	public const string STOCK_SELECT_FONT;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.SORT_ASCENDING")]
	public const string STOCK_SORT_ASCENDING;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.SORT_DESCENDING")]
	public const string STOCK_SORT_DESCENDING;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.SPELL_CHECK")]
	public const string STOCK_SPELL_CHECK;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.STOP")]
	public const string STOCK_STOP;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.STRIKETHROUGH")]
	public const string STOCK_STRIKETHROUGH;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.UNDELETE")]
	public const string STOCK_UNDELETE;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.UNDERLINE")]
	public const string STOCK_UNDERLINE;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.UNDO")]
	public const string STOCK_UNDO;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.UNINDENT")]
	public const string STOCK_UNINDENT;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.YES")]
	public const string STOCK_YES;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.ZOOM_100")]
	public const string STOCK_ZOOM_100;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.ZOOM_FIT")]
	public const string STOCK_ZOOM_FIT;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.ZOOM_IN")]
	public const string STOCK_ZOOM_IN;
	[Deprecated (since = "vala-0.12", replacement = "Gtk.Stock.ZOOM_OUT")]
	public const string STOCK_ZOOM_OUT;

	public static void drag_dest_set (Gtk.Widget widget, Gtk.DestDefaults flags, Gtk.TargetEntry[] targets, Gdk.DragAction actions);
	public static void drag_source_set (Gtk.Widget widget, Gdk.ModifierType start_button_mask, Gtk.TargetEntry[] targets, Gdk.DragAction actions);

	[Deprecated (replacement = "StyleContext.render_focus", since = "vala-0.16")]
	public static void render_focus (Gtk.StyleContext context, Cairo.Context cr, double x, double y, double width, double height);
	[Deprecated (replacement = "StyleContext.render_frame", since = "vala-0.16")]
	public static void render_frame (Gtk.StyleContext context, Cairo.Context cr, double x, double y, double width, double height);
	[Deprecated (replacement = "StyleContext.render_frame_gap", since = "vala-0.16")]
	public static void render_frame_gap (Gtk.StyleContext context, Cairo.Context cr, double x, double y, double width, double height, Gtk.PositionType gap_side, double xy0_gap, double xy1_gap);
	[Deprecated (replacement = "StyleContext.render_handle", since = "vala-0.16")]
	public static void render_handle (Gtk.StyleContext context, Cairo.Context cr, double x, double y, double width, double height);
	[Deprecated (replacement = "StyleContext.render_icon", since = "vala-0.16")]
	public static void render_icon (Gtk.StyleContext context, Cairo.Context cr, Gdk.Pixbuf pixbuf, double x, double y);
	[Deprecated (replacement = "StyleContext.render_icon_pixbuf", since = "vala-0.16")]
	public static unowned Gdk.Pixbuf render_icon_pixbuf (Gtk.StyleContext context, Gtk.IconSource source, Gtk.IconSize size);
	public static void render_icon_surface (Gtk.StyleContext context, Cairo.Context cr, Cairo.Surface surface, double x, double y);
	public static void render_insertion_cursor (Gtk.StyleContext context, Cairo.Context cr, double x, double y, Pango.Layout layout, int index, Pango.Direction direction);
	[Deprecated (replacement = "StyleContext.render_layout", since = "vala-0.16")]
	public static void render_layout (Gtk.StyleContext context, Cairo.Context cr, double x, double y, Pango.Layout layout);
	[Deprecated (replacement = "StyleContext.render_activity", since = "vala-0.16")]
	public static void render_activity (Gtk.StyleContext context, Cairo.Context cr, double x, double y, double width, double height);
	[Deprecated (replacement = "StyleContext.render_arrow", since = "vala-0.16")]
	public static void render_arrow (Gtk.StyleContext context, Cairo.Context cr, double angle, double x, double y, double size);
	[Deprecated (replacement = "StyleContext.render_background", since = "vala-0.16")]
	public static void render_background (Gtk.StyleContext context, Cairo.Context cr, double x, double y, double width, double height);
	[Deprecated (replacement = "StyleContext.render_check", since = "vala-0.16")]
	public static void render_check (Gtk.StyleContext context, Cairo.Context cr, double x, double y, double width, double height);
	[Deprecated (replacement = "StyleContext.render_expander", since = "vala-0.16")]
	public static void render_expander (Gtk.StyleContext context, Cairo.Context cr, double x, double y, double width, double height);
	[Deprecated (replacement = "StyleContext.render_extension", since = "vala-0.16")]
	public static void render_extension (Gtk.StyleContext context, Cairo.Context cr, double x, double y, double width, double height, Gtk.PositionType gap_side);
	[Deprecated (replacement = "StyleContext.render_line", since = "vala-0.16")]
	public static void render_line (Gtk.StyleContext context, Cairo.Context cr, double x0, double y0, double x1, double y1);
	[CCode (cheader_filename = "gtk/gtk.h")]
	[Deprecated (replacement = "StyleContext.render_option", since = "vala-0.16")]
	public static void render_option (Gtk.StyleContext context, Cairo.Context cr, double x, double y, double width, double height);
	[CCode (cheader_filename = "gtk/gtk.h")]
	[Deprecated (replacement = "StyleContext.render_slider", since = "vala-0.16")]
	public static void render_slider (Gtk.StyleContext context, Cairo.Context cr, double x, double y, double width, double height, Gtk.Orientation orientation);

	[Deprecated (replacement = "Gtk.Stock.add", since = "vala-0.12")]
	public static void stock_add (Gtk.StockItem[] items);
	[Deprecated (replacement = "Gtk.Stock.add_static", since = "vala-0.12")]
	public static void stock_add_static (Gtk.StockItem[] items);
	[Deprecated (replacement = "Gtk.Stock.list_ids", since = "vala-0.12")]
	public static GLib.SList<string> stock_list_ids ();
	[Deprecated (replacement = "Gtk.Stock.set_translate_func", since = "vala-0.22")]
	public static void stock_set_translate_func (string domain, owned Gtk.TranslateFunc func);

}
