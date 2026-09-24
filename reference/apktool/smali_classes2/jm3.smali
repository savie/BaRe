.class public final synthetic Ljm3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/swiftapps/swiftbackup/folders/ui/FolderEditActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/swiftapps/swiftbackup/folders/ui/FolderEditActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Ljm3;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Ljm3;->b:Lorg/swiftapps/swiftbackup/folders/ui/FolderEditActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Ljm3;->a:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object v0, v0, Ljm3;->b:Lorg/swiftapps/swiftbackup/folders/ui/FolderEditActivity;

    .line 7
    .line 8
    packed-switch v1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    sget v1, Lorg/swiftapps/swiftbackup/folders/ui/FolderEditActivity;->h0:I

    .line 12
    .line 13
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/folders/ui/FolderEditActivity;->a0()Llm3;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object v1, v1, Llm3;->g:Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 18
    .line 19
    if-eqz v1, :cond_d

    .line 20
    .line 21
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->isValid()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    const/4 v4, 0x0

    .line 26
    if-eqz v3, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move-object v1, v4

    .line 30
    :goto_0
    if-nez v1, :cond_1

    .line 31
    .line 32
    goto/16 :goto_6

    .line 33
    .line 34
    :cond_1
    iget-boolean v3, v0, Lorg/swiftapps/swiftbackup/folders/ui/FolderEditActivity;->g0:Z

    .line 35
    .line 36
    const/4 v5, 0x1

    .line 37
    const/4 v6, -0x1

    .line 38
    const-string v7, "saveLocalItemFromCloud"

    .line 39
    .line 40
    const-string v8, "extra_folder_item"

    .line 41
    .line 42
    if-nez v3, :cond_6

    .line 43
    .line 44
    sget-object v3, Lpz4;->g:Lpz4;

    .line 45
    .line 46
    invoke-virtual {v3}, Ldv;->c()Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v9

    .line 58
    if-eqz v9, :cond_3

    .line 59
    .line 60
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v9

    .line 64
    move-object v10, v9

    .line 65
    check-cast v10, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 66
    .line 67
    invoke-virtual {v10}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->getFolderItem()Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 68
    .line 69
    .line 70
    move-result-object v10

    .line 71
    invoke-virtual {v10}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getSourceFolder()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v10

    .line 75
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getSourceFolder()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v11

    .line 79
    invoke-static {v10, v11}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v10

    .line 83
    if-eqz v10, :cond_2

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_3
    move-object v9, v4

    .line 87
    :goto_1
    check-cast v9, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 88
    .line 89
    sget-object v3, Lsf1;->g:Lsf1;

    .line 90
    .line 91
    invoke-virtual {v3}, Ldv;->c()Ljava/util/List;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 100
    .line 101
    .line 102
    move-result v10

    .line 103
    if-eqz v10, :cond_5

    .line 104
    .line 105
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v10

    .line 109
    move-object v11, v10

    .line 110
    check-cast v11, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 111
    .line 112
    invoke-virtual {v11}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->getFolderItem()Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 113
    .line 114
    .line 115
    move-result-object v11

    .line 116
    invoke-virtual {v11}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getSourceFolder()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v11

    .line 120
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getSourceFolder()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v12

    .line 124
    invoke-static {v11, v12}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v11

    .line 128
    if-eqz v11, :cond_4

    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_5
    move-object v10, v4

    .line 132
    :goto_2
    check-cast v10, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 133
    .line 134
    if-nez v9, :cond_6

    .line 135
    .line 136
    if-eqz v10, :cond_6

    .line 137
    .line 138
    invoke-virtual {v10}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->getFolderItem()Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 139
    .line 140
    .line 141
    move-result-object v11

    .line 142
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getDisplayName()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v13

    .line 146
    const/16 v17, 0xd

    .line 147
    .line 148
    const/16 v18, 0x0

    .line 149
    .line 150
    const/4 v12, 0x0

    .line 151
    const/4 v14, 0x0

    .line 152
    const-wide/16 v15, 0x0

    .line 153
    .line 154
    invoke-static/range {v11 .. v18}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->copy$default(Lorg/swiftapps/swiftbackup/folders/data/FolderItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JILjava/lang/Object;)Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    new-instance v2, Landroid/content/Intent;

    .line 159
    .line 160
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v2, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    invoke-virtual {v1, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0, v6, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 178
    .line 179
    .line 180
    goto/16 :goto_6

    .line 181
    .line 182
    :cond_6
    sget-object v3, Lpz4;->g:Lpz4;

    .line 183
    .line 184
    invoke-virtual {v3}, Ldv;->c()Ljava/util/List;

    .line 185
    .line 186
    .line 187
    move-result-object v3

    .line 188
    new-instance v9, Ljava/util/ArrayList;

    .line 189
    .line 190
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 191
    .line 192
    .line 193
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 194
    .line 195
    .line 196
    move-result-object v3

    .line 197
    :cond_7
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 198
    .line 199
    .line 200
    move-result v10

    .line 201
    if-eqz v10, :cond_8

    .line 202
    .line 203
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v10

    .line 207
    move-object v11, v10

    .line 208
    check-cast v11, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 209
    .line 210
    invoke-virtual {v11}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->component1()Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 211
    .line 212
    .line 213
    move-result-object v11

    .line 214
    invoke-virtual {v11}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getId()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v12

    .line 218
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getId()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v13

    .line 222
    invoke-static {v12, v13}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    move-result v12

    .line 226
    if-nez v12, :cond_7

    .line 227
    .line 228
    invoke-virtual {v11}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getDisplayName()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v11

    .line 232
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getDisplayName()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v12

    .line 236
    invoke-static {v11, v12}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    move-result v11

    .line 240
    if-eqz v11, :cond_7

    .line 241
    .line 242
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    goto :goto_3

    .line 246
    :cond_8
    sget-object v3, Lsf1;->g:Lsf1;

    .line 247
    .line 248
    invoke-virtual {v3}, Ldv;->c()Ljava/util/List;

    .line 249
    .line 250
    .line 251
    move-result-object v3

    .line 252
    new-instance v10, Ljava/util/ArrayList;

    .line 253
    .line 254
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 255
    .line 256
    .line 257
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 258
    .line 259
    .line 260
    move-result-object v3

    .line 261
    :cond_9
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 262
    .line 263
    .line 264
    move-result v11

    .line 265
    if-eqz v11, :cond_a

    .line 266
    .line 267
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v11

    .line 271
    move-object v12, v11

    .line 272
    check-cast v12, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 273
    .line 274
    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->component1()Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 275
    .line 276
    .line 277
    move-result-object v12

    .line 278
    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getId()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v13

    .line 282
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getId()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v14

    .line 286
    invoke-static {v13, v14}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 287
    .line 288
    .line 289
    move-result v13

    .line 290
    if-nez v13, :cond_9

    .line 291
    .line 292
    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getDisplayName()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v12

    .line 296
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getDisplayName()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v13

    .line 300
    invoke-static {v12, v13}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    move-result v12

    .line 304
    if-eqz v12, :cond_9

    .line 305
    .line 306
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    .line 308
    .line 309
    goto :goto_4

    .line 310
    :cond_a
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    .line 311
    .line 312
    .line 313
    move-result v3

    .line 314
    if-eqz v3, :cond_c

    .line 315
    .line 316
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    .line 317
    .line 318
    .line 319
    move-result v3

    .line 320
    if-nez v3, :cond_b

    .line 321
    .line 322
    goto :goto_5

    .line 323
    :cond_b
    new-instance v3, Landroid/content/Intent;

    .line 324
    .line 325
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 326
    .line 327
    .line 328
    invoke-virtual {v3, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 329
    .line 330
    .line 331
    move-result-object v1

    .line 332
    invoke-virtual {v1, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 333
    .line 334
    .line 335
    move-result-object v1

    .line 336
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 337
    .line 338
    .line 339
    invoke-virtual {v0, v6, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 343
    .line 344
    .line 345
    goto :goto_6

    .line 346
    :cond_c
    :goto_5
    new-instance v2, Lhv1;

    .line 347
    .line 348
    const v3, 0x7f140160

    .line 349
    .line 350
    .line 351
    invoke-direct {v2, v0, v3}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 352
    .line 353
    .line 354
    new-instance v6, Ls35;

    .line 355
    .line 356
    invoke-direct {v6, v0, v3, v2, v4}, Ls35;-><init>(Lio1;ILhv1;Ljava/lang/Float;)V

    .line 357
    .line 358
    .line 359
    const v2, 0x7f13026f

    .line 360
    .line 361
    .line 362
    invoke-virtual {v6, v2}, Lv75;->v(I)V

    .line 363
    .line 364
    .line 365
    const v2, 0x7f13026e

    .line 366
    .line 367
    .line 368
    invoke-virtual {v6, v2}, Lv75;->n(I)V

    .line 369
    .line 370
    .line 371
    new-instance v2, Lb52;

    .line 372
    .line 373
    invoke-direct {v2, v5, v1, v0}, Lb52;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 374
    .line 375
    .line 376
    const v0, 0x7f1301bc

    .line 377
    .line 378
    .line 379
    invoke-virtual {v6, v0, v2}, Lv75;->s(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 380
    .line 381
    .line 382
    const v0, 0x7f130084

    .line 383
    .line 384
    .line 385
    invoke-virtual {v6, v0, v4}, Lv75;->q(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {v6}, Ls35;->m()Lwa;

    .line 389
    .line 390
    .line 391
    :cond_d
    :goto_6
    return-void

    .line 392
    :pswitch_0
    sget v1, Lorg/swiftapps/swiftbackup/folders/ui/FolderEditActivity;->h0:I

    .line 393
    .line 394
    invoke-virtual {v0, v2}, Landroid/app/Activity;->setResult(I)V

    .line 395
    .line 396
    .line 397
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 398
    .line 399
    .line 400
    return-void

    .line 401
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
