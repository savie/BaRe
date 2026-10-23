.class public final Lx54;
.super Lqo0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final j:Ljava/util/Set;


# instance fields
.field public final e:Lex6;

.field public final f:Lgv7;

.field public g:Lbl7;

.field public h:Ljava/lang/String;

.field public i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "ID_BACKUP_ALL_APPS"

    .line 2
    .line 3
    const-string v1, "ID_RESTORE_ALL_APPS"

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lx50;->A0([Ljava/lang/Object;)Ljava/util/Set;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Lx54;->j:Ljava/util/Set;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lqo0;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lex6;

    .line 5
    .line 6
    invoke-direct {v0}, Lzy4;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lv54;

    .line 10
    .line 11
    invoke-direct {v1}, Lv54;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lex6;->k(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lx54;->e:Lex6;

    .line 18
    .line 19
    new-instance v0, Lzk;

    .line 20
    .line 21
    invoke-direct {v0, p0}, Lzk;-><init>(Lx54;)V

    .line 22
    .line 23
    .line 24
    new-instance v1, Lgv7;

    .line 25
    .line 26
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lx54;->f:Lgv7;

    .line 30
    .line 31
    const-string v0, ""

    .line 32
    .line 33
    iput-object v0, p0, Lx54;->h:Ljava/lang/String;

    .line 34
    .line 35
    const-string v0, "home_search_show_system_apps"

    .line 36
    .line 37
    const/4 v1, 0x1

    .line 38
    :try_start_0
    sget-object v2, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 39
    .line 40
    if-eqz v2, :cond_0

    .line 41
    .line 42
    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const-string v0, "prefs"

    .line 48
    .line 49
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const/4 v0, 0x0

    .line 53
    throw v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :catch_0
    :goto_0
    iput-boolean v1, p0, Lx54;->i:Z

    .line 55
    .line 56
    return-void
.end method

.method public static j(Ljava/util/List;Ljava/lang/String;Lu54;)I
    .locals 1

    .line 1
    invoke-static {p1}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    :goto_0
    return v0

    .line 16
    :cond_1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_4

    .line 25
    .line 26
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Ls54;

    .line 31
    .line 32
    iget-object p1, p1, Ls54;->b:Lu54;

    .line 33
    .line 34
    if-ne p1, p2, :cond_2

    .line 35
    .line 36
    add-int/lit8 v0, v0, 0x1

    .line 37
    .line 38
    if-ltz v0, :cond_3

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_3
    invoke-static {}, Lfl1;->E0()V

    .line 42
    .line 43
    .line 44
    const/4 p0, 0x0

    .line 45
    throw p0

    .line 46
    :cond_4
    return v0
.end method


# virtual methods
.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lx54;->g:Lbl7;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lci4;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-super {p0}, La55;->b()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final k(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lv54;
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lx54;->f:Lgv7;

    .line 6
    .line 7
    invoke-virtual {v2}, Lgv7;->getValue()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    move-object v3, v2

    .line 12
    check-cast v3, Lj54;

    .line 13
    .line 14
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-static {}, Lnc8;->p()Lww4;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    iget-object v9, v3, Lj54;->b:Lbt3;

    .line 28
    .line 29
    invoke-interface {v9}, Lbt3;->invoke()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    check-cast v4, Ljava/lang/Boolean;

    .line 34
    .line 35
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 36
    .line 37
    .line 38
    move-result v10

    .line 39
    iget-object v4, v3, Lj54;->c:Lbt3;

    .line 40
    .line 41
    invoke-interface {v4}, Lbt3;->invoke()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    check-cast v4, Ljava/lang/Boolean;

    .line 46
    .line 47
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 48
    .line 49
    .line 50
    move-result v11

    .line 51
    invoke-static {}, Lnc8;->p()Lww4;

    .line 52
    .line 53
    .line 54
    move-result-object v12

    .line 55
    const v7, 0x7f06002a

    .line 56
    .line 57
    .line 58
    const/4 v8, 0x0

    .line 59
    const/4 v4, 0x1

    .line 60
    const v5, 0x7f130079

    .line 61
    .line 62
    .line 63
    const v6, 0x7f0800bf

    .line 64
    .line 65
    .line 66
    invoke-virtual/range {v3 .. v8}, Lj54;->a(IIIII)Ls54;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-virtual {v12, v4}, Lww4;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    if-eqz v10, :cond_0

    .line 74
    .line 75
    const v7, 0x7f06045b

    .line 76
    .line 77
    .line 78
    const/4 v8, 0x1

    .line 79
    const/4 v4, 0x2

    .line 80
    const v5, 0x7f130348

    .line 81
    .line 82
    .line 83
    const v6, 0x7f08017c

    .line 84
    .line 85
    .line 86
    invoke-virtual/range {v3 .. v8}, Lj54;->a(IIIII)Ls54;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    invoke-virtual {v12, v4}, Lww4;->add(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    const v7, 0x7f06006c

    .line 94
    .line 95
    .line 96
    const/4 v8, 0x2

    .line 97
    const/4 v4, 0x3

    .line 98
    const v5, 0x7f1300e3

    .line 99
    .line 100
    .line 101
    const v6, 0x7f0800f9

    .line 102
    .line 103
    .line 104
    invoke-virtual/range {v3 .. v8}, Lj54;->a(IIIII)Ls54;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    invoke-virtual {v12, v4}, Lww4;->add(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    :cond_0
    const v7, 0x7f0600d1

    .line 112
    .line 113
    .line 114
    const/4 v8, 0x3

    .line 115
    const/4 v4, 0x6

    .line 116
    const v5, 0x7f130281

    .line 117
    .line 118
    .line 119
    const v6, 0x7f08014b

    .line 120
    .line 121
    .line 122
    invoke-virtual/range {v3 .. v8}, Lj54;->a(IIIII)Ls54;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    invoke-virtual {v12, v4}, Lww4;->add(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    if-eqz v11, :cond_1

    .line 130
    .line 131
    const v7, 0x7f0604da

    .line 132
    .line 133
    .line 134
    const/4 v8, 0x4

    .line 135
    const/4 v4, 0x4

    .line 136
    const v5, 0x7f1305a3

    .line 137
    .line 138
    .line 139
    const v6, 0x7f080196

    .line 140
    .line 141
    .line 142
    invoke-virtual/range {v3 .. v8}, Lj54;->a(IIIII)Ls54;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    invoke-virtual {v12, v4}, Lww4;->add(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    :cond_1
    const v7, 0x7f0604ef

    .line 150
    .line 151
    .line 152
    const/4 v8, 0x5

    .line 153
    const/4 v4, 0x5

    .line 154
    const v5, 0x7f1305b0

    .line 155
    .line 156
    .line 157
    const v6, 0x7f080212

    .line 158
    .line 159
    .line 160
    invoke-virtual/range {v3 .. v8}, Lj54;->a(IIIII)Ls54;

    .line 161
    .line 162
    .line 163
    move-result-object v4

    .line 164
    invoke-virtual {v12, v4}, Lww4;->add(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    invoke-static {v12}, Lnc8;->h(Lww4;)Lww4;

    .line 168
    .line 169
    .line 170
    move-result-object v4

    .line 171
    invoke-virtual {v2, v4}, Lww4;->addAll(Ljava/util/Collection;)Z

    .line 172
    .line 173
    .line 174
    sget-object v4, Liy;->a:Liy;

    .line 175
    .line 176
    const/4 v4, 0x0

    .line 177
    move-object/from16 v5, p2

    .line 178
    .line 179
    invoke-static {v5, v4}, Liy;->f(Ljava/util/List;Ljava/util/Comparator;)Ljava/util/List;

    .line 180
    .line 181
    .line 182
    move-result-object v5

    .line 183
    new-instance v6, Ljava/util/ArrayList;

    .line 184
    .line 185
    const/16 v7, 0xa

    .line 186
    .line 187
    invoke-static {v5, v7}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 188
    .line 189
    .line 190
    move-result v8

    .line 191
    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 192
    .line 193
    .line 194
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 195
    .line 196
    .line 197
    move-result-object v5

    .line 198
    const/4 v8, 0x0

    .line 199
    move/from16 v22, v8

    .line 200
    .line 201
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 202
    .line 203
    .line 204
    move-result v10

    .line 205
    if-eqz v10, :cond_3

    .line 206
    .line 207
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v10

    .line 211
    add-int/lit8 v24, v22, 0x1

    .line 212
    .line 213
    if-ltz v22, :cond_2

    .line 214
    .line 215
    move-object/from16 v17, v10

    .line 216
    .line 217
    check-cast v17, Lji;

    .line 218
    .line 219
    new-instance v10, Ls54;

    .line 220
    .line 221
    invoke-virtual/range {v17 .. v17}, Lji;->getPackageName()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v11

    .line 225
    const-string v12, "app:"

    .line 226
    .line 227
    invoke-static {v12, v11}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v11

    .line 231
    sget-object v12, Lu54;->APPS:Lu54;

    .line 232
    .line 233
    invoke-virtual/range {v17 .. v17}, Lji;->getName()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v13

    .line 237
    invoke-virtual/range {v17 .. v17}, Lji;->getPackageName()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v14

    .line 241
    invoke-virtual/range {v17 .. v17}, Lji;->getName()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v15

    .line 245
    move-object/from16 v25, v4

    .line 246
    .line 247
    invoke-virtual/range {v17 .. v17}, Lji;->getPackageName()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v4

    .line 251
    filled-new-array {v15, v4}, [Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v4

    .line 255
    invoke-static {v4}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 256
    .line 257
    .line 258
    move-result-object v21

    .line 259
    const/16 v23, 0x720

    .line 260
    .line 261
    const/4 v15, 0x0

    .line 262
    const/16 v16, 0x0

    .line 263
    .line 264
    const/16 v18, 0x0

    .line 265
    .line 266
    const/16 v19, 0x0

    .line 267
    .line 268
    const/16 v20, 0x0

    .line 269
    .line 270
    invoke-direct/range {v10 .. v23}, Ls54;-><init>(Ljava/lang/String;Lu54;Ljava/lang/String;Ljava/lang/String;IILji;Lorg/swiftapps/swiftbackup/folders/data/FolderItem;Ljava/lang/Integer;Lzc6;Ljava/util/List;II)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    move/from16 v22, v24

    .line 277
    .line 278
    move-object/from16 v4, v25

    .line 279
    .line 280
    goto :goto_0

    .line 281
    :cond_2
    move-object/from16 v25, v4

    .line 282
    .line 283
    invoke-static {}, Lfl1;->F0()V

    .line 284
    .line 285
    .line 286
    throw v25

    .line 287
    :cond_3
    move-object/from16 v25, v4

    .line 288
    .line 289
    invoke-virtual {v2, v6}, Lww4;->addAll(Ljava/util/Collection;)Z

    .line 290
    .line 291
    .line 292
    sget-object v4, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->Companion:Lnm3;

    .line 293
    .line 294
    new-instance v5, Lou;

    .line 295
    .line 296
    const/16 v6, 0x9

    .line 297
    .line 298
    invoke-direct {v5, v6}, Lou;-><init>(I)V

    .line 299
    .line 300
    .line 301
    invoke-static {v4, v5}, Lnm3;->a(Lnm3;Lmt3;)Lym1;

    .line 302
    .line 303
    .line 304
    move-result-object v4

    .line 305
    move-object/from16 v5, p3

    .line 306
    .line 307
    invoke-static {v5, v4}, Lel1;->n1(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 308
    .line 309
    .line 310
    move-result-object v4

    .line 311
    new-instance v5, Ljava/util/ArrayList;

    .line 312
    .line 313
    invoke-static {v4, v7}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 314
    .line 315
    .line 316
    move-result v10

    .line 317
    invoke-direct {v5, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 318
    .line 319
    .line 320
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 321
    .line 322
    .line 323
    move-result-object v4

    .line 324
    move/from16 v22, v8

    .line 325
    .line 326
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 327
    .line 328
    .line 329
    move-result v10

    .line 330
    if-eqz v10, :cond_5

    .line 331
    .line 332
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    move-result-object v10

    .line 336
    add-int/lit8 v24, v22, 0x1

    .line 337
    .line 338
    if-ltz v22, :cond_4

    .line 339
    .line 340
    check-cast v10, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 341
    .line 342
    invoke-virtual {v10}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->getFolderItem()Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 343
    .line 344
    .line 345
    move-result-object v18

    .line 346
    new-instance v10, Ls54;

    .line 347
    .line 348
    invoke-virtual/range {v18 .. v18}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getId()Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v11

    .line 352
    const-string v12, "folder:"

    .line 353
    .line 354
    invoke-static {v12, v11}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v11

    .line 358
    sget-object v12, Lu54;->FOLDERS:Lu54;

    .line 359
    .line 360
    invoke-virtual/range {v18 .. v18}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getDisplayName()Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v13

    .line 364
    invoke-virtual/range {v18 .. v18}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getSourceFolder()Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v14

    .line 368
    invoke-virtual/range {v18 .. v18}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getDisplayName()Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v15

    .line 372
    invoke-virtual/range {v18 .. v18}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getSourceFolder()Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v6

    .line 376
    filled-new-array {v15, v6}, [Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v6

    .line 380
    invoke-static {v6}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 381
    .line 382
    .line 383
    move-result-object v21

    .line 384
    const/16 v23, 0x6e0

    .line 385
    .line 386
    const v15, 0x7f08014b

    .line 387
    .line 388
    .line 389
    const/16 v16, 0x0

    .line 390
    .line 391
    const/16 v17, 0x0

    .line 392
    .line 393
    const/16 v19, 0x0

    .line 394
    .line 395
    const/16 v20, 0x0

    .line 396
    .line 397
    invoke-direct/range {v10 .. v23}, Ls54;-><init>(Ljava/lang/String;Lu54;Ljava/lang/String;Ljava/lang/String;IILji;Lorg/swiftapps/swiftbackup/folders/data/FolderItem;Ljava/lang/Integer;Lzc6;Ljava/util/List;II)V

    .line 398
    .line 399
    .line 400
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    .line 402
    .line 403
    move/from16 v22, v24

    .line 404
    .line 405
    const/16 v6, 0x9

    .line 406
    .line 407
    goto :goto_1

    .line 408
    :cond_4
    invoke-static {}, Lfl1;->F0()V

    .line 409
    .line 410
    .line 411
    throw v25

    .line 412
    :cond_5
    invoke-virtual {v2, v5}, Lww4;->addAll(Ljava/util/Collection;)Z

    .line 413
    .line 414
    .line 415
    sget-object v4, Lzc6;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 416
    .line 417
    invoke-static {}, Lyc6;->a()Ljava/util/ArrayList;

    .line 418
    .line 419
    .line 420
    move-result-object v4

    .line 421
    invoke-static {}, Lyc6;->b()Ljava/util/ArrayList;

    .line 422
    .line 423
    .line 424
    move-result-object v5

    .line 425
    invoke-static {v4, v5}, Lel1;->g1(Ljava/util/Collection;Ljava/util/List;)Ljava/util/ArrayList;

    .line 426
    .line 427
    .line 428
    move-result-object v4

    .line 429
    invoke-static {}, Lyc6;->f()Ljava/util/ArrayList;

    .line 430
    .line 431
    .line 432
    move-result-object v5

    .line 433
    invoke-static {v4, v5}, Lel1;->g1(Ljava/util/Collection;Ljava/util/List;)Ljava/util/ArrayList;

    .line 434
    .line 435
    .line 436
    move-result-object v4

    .line 437
    invoke-interface {v9}, Lbt3;->invoke()Ljava/lang/Object;

    .line 438
    .line 439
    .line 440
    move-result-object v5

    .line 441
    check-cast v5, Ljava/lang/Boolean;

    .line 442
    .line 443
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 444
    .line 445
    .line 446
    move-result v5

    .line 447
    invoke-static {v5}, Lyc6;->e(Z)Ljava/util/ArrayList;

    .line 448
    .line 449
    .line 450
    move-result-object v5

    .line 451
    invoke-static {v4, v5}, Lel1;->g1(Ljava/util/Collection;Ljava/util/List;)Ljava/util/ArrayList;

    .line 452
    .line 453
    .line 454
    move-result-object v4

    .line 455
    invoke-interface {v9}, Lbt3;->invoke()Ljava/lang/Object;

    .line 456
    .line 457
    .line 458
    move-result-object v5

    .line 459
    check-cast v5, Ljava/lang/Boolean;

    .line 460
    .line 461
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 462
    .line 463
    .line 464
    move-result v5

    .line 465
    invoke-static {v5}, Lyc6;->c(Z)Ljava/util/ArrayList;

    .line 466
    .line 467
    .line 468
    move-result-object v5

    .line 469
    invoke-static {v4, v5}, Lel1;->g1(Ljava/util/Collection;Ljava/util/List;)Ljava/util/ArrayList;

    .line 470
    .line 471
    .line 472
    move-result-object v4

    .line 473
    invoke-static {}, Lyc6;->d()Ljava/util/List;

    .line 474
    .line 475
    .line 476
    move-result-object v5

    .line 477
    invoke-static {v4, v5}, Lel1;->g1(Ljava/util/Collection;Ljava/util/List;)Ljava/util/ArrayList;

    .line 478
    .line 479
    .line 480
    move-result-object v4

    .line 481
    new-instance v5, Ljava/util/ArrayList;

    .line 482
    .line 483
    invoke-static {v4, v7}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 484
    .line 485
    .line 486
    move-result v6

    .line 487
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 488
    .line 489
    .line 490
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 491
    .line 492
    .line 493
    move-result-object v4

    .line 494
    move/from16 v21, v8

    .line 495
    .line 496
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 497
    .line 498
    .line 499
    move-result v6

    .line 500
    const-string v7, "action:"

    .line 501
    .line 502
    const/4 v9, 0x1

    .line 503
    if-eqz v6, :cond_d

    .line 504
    .line 505
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 506
    .line 507
    .line 508
    move-result-object v6

    .line 509
    add-int/lit8 v23, v21, 0x1

    .line 510
    .line 511
    if-ltz v21, :cond_c

    .line 512
    .line 513
    check-cast v6, Lzc6;

    .line 514
    .line 515
    iget-object v10, v3, Lj54;->a:Landroid/content/Context;

    .line 516
    .line 517
    iget v11, v6, Lzc6;->c:I

    .line 518
    .line 519
    iget-object v12, v6, Lzc6;->a:Ljava/lang/String;

    .line 520
    .line 521
    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 522
    .line 523
    .line 524
    move-result-object v11

    .line 525
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 526
    .line 527
    .line 528
    iget v13, v6, Lzc6;->d:I

    .line 529
    .line 530
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 531
    .line 532
    .line 533
    move-result-object v14

    .line 534
    if-eqz v13, :cond_6

    .line 535
    .line 536
    goto :goto_3

    .line 537
    :cond_6
    move-object/from16 v14, v25

    .line 538
    .line 539
    :goto_3
    if-eqz v14, :cond_7

    .line 540
    .line 541
    invoke-virtual {v14}, Ljava/lang/Number;->intValue()I

    .line 542
    .line 543
    .line 544
    move-result v13

    .line 545
    invoke-virtual {v10, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 546
    .line 547
    .line 548
    move-result-object v10

    .line 549
    move-object v13, v10

    .line 550
    goto :goto_4

    .line 551
    :cond_7
    move-object/from16 v13, v25

    .line 552
    .line 553
    :goto_4
    new-instance v10, Ls54;

    .line 554
    .line 555
    move-object v14, v10

    .line 556
    invoke-static {v7, v12}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 557
    .line 558
    .line 559
    move-result-object v10

    .line 560
    sget-object v7, Lu54;->QUICK_ACTIONS:Lu54;

    .line 561
    .line 562
    sget-object v15, Lzc6;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 563
    .line 564
    invoke-static {v12}, Lyc6;->h(Ljava/lang/String;)Z

    .line 565
    .line 566
    .line 567
    move-result v15

    .line 568
    if-eqz v15, :cond_8

    .line 569
    .line 570
    const v9, 0x7f0800bf

    .line 571
    .line 572
    .line 573
    goto :goto_5

    .line 574
    :cond_8
    invoke-static {v12}, Lyc6;->j(Ljava/lang/String;)Z

    .line 575
    .line 576
    .line 577
    move-result v15

    .line 578
    if-eqz v15, :cond_9

    .line 579
    .line 580
    const v9, 0x7f08017c

    .line 581
    .line 582
    .line 583
    goto :goto_5

    .line 584
    :cond_9
    invoke-static {v12}, Lyc6;->i(Ljava/lang/String;)Z

    .line 585
    .line 586
    .line 587
    move-result v15

    .line 588
    if-eqz v15, :cond_a

    .line 589
    .line 590
    const v9, 0x7f0800f9

    .line 591
    .line 592
    .line 593
    goto :goto_5

    .line 594
    :cond_a
    if-eqz v12, :cond_b

    .line 595
    .line 596
    const-string v15, "FOLDERS"

    .line 597
    .line 598
    invoke-static {v12, v15, v8}, Luq7;->O(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 599
    .line 600
    .line 601
    move-result v12

    .line 602
    if-ne v12, v9, :cond_b

    .line 603
    .line 604
    const v9, 0x7f08014b

    .line 605
    .line 606
    .line 607
    goto :goto_5

    .line 608
    :cond_b
    const v9, 0x7f0801a4

    .line 609
    .line 610
    .line 611
    :goto_5
    filled-new-array {v11, v13}, [Ljava/lang/String;

    .line 612
    .line 613
    .line 614
    move-result-object v12

    .line 615
    invoke-static {v12}, Lx50;->p0([Ljava/lang/Object;)Ljava/util/List;

    .line 616
    .line 617
    .line 618
    move-result-object v20

    .line 619
    const/16 v22, 0x3e0

    .line 620
    .line 621
    const/4 v15, 0x0

    .line 622
    const/16 v16, 0x0

    .line 623
    .line 624
    const/16 v17, 0x0

    .line 625
    .line 626
    const/16 v18, 0x0

    .line 627
    .line 628
    move-object v12, v14

    .line 629
    move v14, v9

    .line 630
    move-object v9, v12

    .line 631
    move-object/from16 v19, v6

    .line 632
    .line 633
    move-object v12, v11

    .line 634
    move-object v11, v7

    .line 635
    invoke-direct/range {v9 .. v22}, Ls54;-><init>(Ljava/lang/String;Lu54;Ljava/lang/String;Ljava/lang/String;IILji;Lorg/swiftapps/swiftbackup/folders/data/FolderItem;Ljava/lang/Integer;Lzc6;Ljava/util/List;II)V

    .line 636
    .line 637
    .line 638
    move-object v14, v9

    .line 639
    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 640
    .line 641
    .line 642
    move/from16 v21, v23

    .line 643
    .line 644
    goto/16 :goto_2

    .line 645
    .line 646
    :cond_c
    invoke-static {}, Lfl1;->F0()V

    .line 647
    .line 648
    .line 649
    throw v25

    .line 650
    :cond_d
    invoke-virtual {v2, v5}, Lww4;->addAll(Ljava/util/Collection;)Z

    .line 651
    .line 652
    .line 653
    invoke-static {v2}, Lnc8;->h(Lww4;)Lww4;

    .line 654
    .line 655
    .line 656
    move-result-object v2

    .line 657
    sget-object v3, Lo54;->a:Lai6;

    .line 658
    .line 659
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 660
    .line 661
    .line 662
    invoke-static {v1}, Lo54;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 663
    .line 664
    .line 665
    move-result-object v3

    .line 666
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 667
    .line 668
    .line 669
    move-result v4

    .line 670
    const/4 v5, 0x2

    .line 671
    sget-object v6, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    .line 672
    .line 673
    if-nez v4, :cond_e

    .line 674
    .line 675
    new-instance v3, Lzk2;

    .line 676
    .line 677
    invoke-direct {v3, v5}, Lzk2;-><init>(I)V

    .line 678
    .line 679
    .line 680
    new-instance v4, Ll54;

    .line 681
    .line 682
    invoke-direct {v4, v3}, Ll54;-><init>(Lzk2;)V

    .line 683
    .line 684
    .line 685
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 686
    .line 687
    .line 688
    new-instance v3, Lm54;

    .line 689
    .line 690
    invoke-direct {v3, v4, v8}, Lm54;-><init>(Ljava/util/Comparator;I)V

    .line 691
    .line 692
    .line 693
    new-instance v4, Ln54;

    .line 694
    .line 695
    invoke-direct {v4, v3}, Ln54;-><init>(Lm54;)V

    .line 696
    .line 697
    .line 698
    invoke-static {v2, v4}, Lel1;->n1(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 699
    .line 700
    .line 701
    move-result-object v2

    .line 702
    goto :goto_6

    .line 703
    :cond_e
    new-instance v4, Lll1;

    .line 704
    .line 705
    invoke-direct {v4, v2}, Lll1;-><init>(Ljava/lang/Iterable;)V

    .line 706
    .line 707
    .line 708
    new-instance v2, Lhj;

    .line 709
    .line 710
    const/16 v10, 0x11

    .line 711
    .line 712
    invoke-direct {v2, v3, v10}, Lhj;-><init>(Ljava/lang/Object;I)V

    .line 713
    .line 714
    .line 715
    invoke-static {v4, v2}, Lh77;->A0(Lf77;Lmt3;)Lme3;

    .line 716
    .line 717
    .line 718
    move-result-object v2

    .line 719
    new-instance v3, Lcz3;

    .line 720
    .line 721
    invoke-direct {v3, v9}, Lcz3;-><init>(I)V

    .line 722
    .line 723
    .line 724
    new-instance v4, Lyx;

    .line 725
    .line 726
    invoke-direct {v4, v3, v5}, Lyx;-><init>(Ljava/lang/Object;I)V

    .line 727
    .line 728
    .line 729
    new-instance v3, Lyg;

    .line 730
    .line 731
    const/4 v10, 0x3

    .line 732
    invoke-direct {v3, v4, v10}, Lyg;-><init>(Ljava/util/Comparator;I)V

    .line 733
    .line 734
    .line 735
    new-instance v4, Luk0;

    .line 736
    .line 737
    invoke-direct {v4, v3, v9}, Luk0;-><init>(Ljava/lang/Object;I)V

    .line 738
    .line 739
    .line 740
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 741
    .line 742
    .line 743
    new-instance v3, Lgy;

    .line 744
    .line 745
    invoke-direct {v3, v4, v9}, Lgy;-><init>(Ljava/util/Comparator;I)V

    .line 746
    .line 747
    .line 748
    new-instance v4, Ll77;

    .line 749
    .line 750
    invoke-direct {v4, v2, v3}, Ll77;-><init>(Lf77;Ljava/util/Comparator;)V

    .line 751
    .line 752
    .line 753
    new-instance v2, Lsh;

    .line 754
    .line 755
    const/16 v3, 0x9

    .line 756
    .line 757
    invoke-direct {v2, v3}, Lsh;-><init>(I)V

    .line 758
    .line 759
    .line 760
    new-instance v3, Lq98;

    .line 761
    .line 762
    invoke-direct {v3, v4, v2}, Lq98;-><init>(Lf77;Lmt3;)V

    .line 763
    .line 764
    .line 765
    invoke-static {v3}, Lh77;->C0(Lf77;)Ljava/util/List;

    .line 766
    .line 767
    .line 768
    move-result-object v2

    .line 769
    :goto_6
    new-instance v3, Ljava/util/ArrayList;

    .line 770
    .line 771
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 772
    .line 773
    .line 774
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 775
    .line 776
    .line 777
    move-result-object v4

    .line 778
    :cond_f
    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 779
    .line 780
    .line 781
    move-result v6

    .line 782
    if-eqz v6, :cond_10

    .line 783
    .line 784
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 785
    .line 786
    .line 787
    move-result-object v6

    .line 788
    move-object v10, v6

    .line 789
    check-cast v10, Ls54;

    .line 790
    .line 791
    iget-object v10, v10, Ls54;->b:Lu54;

    .line 792
    .line 793
    sget-object v11, Lu54;->APPS:Lu54;

    .line 794
    .line 795
    if-ne v10, v11, :cond_f

    .line 796
    .line 797
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 798
    .line 799
    .line 800
    goto :goto_7

    .line 801
    :cond_10
    const-string v4, "show_system_apps"

    .line 802
    .line 803
    :try_start_0
    sget-object v6, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 804
    .line 805
    if-eqz v6, :cond_11

    .line 806
    .line 807
    invoke-interface {v6, v4, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 808
    .line 809
    .line 810
    move-result v4

    .line 811
    goto :goto_8

    .line 812
    :cond_11
    const-string v4, "prefs"

    .line 813
    .line 814
    invoke-static {v4}, Lpe4;->F(Ljava/lang/String;)V

    .line 815
    .line 816
    .line 817
    throw v25
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 818
    :catch_0
    move v4, v8

    .line 819
    :goto_8
    invoke-static {v1}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 820
    .line 821
    .line 822
    move-result v6

    .line 823
    if-nez v6, :cond_12

    .line 824
    .line 825
    iget-boolean v0, v0, Lx54;->i:Z

    .line 826
    .line 827
    if-eqz v0, :cond_12

    .line 828
    .line 829
    move v0, v9

    .line 830
    goto :goto_9

    .line 831
    :cond_12
    move v0, v8

    .line 832
    :goto_9
    if-eqz v4, :cond_15

    .line 833
    .line 834
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 835
    .line 836
    .line 837
    move-result v6

    .line 838
    if-eqz v6, :cond_13

    .line 839
    .line 840
    goto :goto_a

    .line 841
    :cond_13
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 842
    .line 843
    .line 844
    move-result-object v6

    .line 845
    :cond_14
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 846
    .line 847
    .line 848
    move-result v10

    .line 849
    if-eqz v10, :cond_15

    .line 850
    .line 851
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 852
    .line 853
    .line 854
    move-result-object v10

    .line 855
    check-cast v10, Ls54;

    .line 856
    .line 857
    iget-object v10, v10, Ls54;->n:Lji;

    .line 858
    .line 859
    if-eqz v10, :cond_14

    .line 860
    .line 861
    invoke-virtual {v10}, Lji;->isBundled()Z

    .line 862
    .line 863
    .line 864
    move-result v10

    .line 865
    if-ne v10, v9, :cond_14

    .line 866
    .line 867
    move v6, v9

    .line 868
    goto :goto_b

    .line 869
    :cond_15
    :goto_a
    move v6, v8

    .line 870
    :goto_b
    if-eqz v4, :cond_16

    .line 871
    .line 872
    if-eqz v0, :cond_16

    .line 873
    .line 874
    move v0, v9

    .line 875
    goto :goto_c

    .line 876
    :cond_16
    move v0, v8

    .line 877
    :goto_c
    if-eqz v4, :cond_17

    .line 878
    .line 879
    move-object v4, v3

    .line 880
    goto :goto_e

    .line 881
    :cond_17
    new-instance v4, Ljava/util/ArrayList;

    .line 882
    .line 883
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 884
    .line 885
    .line 886
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 887
    .line 888
    .line 889
    move-result-object v10

    .line 890
    :goto_d
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 891
    .line 892
    .line 893
    move-result v11

    .line 894
    if-eqz v11, :cond_19

    .line 895
    .line 896
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 897
    .line 898
    .line 899
    move-result-object v11

    .line 900
    move-object v12, v11

    .line 901
    check-cast v12, Ls54;

    .line 902
    .line 903
    iget-object v12, v12, Ls54;->n:Lji;

    .line 904
    .line 905
    if-eqz v12, :cond_18

    .line 906
    .line 907
    invoke-virtual {v12}, Lji;->isBundled()Z

    .line 908
    .line 909
    .line 910
    move-result v12

    .line 911
    if-ne v12, v9, :cond_18

    .line 912
    .line 913
    goto :goto_d

    .line 914
    :cond_18
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 915
    .line 916
    .line 917
    goto :goto_d

    .line 918
    :cond_19
    :goto_e
    if-eqz v0, :cond_1a

    .line 919
    .line 920
    goto :goto_10

    .line 921
    :cond_1a
    new-instance v10, Ljava/util/ArrayList;

    .line 922
    .line 923
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 924
    .line 925
    .line 926
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 927
    .line 928
    .line 929
    move-result-object v3

    .line 930
    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 931
    .line 932
    .line 933
    move-result v11

    .line 934
    if-eqz v11, :cond_1c

    .line 935
    .line 936
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 937
    .line 938
    .line 939
    move-result-object v11

    .line 940
    move-object v12, v11

    .line 941
    check-cast v12, Ls54;

    .line 942
    .line 943
    iget-object v12, v12, Ls54;->n:Lji;

    .line 944
    .line 945
    if-eqz v12, :cond_1b

    .line 946
    .line 947
    invoke-virtual {v12}, Lji;->isBundled()Z

    .line 948
    .line 949
    .line 950
    move-result v12

    .line 951
    if-ne v12, v9, :cond_1b

    .line 952
    .line 953
    goto :goto_f

    .line 954
    :cond_1b
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 955
    .line 956
    .line 957
    goto :goto_f

    .line 958
    :cond_1c
    move-object v3, v10

    .line 959
    :goto_10
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 960
    .line 961
    .line 962
    move-result v4

    .line 963
    new-instance v10, Ljava/util/LinkedHashSet;

    .line 964
    .line 965
    invoke-direct {v10}, Ljava/util/LinkedHashSet;-><init>()V

    .line 966
    .line 967
    .line 968
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 969
    .line 970
    .line 971
    move-result-object v3

    .line 972
    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 973
    .line 974
    .line 975
    move-result v11

    .line 976
    if-eqz v11, :cond_1d

    .line 977
    .line 978
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 979
    .line 980
    .line 981
    move-result-object v11

    .line 982
    check-cast v11, Ls54;

    .line 983
    .line 984
    iget-object v11, v11, Ls54;->a:Ljava/lang/String;

    .line 985
    .line 986
    invoke-interface {v10, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 987
    .line 988
    .line 989
    goto :goto_11

    .line 990
    :cond_1d
    new-instance v3, Ljava/util/ArrayList;

    .line 991
    .line 992
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 993
    .line 994
    .line 995
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 996
    .line 997
    .line 998
    move-result-object v11

    .line 999
    :cond_1e
    :goto_12
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 1000
    .line 1001
    .line 1002
    move-result v12

    .line 1003
    if-eqz v12, :cond_20

    .line 1004
    .line 1005
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1006
    .line 1007
    .line 1008
    move-result-object v12

    .line 1009
    move-object v13, v12

    .line 1010
    check-cast v13, Ls54;

    .line 1011
    .line 1012
    iget-object v14, v13, Ls54;->b:Lu54;

    .line 1013
    .line 1014
    sget-object v15, Lu54;->APPS:Lu54;

    .line 1015
    .line 1016
    if-ne v14, v15, :cond_1f

    .line 1017
    .line 1018
    iget-object v13, v13, Ls54;->a:Ljava/lang/String;

    .line 1019
    .line 1020
    invoke-interface {v10, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 1021
    .line 1022
    .line 1023
    move-result v13

    .line 1024
    if-eqz v13, :cond_1e

    .line 1025
    .line 1026
    :cond_1f
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1027
    .line 1028
    .line 1029
    goto :goto_12

    .line 1030
    :cond_20
    const/16 v10, 0x8

    .line 1031
    .line 1032
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1033
    .line 1034
    .line 1035
    move-result-object v10

    .line 1036
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1037
    .line 1038
    .line 1039
    move-result-object v5

    .line 1040
    invoke-static {v1}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 1041
    .line 1042
    .line 1043
    move-result v11

    .line 1044
    if-eqz v11, :cond_21

    .line 1045
    .line 1046
    sget-object v11, Lu54;->SHORTCUTS:Lu54;

    .line 1047
    .line 1048
    new-instance v12, Lpw5;

    .line 1049
    .line 1050
    invoke-direct {v12, v11, v10}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1051
    .line 1052
    .line 1053
    sget-object v10, Lu54;->APPS:Lu54;

    .line 1054
    .line 1055
    new-instance v11, Lpw5;

    .line 1056
    .line 1057
    invoke-direct {v11, v10, v5}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1058
    .line 1059
    .line 1060
    sget-object v10, Lu54;->FOLDERS:Lu54;

    .line 1061
    .line 1062
    new-instance v13, Lpw5;

    .line 1063
    .line 1064
    invoke-direct {v13, v10, v5}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1065
    .line 1066
    .line 1067
    sget-object v10, Lu54;->QUICK_ACTIONS:Lu54;

    .line 1068
    .line 1069
    new-instance v14, Lpw5;

    .line 1070
    .line 1071
    invoke-direct {v14, v10, v5}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1072
    .line 1073
    .line 1074
    filled-new-array {v12, v11, v13, v14}, [Lpw5;

    .line 1075
    .line 1076
    .line 1077
    move-result-object v5

    .line 1078
    invoke-static {v5}, Lx65;->r0([Lpw5;)Ljava/util/Map;

    .line 1079
    .line 1080
    .line 1081
    move-result-object v5

    .line 1082
    goto :goto_13

    .line 1083
    :cond_21
    sget-object v5, Lu54;->SHORTCUTS:Lu54;

    .line 1084
    .line 1085
    const/4 v11, 0x4

    .line 1086
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1087
    .line 1088
    .line 1089
    move-result-object v11

    .line 1090
    new-instance v12, Lpw5;

    .line 1091
    .line 1092
    invoke-direct {v12, v5, v11}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1093
    .line 1094
    .line 1095
    sget-object v5, Lu54;->APPS:Lu54;

    .line 1096
    .line 1097
    const/16 v11, 0x10

    .line 1098
    .line 1099
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1100
    .line 1101
    .line 1102
    move-result-object v11

    .line 1103
    new-instance v13, Lpw5;

    .line 1104
    .line 1105
    invoke-direct {v13, v5, v11}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1106
    .line 1107
    .line 1108
    sget-object v5, Lu54;->FOLDERS:Lu54;

    .line 1109
    .line 1110
    new-instance v11, Lpw5;

    .line 1111
    .line 1112
    invoke-direct {v11, v5, v10}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1113
    .line 1114
    .line 1115
    sget-object v5, Lu54;->QUICK_ACTIONS:Lu54;

    .line 1116
    .line 1117
    const v10, 0x7fffffff

    .line 1118
    .line 1119
    .line 1120
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1121
    .line 1122
    .line 1123
    move-result-object v10

    .line 1124
    new-instance v14, Lpw5;

    .line 1125
    .line 1126
    invoke-direct {v14, v5, v10}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1127
    .line 1128
    .line 1129
    filled-new-array {v12, v13, v11, v14}, [Lpw5;

    .line 1130
    .line 1131
    .line 1132
    move-result-object v5

    .line 1133
    invoke-static {v5}, Lx65;->r0([Lpw5;)Ljava/util/Map;

    .line 1134
    .line 1135
    .line 1136
    move-result-object v5

    .line 1137
    :goto_13
    new-instance v10, Ljava/util/LinkedHashMap;

    .line 1138
    .line 1139
    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1140
    .line 1141
    .line 1142
    new-instance v11, Ljava/util/ArrayList;

    .line 1143
    .line 1144
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1145
    .line 1146
    .line 1147
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1148
    .line 1149
    .line 1150
    move-result-object v3

    .line 1151
    :cond_22
    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1152
    .line 1153
    .line 1154
    move-result v12

    .line 1155
    if-eqz v12, :cond_29

    .line 1156
    .line 1157
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1158
    .line 1159
    .line 1160
    move-result-object v12

    .line 1161
    move-object v13, v12

    .line 1162
    check-cast v13, Ls54;

    .line 1163
    .line 1164
    invoke-static {v1}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 1165
    .line 1166
    .line 1167
    move-result v14

    .line 1168
    if-eqz v14, :cond_26

    .line 1169
    .line 1170
    iget-object v14, v13, Ls54;->b:Lu54;

    .line 1171
    .line 1172
    sget-object v15, Lu54;->QUICK_ACTIONS:Lu54;

    .line 1173
    .line 1174
    if-eq v14, v15, :cond_23

    .line 1175
    .line 1176
    move v14, v9

    .line 1177
    goto :goto_15

    .line 1178
    :cond_23
    iget-object v14, v13, Ls54;->r:Lzc6;

    .line 1179
    .line 1180
    if-eqz v14, :cond_24

    .line 1181
    .line 1182
    iget-object v14, v14, Lzc6;->a:Ljava/lang/String;

    .line 1183
    .line 1184
    if-nez v14, :cond_25

    .line 1185
    .line 1186
    :cond_24
    iget-object v14, v13, Ls54;->a:Ljava/lang/String;

    .line 1187
    .line 1188
    invoke-static {v14, v7}, Lnq7;->q0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1189
    .line 1190
    .line 1191
    move-result-object v14

    .line 1192
    :cond_25
    sget-object v15, Lx54;->j:Ljava/util/Set;

    .line 1193
    .line 1194
    invoke-interface {v15, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 1195
    .line 1196
    .line 1197
    move-result v14

    .line 1198
    :goto_15
    if-nez v14, :cond_26

    .line 1199
    .line 1200
    goto :goto_14

    .line 1201
    :cond_26
    iget-object v13, v13, Ls54;->b:Lu54;

    .line 1202
    .line 1203
    invoke-interface {v5, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1204
    .line 1205
    .line 1206
    move-result-object v14

    .line 1207
    check-cast v14, Ljava/lang/Integer;

    .line 1208
    .line 1209
    if-eqz v14, :cond_27

    .line 1210
    .line 1211
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    .line 1212
    .line 1213
    .line 1214
    move-result v14

    .line 1215
    goto :goto_16

    .line 1216
    :cond_27
    move v14, v8

    .line 1217
    :goto_16
    invoke-virtual {v10, v13}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1218
    .line 1219
    .line 1220
    move-result-object v15

    .line 1221
    check-cast v15, Ljava/lang/Integer;

    .line 1222
    .line 1223
    if-eqz v15, :cond_28

    .line 1224
    .line 1225
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    .line 1226
    .line 1227
    .line 1228
    move-result v15

    .line 1229
    goto :goto_17

    .line 1230
    :cond_28
    move v15, v8

    .line 1231
    :goto_17
    if-ge v15, v14, :cond_22

    .line 1232
    .line 1233
    add-int/lit8 v15, v15, 0x1

    .line 1234
    .line 1235
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1236
    .line 1237
    .line 1238
    move-result-object v14

    .line 1239
    invoke-interface {v10, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1240
    .line 1241
    .line 1242
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1243
    .line 1244
    .line 1245
    goto :goto_14

    .line 1246
    :cond_29
    new-instance v3, Ljava/util/ArrayList;

    .line 1247
    .line 1248
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1249
    .line 1250
    .line 1251
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1252
    .line 1253
    .line 1254
    move-result-object v5

    .line 1255
    :cond_2a
    :goto_18
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 1256
    .line 1257
    .line 1258
    move-result v7

    .line 1259
    if-eqz v7, :cond_2b

    .line 1260
    .line 1261
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1262
    .line 1263
    .line 1264
    move-result-object v7

    .line 1265
    move-object v10, v7

    .line 1266
    check-cast v10, Ls54;

    .line 1267
    .line 1268
    iget-object v10, v10, Ls54;->b:Lu54;

    .line 1269
    .line 1270
    sget-object v12, Lu54;->SHORTCUTS:Lu54;

    .line 1271
    .line 1272
    if-ne v10, v12, :cond_2a

    .line 1273
    .line 1274
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1275
    .line 1276
    .line 1277
    goto :goto_18

    .line 1278
    :cond_2b
    new-instance v5, Ljava/util/ArrayList;

    .line 1279
    .line 1280
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1281
    .line 1282
    .line 1283
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1284
    .line 1285
    .line 1286
    move-result-object v7

    .line 1287
    :cond_2c
    :goto_19
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 1288
    .line 1289
    .line 1290
    move-result v10

    .line 1291
    if-eqz v10, :cond_2d

    .line 1292
    .line 1293
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1294
    .line 1295
    .line 1296
    move-result-object v10

    .line 1297
    move-object v12, v10

    .line 1298
    check-cast v12, Ls54;

    .line 1299
    .line 1300
    iget-object v12, v12, Ls54;->b:Lu54;

    .line 1301
    .line 1302
    sget-object v13, Lu54;->QUICK_ACTIONS:Lu54;

    .line 1303
    .line 1304
    if-ne v12, v13, :cond_2c

    .line 1305
    .line 1306
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1307
    .line 1308
    .line 1309
    goto :goto_19

    .line 1310
    :cond_2d
    new-instance v7, Ljava/util/ArrayList;

    .line 1311
    .line 1312
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1313
    .line 1314
    .line 1315
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1316
    .line 1317
    .line 1318
    move-result-object v10

    .line 1319
    :cond_2e
    :goto_1a
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 1320
    .line 1321
    .line 1322
    move-result v11

    .line 1323
    if-eqz v11, :cond_2f

    .line 1324
    .line 1325
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1326
    .line 1327
    .line 1328
    move-result-object v11

    .line 1329
    move-object v12, v11

    .line 1330
    check-cast v12, Ls54;

    .line 1331
    .line 1332
    iget-object v12, v12, Ls54;->b:Lu54;

    .line 1333
    .line 1334
    sget-object v13, Lu54;->SHORTCUTS:Lu54;

    .line 1335
    .line 1336
    if-eq v12, v13, :cond_2e

    .line 1337
    .line 1338
    sget-object v13, Lu54;->QUICK_ACTIONS:Lu54;

    .line 1339
    .line 1340
    if-eq v12, v13, :cond_2e

    .line 1341
    .line 1342
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1343
    .line 1344
    .line 1345
    goto :goto_1a

    .line 1346
    :cond_2f
    sget-object v10, Lu54;->QUICK_ACTIONS:Lu54;

    .line 1347
    .line 1348
    invoke-static {v2, v1, v10}, Lx54;->j(Ljava/util/List;Ljava/lang/String;Lu54;)I

    .line 1349
    .line 1350
    .line 1351
    move-result v10

    .line 1352
    invoke-static {v1}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 1353
    .line 1354
    .line 1355
    move-result v11

    .line 1356
    if-eqz v11, :cond_30

    .line 1357
    .line 1358
    move v4, v8

    .line 1359
    :cond_30
    sget-object v11, Lu54;->FOLDERS:Lu54;

    .line 1360
    .line 1361
    invoke-static {v2, v1, v11}, Lx54;->j(Ljava/util/List;Ljava/lang/String;Lu54;)I

    .line 1362
    .line 1363
    .line 1364
    move-result v2

    .line 1365
    invoke-static {v1}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 1366
    .line 1367
    .line 1368
    move-result v11

    .line 1369
    if-nez v11, :cond_31

    .line 1370
    .line 1371
    if-eqz v6, :cond_31

    .line 1372
    .line 1373
    move v8, v9

    .line 1374
    :cond_31
    move v9, v0

    .line 1375
    new-instance v0, Lv54;

    .line 1376
    .line 1377
    move v6, v4

    .line 1378
    move-object v4, v7

    .line 1379
    move v7, v2

    .line 1380
    move-object v2, v3

    .line 1381
    move-object v3, v5

    .line 1382
    move v5, v10

    .line 1383
    invoke-direct/range {v0 .. v9}, Lv54;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;IIIZZ)V

    .line 1384
    .line 1385
    .line 1386
    return-object v0
.end method

.method public final l(Ljava/lang/String;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p1, ""

    .line 4
    .line 5
    :cond_0
    iput-object p1, p0, Lx54;->h:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v0, p0, Lx54;->g:Lbl7;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lci4;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iput-object v1, p0, Lx54;->g:Lbl7;

    .line 16
    .line 17
    invoke-static {p1}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    sget-object v0, Lov2;->a:Lov2;

    .line 24
    .line 25
    invoke-virtual {p0, p1, v0, v0}, Lx54;->k(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lv54;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v2, p0, Lx54;->e:Lex6;

    .line 30
    .line 31
    invoke-virtual {v2, v0}, Lex6;->k(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    sget-object v0, Lzn4;->a:Lzn4;

    .line 35
    .line 36
    new-instance v0, Lw54;

    .line 37
    .line 38
    invoke-direct {v0, p0, p1, v1}, Lw54;-><init>(Lx54;Ljava/lang/String;Ljv1;)V

    .line 39
    .line 40
    .line 41
    invoke-static {v1, v0}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iput-object p1, p0, Lx54;->g:Lbl7;

    .line 46
    .line 47
    return-void

    .line 48
    :cond_2
    sget-object v0, Lzn4;->a:Lzn4;

    .line 49
    .line 50
    new-instance v0, Lk41;

    .line 51
    .line 52
    const/4 v2, 0x1

    .line 53
    invoke-direct {v0, p0, p1, v1, v2}, Lk41;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljv1;I)V

    .line 54
    .line 55
    .line 56
    invoke-static {v1, v0}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iput-object p1, p0, Lx54;->g:Lbl7;

    .line 61
    .line 62
    return-void
.end method
