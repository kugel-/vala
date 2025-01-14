/* gstreamer-rtsp-1.0.vapi generated by vapigen, do not modify. */

[CCode (cprefix = "Gst", gir_namespace = "GstRtsp", gir_version = "1.0", lower_case_cprefix = "gst_")]
namespace Gst {
	namespace RTSP {
		[CCode (cheader_filename = "gst/rtsp/rtsp.h")]
		[Compact]
		[GIR (name = "RTSPConnection")]
		public class Connection {
			public void clear_auth_params ();
			public Gst.RTSP.Result close ();
			public Gst.RTSP.Result connect (GLib.TimeVal timeout);
			public Gst.RTSP.Result do_tunnel (Gst.RTSP.Connection conn2);
			public Gst.RTSP.Result flush (bool flush);
			public Gst.RTSP.Result free ();
			public unowned string get_ip ();
			public unowned GLib.Socket get_read_socket ();
			public bool get_remember_session_id ();
			public unowned GLib.TlsConnection get_tls () throws GLib.Error;
			public GLib.TlsDatabase get_tls_database ();
			public GLib.TlsInteraction get_tls_interaction ();
			public GLib.TlsCertificateFlags get_tls_validation_flags ();
			public unowned string get_tunnelid ();
			public Gst.RTSP.Url get_url ();
			public unowned GLib.Socket get_write_socket ();
			public bool is_tunneled ();
			public Gst.RTSP.Result next_timeout (GLib.TimeVal timeout);
			public Gst.RTSP.Result poll (Gst.RTSP.Event events, Gst.RTSP.Event revents, GLib.TimeVal timeout);
			public Gst.RTSP.Result read (uint8 data, uint size, GLib.TimeVal timeout);
			public Gst.RTSP.Result receive (Gst.RTSP.Message message, GLib.TimeVal timeout);
			public Gst.RTSP.Result reset_timeout ();
			public Gst.RTSP.Result send (Gst.RTSP.Message message, GLib.TimeVal timeout);
			public Gst.RTSP.Result set_auth (Gst.RTSP.AuthMethod method, string user, string pass);
			public void set_auth_param (string param, string value);
			public void set_http_mode (bool enable);
			public void set_ip (string ip);
			public Gst.RTSP.Result set_proxy (string host, uint port);
			public Gst.RTSP.Result set_qos_dscp (uint qos_dscp);
			public void set_remember_session_id (bool remember);
			public void set_tls_database (GLib.TlsDatabase database);
			public void set_tls_interaction (GLib.TlsInteraction interaction);
			public bool set_tls_validation_flags (GLib.TlsCertificateFlags flags);
			public void set_tunneled (bool tunneled);
			public Gst.RTSP.Result write (uint8 data, uint size, GLib.TimeVal timeout);
		}
		[CCode (cheader_filename = "gst/rtsp/rtsp.h", copy_function = "g_boxed_copy", free_function = "g_boxed_free", type_id = "gst_rtsp_url_get_type ()")]
		[Compact]
		[GIR (name = "RTSPUrl")]
		public class Url {
			public weak string abspath;
			public Gst.RTSP.Family family;
			public weak string host;
			public weak string passwd;
			public uint16 port;
			public weak string query;
			public Gst.RTSP.LowerTrans transports;
			public weak string user;
			public Gst.RTSP.Url copy ();
			[CCode (array_length = false, array_null_terminated = true)]
			public string[] decode_path_components ();
			public void free ();
			public Gst.RTSP.Result get_port (uint16 port);
			public string get_request_uri ();
			public Gst.RTSP.Result set_port (uint16 port);
		}
		[CCode (cheader_filename = "gst/rtsp/rtsp.h")]
		[Compact]
		[GIR (name = "RTSPWatch")]
		public class Watch {
			public uint attach (GLib.MainContext context);
			public void get_send_backlog (out size_t bytes, out uint messages);
			public void reset ();
			public Gst.RTSP.Result send_message (Gst.RTSP.Message message, out uint id);
			public void set_flushing (bool flushing);
			public void set_send_backlog (size_t bytes, uint messages);
			public void unref ();
			public Gst.RTSP.Result wait_backlog (GLib.TimeVal timeout);
			public Gst.RTSP.Result write_data ([CCode (array_length_cname = "size", array_length_pos = 1.5, array_length_type = "guint")] owned uint8[] data, out uint id);
		}
		[CCode (cheader_filename = "gst/rtsp/rtsp.h", type_id = "gst_rtsp_extension_get_type ()")]
		[GIR (name = "RTSPExtension")]
		public interface Extension : GLib.Object {
			public abstract Gst.RTSP.Result after_send (Gst.RTSP.Message req, Gst.RTSP.Message resp);
			public abstract Gst.RTSP.Result before_send (Gst.RTSP.Message req);
			public abstract bool configure_stream (Gst.Caps caps);
			public abstract bool detect_server (Gst.RTSP.Message resp);
			public abstract Gst.RTSP.Result get_transports (Gst.RTSP.LowerTrans protocols, string transport);
			public abstract Gst.RTSP.Result parse_sdp (Gst.SDP.Message sdp, Gst.Structure s);
			public abstract Gst.RTSP.Result receive_request (Gst.RTSP.Message req);
			public abstract Gst.RTSP.Result setup_media (Gst.SDP.Media media);
			public abstract Gst.RTSP.Result stream_select (Gst.RTSP.Url url);
			[HasEmitter]
			public virtual signal Gst.RTSP.Result send (void* req, void* resp);
		}
		[CCode (cheader_filename = "gst/rtsp/rtsp.h", has_type_id = false)]
		[GIR (name = "RTSPMessage")]
		public struct Message {
			public Gst.RTSP.MsgType type;
			[CCode (cname = "type_data.request.method")]
			public Gst.RTSP.Method type_data_request_method;
			[CCode (cname = "type_data.request.uri")]
			public weak string type_data_request_uri;
			[CCode (cname = "type_data.request.version")]
			public Gst.RTSP.Version type_data_request_version;
			[CCode (cname = "type_data.response.code")]
			public Gst.RTSP.StatusCode type_data_response_code;
			[CCode (cname = "type_data.response.reason")]
			public weak string type_data_response_reason;
			[CCode (cname = "type_data.response.version")]
			public Gst.RTSP.Version type_data_response_version;
			[CCode (cname = "type_data.data.channel")]
			public uint8 type_data_data_channel;
			public Gst.RTSP.Result add_header (Gst.RTSP.HeaderField field, string value);
			public Gst.RTSP.Result add_header_by_name (string header, string value);
			public Gst.RTSP.Result append_headers (GLib.StringBuilder str);
			public Gst.RTSP.Result dump ();
			public Gst.RTSP.Result free ();
			public Gst.RTSP.Result get_body ([CCode (array_length_cname = "size", array_length_pos = 1.1, array_length_type = "guint")] out unowned uint8[] data);
			public Gst.RTSP.Result get_header (Gst.RTSP.HeaderField field, out unowned string value, int indx);
			public Gst.RTSP.Result get_header_by_name (string header, out unowned string value, int index);
			public Gst.RTSP.MsgType get_type ();
			public Gst.RTSP.Result init ();
			public Gst.RTSP.Result init_data (uint8 channel);
			public Gst.RTSP.Result init_request (Gst.RTSP.Method method, string uri);
			public Gst.RTSP.Result init_response (Gst.RTSP.StatusCode code, string? reason, Gst.RTSP.Message? request);
			public Gst.RTSP.Result parse_data (out uint8 channel);
			public Gst.RTSP.Result parse_request (out Gst.RTSP.Method method, out string uri, out Gst.RTSP.Version version);
			public Gst.RTSP.Result parse_response (out Gst.RTSP.StatusCode code, out string reason, out Gst.RTSP.Version version);
			public Gst.RTSP.Result remove_header (Gst.RTSP.HeaderField field, int indx);
			public Gst.RTSP.Result remove_header_by_name (string header, int index);
			public Gst.RTSP.Result set_body ([CCode (array_length_cname = "size", array_length_pos = 1.1, array_length_type = "guint")] uint8[] data);
			public Gst.RTSP.Result steal_body ([CCode (array_length_cname = "size", array_length_pos = 1.1, array_length_type = "guint")] out uint8[] data);
			public Gst.RTSP.Result take_body ([CCode (array_length_cname = "size", array_length_pos = 1.1, array_length_type = "guint")] owned uint8[] data);
			public Gst.RTSP.Result take_header (Gst.RTSP.HeaderField field, owned string value);
			public Gst.RTSP.Result take_header_by_name (string header, owned string value);
			public Gst.RTSP.Result unset ();
		}
		[CCode (cheader_filename = "gst/rtsp/rtsp.h", has_type_id = false)]
		[GIR (name = "RTSPRange")]
		public struct Range {
			public int min;
			public int max;
		}
		[CCode (cheader_filename = "gst/rtsp/rtsp.h", has_type_id = false)]
		[GIR (name = "RTSPTime")]
		public struct Time {
			public Gst.RTSP.TimeType type;
			public double seconds;
		}
		[CCode (cheader_filename = "gst/rtsp/rtsp.h", has_type_id = false)]
		[GIR (name = "RTSPTime2")]
		public struct Time2 {
			public double frames;
			public uint year;
			public uint month;
			public uint day;
		}
		[CCode (cheader_filename = "gst/rtsp/rtsp.h", has_type_id = false)]
		[GIR (name = "RTSPTimeRange")]
		public struct TimeRange {
			public Gst.RTSP.RangeUnit unit;
			public Gst.RTSP.Time min;
			public Gst.RTSP.Time max;
			public Gst.RTSP.Time2 min2;
			public Gst.RTSP.Time2 max2;
		}
		[CCode (cheader_filename = "gst/rtsp/rtsp.h", has_type_id = false)]
		[GIR (name = "RTSPTransport")]
		public struct Transport {
			public Gst.RTSP.TransMode trans;
			public Gst.RTSP.Profile profile;
			public Gst.RTSP.LowerTrans lower_transport;
			public weak string destination;
			public weak string source;
			public uint layers;
			public bool mode_play;
			public bool mode_record;
			public bool append;
			public Gst.RTSP.Range interleaved;
			public uint ttl;
			public Gst.RTSP.Range port;
			public Gst.RTSP.Range client_port;
			public Gst.RTSP.Range server_port;
			public uint ssrc;
			public string as_text ();
			public Gst.RTSP.Result free ();
			public Gst.RTSP.Result get_media_type (out unowned string media_type);
			public Gst.RTSP.Result init ();
		}
		[CCode (cheader_filename = "gst/rtsp/rtsp.h", cprefix = "GST_RTSP_AUTH_", type_id = "gst_rtsp_auth_method_get_type ()")]
		[GIR (name = "RTSPAuthMethod")]
		public enum AuthMethod {
			NONE,
			BASIC,
			DIGEST
		}
		[CCode (cheader_filename = "gst/rtsp/rtsp.h", cprefix = "GST_RTSP_EV_", type_id = "gst_rtsp_event_get_type ()")]
		[Flags]
		[GIR (name = "RTSPEvent")]
		public enum Event {
			READ,
			WRITE
		}
		[CCode (cheader_filename = "gst/rtsp/rtsp.h", cprefix = "GST_RTSP_FAM_", type_id = "gst_rtsp_family_get_type ()")]
		[GIR (name = "RTSPFamily")]
		public enum Family {
			NONE,
			INET,
			INET6
		}
		[CCode (cheader_filename = "gst/rtsp/rtsp.h", cprefix = "GST_RTSP_HDR_", type_id = "gst_rtsp_header_field_get_type ()")]
		[GIR (name = "RTSPHeaderField")]
		public enum HeaderField {
			INVALID,
			ACCEPT,
			ACCEPT_ENCODING,
			ACCEPT_LANGUAGE,
			ALLOW,
			AUTHORIZATION,
			BANDWIDTH,
			BLOCKSIZE,
			CACHE_CONTROL,
			CONFERENCE,
			CONNECTION,
			CONTENT_BASE,
			CONTENT_ENCODING,
			CONTENT_LANGUAGE,
			CONTENT_LENGTH,
			CONTENT_LOCATION,
			CONTENT_TYPE,
			CSEQ,
			DATE,
			EXPIRES,
			FROM,
			IF_MODIFIED_SINCE,
			LAST_MODIFIED,
			PROXY_AUTHENTICATE,
			PROXY_REQUIRE,
			PUBLIC,
			RANGE,
			REFERER,
			REQUIRE,
			RETRY_AFTER,
			RTP_INFO,
			SCALE,
			SESSION,
			SERVER,
			SPEED,
			TRANSPORT,
			UNSUPPORTED,
			USER_AGENT,
			VIA,
			WWW_AUTHENTICATE,
			CLIENT_CHALLENGE,
			REAL_CHALLENGE1,
			REAL_CHALLENGE2,
			REAL_CHALLENGE3,
			SUBSCRIBE,
			ALERT,
			CLIENT_ID,
			COMPANY_ID,
			GUID,
			REGION_DATA,
			MAX_ASM_WIDTH,
			LANGUAGE,
			PLAYER_START_TIME,
			LOCATION,
			ETAG,
			IF_MATCH,
			ACCEPT_CHARSET,
			SUPPORTED,
			VARY,
			X_ACCELERATE_STREAMING,
			X_ACCEPT_AUTHENT,
			X_ACCEPT_PROXY_AUTHENT,
			X_BROADCAST_ID,
			X_BURST_STREAMING,
			X_NOTICE,
			X_PLAYER_LAG_TIME,
			X_PLAYLIST,
			X_PLAYLIST_CHANGE_NOTICE,
			X_PLAYLIST_GEN_ID,
			X_PLAYLIST_SEEK_ID,
			X_PROXY_CLIENT_AGENT,
			X_PROXY_CLIENT_VERB,
			X_RECEDING_PLAYLISTCHANGE,
			X_RTP_INFO,
			X_STARTUPPROFILE,
			TIMESTAMP,
			AUTHENTICATION_INFO,
			HOST,
			PRAGMA,
			X_SERVER_IP_ADDRESS,
			X_SESSIONCOOKIE,
			RTCP_INTERVAL,
			KEYMGMT,
			LAST
		}
		[CCode (cheader_filename = "gst/rtsp/rtsp.h", cprefix = "GST_RTSP_LOWER_TRANS_", type_id = "gst_rtsp_lower_trans_get_type ()")]
		[Flags]
		[GIR (name = "RTSPLowerTrans")]
		public enum LowerTrans {
			UNKNOWN,
			UDP,
			UDP_MCAST,
			TCP,
			HTTP,
			TLS
		}
		[CCode (cheader_filename = "gst/rtsp/rtsp.h", cprefix = "GST_RTSP_", type_id = "gst_rtsp_method_get_type ()")]
		[Flags]
		[GIR (name = "RTSPMethod")]
		public enum Method {
			INVALID,
			DESCRIBE,
			ANNOUNCE,
			GET_PARAMETER,
			OPTIONS,
			PAUSE,
			PLAY,
			RECORD,
			REDIRECT,
			SETUP,
			SET_PARAMETER,
			TEARDOWN,
			GET,
			POST
		}
		[CCode (cheader_filename = "gst/rtsp/rtsp.h", cprefix = "GST_RTSP_MESSAGE_", type_id = "gst_rtsp_msg_type_get_type ()")]
		[GIR (name = "RTSPMsgType")]
		public enum MsgType {
			INVALID,
			REQUEST,
			RESPONSE,
			HTTP_REQUEST,
			HTTP_RESPONSE,
			DATA
		}
		[CCode (cheader_filename = "gst/rtsp/rtsp.h", cprefix = "GST_RTSP_PROFILE_", type_id = "gst_rtsp_profile_get_type ()")]
		[Flags]
		[GIR (name = "RTSPProfile")]
		public enum Profile {
			UNKNOWN,
			AVP,
			SAVP,
			AVPF,
			SAVPF
		}
		[CCode (cheader_filename = "gst/rtsp/rtsp.h", cprefix = "GST_RTSP_RANGE_", type_id = "gst_rtsp_range_unit_get_type ()")]
		[GIR (name = "RTSPRangeUnit")]
		public enum RangeUnit {
			SMPTE,
			SMPTE_30_DROP,
			SMPTE_25,
			NPT,
			CLOCK
		}
		[CCode (cheader_filename = "gst/rtsp/rtsp.h", cprefix = "GST_RTSP_", type_id = "gst_rtsp_result_get_type ()")]
		[GIR (name = "RTSPResult")]
		public enum Result {
			OK,
			ERROR,
			EINVAL,
			EINTR,
			ENOMEM,
			ERESOLV,
			ENOTIMPL,
			ESYS,
			EPARSE,
			EWSASTART,
			EWSAVERSION,
			EEOF,
			ENET,
			ENOTIP,
			ETIMEOUT,
			ETGET,
			ETPOST,
			ELAST
		}
		[CCode (cheader_filename = "gst/rtsp/rtsp.h", cprefix = "GST_RTSP_STATE_", type_id = "gst_rtsp_state_get_type ()")]
		[GIR (name = "RTSPState")]
		public enum State {
			INVALID,
			INIT,
			READY,
			SEEKING,
			PLAYING,
			RECORDING
		}
		[CCode (cheader_filename = "gst/rtsp/rtsp.h", cprefix = "GST_RTSP_STS_", type_id = "gst_rtsp_status_code_get_type ()")]
		[GIR (name = "RTSPStatusCode")]
		public enum StatusCode {
			INVALID,
			CONTINUE,
			OK,
			CREATED,
			LOW_ON_STORAGE,
			MULTIPLE_CHOICES,
			MOVED_PERMANENTLY,
			MOVE_TEMPORARILY,
			SEE_OTHER,
			NOT_MODIFIED,
			USE_PROXY,
			BAD_REQUEST,
			UNAUTHORIZED,
			PAYMENT_REQUIRED,
			FORBIDDEN,
			NOT_FOUND,
			METHOD_NOT_ALLOWED,
			NOT_ACCEPTABLE,
			PROXY_AUTH_REQUIRED,
			REQUEST_TIMEOUT,
			GONE,
			LENGTH_REQUIRED,
			PRECONDITION_FAILED,
			REQUEST_ENTITY_TOO_LARGE,
			REQUEST_URI_TOO_LARGE,
			UNSUPPORTED_MEDIA_TYPE,
			PARAMETER_NOT_UNDERSTOOD,
			CONFERENCE_NOT_FOUND,
			NOT_ENOUGH_BANDWIDTH,
			SESSION_NOT_FOUND,
			METHOD_NOT_VALID_IN_THIS_STATE,
			HEADER_FIELD_NOT_VALID_FOR_RESOURCE,
			INVALID_RANGE,
			PARAMETER_IS_READONLY,
			AGGREGATE_OPERATION_NOT_ALLOWED,
			ONLY_AGGREGATE_OPERATION_ALLOWED,
			UNSUPPORTED_TRANSPORT,
			DESTINATION_UNREACHABLE,
			KEY_MANAGEMENT_FAILURE,
			INTERNAL_SERVER_ERROR,
			NOT_IMPLEMENTED,
			BAD_GATEWAY,
			SERVICE_UNAVAILABLE,
			GATEWAY_TIMEOUT,
			RTSP_VERSION_NOT_SUPPORTED,
			OPTION_NOT_SUPPORTED
		}
		[CCode (cheader_filename = "gst/rtsp/rtsp.h", cprefix = "GST_RTSP_TIME_", type_id = "gst_rtsp_time_type_get_type ()")]
		[GIR (name = "RTSPTimeType")]
		public enum TimeType {
			SECONDS,
			NOW,
			END,
			FRAMES,
			UTC
		}
		[CCode (cheader_filename = "gst/rtsp/rtsp.h", cprefix = "GST_RTSP_TRANS_", type_id = "gst_rtsp_trans_mode_get_type ()")]
		[Flags]
		[GIR (name = "RTSPTransMode")]
		public enum TransMode {
			UNKNOWN,
			RTP,
			RDT
		}
		[CCode (cheader_filename = "gst/rtsp/rtsp.h", cprefix = "GST_RTSP_VERSION_", type_id = "gst_rtsp_version_get_type ()")]
		[GIR (name = "RTSPVersion")]
		public enum Version {
			INVALID,
			@1_0,
			@1_1
		}
		[CCode (cheader_filename = "gst/rtsp/rtsp.h", cname = "GST_RTSP_DEFAULT_PORT")]
		public const int _DEFAULT_PORT;
		[CCode (cheader_filename = "gst/rtsp/rtsp.h")]
		public static Gst.RTSP.Result connection_accept (GLib.Socket socket, out Gst.RTSP.Connection conn, GLib.Cancellable? cancellable = null);
		[CCode (cheader_filename = "gst/rtsp/rtsp.h")]
		public static Gst.RTSP.Result connection_create (Gst.RTSP.Url url, out Gst.RTSP.Connection conn);
		[CCode (cheader_filename = "gst/rtsp/rtsp.h")]
		public static Gst.RTSP.Result connection_create_from_socket (GLib.Socket socket, string ip, uint16 port, string initial_buffer, out Gst.RTSP.Connection conn);
		[CCode (cheader_filename = "gst/rtsp/rtsp.h")]
		public static Gst.RTSP.HeaderField find_header_field (string header);
		[CCode (cheader_filename = "gst/rtsp/rtsp.h")]
		public static Gst.RTSP.Method find_method (string method);
		[CCode (cheader_filename = "gst/rtsp/rtsp.h")]
		public static bool header_allow_multiple (Gst.RTSP.HeaderField field);
		[CCode (cheader_filename = "gst/rtsp/rtsp.h")]
		public static unowned string header_as_text (Gst.RTSP.HeaderField field);
		[CCode (cheader_filename = "gst/rtsp/rtsp.h")]
		public static Gst.RTSP.Result message_new (out Gst.RTSP.Message msg);
		[CCode (cheader_filename = "gst/rtsp/rtsp.h")]
		public static Gst.RTSP.Result message_new_data (out Gst.RTSP.Message msg, uint8 channel);
		[CCode (cheader_filename = "gst/rtsp/rtsp.h")]
		public static Gst.RTSP.Result message_new_request (out Gst.RTSP.Message msg, Gst.RTSP.Method method, string uri);
		[CCode (cheader_filename = "gst/rtsp/rtsp.h")]
		public static Gst.RTSP.Result message_new_response (out Gst.RTSP.Message msg, Gst.RTSP.StatusCode code, string? reason, Gst.RTSP.Message? request);
		[CCode (cheader_filename = "gst/rtsp/rtsp.h")]
		public static unowned string method_as_text (Gst.RTSP.Method method);
		[CCode (cheader_filename = "gst/rtsp/rtsp.h")]
		public static string options_as_text (Gst.RTSP.Method options);
		[CCode (cheader_filename = "gst/rtsp/rtsp.h")]
		public static Gst.RTSP.Method options_from_text (string options);
		[CCode (cheader_filename = "gst/rtsp/rtsp.h")]
		public static bool range_convert_units (Gst.RTSP.TimeRange range, Gst.RTSP.RangeUnit unit);
		[CCode (cheader_filename = "gst/rtsp/rtsp.h")]
		public static void range_free (Gst.RTSP.TimeRange range);
		[CCode (cheader_filename = "gst/rtsp/rtsp.h")]
		public static bool range_get_times (Gst.RTSP.TimeRange range, Gst.ClockTime min, Gst.ClockTime max);
		[CCode (cheader_filename = "gst/rtsp/rtsp.h")]
		public static Gst.RTSP.Result range_parse (string rangestr, Gst.RTSP.TimeRange range);
		[CCode (cheader_filename = "gst/rtsp/rtsp.h")]
		public static string range_to_string (Gst.RTSP.TimeRange range);
		[CCode (cheader_filename = "gst/rtsp/rtsp.h")]
		public static unowned string status_as_text (Gst.RTSP.StatusCode code);
		[CCode (cheader_filename = "gst/rtsp/rtsp.h")]
		public static string strresult (Gst.RTSP.Result result);
		[CCode (cheader_filename = "gst/rtsp/rtsp.h")]
		public static Gst.RTSP.Result transport_get_manager (Gst.RTSP.TransMode trans, string manager, uint option);
		[CCode (cheader_filename = "gst/rtsp/rtsp.h")]
		[Deprecated]
		public static Gst.RTSP.Result transport_get_mime (Gst.RTSP.TransMode trans, string mime);
		[CCode (cheader_filename = "gst/rtsp/rtsp.h")]
		public static Gst.RTSP.Result transport_new (Gst.RTSP.Transport transport);
		[CCode (cheader_filename = "gst/rtsp/rtsp.h")]
		public static Gst.RTSP.Result transport_parse (string str, Gst.RTSP.Transport transport);
		[CCode (cheader_filename = "gst/rtsp/rtsp.h")]
		public static Gst.RTSP.Result url_parse (string urlstr, out Gst.RTSP.Url url);
		[CCode (cheader_filename = "gst/rtsp/rtsp.h")]
		public static unowned string version_as_text (Gst.RTSP.Version version);
	}
}
