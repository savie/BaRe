.class public final synthetic Lx11;
.super Lcu3;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 1
    iput p7, p0, Lx11;->a:I

    .line 2
    .line 3
    invoke-direct/range {p0 .. p6}, Lbu3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Lx11;->a:I

    .line 2
    .line 3
    sget-object v1, Lbe8;->a:Lbe8;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Lbt3;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Luz0;->receiver:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p0, Lzn4;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-static {p1}, Lzn4;->e(Lbt3;)V

    .line 21
    .line 22
    .line 23
    return-object v1

    .line 24
    :pswitch_0
    check-cast p1, Lhk6;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Luz0;->receiver:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast p0, Lkp3;

    .line 32
    .line 33
    iget-object v0, p0, Lrl0;->a:Ljava/lang/String;

    .line 34
    .line 35
    new-instance v2, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v3, "onViewStatusUpdate: "

    .line 38
    .line 39
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    sget-object v0, Lhk6;->Loading:Lhk6;

    .line 53
    .line 54
    const/4 v2, 0x0

    .line 55
    const/4 v3, 0x1

    .line 56
    if-ne p1, v0, :cond_0

    .line 57
    .line 58
    move v0, v3

    .line 59
    goto :goto_0

    .line 60
    :cond_0
    move v0, v2

    .line 61
    :goto_0
    invoke-virtual {p0}, Lkp3;->l()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    iget-boolean v4, v4, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->c:Z

    .line 66
    .line 67
    const/4 v5, 0x2

    .line 68
    if-ne v0, v4, :cond_1

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_1
    if-eqz v0, :cond_2

    .line 72
    .line 73
    invoke-virtual {p0}, Lkp3;->l()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v0, v3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_2
    invoke-virtual {p0}, Lkp3;->l()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    new-instance v4, Lw7;

    .line 86
    .line 87
    invoke-direct {v4, p0, v5}, Lw7;-><init>(Ljava/lang/Object;I)V

    .line 88
    .line 89
    .line 90
    const-wide/16 v6, 0x5dc

    .line 91
    .line 92
    invoke-virtual {v0, v4, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 93
    .line 94
    .line 95
    :goto_1
    invoke-virtual {p0}, Lkp3;->k()Landroidx/recyclerview/widget/RecyclerView;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    sget-object v4, Lhk6;->Success:Lhk6;

    .line 100
    .line 101
    if-ne p1, v4, :cond_3

    .line 102
    .line 103
    move v6, v3

    .line 104
    goto :goto_2

    .line 105
    :cond_3
    move v6, v2

    .line 106
    :goto_2
    invoke-static {v0, v6}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Lkp3;->j()Lzx2;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    iget-object v0, v0, Lzx2;->a:Landroid/widget/LinearLayout;

    .line 114
    .line 115
    invoke-virtual {p1}, Lhk6;->isEmpty()Z

    .line 116
    .line 117
    .line 118
    move-result v6

    .line 119
    if-nez v6, :cond_5

    .line 120
    .line 121
    invoke-virtual {p1}, Lhk6;->isError()Z

    .line 122
    .line 123
    .line 124
    move-result v6

    .line 125
    if-eqz v6, :cond_4

    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_4
    move v6, v2

    .line 129
    goto :goto_4

    .line 130
    :cond_5
    :goto_3
    move v6, v3

    .line 131
    :goto_4
    invoke-static {v0, v6}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0}, Lkp3;->j()Lzx2;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    iget-object v0, v0, Lzx2;->c:Lcom/google/android/material/button/MaterialButton;

    .line 139
    .line 140
    const/16 v6, 0x8

    .line 141
    .line 142
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 143
    .line 144
    .line 145
    iget-object v0, p0, Lrl0;->b:Ljk8;

    .line 146
    .line 147
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 148
    .line 149
    .line 150
    check-cast v0, Llp3;

    .line 151
    .line 152
    iget-object v0, v0, Llp3;->b:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 153
    .line 154
    if-ne p1, v4, :cond_6

    .line 155
    .line 156
    move v4, v3

    .line 157
    goto :goto_5

    .line 158
    :cond_6
    move v4, v2

    .line 159
    :goto_5
    invoke-static {v0, v4}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 160
    .line 161
    .line 162
    sget-object v0, Lhp3;->a:[I

    .line 163
    .line 164
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 165
    .line 166
    .line 167
    move-result p1

    .line 168
    aget p1, v0, p1

    .line 169
    .line 170
    const v0, 0x7f080117

    .line 171
    .line 172
    .line 173
    if-eq p1, v3, :cond_a

    .line 174
    .line 175
    if-eq p1, v5, :cond_9

    .line 176
    .line 177
    const/4 v3, 0x3

    .line 178
    const v4, 0x7f13049a

    .line 179
    .line 180
    .line 181
    if-eq p1, v3, :cond_8

    .line 182
    .line 183
    const/4 v3, 0x4

    .line 184
    if-eq p1, v3, :cond_7

    .line 185
    .line 186
    goto/16 :goto_6

    .line 187
    .line 188
    :cond_7
    invoke-virtual {p0}, Lkp3;->j()Lzx2;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    iget-object v3, p1, Lzx2;->d:Landroid/widget/ImageView;

    .line 193
    .line 194
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 195
    .line 196
    .line 197
    iget-object v0, p1, Lzx2;->e:Landroid/widget/TextView;

    .line 198
    .line 199
    const v3, 0x7f1303c8

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 203
    .line 204
    .line 205
    iget-object p1, p1, Lzx2;->b:Lcom/google/android/material/button/MaterialButton;

    .line 206
    .line 207
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 211
    .line 212
    .line 213
    new-instance v0, Lep3;

    .line 214
    .line 215
    invoke-direct {v0, p0, v2}, Lep3;-><init>(Lkp3;I)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    .line 220
    .line 221
    goto/16 :goto_6

    .line 222
    .line 223
    :cond_8
    invoke-virtual {p0}, Lkp3;->j()Lzx2;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    iget-object v3, p1, Lzx2;->d:Landroid/widget/ImageView;

    .line 228
    .line 229
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 230
    .line 231
    .line 232
    iget-object v0, p1, Lzx2;->e:Landroid/widget/TextView;

    .line 233
    .line 234
    const v3, 0x7f130581

    .line 235
    .line 236
    .line 237
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 238
    .line 239
    .line 240
    iget-object p1, p1, Lzx2;->b:Lcom/google/android/material/button/MaterialButton;

    .line 241
    .line 242
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 246
    .line 247
    .line 248
    new-instance v0, Ldp3;

    .line 249
    .line 250
    invoke-direct {v0, p0, v2}, Ldp3;-><init>(Lkp3;I)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    .line 255
    .line 256
    goto/16 :goto_6

    .line 257
    .line 258
    :cond_9
    invoke-virtual {p0}, Lkp3;->j()Lzx2;

    .line 259
    .line 260
    .line 261
    move-result-object p1

    .line 262
    iget-object v3, p1, Lzx2;->d:Landroid/widget/ImageView;

    .line 263
    .line 264
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 265
    .line 266
    .line 267
    iget-object v0, p1, Lzx2;->e:Landroid/widget/TextView;

    .line 268
    .line 269
    const v3, 0x7f13016d

    .line 270
    .line 271
    .line 272
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 273
    .line 274
    .line 275
    iget-object p1, p1, Lzx2;->b:Lcom/google/android/material/button/MaterialButton;

    .line 276
    .line 277
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 278
    .line 279
    .line 280
    const v0, 0x7f1301b4

    .line 281
    .line 282
    .line 283
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 284
    .line 285
    .line 286
    new-instance v0, Lhs;

    .line 287
    .line 288
    const/4 v2, 0x6

    .line 289
    invoke-direct {v0, p0, v2}, Lhs;-><init>(Ljava/lang/Object;I)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    .line 294
    .line 295
    goto :goto_6

    .line 296
    :cond_a
    invoke-virtual {p0}, Lkp3;->j()Lzx2;

    .line 297
    .line 298
    .line 299
    move-result-object p1

    .line 300
    iget-object v4, p1, Lzx2;->b:Lcom/google/android/material/button/MaterialButton;

    .line 301
    .line 302
    iget-object v5, p1, Lzx2;->e:Landroid/widget/TextView;

    .line 303
    .line 304
    iget-object v7, p0, Lkp3;->d:Lto3;

    .line 305
    .line 306
    if-eqz v7, :cond_c

    .line 307
    .line 308
    invoke-virtual {v7}, Lto3;->isCloudSection()Z

    .line 309
    .line 310
    .line 311
    move-result v7

    .line 312
    iget-object v8, p1, Lzx2;->d:Landroid/widget/ImageView;

    .line 313
    .line 314
    if-eqz v7, :cond_b

    .line 315
    .line 316
    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 317
    .line 318
    .line 319
    const p0, 0x7f1303bd

    .line 320
    .line 321
    .line 322
    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setText(I)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 326
    .line 327
    .line 328
    goto :goto_6

    .line 329
    :cond_b
    const v0, 0x7f08014a

    .line 330
    .line 331
    .line 332
    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 333
    .line 334
    .line 335
    const v0, 0x7f1301ce

    .line 336
    .line 337
    .line 338
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(I)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 342
    .line 343
    .line 344
    const v0, 0x7f1303b4

    .line 345
    .line 346
    .line 347
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(I)V

    .line 348
    .line 349
    .line 350
    new-instance v0, Ldp3;

    .line 351
    .line 352
    invoke-direct {v0, p0, v3}, Ldp3;-><init>(Lkp3;I)V

    .line 353
    .line 354
    .line 355
    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 356
    .line 357
    .line 358
    iget-object p1, p1, Lzx2;->c:Lcom/google/android/material/button/MaterialButton;

    .line 359
    .line 360
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 361
    .line 362
    .line 363
    const v0, 0x7f1301c3

    .line 364
    .line 365
    .line 366
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 367
    .line 368
    .line 369
    new-instance v0, Lep3;

    .line 370
    .line 371
    invoke-direct {v0, p0, v3}, Lep3;-><init>(Lkp3;I)V

    .line 372
    .line 373
    .line 374
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 375
    .line 376
    .line 377
    :goto_6
    return-object v1

    .line 378
    :cond_c
    const-string p0, "section"

    .line 379
    .line 380
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    const/4 p0, 0x0

    .line 384
    throw p0

    .line 385
    :pswitch_1
    check-cast p1, Ljava/io/File;

    .line 386
    .line 387
    iget-object p0, p0, Luz0;->receiver:Ljava/lang/Object;

    .line 388
    .line 389
    check-cast p0, Lp63;

    .line 390
    .line 391
    invoke-virtual {p0, p1}, Lp63;->b(Ljava/io/File;)V

    .line 392
    .line 393
    .line 394
    return-object v1

    .line 395
    :pswitch_2
    check-cast p1, Ljava/lang/Number;

    .line 396
    .line 397
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 398
    .line 399
    .line 400
    move-result p1

    .line 401
    iget-object p0, p0, Luz0;->receiver:Ljava/lang/Object;

    .line 402
    .line 403
    check-cast p0, Lz11;

    .line 404
    .line 405
    invoke-static {p0, p1}, Lz11;->p(Lz11;I)I

    .line 406
    .line 407
    .line 408
    move-result p0

    .line 409
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 410
    .line 411
    .line 412
    move-result-object p0

    .line 413
    return-object p0

    .line 414
    nop

    .line 415
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
