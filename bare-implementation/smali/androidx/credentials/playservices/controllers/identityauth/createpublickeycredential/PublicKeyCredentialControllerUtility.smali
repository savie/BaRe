.class public final Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility$Companion;,
        Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility$GetGMSVersion;
    }
.end annotation


# static fields
.field private static final AUTH_MIN_VERSION_JSON_CREATE:J = 0xe60ade8L

.field public static final Companion:Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility$Companion;

.field private static final FLAGS:I = 0xb

.field private static final JSON_KEY_ALG:Ljava/lang/String;

.field private static final JSON_KEY_APPID:Ljava/lang/String;

.field private static final JSON_KEY_ATTESTATION:Ljava/lang/String;

.field private static final JSON_KEY_ATTESTATION_OBJ:Ljava/lang/String;

.field private static final JSON_KEY_AUTH_ATTACHMENT:Ljava/lang/String;

.field private static final JSON_KEY_AUTH_DATA:Ljava/lang/String;

.field private static final JSON_KEY_AUTH_SELECTION:Ljava/lang/String;

.field private static final JSON_KEY_CHALLENGE:Ljava/lang/String;

.field private static final JSON_KEY_CLIENT_DATA:Ljava/lang/String;

.field private static final JSON_KEY_CLIENT_EXTENSION_RESULTS:Ljava/lang/String;

.field private static final JSON_KEY_CRED_PROPS:Ljava/lang/String;

.field private static final JSON_KEY_DISPLAY_NAME:Ljava/lang/String;

.field private static final JSON_KEY_EXCLUDE_CREDENTIALS:Ljava/lang/String;

.field private static final JSON_KEY_EXTENSTIONS:Ljava/lang/String;

.field private static final JSON_KEY_ICON:Ljava/lang/String;

.field private static final JSON_KEY_ID:Ljava/lang/String;

.field private static final JSON_KEY_KEY_PROTECTION_TYPE:Ljava/lang/String;

.field private static final JSON_KEY_MATCHER_PROTECTION_TYPE:Ljava/lang/String;

.field private static final JSON_KEY_NAME:Ljava/lang/String;

.field private static final JSON_KEY_PUB_KEY_CRED_PARAMS:Ljava/lang/String;

.field private static final JSON_KEY_RAW_ID:Ljava/lang/String;

.field private static final JSON_KEY_REQUIRE_RES_KEY:Ljava/lang/String;

.field private static final JSON_KEY_RESPONSE:Ljava/lang/String;

.field private static final JSON_KEY_RES_KEY:Ljava/lang/String;

.field private static final JSON_KEY_RK:Ljava/lang/String;

.field private static final JSON_KEY_RP:Ljava/lang/String;

.field private static final JSON_KEY_RPID:Ljava/lang/String;

.field private static final JSON_KEY_SIGNATURE:Ljava/lang/String;

.field private static final JSON_KEY_THIRD_PARTY_PAYMENT:Ljava/lang/String;

.field private static final JSON_KEY_TIMEOUT:Ljava/lang/String;

.field private static final JSON_KEY_TRANSPORTS:Ljava/lang/String;

.field private static final JSON_KEY_TYPE:Ljava/lang/String;

.field private static final JSON_KEY_USER:Ljava/lang/String;

.field private static final JSON_KEY_USER_HANDLE:Ljava/lang/String;

.field private static final JSON_KEY_USER_VERIFICATION_METHOD:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "PublicKeyUtility"

.field private static final orderedErrorCodeToExceptions:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Lxx2;",
            "Lzn2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->Companion:Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility$Companion;

    .line 8
    .line 9
    const-string v0, "clientDataJSON"

    .line 10
    .line 11
    sput-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_CLIENT_DATA:Ljava/lang/String;

    .line 12
    .line 13
    const-string v0, "attestationObject"

    .line 14
    .line 15
    sput-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_ATTESTATION_OBJ:Ljava/lang/String;

    .line 16
    .line 17
    const-string v0, "authenticatorData"

    .line 18
    .line 19
    sput-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_AUTH_DATA:Ljava/lang/String;

    .line 20
    .line 21
    const-string v0, "signature"

    .line 22
    .line 23
    sput-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_SIGNATURE:Ljava/lang/String;

    .line 24
    .line 25
    const-string v0, "userHandle"

    .line 26
    .line 27
    sput-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_USER_HANDLE:Ljava/lang/String;

    .line 28
    .line 29
    const-string v0, "response"

    .line 30
    .line 31
    sput-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_RESPONSE:Ljava/lang/String;

    .line 32
    .line 33
    const-string v0, "id"

    .line 34
    .line 35
    sput-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_ID:Ljava/lang/String;

    .line 36
    .line 37
    const-string v0, "rawId"

    .line 38
    .line 39
    sput-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_RAW_ID:Ljava/lang/String;

    .line 40
    .line 41
    const-string v0, "type"

    .line 42
    .line 43
    sput-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_TYPE:Ljava/lang/String;

    .line 44
    .line 45
    const-string v0, "rpId"

    .line 46
    .line 47
    sput-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_RPID:Ljava/lang/String;

    .line 48
    .line 49
    const-string v0, "challenge"

    .line 50
    .line 51
    sput-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_CHALLENGE:Ljava/lang/String;

    .line 52
    .line 53
    const-string v0, "appid"

    .line 54
    .line 55
    sput-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_APPID:Ljava/lang/String;

    .line 56
    .line 57
    const-string v0, "thirdPartyPayment"

    .line 58
    .line 59
    sput-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_THIRD_PARTY_PAYMENT:Ljava/lang/String;

    .line 60
    .line 61
    const-string v0, "authenticatorSelection"

    .line 62
    .line 63
    sput-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_AUTH_SELECTION:Ljava/lang/String;

    .line 64
    .line 65
    const-string v0, "requireResidentKey"

    .line 66
    .line 67
    sput-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_REQUIRE_RES_KEY:Ljava/lang/String;

    .line 68
    .line 69
    const-string v0, "residentKey"

    .line 70
    .line 71
    sput-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_RES_KEY:Ljava/lang/String;

    .line 72
    .line 73
    const-string v0, "authenticatorAttachment"

    .line 74
    .line 75
    sput-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_AUTH_ATTACHMENT:Ljava/lang/String;

    .line 76
    .line 77
    const-string v0, "timeout"

    .line 78
    .line 79
    sput-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_TIMEOUT:Ljava/lang/String;

    .line 80
    .line 81
    const-string v0, "excludeCredentials"

    .line 82
    .line 83
    sput-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_EXCLUDE_CREDENTIALS:Ljava/lang/String;

    .line 84
    .line 85
    const-string v0, "transports"

    .line 86
    .line 87
    sput-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_TRANSPORTS:Ljava/lang/String;

    .line 88
    .line 89
    const-string v0, "rp"

    .line 90
    .line 91
    sput-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_RP:Ljava/lang/String;

    .line 92
    .line 93
    const-string v0, "name"

    .line 94
    .line 95
    sput-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_NAME:Ljava/lang/String;

    .line 96
    .line 97
    const-string v0, "icon"

    .line 98
    .line 99
    sput-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_ICON:Ljava/lang/String;

    .line 100
    .line 101
    const-string v0, "alg"

    .line 102
    .line 103
    sput-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_ALG:Ljava/lang/String;

    .line 104
    .line 105
    const-string v0, "user"

    .line 106
    .line 107
    sput-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_USER:Ljava/lang/String;

    .line 108
    .line 109
    const-string v0, "displayName"

    .line 110
    .line 111
    sput-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_DISPLAY_NAME:Ljava/lang/String;

    .line 112
    .line 113
    const-string v0, "userVerificationMethod"

    .line 114
    .line 115
    sput-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_USER_VERIFICATION_METHOD:Ljava/lang/String;

    .line 116
    .line 117
    const-string v0, "keyProtectionType"

    .line 118
    .line 119
    sput-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_KEY_PROTECTION_TYPE:Ljava/lang/String;

    .line 120
    .line 121
    const-string v0, "matcherProtectionType"

    .line 122
    .line 123
    sput-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_MATCHER_PROTECTION_TYPE:Ljava/lang/String;

    .line 124
    .line 125
    const-string v0, "extensions"

    .line 126
    .line 127
    sput-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_EXTENSTIONS:Ljava/lang/String;

    .line 128
    .line 129
    const-string v0, "attestation"

    .line 130
    .line 131
    sput-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_ATTESTATION:Ljava/lang/String;

    .line 132
    .line 133
    const-string v0, "pubKeyCredParams"

    .line 134
    .line 135
    sput-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_PUB_KEY_CRED_PARAMS:Ljava/lang/String;

    .line 136
    .line 137
    const-string v0, "clientExtensionResults"

    .line 138
    .line 139
    sput-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_CLIENT_EXTENSION_RESULTS:Ljava/lang/String;

    .line 140
    .line 141
    const-string v0, "rk"

    .line 142
    .line 143
    sput-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_RK:Ljava/lang/String;

    .line 144
    .line 145
    const-string v0, "credProps"

    .line 146
    .line 147
    sput-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_CRED_PROPS:Ljava/lang/String;

    .line 148
    .line 149
    new-instance v0, Lcg4;

    .line 150
    .line 151
    const/4 v1, 0x2

    .line 152
    invoke-direct {v0, v1}, Lcg4;-><init>(I)V

    .line 153
    .line 154
    .line 155
    new-instance v2, Lpw5;

    .line 156
    .line 157
    sget-object v3, Lxx2;->p:Lxx2;

    .line 158
    .line 159
    invoke-direct {v2, v3, v0}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    new-instance v0, Lt2;

    .line 163
    .line 164
    const/4 v3, 0x0

    .line 165
    invoke-direct {v0, v3}, Lt2;-><init>(I)V

    .line 166
    .line 167
    .line 168
    move v4, v3

    .line 169
    new-instance v3, Lpw5;

    .line 170
    .line 171
    sget-object v5, Lxx2;->f:Lxx2;

    .line 172
    .line 173
    invoke-direct {v3, v5, v0}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    new-instance v0, Ljo5;

    .line 177
    .line 178
    invoke-direct {v0, v4}, Ljo5;-><init>(I)V

    .line 179
    .line 180
    .line 181
    move v5, v4

    .line 182
    new-instance v4, Lpw5;

    .line 183
    .line 184
    sget-object v6, Lxx2;->x:Lxx2;

    .line 185
    .line 186
    invoke-direct {v4, v6, v0}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 187
    .line 188
    .line 189
    new-instance v0, Lat1;

    .line 190
    .line 191
    invoke-direct {v0}, Lat1;-><init>()V

    .line 192
    .line 193
    .line 194
    move v6, v5

    .line 195
    new-instance v5, Lpw5;

    .line 196
    .line 197
    sget-object v7, Lxx2;->q:Lxx2;

    .line 198
    .line 199
    invoke-direct {v5, v7, v0}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 200
    .line 201
    .line 202
    new-instance v0, Lt2;

    .line 203
    .line 204
    const/4 v7, 0x1

    .line 205
    invoke-direct {v0, v7}, Lt2;-><init>(I)V

    .line 206
    .line 207
    .line 208
    move v8, v6

    .line 209
    new-instance v6, Lpw5;

    .line 210
    .line 211
    sget-object v9, Lxx2;->r:Lxx2;

    .line 212
    .line 213
    invoke-direct {v6, v9, v0}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 214
    .line 215
    .line 216
    new-instance v0, Lig4;

    .line 217
    .line 218
    invoke-direct {v0, v8}, Lig4;-><init>(I)V

    .line 219
    .line 220
    .line 221
    move v9, v7

    .line 222
    new-instance v7, Lpw5;

    .line 223
    .line 224
    sget-object v10, Lxx2;->c:Lxx2;

    .line 225
    .line 226
    invoke-direct {v7, v10, v0}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 227
    .line 228
    .line 229
    new-instance v0, Lew2;

    .line 230
    .line 231
    invoke-direct {v0, v8}, Lew2;-><init>(I)V

    .line 232
    .line 233
    .line 234
    new-instance v8, Lpw5;

    .line 235
    .line 236
    sget-object v10, Lxx2;->n:Lxx2;

    .line 237
    .line 238
    invoke-direct {v8, v10, v0}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 239
    .line 240
    .line 241
    new-instance v0, Lr44;

    .line 242
    .line 243
    invoke-direct {v0, v9}, Lr44;-><init>(I)V

    .line 244
    .line 245
    .line 246
    move v10, v9

    .line 247
    new-instance v9, Lpw5;

    .line 248
    .line 249
    sget-object v11, Lxx2;->e:Lxx2;

    .line 250
    .line 251
    invoke-direct {v9, v11, v0}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 252
    .line 253
    .line 254
    new-instance v0, Lig4;

    .line 255
    .line 256
    invoke-direct {v0, v10}, Lig4;-><init>(I)V

    .line 257
    .line 258
    .line 259
    move v11, v10

    .line 260
    new-instance v10, Lpw5;

    .line 261
    .line 262
    sget-object v12, Lxx2;->t:Lxx2;

    .line 263
    .line 264
    invoke-direct {v10, v12, v0}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 265
    .line 266
    .line 267
    new-instance v0, Lja2;

    .line 268
    .line 269
    invoke-direct {v0, v11}, Lja2;-><init>(I)V

    .line 270
    .line 271
    .line 272
    move v12, v11

    .line 273
    new-instance v11, Lpw5;

    .line 274
    .line 275
    sget-object v13, Lxx2;->b:Lxx2;

    .line 276
    .line 277
    invoke-direct {v11, v13, v0}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 278
    .line 279
    .line 280
    new-instance v0, Lxf4;

    .line 281
    .line 282
    invoke-direct {v0, v12}, Lxf4;-><init>(I)V

    .line 283
    .line 284
    .line 285
    new-instance v12, Lpw5;

    .line 286
    .line 287
    sget-object v13, Lxx2;->d:Lxx2;

    .line 288
    .line 289
    invoke-direct {v12, v13, v0}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 290
    .line 291
    .line 292
    new-instance v0, Lew2;

    .line 293
    .line 294
    invoke-direct {v0, v1}, Lew2;-><init>(I)V

    .line 295
    .line 296
    .line 297
    new-instance v13, Lpw5;

    .line 298
    .line 299
    sget-object v1, Lxx2;->k:Lxx2;

    .line 300
    .line 301
    invoke-direct {v13, v1, v0}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 302
    .line 303
    .line 304
    filled-new-array/range {v2 .. v13}, [Lpw5;

    .line 305
    .line 306
    .line 307
    move-result-object v0

    .line 308
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 309
    .line 310
    const/16 v2, 0xc

    .line 311
    .line 312
    invoke-static {v2}, Lx65;->q0(I)I

    .line 313
    .line 314
    .line 315
    move-result v2

    .line 316
    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 317
    .line 318
    .line 319
    invoke-static {v1, v0}, Lx65;->s0(Ljava/util/HashMap;[Lpw5;)V

    .line 320
    .line 321
    .line 322
    sput-object v1, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->orderedErrorCodeToExceptions:Ljava/util/LinkedHashMap;

    .line 323
    .line 324
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$getJSON_KEY_ALG$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_ALG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getJSON_KEY_APPID$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_APPID:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getJSON_KEY_ATTESTATION$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_ATTESTATION:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getJSON_KEY_ATTESTATION_OBJ$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_ATTESTATION_OBJ:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getJSON_KEY_AUTH_ATTACHMENT$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_AUTH_ATTACHMENT:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getJSON_KEY_AUTH_DATA$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_AUTH_DATA:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getJSON_KEY_AUTH_SELECTION$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_AUTH_SELECTION:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getJSON_KEY_CHALLENGE$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_CHALLENGE:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getJSON_KEY_CLIENT_DATA$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_CLIENT_DATA:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getJSON_KEY_CLIENT_EXTENSION_RESULTS$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_CLIENT_EXTENSION_RESULTS:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getJSON_KEY_CRED_PROPS$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_CRED_PROPS:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getJSON_KEY_DISPLAY_NAME$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_DISPLAY_NAME:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getJSON_KEY_EXCLUDE_CREDENTIALS$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_EXCLUDE_CREDENTIALS:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getJSON_KEY_EXTENSTIONS$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_EXTENSTIONS:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getJSON_KEY_ICON$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_ICON:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getJSON_KEY_ID$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_ID:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getJSON_KEY_KEY_PROTECTION_TYPE$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_KEY_PROTECTION_TYPE:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getJSON_KEY_MATCHER_PROTECTION_TYPE$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_MATCHER_PROTECTION_TYPE:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getJSON_KEY_NAME$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_NAME:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getJSON_KEY_PUB_KEY_CRED_PARAMS$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_PUB_KEY_CRED_PARAMS:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getJSON_KEY_RAW_ID$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_RAW_ID:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getJSON_KEY_REQUIRE_RES_KEY$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_REQUIRE_RES_KEY:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getJSON_KEY_RESPONSE$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_RESPONSE:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getJSON_KEY_RES_KEY$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_RES_KEY:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getJSON_KEY_RK$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_RK:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getJSON_KEY_RP$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_RP:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getJSON_KEY_RPID$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_RPID:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getJSON_KEY_SIGNATURE$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_SIGNATURE:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getJSON_KEY_THIRD_PARTY_PAYMENT$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_THIRD_PARTY_PAYMENT:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getJSON_KEY_TIMEOUT$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_TIMEOUT:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getJSON_KEY_TRANSPORTS$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_TRANSPORTS:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getJSON_KEY_TYPE$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_TYPE:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getJSON_KEY_USER$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_USER:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getJSON_KEY_USER_HANDLE$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_USER_HANDLE:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getJSON_KEY_USER_VERIFICATION_METHOD$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_USER_VERIFICATION_METHOD:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getOrderedErrorCodeToExceptions$cp()Ljava/util/LinkedHashMap;
    .locals 1

    .line 1
    sget-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->orderedErrorCodeToExceptions:Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final convert(Le22;Landroid/content/Context;)Lqa6;
    .locals 1

    .line 1
    sget-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->Companion:Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility$Companion;->convert(Le22;Landroid/content/Context;)Lqa6;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
