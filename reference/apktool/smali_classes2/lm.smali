.class public final synthetic Llm;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Llm;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Llm;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Llm;->a:I

    .line 4
    .line 5
    const/16 v2, 0x8

    .line 6
    .line 7
    const v3, 0x7f08018b

    .line 8
    .line 9
    .line 10
    const/16 v4, 0x7d4

    .line 11
    .line 12
    const/4 v5, 0x3

    .line 13
    const/4 v6, 0x0

    .line 14
    const/4 v7, 0x2

    .line 15
    const/4 v8, 0x1

    .line 16
    const/4 v9, 0x0

    .line 17
    sget-object v10, Lbe8;->a:Lbe8;

    .line 18
    .line 19
    iget-object v0, v0, Llm;->b:Ljava/lang/Object;

    .line 20
    .line 21
    packed-switch v1, :pswitch_data_0

    .line 22
    .line 23
    .line 24
    check-cast v0, Luo8;

    .line 25
    .line 26
    move-object/from16 v1, p1

    .line 27
    .line 28
    check-cast v1, Ljava/lang/Integer;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Luo8;->a()V

    .line 34
    .line 35
    .line 36
    return-object v10

    .line 37
    :pswitch_0
    check-cast v0, Li08;

    .line 38
    .line 39
    move-object/from16 v1, p1

    .line 40
    .line 41
    check-cast v1, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;

    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    iput-object v1, v0, Li08;->c:Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;

    .line 47
    .line 48
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->getCloudServiceId()Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-static {v2}, Lzm5;->u(Lorg/swiftapps/swiftbackup/cloud/protocols/CloudServiceId;)Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-eqz v2, :cond_0

    .line 57
    .line 58
    sget-object v2, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->Companion:Lm08;

    .line 59
    .line 60
    iget-object v0, v0, Li08;->b:Ldd1;

    .line 61
    .line 62
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    invoke-static {v0, v1}, Lm08;->c(Ldd1;Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;)V

    .line 66
    .line 67
    .line 68
    :cond_0
    return-object v10

    .line 69
    :pswitch_1
    check-cast v0, Lmi2;

    .line 70
    .line 71
    move-object/from16 v1, p1

    .line 72
    .line 73
    check-cast v1, Lis3;

    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    iput-object v1, v0, Lmi2;->h:Ljava/lang/Object;

    .line 79
    .line 80
    return-object v10

    .line 81
    :pswitch_2
    check-cast v0, Lorg/swiftapps/swiftbackup/cloud/connect/NoGmsSignInActivity;

    .line 82
    .line 83
    move-object/from16 v1, p1

    .line 84
    .line 85
    check-cast v1, Landroid/content/Intent;

    .line 86
    .line 87
    sget v2, Lorg/swiftapps/swiftbackup/cloud/connect/NoGmsSignInActivity;->M:I

    .line 88
    .line 89
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v1, v4}, Lorg/swiftapps/swiftbackup/cloud/connect/NoGmsSignInActivity;->O(Landroid/content/Intent;I)V

    .line 93
    .line 94
    .line 95
    return-object v10

    .line 96
    :pswitch_3
    check-cast v0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;

    .line 97
    .line 98
    iget-object v1, v0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->Z:Lgv7;

    .line 99
    .line 100
    move-object/from16 v2, p1

    .line 101
    .line 102
    check-cast v2, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/f$a;

    .line 103
    .line 104
    sget v4, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->c0:I

    .line 105
    .line 106
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0}, Lk28;->r()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    new-instance v11, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    const-string v12, "updateViews: status = "

    .line 116
    .line 117
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v11

    .line 127
    invoke-static {v4, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    sget-object v4, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/e;->a:[I

    .line 131
    .line 132
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    aget v2, v4, v2

    .line 137
    .line 138
    if-eq v2, v8, :cond_3

    .line 139
    .line 140
    if-eq v2, v7, :cond_2

    .line 141
    .line 142
    if-ne v2, v5, :cond_1

    .line 143
    .line 144
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->W()Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->Y()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 149
    .line 150
    .line 151
    move-result-object v4

    .line 152
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->Z()Landroidx/recyclerview/widget/RecyclerView;

    .line 153
    .line 154
    .line 155
    move-result-object v6

    .line 156
    new-array v11, v5, [Landroid/view/View;

    .line 157
    .line 158
    aput-object v2, v11, v9

    .line 159
    .line 160
    aput-object v4, v11, v8

    .line 161
    .line 162
    aput-object v6, v11, v7

    .line 163
    .line 164
    invoke-static {v11, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    check-cast v2, [Landroid/view/View;

    .line 169
    .line 170
    invoke-virtual {v0, v9, v2}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->V(Z[Landroid/view/View;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->X()Lzx2;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    iget-object v2, v2, Lzx2;->a:Landroid/widget/LinearLayout;

    .line 178
    .line 179
    new-array v4, v8, [Landroid/view/View;

    .line 180
    .line 181
    aput-object v2, v4, v9

    .line 182
    .line 183
    invoke-static {v4, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    check-cast v2, [Landroid/view/View;

    .line 188
    .line 189
    invoke-virtual {v0, v8, v2}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->V(Z[Landroid/view/View;)V

    .line 190
    .line 191
    .line 192
    iget-object v2, v0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->Y:Lgv7;

    .line 193
    .line 194
    invoke-virtual {v2}, Lgv7;->getValue()Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    check-cast v2, Landroid/widget/ImageView;

    .line 199
    .line 200
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 201
    .line 202
    .line 203
    iget-object v2, v0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->X:Lgv7;

    .line 204
    .line 205
    invoke-virtual {v2}, Lgv7;->getValue()Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    check-cast v2, Landroid/widget/TextView;

    .line 210
    .line 211
    const v3, 0x7f1303cd

    .line 212
    .line 213
    .line 214
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 222
    .line 223
    .line 224
    check-cast v2, Landroid/widget/Button;

    .line 225
    .line 226
    const v3, 0x7f130084

    .line 227
    .line 228
    .line 229
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 237
    .line 238
    .line 239
    check-cast v1, Landroid/widget/Button;

    .line 240
    .line 241
    new-instance v2, Lnf;

    .line 242
    .line 243
    const/16 v3, 0x9

    .line 244
    .line 245
    invoke-direct {v2, v0, v3}, Lnf;-><init>(Ljava/lang/Object;I)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    .line 250
    .line 251
    goto :goto_0

    .line 252
    :cond_1
    invoke-static {}, Lq;->j()V

    .line 253
    .line 254
    .line 255
    goto :goto_1

    .line 256
    :cond_2
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->Y()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->X()Lzx2;

    .line 261
    .line 262
    .line 263
    move-result-object v2

    .line 264
    iget-object v2, v2, Lzx2;->a:Landroid/widget/LinearLayout;

    .line 265
    .line 266
    new-array v3, v7, [Landroid/view/View;

    .line 267
    .line 268
    aput-object v1, v3, v9

    .line 269
    .line 270
    aput-object v2, v3, v8

    .line 271
    .line 272
    invoke-static {v3, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v1

    .line 276
    check-cast v1, [Landroid/view/View;

    .line 277
    .line 278
    invoke-virtual {v0, v9, v1}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->V(Z[Landroid/view/View;)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->W()Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 282
    .line 283
    .line 284
    move-result-object v1

    .line 285
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->Z()Landroidx/recyclerview/widget/RecyclerView;

    .line 286
    .line 287
    .line 288
    move-result-object v2

    .line 289
    new-array v3, v7, [Landroid/view/View;

    .line 290
    .line 291
    aput-object v1, v3, v9

    .line 292
    .line 293
    aput-object v2, v3, v8

    .line 294
    .line 295
    invoke-static {v3, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object v1

    .line 299
    check-cast v1, [Landroid/view/View;

    .line 300
    .line 301
    invoke-virtual {v0, v8, v1}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->V(Z[Landroid/view/View;)V

    .line 302
    .line 303
    .line 304
    goto :goto_0

    .line 305
    :cond_3
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->W()Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 306
    .line 307
    .line 308
    move-result-object v1

    .line 309
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->Z()Landroidx/recyclerview/widget/RecyclerView;

    .line 310
    .line 311
    .line 312
    move-result-object v2

    .line 313
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->X()Lzx2;

    .line 314
    .line 315
    .line 316
    move-result-object v3

    .line 317
    iget-object v3, v3, Lzx2;->a:Landroid/widget/LinearLayout;

    .line 318
    .line 319
    new-array v4, v5, [Landroid/view/View;

    .line 320
    .line 321
    aput-object v1, v4, v9

    .line 322
    .line 323
    aput-object v2, v4, v8

    .line 324
    .line 325
    aput-object v3, v4, v7

    .line 326
    .line 327
    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    move-result-object v1

    .line 331
    check-cast v1, [Landroid/view/View;

    .line 332
    .line 333
    invoke-virtual {v0, v9, v1}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->V(Z[Landroid/view/View;)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->Y()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 337
    .line 338
    .line 339
    move-result-object v1

    .line 340
    new-array v2, v8, [Landroid/view/View;

    .line 341
    .line 342
    aput-object v1, v2, v9

    .line 343
    .line 344
    invoke-static {v2, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 345
    .line 346
    .line 347
    move-result-object v1

    .line 348
    check-cast v1, [Landroid/view/View;

    .line 349
    .line 350
    invoke-virtual {v0, v8, v1}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->V(Z[Landroid/view/View;)V

    .line 351
    .line 352
    .line 353
    :goto_0
    move-object v6, v10

    .line 354
    :goto_1
    return-object v6

    .line 355
    :pswitch_4
    check-cast v0, Lorg/swiftapps/swiftbackup/cloud/connect/MegaSignInActivity;

    .line 356
    .line 357
    iget-object v1, v0, Lorg/swiftapps/swiftbackup/cloud/connect/MegaSignInActivity;->P:Lgv7;

    .line 358
    .line 359
    move-object/from16 v2, p1

    .line 360
    .line 361
    check-cast v2, Ljava/lang/String;

    .line 362
    .line 363
    sget v3, Lorg/swiftapps/swiftbackup/cloud/connect/MegaSignInActivity;->S:I

    .line 364
    .line 365
    if-eqz v2, :cond_5

    .line 366
    .line 367
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 368
    .line 369
    .line 370
    move-result v3

    .line 371
    if-nez v3, :cond_4

    .line 372
    .line 373
    goto :goto_2

    .line 374
    :cond_4
    move v3, v9

    .line 375
    goto :goto_3

    .line 376
    :cond_5
    :goto_2
    move v3, v8

    .line 377
    :goto_3
    xor-int/2addr v3, v8

    .line 378
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    move-result-object v4

    .line 382
    check-cast v4, Lcom/google/android/material/textfield/TextInputLayout;

    .line 383
    .line 384
    iget-object v4, v4, Lcom/google/android/material/textfield/TextInputLayout;->r:Lyb4;

    .line 385
    .line 386
    iget-boolean v4, v4, Lyb4;->q:Z

    .line 387
    .line 388
    if-eq v4, v3, :cond_6

    .line 389
    .line 390
    invoke-static {v0}, Lio4;->a(Landroid/app/Activity;)Landroid/view/ViewGroup;

    .line 391
    .line 392
    .line 393
    move-result-object v4

    .line 394
    new-array v5, v9, [Ljava/lang/Class;

    .line 395
    .line 396
    invoke-virtual {v0, v4, v5}, Lil0;->x(Landroid/view/ViewGroup;[Ljava/lang/Class;)V

    .line 397
    .line 398
    .line 399
    :cond_6
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 400
    .line 401
    .line 402
    move-result-object v0

    .line 403
    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 404
    .line 405
    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 409
    .line 410
    .line 411
    move-result-object v0

    .line 412
    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 413
    .line 414
    invoke-virtual {v0, v6}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 415
    .line 416
    .line 417
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 418
    .line 419
    .line 420
    move-result-object v0

    .line 421
    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 422
    .line 423
    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 424
    .line 425
    .line 426
    return-object v10

    .line 427
    :pswitch_5
    check-cast v0, Lih4;

    .line 428
    .line 429
    move-object/from16 v8, p1

    .line 430
    .line 431
    check-cast v8, Landroid/content/Context;

    .line 432
    .line 433
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 434
    .line 435
    .line 436
    iget-object v9, v0, Lih4;->a:Ljava/lang/String;

    .line 437
    .line 438
    sget-object v0, Led7;->a:Ljava/util/LinkedHashSet;

    .line 439
    .line 440
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 441
    .line 442
    .line 443
    new-instance v7, Lcd7;

    .line 444
    .line 445
    new-instance v11, Lig1;

    .line 446
    .line 447
    invoke-direct {v11, v0, v6}, Lig1;-><init>(Ljava/util/Set;Ljv1;)V

    .line 448
    .line 449
    .line 450
    new-instance v12, Ldd7;

    .line 451
    .line 452
    invoke-direct {v12, v5, v6}, Lws7;-><init>(ILjv1;)V

    .line 453
    .line 454
    .line 455
    sget-object v10, Lfd7;->a:Ljava/util/LinkedHashSet;

    .line 456
    .line 457
    invoke-direct/range {v7 .. v12}, Lcd7;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;Lig1;Ldd7;)V

    .line 458
    .line 459
    .line 460
    invoke-static {v7}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 461
    .line 462
    .line 463
    move-result-object v0

    .line 464
    return-object v0

    .line 465
    :pswitch_6
    check-cast v0, Lorg/swiftapps/swiftbackup/intro/IntroActivity;

    .line 466
    .line 467
    move-object/from16 v1, p1

    .line 468
    .line 469
    check-cast v1, Ljava/lang/Boolean;

    .line 470
    .line 471
    sget v2, Lorg/swiftapps/swiftbackup/intro/IntroActivity;->V:I

    .line 472
    .line 473
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 474
    .line 475
    .line 476
    move-result v1

    .line 477
    if-eqz v1, :cond_7

    .line 478
    .line 479
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/intro/IntroActivity;->T()V

    .line 480
    .line 481
    .line 482
    :cond_7
    return-object v10

    .line 483
    :pswitch_7
    check-cast v0, Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 484
    .line 485
    move-object/from16 v1, p1

    .line 486
    .line 487
    check-cast v1, Ljava/lang/Boolean;

    .line 488
    .line 489
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 490
    .line 491
    .line 492
    sget-object v2, Lorg/swiftapps/swiftbackup/home/HomeActivity;->b0:Ljava/util/Map;

    .line 493
    .line 494
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/home/HomeActivity;->Y()Lol5;

    .line 495
    .line 496
    .line 497
    move-result-object v0

    .line 498
    const v2, 0x7f0a034b

    .line 499
    .line 500
    .line 501
    invoke-virtual {v0, v2}, Lol5;->b(I)Lwk0;

    .line 502
    .line 503
    .line 504
    move-result-object v0

    .line 505
    iget-object v2, v0, Lwk0;->e:Lyk0;

    .line 506
    .line 507
    iget-object v3, v2, Lyk0;->a:Lxk0;

    .line 508
    .line 509
    iput-object v1, v3, Lxk0;->L:Ljava/lang/Boolean;

    .line 510
    .line 511
    iget-object v2, v2, Lyk0;->b:Lxk0;

    .line 512
    .line 513
    iput-object v1, v2, Lxk0;->L:Ljava/lang/Boolean;

    .line 514
    .line 515
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 516
    .line 517
    .line 518
    move-result v1

    .line 519
    invoke-virtual {v0, v1, v9}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 520
    .line 521
    .line 522
    return-object v10

    .line 523
    :pswitch_8
    move-object v12, v0

    .line 524
    check-cast v12, Lorg/swiftapps/swiftbackup/cloud/connect/GmsSignInActivity;

    .line 525
    .line 526
    move-object/from16 v0, p1

    .line 527
    .line 528
    check-cast v0, Lbe8;

    .line 529
    .line 530
    sget v0, Lorg/swiftapps/swiftbackup/cloud/connect/GmsSignInActivity;->N:I

    .line 531
    .line 532
    invoke-static {}, Lhz3;->a()Landroid/accounts/Account;

    .line 533
    .line 534
    .line 535
    move-result-object v0

    .line 536
    if-nez v0, :cond_8

    .line 537
    .line 538
    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/cloud/connect/GmsSignInActivity;->P()Lgz3;

    .line 539
    .line 540
    .line 541
    move-result-object v0

    .line 542
    const v1, 0x7f13007f

    .line 543
    .line 544
    .line 545
    invoke-virtual {v12, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 546
    .line 547
    .line 548
    move-result-object v1

    .line 549
    invoke-virtual {v0, v1, v9}, Lgz3;->j(Ljava/lang/String;Z)V

    .line 550
    .line 551
    .line 552
    goto/16 :goto_6

    .line 553
    .line 554
    :cond_8
    new-instance v1, Lp50;

    .line 555
    .line 556
    invoke-direct {v1, v9}, Lp50;-><init>(I)V

    .line 557
    .line 558
    .line 559
    iget-object v2, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 560
    .line 561
    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 562
    .line 563
    new-instance v13, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 564
    .line 565
    invoke-static {v0}, Lly8;->e(Ljava/lang/String;)V

    .line 566
    .line 567
    .line 568
    new-instance v3, Ljava/util/ArrayList;

    .line 569
    .line 570
    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 571
    .line 572
    .line 573
    const/4 v14, 0x3

    .line 574
    const/4 v15, 0x0

    .line 575
    const/16 v16, 0x0

    .line 576
    .line 577
    const/16 v18, 0x0

    .line 578
    .line 579
    const/16 v19, 0x0

    .line 580
    .line 581
    const/16 v20, 0x0

    .line 582
    .line 583
    const-wide/16 v21, 0x0

    .line 584
    .line 585
    const/16 v25, 0x0

    .line 586
    .line 587
    const/16 v26, 0x0

    .line 588
    .line 589
    move-object/from16 v23, v0

    .line 590
    .line 591
    move-object/from16 v17, v2

    .line 592
    .line 593
    move-object/from16 v24, v3

    .line 594
    .line 595
    invoke-direct/range {v13 .. v26}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    .line 597
    .line 598
    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    .line 599
    .line 600
    const-string v1, "https://www.googleapis.com/auth/drive.file"

    .line 601
    .line 602
    invoke-direct {v0, v8, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(ILjava/lang/String;)V

    .line 603
    .line 604
    .line 605
    filled-new-array {v0}, [Lcom/google/android/gms/common/api/Scope;

    .line 606
    .line 607
    .line 608
    move-result-object v0

    .line 609
    new-instance v1, Ljava/util/HashSet;

    .line 610
    .line 611
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 612
    .line 613
    .line 614
    new-instance v23, Ljava/util/HashMap;

    .line 615
    .line 616
    invoke-direct/range {v23 .. v23}, Ljava/util/HashMap;-><init>()V

    .line 617
    .line 618
    .line 619
    aget-object v2, v0, v9

    .line 620
    .line 621
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 622
    .line 623
    .line 624
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 625
    .line 626
    .line 627
    move-result-object v0

    .line 628
    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 629
    .line 630
    .line 631
    iget-object v0, v13, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->d:Ljava/lang/String;

    .line 632
    .line 633
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 634
    .line 635
    .line 636
    move-result v2

    .line 637
    if-nez v2, :cond_9

    .line 638
    .line 639
    invoke-static {v0}, Lly8;->h(Ljava/lang/Object;)V

    .line 640
    .line 641
    .line 642
    new-instance v2, Landroid/accounts/Account;

    .line 643
    .line 644
    invoke-static {v0}, Lly8;->e(Ljava/lang/String;)V

    .line 645
    .line 646
    .line 647
    const-string v3, "com.google"

    .line 648
    .line 649
    invoke-direct {v2, v0, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    .line 651
    .line 652
    move-object/from16 v17, v2

    .line 653
    .line 654
    goto :goto_4

    .line 655
    :cond_9
    move-object/from16 v17, v6

    .line 656
    .line 657
    :goto_4
    new-instance v11, Lw04;

    .line 658
    .line 659
    sget-object v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->y:Lcom/google/android/gms/common/api/Scope;

    .line 660
    .line 661
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 662
    .line 663
    .line 664
    move-result v0

    .line 665
    if-eqz v0, :cond_a

    .line 666
    .line 667
    sget-object v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->x:Lcom/google/android/gms/common/api/Scope;

    .line 668
    .line 669
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 670
    .line 671
    .line 672
    move-result v2

    .line 673
    if-eqz v2, :cond_a

    .line 674
    .line 675
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 676
    .line 677
    .line 678
    :cond_a
    new-instance v14, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    .line 679
    .line 680
    new-instance v0, Ljava/util/ArrayList;

    .line 681
    .line 682
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 683
    .line 684
    .line 685
    const/4 v15, 0x3

    .line 686
    const/16 v18, 0x0

    .line 687
    .line 688
    const/16 v19, 0x0

    .line 689
    .line 690
    const/16 v20, 0x0

    .line 691
    .line 692
    const/16 v21, 0x0

    .line 693
    .line 694
    const/16 v22, 0x0

    .line 695
    .line 696
    const/16 v24, 0x0

    .line 697
    .line 698
    move-object/from16 v16, v0

    .line 699
    .line 700
    invoke-direct/range {v14 .. v24}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;-><init>(ILjava/util/ArrayList;Landroid/accounts/Account;ZZZLjava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 701
    .line 702
    .line 703
    new-instance v0, Llk;

    .line 704
    .line 705
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 706
    .line 707
    .line 708
    invoke-virtual {v12}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 709
    .line 710
    .line 711
    move-result-object v1

    .line 712
    const-string v2, "Looper must not be null."

    .line 713
    .line 714
    invoke-static {v1, v2}, Lly8;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 715
    .line 716
    .line 717
    new-instance v2, Ljz3;

    .line 718
    .line 719
    invoke-direct {v2, v0, v1}, Ljz3;-><init>(Llk;Landroid/os/Looper;)V

    .line 720
    .line 721
    .line 722
    move-object v15, v14

    .line 723
    sget-object v14, Lc80;->a:Loe;

    .line 724
    .line 725
    move-object v13, v12

    .line 726
    move-object/from16 v16, v2

    .line 727
    .line 728
    invoke-direct/range {v11 .. v16}, Lkz3;-><init>(Landroid/content/Context;Landroid/app/Activity;Loe;Lme;Ljz3;)V

    .line 729
    .line 730
    .line 731
    invoke-virtual {v11}, Lw04;->c()I

    .line 732
    .line 733
    .line 734
    move-result v0

    .line 735
    add-int/lit8 v1, v0, -0x1

    .line 736
    .line 737
    if-eqz v0, :cond_d

    .line 738
    .line 739
    iget-object v0, v11, Lkz3;->d:Lme;

    .line 740
    .line 741
    iget-object v2, v11, Lkz3;->a:Landroid/content/Context;

    .line 742
    .line 743
    if-eq v1, v7, :cond_c

    .line 744
    .line 745
    if-eq v1, v5, :cond_b

    .line 746
    .line 747
    check-cast v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    .line 748
    .line 749
    sget-object v1, Lk39;->a:Lu50;

    .line 750
    .line 751
    const-string v3, "getNoImplementationSignInIntent()"

    .line 752
    .line 753
    new-array v5, v9, [Ljava/lang/Object;

    .line 754
    .line 755
    invoke-virtual {v1, v3, v5}, Lu50;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 756
    .line 757
    .line 758
    invoke-static {v2, v0}, Lk39;->a(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Landroid/content/Intent;

    .line 759
    .line 760
    .line 761
    move-result-object v0

    .line 762
    const-string v1, "com.google.android.gms.auth.NO_IMPL"

    .line 763
    .line 764
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 765
    .line 766
    .line 767
    goto :goto_5

    .line 768
    :cond_b
    check-cast v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    .line 769
    .line 770
    invoke-static {v2, v0}, Lk39;->a(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Landroid/content/Intent;

    .line 771
    .line 772
    .line 773
    move-result-object v0

    .line 774
    goto :goto_5

    .line 775
    :cond_c
    check-cast v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    .line 776
    .line 777
    sget-object v1, Lk39;->a:Lu50;

    .line 778
    .line 779
    const-string v3, "getFallbackSignInIntent()"

    .line 780
    .line 781
    new-array v5, v9, [Ljava/lang/Object;

    .line 782
    .line 783
    invoke-virtual {v1, v3, v5}, Lu50;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 784
    .line 785
    .line 786
    invoke-static {v2, v0}, Lk39;->a(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Landroid/content/Intent;

    .line 787
    .line 788
    .line 789
    move-result-object v0

    .line 790
    const-string v1, "com.google.android.gms.auth.APPAUTH_SIGN_IN"

    .line 791
    .line 792
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 793
    .line 794
    .line 795
    :goto_5
    invoke-virtual {v12, v0, v4}, Lio1;->startActivityForResult(Landroid/content/Intent;I)V

    .line 796
    .line 797
    .line 798
    :goto_6
    return-object v10

    .line 799
    :cond_d
    throw v6

    .line 800
    :pswitch_9
    check-cast v0, Lmt3;

    .line 801
    .line 802
    move-object/from16 v1, p1

    .line 803
    .line 804
    check-cast v1, Ljava/lang/Long;

    .line 805
    .line 806
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 807
    .line 808
    .line 809
    if-eqz v0, :cond_e

    .line 810
    .line 811
    invoke-interface {v0, v1}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 812
    .line 813
    .line 814
    :cond_e
    return-object v10

    .line 815
    :pswitch_a
    check-cast v0, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;

    .line 816
    .line 817
    iget-object v1, v0, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->m0:Lgv7;

    .line 818
    .line 819
    move-object/from16 v2, p1

    .line 820
    .line 821
    check-cast v2, Ljava/lang/String;

    .line 822
    .line 823
    sget v3, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->P0:I

    .line 824
    .line 825
    if-eqz v2, :cond_10

    .line 826
    .line 827
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 828
    .line 829
    .line 830
    move-result v3

    .line 831
    if-nez v3, :cond_f

    .line 832
    .line 833
    goto :goto_7

    .line 834
    :cond_f
    move v3, v9

    .line 835
    goto :goto_8

    .line 836
    :cond_10
    :goto_7
    move v3, v8

    .line 837
    :goto_8
    xor-int/2addr v3, v8

    .line 838
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 839
    .line 840
    .line 841
    move-result-object v4

    .line 842
    check-cast v4, Lcom/google/android/material/textfield/TextInputLayout;

    .line 843
    .line 844
    iget-object v4, v4, Lcom/google/android/material/textfield/TextInputLayout;->r:Lyb4;

    .line 845
    .line 846
    iget-boolean v4, v4, Lyb4;->q:Z

    .line 847
    .line 848
    if-eq v4, v3, :cond_11

    .line 849
    .line 850
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->k0()Lt52;

    .line 851
    .line 852
    .line 853
    move-result-object v4

    .line 854
    iget-object v4, v4, Lt52;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 855
    .line 856
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 857
    .line 858
    .line 859
    new-array v5, v9, [Ljava/lang/Class;

    .line 860
    .line 861
    invoke-virtual {v0, v4, v5}, Lil0;->x(Landroid/view/ViewGroup;[Ljava/lang/Class;)V

    .line 862
    .line 863
    .line 864
    :cond_11
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 865
    .line 866
    .line 867
    move-result-object v0

    .line 868
    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 869
    .line 870
    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 871
    .line 872
    .line 873
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 874
    .line 875
    .line 876
    move-result-object v0

    .line 877
    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 878
    .line 879
    invoke-virtual {v0, v6}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 880
    .line 881
    .line 882
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 883
    .line 884
    .line 885
    move-result-object v0

    .line 886
    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 887
    .line 888
    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 889
    .line 890
    .line 891
    return-object v10

    .line 892
    :pswitch_b
    check-cast v0, Lb21;

    .line 893
    .line 894
    move-object/from16 v1, p1

    .line 895
    .line 896
    check-cast v1, Ljava/lang/String;

    .line 897
    .line 898
    iget-object v0, v0, Lb21;->h:Landroid/widget/TextView;

    .line 899
    .line 900
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 901
    .line 902
    .line 903
    return-object v10

    .line 904
    :pswitch_c
    move-object v13, v0

    .line 905
    check-cast v13, Lorg/swiftapps/swiftbackup/messagescalls/dash/CallsDashActivity;

    .line 906
    .line 907
    move-object/from16 v0, p1

    .line 908
    .line 909
    check-cast v0, Lq11;

    .line 910
    .line 911
    sget v1, Lorg/swiftapps/swiftbackup/messagescalls/dash/CallsDashActivity;->T:I

    .line 912
    .line 913
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 914
    .line 915
    .line 916
    invoke-virtual {v13}, Lorg/swiftapps/swiftbackup/messagescalls/dash/CallsDashActivity;->Y()Loi7;

    .line 917
    .line 918
    .line 919
    move-result-object v1

    .line 920
    iget-object v1, v1, Loi7;->f:Lm86;

    .line 921
    .line 922
    iget-object v4, v1, Lm86;->k:Ljava/lang/Object;

    .line 923
    .line 924
    check-cast v4, Landroid/widget/TextView;

    .line 925
    .line 926
    iget-object v11, v1, Lm86;->e:Ljava/lang/Object;

    .line 927
    .line 928
    check-cast v11, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 929
    .line 930
    invoke-virtual {v11, v8}, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;->setLinearLayoutManager(I)V

    .line 931
    .line 932
    .line 933
    iget-object v12, v1, Lm86;->c:Ljava/lang/Object;

    .line 934
    .line 935
    check-cast v12, Lzx2;

    .line 936
    .line 937
    iget-object v14, v12, Lzx2;->a:Landroid/widget/LinearLayout;

    .line 938
    .line 939
    iget-object v15, v12, Lzx2;->d:Landroid/widget/ImageView;

    .line 940
    .line 941
    move/from16 v19, v8

    .line 942
    .line 943
    iget-object v8, v12, Lzx2;->e:Landroid/widget/TextView;

    .line 944
    .line 945
    iget-object v12, v12, Lzx2;->b:Lcom/google/android/material/button/MaterialButton;

    .line 946
    .line 947
    invoke-virtual {v12, v2}, Landroid/view/View;->setVisibility(I)V

    .line 948
    .line 949
    .line 950
    iget-object v12, v1, Lm86;->f:Ljava/lang/Object;

    .line 951
    .line 952
    check-cast v12, Landroid/widget/RelativeLayout;

    .line 953
    .line 954
    iget-object v5, v1, Lm86;->d:Ljava/lang/Object;

    .line 955
    .line 956
    check-cast v5, Landroid/widget/ImageView;

    .line 957
    .line 958
    iget-object v1, v1, Lm86;->n:Ljava/lang/Object;

    .line 959
    .line 960
    check-cast v1, Landroid/widget/TextView;

    .line 961
    .line 962
    sget-object v3, Lp11;->a:Lp11;

    .line 963
    .line 964
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 965
    .line 966
    .line 967
    move-result v3

    .line 968
    if-eqz v3, :cond_13

    .line 969
    .line 970
    invoke-static {v13, v4, v6}, Lorg/swiftapps/swiftbackup/messagescalls/dash/CallsDashActivity;->b0(Lorg/swiftapps/swiftbackup/messagescalls/dash/CallsDashActivity;Landroid/widget/TextView;Ljava/lang/Integer;)V

    .line 971
    .line 972
    .line 973
    new-array v0, v7, [Landroid/view/View;

    .line 974
    .line 975
    aput-object v11, v0, v9

    .line 976
    .line 977
    aput-object v12, v0, v19

    .line 978
    .line 979
    invoke-static {v0, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 980
    .line 981
    .line 982
    move-result-object v0

    .line 983
    check-cast v0, [Landroid/view/View;

    .line 984
    .line 985
    array-length v1, v0

    .line 986
    move v3, v9

    .line 987
    :goto_9
    if-ge v3, v1, :cond_12

    .line 988
    .line 989
    aget-object v4, v0, v3

    .line 990
    .line 991
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 992
    .line 993
    .line 994
    add-int/lit8 v3, v3, 0x1

    .line 995
    .line 996
    goto :goto_9

    .line 997
    :cond_12
    invoke-virtual {v14, v9}, Landroid/view/View;->setVisibility(I)V

    .line 998
    .line 999
    .line 1000
    const v0, 0x7f08018b

    .line 1001
    .line 1002
    .line 1003
    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1004
    .line 1005
    .line 1006
    const v0, 0x7f1303cc

    .line 1007
    .line 1008
    .line 1009
    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(I)V

    .line 1010
    .line 1011
    .line 1012
    goto/16 :goto_d

    .line 1013
    .line 1014
    :cond_13
    instance-of v3, v0, Lo11;

    .line 1015
    .line 1016
    if-eqz v3, :cond_18

    .line 1017
    .line 1018
    check-cast v0, Lo11;

    .line 1019
    .line 1020
    iget-object v0, v0, Lo11;->a:Ljava/util/ArrayList;

    .line 1021
    .line 1022
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 1023
    .line 1024
    .line 1025
    move-result v3

    .line 1026
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1027
    .line 1028
    .line 1029
    move-result-object v3

    .line 1030
    invoke-static {v13, v4, v3}, Lorg/swiftapps/swiftbackup/messagescalls/dash/CallsDashActivity;->b0(Lorg/swiftapps/swiftbackup/messagescalls/dash/CallsDashActivity;Landroid/widget/TextView;Ljava/lang/Integer;)V

    .line 1031
    .line 1032
    .line 1033
    new-array v3, v7, [Landroid/view/View;

    .line 1034
    .line 1035
    aput-object v11, v3, v9

    .line 1036
    .line 1037
    aput-object v12, v3, v19

    .line 1038
    .line 1039
    invoke-static {v3, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 1040
    .line 1041
    .line 1042
    move-result-object v3

    .line 1043
    check-cast v3, [Landroid/view/View;

    .line 1044
    .line 1045
    array-length v4, v3

    .line 1046
    move v6, v9

    .line 1047
    :goto_a
    if-ge v6, v4, :cond_14

    .line 1048
    .line 1049
    aget-object v8, v3, v6

    .line 1050
    .line 1051
    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1052
    .line 1053
    .line 1054
    add-int/lit8 v6, v6, 0x1

    .line 1055
    .line 1056
    goto :goto_a

    .line 1057
    :cond_14
    invoke-virtual {v14, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1058
    .line 1059
    .line 1060
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 1061
    .line 1062
    .line 1063
    move-result v2

    .line 1064
    const/4 v3, 0x3

    .line 1065
    if-le v2, v3, :cond_15

    .line 1066
    .line 1067
    move/from16 v2, v19

    .line 1068
    .line 1069
    goto :goto_b

    .line 1070
    :cond_15
    move v2, v9

    .line 1071
    :goto_b
    if-eqz v2, :cond_16

    .line 1072
    .line 1073
    invoke-static {v0, v3}, Lel1;->p1(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 1074
    .line 1075
    .line 1076
    move-result-object v3

    .line 1077
    new-instance v4, Ljava/util/ArrayList;

    .line 1078
    .line 1079
    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1080
    .line 1081
    .line 1082
    move-object/from16 v21, v4

    .line 1083
    .line 1084
    goto :goto_c

    .line 1085
    :cond_16
    move-object/from16 v21, v0

    .line 1086
    .line 1087
    :goto_c
    new-instance v3, Lq01;

    .line 1088
    .line 1089
    move-object v4, v11

    .line 1090
    new-instance v11, Lh11;

    .line 1091
    .line 1092
    const/16 v17, 0x0

    .line 1093
    .line 1094
    const/16 v18, 0x0

    .line 1095
    .line 1096
    move-object v6, v12

    .line 1097
    const/4 v12, 0x2

    .line 1098
    const-class v14, Lorg/swiftapps/swiftbackup/messagescalls/dash/CallsDashActivity;

    .line 1099
    .line 1100
    const-string v15, "onBackupItemMenuClick"

    .line 1101
    .line 1102
    const-string v16, "onBackupItemMenuClick(Landroid/view/View;Lorg/swiftapps/swiftbackup/model/provider/CallLogBackupItem;)V"

    .line 1103
    .line 1104
    invoke-direct/range {v11 .. v18}, Lh11;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1105
    .line 1106
    .line 1107
    invoke-direct {v3, v11}, Lq01;-><init>(Lqt3;)V

    .line 1108
    .line 1109
    .line 1110
    new-instance v20, Lfm7;

    .line 1111
    .line 1112
    const/16 v24, 0x0

    .line 1113
    .line 1114
    const/16 v25, 0x1e

    .line 1115
    .line 1116
    const/16 v22, 0x0

    .line 1117
    .line 1118
    const/16 v23, 0x0

    .line 1119
    .line 1120
    invoke-direct/range {v20 .. v25}, Lfm7;-><init>(Ljava/util/List;Ljava/util/Set;ZLjava/lang/String;I)V

    .line 1121
    .line 1122
    .line 1123
    move-object/from16 v8, v20

    .line 1124
    .line 1125
    invoke-virtual {v3, v8, v9}, Lgm7;->w(Lfm7;Z)V

    .line 1126
    .line 1127
    .line 1128
    new-instance v8, Lf7;

    .line 1129
    .line 1130
    invoke-direct {v8, v13, v7}, Lf7;-><init>(Ljava/lang/Object;I)V

    .line 1131
    .line 1132
    .line 1133
    iput-object v8, v3, Lgm7;->j:Lqt3;

    .line 1134
    .line 1135
    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lhg6;)V

    .line 1136
    .line 1137
    .line 1138
    const-class v3, Landroid/widget/TextView;

    .line 1139
    .line 1140
    filled-new-array {v3}, [Ljava/lang/Class;

    .line 1141
    .line 1142
    .line 1143
    move-result-object v3

    .line 1144
    invoke-virtual {v13, v3}, Lil0;->y([Ljava/lang/Class;)V

    .line 1145
    .line 1146
    .line 1147
    if-eqz v2, :cond_17

    .line 1148
    .line 1149
    const v2, 0x7f0800c7

    .line 1150
    .line 1151
    .line 1152
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1153
    .line 1154
    .line 1155
    invoke-static {v13}, Lsz8;->A(Landroid/content/Context;)I

    .line 1156
    .line 1157
    .line 1158
    move-result v2

    .line 1159
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 1160
    .line 1161
    .line 1162
    move-result-object v2

    .line 1163
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 1164
    .line 1165
    .line 1166
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 1167
    .line 1168
    .line 1169
    move-result v2

    .line 1170
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    .line 1171
    .line 1172
    .line 1173
    move-result v3

    .line 1174
    sub-int/2addr v2, v3

    .line 1175
    const-string v3, "+"

    .line 1176
    .line 1177
    invoke-static {v2, v3}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 1178
    .line 1179
    .line 1180
    move-result-object v2

    .line 1181
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 1182
    .line 1183
    .line 1184
    move-result-object v2

    .line 1185
    const v3, 0x7f130411

    .line 1186
    .line 1187
    .line 1188
    invoke-virtual {v13, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 1189
    .line 1190
    .line 1191
    move-result-object v2

    .line 1192
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1193
    .line 1194
    .line 1195
    new-instance v1, Lc11;

    .line 1196
    .line 1197
    invoke-direct {v1, v13, v0, v9}, Lc11;-><init>(Lorg/swiftapps/swiftbackup/messagescalls/dash/CallsDashActivity;Ljava/util/ArrayList;I)V

    .line 1198
    .line 1199
    .line 1200
    invoke-virtual {v6, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1201
    .line 1202
    .line 1203
    goto :goto_d

    .line 1204
    :cond_17
    const v2, 0x7f080128

    .line 1205
    .line 1206
    .line 1207
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1208
    .line 1209
    .line 1210
    invoke-static {v13}, Lsz8;->r(Landroid/content/Context;)I

    .line 1211
    .line 1212
    .line 1213
    move-result v2

    .line 1214
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 1215
    .line 1216
    .line 1217
    move-result-object v2

    .line 1218
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 1219
    .line 1220
    .line 1221
    const v2, 0x7f1301e2

    .line 1222
    .line 1223
    .line 1224
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1225
    .line 1226
    .line 1227
    new-instance v1, Lt20;

    .line 1228
    .line 1229
    move/from16 v2, v19

    .line 1230
    .line 1231
    invoke-direct {v1, v2, v13, v0}, Lt20;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1232
    .line 1233
    .line 1234
    invoke-virtual {v6, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1235
    .line 1236
    .line 1237
    :goto_d
    move-object v6, v10

    .line 1238
    goto :goto_e

    .line 1239
    :cond_18
    invoke-static {}, Lq;->j()V

    .line 1240
    .line 1241
    .line 1242
    :goto_e
    return-object v6

    .line 1243
    :pswitch_d
    move-object v11, v0

    .line 1244
    check-cast v11, Ly30;

    .line 1245
    .line 1246
    move-object/from16 v12, p1

    .line 1247
    .line 1248
    check-cast v12, Ljava/util/List;

    .line 1249
    .line 1250
    if-eqz v12, :cond_19

    .line 1251
    .line 1252
    iget-object v0, v11, Lrl0;->b:Ljk8;

    .line 1253
    .line 1254
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1255
    .line 1256
    .line 1257
    check-cast v0, Lz30;

    .line 1258
    .line 1259
    iget-object v13, v0, Lz30;->c:Lxc6;

    .line 1260
    .line 1261
    const/16 v17, 0x0

    .line 1262
    .line 1263
    const/16 v18, 0x50

    .line 1264
    .line 1265
    const v14, 0x7f130440

    .line 1266
    .line 1267
    .line 1268
    const v15, 0x7f0800bf

    .line 1269
    .line 1270
    .line 1271
    const/16 v16, 0x0

    .line 1272
    .line 1273
    invoke-static/range {v11 .. v18}, Lnd6;->j(Lnd6;Ljava/util/List;Lxc6;IIZLbh;I)V

    .line 1274
    .line 1275
    .line 1276
    :cond_19
    return-object v10

    .line 1277
    :pswitch_e
    check-cast v0, Lorg/swiftapps/swiftbackup/appslist/ui/listconfig/AppsConfigRunActivity;

    .line 1278
    .line 1279
    iget-object v1, v0, Lorg/swiftapps/swiftbackup/appslist/ui/listconfig/AppsConfigRunActivity;->i0:Lgv7;

    .line 1280
    .line 1281
    move-object/from16 v3, p1

    .line 1282
    .line 1283
    check-cast v3, Lym7;

    .line 1284
    .line 1285
    sget v4, Lorg/swiftapps/swiftbackup/appslist/ui/listconfig/AppsConfigRunActivity;->m0:I

    .line 1286
    .line 1287
    if-eqz v3, :cond_1e

    .line 1288
    .line 1289
    invoke-virtual {v0}, Lk28;->r()Ljava/lang/String;

    .line 1290
    .line 1291
    .line 1292
    move-result-object v4

    .line 1293
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1294
    .line 1295
    const-string v8, "onViewStatusUI: "

    .line 1296
    .line 1297
    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1298
    .line 1299
    .line 1300
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1301
    .line 1302
    .line 1303
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1304
    .line 1305
    .line 1306
    move-result-object v5

    .line 1307
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    .line 1309
    .line 1310
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/listconfig/AppsConfigRunActivity;->k0()V

    .line 1311
    .line 1312
    .line 1313
    sget-object v4, Lx20;->a:[I

    .line 1314
    .line 1315
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 1316
    .line 1317
    .line 1318
    move-result v5

    .line 1319
    aget v4, v4, v5

    .line 1320
    .line 1321
    const/4 v5, 0x1

    .line 1322
    if-eq v4, v5, :cond_1d

    .line 1323
    .line 1324
    if-eq v4, v7, :cond_1c

    .line 1325
    .line 1326
    const/4 v5, 0x3

    .line 1327
    if-eq v4, v5, :cond_1b

    .line 1328
    .line 1329
    const/4 v5, 0x4

    .line 1330
    if-ne v4, v5, :cond_1a

    .line 1331
    .line 1332
    goto :goto_f

    .line 1333
    :cond_1a
    const-string v0, "Unhandled onViewStatusUI: "

    .line 1334
    .line 1335
    invoke-static {v3, v0}, Lg84;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1336
    .line 1337
    .line 1338
    goto :goto_11

    .line 1339
    :cond_1b
    :goto_f
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/listconfig/AppsConfigRunActivity;->h0()La30;

    .line 1340
    .line 1341
    .line 1342
    move-result-object v3

    .line 1343
    iget-object v3, v3, La30;->f:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 1344
    .line 1345
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1346
    .line 1347
    .line 1348
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/listconfig/AppsConfigRunActivity;->g0()Landroidx/recyclerview/widget/RecyclerView;

    .line 1349
    .line 1350
    .line 1351
    move-result-object v2

    .line 1352
    invoke-static {v2}, Lsz8;->W(Landroid/view/View;)V

    .line 1353
    .line 1354
    .line 1355
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 1356
    .line 1357
    .line 1358
    move-result-object v1

    .line 1359
    check-cast v1, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 1360
    .line 1361
    invoke-static {v1}, Lsz8;->W(Landroid/view/View;)V

    .line 1362
    .line 1363
    .line 1364
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/listconfig/AppsConfigRunActivity;->h0()La30;

    .line 1365
    .line 1366
    .line 1367
    move-result-object v0

    .line 1368
    iget-object v0, v0, La30;->d:Ley2;

    .line 1369
    .line 1370
    iget-object v0, v0, Ley2;->a:Landroidx/core/widget/NestedScrollView;

    .line 1371
    .line 1372
    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1373
    .line 1374
    .line 1375
    goto :goto_10

    .line 1376
    :cond_1c
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/listconfig/AppsConfigRunActivity;->h0()La30;

    .line 1377
    .line 1378
    .line 1379
    move-result-object v3

    .line 1380
    iget-object v3, v3, La30;->f:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 1381
    .line 1382
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1383
    .line 1384
    .line 1385
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/listconfig/AppsConfigRunActivity;->g0()Landroidx/recyclerview/widget/RecyclerView;

    .line 1386
    .line 1387
    .line 1388
    move-result-object v3

    .line 1389
    invoke-static {v3}, Lsz8;->c0(Landroid/view/View;)V

    .line 1390
    .line 1391
    .line 1392
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 1393
    .line 1394
    .line 1395
    move-result-object v1

    .line 1396
    check-cast v1, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 1397
    .line 1398
    invoke-static {v1}, Lsz8;->c0(Landroid/view/View;)V

    .line 1399
    .line 1400
    .line 1401
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/listconfig/AppsConfigRunActivity;->h0()La30;

    .line 1402
    .line 1403
    .line 1404
    move-result-object v0

    .line 1405
    iget-object v0, v0, La30;->d:Ley2;

    .line 1406
    .line 1407
    iget-object v0, v0, Ley2;->a:Landroidx/core/widget/NestedScrollView;

    .line 1408
    .line 1409
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1410
    .line 1411
    .line 1412
    goto :goto_10

    .line 1413
    :cond_1d
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/listconfig/AppsConfigRunActivity;->h0()La30;

    .line 1414
    .line 1415
    .line 1416
    move-result-object v3

    .line 1417
    iget-object v3, v3, La30;->f:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 1418
    .line 1419
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1420
    .line 1421
    .line 1422
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/listconfig/AppsConfigRunActivity;->g0()Landroidx/recyclerview/widget/RecyclerView;

    .line 1423
    .line 1424
    .line 1425
    move-result-object v3

    .line 1426
    invoke-static {v3}, Lsz8;->W(Landroid/view/View;)V

    .line 1427
    .line 1428
    .line 1429
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 1430
    .line 1431
    .line 1432
    move-result-object v1

    .line 1433
    check-cast v1, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 1434
    .line 1435
    invoke-static {v1}, Lsz8;->W(Landroid/view/View;)V

    .line 1436
    .line 1437
    .line 1438
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/listconfig/AppsConfigRunActivity;->h0()La30;

    .line 1439
    .line 1440
    .line 1441
    move-result-object v0

    .line 1442
    iget-object v0, v0, La30;->d:Ley2;

    .line 1443
    .line 1444
    iget-object v0, v0, Ley2;->a:Landroidx/core/widget/NestedScrollView;

    .line 1445
    .line 1446
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1447
    .line 1448
    .line 1449
    :cond_1e
    :goto_10
    move-object v6, v10

    .line 1450
    :goto_11
    return-object v6

    .line 1451
    :pswitch_f
    check-cast v0, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;

    .line 1452
    .line 1453
    move-object/from16 v1, p1

    .line 1454
    .line 1455
    check-cast v1, Ljava/lang/Integer;

    .line 1456
    .line 1457
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1458
    .line 1459
    .line 1460
    move-result v1

    .line 1461
    iget-object v2, v0, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;->m0:Ll20;

    .line 1462
    .line 1463
    const-string v3, "mAdapter"

    .line 1464
    .line 1465
    if-eqz v2, :cond_22

    .line 1466
    .line 1467
    invoke-virtual {v2}, Lgm7;->b()I

    .line 1468
    .line 1469
    .line 1470
    move-result v2

    .line 1471
    sub-int/2addr v2, v1

    .line 1472
    iget-object v1, v0, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;->m0:Ll20;

    .line 1473
    .line 1474
    if-eqz v1, :cond_21

    .line 1475
    .line 1476
    iget-object v1, v1, Lgm7;->e:Lfm7;

    .line 1477
    .line 1478
    iget-object v1, v1, Lfm7;->a:Ljava/util/List;

    .line 1479
    .line 1480
    invoke-static {v2, v1}, Lel1;->q1(ILjava/util/List;)Ljava/util/List;

    .line 1481
    .line 1482
    .line 1483
    move-result-object v1

    .line 1484
    new-instance v2, Ljava/util/ArrayList;

    .line 1485
    .line 1486
    const/16 v4, 0xa

    .line 1487
    .line 1488
    invoke-static {v1, v4}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 1489
    .line 1490
    .line 1491
    move-result v4

    .line 1492
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1493
    .line 1494
    .line 1495
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1496
    .line 1497
    .line 1498
    move-result-object v1

    .line 1499
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1500
    .line 1501
    .line 1502
    move-result v4

    .line 1503
    if-eqz v4, :cond_1f

    .line 1504
    .line 1505
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1506
    .line 1507
    .line 1508
    move-result-object v4

    .line 1509
    check-cast v4, Lji;

    .line 1510
    .line 1511
    invoke-virtual {v4}, Lji;->getItemId()Ljava/lang/String;

    .line 1512
    .line 1513
    .line 1514
    move-result-object v4

    .line 1515
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1516
    .line 1517
    .line 1518
    goto :goto_12

    .line 1519
    :cond_1f
    iget-object v0, v0, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;->m0:Ll20;

    .line 1520
    .line 1521
    if-eqz v0, :cond_20

    .line 1522
    .line 1523
    invoke-static {v2}, Lel1;->z1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 1524
    .line 1525
    .line 1526
    move-result-object v1

    .line 1527
    invoke-virtual {v0, v1}, Lgm7;->t(Ljava/util/Set;)V

    .line 1528
    .line 1529
    .line 1530
    return-object v10

    .line 1531
    :cond_20
    invoke-static {v3}, Lpe4;->F(Ljava/lang/String;)V

    .line 1532
    .line 1533
    .line 1534
    throw v6

    .line 1535
    :cond_21
    invoke-static {v3}, Lpe4;->F(Ljava/lang/String;)V

    .line 1536
    .line 1537
    .line 1538
    throw v6

    .line 1539
    :cond_22
    invoke-static {v3}, Lpe4;->F(Ljava/lang/String;)V

    .line 1540
    .line 1541
    .line 1542
    throw v6

    .line 1543
    :pswitch_10
    check-cast v0, Lnz;

    .line 1544
    .line 1545
    move-object/from16 v1, p1

    .line 1546
    .line 1547
    check-cast v1, Ljava/lang/Long;

    .line 1548
    .line 1549
    invoke-static {v1}, Lio4;->h(Ljava/lang/Long;)J

    .line 1550
    .line 1551
    .line 1552
    move-result-wide v1

    .line 1553
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1554
    .line 1555
    .line 1556
    move-result-object v1

    .line 1557
    invoke-virtual {v0, v1}, Lnz;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1558
    .line 1559
    .line 1560
    return-object v10

    .line 1561
    :pswitch_11
    check-cast v0, Ldt;

    .line 1562
    .line 1563
    move-object/from16 v1, p1

    .line 1564
    .line 1565
    check-cast v1, Ll10;

    .line 1566
    .line 1567
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1568
    .line 1569
    .line 1570
    iget-object v1, v1, Ll10;->b:Lnd3;

    .line 1571
    .line 1572
    invoke-interface {v1}, Lnd3;->reset()V

    .line 1573
    .line 1574
    .line 1575
    invoke-virtual {v0}, Ldt;->c0()V

    .line 1576
    .line 1577
    .line 1578
    return-object v10

    .line 1579
    :pswitch_12
    check-cast v0, Ljava/lang/String;

    .line 1580
    .line 1581
    move-object/from16 v1, p1

    .line 1582
    .line 1583
    check-cast v1, Lfw6;

    .line 1584
    .line 1585
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1586
    .line 1587
    .line 1588
    const-string v2, "SELECT * FROM app_cached_data WHERE pkgName=? "

    .line 1589
    .line 1590
    invoke-interface {v1, v2}, Lfw6;->p0(Ljava/lang/String;)Lnw6;

    .line 1591
    .line 1592
    .line 1593
    move-result-object v1

    .line 1594
    const/4 v2, 0x1

    .line 1595
    :try_start_0
    invoke-interface {v1, v2, v0}, Lnw6;->C(ILjava/lang/String;)V

    .line 1596
    .line 1597
    .line 1598
    const-string v0, "pkgName"

    .line 1599
    .line 1600
    invoke-static {v1, v0}, Lbb9;->u(Lnw6;Ljava/lang/String;)I

    .line 1601
    .line 1602
    .line 1603
    move-result v0

    .line 1604
    const-string v3, "name"

    .line 1605
    .line 1606
    invoke-static {v1, v3}, Lbb9;->u(Lnw6;Ljava/lang/String;)I

    .line 1607
    .line 1608
    .line 1609
    move-result v3

    .line 1610
    const-string v4, "isInstalled"

    .line 1611
    .line 1612
    invoke-static {v1, v4}, Lbb9;->u(Lnw6;Ljava/lang/String;)I

    .line 1613
    .line 1614
    .line 1615
    move-result v4

    .line 1616
    const-string v5, "isEnabled"

    .line 1617
    .line 1618
    invoke-static {v1, v5}, Lbb9;->u(Lnw6;Ljava/lang/String;)I

    .line 1619
    .line 1620
    .line 1621
    move-result v5

    .line 1622
    const-string v7, "isLaunchable"

    .line 1623
    .line 1624
    invoke-static {v1, v7}, Lbb9;->u(Lnw6;Ljava/lang/String;)I

    .line 1625
    .line 1626
    .line 1627
    move-result v7

    .line 1628
    const-string v8, "locale"

    .line 1629
    .line 1630
    invoke-static {v1, v8}, Lbb9;->u(Lnw6;Ljava/lang/String;)I

    .line 1631
    .line 1632
    .line 1633
    move-result v8

    .line 1634
    invoke-interface {v1}, Lnw6;->i0()Z

    .line 1635
    .line 1636
    .line 1637
    move-result v10

    .line 1638
    if-eqz v10, :cond_2d

    .line 1639
    .line 1640
    invoke-interface {v1, v0}, Lnw6;->R(I)Ljava/lang/String;

    .line 1641
    .line 1642
    .line 1643
    move-result-object v12

    .line 1644
    invoke-interface {v1, v3}, Lnw6;->R(I)Ljava/lang/String;

    .line 1645
    .line 1646
    .line 1647
    move-result-object v13

    .line 1648
    invoke-interface {v1, v4}, Lnw6;->isNull(I)Z

    .line 1649
    .line 1650
    .line 1651
    move-result v0

    .line 1652
    if-eqz v0, :cond_23

    .line 1653
    .line 1654
    move-object v0, v6

    .line 1655
    goto :goto_13

    .line 1656
    :cond_23
    invoke-interface {v1, v4}, Lnw6;->getLong(I)J

    .line 1657
    .line 1658
    .line 1659
    move-result-wide v3

    .line 1660
    long-to-int v0, v3

    .line 1661
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1662
    .line 1663
    .line 1664
    move-result-object v0

    .line 1665
    :goto_13
    if-eqz v0, :cond_25

    .line 1666
    .line 1667
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 1668
    .line 1669
    .line 1670
    move-result v0

    .line 1671
    if-eqz v0, :cond_24

    .line 1672
    .line 1673
    move v0, v2

    .line 1674
    goto :goto_14

    .line 1675
    :cond_24
    move v0, v9

    .line 1676
    :goto_14
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1677
    .line 1678
    .line 1679
    move-result-object v0

    .line 1680
    move-object v14, v0

    .line 1681
    goto :goto_15

    .line 1682
    :catchall_0
    move-exception v0

    .line 1683
    goto/16 :goto_1e

    .line 1684
    .line 1685
    :cond_25
    move-object v14, v6

    .line 1686
    :goto_15
    invoke-interface {v1, v5}, Lnw6;->isNull(I)Z

    .line 1687
    .line 1688
    .line 1689
    move-result v0

    .line 1690
    if-eqz v0, :cond_26

    .line 1691
    .line 1692
    move-object v0, v6

    .line 1693
    goto :goto_16

    .line 1694
    :cond_26
    invoke-interface {v1, v5}, Lnw6;->getLong(I)J

    .line 1695
    .line 1696
    .line 1697
    move-result-wide v3

    .line 1698
    long-to-int v0, v3

    .line 1699
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1700
    .line 1701
    .line 1702
    move-result-object v0

    .line 1703
    :goto_16
    if-eqz v0, :cond_28

    .line 1704
    .line 1705
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 1706
    .line 1707
    .line 1708
    move-result v0

    .line 1709
    if-eqz v0, :cond_27

    .line 1710
    .line 1711
    move v0, v2

    .line 1712
    goto :goto_17

    .line 1713
    :cond_27
    move v0, v9

    .line 1714
    :goto_17
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1715
    .line 1716
    .line 1717
    move-result-object v0

    .line 1718
    move-object v15, v0

    .line 1719
    goto :goto_18

    .line 1720
    :cond_28
    move-object v15, v6

    .line 1721
    :goto_18
    invoke-interface {v1, v7}, Lnw6;->isNull(I)Z

    .line 1722
    .line 1723
    .line 1724
    move-result v0

    .line 1725
    if-eqz v0, :cond_29

    .line 1726
    .line 1727
    move-object v0, v6

    .line 1728
    goto :goto_19

    .line 1729
    :cond_29
    invoke-interface {v1, v7}, Lnw6;->getLong(I)J

    .line 1730
    .line 1731
    .line 1732
    move-result-wide v3

    .line 1733
    long-to-int v0, v3

    .line 1734
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1735
    .line 1736
    .line 1737
    move-result-object v0

    .line 1738
    :goto_19
    if-eqz v0, :cond_2b

    .line 1739
    .line 1740
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 1741
    .line 1742
    .line 1743
    move-result v0

    .line 1744
    if-eqz v0, :cond_2a

    .line 1745
    .line 1746
    goto :goto_1a

    .line 1747
    :cond_2a
    move v2, v9

    .line 1748
    :goto_1a
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1749
    .line 1750
    .line 1751
    move-result-object v0

    .line 1752
    move-object/from16 v16, v0

    .line 1753
    .line 1754
    goto :goto_1b

    .line 1755
    :cond_2b
    move-object/from16 v16, v6

    .line 1756
    .line 1757
    :goto_1b
    invoke-interface {v1, v8}, Lnw6;->isNull(I)Z

    .line 1758
    .line 1759
    .line 1760
    move-result v0

    .line 1761
    if-eqz v0, :cond_2c

    .line 1762
    .line 1763
    :goto_1c
    move-object/from16 v17, v6

    .line 1764
    .line 1765
    goto :goto_1d

    .line 1766
    :cond_2c
    invoke-interface {v1, v8}, Lnw6;->R(I)Ljava/lang/String;

    .line 1767
    .line 1768
    .line 1769
    move-result-object v6

    .line 1770
    goto :goto_1c

    .line 1771
    :goto_1d
    new-instance v11, Lpm;

    .line 1772
    .line 1773
    invoke-direct/range {v11 .. v17}, Lpm;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1774
    .line 1775
    .line 1776
    move-object v6, v11

    .line 1777
    :cond_2d
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1778
    .line 1779
    .line 1780
    return-object v6

    .line 1781
    :goto_1e
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1782
    .line 1783
    .line 1784
    throw v0

    .line 1785
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
