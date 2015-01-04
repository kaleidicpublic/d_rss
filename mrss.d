import std.c.time;
enum LIBMRSS_VERSION_STRING ="0.19.2";
enum LIBMRSS_MAJOR_VERSION =0;
enum LIBMRSS_MINOR_VERSION =19;
enum LIBMRSS_MICRO_VERSION =2;

extern(C):

alias mrss_generic_t=void *;

// from curl.h


enum CURLcode
{
  CURLE_OK = 0,
  CURLE_UNSUPPORTED_PROTOCOL,    /* 1 */
  CURLE_FAILED_INIT,             /* 2 */
  CURLE_URL_MALFORMAT,           /* 3 */
  CURLE_NOT_BUILT_IN,            /* 4 - [was obsoleted in August 2007 for
                                    7.17.0, reused in April 2011 for 7.21.5] */
  CURLE_COULDNT_RESOLVE_PROXY,   /* 5 */
  CURLE_COULDNT_RESOLVE_HOST,    /* 6 */
  CURLE_COULDNT_CONNECT,         /* 7 */
  CURLE_FTP_WEIRD_SERVER_REPLY,  /* 8 */
  CURLE_REMOTE_ACCESS_DENIED,    /* 9 a service was denied by the server
                                    due to lack of access - when login fails
                                    this is not returned. */
  CURLE_FTP_ACCEPT_FAILED,       /* 10 - [was obsoleted in April 2006 for
                                    7.15.4, reused in Dec 2011 for 7.24.0]*/
  CURLE_FTP_WEIRD_PASS_REPLY,    /* 11 */
  CURLE_FTP_ACCEPT_TIMEOUT,      /* 12 - timeout occurred accepting server
                                    [was obsoleted in August 2007 for 7.17.0,
                                    reused in Dec 2011 for 7.24.0]*/
  CURLE_FTP_WEIRD_PASV_REPLY,    /* 13 */
  CURLE_FTP_WEIRD_227_FORMAT,    /* 14 */
  CURLE_FTP_CANT_GET_HOST,       /* 15 */
  CURLE_OBSOLETE16,              /* 16 - NOT USED */
  CURLE_FTP_COULDNT_SET_TYPE,    /* 17 */
  CURLE_PARTIAL_FILE,            /* 18 */
  CURLE_FTP_COULDNT_RETR_FILE,   /* 19 */
  CURLE_OBSOLETE20,              /* 20 - NOT USED */
  CURLE_QUOTE_ERROR,             /* 21 - quote command failure */
  CURLE_HTTP_RETURNED_ERROR,     /* 22 */
  CURLE_WRITE_ERROR,             /* 23 */
  CURLE_OBSOLETE24,              /* 24 - NOT USED */
  CURLE_UPLOAD_FAILED,           /* 25 - failed upload "command" */
  CURLE_READ_ERROR,              /* 26 - couldn't open/read from file */
  CURLE_OUT_OF_MEMORY,           /* 27 */
  /* Note: CURLE_OUT_OF_MEMORY may sometimes indicate a conversion error
           instead of a memory allocation error if CURL_DOES_CONVERSIONS
           is defined
  */
  CURLE_OPERATION_TIMEDOUT,      /* 28 - the timeout time was reached */
  CURLE_OBSOLETE29,              /* 29 - NOT USED */
  CURLE_FTP_PORT_FAILED,         /* 30 - FTP PORT operation failed */
  CURLE_FTP_COULDNT_USE_REST,    /* 31 - the REST command failed */
  CURLE_OBSOLETE32,              /* 32 - NOT USED */
  CURLE_RANGE_ERROR,             /* 33 - RANGE "command" didn't work */
  CURLE_HTTP_POST_ERROR,         /* 34 */
  CURLE_SSL_CONNECT_ERROR,       /* 35 - wrong when connecting with SSL */
  CURLE_BAD_DOWNLOAD_RESUME,     /* 36 - couldn't resume download */
  CURLE_FILE_COULDNT_READ_FILE,  /* 37 */
  CURLE_LDAP_CANNOT_BIND,        /* 38 */
  CURLE_LDAP_SEARCH_FAILED,      /* 39 */
  CURLE_OBSOLETE40,              /* 40 - NOT USED */
  CURLE_FUNCTION_NOT_FOUND,      /* 41 */
  CURLE_ABORTED_BY_CALLBACK,     /* 42 */
  CURLE_BAD_FUNCTION_ARGUMENT,   /* 43 */
  CURLE_OBSOLETE44,              /* 44 - NOT USED */
  CURLE_INTERFACE_FAILED,        /* 45 - CURLOPT_INTERFACE failed */
  CURLE_OBSOLETE46,              /* 46 - NOT USED */
  CURLE_TOO_MANY_REDIRECTS ,     /* 47 - catch endless re-direct loops */
  CURLE_UNKNOWN_OPTION,          /* 48 - User specified an unknown option */
  CURLE_TELNET_OPTION_SYNTAX ,   /* 49 - Malformed telnet option */
  CURLE_OBSOLETE50,              /* 50 - NOT USED */
  CURLE_PEER_FAILED_VERIFICATION, /* 51 - peer's certificate or fingerprint
                                     wasn't verified fine */
  CURLE_GOT_NOTHING,             /* 52 - when this is a specific error */
  CURLE_SSL_ENGINE_NOTFOUND,     /* 53 - SSL crypto engine not found */
  CURLE_SSL_ENGINE_SETFAILED,    /* 54 - can not set SSL crypto engine as
                                    default */
  CURLE_SEND_ERROR,              /* 55 - failed sending network data */
  CURLE_RECV_ERROR,              /* 56 - failure in receiving network data */
  CURLE_OBSOLETE57,              /* 57 - NOT IN USE */
  CURLE_SSL_CERTPROBLEM,         /* 58 - problem with the local certificate */
  CURLE_SSL_CIPHER,              /* 59 - couldn't use specified cipher */
  CURLE_SSL_CACERT,              /* 60 - problem with the CA cert (path?) */
  CURLE_BAD_CONTENT_ENCODING,    /* 61 - Unrecognized/bad encoding */
  CURLE_LDAP_INVALID_URL,        /* 62 - Invalid LDAP URL */
  CURLE_FILESIZE_EXCEEDED,       /* 63 - Maximum file size exceeded */
  CURLE_USE_SSL_FAILED,          /* 64 - Requested FTP SSL level failed */
  CURLE_SEND_FAIL_REWIND,        /* 65 - Sending the data requires a rewind
                                    that failed */
  CURLE_SSL_ENGINE_INITFAILED,   /* 66 - failed to initialise ENGINE */
  CURLE_LOGIN_DENIED,            /* 67 - user, password or similar was not
                                    accepted and we failed to login */
  CURLE_TFTP_NOTFOUND,           /* 68 - file not found on server */
  CURLE_TFTP_PERM,               /* 69 - permission problem on server */
  CURLE_REMOTE_DISK_FULL,        /* 70 - out of disk space on server */
  CURLE_TFTP_ILLEGAL,            /* 71 - Illegal TFTP operation */
  CURLE_TFTP_UNKNOWNID,          /* 72 - Unknown transfer ID */
  CURLE_REMOTE_FILE_EXISTS,      /* 73 - File already exists */
  CURLE_TFTP_NOSUCHUSER,         /* 74 - No such user */
  CURLE_CONV_FAILED,             /* 75 - conversion failed */
  CURLE_CONV_REQD,               /* 76 - caller must register conversion
                                    callbacks using curl_easy_setopt options
                                    CURLOPT_CONV_FROM_NETWORK_FUNCTION,
                                    CURLOPT_CONV_TO_NETWORK_FUNCTION, and
                                    CURLOPT_CONV_FROM_UTF8_FUNCTION */
  CURLE_SSL_CACERT_BADFILE,      /* 77 - could not load CACERT file, missing
                                    or wrong format */
  CURLE_REMOTE_FILE_NOT_FOUND,   /* 78 - remote file not found */
  CURLE_SSH,                     /* 79 - error from the SSH layer, somewhat
                                    generic so the error message will be of
                                    interest when this has happened */

  CURLE_SSL_SHUTDOWN_FAILED,     /* 80 - Failed to shut down the SSL
                                    connection */
  CURLE_AGAIN,                   /* 81 - socket is not ready for send/recv,
                                    wait till it's ready and try again (Added
                                    in 7.18.2) */
  CURLE_SSL_CRL_BADFILE,         /* 82 - could not load CRL file, missing or
                                    wrong format (Added in 7.19.0) */
  CURLE_SSL_ISSUER_ERROR,        /* 83 - Issuer check failed.  (Added in
                                    7.19.0) */
  CURLE_FTP_PRET_FAILED,         /* 84 - a PRET command failed */
  CURLE_RTSP_CSEQ_ERROR,         /* 85 - mismatch of RTSP CSeq numbers */
  CURLE_RTSP_SESSION_ERROR,      /* 86 - mismatch of RTSP Session Ids */
  CURLE_FTP_BAD_FILE_LIST,       /* 87 - unable to parse FTP file list */
  CURLE_CHUNK_FAILED,            /* 88 - chunk callback reported error */
  CURLE_NO_CONNECTION_AVAILABLE, /* 89 - No connection available, the
                                    session will be queued */
  CURL_LAST /* never use! */
} 


enum mrss_error_t
{
	MRSS_OK = 0,			/**< No error */
	MRSS_ERR_POSIX,		/**< For the correct error, use errno */
	MRSS_ERR_PARSER,		/**< Parser error */
	MRSS_ERR_DOWNLOAD,		/**< Download error */
	MRSS_ERR_VERSION,		/**< The RSS has a no compatible VERSION */
	MRSS_ERR_DATA			/**< The parameters are incorrect */
}

enum mrss_version_t
{
	MRSS_VERSION_0_91,		/**< 0.91 RSS version */
	MRSS_VERSION_0_92,		/**< 0.92 RSS version */
	MRSS_VERSION_1_0,		/**< 1.0 RSS version */
	MRSS_VERSION_2_0,		/**< 2.0 RSS version */
	MRSS_VERSION_ATOM_0_3,	/**< 0.3 Atom version */
	MRSS_VERSION_ATOM_1_0		/**< 1.0 Atom version */
} 

enum mrss_flag_t
{
	MRSS_FLAG_VERSION = 1,

	/** Set the title to a mrss_t element - the value is a string */
	MRSS_FLAG_TITLE,
	/** Set the title type to a mrss_t element - the value is a string (ex: text, html, ...)*/
	MRSS_FLAG_TITLE_TYPE,
	/** Set the description to a mrss_t element - the value is a string */
	MRSS_FLAG_DESCRIPTION,
	/** Set the description type to a mrss_t element - the value is a string */
	MRSS_FLAG_DESCRIPTION_TYPE,
	/** Set the link to a mrss_t element - the value is a string */
	MRSS_FLAG_LINK,
	/** Set the id to a mrss_t element - the value is a string */
	MRSS_FLAG_ID,
	/** Set the language to a mrss_t element - the value is a string */
	MRSS_FLAG_LANGUAGE,
	/** Set the rating to a mrss_t element - the value is a string */
	MRSS_FLAG_RATING,
	/** Set the copyright to a mrss_t element - the value is a string */
	MRSS_FLAG_COPYRIGHT,
	/** Set the copyright type to a mrss_t element - the value is a string */
	MRSS_FLAG_COPYRIGHT_TYPE,
	/** Set the pubDate to a mrss_t element - the value is a string */
	MRSS_FLAG_PUBDATE,
	/** Set the lastBuildDate to a mrss_t element - the value is a string */
	MRSS_FLAG_LASTBUILDDATE,
	/** Set the docs to a mrss_t element - the value is a string */
	MRSS_FLAG_DOCS,
	/** Set the managingeditor to a mrss_t element - the value is a string */
	MRSS_FLAG_MANAGINGEDITOR,
	/** Set the managingeditor's email to a mrss_t element - the value is a string */
	MRSS_FLAG_MANAGINGEDITOR_EMAIL,
	/** Set the managingeditor's uri to a mrss_t element - the value is a string */
	MRSS_FLAG_MANAGINGEDITOR_URI,
	/** Set the webMaster to a mrss_t element - the value is a string */
	MRSS_FLAG_WEBMASTER,
	/** Set the generator to a mrss_t element - the value is a string */
	MRSS_FLAG_TTL,
	/** Set the about to a mrss_t element - the value is a string */
	MRSS_FLAG_ABOUT,

	/* Contributor */

	/** Set the contributor to a mrss_t element - the value is a string */
	MRSS_FLAG_CONTRIBUTOR,
	/** Set the contributor's email to a mrss_t element - the value is a string */
	MRSS_FLAG_CONTRIBUTOR_EMAIL,
	/** Set the contributor's uri to a mrss_t element - the value is a string */
	MRSS_FLAG_CONTRIBUTOR_URI,

	/* Generator */

	/** Set the generator to a mrss_t element - the value is a string */
	MRSS_FLAG_GENERATOR,
	/** Set the generator's email to a mrss_t element - the value is a string */
	MRSS_FLAG_GENERATOR_URI,
	/** Set the generator's uri to a mrss_t element - the value is a string */
	MRSS_FLAG_GENERATOR_VERSION,

	/* Image */

	/** Set the image_title to a mrss_t element - the value is a string */
	MRSS_FLAG_IMAGE_TITLE,
	/** Set the image_url to a mrss_t element - the value is a string */
	MRSS_FLAG_IMAGE_URL,
	/** Set the image_logo to a mrss_t element - the value is a string */
	MRSS_FLAG_IMAGE_LOGO,
	/** Set the image_link to a mrss_t element - the value is a string */
	MRSS_FLAG_IMAGE_LINK,
	/** Set the image_width to a mrss_t element - the value is a integer */
	MRSS_FLAG_IMAGE_WIDTH,
	/** Set the image_height to a mrss_t element - the value is a integer */
	MRSS_FLAG_IMAGE_HEIGHT,
	/** Set the image_description to a mrss_t element - the value is a string */
	MRSS_FLAG_IMAGE_DESCRIPTION,

	/* TextInput */

	/** Set the textinput_title to a mrss_t element - the value is a string */
	MRSS_FLAG_TEXTINPUT_TITLE,
	/** Set the textinput_description to a mrss_t element - the value is a string */
	MRSS_FLAG_TEXTINPUT_DESCRIPTION,
	/** Set the textinput_name to a mrss_t element - the value is a string */
	MRSS_FLAG_TEXTINPUT_NAME,
	/** Set the textinput_link to a mrss_t element - the value is a string */
	MRSS_FLAG_TEXTINPUT_LINK,

	/* Cloud */

	/** Set the cloud to a mrss_t element - the value is a string */
	MRSS_FLAG_CLOUD,
	/** Set the cloud_domain to a mrss_t element - the value is a string */
	MRSS_FLAG_CLOUD_DOMAIN,
	/** Set the cloud_port to a mrss_t element - the value is a string */
	MRSS_FLAG_CLOUD_PORT,
	/** Set the cloud_path to a mrss_t element - the value is a integer */
	MRSS_FLAG_CLOUD_PATH,
	/** Set the cloud_registerProcedure to a mrss_t element - 
	* the value is a string */
	MRSS_FLAG_CLOUD_REGISTERPROCEDURE,
	/** Set the cloud_protocol to a mrss_t element - the value is a string */
	MRSS_FLAG_CLOUD_PROTOCOL,

	/* SkipHours */

	/** Set the hour to a mrss_hour_t element - the value is a string */
	MRSS_FLAG_HOUR,

	/* SkipDays */

	/** Set the day to a mrss_day_t element - the value is a string */
	MRSS_FLAG_DAY,

	/* Category or Item/Category */

	/** Set the category to a mrss_category_t element - the value is a string */
	MRSS_FLAG_CATEGORY,
	/** Set the domain to a mrss_category_t element - the value is a string */
	MRSS_FLAG_CATEGORY_DOMAIN,
	/** Set the label to a mrss_category_t element - the value is a string */
	MRSS_FLAG_CATEGORY_LABEL,

	/* Item */

	/** Set the title to a mrss_item_t element - the value is a string */
	MRSS_FLAG_ITEM_TITLE,
	/** Set the title type to a mrss_item_t element - the value is a string */
	MRSS_FLAG_ITEM_TITLE_TYPE,
	/** Set the link to a mrss_item_t element - the value is a string */
	MRSS_FLAG_ITEM_LINK,
	/** Set the description to a mrss_item_t element - the value is a string */
	MRSS_FLAG_ITEM_DESCRIPTION,
	/** Set the description type to a mrss_item_t element - the value is a string */
	MRSS_FLAG_ITEM_DESCRIPTION_TYPE,
	/** Set the copyright to a mrss_item_t element - the value is a string */
	MRSS_FLAG_ITEM_COPYRIGHT,
	/** Set the copyright type to a mrss_item_t element - the value is a string */
	MRSS_FLAG_ITEM_COPYRIGHT_TYPE,

	/** Set the author to a mrss_item_t element - the value is a string */
	MRSS_FLAG_ITEM_AUTHOR,
	/** Set the author's uri to a mrss_item_t element - the value is a string */
	MRSS_FLAG_ITEM_AUTHOR_URI,
	/** Set the author's email to a mrss_item_t element - the value is a string */
	MRSS_FLAG_ITEM_AUTHOR_EMAIL,

	/** Set the contributor to a mrss_item_t element - the value is a string */
	MRSS_FLAG_ITEM_CONTRIBUTOR,
	/** Set the contributor's uri to a mrss_item_t element - the value is a string */
	MRSS_FLAG_ITEM_CONTRIBUTOR_URI,
	/** Set the contributor's email to a mrss_item_t element - the value is a string */
	MRSS_FLAG_ITEM_CONTRIBUTOR_EMAIL,

	/** Set the comments to a mrss_item_t element - the value is a string */
	MRSS_FLAG_ITEM_COMMENTS,
	/** Set the pubDate to a mrss_item_t element - the value is a string */
	MRSS_FLAG_ITEM_PUBDATE,
	/** Set the guid to a mrss_item_t element - the value is a string */
	MRSS_FLAG_ITEM_GUID,
	/** Set the guid_isPermaLink to a mrss_item_t element - 
	* the value is a integer */
	MRSS_FLAG_ITEM_GUID_ISPERMALINK,
	/** Set the source to a mrss_item_t element - the value is a string */
	MRSS_FLAG_ITEM_SOURCE,
	/** Set the source_url to a mrss_item_t element - the value is a string */
	MRSS_FLAG_ITEM_SOURCE_URL,
	/** Set the enclosure to a mrss_item_t element - the value is a string */
	MRSS_FLAG_ITEM_ENCLOSURE,
	/** Set the enclosure_url to a mrss_item_t element - the value is a string */
	MRSS_FLAG_ITEM_ENCLOSURE_URL,
	/** Set the enclosure_length to a mrss_item_t element - 
	* the value is a integer */
	MRSS_FLAG_ITEM_ENCLOSURE_LENGTH,
	/** Set the enclosure_type to a mrss_item_t element - the value is a string */
	MRSS_FLAG_ITEM_ENCLOSURE_TYPE,

	/* Item */

	/** Set the name to a mrss_tag_t element - the value is a string */
	MRSS_FLAG_TAG_NAME,

	/** Set the value to a mrss_tag_t element - the value is a string */
	MRSS_FLAG_TAG_VALUE,

	/** Set the namespace to a mrss_tag_t element - the value is a string */
	MRSS_FLAG_TAG_NS,

	/** Set the name to a mrss_attribute_t element - the value is a string */
	MRSS_FLAG_ATTRIBUTE_NAME,

	/** Set the value to a mrss_attribute_t element - the value is a string */
	MRSS_FLAG_ATTRIBUTE_VALUE,

	/** Set the namespace to a mrss_attribute_t element - the value is a string */
	MRSS_FLAG_ATTRIBUTE_NS,

	/** Set the terminetor flag */
	MRSS_FLAG_END = 0
} 

enum mrss_element_t
{
 MRSS_ELEMENT_CHANNEL,
 MRSS_ELEMENT_ITEM,
 MRSS_ELEMENT_SKIPHOURS,
 MRSS_ELEMENT_SKIPDAYS,
 MRSS_ELEMENT_CATEGORY,
 MRSS_ELEMENT_TAG,
 MRSS_ELEMENT_ATTRIBUTE
}

struct mrss_item_t {
	mrss_element_t element;
	int allocated;
	char *title;			/* R	O	O	O	R	*/
	char *title_type;		/* -	-	-	-	O	*/
	char *link;			/* R	O	O	O	O	*/
	char *description;		/* R	O	-	O	O	*/
	char *description_type;	/* -	-	-	-	0	*/
	char *copyright;		/* -	-	-	-	O	*/
	char *copyright_type;		/* -	-	-	-	O	*/

	char *author;			/* -	-	-	O	O	*/
	char *author_uri;		/* -	-	-	-	O	*/
	char *author_email;		/* -	-	-	-	O	*/

	char *contributor;		/* -	-	-	-	O	*/
	char *contributor_uri;	/* -	-	-	-	O	*/
	char *contributor_email;	/* -	-	-	-	O	*/

	char *comments;		/* -	-	-	O	-	*/
	char *pubDate;		/* -	-	-	O	O	*/
	char *guid;			/* -	-	-	O	O	*/
	int guid_isPermaLink;		/* -	-	-	O	-	*/

	char *source;			/* -	O	-	O	-	*/
	char *source_url;		/* -	R	-	R	-	*/

	char *enclosure;		/* -	O	-	O	-	*/
	char *enclosure_url;		/* -	R	-	R	-	*/
	int enclosure_length;		/* -	R	-	R	-	*/
	char *enclosure_type;		/* -	R	-	R	-	*/

	mrss_category_t *category;	/* -	O	-	O	O	*/

	mrss_tag_t *other_tags;

	mrss_item_t *next;
}

struct mrss_hour_t {
	mrss_element_t element;
	int allocated;

	char *hour;			/* R	R	-	R	-	*/
	mrss_hour_t *next;
}

struct mrss_day_t {
	/** For internal use only: */
	mrss_element_t element;
	int allocated;

	/* Data: */
					/* 0.91	0.92	1.0	2.0	ATOM	*/
	char *day;			/* R	R	-	R	-	*/
	mrss_day_t *next;
}

struct mrss_category_t {
	mrss_element_t element;
	int allocated;
	char *category;		/* -	R	-	R	R	*/
	char *domain;			/* -	O	-	O	O	*/
	char *label;			/* -	-	-	-	O	*/
	mrss_category_t *next;
}

struct mrss_t {
	mrss_element_t element;
	int allocated;
	int curl_error;
	char *file;
	size_t size;
	char *encoding;
	mrss_version_t _version;
	char *title;			/* R	R	R	R	R	*/
	char *title_type;		/* -	-	-	-	O	*/
	char *description;		/* R	R	R	R	R	*/
	char *description_type;	/* -	-	-	-	O	*/
	char *link;			/* R	R	R	R	O	*/
	char *id;			/* 	-	-	-	-	O	*/
	char *language;		/* R	O	-	O	O	*/
	char *rating;			/* O	O	-	O	-	*/
	char *copyright;		/* O	O	-	O	O	*/
	char *copyright_type;		/* -	-	-	-	O	*/
	char *pubDate;		/* O	O	-	O	-	*/
	char *lastBuildDate;		/* O	O	-	O	O	*/
	char *docs;			/* O	O	-	O	-	*/
	char *managingeditor;		/* O	O	-	O	O	*/
	char *managingeditor_email;	/* O	O	-	O	O	*/
	char *managingeditor_uri;	/* O	O	-	O	O	*/
	char *webMaster;		/* O	O	-	O	-	*/
	int ttl;			/* -	-	-	O	-	*/
	char *about;			/* -	-	R	-	-	*/
	char *contributor;		/* -	-	-	-	R	*/
	char *contributor_email;	/* -	-	-	-	O	*/
	char *contributor_uri;	/* -	-	-	-	O	*/
	char *generator;		/* -	-	-	O	O	*/
	char *generator_uri;		/* -	-	-	-	O	*/
	char *generator_version;	/* -	-	-	-	O	*/
	char *image_title;		/* R	R	R	R	-	*/
	char *image_url;		/* R	R	R	R	O	*/
	char *image_logo;		/* -	-	-	-	O	*/
	char *image_link;		/* R	R	R	R	-	*/
	uint image_width;	/* O	O	-	O	-	*/
	uint image_height;	/* O	O	-	O	-	*/
	char *image_description;	/* O	O	-	O	-	*/

	/* TextInput: */		/* O	O	O	O	-	*/
	char *textinput_title;	/* R	R	R	R	-	*/
	char *textinput_description;	/* R	R	R	R	-	*/
	char *textinput_name;		/* R	R	R	R	-	*/
	char *textinput_link;		/* R	R	R	R	-	*/

	/* Cloud */
	char *cloud;			/* -	O	-	O	-	*/
	char *cloud_domain;		/* -	R	-	R	-	*/
	int cloud_port;		/* -	R	-	R	-	*/
	char *cloud_path;		/* -	R	-	R	-	*/
	char *cloud_registerProcedure;/* -	R	-	R	-	*/
	char *cloud_protocol;		/* -	R	-	R	-	*/

	mrss_hour_t *skipHours;	/* O	O	-	O	-	*/
	mrss_day_t *skipDays;		/* O	O	-	O	-	*/

	mrss_category_t *category;	/* -	O	-	O	O	*/

	mrss_item_t *item;		/* R	R	R	R	R	*/

	mrss_tag_t *other_tags;

	version(USE_LOCALE)
		void *c_locale;
}

struct mrss_tag_t {
	/** For internal use only: */
	mrss_element_t element;
	int allocated;

	/*name of the tag */
	char *name;

	/* value */
	char *value;

	/* namespace */
	char *ns;

	/* list of attributes: */
	mrss_attribute_t *attributes;

	/* Sub tags: */
	mrss_tag_t *children;

	/* the next tag: */
	mrss_tag_t *next;
};

struct mrss_attribute_t {
	/** For internal use only: */
	mrss_element_t element;
	int allocated;

	/* name of the tag */
	char *name;

	/* value */
	char *value;

	/* namespace */
	char *ns;

	/* The next attribute: */
	mrss_attribute_t *next;
}
struct mrss_options_t
{
	int timeout;
	char *proxy;
	char *proxy_authentication;
	char *certfile;
	char *cacert;
	char *password;
	int verifypeer;
	char *authentication;
	char *user_agent;
}

mrss_error_t	mrss_parse_url		(char *		url, mrss_t **	mrss);
mrss_error_t	mrss_parse_url_with_options (char *		url, mrss_t **	mrss, mrss_options_t	* options);
mrss_error_t	mrss_parse_url_with_options_and_error (char *		url, mrss_t **	mrss, mrss_options_t	* options, CURLcode *	curlcode);
mrss_error_t	mrss_parse_url_with_options_error_and_transfer_buffer (char *		url, mrss_t **	mrss, mrss_options_t	* options, CURLcode *	curlcode, char **	feed_content, int *		feed_size);
mrss_error_t	mrss_parse_file		(char *		file, mrss_t **	mrss); mrss_error_t	mrss_parse_buffer	(char *		buffer, size_t		size_buffer, mrss_t **	mrss);
mrss_error_t	mrss_write_file		(mrss_t *	mrss,char* file);
mrss_error_t	mrss_write_buffer	(mrss_t *	mrss, char **	buffer);

mrss_error_t	mrss_free		(mrss_generic_t	element);
char *		mrss_strerror		(mrss_error_t	err);
char *		mrss_curl_strerror	(CURLcode	err);
mrss_error_t	mrss_element		(mrss_generic_t	element, mrss_element_t *ret);
mrss_error_t	mrss_get_last_modified(char *		urlstring, time_t *	lastmodified);

mrss_error_t	mrss_get_last_modified_with_options (char *		urlstring, time_t *	lastmodified, mrss_options_t * options);
mrss_error_t	mrss_get_last_modified_with_options_and_error
					(char *		urlstring,
					 time_t *	lastmodified,
					 mrss_options_t * options,
					 CURLcode *	curl_code);
mrss_error_t	mrss_new		(mrss_t **	mrss);
mrss_error_t	mrss_set		(mrss_generic_t	element,
					 ...);
mrss_error_t	mrss_get		(mrss_generic_t	element,
					 ...);
mrss_error_t	mrss_new_subdata	(mrss_generic_t	element,
					 mrss_element_t	subelement,
					 mrss_generic_t	subdata);
mrss_error_t	mrss_remove_subdata	(mrss_generic_t	element,
					 mrss_generic_t	subdata);
mrss_error_t	mrss_search_tag		(mrss_generic_t	element, char *		name, char *		ns, mrss_tag_t **	tag);
mrss_error_t	mrss_search_attribute	(mrss_generic_t	element, char *		name, char *		ns,
					 mrss_attribute_t ** attribute);
mrss_options_t * mrss_options_new	(int timeout, char *proxy, char *proxy_authentication, char *certfile, char *password,
					 char *cacert, int verifypeer, char *authentication, char *user_agent);
void		mrss_options_free	(mrss_options_t *options);

