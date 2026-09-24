.class public final enum Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;
.super Ljava/lang/Enum;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

.field public static final enum BROKER_DISCOVERY_FROM_SDK:Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

.field public static final enum MSAL_ACQUIRE_TOKEN_SILENT:Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

.field public static final enum MSAL_GET_ACCOUNTS:Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

.field public static final enum MSAL_GET_CURRENT_ACCOUNT_IN_SHARED_DEVICE:Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

.field public static final enum MSAL_GET_DEVICE_MODE:Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

.field public static final enum MSAL_GET_INTENT_FOR_INTERACTIVE_REQUEST:Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

.field public static final enum MSAL_HELLO:Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

.field public static final enum MSAL_REMOVE_ACCOUNT:Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

.field public static final enum MSAL_SIGN_OUT_FROM_SHARED_DEVICE:Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;


# instance fields
.field final mAccountManagerOperation:Ljava/lang/String;

.field final mContentApi:I


# direct methods
.method static constructor <clinit>()V
    .locals 39

    .line 1
    new-instance v1, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    .line 2
    .line 3
    const-string v0, "HELLO"

    .line 4
    .line 5
    const-string v2, "MSAL_HELLO"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x1

    .line 9
    invoke-direct {v1, v2, v3, v4, v0}, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sput-object v1, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;->MSAL_HELLO:Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    .line 13
    .line 14
    new-instance v2, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    .line 15
    .line 16
    const-string v0, "GET_INTENT_FOR_INTERACTIVE_REQUEST"

    .line 17
    .line 18
    const-string v5, "MSAL_GET_INTENT_FOR_INTERACTIVE_REQUEST"

    .line 19
    .line 20
    const/4 v6, 0x2

    .line 21
    invoke-direct {v2, v5, v4, v6, v0}, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    sput-object v2, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;->MSAL_GET_INTENT_FOR_INTERACTIVE_REQUEST:Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    .line 25
    .line 26
    new-instance v0, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    .line 27
    .line 28
    const-string v4, "ACQUIRE_TOKEN_SILENT"

    .line 29
    .line 30
    const-string v5, "MSAL_ACQUIRE_TOKEN_SILENT"

    .line 31
    .line 32
    const/4 v7, 0x3

    .line 33
    invoke-direct {v0, v5, v6, v7, v4}, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    sput-object v0, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;->MSAL_ACQUIRE_TOKEN_SILENT:Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    .line 37
    .line 38
    new-instance v4, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    .line 39
    .line 40
    const-string v5, "GET_ACCOUNTS"

    .line 41
    .line 42
    const-string v6, "MSAL_GET_ACCOUNTS"

    .line 43
    .line 44
    const/4 v8, 0x4

    .line 45
    invoke-direct {v4, v6, v7, v8, v5}, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 46
    .line 47
    .line 48
    sput-object v4, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;->MSAL_GET_ACCOUNTS:Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    .line 49
    .line 50
    new-instance v5, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    .line 51
    .line 52
    const-string v6, "REMOVE_ACCOUNT"

    .line 53
    .line 54
    const-string v7, "MSAL_REMOVE_ACCOUNT"

    .line 55
    .line 56
    const/4 v9, 0x5

    .line 57
    invoke-direct {v5, v7, v8, v9, v6}, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 58
    .line 59
    .line 60
    sput-object v5, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;->MSAL_REMOVE_ACCOUNT:Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    .line 61
    .line 62
    new-instance v6, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    .line 63
    .line 64
    const-string v7, "GET_DEVICE_MODE"

    .line 65
    .line 66
    const-string v8, "MSAL_GET_DEVICE_MODE"

    .line 67
    .line 68
    const/4 v10, 0x7

    .line 69
    invoke-direct {v6, v8, v9, v10, v7}, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 70
    .line 71
    .line 72
    sput-object v6, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;->MSAL_GET_DEVICE_MODE:Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    .line 73
    .line 74
    new-instance v7, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    .line 75
    .line 76
    const/4 v8, 0x6

    .line 77
    const-string v9, "GET_CURRENT_ACCOUNT"

    .line 78
    .line 79
    const-string v11, "MSAL_GET_CURRENT_ACCOUNT_IN_SHARED_DEVICE"

    .line 80
    .line 81
    invoke-direct {v7, v11, v8, v8, v9}, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 82
    .line 83
    .line 84
    sput-object v7, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;->MSAL_GET_CURRENT_ACCOUNT_IN_SHARED_DEVICE:Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    .line 85
    .line 86
    new-instance v8, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    .line 87
    .line 88
    const-string v9, "REMOVE_ACCOUNT_FROM_SHARED_DEVICE"

    .line 89
    .line 90
    const-string v11, "MSAL_SIGN_OUT_FROM_SHARED_DEVICE"

    .line 91
    .line 92
    const/16 v12, 0x8

    .line 93
    .line 94
    invoke-direct {v8, v11, v10, v12, v9}, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 95
    .line 96
    .line 97
    sput-object v8, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;->MSAL_SIGN_OUT_FROM_SHARED_DEVICE:Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    .line 98
    .line 99
    new-instance v9, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    .line 100
    .line 101
    const-string v10, "GENERATE_SHR"

    .line 102
    .line 103
    const-string v11, "MSAL_GENERATE_SHR"

    .line 104
    .line 105
    const/16 v13, 0x9

    .line 106
    .line 107
    invoke-direct {v9, v11, v12, v13, v10}, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 108
    .line 109
    .line 110
    new-instance v10, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    .line 111
    .line 112
    const-string v11, "BROKER_GET_KEY_FROM_INACTIVE_BROKER"

    .line 113
    .line 114
    const/4 v12, 0x0

    .line 115
    invoke-direct {v10, v11, v13, v3, v12}, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 116
    .line 117
    .line 118
    new-instance v11, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    .line 119
    .line 120
    const-string v3, "BROKER_API_HELLO"

    .line 121
    .line 122
    const/16 v13, 0xa

    .line 123
    .line 124
    invoke-direct {v11, v3, v13, v13, v12}, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 125
    .line 126
    .line 127
    new-instance v3, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    .line 128
    .line 129
    const-string v13, "BROKER_API_GET_BROKER_ACCOUNTS"

    .line 130
    .line 131
    const/16 v14, 0xb

    .line 132
    .line 133
    invoke-direct {v3, v13, v14, v14, v12}, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 134
    .line 135
    .line 136
    new-instance v13, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    .line 137
    .line 138
    const-string v14, "BROKER_API_REMOVE_BROKER_ACCOUNT"

    .line 139
    .line 140
    const/16 v15, 0xc

    .line 141
    .line 142
    invoke-direct {v13, v14, v15, v15, v12}, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 143
    .line 144
    .line 145
    new-instance v14, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    .line 146
    .line 147
    const-string v15, "BROKER_API_UPDATE_BRT"

    .line 148
    .line 149
    move-object/from16 v16, v0

    .line 150
    .line 151
    const/16 v0, 0xd

    .line 152
    .line 153
    invoke-direct {v14, v15, v0, v0, v12}, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 154
    .line 155
    .line 156
    new-instance v15, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    .line 157
    .line 158
    const-string v0, "BROKER_GET_FLIGHTS"

    .line 159
    .line 160
    move-object/from16 v17, v1

    .line 161
    .line 162
    const/16 v1, 0xe

    .line 163
    .line 164
    move-object/from16 v18, v2

    .line 165
    .line 166
    const/16 v2, 0xf

    .line 167
    .line 168
    invoke-direct {v15, v0, v1, v2, v12}, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 169
    .line 170
    .line 171
    new-instance v0, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    .line 172
    .line 173
    move-object/from16 v19, v3

    .line 174
    .line 175
    const-string v3, "BROKER_SET_FLIGHTS"

    .line 176
    .line 177
    invoke-direct {v0, v3, v2, v1, v12}, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 178
    .line 179
    .line 180
    new-instance v1, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    .line 181
    .line 182
    const-string v2, "MSAL_SSO_TOKEN"

    .line 183
    .line 184
    const/16 v3, 0x10

    .line 185
    .line 186
    invoke-direct {v1, v2, v3, v3, v12}, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 187
    .line 188
    .line 189
    new-instance v2, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    .line 190
    .line 191
    const-string v3, "MSAL_ALL_SSO_TOKENS"

    .line 192
    .line 193
    move-object/from16 v20, v0

    .line 194
    .line 195
    const/16 v0, 0x11

    .line 196
    .line 197
    invoke-direct {v2, v3, v0, v0, v12}, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 198
    .line 199
    .line 200
    new-instance v0, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    .line 201
    .line 202
    const-string v3, "DEVICE_REGISTRATION_OPERATIONS"

    .line 203
    .line 204
    move-object/from16 v21, v1

    .line 205
    .line 206
    const/16 v1, 0x12

    .line 207
    .line 208
    move-object/from16 v22, v2

    .line 209
    .line 210
    const/16 v2, 0x13

    .line 211
    .line 212
    invoke-direct {v0, v3, v1, v2, v12}, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 213
    .line 214
    .line 215
    new-instance v1, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    .line 216
    .line 217
    const-string v3, "BROKER_API_UPLOAD_LOGS"

    .line 218
    .line 219
    move-object/from16 v23, v0

    .line 220
    .line 221
    const/16 v0, 0x14

    .line 222
    .line 223
    invoke-direct {v1, v3, v2, v0, v12}, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 224
    .line 225
    .line 226
    new-instance v2, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    .line 227
    .line 228
    const-string v3, "MSAL_FETCH_DCF_AUTH_RESULT"

    .line 229
    .line 230
    move-object/from16 v24, v1

    .line 231
    .line 232
    const/16 v1, 0x15

    .line 233
    .line 234
    invoke-direct {v2, v3, v0, v1, v12}, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 235
    .line 236
    .line 237
    new-instance v0, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    .line 238
    .line 239
    const-string v3, "MSAL_ACQUIRE_TOKEN_DCF"

    .line 240
    .line 241
    move-object/from16 v25, v2

    .line 242
    .line 243
    const/16 v2, 0x16

    .line 244
    .line 245
    invoke-direct {v0, v3, v1, v2, v12}, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 246
    .line 247
    .line 248
    new-instance v1, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    .line 249
    .line 250
    const-string v3, "BROKER_DISCOVERY_METADATA_RETRIEVAL"

    .line 251
    .line 252
    move-object/from16 v26, v0

    .line 253
    .line 254
    const/16 v0, 0x17

    .line 255
    .line 256
    invoke-direct {v1, v3, v2, v0, v12}, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 257
    .line 258
    .line 259
    new-instance v0, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    .line 260
    .line 261
    const/16 v2, 0x17

    .line 262
    .line 263
    const/16 v3, 0x18

    .line 264
    .line 265
    move-object/from16 v27, v1

    .line 266
    .line 267
    const-string v1, "BROKER_DISCOVERY_FROM_SDK"

    .line 268
    .line 269
    invoke-direct {v0, v1, v2, v3, v12}, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 270
    .line 271
    .line 272
    sput-object v0, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;->BROKER_DISCOVERY_FROM_SDK:Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    .line 273
    .line 274
    new-instance v1, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    .line 275
    .line 276
    const/16 v2, 0x18

    .line 277
    .line 278
    const/16 v3, 0x19

    .line 279
    .line 280
    move-object/from16 v28, v0

    .line 281
    .line 282
    const-string v0, "BROKER_DISCOVERY_SET_ACTIVE_BROKER"

    .line 283
    .line 284
    invoke-direct {v1, v0, v2, v3, v12}, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 285
    .line 286
    .line 287
    new-instance v0, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    .line 288
    .line 289
    const/16 v2, 0x19

    .line 290
    .line 291
    const/16 v3, 0x1a

    .line 292
    .line 293
    move-object/from16 v29, v1

    .line 294
    .line 295
    const-string v1, "PASSTHROUGH"

    .line 296
    .line 297
    invoke-direct {v0, v1, v2, v3, v12}, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 298
    .line 299
    .line 300
    new-instance v1, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    .line 301
    .line 302
    const/16 v2, 0x1a

    .line 303
    .line 304
    const/16 v3, 0x1b

    .line 305
    .line 306
    move-object/from16 v30, v0

    .line 307
    .line 308
    const-string v0, "BROKER_READ_RESTRICTIONS_MANAGER"

    .line 309
    .line 310
    invoke-direct {v1, v0, v2, v3, v12}, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 311
    .line 312
    .line 313
    new-instance v0, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    .line 314
    .line 315
    const/16 v2, 0x1b

    .line 316
    .line 317
    const/16 v3, 0x1c

    .line 318
    .line 319
    move-object/from16 v31, v1

    .line 320
    .line 321
    const-string v1, "MSAL_GET_PREFERRED_AUTH_METHOD"

    .line 322
    .line 323
    invoke-direct {v0, v1, v2, v3, v12}, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 324
    .line 325
    .line 326
    new-instance v1, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    .line 327
    .line 328
    const/16 v2, 0x1c

    .line 329
    .line 330
    const/16 v3, 0x1d

    .line 331
    .line 332
    move-object/from16 v32, v0

    .line 333
    .line 334
    const-string v0, "BROKER_INDIVIDUAL_LOGS_UPLOAD"

    .line 335
    .line 336
    invoke-direct {v1, v0, v2, v3, v12}, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 337
    .line 338
    .line 339
    new-instance v0, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    .line 340
    .line 341
    const/16 v2, 0x1d

    .line 342
    .line 343
    const/16 v3, 0x1e

    .line 344
    .line 345
    move-object/from16 v33, v1

    .line 346
    .line 347
    const-string v1, "BROKER_API_RESTORE_MSA_ACCOUNTS_WITH_TRANSFER_TOKENS"

    .line 348
    .line 349
    invoke-direct {v0, v1, v2, v3, v12}, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 350
    .line 351
    .line 352
    new-instance v1, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    .line 353
    .line 354
    const/16 v2, 0x1e

    .line 355
    .line 356
    const/16 v3, 0x1f

    .line 357
    .line 358
    move-object/from16 v34, v0

    .line 359
    .line 360
    const-string v0, "BROKER_WEBAPPS_API_GET_SUPPORTED_WEB_APPS_CONTRACTS"

    .line 361
    .line 362
    invoke-direct {v1, v0, v2, v3, v12}, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 363
    .line 364
    .line 365
    new-instance v0, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    .line 366
    .line 367
    const/16 v2, 0x1f

    .line 368
    .line 369
    const/16 v3, 0x20

    .line 370
    .line 371
    move-object/from16 v35, v1

    .line 372
    .line 373
    const-string v1, "BROKER_WEBAPPS_API_EXECUTE_WEB_APPS_REQUEST"

    .line 374
    .line 375
    invoke-direct {v0, v1, v2, v3, v12}, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 376
    .line 377
    .line 378
    new-instance v1, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    .line 379
    .line 380
    const/16 v2, 0x20

    .line 381
    .line 382
    const/16 v3, 0x21

    .line 383
    .line 384
    move-object/from16 v36, v0

    .line 385
    .line 386
    const-string v0, "PROVISION_RESOURCE_ACCOUNT"

    .line 387
    .line 388
    invoke-direct {v1, v0, v2, v3, v12}, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 389
    .line 390
    .line 391
    new-instance v0, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    .line 392
    .line 393
    const/16 v2, 0x21

    .line 394
    .line 395
    const/16 v3, 0x22

    .line 396
    .line 397
    move-object/from16 v37, v1

    .line 398
    .line 399
    const-string v1, "GET_AAD_DEVICE_ID"

    .line 400
    .line 401
    invoke-direct {v0, v1, v2, v3, v12}, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 402
    .line 403
    .line 404
    new-instance v1, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    .line 405
    .line 406
    const/16 v2, 0x22

    .line 407
    .line 408
    const/16 v3, 0x23

    .line 409
    .line 410
    move-object/from16 v38, v0

    .line 411
    .line 412
    const-string v0, "BROKER_GET_NUMBER_MATCH"

    .line 413
    .line 414
    invoke-direct {v1, v0, v2, v3, v12}, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 415
    .line 416
    .line 417
    move-object/from16 v3, v16

    .line 418
    .line 419
    move-object/from16 v2, v18

    .line 420
    .line 421
    move-object/from16 v12, v19

    .line 422
    .line 423
    move-object/from16 v16, v20

    .line 424
    .line 425
    move-object/from16 v18, v22

    .line 426
    .line 427
    move-object/from16 v19, v23

    .line 428
    .line 429
    move-object/from16 v20, v24

    .line 430
    .line 431
    move-object/from16 v22, v26

    .line 432
    .line 433
    move-object/from16 v23, v27

    .line 434
    .line 435
    move-object/from16 v24, v28

    .line 436
    .line 437
    move-object/from16 v26, v30

    .line 438
    .line 439
    move-object/from16 v27, v31

    .line 440
    .line 441
    move-object/from16 v28, v32

    .line 442
    .line 443
    move-object/from16 v30, v34

    .line 444
    .line 445
    move-object/from16 v31, v35

    .line 446
    .line 447
    move-object/from16 v32, v36

    .line 448
    .line 449
    move-object/from16 v34, v38

    .line 450
    .line 451
    move-object/from16 v35, v1

    .line 452
    .line 453
    move-object/from16 v1, v17

    .line 454
    .line 455
    move-object/from16 v17, v21

    .line 456
    .line 457
    move-object/from16 v21, v25

    .line 458
    .line 459
    move-object/from16 v25, v29

    .line 460
    .line 461
    move-object/from16 v29, v33

    .line 462
    .line 463
    move-object/from16 v33, v37

    .line 464
    .line 465
    filled-new-array/range {v1 .. v35}, [Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    .line 466
    .line 467
    .line 468
    move-result-object v0

    .line 469
    sput-object v0, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;->$VALUES:[Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    .line 470
    .line 471
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;->mContentApi:I

    .line 5
    .line 6
    iput-object p4, p0, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;->mAccountManagerOperation:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;->$VALUES:[Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle$Operation;

    .line 8
    .line 9
    return-object v0
.end method
