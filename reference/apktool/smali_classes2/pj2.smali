.class public final Lpj2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lorg/swiftapps/swiftbackup/detail/DetailActivity;

.field public final b:Lmk2;

.field public final c:Landroid/widget/TextView;

.field public final d:Landroid/widget/TextView;

.field public final e:Lw00;

.field public final f:Lgm1;

.field public final g:Lzx2;

.field public final h:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

.field public final i:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final j:Ltj2;

.field public final k:Lcom/google/android/material/button/MaterialButton;

.field public final l:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lorg/swiftapps/swiftbackup/detail/DetailActivity;Lej2;Lmk2;)V
    .locals 1

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lpj2;->a:Lorg/swiftapps/swiftbackup/detail/DetailActivity;

    .line 8
    .line 9
    iput-object p3, p0, Lpj2;->b:Lmk2;

    .line 10
    .line 11
    iget-object p1, p2, Lej2;->r:Landroid/widget/TextView;

    .line 12
    .line 13
    iput-object p1, p0, Lpj2;->c:Landroid/widget/TextView;

    .line 14
    .line 15
    iget-object p1, p2, Lej2;->q:Landroid/widget/TextView;

    .line 16
    .line 17
    iput-object p1, p0, Lpj2;->d:Landroid/widget/TextView;

    .line 18
    .line 19
    new-instance p1, Lw00;

    .line 20
    .line 21
    iget-object p3, p2, Lej2;->f:Loe;

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    invoke-direct {p1, p3, v0}, Lw00;-><init>(Loe;B)V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lpj2;->e:Lw00;

    .line 28
    .line 29
    new-instance p1, Lgm1;

    .line 30
    .line 31
    iget-object p3, p2, Lej2;->p:Lcom/google/android/material/tabs/TabLayout;

    .line 32
    .line 33
    invoke-direct {p1, p3}, Lgm1;-><init>(Lcom/google/android/material/tabs/TabLayout;)V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Lpj2;->f:Lgm1;

    .line 37
    .line 38
    iget-object p1, p2, Lej2;->c:Lzx2;

    .line 39
    .line 40
    iput-object p1, p0, Lpj2;->g:Lzx2;

    .line 41
    .line 42
    iget-object p1, p2, Lej2;->k:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 43
    .line 44
    iput-object p1, p0, Lpj2;->h:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 45
    .line 46
    iget-object p1, p2, Lej2;->e:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 47
    .line 48
    iput-object p1, p0, Lpj2;->i:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 49
    .line 50
    iget-object p1, p2, Lej2;->n:Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 51
    .line 52
    invoke-static {p1}, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->a0(Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;)Ltj2;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iput-object p1, p0, Lpj2;->j:Ltj2;

    .line 57
    .line 58
    iget-object p1, p2, Lej2;->b:Lcom/google/android/material/button/MaterialButton;

    .line 59
    .line 60
    iput-object p1, p0, Lpj2;->k:Lcom/google/android/material/button/MaterialButton;

    .line 61
    .line 62
    iget-object p1, p2, Lej2;->d:Landroid/widget/ImageView;

    .line 63
    .line 64
    iput-object p1, p0, Lpj2;->l:Landroid/widget/ImageView;

    .line 65
    .line 66
    return-void
.end method


# virtual methods
.method public final a(Lyj2;Ljava/lang/String;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v1, Lyj2;->a:Lxj2;

    .line 6
    .line 7
    sget-object v3, Loj2;->a:[I

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    aget v2, v3, v2

    .line 14
    .line 15
    iget-object v3, v0, Lpj2;->i:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 16
    .line 17
    iget-object v4, v0, Lpj2;->h:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 18
    .line 19
    const/4 v5, 0x0

    .line 20
    iget-object v6, v0, Lpj2;->g:Lzx2;

    .line 21
    .line 22
    const/4 v7, 0x1

    .line 23
    if-eq v2, v7, :cond_10

    .line 24
    .line 25
    const/4 v8, 0x2

    .line 26
    const/16 v9, 0x8

    .line 27
    .line 28
    if-eq v2, v8, :cond_f

    .line 29
    .line 30
    const/4 v8, 0x3

    .line 31
    const/4 v10, 0x4

    .line 32
    if-eq v2, v8, :cond_e

    .line 33
    .line 34
    if-eq v2, v10, :cond_d

    .line 35
    .line 36
    const/4 v11, 0x5

    .line 37
    if-ne v2, v11, :cond_c

    .line 38
    .line 39
    invoke-static {v4}, Lsz8;->W(Landroid/view/View;)V

    .line 40
    .line 41
    .line 42
    invoke-static {v3}, Lsz8;->c0(Landroid/view/View;)V

    .line 43
    .line 44
    .line 45
    iget-object v2, v6, Lzx2;->a:Landroid/widget/LinearLayout;

    .line 46
    .line 47
    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 48
    .line 49
    .line 50
    iget-object v1, v1, Lyj2;->b:Ljava/util/List;

    .line 51
    .line 52
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_1

    .line 61
    .line 62
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    move-object v3, v2

    .line 67
    check-cast v3, Lwj2;

    .line 68
    .line 69
    iget-object v3, v3, Lwj2;->a:Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;

    .line 70
    .line 71
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->getBackupId()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    move-object/from16 v4, p2

    .line 76
    .line 77
    invoke-static {v3, v4}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    if-eqz v3, :cond_0

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_1
    const/4 v2, 0x0

    .line 85
    :goto_0
    check-cast v2, Lwj2;

    .line 86
    .line 87
    if-nez v2, :cond_2

    .line 88
    .line 89
    return-void

    .line 90
    :cond_2
    iget-object v1, v0, Lpj2;->d:Landroid/widget/TextView;

    .line 91
    .line 92
    iget-object v3, v2, Lwj2;->p:Ljava/lang/String;

    .line 93
    .line 94
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    .line 96
    .line 97
    iget-object v1, v2, Lwj2;->a:Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;

    .line 98
    .line 99
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->getMetadata()Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getNote()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    iget-object v3, v0, Lpj2;->e:Lw00;

    .line 108
    .line 109
    if-eqz v1, :cond_4

    .line 110
    .line 111
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    if-nez v4, :cond_3

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_3
    invoke-virtual {v3, v7}, Lw00;->w(Z)V

    .line 119
    .line 120
    .line 121
    iget-object v4, v3, Lw00;->c:Ljava/lang/Object;

    .line 122
    .line 123
    check-cast v4, Landroid/widget/TextView;

    .line 124
    .line 125
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    .line 127
    .line 128
    iget-object v3, v3, Lw00;->b:Ljava/lang/Object;

    .line 129
    .line 130
    check-cast v3, Loe;

    .line 131
    .line 132
    iget-object v3, v3, Loe;->b:Ljava/lang/Object;

    .line 133
    .line 134
    check-cast v3, Lcom/google/android/material/card/MaterialCardView;

    .line 135
    .line 136
    new-instance v4, Lmj2;

    .line 137
    .line 138
    invoke-direct {v4, v5, v0, v1, v2}, Lmj2;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_4
    :goto_1
    invoke-virtual {v3, v5}, Lw00;->w(Z)V

    .line 146
    .line 147
    .line 148
    :goto_2
    new-instance v12, Ljava/util/ArrayList;

    .line 149
    .line 150
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .line 152
    .line 153
    iget-object v1, v2, Lwj2;->b:Ljava/lang/String;

    .line 154
    .line 155
    if-eqz v1, :cond_7

    .line 156
    .line 157
    new-instance v3, Luj2;

    .line 158
    .line 159
    sget-object v4, Liu;->APP:Liu;

    .line 160
    .line 161
    invoke-virtual {v4}, Liu;->getIconRes()I

    .line 162
    .line 163
    .line 164
    move-result v4

    .line 165
    iget-boolean v6, v2, Lwj2;->c:Z

    .line 166
    .line 167
    if-nez v6, :cond_6

    .line 168
    .line 169
    iget-boolean v6, v2, Lwj2;->d:Z

    .line 170
    .line 171
    if-eqz v6, :cond_5

    .line 172
    .line 173
    goto :goto_3

    .line 174
    :cond_5
    const-string v6, "APK"

    .line 175
    .line 176
    goto :goto_4

    .line 177
    :cond_6
    :goto_3
    const-string v6, "APKs"

    .line 178
    .line 179
    :goto_4
    new-instance v9, Leh2;

    .line 180
    .line 181
    invoke-direct {v9, v7, v0, v2}, Leh2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    invoke-direct {v3, v4, v6, v1, v9}, Luj2;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Lmt3;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    :cond_7
    iget-object v1, v2, Lwj2;->e:Ljava/lang/CharSequence;

    .line 191
    .line 192
    iget-object v3, v0, Lpj2;->a:Lorg/swiftapps/swiftbackup/detail/DetailActivity;

    .line 193
    .line 194
    if-eqz v1, :cond_8

    .line 195
    .line 196
    new-instance v4, Luj2;

    .line 197
    .line 198
    sget-object v6, Liu;->DATA:Liu;

    .line 199
    .line 200
    invoke-virtual {v6}, Liu;->getIconRes()I

    .line 201
    .line 202
    .line 203
    move-result v6

    .line 204
    const v9, 0x7f1301d8

    .line 205
    .line 206
    .line 207
    invoke-virtual {v3, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v9

    .line 211
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 212
    .line 213
    .line 214
    new-instance v11, Lnj2;

    .line 215
    .line 216
    invoke-direct {v11, v5, v0, v2}, Lnj2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 217
    .line 218
    .line 219
    invoke-direct {v4, v6, v9, v1, v11}, Luj2;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Lmt3;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    :cond_8
    iget-object v1, v2, Lwj2;->h:Ljava/lang/String;

    .line 226
    .line 227
    if-eqz v1, :cond_9

    .line 228
    .line 229
    new-instance v4, Luj2;

    .line 230
    .line 231
    sget-object v6, Liu;->EXTDATA:Liu;

    .line 232
    .line 233
    invoke-virtual {v6}, Liu;->getIconRes()I

    .line 234
    .line 235
    .line 236
    move-result v6

    .line 237
    const v9, 0x7f13022f

    .line 238
    .line 239
    .line 240
    invoke-virtual {v3, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v9

    .line 244
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 245
    .line 246
    .line 247
    new-instance v11, Ljj2;

    .line 248
    .line 249
    invoke-direct {v11, v7, v0, v2}, Ljj2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 250
    .line 251
    .line 252
    invoke-direct {v4, v6, v9, v1, v11}, Luj2;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Lmt3;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    :cond_9
    iget-object v1, v2, Lwj2;->n:Ljava/lang/String;

    .line 259
    .line 260
    if-eqz v1, :cond_a

    .line 261
    .line 262
    new-instance v4, Luj2;

    .line 263
    .line 264
    sget-object v6, Liu;->EXPANSION:Liu;

    .line 265
    .line 266
    invoke-virtual {v6}, Liu;->getIconRes()I

    .line 267
    .line 268
    .line 269
    move-result v6

    .line 270
    const v9, 0x7f13022a

    .line 271
    .line 272
    .line 273
    invoke-virtual {v3, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v9

    .line 277
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 278
    .line 279
    .line 280
    new-instance v11, Lkj2;

    .line 281
    .line 282
    invoke-direct {v11, v0, v2, v7}, Lkj2;-><init>(Lpj2;Lwj2;I)V

    .line 283
    .line 284
    .line 285
    invoke-direct {v4, v6, v9, v1, v11}, Luj2;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Lmt3;)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    .line 290
    .line 291
    :cond_a
    iget-object v1, v2, Lwj2;->k:Ljava/lang/String;

    .line 292
    .line 293
    if-eqz v1, :cond_b

    .line 294
    .line 295
    new-instance v4, Luj2;

    .line 296
    .line 297
    sget-object v6, Liu;->MEDIA:Liu;

    .line 298
    .line 299
    invoke-virtual {v6}, Liu;->getIconRes()I

    .line 300
    .line 301
    .line 302
    move-result v6

    .line 303
    const v9, 0x7f130346

    .line 304
    .line 305
    .line 306
    invoke-virtual {v3, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v3

    .line 310
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 311
    .line 312
    .line 313
    new-instance v9, Lkj2;

    .line 314
    .line 315
    invoke-direct {v9, v0, v2, v5}, Lkj2;-><init>(Lpj2;Lwj2;I)V

    .line 316
    .line 317
    .line 318
    invoke-direct {v4, v6, v3, v1, v9}, Luj2;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Lmt3;)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    .line 323
    .line 324
    :cond_b
    new-instance v11, Lfm7;

    .line 325
    .line 326
    const/4 v15, 0x0

    .line 327
    const/16 v16, 0x1e

    .line 328
    .line 329
    const/4 v13, 0x0

    .line 330
    const/4 v14, 0x0

    .line 331
    invoke-direct/range {v11 .. v16}, Lfm7;-><init>(Ljava/util/List;Ljava/util/Set;ZLjava/lang/String;I)V

    .line 332
    .line 333
    .line 334
    iget-object v1, v0, Lpj2;->j:Ltj2;

    .line 335
    .line 336
    invoke-virtual {v1, v11, v7}, Lgm7;->w(Lfm7;Z)V

    .line 337
    .line 338
    .line 339
    new-instance v1, Lt20;

    .line 340
    .line 341
    invoke-direct {v1, v8, v0, v2}, Lt20;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 342
    .line 343
    .line 344
    iget-object v3, v0, Lpj2;->k:Lcom/google/android/material/button/MaterialButton;

    .line 345
    .line 346
    invoke-virtual {v3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 347
    .line 348
    .line 349
    new-instance v1, Luf1;

    .line 350
    .line 351
    invoke-direct {v1, v10, v0, v2}, Luf1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 352
    .line 353
    .line 354
    iget-object v0, v0, Lpj2;->l:Landroid/widget/ImageView;

    .line 355
    .line 356
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 357
    .line 358
    .line 359
    return-void

    .line 360
    :cond_c
    invoke-static {}, Lq;->j()V

    .line 361
    .line 362
    .line 363
    return-void

    .line 364
    :cond_d
    invoke-static {v4}, Lsz8;->W(Landroid/view/View;)V

    .line 365
    .line 366
    .line 367
    invoke-static {v3}, Lsz8;->W(Landroid/view/View;)V

    .line 368
    .line 369
    .line 370
    iget-object v1, v6, Lzx2;->a:Landroid/widget/LinearLayout;

    .line 371
    .line 372
    iget-object v2, v6, Lzx2;->b:Lcom/google/android/material/button/MaterialButton;

    .line 373
    .line 374
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 375
    .line 376
    .line 377
    iget-object v1, v6, Lzx2;->d:Landroid/widget/ImageView;

    .line 378
    .line 379
    const v3, 0x7f080213

    .line 380
    .line 381
    .line 382
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 383
    .line 384
    .line 385
    iget-object v1, v6, Lzx2;->e:Landroid/widget/TextView;

    .line 386
    .line 387
    const v3, 0x7f1303c8

    .line 388
    .line 389
    .line 390
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 391
    .line 392
    .line 393
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 394
    .line 395
    .line 396
    const v1, 0x7f13049a

    .line 397
    .line 398
    .line 399
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 400
    .line 401
    .line 402
    new-instance v1, Lgs;

    .line 403
    .line 404
    invoke-direct {v1, v0, v10}, Lgs;-><init>(Ljava/lang/Object;I)V

    .line 405
    .line 406
    .line 407
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 408
    .line 409
    .line 410
    return-void

    .line 411
    :cond_e
    invoke-static {v4}, Lsz8;->W(Landroid/view/View;)V

    .line 412
    .line 413
    .line 414
    invoke-static {v3}, Lsz8;->W(Landroid/view/View;)V

    .line 415
    .line 416
    .line 417
    iget-object v1, v6, Lzx2;->a:Landroid/widget/LinearLayout;

    .line 418
    .line 419
    iget-object v2, v6, Lzx2;->b:Lcom/google/android/material/button/MaterialButton;

    .line 420
    .line 421
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 422
    .line 423
    .line 424
    iget-object v1, v6, Lzx2;->d:Landroid/widget/ImageView;

    .line 425
    .line 426
    const v3, 0x7f080117

    .line 427
    .line 428
    .line 429
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 430
    .line 431
    .line 432
    iget-object v1, v6, Lzx2;->e:Landroid/widget/TextView;

    .line 433
    .line 434
    const v3, 0x7f13016d

    .line 435
    .line 436
    .line 437
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 438
    .line 439
    .line 440
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 441
    .line 442
    .line 443
    const v1, 0x7f1301b4

    .line 444
    .line 445
    .line 446
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 447
    .line 448
    .line 449
    new-instance v1, Lxd1;

    .line 450
    .line 451
    invoke-direct {v1, v0, v10}, Lxd1;-><init>(Ljava/lang/Object;I)V

    .line 452
    .line 453
    .line 454
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 455
    .line 456
    .line 457
    return-void

    .line 458
    :cond_f
    invoke-static {v4}, Lsz8;->W(Landroid/view/View;)V

    .line 459
    .line 460
    .line 461
    invoke-static {v3}, Lsz8;->W(Landroid/view/View;)V

    .line 462
    .line 463
    .line 464
    iget-object v0, v6, Lzx2;->a:Landroid/widget/LinearLayout;

    .line 465
    .line 466
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 467
    .line 468
    .line 469
    iget-object v0, v6, Lzx2;->d:Landroid/widget/ImageView;

    .line 470
    .line 471
    const v1, 0x7f080114

    .line 472
    .line 473
    .line 474
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 475
    .line 476
    .line 477
    iget-object v0, v6, Lzx2;->e:Landroid/widget/TextView;

    .line 478
    .line 479
    const v1, 0x7f1303bd

    .line 480
    .line 481
    .line 482
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 483
    .line 484
    .line 485
    iget-object v0, v6, Lzx2;->b:Lcom/google/android/material/button/MaterialButton;

    .line 486
    .line 487
    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 488
    .line 489
    .line 490
    return-void

    .line 491
    :cond_10
    invoke-static {v4}, Lsz8;->c0(Landroid/view/View;)V

    .line 492
    .line 493
    .line 494
    invoke-static {v3}, Lsz8;->W(Landroid/view/View;)V

    .line 495
    .line 496
    .line 497
    iget-object v0, v6, Lzx2;->a:Landroid/widget/LinearLayout;

    .line 498
    .line 499
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 500
    .line 501
    .line 502
    return-void
.end method
