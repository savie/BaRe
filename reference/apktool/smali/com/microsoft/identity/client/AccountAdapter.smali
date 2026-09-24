.class public abstract Lcom/microsoft/identity/client/AccountAdapter;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field private static final guestAccountsWithNoHomeTenantAccountFilter:Lcom/microsoft/identity/client/AccountAdapter$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/microsoft/identity/client/AccountAdapter$1;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/microsoft/identity/client/AccountAdapter;->guestAccountsWithNoHomeTenantAccountFilter:Lcom/microsoft/identity/client/AccountAdapter$1;

    .line 7
    .line 8
    return-void
.end method

.method public static access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {p1, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return-object p0
.end method

.method public static access$100(Landroid/os/Parcel;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static adapt(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 10

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Lcom/microsoft/identity/common/java/cache/ICacheRecord;

    .line 21
    .line 22
    invoke-interface {v2}, Lcom/microsoft/identity/common/java/cache/ICacheRecord;->getAccount()Lcom/microsoft/identity/common/java/dto/AccountRecord;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v3}, Lcom/microsoft/identity/common/java/dto/AccountRecord;->getHomeAccountId()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-interface {v2}, Lcom/microsoft/identity/common/java/cache/ICacheRecord;->getAccount()Lcom/microsoft/identity/common/java/dto/AccountRecord;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-virtual {v4}, Lcom/microsoft/identity/common/java/dto/AccountRecord;->getLocalAccountId()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    if-eqz v4, :cond_0

    .line 39
    .line 40
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-eqz v3, :cond_0

    .line 45
    .line 46
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    new-instance v1, Lcom/microsoft/identity/client/AccountAdapter$GuestAccountFilter;

    .line 51
    .line 52
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, p0}, Lcom/microsoft/identity/client/AccountAdapter$GuestAccountFilter;->filter(Ljava/util/List;)Ljava/util/ArrayList;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    new-instance v2, Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .line 63
    .line 64
    new-instance v3, Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    if-eqz v5, :cond_3

    .line 78
    .line 79
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    check-cast v5, Lcom/microsoft/identity/common/java/cache/ICacheRecord;

    .line 84
    .line 85
    invoke-interface {v5}, Lcom/microsoft/identity/common/java/cache/ICacheRecord;->getAccount()Lcom/microsoft/identity/common/java/dto/AccountRecord;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    invoke-virtual {v6}, Lcom/microsoft/identity/common/java/dto/AccountRecord;->getHomeAccountId()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    invoke-interface {v5}, Lcom/microsoft/identity/common/java/cache/ICacheRecord;->getAccount()Lcom/microsoft/identity/common/java/dto/AccountRecord;

    .line 94
    .line 95
    .line 96
    move-result-object v7

    .line 97
    invoke-virtual {v7}, Lcom/microsoft/identity/common/java/dto/AccountRecord;->getLocalAccountId()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v7

    .line 101
    if-eqz v7, :cond_2

    .line 102
    .line 103
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 104
    .line 105
    .line 106
    move-result v6

    .line 107
    if-eqz v6, :cond_2

    .line 108
    .line 109
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_3
    new-instance v4, Lcom/microsoft/identity/client/AccountAdapter$GuestAccountFilter;

    .line 114
    .line 115
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v4, p0}, Lcom/microsoft/identity/client/AccountAdapter$GuestAccountFilter;->filter(Ljava/util/List;)Ljava/util/ArrayList;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    :cond_4
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 127
    .line 128
    .line 129
    move-result v4

    .line 130
    if-eqz v4, :cond_5

    .line 131
    .line 132
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    check-cast v4, Lcom/microsoft/identity/common/java/cache/ICacheRecord;

    .line 137
    .line 138
    invoke-interface {v4}, Lcom/microsoft/identity/common/java/cache/ICacheRecord;->getAccount()Lcom/microsoft/identity/common/java/dto/AccountRecord;

    .line 139
    .line 140
    .line 141
    move-result-object v5

    .line 142
    invoke-virtual {v5}, Lcom/microsoft/identity/common/java/dto/AccountRecord;->getHomeAccountId()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v5

    .line 146
    new-instance v6, Lcom/microsoft/identity/client/AccountAdapter$1$1;

    .line 147
    .line 148
    invoke-direct {v6, v3}, Lcom/microsoft/identity/client/AccountAdapter$1$1;-><init>(Ljava/util/List;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v5

    .line 155
    if-nez v5, :cond_4

    .line 156
    .line 157
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    goto :goto_2

    .line 161
    :cond_5
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 162
    .line 163
    .line 164
    new-instance p0, Ljava/util/ArrayList;

    .line 165
    .line 166
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 174
    .line 175
    .line 176
    move-result v3

    .line 177
    if-eqz v3, :cond_6

    .line 178
    .line 179
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    check-cast v3, Lcom/microsoft/identity/common/java/cache/ICacheRecord;

    .line 184
    .line 185
    new-instance v4, Lcom/microsoft/identity/client/MultiTenantAccount;

    .line 186
    .line 187
    invoke-interface {v3}, Lcom/microsoft/identity/common/java/cache/ICacheRecord;->getAccount()Lcom/microsoft/identity/common/java/dto/AccountRecord;

    .line 188
    .line 189
    .line 190
    move-result-object v5

    .line 191
    invoke-virtual {v5}, Lcom/microsoft/identity/common/java/dto/AccountRecord;->getClientInfo()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v5

    .line 195
    invoke-static {v3}, Lcom/microsoft/identity/client/AccountAdapter;->getIdToken(Lcom/microsoft/identity/common/java/cache/ICacheRecord;)Lcom/microsoft/identity/common/java/providers/oauth2/IDToken;

    .line 196
    .line 197
    .line 198
    move-result-object v6

    .line 199
    invoke-direct {v4, v5, v6}, Lcom/microsoft/identity/client/MultiTenantAccount;-><init>(Ljava/lang/String;Lcom/microsoft/identity/common/java/providers/oauth2/IDToken;)V

    .line 200
    .line 201
    .line 202
    invoke-interface {v3}, Lcom/microsoft/identity/common/java/cache/ICacheRecord;->getAccount()Lcom/microsoft/identity/common/java/dto/AccountRecord;

    .line 203
    .line 204
    .line 205
    move-result-object v5

    .line 206
    invoke-virtual {v5}, Lcom/microsoft/identity/common/java/dto/AccountRecord;->getHomeAccountId()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v5

    .line 210
    invoke-virtual {v4, v5}, Lcom/microsoft/identity/client/Account;->setHomeAccountId(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    invoke-interface {v3}, Lcom/microsoft/identity/common/java/cache/ICacheRecord;->getAccount()Lcom/microsoft/identity/common/java/dto/AccountRecord;

    .line 214
    .line 215
    .line 216
    move-result-object v5

    .line 217
    invoke-virtual {v5}, Lcom/microsoft/identity/common/java/dto/AccountRecord;->getHomeAccountId()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v5

    .line 221
    invoke-static {v5}, Lcom/microsoft/identity/common/java/util/StringUtil;->getTenantInfo(Ljava/lang/String;)Ljava/util/AbstractMap$SimpleEntry;

    .line 222
    .line 223
    .line 224
    move-result-object v5

    .line 225
    invoke-virtual {v5}, Ljava/util/AbstractMap$SimpleEntry;->getValue()Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v5

    .line 229
    check-cast v5, Ljava/lang/String;

    .line 230
    .line 231
    invoke-virtual {v4, v5}, Lcom/microsoft/identity/client/Account;->setTenantId(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    invoke-interface {v3}, Lcom/microsoft/identity/common/java/cache/ICacheRecord;->getAccount()Lcom/microsoft/identity/common/java/dto/AccountRecord;

    .line 235
    .line 236
    .line 237
    move-result-object v3

    .line 238
    invoke-virtual {v3}, Lcom/microsoft/identity/common/java/dto/AccountRecord;->getEnvironment()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v3

    .line 242
    invoke-virtual {v4, v3}, Lcom/microsoft/identity/client/Account;->setEnvironment(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    goto :goto_3

    .line 249
    :cond_6
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 254
    .line 255
    .line 256
    move-result v3

    .line 257
    const/4 v4, 0x0

    .line 258
    if-eqz v3, :cond_9

    .line 259
    .line 260
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v3

    .line 264
    check-cast v3, Lcom/microsoft/identity/client/Account;

    .line 265
    .line 266
    new-instance v5, Ljava/util/HashMap;

    .line 267
    .line 268
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 272
    .line 273
    .line 274
    move-result-object v6

    .line 275
    :cond_7
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 276
    .line 277
    .line 278
    move-result v7

    .line 279
    if-eqz v7, :cond_8

    .line 280
    .line 281
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    move-result-object v7

    .line 285
    check-cast v7, Lcom/microsoft/identity/common/java/cache/ICacheRecord;

    .line 286
    .line 287
    invoke-interface {v7}, Lcom/microsoft/identity/common/java/cache/ICacheRecord;->getAccount()Lcom/microsoft/identity/common/java/dto/AccountRecord;

    .line 288
    .line 289
    .line 290
    move-result-object v8

    .line 291
    invoke-virtual {v8}, Lcom/microsoft/identity/common/java/dto/AccountRecord;->getHomeAccountId()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v8

    .line 295
    invoke-virtual {v3}, Lcom/microsoft/identity/client/Account;->getId()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v9

    .line 299
    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 300
    .line 301
    .line 302
    move-result v8

    .line 303
    if-eqz v8, :cond_7

    .line 304
    .line 305
    new-instance v8, Lcom/microsoft/identity/client/TenantProfile;

    .line 306
    .line 307
    invoke-static {v7}, Lcom/microsoft/identity/client/AccountAdapter;->getIdToken(Lcom/microsoft/identity/common/java/cache/ICacheRecord;)Lcom/microsoft/identity/common/java/providers/oauth2/IDToken;

    .line 308
    .line 309
    .line 310
    move-result-object v9

    .line 311
    invoke-direct {v8, v4, v9}, Lcom/microsoft/identity/client/Account;-><init>(Ljava/lang/String;Lcom/microsoft/identity/common/java/providers/oauth2/IDToken;)V

    .line 312
    .line 313
    .line 314
    invoke-interface {v7}, Lcom/microsoft/identity/common/java/cache/ICacheRecord;->getAccount()Lcom/microsoft/identity/common/java/dto/AccountRecord;

    .line 315
    .line 316
    .line 317
    move-result-object v9

    .line 318
    invoke-virtual {v9}, Lcom/microsoft/identity/common/java/dto/AccountRecord;->getEnvironment()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v9

    .line 322
    invoke-virtual {v8, v9}, Lcom/microsoft/identity/client/Account;->setEnvironment(Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    invoke-interface {v7}, Lcom/microsoft/identity/common/java/cache/ICacheRecord;->getAccount()Lcom/microsoft/identity/common/java/dto/AccountRecord;

    .line 326
    .line 327
    .line 328
    move-result-object v7

    .line 329
    invoke-virtual {v7}, Lcom/microsoft/identity/common/java/dto/AccountRecord;->getRealm()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v7

    .line 333
    invoke-virtual {v5, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    goto :goto_5

    .line 337
    :cond_8
    check-cast v3, Lcom/microsoft/identity/client/MultiTenantAccount;

    .line 338
    .line 339
    invoke-virtual {v3, v5}, Lcom/microsoft/identity/client/MultiTenantAccount;->setTenantProfiles(Ljava/util/HashMap;)V

    .line 340
    .line 341
    .line 342
    goto :goto_4

    .line 343
    :cond_9
    new-instance v0, Ljava/util/HashMap;

    .line 344
    .line 345
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 346
    .line 347
    .line 348
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 349
    .line 350
    .line 351
    move-result-object v1

    .line 352
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 353
    .line 354
    .line 355
    move-result v2

    .line 356
    if-eqz v2, :cond_b

    .line 357
    .line 358
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 359
    .line 360
    .line 361
    move-result-object v2

    .line 362
    check-cast v2, Lcom/microsoft/identity/common/java/cache/ICacheRecord;

    .line 363
    .line 364
    invoke-interface {v2}, Lcom/microsoft/identity/common/java/cache/ICacheRecord;->getAccount()Lcom/microsoft/identity/common/java/dto/AccountRecord;

    .line 365
    .line 366
    .line 367
    move-result-object v3

    .line 368
    invoke-virtual {v3}, Lcom/microsoft/identity/common/java/dto/AccountRecord;->getHomeAccountId()Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v3

    .line 372
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    .line 374
    .line 375
    move-result-object v5

    .line 376
    if-nez v5, :cond_a

    .line 377
    .line 378
    new-instance v5, Ljava/util/ArrayList;

    .line 379
    .line 380
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 381
    .line 382
    .line 383
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    :cond_a
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    .line 388
    .line 389
    move-result-object v3

    .line 390
    check-cast v3, Ljava/util/List;

    .line 391
    .line 392
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 393
    .line 394
    .line 395
    goto :goto_6

    .line 396
    :cond_b
    new-instance v1, Ljava/util/ArrayList;

    .line 397
    .line 398
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 399
    .line 400
    .line 401
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 402
    .line 403
    .line 404
    move-result-object v0

    .line 405
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 406
    .line 407
    .line 408
    move-result-object v0

    .line 409
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 410
    .line 411
    .line 412
    move-result v2

    .line 413
    if-eqz v2, :cond_d

    .line 414
    .line 415
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 416
    .line 417
    .line 418
    move-result-object v2

    .line 419
    check-cast v2, Ljava/util/Map$Entry;

    .line 420
    .line 421
    new-instance v3, Lcom/microsoft/identity/client/MultiTenantAccount;

    .line 422
    .line 423
    invoke-direct {v3, v4, v4}, Lcom/microsoft/identity/client/MultiTenantAccount;-><init>(Ljava/lang/String;Lcom/microsoft/identity/common/java/providers/oauth2/IDToken;)V

    .line 424
    .line 425
    .line 426
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 427
    .line 428
    .line 429
    move-result-object v5

    .line 430
    check-cast v5, Ljava/lang/String;

    .line 431
    .line 432
    invoke-static {v5}, Lcom/microsoft/identity/common/java/util/StringUtil;->getTenantInfo(Ljava/lang/String;)Ljava/util/AbstractMap$SimpleEntry;

    .line 433
    .line 434
    .line 435
    move-result-object v5

    .line 436
    invoke-virtual {v5}, Ljava/util/AbstractMap$SimpleEntry;->getKey()Ljava/lang/Object;

    .line 437
    .line 438
    .line 439
    move-result-object v5

    .line 440
    check-cast v5, Ljava/lang/String;

    .line 441
    .line 442
    invoke-virtual {v3, v5}, Lcom/microsoft/identity/client/Account;->setId(Ljava/lang/String;)V

    .line 443
    .line 444
    .line 445
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 446
    .line 447
    .line 448
    move-result-object v5

    .line 449
    check-cast v5, Ljava/lang/String;

    .line 450
    .line 451
    invoke-static {v5}, Lcom/microsoft/identity/common/java/util/StringUtil;->getTenantInfo(Ljava/lang/String;)Ljava/util/AbstractMap$SimpleEntry;

    .line 452
    .line 453
    .line 454
    move-result-object v5

    .line 455
    invoke-virtual {v5}, Ljava/util/AbstractMap$SimpleEntry;->getValue()Ljava/lang/Object;

    .line 456
    .line 457
    .line 458
    move-result-object v5

    .line 459
    check-cast v5, Ljava/lang/String;

    .line 460
    .line 461
    invoke-virtual {v3, v5}, Lcom/microsoft/identity/client/Account;->setTenantId(Ljava/lang/String;)V

    .line 462
    .line 463
    .line 464
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 465
    .line 466
    .line 467
    move-result-object v5

    .line 468
    check-cast v5, Ljava/util/List;

    .line 469
    .line 470
    const/4 v6, 0x0

    .line 471
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 472
    .line 473
    .line 474
    move-result-object v5

    .line 475
    check-cast v5, Lcom/microsoft/identity/common/java/cache/ICacheRecord;

    .line 476
    .line 477
    invoke-interface {v5}, Lcom/microsoft/identity/common/java/cache/ICacheRecord;->getAccount()Lcom/microsoft/identity/common/java/dto/AccountRecord;

    .line 478
    .line 479
    .line 480
    move-result-object v5

    .line 481
    invoke-virtual {v5}, Lcom/microsoft/identity/common/java/dto/AccountRecord;->getEnvironment()Ljava/lang/String;

    .line 482
    .line 483
    .line 484
    move-result-object v5

    .line 485
    invoke-virtual {v3, v5}, Lcom/microsoft/identity/client/Account;->setEnvironment(Ljava/lang/String;)V

    .line 486
    .line 487
    .line 488
    new-instance v5, Ljava/util/HashMap;

    .line 489
    .line 490
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 491
    .line 492
    .line 493
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 494
    .line 495
    .line 496
    move-result-object v2

    .line 497
    check-cast v2, Ljava/util/List;

    .line 498
    .line 499
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 500
    .line 501
    .line 502
    move-result-object v2

    .line 503
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 504
    .line 505
    .line 506
    move-result v6

    .line 507
    if-eqz v6, :cond_c

    .line 508
    .line 509
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 510
    .line 511
    .line 512
    move-result-object v6

    .line 513
    check-cast v6, Lcom/microsoft/identity/common/java/cache/ICacheRecord;

    .line 514
    .line 515
    invoke-interface {v6}, Lcom/microsoft/identity/common/java/cache/ICacheRecord;->getAccount()Lcom/microsoft/identity/common/java/dto/AccountRecord;

    .line 516
    .line 517
    .line 518
    move-result-object v7

    .line 519
    invoke-virtual {v7}, Lcom/microsoft/identity/common/java/dto/AccountRecord;->getRealm()Ljava/lang/String;

    .line 520
    .line 521
    .line 522
    move-result-object v7

    .line 523
    new-instance v8, Lcom/microsoft/identity/client/TenantProfile;

    .line 524
    .line 525
    invoke-static {v6}, Lcom/microsoft/identity/client/AccountAdapter;->getIdToken(Lcom/microsoft/identity/common/java/cache/ICacheRecord;)Lcom/microsoft/identity/common/java/providers/oauth2/IDToken;

    .line 526
    .line 527
    .line 528
    move-result-object v6

    .line 529
    invoke-direct {v8, v4, v6}, Lcom/microsoft/identity/client/Account;-><init>(Ljava/lang/String;Lcom/microsoft/identity/common/java/providers/oauth2/IDToken;)V

    .line 530
    .line 531
    .line 532
    invoke-virtual {v5, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    .line 534
    .line 535
    goto :goto_8

    .line 536
    :cond_c
    invoke-virtual {v3, v5}, Lcom/microsoft/identity/client/MultiTenantAccount;->setTenantProfiles(Ljava/util/HashMap;)V

    .line 537
    .line 538
    .line 539
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 540
    .line 541
    .line 542
    goto/16 :goto_7

    .line 543
    .line 544
    :cond_d
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 545
    .line 546
    .line 547
    return-object p0
.end method

.method private static getIdToken(Lcom/microsoft/identity/common/java/cache/ICacheRecord;)Lcom/microsoft/identity/common/java/providers/oauth2/IDToken;
    .locals 2

    .line 1
    invoke-interface {p0}, Lcom/microsoft/identity/common/java/cache/ICacheRecord;->getIdToken()Lcom/microsoft/identity/common/java/dto/IdTokenRecord;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {p0}, Lcom/microsoft/identity/common/java/cache/ICacheRecord;->getIdToken()Lcom/microsoft/identity/common/java/dto/IdTokenRecord;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/dto/Credential;->getSecret()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-interface {p0}, Lcom/microsoft/identity/common/java/cache/ICacheRecord;->getV1IdToken()Lcom/microsoft/identity/common/java/dto/IdTokenRecord;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-interface {p0}, Lcom/microsoft/identity/common/java/cache/ICacheRecord;->getV1IdToken()Lcom/microsoft/identity/common/java/dto/IdTokenRecord;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/dto/Credential;->getSecret()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    :goto_0
    :try_start_0
    new-instance v0, Lcom/microsoft/identity/common/java/providers/oauth2/IDToken;

    .line 32
    .line 33
    invoke-direct {v0, p0}, Lcom/microsoft/identity/common/java/providers/oauth2/IDToken;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/microsoft/identity/common/java/exception/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    return-object v0

    .line 37
    :catch_0
    const-string p0, "Failed to restore IdToken"

    .line 38
    .line 39
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    return-object v1
.end method

.method public static loadConfiguration(Landroid/content/Context;I)Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const v0, 0x7f120007

    .line 10
    .line 11
    .line 12
    if-ne p1, v0, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    :goto_0
    const-string v0, "Unable to close provided configuration file. This can cause memory leak."

    .line 18
    .line 19
    const-string v1, "Unable to close default configuration file. This can cause memory leak."

    .line 20
    .line 21
    const-string v2, "PublicClientApplicationConfigurationFactory:loadConfiguration"

    .line 22
    .line 23
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    new-array v3, v3, [B

    .line 28
    .line 29
    invoke-virtual {p0, v3}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :catch_0
    if-eqz p1, :cond_1

    .line 37
    .line 38
    sget p0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 39
    .line 40
    invoke-static {v2, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    sget p0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 45
    .line 46
    invoke-static {v2, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :goto_1
    new-instance p0, Ljava/lang/String;

    .line 50
    .line 51
    invoke-direct {p0, v3}, Ljava/lang/String;-><init>([B)V

    .line 52
    .line 53
    .line 54
    new-instance p1, Lt14;

    .line 55
    .line 56
    invoke-direct {p1}, Lt14;-><init>()V

    .line 57
    .line 58
    .line 59
    new-instance v0, Lcom/microsoft/identity/common/java/authorities/AuthorityDeserializer;

    .line 60
    .line 61
    invoke-direct {v0}, Lcom/microsoft/identity/common/java/authorities/AuthorityDeserializer;-><init>()V

    .line 62
    .line 63
    .line 64
    const-class v1, Lcom/microsoft/identity/common/java/authorities/Authority;

    .line 65
    .line 66
    invoke-virtual {p1, v0, v1}, Lt14;->c(Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    .line 67
    .line 68
    .line 69
    new-instance v0, Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAudienceDeserializer;

    .line 70
    .line 71
    invoke-direct {v0}, Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAudienceDeserializer;-><init>()V

    .line 72
    .line 73
    .line 74
    const-class v1, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAudience;

    .line 75
    .line 76
    invoke-virtual {p1, v0, v1}, Lt14;->c(Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    .line 77
    .line 78
    .line 79
    new-instance v0, Lcom/microsoft/identity/client/internal/configuration/LogLevelDeserializer;

    .line 80
    .line 81
    invoke-direct {v0}, Lcom/microsoft/identity/client/internal/configuration/LogLevelDeserializer;-><init>()V

    .line 82
    .line 83
    .line 84
    const-class v1, Lcom/microsoft/identity/client/Logger$LogLevel;

    .line 85
    .line 86
    invoke-virtual {p1, v0, v1}, Lt14;->c(Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    .line 87
    .line 88
    .line 89
    new-instance v0, Lcom/google/gson/a;

    .line 90
    .line 91
    invoke-direct {v0, p1}, Lcom/google/gson/a;-><init>(Lt14;)V

    .line 92
    .line 93
    .line 94
    :try_start_2
    const-class p1, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    .line 95
    .line 96
    invoke-virtual {v0, p0, p1}, Lcom/google/gson/a;->c(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    check-cast p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 101
    .line 102
    return-object p0

    .line 103
    :catch_1
    move-exception p0

    .line 104
    instance-of p1, p0, Ljava/lang/InterruptedException;

    .line 105
    .line 106
    if-eqz p1, :cond_2

    .line 107
    .line 108
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 113
    .line 114
    .line 115
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 116
    .line 117
    const-string v0, "Error while processing configuration"

    .line 118
    .line 119
    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 120
    .line 121
    .line 122
    throw p1

    .line 123
    :catchall_0
    move-exception v3

    .line 124
    goto :goto_2

    .line 125
    :catch_2
    move-exception v3

    .line 126
    if-eqz p1, :cond_3

    .line 127
    .line 128
    :try_start_3
    new-instance v4, Ljava/lang/IllegalStateException;

    .line 129
    .line 130
    const-string v5, "Unable to open default configuration file."

    .line 131
    .line 132
    invoke-direct {v4, v5, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 133
    .line 134
    .line 135
    throw v4

    .line 136
    :cond_3
    new-instance v4, Ljava/lang/IllegalArgumentException;

    .line 137
    .line 138
    const-string v5, "Unable to open provided configuration file."

    .line 139
    .line 140
    invoke-direct {v4, v5, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 141
    .line 142
    .line 143
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 144
    :goto_2
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 145
    .line 146
    .line 147
    goto :goto_3

    .line 148
    :catch_3
    if-eqz p1, :cond_4

    .line 149
    .line 150
    sget p0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 151
    .line 152
    invoke-static {v2, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    goto :goto_3

    .line 156
    :cond_4
    sget p0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 157
    .line 158
    invoke-static {v2, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    :goto_3
    throw v3
.end method
