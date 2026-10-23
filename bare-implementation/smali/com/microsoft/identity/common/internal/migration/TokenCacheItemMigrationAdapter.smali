.class public abstract Lcom/microsoft/identity/common/internal/migration/TokenCacheItemMigrationAdapter;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final sBackgroundExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lcom/microsoft/identity/common/internal/migration/TokenCacheItemMigrationAdapter;->sBackgroundExecutor:Ljava/util/concurrent/ExecutorService;

    .line 6
    .line 7
    return-void
.end method

.method public static logTokenResultError(Ljava/util/UUID;Lcom/microsoft/identity/common/java/providers/oauth2/TokenResult;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenResult;->getErrorResponse()Lcom/microsoft/identity/common/java/providers/oauth2/TokenErrorResponse;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v2, "Status code: ["

    .line 12
    .line 13
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenErrorResponse;->getStatusCode()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v2, "]"

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const-string v3, "TokenCacheItemMigrationAdapter"

    .line 33
    .line 34
    invoke-static {v3, v0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v1, "Error description: ["

    .line 44
    .line 45
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenErrorResponse;->getErrorDescription()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-static {v3, p0, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public static migrateTokens(Ljava/util/HashMap;Ljava/util/Collection;)Ljava/util/ArrayList;
    .locals 14

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_15

    .line 3
    .line 4
    const-string v1, "cacheItems is marked non-null but is null"

    .line 5
    .line 6
    if-eqz p1, :cond_14

    .line 7
    .line 8
    new-instance v2, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    :try_start_0
    invoke-static {v0}, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectory;->ensureCloudDiscoveryForAuthority(Ljava/net/URL;)V
    :try_end_0
    .catch Lcom/microsoft/identity/common/java/exception/ClientException; {:try_start_0 .. :try_end_0} :catch_1

    .line 14
    .line 15
    .line 16
    new-instance v3, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    new-instance v4, Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    const-string v6, "TokenCacheItemMigrationAdapter"

    .line 35
    .line 36
    if-eqz v5, :cond_3

    .line 37
    .line 38
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    check-cast v5, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;

    .line 43
    .line 44
    invoke-virtual {v5}, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;->getResource()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v7

    .line 48
    if-nez v7, :cond_1

    .line 49
    .line 50
    const-string v5, "Skipping resourceless token."

    .line 51
    .line 52
    invoke-static {v6, v5}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {v5}, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;->getRefreshToken()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    if-nez v6, :cond_2

    .line 65
    .line 66
    invoke-virtual {v5}, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;->getRefreshToken()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    :cond_2
    invoke-virtual {v5}, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;->getRefreshToken()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    if-eqz v6, :cond_0

    .line 82
    .line 83
    invoke-virtual {v5}, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;->getAuthority()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    const-string v7, "/common"

    .line 88
    .line 89
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 90
    .line 91
    .line 92
    move-result v6

    .line 93
    if-eqz v6, :cond_0

    .line 94
    .line 95
    invoke-virtual {v5}, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;->getRefreshToken()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_3
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 108
    .line 109
    .line 110
    new-instance p1, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    const-string v4, "Splitting ["

    .line 113
    .line 114
    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string v4, "] cache items."

    .line 125
    .line 126
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    const-string v4, "TokenCacheItemMigrationAdapter:splitTokensByClientId"

    .line 134
    .line 135
    invoke-static {v4, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    new-instance p1, Ljava/util/HashMap;

    .line 139
    .line 140
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 148
    .line 149
    .line 150
    move-result v4

    .line 151
    if-eqz v4, :cond_5

    .line 152
    .line 153
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    check-cast v4, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;

    .line 158
    .line 159
    invoke-virtual {v4}, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;->getClientId()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v5

    .line 163
    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v5

    .line 167
    if-nez v5, :cond_4

    .line 168
    .line 169
    invoke-virtual {v4}, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;->getClientId()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v5

    .line 173
    new-instance v7, Ljava/util/ArrayList;

    .line 174
    .line 175
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p1, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    :cond_4
    invoke-virtual {v4}, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;->getClientId()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v5

    .line 185
    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v5

    .line 189
    check-cast v5, Ljava/util/List;

    .line 190
    .line 191
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    goto :goto_1

    .line 195
    :cond_5
    new-instance v3, Ljava/util/HashMap;

    .line 196
    .line 197
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 209
    .line 210
    .line 211
    move-result v4

    .line 212
    if-eqz v4, :cond_11

    .line 213
    .line 214
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v4

    .line 218
    check-cast v4, Ljava/util/Map$Entry;

    .line 219
    .line 220
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v5

    .line 224
    check-cast v5, Ljava/lang/String;

    .line 225
    .line 226
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v4

    .line 230
    check-cast v4, Ljava/util/List;

    .line 231
    .line 232
    if-eqz v4, :cond_10

    .line 233
    .line 234
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 235
    .line 236
    .line 237
    move-result-object v7

    .line 238
    :cond_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 239
    .line 240
    .line 241
    move-result v8

    .line 242
    if-eqz v8, :cond_7

    .line 243
    .line 244
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v8

    .line 248
    check-cast v8, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;

    .line 249
    .line 250
    invoke-virtual {v8}, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;->getRefreshToken()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v9

    .line 254
    invoke-static {v9}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 255
    .line 256
    .line 257
    move-result v9

    .line 258
    if-nez v9, :cond_6

    .line 259
    .line 260
    invoke-virtual {v8}, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;->getFamilyClientId()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v9

    .line 264
    invoke-static {v9}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 265
    .line 266
    .line 267
    move-result v9

    .line 268
    if-nez v9, :cond_6

    .line 269
    .line 270
    const-string v7, "Frt found."

    .line 271
    .line 272
    const-string v9, "TokenCacheItemMigrationAdapter:findFrt"

    .line 273
    .line 274
    invoke-static {v9, v7}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    goto :goto_3

    .line 278
    :cond_7
    move-object v8, v0

    .line 279
    :goto_3
    const-string v7, "TokenCacheItemMigrationAdapter:preferentiallySelectTokens"

    .line 280
    .line 281
    if-nez v8, :cond_a

    .line 282
    .line 283
    const-string v8, "FRT was null. Try MRRT."

    .line 284
    .line 285
    invoke-static {v7, v8}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 289
    .line 290
    .line 291
    move-result-object v8

    .line 292
    :cond_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 293
    .line 294
    .line 295
    move-result v9

    .line 296
    if-eqz v9, :cond_9

    .line 297
    .line 298
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move-result-object v9

    .line 302
    check-cast v9, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;

    .line 303
    .line 304
    invoke-virtual {v9}, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;->getRefreshToken()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v10

    .line 308
    invoke-static {v10}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 309
    .line 310
    .line 311
    move-result v10

    .line 312
    if-nez v10, :cond_8

    .line 313
    .line 314
    invoke-virtual {v9}, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;->getIsMultiResourceRefreshToken()Z

    .line 315
    .line 316
    .line 317
    move-result v10

    .line 318
    if-eqz v10, :cond_8

    .line 319
    .line 320
    const-string v8, "Mrrt found."

    .line 321
    .line 322
    const-string v10, "TokenCacheItemMigrationAdapter:findMrrt"

    .line 323
    .line 324
    invoke-static {v10, v8}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    move-object v8, v9

    .line 328
    goto :goto_4

    .line 329
    :cond_9
    move-object v8, v0

    .line 330
    :cond_a
    :goto_4
    if-nez v8, :cond_d

    .line 331
    .line 332
    const-string v8, "MRRT was null. Try RT."

    .line 333
    .line 334
    invoke-static {v7, v8}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 338
    .line 339
    .line 340
    move-result-object v4

    .line 341
    :cond_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 342
    .line 343
    .line 344
    move-result v8

    .line 345
    if-eqz v8, :cond_c

    .line 346
    .line 347
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    move-result-object v8

    .line 351
    check-cast v8, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;

    .line 352
    .line 353
    invoke-virtual {v8}, Lcom/microsoft/identity/common/adal/internal/cache/ADALTokenCacheItem;->getRefreshToken()Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v9

    .line 357
    invoke-static {v9}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 358
    .line 359
    .line 360
    move-result v9

    .line 361
    if-nez v9, :cond_b

    .line 362
    .line 363
    const-string v4, "RT found."

    .line 364
    .line 365
    const-string v9, "TokenCacheItemMigrationAdapter:findRt"

    .line 366
    .line 367
    invoke-static {v9, v4}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    goto :goto_5

    .line 371
    :cond_c
    move-object v8, v0

    .line 372
    :cond_d
    :goto_5
    if-eqz v8, :cond_f

    .line 373
    .line 374
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    move-result-object v4

    .line 378
    if-nez v4, :cond_e

    .line 379
    .line 380
    new-instance v4, Ljava/util/ArrayList;

    .line 381
    .line 382
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 383
    .line 384
    .line 385
    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    .line 387
    .line 388
    :cond_e
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    .line 390
    .line 391
    move-result-object v4

    .line 392
    check-cast v4, Ljava/util/List;

    .line 393
    .line 394
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 395
    .line 396
    .line 397
    goto/16 :goto_2

    .line 398
    .line 399
    :cond_f
    const-string v4, "Refresh token could not be located."

    .line 400
    .line 401
    invoke-static {v7, v4}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    .line 403
    .line 404
    goto/16 :goto_2

    .line 405
    .line 406
    :cond_10
    invoke-static {v1}, Lf6;->n(Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    return-object v0

    .line 410
    :cond_11
    new-instance v9, Ljava/util/ArrayList;

    .line 411
    .line 412
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 413
    .line 414
    .line 415
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 416
    .line 417
    .line 418
    move-result-object p1

    .line 419
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 420
    .line 421
    .line 422
    move-result-object p1

    .line 423
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 424
    .line 425
    .line 426
    move-result v0

    .line 427
    if-eqz v0, :cond_12

    .line 428
    .line 429
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 430
    .line 431
    .line 432
    move-result-object v0

    .line 433
    check-cast v0, Ljava/util/List;

    .line 434
    .line 435
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 436
    .line 437
    .line 438
    goto :goto_6

    .line 439
    :cond_12
    new-instance v12, Ljava/util/ArrayList;

    .line 440
    .line 441
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 442
    .line 443
    .line 444
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 445
    .line 446
    .line 447
    move-result p1

    .line 448
    new-instance v13, Ljava/util/concurrent/CountDownLatch;

    .line 449
    .line 450
    invoke-direct {v13, p1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 451
    .line 452
    .line 453
    const/4 v0, 0x0

    .line 454
    move v10, v0

    .line 455
    :goto_7
    if-ge v10, p1, :cond_13

    .line 456
    .line 457
    new-instance v8, Lcom/microsoft/identity/common/internal/migration/TokenCacheItemMigrationAdapter$1;

    .line 458
    .line 459
    move-object v11, p0

    .line 460
    invoke-direct/range {v8 .. v13}, Lcom/microsoft/identity/common/internal/migration/TokenCacheItemMigrationAdapter$1;-><init>(Ljava/util/ArrayList;ILjava/util/Map;Ljava/util/ArrayList;Ljava/util/concurrent/CountDownLatch;)V

    .line 461
    .line 462
    .line 463
    sget-object p0, Lcom/microsoft/identity/common/internal/migration/TokenCacheItemMigrationAdapter;->sBackgroundExecutor:Ljava/util/concurrent/ExecutorService;

    .line 464
    .line 465
    invoke-interface {p0, v8}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 466
    .line 467
    .line 468
    add-int/lit8 v10, v10, 0x1

    .line 469
    .line 470
    move-object p0, v11

    .line 471
    goto :goto_7

    .line 472
    :cond_13
    :try_start_1
    invoke-virtual {v13}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 473
    .line 474
    .line 475
    goto :goto_8

    .line 476
    :catch_0
    move-exception v0

    .line 477
    move-object p0, v0

    .line 478
    const-string p1, "Interrupted while requesting tokens..."

    .line 479
    .line 480
    invoke-static {v6, p1, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 481
    .line 482
    .line 483
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 484
    .line 485
    .line 486
    move-result-object p0

    .line 487
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 488
    .line 489
    .line 490
    :goto_8
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 491
    .line 492
    .line 493
    return-object v2

    .line 494
    :catch_1
    move-exception v0

    .line 495
    move-object p0, v0

    .line 496
    sget p1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 497
    .line 498
    const-string p1, "AdalMigrationAdapter:loadCloudDiscoveryMetadata"

    .line 499
    .line 500
    const-string v0, "Failed to load instance discovery metadata"

    .line 501
    .line 502
    invoke-static {p1, v0, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 503
    .line 504
    .line 505
    return-object v2

    .line 506
    :cond_14
    invoke-static {v1}, Lf6;->n(Ljava/lang/String;)V

    .line 507
    .line 508
    .line 509
    return-object v0

    .line 510
    :cond_15
    const-string p0, "redirects is marked non-null but is null"

    .line 511
    .line 512
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 513
    .line 514
    .line 515
    return-object v0
.end method
