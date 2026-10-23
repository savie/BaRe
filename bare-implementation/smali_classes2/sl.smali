.class public final synthetic Lsl;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 8
    iput p1, p0, Lsl;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/swiftapps/swiftbackup/cloud/orphans/a;)V
    .locals 0

    .line 1
    const/4 p1, 0x5

    .line 2
    iput p1, p0, Lsl;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget p0, p0, Lsl;->a:I

    .line 2
    .line 3
    const-string v0, "="

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    packed-switch p0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast p1, Lnw6;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    new-instance p0, Lw97;

    .line 15
    .line 16
    invoke-direct {p0}, Lw97;-><init>()V

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-interface {p1}, Lnw6;->i0()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-interface {p1, v1}, Lnw6;->getLong(I)J

    .line 26
    .line 27
    .line 28
    move-result-wide v2

    .line 29
    long-to-int v0, v2

    .line 30
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p0, v0}, Lw97;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-static {p0}, Lsz8;->e(Lw97;)Lw97;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0

    .line 43
    :pswitch_0
    check-cast p1, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;

    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;->get_name()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    if-nez p0, :cond_1

    .line 53
    .line 54
    const-string p0, ""

    .line 55
    .line 56
    :cond_1
    return-object p0

    .line 57
    :pswitch_1
    check-cast p1, Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    new-instance p0, Lly;

    .line 63
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    .line 66
    .line 67
    const/4 v2, 0x0

    .line 68
    iput-object v2, p0, Lly;->a:Ljava/lang/String;

    .line 69
    .line 70
    iput-object v2, p0, Lly;->b:Ljava/lang/String;

    .line 71
    .line 72
    iput-object v2, p0, Lly;->c:Ljava/lang/String;

    .line 73
    .line 74
    iput-object v2, p0, Lly;->d:Ljava/lang/String;

    .line 75
    .line 76
    iput-object v2, p0, Lly;->e:Ljava/lang/String;

    .line 77
    .line 78
    iput-object v2, p0, Lly;->f:Ljava/lang/String;

    .line 79
    .line 80
    iput-object v2, p0, Lly;->g:Ljava/lang/String;

    .line 81
    .line 82
    const-string v3, " "

    .line 83
    .line 84
    filled-new-array {v3}, [Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    const/4 v4, 0x6

    .line 89
    invoke-static {p1, v3, v4}, Lnq7;->x0(Ljava/lang/CharSequence;[Ljava/lang/String;I)Ljava/util/List;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    new-instance v3, Ljava/util/ArrayList;

    .line 94
    .line 95
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .line 97
    .line 98
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    if-eqz v4, :cond_3

    .line 107
    .line 108
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    move-object v5, v4

    .line 113
    check-cast v5, Ljava/lang/String;

    .line 114
    .line 115
    invoke-static {v5, v0, v1}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 116
    .line 117
    .line 118
    move-result v5

    .line 119
    if-eqz v5, :cond_2

    .line 120
    .line 121
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-eqz v0, :cond_b

    .line 134
    .line 135
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    check-cast v0, Ljava/lang/String;

    .line 140
    .line 141
    const-string v3, "null"

    .line 142
    .line 143
    invoke-static {v0, v3, v1}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    if-nez v3, :cond_4

    .line 148
    .line 149
    const-string v3, "id="

    .line 150
    .line 151
    invoke-static {v0, v3, v1}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 152
    .line 153
    .line 154
    move-result v3

    .line 155
    if-eqz v3, :cond_5

    .line 156
    .line 157
    invoke-static {v0}, Lzm5;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    iput-object v3, p0, Lly;->a:Ljava/lang/String;

    .line 162
    .line 163
    :cond_5
    const-string v3, "name="

    .line 164
    .line 165
    invoke-static {v0, v3, v1}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 166
    .line 167
    .line 168
    move-result v3

    .line 169
    if-eqz v3, :cond_6

    .line 170
    .line 171
    invoke-static {v0}, Lzm5;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    iput-object v3, p0, Lly;->b:Ljava/lang/String;

    .line 176
    .line 177
    :cond_6
    const-string v3, "value="

    .line 178
    .line 179
    invoke-static {v0, v3, v1}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 180
    .line 181
    .line 182
    move-result v3

    .line 183
    if-eqz v3, :cond_7

    .line 184
    .line 185
    invoke-static {v0}, Lzm5;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v3

    .line 189
    iput-object v3, p0, Lly;->c:Ljava/lang/String;

    .line 190
    .line 191
    :cond_7
    const-string v3, "package="

    .line 192
    .line 193
    invoke-static {v0, v3, v1}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 194
    .line 195
    .line 196
    move-result v3

    .line 197
    if-eqz v3, :cond_8

    .line 198
    .line 199
    invoke-static {v0}, Lzm5;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v3

    .line 203
    iput-object v3, p0, Lly;->d:Ljava/lang/String;

    .line 204
    .line 205
    :cond_8
    const-string v3, "defaultValue="

    .line 206
    .line 207
    invoke-static {v0, v3, v1}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 208
    .line 209
    .line 210
    move-result v3

    .line 211
    if-eqz v3, :cond_9

    .line 212
    .line 213
    invoke-static {v0}, Lzm5;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v3

    .line 217
    iput-object v3, p0, Lly;->e:Ljava/lang/String;

    .line 218
    .line 219
    :cond_9
    const-string v3, "defaultSysSet="

    .line 220
    .line 221
    invoke-static {v0, v3, v1}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 222
    .line 223
    .line 224
    move-result v3

    .line 225
    if-eqz v3, :cond_a

    .line 226
    .line 227
    invoke-static {v0}, Lzm5;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v3

    .line 231
    iput-object v3, p0, Lly;->f:Ljava/lang/String;

    .line 232
    .line 233
    :cond_a
    const-string v3, "tag="

    .line 234
    .line 235
    invoke-static {v0, v3, v1}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 236
    .line 237
    .line 238
    move-result v3

    .line 239
    if-eqz v3, :cond_4

    .line 240
    .line 241
    invoke-static {v0}, Lzm5;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    iput-object v0, p0, Lly;->g:Ljava/lang/String;

    .line 246
    .line 247
    goto :goto_2

    .line 248
    :cond_b
    iget-object p1, p0, Lly;->d:Ljava/lang/String;

    .line 249
    .line 250
    if-eqz p1, :cond_d

    .line 251
    .line 252
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 253
    .line 254
    .line 255
    move-result p1

    .line 256
    if-nez p1, :cond_c

    .line 257
    .line 258
    goto :goto_3

    .line 259
    :cond_c
    iget-object p1, p0, Lly;->c:Ljava/lang/String;

    .line 260
    .line 261
    if-eqz p1, :cond_d

    .line 262
    .line 263
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 264
    .line 265
    .line 266
    move-result p1

    .line 267
    if-nez p1, :cond_e

    .line 268
    .line 269
    :cond_d
    :goto_3
    move-object p0, v2

    .line 270
    :cond_e
    if-eqz p0, :cond_f

    .line 271
    .line 272
    new-instance v2, Lkk7;

    .line 273
    .line 274
    iget-object p1, p0, Lly;->a:Ljava/lang/String;

    .line 275
    .line 276
    iget-object v0, p0, Lly;->d:Ljava/lang/String;

    .line 277
    .line 278
    iget-object p0, p0, Lly;->c:Ljava/lang/String;

    .line 279
    .line 280
    invoke-direct {v2, p1, v0, p0}, Lkk7;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    :cond_f
    return-object v2

    .line 284
    :pswitch_2
    check-cast p1, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 285
    .line 286
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 287
    .line 288
    .line 289
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->getFolderItem()Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 290
    .line 291
    .line 292
    move-result-object p0

    .line 293
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getDisplayName()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object p0

    .line 297
    return-object p0

    .line 298
    :pswitch_3
    check-cast p1, Lq05;

    .line 299
    .line 300
    invoke-static {p1}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->c(Lq05;)Ljava/lang/CharSequence;

    .line 301
    .line 302
    .line 303
    move-result-object p0

    .line 304
    return-object p0

    .line 305
    :pswitch_4
    move-object v0, p1

    .line 306
    check-cast v0, Lorg/swiftapps/swiftbackup/cloud/orphans/b;

    .line 307
    .line 308
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 309
    .line 310
    .line 311
    sget-object v1, Lorg/swiftapps/swiftbackup/cloud/orphans/a$a;->DELETING:Lorg/swiftapps/swiftbackup/cloud/orphans/a$a;

    .line 312
    .line 313
    sget-object p0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 314
    .line 315
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 316
    .line 317
    .line 318
    move-result-object p0

    .line 319
    const p1, 0x7f13017e

    .line 320
    .line 321
    .line 322
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v4

    .line 326
    const/4 v6, 0x0

    .line 327
    const/16 v7, 0x1b7f

    .line 328
    .line 329
    const/4 v2, 0x0

    .line 330
    const/4 v3, 0x0

    .line 331
    const/4 v5, 0x0

    .line 332
    invoke-static/range {v0 .. v7}, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->a(Lorg/swiftapps/swiftbackup/cloud/orphans/b;Lorg/swiftapps/swiftbackup/cloud/orphans/a$a;Ljava/util/List;Ljava/util/Set;Ljava/lang/String;III)Lorg/swiftapps/swiftbackup/cloud/orphans/b;

    .line 333
    .line 334
    .line 335
    move-result-object p0

    .line 336
    return-object p0

    .line 337
    :pswitch_5
    check-cast p1, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 338
    .line 339
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 340
    .line 341
    .line 342
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->getFolderItem()Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 343
    .line 344
    .line 345
    move-result-object p0

    .line 346
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getDisplayName()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object p0

    .line 350
    return-object p0

    .line 351
    :pswitch_6
    check-cast p1, Lhe1;

    .line 352
    .line 353
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 354
    .line 355
    .line 356
    sget-object p0, Lje1;->a:Lai6;

    .line 357
    .line 358
    iget-boolean p0, p1, Lhe1;->f:Z

    .line 359
    .line 360
    iget-object p1, p1, Lhe1;->a:Ljava/lang/String;

    .line 361
    .line 362
    if-eqz p0, :cond_10

    .line 363
    .line 364
    goto :goto_4

    .line 365
    :cond_10
    const-string p0, " (not available)"

    .line 366
    .line 367
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object p1

    .line 371
    :goto_4
    return-object p1

    .line 372
    :pswitch_7
    check-cast p1, Loy;

    .line 373
    .line 374
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 375
    .line 376
    .line 377
    invoke-virtual {p1}, Loy;->getId()Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object p0

    .line 381
    return-object p0

    .line 382
    :pswitch_8
    check-cast p1, Lji;

    .line 383
    .line 384
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 385
    .line 386
    .line 387
    sget-object p0, Liy;->c:Ljava/util/LinkedHashMap;

    .line 388
    .line 389
    invoke-virtual {p1}, Lji;->getPackageName()Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object p1

    .line 393
    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    move-result-object p0

    .line 397
    check-cast p0, Ljava/lang/Long;

    .line 398
    .line 399
    invoke-static {p0}, Lio4;->h(Ljava/lang/Long;)J

    .line 400
    .line 401
    .line 402
    move-result-wide p0

    .line 403
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 404
    .line 405
    .line 406
    move-result-object p0

    .line 407
    return-object p0

    .line 408
    :pswitch_9
    check-cast p1, Lpw5;

    .line 409
    .line 410
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 411
    .line 412
    .line 413
    iget-object p0, p1, Lpw5;->a:Ljava/lang/Object;

    .line 414
    .line 415
    check-cast p0, Ljava/lang/String;

    .line 416
    .line 417
    iget-object p1, p1, Lpw5;->b:Ljava/lang/Object;

    .line 418
    .line 419
    check-cast p1, Lq63;

    .line 420
    .line 421
    invoke-virtual {p1}, Lq63;->p()Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object p1

    .line 425
    invoke-static {p0, v0, p1}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object p0

    .line 429
    return-object p0

    .line 430
    nop

    .line 431
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
