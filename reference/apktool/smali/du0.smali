.class public final Ldu0;
.super Lly8;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Ldu0;->f:I

    .line 2
    .line 3
    iput-object p1, p0, Ldu0;->g:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public H(I)V
    .locals 1

    .line 1
    iget v0, p0, Ldu0;->f:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    const/4 v0, 0x1

    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    iget-object p0, p0, Ldu0;->g:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 13
    .line 14
    iget-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->L:Z

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->M(I)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final I(Landroid/view/View;II)V
    .locals 0

    .line 1
    iget p1, p0, Ldu0;->f:I

    .line 2
    .line 3
    iget-object p0, p0, Ldu0;->g:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lcom/google/android/material/listitem/ListItemLayout;

    .line 9
    .line 10
    iget-object p1, p0, Lcom/google/android/material/listitem/ListItemLayout;->b:Lgl8;

    .line 11
    .line 12
    if-eqz p1, :cond_2

    .line 13
    .line 14
    iget-object p1, p0, Lcom/google/android/material/listitem/ListItemLayout;->f:Lcx4;

    .line 15
    .line 16
    if-eqz p1, :cond_2

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/google/android/material/listitem/ListItemLayout;->k()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/android/material/listitem/ListItemLayout;->n(I)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/google/android/material/listitem/ListItemLayout;->b:Lgl8;

    .line 29
    .line 30
    iget p1, p1, Lgl8;->a:I

    .line 31
    .line 32
    const/4 p2, 0x1

    .line 33
    if-ne p1, p2, :cond_2

    .line 34
    .line 35
    iget-object p1, p0, Lcom/google/android/material/listitem/ListItemLayout;->p:Lix4;

    .line 36
    .line 37
    if-eqz p1, :cond_2

    .line 38
    .line 39
    invoke-static {p1}, Llg7;->w(Landroid/view/View;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_1

    .line 44
    .line 45
    const/4 p1, 0x5

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const/4 p1, 0x3

    .line 48
    :goto_0
    invoke-virtual {p0, p2, p1}, Lcom/google/android/material/listitem/ListItemLayout;->i(II)V

    .line 49
    .line 50
    .line 51
    :cond_2
    :goto_1
    return-void

    .line 52
    :pswitch_0
    check-cast p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 53
    .line 54
    invoke-virtual {p0, p3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->A(I)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    nop

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final J(Landroid/view/View;FF)V
    .locals 10

    .line 1
    iget v0, p0, Ldu0;->f:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x4

    .line 5
    const/4 v3, 0x1

    .line 6
    iget-object p0, p0, Ldu0;->g:Ljava/lang/Object;

    .line 7
    .line 8
    const/4 v4, 0x3

    .line 9
    const/4 v5, 0x5

    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    check-cast p0, Lcom/google/android/material/listitem/ListItemLayout;

    .line 14
    .line 15
    iget-object p3, p0, Lcom/google/android/material/listitem/ListItemLayout;->f:Lcx4;

    .line 16
    .line 17
    if-eqz p3, :cond_f

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/google/android/material/listitem/ListItemLayout;->k()Z

    .line 20
    .line 21
    .line 22
    move-result p3

    .line 23
    if-eqz p3, :cond_f

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    iget p3, p0, Lcom/google/android/material/listitem/ListItemLayout;->e:I

    .line 30
    .line 31
    if-ne p1, p3, :cond_0

    .line 32
    .line 33
    goto/16 :goto_7

    .line 34
    .line 35
    :cond_0
    if-le p1, p3, :cond_1

    .line 36
    .line 37
    move p3, v4

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    move p3, v5

    .line 40
    :goto_0
    if-ne p3, v4, :cond_2

    .line 41
    .line 42
    iget-object v0, p0, Lcom/google/android/material/listitem/ListItemLayout;->k:Lix4;

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/listitem/ListItemLayout;->n:Lix4;

    .line 46
    .line 47
    :goto_1
    if-nez v0, :cond_3

    .line 48
    .line 49
    goto/16 :goto_7

    .line 50
    .line 51
    :cond_3
    sget-object v6, Lcom/google/android/material/listitem/ListItemLayout;->G:[I

    .line 52
    .line 53
    invoke-virtual {p0, p3}, Lcom/google/android/material/listitem/ListItemLayout;->l(I)Z

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    if-nez v6, :cond_5

    .line 58
    .line 59
    :cond_4
    move v2, v4

    .line 60
    goto/16 :goto_6

    .line 61
    .line 62
    :cond_5
    if-ne p3, v4, :cond_6

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_6
    neg-float p2, p2

    .line 66
    :goto_2
    invoke-virtual {p0, p3}, Lcom/google/android/material/listitem/ListItemLayout;->d(I)I

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    invoke-virtual {p0, p3}, Lcom/google/android/material/listitem/ListItemLayout;->e(I)I

    .line 71
    .line 72
    .line 73
    move-result v7

    .line 74
    invoke-virtual {v0}, Lix4;->getPrimaryActionSwipeMode()I

    .line 75
    .line 76
    .line 77
    move-result v8

    .line 78
    const/4 v9, 0x0

    .line 79
    if-eqz v8, :cond_7

    .line 80
    .line 81
    move v8, v3

    .line 82
    goto :goto_3

    .line 83
    :cond_7
    move v8, v9

    .line 84
    :goto_3
    invoke-virtual {v0}, Lix4;->getPrimaryActionSwipeMode()I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-ne v0, v1, :cond_8

    .line 89
    .line 90
    goto :goto_4

    .line 91
    :cond_8
    move v3, v9

    .line 92
    :goto_4
    const/high16 v0, 0x43fa0000    # 500.0f

    .line 93
    .line 94
    cmpl-float v0, p2, v0

    .line 95
    .line 96
    if-lez v0, :cond_9

    .line 97
    .line 98
    if-eqz v8, :cond_e

    .line 99
    .line 100
    iget p1, p0, Lcom/google/android/material/listitem/ListItemLayout;->x:I

    .line 101
    .line 102
    if-ne p1, v4, :cond_d

    .line 103
    .line 104
    if-nez v3, :cond_d

    .line 105
    .line 106
    goto :goto_6

    .line 107
    :cond_9
    const/high16 v0, -0x3c060000    # -500.0f

    .line 108
    .line 109
    cmpg-float p2, p2, v0

    .line 110
    .line 111
    if-gez p2, :cond_a

    .line 112
    .line 113
    if-nez v3, :cond_4

    .line 114
    .line 115
    iget p1, p0, Lcom/google/android/material/listitem/ListItemLayout;->x:I

    .line 116
    .line 117
    if-ne p1, v5, :cond_4

    .line 118
    .line 119
    goto :goto_6

    .line 120
    :cond_a
    if-eqz v8, :cond_b

    .line 121
    .line 122
    sub-int p2, p1, v7

    .line 123
    .line 124
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 125
    .line 126
    .line 127
    move-result p2

    .line 128
    sub-int v0, p1, v6

    .line 129
    .line 130
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    if-ge p2, v0, :cond_b

    .line 135
    .line 136
    goto :goto_5

    .line 137
    :cond_b
    if-eqz v8, :cond_c

    .line 138
    .line 139
    if-eqz v3, :cond_c

    .line 140
    .line 141
    move v6, v7

    .line 142
    :cond_c
    sub-int p2, p1, v6

    .line 143
    .line 144
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 145
    .line 146
    .line 147
    move-result p2

    .line 148
    invoke-static {p0}, Lcom/google/android/material/listitem/ListItemLayout;->a(Lcom/google/android/material/listitem/ListItemLayout;)I

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    sub-int/2addr p1, v0

    .line 153
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 154
    .line 155
    .line 156
    move-result p1

    .line 157
    if-ge p2, p1, :cond_4

    .line 158
    .line 159
    if-eqz v8, :cond_e

    .line 160
    .line 161
    if-eqz v3, :cond_e

    .line 162
    .line 163
    :cond_d
    :goto_5
    move v2, v5

    .line 164
    :cond_e
    :goto_6
    iget-object p1, p0, Lcom/google/android/material/listitem/ListItemLayout;->f:Lcx4;

    .line 165
    .line 166
    invoke-virtual {p0, p1, v2, p3}, Lcom/google/android/material/listitem/ListItemLayout;->j(Lcx4;II)V

    .line 167
    .line 168
    .line 169
    :cond_f
    :goto_7
    return-void

    .line 170
    :pswitch_0
    const/4 v0, 0x0

    .line 171
    cmpg-float v6, p3, v0

    .line 172
    .line 173
    check-cast p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 174
    .line 175
    const/4 v7, 0x6

    .line 176
    if-gez v6, :cond_12

    .line 177
    .line 178
    iget-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b:Z

    .line 179
    .line 180
    if-eqz p2, :cond_11

    .line 181
    .line 182
    :cond_10
    :goto_8
    move v2, v4

    .line 183
    goto/16 :goto_b

    .line 184
    .line 185
    :cond_11
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 186
    .line 187
    .line 188
    move-result p2

    .line 189
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 190
    .line 191
    .line 192
    iget p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->F:I

    .line 193
    .line 194
    if-le p2, p3, :cond_10

    .line 195
    .line 196
    goto :goto_9

    .line 197
    :cond_12
    iget-boolean v6, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->J:Z

    .line 198
    .line 199
    if-eqz v6, :cond_18

    .line 200
    .line 201
    invoke-virtual {p0, p1, p3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->N(Landroid/view/View;F)Z

    .line 202
    .line 203
    .line 204
    move-result v6

    .line 205
    if-eqz v6, :cond_18

    .line 206
    .line 207
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 208
    .line 209
    .line 210
    move-result p2

    .line 211
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    .line 212
    .line 213
    .line 214
    move-result v0

    .line 215
    cmpg-float p2, p2, v0

    .line 216
    .line 217
    if-gez p2, :cond_13

    .line 218
    .line 219
    iget p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->d:I

    .line 220
    .line 221
    int-to-float p2, p2

    .line 222
    cmpl-float p2, p3, p2

    .line 223
    .line 224
    if-gtz p2, :cond_14

    .line 225
    .line 226
    :cond_13
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 227
    .line 228
    .line 229
    move-result p2

    .line 230
    iget p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->X:I

    .line 231
    .line 232
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->E()I

    .line 233
    .line 234
    .line 235
    move-result v0

    .line 236
    add-int/2addr v0, p3

    .line 237
    div-int/2addr v0, v1

    .line 238
    if-le p2, v0, :cond_15

    .line 239
    .line 240
    :cond_14
    move v2, v5

    .line 241
    goto/16 :goto_b

    .line 242
    .line 243
    :cond_15
    iget-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b:Z

    .line 244
    .line 245
    if-eqz p2, :cond_16

    .line 246
    .line 247
    goto :goto_8

    .line 248
    :cond_16
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 249
    .line 250
    .line 251
    move-result p2

    .line 252
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->E()I

    .line 253
    .line 254
    .line 255
    move-result p3

    .line 256
    sub-int/2addr p2, p3

    .line 257
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 258
    .line 259
    .line 260
    move-result p2

    .line 261
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 262
    .line 263
    .line 264
    move-result p3

    .line 265
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->F:I

    .line 266
    .line 267
    sub-int/2addr p3, v0

    .line 268
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    .line 269
    .line 270
    .line 271
    move-result p3

    .line 272
    if-ge p2, p3, :cond_17

    .line 273
    .line 274
    goto :goto_8

    .line 275
    :cond_17
    :goto_9
    move v2, v7

    .line 276
    goto :goto_b

    .line 277
    :cond_18
    cmpl-float v0, p3, v0

    .line 278
    .line 279
    if-eqz v0, :cond_1b

    .line 280
    .line 281
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 282
    .line 283
    .line 284
    move-result p2

    .line 285
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    .line 286
    .line 287
    .line 288
    move-result p3

    .line 289
    cmpl-float p2, p2, p3

    .line 290
    .line 291
    if-lez p2, :cond_19

    .line 292
    .line 293
    goto :goto_a

    .line 294
    :cond_19
    iget-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b:Z

    .line 295
    .line 296
    if-eqz p2, :cond_1a

    .line 297
    .line 298
    goto :goto_b

    .line 299
    :cond_1a
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 300
    .line 301
    .line 302
    move-result p2

    .line 303
    iget p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->F:I

    .line 304
    .line 305
    sub-int p3, p2, p3

    .line 306
    .line 307
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    .line 308
    .line 309
    .line 310
    move-result p3

    .line 311
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->H:I

    .line 312
    .line 313
    sub-int/2addr p2, v0

    .line 314
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 315
    .line 316
    .line 317
    move-result p2

    .line 318
    if-ge p3, p2, :cond_1e

    .line 319
    .line 320
    goto :goto_9

    .line 321
    :cond_1b
    :goto_a
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 322
    .line 323
    .line 324
    move-result p2

    .line 325
    iget-boolean p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b:Z

    .line 326
    .line 327
    if-eqz p3, :cond_1c

    .line 328
    .line 329
    iget p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->E:I

    .line 330
    .line 331
    sub-int p3, p2, p3

    .line 332
    .line 333
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    .line 334
    .line 335
    .line 336
    move-result p3

    .line 337
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->H:I

    .line 338
    .line 339
    sub-int/2addr p2, v0

    .line 340
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 341
    .line 342
    .line 343
    move-result p2

    .line 344
    if-ge p3, p2, :cond_1e

    .line 345
    .line 346
    goto/16 :goto_8

    .line 347
    .line 348
    :cond_1c
    iget p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->F:I

    .line 349
    .line 350
    if-ge p2, p3, :cond_1d

    .line 351
    .line 352
    iget p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->H:I

    .line 353
    .line 354
    sub-int p3, p2, p3

    .line 355
    .line 356
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    .line 357
    .line 358
    .line 359
    move-result p3

    .line 360
    if-ge p2, p3, :cond_17

    .line 361
    .line 362
    goto/16 :goto_8

    .line 363
    .line 364
    :cond_1d
    sub-int p3, p2, p3

    .line 365
    .line 366
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    .line 367
    .line 368
    .line 369
    move-result p3

    .line 370
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->H:I

    .line 371
    .line 372
    sub-int/2addr p2, v0

    .line 373
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 374
    .line 375
    .line 376
    move-result p2

    .line 377
    if-ge p3, p2, :cond_1e

    .line 378
    .line 379
    goto :goto_9

    .line 380
    :cond_1e
    :goto_b
    invoke-virtual {p0, p1, v2, v3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->O(Landroid/view/View;IZ)V

    .line 381
    .line 382
    .line 383
    return-void

    .line 384
    nop

    .line 385
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final Q(Landroid/view/View;I)Z
    .locals 4

    .line 1
    iget v0, p0, Ldu0;->f:I

    .line 2
    .line 3
    iget-object p0, p0, Ldu0;->g:Ljava/lang/Object;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast p0, Lcom/google/android/material/listitem/ListItemLayout;

    .line 10
    .line 11
    iget-object p1, p0, Lcom/google/android/material/listitem/ListItemLayout;->f:Lcx4;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-boolean p1, p1, Lcx4;->I:Z

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/listitem/ListItemLayout;->k()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    iget-object p1, p0, Lcom/google/android/material/listitem/ListItemLayout;->f:Lcx4;

    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    iget-object p0, p0, Lcom/google/android/material/listitem/ListItemLayout;->b:Lgl8;

    .line 31
    .line 32
    invoke-virtual {p0, p1, p2}, Lgl8;->b(Landroid/view/View;I)V

    .line 33
    .line 34
    .line 35
    :cond_1
    :goto_0
    return v1

    .line 36
    :pswitch_0
    check-cast p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 37
    .line 38
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->P:I

    .line 39
    .line 40
    const/4 v2, 0x1

    .line 41
    if-ne v0, v2, :cond_2

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_2
    iget-boolean v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->g0:Z

    .line 45
    .line 46
    if-eqz v3, :cond_3

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_3
    const/4 v3, 0x3

    .line 50
    if-ne v0, v3, :cond_6

    .line 51
    .line 52
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->d0:I

    .line 53
    .line 54
    if-ne v0, p2, :cond_6

    .line 55
    .line 56
    iget-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e:Z

    .line 57
    .line 58
    const/4 v0, 0x0

    .line 59
    if-eqz p2, :cond_4

    .line 60
    .line 61
    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->f0:Ljava/lang/ref/WeakReference;

    .line 62
    .line 63
    if-eqz p2, :cond_5

    .line 64
    .line 65
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    move-object v0, p2

    .line 70
    check-cast v0, Landroid/view/View;

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_4
    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->Z:Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    if-nez v3, :cond_5

    .line 80
    .line 81
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    check-cast p2, Ljava/lang/ref/WeakReference;

    .line 86
    .line 87
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    move-object v0, p2

    .line 92
    check-cast v0, Landroid/view/View;

    .line 93
    .line 94
    :cond_5
    :goto_1
    if-eqz v0, :cond_6

    .line 95
    .line 96
    const/4 p2, -0x1

    .line 97
    invoke-virtual {v0, p2}, Landroid/view/View;->canScrollVertically(I)Z

    .line 98
    .line 99
    .line 100
    move-result p2

    .line 101
    if-eqz p2, :cond_6

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 105
    .line 106
    .line 107
    iget-object p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->Y:Ljava/lang/ref/WeakReference;

    .line 108
    .line 109
    if-eqz p0, :cond_7

    .line 110
    .line 111
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    if-ne p0, p1, :cond_7

    .line 116
    .line 117
    move v1, v2

    .line 118
    :cond_7
    :goto_2
    return v1

    .line 119
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public d0(Lix4;)I
    .locals 2

    .line 1
    iget-object p0, p0, Ldu0;->g:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/google/android/material/listitem/ListItemLayout;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 10
    .line 11
    invoke-virtual {p1}, Lix4;->getPrimaryActionSwipeMode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/google/android/material/listitem/ListItemLayout;->f:Lcx4;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 24
    .line 25
    invoke-static {p1}, Llg7;->w(Landroid/view/View;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 35
    .line 36
    :goto_0
    iget-object p0, p0, Lcom/google/android/material/listitem/ListItemLayout;->f:Lcx4;

    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    :goto_1
    add-int/2addr p0, p1

    .line 43
    return p0

    .line 44
    :cond_1
    invoke-virtual {p1}, Lix4;->getIntrinsicWidth()I

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    add-int/2addr p1, p0

    .line 53
    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    goto :goto_1
.end method

.method public final l(Landroid/view/View;I)I
    .locals 5

    .line 1
    iget v0, p0, Ldu0;->f:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Ldu0;->g:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p1, Lcom/google/android/material/listitem/ListItemLayout;

    .line 9
    .line 10
    iget-object v0, p1, Lcom/google/android/material/listitem/ListItemLayout;->f:Lcx4;

    .line 11
    .line 12
    if-eqz v0, :cond_3

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/google/android/material/listitem/ListItemLayout;->k()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    iget-object v0, p1, Lcom/google/android/material/listitem/ListItemLayout;->f:Lcx4;

    .line 22
    .line 23
    iget v1, p1, Lcom/google/android/material/listitem/ListItemLayout;->e:I

    .line 24
    .line 25
    iget-object v2, p1, Lcom/google/android/material/listitem/ListItemLayout;->n:Lix4;

    .line 26
    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    invoke-virtual {p0, v2}, Ldu0;->d0(Lix4;)I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    iget v3, p1, Lcom/google/android/material/listitem/ListItemLayout;->e:I

    .line 34
    .line 35
    invoke-virtual {v0}, Lcx4;->getSwipeMaxOvershoot()I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    add-int/2addr v4, v2

    .line 40
    sub-int/2addr v3, v4

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    move v3, v1

    .line 43
    :goto_0
    iget-object v2, p1, Lcom/google/android/material/listitem/ListItemLayout;->k:Lix4;

    .line 44
    .line 45
    if-eqz v2, :cond_2

    .line 46
    .line 47
    invoke-virtual {p0, v2}, Ldu0;->d0(Lix4;)I

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    iget p1, p1, Lcom/google/android/material/listitem/ListItemLayout;->e:I

    .line 52
    .line 53
    invoke-virtual {v0}, Lcx4;->getSwipeMaxOvershoot()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    add-int/2addr v0, p0

    .line 58
    add-int v1, v0, p1

    .line 59
    .line 60
    :cond_2
    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    invoke-static {v3, p0}, Ljava/lang/Math;->max(II)I

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    goto :goto_2

    .line 69
    :cond_3
    :goto_1
    const/4 p0, 0x0

    .line 70
    :goto_2
    return p0

    .line 71
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    return p0

    .line 76
    nop

    .line 77
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public m(Landroid/view/View;I)I
    .locals 1

    .line 1
    iget v0, p0, Ldu0;->f:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lly8;->m(Landroid/view/View;I)I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0

    .line 11
    :pswitch_0
    iget-object p1, p0, Ldu0;->g:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->E()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-virtual {p0}, Ldu0;->z()I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    invoke-static {p2, p1, p0}, Liz1;->d(III)I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    return p0

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public y(Landroid/view/View;)I
    .locals 2

    .line 1
    iget v0, p0, Ldu0;->f:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lly8;->y(Landroid/view/View;)I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0

    .line 11
    :pswitch_0
    iget-object p0, p0, Ldu0;->g:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Lcom/google/android/material/listitem/ListItemLayout;

    .line 14
    .line 15
    iget-object p1, p0, Lcom/google/android/material/listitem/ListItemLayout;->f:Lcx4;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    iget-object v1, p0, Lcom/google/android/material/listitem/ListItemLayout;->k:Lix4;

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {v1}, Lix4;->getIntrinsicWidth()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    invoke-virtual {p1}, Lcx4;->getSwipeMaxOvershoot()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    add-int/2addr v0, v1

    .line 33
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/listitem/ListItemLayout;->n:Lix4;

    .line 34
    .line 35
    if-eqz p0, :cond_1

    .line 36
    .line 37
    invoke-virtual {p0}, Lix4;->getIntrinsicWidth()I

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    invoke-virtual {p1}, Lcx4;->getSwipeMaxOvershoot()I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    add-int/2addr p1, p0

    .line 46
    add-int/2addr v0, p1

    .line 47
    :cond_1
    return v0

    .line 48
    nop

    .line 49
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public z()I
    .locals 1

    .line 1
    iget v0, p0, Ldu0;->f:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Lly8;->z()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0

    .line 11
    :pswitch_0
    iget-object p0, p0, Ldu0;->g:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 14
    .line 15
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->J:Z

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->X:I

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->H:I

    .line 23
    .line 24
    :goto_0
    return p0

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
