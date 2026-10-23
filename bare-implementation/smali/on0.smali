.class public abstract Lon0;
.super Landroid/view/View;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final synthetic x1:I


# instance fields
.field public A0:F

.field public B0:F

.field public C0:Landroid/view/MotionEvent;

.field public final D0:Landroid/graphics/Rect;

.field public final E0:Ljava/util/ArrayList;

.field public F0:Ljava/util/List;

.field public G:Z

.field public G0:Z

.field public H:Landroid/animation/ValueAnimator;

.field public H0:F

.field public I:Landroid/animation/ValueAnimator;

.field public I0:F

.field public final J:I

.field public J0:Ljava/util/ArrayList;

.field public final K:I

.field public K0:I

.field public final L:I

.field public L0:I

.field public final M:I

.field public M0:F

.field public final N:I

.field public N0:I

.field public final O:I

.field public O0:[F

.field public final P:I

.field public P0:I

.field public final Q:I

.field public Q0:I

.field public final R:I

.field public R0:I

.field public final S:I

.field public S0:I

.field public T:I

.field public T0:Z

.field public final U:I

.field public U0:Z

.field public V:I

.field public V0:Landroid/content/res/ColorStateList;

.field public W:I

.field public W0:Landroid/content/res/ColorStateList;

.field public X0:Landroid/content/res/ColorStateList;

.field public Y0:Landroid/content/res/ColorStateList;

.field public Z0:Landroid/content/res/ColorStateList;

.field public final a:Landroid/graphics/Paint;

.field public a0:I

.field public final a1:Landroid/graphics/Path;

.field public final b:Landroid/graphics/Paint;

.field public b0:I

.field public final b1:Landroid/graphics/RectF;

.field public final c:Landroid/graphics/Paint;

.field public c0:I

.field public final c1:Landroid/graphics/RectF;

.field public final d:Landroid/graphics/Paint;

.field public d0:I

.field public final d1:Landroid/graphics/RectF;

.field public final e:Landroid/graphics/Paint;

.field public e0:I

.field public final e1:Landroid/graphics/RectF;

.field public final f:Landroid/graphics/Paint;

.field public f0:I

.field public final f1:Landroid/graphics/Rect;

.field public g0:I

.field public final g1:Landroid/graphics/RectF;

.field public h0:I

.field public final h1:Landroid/graphics/Rect;

.field public i0:I

.field public final i1:Landroid/graphics/Matrix;

.field public j0:I

.field public final j1:Ljava/util/ArrayList;

.field public final k:Landroid/graphics/Paint;

.field public k0:I

.field public k1:Landroid/graphics/drawable/Drawable;

.field public l0:I

.field public l1:Ljava/util/List;

.field public m0:Z

.field public m1:F

.field public final n:Lln0;

.field public n0:Landroid/graphics/drawable/Drawable;

.field public n1:F

.field public o0:Z

.field public o1:Landroid/content/res/ColorStateList;

.field public final p:Landroid/view/accessibility/AccessibilityManager;

.field public p0:Landroid/graphics/drawable/Drawable;

.field public p1:Landroid/content/res/ColorStateList;

.field public q:Lkn0;

.field public q0:Z

.field public q1:F

.field public final r:I

.field public r0:Landroid/content/res/ColorStateList;

.field public r1:I

.field public s0:Landroid/graphics/drawable/Drawable;

.field public final s1:I

.field public final t:Ljava/util/ArrayList;

.field public t0:Z

.field public final t1:Lgn0;

.field public u0:Landroid/graphics/drawable/Drawable;

.field public final u1:Lhn0;

.field public v0:Z

.field public final v1:Lin0;

.field public w0:Landroid/content/res/ColorStateList;

.field public w1:Z

.field public final x:Ljava/util/ArrayList;

.field public x0:I

.field public final y:Ljava/util/ArrayList;

.field public final y0:I

.field public final z0:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11

    .line 1
    const v0, 0x7f140684

    .line 2
    .line 3
    .line 4
    invoke-static {p1, p2, p3, v0}, Lzm5;->J(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 9
    .line 10
    .line 11
    new-instance p1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lon0;->t:Ljava/util/ArrayList;

    .line 17
    .line 18
    new-instance p1, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lon0;->x:Ljava/util/ArrayList;

    .line 24
    .line 25
    new-instance p1, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lon0;->y:Ljava/util/ArrayList;

    .line 31
    .line 32
    const/4 p1, 0x0

    .line 33
    iput-boolean p1, p0, Lon0;->G:Z

    .line 34
    .line 35
    const/4 v0, -0x1

    .line 36
    iput v0, p0, Lon0;->g0:I

    .line 37
    .line 38
    iput v0, p0, Lon0;->h0:I

    .line 39
    .line 40
    iput v0, p0, Lon0;->i0:I

    .line 41
    .line 42
    iput-boolean p1, p0, Lon0;->m0:Z

    .line 43
    .line 44
    iput-boolean p1, p0, Lon0;->o0:Z

    .line 45
    .line 46
    iput-boolean p1, p0, Lon0;->q0:Z

    .line 47
    .line 48
    iput-boolean p1, p0, Lon0;->t0:Z

    .line 49
    .line 50
    iput-boolean p1, p0, Lon0;->v0:Z

    .line 51
    .line 52
    new-instance v1, Landroid/graphics/Rect;

    .line 53
    .line 54
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 55
    .line 56
    .line 57
    iput-object v1, p0, Lon0;->D0:Landroid/graphics/Rect;

    .line 58
    .line 59
    new-instance v1, Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .line 63
    .line 64
    iput-object v1, p0, Lon0;->E0:Ljava/util/ArrayList;

    .line 65
    .line 66
    new-instance v1, Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .line 70
    .line 71
    iput-object v1, p0, Lon0;->F0:Ljava/util/List;

    .line 72
    .line 73
    iput-boolean p1, p0, Lon0;->G0:Z

    .line 74
    .line 75
    new-instance v1, Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .line 79
    .line 80
    iput-object v1, p0, Lon0;->J0:Ljava/util/ArrayList;

    .line 81
    .line 82
    iput v0, p0, Lon0;->K0:I

    .line 83
    .line 84
    iput v0, p0, Lon0;->L0:I

    .line 85
    .line 86
    const/4 v1, 0x0

    .line 87
    iput v1, p0, Lon0;->M0:F

    .line 88
    .line 89
    iput p1, p0, Lon0;->N0:I

    .line 90
    .line 91
    iput-boolean p1, p0, Lon0;->T0:Z

    .line 92
    .line 93
    new-instance v2, Landroid/graphics/Path;

    .line 94
    .line 95
    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 96
    .line 97
    .line 98
    iput-object v2, p0, Lon0;->a1:Landroid/graphics/Path;

    .line 99
    .line 100
    new-instance v2, Landroid/graphics/RectF;

    .line 101
    .line 102
    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 103
    .line 104
    .line 105
    iput-object v2, p0, Lon0;->b1:Landroid/graphics/RectF;

    .line 106
    .line 107
    new-instance v2, Landroid/graphics/RectF;

    .line 108
    .line 109
    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 110
    .line 111
    .line 112
    iput-object v2, p0, Lon0;->c1:Landroid/graphics/RectF;

    .line 113
    .line 114
    new-instance v2, Landroid/graphics/RectF;

    .line 115
    .line 116
    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 117
    .line 118
    .line 119
    iput-object v2, p0, Lon0;->d1:Landroid/graphics/RectF;

    .line 120
    .line 121
    new-instance v2, Landroid/graphics/RectF;

    .line 122
    .line 123
    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 124
    .line 125
    .line 126
    iput-object v2, p0, Lon0;->e1:Landroid/graphics/RectF;

    .line 127
    .line 128
    new-instance v2, Landroid/graphics/Rect;

    .line 129
    .line 130
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 131
    .line 132
    .line 133
    iput-object v2, p0, Lon0;->f1:Landroid/graphics/Rect;

    .line 134
    .line 135
    new-instance v2, Landroid/graphics/RectF;

    .line 136
    .line 137
    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 138
    .line 139
    .line 140
    iput-object v2, p0, Lon0;->g1:Landroid/graphics/RectF;

    .line 141
    .line 142
    new-instance v2, Landroid/graphics/Rect;

    .line 143
    .line 144
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 145
    .line 146
    .line 147
    iput-object v2, p0, Lon0;->h1:Landroid/graphics/Rect;

    .line 148
    .line 149
    new-instance v2, Landroid/graphics/Matrix;

    .line 150
    .line 151
    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 152
    .line 153
    .line 154
    iput-object v2, p0, Lon0;->i1:Landroid/graphics/Matrix;

    .line 155
    .line 156
    new-instance v2, Ljava/util/ArrayList;

    .line 157
    .line 158
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .line 160
    .line 161
    iput-object v2, p0, Lon0;->j1:Ljava/util/ArrayList;

    .line 162
    .line 163
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 164
    .line 165
    iput-object v2, p0, Lon0;->l1:Ljava/util/List;

    .line 166
    .line 167
    iput p1, p0, Lon0;->r1:I

    .line 168
    .line 169
    new-instance v2, Lgn0;

    .line 170
    .line 171
    move-object v3, p0

    .line 172
    check-cast v3, Lcom/google/android/material/slider/Slider;

    .line 173
    .line 174
    invoke-direct {v2, v3}, Lgn0;-><init>(Lcom/google/android/material/slider/Slider;)V

    .line 175
    .line 176
    .line 177
    iput-object v2, p0, Lon0;->t1:Lgn0;

    .line 178
    .line 179
    new-instance v2, Lhn0;

    .line 180
    .line 181
    invoke-direct {v2, v3}, Lhn0;-><init>(Lcom/google/android/material/slider/Slider;)V

    .line 182
    .line 183
    .line 184
    iput-object v2, p0, Lon0;->u1:Lhn0;

    .line 185
    .line 186
    new-instance v2, Lin0;

    .line 187
    .line 188
    invoke-direct {v2, v3, p1}, Lin0;-><init>(Ljava/lang/Object;I)V

    .line 189
    .line 190
    .line 191
    iput-object v2, p0, Lon0;->v1:Lin0;

    .line 192
    .line 193
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 194
    .line 195
    .line 196
    move-result-object v4

    .line 197
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    .line 198
    .line 199
    .line 200
    move-result v2

    .line 201
    iput-boolean v2, p0, Lon0;->w1:Z

    .line 202
    .line 203
    new-instance v2, Landroid/graphics/Paint;

    .line 204
    .line 205
    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 206
    .line 207
    .line 208
    iput-object v2, p0, Lon0;->a:Landroid/graphics/Paint;

    .line 209
    .line 210
    new-instance v2, Landroid/graphics/Paint;

    .line 211
    .line 212
    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 213
    .line 214
    .line 215
    iput-object v2, p0, Lon0;->b:Landroid/graphics/Paint;

    .line 216
    .line 217
    new-instance v2, Landroid/graphics/Paint;

    .line 218
    .line 219
    const/4 v10, 0x1

    .line 220
    invoke-direct {v2, v10}, Landroid/graphics/Paint;-><init>(I)V

    .line 221
    .line 222
    .line 223
    iput-object v2, p0, Lon0;->c:Landroid/graphics/Paint;

    .line 224
    .line 225
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 226
    .line 227
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 228
    .line 229
    .line 230
    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    .line 231
    .line 232
    sget-object v7, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    .line 233
    .line 234
    invoke-direct {v6, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 238
    .line 239
    .line 240
    new-instance v2, Landroid/graphics/Paint;

    .line 241
    .line 242
    invoke-direct {v2, v10}, Landroid/graphics/Paint;-><init>(I)V

    .line 243
    .line 244
    .line 245
    iput-object v2, p0, Lon0;->d:Landroid/graphics/Paint;

    .line 246
    .line 247
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 248
    .line 249
    .line 250
    new-instance v2, Landroid/graphics/Paint;

    .line 251
    .line 252
    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 253
    .line 254
    .line 255
    iput-object v2, p0, Lon0;->e:Landroid/graphics/Paint;

    .line 256
    .line 257
    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 258
    .line 259
    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 260
    .line 261
    .line 262
    sget-object v7, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    .line 263
    .line 264
    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 265
    .line 266
    .line 267
    new-instance v2, Landroid/graphics/Paint;

    .line 268
    .line 269
    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 270
    .line 271
    .line 272
    iput-object v2, p0, Lon0;->f:Landroid/graphics/Paint;

    .line 273
    .line 274
    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 278
    .line 279
    .line 280
    new-instance v2, Landroid/graphics/Paint;

    .line 281
    .line 282
    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 283
    .line 284
    .line 285
    iput-object v2, p0, Lon0;->k:Landroid/graphics/Paint;

    .line 286
    .line 287
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 294
    .line 295
    .line 296
    move-result-object v2

    .line 297
    const v5, 0x7f070329

    .line 298
    .line 299
    .line 300
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 301
    .line 302
    .line 303
    move-result v2

    .line 304
    iput v2, p0, Lon0;->K:I

    .line 305
    .line 306
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 307
    .line 308
    .line 309
    move-result-object v2

    .line 310
    const v5, 0x7f070465

    .line 311
    .line 312
    .line 313
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 314
    .line 315
    .line 316
    move-result v5

    .line 317
    iput v5, p0, Lon0;->U:I

    .line 318
    .line 319
    const v5, 0x7f070464

    .line 320
    .line 321
    .line 322
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 323
    .line 324
    .line 325
    move-result v5

    .line 326
    iput v5, p0, Lon0;->L:I

    .line 327
    .line 328
    iput v5, p0, Lon0;->b0:I

    .line 329
    .line 330
    const v5, 0x7f070460

    .line 331
    .line 332
    .line 333
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 334
    .line 335
    .line 336
    move-result v5

    .line 337
    iput v5, p0, Lon0;->M:I

    .line 338
    .line 339
    const v5, 0x7f070463

    .line 340
    .line 341
    .line 342
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 343
    .line 344
    .line 345
    move-result v5

    .line 346
    iput v5, p0, Lon0;->N:I

    .line 347
    .line 348
    const v5, 0x7f070462

    .line 349
    .line 350
    .line 351
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 352
    .line 353
    .line 354
    move-result v6

    .line 355
    iput v6, p0, Lon0;->O:I

    .line 356
    .line 357
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 358
    .line 359
    .line 360
    move-result v5

    .line 361
    iput v5, p0, Lon0;->P:I

    .line 362
    .line 363
    const v5, 0x7f070461

    .line 364
    .line 365
    .line 366
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 367
    .line 368
    .line 369
    move-result v5

    .line 370
    iput v5, p0, Lon0;->Q:I

    .line 371
    .line 372
    const v5, 0x7f07045c

    .line 373
    .line 374
    .line 375
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 376
    .line 377
    .line 378
    move-result v5

    .line 379
    iput v5, p0, Lon0;->z0:I

    .line 380
    .line 381
    const v5, 0x7f07032b

    .line 382
    .line 383
    .line 384
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 385
    .line 386
    .line 387
    move-result v5

    .line 388
    iput v5, p0, Lon0;->y0:I

    .line 389
    .line 390
    const v5, 0x7f070438

    .line 391
    .line 392
    .line 393
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 394
    .line 395
    .line 396
    move-result v2

    .line 397
    iput v2, p0, Lon0;->S:I

    .line 398
    .line 399
    new-array v9, p1, [I

    .line 400
    .line 401
    const v8, 0x7f140684

    .line 402
    .line 403
    .line 404
    invoke-static {v4, p2, p3, v8}, Ljd4;->d(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 405
    .line 406
    .line 407
    sget-object v6, Ltd6;->S:[I

    .line 408
    .line 409
    move-object v5, p2

    .line 410
    move v7, p3

    .line 411
    invoke-static/range {v4 .. v9}, Ljd4;->e(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)V

    .line 412
    .line 413
    .line 414
    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 415
    .line 416
    .line 417
    move-result-object p2

    .line 418
    const/4 p3, 0x2

    .line 419
    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 420
    .line 421
    .line 422
    move-result v2

    .line 423
    invoke-virtual {p0, v2}, Lon0;->setOrientation(I)V

    .line 424
    .line 425
    .line 426
    const/16 v2, 0xb

    .line 427
    .line 428
    const v5, 0x7f1406a6

    .line 429
    .line 430
    .line 431
    invoke-virtual {p2, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 432
    .line 433
    .line 434
    move-result v2

    .line 435
    iput v2, p0, Lon0;->r:I

    .line 436
    .line 437
    const/4 v2, 0x4

    .line 438
    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 439
    .line 440
    .line 441
    move-result v2

    .line 442
    iput v2, p0, Lon0;->H0:F

    .line 443
    .line 444
    const/4 v2, 0x5

    .line 445
    const/high16 v5, 0x3f800000    # 1.0f

    .line 446
    .line 447
    invoke-virtual {p2, v2, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 448
    .line 449
    .line 450
    move-result v2

    .line 451
    iput v2, p0, Lon0;->I0:F

    .line 452
    .line 453
    const/4 v2, 0x6

    .line 454
    invoke-virtual {p2, v2, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 455
    .line 456
    .line 457
    move-result v5

    .line 458
    invoke-virtual {p0, v5}, Lon0;->setCentered(Z)V

    .line 459
    .line 460
    .line 461
    const/4 v5, 0x3

    .line 462
    invoke-virtual {p2, v5, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 463
    .line 464
    .line 465
    move-result v5

    .line 466
    iput v5, p0, Lon0;->M0:F

    .line 467
    .line 468
    const/4 v5, 0x7

    .line 469
    invoke-virtual {p2, v5, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 470
    .line 471
    .line 472
    move-result v5

    .line 473
    iput v5, p0, Lon0;->N0:I

    .line 474
    .line 475
    invoke-static {v4}, Ljm1;->S(Landroid/content/Context;)I

    .line 476
    .line 477
    .line 478
    move-result v5

    .line 479
    int-to-float v5, v5

    .line 480
    const/16 v6, 0xc

    .line 481
    .line 482
    invoke-virtual {p2, v6, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 483
    .line 484
    .line 485
    move-result v5

    .line 486
    float-to-double v5, v5

    .line 487
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    .line 488
    .line 489
    .line 490
    move-result-wide v5

    .line 491
    double-to-int v5, v5

    .line 492
    iput v5, p0, Lon0;->R:I

    .line 493
    .line 494
    const/16 v5, 0x1c

    .line 495
    .line 496
    invoke-virtual {p2, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 497
    .line 498
    .line 499
    move-result v6

    .line 500
    if-eqz v6, :cond_0

    .line 501
    .line 502
    move v7, v5

    .line 503
    goto :goto_0

    .line 504
    :cond_0
    const/16 v7, 0x1e

    .line 505
    .line 506
    :goto_0
    const/16 v8, 0x1d

    .line 507
    .line 508
    if-eqz v6, :cond_1

    .line 509
    .line 510
    goto :goto_1

    .line 511
    :cond_1
    move v5, v8

    .line 512
    :goto_1
    invoke-static {v4, p2, v7}, Lk55;->m(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 513
    .line 514
    .line 515
    move-result-object v6

    .line 516
    if-eqz v6, :cond_2

    .line 517
    .line 518
    goto :goto_2

    .line 519
    :cond_2
    const v6, 0x7f0603f7

    .line 520
    .line 521
    .line 522
    invoke-static {v4, v6}, Lzh8;->q(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 523
    .line 524
    .line 525
    move-result-object v6

    .line 526
    :goto_2
    invoke-virtual {p0, v6}, Lon0;->setTrackInactiveTintList(Landroid/content/res/ColorStateList;)V

    .line 527
    .line 528
    .line 529
    invoke-static {v4, p2, v5}, Lk55;->m(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 530
    .line 531
    .line 532
    move-result-object v5

    .line 533
    if-eqz v5, :cond_3

    .line 534
    .line 535
    goto :goto_3

    .line 536
    :cond_3
    const v5, 0x7f0603f4

    .line 537
    .line 538
    .line 539
    invoke-static {v4, v5}, Lzh8;->q(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 540
    .line 541
    .line 542
    move-result-object v5

    .line 543
    :goto_3
    invoke-virtual {p0, v5}, Lon0;->setTrackActiveTintList(Landroid/content/res/ColorStateList;)V

    .line 544
    .line 545
    .line 546
    const/16 v5, 0xd

    .line 547
    .line 548
    invoke-static {v4, p2, v5}, Lk55;->m(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 549
    .line 550
    .line 551
    move-result-object v5

    .line 552
    if-eqz v5, :cond_4

    .line 553
    .line 554
    goto :goto_4

    .line 555
    :cond_4
    const v5, 0x7f0603f8

    .line 556
    .line 557
    .line 558
    invoke-static {v4, v5}, Lzh8;->q(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 559
    .line 560
    .line 561
    move-result-object v5

    .line 562
    :goto_4
    invoke-virtual {p0, v5}, Lon0;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 563
    .line 564
    .line 565
    const/16 v5, 0x11

    .line 566
    .line 567
    invoke-virtual {p2, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 568
    .line 569
    .line 570
    move-result v6

    .line 571
    if-eqz v6, :cond_5

    .line 572
    .line 573
    invoke-static {v4, p2, v5}, Lk55;->m(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 574
    .line 575
    .line 576
    move-result-object v5

    .line 577
    invoke-virtual {p0, v5}, Lon0;->setThumbStrokeColor(Landroid/content/res/ColorStateList;)V

    .line 578
    .line 579
    .line 580
    :cond_5
    const/16 v5, 0x12

    .line 581
    .line 582
    invoke-virtual {p2, v5, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 583
    .line 584
    .line 585
    move-result v5

    .line 586
    invoke-virtual {p0, v5}, Lon0;->setThumbStrokeWidth(F)V

    .line 587
    .line 588
    .line 589
    const/16 v5, 0x8

    .line 590
    .line 591
    invoke-static {v4, p2, v5}, Lk55;->m(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 592
    .line 593
    .line 594
    move-result-object v5

    .line 595
    if-eqz v5, :cond_6

    .line 596
    .line 597
    goto :goto_5

    .line 598
    :cond_6
    const v5, 0x7f0603f5

    .line 599
    .line 600
    .line 601
    invoke-static {v4, v5}, Lzh8;->q(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 602
    .line 603
    .line 604
    move-result-object v5

    .line 605
    :goto_5
    invoke-virtual {p0, v5}, Lon0;->setHaloTintList(Landroid/content/res/ColorStateList;)V

    .line 606
    .line 607
    .line 608
    const/16 v5, 0x1a

    .line 609
    .line 610
    invoke-virtual {p2, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 611
    .line 612
    .line 613
    move-result v6

    .line 614
    if-eqz v6, :cond_7

    .line 615
    .line 616
    invoke-virtual {p2, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 617
    .line 618
    .line 619
    move-result v5

    .line 620
    goto :goto_6

    .line 621
    :cond_7
    const/16 v5, 0x1b

    .line 622
    .line 623
    invoke-virtual {p2, v5, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 624
    .line 625
    .line 626
    move-result v5

    .line 627
    if-eqz v5, :cond_8

    .line 628
    .line 629
    move v5, p1

    .line 630
    goto :goto_6

    .line 631
    :cond_8
    move v5, p3

    .line 632
    :goto_6
    iput v5, p0, Lon0;->P0:I

    .line 633
    .line 634
    const/16 v5, 0x15

    .line 635
    .line 636
    invoke-virtual {p2, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 637
    .line 638
    .line 639
    move-result v6

    .line 640
    if-eqz v6, :cond_9

    .line 641
    .line 642
    move v7, v5

    .line 643
    goto :goto_7

    .line 644
    :cond_9
    const/16 v7, 0x17

    .line 645
    .line 646
    :goto_7
    if-eqz v6, :cond_a

    .line 647
    .line 648
    goto :goto_8

    .line 649
    :cond_a
    const/16 v5, 0x16

    .line 650
    .line 651
    :goto_8
    invoke-static {v4, p2, v7}, Lk55;->m(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 652
    .line 653
    .line 654
    move-result-object v6

    .line 655
    if-eqz v6, :cond_b

    .line 656
    .line 657
    goto :goto_9

    .line 658
    :cond_b
    const v6, 0x7f0603f6

    .line 659
    .line 660
    .line 661
    invoke-static {v4, v6}, Lzh8;->q(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 662
    .line 663
    .line 664
    move-result-object v6

    .line 665
    :goto_9
    invoke-virtual {p0, v6}, Lon0;->setTickInactiveTintList(Landroid/content/res/ColorStateList;)V

    .line 666
    .line 667
    .line 668
    invoke-static {v4, p2, v5}, Lk55;->m(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 669
    .line 670
    .line 671
    move-result-object v5

    .line 672
    if-eqz v5, :cond_c

    .line 673
    .line 674
    goto :goto_a

    .line 675
    :cond_c
    const v5, 0x7f0603f3

    .line 676
    .line 677
    .line 678
    invoke-static {v4, v5}, Lzh8;->q(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 679
    .line 680
    .line 681
    move-result-object v5

    .line 682
    :goto_a
    invoke-virtual {p0, v5}, Lon0;->setTickActiveTintList(Landroid/content/res/ColorStateList;)V

    .line 683
    .line 684
    .line 685
    const/16 v5, 0x13

    .line 686
    .line 687
    invoke-virtual {p2, v5, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 688
    .line 689
    .line 690
    move-result v5

    .line 691
    invoke-virtual {p0, v5}, Lon0;->setThumbTrackGapSize(I)V

    .line 692
    .line 693
    .line 694
    const/16 v5, 0x29

    .line 695
    .line 696
    invoke-virtual {p2, v5, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 697
    .line 698
    .line 699
    move-result v5

    .line 700
    invoke-virtual {p0, v5}, Lon0;->setTrackStopIndicatorSize(I)V

    .line 701
    .line 702
    .line 703
    const/16 v5, 0x1f

    .line 704
    .line 705
    invoke-virtual {p2, v5, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 706
    .line 707
    .line 708
    move-result v0

    .line 709
    invoke-virtual {p0, v0}, Lon0;->setTrackCornerSize(I)V

    .line 710
    .line 711
    .line 712
    const/16 v0, 0x28

    .line 713
    .line 714
    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 715
    .line 716
    .line 717
    move-result v0

    .line 718
    invoke-virtual {p0, v0}, Lon0;->setTrackInsideCornerSize(I)V

    .line 719
    .line 720
    .line 721
    const/16 v0, 0x23

    .line 722
    .line 723
    invoke-static {v4, p2, v0}, Lk55;->p(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    .line 724
    .line 725
    .line 726
    move-result-object v0

    .line 727
    invoke-virtual {p0, v0}, Lon0;->setTrackIconActiveStart(Landroid/graphics/drawable/Drawable;)V

    .line 728
    .line 729
    .line 730
    const/16 v0, 0x22

    .line 731
    .line 732
    invoke-static {v4, p2, v0}, Lk55;->p(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    .line 733
    .line 734
    .line 735
    move-result-object v0

    .line 736
    invoke-virtual {p0, v0}, Lon0;->setTrackIconActiveEnd(Landroid/graphics/drawable/Drawable;)V

    .line 737
    .line 738
    .line 739
    const/16 v0, 0x21

    .line 740
    .line 741
    invoke-static {v4, p2, v0}, Lk55;->m(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 742
    .line 743
    .line 744
    move-result-object v0

    .line 745
    invoke-virtual {p0, v0}, Lon0;->setTrackIconActiveColor(Landroid/content/res/ColorStateList;)V

    .line 746
    .line 747
    .line 748
    const/16 v0, 0x26

    .line 749
    .line 750
    invoke-static {v4, p2, v0}, Lk55;->p(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    .line 751
    .line 752
    .line 753
    move-result-object v0

    .line 754
    invoke-virtual {p0, v0}, Lon0;->setTrackIconInactiveStart(Landroid/graphics/drawable/Drawable;)V

    .line 755
    .line 756
    .line 757
    const/16 v0, 0x25

    .line 758
    .line 759
    invoke-static {v4, p2, v0}, Lk55;->p(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    .line 760
    .line 761
    .line 762
    move-result-object v0

    .line 763
    invoke-virtual {p0, v0}, Lon0;->setTrackIconInactiveEnd(Landroid/graphics/drawable/Drawable;)V

    .line 764
    .line 765
    .line 766
    const/16 v0, 0x24

    .line 767
    .line 768
    invoke-static {v4, p2, v0}, Lk55;->m(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 769
    .line 770
    .line 771
    move-result-object v0

    .line 772
    invoke-virtual {p0, v0}, Lon0;->setTrackIconInactiveColor(Landroid/content/res/ColorStateList;)V

    .line 773
    .line 774
    .line 775
    const/16 v0, 0x27

    .line 776
    .line 777
    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 778
    .line 779
    .line 780
    move-result v0

    .line 781
    invoke-virtual {p0, v0}, Lon0;->setTrackIconSize(I)V

    .line 782
    .line 783
    .line 784
    const/16 v0, 0x10

    .line 785
    .line 786
    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 787
    .line 788
    .line 789
    move-result v0

    .line 790
    mul-int/2addr v0, p3

    .line 791
    const/16 v5, 0x14

    .line 792
    .line 793
    invoke-virtual {p2, v5, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 794
    .line 795
    .line 796
    move-result v5

    .line 797
    const/16 v6, 0xf

    .line 798
    .line 799
    invoke-virtual {p2, v6, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 800
    .line 801
    .line 802
    move-result v0

    .line 803
    invoke-virtual {p0, v5}, Lon0;->setThumbWidth(I)V

    .line 804
    .line 805
    .line 806
    invoke-virtual {p0, v0}, Lon0;->setThumbHeight(I)V

    .line 807
    .line 808
    .line 809
    const/16 v0, 0x9

    .line 810
    .line 811
    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 812
    .line 813
    .line 814
    move-result v0

    .line 815
    invoke-virtual {p0, v0}, Lon0;->setHaloRadius(I)V

    .line 816
    .line 817
    .line 818
    const/16 v0, 0xe

    .line 819
    .line 820
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 821
    .line 822
    .line 823
    move-result v0

    .line 824
    invoke-virtual {p0, v0}, Lon0;->setThumbElevation(F)V

    .line 825
    .line 826
    .line 827
    const/16 v0, 0x20

    .line 828
    .line 829
    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 830
    .line 831
    .line 832
    move-result v0

    .line 833
    invoke-virtual {p0, v0}, Lon0;->setTrackHeight(I)V

    .line 834
    .line 835
    .line 836
    iget v0, p0, Lon0;->j0:I

    .line 837
    .line 838
    div-int/2addr v0, p3

    .line 839
    const/16 v1, 0x18

    .line 840
    .line 841
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 842
    .line 843
    .line 844
    move-result v0

    .line 845
    invoke-virtual {p0, v0}, Lon0;->setTickActiveRadius(I)V

    .line 846
    .line 847
    .line 848
    iget v0, p0, Lon0;->j0:I

    .line 849
    .line 850
    div-int/2addr v0, p3

    .line 851
    const/16 p3, 0x19

    .line 852
    .line 853
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 854
    .line 855
    .line 856
    move-result p3

    .line 857
    invoke-virtual {p0, p3}, Lon0;->setTickInactiveRadius(I)V

    .line 858
    .line 859
    .line 860
    const/16 p3, 0xa

    .line 861
    .line 862
    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 863
    .line 864
    .line 865
    move-result p3

    .line 866
    invoke-virtual {p0, p3}, Lon0;->setLabelBehavior(I)V

    .line 867
    .line 868
    .line 869
    invoke-virtual {p2, p1, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 870
    .line 871
    .line 872
    move-result p3

    .line 873
    if-nez p3, :cond_d

    .line 874
    .line 875
    invoke-virtual {p0, p1}, Lon0;->setEnabled(Z)V

    .line 876
    .line 877
    .line 878
    :cond_d
    iget p1, p0, Lon0;->H0:F

    .line 879
    .line 880
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 881
    .line 882
    .line 883
    move-result-object p1

    .line 884
    filled-new-array {p1}, [Ljava/lang/Float;

    .line 885
    .line 886
    .line 887
    move-result-object p1

    .line 888
    invoke-virtual {p0, p1}, Lon0;->setValues([Ljava/lang/Float;)V

    .line 889
    .line 890
    .line 891
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 892
    .line 893
    .line 894
    invoke-virtual {p0, v10}, Landroid/view/View;->setFocusable(Z)V

    .line 895
    .line 896
    .line 897
    invoke-virtual {p0, v10}, Landroid/view/View;->setClickable(Z)V

    .line 898
    .line 899
    .line 900
    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 901
    .line 902
    .line 903
    move-result-object p1

    .line 904
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 905
    .line 906
    .line 907
    move-result p1

    .line 908
    iput p1, p0, Lon0;->J:I

    .line 909
    .line 910
    new-instance p1, Lln0;

    .line 911
    .line 912
    invoke-direct {p1, v3}, Lln0;-><init>(Lcom/google/android/material/slider/Slider;)V

    .line 913
    .line 914
    .line 915
    iput-object p1, p0, Lon0;->n:Lln0;

    .line 916
    .line 917
    invoke-static {p0, p1}, Ldl8;->n(Landroid/view/View;Lw5;)V

    .line 918
    .line 919
    .line 920
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 921
    .line 922
    .line 923
    move-result-object p1

    .line 924
    const-string p2, "accessibility"

    .line 925
    .line 926
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 927
    .line 928
    .line 929
    move-result-object p1

    .line 930
    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    .line 931
    .line 932
    iput-object p1, p0, Lon0;->p:Landroid/view/accessibility/AccessibilityManager;

    .line 933
    .line 934
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 935
    .line 936
    if-lt p2, v8, :cond_e

    .line 937
    .line 938
    const/16 p2, 0x2710

    .line 939
    .line 940
    invoke-virtual {p1, p2, v2}, Landroid/view/accessibility/AccessibilityManager;->getRecommendedTimeoutMillis(II)I

    .line 941
    .line 942
    .line 943
    move-result p1

    .line 944
    iput p1, p0, Lon0;->s1:I

    .line 945
    .line 946
    return-void

    .line 947
    :cond_e
    const p1, 0x1d4c0

    .line 948
    .line 949
    .line 950
    iput p1, p0, Lon0;->s1:I

    .line 951
    .line 952
    return-void
.end method


# virtual methods
.method public final A(Ljava/util/ArrayList;)V
    .locals 14

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_10

    .line 6
    .line 7
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lon0;->J0:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-ne v0, v1, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lon0;->J0:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    iput-object p1, p0, Lon0;->J0:Ljava/util/ArrayList;

    .line 32
    .line 33
    const/4 p1, 0x1

    .line 34
    iput-boolean p1, p0, Lon0;->U0:Z

    .line 35
    .line 36
    iget-object v0, p0, Lon0;->j1:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    iget-object v2, p0, Lon0;->J0:Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    const/4 v3, 0x0

    .line 49
    if-eq v1, v2, :cond_1

    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 52
    .line 53
    .line 54
    move v1, v3

    .line 55
    :goto_0
    iget-object v2, p0, Lon0;->J0:Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-ge v1, v2, :cond_1

    .line 62
    .line 63
    new-instance v2, Lc95;

    .line 64
    .line 65
    invoke-direct {v2}, Lc95;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2}, Lc95;->w()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Lon0;->getThumbTintList()Landroid/content/res/ColorStateList;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    invoke-virtual {v2, v4}, Lc95;->t(Landroid/content/res/ColorStateList;)V

    .line 76
    .line 77
    .line 78
    new-instance v4, Lus2;

    .line 79
    .line 80
    invoke-direct {v4, v3}, Lus2;-><init>(I)V

    .line 81
    .line 82
    .line 83
    new-instance v5, Lus2;

    .line 84
    .line 85
    invoke-direct {v5, v3}, Lus2;-><init>(I)V

    .line 86
    .line 87
    .line 88
    new-instance v6, Lus2;

    .line 89
    .line 90
    invoke-direct {v6, v3}, Lus2;-><init>(I)V

    .line 91
    .line 92
    .line 93
    new-instance v7, Lus2;

    .line 94
    .line 95
    invoke-direct {v7, v3}, Lus2;-><init>(I)V

    .line 96
    .line 97
    .line 98
    iget v8, p0, Lon0;->c0:I

    .line 99
    .line 100
    int-to-float v8, v8

    .line 101
    const/high16 v9, 0x40000000    # 2.0f

    .line 102
    .line 103
    div-float/2addr v8, v9

    .line 104
    invoke-static {v3}, Lxh8;->e(I)Lzv1;

    .line 105
    .line 106
    .line 107
    move-result-object v9

    .line 108
    new-instance v10, Lf3;

    .line 109
    .line 110
    invoke-direct {v10, v8}, Lf3;-><init>(F)V

    .line 111
    .line 112
    .line 113
    new-instance v11, Lf3;

    .line 114
    .line 115
    invoke-direct {v11, v8}, Lf3;-><init>(F)V

    .line 116
    .line 117
    .line 118
    new-instance v12, Lf3;

    .line 119
    .line 120
    invoke-direct {v12, v8}, Lf3;-><init>(F)V

    .line 121
    .line 122
    .line 123
    new-instance v13, Lf3;

    .line 124
    .line 125
    invoke-direct {v13, v8}, Lf3;-><init>(F)V

    .line 126
    .line 127
    .line 128
    new-instance v8, Ltb7;

    .line 129
    .line 130
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 131
    .line 132
    .line 133
    iput-object v9, v8, Ltb7;->a:Lzv1;

    .line 134
    .line 135
    iput-object v9, v8, Ltb7;->b:Lzv1;

    .line 136
    .line 137
    iput-object v9, v8, Ltb7;->c:Lzv1;

    .line 138
    .line 139
    iput-object v9, v8, Ltb7;->d:Lzv1;

    .line 140
    .line 141
    iput-object v10, v8, Ltb7;->e:Llx1;

    .line 142
    .line 143
    iput-object v11, v8, Ltb7;->f:Llx1;

    .line 144
    .line 145
    iput-object v12, v8, Ltb7;->g:Llx1;

    .line 146
    .line 147
    iput-object v13, v8, Ltb7;->h:Llx1;

    .line 148
    .line 149
    iput-object v4, v8, Ltb7;->i:Lus2;

    .line 150
    .line 151
    iput-object v5, v8, Ltb7;->j:Lus2;

    .line 152
    .line 153
    iput-object v6, v8, Ltb7;->k:Lus2;

    .line 154
    .line 155
    iput-object v7, v8, Ltb7;->l:Lus2;

    .line 156
    .line 157
    invoke-virtual {v2, v8}, Lc95;->setShapeAppearanceModel(Ltb7;)V

    .line 158
    .line 159
    .line 160
    iget v4, p0, Lon0;->c0:I

    .line 161
    .line 162
    iget v5, p0, Lon0;->d0:I

    .line 163
    .line 164
    invoke-virtual {v2, v3, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0}, Lon0;->getThumbElevation()F

    .line 168
    .line 169
    .line 170
    move-result v4

    .line 171
    invoke-virtual {v2, v4}, Lc95;->s(F)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p0}, Lon0;->getThumbStrokeWidth()F

    .line 175
    .line 176
    .line 177
    move-result v4

    .line 178
    invoke-virtual {v2, v4}, Lc95;->A(F)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p0}, Lon0;->getThumbStrokeColor()Landroid/content/res/ColorStateList;

    .line 182
    .line 183
    .line 184
    move-result-object v4

    .line 185
    invoke-virtual {v2, v4}, Lc95;->z(Landroid/content/res/ColorStateList;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 189
    .line 190
    .line 191
    move-result-object v4

    .line 192
    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    add-int/lit8 v1, v1, 0x1

    .line 199
    .line 200
    goto/16 :goto_0

    .line 201
    .line 202
    :cond_1
    iput v3, p0, Lon0;->L0:I

    .line 203
    .line 204
    invoke-virtual {p0}, Lon0;->E()V

    .line 205
    .line 206
    .line 207
    iget-object v0, p0, Lon0;->t:Ljava/util/ArrayList;

    .line 208
    .line 209
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 210
    .line 211
    .line 212
    move-result v1

    .line 213
    iget-object v2, p0, Lon0;->J0:Ljava/util/ArrayList;

    .line 214
    .line 215
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 216
    .line 217
    .line 218
    move-result v2

    .line 219
    if-le v1, v2, :cond_5

    .line 220
    .line 221
    iget-object v1, p0, Lon0;->J0:Ljava/util/ArrayList;

    .line 222
    .line 223
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 224
    .line 225
    .line 226
    move-result v1

    .line 227
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 228
    .line 229
    .line 230
    move-result v2

    .line 231
    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 236
    .line 237
    .line 238
    move-result-object v2

    .line 239
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 240
    .line 241
    .line 242
    move-result v4

    .line 243
    if-eqz v4, :cond_4

    .line 244
    .line 245
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v4

    .line 249
    check-cast v4, Lu88;

    .line 250
    .line 251
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 252
    .line 253
    .line 254
    move-result v5

    .line 255
    if-eqz v5, :cond_2

    .line 256
    .line 257
    invoke-static {p0}, Lyc9;->s(Lon0;)Landroid/view/ViewGroup;

    .line 258
    .line 259
    .line 260
    move-result-object v5

    .line 261
    if-nez v5, :cond_3

    .line 262
    .line 263
    goto :goto_1

    .line 264
    :cond_3
    invoke-virtual {v5}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    .line 265
    .line 266
    .line 267
    move-result-object v6

    .line 268
    invoke-virtual {v6, v4}, Landroid/view/ViewOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    .line 269
    .line 270
    .line 271
    iget-object v4, v4, Lu88;->d0:Lt88;

    .line 272
    .line 273
    invoke-virtual {v5, v4}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 274
    .line 275
    .line 276
    goto :goto_1

    .line 277
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 278
    .line 279
    .line 280
    :cond_5
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 281
    .line 282
    .line 283
    move-result v1

    .line 284
    iget-object v2, p0, Lon0;->J0:Ljava/util/ArrayList;

    .line 285
    .line 286
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 287
    .line 288
    .line 289
    move-result v2

    .line 290
    if-ge v1, v2, :cond_b

    .line 291
    .line 292
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 293
    .line 294
    .line 295
    move-result-object v1

    .line 296
    new-instance v2, Lu88;

    .line 297
    .line 298
    iget v8, p0, Lon0;->r:I

    .line 299
    .line 300
    invoke-direct {v2, v1, v8}, Lu88;-><init>(Landroid/content/Context;I)V

    .line 301
    .line 302
    .line 303
    sget-object v6, Ltd6;->Z:[I

    .line 304
    .line 305
    new-array v9, v3, [I

    .line 306
    .line 307
    iget-object v4, v2, Lu88;->a0:Landroid/content/Context;

    .line 308
    .line 309
    const/4 v5, 0x0

    .line 310
    const/4 v7, 0x0

    .line 311
    invoke-static/range {v4 .. v9}, Ljd4;->B(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    .line 312
    .line 313
    .line 314
    move-result-object v1

    .line 315
    iget-object v4, v2, Lu88;->a0:Landroid/content/Context;

    .line 316
    .line 317
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 318
    .line 319
    .line 320
    move-result-object v5

    .line 321
    const v6, 0x7f07047c

    .line 322
    .line 323
    .line 324
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 325
    .line 326
    .line 327
    move-result v5

    .line 328
    iput v5, v2, Lu88;->k0:I

    .line 329
    .line 330
    const/16 v5, 0x8

    .line 331
    .line 332
    invoke-virtual {v1, v5, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 333
    .line 334
    .line 335
    move-result v5

    .line 336
    iput-boolean v5, v2, Lu88;->j0:Z

    .line 337
    .line 338
    if-eqz v5, :cond_6

    .line 339
    .line 340
    invoke-virtual {v2}, Lc95;->k()Ltb7;

    .line 341
    .line 342
    .line 343
    move-result-object v5

    .line 344
    invoke-virtual {v5}, Ltb7;->m()Lsb7;

    .line 345
    .line 346
    .line 347
    move-result-object v5

    .line 348
    invoke-virtual {v2}, Lu88;->G()Ljs5;

    .line 349
    .line 350
    .line 351
    move-result-object v6

    .line 352
    iput-object v6, v5, Lsb7;->k:Lus2;

    .line 353
    .line 354
    invoke-virtual {v5}, Lsb7;->a()Ltb7;

    .line 355
    .line 356
    .line 357
    move-result-object v5

    .line 358
    invoke-virtual {v2, v5}, Lc95;->setShapeAppearanceModel(Ltb7;)V

    .line 359
    .line 360
    .line 361
    goto :goto_3

    .line 362
    :cond_6
    iput v3, v2, Lu88;->k0:I

    .line 363
    .line 364
    :goto_3
    const/4 v5, 0x6

    .line 365
    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 366
    .line 367
    .line 368
    move-result-object v5

    .line 369
    iget-object v6, v2, Lu88;->Z:Ljava/lang/CharSequence;

    .line 370
    .line 371
    invoke-static {v6, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 372
    .line 373
    .line 374
    move-result v6

    .line 375
    iget-object v7, v2, Lu88;->c0:La18;

    .line 376
    .line 377
    if-nez v6, :cond_7

    .line 378
    .line 379
    iput-object v5, v2, Lu88;->Z:Ljava/lang/CharSequence;

    .line 380
    .line 381
    iput-boolean p1, v7, La18;->e:Z

    .line 382
    .line 383
    invoke-virtual {v2}, Lc95;->invalidateSelf()V

    .line 384
    .line 385
    .line 386
    :cond_7
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 387
    .line 388
    .line 389
    move-result v5

    .line 390
    if-eqz v5, :cond_8

    .line 391
    .line 392
    invoke-virtual {v1, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 393
    .line 394
    .line 395
    move-result v5

    .line 396
    if-eqz v5, :cond_8

    .line 397
    .line 398
    new-instance v6, Lu08;

    .line 399
    .line 400
    invoke-direct {v6, v4, v5}, Lu08;-><init>(Landroid/content/Context;I)V

    .line 401
    .line 402
    .line 403
    goto :goto_4

    .line 404
    :cond_8
    const/4 v6, 0x0

    .line 405
    :goto_4
    if-eqz v6, :cond_9

    .line 406
    .line 407
    invoke-virtual {v1, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 408
    .line 409
    .line 410
    move-result v5

    .line 411
    if-eqz v5, :cond_9

    .line 412
    .line 413
    invoke-static {v4, v1, p1}, Lk55;->m(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 414
    .line 415
    .line 416
    move-result-object v5

    .line 417
    iput-object v5, v6, Lu08;->k:Landroid/content/res/ColorStateList;

    .line 418
    .line 419
    :cond_9
    invoke-virtual {v7, v6, v4}, La18;->c(Lu08;Landroid/content/Context;)V

    .line 420
    .line 421
    .line 422
    const v5, 0x7f04012e

    .line 423
    .line 424
    .line 425
    const-class v6, Lu88;

    .line 426
    .line 427
    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v7

    .line 431
    invoke-static {v5, v4, v7}, Ljm1;->T(ILandroid/content/Context;Ljava/lang/String;)Landroid/util/TypedValue;

    .line 432
    .line 433
    .line 434
    move-result-object v5

    .line 435
    invoke-static {v4, v5}, Lz85;->C(Landroid/content/Context;Landroid/util/TypedValue;)I

    .line 436
    .line 437
    .line 438
    move-result v5

    .line 439
    const v7, 0x1010031

    .line 440
    .line 441
    .line 442
    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object v8

    .line 446
    invoke-static {v7, v4, v8}, Ljm1;->T(ILandroid/content/Context;Ljava/lang/String;)Landroid/util/TypedValue;

    .line 447
    .line 448
    .line 449
    move-result-object v7

    .line 450
    invoke-static {v4, v7}, Lz85;->C(Landroid/content/Context;Landroid/util/TypedValue;)I

    .line 451
    .line 452
    .line 453
    move-result v7

    .line 454
    const/16 v8, 0xe5

    .line 455
    .line 456
    invoke-static {v7, v8}, Lxl1;->g(II)I

    .line 457
    .line 458
    .line 459
    move-result v7

    .line 460
    const/16 v8, 0x99

    .line 461
    .line 462
    invoke-static {v5, v8}, Lxl1;->g(II)I

    .line 463
    .line 464
    .line 465
    move-result v5

    .line 466
    invoke-static {v5, v7}, Lxl1;->e(II)I

    .line 467
    .line 468
    .line 469
    move-result v5

    .line 470
    const/4 v7, 0x7

    .line 471
    invoke-virtual {v1, v7, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 472
    .line 473
    .line 474
    move-result v5

    .line 475
    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 476
    .line 477
    .line 478
    move-result-object v5

    .line 479
    invoke-virtual {v2, v5}, Lc95;->t(Landroid/content/res/ColorStateList;)V

    .line 480
    .line 481
    .line 482
    const v5, 0x7f040158

    .line 483
    .line 484
    .line 485
    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 486
    .line 487
    .line 488
    move-result-object v6

    .line 489
    invoke-static {v5, v4, v6}, Ljm1;->T(ILandroid/content/Context;Ljava/lang/String;)Landroid/util/TypedValue;

    .line 490
    .line 491
    .line 492
    move-result-object v5

    .line 493
    invoke-static {v4, v5}, Lz85;->C(Landroid/content/Context;Landroid/util/TypedValue;)I

    .line 494
    .line 495
    .line 496
    move-result v4

    .line 497
    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 498
    .line 499
    .line 500
    move-result-object v4

    .line 501
    invoke-virtual {v2, v4}, Lc95;->y(Landroid/content/res/ColorStateList;)V

    .line 502
    .line 503
    .line 504
    const/4 v4, 0x2

    .line 505
    invoke-virtual {v1, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 506
    .line 507
    .line 508
    move-result v5

    .line 509
    iput v5, v2, Lu88;->f0:I

    .line 510
    .line 511
    const/4 v5, 0x4

    .line 512
    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 513
    .line 514
    .line 515
    move-result v5

    .line 516
    iput v5, v2, Lu88;->g0:I

    .line 517
    .line 518
    const/4 v5, 0x5

    .line 519
    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 520
    .line 521
    .line 522
    move-result v5

    .line 523
    iput v5, v2, Lu88;->h0:I

    .line 524
    .line 525
    const/4 v5, 0x3

    .line 526
    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 527
    .line 528
    .line 529
    move-result v5

    .line 530
    iput v5, v2, Lu88;->i0:I

    .line 531
    .line 532
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 533
    .line 534
    .line 535
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 536
    .line 537
    .line 538
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 539
    .line 540
    .line 541
    move-result v1

    .line 542
    if-eqz v1, :cond_5

    .line 543
    .line 544
    invoke-static {p0}, Lyc9;->s(Lon0;)Landroid/view/ViewGroup;

    .line 545
    .line 546
    .line 547
    move-result-object v1

    .line 548
    if-nez v1, :cond_a

    .line 549
    .line 550
    goto/16 :goto_2

    .line 551
    .line 552
    :cond_a
    new-array v4, v4, [I

    .line 553
    .line 554
    invoke-virtual {v1, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 555
    .line 556
    .line 557
    aget v4, v4, v3

    .line 558
    .line 559
    iput v4, v2, Lu88;->l0:I

    .line 560
    .line 561
    iget-object v4, v2, Lu88;->e0:Landroid/graphics/Rect;

    .line 562
    .line 563
    invoke-virtual {v1, v4}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 564
    .line 565
    .line 566
    iget-object v2, v2, Lu88;->d0:Lt88;

    .line 567
    .line 568
    invoke-virtual {v1, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 569
    .line 570
    .line 571
    goto/16 :goto_2

    .line 572
    .line 573
    :cond_b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 574
    .line 575
    .line 576
    move-result v1

    .line 577
    if-ne v1, p1, :cond_c

    .line 578
    .line 579
    move p1, v3

    .line 580
    :cond_c
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 581
    .line 582
    .line 583
    move-result-object v0

    .line 584
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 585
    .line 586
    .line 587
    move-result v1

    .line 588
    if-eqz v1, :cond_d

    .line 589
    .line 590
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 591
    .line 592
    .line 593
    move-result-object v1

    .line 594
    check-cast v1, Lu88;

    .line 595
    .line 596
    int-to-float v2, p1

    .line 597
    invoke-virtual {v1, v2}, Lc95;->A(F)V

    .line 598
    .line 599
    .line 600
    goto :goto_5

    .line 601
    :cond_d
    iget-object p1, p0, Lon0;->x:Ljava/util/ArrayList;

    .line 602
    .line 603
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 604
    .line 605
    .line 606
    move-result-object p1

    .line 607
    :cond_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 608
    .line 609
    .line 610
    move-result v0

    .line 611
    if-eqz v0, :cond_f

    .line 612
    .line 613
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 614
    .line 615
    .line 616
    move-result-object v0

    .line 617
    check-cast v0, Lzi5;

    .line 618
    .line 619
    iget-object v1, p0, Lon0;->J0:Ljava/util/ArrayList;

    .line 620
    .line 621
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 622
    .line 623
    .line 624
    move-result-object v1

    .line 625
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 626
    .line 627
    .line 628
    move-result v2

    .line 629
    if-eqz v2, :cond_e

    .line 630
    .line 631
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 632
    .line 633
    .line 634
    move-result-object v2

    .line 635
    check-cast v2, Ljava/lang/Float;

    .line 636
    .line 637
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 638
    .line 639
    .line 640
    move-result v2

    .line 641
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 642
    .line 643
    .line 644
    move-object v3, p0

    .line 645
    check-cast v3, Lcom/google/android/material/slider/Slider;

    .line 646
    .line 647
    iget-object v3, v0, Lzi5;->a:Lmt3;

    .line 648
    .line 649
    iget-object v4, v0, Lzi5;->b:Lorg/swiftapps/swiftbackup/settings/h;

    .line 650
    .line 651
    float-to-int v2, v2

    .line 652
    iget-object v4, v4, Lorg/swiftapps/swiftbackup/settings/h;->a:Lcj5;

    .line 653
    .line 654
    iget-object v4, v4, Lcj5;->p:Landroid/widget/TextView;

    .line 655
    .line 656
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 657
    .line 658
    .line 659
    move-result-object v5

    .line 660
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 661
    .line 662
    .line 663
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 664
    .line 665
    .line 666
    move-result-object v2

    .line 667
    invoke-interface {v3, v2}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 668
    .line 669
    .line 670
    goto :goto_6

    .line 671
    :cond_f
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 672
    .line 673
    .line 674
    return-void

    .line 675
    :cond_10
    const-string p0, "At least one value must be set"

    .line 676
    .line 677
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 678
    .line 679
    .line 680
    return-void
.end method

.method public final B(IF)Z
    .locals 5

    .line 1
    iput p1, p0, Lon0;->L0:I

    .line 2
    .line 3
    iget-object v0, p0, Lon0;->J0:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/Float;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    sub-float v0, p2, v0

    .line 16
    .line 17
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    float-to-double v0, v0

    .line 22
    const-wide v2, 0x3f1a36e2eb1c432dL    # 1.0E-4

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    cmpg-double v0, v0, v2

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    if-gez v0, :cond_0

    .line 31
    .line 32
    return v1

    .line 33
    :cond_0
    invoke-virtual {p0}, Lon0;->getMinSeparation()F

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    iget v2, p0, Lon0;->r1:I

    .line 38
    .line 39
    if-nez v2, :cond_2

    .line 40
    .line 41
    const/4 v2, 0x0

    .line 42
    cmpl-float v3, v0, v2

    .line 43
    .line 44
    if-nez v3, :cond_1

    .line 45
    .line 46
    move v0, v2

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    iget v2, p0, Lon0;->b0:I

    .line 49
    .line 50
    int-to-float v2, v2

    .line 51
    sub-float/2addr v0, v2

    .line 52
    iget v2, p0, Lon0;->S0:I

    .line 53
    .line 54
    int-to-float v2, v2

    .line 55
    div-float/2addr v0, v2

    .line 56
    iget v2, p0, Lon0;->H0:F

    .line 57
    .line 58
    iget v3, p0, Lon0;->I0:F

    .line 59
    .line 60
    invoke-static {v2, v3, v0, v2}, Lxs1;->e(FFFF)F

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lon0;->s()Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-nez v2, :cond_3

    .line 69
    .line 70
    invoke-virtual {p0}, Lon0;->t()Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-eqz v2, :cond_4

    .line 75
    .line 76
    :cond_3
    neg-float v0, v0

    .line 77
    :cond_4
    add-int/lit8 v2, p1, 0x1

    .line 78
    .line 79
    iget-object v3, p0, Lon0;->J0:Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    if-lt v2, v3, :cond_5

    .line 86
    .line 87
    iget v2, p0, Lon0;->I0:F

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_5
    iget-object v3, p0, Lon0;->J0:Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    check-cast v2, Ljava/lang/Float;

    .line 97
    .line 98
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    sub-float/2addr v2, v0

    .line 103
    :goto_1
    add-int/lit8 v3, p1, -0x1

    .line 104
    .line 105
    if-gez v3, :cond_6

    .line 106
    .line 107
    iget v0, p0, Lon0;->H0:F

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_6
    iget-object v4, p0, Lon0;->J0:Ljava/util/ArrayList;

    .line 111
    .line 112
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    check-cast v3, Ljava/lang/Float;

    .line 117
    .line 118
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    add-float/2addr v0, v3

    .line 123
    :goto_2
    invoke-static {p2, v0, v2}, Liz1;->c(FFF)F

    .line 124
    .line 125
    .line 126
    move-result p2

    .line 127
    iget-object v0, p0, Lon0;->J0:Ljava/util/ArrayList;

    .line 128
    .line 129
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 130
    .line 131
    .line 132
    move-result-object p2

    .line 133
    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    iget-object p2, p0, Lon0;->x:Ljava/util/ArrayList;

    .line 137
    .line 138
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 139
    .line 140
    .line 141
    move-result-object p2

    .line 142
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-eqz v0, :cond_7

    .line 147
    .line 148
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    check-cast v0, Lzi5;

    .line 153
    .line 154
    iget-object v2, p0, Lon0;->J0:Ljava/util/ArrayList;

    .line 155
    .line 156
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    check-cast v2, Ljava/lang/Float;

    .line 161
    .line 162
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 163
    .line 164
    .line 165
    move-result v2

    .line 166
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 167
    .line 168
    .line 169
    move-object v3, p0

    .line 170
    check-cast v3, Lcom/google/android/material/slider/Slider;

    .line 171
    .line 172
    iget-object v3, v0, Lzi5;->a:Lmt3;

    .line 173
    .line 174
    iget-object v0, v0, Lzi5;->b:Lorg/swiftapps/swiftbackup/settings/h;

    .line 175
    .line 176
    float-to-int v2, v2

    .line 177
    iget-object v0, v0, Lorg/swiftapps/swiftbackup/settings/h;->a:Lcj5;

    .line 178
    .line 179
    iget-object v0, v0, Lcj5;->p:Landroid/widget/TextView;

    .line 180
    .line 181
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v4

    .line 185
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    .line 187
    .line 188
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    invoke-interface {v3, v0}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    goto :goto_3

    .line 196
    :cond_7
    const/4 p2, 0x1

    .line 197
    iget-object v0, p0, Lon0;->p:Landroid/view/accessibility/AccessibilityManager;

    .line 198
    .line 199
    if-eqz v0, :cond_9

    .line 200
    .line 201
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    if-eqz v0, :cond_9

    .line 206
    .line 207
    iget-object v0, p0, Lon0;->q:Lkn0;

    .line 208
    .line 209
    if-nez v0, :cond_8

    .line 210
    .line 211
    new-instance v0, Lkn0;

    .line 212
    .line 213
    invoke-direct {v0, p0}, Lkn0;-><init>(Lon0;)V

    .line 214
    .line 215
    .line 216
    iput-object v0, p0, Lon0;->q:Lkn0;

    .line 217
    .line 218
    goto :goto_4

    .line 219
    :cond_8
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 220
    .line 221
    .line 222
    :goto_4
    iget-object v0, p0, Lon0;->q:Lkn0;

    .line 223
    .line 224
    iput p1, v0, Lkn0;->b:I

    .line 225
    .line 226
    const-wide/16 v2, 0xc8

    .line 227
    .line 228
    invoke-virtual {p0, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 229
    .line 230
    .line 231
    iget-object p0, p0, Lon0;->n:Lln0;

    .line 232
    .line 233
    iget-object v0, p0, Lo03;->i:Landroid/view/View;

    .line 234
    .line 235
    const/high16 v2, -0x80000000

    .line 236
    .line 237
    if-eq p1, v2, :cond_9

    .line 238
    .line 239
    iget-object v2, p0, Lo03;->h:Landroid/view/accessibility/AccessibilityManager;

    .line 240
    .line 241
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 242
    .line 243
    .line 244
    move-result v2

    .line 245
    if-eqz v2, :cond_9

    .line 246
    .line 247
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 248
    .line 249
    .line 250
    move-result-object v2

    .line 251
    if-eqz v2, :cond_9

    .line 252
    .line 253
    const/16 v3, 0x800

    .line 254
    .line 255
    invoke-virtual {p0, p1, v3}, Lo03;->k(II)Landroid/view/accessibility/AccessibilityEvent;

    .line 256
    .line 257
    .line 258
    move-result-object p0

    .line 259
    invoke-virtual {p0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    .line 260
    .line 261
    .line 262
    invoke-interface {v2, v0, p0}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 263
    .line 264
    .line 265
    :cond_9
    return p2
.end method

.method public final C()V
    .locals 6

    .line 1
    iget v0, p0, Lon0;->q1:F

    .line 2
    .line 3
    iget v1, p0, Lon0;->M0:F

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    cmpl-float v2, v1, v2

    .line 7
    .line 8
    if-lez v2, :cond_0

    .line 9
    .line 10
    iget v2, p0, Lon0;->I0:F

    .line 11
    .line 12
    iget v3, p0, Lon0;->H0:F

    .line 13
    .line 14
    sub-float/2addr v2, v3

    .line 15
    div-float/2addr v2, v1

    .line 16
    float-to-int v1, v2

    .line 17
    int-to-float v2, v1

    .line 18
    mul-float/2addr v0, v2

    .line 19
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    int-to-double v2, v0

    .line 24
    int-to-double v0, v1

    .line 25
    div-double/2addr v2, v0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    float-to-double v2, v0

    .line 28
    :goto_0
    invoke-virtual {p0}, Lon0;->s()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0}, Lon0;->t()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    :cond_1
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 41
    .line 42
    sub-double v2, v0, v2

    .line 43
    .line 44
    :cond_2
    iget v0, p0, Lon0;->I0:F

    .line 45
    .line 46
    iget v1, p0, Lon0;->H0:F

    .line 47
    .line 48
    sub-float/2addr v0, v1

    .line 49
    float-to-double v4, v0

    .line 50
    mul-double/2addr v2, v4

    .line 51
    float-to-double v0, v1

    .line 52
    add-double/2addr v2, v0

    .line 53
    double-to-float v0, v2

    .line 54
    iget v1, p0, Lon0;->K0:I

    .line 55
    .line 56
    invoke-virtual {p0, v1, v0}, Lon0;->B(IF)Z

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public final D(ILandroid/graphics/Rect;)V
    .locals 6

    .line 1
    iget v0, p0, Lon0;->b0:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lon0;->getValues()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Ljava/lang/Float;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    invoke-virtual {p0, p1}, Lon0;->v(F)F

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    iget v1, p0, Lon0;->S0:I

    .line 22
    .line 23
    int-to-float v1, v1

    .line 24
    mul-float/2addr p1, v1

    .line 25
    float-to-int p1, p1

    .line 26
    add-int/2addr v0, p1

    .line 27
    invoke-virtual {p0}, Lon0;->d()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    iget v1, p0, Lon0;->R:I

    .line 32
    .line 33
    iget v2, p0, Lon0;->S:I

    .line 34
    .line 35
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    iget v2, p0, Lon0;->c0:I

    .line 40
    .line 41
    div-int/lit8 v2, v2, 0x2

    .line 42
    .line 43
    div-int/lit8 v1, v1, 0x2

    .line 44
    .line 45
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    iget v3, p0, Lon0;->d0:I

    .line 50
    .line 51
    div-int/lit8 v3, v3, 0x2

    .line 52
    .line 53
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    new-instance v3, Landroid/graphics/RectF;

    .line 58
    .line 59
    sub-int v4, v0, v2

    .line 60
    .line 61
    int-to-float v4, v4

    .line 62
    sub-int v5, p1, v1

    .line 63
    .line 64
    int-to-float v5, v5

    .line 65
    add-int/2addr v0, v2

    .line 66
    int-to-float v0, v0

    .line 67
    add-int/2addr p1, v1

    .line 68
    int-to-float p1, p1

    .line 69
    invoke-direct {v3, v4, v5, v0, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Lon0;->t()Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-eqz p1, :cond_0

    .line 77
    .line 78
    iget-object p0, p0, Lon0;->i1:Landroid/graphics/Matrix;

    .line 79
    .line 80
    invoke-virtual {p0, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 81
    .line 82
    .line 83
    :cond_0
    iget p0, v3, Landroid/graphics/RectF;->left:F

    .line 84
    .line 85
    float-to-int p0, p0

    .line 86
    iget p1, v3, Landroid/graphics/RectF;->top:F

    .line 87
    .line 88
    float-to-int p1, p1

    .line 89
    iget v0, v3, Landroid/graphics/RectF;->right:F

    .line 90
    .line 91
    float-to-int v0, v0

    .line 92
    iget v1, v3, Landroid/graphics/RectF;->bottom:F

    .line 93
    .line 94
    float-to-int v1, v1

    .line 95
    invoke-virtual {p2, p0, p1, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method public final E()V
    .locals 10

    .line 1
    iget-object v0, p0, Lon0;->J0:Ljava/util/ArrayList;

    .line 2
    .line 3
    iget v1, p0, Lon0;->L0:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/Float;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {p0, v0}, Lon0;->v(F)F

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iget v1, p0, Lon0;->S0:I

    .line 20
    .line 21
    int-to-float v1, v1

    .line 22
    mul-float/2addr v0, v1

    .line 23
    iget v1, p0, Lon0;->b0:I

    .line 24
    .line 25
    int-to-float v1, v1

    .line 26
    add-float/2addr v0, v1

    .line 27
    invoke-virtual {p0}, Lon0;->d()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    invoke-virtual {p0}, Lon0;->n()Landroid/graphics/drawable/RippleDrawable;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    if-nez v2, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-lez v2, :cond_2

    .line 43
    .line 44
    invoke-virtual {p0}, Lon0;->n()Landroid/graphics/drawable/RippleDrawable;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    if-eqz v2, :cond_2

    .line 49
    .line 50
    iget v3, p0, Lon0;->e0:I

    .line 51
    .line 52
    int-to-float v4, v3

    .line 53
    sub-float v5, v0, v4

    .line 54
    .line 55
    sub-int v6, v1, v3

    .line 56
    .line 57
    int-to-float v6, v6

    .line 58
    add-float/2addr v4, v0

    .line 59
    add-int/2addr v3, v1

    .line 60
    int-to-float v3, v3

    .line 61
    const/4 v7, 0x4

    .line 62
    new-array v7, v7, [F

    .line 63
    .line 64
    const/4 v8, 0x0

    .line 65
    aput v5, v7, v8

    .line 66
    .line 67
    const/4 v5, 0x1

    .line 68
    aput v6, v7, v5

    .line 69
    .line 70
    const/4 v6, 0x2

    .line 71
    aput v4, v7, v6

    .line 72
    .line 73
    const/4 v4, 0x3

    .line 74
    aput v3, v7, v4

    .line 75
    .line 76
    invoke-virtual {p0}, Lon0;->t()Z

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    if-eqz v3, :cond_1

    .line 81
    .line 82
    iget-object v3, p0, Lon0;->i1:Landroid/graphics/Matrix;

    .line 83
    .line 84
    invoke-virtual {v3, v7}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 85
    .line 86
    .line 87
    :cond_1
    aget v3, v7, v8

    .line 88
    .line 89
    float-to-int v3, v3

    .line 90
    aget v5, v7, v5

    .line 91
    .line 92
    float-to-int v5, v5

    .line 93
    aget v6, v7, v6

    .line 94
    .line 95
    float-to-int v6, v6

    .line 96
    aget v4, v7, v4

    .line 97
    .line 98
    float-to-int v4, v4

    .line 99
    invoke-virtual {v2, v3, v5, v6, v4}, Landroid/graphics/drawable/RippleDrawable;->setHotspotBounds(IIII)V

    .line 100
    .line 101
    .line 102
    :cond_2
    :goto_0
    int-to-float v1, v1

    .line 103
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-static {v2}, Lcom/google/android/material/focus/FocusRingDrawable;->c(Landroid/graphics/drawable/Drawable;)Lcom/google/android/material/focus/FocusRingDrawable;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    if-eqz v2, :cond_5

    .line 112
    .line 113
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    const v4, 0x7f070328

    .line 118
    .line 119
    .line 120
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    iget v4, p0, Lon0;->c0:I

    .line 125
    .line 126
    int-to-float v4, v4

    .line 127
    const/high16 v5, 0x40000000    # 2.0f

    .line 128
    .line 129
    div-float/2addr v4, v5

    .line 130
    int-to-float v3, v3

    .line 131
    mul-float v6, v3, v5

    .line 132
    .line 133
    add-float/2addr v6, v4

    .line 134
    iget v4, p0, Lon0;->d0:I

    .line 135
    .line 136
    int-to-float v4, v4

    .line 137
    div-float/2addr v4, v5

    .line 138
    add-float/2addr v4, v3

    .line 139
    invoke-virtual {p0}, Lon0;->t()Z

    .line 140
    .line 141
    .line 142
    move-result p0

    .line 143
    if-nez p0, :cond_3

    .line 144
    .line 145
    sub-float p0, v0, v6

    .line 146
    .line 147
    add-float/2addr v0, v6

    .line 148
    sub-float v3, v1, v4

    .line 149
    .line 150
    add-float/2addr v1, v4

    .line 151
    goto :goto_1

    .line 152
    :cond_3
    sub-float p0, v1, v4

    .line 153
    .line 154
    add-float/2addr v1, v4

    .line 155
    sub-float v3, v0, v6

    .line 156
    .line 157
    add-float/2addr v0, v6

    .line 158
    move v9, v1

    .line 159
    move v1, v0

    .line 160
    move v0, v9

    .line 161
    :goto_1
    invoke-virtual {v2}, Lcom/google/android/material/focus/FocusRingDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 162
    .line 163
    .line 164
    float-to-int p0, p0

    .line 165
    float-to-int v3, v3

    .line 166
    float-to-int v0, v0

    .line 167
    float-to-int v1, v1

    .line 168
    iget-object v4, v2, Lcom/google/android/material/focus/FocusRingDrawable;->G:Lfj3;

    .line 169
    .line 170
    iget-object v5, v4, Lfj3;->w:Landroid/graphics/Rect;

    .line 171
    .line 172
    if-nez v5, :cond_4

    .line 173
    .line 174
    new-instance v5, Landroid/graphics/Rect;

    .line 175
    .line 176
    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 177
    .line 178
    .line 179
    iput-object v5, v4, Lfj3;->w:Landroid/graphics/Rect;

    .line 180
    .line 181
    :cond_4
    iget-object v2, v2, Lcom/google/android/material/focus/FocusRingDrawable;->G:Lfj3;

    .line 182
    .line 183
    iget-object v2, v2, Lfj3;->w:Landroid/graphics/Rect;

    .line 184
    .line 185
    invoke-virtual {v2, p0, v3, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 186
    .line 187
    .line 188
    :cond_5
    return-void
.end method

.method public final F()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lon0;->t()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lon0;->s()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/high16 v2, 0x3f000000    # 0.5f

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    const v0, -0x41b33333    # -0.2f

    .line 16
    .line 17
    .line 18
    move v1, v2

    .line 19
    move v2, v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const v1, 0x3f99999a    # 1.2f

    .line 22
    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    move v4, v2

    .line 27
    move v2, v1

    .line 28
    move v1, v4

    .line 29
    :cond_1
    :goto_0
    iget-object v0, p0, Lon0;->t:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_2

    .line 40
    .line 41
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    check-cast v3, Lu88;

    .line 46
    .line 47
    iput v2, v3, Lu88;->o0:F

    .line 48
    .line 49
    iput v1, v3, Lu88;->p0:F

    .line 50
    .line 51
    invoke-virtual {v3}, Lc95;->invalidateSelf()V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    iget v0, p0, Lon0;->W:I

    .line 56
    .line 57
    if-eqz v0, :cond_6

    .line 58
    .line 59
    const/4 v1, 0x1

    .line 60
    if-eq v0, v1, :cond_6

    .line 61
    .line 62
    const/4 v2, 0x2

    .line 63
    if-eq v0, v2, :cond_5

    .line 64
    .line 65
    const/4 v2, 0x3

    .line 66
    if-ne v0, v2, :cond_4

    .line 67
    .line 68
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_3

    .line 73
    .line 74
    new-instance v0, Landroid/graphics/Rect;

    .line 75
    .line 76
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-static {p0}, Lyc9;->s(Lon0;)Landroid/view/ViewGroup;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {v2, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-eqz v0, :cond_3

    .line 91
    .line 92
    iget-boolean v0, p0, Lon0;->w1:Z

    .line 93
    .line 94
    if-eqz v0, :cond_3

    .line 95
    .line 96
    invoke-virtual {p0, v1}, Lon0;->k(Z)V

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :cond_3
    invoke-virtual {p0}, Lon0;->l()V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :cond_4
    const-string v0, "Unexpected labelBehavior: "

    .line 105
    .line 106
    iget p0, p0, Lon0;->W:I

    .line 107
    .line 108
    invoke-static {p0, v0}, Lz5;->c(ILjava/lang/String;)V

    .line 109
    .line 110
    .line 111
    return-void

    .line 112
    :cond_5
    invoke-virtual {p0}, Lon0;->l()V

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    :cond_6
    iget v0, p0, Lon0;->K0:I

    .line 117
    .line 118
    const/4 v1, -0x1

    .line 119
    if-eq v0, v1, :cond_7

    .line 120
    .line 121
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-eqz v0, :cond_7

    .line 126
    .line 127
    const/4 v0, 0x0

    .line 128
    invoke-virtual {p0, v0}, Lon0;->k(Z)V

    .line 129
    .line 130
    .line 131
    return-void

    .line 132
    :cond_7
    invoke-virtual {p0}, Lon0;->l()V

    .line 133
    .line 134
    .line 135
    return-void
.end method

.method public final G()V
    .locals 3

    .line 1
    iget v0, p0, Lon0;->f0:I

    .line 2
    .line 3
    if-lez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lon0;->k1:Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lon0;->l1:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget v0, p0, Lon0;->c0:I

    .line 18
    .line 19
    iput v0, p0, Lon0;->g0:I

    .line 20
    .line 21
    iget v1, p0, Lon0;->d0:I

    .line 22
    .line 23
    iput v1, p0, Lon0;->i0:I

    .line 24
    .line 25
    iget v1, p0, Lon0;->f0:I

    .line 26
    .line 27
    iput v1, p0, Lon0;->h0:I

    .line 28
    .line 29
    int-to-float v0, v0

    .line 30
    const/high16 v1, 0x3f000000    # 0.5f

    .line 31
    .line 32
    mul-float/2addr v0, v1

    .line 33
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-static {v1}, Lcom/google/android/material/focus/FocusRingDrawable;->c(Landroid/graphics/drawable/Drawable;)Lcom/google/android/material/focus/FocusRingDrawable;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    if-eqz v1, :cond_0

    .line 46
    .line 47
    iget-object v1, v1, Lcom/google/android/material/focus/FocusRingDrawable;->G:Lfj3;

    .line 48
    .line 49
    iget-boolean v1, v1, Lfj3;->c:Z

    .line 50
    .line 51
    if-eqz v1, :cond_0

    .line 52
    .line 53
    iget v1, p0, Lon0;->d0:I

    .line 54
    .line 55
    iget v2, p0, Lon0;->K:I

    .line 56
    .line 57
    sub-int/2addr v1, v2

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    const/4 v1, -0x1

    .line 60
    :goto_0
    iget v2, p0, Lon0;->K0:I

    .line 61
    .line 62
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {p0, v0, v1, v2}, Lon0;->y(IILjava/lang/Integer;)V

    .line 67
    .line 68
    .line 69
    :cond_1
    return-void
.end method

.method public final H()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lon0;->P()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lon0;->M0:F

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    cmpg-float v1, v0, v1

    .line 8
    .line 9
    if-gtz v1, :cond_0

    .line 10
    .line 11
    iget v0, p0, Lon0;->N0:I

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lon0;->I(I)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget v1, p0, Lon0;->P0:I

    .line 18
    .line 19
    const/high16 v2, 0x3f800000    # 1.0f

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    if-eqz v1, :cond_3

    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    if-eq v1, v3, :cond_2

    .line 26
    .line 27
    const/4 v0, 0x2

    .line 28
    if-ne v1, v0, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const-string v0, "Unexpected tickVisibilityMode: "

    .line 32
    .line 33
    iget p0, p0, Lon0;->P0:I

    .line 34
    .line 35
    invoke-static {p0, v0}, Lx5;->g(ILjava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_2
    iget v1, p0, Lon0;->I0:F

    .line 40
    .line 41
    iget v5, p0, Lon0;->H0:F

    .line 42
    .line 43
    sub-float/2addr v1, v5

    .line 44
    div-float/2addr v1, v0

    .line 45
    add-float/2addr v1, v2

    .line 46
    float-to-int v0, v1

    .line 47
    iget v1, p0, Lon0;->S0:I

    .line 48
    .line 49
    iget v2, p0, Lon0;->Q:I

    .line 50
    .line 51
    div-int/2addr v1, v2

    .line 52
    add-int/2addr v1, v3

    .line 53
    if-gt v0, v1, :cond_4

    .line 54
    .line 55
    move v4, v0

    .line 56
    goto :goto_0

    .line 57
    :cond_3
    iget v1, p0, Lon0;->I0:F

    .line 58
    .line 59
    iget v4, p0, Lon0;->H0:F

    .line 60
    .line 61
    sub-float/2addr v1, v4

    .line 62
    div-float/2addr v1, v0

    .line 63
    add-float/2addr v1, v2

    .line 64
    float-to-int v0, v1

    .line 65
    iget v1, p0, Lon0;->S0:I

    .line 66
    .line 67
    iget v2, p0, Lon0;->Q:I

    .line 68
    .line 69
    div-int/2addr v1, v2

    .line 70
    add-int/2addr v1, v3

    .line 71
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    :cond_4
    :goto_0
    invoke-virtual {p0, v4}, Lon0;->I(I)V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public final I(I)V
    .locals 7

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lon0;->O0:[F

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lon0;->O0:[F

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    array-length v0, v0

    .line 12
    mul-int/lit8 v1, p1, 0x2

    .line 13
    .line 14
    if-eq v0, v1, :cond_2

    .line 15
    .line 16
    :cond_1
    mul-int/lit8 v0, p1, 0x2

    .line 17
    .line 18
    new-array v0, v0, [F

    .line 19
    .line 20
    iput-object v0, p0, Lon0;->O0:[F

    .line 21
    .line 22
    :cond_2
    iget v0, p0, Lon0;->S0:I

    .line 23
    .line 24
    int-to-float v0, v0

    .line 25
    add-int/lit8 v1, p1, -0x1

    .line 26
    .line 27
    int-to-float v1, v1

    .line 28
    div-float/2addr v0, v1

    .line 29
    invoke-virtual {p0}, Lon0;->d()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    int-to-float v1, v1

    .line 34
    const/4 v2, 0x0

    .line 35
    :goto_0
    mul-int/lit8 v3, p1, 0x2

    .line 36
    .line 37
    if-ge v2, v3, :cond_3

    .line 38
    .line 39
    iget-object v3, p0, Lon0;->O0:[F

    .line 40
    .line 41
    iget v4, p0, Lon0;->b0:I

    .line 42
    .line 43
    int-to-float v4, v4

    .line 44
    int-to-float v5, v2

    .line 45
    const/high16 v6, 0x40000000    # 2.0f

    .line 46
    .line 47
    div-float/2addr v5, v6

    .line 48
    mul-float/2addr v5, v0

    .line 49
    add-float/2addr v5, v4

    .line 50
    aput v5, v3, v2

    .line 51
    .line 52
    add-int/lit8 v4, v2, 0x1

    .line 53
    .line 54
    aput v1, v3, v4

    .line 55
    .line 56
    add-int/lit8 v2, v2, 0x2

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    invoke-virtual {p0}, Lon0;->t()Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-eqz p1, :cond_4

    .line 64
    .line 65
    iget-object p1, p0, Lon0;->i1:Landroid/graphics/Matrix;

    .line 66
    .line 67
    iget-object p0, p0, Lon0;->O0:[F

    .line 68
    .line 69
    invoke-virtual {p1, p0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 70
    .line 71
    .line 72
    :cond_4
    return-void
.end method

.method public final J(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;FI)V
    .locals 10

    .line 1
    invoke-virtual {p3}, Landroid/graphics/RectF;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lon0;->J0:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x1

    .line 16
    if-nez v0, :cond_3

    .line 17
    .line 18
    iget v0, p0, Lon0;->f0:I

    .line 19
    .line 20
    if-lez v0, :cond_3

    .line 21
    .line 22
    invoke-virtual {p0}, Lon0;->s()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    invoke-virtual {p0}, Lon0;->t()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    move v0, v1

    .line 36
    goto :goto_1

    .line 37
    :cond_2
    :goto_0
    iget-object v0, p0, Lon0;->J0:Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    sub-int/2addr v0, v2

    .line 44
    :goto_1
    iget-object v3, p0, Lon0;->J0:Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Ljava/lang/Float;

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    invoke-virtual {p0, v0}, Lon0;->R(F)F

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    iget v3, p0, Lon0;->b0:I

    .line 61
    .line 62
    int-to-float v3, v3

    .line 63
    sub-float/2addr v0, v3

    .line 64
    cmpg-float v3, v0, p4

    .line 65
    .line 66
    if-gez v3, :cond_3

    .line 67
    .line 68
    iget v3, p0, Lon0;->l0:I

    .line 69
    .line 70
    int-to-float v3, v3

    .line 71
    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    goto :goto_2

    .line 76
    :cond_3
    move v0, p4

    .line 77
    :goto_2
    iget-object v3, p0, Lon0;->J0:Ljava/util/ArrayList;

    .line 78
    .line 79
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    if-nez v3, :cond_6

    .line 84
    .line 85
    iget v3, p0, Lon0;->f0:I

    .line 86
    .line 87
    if-lez v3, :cond_6

    .line 88
    .line 89
    invoke-virtual {p0}, Lon0;->s()Z

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    if-nez v3, :cond_5

    .line 94
    .line 95
    invoke-virtual {p0}, Lon0;->t()Z

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    if-eqz v3, :cond_4

    .line 100
    .line 101
    goto :goto_3

    .line 102
    :cond_4
    iget-object v3, p0, Lon0;->J0:Ljava/util/ArrayList;

    .line 103
    .line 104
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    sub-int/2addr v3, v2

    .line 109
    goto :goto_4

    .line 110
    :cond_5
    :goto_3
    move v3, v1

    .line 111
    :goto_4
    iget-object v4, p0, Lon0;->J0:Ljava/util/ArrayList;

    .line 112
    .line 113
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    check-cast v3, Ljava/lang/Float;

    .line 118
    .line 119
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 120
    .line 121
    .line 122
    move-result v3

    .line 123
    invoke-virtual {p0, v3}, Lon0;->R(F)F

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    iget v4, p0, Lon0;->b0:I

    .line 128
    .line 129
    int-to-float v4, v4

    .line 130
    sub-float/2addr v3, v4

    .line 131
    iget v4, p0, Lon0;->S0:I

    .line 132
    .line 133
    int-to-float v4, v4

    .line 134
    sub-float v5, v4, p4

    .line 135
    .line 136
    cmpl-float v5, v3, v5

    .line 137
    .line 138
    if-lez v5, :cond_6

    .line 139
    .line 140
    sub-float/2addr v4, v3

    .line 141
    iget p4, p0, Lon0;->l0:I

    .line 142
    .line 143
    int-to-float p4, p4

    .line 144
    invoke-static {v4, p4}, Ljava/lang/Math;->max(FF)F

    .line 145
    .line 146
    .line 147
    move-result p4

    .line 148
    :cond_6
    invoke-static {p5}, Ldj7;->A(I)I

    .line 149
    .line 150
    .line 151
    move-result v3

    .line 152
    const/4 v4, 0x3

    .line 153
    const/4 v5, 0x2

    .line 154
    if-eq v3, v2, :cond_9

    .line 155
    .line 156
    if-eq v3, v5, :cond_8

    .line 157
    .line 158
    if-eq v3, v4, :cond_7

    .line 159
    .line 160
    goto :goto_5

    .line 161
    :cond_7
    iget p4, p0, Lon0;->l0:I

    .line 162
    .line 163
    int-to-float v0, p4

    .line 164
    move p4, v0

    .line 165
    goto :goto_5

    .line 166
    :cond_8
    iget v0, p0, Lon0;->l0:I

    .line 167
    .line 168
    int-to-float v0, v0

    .line 169
    goto :goto_5

    .line 170
    :cond_9
    iget p4, p0, Lon0;->l0:I

    .line 171
    .line 172
    int-to-float p4, p4

    .line 173
    :goto_5
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 174
    .line 175
    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 176
    .line 177
    .line 178
    sget-object v3, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    .line 179
    .line 180
    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 181
    .line 182
    .line 183
    iget v3, p0, Lon0;->f0:I

    .line 184
    .line 185
    if-lez v3, :cond_a

    .line 186
    .line 187
    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 188
    .line 189
    .line 190
    :cond_a
    new-instance v3, Landroid/graphics/RectF;

    .line 191
    .line 192
    invoke-direct {v3, p3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p0}, Lon0;->t()Z

    .line 196
    .line 197
    .line 198
    move-result v6

    .line 199
    iget-object v7, p0, Lon0;->i1:Landroid/graphics/Matrix;

    .line 200
    .line 201
    if-eqz v6, :cond_b

    .line 202
    .line 203
    invoke-virtual {v7, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 204
    .line 205
    .line 206
    :cond_b
    iget-object v6, p0, Lon0;->a1:Landroid/graphics/Path;

    .line 207
    .line 208
    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    .line 209
    .line 210
    .line 211
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    .line 212
    .line 213
    .line 214
    move-result v8

    .line 215
    add-float v9, v0, p4

    .line 216
    .line 217
    cmpl-float v8, v8, v9

    .line 218
    .line 219
    if-ltz v8, :cond_d

    .line 220
    .line 221
    invoke-virtual {p0}, Lon0;->t()Z

    .line 222
    .line 223
    .line 224
    move-result p0

    .line 225
    const/4 p3, 0x7

    .line 226
    const/4 p5, 0x6

    .line 227
    const/4 v7, 0x5

    .line 228
    const/4 v8, 0x4

    .line 229
    const/16 v9, 0x8

    .line 230
    .line 231
    if-eqz p0, :cond_c

    .line 232
    .line 233
    new-array p0, v9, [F

    .line 234
    .line 235
    aput v0, p0, v1

    .line 236
    .line 237
    aput v0, p0, v2

    .line 238
    .line 239
    aput v0, p0, v5

    .line 240
    .line 241
    aput v0, p0, v4

    .line 242
    .line 243
    aput p4, p0, v8

    .line 244
    .line 245
    aput p4, p0, v7

    .line 246
    .line 247
    aput p4, p0, p5

    .line 248
    .line 249
    aput p4, p0, p3

    .line 250
    .line 251
    goto :goto_6

    .line 252
    :cond_c
    new-array p0, v9, [F

    .line 253
    .line 254
    aput v0, p0, v1

    .line 255
    .line 256
    aput v0, p0, v2

    .line 257
    .line 258
    aput p4, p0, v5

    .line 259
    .line 260
    aput p4, p0, v4

    .line 261
    .line 262
    aput p4, p0, v8

    .line 263
    .line 264
    aput p4, p0, v7

    .line 265
    .line 266
    aput v0, p0, p5

    .line 267
    .line 268
    aput v0, p0, p3

    .line 269
    .line 270
    :goto_6
    sget-object p3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 271
    .line 272
    invoke-virtual {v6, v3, p0, p3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {p1, v6, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 276
    .line 277
    .line 278
    return-void

    .line 279
    :cond_d
    invoke-static {v0, p4}, Ljava/lang/Math;->min(FF)F

    .line 280
    .line 281
    .line 282
    move-result v1

    .line 283
    invoke-static {v0, p4}, Ljava/lang/Math;->max(FF)F

    .line 284
    .line 285
    .line 286
    move-result p4

    .line 287
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 288
    .line 289
    .line 290
    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 291
    .line 292
    invoke-virtual {v6, v3, v1, v1, v0}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 296
    .line 297
    .line 298
    invoke-static {p5}, Ldj7;->A(I)I

    .line 299
    .line 300
    .line 301
    move-result p5

    .line 302
    const/high16 v0, 0x40000000    # 2.0f

    .line 303
    .line 304
    iget-object v1, p0, Lon0;->e1:Landroid/graphics/RectF;

    .line 305
    .line 306
    if-eq p5, v2, :cond_f

    .line 307
    .line 308
    if-eq p5, v5, :cond_e

    .line 309
    .line 310
    invoke-virtual {p3}, Landroid/graphics/RectF;->centerX()F

    .line 311
    .line 312
    .line 313
    move-result p5

    .line 314
    sub-float/2addr p5, p4

    .line 315
    iget v0, p3, Landroid/graphics/RectF;->top:F

    .line 316
    .line 317
    invoke-virtual {p3}, Landroid/graphics/RectF;->centerX()F

    .line 318
    .line 319
    .line 320
    move-result v2

    .line 321
    add-float/2addr v2, p4

    .line 322
    iget p3, p3, Landroid/graphics/RectF;->bottom:F

    .line 323
    .line 324
    invoke-virtual {v1, p5, v0, v2, p3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 325
    .line 326
    .line 327
    goto :goto_7

    .line 328
    :cond_e
    iget p5, p3, Landroid/graphics/RectF;->right:F

    .line 329
    .line 330
    mul-float/2addr v0, p4

    .line 331
    sub-float v0, p5, v0

    .line 332
    .line 333
    iget v2, p3, Landroid/graphics/RectF;->top:F

    .line 334
    .line 335
    iget p3, p3, Landroid/graphics/RectF;->bottom:F

    .line 336
    .line 337
    invoke-virtual {v1, v0, v2, p5, p3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 338
    .line 339
    .line 340
    goto :goto_7

    .line 341
    :cond_f
    iget p5, p3, Landroid/graphics/RectF;->left:F

    .line 342
    .line 343
    iget v2, p3, Landroid/graphics/RectF;->top:F

    .line 344
    .line 345
    mul-float/2addr v0, p4

    .line 346
    add-float/2addr v0, p5

    .line 347
    iget p3, p3, Landroid/graphics/RectF;->bottom:F

    .line 348
    .line 349
    invoke-virtual {v1, p5, v2, v0, p3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 350
    .line 351
    .line 352
    :goto_7
    invoke-virtual {p0}, Lon0;->t()Z

    .line 353
    .line 354
    .line 355
    move-result p0

    .line 356
    if-eqz p0, :cond_10

    .line 357
    .line 358
    invoke-virtual {v7, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 359
    .line 360
    .line 361
    :cond_10
    invoke-virtual {p1, v1, p4, p4, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 365
    .line 366
    .line 367
    return-void
.end method

.method public final K()V
    .locals 2

    .line 1
    iget-object v0, p0, Lon0;->p0:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v1, p0, Lon0;->q0:Z

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lon0;->r0:Landroid/content/res/ColorStateList;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lon0;->p0:Landroid/graphics/drawable/Drawable;

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lon0;->q0:Z

    .line 21
    .line 22
    :cond_0
    iget-boolean v0, p0, Lon0;->q0:Z

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lon0;->p0:Landroid/graphics/drawable/Drawable;

    .line 27
    .line 28
    iget-object p0, p0, Lon0;->r0:Landroid/content/res/ColorStateList;

    .line 29
    .line 30
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void
.end method

.method public final L()V
    .locals 2

    .line 1
    iget-object v0, p0, Lon0;->n0:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v1, p0, Lon0;->o0:Z

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lon0;->r0:Landroid/content/res/ColorStateList;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lon0;->n0:Landroid/graphics/drawable/Drawable;

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lon0;->o0:Z

    .line 21
    .line 22
    :cond_0
    iget-boolean v0, p0, Lon0;->o0:Z

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lon0;->n0:Landroid/graphics/drawable/Drawable;

    .line 27
    .line 28
    iget-object p0, p0, Lon0;->r0:Landroid/content/res/ColorStateList;

    .line 29
    .line 30
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void
.end method

.method public final M()V
    .locals 2

    .line 1
    iget-object v0, p0, Lon0;->u0:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v1, p0, Lon0;->v0:Z

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lon0;->w0:Landroid/content/res/ColorStateList;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lon0;->u0:Landroid/graphics/drawable/Drawable;

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lon0;->v0:Z

    .line 21
    .line 22
    :cond_0
    iget-boolean v0, p0, Lon0;->v0:Z

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lon0;->u0:Landroid/graphics/drawable/Drawable;

    .line 27
    .line 28
    iget-object p0, p0, Lon0;->w0:Landroid/content/res/ColorStateList;

    .line 29
    .line 30
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void
.end method

.method public final N()V
    .locals 2

    .line 1
    iget-object v0, p0, Lon0;->s0:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v1, p0, Lon0;->t0:Z

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lon0;->w0:Landroid/content/res/ColorStateList;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lon0;->s0:Landroid/graphics/drawable/Drawable;

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lon0;->t0:Z

    .line 21
    .line 22
    :cond_0
    iget-boolean v0, p0, Lon0;->t0:Z

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lon0;->s0:Landroid/graphics/drawable/Drawable;

    .line 27
    .line 28
    iget-object p0, p0, Lon0;->w0:Landroid/content/res/ColorStateList;

    .line 29
    .line 30
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void
.end method

.method public final O(Z)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lon0;->t()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    :goto_0
    add-int/2addr v1, v0

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    goto :goto_0

    .line 26
    :goto_1
    iget v0, p0, Lon0;->a0:I

    .line 27
    .line 28
    add-int/2addr v0, v1

    .line 29
    iget v2, p0, Lon0;->d0:I

    .line 30
    .line 31
    add-int/2addr v2, v1

    .line 32
    iget v1, p0, Lon0;->U:I

    .line 33
    .line 34
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    iget v1, p0, Lon0;->V:I

    .line 43
    .line 44
    const/4 v2, 0x1

    .line 45
    const/4 v3, 0x0

    .line 46
    if-ne v0, v1, :cond_1

    .line 47
    .line 48
    move v0, v3

    .line 49
    goto :goto_2

    .line 50
    :cond_1
    iput v0, p0, Lon0;->V:I

    .line 51
    .line 52
    move v0, v2

    .line 53
    :goto_2
    iget v1, p0, Lon0;->c0:I

    .line 54
    .line 55
    div-int/lit8 v1, v1, 0x2

    .line 56
    .line 57
    iget v4, p0, Lon0;->M:I

    .line 58
    .line 59
    sub-int/2addr v1, v4

    .line 60
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    iget v4, p0, Lon0;->a0:I

    .line 65
    .line 66
    iget v5, p0, Lon0;->N:I

    .line 67
    .line 68
    sub-int/2addr v4, v5

    .line 69
    div-int/lit8 v4, v4, 0x2

    .line 70
    .line 71
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    iget v5, p0, Lon0;->Q0:I

    .line 76
    .line 77
    iget v6, p0, Lon0;->O:I

    .line 78
    .line 79
    sub-int/2addr v5, v6

    .line 80
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    iget v6, p0, Lon0;->R0:I

    .line 85
    .line 86
    iget v7, p0, Lon0;->P:I

    .line 87
    .line 88
    sub-int/2addr v6, v7

    .line 89
    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    .line 90
    .line 91
    .line 92
    move-result v6

    .line 93
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    iget v4, p0, Lon0;->L:I

    .line 106
    .line 107
    add-int/2addr v1, v4

    .line 108
    iget v4, p0, Lon0;->b0:I

    .line 109
    .line 110
    if-ne v4, v1, :cond_2

    .line 111
    .line 112
    move v2, v3

    .line 113
    goto :goto_4

    .line 114
    :cond_2
    iput v1, p0, Lon0;->b0:I

    .line 115
    .line 116
    invoke-virtual {p0}, Landroid/view/View;->isLaidOut()Z

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-eqz v1, :cond_4

    .line 121
    .line 122
    invoke-virtual {p0}, Lon0;->t()Z

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    if-eqz v1, :cond_3

    .line 127
    .line 128
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    goto :goto_3

    .line 133
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    :goto_3
    iget v4, p0, Lon0;->b0:I

    .line 138
    .line 139
    mul-int/lit8 v4, v4, 0x2

    .line 140
    .line 141
    sub-int/2addr v1, v4

    .line 142
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    iput v1, p0, Lon0;->S0:I

    .line 147
    .line 148
    invoke-virtual {p0}, Lon0;->H()V

    .line 149
    .line 150
    .line 151
    :cond_4
    :goto_4
    invoke-virtual {p0}, Lon0;->t()Z

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    if-eqz v1, :cond_5

    .line 156
    .line 157
    invoke-virtual {p0}, Lon0;->d()I

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    int-to-float v1, v1

    .line 162
    iget-object v3, p0, Lon0;->i1:Landroid/graphics/Matrix;

    .line 163
    .line 164
    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    .line 165
    .line 166
    .line 167
    const/high16 v4, 0x42b40000    # 90.0f

    .line 168
    .line 169
    invoke-virtual {v3, v4, v1, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 170
    .line 171
    .line 172
    :cond_5
    if-nez v0, :cond_8

    .line 173
    .line 174
    if-eqz p1, :cond_6

    .line 175
    .line 176
    goto :goto_5

    .line 177
    :cond_6
    if-eqz v2, :cond_7

    .line 178
    .line 179
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 180
    .line 181
    .line 182
    :cond_7
    return-void

    .line 183
    :cond_8
    :goto_5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 184
    .line 185
    .line 186
    return-void
.end method

.method public final P()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lon0;->U0:Z

    .line 2
    .line 3
    if-eqz v0, :cond_f

    .line 4
    .line 5
    iget v0, p0, Lon0;->H0:F

    .line 6
    .line 7
    iget v1, p0, Lon0;->I0:F

    .line 8
    .line 9
    cmpl-float v2, v0, v1

    .line 10
    .line 11
    const-string v3, ")"

    .line 12
    .line 13
    if-gez v2, :cond_e

    .line 14
    .line 15
    iget-object v0, p0, Lon0;->J0:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const-string v2, ") when using stepSize("

    .line 26
    .line 27
    const/4 v4, 0x0

    .line 28
    if-eqz v1, :cond_3

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Ljava/lang/Float;

    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    iget v6, p0, Lon0;->H0:F

    .line 41
    .line 42
    cmpg-float v5, v5, v6

    .line 43
    .line 44
    if-ltz v5, :cond_2

    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    iget v6, p0, Lon0;->I0:F

    .line 51
    .line 52
    cmpl-float v5, v5, v6

    .line 53
    .line 54
    if-gtz v5, :cond_2

    .line 55
    .line 56
    iget v5, p0, Lon0;->M0:F

    .line 57
    .line 58
    cmpl-float v4, v5, v4

    .line 59
    .line 60
    if-lez v4, :cond_0

    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    invoke-virtual {p0, v4}, Lon0;->Q(F)Z

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-eqz v4, :cond_1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 74
    .line 75
    iget v4, p0, Lon0;->H0:F

    .line 76
    .line 77
    iget p0, p0, Lon0;->M0:F

    .line 78
    .line 79
    new-instance v5, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    const-string v6, "Value("

    .line 82
    .line 83
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v1, ") must be equal to valueFrom("

    .line 90
    .line 91
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string v1, ") plus a multiple of stepSize("

    .line 98
    .line 99
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    throw v0

    .line 122
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 123
    .line 124
    iget v2, p0, Lon0;->H0:F

    .line 125
    .line 126
    iget p0, p0, Lon0;->I0:F

    .line 127
    .line 128
    new-instance v4, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    const-string v5, "Slider value("

    .line 131
    .line 132
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    const-string v1, ") must be greater or equal to valueFrom("

    .line 139
    .line 140
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const-string v1, "), and lower or equal to valueTo("

    .line 147
    .line 148
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    throw v0

    .line 165
    :cond_3
    iget v0, p0, Lon0;->M0:F

    .line 166
    .line 167
    cmpl-float v0, v0, v4

    .line 168
    .line 169
    if-lez v0, :cond_5

    .line 170
    .line 171
    iget v0, p0, Lon0;->I0:F

    .line 172
    .line 173
    invoke-virtual {p0, v0}, Lon0;->Q(F)Z

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    if-eqz v0, :cond_4

    .line 178
    .line 179
    goto :goto_1

    .line 180
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 181
    .line 182
    iget v1, p0, Lon0;->M0:F

    .line 183
    .line 184
    iget v2, p0, Lon0;->H0:F

    .line 185
    .line 186
    iget p0, p0, Lon0;->I0:F

    .line 187
    .line 188
    new-instance v3, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    const-string v4, "The stepSize("

    .line 191
    .line 192
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    const-string v1, ") must be 0, or a factor of the valueFrom("

    .line 199
    .line 200
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    const-string v1, ")-valueTo("

    .line 207
    .line 208
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    const-string p0, ") range"

    .line 215
    .line 216
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object p0

    .line 223
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    throw v0

    .line 227
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lon0;->getMinSeparation()F

    .line 228
    .line 229
    .line 230
    move-result v0

    .line 231
    cmpg-float v1, v0, v4

    .line 232
    .line 233
    const-string v5, "minSeparation("

    .line 234
    .line 235
    if-ltz v1, :cond_d

    .line 236
    .line 237
    iget v1, p0, Lon0;->M0:F

    .line 238
    .line 239
    cmpl-float v6, v1, v4

    .line 240
    .line 241
    if-lez v6, :cond_8

    .line 242
    .line 243
    cmpl-float v6, v0, v4

    .line 244
    .line 245
    if-lez v6, :cond_8

    .line 246
    .line 247
    iget v6, p0, Lon0;->r1:I

    .line 248
    .line 249
    const/4 v7, 0x1

    .line 250
    if-ne v6, v7, :cond_7

    .line 251
    .line 252
    cmpg-float v1, v0, v1

    .line 253
    .line 254
    if-ltz v1, :cond_6

    .line 255
    .line 256
    float-to-double v6, v0

    .line 257
    invoke-virtual {p0, v6, v7}, Lon0;->p(D)Z

    .line 258
    .line 259
    .line 260
    move-result v1

    .line 261
    if-eqz v1, :cond_6

    .line 262
    .line 263
    goto :goto_2

    .line 264
    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 265
    .line 266
    iget p0, p0, Lon0;->M0:F

    .line 267
    .line 268
    new-instance v4, Ljava/lang/StringBuilder;

    .line 269
    .line 270
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    const-string v0, ") must be greater or equal and a multiple of stepSize("

    .line 277
    .line 278
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object p0

    .line 297
    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    throw v1

    .line 301
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 302
    .line 303
    new-instance v2, Ljava/lang/StringBuilder;

    .line 304
    .line 305
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    const-string v0, ") cannot be set as a dimension when using stepSize("

    .line 312
    .line 313
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    throw p0

    .line 330
    :cond_8
    :goto_2
    iget v0, p0, Lon0;->M0:F

    .line 331
    .line 332
    cmpl-float v1, v0, v4

    .line 333
    .line 334
    if-nez v1, :cond_9

    .line 335
    .line 336
    goto :goto_3

    .line 337
    :cond_9
    float-to-int v1, v0

    .line 338
    int-to-float v1, v1

    .line 339
    cmpl-float v1, v1, v0

    .line 340
    .line 341
    const-string v2, "). Using floats can have rounding errors which may result in incorrect values. Instead, consider using integers with a custom LabelFormatter to display the value correctly."

    .line 342
    .line 343
    const-string v3, "on0"

    .line 344
    .line 345
    if-eqz v1, :cond_a

    .line 346
    .line 347
    new-instance v1, Ljava/lang/StringBuilder;

    .line 348
    .line 349
    const-string v4, "Floating point value used for stepSize("

    .line 350
    .line 351
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v0

    .line 364
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    .line 366
    .line 367
    :cond_a
    iget v0, p0, Lon0;->H0:F

    .line 368
    .line 369
    float-to-int v1, v0

    .line 370
    int-to-float v1, v1

    .line 371
    cmpl-float v1, v1, v0

    .line 372
    .line 373
    if-eqz v1, :cond_b

    .line 374
    .line 375
    new-instance v1, Ljava/lang/StringBuilder;

    .line 376
    .line 377
    const-string v4, "Floating point value used for valueFrom("

    .line 378
    .line 379
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v0

    .line 392
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    .line 394
    .line 395
    :cond_b
    iget v0, p0, Lon0;->I0:F

    .line 396
    .line 397
    float-to-int v1, v0

    .line 398
    int-to-float v1, v1

    .line 399
    cmpl-float v1, v1, v0

    .line 400
    .line 401
    if-eqz v1, :cond_c

    .line 402
    .line 403
    new-instance v1, Ljava/lang/StringBuilder;

    .line 404
    .line 405
    const-string v4, "Floating point value used for valueTo("

    .line 406
    .line 407
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 408
    .line 409
    .line 410
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 411
    .line 412
    .line 413
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v0

    .line 420
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    .line 422
    .line 423
    :cond_c
    :goto_3
    const/4 v0, 0x0

    .line 424
    iput-boolean v0, p0, Lon0;->U0:Z

    .line 425
    .line 426
    return-void

    .line 427
    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 428
    .line 429
    new-instance v1, Ljava/lang/StringBuilder;

    .line 430
    .line 431
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 432
    .line 433
    .line 434
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 435
    .line 436
    .line 437
    const-string v0, ") must be greater or equal to 0"

    .line 438
    .line 439
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    .line 441
    .line 442
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object v0

    .line 446
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 447
    .line 448
    .line 449
    throw p0

    .line 450
    :cond_e
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 451
    .line 452
    new-instance v2, Ljava/lang/StringBuilder;

    .line 453
    .line 454
    const-string v4, "valueFrom("

    .line 455
    .line 456
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 457
    .line 458
    .line 459
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 460
    .line 461
    .line 462
    const-string v0, ") must be smaller than valueTo("

    .line 463
    .line 464
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    .line 466
    .line 467
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 468
    .line 469
    .line 470
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    .line 472
    .line 473
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 474
    .line 475
    .line 476
    move-result-object v0

    .line 477
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 478
    .line 479
    .line 480
    throw p0

    .line 481
    :cond_f
    return-void
.end method

.method public final Q(F)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/math/BigDecimal;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance p1, Ljava/math/BigDecimal;

    .line 11
    .line 12
    iget v1, p0, Lon0;->H0:F

    .line 13
    .line 14
    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-direct {p1, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sget-object v1, Ljava/math/MathContext;->DECIMAL64:Ljava/math/MathContext;

    .line 22
    .line 23
    invoke-virtual {v0, p1, v1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    .line 28
    .line 29
    .line 30
    move-result-wide v0

    .line 31
    invoke-virtual {p0, v0, v1}, Lon0;->p(D)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    return p0
.end method

.method public final R(F)F
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lon0;->v(F)F

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget v0, p0, Lon0;->S0:I

    .line 6
    .line 7
    int-to-float v0, v0

    .line 8
    mul-float/2addr p1, v0

    .line 9
    iget p0, p0, Lon0;->b0:I

    .line 10
    .line 11
    int-to-float p0, p0

    .line 12
    add-float/2addr p1, p0

    .line 13
    return p1
.end method

.method public final a(ILandroid/graphics/drawable/Drawable;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, -0x1

    .line 11
    if-ne v0, v3, :cond_0

    .line 12
    .line 13
    if-ne v1, v3, :cond_0

    .line 14
    .line 15
    iget p0, p0, Lon0;->d0:I

    .line 16
    .line 17
    invoke-virtual {p2, v2, v2, p1, p0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget p0, p0, Lon0;->d0:I

    .line 22
    .line 23
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    int-to-float p0, p0

    .line 28
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    int-to-float p1, p1

    .line 33
    div-float/2addr p0, p1

    .line 34
    int-to-float p1, v0

    .line 35
    mul-float/2addr p1, p0

    .line 36
    float-to-int p1, p1

    .line 37
    int-to-float v0, v1

    .line 38
    mul-float/2addr v0, p0

    .line 39
    float-to-int p0, v0

    .line 40
    invoke-virtual {p2, v2, v2, p1, p0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final b(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/drawable/Drawable;Z)V
    .locals 4

    .line 1
    if-eqz p3, :cond_5

    .line 2
    .line 3
    iget v0, p0, Lon0;->x0:I

    .line 4
    .line 5
    iget v1, p2, Landroid/graphics/RectF;->right:F

    .line 6
    .line 7
    iget v2, p2, Landroid/graphics/RectF;->left:F

    .line 8
    .line 9
    sub-float/2addr v1, v2

    .line 10
    iget v2, p0, Lon0;->y0:I

    .line 11
    .line 12
    mul-int/lit8 v3, v2, 0x2

    .line 13
    .line 14
    add-int/2addr v3, v0

    .line 15
    int-to-float v3, v3

    .line 16
    cmpl-float v1, v1, v3

    .line 17
    .line 18
    iget-object v3, p0, Lon0;->g1:Landroid/graphics/RectF;

    .line 19
    .line 20
    if-ltz v1, :cond_3

    .line 21
    .line 22
    invoke-virtual {p0}, Lon0;->s()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0}, Lon0;->t()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v1, 0x0

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 38
    :goto_1
    xor-int/2addr p4, v1

    .line 39
    if-eqz p4, :cond_2

    .line 40
    .line 41
    iget p2, p2, Landroid/graphics/RectF;->left:F

    .line 42
    .line 43
    int-to-float p4, v2

    .line 44
    add-float/2addr p2, p4

    .line 45
    goto :goto_2

    .line 46
    :cond_2
    iget p2, p2, Landroid/graphics/RectF;->right:F

    .line 47
    .line 48
    int-to-float p4, v2

    .line 49
    sub-float/2addr p2, p4

    .line 50
    int-to-float p4, v0

    .line 51
    sub-float/2addr p2, p4

    .line 52
    :goto_2
    invoke-virtual {p0}, Lon0;->d()I

    .line 53
    .line 54
    .line 55
    move-result p4

    .line 56
    int-to-float p4, p4

    .line 57
    int-to-float v0, v0

    .line 58
    const/high16 v1, 0x40000000    # 2.0f

    .line 59
    .line 60
    div-float v1, v0, v1

    .line 61
    .line 62
    sub-float/2addr p4, v1

    .line 63
    add-float v1, p2, v0

    .line 64
    .line 65
    add-float/2addr v0, p4

    .line 66
    invoke-virtual {v3, p2, p4, v1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 67
    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_3
    invoke-virtual {v3}, Landroid/graphics/RectF;->setEmpty()V

    .line 71
    .line 72
    .line 73
    :goto_3
    invoke-virtual {v3}, Landroid/graphics/RectF;->isEmpty()Z

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    if-nez p2, :cond_5

    .line 78
    .line 79
    invoke-virtual {p0}, Lon0;->t()Z

    .line 80
    .line 81
    .line 82
    move-result p2

    .line 83
    if-eqz p2, :cond_4

    .line 84
    .line 85
    iget-object p2, p0, Lon0;->i1:Landroid/graphics/Matrix;

    .line 86
    .line 87
    invoke-virtual {p2, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 88
    .line 89
    .line 90
    :cond_4
    iget-object p0, p0, Lon0;->h1:Landroid/graphics/Rect;

    .line 91
    .line 92
    invoke-virtual {v3, p0}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p3, p0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 99
    .line 100
    .line 101
    :cond_5
    return-void
.end method

.method public final c(I)I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lon0;->G0:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lon0;->K0:I

    .line 6
    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lon0;->k1:Landroid/graphics/drawable/Drawable;

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lon0;->l1:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget p1, p0, Lon0;->c0:I

    .line 22
    .line 23
    int-to-float p1, p1

    .line 24
    const/high16 v0, 0x3f000000    # 0.5f

    .line 25
    .line 26
    mul-float/2addr p1, v0

    .line 27
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    iget v0, p0, Lon0;->c0:I

    .line 32
    .line 33
    sub-int/2addr v0, p1

    .line 34
    iget p0, p0, Lon0;->f0:I

    .line 35
    .line 36
    div-int/lit8 v0, v0, 0x2

    .line 37
    .line 38
    sub-int/2addr p0, v0

    .line 39
    return p0

    .line 40
    :cond_0
    iget p0, p0, Lon0;->f0:I

    .line 41
    .line 42
    return p0
.end method

.method public final d()I
    .locals 4

    .line 1
    iget v0, p0, Lon0;->V:I

    .line 2
    .line 3
    div-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    iget v1, p0, Lon0;->W:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    if-eq v1, v2, :cond_0

    .line 10
    .line 11
    const/4 v2, 0x3

    .line 12
    if-ne v1, v2, :cond_1

    .line 13
    .line 14
    :cond_0
    iget-object p0, p0, Lon0;->t:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Lu88;

    .line 27
    .line 28
    invoke-virtual {p0}, Lu88;->getIntrinsicHeight()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    :cond_1
    add-int/2addr v0, v3

    .line 33
    return v0
.end method

.method public final dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lon0;->n:Lln0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lo03;->m(Landroid/view/MotionEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    return p0

    .line 18
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 19
    return p0
.end method

.method public final drawableStateChanged()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lon0;->Z0:Landroid/content/res/ColorStateList;

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lon0;->o(Landroid/content/res/ColorStateList;)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget-object v1, p0, Lon0;->a:Landroid/graphics/Paint;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lon0;->Y0:Landroid/content/res/ColorStateList;

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lon0;->o(Landroid/content/res/ColorStateList;)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iget-object v1, p0, Lon0;->b:Landroid/graphics/Paint;

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lon0;->X0:Landroid/content/res/ColorStateList;

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Lon0;->o(Landroid/content/res/ColorStateList;)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iget-object v1, p0, Lon0;->e:Landroid/graphics/Paint;

    .line 33
    .line 34
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lon0;->W0:Landroid/content/res/ColorStateList;

    .line 38
    .line 39
    invoke-virtual {p0, v0}, Lon0;->o(Landroid/content/res/ColorStateList;)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    iget-object v1, p0, Lon0;->f:Landroid/graphics/Paint;

    .line 44
    .line 45
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lon0;->X0:Landroid/content/res/ColorStateList;

    .line 49
    .line 50
    invoke-virtual {p0, v0}, Lon0;->o(Landroid/content/res/ColorStateList;)I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    iget-object v1, p0, Lon0;->k:Landroid/graphics/Paint;

    .line 55
    .line 56
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lon0;->t:Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_1

    .line 70
    .line 71
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    check-cast v1, Lu88;

    .line 76
    .line 77
    invoke-virtual {v1}, Lc95;->isStateful()Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-eqz v2, :cond_0

    .line 82
    .line 83
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_1
    const/4 v0, 0x0

    .line 92
    :goto_1
    iget-object v1, p0, Lon0;->j1:Ljava/util/ArrayList;

    .line 93
    .line 94
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-ge v0, v2, :cond_3

    .line 99
    .line 100
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    check-cast v2, Lc95;

    .line 105
    .line 106
    invoke-virtual {v2}, Lc95;->isStateful()Z

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    if-eqz v2, :cond_2

    .line 111
    .line 112
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    check-cast v1, Lc95;

    .line 117
    .line 118
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 123
    .line 124
    .line 125
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_3
    iget-object v0, p0, Lon0;->V0:Landroid/content/res/ColorStateList;

    .line 129
    .line 130
    invoke-virtual {p0, v0}, Lon0;->o(Landroid/content/res/ColorStateList;)I

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    iget-object p0, p0, Lon0;->d:Landroid/graphics/Paint;

    .line 135
    .line 136
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 137
    .line 138
    .line 139
    const/16 v0, 0x3f

    .line 140
    .line 141
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 142
    .line 143
    .line 144
    return-void
.end method

.method public final e(Z)Landroid/animation/ValueAnimator;
    .locals 5

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    move v2, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move v2, v0

    .line 9
    :goto_0
    if-eqz p1, :cond_1

    .line 10
    .line 11
    iget-object v3, p0, Lon0;->I:Landroid/animation/ValueAnimator;

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_1
    iget-object v3, p0, Lon0;->H:Landroid/animation/ValueAnimator;

    .line 15
    .line 16
    :goto_1
    if-eqz v3, :cond_2

    .line 17
    .line 18
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    if-eqz v4, :cond_2

    .line 23
    .line 24
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Ljava/lang/Float;

    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 35
    .line 36
    .line 37
    :cond_2
    if-eqz p1, :cond_3

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_3
    move v0, v1

    .line 41
    :goto_2
    const/4 v1, 0x2

    .line 42
    new-array v1, v1, [F

    .line 43
    .line 44
    const/4 v3, 0x0

    .line 45
    aput v2, v1, v3

    .line 46
    .line 47
    const/4 v2, 0x1

    .line 48
    aput v0, v1, v2

    .line 49
    .line 50
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    if-eqz p1, :cond_4

    .line 55
    .line 56
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    const v1, 0x7f04044a

    .line 61
    .line 62
    .line 63
    const/16 v2, 0x53

    .line 64
    .line 65
    invoke-static {p1, v1, v2}, Lji8;->F(Landroid/content/Context;II)I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    const v2, 0x7f040454

    .line 74
    .line 75
    .line 76
    sget-object v3, Led;->e:Landroid/view/animation/DecelerateInterpolator;

    .line 77
    .line 78
    invoke-static {v1, v2, v3}, Lji8;->G(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    goto :goto_3

    .line 83
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    const v1, 0x7f04044d

    .line 88
    .line 89
    .line 90
    const/16 v2, 0x75

    .line 91
    .line 92
    invoke-static {p1, v1, v2}, Lji8;->F(Landroid/content/Context;II)I

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    const v2, 0x7f040452

    .line 101
    .line 102
    .line 103
    sget-object v3, Led;->c:Lh53;

    .line 104
    .line 105
    invoke-static {v1, v2, v3}, Lji8;->G(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    :goto_3
    int-to-long v2, p1

    .line 110
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 114
    .line 115
    .line 116
    new-instance p1, Lfn0;

    .line 117
    .line 118
    invoke-direct {p1, p0}, Lfn0;-><init>(Lon0;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 122
    .line 123
    .line 124
    return-object v0
.end method

.method public final f(FFFFLandroid/graphics/Canvas;Landroid/graphics/RectF;II)V
    .locals 2

    .line 1
    sub-float v0, p2, p1

    .line 2
    .line 3
    invoke-virtual {p0}, Lon0;->getTrackCornerSize()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    sub-int/2addr v1, p8

    .line 8
    int-to-float p8, v1

    .line 9
    cmpl-float p8, v0, p8

    .line 10
    .line 11
    if-lez p8, :cond_0

    .line 12
    .line 13
    invoke-virtual {p6, p1, p3, p2, p4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p6}, Landroid/graphics/RectF;->setEmpty()V

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-virtual {p0}, Lon0;->getTrackCornerSize()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    int-to-float p1, p1

    .line 25
    iget-object p4, p0, Lon0;->a:Landroid/graphics/Paint;

    .line 26
    .line 27
    move-object p2, p0

    .line 28
    move-object p3, p5

    .line 29
    move-object p5, p6

    .line 30
    move p6, p1

    .line 31
    invoke-virtual/range {p2 .. p7}, Lon0;->J(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;FI)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final g(Landroid/graphics/Canvas;FF)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lon0;->J0:Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, Lon0;->J0:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Ljava/lang/Float;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-virtual {p0, v1}, Lon0;->R(F)F

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-virtual {p0, v0}, Lon0;->c(I)I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    int-to-float v2, v2

    .line 31
    iget v3, p0, Lon0;->c0:I

    .line 32
    .line 33
    int-to-float v3, v3

    .line 34
    const/high16 v4, 0x40000000    # 2.0f

    .line 35
    .line 36
    div-float/2addr v3, v4

    .line 37
    add-float/2addr v3, v2

    .line 38
    sub-float v2, v1, v3

    .line 39
    .line 40
    cmpl-float v2, p2, v2

    .line 41
    .line 42
    if-ltz v2, :cond_0

    .line 43
    .line 44
    add-float/2addr v1, v3

    .line 45
    cmpg-float v1, p2, v1

    .line 46
    .line 47
    if-gtz v1, :cond_0

    .line 48
    .line 49
    return-void

    .line 50
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {p0}, Lon0;->t()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    iget-object p0, p0, Lon0;->k:Landroid/graphics/Paint;

    .line 58
    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    invoke-virtual {p1, p3, p2, p0}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_2
    invoke-virtual {p1, p2, p3, p0}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public final getAccessibilityFocusedVirtualViewId()I
    .locals 0

    .line 1
    iget-object p0, p0, Lon0;->n:Lln0;

    .line 2
    .line 3
    iget p0, p0, Lo03;->k:I

    .line 4
    .line 5
    return p0
.end method

.method public getMinSeparation()F
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public abstract getThumbElevation()F
.end method

.method public abstract getThumbRadius()I
.end method

.method public abstract getThumbStrokeColor()Landroid/content/res/ColorStateList;
.end method

.method public abstract getThumbStrokeWidth()F
.end method

.method public abstract getThumbTintList()Landroid/content/res/ColorStateList;
.end method

.method public abstract getTrackCornerSize()I
.end method

.method public getValues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object p0, p0, Lon0;->J0:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public final h(Landroid/graphics/Canvas;IIFLandroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lon0;->t()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lon0;->i1:Landroid/graphics/Matrix;

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget v0, p0, Lon0;->b0:I

    .line 16
    .line 17
    invoke-virtual {p0, p4}, Lon0;->v(F)F

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    int-to-float p2, p2

    .line 22
    mul-float/2addr p0, p2

    .line 23
    float-to-int p0, p0

    .line 24
    add-int/2addr v0, p0

    .line 25
    int-to-float p0, v0

    .line 26
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    int-to-float p2, p2

    .line 35
    const/high16 p4, 0x40000000    # 2.0f

    .line 36
    .line 37
    div-float/2addr p2, p4

    .line 38
    sub-float/2addr p0, p2

    .line 39
    int-to-float p2, p3

    .line 40
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 41
    .line 42
    .line 43
    move-result-object p3

    .line 44
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    .line 45
    .line 46
    .line 47
    move-result p3

    .line 48
    int-to-float p3, p3

    .line 49
    div-float/2addr p3, p4

    .line 50
    sub-float/2addr p2, p3

    .line 51
    invoke-virtual {p1, p0, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public final i(IILandroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 6

    .line 1
    :goto_0
    if-ge p1, p2, :cond_4

    .line 2
    .line 3
    invoke-virtual {p0}, Lon0;->t()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lon0;->O0:[F

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    add-int/lit8 v0, p1, 0x1

    .line 12
    .line 13
    aget v0, v1, v0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    aget v0, v1, p1

    .line 17
    .line 18
    :goto_1
    const/4 v1, 0x0

    .line 19
    :goto_2
    iget-object v2, p0, Lon0;->J0:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    const/high16 v3, 0x40000000    # 2.0f

    .line 26
    .line 27
    if-ge v1, v2, :cond_2

    .line 28
    .line 29
    iget-object v2, p0, Lon0;->J0:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Ljava/lang/Float;

    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    invoke-virtual {p0, v2}, Lon0;->R(F)F

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    invoke-virtual {p0, v1}, Lon0;->c(I)I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    int-to-float v4, v4

    .line 50
    iget v5, p0, Lon0;->c0:I

    .line 51
    .line 52
    int-to-float v5, v5

    .line 53
    div-float/2addr v5, v3

    .line 54
    add-float/2addr v5, v4

    .line 55
    sub-float v3, v2, v5

    .line 56
    .line 57
    cmpl-float v3, v0, v3

    .line 58
    .line 59
    if-ltz v3, :cond_1

    .line 60
    .line 61
    add-float/2addr v2, v5

    .line 62
    cmpg-float v2, v0, v2

    .line 63
    .line 64
    if-gtz v2, :cond_1

    .line 65
    .line 66
    goto :goto_3

    .line 67
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_2
    iget-boolean v1, p0, Lon0;->m0:Z

    .line 71
    .line 72
    if-eqz v1, :cond_3

    .line 73
    .line 74
    iget v1, p0, Lon0;->S0:I

    .line 75
    .line 76
    iget v2, p0, Lon0;->b0:I

    .line 77
    .line 78
    mul-int/lit8 v2, v2, 0x2

    .line 79
    .line 80
    add-int/2addr v2, v1

    .line 81
    int-to-float v1, v2

    .line 82
    div-float/2addr v1, v3

    .line 83
    iget v2, p0, Lon0;->f0:I

    .line 84
    .line 85
    int-to-float v2, v2

    .line 86
    sub-float v3, v1, v2

    .line 87
    .line 88
    cmpl-float v3, v0, v3

    .line 89
    .line 90
    if-ltz v3, :cond_3

    .line 91
    .line 92
    add-float/2addr v1, v2

    .line 93
    cmpg-float v0, v0, v1

    .line 94
    .line 95
    if-gtz v0, :cond_3

    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_3
    iget-object v0, p0, Lon0;->O0:[F

    .line 99
    .line 100
    aget v1, v0, p1

    .line 101
    .line 102
    add-int/lit8 v2, p1, 0x1

    .line 103
    .line 104
    aget v0, v0, v2

    .line 105
    .line 106
    invoke-virtual {p3, v1, v0, p4}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 107
    .line 108
    .line 109
    :goto_3
    add-int/lit8 p1, p1, 0x2

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_4
    return-void
.end method

.method public final j(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lon0;->n0:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lon0;->p0:Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lon0;->s0:Landroid/graphics/drawable/Drawable;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lon0;->u0:Landroid/graphics/drawable/Drawable;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    return-void

    .line 19
    :cond_1
    :goto_0
    iget-object v0, p0, Lon0;->J0:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v1, 0x1

    .line 26
    if-le v0, v1, :cond_2

    .line 27
    .line 28
    const-string v0, "on0"

    .line 29
    .line 30
    const-string v2, "Track icons can only be used when only 1 thumb is present."

    .line 31
    .line 32
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    :cond_2
    iget-object v0, p0, Lon0;->n0:Landroid/graphics/drawable/Drawable;

    .line 36
    .line 37
    invoke-virtual {p0, p1, p2, v0, v1}, Lon0;->b(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/drawable/Drawable;Z)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lon0;->s0:Landroid/graphics/drawable/Drawable;

    .line 41
    .line 42
    invoke-virtual {p0, p1, p3, v0, v1}, Lon0;->b(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/drawable/Drawable;Z)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lon0;->p0:Landroid/graphics/drawable/Drawable;

    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    invoke-virtual {p0, p1, p2, v0, v1}, Lon0;->b(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/drawable/Drawable;Z)V

    .line 49
    .line 50
    .line 51
    iget-object p2, p0, Lon0;->u0:Landroid/graphics/drawable/Drawable;

    .line 52
    .line 53
    invoke-virtual {p0, p1, p3, p2, v1}, Lon0;->b(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/drawable/Drawable;Z)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final k(Z)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lon0;->G:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lon0;->G:Z

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lon0;->e(Z)Landroid/animation/ValueAnimator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lon0;->H:Landroid/animation/ValueAnimator;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    iput-object v1, p0, Lon0;->I:Landroid/animation/ValueAnimator;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lon0;->t:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    if-eqz p1, :cond_2

    .line 27
    .line 28
    const/4 p1, 0x0

    .line 29
    :goto_0
    iget-object v2, p0, Lon0;->J0:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-ge p1, v2, :cond_2

    .line 36
    .line 37
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_2

    .line 42
    .line 43
    iget v2, p0, Lon0;->L0:I

    .line 44
    .line 45
    if-ne p1, v2, :cond_1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    check-cast v2, Lu88;

    .line 53
    .line 54
    iget-object v3, p0, Lon0;->J0:Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    check-cast v3, Ljava/lang/Float;

    .line 61
    .line 62
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    invoke-virtual {p0, v2, v3}, Lon0;->z(Lu88;F)V

    .line 67
    .line 68
    .line 69
    :goto_1
    add-int/lit8 p1, p1, 0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-eqz p1, :cond_3

    .line 77
    .line 78
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    check-cast p1, Lu88;

    .line 83
    .line 84
    iget-object v0, p0, Lon0;->J0:Ljava/util/ArrayList;

    .line 85
    .line 86
    iget v1, p0, Lon0;->L0:I

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    check-cast v0, Ljava/lang/Float;

    .line 93
    .line 94
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    invoke-virtual {p0, p1, v0}, Lon0;->z(Lu88;F)V

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    iget-object p0, p0, Lon0;->J0:Ljava/util/ArrayList;

    .line 113
    .line 114
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 115
    .line 116
    .line 117
    move-result p0

    .line 118
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    const-string v0, "Not enough labels(%d) to display all the values(%d)"

    .line 127
    .line 128
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    throw p1
.end method

.method public final l()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lon0;->G:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lon0;->G:Z

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lon0;->e(Z)Landroid/animation/ValueAnimator;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iput-object v1, p0, Lon0;->I:Landroid/animation/ValueAnimator;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    iput-object v2, p0, Lon0;->H:Landroid/animation/ValueAnimator;

    .line 16
    .line 17
    new-instance v2, Ljn0;

    .line 18
    .line 19
    invoke-direct {v2, p0, v0}, Ljn0;-><init>(Ljava/lang/Object;I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 23
    .line 24
    .line 25
    iget-object p0, p0, Lon0;->I:Landroid/animation/ValueAnimator;

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public final m()[F
    .locals 6

    .line 1
    iget-object v0, p0, Lon0;->J0:Ljava/util/ArrayList;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Ljava/lang/Float;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget-object v2, p0, Lon0;->J0:Ljava/util/ArrayList;

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    invoke-static {v2, v3}, Ldj7;->e(Ljava/util/ArrayList;I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Ljava/lang/Float;

    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    iget-object v4, p0, Lon0;->J0:Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-ne v4, v3, :cond_0

    .line 34
    .line 35
    iget v0, p0, Lon0;->H0:F

    .line 36
    .line 37
    :cond_0
    invoke-virtual {p0, v0}, Lon0;->v(F)F

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    invoke-virtual {p0, v2}, Lon0;->v(F)F

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    iget-boolean v4, p0, Lon0;->m0:Z

    .line 46
    .line 47
    if-eqz v4, :cond_1

    .line 48
    .line 49
    const/high16 v0, 0x3f000000    # 0.5f

    .line 50
    .line 51
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    move v0, v4

    .line 60
    :cond_1
    iget-boolean v4, p0, Lon0;->m0:Z

    .line 61
    .line 62
    const/4 v5, 0x2

    .line 63
    if-nez v4, :cond_3

    .line 64
    .line 65
    invoke-virtual {p0}, Lon0;->s()Z

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    if-nez v4, :cond_2

    .line 70
    .line 71
    invoke-virtual {p0}, Lon0;->t()Z

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    if-eqz p0, :cond_3

    .line 76
    .line 77
    :cond_2
    new-array p0, v5, [F

    .line 78
    .line 79
    aput v2, p0, v1

    .line 80
    .line 81
    aput v0, p0, v3

    .line 82
    .line 83
    return-object p0

    .line 84
    :cond_3
    new-array p0, v5, [F

    .line 85
    .line 86
    aput v0, p0, v1

    .line 87
    .line 88
    aput v2, p0, v3

    .line 89
    .line 90
    return-object p0
.end method

.method public final n()Landroid/graphics/drawable/RippleDrawable;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    instance-of v0, p0, Landroid/graphics/drawable/DrawableWrapper;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast p0, Landroid/graphics/drawable/DrawableWrapper;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    :cond_0
    instance-of v0, p0, Landroid/graphics/drawable/RippleDrawable;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    check-cast p0, Landroid/graphics/drawable/RippleDrawable;

    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_1
    const/4 p0, 0x0

    .line 23
    return-object p0
.end method

.method public final o(Landroid/content/res/ColorStateList;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p1, p0, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public final onAttachedToWindow()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iput-boolean v0, p0, Lon0;->w1:Z

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lon0;->t1:Lgn0;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Lon0;->u1:Lhn0;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lon0;->t:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Lu88;

    .line 45
    .line 46
    invoke-static {p0}, Lyc9;->s(Lon0;)Landroid/view/ViewGroup;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    if-nez v2, :cond_0

    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    const/4 v3, 0x2

    .line 60
    new-array v3, v3, [I

    .line 61
    .line 62
    invoke-virtual {v2, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 63
    .line 64
    .line 65
    const/4 v4, 0x0

    .line 66
    aget v3, v3, v4

    .line 67
    .line 68
    iput v3, v1, Lu88;->l0:I

    .line 69
    .line 70
    iget-object v3, v1, Lu88;->e0:Landroid/graphics/Rect;

    .line 71
    .line 72
    invoke-virtual {v2, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 73
    .line 74
    .line 75
    iget-object v1, v1, Lu88;->d0:Lt88;

    .line 76
    .line 77
    invoke-virtual {v2, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_1
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 4

    .line 1
    iget-object v0, p0, Lon0;->q:Lkn0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lon0;->G:Z

    .line 10
    .line 11
    iget-object v0, p0, Lon0;->t:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lu88;

    .line 28
    .line 29
    invoke-static {p0}, Lyc9;->s(Lon0;)Landroid/view/ViewGroup;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    if-nez v2, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v3, v1}, Landroid/view/ViewOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    .line 41
    .line 42
    .line 43
    iget-object v1, v1, Lu88;->d0:Lt88;

    .line 44
    .line 45
    invoke-virtual {v2, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget-object v1, p0, Lon0;->t1:Lgn0;

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iget-object v1, p0, Lon0;->u1:Lhn0;

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 65
    .line 66
    .line 67
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-boolean v1, v0, Lon0;->U0:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lon0;->P()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lon0;->H()V

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lon0;->d()I

    .line 17
    .line 18
    .line 19
    move-result v9

    .line 20
    iget v10, v0, Lon0;->S0:I

    .line 21
    .line 22
    invoke-virtual {v0}, Lon0;->m()[F

    .line 23
    .line 24
    .line 25
    move-result-object v11

    .line 26
    int-to-float v12, v9

    .line 27
    iget v1, v0, Lon0;->a0:I

    .line 28
    .line 29
    int-to-float v1, v1

    .line 30
    const/high16 v13, 0x40000000    # 2.0f

    .line 31
    .line 32
    div-float/2addr v1, v13

    .line 33
    sub-float v3, v12, v1

    .line 34
    .line 35
    add-float v4, v1, v12

    .line 36
    .line 37
    iget-boolean v1, v0, Lon0;->m0:Z

    .line 38
    .line 39
    const/high16 v14, 0x3f000000    # 0.5f

    .line 40
    .line 41
    const/4 v15, 0x0

    .line 42
    const/4 v2, 0x1

    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    aget v1, v11, v15

    .line 46
    .line 47
    cmpl-float v1, v1, v14

    .line 48
    .line 49
    if-nez v1, :cond_1

    .line 50
    .line 51
    iget v1, v0, Lon0;->f0:I

    .line 52
    .line 53
    :goto_0
    move v8, v1

    .line 54
    goto :goto_3

    .line 55
    :cond_1
    invoke-virtual {v0}, Lon0;->s()Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-nez v1, :cond_3

    .line 60
    .line 61
    invoke-virtual {v0}, Lon0;->t()Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-eqz v1, :cond_2

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    move v1, v15

    .line 69
    goto :goto_2

    .line 70
    :cond_3
    :goto_1
    iget-object v1, v0, Lon0;->J0:Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    sub-int/2addr v1, v2

    .line 77
    :goto_2
    invoke-virtual {v0, v1}, Lon0;->c(I)I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    goto :goto_0

    .line 82
    :goto_3
    iget v1, v0, Lon0;->b0:I

    .line 83
    .line 84
    invoke-virtual {v0}, Lon0;->getTrackCornerSize()I

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    sub-int/2addr v1, v5

    .line 89
    int-to-float v1, v1

    .line 90
    iget v5, v0, Lon0;->b0:I

    .line 91
    .line 92
    int-to-float v5, v5

    .line 93
    aget v6, v11, v15

    .line 94
    .line 95
    int-to-float v7, v10

    .line 96
    mul-float/2addr v6, v7

    .line 97
    add-float/2addr v6, v5

    .line 98
    int-to-float v5, v8

    .line 99
    sub-float/2addr v6, v5

    .line 100
    move v5, v2

    .line 101
    move v2, v6

    .line 102
    iget-object v6, v0, Lon0;->c1:Landroid/graphics/RectF;

    .line 103
    .line 104
    move/from16 v16, v7

    .line 105
    .line 106
    const/4 v7, 0x2

    .line 107
    move/from16 v17, v13

    .line 108
    .line 109
    move v13, v5

    .line 110
    move-object/from16 v5, p1

    .line 111
    .line 112
    invoke-virtual/range {v0 .. v8}, Lon0;->f(FFFFLandroid/graphics/Canvas;Landroid/graphics/RectF;II)V

    .line 113
    .line 114
    .line 115
    move/from16 v18, v7

    .line 116
    .line 117
    iget-boolean v1, v0, Lon0;->m0:Z

    .line 118
    .line 119
    if-eqz v1, :cond_4

    .line 120
    .line 121
    aget v1, v11, v13

    .line 122
    .line 123
    cmpl-float v1, v1, v14

    .line 124
    .line 125
    if-nez v1, :cond_4

    .line 126
    .line 127
    iget v1, v0, Lon0;->f0:I

    .line 128
    .line 129
    :goto_4
    move v8, v1

    .line 130
    goto :goto_7

    .line 131
    :cond_4
    invoke-virtual {v0}, Lon0;->s()Z

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    if-nez v1, :cond_6

    .line 136
    .line 137
    invoke-virtual {v0}, Lon0;->t()Z

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    if-eqz v1, :cond_5

    .line 142
    .line 143
    goto :goto_5

    .line 144
    :cond_5
    iget-object v1, v0, Lon0;->J0:Ljava/util/ArrayList;

    .line 145
    .line 146
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    sub-int/2addr v1, v13

    .line 151
    goto :goto_6

    .line 152
    :cond_6
    :goto_5
    move v1, v15

    .line 153
    :goto_6
    invoke-virtual {v0, v1}, Lon0;->c(I)I

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    goto :goto_4

    .line 158
    :goto_7
    iget v1, v0, Lon0;->b0:I

    .line 159
    .line 160
    int-to-float v2, v1

    .line 161
    aget v5, v11, v13

    .line 162
    .line 163
    mul-float v5, v5, v16

    .line 164
    .line 165
    add-float/2addr v5, v2

    .line 166
    int-to-float v2, v8

    .line 167
    add-float/2addr v5, v2

    .line 168
    add-int/2addr v1, v10

    .line 169
    invoke-virtual {v0}, Lon0;->getTrackCornerSize()I

    .line 170
    .line 171
    .line 172
    move-result v2

    .line 173
    add-int/2addr v2, v1

    .line 174
    int-to-float v2, v2

    .line 175
    move-object v1, v6

    .line 176
    iget-object v6, v0, Lon0;->d1:Landroid/graphics/RectF;

    .line 177
    .line 178
    const/4 v7, 0x3

    .line 179
    move-object v10, v1

    .line 180
    move v1, v5

    .line 181
    move-object/from16 v5, p1

    .line 182
    .line 183
    invoke-virtual/range {v0 .. v8}, Lon0;->f(FFFFLandroid/graphics/Canvas;Landroid/graphics/RectF;II)V

    .line 184
    .line 185
    .line 186
    iget v1, v0, Lon0;->S0:I

    .line 187
    .line 188
    invoke-virtual {v0}, Lon0;->m()[F

    .line 189
    .line 190
    .line 191
    move-result-object v8

    .line 192
    iget v2, v0, Lon0;->b0:I

    .line 193
    .line 194
    int-to-float v2, v2

    .line 195
    aget v3, v8, v13

    .line 196
    .line 197
    int-to-float v1, v1

    .line 198
    mul-float/2addr v3, v1

    .line 199
    add-float/2addr v3, v2

    .line 200
    aget v4, v8, v15

    .line 201
    .line 202
    mul-float/2addr v4, v1

    .line 203
    add-float/2addr v4, v2

    .line 204
    cmpl-float v1, v4, v3

    .line 205
    .line 206
    const/4 v11, 0x2

    .line 207
    move v2, v3

    .line 208
    iget-object v3, v0, Lon0;->b1:Landroid/graphics/RectF;

    .line 209
    .line 210
    if-ltz v1, :cond_8

    .line 211
    .line 212
    invoke-virtual {v3}, Landroid/graphics/RectF;->setEmpty()V

    .line 213
    .line 214
    .line 215
    :cond_7
    move-object/from16 v1, p1

    .line 216
    .line 217
    move/from16 v18, v11

    .line 218
    .line 219
    goto/16 :goto_12

    .line 220
    .line 221
    :cond_8
    iget-object v1, v0, Lon0;->J0:Ljava/util/ArrayList;

    .line 222
    .line 223
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 224
    .line 225
    .line 226
    move-result v1

    .line 227
    if-ne v1, v13, :cond_b

    .line 228
    .line 229
    iget-boolean v1, v0, Lon0;->m0:Z

    .line 230
    .line 231
    if-nez v1, :cond_b

    .line 232
    .line 233
    invoke-virtual {v0}, Lon0;->s()Z

    .line 234
    .line 235
    .line 236
    move-result v1

    .line 237
    if-nez v1, :cond_a

    .line 238
    .line 239
    invoke-virtual {v0}, Lon0;->t()Z

    .line 240
    .line 241
    .line 242
    move-result v1

    .line 243
    if-eqz v1, :cond_9

    .line 244
    .line 245
    goto :goto_8

    .line 246
    :cond_9
    move/from16 v7, v18

    .line 247
    .line 248
    :cond_a
    :goto_8
    move v5, v7

    .line 249
    goto :goto_9

    .line 250
    :cond_b
    const/4 v7, 0x4

    .line 251
    goto :goto_8

    .line 252
    :goto_9
    move v7, v15

    .line 253
    :goto_a
    iget-object v1, v0, Lon0;->J0:Ljava/util/ArrayList;

    .line 254
    .line 255
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 256
    .line 257
    .line 258
    move-result v1

    .line 259
    if-ge v7, v1, :cond_7

    .line 260
    .line 261
    iget-object v1, v0, Lon0;->J0:Ljava/util/ArrayList;

    .line 262
    .line 263
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 264
    .line 265
    .line 266
    move-result v1

    .line 267
    if-le v1, v13, :cond_f

    .line 268
    .line 269
    if-lez v7, :cond_c

    .line 270
    .line 271
    iget-object v1, v0, Lon0;->J0:Ljava/util/ArrayList;

    .line 272
    .line 273
    add-int/lit8 v2, v7, -0x1

    .line 274
    .line 275
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    check-cast v1, Ljava/lang/Float;

    .line 280
    .line 281
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 282
    .line 283
    .line 284
    move-result v1

    .line 285
    invoke-virtual {v0, v1}, Lon0;->R(F)F

    .line 286
    .line 287
    .line 288
    move-result v1

    .line 289
    move v2, v1

    .line 290
    goto :goto_b

    .line 291
    :cond_c
    move v2, v4

    .line 292
    :goto_b
    iget-object v1, v0, Lon0;->J0:Ljava/util/ArrayList;

    .line 293
    .line 294
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    move-result-object v1

    .line 298
    check-cast v1, Ljava/lang/Float;

    .line 299
    .line 300
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 301
    .line 302
    .line 303
    move-result v1

    .line 304
    invoke-virtual {v0, v1}, Lon0;->R(F)F

    .line 305
    .line 306
    .line 307
    move-result v1

    .line 308
    invoke-virtual {v0}, Lon0;->s()Z

    .line 309
    .line 310
    .line 311
    move-result v4

    .line 312
    if-nez v4, :cond_e

    .line 313
    .line 314
    invoke-virtual {v0}, Lon0;->t()Z

    .line 315
    .line 316
    .line 317
    move-result v4

    .line 318
    if-eqz v4, :cond_d

    .line 319
    .line 320
    goto :goto_c

    .line 321
    :cond_d
    move v4, v2

    .line 322
    move v2, v1

    .line 323
    goto :goto_d

    .line 324
    :cond_e
    :goto_c
    move v4, v1

    .line 325
    :cond_f
    :goto_d
    invoke-virtual {v0}, Lon0;->getTrackCornerSize()I

    .line 326
    .line 327
    .line 328
    move-result v1

    .line 329
    move/from16 v16, v14

    .line 330
    .line 331
    invoke-static {v5}, Ldj7;->A(I)I

    .line 332
    .line 333
    .line 334
    move-result v14

    .line 335
    if-eq v14, v13, :cond_15

    .line 336
    .line 337
    if-eq v14, v11, :cond_14

    .line 338
    .line 339
    move/from16 v18, v11

    .line 340
    .line 341
    const/4 v11, 0x3

    .line 342
    if-eq v14, v11, :cond_10

    .line 343
    .line 344
    goto :goto_f

    .line 345
    :cond_10
    if-lez v7, :cond_12

    .line 346
    .line 347
    add-int/lit8 v11, v7, -0x1

    .line 348
    .line 349
    invoke-virtual {v0, v11}, Lon0;->c(I)I

    .line 350
    .line 351
    .line 352
    move-result v11

    .line 353
    int-to-float v11, v11

    .line 354
    add-float/2addr v4, v11

    .line 355
    invoke-virtual {v0, v7}, Lon0;->c(I)I

    .line 356
    .line 357
    .line 358
    move-result v11

    .line 359
    :goto_e
    int-to-float v11, v11

    .line 360
    sub-float/2addr v2, v11

    .line 361
    :cond_11
    :goto_f
    move v11, v2

    .line 362
    move v14, v4

    .line 363
    goto :goto_10

    .line 364
    :cond_12
    aget v11, v8, v13

    .line 365
    .line 366
    cmpl-float v11, v11, v16

    .line 367
    .line 368
    if-nez v11, :cond_13

    .line 369
    .line 370
    invoke-virtual {v0, v7}, Lon0;->c(I)I

    .line 371
    .line 372
    .line 373
    move-result v11

    .line 374
    int-to-float v11, v11

    .line 375
    add-float/2addr v4, v11

    .line 376
    goto :goto_f

    .line 377
    :cond_13
    aget v11, v8, v15

    .line 378
    .line 379
    cmpl-float v11, v11, v16

    .line 380
    .line 381
    if-nez v11, :cond_11

    .line 382
    .line 383
    invoke-virtual {v0, v7}, Lon0;->c(I)I

    .line 384
    .line 385
    .line 386
    move-result v11

    .line 387
    goto :goto_e

    .line 388
    :cond_14
    move/from16 v18, v11

    .line 389
    .line 390
    invoke-virtual {v0, v7}, Lon0;->c(I)I

    .line 391
    .line 392
    .line 393
    move-result v11

    .line 394
    int-to-float v11, v11

    .line 395
    add-float/2addr v4, v11

    .line 396
    int-to-float v11, v1

    .line 397
    add-float/2addr v2, v11

    .line 398
    goto :goto_f

    .line 399
    :cond_15
    move/from16 v18, v11

    .line 400
    .line 401
    int-to-float v11, v1

    .line 402
    sub-float/2addr v4, v11

    .line 403
    invoke-virtual {v0, v7}, Lon0;->c(I)I

    .line 404
    .line 405
    .line 406
    move-result v11

    .line 407
    goto :goto_e

    .line 408
    :goto_10
    cmpl-float v2, v14, v11

    .line 409
    .line 410
    if-ltz v2, :cond_16

    .line 411
    .line 412
    invoke-virtual {v3}, Landroid/graphics/RectF;->setEmpty()V

    .line 413
    .line 414
    .line 415
    move-object/from16 v1, p1

    .line 416
    .line 417
    goto :goto_11

    .line 418
    :cond_16
    iget v2, v0, Lon0;->a0:I

    .line 419
    .line 420
    int-to-float v2, v2

    .line 421
    div-float v2, v2, v17

    .line 422
    .line 423
    sub-float v4, v12, v2

    .line 424
    .line 425
    add-float/2addr v2, v12

    .line 426
    invoke-virtual {v3, v14, v4, v11, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 427
    .line 428
    .line 429
    iget-object v2, v0, Lon0;->b:Landroid/graphics/Paint;

    .line 430
    .line 431
    int-to-float v4, v1

    .line 432
    move-object/from16 v1, p1

    .line 433
    .line 434
    invoke-virtual/range {v0 .. v5}, Lon0;->J(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;FI)V

    .line 435
    .line 436
    .line 437
    :goto_11
    add-int/lit8 v7, v7, 0x1

    .line 438
    .line 439
    move v2, v11

    .line 440
    move v4, v14

    .line 441
    move/from16 v14, v16

    .line 442
    .line 443
    move/from16 v11, v18

    .line 444
    .line 445
    goto/16 :goto_a

    .line 446
    .line 447
    :goto_12
    invoke-virtual {v0}, Lon0;->s()Z

    .line 448
    .line 449
    .line 450
    move-result v2

    .line 451
    if-nez v2, :cond_18

    .line 452
    .line 453
    invoke-virtual {v0}, Lon0;->t()Z

    .line 454
    .line 455
    .line 456
    move-result v2

    .line 457
    if-eqz v2, :cond_17

    .line 458
    .line 459
    goto :goto_13

    .line 460
    :cond_17
    invoke-virtual {v0, v1, v3, v6}, Lon0;->j(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 461
    .line 462
    .line 463
    goto :goto_14

    .line 464
    :cond_18
    :goto_13
    invoke-virtual {v0, v1, v3, v10}, Lon0;->j(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 465
    .line 466
    .line 467
    :goto_14
    iget-object v2, v0, Lon0;->O0:[F

    .line 468
    .line 469
    if-eqz v2, :cond_1c

    .line 470
    .line 471
    array-length v2, v2

    .line 472
    if-nez v2, :cond_19

    .line 473
    .line 474
    goto :goto_15

    .line 475
    :cond_19
    invoke-virtual {v0}, Lon0;->m()[F

    .line 476
    .line 477
    .line 478
    move-result-object v2

    .line 479
    aget v3, v2, v15

    .line 480
    .line 481
    iget-object v4, v0, Lon0;->O0:[F

    .line 482
    .line 483
    array-length v4, v4

    .line 484
    int-to-float v4, v4

    .line 485
    div-float v4, v4, v17

    .line 486
    .line 487
    const/high16 v5, 0x3f800000    # 1.0f

    .line 488
    .line 489
    sub-float/2addr v4, v5

    .line 490
    mul-float/2addr v4, v3

    .line 491
    float-to-double v3, v4

    .line 492
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    .line 493
    .line 494
    .line 495
    move-result-wide v3

    .line 496
    double-to-int v3, v3

    .line 497
    aget v2, v2, v13

    .line 498
    .line 499
    iget-object v4, v0, Lon0;->O0:[F

    .line 500
    .line 501
    array-length v4, v4

    .line 502
    int-to-float v4, v4

    .line 503
    div-float v4, v4, v17

    .line 504
    .line 505
    sub-float/2addr v4, v5

    .line 506
    mul-float/2addr v4, v2

    .line 507
    float-to-double v4, v4

    .line 508
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    .line 509
    .line 510
    .line 511
    move-result-wide v4

    .line 512
    double-to-int v2, v4

    .line 513
    iget-object v4, v0, Lon0;->e:Landroid/graphics/Paint;

    .line 514
    .line 515
    if-lez v3, :cond_1a

    .line 516
    .line 517
    mul-int/lit8 v5, v3, 0x2

    .line 518
    .line 519
    invoke-virtual {v0, v15, v5, v1, v4}, Lon0;->i(IILandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 520
    .line 521
    .line 522
    :cond_1a
    if-gt v3, v2, :cond_1b

    .line 523
    .line 524
    mul-int/lit8 v3, v3, 0x2

    .line 525
    .line 526
    add-int/lit8 v5, v2, 0x1

    .line 527
    .line 528
    mul-int/lit8 v5, v5, 0x2

    .line 529
    .line 530
    iget-object v6, v0, Lon0;->f:Landroid/graphics/Paint;

    .line 531
    .line 532
    invoke-virtual {v0, v3, v5, v1, v6}, Lon0;->i(IILandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 533
    .line 534
    .line 535
    :cond_1b
    add-int/2addr v2, v13

    .line 536
    mul-int/lit8 v2, v2, 0x2

    .line 537
    .line 538
    iget-object v3, v0, Lon0;->O0:[F

    .line 539
    .line 540
    array-length v5, v3

    .line 541
    if-ge v2, v5, :cond_1c

    .line 542
    .line 543
    array-length v3, v3

    .line 544
    invoke-virtual {v0, v2, v3, v1, v4}, Lon0;->i(IILandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 545
    .line 546
    .line 547
    :cond_1c
    :goto_15
    iget v2, v0, Lon0;->j0:I

    .line 548
    .line 549
    if-lez v2, :cond_20

    .line 550
    .line 551
    iget-object v2, v0, Lon0;->J0:Ljava/util/ArrayList;

    .line 552
    .line 553
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 554
    .line 555
    .line 556
    move-result v2

    .line 557
    if-eqz v2, :cond_1d

    .line 558
    .line 559
    goto :goto_16

    .line 560
    :cond_1d
    iget-object v2, v0, Lon0;->J0:Ljava/util/ArrayList;

    .line 561
    .line 562
    invoke-static {v2, v13}, Ldj7;->e(Ljava/util/ArrayList;I)Ljava/lang/Object;

    .line 563
    .line 564
    .line 565
    move-result-object v2

    .line 566
    check-cast v2, Ljava/lang/Float;

    .line 567
    .line 568
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 569
    .line 570
    .line 571
    move-result v2

    .line 572
    iget v3, v0, Lon0;->I0:F

    .line 573
    .line 574
    cmpg-float v2, v2, v3

    .line 575
    .line 576
    if-gez v2, :cond_1e

    .line 577
    .line 578
    invoke-virtual {v0, v3}, Lon0;->R(F)F

    .line 579
    .line 580
    .line 581
    move-result v2

    .line 582
    invoke-virtual {v0, v1, v2, v12}, Lon0;->g(Landroid/graphics/Canvas;FF)V

    .line 583
    .line 584
    .line 585
    :cond_1e
    iget-boolean v2, v0, Lon0;->m0:Z

    .line 586
    .line 587
    if-nez v2, :cond_1f

    .line 588
    .line 589
    iget-object v2, v0, Lon0;->J0:Ljava/util/ArrayList;

    .line 590
    .line 591
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 592
    .line 593
    .line 594
    move-result v2

    .line 595
    if-le v2, v13, :cond_20

    .line 596
    .line 597
    iget-object v2, v0, Lon0;->J0:Ljava/util/ArrayList;

    .line 598
    .line 599
    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 600
    .line 601
    .line 602
    move-result-object v2

    .line 603
    check-cast v2, Ljava/lang/Float;

    .line 604
    .line 605
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 606
    .line 607
    .line 608
    move-result v2

    .line 609
    iget v3, v0, Lon0;->H0:F

    .line 610
    .line 611
    cmpl-float v2, v2, v3

    .line 612
    .line 613
    if-lez v2, :cond_20

    .line 614
    .line 615
    :cond_1f
    iget v2, v0, Lon0;->H0:F

    .line 616
    .line 617
    invoke-virtual {v0, v2}, Lon0;->R(F)F

    .line 618
    .line 619
    .line 620
    move-result v2

    .line 621
    invoke-virtual {v0, v1, v2, v12}, Lon0;->g(Landroid/graphics/Canvas;FF)V

    .line 622
    .line 623
    .line 624
    :cond_20
    :goto_16
    iget-boolean v2, v0, Lon0;->G0:Z

    .line 625
    .line 626
    if-nez v2, :cond_22

    .line 627
    .line 628
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    .line 629
    .line 630
    .line 631
    move-result v2

    .line 632
    if-eqz v2, :cond_21

    .line 633
    .line 634
    goto :goto_17

    .line 635
    :cond_21
    move-object v7, v0

    .line 636
    goto :goto_19

    .line 637
    :cond_22
    :goto_17
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    .line 638
    .line 639
    .line 640
    move-result v2

    .line 641
    if-eqz v2, :cond_21

    .line 642
    .line 643
    iget v2, v0, Lon0;->S0:I

    .line 644
    .line 645
    invoke-virtual {v0}, Lon0;->n()Landroid/graphics/drawable/RippleDrawable;

    .line 646
    .line 647
    .line 648
    move-result-object v3

    .line 649
    if-nez v3, :cond_21

    .line 650
    .line 651
    iget v3, v0, Lon0;->b0:I

    .line 652
    .line 653
    int-to-float v3, v3

    .line 654
    iget-object v4, v0, Lon0;->J0:Ljava/util/ArrayList;

    .line 655
    .line 656
    iget v5, v0, Lon0;->L0:I

    .line 657
    .line 658
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 659
    .line 660
    .line 661
    move-result-object v4

    .line 662
    check-cast v4, Ljava/lang/Float;

    .line 663
    .line 664
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    .line 665
    .line 666
    .line 667
    move-result v4

    .line 668
    invoke-virtual {v0, v4}, Lon0;->v(F)F

    .line 669
    .line 670
    .line 671
    move-result v4

    .line 672
    int-to-float v2, v2

    .line 673
    mul-float/2addr v4, v2

    .line 674
    add-float/2addr v4, v3

    .line 675
    move/from16 v2, v18

    .line 676
    .line 677
    new-array v6, v2, [F

    .line 678
    .line 679
    aput v4, v6, v15

    .line 680
    .line 681
    aput v12, v6, v13

    .line 682
    .line 683
    invoke-virtual {v0}, Lon0;->t()Z

    .line 684
    .line 685
    .line 686
    move-result v2

    .line 687
    if-eqz v2, :cond_23

    .line 688
    .line 689
    iget-object v2, v0, Lon0;->i1:Landroid/graphics/Matrix;

    .line 690
    .line 691
    invoke-virtual {v2, v6}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 692
    .line 693
    .line 694
    :cond_23
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 695
    .line 696
    const/16 v3, 0x1c

    .line 697
    .line 698
    if-ge v2, v3, :cond_24

    .line 699
    .line 700
    aget v2, v6, v15

    .line 701
    .line 702
    iget v3, v0, Lon0;->e0:I

    .line 703
    .line 704
    int-to-float v3, v3

    .line 705
    sub-float v1, v2, v3

    .line 706
    .line 707
    aget v4, v6, v13

    .line 708
    .line 709
    move v5, v2

    .line 710
    sub-float v2, v4, v3

    .line 711
    .line 712
    add-float/2addr v5, v3

    .line 713
    add-float/2addr v4, v3

    .line 714
    move v3, v5

    .line 715
    sget-object v5, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    .line 716
    .line 717
    move-object v7, v0

    .line 718
    move-object/from16 v0, p1

    .line 719
    .line 720
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 721
    .line 722
    .line 723
    move-object v1, v0

    .line 724
    goto :goto_18

    .line 725
    :cond_24
    move-object v7, v0

    .line 726
    :goto_18
    aget v0, v6, v15

    .line 727
    .line 728
    aget v2, v6, v13

    .line 729
    .line 730
    iget v3, v7, Lon0;->e0:I

    .line 731
    .line 732
    int-to-float v3, v3

    .line 733
    iget-object v4, v7, Lon0;->d:Landroid/graphics/Paint;

    .line 734
    .line 735
    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 736
    .line 737
    .line 738
    :goto_19
    invoke-virtual {v7}, Lon0;->F()V

    .line 739
    .line 740
    .line 741
    iget v2, v7, Lon0;->S0:I

    .line 742
    .line 743
    :goto_1a
    iget-object v0, v7, Lon0;->J0:Ljava/util/ArrayList;

    .line 744
    .line 745
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 746
    .line 747
    .line 748
    move-result v0

    .line 749
    if-ge v15, v0, :cond_28

    .line 750
    .line 751
    iget-object v0, v7, Lon0;->J0:Ljava/util/ArrayList;

    .line 752
    .line 753
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 754
    .line 755
    .line 756
    move-result-object v0

    .line 757
    check-cast v0, Ljava/lang/Float;

    .line 758
    .line 759
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 760
    .line 761
    .line 762
    move-result v4

    .line 763
    iget-object v5, v7, Lon0;->k1:Landroid/graphics/drawable/Drawable;

    .line 764
    .line 765
    if-eqz v5, :cond_25

    .line 766
    .line 767
    move-object v0, v7

    .line 768
    move v3, v9

    .line 769
    invoke-virtual/range {v0 .. v5}, Lon0;->h(Landroid/graphics/Canvas;IIFLandroid/graphics/drawable/Drawable;)V

    .line 770
    .line 771
    .line 772
    goto :goto_1b

    .line 773
    :cond_25
    move-object v0, v7

    .line 774
    move v3, v9

    .line 775
    iget-object v1, v0, Lon0;->l1:Ljava/util/List;

    .line 776
    .line 777
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 778
    .line 779
    .line 780
    move-result v1

    .line 781
    if-ge v15, v1, :cond_26

    .line 782
    .line 783
    iget-object v1, v0, Lon0;->l1:Ljava/util/List;

    .line 784
    .line 785
    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 786
    .line 787
    .line 788
    move-result-object v1

    .line 789
    move-object v5, v1

    .line 790
    check-cast v5, Landroid/graphics/drawable/Drawable;

    .line 791
    .line 792
    move-object/from16 v1, p1

    .line 793
    .line 794
    invoke-virtual/range {v0 .. v5}, Lon0;->h(Landroid/graphics/Canvas;IIFLandroid/graphics/drawable/Drawable;)V

    .line 795
    .line 796
    .line 797
    goto :goto_1b

    .line 798
    :cond_26
    move-object/from16 v1, p1

    .line 799
    .line 800
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    .line 801
    .line 802
    .line 803
    move-result v5

    .line 804
    if-nez v5, :cond_27

    .line 805
    .line 806
    iget v5, v0, Lon0;->b0:I

    .line 807
    .line 808
    int-to-float v5, v5

    .line 809
    invoke-virtual {v0, v4}, Lon0;->v(F)F

    .line 810
    .line 811
    .line 812
    move-result v6

    .line 813
    int-to-float v7, v2

    .line 814
    mul-float/2addr v6, v7

    .line 815
    add-float/2addr v6, v5

    .line 816
    invoke-virtual {v0}, Lon0;->getThumbRadius()I

    .line 817
    .line 818
    .line 819
    move-result v5

    .line 820
    int-to-float v5, v5

    .line 821
    iget-object v7, v0, Lon0;->c:Landroid/graphics/Paint;

    .line 822
    .line 823
    invoke-virtual {v1, v6, v12, v5, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 824
    .line 825
    .line 826
    :cond_27
    iget-object v5, v0, Lon0;->j1:Ljava/util/ArrayList;

    .line 827
    .line 828
    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 829
    .line 830
    .line 831
    move-result-object v5

    .line 832
    check-cast v5, Landroid/graphics/drawable/Drawable;

    .line 833
    .line 834
    invoke-virtual/range {v0 .. v5}, Lon0;->h(Landroid/graphics/Canvas;IIFLandroid/graphics/drawable/Drawable;)V

    .line 835
    .line 836
    .line 837
    :goto_1b
    add-int/lit8 v15, v15, 0x1

    .line 838
    .line 839
    move-object/from16 v7, p0

    .line 840
    .line 841
    move-object/from16 v1, p1

    .line 842
    .line 843
    move v9, v3

    .line 844
    goto :goto_1a

    .line 845
    :cond_28
    return-void
.end method

.method public final onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2
    .line 3
    .line 4
    iget-object p3, p0, Lon0;->n:Lln0;

    .line 5
    .line 6
    const/4 v0, -0x1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lon0;->x()V

    .line 10
    .line 11
    .line 12
    iput v0, p0, Lon0;->K0:I

    .line 13
    .line 14
    iget p0, p0, Lon0;->L0:I

    .line 15
    .line 16
    invoke-virtual {p3, p0}, Lo03;->j(I)Z

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget p1, p0, Lon0;->K0:I

    .line 21
    .line 22
    if-ne p1, v0, :cond_9

    .line 23
    .line 24
    const/4 p1, 0x1

    .line 25
    const v0, 0x7fffffff

    .line 26
    .line 27
    .line 28
    if-eq p2, p1, :cond_8

    .line 29
    .line 30
    const/4 p1, 0x2

    .line 31
    const/high16 v1, -0x80000000

    .line 32
    .line 33
    if-eq p2, p1, :cond_7

    .line 34
    .line 35
    const/16 p1, 0x11

    .line 36
    .line 37
    if-eq p2, p1, :cond_4

    .line 38
    .line 39
    const/16 p1, 0x42

    .line 40
    .line 41
    if-eq p2, p1, :cond_1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    invoke-virtual {p0}, Lon0;->s()Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-nez p1, :cond_3

    .line 49
    .line 50
    invoke-virtual {p0}, Lon0;->t()Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-eqz p1, :cond_2

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    move v0, v1

    .line 58
    :cond_3
    :goto_0
    invoke-virtual {p0, v0}, Lon0;->u(I)Z

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_4
    invoke-virtual {p0}, Lon0;->s()Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-nez p1, :cond_5

    .line 67
    .line 68
    invoke-virtual {p0}, Lon0;->t()Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    if-eqz p1, :cond_6

    .line 73
    .line 74
    :cond_5
    const v0, -0x7fffffff

    .line 75
    .line 76
    .line 77
    :cond_6
    invoke-virtual {p0, v0}, Lon0;->u(I)Z

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_7
    invoke-virtual {p0, v1}, Lon0;->u(I)Z

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_8
    invoke-virtual {p0, v0}, Lon0;->u(I)Z

    .line 86
    .line 87
    .line 88
    :goto_1
    iget p1, p0, Lon0;->L0:I

    .line 89
    .line 90
    iput p1, p0, Lon0;->K0:I

    .line 91
    .line 92
    :cond_9
    invoke-virtual {p0}, Lon0;->x()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Lon0;->G()V

    .line 96
    .line 97
    .line 98
    iget p0, p0, Lon0;->L0:I

    .line 99
    .line 100
    invoke-virtual {p3, p0}, Lo03;->v(I)Z

    .line 101
    .line 102
    .line 103
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    iget v0, p0, Lon0;->L0:I

    .line 13
    .line 14
    iput v0, p0, Lon0;->K0:I

    .line 15
    .line 16
    iget-boolean v0, p0, Lon0;->T0:Z

    .line 17
    .line 18
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    or-int/2addr v0, v1

    .line 23
    iput-boolean v0, p0, Lon0;->T0:Z

    .line 24
    .line 25
    iget v1, p0, Lon0;->M0:F

    .line 26
    .line 27
    const/high16 v2, 0x3f800000    # 1.0f

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    cmpl-float v0, v1, v3

    .line 33
    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    move v1, v2

    .line 37
    :cond_1
    iget v0, p0, Lon0;->I0:F

    .line 38
    .line 39
    iget v2, p0, Lon0;->H0:F

    .line 40
    .line 41
    sub-float/2addr v0, v2

    .line 42
    div-float/2addr v0, v1

    .line 43
    const/high16 v2, 0x41a00000    # 20.0f

    .line 44
    .line 45
    cmpg-float v3, v0, v2

    .line 46
    .line 47
    if-gtz v3, :cond_2

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    div-float/2addr v0, v2

    .line 51
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    int-to-float v0, v0

    .line 56
    mul-float/2addr v1, v0

    .line 57
    goto :goto_0

    .line 58
    :cond_3
    cmpl-float v0, v1, v3

    .line 59
    .line 60
    if-nez v0, :cond_4

    .line 61
    .line 62
    move v1, v2

    .line 63
    :cond_4
    :goto_0
    const/16 v0, 0x15

    .line 64
    .line 65
    if-eq p1, v0, :cond_9

    .line 66
    .line 67
    const/16 v0, 0x16

    .line 68
    .line 69
    if-eq p1, v0, :cond_7

    .line 70
    .line 71
    const/16 v0, 0x45

    .line 72
    .line 73
    if-eq p1, v0, :cond_6

    .line 74
    .line 75
    const/16 v0, 0x46

    .line 76
    .line 77
    if-eq p1, v0, :cond_5

    .line 78
    .line 79
    const/16 v0, 0x51

    .line 80
    .line 81
    if-eq p1, v0, :cond_5

    .line 82
    .line 83
    const/4 v0, 0x0

    .line 84
    goto :goto_2

    .line 85
    :cond_5
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    goto :goto_2

    .line 90
    :cond_6
    neg-float v0, v1

    .line 91
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    goto :goto_2

    .line 96
    :cond_7
    invoke-virtual {p0}, Lon0;->s()Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-eqz v0, :cond_8

    .line 101
    .line 102
    neg-float v1, v1

    .line 103
    :cond_8
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    goto :goto_2

    .line 108
    :cond_9
    invoke-virtual {p0}, Lon0;->s()Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-eqz v0, :cond_a

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_a
    neg-float v1, v1

    .line 116
    :goto_1
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    :goto_2
    const/4 v1, 0x1

    .line 121
    if-eqz v0, :cond_c

    .line 122
    .line 123
    iget-object p1, p0, Lon0;->J0:Ljava/util/ArrayList;

    .line 124
    .line 125
    iget p2, p0, Lon0;->K0:I

    .line 126
    .line 127
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    check-cast p1, Ljava/lang/Float;

    .line 132
    .line 133
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 138
    .line 139
    .line 140
    move-result p2

    .line 141
    add-float/2addr p2, p1

    .line 142
    iget p1, p0, Lon0;->K0:I

    .line 143
    .line 144
    invoke-virtual {p0, p1, p2}, Lon0;->B(IF)Z

    .line 145
    .line 146
    .line 147
    move-result p1

    .line 148
    if-eqz p1, :cond_b

    .line 149
    .line 150
    invoke-virtual {p0}, Lon0;->E()V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 154
    .line 155
    .line 156
    :cond_b
    return v1

    .line 157
    :cond_c
    const/16 v0, 0x3d

    .line 158
    .line 159
    if-ne p1, v0, :cond_f

    .line 160
    .line 161
    invoke-virtual {p0}, Lon0;->x()V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 165
    .line 166
    .line 167
    move-result p1

    .line 168
    if-eqz p1, :cond_d

    .line 169
    .line 170
    invoke-virtual {p0, v1}, Lon0;->u(I)Z

    .line 171
    .line 172
    .line 173
    move-result p0

    .line 174
    return p0

    .line 175
    :cond_d
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    .line 176
    .line 177
    .line 178
    move-result p1

    .line 179
    if-eqz p1, :cond_e

    .line 180
    .line 181
    const/4 p1, -0x1

    .line 182
    invoke-virtual {p0, p1}, Lon0;->u(I)Z

    .line 183
    .line 184
    .line 185
    move-result p0

    .line 186
    return p0

    .line 187
    :cond_e
    const/4 p0, 0x0

    .line 188
    return p0

    .line 189
    :cond_f
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 190
    .line 191
    .line 192
    move-result p0

    .line 193
    return p0
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lon0;->T0:Z

    .line 3
    .line 4
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public final onLayout(ZIIII)V
    .locals 1

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lon0;->D0:Landroid/graphics/Rect;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 8
    .line 9
    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 10
    .line 11
    sub-int/2addr p4, p2

    .line 12
    iput p4, p1, Landroid/graphics/Rect;->right:I

    .line 13
    .line 14
    sub-int/2addr p5, p3

    .line 15
    iput p5, p1, Landroid/graphics/Rect;->bottom:I

    .line 16
    .line 17
    iget-object p2, p0, Lon0;->E0:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p3

    .line 23
    if-nez p3, :cond_0

    .line 24
    .line 25
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    :cond_0
    sget-object p1, Ldl8;->a:Ljava/util/WeakHashMap;

    .line 29
    .line 30
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 31
    .line 32
    const/16 p3, 0x1d

    .line 33
    .line 34
    if-lt p1, p3, :cond_1

    .line 35
    .line 36
    invoke-static {p0, p2}, Lzk8;->c(Landroid/view/View;Ljava/util/List;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    return-void
.end method

.method public final onMeasure(II)V
    .locals 3

    .line 1
    iget v0, p0, Lon0;->W:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x3

    .line 8
    if-ne v0, v1, :cond_1

    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lon0;->t:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lu88;

    .line 17
    .line 18
    invoke-virtual {v0}, Lu88;->getIntrinsicHeight()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    :cond_1
    iget v0, p0, Lon0;->V:I

    .line 23
    .line 24
    add-int/2addr v0, v2

    .line 25
    const/high16 v1, 0x40000000    # 2.0f

    .line 26
    .line 27
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-virtual {p0}, Lon0;->t()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    invoke-super {p0, v0, p2}, Landroid/view/View;->onMeasure(II)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_2
    invoke-super {p0, p1, v0}, Landroid/view/View;->onMeasure(II)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    check-cast p1, Lnn0;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 8
    .line 9
    .line 10
    iget v0, p1, Lnn0;->a:F

    .line 11
    .line 12
    iput v0, p0, Lon0;->H0:F

    .line 13
    .line 14
    iget v0, p1, Lnn0;->b:F

    .line 15
    .line 16
    iput v0, p0, Lon0;->I0:F

    .line 17
    .line 18
    iget-object v0, p1, Lnn0;->c:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lon0;->A(Ljava/util/ArrayList;)V

    .line 21
    .line 22
    .line 23
    iget v0, p1, Lnn0;->d:F

    .line 24
    .line 25
    iput v0, p0, Lon0;->M0:F

    .line 26
    .line 27
    iget-boolean p1, p1, Lnn0;->e:Z

    .line 28
    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lnn0;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 8
    .line 9
    .line 10
    iget v0, p0, Lon0;->H0:F

    .line 11
    .line 12
    iput v0, v1, Lnn0;->a:F

    .line 13
    .line 14
    iget v0, p0, Lon0;->I0:F

    .line 15
    .line 16
    iput v0, v1, Lnn0;->b:F

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    iget-object v2, p0, Lon0;->J0:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, v1, Lnn0;->c:Ljava/util/ArrayList;

    .line 26
    .line 27
    iget v0, p0, Lon0;->M0:F

    .line 28
    .line 29
    iput v0, v1, Lnn0;->d:F

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    iput-boolean p0, v1, Lnn0;->e:Z

    .line 36
    .line 37
    return-object v1
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lon0;->t()Z

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    move p1, p2

    .line 8
    :cond_0
    iget p2, p0, Lon0;->b0:I

    .line 9
    .line 10
    mul-int/lit8 p2, p2, 0x2

    .line 11
    .line 12
    sub-int/2addr p1, p2

    .line 13
    const/4 p2, 0x0

    .line 14
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    iput p1, p0, Lon0;->S0:I

    .line 19
    .line 20
    invoke-virtual {p0}, Lon0;->H()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lon0;->E()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto/16 :goto_4

    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Lon0;->t()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    :goto_0
    invoke-virtual {p0}, Lon0;->t()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    goto :goto_1

    .line 36
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    :goto_1
    iget v3, p0, Lon0;->b0:I

    .line 41
    .line 42
    int-to-float v3, v3

    .line 43
    sub-float v3, v0, v3

    .line 44
    .line 45
    iget v4, p0, Lon0;->S0:I

    .line 46
    .line 47
    int-to-float v4, v4

    .line 48
    div-float/2addr v3, v4

    .line 49
    iput v3, p0, Lon0;->q1:F

    .line 50
    .line 51
    const/4 v4, 0x0

    .line 52
    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    iput v3, p0, Lon0;->q1:F

    .line 57
    .line 58
    const/high16 v4, 0x3f800000    # 1.0f

    .line 59
    .line 60
    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    iput v3, p0, Lon0;->q1:F

    .line 65
    .line 66
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    const/4 v4, -0x1

    .line 71
    const/4 v5, 0x1

    .line 72
    if-eqz v3, :cond_11

    .line 73
    .line 74
    iget-object v6, p0, Lon0;->y:Ljava/util/ArrayList;

    .line 75
    .line 76
    iget v7, p0, Lon0;->J:I

    .line 77
    .line 78
    if-eq v3, v5, :cond_c

    .line 79
    .line 80
    const/4 v8, 0x2

    .line 81
    if-eq v3, v8, :cond_7

    .line 82
    .line 83
    const/4 v0, 0x3

    .line 84
    if-eq v3, v0, :cond_3

    .line 85
    .line 86
    goto/16 :goto_9

    .line 87
    .line 88
    :cond_3
    iput-boolean v1, p0, Lon0;->G0:Z

    .line 89
    .line 90
    iget v0, p0, Lon0;->K0:I

    .line 91
    .line 92
    if-eq v0, v4, :cond_5

    .line 93
    .line 94
    iget-object v0, p0, Lon0;->F0:Ljava/util/List;

    .line 95
    .line 96
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-nez v0, :cond_5

    .line 101
    .line 102
    :goto_2
    iget-object v0, p0, Lon0;->J0:Ljava/util/ArrayList;

    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-ge v1, v0, :cond_5

    .line 109
    .line 110
    iget v0, p0, Lon0;->K0:I

    .line 111
    .line 112
    if-ne v1, v0, :cond_4

    .line 113
    .line 114
    iget-object v0, p0, Lon0;->F0:Ljava/util/List;

    .line 115
    .line 116
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    check-cast v0, Ljava/lang/Float;

    .line 121
    .line 122
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    invoke-virtual {p0, v1, v0}, Lon0;->B(IF)Z

    .line 127
    .line 128
    .line 129
    goto :goto_3

    .line 130
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_5
    :goto_3
    invoke-virtual {p0}, Lon0;->E()V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0}, Lon0;->x()V

    .line 137
    .line 138
    .line 139
    iput v4, p0, Lon0;->K0:I

    .line 140
    .line 141
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    if-nez v1, :cond_6

    .line 150
    .line 151
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 152
    .line 153
    .line 154
    goto/16 :goto_9

    .line 155
    .line 156
    :cond_6
    invoke-static {v0}, Leq3;->h(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    throw p0

    .line 161
    :cond_7
    iget-boolean v3, p0, Lon0;->G0:Z

    .line 162
    .line 163
    if-nez v3, :cond_b

    .line 164
    .line 165
    invoke-virtual {p0}, Lon0;->t()Z

    .line 166
    .line 167
    .line 168
    move-result v3

    .line 169
    if-nez v3, :cond_8

    .line 170
    .line 171
    invoke-virtual {p0, p1}, Lon0;->r(Landroid/view/MotionEvent;)Z

    .line 172
    .line 173
    .line 174
    move-result v3

    .line 175
    if-eqz v3, :cond_8

    .line 176
    .line 177
    iget v3, p0, Lon0;->A0:F

    .line 178
    .line 179
    sub-float/2addr v0, v3

    .line 180
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    int-to-float v3, v7

    .line 185
    cmpg-float v0, v0, v3

    .line 186
    .line 187
    if-gez v0, :cond_8

    .line 188
    .line 189
    goto :goto_4

    .line 190
    :cond_8
    invoke-virtual {p0}, Lon0;->t()Z

    .line 191
    .line 192
    .line 193
    move-result v0

    .line 194
    if-eqz v0, :cond_9

    .line 195
    .line 196
    invoke-virtual {p0, p1}, Lon0;->q(Landroid/view/MotionEvent;)Z

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    if-eqz v0, :cond_9

    .line 201
    .line 202
    iget v0, p0, Lon0;->B0:F

    .line 203
    .line 204
    sub-float/2addr v2, v0

    .line 205
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 206
    .line 207
    .line 208
    move-result v0

    .line 209
    int-to-float v2, v7

    .line 210
    const v3, 0x3f4ccccd    # 0.8f

    .line 211
    .line 212
    .line 213
    mul-float/2addr v2, v3

    .line 214
    cmpg-float v0, v0, v2

    .line 215
    .line 216
    if-gez v0, :cond_9

    .line 217
    .line 218
    :goto_4
    return v1

    .line 219
    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    invoke-interface {v0, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 224
    .line 225
    .line 226
    move-object v0, p0

    .line 227
    check-cast v0, Lcom/google/android/material/slider/Slider;

    .line 228
    .line 229
    invoke-virtual {v0}, Lcom/google/android/material/slider/Slider;->getActiveThumbIndex()I

    .line 230
    .line 231
    .line 232
    move-result v2

    .line 233
    if-eq v2, v4, :cond_a

    .line 234
    .line 235
    goto :goto_5

    .line 236
    :cond_a
    invoke-virtual {v0, v1}, Lon0;->setActiveThumbIndex(I)V

    .line 237
    .line 238
    .line 239
    :goto_5
    iput-boolean v5, p0, Lon0;->G0:Z

    .line 240
    .line 241
    invoke-virtual {p0}, Lon0;->G()V

    .line 242
    .line 243
    .line 244
    invoke-virtual {p0}, Lon0;->w()V

    .line 245
    .line 246
    .line 247
    :cond_b
    invoke-virtual {p0}, Lon0;->C()V

    .line 248
    .line 249
    .line 250
    invoke-virtual {p0}, Lon0;->E()V

    .line 251
    .line 252
    .line 253
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 254
    .line 255
    .line 256
    goto/16 :goto_9

    .line 257
    .line 258
    :cond_c
    iput-boolean v1, p0, Lon0;->G0:Z

    .line 259
    .line 260
    iget-object v0, p0, Lon0;->C0:Landroid/view/MotionEvent;

    .line 261
    .line 262
    if-eqz v0, :cond_e

    .line 263
    .line 264
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 265
    .line 266
    .line 267
    move-result v0

    .line 268
    if-nez v0, :cond_e

    .line 269
    .line 270
    iget-object v0, p0, Lon0;->C0:Landroid/view/MotionEvent;

    .line 271
    .line 272
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    .line 273
    .line 274
    .line 275
    move-result v0

    .line 276
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 277
    .line 278
    .line 279
    move-result v2

    .line 280
    sub-float/2addr v0, v2

    .line 281
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 282
    .line 283
    .line 284
    move-result v0

    .line 285
    int-to-float v2, v7

    .line 286
    cmpg-float v0, v0, v2

    .line 287
    .line 288
    if-gtz v0, :cond_e

    .line 289
    .line 290
    iget-object v0, p0, Lon0;->C0:Landroid/view/MotionEvent;

    .line 291
    .line 292
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    .line 293
    .line 294
    .line 295
    move-result v0

    .line 296
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 297
    .line 298
    .line 299
    move-result v3

    .line 300
    sub-float/2addr v0, v3

    .line 301
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 302
    .line 303
    .line 304
    move-result v0

    .line 305
    cmpg-float v0, v0, v2

    .line 306
    .line 307
    if-gtz v0, :cond_e

    .line 308
    .line 309
    move-object v0, p0

    .line 310
    check-cast v0, Lcom/google/android/material/slider/Slider;

    .line 311
    .line 312
    invoke-virtual {v0}, Lcom/google/android/material/slider/Slider;->getActiveThumbIndex()I

    .line 313
    .line 314
    .line 315
    move-result v2

    .line 316
    if-eq v2, v4, :cond_d

    .line 317
    .line 318
    goto :goto_6

    .line 319
    :cond_d
    invoke-virtual {v0, v1}, Lon0;->setActiveThumbIndex(I)V

    .line 320
    .line 321
    .line 322
    :goto_6
    invoke-virtual {p0}, Lon0;->w()V

    .line 323
    .line 324
    .line 325
    :cond_e
    iget v0, p0, Lon0;->K0:I

    .line 326
    .line 327
    if-eq v0, v4, :cond_10

    .line 328
    .line 329
    invoke-virtual {p0}, Lon0;->C()V

    .line 330
    .line 331
    .line 332
    invoke-virtual {p0}, Lon0;->E()V

    .line 333
    .line 334
    .line 335
    invoke-virtual {p0}, Lon0;->x()V

    .line 336
    .line 337
    .line 338
    iput v4, p0, Lon0;->K0:I

    .line 339
    .line 340
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 345
    .line 346
    .line 347
    move-result v1

    .line 348
    if-nez v1, :cond_f

    .line 349
    .line 350
    goto :goto_7

    .line 351
    :cond_f
    invoke-static {v0}, Leq3;->h(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 352
    .line 353
    .line 354
    move-result-object p0

    .line 355
    throw p0

    .line 356
    :cond_10
    :goto_7
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 357
    .line 358
    .line 359
    goto :goto_9

    .line 360
    :cond_11
    iput v0, p0, Lon0;->A0:F

    .line 361
    .line 362
    iput v2, p0, Lon0;->B0:F

    .line 363
    .line 364
    iget-object v0, p0, Lon0;->F0:Ljava/util/List;

    .line 365
    .line 366
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 367
    .line 368
    .line 369
    invoke-virtual {p0}, Lon0;->getValues()Ljava/util/List;

    .line 370
    .line 371
    .line 372
    move-result-object v0

    .line 373
    iput-object v0, p0, Lon0;->F0:Ljava/util/List;

    .line 374
    .line 375
    invoke-virtual {p0}, Lon0;->t()Z

    .line 376
    .line 377
    .line 378
    move-result v0

    .line 379
    if-nez v0, :cond_12

    .line 380
    .line 381
    invoke-virtual {p0, p1}, Lon0;->r(Landroid/view/MotionEvent;)Z

    .line 382
    .line 383
    .line 384
    move-result v0

    .line 385
    if-eqz v0, :cond_12

    .line 386
    .line 387
    goto :goto_9

    .line 388
    :cond_12
    invoke-virtual {p0}, Lon0;->t()Z

    .line 389
    .line 390
    .line 391
    move-result v0

    .line 392
    if-eqz v0, :cond_13

    .line 393
    .line 394
    invoke-virtual {p0, p1}, Lon0;->q(Landroid/view/MotionEvent;)Z

    .line 395
    .line 396
    .line 397
    move-result v0

    .line 398
    if-eqz v0, :cond_13

    .line 399
    .line 400
    goto :goto_9

    .line 401
    :cond_13
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 402
    .line 403
    .line 404
    move-result-object v0

    .line 405
    invoke-interface {v0, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 406
    .line 407
    .line 408
    move-object v0, p0

    .line 409
    check-cast v0, Lcom/google/android/material/slider/Slider;

    .line 410
    .line 411
    invoke-virtual {v0}, Lcom/google/android/material/slider/Slider;->getActiveThumbIndex()I

    .line 412
    .line 413
    .line 414
    move-result v2

    .line 415
    if-eq v2, v4, :cond_14

    .line 416
    .line 417
    goto :goto_8

    .line 418
    :cond_14
    invoke-virtual {v0, v1}, Lon0;->setActiveThumbIndex(I)V

    .line 419
    .line 420
    .line 421
    :goto_8
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 422
    .line 423
    .line 424
    iput-boolean v5, p0, Lon0;->G0:Z

    .line 425
    .line 426
    invoke-virtual {p0}, Lon0;->G()V

    .line 427
    .line 428
    .line 429
    invoke-virtual {p0}, Lon0;->w()V

    .line 430
    .line 431
    .line 432
    invoke-virtual {p0}, Lon0;->C()V

    .line 433
    .line 434
    .line 435
    invoke-virtual {p0}, Lon0;->E()V

    .line 436
    .line 437
    .line 438
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 439
    .line 440
    .line 441
    :goto_9
    iget-boolean v0, p0, Lon0;->G0:Z

    .line 442
    .line 443
    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    .line 444
    .line 445
    .line 446
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 447
    .line 448
    .line 449
    move-result-object p1

    .line 450
    iput-object p1, p0, Lon0;->C0:Landroid/view/MotionEvent;

    .line 451
    .line 452
    return v5
.end method

.method public final onVisibilityAggregated(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onVisibilityAggregated(Z)V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lon0;->w1:Z

    .line 5
    .line 6
    return-void
.end method

.method public final onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    if-eqz p2, :cond_2

    .line 5
    .line 6
    invoke-static {p0}, Lyc9;->s(Lon0;)Landroid/view/ViewGroup;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    :goto_0
    if-nez p1, :cond_1

    .line 19
    .line 20
    goto :goto_2

    .line 21
    :cond_1
    iget-object p0, p0, Lon0;->t:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    if-eqz p2, :cond_2

    .line 32
    .line 33
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    check-cast p2, Lu88;

    .line 38
    .line 39
    invoke-virtual {p1, p2}, Landroid/view/ViewOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    :goto_2
    return-void
.end method

.method public final p(D)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/math/BigDecimal;

    .line 2
    .line 3
    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance p1, Ljava/math/BigDecimal;

    .line 11
    .line 12
    iget p0, p0, Lon0;->M0:F

    .line 13
    .line 14
    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-direct {p1, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sget-object p0, Ljava/math/MathContext;->DECIMAL64:Ljava/math/MathContext;

    .line 22
    .line 23
    invoke-virtual {v0, p1, p0}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0}, Ljava/math/BigDecimal;->doubleValue()D

    .line 28
    .line 29
    .line 30
    move-result-wide p0

    .line 31
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    .line 32
    .line 33
    .line 34
    move-result-wide v0

    .line 35
    long-to-double v0, v0

    .line 36
    sub-double/2addr v0, p0

    .line 37
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    .line 38
    .line 39
    .line 40
    move-result-wide p0

    .line 41
    const-wide v0, 0x3f1a36e2eb1c432dL    # 1.0E-4

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    cmpg-double p0, p0, v0

    .line 47
    .line 48
    if-gez p0, :cond_0

    .line 49
    .line 50
    const/4 p0, 0x1

    .line 51
    return p0

    .line 52
    :cond_0
    const/4 p0, 0x0

    .line 53
    return p0
.end method

.method public final q(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    const/4 v1, 0x3

    .line 7
    if-ne p1, v1, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    :goto_0
    instance-of p1, p0, Landroid/view/ViewGroup;

    .line 15
    .line 16
    if-eqz p1, :cond_3

    .line 17
    .line 18
    move-object p1, p0

    .line 19
    check-cast p1, Landroid/view/ViewGroup;

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    invoke-virtual {p1, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-nez v2, :cond_1

    .line 27
    .line 28
    const/4 v2, -0x1

    .line 29
    invoke-virtual {p1, v2}, Landroid/view/View;->canScrollHorizontally(I)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->shouldDelayChildPressedState()Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_2

    .line 40
    .line 41
    return v1

    .line 42
    :cond_2
    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    goto :goto_0

    .line 47
    :cond_3
    :goto_1
    return v0
.end method

.method public final r(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    const/4 v1, 0x3

    .line 7
    if-ne p1, v1, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    :goto_0
    instance-of p1, p0, Landroid/view/ViewGroup;

    .line 15
    .line 16
    if-eqz p1, :cond_3

    .line 17
    .line 18
    move-object p1, p0

    .line 19
    check-cast p1, Landroid/view/ViewGroup;

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    invoke-virtual {p1, v1}, Landroid/view/View;->canScrollVertically(I)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-nez v2, :cond_1

    .line 27
    .line 28
    const/4 v2, -0x1

    .line 29
    invoke-virtual {p1, v2}, Landroid/view/View;->canScrollVertically(I)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->shouldDelayChildPressedState()Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_2

    .line 40
    .line 41
    return v1

    .line 42
    :cond_2
    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    goto :goto_0

    .line 47
    :cond_3
    :goto_1
    return v0
.end method

.method public final s()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 v0, 0x1

    .line 6
    if-ne p0, v0, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    return p0
.end method

.method public setActiveThumbIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lon0;->K0:I

    .line 2
    .line 3
    return-void
.end method

.method public abstract setCentered(Z)V
.end method

.method public varargs setCustomThumbDrawablesForValues([I)V
    .locals 4

    .line 46
    array-length v0, p1

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    .line 47
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 48
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    aget v3, p1, v1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p0, v0}, Lon0;->setCustomThumbDrawablesForValues([Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public varargs setCustomThumbDrawablesForValues([Landroid/graphics/drawable/Drawable;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lon0;->k1:Landroid/graphics/drawable/Drawable;

    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lon0;->l1:Ljava/util/List;

    .line 10
    .line 11
    array-length v0, p1

    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    if-ge v1, v0, :cond_0

    .line 14
    .line 15
    aget-object v2, p1, v1

    .line 16
    .line 17
    iget-object v3, p0, Lon0;->l1:Ljava/util/List;

    .line 18
    .line 19
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    iget v4, p0, Lon0;->c0:I

    .line 32
    .line 33
    invoke-virtual {p0, v4, v2}, Lon0;->a(ILandroid/graphics/drawable/Drawable;)V

    .line 34
    .line 35
    .line 36
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    add-int/lit8 v1, v1, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x2

    .line 9
    :goto_0
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public abstract setHaloRadius(I)V
.end method

.method public abstract setHaloTintList(Landroid/content/res/ColorStateList;)V
.end method

.method public abstract setLabelBehavior(I)V
.end method

.method public abstract setOrientation(I)V
.end method

.method public setSeparationUnit(I)V
    .locals 0

    .line 1
    iput p1, p0, Lon0;->r1:I

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lon0;->U0:Z

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public abstract setThumbElevation(F)V
.end method

.method public abstract setThumbHeight(I)V
.end method

.method public abstract setThumbStrokeColor(Landroid/content/res/ColorStateList;)V
.end method

.method public abstract setThumbStrokeWidth(F)V
.end method

.method public abstract setThumbTintList(Landroid/content/res/ColorStateList;)V
.end method

.method public abstract setThumbTrackGapSize(I)V
.end method

.method public abstract setThumbWidth(I)V
.end method

.method public abstract setTickActiveRadius(I)V
.end method

.method public abstract setTickActiveTintList(Landroid/content/res/ColorStateList;)V
.end method

.method public abstract setTickInactiveRadius(I)V
.end method

.method public abstract setTickInactiveTintList(Landroid/content/res/ColorStateList;)V
.end method

.method public abstract setTrackActiveTintList(Landroid/content/res/ColorStateList;)V
.end method

.method public abstract setTrackCornerSize(I)V
.end method

.method public abstract setTrackHeight(I)V
.end method

.method public abstract setTrackIconActiveColor(Landroid/content/res/ColorStateList;)V
.end method

.method public abstract setTrackIconActiveEnd(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setTrackIconActiveStart(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setTrackIconInactiveColor(Landroid/content/res/ColorStateList;)V
.end method

.method public abstract setTrackIconInactiveEnd(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setTrackIconInactiveStart(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setTrackIconSize(I)V
.end method

.method public abstract setTrackInactiveTintList(Landroid/content/res/ColorStateList;)V
.end method

.method public abstract setTrackInsideCornerSize(I)V
.end method

.method public abstract setTrackStopIndicatorSize(I)V
.end method

.method public setValues(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lon0;->A(Ljava/util/ArrayList;)V

    return-void
.end method

.method public varargs setValues([Ljava/lang/Float;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lon0;->A(Ljava/util/ArrayList;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final t()Z
    .locals 1

    .line 1
    iget p0, p0, Lon0;->T:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method public final u(I)Z
    .locals 8

    .line 1
    iget v0, p0, Lon0;->L0:I

    .line 2
    .line 3
    int-to-long v1, v0

    .line 4
    int-to-long v3, p1

    .line 5
    add-long/2addr v1, v3

    .line 6
    iget-object p1, p0, Lon0;->J0:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    const/4 v3, 0x1

    .line 13
    sub-int/2addr p1, v3

    .line 14
    int-to-long v4, p1

    .line 15
    const-wide/16 v6, 0x0

    .line 16
    .line 17
    cmp-long p1, v1, v6

    .line 18
    .line 19
    if-gez p1, :cond_0

    .line 20
    .line 21
    move-wide v1, v6

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    cmp-long p1, v1, v4

    .line 24
    .line 25
    if-lez p1, :cond_1

    .line 26
    .line 27
    move-wide v1, v4

    .line 28
    :cond_1
    :goto_0
    long-to-int p1, v1

    .line 29
    iput p1, p0, Lon0;->L0:I

    .line 30
    .line 31
    if-ne p1, v0, :cond_2

    .line 32
    .line 33
    const/4 p0, 0x0

    .line 34
    return p0

    .line 35
    :cond_2
    iput p1, p0, Lon0;->K0:I

    .line 36
    .line 37
    invoke-virtual {p0}, Lon0;->G()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lon0;->E()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 44
    .line 45
    .line 46
    return v3
.end method

.method public final v(F)F
    .locals 2

    .line 1
    iget v0, p0, Lon0;->H0:F

    .line 2
    .line 3
    sub-float/2addr p1, v0

    .line 4
    iget v1, p0, Lon0;->I0:F

    .line 5
    .line 6
    sub-float/2addr v1, v0

    .line 7
    div-float/2addr p1, v1

    .line 8
    invoke-virtual {p0}, Lon0;->s()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0}, Lon0;->t()Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    return p1

    .line 22
    :cond_1
    :goto_0
    const/high16 p0, 0x3f800000    # 1.0f

    .line 23
    .line 24
    sub-float/2addr p0, p1

    .line 25
    return p0
.end method

.method public final w()V
    .locals 1

    .line 1
    iget-object p0, p0, Lon0;->y:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-static {p0}, Leq3;->h(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    throw p0
.end method

.method public final x()V
    .locals 3

    .line 1
    iget v0, p0, Lon0;->f0:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lon0;->g0:I

    .line 6
    .line 7
    const/4 v1, -0x1

    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    iget v2, p0, Lon0;->h0:I

    .line 11
    .line 12
    if-eq v2, v1, :cond_0

    .line 13
    .line 14
    iget v1, p0, Lon0;->i0:I

    .line 15
    .line 16
    iget v2, p0, Lon0;->K0:I

    .line 17
    .line 18
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {p0, v0, v1, v2}, Lon0;->y(IILjava/lang/Integer;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public final y(IILjava/lang/Integer;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    move v3, v2

    .line 7
    :goto_0
    iget-object v4, v0, Lon0;->j1:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v5

    .line 13
    if-ge v3, v5, :cond_3

    .line 14
    .line 15
    if-eqz p3, :cond_0

    .line 16
    .line 17
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    if-ne v3, v5, :cond_2

    .line 22
    .line 23
    :cond_0
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    check-cast v5, Lc95;

    .line 28
    .line 29
    new-instance v6, Lus2;

    .line 30
    .line 31
    invoke-direct {v6, v2}, Lus2;-><init>(I)V

    .line 32
    .line 33
    .line 34
    new-instance v7, Lus2;

    .line 35
    .line 36
    invoke-direct {v7, v2}, Lus2;-><init>(I)V

    .line 37
    .line 38
    .line 39
    new-instance v8, Lus2;

    .line 40
    .line 41
    invoke-direct {v8, v2}, Lus2;-><init>(I)V

    .line 42
    .line 43
    .line 44
    new-instance v9, Lus2;

    .line 45
    .line 46
    invoke-direct {v9, v2}, Lus2;-><init>(I)V

    .line 47
    .line 48
    .line 49
    int-to-float v10, v1

    .line 50
    const/high16 v11, 0x40000000    # 2.0f

    .line 51
    .line 52
    div-float/2addr v10, v11

    .line 53
    invoke-static {v2}, Lxh8;->e(I)Lzv1;

    .line 54
    .line 55
    .line 56
    move-result-object v11

    .line 57
    new-instance v12, Lf3;

    .line 58
    .line 59
    invoke-direct {v12, v10}, Lf3;-><init>(F)V

    .line 60
    .line 61
    .line 62
    new-instance v13, Lf3;

    .line 63
    .line 64
    invoke-direct {v13, v10}, Lf3;-><init>(F)V

    .line 65
    .line 66
    .line 67
    new-instance v14, Lf3;

    .line 68
    .line 69
    invoke-direct {v14, v10}, Lf3;-><init>(F)V

    .line 70
    .line 71
    .line 72
    new-instance v15, Lf3;

    .line 73
    .line 74
    invoke-direct {v15, v10}, Lf3;-><init>(F)V

    .line 75
    .line 76
    .line 77
    new-instance v10, Ltb7;

    .line 78
    .line 79
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 80
    .line 81
    .line 82
    iput-object v11, v10, Ltb7;->a:Lzv1;

    .line 83
    .line 84
    iput-object v11, v10, Ltb7;->b:Lzv1;

    .line 85
    .line 86
    iput-object v11, v10, Ltb7;->c:Lzv1;

    .line 87
    .line 88
    iput-object v11, v10, Ltb7;->d:Lzv1;

    .line 89
    .line 90
    iput-object v12, v10, Ltb7;->e:Llx1;

    .line 91
    .line 92
    iput-object v13, v10, Ltb7;->f:Llx1;

    .line 93
    .line 94
    iput-object v14, v10, Ltb7;->g:Llx1;

    .line 95
    .line 96
    iput-object v15, v10, Ltb7;->h:Llx1;

    .line 97
    .line 98
    iput-object v6, v10, Ltb7;->i:Lus2;

    .line 99
    .line 100
    iput-object v7, v10, Ltb7;->j:Lus2;

    .line 101
    .line 102
    iput-object v8, v10, Ltb7;->k:Lus2;

    .line 103
    .line 104
    iput-object v9, v10, Ltb7;->l:Lus2;

    .line 105
    .line 106
    invoke-virtual {v5, v10}, Lc95;->setShapeAppearanceModel(Ltb7;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    check-cast v4, Lc95;

    .line 114
    .line 115
    if-ltz p2, :cond_1

    .line 116
    .line 117
    move/from16 v5, p2

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_1
    iget v5, v0, Lon0;->d0:I

    .line 121
    .line 122
    :goto_1
    invoke-virtual {v4, v2, v2, v1, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 123
    .line 124
    .line 125
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_3
    invoke-virtual {v0, v2}, Lon0;->O(Z)V

    .line 129
    .line 130
    .line 131
    return-void
.end method

.method public final z(Lu88;F)V
    .locals 4

    .line 1
    float-to-int v0, p2

    .line 2
    int-to-float v0, v0

    .line 3
    cmpl-float v0, v0, p2

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, "%.0f"

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string v0, "%.2f"

    .line 11
    .line 12
    :goto_0
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v1, p1, Lu88;->Z:Ljava/lang/CharSequence;

    .line 25
    .line 26
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_1

    .line 31
    .line 32
    iput-object v0, p1, Lu88;->Z:Ljava/lang/CharSequence;

    .line 33
    .line 34
    iget-object v0, p1, Lu88;->c0:La18;

    .line 35
    .line 36
    const/4 v1, 0x1

    .line 37
    iput-boolean v1, v0, La18;->e:Z

    .line 38
    .line 39
    invoke-virtual {p1}, Lc95;->invalidateSelf()V

    .line 40
    .line 41
    .line 42
    :cond_1
    invoke-virtual {p0}, Lon0;->t()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    iget v1, p0, Lon0;->b0:I

    .line 47
    .line 48
    iget v2, p0, Lon0;->z0:I

    .line 49
    .line 50
    if-eqz v0, :cond_3

    .line 51
    .line 52
    invoke-virtual {p0, p2}, Lon0;->v(F)F

    .line 53
    .line 54
    .line 55
    move-result p2

    .line 56
    iget v0, p0, Lon0;->S0:I

    .line 57
    .line 58
    int-to-float v0, v0

    .line 59
    mul-float/2addr p2, v0

    .line 60
    float-to-int p2, p2

    .line 61
    add-int/2addr v1, p2

    .line 62
    invoke-virtual {p1}, Lu88;->getIntrinsicHeight()I

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    div-int/lit8 p2, p2, 0x2

    .line 67
    .line 68
    sub-int/2addr v1, p2

    .line 69
    invoke-virtual {p1}, Lu88;->getIntrinsicHeight()I

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    add-int/2addr p2, v1

    .line 74
    invoke-virtual {p0}, Lon0;->s()Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_2

    .line 79
    .line 80
    invoke-virtual {p0}, Lon0;->d()I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    iget v3, p0, Lon0;->d0:I

    .line 85
    .line 86
    div-int/lit8 v3, v3, 0x2

    .line 87
    .line 88
    add-int/2addr v3, v2

    .line 89
    sub-int/2addr v0, v3

    .line 90
    invoke-virtual {p1}, Lu88;->getIntrinsicWidth()I

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    :goto_1
    sub-int v2, v0, v2

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_2
    invoke-virtual {p0}, Lon0;->d()I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    iget v3, p0, Lon0;->d0:I

    .line 102
    .line 103
    div-int/lit8 v3, v3, 0x2

    .line 104
    .line 105
    add-int/2addr v3, v2

    .line 106
    add-int v2, v3, v0

    .line 107
    .line 108
    invoke-virtual {p1}, Lu88;->getIntrinsicWidth()I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    add-int/2addr v0, v2

    .line 113
    goto :goto_2

    .line 114
    :cond_3
    invoke-virtual {p0, p2}, Lon0;->v(F)F

    .line 115
    .line 116
    .line 117
    move-result p2

    .line 118
    iget v0, p0, Lon0;->S0:I

    .line 119
    .line 120
    int-to-float v0, v0

    .line 121
    mul-float/2addr p2, v0

    .line 122
    float-to-int p2, p2

    .line 123
    add-int/2addr v1, p2

    .line 124
    invoke-virtual {p1}, Lu88;->getIntrinsicWidth()I

    .line 125
    .line 126
    .line 127
    move-result p2

    .line 128
    div-int/lit8 p2, p2, 0x2

    .line 129
    .line 130
    sub-int/2addr v1, p2

    .line 131
    invoke-virtual {p1}, Lu88;->getIntrinsicWidth()I

    .line 132
    .line 133
    .line 134
    move-result p2

    .line 135
    add-int/2addr p2, v1

    .line 136
    invoke-virtual {p0}, Lon0;->d()I

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    iget v3, p0, Lon0;->d0:I

    .line 141
    .line 142
    div-int/lit8 v3, v3, 0x2

    .line 143
    .line 144
    add-int/2addr v3, v2

    .line 145
    sub-int/2addr v0, v3

    .line 146
    invoke-virtual {p1}, Lu88;->getIntrinsicHeight()I

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    goto :goto_1

    .line 151
    :goto_2
    iget-object v3, p0, Lon0;->f1:Landroid/graphics/Rect;

    .line 152
    .line 153
    invoke-virtual {v3, v1, v2, p2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0}, Lon0;->t()Z

    .line 157
    .line 158
    .line 159
    move-result p2

    .line 160
    if-eqz p2, :cond_4

    .line 161
    .line 162
    new-instance p2, Landroid/graphics/RectF;

    .line 163
    .line 164
    invoke-direct {p2, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 165
    .line 166
    .line 167
    iget-object v0, p0, Lon0;->i1:Landroid/graphics/Matrix;

    .line 168
    .line 169
    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 170
    .line 171
    .line 172
    invoke-virtual {p2, v3}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 173
    .line 174
    .line 175
    :cond_4
    invoke-static {p0}, Lyc9;->s(Lon0;)Landroid/view/ViewGroup;

    .line 176
    .line 177
    .line 178
    move-result-object p2

    .line 179
    invoke-static {p2, p0, v3}, Loi2;->c(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 183
    .line 184
    .line 185
    invoke-static {p0}, Lyc9;->s(Lon0;)Landroid/view/ViewGroup;

    .line 186
    .line 187
    .line 188
    move-result-object p0

    .line 189
    if-nez p0, :cond_5

    .line 190
    .line 191
    const/4 p0, 0x0

    .line 192
    goto :goto_3

    .line 193
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    .line 194
    .line 195
    .line 196
    move-result-object p0

    .line 197
    :goto_3
    if-nez p0, :cond_6

    .line 198
    .line 199
    return-void

    .line 200
    :cond_6
    invoke-virtual {p0, p1}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    .line 201
    .line 202
    .line 203
    return-void
.end method
