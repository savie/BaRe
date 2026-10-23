.class public final synthetic Lzk;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 9
    iput p1, p0, Lzk;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lx54;)V
    .locals 0

    .line 1
    const/16 p1, 0xb

    .line 2
    .line 3
    iput p1, p0, Lzk;->a:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    iget p0, p0, Lzk;->a:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    packed-switch p0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    sget-object p0, Lorg/swiftapps/swiftbackup/tasks/TaskService;->b:Lgz7;

    .line 8
    .line 9
    new-instance p0, Lex6;

    .line 10
    .line 11
    invoke-direct {p0}, Lzy4;-><init>()V

    .line 12
    .line 13
    .line 14
    return-object p0

    .line 15
    :pswitch_0
    new-instance p0, Lokhttp3/OkHttpClient$Builder;

    .line 16
    .line 17
    invoke-direct {p0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 18
    .line 19
    .line 20
    sget-object v1, Lga5;->b:Lfa5;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    iget-object v2, p0, Lokhttp3/OkHttpClient$Builder;->l:Lokhttp3/Dns;

    .line 26
    .line 27
    if-eq v1, v2, :cond_0

    .line 28
    .line 29
    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->B:Lokhttp3/internal/connection/RouteDatabase;

    .line 30
    .line 31
    :cond_0
    iput-object v1, p0, Lokhttp3/OkHttpClient$Builder;->l:Lokhttp3/Dns;

    .line 32
    .line 33
    const-wide/16 v0, 0x1e

    .line 34
    .line 35
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 36
    .line 37
    invoke-virtual {p0, v0, v1, v2}, Lokhttp3/OkHttpClient$Builder;->a(JLjava/util/concurrent/TimeUnit;)V

    .line 38
    .line 39
    .line 40
    const-wide/16 v0, 0x3c

    .line 41
    .line 42
    invoke-static {v0, v1, v2}, Lokhttp3/internal/_UtilJvmKt;->b(JLjava/util/concurrent/TimeUnit;)I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    iput v3, p0, Lokhttp3/OkHttpClient$Builder;->x:I

    .line 47
    .line 48
    invoke-static {v0, v1, v2}, Lokhttp3/internal/_UtilJvmKt;->b(JLjava/util/concurrent/TimeUnit;)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    iput v0, p0, Lokhttp3/OkHttpClient$Builder;->y:I

    .line 53
    .line 54
    new-instance v0, Lokhttp3/OkHttpClient;

    .line 55
    .line 56
    invoke-direct {v0, p0}, Lokhttp3/OkHttpClient;-><init>(Lokhttp3/OkHttpClient$Builder;)V

    .line 57
    .line 58
    .line 59
    return-object v0

    .line 60
    :pswitch_1
    sget-object p0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 61
    .line 62
    new-instance p0, Lix6;

    .line 63
    .line 64
    invoke-direct {p0}, Lix6;-><init>()V

    .line 65
    .line 66
    .line 67
    return-object p0

    .line 68
    :pswitch_2
    invoke-static {}, Lqe7;->b()Z

    .line 69
    .line 70
    .line 71
    move-result p0

    .line 72
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    return-object p0

    .line 77
    :pswitch_3
    const-string p0, "ro.build.version.oplusrom"

    .line 78
    .line 79
    const-string v0, "ro.build.version.opporom"

    .line 80
    .line 81
    filled-new-array {p0, v0}, [Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    invoke-static {p0}, Lhs5;->a([Ljava/lang/String;)Z

    .line 86
    .line 87
    .line 88
    move-result p0

    .line 89
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    return-object p0

    .line 94
    :pswitch_4
    sget-object p0, Ld45;->b:Ld45;

    .line 95
    .line 96
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    invoke-static {}, Ld45;->a()Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    if-eqz p0, :cond_1

    .line 104
    .line 105
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->isAnonymous()Z

    .line 106
    .line 107
    .line 108
    move-result p0

    .line 109
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    :cond_1
    return-object v0

    .line 114
    :pswitch_5
    sget-object p0, Llr4;->a:Llr4;

    .line 115
    .line 116
    sget-object p0, Lorg/swiftapps/swiftbackup/common/V;->INSTANCE:Lorg/swiftapps/swiftbackup/common/V;

    .line 117
    .line 118
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/common/V;->getA()Z

    .line 119
    .line 120
    .line 121
    move-result p0

    .line 122
    if-nez p0, :cond_2

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_2
    const-string p0, "LabelRepo"

    .line 126
    .line 127
    const-string v0, "fetchFromCloud"

    .line 128
    .line 129
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .line 131
    .line 132
    sget-object p0, Lre3;->a:Lzc2;

    .line 133
    .line 134
    sget-object p0, Llr4;->c:Lgv7;

    .line 135
    .line 136
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    check-cast v0, Lzc2;

    .line 141
    .line 142
    sget-object v1, Llr4;->d:Lkr4;

    .line 143
    .line 144
    invoke-static {v0, v1}, Lre3;->n(Lzc2;Laj8;)V

    .line 145
    .line 146
    .line 147
    new-instance v0, Lkr4;

    .line 148
    .line 149
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 150
    .line 151
    .line 152
    sput-object v0, Llr4;->d:Lkr4;

    .line 153
    .line 154
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    check-cast p0, Lzc2;

    .line 159
    .line 160
    invoke-virtual {p0, v0}, Lzc2;->c(Laj8;)V

    .line 161
    .line 162
    .line 163
    :goto_0
    sget-object p0, Lbe8;->a:Lbe8;

    .line 164
    .line 165
    return-object p0

    .line 166
    :pswitch_6
    sget-object p0, Lx54;->j:Ljava/util/Set;

    .line 167
    .line 168
    new-instance p0, Lj54;

    .line 169
    .line 170
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 171
    .line 172
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    invoke-direct {p0, v0}, Lj54;-><init>(Landroid/content/Context;)V

    .line 177
    .line 178
    .line 179
    return-object p0

    .line 180
    :pswitch_7
    sget-object p0, Ljc3;->q:Lhc3;

    .line 181
    .line 182
    sget-object p0, Lbe8;->a:Lbe8;

    .line 183
    .line 184
    return-object p0

    .line 185
    :pswitch_8
    sget-object p0, Lwa3;->f:Ljava/util/List;

    .line 186
    .line 187
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 188
    .line 189
    return-object p0

    .line 190
    :pswitch_9
    invoke-static {}, Lf13;->d()Landroid/content/Context;

    .line 191
    .line 192
    .line 193
    move-result-object p0

    .line 194
    const-class v0, Landroid/os/UserManager;

    .line 195
    .line 196
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object p0

    .line 200
    check-cast p0, Landroid/os/UserManager;

    .line 201
    .line 202
    if-eqz p0, :cond_3

    .line 203
    .line 204
    invoke-virtual {p0}, Landroid/os/UserManager;->isSystemUser()Z

    .line 205
    .line 206
    .line 207
    move-result p0

    .line 208
    if-nez p0, :cond_3

    .line 209
    .line 210
    const/4 p0, 0x1

    .line 211
    goto :goto_1

    .line 212
    :cond_3
    const/4 p0, 0x0

    .line 213
    :goto_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 214
    .line 215
    .line 216
    move-result-object p0

    .line 217
    return-object p0

    .line 218
    :pswitch_a
    sget-boolean p0, Lg42;->a:Z

    .line 219
    .line 220
    const-string p0, "AQKZ2okLIW5RYujF1VEksuY890WY5RJHVtg9HMMv3zoWAotE9VoLTQHBosE="

    .line 221
    .line 222
    invoke-static {p0}, Lg42;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object p0

    .line 226
    return-object p0

    .line 227
    :pswitch_b
    sget-boolean p0, Lg42;->a:Z

    .line 228
    .line 229
    const-string p0, "AQJkhhJ6/HaNMoaPDQYsj/w1Ffs/QTVHP4mrMwt14BBhUB/Hf2fCsn0X2+ux7GWF2kRvQq2KBu0AMgQ="

    .line 230
    .line 231
    invoke-static {p0}, Lg42;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object p0

    .line 235
    return-object p0

    .line 236
    :pswitch_c
    sget-boolean p0, Lg42;->a:Z

    .line 237
    .line 238
    const-string p0, "AQLa0ny/QKMXJ+ee5Uo/st7xcq6nA3iwYf/DhkdJfe4W08nyX/ZNsj3c"

    .line 239
    .line 240
    invoke-static {p0}, Lg42;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object p0

    .line 244
    return-object p0

    .line 245
    :pswitch_d
    new-instance p0, Lex6;

    .line 246
    .line 247
    invoke-direct {p0}, Lzy4;-><init>()V

    .line 248
    .line 249
    .line 250
    return-object p0

    .line 251
    :pswitch_e
    new-instance p0, Lix6;

    .line 252
    .line 253
    invoke-direct {p0}, Lix6;-><init>()V

    .line 254
    .line 255
    .line 256
    return-object p0

    .line 257
    :pswitch_f
    sget-object p0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 258
    .line 259
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 260
    .line 261
    .line 262
    move-result-object p0

    .line 263
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 264
    .line 265
    .line 266
    move-result-object p0

    .line 267
    const v0, 0x7f0b0002

    .line 268
    .line 269
    .line 270
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    .line 271
    .line 272
    .line 273
    move-result p0

    .line 274
    int-to-long v0, p0

    .line 275
    const-wide/16 v2, 0x64

    .line 276
    .line 277
    add-long/2addr v0, v2

    .line 278
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 279
    .line 280
    .line 281
    move-result-object p0

    .line 282
    return-object p0

    .line 283
    :pswitch_10
    sget-object p0, Lg00;->a:Lg00;

    .line 284
    .line 285
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 286
    .line 287
    .line 288
    move-result-object p0

    .line 289
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 290
    .line 291
    .line 292
    move-result-object v1

    .line 293
    invoke-static {p0, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 294
    .line 295
    .line 296
    move-result p0

    .line 297
    if-nez p0, :cond_7

    .line 298
    .line 299
    sget-object p0, Lmp6;->a:Lmp6;

    .line 300
    .line 301
    sget-boolean v1, Lg42;->a:Z

    .line 302
    .line 303
    sget-object v1, Lg42;->I:Lgv7;

    .line 304
    .line 305
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object v1

    .line 309
    check-cast v1, Ljava/lang/String;

    .line 310
    .line 311
    const-string v2, "list"

    .line 312
    .line 313
    const-string v3, ""

    .line 314
    .line 315
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    move-result-object v2

    .line 319
    const/4 v4, 0x2

    .line 320
    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 321
    .line 322
    .line 323
    move-result-object v2

    .line 324
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v1

    .line 328
    filled-new-array {v1}, [Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v1

    .line 332
    sget-object v2, Lip6;->SHIZUKU:Lip6;

    .line 333
    .line 334
    invoke-virtual {p0, v1, v2}, Lmp6;->h([Ljava/lang/String;Lip6;)Ljava/util/List;

    .line 335
    .line 336
    .line 337
    move-result-object p0

    .line 338
    invoke-static {p0}, Lel1;->U0(Ljava/util/List;)Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    move-result-object p0

    .line 342
    check-cast p0, Ljava/lang/String;

    .line 343
    .line 344
    if-nez p0, :cond_4

    .line 345
    .line 346
    goto :goto_3

    .line 347
    :cond_4
    const-string v0, ":"

    .line 348
    .line 349
    invoke-static {p0, v0, v3}, Lnq7;->z0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object p0

    .line 353
    invoke-static {p0}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 354
    .line 355
    .line 356
    move-result-object p0

    .line 357
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object p0

    .line 361
    const-string v0, " "

    .line 362
    .line 363
    filled-new-array {v0}, [Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v0

    .line 367
    const/4 v1, 0x6

    .line 368
    invoke-static {p0, v0, v1}, Lnq7;->x0(Ljava/lang/CharSequence;[Ljava/lang/String;I)Ljava/util/List;

    .line 369
    .line 370
    .line 371
    move-result-object p0

    .line 372
    new-instance v0, Ljava/util/ArrayList;

    .line 373
    .line 374
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 375
    .line 376
    .line 377
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 378
    .line 379
    .line 380
    move-result-object p0

    .line 381
    :cond_5
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 382
    .line 383
    .line 384
    move-result v1

    .line 385
    if-eqz v1, :cond_6

    .line 386
    .line 387
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 388
    .line 389
    .line 390
    move-result-object v1

    .line 391
    check-cast v1, Ljava/lang/String;

    .line 392
    .line 393
    invoke-static {v1}, Luq7;->X(Ljava/lang/String;)Ljava/lang/Integer;

    .line 394
    .line 395
    .line 396
    move-result-object v1

    .line 397
    if-eqz v1, :cond_5

    .line 398
    .line 399
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    .line 401
    .line 402
    goto :goto_2

    .line 403
    :cond_6
    invoke-static {v0}, Lel1;->z1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 404
    .line 405
    .line 406
    move-result-object p0

    .line 407
    invoke-static {p0}, Lg00;->s(Ljava/util/Set;)Ljava/util/LinkedHashSet;

    .line 408
    .line 409
    .line 410
    move-result-object v0

    .line 411
    goto :goto_3

    .line 412
    :cond_7
    invoke-static {}, Ld6;->o()V

    .line 413
    .line 414
    .line 415
    :goto_3
    return-object v0

    .line 416
    :pswitch_11
    sget-object p0, Lmk7;->a:Lgv7;

    .line 417
    .line 418
    invoke-static {}, Lb67;->d()Z

    .line 419
    .line 420
    .line 421
    move-result p0

    .line 422
    if-eqz p0, :cond_8

    .line 423
    .line 424
    new-instance p0, Lok7;

    .line 425
    .line 426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 427
    .line 428
    .line 429
    goto :goto_4

    .line 430
    :cond_8
    new-instance p0, Lnk7;

    .line 431
    .line 432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 433
    .line 434
    .line 435
    :goto_4
    invoke-virtual {p0}, Lmk7;->a()Ljava/util/HashMap;

    .line 436
    .line 437
    .line 438
    move-result-object p0

    .line 439
    return-object p0

    .line 440
    nop

    .line 441
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
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
