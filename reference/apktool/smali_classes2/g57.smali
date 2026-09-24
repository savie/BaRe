.class public abstract Lg57;
.super Lfh6;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final A:Lcom/google/android/material/button/MaterialButton;

.field public final B:Landroid/view/View;

.field public final C:Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

.field public final D:Lkb2;

.field public final E:Lkb2;

.field public final synthetic F:Lj57;

.field public final u:Landroid/widget/ImageView;

.field public final v:Landroid/widget/ImageView;

.field public final w:Landroid/widget/TextView;

.field public final x:Landroid/widget/TextView;

.field public final y:Landroid/widget/TextView;

.field public final z:Lcom/google/android/material/button/MaterialButton;


# direct methods
.method public constructor <init>(Lj57;Lz27;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg57;->F:Lj57;

    .line 2
    .line 3
    iget-object p1, p2, Lz27;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lfh6;-><init>(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p2, Lz27;->e:Landroid/widget/ImageView;

    .line 9
    .line 10
    iput-object p1, p0, Lg57;->u:Landroid/widget/ImageView;

    .line 11
    .line 12
    iget-object p1, p2, Lz27;->d:Landroid/widget/ImageView;

    .line 13
    .line 14
    iput-object p1, p0, Lg57;->v:Landroid/widget/ImageView;

    .line 15
    .line 16
    iget-object p1, p2, Lz27;->r:Landroid/widget/TextView;

    .line 17
    .line 18
    iput-object p1, p0, Lg57;->w:Landroid/widget/TextView;

    .line 19
    .line 20
    iget-object p1, p2, Lz27;->q:Landroid/widget/TextView;

    .line 21
    .line 22
    iput-object p1, p0, Lg57;->x:Landroid/widget/TextView;

    .line 23
    .line 24
    iget-object p1, p2, Lz27;->p:Landroid/widget/TextView;

    .line 25
    .line 26
    iput-object p1, p0, Lg57;->y:Landroid/widget/TextView;

    .line 27
    .line 28
    iget-object p1, p2, Lz27;->c:Lcom/google/android/material/button/MaterialButton;

    .line 29
    .line 30
    iput-object p1, p0, Lg57;->z:Lcom/google/android/material/button/MaterialButton;

    .line 31
    .line 32
    iget-object p1, p2, Lz27;->b:Lcom/google/android/material/button/MaterialButton;

    .line 33
    .line 34
    iput-object p1, p0, Lg57;->A:Lcom/google/android/material/button/MaterialButton;

    .line 35
    .line 36
    iget-object p1, p2, Lz27;->n:Landroid/view/View;

    .line 37
    .line 38
    iput-object p1, p0, Lg57;->B:Landroid/view/View;

    .line 39
    .line 40
    iget-object p1, p2, Lz27;->k:Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 41
    .line 42
    iput-object p1, p0, Lg57;->C:Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 43
    .line 44
    iget-object p1, p2, Lz27;->f:Lkb2;

    .line 45
    .line 46
    iput-object p1, p0, Lg57;->D:Lkb2;

    .line 47
    .line 48
    iput-object p1, p0, Lg57;->E:Lkb2;

    .line 49
    .line 50
    return-void
.end method


# virtual methods
.method public abstract r(Lorg/swiftapps/swiftbackup/home/schedule/data/b;)V
.end method

.method public final s(Lorg/swiftapps/swiftbackup/home/schedule/data/b;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object v3, v1, Lorg/swiftapps/swiftbackup/home/schedule/data/b;->n:Ljava/util/List;

    .line 9
    .line 10
    iget-boolean v8, v1, Lorg/swiftapps/swiftbackup/home/schedule/data/b;->k:Z

    .line 11
    .line 12
    iget-object v9, v1, Lorg/swiftapps/swiftbackup/home/schedule/data/b;->f:Ljava/lang/CharSequence;

    .line 13
    .line 14
    iget-object v2, v1, Lorg/swiftapps/swiftbackup/home/schedule/data/b;->b:Ljava/lang/String;

    .line 15
    .line 16
    iget-boolean v10, v1, Lorg/swiftapps/swiftbackup/home/schedule/data/b;->d:Z

    .line 17
    .line 18
    invoke-virtual {v0}, Lfh6;->b()I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    const/4 v6, 0x0

    .line 27
    const/4 v7, -0x1

    .line 28
    if-eq v4, v7, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move-object v5, v6

    .line 32
    :goto_0
    if-eqz v5, :cond_1

    .line 33
    .line 34
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    iget-object v4, v0, Lfh6;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 40
    .line 41
    if-nez v4, :cond_2

    .line 42
    .line 43
    move v4, v7

    .line 44
    goto :goto_1

    .line 45
    :cond_2
    invoke-virtual {v4, v0}, Landroidx/recyclerview/widget/RecyclerView;->I(Lfh6;)I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    :goto_1
    const/4 v11, 0x0

    .line 50
    const/4 v12, 0x1

    .line 51
    if-eq v4, v7, :cond_3

    .line 52
    .line 53
    move v5, v12

    .line 54
    goto :goto_2

    .line 55
    :cond_3
    move v5, v11

    .line 56
    :goto_2
    if-eqz v10, :cond_4

    .line 57
    .line 58
    const/high16 v14, 0x3f800000    # 1.0f

    .line 59
    .line 60
    goto :goto_3

    .line 61
    :cond_4
    const v14, 0x3f19999a    # 0.6f

    .line 62
    .line 63
    .line 64
    :goto_3
    iget-object v15, v0, Lg57;->w:Landroid/widget/TextView;

    .line 65
    .line 66
    invoke-virtual {v15, v14}, Landroid/view/View;->setAlpha(F)V

    .line 67
    .line 68
    .line 69
    if-eqz v5, :cond_5

    .line 70
    .line 71
    add-int/lit8 v14, v4, 0x1

    .line 72
    .line 73
    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v14

    .line 77
    goto :goto_4

    .line 78
    :cond_5
    const-string v14, ""

    .line 79
    .line 80
    :goto_4
    invoke-virtual {v15, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    .line 82
    .line 83
    if-eqz v5, :cond_6

    .line 84
    .line 85
    if-lez v4, :cond_6

    .line 86
    .line 87
    move v14, v12

    .line 88
    goto :goto_5

    .line 89
    :cond_6
    move v14, v11

    .line 90
    :goto_5
    iget-object v15, v0, Lg57;->u:Landroid/widget/ImageView;

    .line 91
    .line 92
    invoke-virtual {v15, v14}, Landroid/view/View;->setEnabled(Z)V

    .line 93
    .line 94
    .line 95
    if-eqz v14, :cond_7

    .line 96
    .line 97
    const/high16 v7, 0x3f800000    # 1.0f

    .line 98
    .line 99
    goto :goto_6

    .line 100
    :cond_7
    const v7, 0x3f19999a    # 0.6f

    .line 101
    .line 102
    .line 103
    :goto_6
    invoke-virtual {v15, v7}, Landroid/view/View;->setAlpha(F)V

    .line 104
    .line 105
    .line 106
    new-instance v7, Lf57;

    .line 107
    .line 108
    iget-object v13, v0, Lg57;->F:Lj57;

    .line 109
    .line 110
    invoke-direct {v7, v14, v13, v1}, Lf57;-><init>(ZLj57;Lorg/swiftapps/swiftbackup/home/schedule/data/b;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v15, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    .line 115
    .line 116
    if-eqz v5, :cond_8

    .line 117
    .line 118
    invoke-virtual {v13}, Lgm7;->b()I

    .line 119
    .line 120
    .line 121
    move-result v5

    .line 122
    sub-int/2addr v5, v12

    .line 123
    if-ge v4, v5, :cond_8

    .line 124
    .line 125
    move v4, v12

    .line 126
    goto :goto_7

    .line 127
    :cond_8
    move v4, v11

    .line 128
    :goto_7
    iget-object v5, v0, Lg57;->v:Landroid/widget/ImageView;

    .line 129
    .line 130
    invoke-virtual {v5, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 131
    .line 132
    .line 133
    if-eqz v4, :cond_9

    .line 134
    .line 135
    const/high16 v7, 0x3f800000    # 1.0f

    .line 136
    .line 137
    goto :goto_8

    .line 138
    :cond_9
    const v7, 0x3f19999a    # 0.6f

    .line 139
    .line 140
    .line 141
    :goto_8
    invoke-virtual {v5, v7}, Landroid/view/View;->setAlpha(F)V

    .line 142
    .line 143
    .line 144
    new-instance v7, Lde1;

    .line 145
    .line 146
    invoke-direct {v7, v4, v13, v1, v12}, Lde1;-><init>(ZLjava/lang/Object;Ljl0;I)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v5, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    .line 151
    .line 152
    if-eqz v10, :cond_a

    .line 153
    .line 154
    const/high16 v7, 0x3f800000    # 1.0f

    .line 155
    .line 156
    goto :goto_9

    .line 157
    :cond_a
    const v7, 0x3f19999a    # 0.6f

    .line 158
    .line 159
    .line 160
    :goto_9
    iget-object v4, v0, Lg57;->x:Landroid/widget/TextView;

    .line 161
    .line 162
    invoke-virtual {v4, v7}, Landroid/view/View;->setAlpha(F)V

    .line 163
    .line 164
    .line 165
    iget-object v5, v1, Lorg/swiftapps/swiftbackup/home/schedule/data/b;->a:Ljava/lang/String;

    .line 166
    .line 167
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    .line 169
    .line 170
    if-eqz v2, :cond_c

    .line 171
    .line 172
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 173
    .line 174
    .line 175
    move-result v4

    .line 176
    if-nez v4, :cond_b

    .line 177
    .line 178
    goto :goto_a

    .line 179
    :cond_b
    move v4, v11

    .line 180
    goto :goto_b

    .line 181
    :cond_c
    :goto_a
    move v4, v12

    .line 182
    :goto_b
    xor-int/2addr v4, v12

    .line 183
    iget-object v5, v0, Lg57;->y:Landroid/widget/TextView;

    .line 184
    .line 185
    invoke-static {v5, v4}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 186
    .line 187
    .line 188
    invoke-static {v5}, Lsz8;->I(Landroid/view/View;)Z

    .line 189
    .line 190
    .line 191
    move-result v4

    .line 192
    if-eqz v4, :cond_e

    .line 193
    .line 194
    if-eqz v10, :cond_d

    .line 195
    .line 196
    const v4, 0x3f4ccccd    # 0.8f

    .line 197
    .line 198
    .line 199
    goto :goto_c

    .line 200
    :cond_d
    const/high16 v4, 0x3f000000    # 0.5f

    .line 201
    .line 202
    :goto_c
    invoke-virtual {v5, v4}, Landroid/view/View;->setAlpha(F)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    .line 207
    .line 208
    :cond_e
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 209
    .line 210
    .line 211
    move-result v2

    .line 212
    xor-int/lit8 v4, v2, 0x1

    .line 213
    .line 214
    iget-object v5, v0, Lg57;->B:Landroid/view/View;

    .line 215
    .line 216
    invoke-static {v5, v4}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 217
    .line 218
    .line 219
    iget-object v14, v0, Lg57;->C:Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 220
    .line 221
    invoke-static {v14, v4}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 222
    .line 223
    .line 224
    if-nez v2, :cond_f

    .line 225
    .line 226
    new-instance v2, Lorg/swiftapps/swiftbackup/views/PreCachingLinearLayoutManager;

    .line 227
    .line 228
    invoke-virtual {v14}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 229
    .line 230
    .line 231
    move-result-object v4

    .line 232
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 233
    .line 234
    .line 235
    invoke-direct {v2, v4}, Lorg/swiftapps/swiftbackup/views/PreCachingLinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v14, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/a;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v14, v6}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Lng6;)V

    .line 242
    .line 243
    .line 244
    new-instance v15, Lee5;

    .line 245
    .line 246
    iget-object v2, v13, Lj57;->l:Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 247
    .line 248
    invoke-direct {v15, v2}, Lee5;-><init>(Lorg/swiftapps/swiftbackup/home/HomeActivity;)V

    .line 249
    .line 250
    .line 251
    new-instance v2, Lmu3;

    .line 252
    .line 253
    const/4 v4, 0x2

    .line 254
    invoke-direct {v2, v4, v13, v1}, Lmu3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 255
    .line 256
    .line 257
    iput-object v2, v15, Lgm7;->j:Lqt3;

    .line 258
    .line 259
    new-instance v2, Lfm7;

    .line 260
    .line 261
    const/4 v6, 0x0

    .line 262
    const/16 v7, 0x1e

    .line 263
    .line 264
    const/4 v4, 0x0

    .line 265
    const/4 v5, 0x0

    .line 266
    invoke-direct/range {v2 .. v7}, Lfm7;-><init>(Ljava/util/List;Ljava/util/Set;ZLjava/lang/String;I)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v15, v2, v11}, Lgm7;->w(Lfm7;Z)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v14, v15}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lhg6;)V

    .line 273
    .line 274
    .line 275
    :cond_f
    iget-object v2, v0, Lg57;->z:Lcom/google/android/material/button/MaterialButton;

    .line 276
    .line 277
    iget-object v3, v1, Lorg/swiftapps/swiftbackup/home/schedule/data/b;->c:Ljava/lang/String;

    .line 278
    .line 279
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    .line 281
    .line 282
    new-instance v2, Lza4;

    .line 283
    .line 284
    invoke-direct {v2, v13, v1, v0, v12}, Lza4;-><init>(Lgm7;Ljl0;Lfh6;I)V

    .line 285
    .line 286
    .line 287
    iget-object v1, v0, Lg57;->A:Lcom/google/android/material/button/MaterialButton;

    .line 288
    .line 289
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    .line 291
    .line 292
    iget-object v1, v0, Lg57;->E:Lkb2;

    .line 293
    .line 294
    iget-object v2, v1, Lkb2;->a:Ljava/lang/Object;

    .line 295
    .line 296
    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 297
    .line 298
    iget-object v3, v1, Lkb2;->a:Ljava/lang/Object;

    .line 299
    .line 300
    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 301
    .line 302
    if-eqz v10, :cond_11

    .line 303
    .line 304
    if-eqz v9, :cond_11

    .line 305
    .line 306
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    .line 307
    .line 308
    .line 309
    move-result v4

    .line 310
    if-nez v4, :cond_10

    .line 311
    .line 312
    goto :goto_d

    .line 313
    :cond_10
    move v11, v12

    .line 314
    :cond_11
    :goto_d
    invoke-static {v2, v11}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 315
    .line 316
    .line 317
    invoke-static {v3}, Lsz8;->I(Landroid/view/View;)Z

    .line 318
    .line 319
    .line 320
    move-result v2

    .line 321
    if-eqz v2, :cond_12

    .line 322
    .line 323
    iget-object v2, v1, Lkb2;->b:Ljava/lang/Object;

    .line 324
    .line 325
    check-cast v2, Landroid/view/View;

    .line 326
    .line 327
    xor-int/lit8 v4, v8, 0x1

    .line 328
    .line 329
    invoke-static {v2, v4}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 330
    .line 331
    .line 332
    iget-object v2, v1, Lkb2;->c:Ljava/lang/Object;

    .line 333
    .line 334
    check-cast v2, Landroid/widget/ImageView;

    .line 335
    .line 336
    invoke-static {v2, v8}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 337
    .line 338
    .line 339
    iget-object v1, v1, Lkb2;->d:Ljava/lang/Object;

    .line 340
    .line 341
    check-cast v1, Landroid/widget/TextView;

    .line 342
    .line 343
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    .line 345
    .line 346
    :cond_12
    iget-object v0, v0, Lg57;->D:Lkb2;

    .line 347
    .line 348
    iget-object v0, v0, Lkb2;->a:Ljava/lang/Object;

    .line 349
    .line 350
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 351
    .line 352
    invoke-static {v3}, Lsz8;->I(Landroid/view/View;)Z

    .line 353
    .line 354
    .line 355
    move-result v1

    .line 356
    invoke-static {v0, v1}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 357
    .line 358
    .line 359
    return-void
.end method
