.class public final Lt16;
.super Ljava/security/Provider;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final c:Ljava/util/Map;

.field public static final d:Ljava/util/Map;

.field public static final e:Ll15;


# instance fields
.field public final a:Lvz0;

.field public final b:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lh16;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "SupportedKeyClasses"

    .line 8
    .line 9
    invoke-static {v1, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Lt16;->c:Ljava/util/Map;

    .line 14
    .line 15
    const-class v0, Li16;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v1, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lt16;->d:Ljava/util/Map;

    .line 26
    .line 27
    const-class v0, Lt16;

    .line 28
    .line 29
    invoke-static {v0}, Lo15;->b(Ljava/lang/Class;)Ll15;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Lt16;->e:Ll15;

    .line 34
    .line 35
    return-void
.end method

.method public constructor <init>(Lvz0;)V
    .locals 13

    .line 1
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 2
    .line 3
    const-string v0, "JCA Provider for YubiKey PIV"

    .line 4
    .line 5
    const-string v4, "YKPiv"

    .line 6
    .line 7
    invoke-direct {p0, v4, v2, v3, v0}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance v0, Ljava/util/HashMap;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lt16;->b:Ljava/util/HashMap;

    .line 16
    .line 17
    iput-object p1, p0, Lt16;->a:Lvz0;

    .line 18
    .line 19
    const/4 v0, 0x4

    .line 20
    sget-object v2, Lt16;->e:Ll15;

    .line 21
    .line 22
    const-string v3, "EC attributes: {}"

    .line 23
    .line 24
    sget-object v7, Lt16;->c:Ljava/util/Map;

    .line 25
    .line 26
    invoke-static {v0, v2, v3, v7}, Lms8;->A(ILl15;Ljava/lang/String;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    const-string v3, "RSA attributes: {}"

    .line 30
    .line 31
    sget-object v4, Lt16;->d:Ljava/util/Map;

    .line 32
    .line 33
    invoke-static {v0, v2, v3, v4}, Lms8;->A(ILl15;Ljava/lang/String;Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    new-instance v3, Ll16;

    .line 37
    .line 38
    const-class v4, Lo06;

    .line 39
    .line 40
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-direct {v3, p0, v4, v7, p1}, Ll16;-><init>(Lt16;Ljava/lang/String;Ljava/util/Map;Lvz0;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v3}, Ljava/security/Provider;->putService(Ljava/security/Provider$Service;)V

    .line 48
    .line 49
    .line 50
    const/4 v3, 0x0

    .line 51
    :try_start_0
    const-string v4, "RSA"

    .line 52
    .line 53
    invoke-static {v4}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 58
    .line 59
    .line 60
    move-result-wide v5

    .line 61
    sget-object v8, Lvo4;->c:Lvo4;

    .line 62
    .line 63
    sget-object v9, Lvo4;->d:Lvo4;

    .line 64
    .line 65
    filled-new-array {v8, v9}, [Lvo4;

    .line 66
    .line 67
    .line 68
    move-result-object v8

    .line 69
    move v9, v3

    .line 70
    :goto_0
    const/4 v10, 0x2

    .line 71
    if-ge v9, v10, :cond_0

    .line 72
    .line 73
    aget-object v10, v8, v9

    .line 74
    .line 75
    iget-object v11, v10, Lvo4;->b:Lto4;

    .line 76
    .line 77
    iget v11, v11, Lto4;->b:I

    .line 78
    .line 79
    invoke-virtual {v4, v11}, Ljava/security/KeyPairGenerator;->initialize(I)V

    .line 80
    .line 81
    .line 82
    iget-object v11, p0, Lt16;->b:Ljava/util/HashMap;

    .line 83
    .line 84
    invoke-virtual {v4}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    .line 85
    .line 86
    .line 87
    move-result-object v12

    .line 88
    invoke-virtual {v11, v10, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    add-int/lit8 v9, v9, 0x1

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    goto :goto_1

    .line 96
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 97
    .line 98
    .line 99
    move-result-wide v8

    .line 100
    const-string v4, "Time taken to generate dummy RSA keys: {}ms"

    .line 101
    .line 102
    sub-long/2addr v8, v5

    .line 103
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    invoke-static {v0, v2, v4, v5}, Lms8;->A(ILl15;Ljava/lang/String;Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    new-instance v0, Lr16;

    .line 111
    .line 112
    invoke-direct {v0, p0}, Lr16;-><init>(Lt16;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, v0}, Ljava/security/Provider;->putService(Ljava/security/Provider$Service;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .line 117
    .line 118
    goto :goto_2

    .line 119
    :goto_1
    const-string v4, "Unable to support RSA, no underlying Provider with RSA capability"

    .line 120
    .line 121
    const/4 v5, 0x1

    .line 122
    invoke-static {v5, v2, v4, v0}, Lms8;->A(ILl15;Ljava/lang/String;Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    :goto_2
    const-string v0, "MessageDigest"

    .line 126
    .line 127
    invoke-static {v0}, Ljava/security/Security;->getAlgorithms(Ljava/lang/String;)Ljava/util/Set;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    const-string v2, "Signature"

    .line 132
    .line 133
    invoke-static {v2}, Ljava/security/Security;->getAlgorithms(Ljava/lang/String;)Ljava/util/Set;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    :cond_1
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 142
    .line 143
    .line 144
    move-result v4

    .line 145
    if-eqz v4, :cond_6

    .line 146
    .line 147
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v4

    .line 151
    check-cast v4, Ljava/lang/String;

    .line 152
    .line 153
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    const-string v5, "WITHECDSA"

    .line 158
    .line 159
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 160
    .line 161
    .line 162
    move-result v5

    .line 163
    if-eqz v5, :cond_3

    .line 164
    .line 165
    const/16 v5, 0x9

    .line 166
    .line 167
    invoke-static {v5, v3, v4}, Lxs1;->g(IILjava/lang/String;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v5

    .line 171
    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v6

    .line 175
    if-nez v6, :cond_2

    .line 176
    .line 177
    const-string v6, "SHA"

    .line 178
    .line 179
    const-string v8, "SHA-"

    .line 180
    .line 181
    invoke-virtual {v5, v6, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v5

    .line 185
    :cond_2
    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result v6

    .line 189
    if-eqz v6, :cond_1

    .line 190
    .line 191
    new-instance v6, Lq16;

    .line 192
    .line 193
    const/4 v8, 0x0

    .line 194
    invoke-direct {v6, p0, v4, v5, v8}, Lq16;-><init>(Lt16;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {p0, v6}, Ljava/security/Provider;->putService(Ljava/security/Provider$Service;)V

    .line 198
    .line 199
    .line 200
    goto :goto_3

    .line 201
    :cond_3
    iget-object v5, p0, Lt16;->b:Ljava/util/HashMap;

    .line 202
    .line 203
    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    .line 204
    .line 205
    .line 206
    move-result v5

    .line 207
    if-nez v5, :cond_4

    .line 208
    .line 209
    const-string v5, "WITHRSA"

    .line 210
    .line 211
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 212
    .line 213
    .line 214
    move-result v5

    .line 215
    if-eqz v5, :cond_4

    .line 216
    .line 217
    new-instance v5, Ls16;

    .line 218
    .line 219
    invoke-direct {v5, p0, v4}, Ls16;-><init>(Lt16;Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {p0, v5}, Ljava/security/Provider;->putService(Ljava/security/Provider$Service;)V

    .line 223
    .line 224
    .line 225
    goto :goto_3

    .line 226
    :cond_4
    iget-object v5, p0, Lt16;->b:Ljava/util/HashMap;

    .line 227
    .line 228
    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    .line 229
    .line 230
    .line 231
    move-result v5

    .line 232
    if-nez v5, :cond_5

    .line 233
    .line 234
    const-string v5, "PSS"

    .line 235
    .line 236
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 237
    .line 238
    .line 239
    move-result v5

    .line 240
    if-eqz v5, :cond_5

    .line 241
    .line 242
    new-instance v5, Ls16;

    .line 243
    .line 244
    invoke-direct {v5, p0, v4}, Ls16;-><init>(Lt16;Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {p0, v5}, Ljava/security/Provider;->putService(Ljava/security/Provider$Service;)V

    .line 248
    .line 249
    .line 250
    goto :goto_3

    .line 251
    :cond_5
    const-string v5, "ECDSA"

    .line 252
    .line 253
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    move-result v4

    .line 257
    if-eqz v4, :cond_1

    .line 258
    .line 259
    new-instance v4, Lq16;

    .line 260
    .line 261
    const-string v6, "SHA1withECDSA"

    .line 262
    .line 263
    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 264
    .line 265
    .line 266
    move-result-object v6

    .line 267
    const-string v8, "SHA-1"

    .line 268
    .line 269
    invoke-direct {v4, p0, v5, v8, v6}, Lq16;-><init>(Lt16;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {p0, v4}, Ljava/security/Provider;->putService(Ljava/security/Provider$Service;)V

    .line 273
    .line 274
    .line 275
    goto/16 :goto_3

    .line 276
    .line 277
    :cond_6
    new-instance v0, Lm16;

    .line 278
    .line 279
    const-class v2, Ls06;

    .line 280
    .line 281
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v4

    .line 285
    const/4 v5, 0x0

    .line 286
    const/4 v6, 0x0

    .line 287
    const-string v2, "KeyPairGenerator"

    .line 288
    .line 289
    const-string v3, "YKPivRSA"

    .line 290
    .line 291
    move-object v1, p0

    .line 292
    invoke-direct/range {v0 .. v6}, Ljava/security/Provider$Service;-><init>(Ljava/security/Provider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {p0, v0}, Ljava/security/Provider;->putService(Ljava/security/Provider$Service;)V

    .line 296
    .line 297
    .line 298
    new-instance v0, Ln16;

    .line 299
    .line 300
    const-class v2, Lr06;

    .line 301
    .line 302
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v4

    .line 306
    const-string v2, "KeyPairGenerator"

    .line 307
    .line 308
    const-string v3, "YKPivEC"

    .line 309
    .line 310
    invoke-direct/range {v0 .. v6}, Ljava/security/Provider$Service;-><init>(Ljava/security/Provider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {p0, v0}, Ljava/security/Provider;->putService(Ljava/security/Provider$Service;)V

    .line 314
    .line 315
    .line 316
    new-instance v0, Lo16;

    .line 317
    .line 318
    const-class v2, Ld16;

    .line 319
    .line 320
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v2

    .line 324
    invoke-direct {v0, p0, v2, p1}, Lo16;-><init>(Lt16;Ljava/lang/String;Lvz0;)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {p0, v0}, Ljava/security/Provider;->putService(Ljava/security/Provider$Service;)V

    .line 328
    .line 329
    .line 330
    new-instance v0, Lp16;

    .line 331
    .line 332
    const-class v2, Lq06;

    .line 333
    .line 334
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v2

    .line 338
    invoke-direct {v0, p0, v2, v7, p1}, Lp16;-><init>(Lt16;Ljava/lang/String;Ljava/util/Map;Lvz0;)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {p0, v0}, Ljava/security/Provider;->putService(Ljava/security/Provider$Service;)V

    .line 342
    .line 343
    .line 344
    return-void
.end method


# virtual methods
.method public final declared-synchronized equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    instance-of v0, p1, Lt16;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    :goto_0
    monitor-exit p0

    .line 18
    return p1

    .line 19
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    throw p1
.end method
