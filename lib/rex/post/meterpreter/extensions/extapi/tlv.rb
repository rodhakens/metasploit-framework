# -*- coding: binary -*-
module Rex
module Post
module Meterpreter
module Extensions
module Extapi

# ID for the extension (needs to be a multiple of 1000)
EXTENSION_ID_EXTAPI = 3000

# Associated command ids
COMMAND_ID_EXTAPI_ADSI_DOMAIN_QUERY        = EXTENSION_ID_EXTAPI + 1
COMMAND_ID_EXTAPI_CLIPBOARD_GET_DATA       = EXTENSION_ID_EXTAPI + 2
COMMAND_ID_EXTAPI_CLIPBOARD_MONITOR_DUMP   = EXTENSION_ID_EXTAPI + 3
COMMAND_ID_EXTAPI_CLIPBOARD_MONITOR_PAUSE  = EXTENSION_ID_EXTAPI + 4
COMMAND_ID_EXTAPI_CLIPBOARD_MONITOR_PURGE  = EXTENSION_ID_EXTAPI + 5
COMMAND_ID_EXTAPI_CLIPBOARD_MONITOR_RESUME = EXTENSION_ID_EXTAPI + 6
COMMAND_ID_EXTAPI_CLIPBOARD_MONITOR_START  = EXTENSION_ID_EXTAPI + 7
COMMAND_ID_EXTAPI_CLIPBOARD_MONITOR_STOP   = EXTENSION_ID_EXTAPI + 8
COMMAND_ID_EXTAPI_CLIPBOARD_SET_DATA       = EXTENSION_ID_EXTAPI + 9
COMMAND_ID_EXTAPI_NTDS_PARSE               = EXTENSION_ID_EXTAPI + 10
COMMAND_ID_EXTAPI_PAGEANT_SEND_QUERY       = EXTENSION_ID_EXTAPI + 11
COMMAND_ID_EXTAPI_SERVICE_CONTROL          = EXTENSION_ID_EXTAPI + 12
COMMAND_ID_EXTAPI_SERVICE_ENUM             = EXTENSION_ID_EXTAPI + 13
COMMAND_ID_EXTAPI_SERVICE_QUERY            = EXTENSION_ID_EXTAPI + 14
COMMAND_ID_EXTAPI_WINDOW_ENUM              = EXTENSION_ID_EXTAPI + 15
COMMAND_ID_EXTAPI_WMI_QUERY                = EXTENSION_ID_EXTAPI + 16

TLV_TYPE_EXTENSION_EXTAPI = 0

TLV_TYPE_EXT_WINDOW_ENUM_GROUP              = TLV_META_TYPE_GROUP  | (TLV_TYPE_EXTENSION_EXTAPI + TLV_EXTENSIONS + 1)
TLV_TYPE_EXT_WINDOW_ENUM_PID                = TLV_META_TYPE_UINT   | (TLV_TYPE_EXTENSION_EXTAPI + TLV_EXTENSIONS + 2)
TLV_TYPE_EXT_WINDOW_ENUM_HANDLE             = TLV_META_TYPE_QWORD  | (TLV_TYPE_EXTENSION_EXTAPI + TLV_EXTENSIONS + 3)
TLV_TYPE_EXT_WINDOW_ENUM_TITLE              = TLV_META_TYPE_STRING | (TLV_TYPE_EXTENSION_EXTAPI + TLV_EXTENSIONS + 4)
TLV_TYPE_EXT_WINDOW_ENUM_INCLUDEUNKNOWN     = TLV_META_TYPE_BOOL   | (TLV_TYPE_EXTENSION_EXTAPI + TLV_EXTENSIONS + 5)
TLV_TYPE_EXT_WINDOW_ENUM_CLASSNAME     = TLV_META_TYPE_STRING   | (TLV_TYPE_EXTENSION_EXTAPI + TLV_EXTENSIONS + 6)

TLV_TYPE_EXT_SERVICE_ENUM_GROUP             = TLV_META_TYPE_GROUP  | (TLV_TYPE_EXTENSION_EXTAPI + TLV_EXTENSIONS + 10)
TLV_TYPE_EXT_SERVICE_ENUM_NAME              = TLV_META_TYPE_STRING | (TLV_TYPE_EXTENSION_EXTAPI + TLV_EXTENSIONS + 11)
TLV_TYPE_EXT_SERVICE_ENUM_DISPLAYNAME       = TLV_META_TYPE_STRING | (TLV_TYPE_EXTENSION_EXTAPI + TLV_EXTENSIONS + 12)
TLV_TYPE_EXT_SERVICE_ENUM_PID               = TLV_META_TYPE_UINT   | (TLV_TYPE_EXTENSION_EXTAPI + TLV_EXTENSIONS + 13)
TLV_TYPE_EXT_SERVICE_ENUM_STATUS            = TLV_META_TYPE_UINT   | (TLV_TYPE_EXTENSION_EXTAPI + TLV_EXTENSIONS + 14)
TLV_TYPE_EXT_SERVICE_ENUM_INTERACTIVE       = TLV_META_TYPE_BOOL   | (TLV_TYPE_EXTENSION_EXTAPI + TLV_EXTENSIONS + 15)

TLV_TYPE_EXT_SERVICE_QUERY_STARTTYPE        = TLV_META_TYPE_UINT   | (TLV_TYPE_EXTENSION_EXTAPI + TLV_EXTENSIONS + 20)
TLV_TYPE_EXT_SERVICE_QUERY_DISPLAYNAME      = TLV_META_TYPE_STRING | (TLV_TYPE_EXTENSION_EXTAPI + TLV_EXTENSIONS + 21)
TLV_TYPE_EXT_SERVICE_QUERY_STARTNAME        = TLV_META_TYPE_STRING | (TLV_TYPE_EXTENSION_EXTAPI + TLV_EXTENSIONS + 22)
TLV_TYPE_EXT_SERVICE_QUERY_PATH             = TLV_META_TYPE_STRING | (TLV_TYPE_EXTENSION_EXTAPI + TLV_EXTENSIONS + 23)
TLV_TYPE_EXT_SERVICE_QUERY_LOADORDERGROUP   = TLV_META_TYPE_STRING | (TLV_TYPE_EXTENSION_EXTAPI + TLV_EXTENSIONS + 24)
TLV_TYPE_EXT_SERVICE_QUERY_INTERACTIVE      = TLV_META_TYPE_BOOL   | (TLV_TYPE_EXTENSION_EXTAPI + TLV_EXTENSIONS + 25)
TLV_TYPE_EXT_SERVICE_QUERY_DACL             = TLV_META_TYPE_STRING | (TLV_TYPE_EXTENSION_EXTAPI + TLV_EXTENSIONS + 26)
TLV_TYPE_EXT_SERVICE_QUERY_STATUS           = TLV_META_TYPE_UINT   | (TLV_TYPE_EXTENSION_EXTAPI + TLV_EXTENSIONS + 27)

TLV_TYPE_EXT_SERVICE_CTRL_NAME              = TLV_META_TYPE_STRING | (TLV_TYPE_EXTENSION_EXTAPI + TLV_EXTENSIONS + 28)
TLV_TYPE_EXT_SERVICE_CTRL_OP                = TLV_META_TYPE_UINT   | (TLV_TYPE_EXTENSION_EXTAPI + TLV_EXTENSIONS + 29)

TLV_TYPE_EXT_CLIPBOARD_DOWNLOAD             = TLV_META_TYPE_BOOL   | (TLV_TYPE_EXTENSION_EXTAPI + TLV_EXTENSIONS + 35)

TLV_TYPE_EXT_CLIPBOARD_TYPE_TIMESTAMP       = TLV_META_TYPE_STRING | (TLV_TYPE_EXTENSION_EXTAPI + TLV_EXTENSIONS + 38)

TLV_TYPE_EXT_CLIPBOARD_TYPE_TEXT            = TLV_META_TYPE_GROUP  | (TLV_TYPE_EXTENSION_EXTAPI + TLV_EXTENSIONS + 39)
TLV_TYPE_EXT_CLIPBOARD_TYPE_TEXT_CONTENT    = TLV_META_TYPE_STRING | (TLV_TYPE_EXTENSION_EXTAPI + TLV_EXTENSIONS + 40)

TLV_TYPE_EXT_CLIPBOARD_TYPE_FILE            = TLV_META_TYPE_GROUP  | (TLV_TYPE_EXTENSION_EXTAPI + TLV_EXTENSIONS + 41)
TLV_TYPE_EXT_CLIPBOARD_TYPE_FILE_NAME       = TLV_META_TYPE_STRING | (TLV_TYPE_EXTENSION_EXTAPI + TLV_EXTENSIONS + 42)
TLV_TYPE_EXT_CLIPBOARD_TYPE_FILE_SIZE       = TLV_META_TYPE_QWORD  | (TLV_TYPE_EXTENSION_EXTAPI + TLV_EXTENSIONS + 43)
TLV_TYPE_EXT_CLIPBOARD_TYPE_FILES           = TLV_META_TYPE_GROUP  | (TLV_TYPE_EXTENSION_EXTAPI + TLV_EXTENSIONS + 44)

TLV_TYPE_EXT_CLIPBOARD_TYPE_IMAGE_JPG       = TLV_META_TYPE_GROUP  | (TLV_TYPE_EXTENSION_EXTAPI + TLV_EXTENSIONS + 45)
TLV_TYPE_EXT_CLIPBOARD_TYPE_IMAGE_JPG_DIMX  = TLV_META_TYPE_UINT   | (TLV_TYPE_EXTENSION_EXTAPI + TLV_EXTENSIONS + 46)
TLV_TYPE_EXT_CLIPBOARD_TYPE_IMAGE_JPG_DIMY  = TLV_META_TYPE_UINT   | (TLV_TYPE_EXTENSION_EXTAPI + TLV_EXTENSIONS + 47)
TLV_TYPE_EXT_CLIPBOARD_TYPE_IMAGE_JPG_DATA  = TLV_META_TYPE_RAW    | (TLV_TYPE_EXTENSION_EXTAPI + TLV_EXTENSIONS + 48)

TLV_TYPE_EXT_CLIPBOARD_MON_CAP_IMG_DATA     = TLV_META_TYPE_BOOL   | (TLV_TYPE_EXTENSION_EXTAPI + TLV_EXTENSIONS + 50)
TLV_TYPE_EXT_CLIPBOARD_MON_WIN_CLASS        = TLV_META_TYPE_STRING | (TLV_TYPE_EXTENSION_EXTAPI + TLV_EXTENSIONS + 51)
TLV_TYPE_EXT_CLIPBOARD_MON_DUMP             = TLV_META_TYPE_BOOL   | (TLV_TYPE_EXTENSION_EXTAPI + TLV_EXTENSIONS + 52)
TLV_TYPE_EXT_CLIPBOARD_MON_PURGE            = TLV_META_TYPE_BOOL   | (TLV_TYPE_EXTENSION_EXTAPI + TLV_EXTENSIONS + 53)

TLV_TYPE_EXT_ADSI_DOMAIN                    = TLV_META_TYPE_STRING | (TLV_TYPE_EXTENSION_EXTAPI + TLV_EXTENSIONS + 54)
TLV_TYPE_EXT_ADSI_FILTER                    = TLV_META_TYPE_STRING | (TLV_TYPE_EXTENSION_EXTAPI + TLV_EXTENSIONS + 55)
TLV_TYPE_EXT_ADSI_FIELD                     = TLV_META_TYPE_STRING | (TLV_TYPE_EXTENSION_EXTAPI + TLV_EXTENSIONS + 56)
TLV_TYPE_EXT_ADSI_RESULT                    = TLV_META_TYPE_GROUP  | (TLV_TYPE_EXTENSION_EXTAPI + TLV_EXTENSIONS + 57)
TLV_TYPE_EXT_ADSI_MAXRESULTS                = TLV_META_TYPE_UINT   | (TLV_TYPE_EXTENSION_EXTAPI + TLV_EXTENSIONS + 58)
TLV_TYPE_EXT_ADSI_PAGESIZE                  = TLV_META_TYPE_UINT   | (TLV_TYPE_EXTENSION_EXTAPI + TLV_EXTENSIONS + 59)
TLV_TYPE_EXT_ADSI_ARRAY                     = TLV_META_TYPE_GROUP  | (TLV_TYPE_EXTENSION_EXTAPI + TLV_EXTENSIONS + 60)
TLV_TYPE_EXT_ADSI_STRING                    = TLV_META_TYPE_STRING | (TLV_TYPE_EXTENSION_EXTAPI + TLV_EXTENSIONS + 61)
TLV_TYPE_EXT_ADSI_NUMBER                    = TLV_META_TYPE_UINT   | (TLV_TYPE_EXTENSION_EXTAPI + TLV_EXTENSIONS + 62)
TLV_TYPE_EXT_ADSI_BIGNUMBER                 = TLV_META_TYPE_QWORD  | (TLV_TYPE_EXTENSION_EXTAPI + TLV_EXTENSIONS + 63)
TLV_TYPE_EXT_ADSI_BOOL                      = TLV_META_TYPE_BOOL   | (TLV_TYPE_EXTENSION_EXTAPI + TLV_EXTENSIONS + 64)
TLV_TYPE_EXT_ADSI_RAW                       = TLV_META_TYPE_RAW    | (TLV_TYPE_EXTENSION_EXTAPI + TLV_EXTENSIONS + 65)
TLV_TYPE_EXT_ADSI_PATH                      = TLV_META_TYPE_GROUP  | (TLV_TYPE_EXTENSION_EXTAPI + TLV_EXTENSIONS + 66)
TLV_TYPE_EXT_ADSI_PATH_VOL                  = TLV_META_TYPE_STRING | (TLV_TYPE_EXTENSION_EXTAPI + TLV_EXTENSIONS + 67)
TLV_TYPE_EXT_ADSI_PATH_PATH                 = TLV_META_TYPE_STRING | (TLV_TYPE_EXTENSION_EXTAPI + TLV_EXTENSIONS + 68)
TLV_TYPE_EXT_ADSI_PATH_TYPE                 = TLV_META_TYPE_UINT   | (TLV_TYPE_EXTENSION_EXTAPI + TLV_EXTENSIONS + 69)
TLV_TYPE_EXT_ADSI_DN                        = TLV_META_TYPE_GROUP  | (TLV_TYPE_EXTENSION_EXTAPI + TLV_EXTENSIONS + 70)

TLV_TYPE_NTDS_TEST                          = TLV_META_TYPE_STRING | (TLV_TYPE_EXTENSION_EXTAPI + TLV_EXTENSIONS + 80)
TLV_TYPE_NTDS_PATH                          = TLV_META_TYPE_STRING | (TLV_TYPE_EXTENSION_EXTAPI + TLV_EXTENSIONS + 81)

TLV_TYPE_EXTENSION_PAGEANT_STATUS           = TLV_META_TYPE_BOOL   | (TLV_TYPE_EXTENSION_EXTAPI + TLV_EXTENSIONS + 85)
TLV_TYPE_EXTENSION_PAGEANT_ERRORMESSAGE     = TLV_META_TYPE_UINT   | (TLV_TYPE_EXTENSION_EXTAPI + TLV_EXTENSIONS + 86)
TLV_TYPE_EXTENSION_PAGEANT_RETURNEDBLOB     = TLV_META_TYPE_RAW    | (TLV_TYPE_EXTENSION_EXTAPI + TLV_EXTENSIONS + 87)
TLV_TYPE_EXTENSION_PAGEANT_SIZE_IN          = TLV_META_TYPE_UINT   | (TLV_TYPE_EXTENSION_EXTAPI + TLV_EXTENSIONS + 88)
TLV_TYPE_EXTENSION_PAGEANT_BLOB_IN          = TLV_META_TYPE_RAW    | (TLV_TYPE_EXTENSION_EXTAPI + TLV_EXTENSIONS + 89)

TLV_TYPE_EXT_WMI_DOMAIN                     = TLV_META_TYPE_STRING | (TLV_TYPE_EXTENSION_EXTAPI + TLV_EXTENSIONS + 90)
TLV_TYPE_EXT_WMI_QUERY                      = TLV_META_TYPE_STRING | (TLV_TYPE_EXTENSION_EXTAPI + TLV_EXTENSIONS + 91)
TLV_TYPE_EXT_WMI_FIELD                      = TLV_META_TYPE_STRING | (TLV_TYPE_EXTENSION_EXTAPI + TLV_EXTENSIONS + 92)
TLV_TYPE_EXT_WMI_VALUE                      = TLV_META_TYPE_STRING | (TLV_TYPE_EXTENSION_EXTAPI + TLV_EXTENSIONS + 93)
TLV_TYPE_EXT_WMI_FIELDS                     = TLV_META_TYPE_GROUP  | (TLV_TYPE_EXTENSION_EXTAPI + TLV_EXTENSIONS + 94)
TLV_TYPE_EXT_WMI_VALUES                     = TLV_META_TYPE_GROUP  | (TLV_TYPE_EXTENSION_EXTAPI + TLV_EXTENSIONS + 95)
TLV_TYPE_EXT_WMI_ERROR                      = TLV_META_TYPE_STRING | (TLV_TYPE_EXTENSION_EXTAPI + TLV_EXTENSIONS + 96)

end
end
end
end
end
