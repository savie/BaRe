.class public Lcom/google/android/material/button/MaterialButton;
.super Lcn;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/widget/Checkable;
.implements Ltc7;


# static fields
.field public static final i0:[I

.field public static final j0:[I

.field public static final k0:Lh85;


# instance fields
.field public G:I

.field public H:I

.field public I:I

.field public J:I

.field public K:I

.field public L:I

.field public M:Z

.field public N:Z

.field public O:I

.field public P:I

.field public Q:I

.field public R:F

.field public S:I

.field public T:I

.field public U:Landroid/widget/LinearLayout$LayoutParams;

.field public V:Z

.field public W:I

.field public a0:Z

.field public b0:I

.field public c0:Lpm7;

.field public final d:Lp85;

.field public d0:I

.field public final e:Ljava/util/LinkedHashSet;

.field public e0:Lk85;

.field public f:Li85;

.field public f0:F

.field public g0:F

.field public h0:Lgk7;

.field public k:Landroid/graphics/PorterDuff$Mode;

.field public n:Landroid/content/res/ColorStateList;

.field public p:Landroid/graphics/drawable/Drawable;

.field public q:Landroid/graphics/PorterDuff$Mode;

.field public r:Landroid/content/res/ColorStateList;

.field public t:Landroid/graphics/drawable/Drawable;

.field public x:Z

.field public y:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const v0, 0x101009f

    .line 2
    .line 3
    .line 4
    filled-new-array {v0}, [I

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sput-object v0, Lcom/google/android/material/button/MaterialButton;->i0:[I

    .line 9
    .line 10
    const v0, 0x10100a0

    .line 11
    .line 12
    .line 13
    filled-new-array {v0}, [I

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/google/android/material/button/MaterialButton;->j0:[I

    .line 18
    .line 19
    new-instance v0, Lh85;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    sput-object v0, Lcom/google/android/material/button/MaterialButton;->k0:Lh85;

    .line 25
    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 467
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/button/MaterialButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f0403ee

    .line 466
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/button/MaterialButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .line 1
    const v0, 0x7f040412

    .line 2
    .line 3
    .line 4
    filled-new-array {v0}, [I

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const v1, 0x7f14063d

    .line 9
    .line 10
    .line 11
    invoke-static {p3, v1, p1, p2, v0}, Lzm5;->I(IILandroid/content/Context;Landroid/util/AttributeSet;[I)Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-direct {p0, p1, p2, p3}, Lcn;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    .line 17
    .line 18
    new-instance p1, Ljava/util/LinkedHashSet;

    .line 19
    .line 20
    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButton;->e:Ljava/util/LinkedHashSet;

    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButton;->M:Z

    .line 27
    .line 28
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButton;->N:Z

    .line 29
    .line 30
    const/high16 v0, -0x80000000

    .line 31
    .line 32
    iput v0, p0, Lcom/google/android/material/button/MaterialButton;->Q:I

    .line 33
    .line 34
    const/high16 v2, -0x31000000

    .line 35
    .line 36
    iput v2, p0, Lcom/google/android/material/button/MaterialButton;->R:F

    .line 37
    .line 38
    iput v0, p0, Lcom/google/android/material/button/MaterialButton;->S:I

    .line 39
    .line 40
    iput v0, p0, Lcom/google/android/material/button/MaterialButton;->T:I

    .line 41
    .line 42
    iput v0, p0, Lcom/google/android/material/button/MaterialButton;->b0:I

    .line 43
    .line 44
    sget-object v0, Lk85;->d:Lk85;

    .line 45
    .line 46
    iput-object v0, p0, Lcom/google/android/material/button/MaterialButton;->e0:Lk85;

    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    const v6, 0x7f14063d

    .line 53
    .line 54
    .line 55
    new-array v7, p1, [I

    .line 56
    .line 57
    sget-object v4, Ltd6;->v:[I

    .line 58
    .line 59
    move-object v3, p2

    .line 60
    move v5, p3

    .line 61
    invoke-static/range {v2 .. v7}, Ljd4;->B(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    const/16 p3, 0xd

    .line 66
    .line 67
    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 68
    .line 69
    .line 70
    move-result p3

    .line 71
    iput p3, p0, Lcom/google/android/material/button/MaterialButton;->J:I

    .line 72
    .line 73
    const/16 p3, 0x10

    .line 74
    .line 75
    const/4 v0, -0x1

    .line 76
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 77
    .line 78
    .line 79
    move-result p3

    .line 80
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 81
    .line 82
    invoke-static {p3, v4}, Lyc9;->L(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    .line 83
    .line 84
    .line 85
    move-result-object p3

    .line 86
    iput-object p3, p0, Lcom/google/android/material/button/MaterialButton;->k:Landroid/graphics/PorterDuff$Mode;

    .line 87
    .line 88
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 89
    .line 90
    .line 91
    move-result-object p3

    .line 92
    const/16 v6, 0xf

    .line 93
    .line 94
    invoke-static {p3, p2, v6}, Lk55;->m(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 95
    .line 96
    .line 97
    move-result-object p3

    .line 98
    iput-object p3, p0, Lcom/google/android/material/button/MaterialButton;->n:Landroid/content/res/ColorStateList;

    .line 99
    .line 100
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 101
    .line 102
    .line 103
    move-result-object p3

    .line 104
    const/16 v6, 0xb

    .line 105
    .line 106
    invoke-static {p3, p2, v6}, Lk55;->p(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    .line 107
    .line 108
    .line 109
    move-result-object p3

    .line 110
    iput-object p3, p0, Lcom/google/android/material/button/MaterialButton;->p:Landroid/graphics/drawable/Drawable;

    .line 111
    .line 112
    const/16 p3, 0xc

    .line 113
    .line 114
    const/4 v6, 0x1

    .line 115
    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 116
    .line 117
    .line 118
    move-result p3

    .line 119
    iput p3, p0, Lcom/google/android/material/button/MaterialButton;->O:I

    .line 120
    .line 121
    const/16 p3, 0xe

    .line 122
    .line 123
    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 124
    .line 125
    .line 126
    move-result p3

    .line 127
    iput p3, p0, Lcom/google/android/material/button/MaterialButton;->G:I

    .line 128
    .line 129
    const/16 p3, 0x16

    .line 130
    .line 131
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 132
    .line 133
    .line 134
    move-result p3

    .line 135
    invoke-static {p3, v4}, Lyc9;->L(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    .line 136
    .line 137
    .line 138
    move-result-object p3

    .line 139
    iput-object p3, p0, Lcom/google/android/material/button/MaterialButton;->q:Landroid/graphics/PorterDuff$Mode;

    .line 140
    .line 141
    const/16 p3, 0x15

    .line 142
    .line 143
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 144
    .line 145
    .line 146
    move-result v7

    .line 147
    if-eqz v7, :cond_0

    .line 148
    .line 149
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 150
    .line 151
    .line 152
    move-result-object v7

    .line 153
    invoke-static {v7, p2, p3}, Lk55;->m(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 154
    .line 155
    .line 156
    move-result-object p3

    .line 157
    goto :goto_0

    .line 158
    :cond_0
    iget-object p3, p0, Lcom/google/android/material/button/MaterialButton;->n:Landroid/content/res/ColorStateList;

    .line 159
    .line 160
    :goto_0
    iput-object p3, p0, Lcom/google/android/material/button/MaterialButton;->r:Landroid/content/res/ColorStateList;

    .line 161
    .line 162
    const/16 p3, 0x14

    .line 163
    .line 164
    const/4 v7, 0x3

    .line 165
    invoke-virtual {p2, p3, v7}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 166
    .line 167
    .line 168
    move-result p3

    .line 169
    iput p3, p0, Lcom/google/android/material/button/MaterialButton;->P:I

    .line 170
    .line 171
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 172
    .line 173
    .line 174
    move-result-object p3

    .line 175
    const/16 v8, 0x13

    .line 176
    .line 177
    invoke-static {p3, p2, v8}, Lk55;->p(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    .line 178
    .line 179
    .line 180
    move-result-object p3

    .line 181
    iput-object p3, p0, Lcom/google/android/material/button/MaterialButton;->t:Landroid/graphics/drawable/Drawable;

    .line 182
    .line 183
    if-nez p3, :cond_1

    .line 184
    .line 185
    move p3, v6

    .line 186
    goto :goto_1

    .line 187
    :cond_1
    move p3, p1

    .line 188
    :goto_1
    iput-boolean p3, p0, Lcom/google/android/material/button/MaterialButton;->x:Z

    .line 189
    .line 190
    const/16 p3, 0x17

    .line 191
    .line 192
    invoke-static {v2, p2, p3}, Lnm7;->h(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lnm7;

    .line 193
    .line 194
    .line 195
    move-result-object p3

    .line 196
    if-eqz p3, :cond_2

    .line 197
    .line 198
    goto :goto_2

    .line 199
    :cond_2
    invoke-static {v2, v3, v5, v1}, Ltb7;->h(Landroid/content/Context;Landroid/util/AttributeSet;II)Lsb7;

    .line 200
    .line 201
    .line 202
    move-result-object p3

    .line 203
    invoke-virtual {p3}, Lsb7;->a()Ltb7;

    .line 204
    .line 205
    .line 206
    move-result-object p3

    .line 207
    :goto_2
    const/16 v1, 0x11

    .line 208
    .line 209
    invoke-virtual {p2, v1, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 210
    .line 211
    .line 212
    move-result v1

    .line 213
    new-instance v2, Lp85;

    .line 214
    .line 215
    invoke-direct {v2, p0, p3}, Lp85;-><init>(Lcom/google/android/material/button/MaterialButton;Lrb7;)V

    .line 216
    .line 217
    .line 218
    iput-object v2, p0, Lcom/google/android/material/button/MaterialButton;->d:Lp85;

    .line 219
    .line 220
    const/4 v3, 0x2

    .line 221
    invoke-virtual {p2, v3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 222
    .line 223
    .line 224
    move-result v3

    .line 225
    iput v3, v2, Lp85;->e:I

    .line 226
    .line 227
    invoke-virtual {p2, v7, p1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 228
    .line 229
    .line 230
    move-result v3

    .line 231
    iput v3, v2, Lp85;->f:I

    .line 232
    .line 233
    const/4 v3, 0x4

    .line 234
    invoke-virtual {p2, v3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 235
    .line 236
    .line 237
    move-result v3

    .line 238
    iput v3, v2, Lp85;->g:I

    .line 239
    .line 240
    const/4 v3, 0x5

    .line 241
    invoke-virtual {p2, v3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 242
    .line 243
    .line 244
    move-result v3

    .line 245
    iput v3, v2, Lp85;->h:I

    .line 246
    .line 247
    const/16 v3, 0x9

    .line 248
    .line 249
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 250
    .line 251
    .line 252
    move-result v5

    .line 253
    if-eqz v5, :cond_3

    .line 254
    .line 255
    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 256
    .line 257
    .line 258
    move-result v3

    .line 259
    iput v3, v2, Lp85;->i:I

    .line 260
    .line 261
    iget-object v5, v2, Lp85;->b:Lrb7;

    .line 262
    .line 263
    int-to-float v3, v3

    .line 264
    invoke-interface {v5, v3}, Lrb7;->a(F)Ltb7;

    .line 265
    .line 266
    .line 267
    move-result-object v3

    .line 268
    iput-object v3, v2, Lp85;->b:Lrb7;

    .line 269
    .line 270
    invoke-virtual {v2}, Lp85;->d()V

    .line 271
    .line 272
    .line 273
    iput-boolean v6, v2, Lp85;->r:Z

    .line 274
    .line 275
    :cond_3
    const/16 v3, 0x1a

    .line 276
    .line 277
    invoke-virtual {p2, v3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 278
    .line 279
    .line 280
    move-result v3

    .line 281
    iput v3, v2, Lp85;->j:I

    .line 282
    .line 283
    const/16 v3, 0x8

    .line 284
    .line 285
    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 286
    .line 287
    .line 288
    move-result v0

    .line 289
    invoke-static {v0, v4}, Lyc9;->L(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    iput-object v0, v2, Lp85;->k:Landroid/graphics/PorterDuff$Mode;

    .line 294
    .line 295
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    const/4 v3, 0x7

    .line 300
    invoke-static {v0, p2, v3}, Lk55;->m(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    iput-object v0, v2, Lp85;->l:Landroid/content/res/ColorStateList;

    .line 305
    .line 306
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    const/16 v3, 0x19

    .line 311
    .line 312
    invoke-static {v0, p2, v3}, Lk55;->m(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    iput-object v0, v2, Lp85;->m:Landroid/content/res/ColorStateList;

    .line 317
    .line 318
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    const/16 v3, 0x12

    .line 323
    .line 324
    invoke-static {v0, p2, v3}, Lk55;->m(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    iput-object v0, v2, Lp85;->n:Landroid/content/res/ColorStateList;

    .line 329
    .line 330
    const/4 v0, 0x6

    .line 331
    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 332
    .line 333
    .line 334
    move-result v0

    .line 335
    iput-boolean v0, v2, Lp85;->s:Z

    .line 336
    .line 337
    const/16 v0, 0xa

    .line 338
    .line 339
    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 340
    .line 341
    .line 342
    move-result v0

    .line 343
    iput v0, v2, Lp85;->v:I

    .line 344
    .line 345
    const/16 v0, 0x1b

    .line 346
    .line 347
    invoke-virtual {p2, v0, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 348
    .line 349
    .line 350
    move-result v0

    .line 351
    iput-boolean v0, v2, Lp85;->t:Z

    .line 352
    .line 353
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    .line 354
    .line 355
    .line 356
    move-result v0

    .line 357
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 358
    .line 359
    .line 360
    move-result v3

    .line 361
    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    .line 362
    .line 363
    .line 364
    move-result v4

    .line 365
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 366
    .line 367
    .line 368
    move-result v5

    .line 369
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 370
    .line 371
    .line 372
    move-result v7

    .line 373
    if-eqz v7, :cond_4

    .line 374
    .line 375
    iput-boolean v6, v2, Lp85;->q:Z

    .line 376
    .line 377
    iget-object v7, v2, Lp85;->l:Landroid/content/res/ColorStateList;

    .line 378
    .line 379
    invoke-virtual {p0, v7}, Lcom/google/android/material/button/MaterialButton;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 380
    .line 381
    .line 382
    iget-object v7, v2, Lp85;->k:Landroid/graphics/PorterDuff$Mode;

    .line 383
    .line 384
    invoke-virtual {p0, v7}, Lcom/google/android/material/button/MaterialButton;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 385
    .line 386
    .line 387
    goto :goto_3

    .line 388
    :cond_4
    invoke-virtual {v2}, Lp85;->c()V

    .line 389
    .line 390
    .line 391
    :goto_3
    iget v7, v2, Lp85;->e:I

    .line 392
    .line 393
    add-int/2addr v0, v7

    .line 394
    iget v7, v2, Lp85;->g:I

    .line 395
    .line 396
    add-int/2addr v3, v7

    .line 397
    iget v7, v2, Lp85;->f:I

    .line 398
    .line 399
    add-int/2addr v4, v7

    .line 400
    iget v7, v2, Lp85;->h:I

    .line 401
    .line 402
    add-int/2addr v5, v7

    .line 403
    invoke-virtual {p0, v0, v3, v4, v5}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 404
    .line 405
    .line 406
    invoke-virtual {p2, v6, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 407
    .line 408
    .line 409
    move-result v0

    .line 410
    invoke-direct {p0, v0}, Lcom/google/android/material/button/MaterialButton;->setCheckedInternal(Z)V

    .line 411
    .line 412
    .line 413
    instance-of p3, p3, Lnm7;

    .line 414
    .line 415
    if-eqz p3, :cond_5

    .line 416
    .line 417
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 418
    .line 419
    .line 420
    move-result-object p3

    .line 421
    invoke-static {p3}, Lji8;->H(Landroid/content/Context;)Lhk7;

    .line 422
    .line 423
    .line 424
    move-result-object p3

    .line 425
    iput-object p3, v2, Lp85;->c:Lhk7;

    .line 426
    .line 427
    iget-object p3, v2, Lp85;->b:Lrb7;

    .line 428
    .line 429
    instance-of p3, p3, Lnm7;

    .line 430
    .line 431
    if-eqz p3, :cond_5

    .line 432
    .line 433
    invoke-virtual {v2}, Lp85;->d()V

    .line 434
    .line 435
    .line 436
    :cond_5
    invoke-virtual {p0, v1}, Lcom/google/android/material/button/MaterialButton;->setOpticalCenterEnabled(Z)V

    .line 437
    .line 438
    .line 439
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 440
    .line 441
    .line 442
    iget p2, p0, Lcom/google/android/material/button/MaterialButton;->J:I

    .line 443
    .line 444
    invoke-virtual {p0, p2}, Lcom/google/android/material/button/MaterialButton;->setCompoundDrawablePadding(I)V

    .line 445
    .line 446
    .line 447
    iget-object p2, p0, Lcom/google/android/material/button/MaterialButton;->p:Landroid/graphics/drawable/Drawable;

    .line 448
    .line 449
    if-eqz p2, :cond_6

    .line 450
    .line 451
    move p2, v6

    .line 452
    goto :goto_4

    .line 453
    :cond_6
    move p2, p1

    .line 454
    :goto_4
    invoke-virtual {p0, p2}, Lcom/google/android/material/button/MaterialButton;->t(Z)V

    .line 455
    .line 456
    .line 457
    iget-object p2, p0, Lcom/google/android/material/button/MaterialButton;->t:Landroid/graphics/drawable/Drawable;

    .line 458
    .line 459
    if-eqz p2, :cond_7

    .line 460
    .line 461
    move p1, v6

    .line 462
    :cond_7
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->w(Z)V

    .line 463
    .line 464
    .line 465
    return-void
.end method

.method public static synthetic a(Lcom/google/android/material/button/MaterialButton;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->getOpticalCenterShift()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Lcom/google/android/material/button/MaterialButton;->W:I

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->v()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static synthetic b(Lcom/google/android/material/button/MaterialButton;)F
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->getDisplayedWidthIncrease()F

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic c(Lcom/google/android/material/button/MaterialButton;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setDisplayedWidthIncrease(F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private getActualTextAlignment()Landroid/text/Layout$Alignment;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getTextAlignment()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_2

    .line 7
    .line 8
    const/4 p0, 0x6

    .line 9
    if-eq v0, p0, :cond_1

    .line 10
    .line 11
    const/4 p0, 0x3

    .line 12
    if-eq v0, p0, :cond_1

    .line 13
    .line 14
    const/4 p0, 0x4

    .line 15
    if-eq v0, p0, :cond_0

    .line 16
    .line 17
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_0
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_1
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 24
    .line 25
    return-object p0

    .line 26
    :cond_2
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->getGravityTextAlignment()Landroid/text/Layout$Alignment;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0
.end method

.method private getDisplayedWidthIncrease()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/material/button/MaterialButton;->f0:F

    .line 2
    .line 3
    return p0
.end method

.method private getGravityTextAlignment()Landroid/text/Layout$Alignment;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getGravity()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const v0, 0x800007

    .line 6
    .line 7
    .line 8
    and-int/2addr p0, v0

    .line 9
    const/4 v0, 0x1

    .line 10
    if-eq p0, v0, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x5

    .line 13
    if-eq p0, v0, :cond_0

    .line 14
    .line 15
    const v0, 0x800005

    .line 16
    .line 17
    .line 18
    if-eq p0, v0, :cond_0

    .line 19
    .line 20
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_0
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 24
    .line 25
    return-object p0

    .line 26
    :cond_1
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 27
    .line 28
    return-object p0
.end method

.method private getOpticalCenterShift()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButton;->V:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButton;->a0:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->d:Lp85;

    .line 11
    .line 12
    invoke-virtual {p0, v1}, Lp85;->a(Z)Lc95;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Lc95;->j()F

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    const v0, 0x3de147ae    # 0.11f

    .line 23
    .line 24
    .line 25
    mul-float/2addr p0, v0

    .line 26
    float-to-int p0, p0

    .line 27
    return p0

    .line 28
    :cond_0
    return v1
.end method

.method private getTextHeight()I
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-le v0, v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Landroid/text/Layout;->getHeight()I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0

    .line 17
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {p0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-interface {v2, v1, p0}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    :cond_1
    new-instance v2, Landroid/graphics/Rect;

    .line 48
    .line 49
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 50
    .line 51
    .line 52
    const/4 v3, 0x0

    .line 53
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {p0}, Landroid/text/Layout;->getHeight()I

    .line 69
    .line 70
    .line 71
    move-result p0

    .line 72
    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    .line 73
    .line 74
    .line 75
    move-result p0

    .line 76
    return p0
.end method

.method private getTextLayoutWidth()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    if-ge v2, v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-virtual {v3, v2}, Landroid/text/Layout;->getLineWidth(I)F

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    add-int/lit8 v2, v2, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    float-to-double v0, v1

    .line 25
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    double-to-int p0, v0

    .line 30
    return p0
.end method

.method private setCheckedInternal(Z)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->j()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_5

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButton;->M:Z

    .line 8
    .line 9
    if-eq v0, p1, :cond_5

    .line 10
    .line 11
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButton;->M:Z

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->refreshDrawableState()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    instance-of p1, p1, Lcom/google/android/material/button/MaterialButtonToggleGroup;

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Lcom/google/android/material/button/MaterialButtonToggleGroup;

    .line 29
    .line 30
    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButton;->M:Z

    .line 31
    .line 32
    iget-boolean v1, p1, Lcom/google/android/material/button/MaterialButtonToggleGroup;->N:Z

    .line 33
    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    invoke-virtual {p1, v1, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->n(IZ)V

    .line 42
    .line 43
    .line 44
    :cond_1
    :goto_0
    iget-boolean p1, p0, Lcom/google/android/material/button/MaterialButton;->N:Z

    .line 45
    .line 46
    if-eqz p1, :cond_2

    .line 47
    .line 48
    goto :goto_3

    .line 49
    :cond_2
    const/4 p1, 0x1

    .line 50
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButton;->N:Z

    .line 51
    .line 52
    iget-object p1, p0, Lcom/google/android/material/button/MaterialButton;->e:Ljava/util/LinkedHashSet;

    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_4

    .line 63
    .line 64
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Lf95;

    .line 69
    .line 70
    iget-boolean v1, p0, Lcom/google/android/material/button/MaterialButton;->M:Z

    .line 71
    .line 72
    iget-object v2, v0, Lf95;->a:Lcom/google/android/material/button/MaterialSplitButton;

    .line 73
    .line 74
    iget-object v0, v0, Lf95;->b:Lcom/google/android/material/button/MaterialButton;

    .line 75
    .line 76
    sget v3, Lcom/google/android/material/button/MaterialSplitButton;->M:I

    .line 77
    .line 78
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    if-eqz v1, :cond_3

    .line 83
    .line 84
    const v1, 0x7f130355

    .line 85
    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_3
    const v1, 0x7f130354

    .line 89
    .line 90
    .line 91
    :goto_2
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    sget-object v2, Ldl8;->a:Ljava/util/WeakHashMap;

    .line 96
    .line 97
    new-instance v2, Lpk8;

    .line 98
    .line 99
    const/16 v3, 0x40

    .line 100
    .line 101
    const/16 v4, 0x1e

    .line 102
    .line 103
    const v5, 0x7f0a04a8

    .line 104
    .line 105
    .line 106
    const-class v6, Ljava/lang/CharSequence;

    .line 107
    .line 108
    invoke-direct {v2, v5, v6, v3, v4}, La65;-><init>(ILjava/lang/Class;II)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2, v0, v1}, La65;->g(Landroid/view/View;Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_4
    const/4 p1, 0x0

    .line 116
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButton;->N:Z

    .line 117
    .line 118
    :cond_5
    :goto_3
    return-void
.end method

.method private setDisplayedWidthIncrease(F)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->f0:F

    .line 2
    .line 3
    cmpl-float v0, v0, p1

    .line 4
    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    iput p1, p0, Lcom/google/android/material/button/MaterialButton;->f0:F

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->v()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    instance-of p1, p1, Lo85;

    .line 20
    .line 21
    if-eqz p1, :cond_4

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Lo85;

    .line 28
    .line 29
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->f0:F

    .line 30
    .line 31
    float-to-int v0, v0

    .line 32
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    if-gez p0, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {p1, p0}, Lo85;->h(I)Lcom/google/android/material/button/MaterialButton;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {p1, p0}, Lo85;->g(I)Lcom/google/android/material/button/MaterialButton;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    if-nez v1, :cond_1

    .line 48
    .line 49
    if-nez p0, :cond_1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    if-nez v1, :cond_2

    .line 53
    .line 54
    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButton;->setDisplayedWidthDecrease(I)V

    .line 55
    .line 56
    .line 57
    :cond_2
    if-nez p0, :cond_3

    .line 58
    .line 59
    invoke-virtual {v1, v0}, Lcom/google/android/material/button/MaterialButton;->setDisplayedWidthDecrease(I)V

    .line 60
    .line 61
    .line 62
    :cond_3
    if-eqz v1, :cond_4

    .line 63
    .line 64
    if-eqz p0, :cond_4

    .line 65
    .line 66
    div-int/lit8 p1, v0, 0x2

    .line 67
    .line 68
    invoke-virtual {v1, p1}, Lcom/google/android/material/button/MaterialButton;->setDisplayedWidthDecrease(I)V

    .line 69
    .line 70
    .line 71
    add-int/lit8 v0, v0, 0x1

    .line 72
    .line 73
    div-int/lit8 v0, v0, 0x2

    .line 74
    .line 75
    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButton;->setDisplayedWidthDecrease(I)V

    .line 76
    .line 77
    .line 78
    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public final d()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->l()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->o()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_2

    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->k()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->n()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->m()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_3

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->p()Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-eqz p0, :cond_3

    .line 36
    .line 37
    :cond_2
    const/4 p0, 0x1

    .line 38
    return p0

    .line 39
    :cond_3
    const/4 p0, 0x0

    .line 40
    return p0
.end method

.method public final e(I)Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->getActualTextAlignment()Landroid/text/Layout$Alignment;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x1

    .line 6
    if-eq p1, v0, :cond_2

    .line 7
    .line 8
    const/4 v1, 0x3

    .line 9
    if-eq p1, v1, :cond_2

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    if-ne p1, v1, :cond_0

    .line 13
    .line 14
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 15
    .line 16
    if-eq p0, v1, :cond_2

    .line 17
    .line 18
    :cond_0
    const/4 v1, 0x4

    .line 19
    if-ne p1, v1, :cond_1

    .line 20
    .line 21
    sget-object p1, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 22
    .line 23
    if-ne p0, p1, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 p0, 0x0

    .line 27
    return p0

    .line 28
    :cond_2
    :goto_0
    return v0
.end method

.method public final f(II)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->p:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget v2, p0, Lcom/google/android/material/button/MaterialButton;->G:I

    .line 7
    .line 8
    if-nez v2, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v2, v1

    .line 16
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->t:Landroid/graphics/drawable/Drawable;

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    iget v3, p0, Lcom/google/android/material/button/MaterialButton;->G:I

    .line 21
    .line 22
    if-nez v3, :cond_3

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    goto :goto_1

    .line 29
    :cond_2
    move v3, v1

    .line 30
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->getTextLayoutWidth()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    sub-int/2addr p1, v0

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    sub-int/2addr p1, v0

    .line 40
    sub-int/2addr p1, v2

    .line 41
    sub-int/2addr p1, v3

    .line 42
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->J:I

    .line 43
    .line 44
    sub-int/2addr p1, v0

    .line 45
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    sub-int/2addr p1, v0

    .line 50
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->getActualTextAlignment()Landroid/text/Layout$Alignment;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 55
    .line 56
    if-ne v0, v2, :cond_4

    .line 57
    .line 58
    div-int/lit8 p1, p1, 0x2

    .line 59
    .line 60
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    const/4 v0, 0x1

    .line 65
    if-ne p0, v0, :cond_5

    .line 66
    .line 67
    move p0, v0

    .line 68
    goto :goto_2

    .line 69
    :cond_5
    move p0, v1

    .line 70
    :goto_2
    const/4 v2, 0x4

    .line 71
    if-ne p2, v2, :cond_6

    .line 72
    .line 73
    move v1, v0

    .line 74
    :cond_6
    if-eq p0, v1, :cond_7

    .line 75
    .line 76
    neg-int p0, p1

    .line 77
    return p0

    .line 78
    :cond_7
    return p1
.end method

.method public final g(II)I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->getTextHeight()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sub-int/2addr p1, v0

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    sub-int/2addr p1, v0

    .line 11
    sub-int/2addr p1, p2

    .line 12
    iget p2, p0, Lcom/google/android/material/button/MaterialButton;->J:I

    .line 13
    .line 14
    sub-int/2addr p1, p2

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    sub-int/2addr p1, p0

    .line 20
    div-int/lit8 p1, p1, 0x2

    .line 21
    .line 22
    const/4 p0, 0x0

    .line 23
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    return p0
.end method

.method public getA11yClassName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->y:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->y:Ljava/lang/String;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->j()Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    if-eqz p0, :cond_1

    .line 17
    .line 18
    const-class p0, Landroid/widget/CompoundButton;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const-class p0, Landroid/widget/Button;

    .line 22
    .line 23
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method

.method public getAllowedWidthDecrease()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/material/button/MaterialButton;->b0:I

    .line 2
    .line 3
    return p0
.end method

.method public getBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public getCornerRadius()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->q()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->d:Lp85;

    .line 8
    .line 9
    iget p0, p0, Lp85;->i:I

    .line 10
    .line 11
    return p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return p0
.end method

.method public getCornerSpringForce()Lhk7;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->d:Lp85;

    .line 2
    .line 3
    iget-object p0, p0, Lp85;->c:Lhk7;

    .line 4
    .line 5
    return-object p0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->p:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object p0
.end method

.method public getIconGravity()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/material/button/MaterialButton;->O:I

    .line 2
    .line 3
    return p0
.end method

.method public getIconPadding()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/material/button/MaterialButton;->J:I

    .line 2
    .line 3
    return p0
.end method

.method public getIconSize()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/material/button/MaterialButton;->G:I

    .line 2
    .line 3
    return p0
.end method

.method public getIconTint()Landroid/content/res/ColorStateList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->n:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    return-object p0
.end method

.method public getIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->k:Landroid/graphics/PorterDuff$Mode;

    .line 2
    .line 3
    return-object p0
.end method

.method public getInsetBottom()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->d:Lp85;

    .line 2
    .line 3
    iget p0, p0, Lp85;->h:I

    .line 4
    .line 5
    return p0
.end method

.method public getInsetLeft()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->d:Lp85;

    .line 2
    .line 3
    iget p0, p0, Lp85;->e:I

    .line 4
    .line 5
    return p0
.end method

.method public getInsetRight()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->d:Lp85;

    .line 2
    .line 3
    iget p0, p0, Lp85;->f:I

    .line 4
    .line 5
    return p0
.end method

.method public getInsetTop()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->d:Lp85;

    .line 2
    .line 3
    iget p0, p0, Lp85;->g:I

    .line 4
    .line 5
    return p0
.end method

.method public getRippleColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->q()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->d:Lp85;

    .line 8
    .line 9
    iget-object p0, p0, Lp85;->n:Landroid/content/res/ColorStateList;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return-object p0
.end method

.method public getSecondaryIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->t:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object p0
.end method

.method public getSecondaryIconGravity()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/material/button/MaterialButton;->P:I

    .line 2
    .line 3
    return p0
.end method

.method public getSecondaryIconTint()Landroid/content/res/ColorStateList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->r:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    return-object p0
.end method

.method public getSecondaryIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->q:Landroid/graphics/PorterDuff$Mode;

    .line 2
    .line 3
    return-object p0
.end method

.method public getShapeAppearance()Lrb7;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->q()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->d:Lp85;

    .line 8
    .line 9
    iget-object p0, p0, Lp85;->b:Lrb7;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    const-string p0, "Attempted to get ShapeAppearance from a MaterialButton which has an overwritten background."

    .line 13
    .line 14
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    return-object p0
.end method

.method public getShapeAppearanceModel()Ltb7;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->q()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->d:Lp85;

    .line 8
    .line 9
    iget-object p0, p0, Lp85;->b:Lrb7;

    .line 10
    .line 11
    invoke-interface {p0}, Lrb7;->d()Ltb7;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_0
    const-string p0, "Attempted to get ShapeAppearanceModel from a MaterialButton which has an overwritten background."

    .line 17
    .line 18
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    return-object p0
.end method

.method public getStrokeColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->q()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->d:Lp85;

    .line 8
    .line 9
    iget-object p0, p0, Lp85;->m:Landroid/content/res/ColorStateList;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return-object p0
.end method

.method public getStrokeWidth()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->q()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->d:Lp85;

    .line 8
    .line 9
    iget p0, p0, Lp85;->j:I

    .line 10
    .line 11
    return p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return p0
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->q()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->d:Lp85;

    .line 8
    .line 9
    iget-object p0, p0, Lp85;->l:Landroid/content/res/ColorStateList;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    invoke-super {p0}, Lcn;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->q()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->d:Lp85;

    .line 8
    .line 9
    iget-object p0, p0, Lp85;->k:Landroid/graphics/PorterDuff$Mode;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    invoke-super {p0}, Lcn;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public final h(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/button/MaterialButton;->t:Landroid/graphics/drawable/Drawable;

    .line 11
    .line 12
    if-eqz p1, :cond_3

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->n()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_3

    .line 19
    .line 20
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->t:Landroid/graphics/drawable/Drawable;

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/button/MaterialButton;->t:Landroid/graphics/drawable/Drawable;

    .line 24
    .line 25
    if-eqz p1, :cond_3

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->p()Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_3

    .line 32
    .line 33
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->t:Landroid/graphics/drawable/Drawable;

    .line 34
    .line 35
    return-object p0

    .line 36
    :cond_2
    iget-object p1, p0, Lcom/google/android/material/button/MaterialButton;->t:Landroid/graphics/drawable/Drawable;

    .line 37
    .line 38
    if-eqz p1, :cond_3

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->o()Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_3

    .line 45
    .line 46
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->t:Landroid/graphics/drawable/Drawable;

    .line 47
    .line 48
    return-object p0

    .line 49
    :cond_3
    :goto_0
    const/4 p0, 0x0

    .line 50
    return-object p0
.end method

.method public final i(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/button/MaterialButton;->p:Landroid/graphics/drawable/Drawable;

    .line 11
    .line 12
    if-eqz p1, :cond_3

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->k()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_3

    .line 19
    .line 20
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->p:Landroid/graphics/drawable/Drawable;

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/button/MaterialButton;->p:Landroid/graphics/drawable/Drawable;

    .line 24
    .line 25
    if-eqz p1, :cond_3

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->k()Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_3

    .line 32
    .line 33
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->p:Landroid/graphics/drawable/Drawable;

    .line 34
    .line 35
    return-object p0

    .line 36
    :cond_2
    iget-object p1, p0, Lcom/google/android/material/button/MaterialButton;->p:Landroid/graphics/drawable/Drawable;

    .line 37
    .line 38
    if-eqz p1, :cond_3

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->l()Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_3

    .line 45
    .line 46
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->p:Landroid/graphics/drawable/Drawable;

    .line 47
    .line 48
    return-object p0

    .line 49
    :cond_3
    :goto_0
    const/4 p0, 0x0

    .line 50
    return-object p0
.end method

.method public final isChecked()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/google/android/material/button/MaterialButton;->M:Z

    .line 2
    .line 3
    return p0
.end method

.method public final j()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->d:Lp85;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-boolean p0, p0, Lp85;->s:Z

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public final k()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/google/android/material/button/MaterialButton;->O:I

    .line 2
    .line 3
    const/4 v0, 0x3

    .line 4
    if-eq p0, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x4

    .line 7
    if-ne p0, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return p0

    .line 12
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 13
    return p0
.end method

.method public final l()Z
    .locals 2

    .line 1
    iget p0, p0, Lcom/google/android/material/button/MaterialButton;->O:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_1

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    if-ne p0, v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return p0

    .line 12
    :cond_1
    :goto_0
    return v0
.end method

.method public final m()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/google/android/material/button/MaterialButton;->O:I

    .line 2
    .line 3
    const/16 v0, 0x10

    .line 4
    .line 5
    if-eq p0, v0, :cond_1

    .line 6
    .line 7
    const/16 v0, 0x20

    .line 8
    .line 9
    if-ne p0, v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return p0

    .line 14
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 15
    return p0
.end method

.method public final n()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/google/android/material/button/MaterialButton;->P:I

    .line 2
    .line 3
    const/4 v0, 0x3

    .line 4
    if-eq p0, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x4

    .line 7
    if-ne p0, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return p0

    .line 12
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 13
    return p0
.end method

.method public final o()Z
    .locals 2

    .line 1
    iget p0, p0, Lcom/google/android/material/button/MaterialButton;->P:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_1

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    if-ne p0, v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return p0

    .line 12
    :cond_1
    :goto_0
    return v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->q()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->d:Lp85;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Lp85;->a(Z)Lc95;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {p0, v0}, Lxh8;->D(Landroid/view/View;Lc95;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final onCreateDrawableState(I)[I
    .locals 1

    .line 1
    add-int/lit8 p1, p1, 0x2

    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->j()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    sget-object v0, Lcom/google/android/material/button/MaterialButton;->i0:[I

    .line 14
    .line 15
    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-boolean p0, p0, Lcom/google/android/material/button/MaterialButton;->M:Z

    .line 19
    .line 20
    if-eqz p0, :cond_1

    .line 21
    .line 22
    sget-object p0, Lcom/google/android/material/button/MaterialButton;->j0:[I

    .line 23
    .line 24
    invoke-static {p1, p0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    .line 25
    .line 26
    .line 27
    :cond_1
    return-object p1
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcn;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getA11yClassName()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 9
    .line 10
    .line 11
    iget-boolean p0, p0, Lcom/google/android/material/button/MaterialButton;->M:Z

    .line 12
    .line 13
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityRecord;->setChecked(Z)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcn;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getA11yClassName()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->j()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 16
    .line 17
    .line 18
    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButton;->M:Z

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Lcn;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/button/MaterialButton;->u(II)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/button/MaterialButton;->x(II)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 35
    .line 36
    iget p2, p0, Lcom/google/android/material/button/MaterialButton;->Q:I

    .line 37
    .line 38
    const/high16 p3, -0x31000000

    .line 39
    .line 40
    if-eq p2, p1, :cond_0

    .line 41
    .line 42
    iput p1, p0, Lcom/google/android/material/button/MaterialButton;->Q:I

    .line 43
    .line 44
    iput p3, p0, Lcom/google/android/material/button/MaterialButton;->R:F

    .line 45
    .line 46
    :cond_0
    iget p1, p0, Lcom/google/android/material/button/MaterialButton;->R:F

    .line 47
    .line 48
    cmpl-float p1, p1, p3

    .line 49
    .line 50
    if-nez p1, :cond_1

    .line 51
    .line 52
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    int-to-float p1, p1

    .line 57
    iput p1, p0, Lcom/google/android/material/button/MaterialButton;->R:F

    .line 58
    .line 59
    iget-object p1, p0, Lcom/google/android/material/button/MaterialButton;->U:Landroid/widget/LinearLayout$LayoutParams;

    .line 60
    .line 61
    if-nez p1, :cond_1

    .line 62
    .line 63
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    instance-of p1, p1, Lo85;

    .line 68
    .line 69
    if-eqz p1, :cond_1

    .line 70
    .line 71
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    check-cast p1, Lo85;

    .line 76
    .line 77
    invoke-virtual {p1}, Lo85;->getButtonSizeChange()Lpm7;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    if-eqz p1, :cond_1

    .line 82
    .line 83
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 88
    .line 89
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButton;->U:Landroid/widget/LinearLayout$LayoutParams;

    .line 90
    .line 91
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 92
    .line 93
    iget-object p2, p0, Lcom/google/android/material/button/MaterialButton;->U:Landroid/widget/LinearLayout$LayoutParams;

    .line 94
    .line 95
    invoke-direct {p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 96
    .line 97
    .line 98
    iget p2, p0, Lcom/google/android/material/button/MaterialButton;->R:F

    .line 99
    .line 100
    float-to-int p2, p2

    .line 101
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 102
    .line 103
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    .line 105
    .line 106
    :cond_1
    iget p1, p0, Lcom/google/android/material/button/MaterialButton;->b0:I

    .line 107
    .line 108
    const/4 p2, 0x0

    .line 109
    const/high16 p3, -0x80000000

    .line 110
    .line 111
    if-ne p1, p3, :cond_4

    .line 112
    .line 113
    iget-object p1, p0, Lcom/google/android/material/button/MaterialButton;->p:Landroid/graphics/drawable/Drawable;

    .line 114
    .line 115
    if-nez p1, :cond_2

    .line 116
    .line 117
    move p1, p2

    .line 118
    goto :goto_0

    .line 119
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getIconPadding()I

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    iget p4, p0, Lcom/google/android/material/button/MaterialButton;->G:I

    .line 124
    .line 125
    if-nez p4, :cond_3

    .line 126
    .line 127
    iget-object p4, p0, Lcom/google/android/material/button/MaterialButton;->p:Landroid/graphics/drawable/Drawable;

    .line 128
    .line 129
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 130
    .line 131
    .line 132
    move-result p4

    .line 133
    :cond_3
    add-int/2addr p1, p4

    .line 134
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 135
    .line 136
    .line 137
    move-result p4

    .line 138
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->getTextLayoutWidth()I

    .line 139
    .line 140
    .line 141
    move-result p5

    .line 142
    sub-int/2addr p4, p5

    .line 143
    sub-int/2addr p4, p1

    .line 144
    iput p4, p0, Lcom/google/android/material/button/MaterialButton;->b0:I

    .line 145
    .line 146
    :cond_4
    iget p1, p0, Lcom/google/android/material/button/MaterialButton;->S:I

    .line 147
    .line 148
    if-ne p1, p3, :cond_5

    .line 149
    .line 150
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    .line 151
    .line 152
    .line 153
    move-result p1

    .line 154
    iput p1, p0, Lcom/google/android/material/button/MaterialButton;->S:I

    .line 155
    .line 156
    :cond_5
    iget p1, p0, Lcom/google/android/material/button/MaterialButton;->T:I

    .line 157
    .line 158
    if-ne p1, p3, :cond_6

    .line 159
    .line 160
    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    .line 161
    .line 162
    .line 163
    move-result p1

    .line 164
    iput p1, p0, Lcom/google/android/material/button/MaterialButton;->T:I

    .line 165
    .line 166
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    instance-of p1, p1, Lo85;

    .line 171
    .line 172
    if-eqz p1, :cond_7

    .line 173
    .line 174
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    check-cast p1, Lo85;

    .line 179
    .line 180
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getOrientation()I

    .line 181
    .line 182
    .line 183
    move-result p1

    .line 184
    if-nez p1, :cond_7

    .line 185
    .line 186
    const/4 p2, 0x1

    .line 187
    :cond_7
    iput-boolean p2, p0, Lcom/google/android/material/button/MaterialButton;->a0:Z

    .line 188
    .line 189
    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lj85;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    check-cast p1, Lj85;

    .line 10
    .line 11
    iget-object v0, p1, Le3;->a:Landroid/os/Parcelable;

    .line 12
    .line 13
    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 14
    .line 15
    .line 16
    iget-boolean p1, p1, Lj85;->c:Z

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setChecked(Z)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lj85;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Le3;-><init>(Landroid/os/Parcelable;)V

    .line 8
    .line 9
    .line 10
    iget-boolean p0, p0, Lcom/google/android/material/button/MaterialButton;->M:Z

    .line 11
    .line 12
    iput-boolean p0, v1, Lj85;->c:Z

    .line 13
    .line 14
    return-object v1
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcn;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/button/MaterialButton;->u(II)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/button/MaterialButton;->x(II)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final p()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/google/android/material/button/MaterialButton;->P:I

    .line 2
    .line 3
    const/16 v0, 0x10

    .line 4
    .line 5
    if-eq p0, v0, :cond_1

    .line 6
    .line 7
    const/16 v0, 0x20

    .line 8
    .line 9
    if-ne p0, v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return p0

    .line 14
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 15
    return p0
.end method

.method public final performClick()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->d:Lp85;

    .line 9
    .line 10
    iget-boolean v0, v0, Lp85;->t:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->toggle()V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v0, v1

    .line 20
    :goto_0
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    if-nez v2, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0, v1}, Landroid/view/View;->playSoundEffect(I)V

    .line 29
    .line 30
    .line 31
    :cond_1
    return v2
.end method

.method public final q()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->d:Lp85;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-boolean p0, p0, Lp85;->q:Z

    .line 6
    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public final r(Z)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->c0:Lpm7;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_8

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->h0:Lgk7;

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    new-instance v0, Lgk7;

    .line 12
    .line 13
    sget-object v1, Lcom/google/android/material/button/MaterialButton;->k0:Lh85;

    .line 14
    .line 15
    invoke-direct {v0, p0, v1}, Lgk7;-><init>(Ljava/lang/Object;Lwx3;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/google/android/material/button/MaterialButton;->h0:Lgk7;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v1}, Lji8;->H(Landroid/content/Context;)Lhk7;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iput-object v1, v0, Lgk7;->m:Lhk7;

    .line 29
    .line 30
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButton;->a0:Z

    .line 31
    .line 32
    if-eqz v0, :cond_c

    .line 33
    .line 34
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->e0:Lk85;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    const/4 v1, 0x2

    .line 41
    const/4 v2, 0x1

    .line 42
    const/4 v3, 0x0

    .line 43
    if-eq v0, v2, :cond_3

    .line 44
    .line 45
    if-eq v0, v1, :cond_3

    .line 46
    .line 47
    const/4 v4, 0x3

    .line 48
    if-eq v0, v4, :cond_2

    .line 49
    .line 50
    move v0, v3

    .line 51
    goto :goto_0

    .line 52
    :cond_2
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->d0:I

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_3
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->d0:I

    .line 56
    .line 57
    div-int/2addr v0, v1

    .line 58
    :goto_0
    iget-object v4, p0, Lcom/google/android/material/button/MaterialButton;->c0:Lpm7;

    .line 59
    .line 60
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    iget-object v6, v4, Lpm7;->c:[[I

    .line 65
    .line 66
    move v7, v3

    .line 67
    :goto_1
    iget v8, v4, Lpm7;->a:I

    .line 68
    .line 69
    const/4 v9, -0x1

    .line 70
    if-ge v7, v8, :cond_5

    .line 71
    .line 72
    aget-object v8, v6, v7

    .line 73
    .line 74
    invoke-static {v8, v5}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    .line 75
    .line 76
    .line 77
    move-result v8

    .line 78
    if-eqz v8, :cond_4

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_4
    add-int/lit8 v7, v7, 0x1

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_5
    move v7, v9

    .line 85
    :goto_2
    if-gez v7, :cond_8

    .line 86
    .line 87
    sget-object v5, Landroid/util/StateSet;->WILD_CARD:[I

    .line 88
    .line 89
    iget-object v6, v4, Lpm7;->c:[[I

    .line 90
    .line 91
    move v7, v3

    .line 92
    :goto_3
    iget v8, v4, Lpm7;->a:I

    .line 93
    .line 94
    if-ge v7, v8, :cond_7

    .line 95
    .line 96
    aget-object v8, v6, v7

    .line 97
    .line 98
    invoke-static {v8, v5}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    .line 99
    .line 100
    .line 101
    move-result v8

    .line 102
    if-eqz v8, :cond_6

    .line 103
    .line 104
    move v9, v7

    .line 105
    goto :goto_4

    .line 106
    :cond_6
    add-int/lit8 v7, v7, 0x1

    .line 107
    .line 108
    goto :goto_3

    .line 109
    :cond_7
    :goto_4
    move v7, v9

    .line 110
    :cond_8
    if-gez v7, :cond_9

    .line 111
    .line 112
    iget-object v4, v4, Lpm7;->b:Lvk9;

    .line 113
    .line 114
    goto :goto_5

    .line 115
    :cond_9
    iget-object v4, v4, Lpm7;->d:[Lvk9;

    .line 116
    .line 117
    aget-object v4, v4, v7

    .line 118
    .line 119
    :goto_5
    iget-object v4, v4, Lvk9;->b:Ljava/lang/Object;

    .line 120
    .line 121
    check-cast v4, Lom7;

    .line 122
    .line 123
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 124
    .line 125
    .line 126
    move-result v5

    .line 127
    iget v6, v4, Lom7;->b:F

    .line 128
    .line 129
    iget v4, v4, Lom7;->a:I

    .line 130
    .line 131
    if-ne v4, v2, :cond_a

    .line 132
    .line 133
    int-to-float v1, v5

    .line 134
    mul-float/2addr v6, v1

    .line 135
    :goto_6
    float-to-int v3, v6

    .line 136
    goto :goto_7

    .line 137
    :cond_a
    if-ne v4, v1, :cond_b

    .line 138
    .line 139
    goto :goto_6

    .line 140
    :cond_b
    :goto_7
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    iget-object v1, p0, Lcom/google/android/material/button/MaterialButton;->h0:Lgk7;

    .line 145
    .line 146
    int-to-float v0, v0

    .line 147
    invoke-virtual {v1, v0}, Lgk7;->a(F)V

    .line 148
    .line 149
    .line 150
    if-eqz p1, :cond_c

    .line 151
    .line 152
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->h0:Lgk7;

    .line 153
    .line 154
    invoke-virtual {p0}, Lgk7;->e()V

    .line 155
    .line 156
    .line 157
    :cond_c
    :goto_8
    return-void
.end method

.method public final refreshDrawableState()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->p:Landroid/graphics/drawable/Drawable;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/google/android/material/button/MaterialButton;->p:Landroid/graphics/drawable/Drawable;

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final s(Ljava/lang/Runnable;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->h0:Lgk7;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, v0, Lgk7;->f:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Lp12;

    .line 10
    .line 11
    const/4 v1, 0x4

    .line 12
    invoke-direct {v0, v1, p0, p1}, Lp12;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    const/4 p0, 0x1

    .line 19
    return p0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    return p0
.end method

.method public setA11yClassName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButton;->y:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->q()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->d:Lp85;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v0}, Lp85;->a(Z)Lc95;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lp85;->a(Z)Lc95;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0, p1}, Lc95;->setTint(I)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void

    .line 24
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->q()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eq p1, v0, :cond_0

    .line 12
    .line 13
    const-string v0, "MaterialButton"

    .line 14
    .line 15
    const-string v1, "MaterialButton manages its own background to control elevation, shape, color and states. Consider using backgroundTint, shapeAppearance and other attributes where available. A custom background will ignore these attributes and you should consider handling interaction states such as pressed, focused and disabled"

    .line 16
    .line 17
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    iget-object v1, p0, Lcom/google/android/material/button/MaterialButton;->d:Lp85;

    .line 22
    .line 23
    iput-boolean v0, v1, Lp85;->q:Z

    .line 24
    .line 25
    iget-object v0, v1, Lp85;->a:Lcom/google/android/material/button/MaterialButton;

    .line 26
    .line 27
    iget-object v2, v1, Lp85;->l:Landroid/content/res/ColorStateList;

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Lcom/google/android/material/button/MaterialButton;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 30
    .line 31
    .line 32
    iget-object v1, v1, Lp85;->k:Landroid/graphics/PorterDuff$Mode;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 35
    .line 36
    .line 37
    invoke-super {p0, p1}, Lcn;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_1
    invoke-super {p0, p1}, Lcn;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0, p1}, Liz1;->m(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setCheckable(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->q()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->d:Lp85;

    .line 8
    .line 9
    iput-boolean p1, p0, Lp85;->s:Z

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setCheckedInternal(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setCompoundDrawablePadding(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawablePadding()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eq v0, p1, :cond_0

    .line 6
    .line 7
    const/high16 v0, -0x31000000

    .line 8
    .line 9
    iput v0, p0, Lcom/google/android/material/button/MaterialButton;->R:F

    .line 10
    .line 11
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public setCornerRadius(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->q()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->d:Lp85;

    .line 8
    .line 9
    iget-boolean v0, p0, Lp85;->r:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget v0, p0, Lp85;->i:I

    .line 14
    .line 15
    if-eq v0, p1, :cond_1

    .line 16
    .line 17
    :cond_0
    iput p1, p0, Lp85;->i:I

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lp85;->r:Z

    .line 21
    .line 22
    iget-object v0, p0, Lp85;->b:Lrb7;

    .line 23
    .line 24
    int-to-float p1, p1

    .line 25
    invoke-interface {v0, p1}, Lrb7;->a(F)Ltb7;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Lp85;->b:Lrb7;

    .line 30
    .line 31
    invoke-virtual {p0}, Lp85;->d()V

    .line 32
    .line 33
    .line 34
    :cond_1
    return-void
.end method

.method public setCornerRadiusResource(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->q()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setCornerRadius(I)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public setCornerSpringForce(Lhk7;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->d:Lp85;

    .line 2
    .line 3
    iput-object p1, p0, Lp85;->c:Lhk7;

    .line 4
    .line 5
    iget-object p1, p0, Lp85;->b:Lrb7;

    .line 6
    .line 7
    instance-of p1, p1, Lnm7;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lp85;->d()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public setDisplayedWidthDecrease(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->b0:I

    .line 2
    .line 3
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    int-to-float p1, p1

    .line 8
    iput p1, p0, Lcom/google/android/material/button/MaterialButton;->g0:F

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->v()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public setElevation(F)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setElevation(F)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->q()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->d:Lp85;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p0, v0}, Lp85;->a(Z)Lc95;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0, p1}, Lc95;->s(F)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->p:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eq v0, p1, :cond_1

    .line 4
    .line 5
    new-instance v0, Lb32;

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    invoke-direct {v0, v1, p0, p1}, Lb32;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButton;->s(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/high16 v0, -0x31000000

    .line 19
    .line 20
    iput v0, p0, Lcom/google/android/material/button/MaterialButton;->R:F

    .line 21
    .line 22
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButton;->p:Landroid/graphics/drawable/Drawable;

    .line 23
    .line 24
    const/4 p1, 0x1

    .line 25
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->t(Z)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/button/MaterialButton;->u(II)V

    .line 37
    .line 38
    .line 39
    :cond_1
    :goto_0
    return-void
.end method

.method public setIconGravity(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->O:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->p:Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->t:Landroid/graphics/drawable/Drawable;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->d()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const-string p0, "iconGravity cannot have the same alignment as secondaryIconGravity"

    .line 21
    .line 22
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    :goto_0
    iput p1, p0, Lcom/google/android/material/button/MaterialButton;->O:I

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/button/MaterialButton;->u(II)V

    .line 37
    .line 38
    .line 39
    :cond_2
    return-void
.end method

.method public setIconPadding(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->J:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput p1, p0, Lcom/google/android/material/button/MaterialButton;->J:I

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setCompoundDrawablePadding(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setIconResource(I)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0, p1}, Liz1;->m(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public setIconSize(I)V
    .locals 1

    .line 1
    if-ltz p1, :cond_2

    .line 2
    .line 3
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->G:I

    .line 4
    .line 5
    if-eq v0, p1, :cond_1

    .line 6
    .line 7
    new-instance v0, Lg85;

    .line 8
    .line 9
    invoke-direct {v0, p0, p1}, Lg85;-><init>(Lcom/google/android/material/button/MaterialButton;I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButton;->s(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/high16 v0, -0x31000000

    .line 20
    .line 21
    iput v0, p0, Lcom/google/android/material/button/MaterialButton;->R:F

    .line 22
    .line 23
    iput p1, p0, Lcom/google/android/material/button/MaterialButton;->G:I

    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->t(Z)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->w(Z)V

    .line 30
    .line 31
    .line 32
    :cond_1
    :goto_0
    return-void

    .line 33
    :cond_2
    const-string p0, "iconSize cannot be less than 0"

    .line 34
    .line 35
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public setIconTint(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->n:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButton;->n:Landroid/content/res/ColorStateList;

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->t(Z)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public setIconTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->k:Landroid/graphics/PorterDuff$Mode;

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButton;->k:Landroid/graphics/PorterDuff$Mode;

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->t(Z)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public setIconTintResource(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p1}, Lzh8;->q(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setIconTint(Landroid/content/res/ColorStateList;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setInsetBottom(I)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->d:Lp85;

    .line 2
    .line 3
    iget v0, p0, Lp85;->e:I

    .line 4
    .line 5
    iget v1, p0, Lp85;->g:I

    .line 6
    .line 7
    iget v2, p0, Lp85;->f:I

    .line 8
    .line 9
    invoke-virtual {p0, v0, v1, v2, p1}, Lp85;->b(IIII)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setInsetLeft(I)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->d:Lp85;

    .line 2
    .line 3
    iget v0, p0, Lp85;->g:I

    .line 4
    .line 5
    iget v1, p0, Lp85;->f:I

    .line 6
    .line 7
    iget v2, p0, Lp85;->h:I

    .line 8
    .line 9
    invoke-virtual {p0, p1, v0, v1, v2}, Lp85;->b(IIII)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setInsetRight(I)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->d:Lp85;

    .line 2
    .line 3
    iget v0, p0, Lp85;->e:I

    .line 4
    .line 5
    iget v1, p0, Lp85;->g:I

    .line 6
    .line 7
    iget v2, p0, Lp85;->h:I

    .line 8
    .line 9
    invoke-virtual {p0, v0, v1, p1, v2}, Lp85;->b(IIII)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setInsetTop(I)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->d:Lp85;

    .line 2
    .line 3
    iget v0, p0, Lp85;->e:I

    .line 4
    .line 5
    iget v1, p0, Lp85;->f:I

    .line 6
    .line 7
    iget v2, p0, Lp85;->h:I

    .line 8
    .line 9
    invoke-virtual {p0, v0, p1, v1, v2}, Lp85;->b(IIII)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setInternalBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcn;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setOnPressedChangeListenerInternal(Li85;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButton;->f:Li85;

    .line 2
    .line 3
    return-void
.end method

.method public setOpticalCenterEnabled(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButton;->V:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_2

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButton;->V:Z

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iget-object v1, p0, Lcom/google/android/material/button/MaterialButton;->d:Lp85;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    new-instance p1, Lgb;

    .line 13
    .line 14
    const/4 v2, 0x6

    .line 15
    invoke-direct {p1, p0, v2}, Lgb;-><init>(Ljava/lang/Object;I)V

    .line 16
    .line 17
    .line 18
    iput-object p1, v1, Lp85;->d:Lgb;

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Lp85;->a(Z)Lc95;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iput-object p1, v0, Lc95;->W:Lgb;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 p1, 0x0

    .line 30
    iput-object p1, v1, Lp85;->d:Lgb;

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Lp85;->a(Z)Lc95;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    iput-object p1, v0, Lc95;->W:Lgb;

    .line 39
    .line 40
    :cond_1
    :goto_0
    new-instance p1, Lo10;

    .line 41
    .line 42
    const/4 v0, 0x4

    .line 43
    invoke-direct {p1, p0, v0}, Lo10;-><init>(Ljava/lang/Object;I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 47
    .line 48
    .line 49
    :cond_2
    return-void
.end method

.method public setPressed(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->f:Li85;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast v0, Lfu;

    .line 6
    .line 7
    iget-object v0, v0, Lfu;->a:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lo85;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 15
    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->r(Z)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public setRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->q()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->d:Lp85;

    .line 8
    .line 9
    iget-object v0, p0, Lp85;->a:Lcom/google/android/material/button/MaterialButton;

    .line 10
    .line 11
    iget-object v1, p0, Lp85;->n:Landroid/content/res/ColorStateList;

    .line 12
    .line 13
    if-eq v1, p1, :cond_0

    .line 14
    .line 15
    iput-object p1, p0, Lp85;->n:Landroid/content/res/ColorStateList;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    instance-of p0, p0, Landroid/graphics/drawable/RippleDrawable;

    .line 22
    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    check-cast p0, Landroid/graphics/drawable/RippleDrawable;

    .line 30
    .line 31
    invoke-static {p1}, Lxn6;->c(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method

.method public setRippleColorResource(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->q()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0, p1}, Lzh8;->q(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setRippleColor(Landroid/content/res/ColorStateList;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public setSecondaryIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->t:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eq v0, p1, :cond_1

    .line 4
    .line 5
    new-instance v0, Lz22;

    .line 6
    .line 7
    const/4 v1, 0x7

    .line 8
    invoke-direct {v0, v1, p0, p1}, Lz22;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButton;->s(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/high16 v0, -0x31000000

    .line 19
    .line 20
    iput v0, p0, Lcom/google/android/material/button/MaterialButton;->R:F

    .line 21
    .line 22
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButton;->t:Landroid/graphics/drawable/Drawable;

    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButton;->x:Z

    .line 26
    .line 27
    const/4 p1, 0x1

    .line 28
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->w(Z)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/button/MaterialButton;->x(II)V

    .line 40
    .line 41
    .line 42
    :cond_1
    :goto_0
    return-void
.end method

.method public setSecondaryIconGravity(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->P:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->t:Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->p:Landroid/graphics/drawable/Drawable;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->d()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const-string p0, "secondaryIconGravity cannot have the same alignment as iconGravity"

    .line 21
    .line 22
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    :goto_0
    iput p1, p0, Lcom/google/android/material/button/MaterialButton;->P:I

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/button/MaterialButton;->x(II)V

    .line 37
    .line 38
    .line 39
    :cond_2
    return-void
.end method

.method public setSecondaryIconResource(I)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0, p1}, Liz1;->m(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setSecondaryIcon(Landroid/graphics/drawable/Drawable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public setSecondaryIconTint(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->r:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButton;->r:Landroid/content/res/ColorStateList;

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->w(Z)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public setSecondaryIconTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->q:Landroid/graphics/PorterDuff$Mode;

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButton;->q:Landroid/graphics/PorterDuff$Mode;

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->w(Z)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public setSecondaryIconTintResource(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p1}, Lzh8;->q(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setSecondaryIconTint(Landroid/content/res/ColorStateList;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setShapeAppearance(Lrb7;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->q()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->d:Lp85;

    .line 8
    .line 9
    iget-object v1, v0, Lp85;->c:Lhk7;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    invoke-interface {p1}, Lrb7;->f()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-static {p0}, Lji8;->H(Landroid/content/Context;)Lhk7;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    iput-object p0, v0, Lp85;->c:Lhk7;

    .line 28
    .line 29
    iget-object p0, v0, Lp85;->b:Lrb7;

    .line 30
    .line 31
    instance-of p0, p0, Lnm7;

    .line 32
    .line 33
    if-eqz p0, :cond_0

    .line 34
    .line 35
    invoke-virtual {v0}, Lp85;->d()V

    .line 36
    .line 37
    .line 38
    :cond_0
    iput-object p1, v0, Lp85;->b:Lrb7;

    .line 39
    .line 40
    invoke-virtual {v0}, Lp85;->d()V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_1
    const-string p0, "Attempted to set ShapeAppearance on a MaterialButton which has an overwritten background."

    .line 45
    .line 46
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public setShapeAppearanceModel(Ltb7;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->q()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->d:Lp85;

    .line 8
    .line 9
    iput-object p1, p0, Lp85;->b:Lrb7;

    .line 10
    .line 11
    invoke-virtual {p0}, Lp85;->d()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    const-string p0, "Attempted to set ShapeAppearanceModel on a MaterialButton which has an overwritten background."

    .line 16
    .line 17
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public setShouldDrawSurfaceColorStroke(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->q()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->d:Lp85;

    .line 8
    .line 9
    iput-boolean p1, p0, Lp85;->p:Z

    .line 10
    .line 11
    invoke-virtual {p0}, Lp85;->e()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public setSizeChange(Lpm7;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->c0:Lpm7;

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButton;->c0:Lpm7;

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->r(Z)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public setStrokeColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->q()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->d:Lp85;

    .line 8
    .line 9
    iget-object v0, p0, Lp85;->m:Landroid/content/res/ColorStateList;

    .line 10
    .line 11
    if-eq v0, p1, :cond_0

    .line 12
    .line 13
    iput-object p1, p0, Lp85;->m:Landroid/content/res/ColorStateList;

    .line 14
    .line 15
    invoke-virtual {p0}, Lp85;->e()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public setStrokeColorResource(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->q()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0, p1}, Lzh8;->q(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public setStrokeWidth(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->q()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->d:Lp85;

    .line 8
    .line 9
    iget v0, p0, Lp85;->j:I

    .line 10
    .line 11
    if-eq v0, p1, :cond_0

    .line 12
    .line 13
    iput p1, p0, Lp85;->j:I

    .line 14
    .line 15
    invoke-virtual {p0}, Lp85;->e()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public setStrokeWidthResource(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->q()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setStrokeWidth(I)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->q()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->d:Lp85;

    .line 8
    .line 9
    iget-object v0, p0, Lp85;->l:Landroid/content/res/ColorStateList;

    .line 10
    .line 11
    if-eq v0, p1, :cond_0

    .line 12
    .line 13
    iput-object p1, p0, Lp85;->l:Landroid/content/res/ColorStateList;

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    invoke-virtual {p0, p1}, Lp85;->a(Z)Lc95;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lp85;->a(Z)Lc95;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iget-object p0, p0, Lp85;->l:Landroid/content/res/ColorStateList;

    .line 27
    .line 28
    invoke-virtual {p1, p0}, Lc95;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void

    .line 32
    :cond_1
    invoke-super {p0, p1}, Lcn;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->q()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->d:Lp85;

    .line 8
    .line 9
    iget-object v0, p0, Lp85;->k:Landroid/graphics/PorterDuff$Mode;

    .line 10
    .line 11
    if-eq v0, p1, :cond_0

    .line 12
    .line 13
    iput-object p1, p0, Lp85;->k:Landroid/graphics/PorterDuff$Mode;

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    invoke-virtual {p0, p1}, Lp85;->a(Z)Lc95;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lp85;->k:Landroid/graphics/PorterDuff$Mode;

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lp85;->a(Z)Lc95;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iget-object p0, p0, Lp85;->k:Landroid/graphics/PorterDuff$Mode;

    .line 31
    .line 32
    invoke-virtual {p1, p0}, Lc95;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void

    .line 36
    :cond_1
    invoke-super {p0, p1}, Lcn;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 1

    .line 1
    const/high16 v0, -0x31000000

    .line 2
    .line 3
    iput v0, p0, Lcom/google/android/material/button/MaterialButton;->R:F

    .line 4
    .line 5
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setTextAlignment(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setTextAlignment(I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/button/MaterialButton;->u(II)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/button/MaterialButton;->x(II)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final setTextAppearance(Landroid/content/Context;I)V
    .locals 1

    .line 1
    const/high16 v0, -0x31000000

    .line 2
    .line 3
    iput v0, p0, Lcom/google/android/material/button/MaterialButton;->R:F

    .line 4
    .line 5
    invoke-super {p0, p1, p2}, Lcn;->setTextAppearance(Landroid/content/Context;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final setTextSize(IF)V
    .locals 1

    .line 1
    const/high16 v0, -0x31000000

    .line 2
    .line 3
    iput v0, p0, Lcom/google/android/material/button/MaterialButton;->R:F

    .line 4
    .line 5
    invoke-super {p0, p1, p2}, Lcn;->setTextSize(IF)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setToggleCheckedStateOnClick(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->d:Lp85;

    .line 2
    .line 3
    iput-boolean p1, p0, Lp85;->t:Z

    .line 4
    .line 5
    return-void
.end method

.method public setWidth(I)V
    .locals 1

    .line 1
    const/high16 v0, -0x31000000

    .line 2
    .line 3
    iput v0, p0, Lcom/google/android/material/button/MaterialButton;->R:F

    .line 4
    .line 5
    invoke-super {p0, p1}, Landroid/widget/TextView;->setWidth(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setWidthChangeDirection(Lk85;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->e0:Lk85;

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButton;->e0:Lk85;

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->r(Z)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public setWidthChangeMax(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->d0:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput p1, p0, Lcom/google/android/material/button/MaterialButton;->d0:I

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->r(Z)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final t(Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->p:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/google/android/material/button/MaterialButton;->p:Landroid/graphics/drawable/Drawable;

    .line 11
    .line 12
    iget-object v2, p0, Lcom/google/android/material/button/MaterialButton;->n:Landroid/content/res/ColorStateList;

    .line 13
    .line 14
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->k:Landroid/graphics/PorterDuff$Mode;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v2, p0, Lcom/google/android/material/button/MaterialButton;->p:Landroid/graphics/drawable/Drawable;

    .line 22
    .line 23
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->G:I

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->p:Landroid/graphics/drawable/Drawable;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    :goto_0
    iget v2, p0, Lcom/google/android/material/button/MaterialButton;->G:I

    .line 38
    .line 39
    if-eqz v2, :cond_2

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_2
    iget-object v2, p0, Lcom/google/android/material/button/MaterialButton;->p:Landroid/graphics/drawable/Drawable;

    .line 43
    .line 44
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    :goto_1
    iget-object v3, p0, Lcom/google/android/material/button/MaterialButton;->p:Landroid/graphics/drawable/Drawable;

    .line 49
    .line 50
    iget v4, p0, Lcom/google/android/material/button/MaterialButton;->H:I

    .line 51
    .line 52
    iget v5, p0, Lcom/google/android/material/button/MaterialButton;->I:I

    .line 53
    .line 54
    add-int/2addr v0, v4

    .line 55
    add-int/2addr v2, v5

    .line 56
    invoke-virtual {v3, v4, v5, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->p:Landroid/graphics/drawable/Drawable;

    .line 60
    .line 61
    invoke-virtual {v0, v1, p1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 62
    .line 63
    .line 64
    :cond_3
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->p:Landroid/graphics/drawable/Drawable;

    .line 65
    .line 66
    if-eqz v0, :cond_5

    .line 67
    .line 68
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->t:Landroid/graphics/drawable/Drawable;

    .line 69
    .line 70
    if-eqz v0, :cond_5

    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->d()Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-nez v0, :cond_4

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_4
    const-string p0, "iconGravity cannot have the same alignment as secondaryIconGravity"

    .line 80
    .line 81
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->p:Landroid/graphics/drawable/Drawable;

    .line 86
    .line 87
    if-nez v0, :cond_6

    .line 88
    .line 89
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->t:Landroid/graphics/drawable/Drawable;

    .line 90
    .line 91
    if-eqz v0, :cond_6

    .line 92
    .line 93
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->d()Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-eqz v0, :cond_6

    .line 98
    .line 99
    goto/16 :goto_4

    .line 100
    .line 101
    :cond_6
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    const/4 v2, 0x0

    .line 106
    aget-object v3, v0, v2

    .line 107
    .line 108
    aget-object v4, v0, v1

    .line 109
    .line 110
    const/4 v5, 0x2

    .line 111
    aget-object v0, v0, v5

    .line 112
    .line 113
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->l()Z

    .line 114
    .line 115
    .line 116
    move-result v6

    .line 117
    if-eqz v6, :cond_7

    .line 118
    .line 119
    iget-object v6, p0, Lcom/google/android/material/button/MaterialButton;->p:Landroid/graphics/drawable/Drawable;

    .line 120
    .line 121
    if-ne v3, v6, :cond_9

    .line 122
    .line 123
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->k()Z

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    if-eqz v3, :cond_8

    .line 128
    .line 129
    iget-object v3, p0, Lcom/google/android/material/button/MaterialButton;->p:Landroid/graphics/drawable/Drawable;

    .line 130
    .line 131
    if-ne v0, v3, :cond_9

    .line 132
    .line 133
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->m()Z

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    if-eqz v0, :cond_a

    .line 138
    .line 139
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->p:Landroid/graphics/drawable/Drawable;

    .line 140
    .line 141
    if-eq v4, v0, :cond_a

    .line 142
    .line 143
    :cond_9
    move v0, v1

    .line 144
    goto :goto_3

    .line 145
    :cond_a
    move v0, v2

    .line 146
    :goto_3
    if-nez p1, :cond_b

    .line 147
    .line 148
    if-eqz v0, :cond_e

    .line 149
    .line 150
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->l()Z

    .line 151
    .line 152
    .line 153
    move-result p1

    .line 154
    const/4 v0, 0x0

    .line 155
    if-eqz p1, :cond_c

    .line 156
    .line 157
    iget-object p1, p0, Lcom/google/android/material/button/MaterialButton;->p:Landroid/graphics/drawable/Drawable;

    .line 158
    .line 159
    invoke-virtual {p0, v1}, Lcom/google/android/material/button/MaterialButton;->h(I)Landroid/graphics/drawable/Drawable;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-virtual {p0, v5}, Lcom/google/android/material/button/MaterialButton;->h(I)Landroid/graphics/drawable/Drawable;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 168
    .line 169
    .line 170
    return-void

    .line 171
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->k()Z

    .line 172
    .line 173
    .line 174
    move-result p1

    .line 175
    if-eqz p1, :cond_d

    .line 176
    .line 177
    invoke-virtual {p0, v2}, Lcom/google/android/material/button/MaterialButton;->h(I)Landroid/graphics/drawable/Drawable;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    invoke-virtual {p0, v1}, Lcom/google/android/material/button/MaterialButton;->h(I)Landroid/graphics/drawable/Drawable;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    iget-object v2, p0, Lcom/google/android/material/button/MaterialButton;->p:Landroid/graphics/drawable/Drawable;

    .line 186
    .line 187
    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 188
    .line 189
    .line 190
    return-void

    .line 191
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->m()Z

    .line 192
    .line 193
    .line 194
    move-result p1

    .line 195
    if-eqz p1, :cond_e

    .line 196
    .line 197
    invoke-virtual {p0, v2}, Lcom/google/android/material/button/MaterialButton;->h(I)Landroid/graphics/drawable/Drawable;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    iget-object v1, p0, Lcom/google/android/material/button/MaterialButton;->p:Landroid/graphics/drawable/Drawable;

    .line 202
    .line 203
    invoke-virtual {p0, v5}, Lcom/google/android/material/button/MaterialButton;->h(I)Landroid/graphics/drawable/Drawable;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 208
    .line 209
    .line 210
    :cond_e
    :goto_4
    return-void
.end method

.method public final toggle()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButton;->M:Z

    .line 2
    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButton;->setChecked(Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final u(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->p:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->l()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x0

    .line 17
    if-nez v0, :cond_4

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->k()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->m()Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_6

    .line 31
    .line 32
    iput v1, p0, Lcom/google/android/material/button/MaterialButton;->H:I

    .line 33
    .line 34
    iget p1, p0, Lcom/google/android/material/button/MaterialButton;->O:I

    .line 35
    .line 36
    const/16 v0, 0x10

    .line 37
    .line 38
    if-ne p1, v0, :cond_2

    .line 39
    .line 40
    iput v1, p0, Lcom/google/android/material/button/MaterialButton;->I:I

    .line 41
    .line 42
    invoke-virtual {p0, v1}, Lcom/google/android/material/button/MaterialButton;->t(Z)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_2
    iget p1, p0, Lcom/google/android/material/button/MaterialButton;->G:I

    .line 47
    .line 48
    if-nez p1, :cond_3

    .line 49
    .line 50
    iget-object p1, p0, Lcom/google/android/material/button/MaterialButton;->p:Landroid/graphics/drawable/Drawable;

    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    :cond_3
    invoke-virtual {p0, p2, p1}, Lcom/google/android/material/button/MaterialButton;->g(II)I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    iget p2, p0, Lcom/google/android/material/button/MaterialButton;->I:I

    .line 61
    .line 62
    if-eq p2, p1, :cond_6

    .line 63
    .line 64
    iput p1, p0, Lcom/google/android/material/button/MaterialButton;->I:I

    .line 65
    .line 66
    invoke-virtual {p0, v1}, Lcom/google/android/material/button/MaterialButton;->t(Z)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_4
    :goto_0
    iput v1, p0, Lcom/google/android/material/button/MaterialButton;->I:I

    .line 71
    .line 72
    iget p2, p0, Lcom/google/android/material/button/MaterialButton;->O:I

    .line 73
    .line 74
    invoke-virtual {p0, p2}, Lcom/google/android/material/button/MaterialButton;->e(I)Z

    .line 75
    .line 76
    .line 77
    move-result p2

    .line 78
    if-eqz p2, :cond_5

    .line 79
    .line 80
    iput v1, p0, Lcom/google/android/material/button/MaterialButton;->H:I

    .line 81
    .line 82
    invoke-virtual {p0, v1}, Lcom/google/android/material/button/MaterialButton;->t(Z)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :cond_5
    iget p2, p0, Lcom/google/android/material/button/MaterialButton;->O:I

    .line 87
    .line 88
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/button/MaterialButton;->f(II)I

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    iget p2, p0, Lcom/google/android/material/button/MaterialButton;->H:I

    .line 93
    .line 94
    if-eq p2, p1, :cond_6

    .line 95
    .line 96
    iput p1, p0, Lcom/google/android/material/button/MaterialButton;->H:I

    .line 97
    .line 98
    invoke-virtual {p0, v1}, Lcom/google/android/material/button/MaterialButton;->t(Z)V

    .line 99
    .line 100
    .line 101
    :cond_6
    :goto_1
    return-void
.end method

.method public final v()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->f0:F

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/material/button/MaterialButton;->g0:F

    .line 4
    .line 5
    sub-float/2addr v0, v1

    .line 6
    float-to-int v0, v0

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    if-ne v1, v2, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v2, 0x0

    .line 16
    :goto_0
    iget v1, p0, Lcom/google/android/material/button/MaterialButton;->W:I

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    neg-int v1, v1

    .line 21
    :cond_1
    div-int/lit8 v2, v0, 0x2

    .line 22
    .line 23
    add-int/2addr v2, v1

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iget v3, p0, Lcom/google/android/material/button/MaterialButton;->R:F

    .line 35
    .line 36
    int-to-float v4, v0

    .line 37
    add-float/2addr v3, v4

    .line 38
    float-to-int v3, v3

    .line 39
    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 40
    .line 41
    :cond_2
    iget v1, p0, Lcom/google/android/material/button/MaterialButton;->S:I

    .line 42
    .line 43
    add-int/2addr v1, v2

    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    iget v4, p0, Lcom/google/android/material/button/MaterialButton;->T:I

    .line 49
    .line 50
    add-int/2addr v4, v0

    .line 51
    sub-int/2addr v4, v2

    .line 52
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    invoke-virtual {p0, v1, v3, v4, v0}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public final w(Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->t:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/google/android/material/button/MaterialButton;->t:Landroid/graphics/drawable/Drawable;

    .line 11
    .line 12
    iget-object v2, p0, Lcom/google/android/material/button/MaterialButton;->r:Landroid/content/res/ColorStateList;

    .line 13
    .line 14
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->q:Landroid/graphics/PorterDuff$Mode;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v2, p0, Lcom/google/android/material/button/MaterialButton;->t:Landroid/graphics/drawable/Drawable;

    .line 22
    .line 23
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->G:I

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->t:Landroid/graphics/drawable/Drawable;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    :goto_0
    iget v2, p0, Lcom/google/android/material/button/MaterialButton;->G:I

    .line 38
    .line 39
    if-eqz v2, :cond_2

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_2
    iget-object v2, p0, Lcom/google/android/material/button/MaterialButton;->t:Landroid/graphics/drawable/Drawable;

    .line 43
    .line 44
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    :goto_1
    iget-object v3, p0, Lcom/google/android/material/button/MaterialButton;->t:Landroid/graphics/drawable/Drawable;

    .line 49
    .line 50
    iget v4, p0, Lcom/google/android/material/button/MaterialButton;->K:I

    .line 51
    .line 52
    iget v5, p0, Lcom/google/android/material/button/MaterialButton;->L:I

    .line 53
    .line 54
    add-int/2addr v0, v4

    .line 55
    add-int/2addr v2, v5

    .line 56
    invoke-virtual {v3, v4, v5, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->t:Landroid/graphics/drawable/Drawable;

    .line 60
    .line 61
    invoke-virtual {v0, v1, p1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 62
    .line 63
    .line 64
    :cond_3
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->t:Landroid/graphics/drawable/Drawable;

    .line 65
    .line 66
    if-eqz v0, :cond_5

    .line 67
    .line 68
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->p:Landroid/graphics/drawable/Drawable;

    .line 69
    .line 70
    if-eqz v0, :cond_5

    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->d()Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-nez v0, :cond_4

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_4
    const-string p0, "secondaryIconGravity cannot have the same alignment as iconGravity"

    .line 80
    .line 81
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->t:Landroid/graphics/drawable/Drawable;

    .line 86
    .line 87
    if-nez v0, :cond_6

    .line 88
    .line 89
    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButton;->x:Z

    .line 90
    .line 91
    if-nez v0, :cond_e

    .line 92
    .line 93
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->p:Landroid/graphics/drawable/Drawable;

    .line 94
    .line 95
    if-eqz v0, :cond_6

    .line 96
    .line 97
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->d()Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-eqz v0, :cond_6

    .line 102
    .line 103
    goto/16 :goto_4

    .line 104
    .line 105
    :cond_6
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    const/4 v2, 0x0

    .line 110
    aget-object v3, v0, v2

    .line 111
    .line 112
    aget-object v4, v0, v1

    .line 113
    .line 114
    const/4 v5, 0x2

    .line 115
    aget-object v0, v0, v5

    .line 116
    .line 117
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->o()Z

    .line 118
    .line 119
    .line 120
    move-result v6

    .line 121
    if-eqz v6, :cond_7

    .line 122
    .line 123
    iget-object v6, p0, Lcom/google/android/material/button/MaterialButton;->t:Landroid/graphics/drawable/Drawable;

    .line 124
    .line 125
    if-ne v3, v6, :cond_9

    .line 126
    .line 127
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->n()Z

    .line 128
    .line 129
    .line 130
    move-result v3

    .line 131
    if-eqz v3, :cond_8

    .line 132
    .line 133
    iget-object v3, p0, Lcom/google/android/material/button/MaterialButton;->t:Landroid/graphics/drawable/Drawable;

    .line 134
    .line 135
    if-ne v0, v3, :cond_9

    .line 136
    .line 137
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->p()Z

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    if-eqz v0, :cond_a

    .line 142
    .line 143
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->t:Landroid/graphics/drawable/Drawable;

    .line 144
    .line 145
    if-eq v4, v0, :cond_a

    .line 146
    .line 147
    :cond_9
    move v0, v1

    .line 148
    goto :goto_3

    .line 149
    :cond_a
    move v0, v2

    .line 150
    :goto_3
    if-nez p1, :cond_b

    .line 151
    .line 152
    if-eqz v0, :cond_e

    .line 153
    .line 154
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->o()Z

    .line 155
    .line 156
    .line 157
    move-result p1

    .line 158
    const/4 v0, 0x0

    .line 159
    if-eqz p1, :cond_c

    .line 160
    .line 161
    iget-object p1, p0, Lcom/google/android/material/button/MaterialButton;->t:Landroid/graphics/drawable/Drawable;

    .line 162
    .line 163
    invoke-virtual {p0, v1}, Lcom/google/android/material/button/MaterialButton;->i(I)Landroid/graphics/drawable/Drawable;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    invoke-virtual {p0, v5}, Lcom/google/android/material/button/MaterialButton;->i(I)Landroid/graphics/drawable/Drawable;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 172
    .line 173
    .line 174
    return-void

    .line 175
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->n()Z

    .line 176
    .line 177
    .line 178
    move-result p1

    .line 179
    if-eqz p1, :cond_d

    .line 180
    .line 181
    invoke-virtual {p0, v2}, Lcom/google/android/material/button/MaterialButton;->i(I)Landroid/graphics/drawable/Drawable;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    invoke-virtual {p0, v1}, Lcom/google/android/material/button/MaterialButton;->i(I)Landroid/graphics/drawable/Drawable;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    iget-object v2, p0, Lcom/google/android/material/button/MaterialButton;->t:Landroid/graphics/drawable/Drawable;

    .line 190
    .line 191
    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 192
    .line 193
    .line 194
    return-void

    .line 195
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->p()Z

    .line 196
    .line 197
    .line 198
    move-result p1

    .line 199
    if-eqz p1, :cond_e

    .line 200
    .line 201
    invoke-virtual {p0, v2}, Lcom/google/android/material/button/MaterialButton;->i(I)Landroid/graphics/drawable/Drawable;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    iget-object v1, p0, Lcom/google/android/material/button/MaterialButton;->t:Landroid/graphics/drawable/Drawable;

    .line 206
    .line 207
    invoke-virtual {p0, v5}, Lcom/google/android/material/button/MaterialButton;->i(I)Landroid/graphics/drawable/Drawable;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 212
    .line 213
    .line 214
    :cond_e
    :goto_4
    return-void
.end method

.method public final x(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->t:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->o()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x0

    .line 17
    if-nez v0, :cond_4

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->n()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->p()Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_6

    .line 31
    .line 32
    iput v1, p0, Lcom/google/android/material/button/MaterialButton;->K:I

    .line 33
    .line 34
    iget p1, p0, Lcom/google/android/material/button/MaterialButton;->P:I

    .line 35
    .line 36
    const/16 v0, 0x10

    .line 37
    .line 38
    if-ne p1, v0, :cond_2

    .line 39
    .line 40
    iput v1, p0, Lcom/google/android/material/button/MaterialButton;->L:I

    .line 41
    .line 42
    invoke-virtual {p0, v1}, Lcom/google/android/material/button/MaterialButton;->w(Z)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_2
    iget p1, p0, Lcom/google/android/material/button/MaterialButton;->G:I

    .line 47
    .line 48
    if-nez p1, :cond_3

    .line 49
    .line 50
    iget-object p1, p0, Lcom/google/android/material/button/MaterialButton;->t:Landroid/graphics/drawable/Drawable;

    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    :cond_3
    invoke-virtual {p0, p2, p1}, Lcom/google/android/material/button/MaterialButton;->g(II)I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    iget p2, p0, Lcom/google/android/material/button/MaterialButton;->L:I

    .line 61
    .line 62
    if-eq p2, p1, :cond_6

    .line 63
    .line 64
    iput p1, p0, Lcom/google/android/material/button/MaterialButton;->L:I

    .line 65
    .line 66
    invoke-virtual {p0, v1}, Lcom/google/android/material/button/MaterialButton;->w(Z)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_4
    :goto_0
    iput v1, p0, Lcom/google/android/material/button/MaterialButton;->L:I

    .line 71
    .line 72
    iget p2, p0, Lcom/google/android/material/button/MaterialButton;->P:I

    .line 73
    .line 74
    invoke-virtual {p0, p2}, Lcom/google/android/material/button/MaterialButton;->e(I)Z

    .line 75
    .line 76
    .line 77
    move-result p2

    .line 78
    if-eqz p2, :cond_5

    .line 79
    .line 80
    iput v1, p0, Lcom/google/android/material/button/MaterialButton;->K:I

    .line 81
    .line 82
    invoke-virtual {p0, v1}, Lcom/google/android/material/button/MaterialButton;->w(Z)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :cond_5
    iget p2, p0, Lcom/google/android/material/button/MaterialButton;->P:I

    .line 87
    .line 88
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/button/MaterialButton;->f(II)I

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    iget p2, p0, Lcom/google/android/material/button/MaterialButton;->K:I

    .line 93
    .line 94
    if-eq p2, p1, :cond_6

    .line 95
    .line 96
    iput p1, p0, Lcom/google/android/material/button/MaterialButton;->K:I

    .line 97
    .line 98
    invoke-virtual {p0, v1}, Lcom/google/android/material/button/MaterialButton;->w(Z)V

    .line 99
    .line 100
    .line 101
    :cond_6
    :goto_1
    return-void
.end method
