.class public abstract Lep0;
.super Lji8;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final n:Ljava/util/HashMap;

.field public static final p:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    const-class v2, Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    new-instance v4, Liq7;

    .line 18
    .line 19
    invoke-direct {v4, v2}, Lh58;-><init>(Ljava/lang/Class;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    sget-object v2, Lvp5;->f:Lvp5;

    .line 26
    .line 27
    const-class v3, Ljava/lang/StringBuffer;

    .line 28
    .line 29
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    const-class v3, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    const-class v3, Ljava/lang/Character;

    .line 46
    .line 47
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 55
    .line 56
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    const-class v2, Ljava/lang/Integer;

    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    new-instance v4, Lbq5;

    .line 70
    .line 71
    invoke-direct {v4, v2}, Lh58;-><init>(Ljava/lang/Class;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 78
    .line 79
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    new-instance v4, Lbq5;

    .line 84
    .line 85
    invoke-direct {v4, v2}, Lh58;-><init>(Ljava/lang/Class;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    const-class v2, Ljava/lang/Long;

    .line 92
    .line 93
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    new-instance v4, Lcq5;

    .line 98
    .line 99
    invoke-direct {v4, v2}, Lh58;-><init>(Ljava/lang/Class;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 106
    .line 107
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    new-instance v4, Lcq5;

    .line 112
    .line 113
    invoke-direct {v4, v2}, Lh58;-><init>(Ljava/lang/Class;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    const-class v2, Ljava/lang/Byte;

    .line 120
    .line 121
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    sget-object v3, Laq5;->d:Laq5;

    .line 126
    .line 127
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 131
    .line 132
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    const-class v2, Ljava/lang/Short;

    .line 140
    .line 141
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    sget-object v3, Ldq5;->d:Ldq5;

    .line 146
    .line 147
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 151
    .line 152
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    const-class v2, Ljava/lang/Double;

    .line 160
    .line 161
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    new-instance v4, Lyp5;

    .line 166
    .line 167
    invoke-direct {v4, v2}, Lh58;-><init>(Ljava/lang/Class;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 174
    .line 175
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    new-instance v4, Lyp5;

    .line 180
    .line 181
    invoke-direct {v4, v2}, Lh58;-><init>(Ljava/lang/Class;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    const-class v2, Ljava/lang/Float;

    .line 188
    .line 189
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    sget-object v3, Lzp5;->d:Lzp5;

    .line 194
    .line 195
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 199
    .line 200
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 208
    .line 209
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    new-instance v3, Lqt0;

    .line 214
    .line 215
    const/4 v4, 0x1

    .line 216
    invoke-direct {v3, v4}, Lqt0;-><init>(Z)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    const-class v2, Ljava/lang/Boolean;

    .line 223
    .line 224
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    new-instance v3, Lqt0;

    .line 229
    .line 230
    const/4 v4, 0x0

    .line 231
    invoke-direct {v3, v4}, Lqt0;-><init>(Z)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    const-class v2, Ljava/math/BigInteger;

    .line 238
    .line 239
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v3

    .line 243
    new-instance v5, Lwp5;

    .line 244
    .line 245
    invoke-direct {v5, v2}, Lh58;-><init>(Ljava/lang/Class;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v1, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    const-class v2, Ljava/math/BigDecimal;

    .line 252
    .line 253
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v3

    .line 257
    new-instance v5, Lwp5;

    .line 258
    .line 259
    invoke-direct {v5, v2}, Lh58;-><init>(Ljava/lang/Class;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v1, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    const-class v2, Ljava/util/Calendar;

    .line 266
    .line 267
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v2

    .line 271
    sget-object v3, Lmz0;->k:Lmz0;

    .line 272
    .line 273
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    const-class v2, Ljava/util/Date;

    .line 277
    .line 278
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v2

    .line 282
    sget-object v3, Ldd2;->k:Ldd2;

    .line 283
    .line 284
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    new-instance v2, Ljava/util/HashMap;

    .line 288
    .line 289
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 290
    .line 291
    .line 292
    new-instance v3, Lvp5;

    .line 293
    .line 294
    const-class v5, Ljava/net/URL;

    .line 295
    .line 296
    invoke-direct {v3, v4, v5}, Lvp5;-><init>(ILjava/lang/Class;)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v2, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    new-instance v3, Lvp5;

    .line 303
    .line 304
    const-class v5, Ljava/net/URI;

    .line 305
    .line 306
    invoke-direct {v3, v4, v5}, Lvp5;-><init>(ILjava/lang/Class;)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v2, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    new-instance v3, Lvp5;

    .line 313
    .line 314
    const-class v5, Ljava/util/Currency;

    .line 315
    .line 316
    invoke-direct {v3, v4, v5}, Lvp5;-><init>(ILjava/lang/Class;)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {v2, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    new-instance v3, Ljd8;

    .line 323
    .line 324
    const/4 v5, 0x0

    .line 325
    invoke-direct {v3, v5}, Ljd8;-><init>(Ljava/lang/Boolean;)V

    .line 326
    .line 327
    .line 328
    const-class v5, Ljava/util/UUID;

    .line 329
    .line 330
    invoke-virtual {v2, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    new-instance v3, Lvp5;

    .line 334
    .line 335
    const-class v5, Ljava/util/regex/Pattern;

    .line 336
    .line 337
    invoke-direct {v3, v4, v5}, Lvp5;-><init>(ILjava/lang/Class;)V

    .line 338
    .line 339
    .line 340
    invoke-virtual {v2, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    new-instance v3, Lvp5;

    .line 344
    .line 345
    const-class v5, Ljava/util/Locale;

    .line 346
    .line 347
    invoke-direct {v3, v4, v5}, Lvp5;-><init>(ILjava/lang/Class;)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v2, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    .line 352
    .line 353
    const-class v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 354
    .line 355
    const-class v4, Lnn7;

    .line 356
    .line 357
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    const-class v3, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 361
    .line 362
    const-class v4, Lon7;

    .line 363
    .line 364
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    .line 366
    .line 367
    const-class v3, Ljava/util/concurrent/atomic/AtomicLong;

    .line 368
    .line 369
    const-class v4, Lpn7;

    .line 370
    .line 371
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    .line 373
    .line 374
    const-class v3, Ljava/io/File;

    .line 375
    .line 376
    const-class v4, Ll93;

    .line 377
    .line 378
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    const-class v3, Ljava/lang/Class;

    .line 382
    .line 383
    const-class v4, Lp81;

    .line 384
    .line 385
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    .line 387
    .line 388
    const-class v3, Ljava/lang/Void;

    .line 389
    .line 390
    sget-object v4, Lqp5;->d:Lqp5;

    .line 391
    .line 392
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    .line 394
    .line 395
    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 396
    .line 397
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    .line 399
    .line 400
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 401
    .line 402
    .line 403
    move-result-object v2

    .line 404
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 405
    .line 406
    .line 407
    move-result-object v2

    .line 408
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 409
    .line 410
    .line 411
    move-result v3

    .line 412
    if-eqz v3, :cond_1

    .line 413
    .line 414
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 415
    .line 416
    .line 417
    move-result-object v3

    .line 418
    check-cast v3, Ljava/util/Map$Entry;

    .line 419
    .line 420
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 421
    .line 422
    .line 423
    move-result-object v4

    .line 424
    instance-of v5, v4, Lem4;

    .line 425
    .line 426
    if-eqz v5, :cond_0

    .line 427
    .line 428
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 429
    .line 430
    .line 431
    move-result-object v3

    .line 432
    check-cast v3, Ljava/lang/Class;

    .line 433
    .line 434
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object v3

    .line 438
    check-cast v4, Lem4;

    .line 439
    .line 440
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    .line 442
    .line 443
    goto :goto_0

    .line 444
    :cond_0
    check-cast v4, Ljava/lang/Class;

    .line 445
    .line 446
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 447
    .line 448
    .line 449
    move-result-object v3

    .line 450
    check-cast v3, Ljava/lang/Class;

    .line 451
    .line 452
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 453
    .line 454
    .line 455
    move-result-object v3

    .line 456
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    .line 458
    .line 459
    goto :goto_0

    .line 460
    :cond_1
    const-class v2, Lg58;

    .line 461
    .line 462
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v2

    .line 466
    const-class v3, Lh58;

    .line 467
    .line 468
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    .line 470
    .line 471
    sput-object v1, Lep0;->n:Ljava/util/HashMap;

    .line 472
    .line 473
    sput-object v0, Lep0;->p:Ljava/util/HashMap;

    .line 474
    .line 475
    return-void
.end method

.method public static S(Lc87;Lwo0;Lgc8;Ljava/lang/Class;)Lqk4;
    .locals 2

    .line 1
    iget-object p0, p0, Lc87;->a:Lv77;

    .line 2
    .line 3
    iget-object v0, p0, Lt65;->k:Lmp7;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    sget-object v0, Lqk4;->e:Lqk4;

    .line 9
    .line 10
    iget-object v1, p1, Lwo0;->d:Las5;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iget-object p1, p1, Lwo0;->e:Lhd;

    .line 15
    .line 16
    invoke-virtual {v1, p1}, Las5;->z(Ljb9;)Lqk4;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {v0, p1}, Lqk4;->a(Lqk4;)Lqk4;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :cond_0
    invoke-virtual {p0, p3}, Lt65;->e(Ljava/lang/Class;)Lcz4;

    .line 25
    .line 26
    .line 27
    iget-object p1, p2, Lgc8;->f:Ljava/lang/Class;

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Lt65;->e(Ljava/lang/Class;)Lcz4;

    .line 30
    .line 31
    .line 32
    return-object v0
.end method

.method public static U(Lc87;Ljb9;)Lem4;
    .locals 2

    .line 1
    iget-object v0, p0, Lc87;->a:Lv77;

    .line 2
    .line 3
    invoke-virtual {v0}, Ls65;->d()Las5;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1, p1}, Las5;->K(Ljb9;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    return-object p0

    .line 15
    :cond_0
    invoke-virtual {p0, p1, v1}, Lc87;->E(Ljb9;Ljava/lang/Object;)Lem4;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0}, Ls65;->d()Las5;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0, p1}, Las5;->G(Ljb9;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-nez p1, :cond_1

    .line 28
    .line 29
    return-object v1

    .line 30
    :cond_1
    invoke-virtual {p0, p1}, Lc87;->f(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    return-object v1
.end method


# virtual methods
.method public final T(Lc87;Lgc8;Lwo0;)Ltn7;
    .locals 2

    .line 1
    iget-object p2, p2, Lgc8;->f:Ljava/lang/Class;

    .line 2
    .line 3
    const-class v0, Lyl4;

    .line 4
    .line 5
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    sget-object p0, Lu77;->c:Lu77;

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    invoke-virtual {p3}, Lwo0;->c()Lod;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    if-eqz p2, :cond_6

    .line 19
    .line 20
    iget-object p3, p1, Lc87;->a:Lv77;

    .line 21
    .line 22
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    sget-object v0, Lu65;->G:Lu65;

    .line 26
    .line 27
    invoke-virtual {p3, v0}, Ls65;->i(Lu65;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {p2}, Lod;->r0()Ljava/lang/reflect/Member;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sget-object v1, Lu65;->H:Lu65;

    .line 38
    .line 39
    invoke-virtual {p3, v1}, Ls65;->i(Lu65;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    invoke-static {v0, v1}, Lu81;->d(Ljava/lang/reflect/Member;Z)V

    .line 44
    .line 45
    .line 46
    :cond_1
    invoke-virtual {p2}, Ljb9;->D()Lgc8;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-static {p1, p2}, Lep0;->U(Lc87;Ljb9;)Lem4;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    if-nez p1, :cond_2

    .line 55
    .line 56
    iget-object p1, v0, Lgc8;->n:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast p1, Lem4;

    .line 59
    .line 60
    :cond_2
    iget-object v1, v0, Lgc8;->p:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v1, Lrc8;

    .line 63
    .line 64
    if-nez v1, :cond_3

    .line 65
    .line 66
    invoke-virtual {p0, p3, v0}, Lep0;->h(Lv77;Lgc8;)Lsc8;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    :cond_3
    invoke-virtual {p3}, Ls65;->d()Las5;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-virtual {p0, p2}, Las5;->x(Ljb9;)Lmk4;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    iget-boolean p3, p0, Lmk4;->c:Z

    .line 79
    .line 80
    if-eqz p3, :cond_4

    .line 81
    .line 82
    sget-object p0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_4
    iget-object p0, p0, Lmk4;->a:Ljava/util/Set;

    .line 86
    .line 87
    :goto_0
    if-eqz p1, :cond_5

    .line 88
    .line 89
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    .line 90
    .line 91
    .line 92
    move-result p3

    .line 93
    if-nez p3, :cond_5

    .line 94
    .line 95
    invoke-virtual {p1, p0}, Lem4;->i(Ljava/util/Set;)Lem4;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    :cond_5
    new-instance p3, Lkn4;

    .line 100
    .line 101
    invoke-direct {p3, p2, v1, p1, p0}, Lkn4;-><init>(Lod;Lrc8;Lem4;Ljava/util/Set;)V

    .line 102
    .line 103
    .line 104
    return-object p3

    .line 105
    :cond_6
    const/4 p0, 0x0

    .line 106
    return-object p0
.end method

.method public final f(Lc87;Lgc8;)Lem4;
    .locals 9

    .line 1
    iget-object v0, p1, Lc87;->a:Lv77;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Lv77;->k(Lgc8;)Lwo0;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object p2, p2, Lgc8;->f:Ljava/lang/Class;

    .line 8
    .line 9
    iget-object v2, v1, Lwo0;->e:Lhd;

    .line 10
    .line 11
    invoke-virtual {v0}, Ls65;->d()Las5;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-virtual {v3, v2}, Las5;->k(Ljb9;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    const/4 v4, 0x0

    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    invoke-virtual {p1, v2, v3}, Lc87;->E(Ljb9;Ljava/lang/Object;)Lem4;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move-object v3, v4

    .line 28
    :goto_0
    if-nez v3, :cond_23

    .line 29
    .line 30
    const/4 v3, 0x1

    .line 31
    const/16 v5, 0x8

    .line 32
    .line 33
    if-eqz p2, :cond_15

    .line 34
    .line 35
    const-class v6, Ljava/lang/Object;

    .line 36
    .line 37
    if-ne p2, v6, :cond_1

    .line 38
    .line 39
    goto/16 :goto_4

    .line 40
    .line 41
    :cond_1
    const-class v6, Ljava/lang/String;

    .line 42
    .line 43
    if-ne p2, v6, :cond_2

    .line 44
    .line 45
    sget-object v6, Lxx3;->e:Lnx0;

    .line 46
    .line 47
    :goto_1
    move-object v7, v6

    .line 48
    goto/16 :goto_5

    .line 49
    .line 50
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Class;->isPrimitive()Z

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    const-class v7, Ljava/lang/Long;

    .line 55
    .line 56
    const-class v8, Ljava/lang/Integer;

    .line 57
    .line 58
    if-eqz v6, :cond_b

    .line 59
    .line 60
    sget-object v6, Lu81;->a:[Ljava/lang/annotation/Annotation;

    .line 61
    .line 62
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 63
    .line 64
    if-ne p2, v6, :cond_3

    .line 65
    .line 66
    move-object v6, v8

    .line 67
    goto :goto_2

    .line 68
    :cond_3
    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 69
    .line 70
    if-ne p2, v6, :cond_4

    .line 71
    .line 72
    move-object v6, v7

    .line 73
    goto :goto_2

    .line 74
    :cond_4
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 75
    .line 76
    if-ne p2, v6, :cond_5

    .line 77
    .line 78
    const-class v6, Ljava/lang/Boolean;

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_5
    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 82
    .line 83
    if-ne p2, v6, :cond_6

    .line 84
    .line 85
    const-class v6, Ljava/lang/Double;

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_6
    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 89
    .line 90
    if-ne p2, v6, :cond_7

    .line 91
    .line 92
    const-class v6, Ljava/lang/Float;

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_7
    sget-object v6, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 96
    .line 97
    if-ne p2, v6, :cond_8

    .line 98
    .line 99
    const-class v6, Ljava/lang/Byte;

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_8
    sget-object v6, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 103
    .line 104
    if-ne p2, v6, :cond_9

    .line 105
    .line 106
    const-class v6, Ljava/lang/Short;

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_9
    sget-object v6, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 110
    .line 111
    if-ne p2, v6, :cond_a

    .line 112
    .line 113
    const-class v6, Ljava/lang/Character;

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_a
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    const-string p1, " is not a primitive type"

    .line 121
    .line 122
    const-string p2, "Class "

    .line 123
    .line 124
    invoke-static {p0, p1, p2}, Lz5;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    return-object v4

    .line 128
    :cond_b
    move-object v6, p2

    .line 129
    :goto_2
    if-ne v6, v8, :cond_c

    .line 130
    .line 131
    new-instance v7, Lqn7;

    .line 132
    .line 133
    const/4 v8, 0x5

    .line 134
    invoke-direct {v7, v8, v6}, Lqn7;-><init>(ILjava/lang/Class;)V

    .line 135
    .line 136
    .line 137
    goto/16 :goto_5

    .line 138
    .line 139
    :cond_c
    if-ne v6, v7, :cond_d

    .line 140
    .line 141
    new-instance v7, Lqn7;

    .line 142
    .line 143
    const/4 v8, 0x6

    .line 144
    invoke-direct {v7, v8, v6}, Lqn7;-><init>(ILjava/lang/Class;)V

    .line 145
    .line 146
    .line 147
    goto :goto_5

    .line 148
    :cond_d
    invoke-virtual {v6}, Ljava/lang/Class;->isPrimitive()Z

    .line 149
    .line 150
    .line 151
    move-result v7

    .line 152
    if-nez v7, :cond_14

    .line 153
    .line 154
    const-class v7, Ljava/lang/Number;

    .line 155
    .line 156
    invoke-virtual {v7, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 157
    .line 158
    .line 159
    move-result v7

    .line 160
    if-eqz v7, :cond_e

    .line 161
    .line 162
    goto :goto_3

    .line 163
    :cond_e
    const-class v7, Ljava/lang/Class;

    .line 164
    .line 165
    if-ne v6, v7, :cond_f

    .line 166
    .line 167
    new-instance v7, Lqn7;

    .line 168
    .line 169
    const/4 v8, 0x3

    .line 170
    invoke-direct {v7, v8, v6}, Lqn7;-><init>(ILjava/lang/Class;)V

    .line 171
    .line 172
    .line 173
    goto :goto_5

    .line 174
    :cond_f
    const-class v7, Ljava/util/Date;

    .line 175
    .line 176
    invoke-virtual {v7, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 177
    .line 178
    .line 179
    move-result v7

    .line 180
    if-eqz v7, :cond_10

    .line 181
    .line 182
    new-instance v7, Lqn7;

    .line 183
    .line 184
    invoke-direct {v7, v3, v6}, Lqn7;-><init>(ILjava/lang/Class;)V

    .line 185
    .line 186
    .line 187
    goto :goto_5

    .line 188
    :cond_10
    const-class v7, Ljava/util/Calendar;

    .line 189
    .line 190
    invoke-virtual {v7, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 191
    .line 192
    .line 193
    move-result v7

    .line 194
    if-eqz v7, :cond_11

    .line 195
    .line 196
    new-instance v7, Lqn7;

    .line 197
    .line 198
    const/4 v8, 0x2

    .line 199
    invoke-direct {v7, v8, v6}, Lqn7;-><init>(ILjava/lang/Class;)V

    .line 200
    .line 201
    .line 202
    goto :goto_5

    .line 203
    :cond_11
    const-class v7, Ljava/util/UUID;

    .line 204
    .line 205
    if-ne v6, v7, :cond_12

    .line 206
    .line 207
    new-instance v7, Lqn7;

    .line 208
    .line 209
    invoke-direct {v7, v5, v6}, Lqn7;-><init>(ILjava/lang/Class;)V

    .line 210
    .line 211
    .line 212
    goto :goto_5

    .line 213
    :cond_12
    const-class v7, [B

    .line 214
    .line 215
    if-ne v6, v7, :cond_13

    .line 216
    .line 217
    new-instance v7, Lqn7;

    .line 218
    .line 219
    const/4 v8, 0x7

    .line 220
    invoke-direct {v7, v8, v6}, Lqn7;-><init>(ILjava/lang/Class;)V

    .line 221
    .line 222
    .line 223
    goto :goto_5

    .line 224
    :cond_13
    move-object v7, v4

    .line 225
    goto :goto_5

    .line 226
    :cond_14
    :goto_3
    new-instance v7, Lqn7;

    .line 227
    .line 228
    invoke-direct {v7, v5, v6}, Lqn7;-><init>(ILjava/lang/Class;)V

    .line 229
    .line 230
    .line 231
    goto :goto_5

    .line 232
    :cond_15
    :goto_4
    new-instance v6, Lrn7;

    .line 233
    .line 234
    invoke-direct {v6}, Lrn7;-><init>()V

    .line 235
    .line 236
    .line 237
    goto/16 :goto_1

    .line 238
    .line 239
    :goto_5
    if-nez v7, :cond_22

    .line 240
    .line 241
    iget-object v6, v1, Lwo0;->b:Lxv5;

    .line 242
    .line 243
    if-nez v6, :cond_17

    .line 244
    .line 245
    :cond_16
    move-object v3, v4

    .line 246
    goto :goto_7

    .line 247
    :cond_17
    iget-boolean v7, v6, Lxv5;->i:Z

    .line 248
    .line 249
    if-nez v7, :cond_18

    .line 250
    .line 251
    invoke-virtual {v6}, Lxv5;->i()V

    .line 252
    .line 253
    .line 254
    :cond_18
    iget-object v7, v6, Lxv5;->q:Ljava/util/LinkedList;

    .line 255
    .line 256
    if-eqz v7, :cond_16

    .line 257
    .line 258
    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    .line 259
    .line 260
    .line 261
    move-result v7

    .line 262
    const/4 v8, 0x0

    .line 263
    if-le v7, v3, :cond_1a

    .line 264
    .line 265
    iget-object v7, v6, Lxv5;->q:Ljava/util/LinkedList;

    .line 266
    .line 267
    invoke-static {v7}, Lxv5;->g(Ljava/util/LinkedList;)Z

    .line 268
    .line 269
    .line 270
    move-result v7

    .line 271
    if-eqz v7, :cond_19

    .line 272
    .line 273
    goto :goto_6

    .line 274
    :cond_19
    iget-object p0, v6, Lxv5;->q:Ljava/util/LinkedList;

    .line 275
    .line 276
    invoke-virtual {p0, v8}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object p0

    .line 280
    iget-object p1, v6, Lxv5;->q:Ljava/util/LinkedList;

    .line 281
    .line 282
    invoke-virtual {p1, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object p1

    .line 286
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object p0

    .line 290
    const-string p1, "Multiple \'as-key\' properties defined (%s vs %s)"

    .line 291
    .line 292
    invoke-virtual {v6, p1, p0}, Lxv5;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 293
    .line 294
    .line 295
    throw v4

    .line 296
    :cond_1a
    :goto_6
    iget-object v3, v6, Lxv5;->q:Ljava/util/LinkedList;

    .line 297
    .line 298
    invoke-virtual {v3, v8}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move-result-object v3

    .line 302
    check-cast v3, Lod;

    .line 303
    .line 304
    :goto_7
    if-nez v3, :cond_1b

    .line 305
    .line 306
    invoke-virtual {v1}, Lwo0;->c()Lod;

    .line 307
    .line 308
    .line 309
    move-result-object v3

    .line 310
    :cond_1b
    if-eqz v3, :cond_1f

    .line 311
    .line 312
    invoke-virtual {v3}, Ljb9;->D()Lgc8;

    .line 313
    .line 314
    .line 315
    move-result-object p2

    .line 316
    invoke-virtual {p0, p1, p2}, Lep0;->f(Lc87;Lgc8;)Lem4;

    .line 317
    .line 318
    .line 319
    move-result-object p0

    .line 320
    sget-object p1, Lu65;->G:Lu65;

    .line 321
    .line 322
    invoke-virtual {v0, p1}, Ls65;->i(Lu65;)Z

    .line 323
    .line 324
    .line 325
    move-result p1

    .line 326
    if-eqz p1, :cond_1c

    .line 327
    .line 328
    invoke-virtual {v3}, Lod;->r0()Ljava/lang/reflect/Member;

    .line 329
    .line 330
    .line 331
    move-result-object p1

    .line 332
    sget-object p2, Lu65;->H:Lu65;

    .line 333
    .line 334
    invoke-virtual {v0, p2}, Ls65;->i(Lu65;)Z

    .line 335
    .line 336
    .line 337
    move-result p2

    .line 338
    invoke-static {p1, p2}, Lu81;->d(Ljava/lang/reflect/Member;Z)V

    .line 339
    .line 340
    .line 341
    :cond_1c
    invoke-virtual {v0}, Ls65;->d()Las5;

    .line 342
    .line 343
    .line 344
    move-result-object p1

    .line 345
    invoke-virtual {p1, v3}, Las5;->x(Ljb9;)Lmk4;

    .line 346
    .line 347
    .line 348
    move-result-object p1

    .line 349
    iget-boolean p2, p1, Lmk4;->c:Z

    .line 350
    .line 351
    if-eqz p2, :cond_1d

    .line 352
    .line 353
    sget-object p1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 354
    .line 355
    goto :goto_8

    .line 356
    :cond_1d
    iget-object p1, p1, Lmk4;->a:Ljava/util/Set;

    .line 357
    .line 358
    :goto_8
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    .line 359
    .line 360
    .line 361
    move-result p2

    .line 362
    if-nez p2, :cond_1e

    .line 363
    .line 364
    invoke-virtual {p0, p1}, Lem4;->i(Ljava/util/Set;)Lem4;

    .line 365
    .line 366
    .line 367
    move-result-object p0

    .line 368
    :cond_1e
    new-instance p2, Lkn4;

    .line 369
    .line 370
    invoke-direct {p2, v3, v4, p0, p1}, Lkn4;-><init>(Lod;Lrc8;Lem4;Ljava/util/Set;)V

    .line 371
    .line 372
    .line 373
    move-object v3, p2

    .line 374
    goto :goto_a

    .line 375
    :cond_1f
    if-eqz p2, :cond_21

    .line 376
    .line 377
    const-class p0, Ljava/lang/Enum;

    .line 378
    .line 379
    if-ne p2, p0, :cond_20

    .line 380
    .line 381
    new-instance p0, Lrn7;

    .line 382
    .line 383
    invoke-direct {p0}, Lrn7;-><init>()V

    .line 384
    .line 385
    .line 386
    :goto_9
    move-object v3, p0

    .line 387
    goto :goto_a

    .line 388
    :cond_20
    sget-object p1, Lu81;->a:[Ljava/lang/annotation/Annotation;

    .line 389
    .line 390
    invoke-virtual {p0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 391
    .line 392
    .line 393
    move-result p0

    .line 394
    if-eqz p0, :cond_21

    .line 395
    .line 396
    invoke-static {v0, v2}, Lrx2;->a(Ls65;Lhd;)Lrx2;

    .line 397
    .line 398
    .line 399
    move-result-object p0

    .line 400
    invoke-static {v0, v2}, Lox2;->r(Lv77;Lhd;)V

    .line 401
    .line 402
    .line 403
    new-instance p1, Lsn7;

    .line 404
    .line 405
    invoke-direct {p1, p2, p0}, Lsn7;-><init>(Ljava/lang/Class;Lrx2;)V

    .line 406
    .line 407
    .line 408
    move-object v3, p1

    .line 409
    goto :goto_a

    .line 410
    :cond_21
    new-instance p0, Lqn7;

    .line 411
    .line 412
    invoke-direct {p0, v5, p2}, Lqn7;-><init>(ILjava/lang/Class;)V

    .line 413
    .line 414
    .line 415
    goto :goto_9

    .line 416
    :cond_22
    move-object v3, v7

    .line 417
    :cond_23
    :goto_a
    return-object v3
.end method

.method public final h(Lv77;Lgc8;)Lsc8;
    .locals 6

    .line 1
    iget-object p0, p2, Lgc8;->f:Ljava/lang/Class;

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Ls65;->c(Ljava/lang/Class;)Lgc8;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    iget-object v0, p1, Ls65;->b:Len0;

    .line 8
    .line 9
    iget-object v1, v0, Len0;->b:Ljb9;

    .line 10
    .line 11
    check-cast v1, Lxo0;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-static {p1, p0}, Lxo0;->p0(Ls65;Lgc8;)Lwo0;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    invoke-static {p1, p0, p1}, Lxo0;->q0(Ls65;Lgc8;Ls65;)Lhd;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {p1, p0, v1}, Lwo0;->d(Ls65;Lgc8;Lhd;)Lwo0;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    :cond_0
    iget-object p0, v1, Lwo0;->e:Lhd;

    .line 31
    .line 32
    invoke-virtual {p1}, Ls65;->d()Las5;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1, p1, p0, p2}, Las5;->O(Lv77;Lhd;Lgc8;)Lvn7;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const/4 v2, 0x0

    .line 41
    if-nez v1, :cond_1

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    move-object p0, v2

    .line 47
    move-object v1, p0

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    iget-object v0, p1, Lt65;->d:Lun7;

    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Ls65;->d()Las5;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    new-instance v3, Ljava/util/HashMap;

    .line 59
    .line 60
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 61
    .line 62
    .line 63
    new-instance v4, Lik5;

    .line 64
    .line 65
    iget-object v5, p0, Lhd;->N:Ljava/lang/Class;

    .line 66
    .line 67
    invoke-direct {v4, v5, v2}, Lik5;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-static {p0, v4, p1, v0, v3}, Lun7;->J(Lhd;Lik5;Ls65;Las5;Ljava/util/HashMap;)V

    .line 71
    .line 72
    .line 73
    new-instance p0, Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 80
    .line 81
    .line 82
    :goto_0
    if-nez v1, :cond_2

    .line 83
    .line 84
    return-object v2

    .line 85
    :cond_2
    invoke-virtual {v1, p1, p2, p0}, Lvn7;->a(Lv77;Lgc8;Ljava/util/ArrayList;)Lsc8;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    return-object p0
.end method
