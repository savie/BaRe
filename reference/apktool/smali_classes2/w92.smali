.class public final synthetic Lw92;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Les5;
.implements Lzt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lw92;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lw92;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()Lyt3;
    .locals 8

    .line 1
    iget v0, p0, Lw92;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lw92;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance v1, Lcu3;

    .line 9
    .line 10
    move-object v3, p0

    .line 11
    check-cast v3, Lorg/swiftapps/swiftbackup/notice/NoticeViewActivity;

    .line 12
    .line 13
    const-string v6, "render(Ljava/lang/String;)V"

    .line 14
    .line 15
    const/4 v7, 0x0

    .line 16
    const/4 v2, 0x1

    .line 17
    const-class v4, Lorg/swiftapps/swiftbackup/notice/NoticeViewActivity;

    .line 18
    .line 19
    const-string v5, "render"

    .line 20
    .line 21
    invoke-direct/range {v1 .. v7}, Lbu3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 22
    .line 23
    .line 24
    return-object v1

    .line 25
    :pswitch_0
    check-cast p0, Ld05;

    .line 26
    .line 27
    return-object p0

    .line 28
    :pswitch_1
    new-instance v0, Lcu3;

    .line 29
    .line 30
    move-object v2, p0

    .line 31
    check-cast v2, Lx92;

    .line 32
    .line 33
    const-string v5, "onLocalStorageInfoUI(Lorg/swiftapps/swiftbackup/model/StorageInfoLocal;)V"

    .line 34
    .line 35
    const/4 v6, 0x0

    .line 36
    const/4 v1, 0x1

    .line 37
    const-class v3, Lx92;

    .line 38
    .line 39
    const-string v4, "onLocalStorageInfoUI"

    .line 40
    .line 41
    invoke-direct/range {v0 .. v6}, Lbu3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 42
    .line 43
    .line 44
    return-object v0

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 13

    .line 1
    iget v0, p0, Lw92;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lw92;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    check-cast p0, Lorg/swiftapps/swiftbackup/notice/NoticeViewActivity;

    .line 14
    .line 15
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/notice/NoticeViewActivity;->M:Lgv7;

    .line 16
    .line 17
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lf75;

    .line 22
    .line 23
    iget-object v0, v0, Lf75;->e:Lbp0;

    .line 24
    .line 25
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/notice/NoticeViewActivity;->N:Lgv7;

    .line 26
    .line 27
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Landroid/widget/TextView;

    .line 32
    .line 33
    invoke-virtual {v0, p0, p1}, Lbp0;->c(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :pswitch_0
    check-cast p0, Ld05;

    .line 38
    .line 39
    invoke-virtual {p0, p1}, Ld05;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :pswitch_1
    check-cast p1, Lorg/swiftapps/swiftbackup/model/StorageInfoLocal;

    .line 44
    .line 45
    check-cast p0, Lx92;

    .line 46
    .line 47
    sget-object v0, Lzn7;->q:Lyn7;

    .line 48
    .line 49
    invoke-virtual {v0}, Lyn7;->d()Lzn7;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget-object v1, p0, Lrl0;->b:Ljk8;

    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    check-cast v1, Ly92;

    .line 59
    .line 60
    iget-object v1, v1, Ly92;->f:Lpp0;

    .line 61
    .line 62
    iget-object v1, v1, Lpp0;->e:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v1, Lca2;

    .line 65
    .line 66
    iget-object v2, v1, Lca2;->e:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast v2, Landroid/widget/TextView;

    .line 69
    .line 70
    iget-object v3, v1, Lca2;->c:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v3, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 73
    .line 74
    iget-object v4, v1, Lca2;->f:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v4, Landroid/widget/TextView;

    .line 77
    .line 78
    invoke-virtual {p0}, Lx92;->l()Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    invoke-virtual {v3}, Lkm0;->getIndicatorColor()[I

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    array-length v7, v6

    .line 90
    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([II)[I

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    invoke-virtual {v3}, Lkm0;->getTrackColor()I

    .line 95
    .line 96
    .line 97
    move-result v7

    .line 98
    iget-object v8, p0, Lrl0;->b:Ljk8;

    .line 99
    .line 100
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    check-cast v8, Ly92;

    .line 104
    .line 105
    iget-object v8, v8, Ly92;->f:Lpp0;

    .line 106
    .line 107
    iget-object v8, v8, Lpp0;->a:Ljava/lang/Object;

    .line 108
    .line 109
    check-cast v8, Lorg/swiftapps/swiftbackup/views/SwiftSegmentedCardGroup;

    .line 110
    .line 111
    iget-object v9, v1, Lca2;->a:Ljava/lang/Object;

    .line 112
    .line 113
    check-cast v9, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 114
    .line 115
    new-instance v10, Lmf;

    .line 116
    .line 117
    const/4 v11, 0x5

    .line 118
    invoke-direct {v10, p0, v11}, Lmf;-><init>(Ljava/lang/Object;I)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v8, v9, v10}, Lorg/swiftapps/swiftbackup/views/SwiftSegmentedCardGroup;->b(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 122
    .line 123
    .line 124
    iget-object v0, v0, Lzn7;->f:Lgv7;

    .line 125
    .line 126
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    check-cast v0, Ljava/lang/String;

    .line 131
    .line 132
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    .line 134
    .line 135
    iget-object v8, v1, Lca2;->b:Ljava/lang/Object;

    .line 136
    .line 137
    check-cast v8, Landroid/widget/ImageView;

    .line 138
    .line 139
    invoke-virtual {v5}, Lzm;->getResources()Landroid/content/res/Resources;

    .line 140
    .line 141
    .line 142
    move-result-object v9

    .line 143
    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 144
    .line 145
    .line 146
    move-result-object v9

    .line 147
    iget v9, v9, Landroid/util/DisplayMetrics;->density:F

    .line 148
    .line 149
    const/high16 v10, 0x42000000    # 32.0f

    .line 150
    .line 151
    mul-float/2addr v10, v9

    .line 152
    invoke-static {v10}, Ltu0;->v(F)I

    .line 153
    .line 154
    .line 155
    move-result v9

    .line 156
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 157
    .line 158
    .line 159
    move-result-object v10

    .line 160
    iput v9, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 161
    .line 162
    iput v9, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 163
    .line 164
    invoke-virtual {v8, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    .line 166
    .line 167
    const v9, 0x7f080108

    .line 168
    .line 169
    .line 170
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 171
    .line 172
    .line 173
    const/4 v9, 0x0

    .line 174
    invoke-virtual {v8, v9}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 175
    .line 176
    .line 177
    const v10, 0x7f080093

    .line 178
    .line 179
    .line 180
    invoke-virtual {v5, v10}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 181
    .line 182
    .line 183
    move-result-object v10

    .line 184
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v8, v10}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 188
    .line 189
    .line 190
    invoke-static {v5}, Lsz8;->x(Landroid/content/Context;)I

    .line 191
    .line 192
    .line 193
    move-result v10

    .line 194
    invoke-static {v10}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 195
    .line 196
    .line 197
    move-result-object v10

    .line 198
    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 199
    .line 200
    .line 201
    sget-object v10, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 202
    .line 203
    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 204
    .line 205
    .line 206
    const/4 v10, 0x0

    .line 207
    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v5}, Lzm;->getResources()Landroid/content/res/Resources;

    .line 211
    .line 212
    .line 213
    move-result-object v11

    .line 214
    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 215
    .line 216
    .line 217
    move-result-object v11

    .line 218
    iget v11, v11, Landroid/util/DisplayMetrics;->density:F

    .line 219
    .line 220
    const/high16 v12, 0x40c00000    # 6.0f

    .line 221
    .line 222
    mul-float/2addr v12, v11

    .line 223
    invoke-static {v12}, Ltu0;->v(F)I

    .line 224
    .line 225
    .line 226
    move-result v11

    .line 227
    invoke-virtual {v8, v11, v11, v11, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 228
    .line 229
    .line 230
    iget-object v1, v1, Lca2;->d:Ljava/lang/Object;

    .line 231
    .line 232
    check-cast v1, Landroid/widget/TextView;

    .line 233
    .line 234
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    .line 236
    .line 237
    sget-object v0, Lorg/swiftapps/swiftbackup/model/StorageInfoLocal$c;->INSTANCE:Lorg/swiftapps/swiftbackup/model/StorageInfoLocal$c;

    .line 238
    .line 239
    invoke-static {p1, v0}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    move-result v0

    .line 243
    const/16 v1, 0x8

    .line 244
    .line 245
    const/4 v8, 0x1

    .line 246
    if-eqz v0, :cond_0

    .line 247
    .line 248
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v3, v8}, Lkm0;->setIndeterminate(Z)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 258
    .line 259
    .line 260
    goto/16 :goto_0

    .line 261
    .line 262
    :cond_0
    instance-of v0, p1, Lorg/swiftapps/swiftbackup/model/StorageInfoLocal$Success;

    .line 263
    .line 264
    if-eqz v0, :cond_1

    .line 265
    .line 266
    invoke-virtual {v3, v10}, Lkm0;->setIndeterminate(Z)V

    .line 267
    .line 268
    .line 269
    array-length v0, v6

    .line 270
    invoke-static {v6, v0}, Ljava/util/Arrays;->copyOf([II)[I

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    invoke-virtual {v3, v0}, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->setIndicatorColor([I)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v3, v7}, Lkm0;->setTrackColor(I)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 281
    .line 282
    .line 283
    move-object v0, p1

    .line 284
    check-cast v0, Lorg/swiftapps/swiftbackup/model/StorageInfoLocal$Success;

    .line 285
    .line 286
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/model/StorageInfoLocal$Success;->getUsedPercent()I

    .line 287
    .line 288
    .line 289
    move-result v1

    .line 290
    invoke-static {v3, v1, v8, v8, v8}, Lsz8;->Z(Lkm0;IZZZ)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/model/StorageInfoLocal$Success;->getFreeMemoryString()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v1

    .line 297
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/model/StorageInfoLocal$Success;->getTotalMemoryString()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v3

    .line 301
    invoke-static {v5}, Lsz8;->x(Landroid/content/Context;)I

    .line 302
    .line 303
    .line 304
    move-result v6

    .line 305
    invoke-static {v5}, Lsz8;->A(Landroid/content/Context;)I

    .line 306
    .line 307
    .line 308
    move-result v7

    .line 309
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 310
    .line 311
    .line 312
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 313
    .line 314
    .line 315
    const v8, 0x7f130286

    .line 316
    .line 317
    .line 318
    filled-new-array {v1, v3}, [Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object v3

    .line 322
    invoke-virtual {v5, v8, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v3

    .line 326
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 327
    .line 328
    .line 329
    invoke-static {v3, v6, v7, v1}, Lnc8;->A(Ljava/lang/String;IILjava/lang/String;)Landroid/text/SpannableString;

    .line 330
    .line 331
    .line 332
    move-result-object v1

    .line 333
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/model/StorageInfoLocal$Success;->getUsedPercentExact()F

    .line 340
    .line 341
    .line 342
    move-result v0

    .line 343
    invoke-static {v5, v0}, Liz1;->j(Lorg/swiftapps/swiftbackup/home/HomeActivity;F)Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v0

    .line 347
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    .line 349
    .line 350
    goto :goto_0

    .line 351
    :cond_1
    sget-object v0, Lorg/swiftapps/swiftbackup/model/StorageInfoLocal$b;->INSTANCE:Lorg/swiftapps/swiftbackup/model/StorageInfoLocal$b;

    .line 352
    .line 353
    invoke-static {p1, v0}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 354
    .line 355
    .line 356
    move-result v0

    .line 357
    if-eqz v0, :cond_3

    .line 358
    .line 359
    invoke-virtual {v3, v10}, Lkm0;->setIndeterminate(Z)V

    .line 360
    .line 361
    .line 362
    array-length v0, v6

    .line 363
    invoke-static {v6, v0}, Ljava/util/Arrays;->copyOf([II)[I

    .line 364
    .line 365
    .line 366
    move-result-object v0

    .line 367
    invoke-virtual {v3, v0}, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->setIndicatorColor([I)V

    .line 368
    .line 369
    .line 370
    invoke-virtual {v3, v7}, Lkm0;->setTrackColor(I)V

    .line 371
    .line 372
    .line 373
    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 374
    .line 375
    .line 376
    invoke-static {v3, v10, v8, v8, v8}, Lsz8;->Z(Lkm0;IZZZ)V

    .line 377
    .line 378
    .line 379
    const-string v0, "???"

    .line 380
    .line 381
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 382
    .line 383
    .line 384
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 385
    .line 386
    .line 387
    :goto_0
    instance-of v0, p1, Lorg/swiftapps/swiftbackup/model/StorageInfoLocal$Success;

    .line 388
    .line 389
    if-eqz v0, :cond_2

    .line 390
    .line 391
    sget-object v0, Lzn4;->a:Lzn4;

    .line 392
    .line 393
    new-instance v0, Lu92;

    .line 394
    .line 395
    invoke-direct {v0, p1, v9}, Lu92;-><init>(Lorg/swiftapps/swiftbackup/model/StorageInfoLocal;Ljv1;)V

    .line 396
    .line 397
    .line 398
    invoke-static {v9, v0}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 399
    .line 400
    .line 401
    :cond_2
    iget-boolean p1, p0, Lx92;->e:Z

    .line 402
    .line 403
    if-eqz p1, :cond_4

    .line 404
    .line 405
    iput-boolean v10, p0, Lx92;->e:Z

    .line 406
    .line 407
    new-instance p0, Landroid/view/animation/AlphaAnimation;

    .line 408
    .line 409
    const/4 p1, 0x0

    .line 410
    const/high16 v0, 0x3f800000    # 1.0f

    .line 411
    .line 412
    invoke-direct {p0, p1, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 413
    .line 414
    .line 415
    const-wide/16 v0, 0x1f4

    .line 416
    .line 417
    invoke-virtual {p0, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 418
    .line 419
    .line 420
    invoke-virtual {v2, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 421
    .line 422
    .line 423
    goto :goto_1

    .line 424
    :cond_3
    const-string p0, "Unhandled StorageInfoLocal status: "

    .line 425
    .line 426
    invoke-static {p1, p0}, Lg84;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 427
    .line 428
    .line 429
    :cond_4
    :goto_1
    return-void

    .line 430
    nop

    .line 431
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget v0, p0, Lw92;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    instance-of v0, p1, Les5;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    instance-of v0, p1, Lzt3;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-interface {p0}, Lzt3;->a()Lyt3;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p1, Lzt3;

    .line 20
    .line 21
    invoke-interface {p1}, Lzt3;->a()Lyt3;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-static {p0, p1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    :cond_0
    return v1

    .line 30
    :pswitch_0
    instance-of v0, p1, Les5;

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    instance-of v0, p1, Lzt3;

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    invoke-interface {p0}, Lzt3;->a()Lyt3;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    check-cast p1, Lzt3;

    .line 43
    .line 44
    invoke-interface {p1}, Lzt3;->a()Lyt3;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-static {p0, p1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    :cond_1
    return v1

    .line 53
    :pswitch_1
    instance-of v0, p1, Les5;

    .line 54
    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    instance-of v0, p1, Lzt3;

    .line 58
    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    invoke-interface {p0}, Lzt3;->a()Lyt3;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    check-cast p1, Lzt3;

    .line 66
    .line 67
    invoke-interface {p1}, Lzt3;->a()Lyt3;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-static {p0, p1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    :cond_2
    return v1

    .line 76
    nop

    .line 77
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lw92;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Lzt3;->a()Lyt3;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0

    .line 15
    :pswitch_0
    invoke-interface {p0}, Lzt3;->a()Lyt3;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0

    .line 24
    :pswitch_1
    invoke-interface {p0}, Lzt3;->a()Lyt3;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    return p0

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
