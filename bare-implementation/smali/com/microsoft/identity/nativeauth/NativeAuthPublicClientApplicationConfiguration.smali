.class public final Lcom/microsoft/identity/nativeauth/NativeAuthPublicClientApplicationConfiguration;
.super Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final VALID_CAPABILITIES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final VALID_CHALLENGE_TYPES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private capabilities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ly77;
        value = "capabilities"
    .end annotation
.end field

.field private challengeTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ly77;
        value = "challenge_types"
    .end annotation
.end field

.field private dc:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "dc"
    .end annotation
.end field

.field private useMockAuthority:Ljava/lang/Boolean;
    .annotation runtime Ly77;
        value = "use_mock_api_for_native_auth"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "oob"

    .line 2
    .line 3
    const-string v1, "redirect"

    .line 4
    .line 5
    const-string v2, "password"

    .line 6
    .line 7
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/microsoft/identity/nativeauth/NativeAuthPublicClientApplicationConfiguration;->VALID_CHALLENGE_TYPES:Ljava/util/List;

    .line 16
    .line 17
    const-string v0, "mfa_required"

    .line 18
    .line 19
    const-string v1, "registration_required"

    .line 20
    .line 21
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lcom/microsoft/identity/nativeauth/NativeAuthPublicClientApplicationConfiguration;->VALID_CAPABILITIES:Ljava/util/List;

    .line 30
    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final checkIntentFilterAddedToAppManifestForBrokerFlow()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/client/exception/MsalClientException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getRedirectUri()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-super {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->checkIntentFilterAddedToAppManifestForBrokerFlow()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final validateConfiguration()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getClientId()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_11

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getRedirectUri()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-super {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->validateConfiguration()V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const-string v0, "NativeAuthPublicClientApplicationConfiguration"

    .line 23
    .line 24
    const-string v2, "No redirect URI was passed."

    .line 25
    .line 26
    invoke-static {v0, v2}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getAccountMode()Lcom/microsoft/identity/client/configuration/AccountMode;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sget-object v2, Lcom/microsoft/identity/client/configuration/AccountMode;->SINGLE:Lcom/microsoft/identity/client/configuration/AccountMode;

    .line 34
    .line 35
    if-ne v0, v2, :cond_10

    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getAuthorities()Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-eqz v0, :cond_f

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getAuthorities()Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_f

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getAuthorities()Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    const/4 v2, 0x1

    .line 62
    if-gt v0, v2, :cond_e

    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getDefaultAuthority()Lcom/microsoft/identity/common/java/authorities/Authority;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    instance-of v0, v0, Lcom/microsoft/identity/common/java/nativeauth/authorities/NativeAuthCIAMAuthority;

    .line 69
    .line 70
    if-nez v0, :cond_2

    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getDefaultAuthority()Lcom/microsoft/identity/common/java/authorities/Authority;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    instance-of v0, v0, Lcom/microsoft/identity/common/java/authorities/CIAMAuthority;

    .line 77
    .line 78
    if-eqz v0, :cond_1

    .line 79
    .line 80
    new-instance v0, Lcom/microsoft/identity/common/java/nativeauth/authorities/NativeAuthCIAMAuthority;

    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getDefaultAuthority()Lcom/microsoft/identity/common/java/authorities/Authority;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/authorities/Authority;->getAuthorityUri()Ljava/net/URI;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getClientId()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    invoke-direct {v0, v2, v3}, Lcom/microsoft/identity/common/java/nativeauth/authorities/NativeAuthCIAMAuthority;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getAuthorities()Ljava/util/List;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getAuthorities()Ljava/util/List;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_1
    new-instance p0, Lcom/microsoft/identity/client/exception/MsalClientException;

    .line 123
    .line 124
    const-string v0, "native_auth_invalid_ciam_authority"

    .line 125
    .line 126
    const-string v2, "NativeAuthPublicClientApplication can only be used with a valid CIAM Authority"

    .line 127
    .line 128
    invoke-direct {p0, v0, v2, v1}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 129
    .line 130
    .line 131
    throw p0

    .line 132
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getIsSharedDevice()Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-nez v0, :cond_d

    .line 137
    .line 138
    iget-object v0, p0, Lcom/microsoft/identity/nativeauth/NativeAuthPublicClientApplicationConfiguration;->challengeTypes:Ljava/util/List;

    .line 139
    .line 140
    const/16 v2, 0xa

    .line 141
    .line 142
    if-eqz v0, :cond_3

    .line 143
    .line 144
    new-instance v3, Ljava/util/ArrayList;

    .line 145
    .line 146
    invoke-static {v0, v2}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 147
    .line 148
    .line 149
    move-result v4

    .line 150
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 151
    .line 152
    .line 153
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 158
    .line 159
    .line 160
    move-result v4

    .line 161
    if-eqz v4, :cond_4

    .line 162
    .line 163
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    check-cast v4, Ljava/lang/String;

    .line 168
    .line 169
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 170
    .line 171
    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v4

    .line 175
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    goto :goto_2

    .line 182
    :cond_3
    move-object v3, v1

    .line 183
    :cond_4
    iput-object v3, p0, Lcom/microsoft/identity/nativeauth/NativeAuthPublicClientApplicationConfiguration;->challengeTypes:Ljava/util/List;

    .line 184
    .line 185
    if-eqz v3, :cond_5

    .line 186
    .line 187
    invoke-static {v3}, Leq3;->p(Ljava/util/ArrayList;)Ljava/util/List;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    goto :goto_3

    .line 192
    :cond_5
    move-object v0, v1

    .line 193
    :goto_3
    iput-object v0, p0, Lcom/microsoft/identity/nativeauth/NativeAuthPublicClientApplicationConfiguration;->challengeTypes:Ljava/util/List;

    .line 194
    .line 195
    const/16 v3, 0x22

    .line 196
    .line 197
    if-eqz v0, :cond_7

    .line 198
    .line 199
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 204
    .line 205
    .line 206
    move-result v4

    .line 207
    if-eqz v4, :cond_7

    .line 208
    .line 209
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v4

    .line 213
    check-cast v4, Ljava/lang/String;

    .line 214
    .line 215
    sget-object v5, Lcom/microsoft/identity/nativeauth/NativeAuthPublicClientApplicationConfiguration;->VALID_CHALLENGE_TYPES:Ljava/util/List;

    .line 216
    .line 217
    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    move-result v5

    .line 221
    if-eqz v5, :cond_6

    .line 222
    .line 223
    goto :goto_4

    .line 224
    :cond_6
    new-instance p0, Lcom/microsoft/identity/client/exception/MsalClientException;

    .line 225
    .line 226
    const-string v0, "NativeAuthPublicClientApplication detected invalid challenge type. \""

    .line 227
    .line 228
    invoke-static {v3, v0, v4}, Lu48;->j(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    const-string v2, "native_auth_invalid_challenge_type"

    .line 233
    .line 234
    invoke-direct {p0, v2, v0, v1}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 235
    .line 236
    .line 237
    throw p0

    .line 238
    :cond_7
    iget-object v0, p0, Lcom/microsoft/identity/nativeauth/NativeAuthPublicClientApplicationConfiguration;->capabilities:Ljava/util/List;

    .line 239
    .line 240
    if-eqz v0, :cond_8

    .line 241
    .line 242
    new-instance v4, Ljava/util/ArrayList;

    .line 243
    .line 244
    invoke-static {v0, v2}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 245
    .line 246
    .line 247
    move-result v2

    .line 248
    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 249
    .line 250
    .line 251
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 256
    .line 257
    .line 258
    move-result v2

    .line 259
    if-eqz v2, :cond_9

    .line 260
    .line 261
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v2

    .line 265
    check-cast v2, Ljava/lang/String;

    .line 266
    .line 267
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 268
    .line 269
    invoke-virtual {v2, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v2

    .line 273
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    .line 278
    .line 279
    goto :goto_5

    .line 280
    :cond_8
    move-object v4, v1

    .line 281
    :cond_9
    iput-object v4, p0, Lcom/microsoft/identity/nativeauth/NativeAuthPublicClientApplicationConfiguration;->capabilities:Ljava/util/List;

    .line 282
    .line 283
    if-eqz v4, :cond_a

    .line 284
    .line 285
    invoke-static {v4}, Leq3;->p(Ljava/util/ArrayList;)Ljava/util/List;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    goto :goto_6

    .line 290
    :cond_a
    move-object v0, v1

    .line 291
    :goto_6
    iput-object v0, p0, Lcom/microsoft/identity/nativeauth/NativeAuthPublicClientApplicationConfiguration;->capabilities:Ljava/util/List;

    .line 292
    .line 293
    if-eqz v0, :cond_c

    .line 294
    .line 295
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 296
    .line 297
    .line 298
    move-result-object p0

    .line 299
    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 300
    .line 301
    .line 302
    move-result v0

    .line 303
    if-eqz v0, :cond_c

    .line 304
    .line 305
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    check-cast v0, Ljava/lang/String;

    .line 310
    .line 311
    sget-object v2, Lcom/microsoft/identity/nativeauth/NativeAuthPublicClientApplicationConfiguration;->VALID_CAPABILITIES:Ljava/util/List;

    .line 312
    .line 313
    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 314
    .line 315
    .line 316
    move-result v2

    .line 317
    if-eqz v2, :cond_b

    .line 318
    .line 319
    goto :goto_7

    .line 320
    :cond_b
    new-instance p0, Lcom/microsoft/identity/client/exception/MsalClientException;

    .line 321
    .line 322
    const-string v2, "NativeAuthPublicClientApplication detected invalid capability. \""

    .line 323
    .line 324
    invoke-static {v3, v2, v0}, Lu48;->j(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    const-string v2, "native_auth_invalid_capability"

    .line 329
    .line 330
    invoke-direct {p0, v2, v0, v1}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 331
    .line 332
    .line 333
    throw p0

    .line 334
    :cond_c
    return-void

    .line 335
    :cond_d
    new-instance p0, Lcom/microsoft/identity/client/exception/MsalClientException;

    .line 336
    .line 337
    const-string v0, "native_auth_shared_device_mode"

    .line 338
    .line 339
    const-string v2, "NativeAuthPublicClientApplication cannot be used in shared device mode"

    .line 340
    .line 341
    invoke-direct {p0, v0, v2, v1}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 342
    .line 343
    .line 344
    throw p0

    .line 345
    :cond_e
    new-instance p0, Lcom/microsoft/identity/client/exception/MsalClientException;

    .line 346
    .line 347
    const-string v0, "native_auth_use_with_multi_authority"

    .line 348
    .line 349
    const-string v2, "NativeAuthPublicClientApplication can\'t be used with multiple authorities"

    .line 350
    .line 351
    invoke-direct {p0, v0, v2, v1}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 352
    .line 353
    .line 354
    throw p0

    .line 355
    :cond_f
    new-instance p0, Lcom/microsoft/identity/client/exception/MsalClientException;

    .line 356
    .line 357
    const-string v0, "native_auth_use_with_no_authority"

    .line 358
    .line 359
    const-string v2, "NativeAuthPublicClientApplication can\'t be used with no authority."

    .line 360
    .line 361
    invoke-direct {p0, v0, v2, v1}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 362
    .line 363
    .line 364
    throw p0

    .line 365
    :cond_10
    new-instance p0, Lcom/microsoft/identity/client/exception/MsalClientException;

    .line 366
    .line 367
    const-string v0, "native_auth_invalid_account_mode_config"

    .line 368
    .line 369
    const-string v2, "NativeAuthPublicClientApplication Native auth apps cannot be used with anything other than SINGLE account mode"

    .line 370
    .line 371
    invoke-direct {p0, v0, v2, v1}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 372
    .line 373
    .line 374
    throw p0

    .line 375
    :cond_11
    new-instance p0, Lcom/microsoft/identity/client/exception/MsalClientException;

    .line 376
    .line 377
    const-string v0, "native_auth_use_without_client_id"

    .line 378
    .line 379
    const-string v2, "NativeAuthPublicClientApplication cannot be used without a client ID"

    .line 380
    .line 381
    invoke-direct {p0, v0, v2, v1}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 382
    .line 383
    .line 384
    throw p0
.end method
