.class public final Lcom/microsoft/identity/common/java/cache/CacheKeyValueDelegate;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private final mGson:Lcom/google/gson/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/gson/a;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/google/gson/a;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/microsoft/identity/common/java/cache/CacheKeyValueDelegate;->mGson:Lcom/google/gson/a;

    .line 10
    .line 11
    const-string p0, "CacheKeyValueDelegate"

    .line 12
    .line 13
    const-string v0, "Init: CacheKeyValueDelegate"

    .line 14
    .line 15
    invoke-static {p0, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public static generateCacheKey(Lcom/microsoft/identity/common/java/dto/AccountRecord;)Ljava/lang/String;
    .locals 3

    .line 327
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/dto/AccountRecord;->getHomeAccountId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/identity/common/java/util/StringUtil;->sanitizeNullAndLowercaseAndTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<home_account_id>-<environment>-<realm>"

    const-string v2, "<home_account_id>"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 328
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/dto/AccountRecord;->getEnvironment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/identity/common/java/util/StringUtil;->sanitizeNullAndLowercaseAndTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "<environment>"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 329
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/dto/AccountRecord;->getRealm()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/microsoft/identity/common/java/util/StringUtil;->sanitizeNullAndLowercaseAndTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "<realm>"

    invoke-virtual {v0, v1, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static generateCacheKey(Lcom/microsoft/identity/common/java/dto/Credential;)Ljava/lang/String;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/dto/Credential;->getHomeAccountId()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/microsoft/identity/common/java/util/StringUtil;->sanitizeNullAndLowercaseAndTrim(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "<home_account_id>-<environment>-<credential_type>-<client_id>-<realm>-<target>"

    .line 10
    .line 11
    const-string v2, "<home_account_id>"

    .line 12
    .line 13
    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/dto/Credential;->getEnvironment()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v1}, Lcom/microsoft/identity/common/java/util/StringUtil;->sanitizeNullAndLowercaseAndTrim(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v2, "<environment>"

    .line 26
    .line 27
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/dto/Credential;->getCredentialType()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-static {v1}, Lcom/microsoft/identity/common/java/util/StringUtil;->sanitizeNullAndLowercaseAndTrim(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const-string v2, "<credential_type>"

    .line 40
    .line 41
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    instance-of v1, p0, Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;

    .line 46
    .line 47
    const-string v2, "<client_id>"

    .line 48
    .line 49
    const-string v3, ""

    .line 50
    .line 51
    if-eqz v1, :cond_1

    .line 52
    .line 53
    move-object v4, p0

    .line 54
    check-cast v4, Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;

    .line 55
    .line 56
    invoke-virtual {v4}, Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;->getFamilyId()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    invoke-static {v5}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    if-nez v5, :cond_1

    .line 65
    .line 66
    invoke-virtual {v4}, Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;->getFamilyId()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    const-string v5, "foci-"

    .line 71
    .line 72
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    move-result v6

    .line 76
    if-eqz v6, :cond_0

    .line 77
    .line 78
    invoke-virtual {v4, v5, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    :cond_0
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    goto :goto_0

    .line 87
    :cond_1
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/dto/Credential;->getClientId()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    invoke-static {v4}, Lcom/microsoft/identity/common/java/util/StringUtil;->sanitizeNullAndLowercaseAndTrim(Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    :goto_0
    instance-of v2, p0, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;

    .line 100
    .line 101
    const-string v4, "<target>"

    .line 102
    .line 103
    const-string v5, "<realm>"

    .line 104
    .line 105
    if-eqz v2, :cond_6

    .line 106
    .line 107
    check-cast p0, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;

    .line 108
    .line 109
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->getRealm()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-static {v1}, Lcom/microsoft/identity/common/java/util/StringUtil;->sanitizeNullAndLowercaseAndTrim(Ljava/lang/String;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->getTarget()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-static {v1}, Lcom/microsoft/identity/common/java/util/StringUtil;->sanitizeNullAndLowercaseAndTrim(Ljava/lang/String;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->getApplicationIdentifier()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-static {v1}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    if-nez v1, :cond_2

    .line 142
    .line 143
    const-string v1, "-<application_identifier>"

    .line 144
    .line 145
    invoke-static {v0, v1}, Leq3;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->getApplicationIdentifier()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-static {v1}, Lcom/microsoft/identity/common/java/util/StringUtil;->sanitizeNullAndLowercaseAndTrim(Ljava/lang/String;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    const-string v2, "<application_identifier>"

    .line 158
    .line 159
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    :cond_2
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->getMamEnrollmentIdentifier()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    invoke-static {v1}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    if-nez v1, :cond_3

    .line 172
    .line 173
    const-string v1, "-<mam_enrollment_identifier>"

    .line 174
    .line 175
    invoke-static {v0, v1}, Leq3;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->getMamEnrollmentIdentifier()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    invoke-static {v1}, Lcom/microsoft/identity/common/java/util/StringUtil;->sanitizeNullAndLowercaseAndTrim(Ljava/lang/String;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    const-string v2, "<mam_enrollment_identifier>"

    .line 188
    .line 189
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    :cond_3
    const-string v1, "pop"

    .line 194
    .line 195
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->getAccessTokenType()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 200
    .line 201
    .line 202
    move-result v1

    .line 203
    if-eqz v1, :cond_4

    .line 204
    .line 205
    const-string v1, "-<auth_scheme>"

    .line 206
    .line 207
    invoke-static {v0, v1}, Leq3;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->getAccessTokenType()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    invoke-static {v1}, Lcom/microsoft/identity/common/java/util/StringUtil;->sanitizeNullAndLowercaseAndTrim(Ljava/lang/String;)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    const-string v2, "<auth_scheme>"

    .line 220
    .line 221
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    :cond_4
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->getRequestedClaims()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    invoke-static {v1}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 230
    .line 231
    .line 232
    move-result v1

    .line 233
    if-nez v1, :cond_5

    .line 234
    .line 235
    const-string v1, "-<requested_claims>"

    .line 236
    .line 237
    invoke-static {v0, v1}, Leq3;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->getRequestedClaims()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object p0

    .line 245
    invoke-static {p0}, Lcom/microsoft/identity/common/java/util/StringUtil;->sanitizeNullAndLowercaseAndTrim(Ljava/lang/String;)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object p0

    .line 249
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 250
    .line 251
    .line 252
    move-result p0

    .line 253
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object p0

    .line 257
    const-string v1, "<requested_claims>"

    .line 258
    .line 259
    invoke-static {p0}, Lcom/microsoft/identity/common/java/util/StringUtil;->sanitizeNullAndLowercaseAndTrim(Ljava/lang/String;)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object p0

    .line 263
    invoke-virtual {v0, v1, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object p0

    .line 267
    return-object p0

    .line 268
    :cond_5
    return-object v0

    .line 269
    :cond_6
    if-eqz v1, :cond_7

    .line 270
    .line 271
    check-cast p0, Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;

    .line 272
    .line 273
    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;->getTarget()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object p0

    .line 281
    invoke-static {p0}, Lcom/microsoft/identity/common/java/util/StringUtil;->sanitizeNullAndLowercaseAndTrim(Ljava/lang/String;)Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object p0

    .line 285
    invoke-virtual {v0, v4, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object p0

    .line 289
    return-object p0

    .line 290
    :cond_7
    instance-of v1, p0, Lcom/microsoft/identity/common/java/dto/IdTokenRecord;

    .line 291
    .line 292
    if-eqz v1, :cond_8

    .line 293
    .line 294
    check-cast p0, Lcom/microsoft/identity/common/java/dto/IdTokenRecord;

    .line 295
    .line 296
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/dto/IdTokenRecord;->getRealm()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object p0

    .line 300
    invoke-static {p0}, Lcom/microsoft/identity/common/java/util/StringUtil;->sanitizeNullAndLowercaseAndTrim(Ljava/lang/String;)Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object p0

    .line 304
    invoke-virtual {v0, v5, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object p0

    .line 308
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object p0

    .line 312
    return-object p0

    .line 313
    :cond_8
    instance-of p0, p0, Lcom/microsoft/identity/common/java/dto/PrimaryRefreshTokenRecord;

    .line 314
    .line 315
    if-eqz p0, :cond_9

    .line 316
    .line 317
    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object p0

    .line 321
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object p0

    .line 325
    return-object p0

    .line 326
    :cond_9
    return-object v0
.end method

.method private generateCacheValueInternal(Lcom/microsoft/identity/common/java/dto/AccountCredentialBase;)Ljava/lang/String;
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/cache/CacheKeyValueDelegate;->mGson:Lcom/google/gson/a;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    sget-object v0, Lel4;->a:Lel4;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    new-instance v1, Lqm4;

    .line 19
    .line 20
    invoke-direct {v1}, Lqm4;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/gson/a;->l(Ljava/lang/Object;Ljava/lang/reflect/Type;Lnn4;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Lqm4;->Y()Lqj4;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :goto_0
    invoke-virtual {v0}, Lqj4;->i()Lfl4;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/dto/AccountCredentialBase;->getAdditionalFields()Ljava/util/Map;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_1

    .line 53
    .line 54
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    check-cast v2, Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/dto/AccountCredentialBase;->getAdditionalFields()Ljava/util/Map;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    check-cast v3, Lqj4;

    .line 69
    .line 70
    invoke-virtual {v0, v2, v3}, Lfl4;->p(Ljava/lang/String;Lqj4;)V

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/gson/a;->h(Lqj4;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    return-object p0
.end method

.method private static getExpectedJsonFields(Ljava/lang/Class;)Ljava/util/HashSet;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lcom/microsoft/identity/common/java/cache/CacheKeyValueDelegate;->getFieldsUpTo(Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    new-instance v1, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    const-class v3, Ly77;

    .line 24
    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Ljava/lang/reflect/Field;

    .line 32
    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Ly77;

    .line 38
    .line 39
    if-eqz v3, :cond_0

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_2

    .line 54
    .line 55
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    check-cast v1, Ljava/lang/reflect/Field;

    .line 60
    .line 61
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    check-cast v1, Ly77;

    .line 66
    .line 67
    invoke-interface {v1}, Ly77;->value()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_2
    return-object v0
.end method

.method private static getFieldsUpTo(Ljava/lang/Class;)Ljava/util/ArrayList;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    const-class v1, Lcom/microsoft/identity/common/java/dto/AccountCredentialBase;

    .line 21
    .line 22
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_0

    .line 27
    .line 28
    invoke-static {p0}, Lcom/microsoft/identity/common/java/cache/CacheKeyValueDelegate;->getFieldsUpTo(Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 33
    .line 34
    .line 35
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final fromCacheValue(Ljava/lang/Class;Ljava/lang/String;)Lcom/microsoft/identity/common/java/dto/AccountCredentialBase;
    .locals 3

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/microsoft/identity/common/java/cache/CacheKeyValueDelegate;->mGson:Lcom/google/gson/a;

    .line 2
    .line 3
    invoke-virtual {p0, p2, p1}, Lcom/google/gson/a;->c(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/microsoft/identity/common/java/dto/AccountCredentialBase;

    .line 8
    .line 9
    invoke-static {p2}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_2

    .line 14
    .line 15
    invoke-static {p2}, Lyc9;->K(Ljava/lang/String;)Lqj4;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-virtual {p2}, Lqj4;->i()Lfl4;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    iget-object v0, p2, Lfl4;->a:Liw4;

    .line 24
    .line 25
    invoke-static {p1}, Lcom/microsoft/identity/common/java/cache/CacheKeyValueDelegate;->getExpectedJsonFields(Ljava/lang/Class;)Ljava/util/HashSet;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Liw4;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Lqj4;

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    new-instance p1, Ljava/util/HashMap;

    .line 53
    .line 54
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Liw4;->keySet()Ljava/util/Set;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Lgw4;

    .line 62
    .line 63
    invoke-virtual {v0}, Lgw4;->iterator()Ljava/util/Iterator;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    :goto_1
    move-object v1, v0

    .line 68
    check-cast v1, Law4;

    .line 69
    .line 70
    invoke-virtual {v1}, Law4;->hasNext()Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-eqz v1, :cond_1

    .line 75
    .line 76
    move-object v1, v0

    .line 77
    check-cast v1, Lfw4;

    .line 78
    .line 79
    invoke-virtual {v1}, Law4;->b()Lhw4;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    iget-object v1, v1, Lhw4;->f:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast v1, Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {p2, v1}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_1
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/java/dto/AccountCredentialBase;->setAdditionalFields(Ljava/util/Map;)V
    :try_end_0
    .catch Lkm4; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .line 97
    .line 98
    :cond_2
    return-object p0

    .line 99
    :catch_0
    const-string p0, "CacheKeyValueDelegate:fromCacheValue"

    .line 100
    .line 101
    const-string p1, "Failed to parse cache value."

    .line 102
    .line 103
    const/4 p2, 0x0

    .line 104
    invoke-static {p0, p1, p2}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 105
    .line 106
    .line 107
    return-object p2
.end method

.method public final generateCacheValue(Lcom/microsoft/identity/common/java/dto/AccountRecord;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/microsoft/identity/common/java/cache/CacheKeyValueDelegate;->generateCacheValueInternal(Lcom/microsoft/identity/common/java/dto/AccountCredentialBase;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final generateCacheValue(Lcom/microsoft/identity/common/java/dto/Credential;)Ljava/lang/String;
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/microsoft/identity/common/java/cache/CacheKeyValueDelegate;->generateCacheValueInternal(Lcom/microsoft/identity/common/java/dto/AccountCredentialBase;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
