.class public abstract Lcr;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static a:Ljava/lang/ref/WeakReference; = null

.field public static b:Z = false

.field public static c:Z = true

.field public static d:Z = true

.field public static e:Lmt3;

.field public static f:Lmt3;


# direct methods
.method public static a(I)Lar;
    .locals 7

    .line 1
    invoke-static {}, Lar;->getEntries()Ljx2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lz3;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance v1, Lw3;

    .line 11
    .line 12
    invoke-direct {v1, v0}, Lw3;-><init>(Lz3;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {v1}, Lw3;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {v1}, Lw3;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    move-object v2, v0

    .line 26
    check-cast v2, Lar;

    .line 27
    .line 28
    invoke-virtual {v2}, Lar;->getCode()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-ne v2, p0, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 v0, 0x0

    .line 36
    :goto_0
    check-cast v0, Lar;

    .line 37
    .line 38
    if-nez v0, :cond_2

    .line 39
    .line 40
    sget-object v1, Lvr6;->INSTANCE:Lvr6;

    .line 41
    .line 42
    const-string v0, "Unknown status code received = "

    .line 43
    .line 44
    invoke-static {p0, v0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    const/4 v5, 0x4

    .line 49
    const/4 v6, 0x0

    .line 50
    const-string v2, "AppInstallHelper"

    .line 51
    .line 52
    const/4 v4, 0x0

    .line 53
    invoke-static/range {v1 .. v6}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    sget-object p0, Lar;->UNKNOWN:Lar;

    .line 57
    .line 58
    return-object p0

    .line 59
    :cond_2
    return-object v0
.end method

.method public static b(Lil0;IILandroid/content/Intent;)V
    .locals 7

    .line 1
    const/16 v0, 0x131f

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eq p1, v0, :cond_2

    .line 5
    .line 6
    const p2, 0xbb5b

    .line 7
    .line 8
    .line 9
    if-eq p1, p2, :cond_0

    .line 10
    .line 11
    goto/16 :goto_9

    .line 12
    .line 13
    :cond_0
    sget-boolean p1, Lcr;->b:Z

    .line 14
    .line 15
    sget-object p2, Lg00;->a:Lg00;

    .line 16
    .line 17
    invoke-static {}, Lg00;->r()Landroid/content/pm/PackageManager;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-virtual {p2}, Landroid/content/pm/PackageManager;->canRequestPackageInstalls()Z

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    if-eqz p2, :cond_1

    .line 28
    .line 29
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 30
    .line 31
    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    sput-object p1, Lcr;->a:Ljava/lang/ref/WeakReference;

    .line 35
    .line 36
    sget-boolean p1, Lcr;->c:Z

    .line 37
    .line 38
    if-eqz p1, :cond_e

    .line 39
    .line 40
    const p1, 0x7f13042d

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p1}, Lil0;->M(I)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    invoke-static {p0}, Lcr;->d(Lil0;)V

    .line 48
    .line 49
    .line 50
    sget-object p1, Lar;->STATUS_FAILURE_ABORTED:Lar;

    .line 51
    .line 52
    invoke-static {}, Lcr;->f()Z

    .line 53
    .line 54
    .line 55
    move-result p2

    .line 56
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    invoke-static {p1, v1, p2}, Lpe4;->w(Lar;Ljava/lang/String;Z)Lcw5;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    invoke-static {p2, p1, p0}, Lcr;->g(Lcw5;Lar;Landroid/content/Context;)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_2
    if-eqz p3, :cond_4

    .line 68
    .line 69
    const-string p1, "android.content.pm.extra.STATUS"

    .line 70
    .line 71
    invoke-virtual {p3, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_3

    .line 76
    .line 77
    move-object v0, p3

    .line 78
    goto :goto_0

    .line 79
    :cond_3
    move-object v0, v1

    .line 80
    :goto_0
    if-eqz v0, :cond_4

    .line 81
    .line 82
    sget-object v2, Lar;->UNKNOWN:Lar;

    .line 83
    .line 84
    invoke-virtual {v2}, Lar;->getCode()I

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    goto :goto_1

    .line 97
    :cond_4
    move-object p1, v1

    .line 98
    :goto_1
    if-eqz p3, :cond_5

    .line 99
    .line 100
    const-string v0, "android.content.pm.extra.STATUS_MESSAGE"

    .line 101
    .line 102
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    goto :goto_2

    .line 107
    :cond_5
    move-object v0, v1

    .line 108
    :goto_2
    if-eqz p3, :cond_7

    .line 109
    .line 110
    const-string v2, "android.intent.extra.INSTALL_RESULT"

    .line 111
    .line 112
    invoke-virtual {p3, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    if-eqz v3, :cond_6

    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_6
    move-object p3, v1

    .line 120
    :goto_3
    if-eqz p3, :cond_7

    .line 121
    .line 122
    const/16 v3, -0x6e

    .line 123
    .line 124
    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 125
    .line 126
    .line 127
    move-result p3

    .line 128
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 129
    .line 130
    .line 131
    move-result-object p3

    .line 132
    goto :goto_4

    .line 133
    :cond_7
    move-object p3, v1

    .line 134
    :goto_4
    if-eqz p1, :cond_8

    .line 135
    .line 136
    new-instance p2, Lzq;

    .line 137
    .line 138
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    invoke-static {p1}, Lcr;->a(I)Lar;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-direct {p2, p1, v0}, Lzq;-><init>(Lar;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    goto/16 :goto_8

    .line 150
    .line 151
    :cond_8
    if-eqz p3, :cond_b

    .line 152
    .line 153
    new-instance p2, Lzq;

    .line 154
    .line 155
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 156
    .line 157
    .line 158
    move-result p1

    .line 159
    const/4 v0, 0x1

    .line 160
    if-eq p1, v0, :cond_9

    .line 161
    .line 162
    packed-switch p1, :pswitch_data_0

    .line 163
    .line 164
    .line 165
    packed-switch p1, :pswitch_data_1

    .line 166
    .line 167
    .line 168
    packed-switch p1, :pswitch_data_2

    .line 169
    .line 170
    .line 171
    packed-switch p1, :pswitch_data_3

    .line 172
    .line 173
    .line 174
    sget-object p1, Lar;->STATUS_FAILURE:Lar;

    .line 175
    .line 176
    goto :goto_5

    .line 177
    :pswitch_0
    sget-object p1, Lar;->STATUS_FAILURE_STORAGE:Lar;

    .line 178
    .line 179
    goto :goto_5

    .line 180
    :pswitch_1
    sget-object p1, Lar;->STATUS_FAILURE_CONFLICT:Lar;

    .line 181
    .line 182
    goto :goto_5

    .line 183
    :pswitch_2
    sget-object p1, Lar;->STATUS_FAILURE_INCOMPATIBLE:Lar;

    .line 184
    .line 185
    goto :goto_5

    .line 186
    :pswitch_3
    sget-object p1, Lar;->STATUS_FAILURE_ABORTED:Lar;

    .line 187
    .line 188
    goto :goto_5

    .line 189
    :pswitch_4
    sget-object p1, Lar;->STATUS_FAILURE_INVALID:Lar;

    .line 190
    .line 191
    goto :goto_5

    .line 192
    :cond_9
    sget-object p1, Lar;->STATUS_SUCCESS:Lar;

    .line 193
    .line 194
    :goto_5
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 195
    .line 196
    .line 197
    move-result p3

    .line 198
    if-eq p3, v0, :cond_a

    .line 199
    .line 200
    packed-switch p3, :pswitch_data_4

    .line 201
    .line 202
    .line 203
    packed-switch p3, :pswitch_data_5

    .line 204
    .line 205
    .line 206
    packed-switch p3, :pswitch_data_6

    .line 207
    .line 208
    .line 209
    const-string v0, "Install failed ("

    .line 210
    .line 211
    const-string v1, ")"

    .line 212
    .line 213
    invoke-static {p3, v0, v1}, Lxs1;->h(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object p3

    .line 217
    goto/16 :goto_6

    .line 218
    .line 219
    :pswitch_5
    const-string p3, "INSTALL_FAILED_ALREADY_EXISTS"

    .line 220
    .line 221
    goto/16 :goto_6

    .line 222
    .line 223
    :pswitch_6
    const-string p3, "INSTALL_FAILED_INVALID_APK"

    .line 224
    .line 225
    goto/16 :goto_6

    .line 226
    .line 227
    :pswitch_7
    const-string p3, "INSTALL_FAILED_INVALID_URI"

    .line 228
    .line 229
    goto/16 :goto_6

    .line 230
    .line 231
    :pswitch_8
    const-string p3, "INSTALL_FAILED_INSUFFICIENT_STORAGE"

    .line 232
    .line 233
    goto/16 :goto_6

    .line 234
    .line 235
    :pswitch_9
    const-string p3, "INSTALL_FAILED_DUPLICATE_PACKAGE"

    .line 236
    .line 237
    goto/16 :goto_6

    .line 238
    .line 239
    :pswitch_a
    const-string p3, "INSTALL_FAILED_NO_SHARED_USER"

    .line 240
    .line 241
    goto/16 :goto_6

    .line 242
    .line 243
    :pswitch_b
    const-string p3, "INSTALL_FAILED_UPDATE_INCOMPATIBLE"

    .line 244
    .line 245
    goto/16 :goto_6

    .line 246
    .line 247
    :pswitch_c
    const-string p3, "INSTALL_FAILED_SHARED_USER_INCOMPATIBLE"

    .line 248
    .line 249
    goto/16 :goto_6

    .line 250
    .line 251
    :pswitch_d
    const-string p3, "INSTALL_FAILED_MISSING_SHARED_LIBRARY"

    .line 252
    .line 253
    goto/16 :goto_6

    .line 254
    .line 255
    :pswitch_e
    const-string p3, "INSTALL_FAILED_REPLACE_COULDNT_DELETE"

    .line 256
    .line 257
    goto/16 :goto_6

    .line 258
    .line 259
    :pswitch_f
    const-string p3, "INSTALL_FAILED_DEXOPT"

    .line 260
    .line 261
    goto/16 :goto_6

    .line 262
    .line 263
    :pswitch_10
    const-string p3, "INSTALL_FAILED_OLDER_SDK"

    .line 264
    .line 265
    goto/16 :goto_6

    .line 266
    .line 267
    :pswitch_11
    const-string p3, "INSTALL_FAILED_CONFLICTING_PROVIDER"

    .line 268
    .line 269
    goto/16 :goto_6

    .line 270
    .line 271
    :pswitch_12
    const-string p3, "INSTALL_FAILED_NEWER_SDK"

    .line 272
    .line 273
    goto/16 :goto_6

    .line 274
    .line 275
    :pswitch_13
    const-string p3, "INSTALL_FAILED_TEST_ONLY"

    .line 276
    .line 277
    goto/16 :goto_6

    .line 278
    .line 279
    :pswitch_14
    const-string p3, "INSTALL_FAILED_CPU_ABI_INCOMPATIBLE"

    .line 280
    .line 281
    goto/16 :goto_6

    .line 282
    .line 283
    :pswitch_15
    const-string p3, "INSTALL_FAILED_MISSING_FEATURE"

    .line 284
    .line 285
    goto/16 :goto_6

    .line 286
    .line 287
    :pswitch_16
    const-string p3, "INSTALL_FAILED_CONTAINER_ERROR"

    .line 288
    .line 289
    goto/16 :goto_6

    .line 290
    .line 291
    :pswitch_17
    const-string p3, "INSTALL_FAILED_INVALID_INSTALL_LOCATION"

    .line 292
    .line 293
    goto/16 :goto_6

    .line 294
    .line 295
    :pswitch_18
    const-string p3, "INSTALL_FAILED_MEDIA_UNAVAILABLE"

    .line 296
    .line 297
    goto/16 :goto_6

    .line 298
    .line 299
    :pswitch_19
    const-string p3, "INSTALL_FAILED_VERIFICATION_TIMEOUT"

    .line 300
    .line 301
    goto/16 :goto_6

    .line 302
    .line 303
    :pswitch_1a
    const-string p3, "INSTALL_FAILED_VERIFICATION_FAILURE"

    .line 304
    .line 305
    goto/16 :goto_6

    .line 306
    .line 307
    :pswitch_1b
    const-string p3, "INSTALL_FAILED_PACKAGE_CHANGED"

    .line 308
    .line 309
    goto :goto_6

    .line 310
    :pswitch_1c
    const-string p3, "INSTALL_FAILED_UID_CHANGED"

    .line 311
    .line 312
    goto :goto_6

    .line 313
    :pswitch_1d
    const-string p3, "INSTALL_FAILED_VERSION_DOWNGRADE"

    .line 314
    .line 315
    goto :goto_6

    .line 316
    :pswitch_1e
    const-string p3, "INSTALL_FAILED_PERMISSION_MODEL_DOWNGRADE"

    .line 317
    .line 318
    goto :goto_6

    .line 319
    :pswitch_1f
    const-string p3, "INSTALL_FAILED_SANDBOX_VERSION_DOWNGRADE"

    .line 320
    .line 321
    goto :goto_6

    .line 322
    :pswitch_20
    const-string p3, "INSTALL_FAILED_MISSING_SPLIT"

    .line 323
    .line 324
    goto :goto_6

    .line 325
    :pswitch_21
    const-string p3, "INSTALL_FAILED_DEPRECATED_SDK_VERSION"

    .line 326
    .line 327
    goto :goto_6

    .line 328
    :pswitch_22
    const-string p3, "INSTALL_PARSE_FAILED_NOT_APK"

    .line 329
    .line 330
    goto :goto_6

    .line 331
    :pswitch_23
    const-string p3, "INSTALL_PARSE_FAILED_BAD_MANIFEST"

    .line 332
    .line 333
    goto :goto_6

    .line 334
    :pswitch_24
    const-string p3, "INSTALL_PARSE_FAILED_UNEXPECTED_EXCEPTION"

    .line 335
    .line 336
    goto :goto_6

    .line 337
    :pswitch_25
    const-string p3, "INSTALL_PARSE_FAILED_NO_CERTIFICATES"

    .line 338
    .line 339
    goto :goto_6

    .line 340
    :pswitch_26
    const-string p3, "INSTALL_PARSE_FAILED_INCONSISTENT_CERTIFICATES"

    .line 341
    .line 342
    goto :goto_6

    .line 343
    :pswitch_27
    const-string p3, "INSTALL_PARSE_FAILED_CERTIFICATE_ENCODING"

    .line 344
    .line 345
    goto :goto_6

    .line 346
    :pswitch_28
    const-string p3, "INSTALL_PARSE_FAILED_BAD_PACKAGE_NAME"

    .line 347
    .line 348
    goto :goto_6

    .line 349
    :pswitch_29
    const-string p3, "INSTALL_PARSE_FAILED_BAD_SHARED_USER_ID"

    .line 350
    .line 351
    goto :goto_6

    .line 352
    :pswitch_2a
    const-string p3, "INSTALL_PARSE_FAILED_MANIFEST_MALFORMED"

    .line 353
    .line 354
    goto :goto_6

    .line 355
    :pswitch_2b
    const-string p3, "INSTALL_PARSE_FAILED_MANIFEST_EMPTY"

    .line 356
    .line 357
    goto :goto_6

    .line 358
    :pswitch_2c
    const-string p3, "INSTALL_FAILED_INTERNAL_ERROR"

    .line 359
    .line 360
    goto :goto_6

    .line 361
    :pswitch_2d
    const-string p3, "INSTALL_FAILED_USER_RESTRICTED"

    .line 362
    .line 363
    goto :goto_6

    .line 364
    :pswitch_2e
    const-string p3, "INSTALL_FAILED_DUPLICATE_PERMISSION"

    .line 365
    .line 366
    goto :goto_6

    .line 367
    :pswitch_2f
    const-string p3, "INSTALL_FAILED_NO_MATCHING_ABIS"

    .line 368
    .line 369
    goto :goto_6

    .line 370
    :pswitch_30
    const-string p3, "INSTALL_FAILED_ABORTED"

    .line 371
    .line 372
    goto :goto_6

    .line 373
    :pswitch_31
    const-string p3, "INSTALL_FAILED_SESSION_INVALID"

    .line 374
    .line 375
    goto :goto_6

    .line 376
    :pswitch_32
    const-string p3, "INSTALL_FAILED_BAD_DEX_METADATA"

    .line 377
    .line 378
    goto :goto_6

    .line 379
    :pswitch_33
    const-string p3, "INSTALL_FAILED_BAD_SIGNATURE"

    .line 380
    .line 381
    goto :goto_6

    .line 382
    :cond_a
    const-string p3, "INSTALL_SUCCEEDED"

    .line 383
    .line 384
    :goto_6
    invoke-direct {p2, p1, p3}, Lzq;-><init>(Lar;Ljava/lang/String;)V

    .line 385
    .line 386
    .line 387
    goto :goto_8

    .line 388
    :cond_b
    new-instance p1, Lzq;

    .line 389
    .line 390
    const/4 p3, -0x1

    .line 391
    if-eq p2, p3, :cond_d

    .line 392
    .line 393
    if-eqz p2, :cond_c

    .line 394
    .line 395
    sget-object p2, Lar;->STATUS_FAILURE:Lar;

    .line 396
    .line 397
    goto :goto_7

    .line 398
    :cond_c
    sget-object p2, Lar;->STATUS_FAILURE_ABORTED:Lar;

    .line 399
    .line 400
    goto :goto_7

    .line 401
    :cond_d
    sget-object p2, Lar;->STATUS_SUCCESS:Lar;

    .line 402
    .line 403
    :goto_7
    invoke-direct {p1, p2, v1}, Lzq;-><init>(Lar;Ljava/lang/String;)V

    .line 404
    .line 405
    .line 406
    move-object p2, p1

    .line 407
    :goto_8
    invoke-static {p0}, Lcr;->d(Lil0;)V

    .line 408
    .line 409
    .line 410
    sget-object p1, Lbr;->a:[I

    .line 411
    .line 412
    iget-object p3, p2, Lzq;->a:Lar;

    .line 413
    .line 414
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    .line 415
    .line 416
    .line 417
    move-result v0

    .line 418
    aget p1, p1, v0

    .line 419
    .line 420
    const/4 v0, 0x2

    .line 421
    if-ne p1, v0, :cond_f

    .line 422
    .line 423
    sget-object v1, Lvr6;->INSTANCE:Lvr6;

    .line 424
    .line 425
    const/4 v5, 0x4

    .line 426
    const/4 v6, 0x0

    .line 427
    const-string v2, "AppInstallHelper"

    .line 428
    .line 429
    const-string v3, "Manual install successful"

    .line 430
    .line 431
    const/4 v4, 0x0

    .line 432
    invoke-static/range {v1 .. v6}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 433
    .line 434
    .line 435
    const p1, 0x7f130490

    .line 436
    .line 437
    .line 438
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object p1

    .line 442
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 443
    .line 444
    .line 445
    sget-object p2, Lzn4;->a:Lzn4;

    .line 446
    .line 447
    new-instance p2, Lcv;

    .line 448
    .line 449
    const/16 v0, 0xe

    .line 450
    .line 451
    invoke-direct {p2, v0, p0, p1}, Lcv;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 452
    .line 453
    .line 454
    invoke-static {p2}, Lzn4;->e(Lbt3;)V

    .line 455
    .line 456
    .line 457
    invoke-static {}, Lcr;->i()Lmt3;

    .line 458
    .line 459
    .line 460
    move-result-object p0

    .line 461
    if-eqz p0, :cond_e

    .line 462
    .line 463
    invoke-interface {p0, p3}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    .line 465
    .line 466
    :cond_e
    :goto_9
    return-void

    .line 467
    :cond_f
    iget-object p1, p2, Lzq;->b:Ljava/lang/String;

    .line 468
    .line 469
    invoke-static {}, Lcr;->f()Z

    .line 470
    .line 471
    .line 472
    move-result p2

    .line 473
    invoke-static {p3, p1, p2}, Lpe4;->w(Lar;Ljava/lang/String;Z)Lcw5;

    .line 474
    .line 475
    .line 476
    move-result-object p1

    .line 477
    iget-object p2, p1, Lcw5;->b:Ljava/lang/String;

    .line 478
    .line 479
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 480
    .line 481
    new-instance v1, Ljava/lang/StringBuilder;

    .line 482
    .line 483
    const-string v2, "Manual install failed with status="

    .line 484
    .line 485
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 486
    .line 487
    .line 488
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 489
    .line 490
    .line 491
    const-string v2, ", message="

    .line 492
    .line 493
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    .line 495
    .line 496
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    .line 498
    .line 499
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 500
    .line 501
    .line 502
    move-result-object v2

    .line 503
    const/4 v4, 0x4

    .line 504
    const/4 v5, 0x0

    .line 505
    const-string v1, "AppInstallHelper"

    .line 506
    .line 507
    const/4 v3, 0x0

    .line 508
    invoke-static/range {v0 .. v5}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 509
    .line 510
    .line 511
    sget-boolean v0, Lcr;->d:Z

    .line 512
    .line 513
    if-eqz v0, :cond_10

    .line 514
    .line 515
    invoke-static {p0, p2, p3}, Lcr;->h(Lil0;Ljava/lang/String;Lar;)V

    .line 516
    .line 517
    .line 518
    return-void

    .line 519
    :cond_10
    invoke-static {p1, p3, p0}, Lcr;->g(Lcw5;Lar;Landroid/content/Context;)V

    .line 520
    .line 521
    .line 522
    return-void

    .line 523
    :pswitch_data_0
    .packed-switch -0x76
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    :pswitch_data_1
    .packed-switch -0x71
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    :pswitch_data_2
    .packed-switch -0x6d
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    :pswitch_data_3
    .packed-switch -0x1d
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_1
    .end packed-switch

    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    :pswitch_data_4
    .packed-switch -0x76
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
    .end packed-switch

    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    :pswitch_data_5
    .packed-switch -0x71
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
    .end packed-switch

    :pswitch_data_6
    .packed-switch -0x1d
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
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
    .end packed-switch
.end method

.method public static c(Landroid/content/Context;Lil0;Landroid/content/Intent;)V
    .locals 9

    .line 1
    if-nez p1, :cond_1

    .line 2
    .line 3
    sget-object p1, Lcr;->a:Ljava/lang/ref/WeakReference;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lil0;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    :cond_1
    :goto_0
    sget-object v0, Lar;->UNKNOWN:Lar;

    .line 16
    .line 17
    invoke-virtual {v0}, Lar;->getCode()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const-string v1, "android.content.pm.extra.STATUS"

    .line 22
    .line 23
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-static {v0}, Lcr;->a(I)Lar;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v1, "android.content.pm.extra.STATUS_MESSAGE"

    .line 32
    .line 33
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 38
    .line 39
    new-instance v3, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v4, "handlePackageInstallerResult: PackageInstaller status = "

    .line 42
    .line 43
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v8, ", message="

    .line 50
    .line 51
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    const/4 v6, 0x4

    .line 62
    const/4 v7, 0x0

    .line 63
    const-string v3, "AppInstallHelper"

    .line 64
    .line 65
    const/4 v5, 0x0

    .line 66
    invoke-static/range {v2 .. v7}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    sget-object v3, Lbr;->a:[I

    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    aget v3, v3, v4

    .line 76
    .line 77
    const/4 v4, 0x1

    .line 78
    if-eq v3, v4, :cond_7

    .line 79
    .line 80
    const/4 p2, 0x2

    .line 81
    if-eq v3, p2, :cond_4

    .line 82
    .line 83
    invoke-static {}, Lcr;->f()Z

    .line 84
    .line 85
    .line 86
    move-result p2

    .line 87
    invoke-static {v0, v1, p2}, Lpe4;->w(Lar;Ljava/lang/String;Z)Lcw5;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    iget-object v1, p2, Lcw5;->b:Ljava/lang/String;

    .line 92
    .line 93
    new-instance v3, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    const-string v4, "Manual install failed with status="

    .line 96
    .line 97
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    const/4 v6, 0x4

    .line 114
    const/4 v7, 0x0

    .line 115
    const-string v3, "AppInstallHelper"

    .line 116
    .line 117
    const/4 v5, 0x0

    .line 118
    invoke-static/range {v2 .. v7}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    if-eqz p1, :cond_2

    .line 122
    .line 123
    invoke-static {p1}, Lcr;->d(Lil0;)V

    .line 124
    .line 125
    .line 126
    :cond_2
    sget-boolean v2, Lcr;->d:Z

    .line 127
    .line 128
    if-eqz v2, :cond_3

    .line 129
    .line 130
    if-eqz p1, :cond_3

    .line 131
    .line 132
    invoke-static {p1, v1, v0}, Lcr;->h(Lil0;Ljava/lang/String;Lar;)V

    .line 133
    .line 134
    .line 135
    return-void

    .line 136
    :cond_3
    invoke-static {p2, v0, p0}, Lcr;->g(Lcw5;Lar;Landroid/content/Context;)V

    .line 137
    .line 138
    .line 139
    return-void

    .line 140
    :cond_4
    const/4 v6, 0x4

    .line 141
    const/4 v7, 0x0

    .line 142
    const-string v3, "AppInstallHelper"

    .line 143
    .line 144
    const-string v4, "Manual install successful"

    .line 145
    .line 146
    const/4 v5, 0x0

    .line 147
    invoke-static/range {v2 .. v7}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    if-eqz p1, :cond_5

    .line 151
    .line 152
    invoke-static {p1}, Lcr;->d(Lil0;)V

    .line 153
    .line 154
    .line 155
    :cond_5
    const p1, 0x7f130490

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 163
    .line 164
    .line 165
    sget-object p2, Lzn4;->a:Lzn4;

    .line 166
    .line 167
    new-instance p2, Lcv;

    .line 168
    .line 169
    const/16 v1, 0xe

    .line 170
    .line 171
    invoke-direct {p2, v1, p0, p1}, Lcv;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 172
    .line 173
    .line 174
    invoke-static {p2}, Lzn4;->e(Lbt3;)V

    .line 175
    .line 176
    .line 177
    invoke-static {}, Lcr;->i()Lmt3;

    .line 178
    .line 179
    .line 180
    move-result-object p0

    .line 181
    if-eqz p0, :cond_6

    .line 182
    .line 183
    invoke-interface {p0, v0}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    :cond_6
    return-void

    .line 187
    :cond_7
    sput-boolean v4, Lcr;->b:Z

    .line 188
    .line 189
    const-string v0, "android.intent.extra.INTENT"

    .line 190
    .line 191
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 192
    .line 193
    .line 194
    move-result-object p2

    .line 195
    check-cast p2, Landroid/content/Intent;

    .line 196
    .line 197
    const v1, 0x7f130222

    .line 198
    .line 199
    .line 200
    if-eqz p2, :cond_a

    .line 201
    .line 202
    if-eqz p1, :cond_8

    .line 203
    .line 204
    const v0, 0xbb5b

    .line 205
    .line 206
    .line 207
    :try_start_0
    invoke-virtual {p1, p2, v0}, Lio1;->startActivityForResult(Landroid/content/Intent;I)V

    .line 208
    .line 209
    .line 210
    return-void

    .line 211
    :catch_0
    move-exception v0

    .line 212
    move-object p2, v0

    .line 213
    goto :goto_1

    .line 214
    :cond_8
    const/high16 v0, 0x10000000

    .line 215
    .line 216
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 217
    .line 218
    .line 219
    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    .line 221
    .line 222
    return-void

    .line 223
    :goto_1
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 224
    .line 225
    invoke-static {p2}, Lyc9;->g0(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v4

    .line 229
    const/4 v6, 0x4

    .line 230
    const/4 v7, 0x0

    .line 231
    const-string v3, "AppInstallHelper"

    .line 232
    .line 233
    const/4 v5, 0x0

    .line 234
    invoke-static/range {v2 .. v7}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 235
    .line 236
    .line 237
    if-eqz p1, :cond_9

    .line 238
    .line 239
    invoke-static {p1}, Lcr;->d(Lil0;)V

    .line 240
    .line 241
    .line 242
    :cond_9
    new-instance p1, Lcw5;

    .line 243
    .line 244
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object p2

    .line 248
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 249
    .line 250
    .line 251
    const-string v0, "System did not handle installation!"

    .line 252
    .line 253
    invoke-direct {p1, p2, v0}, Lcw5;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    sget-object p2, Lar;->STATUS_FAILURE:Lar;

    .line 257
    .line 258
    invoke-static {p1, p2, p0}, Lcr;->g(Lcw5;Lar;Landroid/content/Context;)V

    .line 259
    .line 260
    .line 261
    return-void

    .line 262
    :cond_a
    const/4 v6, 0x4

    .line 263
    const/4 v7, 0x0

    .line 264
    const-string v3, "AppInstallHelper"

    .line 265
    .line 266
    const-string v4, "Confirmation intent is null!"

    .line 267
    .line 268
    const/4 v5, 0x0

    .line 269
    invoke-static/range {v2 .. v7}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 270
    .line 271
    .line 272
    if-eqz p1, :cond_b

    .line 273
    .line 274
    invoke-static {p1}, Lcr;->d(Lil0;)V

    .line 275
    .line 276
    .line 277
    :cond_b
    new-instance p1, Lcw5;

    .line 278
    .line 279
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object p2

    .line 283
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 284
    .line 285
    .line 286
    const v0, 0x7f130581

    .line 287
    .line 288
    .line 289
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 294
    .line 295
    .line 296
    invoke-direct {p1, p2, v0}, Lcw5;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    sget-object p2, Lar;->STATUS_FAILURE:Lar;

    .line 300
    .line 301
    invoke-static {p1, p2, p0}, Lcr;->g(Lcw5;Lar;Landroid/content/Context;)V

    .line 302
    .line 303
    .line 304
    return-void
.end method

.method public static d(Lil0;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcr;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lil0;->H()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public static e(Lil0;Ljava/util/List;ZZLhf;Ljf;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 5
    .line 6
    const/4 v5, 0x0

    .line 7
    const/16 v6, 0x3e

    .line 8
    .line 9
    const-string v2, "\n"

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x0

    .line 13
    move-object v1, p1

    .line 14
    invoke-static/range {v1 .. v6}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    move-object v6, v1

    .line 19
    const-string v1, "install() called with \n"

    .line 20
    .line 21
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const/4 v4, 0x4

    .line 26
    const-string v1, "AppInstallHelper"

    .line 27
    .line 28
    invoke-static/range {v0 .. v5}, Lvr6;->d$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 32
    .line 33
    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    sput-object p1, Lcr;->a:Ljava/lang/ref/WeakReference;

    .line 37
    .line 38
    sput-boolean p2, Lcr;->c:Z

    .line 39
    .line 40
    sput-boolean p3, Lcr;->d:Z

    .line 41
    .line 42
    sput-object p4, Lcr;->e:Lmt3;

    .line 43
    .line 44
    sput-object p5, Lcr;->f:Lmt3;

    .line 45
    .line 46
    const/4 p1, 0x1

    .line 47
    sput-boolean p1, Lcr;->b:Z

    .line 48
    .line 49
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-lez p1, :cond_1

    .line 54
    .line 55
    sget-boolean p1, Lcr;->c:Z

    .line 56
    .line 57
    if-eqz p1, :cond_0

    .line 58
    .line 59
    const p1, 0x7f13042d

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, p1}, Lil0;->M(I)V

    .line 63
    .line 64
    .line 65
    :cond_0
    sget-object p1, Lzn4;->a:Lzn4;

    .line 66
    .line 67
    new-instance p1, Lxq;

    .line 68
    .line 69
    const/4 p2, 0x0

    .line 70
    invoke-direct {p1, p2, v6, p0}, Lxq;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    invoke-static {p1}, Lzn4;->d(Lbt3;)V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :cond_1
    new-instance p1, Lcw5;

    .line 78
    .line 79
    const p2, 0x7f130222

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    const p3, 0x7f130581

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p3

    .line 96
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    invoke-direct {p1, p2, p3}, Lcw5;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    sget-object p2, Lar;->STATUS_FAILURE:Lar;

    .line 103
    .line 104
    invoke-static {p1, p2, p0}, Lcr;->g(Lcw5;Lar;Landroid/content/Context;)V

    .line 105
    .line 106
    .line 107
    return-void
.end method

.method public static f()Z
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x24

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    :try_start_0
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 9
    .line 10
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-class v1, Landroid/security/advancedprotection/AdvancedProtectionManager;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Landroid/security/advancedprotection/AdvancedProtectionManager;

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    :goto_0
    const/4 v0, 0x0

    .line 25
    return v0

    .line 26
    :cond_1
    invoke-virtual {v0}, Landroid/security/advancedprotection/AdvancedProtectionManager;->isAdvancedProtectionEnabled()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 31
    .line 32
    .line 33
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    goto :goto_1

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    new-instance v1, Lbn6;

    .line 37
    .line 38
    invoke-direct {v1, v0}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 39
    .line 40
    .line 41
    move-object v0, v1

    .line 42
    :goto_1
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 43
    .line 44
    instance-of v2, v0, Lbn6;

    .line 45
    .line 46
    if-eqz v2, :cond_2

    .line 47
    .line 48
    move-object v0, v1

    .line 49
    :cond_2
    check-cast v0, Ljava/lang/Boolean;

    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    return v0
.end method

.method public static g(Lcw5;Lar;Landroid/content/Context;)V
    .locals 2

    .line 1
    sget-object v0, Lcr;->e:Lmt3;

    .line 2
    .line 3
    invoke-static {}, Lcr;->i()Lmt3;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0, p0}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object p0, p0, Lcw5;->b:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    sget-object v0, Lzn4;->a:Lzn4;

    .line 19
    .line 20
    invoke-static {p2, p0}, Ldj7;->y(Landroid/content/Context;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-interface {v1, p1}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void
.end method

.method public static h(Lil0;Ljava/lang/String;Lar;)V
    .locals 5

    .line 1
    invoke-static {}, Lcr;->i()Lmt3;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lhv1;

    .line 6
    .line 7
    const v2, 0x7f140160

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, p0, v2}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 11
    .line 12
    .line 13
    new-instance v3, Ls35;

    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    invoke-direct {v3, p0, v2, v1, v4}, Ls35;-><init>(Lio1;ILhv1;Ljava/lang/Float;)V

    .line 17
    .line 18
    .line 19
    iget-object p0, v3, Lva;->b:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p0, Lra;

    .line 22
    .line 23
    const-string v1, "APK install failed"

    .line 24
    .line 25
    iput-object v1, p0, Lra;->d:Ljava/lang/CharSequence;

    .line 26
    .line 27
    iput-object p1, p0, Lra;->f:Ljava/lang/CharSequence;

    .line 28
    .line 29
    const p1, 0x7f1303e6

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, p1, v4}, Lv75;->s(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 33
    .line 34
    .line 35
    new-instance p1, Lwq;

    .line 36
    .line 37
    invoke-direct {p1, v0, p2}, Lwq;-><init>(Lmt3;Lar;)V

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Lra;->n:Landroid/content/DialogInterface$OnDismissListener;

    .line 41
    .line 42
    invoke-virtual {v3}, Ls35;->m()Lwa;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    if-nez p0, :cond_0

    .line 47
    .line 48
    if-eqz v0, :cond_0

    .line 49
    .line 50
    invoke-interface {v0, p2}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    :cond_0
    return-void
.end method

.method public static i()Lmt3;
    .locals 3

    .line 1
    sget-object v0, Lcr;->f:Lmt3;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    sput-object v1, Lcr;->a:Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    sput-boolean v2, Lcr;->b:Z

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    sput-boolean v2, Lcr;->c:Z

    .line 11
    .line 12
    sput-boolean v2, Lcr;->d:Z

    .line 13
    .line 14
    sput-object v1, Lcr;->e:Lmt3;

    .line 15
    .line 16
    sput-object v1, Lcr;->f:Lmt3;

    .line 17
    .line 18
    return-object v0
.end method
