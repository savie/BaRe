.class public abstract Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallengeFactory;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public static getPKeyAuthChallengeFromTokenEndpointResponse(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/ClientException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_d

    .line 3
    .line 4
    if-eqz p1, :cond_c

    .line 5
    .line 6
    invoke-static {p0}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const-string v2, "Device certificate request is invalid"

    .line 11
    .line 12
    if-nez v1, :cond_b

    .line 13
    .line 14
    const-string v1, "PKeyAuth"

    .line 15
    .line 16
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_a

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const/16 v3, 0xa

    .line 27
    .line 28
    if-le v1, v3, :cond_a

    .line 29
    .line 30
    const/16 v1, 0x8

    .line 31
    .line 32
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_a

    .line 41
    .line 42
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    const/16 v1, 0x2c

    .line 47
    .line 48
    invoke-static {p0, v1}, Lcom/microsoft/identity/common/java/util/StringUtil;->splitWithQuotes(Ljava/lang/String;C)Ljava/util/ArrayList;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    new-instance v3, Ljava/util/HashMap;

    .line 53
    .line 54
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    if-eqz v4, :cond_3

    .line 66
    .line 67
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    check-cast v4, Ljava/lang/String;

    .line 72
    .line 73
    const/16 v5, 0x3d

    .line 74
    .line 75
    invoke-static {v4, v5}, Lcom/microsoft/identity/common/java/util/StringUtil;->splitWithQuotes(Ljava/lang/String;C)Ljava/util/ArrayList;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    const/4 v6, 0x2

    .line 84
    const-string v7, ""

    .line 85
    .line 86
    const/4 v8, 0x1

    .line 87
    const/4 v9, 0x0

    .line 88
    if-ne v5, v6, :cond_1

    .line 89
    .line 90
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    check-cast v5, Ljava/lang/String;

    .line 95
    .line 96
    invoke-static {v5}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 97
    .line 98
    .line 99
    move-result v5

    .line 100
    if-nez v5, :cond_1

    .line 101
    .line 102
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    check-cast v5, Ljava/lang/String;

    .line 107
    .line 108
    invoke-static {v5}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 109
    .line 110
    .line 111
    move-result v5

    .line 112
    if-nez v5, :cond_1

    .line 113
    .line 114
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    check-cast v5, Ljava/lang/String;

    .line 119
    .line 120
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    check-cast v4, Ljava/lang/String;

    .line 125
    .line 126
    invoke-static {v5}, Lcom/microsoft/identity/common/java/util/StringUtil;->urlFormDecode(Ljava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v5

    .line 130
    invoke-static {v4}, Lcom/microsoft/identity/common/java/util/StringUtil;->urlFormDecode(Ljava/lang/String;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    invoke-static {v4}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 143
    .line 144
    .line 145
    move-result v6

    .line 146
    if-nez v6, :cond_0

    .line 147
    .line 148
    const-string v6, "\""

    .line 149
    .line 150
    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    goto :goto_1

    .line 155
    :cond_0
    move-object v4, v0

    .line 156
    :goto_1
    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    goto :goto_0

    .line 160
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 161
    .line 162
    .line 163
    move-result v5

    .line 164
    if-ne v5, v8, :cond_2

    .line 165
    .line 166
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v5

    .line 170
    check-cast v5, Ljava/lang/String;

    .line 171
    .line 172
    invoke-static {v5}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 173
    .line 174
    .line 175
    move-result v5

    .line 176
    if-nez v5, :cond_2

    .line 177
    .line 178
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v4

    .line 182
    check-cast v4, Ljava/lang/String;

    .line 183
    .line 184
    invoke-static {v4}, Lcom/microsoft/identity/common/java/util/StringUtil;->urlFormDecode(Ljava/lang/String;)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v4

    .line 192
    invoke-static {v7}, Lcom/microsoft/identity/common/java/util/StringUtil;->urlFormDecode(Ljava/lang/String;)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v5

    .line 196
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    goto/16 :goto_0

    .line 200
    .line 201
    :cond_2
    invoke-static {v2, p0, v0}, Lq;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 202
    .line 203
    .line 204
    return-object v0

    .line 205
    :cond_3
    const-string p0, "Nonce"

    .line 206
    .line 207
    invoke-virtual {v3, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result v1

    .line 211
    if-nez v1, :cond_5

    .line 212
    .line 213
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 214
    .line 215
    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    move-result v1

    .line 223
    if-eqz v1, :cond_4

    .line 224
    .line 225
    goto :goto_2

    .line 226
    :cond_4
    const-string p0, "Nonce is empty."

    .line 227
    .line 228
    invoke-static {v2, p0, v0}, Lq;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 229
    .line 230
    .line 231
    return-object v0

    .line 232
    :cond_5
    :goto_2
    const-string v1, "Context"

    .line 233
    .line 234
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    move-result v4

    .line 238
    if-eqz v4, :cond_9

    .line 239
    .line 240
    const-string v4, "Version"

    .line 241
    .line 242
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    move-result v5

    .line 246
    if-eqz v5, :cond_8

    .line 247
    .line 248
    new-instance v0, Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge$PKeyAuthChallengeBuilder;

    .line 249
    .line 250
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge$PKeyAuthChallengeBuilder;->submitUrl(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 257
    .line 258
    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object p0

    .line 262
    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object p0

    .line 266
    check-cast p0, Ljava/lang/String;

    .line 267
    .line 268
    invoke-virtual {v0, p0}, Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge$PKeyAuthChallengeBuilder;->nonce(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object p0

    .line 275
    check-cast p0, Ljava/lang/String;

    .line 276
    .line 277
    invoke-virtual {v0, p0}, Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge$PKeyAuthChallengeBuilder;->context(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object p0

    .line 284
    check-cast p0, Ljava/lang/String;

    .line 285
    .line 286
    invoke-virtual {v0, p0}, Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge$PKeyAuthChallengeBuilder;->version(Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    const-string p0, "TenantId"

    .line 290
    .line 291
    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object p0

    .line 295
    check-cast p0, Ljava/lang/String;

    .line 296
    .line 297
    invoke-virtual {v0, p0}, Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge$PKeyAuthChallengeBuilder;->tenantId(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    const-string p0, "CertThumbprint"

    .line 301
    .line 302
    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object p1

    .line 306
    check-cast p1, Ljava/lang/String;

    .line 307
    .line 308
    invoke-static {p1}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 309
    .line 310
    .line 311
    move-result p1

    .line 312
    if-nez p1, :cond_6

    .line 313
    .line 314
    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object p0

    .line 318
    check-cast p0, Ljava/lang/String;

    .line 319
    .line 320
    invoke-virtual {v0, p0}, Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge$PKeyAuthChallengeBuilder;->thumbprint(Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    goto :goto_3

    .line 324
    :cond_6
    const-string p0, "CertAuthorities"

    .line 325
    .line 326
    invoke-virtual {v3, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    move-result p1

    .line 330
    if-eqz p1, :cond_7

    .line 331
    .line 332
    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    move-result-object p0

    .line 336
    check-cast p0, Ljava/lang/String;

    .line 337
    .line 338
    invoke-static {p0}, Lcom/microsoft/identity/common/java/util/StringUtil;->getStringTokens(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 339
    .line 340
    .line 341
    move-result-object p0

    .line 342
    invoke-virtual {v0, p0}, Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge$PKeyAuthChallengeBuilder;->certAuthorities(Ljava/util/ArrayList;)V

    .line 343
    .line 344
    .line 345
    :cond_7
    :goto_3
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge$PKeyAuthChallengeBuilder;->build()Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge;

    .line 346
    .line 347
    .line 348
    move-result-object p0

    .line 349
    return-object p0

    .line 350
    :cond_8
    const-string p0, "Version name is empty"

    .line 351
    .line 352
    invoke-static {v2, p0, v0}, Lq;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 353
    .line 354
    .line 355
    return-object v0

    .line 356
    :cond_9
    const-string p0, "Context is empty"

    .line 357
    .line 358
    invoke-static {v2, p0, v0}, Lq;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 359
    .line 360
    .line 361
    return-object v0

    .line 362
    :cond_a
    const-string p0, "challenge response type is wrong."

    .line 363
    .line 364
    invoke-static {v2, p0, v0}, Lq;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 365
    .line 366
    .line 367
    return-object v0

    .line 368
    :cond_b
    const-string p0, "header value is empty."

    .line 369
    .line 370
    invoke-static {v2, p0, v0}, Lq;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 371
    .line 372
    .line 373
    return-object v0

    .line 374
    :cond_c
    const-string p0, "authority is marked non-null but is null"

    .line 375
    .line 376
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    return-object v0

    .line 380
    :cond_d
    const-string p0, "header is marked non-null but is null"

    .line 381
    .line 382
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 383
    .line 384
    .line 385
    return-object v0
.end method

.method public static getPKeyAuthChallengeFromWebViewRedirect(Ljava/lang/String;)Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/ClientException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_6

    .line 3
    .line 4
    invoke-static {p0}, Lcom/microsoft/identity/common/java/util/UrlUtil;->getParameters(Ljava/lang/String;)Ljava/util/Map;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    const-string v1, "Nonce"

    .line 9
    .line 10
    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const-string v3, "Device certificate request is invalid"

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-interface {p0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const-string p0, "Nonce is empty."

    .line 32
    .line 33
    invoke-static {v3, p0, v0}, Lq;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    .line 35
    .line 36
    return-object v0

    .line 37
    :cond_1
    :goto_0
    const-string v2, "Context"

    .line 38
    .line 39
    invoke-interface {p0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-eqz v4, :cond_5

    .line 44
    .line 45
    const-string v4, "Version"

    .line 46
    .line 47
    invoke-interface {p0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    if-eqz v5, :cond_4

    .line 52
    .line 53
    const-string v5, "SubmitUrl"

    .line 54
    .line 55
    invoke-interface {p0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    if-eqz v6, :cond_3

    .line 60
    .line 61
    new-instance v0, Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge$PKeyAuthChallengeBuilder;

    .line 62
    .line 63
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 64
    .line 65
    .line 66
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 67
    .line 68
    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    check-cast v1, Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge$PKeyAuthChallengeBuilder;->nonce(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    check-cast v1, Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge$PKeyAuthChallengeBuilder;->context(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    check-cast v1, Ljava/lang/String;

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge$PKeyAuthChallengeBuilder;->version(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    check-cast v1, Ljava/lang/String;

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge$PKeyAuthChallengeBuilder;->submitUrl(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    const-string v1, "TenantId"

    .line 109
    .line 110
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    check-cast v1, Ljava/lang/String;

    .line 115
    .line 116
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge$PKeyAuthChallengeBuilder;->tenantId(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    const-string v1, "CertAuthorities"

    .line 120
    .line 121
    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    if-eqz v2, :cond_2

    .line 126
    .line 127
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    check-cast p0, Ljava/lang/String;

    .line 132
    .line 133
    invoke-static {p0}, Lcom/microsoft/identity/common/java/util/StringUtil;->getStringTokens(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    invoke-virtual {v0, p0}, Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge$PKeyAuthChallengeBuilder;->certAuthorities(Ljava/util/ArrayList;)V

    .line 138
    .line 139
    .line 140
    :cond_2
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge$PKeyAuthChallengeBuilder;->build()Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    return-object p0

    .line 145
    :cond_3
    const-string p0, "SubmitUrl is empty"

    .line 146
    .line 147
    invoke-static {v3, p0, v0}, Lq;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 148
    .line 149
    .line 150
    return-object v0

    .line 151
    :cond_4
    const-string p0, "Version name is empty"

    .line 152
    .line 153
    invoke-static {v3, p0, v0}, Lq;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 154
    .line 155
    .line 156
    return-object v0

    .line 157
    :cond_5
    const-string p0, "Context is empty"

    .line 158
    .line 159
    invoke-static {v3, p0, v0}, Lq;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 160
    .line 161
    .line 162
    return-object v0

    .line 163
    :cond_6
    const-string p0, "redirectUri is marked non-null but is null"

    .line 164
    .line 165
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    return-object v0
.end method
