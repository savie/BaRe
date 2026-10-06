package com.microsoft.identity.common.java.flighting;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class CommonFlight {
    private static final /* synthetic */ CommonFlight[] $VALUES;
    public static final CommonFlight ADD_USERNAME_IN_UI_REQUIRED_EXCEPTION_BROKER_RESULT;
    public static final CommonFlight DISABLE_NETWORK_CONNECTIVITY_CHECK;
    public static final CommonFlight DISABLE_UNNECESSARY_CRYPTO_PURPOSES_FROM_DEVICE_POP_MANAGER;
    public static final CommonFlight ENABLE_AM_API_WORKPROFILE_EXTRA_QUERY_PARAMETERS;
    public static final CommonFlight ENABLE_ATTACH_NEW_PRT_HEADER_WHEN_NONCE_EXPIRED;
    public static final CommonFlight ENABLE_ATTACH_PRT_HEADER_WHEN_CROSS_CLOUD;
    public static final CommonFlight ENABLE_HANDLING_FOR_EDGE_TO_EDGE;
    public static final CommonFlight ENABLE_JS_API_FOR_AUTHUX;
    public static final CommonFlight ENABLE_KEYSTORE_BACKED_SECRET_KEY_PROVIDER;
    public static final CommonFlight ENABLE_LEGACY_FIDO_SECURITY_KEY_LOGIC;
    public static final CommonFlight ENABLE_NEW_KEY_GEN_SPEC_FOR_WRAP_WITHOUT_PURPOSE_WRAP_KEY;
    public static final CommonFlight ENABLE_NEW_KEY_GEN_SPEC_FOR_WRAP_WITH_PURPOSE_WRAP_KEY;
    public static final CommonFlight ENABLE_OAEP_WITH_SHA_AND_MGF1_PADDING;
    public static final CommonFlight ENABLE_OPENID_ISSUER_VALIDATION_REPORTING;
    public static final CommonFlight ENABLE_OPEN_ID_VC_REDIRECT;
    public static final CommonFlight ENABLE_PASSKEY_REGISTRATION;
    public static final CommonFlight ENABLE_PLAYSTORE_URL_LAUNCH;
    public static final CommonFlight ENABLE_SERVER_CLIENT_DATA_TELEMETRY;
    public static final CommonFlight ENABLE_SOVEREIGN_CLOUD_INSTANCE_DISCOVERY;
    public static final CommonFlight ENABLE_WEBVIEW_FILE_UPLOAD;
    public static final CommonFlight ENABLE_WEBVIEW_MULTIPLE_WINDOWS;
    public static final CommonFlight ENABLE_WEBVIEW_SECURITY_SETTINGS;
    public static final CommonFlight ENABLE_WEB_CP_IN_WEBVIEW;
    public static final CommonFlight EXPOSE_CCS_REQUEST_ID_IN_TOKENRESPONSE;
    public static final CommonFlight EXPOSE_CCS_REQUEST_SEQUENCE_IN_TOKENRESPONSE;
    public static final CommonFlight RE_ENABLE_VALIDATE_SIGNING_CERT_CHAIN_BROKER_APPS;
    public static final CommonFlight SHOULD_PRESERVE_WEBVIEW_FLOW_ON_SSL_ERROR;
    public static final CommonFlight SWITCH_BROWSER_PROTOCOL_REQUIRES_STATE;
    public static final CommonFlight URL_CONNECTION_CONNECT_TIME_OUT;
    public static final CommonFlight URL_CONNECTION_READ_TIME_OUT;
    public static final CommonFlight USE_ENABLED_SETTING_FOR_PACKAGE_CHECK;
    public static final CommonFlight USE_INCREASED_DEFAULT_SILENT_REQUEST_THREAD_POOL_SIZE;
    public static final CommonFlight USE_NETWORK_CAPABILITY_FOR_NETWORK_CHECK;
    public static final CommonFlight WEB_CP_WAIT_TIMEOUT_FOR_FLIGHTS;
    public static final CommonFlight WRAPPED_SECRET_KEY_SERIALIZER_VERSION;
    private Object defaultValue;

    /* JADX INFO: Fake field, exist only in values array */
    CommonFlight EF1;

    static {
        Boolean bool = Boolean.FALSE;
        CommonFlight commonFlight = new CommonFlight("USE_NETWORK_CAPABILITY_FOR_NETWORK_CHECK", 0);
        commonFlight.defaultValue = bool;
        USE_NETWORK_CAPABILITY_FOR_NETWORK_CHECK = commonFlight;
        Boolean bool2 = Boolean.TRUE;
        CommonFlight commonFlight2 = new CommonFlight("EXPOSE_CCS_REQUEST_ID_IN_TOKENRESPONSE", 1);
        commonFlight2.defaultValue = bool2;
        EXPOSE_CCS_REQUEST_ID_IN_TOKENRESPONSE = commonFlight2;
        CommonFlight commonFlight3 = new CommonFlight("EXPOSE_CCS_REQUEST_SEQUENCE_IN_TOKENRESPONSE", 2);
        commonFlight3.defaultValue = bool2;
        EXPOSE_CCS_REQUEST_SEQUENCE_IN_TOKENRESPONSE = commonFlight3;
        CommonFlight commonFlight4 = new CommonFlight("ACQUIRE_TOKEN_SILENT_TIMEOUT_MILLISECONDS", 3);
        commonFlight4.defaultValue = 30000;
        CommonFlight commonFlight5 = new CommonFlight("ENABLE_PASSKEY_REGISTRATION", 4);
        commonFlight5.defaultValue = bool;
        ENABLE_PASSKEY_REGISTRATION = commonFlight5;
        CommonFlight commonFlight6 = new CommonFlight("URL_CONNECTION_CONNECT_TIME_OUT", 5);
        commonFlight6.defaultValue = 30000;
        URL_CONNECTION_CONNECT_TIME_OUT = commonFlight6;
        CommonFlight commonFlight7 = new CommonFlight("URL_CONNECTION_READ_TIME_OUT", 6);
        commonFlight7.defaultValue = 30000;
        URL_CONNECTION_READ_TIME_OUT = commonFlight7;
        CommonFlight commonFlight8 = new CommonFlight("DISABLE_NETWORK_CONNECTIVITY_CHECK", 7);
        commonFlight8.defaultValue = bool2;
        DISABLE_NETWORK_CONNECTIVITY_CHECK = commonFlight8;
        CommonFlight commonFlight9 = new CommonFlight("STOP_RETURNING_AAD_RT_BACK_TO_CALLING_APP", 8);
        commonFlight9.defaultValue = bool;
        CommonFlight commonFlight10 = new CommonFlight("ENABLE_LEGACY_FIDO_SECURITY_KEY_LOGIC", 9);
        commonFlight10.defaultValue = bool2;
        ENABLE_LEGACY_FIDO_SECURITY_KEY_LOGIC = commonFlight10;
        CommonFlight commonFlight11 = new CommonFlight("ENABLE_ATTACH_NEW_PRT_HEADER_WHEN_NONCE_EXPIRED", 10);
        commonFlight11.defaultValue = bool2;
        ENABLE_ATTACH_NEW_PRT_HEADER_WHEN_NONCE_EXPIRED = commonFlight11;
        CommonFlight commonFlight12 = new CommonFlight("ENABLE_NEW_KEY_GEN_SPEC_FOR_WRAP_WITH_PURPOSE_WRAP_KEY", 11);
        commonFlight12.defaultValue = bool2;
        ENABLE_NEW_KEY_GEN_SPEC_FOR_WRAP_WITH_PURPOSE_WRAP_KEY = commonFlight12;
        CommonFlight commonFlight13 = new CommonFlight("ENABLE_ATTACH_PRT_HEADER_WHEN_CROSS_CLOUD", 12);
        commonFlight13.defaultValue = bool2;
        ENABLE_ATTACH_PRT_HEADER_WHEN_CROSS_CLOUD = commonFlight13;
        CommonFlight commonFlight14 = new CommonFlight("SWITCH_BROWSER_PROTOCOL_REQUIRES_STATE", 13);
        commonFlight14.defaultValue = bool;
        SWITCH_BROWSER_PROTOCOL_REQUIRES_STATE = commonFlight14;
        CommonFlight commonFlight15 = new CommonFlight("ENABLE_AM_API_WORKPROFILE_EXTRA_QUERY_PARAMETERS", 14);
        commonFlight15.defaultValue = bool2;
        ENABLE_AM_API_WORKPROFILE_EXTRA_QUERY_PARAMETERS = commonFlight15;
        CommonFlight commonFlight16 = new CommonFlight("ENABLE_NEW_KEY_GEN_SPEC_FOR_WRAP_WITHOUT_PURPOSE_WRAP_KEY", 15);
        commonFlight16.defaultValue = bool2;
        ENABLE_NEW_KEY_GEN_SPEC_FOR_WRAP_WITHOUT_PURPOSE_WRAP_KEY = commonFlight16;
        CommonFlight commonFlight17 = new CommonFlight("ENABLE_JS_API_FOR_AUTHUX", 16);
        commonFlight17.defaultValue = bool2;
        ENABLE_JS_API_FOR_AUTHUX = commonFlight17;
        CommonFlight commonFlight18 = new CommonFlight("ENABLE_OAEP_WITH_SHA_AND_MGF1_PADDING", 17);
        commonFlight18.defaultValue = bool;
        ENABLE_OAEP_WITH_SHA_AND_MGF1_PADDING = commonFlight18;
        CommonFlight commonFlight19 = new CommonFlight("ENABLE_KEYSTORE_BACKED_SECRET_KEY_PROVIDER", 18);
        commonFlight19.defaultValue = bool2;
        ENABLE_KEYSTORE_BACKED_SECRET_KEY_PROVIDER = commonFlight19;
        CommonFlight commonFlight20 = new CommonFlight("WRAPPED_SECRET_KEY_SERIALIZER_VERSION", 19);
        commonFlight20.defaultValue = 0;
        WRAPPED_SECRET_KEY_SERIALIZER_VERSION = commonFlight20;
        CommonFlight commonFlight21 = new CommonFlight("ENABLE_HANDLING_FOR_EDGE_TO_EDGE", 20);
        commonFlight21.defaultValue = bool2;
        ENABLE_HANDLING_FOR_EDGE_TO_EDGE = commonFlight21;
        CommonFlight commonFlight22 = new CommonFlight("ENABLE_WEB_CP_IN_WEBVIEW", 21);
        commonFlight22.defaultValue = bool;
        ENABLE_WEB_CP_IN_WEBVIEW = commonFlight22;
        CommonFlight commonFlight23 = new CommonFlight("ENABLE_PLAYSTORE_URL_LAUNCH", 22);
        commonFlight23.defaultValue = bool;
        ENABLE_PLAYSTORE_URL_LAUNCH = commonFlight23;
        CommonFlight commonFlight24 = new CommonFlight("SHOULD_PRESERVE_WEBVIEW_FLOW_ON_SSL_ERROR", 23);
        commonFlight24.defaultValue = bool2;
        SHOULD_PRESERVE_WEBVIEW_FLOW_ON_SSL_ERROR = commonFlight24;
        CommonFlight commonFlight25 = new CommonFlight("ADD_USERNAME_IN_UI_REQUIRED_EXCEPTION_BROKER_RESULT", 24);
        commonFlight25.defaultValue = bool2;
        ADD_USERNAME_IN_UI_REQUIRED_EXCEPTION_BROKER_RESULT = commonFlight25;
        CommonFlight commonFlight26 = new CommonFlight("WEB_CP_WAIT_TIMEOUT_FOR_FLIGHTS", 25);
        commonFlight26.defaultValue = 3000;
        WEB_CP_WAIT_TIMEOUT_FOR_FLIGHTS = commonFlight26;
        CommonFlight commonFlight27 = new CommonFlight("ENABLE_WEBVIEW_SECURITY_SETTINGS", 26);
        commonFlight27.defaultValue = bool;
        ENABLE_WEBVIEW_SECURITY_SETTINGS = commonFlight27;
        CommonFlight commonFlight28 = new CommonFlight("ENABLE_OPENID_ISSUER_VALIDATION_REPORTING", 27);
        commonFlight28.defaultValue = bool2;
        ENABLE_OPENID_ISSUER_VALIDATION_REPORTING = commonFlight28;
        CommonFlight commonFlight29 = new CommonFlight("DISABLE_WEB_APPS_API", 28);
        commonFlight29.defaultValue = bool;
        CommonFlight commonFlight30 = new CommonFlight("USE_IN_MEMORY_CACHE_FOR_ACCOUNTS_AND_CREDENTIALS", 29);
        commonFlight30.defaultValue = bool;
        CommonFlight commonFlight31 = new CommonFlight("CALL_REFACTORED_SAVE_AND_LOAD_AGGREGATED_ACCOUNT_METHOD", 30);
        commonFlight31.defaultValue = bool;
        CommonFlight commonFlight32 = new CommonFlight("DISABLE_UNNECESSARY_CRYPTO_PURPOSES_FROM_DEVICE_POP_MANAGER", 31);
        commonFlight32.defaultValue = bool;
        DISABLE_UNNECESSARY_CRYPTO_PURPOSES_FROM_DEVICE_POP_MANAGER = commonFlight32;
        CommonFlight commonFlight33 = new CommonFlight("RE_ENABLE_VALIDATE_SIGNING_CERT_CHAIN_BROKER_APPS", 32);
        commonFlight33.defaultValue = bool;
        RE_ENABLE_VALIDATE_SIGNING_CERT_CHAIN_BROKER_APPS = commonFlight33;
        CommonFlight commonFlight34 = new CommonFlight("USE_LOCKS_IN_NAME_VALUE_STORAGE", 33);
        commonFlight34.defaultValue = bool;
        CommonFlight commonFlight35 = new CommonFlight("USE_INCREASED_DEFAULT_SILENT_REQUEST_THREAD_POOL_SIZE", 34);
        commonFlight35.defaultValue = bool;
        USE_INCREASED_DEFAULT_SILENT_REQUEST_THREAD_POOL_SIZE = commonFlight35;
        CommonFlight commonFlight36 = new CommonFlight("ENABLE_WEBVIEW_MULTIPLE_WINDOWS", 35);
        commonFlight36.defaultValue = bool2;
        ENABLE_WEBVIEW_MULTIPLE_WINDOWS = commonFlight36;
        CommonFlight commonFlight37 = new CommonFlight("ENABLE_WEBVIEW_FILE_UPLOAD", 36);
        commonFlight37.defaultValue = bool;
        ENABLE_WEBVIEW_FILE_UPLOAD = commonFlight37;
        CommonFlight commonFlight38 = new CommonFlight("ENABLE_OPEN_ID_VC_REDIRECT", 37);
        commonFlight38.defaultValue = bool2;
        ENABLE_OPEN_ID_VC_REDIRECT = commonFlight38;
        CommonFlight commonFlight39 = new CommonFlight("ENABLE_SOVEREIGN_CLOUD_INSTANCE_DISCOVERY", 38);
        commonFlight39.defaultValue = bool2;
        ENABLE_SOVEREIGN_CLOUD_INSTANCE_DISCOVERY = commonFlight39;
        CommonFlight commonFlight40 = new CommonFlight("USE_ENABLED_SETTING_FOR_PACKAGE_CHECK", 39);
        commonFlight40.defaultValue = bool;
        USE_ENABLED_SETTING_FOR_PACKAGE_CHECK = commonFlight40;
        CommonFlight commonFlight41 = new CommonFlight("ENABLE_HTTP_CANCELLATION_ON_TIMEOUT", 40);
        commonFlight41.defaultValue = bool;
        CommonFlight commonFlight42 = new CommonFlight("ENABLE_SERVER_CLIENT_DATA_TELEMETRY", 41);
        commonFlight42.defaultValue = bool2;
        ENABLE_SERVER_CLIENT_DATA_TELEMETRY = commonFlight42;
        CommonFlight commonFlight43 = new CommonFlight("ENABLE_AUTH_TAB_FOR_SWITCH_BROWSER", 42);
        commonFlight43.defaultValue = bool;
        CommonFlight commonFlight44 = new CommonFlight("ENABLE_FILTER_THEN_CLONE_IN_MEMORY_CACHE", 43);
        commonFlight44.defaultValue = bool;
        $VALUES = new CommonFlight[]{commonFlight, commonFlight2, commonFlight3, commonFlight4, commonFlight5, commonFlight6, commonFlight7, commonFlight8, commonFlight9, commonFlight10, commonFlight11, commonFlight12, commonFlight13, commonFlight14, commonFlight15, commonFlight16, commonFlight17, commonFlight18, commonFlight19, commonFlight20, commonFlight21, commonFlight22, commonFlight23, commonFlight24, commonFlight25, commonFlight26, commonFlight27, commonFlight28, commonFlight29, commonFlight30, commonFlight31, commonFlight32, commonFlight33, commonFlight34, commonFlight35, commonFlight36, commonFlight37, commonFlight38, commonFlight39, commonFlight40, commonFlight41, commonFlight42, commonFlight43, commonFlight44};
    }

    public static CommonFlight valueOf(String str) {
        return (CommonFlight) Enum.valueOf(CommonFlight.class, str);
    }

    public static CommonFlight[] values() {
        return (CommonFlight[]) $VALUES.clone();
    }

    public final Object getDefaultValue() {
        return this.defaultValue;
    }
}
