.class public final Lie2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "(\\p{javaJavaIdentifierStart}(\\p{javaJavaIdentifierPart})*\\.)+\\p{javaJavaIdentifierStart}(\\p{javaJavaIdentifierPart})*"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lie2;->a:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    return-void
.end method

.method public static a(Ljava/lang/String;Le23;)Lh23;
    .locals 8

    .line 1
    sget-object v0, Lie2;->a:Ljava/util/regex/Pattern;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    .line 18
    :try_start_1
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Lh23;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_1 .. :try_end_1} :catch_0

    .line 27
    .line 28
    goto :goto_2

    .line 29
    :catch_0
    move-exception v0

    .line 30
    goto :goto_0

    .line 31
    :catch_1
    move-exception v0

    .line 32
    goto :goto_0

    .line 33
    :catch_2
    move-exception v2

    .line 34
    goto :goto_1

    .line 35
    :goto_0
    :try_start_2
    new-instance v2, Lfx5;

    .line 36
    .line 37
    const-string v3, "Error initializing parser"

    .line 38
    .line 39
    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    .line 41
    .line 42
    throw v2

    .line 43
    :goto_1
    new-instance v3, Lfx5;

    .line 44
    .line 45
    new-instance v4, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v0, " does not implement the interface "

    .line 58
    .line 59
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-class v0, Lh23;

    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-direct {v3, v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    .line 77
    .line 78
    throw v3
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    .line 79
    :catch_3
    :cond_0
    move-object v2, v1

    .line 80
    :goto_2
    if-nez v2, :cond_12

    .line 81
    .line 82
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 83
    .line 84
    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    const-string v2, "UNIX_LTRIM"

    .line 89
    .line 90
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    const/4 v4, 0x1

    .line 95
    if-eqz v3, :cond_1

    .line 96
    .line 97
    new-instance v2, Lhe8;

    .line 98
    .line 99
    invoke-direct {v2, p1, v4}, Lhe8;-><init>(Le23;Z)V

    .line 100
    .line 101
    .line 102
    goto/16 :goto_7

    .line 103
    .line 104
    :cond_1
    const-string v3, "UNIX"

    .line 105
    .line 106
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    const/4 v5, 0x0

    .line 111
    if-eqz v3, :cond_2

    .line 112
    .line 113
    new-instance v2, Lhe8;

    .line 114
    .line 115
    invoke-direct {v2, p1, v5}, Lhe8;-><init>(Le23;Z)V

    .line 116
    .line 117
    .line 118
    goto/16 :goto_7

    .line 119
    .line 120
    :cond_2
    const-string v3, "VMS"

    .line 121
    .line 122
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    if-eqz v3, :cond_3

    .line 127
    .line 128
    new-instance v2, Lqi8;

    .line 129
    .line 130
    const-string p0, "(.*?;[0-9]+)\\s*(\\d+)(?:/\\d+)?\\s*(\\S+)\\s+(\\S+)\\s+\\[(([0-9$A-Za-z_]+)|([0-9$A-Za-z_]+),([0-9$a-zA-Z_]+))\\]?\\s*\\([a-zA-Z]*,([a-zA-Z]*),([a-zA-Z]*),([a-zA-Z]*)\\)"

    .line 131
    .line 132
    invoke-direct {v2, p0}, Lpr1;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v2, v1}, Lpr1;->a(Le23;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v2, p1}, Lpr1;->a(Le23;)V

    .line 139
    .line 140
    .line 141
    goto/16 :goto_7

    .line 142
    .line 143
    :cond_3
    const-string v3, "WINDOWS"

    .line 144
    .line 145
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 146
    .line 147
    .line 148
    move-result v6

    .line 149
    const/4 v7, 0x2

    .line 150
    if-eqz v6, :cond_7

    .line 151
    .line 152
    if-eqz p1, :cond_4

    .line 153
    .line 154
    iget-object p0, p1, Le23;->a:Ljava/lang/String;

    .line 155
    .line 156
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result p0

    .line 160
    if-eqz p0, :cond_4

    .line 161
    .line 162
    new-instance p0, Ltj5;

    .line 163
    .line 164
    invoke-direct {p0, p1}, Ltj5;-><init>(Le23;)V

    .line 165
    .line 166
    .line 167
    :goto_3
    move-object v2, p0

    .line 168
    goto/16 :goto_7

    .line 169
    .line 170
    :cond_4
    if-eqz p1, :cond_5

    .line 171
    .line 172
    new-instance v1, Le23;

    .line 173
    .line 174
    invoke-direct {v1, p1}, Le23;-><init>(Le23;)V

    .line 175
    .line 176
    .line 177
    :cond_5
    new-instance p0, Lzo1;

    .line 178
    .line 179
    new-instance v0, Ltj5;

    .line 180
    .line 181
    invoke-direct {v0, p1}, Ltj5;-><init>(Le23;)V

    .line 182
    .line 183
    .line 184
    new-instance v3, Lhe8;

    .line 185
    .line 186
    if-eqz v1, :cond_6

    .line 187
    .line 188
    iget-object v6, v1, Le23;->a:Ljava/lang/String;

    .line 189
    .line 190
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    move-result v2

    .line 194
    if-eqz v2, :cond_6

    .line 195
    .line 196
    move v2, v4

    .line 197
    goto :goto_4

    .line 198
    :cond_6
    move v2, v5

    .line 199
    :goto_4
    invoke-direct {v3, v1, v2}, Lhe8;-><init>(Le23;Z)V

    .line 200
    .line 201
    .line 202
    new-array v1, v7, [Lh23;

    .line 203
    .line 204
    aput-object v0, v1, v5

    .line 205
    .line 206
    aput-object v3, v1, v4

    .line 207
    .line 208
    invoke-direct {p0, v1}, Lzo1;-><init>([Lh23;)V

    .line 209
    .line 210
    .line 211
    goto :goto_3

    .line 212
    :cond_7
    const-string v3, "OS/2"

    .line 213
    .line 214
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 215
    .line 216
    .line 217
    move-result v3

    .line 218
    if-eqz v3, :cond_8

    .line 219
    .line 220
    new-instance v2, Lrq5;

    .line 221
    .line 222
    const-string p0, "\\s*([0-9]+)\\s*(\\s+|[A-Z]+)\\s*(DIR|\\s+)\\s*(\\S+)\\s+(\\S+)\\s+(\\S.*)"

    .line 223
    .line 224
    invoke-direct {v2, p0}, Lpr1;-><init>(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v2, p1}, Lpr1;->a(Le23;)V

    .line 228
    .line 229
    .line 230
    goto/16 :goto_7

    .line 231
    .line 232
    :cond_8
    const-string v3, "OS/400"

    .line 233
    .line 234
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 235
    .line 236
    .line 237
    move-result v6

    .line 238
    if-nez v6, :cond_e

    .line 239
    .line 240
    const-string v6, "AS/400"

    .line 241
    .line 242
    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 243
    .line 244
    .line 245
    move-result v6

    .line 246
    if-eqz v6, :cond_9

    .line 247
    .line 248
    goto :goto_5

    .line 249
    :cond_9
    const-string v2, "MVS"

    .line 250
    .line 251
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 252
    .line 253
    .line 254
    move-result v2

    .line 255
    if-eqz v2, :cond_a

    .line 256
    .line 257
    new-instance v2, Lz45;

    .line 258
    .line 259
    const-string p0, ""

    .line 260
    .line 261
    invoke-direct {v2, p0}, Lpr1;-><init>(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    const/4 p0, -0x1

    .line 265
    iput p0, v2, Lz45;->e:I

    .line 266
    .line 267
    invoke-virtual {v2, v1}, Lpr1;->a(Le23;)V

    .line 268
    .line 269
    .line 270
    goto/16 :goto_7

    .line 271
    .line 272
    :cond_a
    const-string v1, "NETWARE"

    .line 273
    .line 274
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 275
    .line 276
    .line 277
    move-result v1

    .line 278
    if-eqz v1, :cond_b

    .line 279
    .line 280
    new-instance v2, Ljm5;

    .line 281
    .line 282
    const-string p0, "(d|-){1}\\s+\\[([-A-Z]+)\\]\\s+(\\S+)\\s+(\\d+)\\s+(\\S+\\s+\\S+\\s+((\\d+:\\d+)|(\\d{4})))\\s+(.*)"

    .line 283
    .line 284
    invoke-direct {v2, p0}, Lpr1;-><init>(Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v2, p1}, Lpr1;->a(Le23;)V

    .line 288
    .line 289
    .line 290
    goto :goto_7

    .line 291
    :cond_b
    const-string v1, "MACOS PETER"

    .line 292
    .line 293
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 294
    .line 295
    .line 296
    move-result v1

    .line 297
    if-eqz v1, :cond_c

    .line 298
    .line 299
    new-instance v2, Ld55;

    .line 300
    .line 301
    const-string p0, "([bcdelfmpSs-])(((r|-)(w|-)([xsStTL-]))((r|-)(w|-)([xsStTL-]))((r|-)(w|-)([xsStTL-])))\\+?\\s+((folder\\s+)|((\\d+)\\s+(\\d+)\\s+))(\\d+)\\s+((?:\\d+[-/]\\d+[-/]\\d+)|(?:\\S{3}\\s+\\d{1,2})|(?:\\d{1,2}\\s+\\S{3}))\\s+(\\d+(?::\\d+)?)\\s+(\\S*)(\\s*.*)"

    .line 302
    .line 303
    invoke-direct {v2, p0}, Lpr1;-><init>(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v2, p1}, Lpr1;->a(Le23;)V

    .line 307
    .line 308
    .line 309
    goto :goto_7

    .line 310
    :cond_c
    const-string v1, "TYPE: L8"

    .line 311
    .line 312
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 313
    .line 314
    .line 315
    move-result v0

    .line 316
    if-eqz v0, :cond_d

    .line 317
    .line 318
    new-instance v2, Lhe8;

    .line 319
    .line 320
    invoke-direct {v2, p1, v5}, Lhe8;-><init>(Le23;Z)V

    .line 321
    .line 322
    .line 323
    goto :goto_7

    .line 324
    :cond_d
    new-instance p1, Lfx5;

    .line 325
    .line 326
    const-string v0, "Unknown parser type: "

    .line 327
    .line 328
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object p0

    .line 332
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    throw p1

    .line 336
    :cond_e
    :goto_5
    if-eqz p1, :cond_f

    .line 337
    .line 338
    iget-object p0, p1, Le23;->a:Ljava/lang/String;

    .line 339
    .line 340
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 341
    .line 342
    .line 343
    move-result p0

    .line 344
    if-eqz p0, :cond_f

    .line 345
    .line 346
    new-instance p0, Lsq5;

    .line 347
    .line 348
    invoke-direct {p0, p1}, Lsq5;-><init>(Le23;)V

    .line 349
    .line 350
    .line 351
    goto/16 :goto_3

    .line 352
    .line 353
    :cond_f
    if-eqz p1, :cond_10

    .line 354
    .line 355
    new-instance v1, Le23;

    .line 356
    .line 357
    invoke-direct {v1, p1}, Le23;-><init>(Le23;)V

    .line 358
    .line 359
    .line 360
    :cond_10
    new-instance p0, Lzo1;

    .line 361
    .line 362
    new-instance v0, Lsq5;

    .line 363
    .line 364
    invoke-direct {v0, p1}, Lsq5;-><init>(Le23;)V

    .line 365
    .line 366
    .line 367
    new-instance v3, Lhe8;

    .line 368
    .line 369
    if-eqz v1, :cond_11

    .line 370
    .line 371
    iget-object v6, v1, Le23;->a:Ljava/lang/String;

    .line 372
    .line 373
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 374
    .line 375
    .line 376
    move-result v2

    .line 377
    if-eqz v2, :cond_11

    .line 378
    .line 379
    move v2, v4

    .line 380
    goto :goto_6

    .line 381
    :cond_11
    move v2, v5

    .line 382
    :goto_6
    invoke-direct {v3, v1, v2}, Lhe8;-><init>(Le23;Z)V

    .line 383
    .line 384
    .line 385
    new-array v1, v7, [Lh23;

    .line 386
    .line 387
    aput-object v0, v1, v5

    .line 388
    .line 389
    aput-object v3, v1, v4

    .line 390
    .line 391
    invoke-direct {p0, v1}, Lzo1;-><init>([Lh23;)V

    .line 392
    .line 393
    .line 394
    goto/16 :goto_3

    .line 395
    .line 396
    :cond_12
    :goto_7
    instance-of p0, v2, Lor1;

    .line 397
    .line 398
    if-eqz p0, :cond_13

    .line 399
    .line 400
    move-object p0, v2

    .line 401
    check-cast p0, Lor1;

    .line 402
    .line 403
    invoke-interface {p0, p1}, Lor1;->a(Le23;)V

    .line 404
    .line 405
    .line 406
    :cond_13
    return-object v2
.end method
