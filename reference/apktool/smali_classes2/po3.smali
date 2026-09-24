.class public final Lpo3;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljv1;I)V
    .locals 0

    .line 1
    iput p5, p0, Lpo3;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lpo3;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lpo3;->c:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Lpo3;->d:Ljava/lang/Object;

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p4}, Lws7;-><init>(ILjv1;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljv1;)Ljv1;
    .locals 9

    .line 1
    iget p1, p0, Lpo3;->a:I

    .line 2
    .line 3
    iget-object v0, p0, Lpo3;->d:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v1, p0, Lpo3;->c:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object p0, p0, Lpo3;->b:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch p1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    new-instance v2, Lpo3;

    .line 13
    .line 14
    move-object v3, p0

    .line 15
    check-cast v3, Lorg/swiftapps/swiftbackup/manage/ManageSpaceActivity;

    .line 16
    .line 17
    move-object v4, v1

    .line 18
    check-cast v4, Lry5;

    .line 19
    .line 20
    move-object v5, v0

    .line 21
    check-cast v5, Lgp3;

    .line 22
    .line 23
    const/4 v7, 0x1

    .line 24
    move-object v6, p2

    .line 25
    invoke-direct/range {v2 .. v7}, Lpo3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljv1;I)V

    .line 26
    .line 27
    .line 28
    return-object v2

    .line 29
    :pswitch_0
    move-object v6, p2

    .line 30
    new-instance v3, Lpo3;

    .line 31
    .line 32
    move-object v4, p0

    .line 33
    check-cast v4, Lqo3;

    .line 34
    .line 35
    move-object v5, v1

    .line 36
    check-cast v5, Llk3;

    .line 37
    .line 38
    check-cast v0, Ljava/util/List;

    .line 39
    .line 40
    const/4 v8, 0x0

    .line 41
    move-object v7, v6

    .line 42
    move-object v6, v0

    .line 43
    invoke-direct/range {v3 .. v8}, Lpo3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljv1;I)V

    .line 44
    .line 45
    .line 46
    return-object v3

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lpo3;->a:I

    .line 2
    .line 3
    sget-object v1, Lbe8;->a:Lbe8;

    .line 4
    .line 5
    check-cast p1, Lxx1;

    .line 6
    .line 7
    check-cast p2, Ljv1;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lpo3;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lpo3;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lpo3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    return-object v1

    .line 22
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lpo3;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Lpo3;

    .line 27
    .line 28
    invoke-virtual {p0, v1}, Lpo3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    return-object v1

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lpo3;->a:I

    .line 4
    .line 5
    sget-object v2, Lbe8;->a:Lbe8;

    .line 6
    .line 7
    iget-object v3, v0, Lpo3;->d:Ljava/lang/Object;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    iget-object v5, v0, Lpo3;->c:Ljava/lang/Object;

    .line 11
    .line 12
    iget-object v0, v0, Lpo3;->b:Ljava/lang/Object;

    .line 13
    .line 14
    packed-switch v1, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    invoke-static/range {p1 .. p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    check-cast v0, Lorg/swiftapps/swiftbackup/manage/ManageSpaceActivity;

    .line 21
    .line 22
    check-cast v5, Lry5;

    .line 23
    .line 24
    sget v1, Lorg/swiftapps/swiftbackup/manage/ManageSpaceActivity;->O:I

    .line 25
    .line 26
    :try_start_0
    sget-object v1, Ld45;->b:Ld45;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-static {}, Ld45;->a()Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->isAnonymous()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 42
    .line 43
    .line 44
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :catch_0
    :cond_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 46
    .line 47
    invoke-static {v4, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    const/4 v4, 0x0

    .line 52
    const-string v6, ": \n"

    .line 53
    .line 54
    const v7, 0x7f13001f

    .line 55
    .line 56
    .line 57
    if-eqz v1, :cond_1

    .line 58
    .line 59
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    const-string v7, ": \nAnonymous"

    .line 64
    .line 65
    invoke-static {v1, v7}, Leq3;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    sget-object v7, Ld45;->b:Ld45;

    .line 75
    .line 76
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    invoke-static {}, Ld45;->a()Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    .line 80
    .line 81
    .line 82
    move-result-object v7

    .line 83
    if-eqz v7, :cond_2

    .line 84
    .line 85
    invoke-virtual {v7}, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->getEmail()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v7

    .line 89
    invoke-static {v1, v6, v7}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    :goto_0
    const v7, 0x7f13009c

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v7

    .line 100
    iget-object v8, v5, Lry5;->c:Ljava/lang/String;

    .line 101
    .line 102
    invoke-static {v7, v6, v8}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    filled-new-array {v1, v6}, [Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-static {v1}, Lx50;->p0([Ljava/lang/Object;)Ljava/util/List;

    .line 111
    .line 112
    .line 113
    move-result-object v6

    .line 114
    const/4 v10, 0x0

    .line 115
    const/16 v11, 0x3e

    .line 116
    .line 117
    const-string v7, "\n\n"

    .line 118
    .line 119
    const/4 v8, 0x0

    .line 120
    const/4 v9, 0x0

    .line 121
    invoke-static/range {v6 .. v11}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v16

    .line 125
    sget-object v1, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 126
    .line 127
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    const v6, 0x7f1301ba

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v14

    .line 138
    new-instance v12, Lu55;

    .line 139
    .line 140
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    const/4 v13, -0x1

    .line 144
    const/4 v15, 0x0

    .line 145
    const/16 v17, 0x0

    .line 146
    .line 147
    const/16 v18, 0x1

    .line 148
    .line 149
    invoke-direct/range {v12 .. v18}, Lu55;-><init>(ILjava/lang/String;Ljava/lang/Long;Ljava/lang/String;ZZ)V

    .line 150
    .line 151
    .line 152
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    const v6, 0x7f130453

    .line 157
    .line 158
    .line 159
    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v15

    .line 163
    const v6, 0x7f130454

    .line 164
    .line 165
    .line 166
    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v17

    .line 170
    new-instance v13, Lu55;

    .line 171
    .line 172
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 173
    .line 174
    .line 175
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 176
    .line 177
    .line 178
    const/4 v14, 0x2

    .line 179
    const/16 v16, 0x0

    .line 180
    .line 181
    const/16 v18, 0x0

    .line 182
    .line 183
    const/16 v19, 0x0

    .line 184
    .line 185
    invoke-direct/range {v13 .. v19}, Lu55;-><init>(ILjava/lang/String;Ljava/lang/Long;Ljava/lang/String;ZZ)V

    .line 186
    .line 187
    .line 188
    const/4 v1, 0x1

    .line 189
    invoke-static {v0, v5, v1}, Lorg/swiftapps/swiftbackup/manage/ManageSpaceActivity;->N(Lorg/swiftapps/swiftbackup/manage/ManageSpaceActivity;Lry5;Z)Lu55;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    invoke-static {v0, v5, v4}, Lorg/swiftapps/swiftbackup/manage/ManageSpaceActivity;->N(Lorg/swiftapps/swiftbackup/manage/ManageSpaceActivity;Lry5;Z)Lu55;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 198
    .line 199
    .line 200
    move-result-object v4

    .line 201
    const v5, 0x7f1301e3

    .line 202
    .line 203
    .line 204
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v16

    .line 208
    const v5, 0x7f1301e4

    .line 209
    .line 210
    .line 211
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v18

    .line 215
    new-instance v14, Lu55;

    .line 216
    .line 217
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 218
    .line 219
    .line 220
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 221
    .line 222
    .line 223
    const/4 v15, 0x3

    .line 224
    const/16 v17, 0x0

    .line 225
    .line 226
    const/16 v19, 0x1

    .line 227
    .line 228
    const/16 v20, 0x0

    .line 229
    .line 230
    invoke-direct/range {v14 .. v20}, Lu55;-><init>(ILjava/lang/String;Ljava/lang/Long;Ljava/lang/String;ZZ)V

    .line 231
    .line 232
    .line 233
    filled-new-array {v12, v13, v1, v0, v14}, [Lu55;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    invoke-static {v0}, Lfl1;->C0([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    sget-object v1, Lzn4;->a:Lzn4;

    .line 242
    .line 243
    check-cast v3, Lgp3;

    .line 244
    .line 245
    new-instance v1, Lrm;

    .line 246
    .line 247
    const/16 v4, 0xd

    .line 248
    .line 249
    invoke-direct {v1, v4, v3, v0}, Lrm;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 250
    .line 251
    .line 252
    invoke-static {v1}, Lzn4;->e(Lbt3;)V

    .line 253
    .line 254
    .line 255
    return-object v2

    .line 256
    :cond_2
    const-string v0, "System.exit returned normally, while it was supposed to halt JVM."

    .line 257
    .line 258
    invoke-static {v4, v0}, Ldj7;->f(ILjava/lang/String;)Ljava/lang/RuntimeException;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    throw v0

    .line 263
    :pswitch_0
    check-cast v3, Ljava/util/List;

    .line 264
    .line 265
    invoke-static/range {p1 .. p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 266
    .line 267
    .line 268
    check-cast v0, Lqo3;

    .line 269
    .line 270
    iget-object v1, v0, Lqo3;->g:Lex6;

    .line 271
    .line 272
    sget-object v6, Lym7;->LOADING:Lym7;

    .line 273
    .line 274
    invoke-virtual {v1, v6}, Lex6;->k(Ljava/lang/Object;)V

    .line 275
    .line 276
    .line 277
    check-cast v5, Llk3;

    .line 278
    .line 279
    iget-object v5, v5, Llk3;->a:Ljava/lang/String;

    .line 280
    .line 281
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 282
    .line 283
    .line 284
    move-result v6

    .line 285
    const-string v7, "Delete backups"

    .line 286
    .line 287
    const/16 v8, 0xa

    .line 288
    .line 289
    sparse-switch v6, :sswitch_data_0

    .line 290
    .line 291
    .line 292
    goto/16 :goto_e

    .line 293
    .line 294
    :sswitch_0
    const-string v6, "Backup"

    .line 295
    .line 296
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    move-result v6

    .line 300
    if-eqz v6, :cond_12

    .line 301
    .line 302
    new-instance v4, Ljava/util/ArrayList;

    .line 303
    .line 304
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 305
    .line 306
    .line 307
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 308
    .line 309
    .line 310
    move-result-object v3

    .line 311
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 312
    .line 313
    .line 314
    move-result v6

    .line 315
    if-eqz v6, :cond_e

    .line 316
    .line 317
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v6

    .line 321
    move-object v9, v6

    .line 322
    check-cast v9, Lzk3;

    .line 323
    .line 324
    iget-object v9, v9, Lzk3;->a:Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 325
    .line 326
    invoke-virtual {v9}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getSourceFolder()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v9

    .line 330
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 331
    .line 332
    .line 333
    move-result v9

    .line 334
    if-lez v9, :cond_3

    .line 335
    .line 336
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    .line 338
    .line 339
    goto :goto_1

    .line 340
    :sswitch_1
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 341
    .line 342
    .line 343
    move-result v6

    .line 344
    if-eqz v6, :cond_12

    .line 345
    .line 346
    new-instance v4, Ljava/util/ArrayList;

    .line 347
    .line 348
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 349
    .line 350
    .line 351
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 352
    .line 353
    .line 354
    move-result-object v3

    .line 355
    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 356
    .line 357
    .line 358
    move-result v6

    .line 359
    if-eqz v6, :cond_e

    .line 360
    .line 361
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    move-result-object v6

    .line 365
    move-object v9, v6

    .line 366
    check-cast v9, Lzk3;

    .line 367
    .line 368
    iget-object v9, v9, Lzk3;->a:Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 369
    .line 370
    iget-boolean v10, v0, Lqo3;->f:Z

    .line 371
    .line 372
    invoke-virtual {v9, v10}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->hasBackup(Z)Z

    .line 373
    .line 374
    .line 375
    move-result v9

    .line 376
    if-eqz v9, :cond_4

    .line 377
    .line 378
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    .line 380
    .line 381
    goto :goto_2

    .line 382
    :sswitch_2
    const-string v6, "Restore"

    .line 383
    .line 384
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 385
    .line 386
    .line 387
    move-result v6

    .line 388
    if-eqz v6, :cond_12

    .line 389
    .line 390
    new-instance v4, Ljava/util/ArrayList;

    .line 391
    .line 392
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 393
    .line 394
    .line 395
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 396
    .line 397
    .line 398
    move-result-object v3

    .line 399
    :cond_5
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 400
    .line 401
    .line 402
    move-result v6

    .line 403
    if-eqz v6, :cond_e

    .line 404
    .line 405
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 406
    .line 407
    .line 408
    move-result-object v6

    .line 409
    move-object v9, v6

    .line 410
    check-cast v9, Lzk3;

    .line 411
    .line 412
    iget-object v9, v9, Lzk3;->a:Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 413
    .line 414
    iget-boolean v10, v0, Lqo3;->f:Z

    .line 415
    .line 416
    invoke-virtual {v9, v10}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->hasBackup(Z)Z

    .line 417
    .line 418
    .line 419
    move-result v9

    .line 420
    if-eqz v9, :cond_5

    .line 421
    .line 422
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    .line 424
    .line 425
    goto :goto_3

    .line 426
    :sswitch_3
    const-string v6, "Copy folder setups"

    .line 427
    .line 428
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 429
    .line 430
    .line 431
    move-result v6

    .line 432
    if-eqz v6, :cond_12

    .line 433
    .line 434
    new-instance v4, Ljava/util/ArrayList;

    .line 435
    .line 436
    invoke-static {v3, v8}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 437
    .line 438
    .line 439
    move-result v6

    .line 440
    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 441
    .line 442
    .line 443
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 444
    .line 445
    .line 446
    move-result-object v6

    .line 447
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 448
    .line 449
    .line 450
    move-result v9

    .line 451
    if-eqz v9, :cond_6

    .line 452
    .line 453
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 454
    .line 455
    .line 456
    move-result-object v9

    .line 457
    check-cast v9, Lzk3;

    .line 458
    .line 459
    iget-object v9, v9, Lzk3;->a:Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 460
    .line 461
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    .line 463
    .line 464
    goto :goto_4

    .line 465
    :cond_6
    sget-object v6, Lpz4;->g:Lpz4;

    .line 466
    .line 467
    invoke-virtual {v6}, Ldv;->e()Ljava/util/List;

    .line 468
    .line 469
    .line 470
    move-result-object v6

    .line 471
    new-instance v9, Ljava/util/ArrayList;

    .line 472
    .line 473
    invoke-static {v6, v8}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 474
    .line 475
    .line 476
    move-result v10

    .line 477
    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 478
    .line 479
    .line 480
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 481
    .line 482
    .line 483
    move-result-object v6

    .line 484
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 485
    .line 486
    .line 487
    move-result v10

    .line 488
    if-eqz v10, :cond_7

    .line 489
    .line 490
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 491
    .line 492
    .line 493
    move-result-object v10

    .line 494
    check-cast v10, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 495
    .line 496
    invoke-virtual {v10}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->getFolderItem()Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 497
    .line 498
    .line 499
    move-result-object v10

    .line 500
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    .line 502
    .line 503
    goto :goto_5

    .line 504
    :cond_7
    new-instance v6, Ljava/util/LinkedHashSet;

    .line 505
    .line 506
    invoke-direct {v6}, Ljava/util/LinkedHashSet;-><init>()V

    .line 507
    .line 508
    .line 509
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 510
    .line 511
    .line 512
    move-result-object v9

    .line 513
    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 514
    .line 515
    .line 516
    move-result v10

    .line 517
    if-eqz v10, :cond_8

    .line 518
    .line 519
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 520
    .line 521
    .line 522
    move-result-object v10

    .line 523
    check-cast v10, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 524
    .line 525
    invoke-virtual {v10}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getId()Ljava/lang/String;

    .line 526
    .line 527
    .line 528
    move-result-object v10

    .line 529
    invoke-interface {v6, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 530
    .line 531
    .line 532
    goto :goto_6

    .line 533
    :cond_8
    new-instance v9, Ljava/util/ArrayList;

    .line 534
    .line 535
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 536
    .line 537
    .line 538
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 539
    .line 540
    .line 541
    move-result-object v4

    .line 542
    :cond_9
    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 543
    .line 544
    .line 545
    move-result v10

    .line 546
    if-eqz v10, :cond_a

    .line 547
    .line 548
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 549
    .line 550
    .line 551
    move-result-object v10

    .line 552
    move-object v11, v10

    .line 553
    check-cast v11, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 554
    .line 555
    invoke-virtual {v11}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getId()Ljava/lang/String;

    .line 556
    .line 557
    .line 558
    move-result-object v11

    .line 559
    invoke-interface {v6, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 560
    .line 561
    .line 562
    move-result v11

    .line 563
    if-nez v11, :cond_9

    .line 564
    .line 565
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 566
    .line 567
    .line 568
    goto :goto_7

    .line 569
    :cond_a
    new-instance v4, Ljava/util/LinkedHashSet;

    .line 570
    .line 571
    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    .line 572
    .line 573
    .line 574
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 575
    .line 576
    .line 577
    move-result-object v6

    .line 578
    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 579
    .line 580
    .line 581
    move-result v9

    .line 582
    if-eqz v9, :cond_b

    .line 583
    .line 584
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 585
    .line 586
    .line 587
    move-result-object v9

    .line 588
    check-cast v9, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 589
    .line 590
    invoke-virtual {v9}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getId()Ljava/lang/String;

    .line 591
    .line 592
    .line 593
    move-result-object v9

    .line 594
    invoke-interface {v4, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 595
    .line 596
    .line 597
    goto :goto_8

    .line 598
    :cond_b
    new-instance v6, Ljava/util/ArrayList;

    .line 599
    .line 600
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 601
    .line 602
    .line 603
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 604
    .line 605
    .line 606
    move-result-object v3

    .line 607
    :cond_c
    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 608
    .line 609
    .line 610
    move-result v9

    .line 611
    if-eqz v9, :cond_d

    .line 612
    .line 613
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 614
    .line 615
    .line 616
    move-result-object v9

    .line 617
    move-object v10, v9

    .line 618
    check-cast v10, Lzk3;

    .line 619
    .line 620
    iget-object v10, v10, Lzk3;->a:Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 621
    .line 622
    invoke-virtual {v10}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getId()Ljava/lang/String;

    .line 623
    .line 624
    .line 625
    move-result-object v10

    .line 626
    invoke-interface {v4, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 627
    .line 628
    .line 629
    move-result v10

    .line 630
    if-eqz v10, :cond_c

    .line 631
    .line 632
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 633
    .line 634
    .line 635
    goto :goto_9

    .line 636
    :cond_d
    move-object v4, v6

    .line 637
    :cond_e
    invoke-static {v4}, Lzm5;->C(Ljava/util/List;)Ljava/util/List;

    .line 638
    .line 639
    .line 640
    move-result-object v10

    .line 641
    invoke-static {v5, v7}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 642
    .line 643
    .line 644
    move-result v3

    .line 645
    if-eqz v3, :cond_f

    .line 646
    .line 647
    sget-object v3, Lsv2;->a:Lsv2;

    .line 648
    .line 649
    :goto_a
    move-object v11, v3

    .line 650
    goto :goto_c

    .line 651
    :cond_f
    new-instance v3, Ljava/util/ArrayList;

    .line 652
    .line 653
    invoke-static {v10, v8}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 654
    .line 655
    .line 656
    move-result v4

    .line 657
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 658
    .line 659
    .line 660
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 661
    .line 662
    .line 663
    move-result-object v4

    .line 664
    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 665
    .line 666
    .line 667
    move-result v5

    .line 668
    if-eqz v5, :cond_10

    .line 669
    .line 670
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 671
    .line 672
    .line 673
    move-result-object v5

    .line 674
    check-cast v5, Lzk3;

    .line 675
    .line 676
    iget-object v5, v5, Lzk3;->a:Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 677
    .line 678
    invoke-virtual {v5}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getId()Ljava/lang/String;

    .line 679
    .line 680
    .line 681
    move-result-object v5

    .line 682
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 683
    .line 684
    .line 685
    goto :goto_b

    .line 686
    :cond_10
    invoke-static {v3}, Lel1;->z1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 687
    .line 688
    .line 689
    move-result-object v3

    .line 690
    goto :goto_a

    .line 691
    :goto_c
    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    .line 692
    .line 693
    .line 694
    move-result v3

    .line 695
    if-nez v3, :cond_11

    .line 696
    .line 697
    sget-object v3, Lym7;->DATA_RECEIVED:Lym7;

    .line 698
    .line 699
    goto :goto_d

    .line 700
    :cond_11
    sget-object v3, Lym7;->DATA_EMPTY:Lym7;

    .line 701
    .line 702
    :goto_d
    invoke-virtual {v1, v3}, Lex6;->k(Ljava/lang/Object;)V

    .line 703
    .line 704
    .line 705
    iget-object v0, v0, Lqo3;->h:Lex6;

    .line 706
    .line 707
    new-instance v9, Lfm7;

    .line 708
    .line 709
    const/4 v13, 0x0

    .line 710
    const/16 v14, 0x14

    .line 711
    .line 712
    const/4 v12, 0x1

    .line 713
    invoke-direct/range {v9 .. v14}, Lfm7;-><init>(Ljava/util/List;Ljava/util/Set;ZLjava/lang/String;I)V

    .line 714
    .line 715
    .line 716
    invoke-virtual {v0, v9}, Lex6;->k(Ljava/lang/Object;)V

    .line 717
    .line 718
    .line 719
    goto :goto_f

    .line 720
    :cond_12
    :goto_e
    const-string v0, "loadFoldersForBatchAction not implemented for "

    .line 721
    .line 722
    invoke-static {v0, v5}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 723
    .line 724
    .line 725
    move-result-object v0

    .line 726
    invoke-static {v0}, Ll0;->e(Ljava/lang/String;)V

    .line 727
    .line 728
    .line 729
    move-object v2, v4

    .line 730
    :goto_f
    return-object v2

    .line 731
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    :sswitch_data_0
    .sparse-switch
        -0x6c73e7c3 -> :sswitch_3
        -0x5b5c9592 -> :sswitch_2
        0x2d82559c -> :sswitch_1
        0x762561e2 -> :sswitch_0
    .end sparse-switch
.end method
