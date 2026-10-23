.class public final Landroidx/fragment/app/w;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;


# instance fields
.field public final a:Landroidx/fragment/app/z;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/z;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/fragment/app/w;->a:Landroidx/fragment/app/z;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 10

    .line 1
    const-class v0, Landroidx/fragment/app/FragmentContainerView;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Landroidx/fragment/app/w;->a:Landroidx/fragment/app/z;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    new-instance p0, Landroidx/fragment/app/FragmentContainerView;

    .line 16
    .line 17
    invoke-direct {p0, p3, p4, v1}, Landroidx/fragment/app/FragmentContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroidx/fragment/app/z;)V

    .line 18
    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_0
    const-string v0, "fragment"

    .line 22
    .line 23
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    const/4 v0, 0x0

    .line 28
    if-nez p2, :cond_1

    .line 29
    .line 30
    goto/16 :goto_5

    .line 31
    .line 32
    :cond_1
    const-string p2, "class"

    .line 33
    .line 34
    invoke-interface {p4, v0, p2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    sget-object v2, Lce6;->a:[I

    .line 39
    .line 40
    invoke-virtual {p3, p4, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    const/4 v3, 0x0

    .line 45
    if-nez p2, :cond_2

    .line 46
    .line 47
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    :cond_2
    const/4 v4, 0x1

    .line 52
    const/4 v5, -0x1

    .line 53
    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    const/4 v7, 0x2

    .line 58
    invoke-virtual {v2, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v8

    .line 62
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 63
    .line 64
    .line 65
    if-eqz p2, :cond_11

    .line 66
    .line 67
    invoke-virtual {p3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    :try_start_0
    invoke-static {v2, p2}, Lor3;->b(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    const-class v9, Landroidx/fragment/app/o;

    .line 76
    .line 77
    invoke-virtual {v9, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 78
    .line 79
    .line 80
    move-result v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    goto :goto_0

    .line 82
    :catch_0
    move v2, v3

    .line 83
    :goto_0
    if-nez v2, :cond_3

    .line 84
    .line 85
    goto/16 :goto_5

    .line 86
    .line 87
    :cond_3
    if-eqz p1, :cond_4

    .line 88
    .line 89
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    :cond_4
    if-ne v3, v5, :cond_6

    .line 94
    .line 95
    if-ne v6, v5, :cond_6

    .line 96
    .line 97
    if-eqz v8, :cond_5

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 101
    .line 102
    invoke-interface {p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    new-instance p3, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string p1, ": Must specify unique android:id, android:tag, or have a parent with an id for "

    .line 115
    .line 116
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    throw p0

    .line 130
    :cond_6
    :goto_1
    if-eq v6, v5, :cond_7

    .line 131
    .line 132
    invoke-virtual {v1, v6}, Landroidx/fragment/app/z;->C(I)Landroidx/fragment/app/o;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    goto :goto_2

    .line 137
    :cond_7
    move-object v2, v0

    .line 138
    :goto_2
    if-nez v2, :cond_8

    .line 139
    .line 140
    if-eqz v8, :cond_8

    .line 141
    .line 142
    invoke-virtual {v1, v8}, Landroidx/fragment/app/z;->D(Ljava/lang/String;)Landroidx/fragment/app/o;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    :cond_8
    if-nez v2, :cond_9

    .line 147
    .line 148
    if-eq v3, v5, :cond_9

    .line 149
    .line 150
    invoke-virtual {v1, v3}, Landroidx/fragment/app/z;->C(I)Landroidx/fragment/app/o;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    :cond_9
    const-string v5, "Fragment "

    .line 155
    .line 156
    const-string v9, "FragmentManager"

    .line 157
    .line 158
    if-nez v2, :cond_b

    .line 159
    .line 160
    invoke-virtual {v1}, Landroidx/fragment/app/z;->H()Lor3;

    .line 161
    .line 162
    .line 163
    move-result-object p4

    .line 164
    invoke-virtual {p3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 165
    .line 166
    .line 167
    invoke-virtual {p4, p2}, Lor3;->a(Ljava/lang/String;)Landroidx/fragment/app/o;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    iput-boolean v4, v2, Landroidx/fragment/app/o;->mFromLayout:Z

    .line 172
    .line 173
    if-eqz v6, :cond_a

    .line 174
    .line 175
    move p3, v6

    .line 176
    goto :goto_3

    .line 177
    :cond_a
    move p3, v3

    .line 178
    :goto_3
    iput p3, v2, Landroidx/fragment/app/o;->mFragmentId:I

    .line 179
    .line 180
    iput v3, v2, Landroidx/fragment/app/o;->mContainerId:I

    .line 181
    .line 182
    iput-object v8, v2, Landroidx/fragment/app/o;->mTag:Ljava/lang/String;

    .line 183
    .line 184
    iput-boolean v4, v2, Landroidx/fragment/app/o;->mInLayout:Z

    .line 185
    .line 186
    iput-object v1, v2, Landroidx/fragment/app/o;->mFragmentManager:Landroidx/fragment/app/z;

    .line 187
    .line 188
    iget-object p3, v1, Landroidx/fragment/app/z;->w:Landroidx/fragment/app/t;

    .line 189
    .line 190
    iput-object p3, v2, Landroidx/fragment/app/o;->mHost:Landroidx/fragment/app/t;

    .line 191
    .line 192
    iget-object p3, p3, Landroidx/fragment/app/t;->e:Landroidx/fragment/app/u;

    .line 193
    .line 194
    invoke-virtual {v2}, Landroidx/fragment/app/o;->onInflate()V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v1, v2}, Landroidx/fragment/app/z;->a(Landroidx/fragment/app/o;)Landroidx/fragment/app/d0;

    .line 198
    .line 199
    .line 200
    move-result-object p3

    .line 201
    invoke-static {v7}, Landroidx/fragment/app/z;->K(I)Z

    .line 202
    .line 203
    .line 204
    move-result p4

    .line 205
    if-eqz p4, :cond_c

    .line 206
    .line 207
    new-instance p4, Ljava/lang/StringBuilder;

    .line 208
    .line 209
    invoke-direct {p4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    const-string v1, " has been inflated via the <fragment> tag: id=0x"

    .line 216
    .line 217
    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object p4

    .line 231
    invoke-static {v9, p4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    .line 233
    .line 234
    goto :goto_4

    .line 235
    :cond_b
    iget-boolean p3, v2, Landroidx/fragment/app/o;->mInLayout:Z

    .line 236
    .line 237
    if-nez p3, :cond_10

    .line 238
    .line 239
    iput-boolean v4, v2, Landroidx/fragment/app/o;->mInLayout:Z

    .line 240
    .line 241
    iput-object v1, v2, Landroidx/fragment/app/o;->mFragmentManager:Landroidx/fragment/app/z;

    .line 242
    .line 243
    iget-object p3, v1, Landroidx/fragment/app/z;->w:Landroidx/fragment/app/t;

    .line 244
    .line 245
    iput-object p3, v2, Landroidx/fragment/app/o;->mHost:Landroidx/fragment/app/t;

    .line 246
    .line 247
    iget-object p3, p3, Landroidx/fragment/app/t;->e:Landroidx/fragment/app/u;

    .line 248
    .line 249
    invoke-virtual {v2}, Landroidx/fragment/app/o;->onInflate()V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v1, v2}, Landroidx/fragment/app/z;->g(Landroidx/fragment/app/o;)Landroidx/fragment/app/d0;

    .line 253
    .line 254
    .line 255
    move-result-object p3

    .line 256
    invoke-static {v7}, Landroidx/fragment/app/z;->K(I)Z

    .line 257
    .line 258
    .line 259
    move-result p4

    .line 260
    if-eqz p4, :cond_c

    .line 261
    .line 262
    new-instance p4, Ljava/lang/StringBuilder;

    .line 263
    .line 264
    const-string v1, "Retained Fragment "

    .line 265
    .line 266
    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    const-string v1, " has been re-attached via the <fragment> tag: id=0x"

    .line 273
    .line 274
    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v1

    .line 281
    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object p4

    .line 288
    invoke-static {v9, p4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    .line 290
    .line 291
    :cond_c
    :goto_4
    check-cast p1, Landroid/view/ViewGroup;

    .line 292
    .line 293
    sget-object p4, Lbs3;->a:Las3;

    .line 294
    .line 295
    new-instance p4, Lcs3;

    .line 296
    .line 297
    new-instance v1, Ljava/lang/StringBuilder;

    .line 298
    .line 299
    const-string v3, "Attempting to use <fragment> tag to add fragment "

    .line 300
    .line 301
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    const-string v3, " to container "

    .line 308
    .line 309
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v1

    .line 319
    invoke-direct {p4, v2, v1}, Lgn8;-><init>(Landroidx/fragment/app/o;Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    invoke-static {p4}, Lbs3;->b(Lgn8;)V

    .line 323
    .line 324
    .line 325
    invoke-static {v2}, Lbs3;->a(Landroidx/fragment/app/o;)Las3;

    .line 326
    .line 327
    .line 328
    move-result-object p4

    .line 329
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 330
    .line 331
    .line 332
    iput-object p1, v2, Landroidx/fragment/app/o;->mContainer:Landroid/view/ViewGroup;

    .line 333
    .line 334
    invoke-virtual {p3}, Landroidx/fragment/app/d0;->k()V

    .line 335
    .line 336
    .line 337
    invoke-virtual {p3}, Landroidx/fragment/app/d0;->j()V

    .line 338
    .line 339
    .line 340
    iget-object p1, v2, Landroidx/fragment/app/o;->mView:Landroid/view/View;

    .line 341
    .line 342
    if-eqz p1, :cond_f

    .line 343
    .line 344
    if-eqz v6, :cond_d

    .line 345
    .line 346
    invoke-virtual {p1, v6}, Landroid/view/View;->setId(I)V

    .line 347
    .line 348
    .line 349
    :cond_d
    iget-object p1, v2, Landroidx/fragment/app/o;->mView:Landroid/view/View;

    .line 350
    .line 351
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 352
    .line 353
    .line 354
    move-result-object p1

    .line 355
    if-nez p1, :cond_e

    .line 356
    .line 357
    iget-object p1, v2, Landroidx/fragment/app/o;->mView:Landroid/view/View;

    .line 358
    .line 359
    invoke-virtual {p1, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 360
    .line 361
    .line 362
    :cond_e
    iget-object p1, v2, Landroidx/fragment/app/o;->mView:Landroid/view/View;

    .line 363
    .line 364
    new-instance p2, Landroidx/fragment/app/v;

    .line 365
    .line 366
    invoke-direct {p2, p0, p3}, Landroidx/fragment/app/v;-><init>(Landroidx/fragment/app/w;Landroidx/fragment/app/d0;)V

    .line 367
    .line 368
    .line 369
    invoke-virtual {p1, p2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 370
    .line 371
    .line 372
    iget-object p0, v2, Landroidx/fragment/app/o;->mView:Landroid/view/View;

    .line 373
    .line 374
    return-object p0

    .line 375
    :cond_f
    const-string p0, " did not create a view."

    .line 376
    .line 377
    invoke-static {v5, p2, p0}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object p0

    .line 381
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    return-object v0

    .line 385
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 386
    .line 387
    invoke-interface {p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object p1

    .line 391
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object p3

    .line 395
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object p4

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    .line 400
    .line 401
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 402
    .line 403
    .line 404
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    .line 406
    .line 407
    const-string p1, ": Duplicate id 0x"

    .line 408
    .line 409
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    .line 411
    .line 412
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    .line 414
    .line 415
    const-string p1, ", tag "

    .line 416
    .line 417
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    .line 419
    .line 420
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    .line 422
    .line 423
    const-string p1, ", or parent id 0x"

    .line 424
    .line 425
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    .line 427
    .line 428
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    .line 430
    .line 431
    const-string p1, " with another fragment for "

    .line 432
    .line 433
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    .line 435
    .line 436
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    .line 438
    .line 439
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object p1

    .line 443
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 444
    .line 445
    .line 446
    throw p0

    .line 447
    :cond_11
    :goto_5
    return-object v0
.end method

.method public final onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    .line 448
    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/fragment/app/w;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method
