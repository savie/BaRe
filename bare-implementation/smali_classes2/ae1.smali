.class public final synthetic Lae1;
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
    iput p7, p0, Lae1;->a:I

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
    .locals 13

    .line 1
    iget v0, p0, Lae1;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    sget-object v3, Lbe8;->a:Lbe8;

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast p1, Ljava/lang/Exception;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Luz0;->receiver:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p0, Lpu3;

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lpu3;->k(Ljava/lang/Exception;)Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0

    .line 29
    :pswitch_0
    check-cast p1, Ljava/lang/String;

    .line 30
    .line 31
    iget-object p0, p0, Luz0;->receiver:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast p0, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;

    .line 34
    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    sget v0, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;->Z:I

    .line 38
    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    invoke-static {p1}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-nez v0, :cond_0

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    move-object p1, v4

    .line 50
    :goto_0
    if-eqz p1, :cond_1

    .line 51
    .line 52
    new-instance v4, Lq63;

    .line 53
    .line 54
    invoke-direct {v4, p1, v2}, Lq63;-><init>(Ljava/lang/String;I)V

    .line 55
    .line 56
    .line 57
    :cond_1
    iget-object p1, p0, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;->U:Lt9;

    .line 58
    .line 59
    new-instance v0, Landroid/content/Intent;

    .line 60
    .line 61
    const-class v1, Lorg/swiftapps/swiftbackup/folders/ui/FolderPickerActivity;

    .line 62
    .line 63
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 64
    .line 65
    .line 66
    const-string p0, "extra_initial_folder"

    .line 67
    .line 68
    invoke-virtual {v0, p0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, p0}, Lt9;->a(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    return-object v3

    .line 79
    :pswitch_1
    check-cast p1, Ljava/lang/Number;

    .line 80
    .line 81
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    iget-object p0, p0, Luz0;->receiver:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast p0, Lhc3;

    .line 88
    .line 89
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    new-instance p0, Ljava/security/SecureRandom;

    .line 93
    .line 94
    invoke-direct {p0}, Ljava/security/SecureRandom;-><init>()V

    .line 95
    .line 96
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 100
    .line 101
    .line 102
    :goto_1
    if-ge v1, p1, :cond_2

    .line 103
    .line 104
    sget-object v2, Ljc3;->q:Lhc3;

    .line 105
    .line 106
    const/16 v2, 0x3e

    .line 107
    .line 108
    invoke-virtual {p0, v2}, Ljava/util/Random;->nextInt(I)I

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    const-string v3, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"

    .line 113
    .line 114
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    add-int/lit8 v1, v1, 0x1

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    return-object p0

    .line 129
    :pswitch_2
    check-cast p1, Ljava/lang/String;

    .line 130
    .line 131
    iget-object p0, p0, Luz0;->receiver:Ljava/lang/Object;

    .line 132
    .line 133
    check-cast p0, Lb82;

    .line 134
    .line 135
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    .line 137
    .line 138
    invoke-static {p1}, Lb82;->o(Ljava/lang/String;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    return-object p0

    .line 143
    :pswitch_3
    check-cast p1, Li62;

    .line 144
    .line 145
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 146
    .line 147
    .line 148
    iget-object p0, p0, Luz0;->receiver:Ljava/lang/Object;

    .line 149
    .line 150
    check-cast p0, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;

    .line 151
    .line 152
    sget v0, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->P0:I

    .line 153
    .line 154
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 155
    .line 156
    .line 157
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .line 158
    .line 159
    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 160
    .line 161
    .line 162
    const v1, 0x7f1304b0

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 170
    .line 171
    .line 172
    const v1, 0x7f1304ae

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 180
    .line 181
    .line 182
    iget-object v5, p1, Li62;->a:Ljava/lang/String;

    .line 183
    .line 184
    invoke-static {v0, v1, v5}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->s0(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    const v1, 0x7f1304b5

    .line 188
    .line 189
    .line 190
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 195
    .line 196
    .line 197
    iget-object v5, p1, Li62;->b:Ljava/util/List;

    .line 198
    .line 199
    const/4 v9, 0x0

    .line 200
    const/16 v10, 0x3f

    .line 201
    .line 202
    const/4 v6, 0x0

    .line 203
    const/4 v7, 0x0

    .line 204
    const/4 v8, 0x0

    .line 205
    invoke-static/range {v5 .. v10}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v5

    .line 209
    invoke-static {v5}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 210
    .line 211
    .line 212
    move-result v6

    .line 213
    if-nez v6, :cond_3

    .line 214
    .line 215
    goto :goto_2

    .line 216
    :cond_3
    move-object v5, v4

    .line 217
    :goto_2
    const-string v6, "-"

    .line 218
    .line 219
    if-nez v5, :cond_4

    .line 220
    .line 221
    move-object v5, v6

    .line 222
    :cond_4
    invoke-static {v0, v1, v5}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->s0(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    const v1, 0x7f1304b3

    .line 226
    .line 227
    .line 228
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 233
    .line 234
    .line 235
    iget-object v5, p1, Li62;->c:Ljava/lang/String;

    .line 236
    .line 237
    iget-object v7, p1, Li62;->d:Ljava/lang/String;

    .line 238
    .line 239
    if-eqz v7, :cond_7

    .line 240
    .line 241
    invoke-static {v7}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 242
    .line 243
    .line 244
    move-result v8

    .line 245
    if-eqz v8, :cond_5

    .line 246
    .line 247
    goto :goto_3

    .line 248
    :cond_5
    if-eqz v5, :cond_7

    .line 249
    .line 250
    invoke-static {v5}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 251
    .line 252
    .line 253
    move-result v8

    .line 254
    if-eqz v8, :cond_6

    .line 255
    .line 256
    goto :goto_3

    .line 257
    :cond_6
    const-string v8, " ("

    .line 258
    .line 259
    const-string v9, ")"

    .line 260
    .line 261
    invoke-static {v7, v8, v5, v9}, Lu48;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v5

    .line 265
    goto :goto_5

    .line 266
    :cond_7
    :goto_3
    if-eqz v7, :cond_9

    .line 267
    .line 268
    invoke-static {v7}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 269
    .line 270
    .line 271
    move-result v8

    .line 272
    if-eqz v8, :cond_8

    .line 273
    .line 274
    goto :goto_4

    .line 275
    :cond_8
    move-object v5, v7

    .line 276
    goto :goto_5

    .line 277
    :cond_9
    :goto_4
    if-eqz v5, :cond_a

    .line 278
    .line 279
    invoke-static {v5}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 280
    .line 281
    .line 282
    move-result v7

    .line 283
    if-eqz v7, :cond_b

    .line 284
    .line 285
    :cond_a
    const v5, 0x7f1304b4

    .line 286
    .line 287
    .line 288
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v5

    .line 292
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 293
    .line 294
    .line 295
    :cond_b
    :goto_5
    invoke-static {v0, v1, v5}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->s0(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    const v1, 0x7f1304b2

    .line 299
    .line 300
    .line 301
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v1

    .line 305
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 306
    .line 307
    .line 308
    iget-object v7, p1, Li62;->e:Ljava/util/List;

    .line 309
    .line 310
    const/4 v11, 0x0

    .line 311
    const/16 v12, 0x3f

    .line 312
    .line 313
    const/4 v8, 0x0

    .line 314
    const/4 v9, 0x0

    .line 315
    const/4 v10, 0x0

    .line 316
    invoke-static/range {v7 .. v12}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object p1

    .line 320
    invoke-static {p1}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 321
    .line 322
    .line 323
    move-result v5

    .line 324
    if-nez v5, :cond_c

    .line 325
    .line 326
    goto :goto_6

    .line 327
    :cond_c
    move-object p1, v4

    .line 328
    :goto_6
    if-nez p1, :cond_d

    .line 329
    .line 330
    goto :goto_7

    .line 331
    :cond_d
    move-object v6, p1

    .line 332
    :goto_7
    invoke-static {v0, v1, v6}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->s0(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    const-string p1, "\n\n"

    .line 336
    .line 337
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 338
    .line 339
    .line 340
    const v1, 0x7f1304af

    .line 341
    .line 342
    .line 343
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v1

    .line 347
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 348
    .line 349
    .line 350
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 351
    .line 352
    .line 353
    new-instance p1, Landroid/text/style/StyleSpan;

    .line 354
    .line 355
    invoke-direct {p1, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 356
    .line 357
    .line 358
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 359
    .line 360
    .line 361
    move-result v1

    .line 362
    const v2, 0x7f1304b6

    .line 363
    .line 364
    .line 365
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v2

    .line 369
    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 370
    .line 371
    .line 372
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 373
    .line 374
    .line 375
    move-result v2

    .line 376
    const/16 v5, 0x11

    .line 377
    .line 378
    invoke-virtual {v0, p1, v1, v2, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 379
    .line 380
    .line 381
    const-string p1, "\n- "

    .line 382
    .line 383
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 384
    .line 385
    .line 386
    const v1, 0x7f1304b8

    .line 387
    .line 388
    .line 389
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v1

    .line 393
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 394
    .line 395
    .line 396
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 397
    .line 398
    .line 399
    const p1, 0x7f1304b7

    .line 400
    .line 401
    .line 402
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object p1

    .line 406
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 407
    .line 408
    .line 409
    new-instance p1, Landroid/text/SpannedString;

    .line 410
    .line 411
    invoke-direct {p1, v0}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    .line 412
    .line 413
    .line 414
    const/high16 v0, 0x41580000    # 13.5f

    .line 415
    .line 416
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 417
    .line 418
    .line 419
    move-result-object v0

    .line 420
    new-instance v1, Lhv1;

    .line 421
    .line 422
    const v2, 0x7f140160

    .line 423
    .line 424
    .line 425
    invoke-direct {v1, p0, v2}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 426
    .line 427
    .line 428
    new-instance v5, Ls35;

    .line 429
    .line 430
    invoke-direct {v5, p0, v2, v1, v0}, Ls35;-><init>(Lio1;ILhv1;Ljava/lang/Float;)V

    .line 431
    .line 432
    .line 433
    const v0, 0x7f1304b1

    .line 434
    .line 435
    .line 436
    invoke-virtual {v5, v0}, Lv75;->v(I)V

    .line 437
    .line 438
    .line 439
    iget-object v0, v5, Lva;->b:Ljava/lang/Object;

    .line 440
    .line 441
    check-cast v0, Lra;

    .line 442
    .line 443
    iput-object p1, v0, Lra;->f:Ljava/lang/CharSequence;

    .line 444
    .line 445
    new-instance p1, Liq1;

    .line 446
    .line 447
    const/4 v0, 0x2

    .line 448
    invoke-direct {p1, p0, v0}, Liq1;-><init>(Ljava/lang/Object;I)V

    .line 449
    .line 450
    .line 451
    const p0, 0x7f1304f2

    .line 452
    .line 453
    .line 454
    invoke-virtual {v5, p0, p1}, Lv75;->r(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 455
    .line 456
    .line 457
    const p0, 0x7f1303e6

    .line 458
    .line 459
    .line 460
    invoke-virtual {v5, p0, v4}, Lv75;->s(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 461
    .line 462
    .line 463
    invoke-virtual {v5}, Ls35;->m()Lwa;

    .line 464
    .line 465
    .line 466
    return-object v3

    .line 467
    :pswitch_4
    check-cast p1, Ljava/lang/String;

    .line 468
    .line 469
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 470
    .line 471
    .line 472
    iget-object p0, p0, Luz0;->receiver:Ljava/lang/Object;

    .line 473
    .line 474
    check-cast p0, Lng1;

    .line 475
    .line 476
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 477
    .line 478
    .line 479
    sget-object v0, Lzn4;->a:Lzn4;

    .line 480
    .line 481
    new-instance v0, Lkg1;

    .line 482
    .line 483
    invoke-direct {v0, p0, p1, v4}, Lkg1;-><init>(Lng1;Ljava/lang/String;Ljv1;)V

    .line 484
    .line 485
    .line 486
    invoke-static {v4, v0}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 487
    .line 488
    .line 489
    return-object v3

    .line 490
    :pswitch_5
    check-cast p1, Ldf1;

    .line 491
    .line 492
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 493
    .line 494
    .line 495
    iget-object p0, p0, Luz0;->receiver:Ljava/lang/Object;

    .line 496
    .line 497
    check-cast p0, Lorg/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsActivity;

    .line 498
    .line 499
    sget v0, Lorg/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsActivity;->Z:I

    .line 500
    .line 501
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 502
    .line 503
    .line 504
    instance-of v0, p1, Lze1;

    .line 505
    .line 506
    if-eqz v0, :cond_e

    .line 507
    .line 508
    sget-object v0, Lzn4;->a:Lzn4;

    .line 509
    .line 510
    new-instance v0, Lcv;

    .line 511
    .line 512
    const/4 v1, 0x3

    .line 513
    invoke-direct {v0, v1, p0, p1}, Lcv;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 514
    .line 515
    .line 516
    const-wide/16 p0, 0x12c

    .line 517
    .line 518
    invoke-static {p0, p1, v0}, Lzn4;->f(JLbt3;)V

    .line 519
    .line 520
    .line 521
    goto/16 :goto_9

    .line 522
    .line 523
    :cond_e
    instance-of v0, p1, Lbf1;

    .line 524
    .line 525
    if-eqz v0, :cond_11

    .line 526
    .line 527
    check-cast p1, Lbf1;

    .line 528
    .line 529
    iget-boolean v0, p1, Lbf1;->a:Z

    .line 530
    .line 531
    iget-object p1, p1, Lbf1;->b:Ljava/lang/String;

    .line 532
    .line 533
    sget-object v2, Ltb1;->a:Ltb1;

    .line 534
    .line 535
    invoke-static {}, Lqb1;->f()Ldd1;

    .line 536
    .line 537
    .line 538
    move-result-object v2

    .line 539
    if-eqz v0, :cond_f

    .line 540
    .line 541
    const-string v4, "PASS"

    .line 542
    .line 543
    goto :goto_8

    .line 544
    :cond_f
    const-string v4, "FAIL"

    .line 545
    .line 546
    :goto_8
    invoke-virtual {v2}, Ldd1;->getConstant()Ljava/lang/String;

    .line 547
    .line 548
    .line 549
    move-result-object v2

    .line 550
    const-string v5, " cloud="

    .line 551
    .line 552
    const-string v6, " detail="

    .line 553
    .line 554
    const-string v7, "RESULT status="

    .line 555
    .line 556
    invoke-static {v7, v4, v5, v2, v6}, Lu48;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    .line 558
    .line 559
    move-result-object v2

    .line 560
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    .line 562
    .line 563
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 564
    .line 565
    .line 566
    move-result-object p1

    .line 567
    const-string v2, "CloudDiagnosticsSmoke"

    .line 568
    .line 569
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    .line 571
    .line 572
    if-eqz v0, :cond_10

    .line 573
    .line 574
    const/4 v1, -0x1

    .line 575
    :cond_10
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 576
    .line 577
    .line 578
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 579
    .line 580
    .line 581
    goto :goto_9

    .line 582
    :cond_11
    instance-of v0, p1, Laf1;

    .line 583
    .line 584
    if-eqz v0, :cond_12

    .line 585
    .line 586
    check-cast p1, Laf1;

    .line 587
    .line 588
    iget-object p1, p1, Laf1;->a:Lye1;

    .line 589
    .line 590
    iget-object v0, p1, Lye1;->a:Ljava/lang/String;

    .line 591
    .line 592
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsActivity;->X:Ljava/lang/String;

    .line 593
    .line 594
    iget-boolean p1, p1, Lye1;->b:Z

    .line 595
    .line 596
    iput-boolean p1, p0, Lorg/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsActivity;->Y:Z

    .line 597
    .line 598
    invoke-virtual {p0, v0, p1}, Lorg/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsActivity;->X(Ljava/lang/String;Z)V

    .line 599
    .line 600
    .line 601
    goto :goto_9

    .line 602
    :cond_12
    instance-of v0, p1, Lcf1;

    .line 603
    .line 604
    if-eqz v0, :cond_13

    .line 605
    .line 606
    check-cast p1, Lcf1;

    .line 607
    .line 608
    iget p1, p1, Lcf1;->a:I

    .line 609
    .line 610
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 611
    .line 612
    .line 613
    move-result-object p1

    .line 614
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 615
    .line 616
    .line 617
    sget-object v0, Lzn4;->a:Lzn4;

    .line 618
    .line 619
    new-instance v0, Lcv;

    .line 620
    .line 621
    const/16 v1, 0xe

    .line 622
    .line 623
    invoke-direct {v0, v1, p0, p1}, Lcv;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 624
    .line 625
    .line 626
    invoke-static {v0}, Lzn4;->e(Lbt3;)V

    .line 627
    .line 628
    .line 629
    goto :goto_9

    .line 630
    :cond_13
    invoke-static {}, Lq;->j()V

    .line 631
    .line 632
    .line 633
    move-object v3, v4

    .line 634
    :goto_9
    return-object v3

    .line 635
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
