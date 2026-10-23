.class public final enum Lcom/microsoft/identity/common/java/flighting/CommonFlight;
.super Ljava/lang/Enum;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/identity/common/java/flighting/CommonFlight;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/identity/common/java/flighting/CommonFlight;

.field public static final enum ADD_USERNAME_IN_UI_REQUIRED_EXCEPTION_BROKER_RESULT:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

.field public static final enum DISABLE_NETWORK_CONNECTIVITY_CHECK:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

.field public static final enum DISABLE_UNNECESSARY_CRYPTO_PURPOSES_FROM_DEVICE_POP_MANAGER:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

.field public static final enum ENABLE_AM_API_WORKPROFILE_EXTRA_QUERY_PARAMETERS:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

.field public static final enum ENABLE_ATTACH_NEW_PRT_HEADER_WHEN_NONCE_EXPIRED:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

.field public static final enum ENABLE_ATTACH_PRT_HEADER_WHEN_CROSS_CLOUD:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

.field public static final enum ENABLE_HANDLING_FOR_EDGE_TO_EDGE:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

.field public static final enum ENABLE_JS_API_FOR_AUTHUX:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

.field public static final enum ENABLE_KEYSTORE_BACKED_SECRET_KEY_PROVIDER:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

.field public static final enum ENABLE_LEGACY_FIDO_SECURITY_KEY_LOGIC:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

.field public static final enum ENABLE_NEW_KEY_GEN_SPEC_FOR_WRAP_WITHOUT_PURPOSE_WRAP_KEY:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

.field public static final enum ENABLE_NEW_KEY_GEN_SPEC_FOR_WRAP_WITH_PURPOSE_WRAP_KEY:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

.field public static final enum ENABLE_OAEP_WITH_SHA_AND_MGF1_PADDING:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

.field public static final enum ENABLE_OPENID_ISSUER_VALIDATION_REPORTING:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

.field public static final enum ENABLE_OPEN_ID_VC_REDIRECT:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

.field public static final enum ENABLE_PASSKEY_REGISTRATION:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

.field public static final enum ENABLE_PLAYSTORE_URL_LAUNCH:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

.field public static final enum ENABLE_SERVER_CLIENT_DATA_TELEMETRY:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

.field public static final enum ENABLE_SOVEREIGN_CLOUD_INSTANCE_DISCOVERY:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

.field public static final enum ENABLE_WEBVIEW_FILE_UPLOAD:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

.field public static final enum ENABLE_WEBVIEW_MULTIPLE_WINDOWS:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

.field public static final enum ENABLE_WEBVIEW_SECURITY_SETTINGS:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

.field public static final enum ENABLE_WEB_CP_IN_WEBVIEW:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

.field public static final enum EXPOSE_CCS_REQUEST_ID_IN_TOKENRESPONSE:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

.field public static final enum EXPOSE_CCS_REQUEST_SEQUENCE_IN_TOKENRESPONSE:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

.field public static final enum RE_ENABLE_VALIDATE_SIGNING_CERT_CHAIN_BROKER_APPS:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

.field public static final enum SHOULD_PRESERVE_WEBVIEW_FLOW_ON_SSL_ERROR:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

.field public static final enum SWITCH_BROWSER_PROTOCOL_REQUIRES_STATE:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

.field public static final enum URL_CONNECTION_CONNECT_TIME_OUT:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

.field public static final enum URL_CONNECTION_READ_TIME_OUT:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

.field public static final enum USE_ENABLED_SETTING_FOR_PACKAGE_CHECK:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

.field public static final enum USE_INCREASED_DEFAULT_SILENT_REQUEST_THREAD_POOL_SIZE:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

.field public static final enum USE_NETWORK_CAPABILITY_FOR_NETWORK_CHECK:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

.field public static final enum WEB_CP_WAIT_TIMEOUT_FOR_FLIGHTS:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

.field public static final enum WRAPPED_SECRET_KEY_SERIALIZER_VERSION:Lcom/microsoft/identity/common/java/flighting/CommonFlight;


# instance fields
.field private defaultValue:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 47

    .line 1
    new-instance v1, Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 2
    .line 3
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 4
    .line 5
    const-string v2, "USE_NETWORK_CAPABILITY_FOR_NETWORK_CHECK"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, v1, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->defaultValue:Ljava/lang/Object;

    .line 12
    .line 13
    sput-object v1, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->USE_NETWORK_CAPABILITY_FOR_NETWORK_CHECK:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 14
    .line 15
    new-instance v2, Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 16
    .line 17
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 18
    .line 19
    const-string v5, "EXPOSE_CCS_REQUEST_ID_IN_TOKENRESPONSE"

    .line 20
    .line 21
    const/4 v6, 0x1

    .line 22
    invoke-direct {v2, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    iput-object v4, v2, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->defaultValue:Ljava/lang/Object;

    .line 26
    .line 27
    sput-object v2, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->EXPOSE_CCS_REQUEST_ID_IN_TOKENRESPONSE:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 28
    .line 29
    move v5, v3

    .line 30
    new-instance v3, Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 31
    .line 32
    const-string v6, "EXPOSE_CCS_REQUEST_SEQUENCE_IN_TOKENRESPONSE"

    .line 33
    .line 34
    const/4 v7, 0x2

    .line 35
    invoke-direct {v3, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    .line 37
    .line 38
    iput-object v4, v3, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->defaultValue:Ljava/lang/Object;

    .line 39
    .line 40
    sput-object v3, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->EXPOSE_CCS_REQUEST_SEQUENCE_IN_TOKENRESPONSE:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 41
    .line 42
    new-instance v6, Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 43
    .line 44
    const/16 v7, 0x7530

    .line 45
    .line 46
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v7

    .line 50
    const-string v8, "ACQUIRE_TOKEN_SILENT_TIMEOUT_MILLISECONDS"

    .line 51
    .line 52
    const/4 v9, 0x3

    .line 53
    invoke-direct {v6, v8, v9}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 54
    .line 55
    .line 56
    iput-object v7, v6, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->defaultValue:Ljava/lang/Object;

    .line 57
    .line 58
    move v8, v5

    .line 59
    new-instance v5, Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 60
    .line 61
    const-string v9, "ENABLE_PASSKEY_REGISTRATION"

    .line 62
    .line 63
    const/4 v10, 0x4

    .line 64
    invoke-direct {v5, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 65
    .line 66
    .line 67
    iput-object v0, v5, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->defaultValue:Ljava/lang/Object;

    .line 68
    .line 69
    sput-object v5, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->ENABLE_PASSKEY_REGISTRATION:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 70
    .line 71
    move-object v9, v6

    .line 72
    new-instance v6, Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 73
    .line 74
    const-string v10, "URL_CONNECTION_CONNECT_TIME_OUT"

    .line 75
    .line 76
    const/4 v11, 0x5

    .line 77
    invoke-direct {v6, v10, v11}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 78
    .line 79
    .line 80
    iput-object v7, v6, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->defaultValue:Ljava/lang/Object;

    .line 81
    .line 82
    sput-object v6, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->URL_CONNECTION_CONNECT_TIME_OUT:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 83
    .line 84
    new-instance v10, Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 85
    .line 86
    const-string v11, "URL_CONNECTION_READ_TIME_OUT"

    .line 87
    .line 88
    const/4 v12, 0x6

    .line 89
    invoke-direct {v10, v11, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 90
    .line 91
    .line 92
    iput-object v7, v10, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->defaultValue:Ljava/lang/Object;

    .line 93
    .line 94
    sput-object v10, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->URL_CONNECTION_READ_TIME_OUT:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 95
    .line 96
    move v7, v8

    .line 97
    new-instance v8, Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 98
    .line 99
    const-string v11, "DISABLE_NETWORK_CONNECTIVITY_CHECK"

    .line 100
    .line 101
    const/4 v12, 0x7

    .line 102
    invoke-direct {v8, v11, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 103
    .line 104
    .line 105
    iput-object v4, v8, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->defaultValue:Ljava/lang/Object;

    .line 106
    .line 107
    sput-object v8, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->DISABLE_NETWORK_CONNECTIVITY_CHECK:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 108
    .line 109
    move-object v11, v9

    .line 110
    new-instance v9, Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 111
    .line 112
    const-string v12, "STOP_RETURNING_AAD_RT_BACK_TO_CALLING_APP"

    .line 113
    .line 114
    const/16 v13, 0x8

    .line 115
    .line 116
    invoke-direct {v9, v12, v13}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 117
    .line 118
    .line 119
    iput-object v0, v9, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->defaultValue:Ljava/lang/Object;

    .line 120
    .line 121
    move v12, v7

    .line 122
    move-object v7, v10

    .line 123
    new-instance v10, Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 124
    .line 125
    const-string v13, "ENABLE_LEGACY_FIDO_SECURITY_KEY_LOGIC"

    .line 126
    .line 127
    const/16 v14, 0x9

    .line 128
    .line 129
    invoke-direct {v10, v13, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 130
    .line 131
    .line 132
    iput-object v4, v10, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->defaultValue:Ljava/lang/Object;

    .line 133
    .line 134
    sput-object v10, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->ENABLE_LEGACY_FIDO_SECURITY_KEY_LOGIC:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 135
    .line 136
    move-object v13, v11

    .line 137
    new-instance v11, Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 138
    .line 139
    const-string v14, "ENABLE_ATTACH_NEW_PRT_HEADER_WHEN_NONCE_EXPIRED"

    .line 140
    .line 141
    const/16 v15, 0xa

    .line 142
    .line 143
    invoke-direct {v11, v14, v15}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 144
    .line 145
    .line 146
    iput-object v4, v11, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->defaultValue:Ljava/lang/Object;

    .line 147
    .line 148
    sput-object v11, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->ENABLE_ATTACH_NEW_PRT_HEADER_WHEN_NONCE_EXPIRED:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 149
    .line 150
    move v14, v12

    .line 151
    new-instance v12, Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 152
    .line 153
    const-string v15, "ENABLE_NEW_KEY_GEN_SPEC_FOR_WRAP_WITH_PURPOSE_WRAP_KEY"

    .line 154
    .line 155
    move/from16 v16, v14

    .line 156
    .line 157
    const/16 v14, 0xb

    .line 158
    .line 159
    invoke-direct {v12, v15, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 160
    .line 161
    .line 162
    iput-object v4, v12, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->defaultValue:Ljava/lang/Object;

    .line 163
    .line 164
    sput-object v12, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->ENABLE_NEW_KEY_GEN_SPEC_FOR_WRAP_WITH_PURPOSE_WRAP_KEY:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 165
    .line 166
    move-object v14, v13

    .line 167
    new-instance v13, Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 168
    .line 169
    const-string v15, "ENABLE_ATTACH_PRT_HEADER_WHEN_CROSS_CLOUD"

    .line 170
    .line 171
    move-object/from16 v17, v1

    .line 172
    .line 173
    const/16 v1, 0xc

    .line 174
    .line 175
    invoke-direct {v13, v15, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 176
    .line 177
    .line 178
    iput-object v4, v13, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->defaultValue:Ljava/lang/Object;

    .line 179
    .line 180
    sput-object v13, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->ENABLE_ATTACH_PRT_HEADER_WHEN_CROSS_CLOUD:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 181
    .line 182
    move-object v1, v14

    .line 183
    new-instance v14, Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 184
    .line 185
    const-string v15, "SWITCH_BROWSER_PROTOCOL_REQUIRES_STATE"

    .line 186
    .line 187
    move-object/from16 v18, v1

    .line 188
    .line 189
    const/16 v1, 0xd

    .line 190
    .line 191
    invoke-direct {v14, v15, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 192
    .line 193
    .line 194
    iput-object v0, v14, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->defaultValue:Ljava/lang/Object;

    .line 195
    .line 196
    sput-object v14, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->SWITCH_BROWSER_PROTOCOL_REQUIRES_STATE:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 197
    .line 198
    new-instance v15, Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 199
    .line 200
    const-string v1, "ENABLE_AM_API_WORKPROFILE_EXTRA_QUERY_PARAMETERS"

    .line 201
    .line 202
    move-object/from16 v19, v2

    .line 203
    .line 204
    const/16 v2, 0xe

    .line 205
    .line 206
    invoke-direct {v15, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 207
    .line 208
    .line 209
    iput-object v4, v15, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->defaultValue:Ljava/lang/Object;

    .line 210
    .line 211
    sput-object v15, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->ENABLE_AM_API_WORKPROFILE_EXTRA_QUERY_PARAMETERS:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 212
    .line 213
    new-instance v1, Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 214
    .line 215
    const-string v2, "ENABLE_NEW_KEY_GEN_SPEC_FOR_WRAP_WITHOUT_PURPOSE_WRAP_KEY"

    .line 216
    .line 217
    move-object/from16 v20, v3

    .line 218
    .line 219
    const/16 v3, 0xf

    .line 220
    .line 221
    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 222
    .line 223
    .line 224
    iput-object v4, v1, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->defaultValue:Ljava/lang/Object;

    .line 225
    .line 226
    sput-object v1, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->ENABLE_NEW_KEY_GEN_SPEC_FOR_WRAP_WITHOUT_PURPOSE_WRAP_KEY:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 227
    .line 228
    new-instance v2, Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 229
    .line 230
    const-string v3, "ENABLE_JS_API_FOR_AUTHUX"

    .line 231
    .line 232
    move-object/from16 v21, v1

    .line 233
    .line 234
    const/16 v1, 0x10

    .line 235
    .line 236
    invoke-direct {v2, v3, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 237
    .line 238
    .line 239
    iput-object v4, v2, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->defaultValue:Ljava/lang/Object;

    .line 240
    .line 241
    sput-object v2, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->ENABLE_JS_API_FOR_AUTHUX:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 242
    .line 243
    new-instance v1, Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 244
    .line 245
    const-string v3, "ENABLE_OAEP_WITH_SHA_AND_MGF1_PADDING"

    .line 246
    .line 247
    move-object/from16 v22, v2

    .line 248
    .line 249
    const/16 v2, 0x11

    .line 250
    .line 251
    invoke-direct {v1, v3, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 252
    .line 253
    .line 254
    iput-object v0, v1, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->defaultValue:Ljava/lang/Object;

    .line 255
    .line 256
    sput-object v1, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->ENABLE_OAEP_WITH_SHA_AND_MGF1_PADDING:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 257
    .line 258
    new-instance v2, Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 259
    .line 260
    const-string v3, "ENABLE_KEYSTORE_BACKED_SECRET_KEY_PROVIDER"

    .line 261
    .line 262
    move-object/from16 v23, v1

    .line 263
    .line 264
    const/16 v1, 0x12

    .line 265
    .line 266
    invoke-direct {v2, v3, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 267
    .line 268
    .line 269
    iput-object v4, v2, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->defaultValue:Ljava/lang/Object;

    .line 270
    .line 271
    sput-object v2, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->ENABLE_KEYSTORE_BACKED_SECRET_KEY_PROVIDER:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 272
    .line 273
    new-instance v1, Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 274
    .line 275
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 276
    .line 277
    .line 278
    move-result-object v3

    .line 279
    move-object/from16 v16, v2

    .line 280
    .line 281
    const-string v2, "WRAPPED_SECRET_KEY_SERIALIZER_VERSION"

    .line 282
    .line 283
    move-object/from16 v24, v5

    .line 284
    .line 285
    const/16 v5, 0x13

    .line 286
    .line 287
    invoke-direct {v1, v2, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 288
    .line 289
    .line 290
    iput-object v3, v1, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->defaultValue:Ljava/lang/Object;

    .line 291
    .line 292
    sput-object v1, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->WRAPPED_SECRET_KEY_SERIALIZER_VERSION:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 293
    .line 294
    new-instance v2, Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 295
    .line 296
    const-string v3, "ENABLE_HANDLING_FOR_EDGE_TO_EDGE"

    .line 297
    .line 298
    const/16 v5, 0x14

    .line 299
    .line 300
    invoke-direct {v2, v3, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 301
    .line 302
    .line 303
    iput-object v4, v2, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->defaultValue:Ljava/lang/Object;

    .line 304
    .line 305
    sput-object v2, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->ENABLE_HANDLING_FOR_EDGE_TO_EDGE:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 306
    .line 307
    new-instance v3, Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 308
    .line 309
    const-string v5, "ENABLE_WEB_CP_IN_WEBVIEW"

    .line 310
    .line 311
    move-object/from16 v25, v1

    .line 312
    .line 313
    const/16 v1, 0x15

    .line 314
    .line 315
    invoke-direct {v3, v5, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 316
    .line 317
    .line 318
    iput-object v0, v3, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->defaultValue:Ljava/lang/Object;

    .line 319
    .line 320
    sput-object v3, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->ENABLE_WEB_CP_IN_WEBVIEW:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 321
    .line 322
    new-instance v1, Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 323
    .line 324
    const-string v5, "ENABLE_PLAYSTORE_URL_LAUNCH"

    .line 325
    .line 326
    move-object/from16 v26, v2

    .line 327
    .line 328
    const/16 v2, 0x16

    .line 329
    .line 330
    invoke-direct {v1, v5, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 331
    .line 332
    .line 333
    iput-object v0, v1, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->defaultValue:Ljava/lang/Object;

    .line 334
    .line 335
    sput-object v1, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->ENABLE_PLAYSTORE_URL_LAUNCH:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 336
    .line 337
    new-instance v2, Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 338
    .line 339
    const-string v5, "SHOULD_PRESERVE_WEBVIEW_FLOW_ON_SSL_ERROR"

    .line 340
    .line 341
    move-object/from16 v27, v1

    .line 342
    .line 343
    const/16 v1, 0x17

    .line 344
    .line 345
    invoke-direct {v2, v5, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 346
    .line 347
    .line 348
    iput-object v4, v2, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->defaultValue:Ljava/lang/Object;

    .line 349
    .line 350
    sput-object v2, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->SHOULD_PRESERVE_WEBVIEW_FLOW_ON_SSL_ERROR:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 351
    .line 352
    new-instance v1, Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 353
    .line 354
    const-string v5, "ADD_USERNAME_IN_UI_REQUIRED_EXCEPTION_BROKER_RESULT"

    .line 355
    .line 356
    move-object/from16 v28, v2

    .line 357
    .line 358
    const/16 v2, 0x18

    .line 359
    .line 360
    invoke-direct {v1, v5, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 361
    .line 362
    .line 363
    iput-object v4, v1, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->defaultValue:Ljava/lang/Object;

    .line 364
    .line 365
    sput-object v1, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->ADD_USERNAME_IN_UI_REQUIRED_EXCEPTION_BROKER_RESULT:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 366
    .line 367
    new-instance v2, Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 368
    .line 369
    const/16 v5, 0xbb8

    .line 370
    .line 371
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 372
    .line 373
    .line 374
    move-result-object v5

    .line 375
    move-object/from16 v29, v1

    .line 376
    .line 377
    const-string v1, "WEB_CP_WAIT_TIMEOUT_FOR_FLIGHTS"

    .line 378
    .line 379
    move-object/from16 v30, v3

    .line 380
    .line 381
    const/16 v3, 0x19

    .line 382
    .line 383
    invoke-direct {v2, v1, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 384
    .line 385
    .line 386
    iput-object v5, v2, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->defaultValue:Ljava/lang/Object;

    .line 387
    .line 388
    sput-object v2, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->WEB_CP_WAIT_TIMEOUT_FOR_FLIGHTS:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 389
    .line 390
    new-instance v1, Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 391
    .line 392
    const-string v3, "ENABLE_WEBVIEW_SECURITY_SETTINGS"

    .line 393
    .line 394
    const/16 v5, 0x1a

    .line 395
    .line 396
    invoke-direct {v1, v3, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 397
    .line 398
    .line 399
    iput-object v0, v1, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->defaultValue:Ljava/lang/Object;

    .line 400
    .line 401
    sput-object v1, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->ENABLE_WEBVIEW_SECURITY_SETTINGS:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 402
    .line 403
    new-instance v3, Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 404
    .line 405
    const-string v5, "ENABLE_OPENID_ISSUER_VALIDATION_REPORTING"

    .line 406
    .line 407
    move-object/from16 v31, v1

    .line 408
    .line 409
    const/16 v1, 0x1b

    .line 410
    .line 411
    invoke-direct {v3, v5, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 412
    .line 413
    .line 414
    iput-object v4, v3, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->defaultValue:Ljava/lang/Object;

    .line 415
    .line 416
    sput-object v3, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->ENABLE_OPENID_ISSUER_VALIDATION_REPORTING:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 417
    .line 418
    new-instance v1, Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 419
    .line 420
    const-string v5, "DISABLE_WEB_APPS_API"

    .line 421
    .line 422
    move-object/from16 v32, v2

    .line 423
    .line 424
    const/16 v2, 0x1c

    .line 425
    .line 426
    invoke-direct {v1, v5, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 427
    .line 428
    .line 429
    iput-object v0, v1, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->defaultValue:Ljava/lang/Object;

    .line 430
    .line 431
    new-instance v2, Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 432
    .line 433
    const-string v5, "USE_IN_MEMORY_CACHE_FOR_ACCOUNTS_AND_CREDENTIALS"

    .line 434
    .line 435
    move-object/from16 v33, v1

    .line 436
    .line 437
    const/16 v1, 0x1d

    .line 438
    .line 439
    invoke-direct {v2, v5, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 440
    .line 441
    .line 442
    iput-object v0, v2, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->defaultValue:Ljava/lang/Object;

    .line 443
    .line 444
    new-instance v1, Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 445
    .line 446
    const-string v5, "CALL_REFACTORED_SAVE_AND_LOAD_AGGREGATED_ACCOUNT_METHOD"

    .line 447
    .line 448
    move-object/from16 v34, v2

    .line 449
    .line 450
    const/16 v2, 0x1e

    .line 451
    .line 452
    invoke-direct {v1, v5, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 453
    .line 454
    .line 455
    iput-object v0, v1, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->defaultValue:Ljava/lang/Object;

    .line 456
    .line 457
    new-instance v2, Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 458
    .line 459
    const-string v5, "DISABLE_UNNECESSARY_CRYPTO_PURPOSES_FROM_DEVICE_POP_MANAGER"

    .line 460
    .line 461
    move-object/from16 v35, v1

    .line 462
    .line 463
    const/16 v1, 0x1f

    .line 464
    .line 465
    invoke-direct {v2, v5, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 466
    .line 467
    .line 468
    iput-object v0, v2, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->defaultValue:Ljava/lang/Object;

    .line 469
    .line 470
    sput-object v2, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->DISABLE_UNNECESSARY_CRYPTO_PURPOSES_FROM_DEVICE_POP_MANAGER:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 471
    .line 472
    new-instance v1, Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 473
    .line 474
    const-string v5, "RE_ENABLE_VALIDATE_SIGNING_CERT_CHAIN_BROKER_APPS"

    .line 475
    .line 476
    move-object/from16 v36, v2

    .line 477
    .line 478
    const/16 v2, 0x20

    .line 479
    .line 480
    invoke-direct {v1, v5, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 481
    .line 482
    .line 483
    iput-object v0, v1, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->defaultValue:Ljava/lang/Object;

    .line 484
    .line 485
    sput-object v1, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->RE_ENABLE_VALIDATE_SIGNING_CERT_CHAIN_BROKER_APPS:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 486
    .line 487
    new-instance v2, Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 488
    .line 489
    const-string v5, "USE_LOCKS_IN_NAME_VALUE_STORAGE"

    .line 490
    .line 491
    move-object/from16 v37, v1

    .line 492
    .line 493
    const/16 v1, 0x21

    .line 494
    .line 495
    invoke-direct {v2, v5, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 496
    .line 497
    .line 498
    iput-object v0, v2, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->defaultValue:Ljava/lang/Object;

    .line 499
    .line 500
    new-instance v1, Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 501
    .line 502
    const-string v5, "USE_INCREASED_DEFAULT_SILENT_REQUEST_THREAD_POOL_SIZE"

    .line 503
    .line 504
    move-object/from16 v38, v2

    .line 505
    .line 506
    const/16 v2, 0x22

    .line 507
    .line 508
    invoke-direct {v1, v5, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 509
    .line 510
    .line 511
    iput-object v0, v1, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->defaultValue:Ljava/lang/Object;

    .line 512
    .line 513
    sput-object v1, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->USE_INCREASED_DEFAULT_SILENT_REQUEST_THREAD_POOL_SIZE:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 514
    .line 515
    new-instance v2, Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 516
    .line 517
    const-string v5, "ENABLE_WEBVIEW_MULTIPLE_WINDOWS"

    .line 518
    .line 519
    move-object/from16 v39, v1

    .line 520
    .line 521
    const/16 v1, 0x23

    .line 522
    .line 523
    invoke-direct {v2, v5, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 524
    .line 525
    .line 526
    iput-object v4, v2, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->defaultValue:Ljava/lang/Object;

    .line 527
    .line 528
    sput-object v2, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->ENABLE_WEBVIEW_MULTIPLE_WINDOWS:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 529
    .line 530
    new-instance v1, Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 531
    .line 532
    const-string v5, "ENABLE_WEBVIEW_FILE_UPLOAD"

    .line 533
    .line 534
    move-object/from16 v40, v2

    .line 535
    .line 536
    const/16 v2, 0x24

    .line 537
    .line 538
    invoke-direct {v1, v5, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 539
    .line 540
    .line 541
    iput-object v0, v1, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->defaultValue:Ljava/lang/Object;

    .line 542
    .line 543
    sput-object v1, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->ENABLE_WEBVIEW_FILE_UPLOAD:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 544
    .line 545
    new-instance v2, Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 546
    .line 547
    const-string v5, "ENABLE_OPEN_ID_VC_REDIRECT"

    .line 548
    .line 549
    move-object/from16 v41, v1

    .line 550
    .line 551
    const/16 v1, 0x25

    .line 552
    .line 553
    invoke-direct {v2, v5, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 554
    .line 555
    .line 556
    iput-object v4, v2, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->defaultValue:Ljava/lang/Object;

    .line 557
    .line 558
    sput-object v2, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->ENABLE_OPEN_ID_VC_REDIRECT:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 559
    .line 560
    new-instance v1, Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 561
    .line 562
    const-string v5, "ENABLE_SOVEREIGN_CLOUD_INSTANCE_DISCOVERY"

    .line 563
    .line 564
    move-object/from16 v42, v2

    .line 565
    .line 566
    const/16 v2, 0x26

    .line 567
    .line 568
    invoke-direct {v1, v5, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 569
    .line 570
    .line 571
    iput-object v4, v1, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->defaultValue:Ljava/lang/Object;

    .line 572
    .line 573
    sput-object v1, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->ENABLE_SOVEREIGN_CLOUD_INSTANCE_DISCOVERY:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 574
    .line 575
    new-instance v2, Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 576
    .line 577
    const-string v5, "USE_ENABLED_SETTING_FOR_PACKAGE_CHECK"

    .line 578
    .line 579
    move-object/from16 v43, v1

    .line 580
    .line 581
    const/16 v1, 0x27

    .line 582
    .line 583
    invoke-direct {v2, v5, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 584
    .line 585
    .line 586
    iput-object v0, v2, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->defaultValue:Ljava/lang/Object;

    .line 587
    .line 588
    sput-object v2, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->USE_ENABLED_SETTING_FOR_PACKAGE_CHECK:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 589
    .line 590
    new-instance v1, Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 591
    .line 592
    const-string v5, "ENABLE_HTTP_CANCELLATION_ON_TIMEOUT"

    .line 593
    .line 594
    move-object/from16 v44, v2

    .line 595
    .line 596
    const/16 v2, 0x28

    .line 597
    .line 598
    invoke-direct {v1, v5, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 599
    .line 600
    .line 601
    iput-object v0, v1, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->defaultValue:Ljava/lang/Object;

    .line 602
    .line 603
    new-instance v2, Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 604
    .line 605
    const-string v5, "ENABLE_SERVER_CLIENT_DATA_TELEMETRY"

    .line 606
    .line 607
    move-object/from16 v45, v1

    .line 608
    .line 609
    const/16 v1, 0x29

    .line 610
    .line 611
    invoke-direct {v2, v5, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 612
    .line 613
    .line 614
    iput-object v4, v2, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->defaultValue:Ljava/lang/Object;

    .line 615
    .line 616
    sput-object v2, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->ENABLE_SERVER_CLIENT_DATA_TELEMETRY:Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 617
    .line 618
    new-instance v1, Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 619
    .line 620
    const-string v4, "ENABLE_AUTH_TAB_FOR_SWITCH_BROWSER"

    .line 621
    .line 622
    const/16 v5, 0x2a

    .line 623
    .line 624
    invoke-direct {v1, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 625
    .line 626
    .line 627
    iput-object v0, v1, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->defaultValue:Ljava/lang/Object;

    .line 628
    .line 629
    new-instance v4, Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 630
    .line 631
    const-string v5, "ENABLE_FILTER_THEN_CLONE_IN_MEMORY_CACHE"

    .line 632
    .line 633
    move-object/from16 v46, v1

    .line 634
    .line 635
    const/16 v1, 0x2b

    .line 636
    .line 637
    invoke-direct {v4, v5, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 638
    .line 639
    .line 640
    iput-object v0, v4, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->defaultValue:Ljava/lang/Object;

    .line 641
    .line 642
    move-object/from16 v1, v17

    .line 643
    .line 644
    move-object/from16 v17, v22

    .line 645
    .line 646
    move-object/from16 v5, v24

    .line 647
    .line 648
    move-object/from16 v24, v28

    .line 649
    .line 650
    move-object/from16 v22, v30

    .line 651
    .line 652
    move-object/from16 v30, v34

    .line 653
    .line 654
    move-object/from16 v34, v38

    .line 655
    .line 656
    move-object/from16 v38, v42

    .line 657
    .line 658
    move-object/from16 v42, v2

    .line 659
    .line 660
    move-object/from16 v28, v3

    .line 661
    .line 662
    move-object/from16 v2, v19

    .line 663
    .line 664
    move-object/from16 v3, v20

    .line 665
    .line 666
    move-object/from16 v20, v25

    .line 667
    .line 668
    move-object/from16 v25, v29

    .line 669
    .line 670
    move-object/from16 v29, v33

    .line 671
    .line 672
    move-object/from16 v33, v37

    .line 673
    .line 674
    move-object/from16 v37, v41

    .line 675
    .line 676
    move-object/from16 v41, v45

    .line 677
    .line 678
    move-object/from16 v19, v16

    .line 679
    .line 680
    move-object/from16 v16, v21

    .line 681
    .line 682
    move-object/from16 v21, v26

    .line 683
    .line 684
    move-object/from16 v26, v32

    .line 685
    .line 686
    move-object/from16 v32, v36

    .line 687
    .line 688
    move-object/from16 v36, v40

    .line 689
    .line 690
    move-object/from16 v40, v44

    .line 691
    .line 692
    move-object/from16 v44, v4

    .line 693
    .line 694
    move-object/from16 v4, v18

    .line 695
    .line 696
    move-object/from16 v18, v23

    .line 697
    .line 698
    move-object/from16 v23, v27

    .line 699
    .line 700
    move-object/from16 v27, v31

    .line 701
    .line 702
    move-object/from16 v31, v35

    .line 703
    .line 704
    move-object/from16 v35, v39

    .line 705
    .line 706
    move-object/from16 v39, v43

    .line 707
    .line 708
    move-object/from16 v43, v46

    .line 709
    .line 710
    filled-new-array/range {v1 .. v44}, [Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 711
    .line 712
    .line 713
    move-result-object v0

    .line 714
    sput-object v0, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->$VALUES:[Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 715
    .line 716
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/identity/common/java/flighting/CommonFlight;
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/microsoft/identity/common/java/flighting/CommonFlight;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->$VALUES:[Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/microsoft/identity/common/java/flighting/CommonFlight;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/microsoft/identity/common/java/flighting/CommonFlight;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getDefaultValue()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/flighting/CommonFlight;->defaultValue:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method
