.class public final synthetic Lov;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lov;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 13

    .line 1
    iget p0, p0, Lov;->a:I

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x1

    .line 6
    packed-switch p0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    const/4 p0, -0x1

    .line 10
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    const-string v3, "None"

    .line 15
    .line 16
    new-instance v4, Lpw5;

    .line 17
    .line 18
    invoke-direct {v4, p0, v3}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    const-string v1, "PEAP"

    .line 26
    .line 27
    new-instance v5, Lpw5;

    .line 28
    .line 29
    invoke-direct {v5, p0, v1}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    const-string v1, "TLS"

    .line 37
    .line 38
    new-instance v6, Lpw5;

    .line 39
    .line 40
    invoke-direct {v6, p0, v1}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    const-string v0, "TTLS"

    .line 48
    .line 49
    new-instance v7, Lpw5;

    .line 50
    .line 51
    invoke-direct {v7, p0, v0}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    const/4 p0, 0x3

    .line 55
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    const-string v0, "PWD"

    .line 60
    .line 61
    new-instance v8, Lpw5;

    .line 62
    .line 63
    invoke-direct {v8, p0, v0}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    const/4 p0, 0x4

    .line 67
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    const-string v0, "SIM"

    .line 72
    .line 73
    new-instance v9, Lpw5;

    .line 74
    .line 75
    invoke-direct {v9, p0, v0}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    const/4 p0, 0x5

    .line 79
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    const-string v0, "AKA"

    .line 84
    .line 85
    new-instance v10, Lpw5;

    .line 86
    .line 87
    invoke-direct {v10, p0, v0}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    const/4 p0, 0x6

    .line 91
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    const-string v0, "AKA\'"

    .line 96
    .line 97
    new-instance v11, Lpw5;

    .line 98
    .line 99
    invoke-direct {v11, p0, v0}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    const/4 p0, 0x7

    .line 103
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    const-string v0, "Hotspot 2.0 r2 OSEN"

    .line 108
    .line 109
    new-instance v12, Lpw5;

    .line 110
    .line 111
    invoke-direct {v12, p0, v0}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    filled-new-array/range {v4 .. v12}, [Lpw5;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    invoke-static {p0}, Lx65;->r0([Lpw5;)Ljava/util/Map;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    return-object p0

    .line 123
    :pswitch_0
    sget-object p0, Ltv7;->a:Lgv7;

    .line 124
    .line 125
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    check-cast p0, Landroid/app/WallpaperManager;

    .line 130
    .line 131
    invoke-virtual {p0, v2}, Landroid/app/WallpaperManager;->getWallpaperFile(I)Landroid/os/ParcelFileDescriptor;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    return-object p0

    .line 136
    :pswitch_1
    sget-object p0, Lmz6;->a:Ljava/util/HashSet;

    .line 137
    .line 138
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 139
    .line 140
    return-object p0

    .line 141
    :pswitch_2
    sget-object p0, Lmp6;->a:Lmp6;

    .line 142
    .line 143
    monitor-enter p0

    .line 144
    :try_start_0
    sget-boolean v0, Lmp6;->g:Z

    .line 145
    .line 146
    if-eqz v0, :cond_3

    .line 147
    .line 148
    sget-boolean v0, Lmp6;->j:Z

    .line 149
    .line 150
    if-eqz v0, :cond_0

    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_0
    sput-boolean v2, Lmp6;->j:Z

    .line 154
    .line 155
    invoke-static {}, Lh55;->a()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    sput-object v0, Lmp6;->i:Ljava/lang/String;

    .line 160
    .line 161
    if-eqz v0, :cond_2

    .line 162
    .line 163
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    if-nez v1, :cond_1

    .line 168
    .line 169
    goto :goto_0

    .line 170
    :cond_1
    sget-object v1, Lkz4;->g:Lkz4;

    .line 171
    .line 172
    invoke-virtual {v1, v0}, Ldv;->o(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    sget-object v1, Lua1;->g:Lua1;

    .line 176
    .line 177
    invoke-virtual {v1, v0}, Ldv;->o(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    .line 179
    .line 180
    goto :goto_0

    .line 181
    :catchall_0
    move-exception v0

    .line 182
    goto :goto_3

    .line 183
    :cond_2
    :goto_0
    monitor-exit p0

    .line 184
    goto :goto_2

    .line 185
    :cond_3
    :goto_1
    monitor-exit p0

    .line 186
    :goto_2
    sget-object p0, Lbe8;->a:Lbe8;

    .line 187
    .line 188
    return-object p0

    .line 189
    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 190
    throw v0

    .line 191
    :pswitch_3
    sget-object p0, Ldz5;->a:Ldz5;

    .line 192
    .line 193
    sget-object p0, Ldz5;->e:Lgv7;

    .line 194
    .line 195
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object p0

    .line 199
    check-cast p0, Ljava/util/Set;

    .line 200
    .line 201
    const-string v0, "android.permission.READ_CONTACTS"

    .line 202
    .line 203
    invoke-static {p0, v0}, Lsz8;->S(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    .line 204
    .line 205
    .line 206
    move-result-object p0

    .line 207
    return-object p0

    .line 208
    :pswitch_4
    invoke-static {}, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;->m()Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 209
    .line 210
    .line 211
    move-result-object p0

    .line 212
    return-object p0

    .line 213
    :pswitch_5
    new-instance p0, Lq63;

    .line 214
    .line 215
    sget-object v1, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 216
    .line 217
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    const-string v2, "app_labels/cached_data"

    .line 226
    .line 227
    invoke-direct {p0, v1, v2, v0}, Lq63;-><init>(Ljava/io/File;Ljava/lang/String;I)V

    .line 228
    .line 229
    .line 230
    return-object p0

    .line 231
    :pswitch_6
    new-instance p0, Landroid/graphics/ColorMatrix;

    .line 232
    .line 233
    invoke-direct {p0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 234
    .line 235
    .line 236
    const/high16 v0, 0x3f800000    # 1.0f

    .line 237
    .line 238
    invoke-virtual {p0, v0}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 239
    .line 240
    .line 241
    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    .line 242
    .line 243
    invoke-direct {v0, p0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 244
    .line 245
    .line 246
    return-object v0

    .line 247
    :pswitch_7
    sget-object p0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 248
    .line 249
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 250
    .line 251
    .line 252
    move-result-object p0

    .line 253
    const v0, 0x7f0802b6

    .line 254
    .line 255
    .line 256
    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 257
    .line 258
    .line 259
    move-result-object p0

    .line 260
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 261
    .line 262
    .line 263
    return-object p0

    .line 264
    :pswitch_8
    sget-boolean p0, Lg42;->a:Z

    .line 265
    .line 266
    const-string p0, "AQLle24KFGZ1ShJx1uj2j0W6jKecVwq+cGvF82W7OK4UybhfRg6Dm2zQiaF8jTx0/rhSnLBxEGea6B7eSGxMCR9tyHQVENajXPJxbIckgxj/F3IgbM7LebA="

    .line 267
    .line 268
    invoke-static {p0}, Lg42;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object p0

    .line 272
    return-object p0

    .line 273
    :pswitch_9
    sget-boolean p0, Lg42;->a:Z

    .line 274
    .line 275
    const-string p0, "AQJyJOC6NUcSa7x0cnzC6uV5589/1DnGElCKyJalUt8WUNGP0y986nIXZLs3U5iG4h7WJBSCeyi1mwUjlos="

    .line 276
    .line 277
    invoke-static {p0}, Lg42;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object p0

    .line 281
    return-object p0

    .line 282
    :pswitch_a
    sget-boolean p0, Lg42;->a:Z

    .line 283
    .line 284
    const-string p0, "AQLu57zwDV7pqPOSFYLilMG1W1e5MpWwXcGfWxL8ItRY/CQBIkeW8wZqNgBzjLoa8YvQnae9Z0qF55NQ3rxKfVCDk2PE1dJvXz46H99xih8/RhemZWPW"

    .line 285
    .line 286
    invoke-static {p0}, Lg42;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object p0

    .line 290
    return-object p0

    .line 291
    :pswitch_b
    sget-object p0, Ly32;->a:Lgv7;

    .line 292
    .line 293
    sget-object p0, Ld45;->b:Ld45;

    .line 294
    .line 295
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 296
    .line 297
    .line 298
    invoke-static {}, Ld45;->a()Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    .line 299
    .line 300
    .line 301
    move-result-object p0

    .line 302
    if-eqz p0, :cond_4

    .line 303
    .line 304
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->getUid()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object p0

    .line 308
    invoke-static {}, Lrb;->t()Lrb;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    new-instance v1, Lf45;

    .line 313
    .line 314
    invoke-direct {v1, p0}, Lf45;-><init>(Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    new-instance p0, Lx32;

    .line 318
    .line 319
    iget-object v0, v0, Lrb;->b:Ljava/lang/Object;

    .line 320
    .line 321
    check-cast v0, Lov7;

    .line 322
    .line 323
    invoke-direct {p0, v1, v0}, Lx32;-><init>(Lgk1;Lov7;)V

    .line 324
    .line 325
    .line 326
    return-object p0

    .line 327
    :cond_4
    const-string p0, "System.exit returned normally, while it was supposed to halt JVM."

    .line 328
    .line 329
    invoke-static {v1, p0}, Ldj7;->f(ILjava/lang/String;)Ljava/lang/RuntimeException;

    .line 330
    .line 331
    .line 332
    move-result-object p0

    .line 333
    throw p0

    .line 334
    :pswitch_c
    new-instance p0, Lex6;

    .line 335
    .line 336
    invoke-direct {p0}, Lzy4;-><init>()V

    .line 337
    .line 338
    .line 339
    return-object p0

    .line 340
    :pswitch_d
    new-instance p0, Ler0;

    .line 341
    .line 342
    invoke-direct {p0}, Ler0;-><init>()V

    .line 343
    .line 344
    .line 345
    return-object p0

    .line 346
    :pswitch_e
    sget p0, Lorg/swiftapps/swiftbackup/settings/appvisibility/AppVisibilityDiagnosticsActivity;->O:I

    .line 347
    .line 348
    new-instance p0, Lt00;

    .line 349
    .line 350
    const/4 v0, 0x0

    .line 351
    invoke-direct {p0, v0}, Lgm7;-><init>(Lfm7;)V

    .line 352
    .line 353
    .line 354
    return-object p0

    .line 355
    :pswitch_f
    sget-object p0, Lzn7;->q:Lyn7;

    .line 356
    .line 357
    invoke-virtual {p0}, Lyn7;->d()Lzn7;

    .line 358
    .line 359
    .line 360
    move-result-object p0

    .line 361
    return-object p0

    .line 362
    nop

    .line 363
    :pswitch_data_0
    .packed-switch 0x0
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
