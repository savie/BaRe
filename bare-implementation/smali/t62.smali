.class public abstract Lt62;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lt62;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    return-void
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/Double;
    .locals 6

    .line 1
    instance-of v0, p0, Ljava/lang/Integer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Integer;->doubleValue()D

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_0
    instance-of v0, p0, Ljava/lang/Long;

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    move-object v0, p0

    .line 21
    check-cast v0, Ljava/lang/Long;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Long;->doubleValue()D

    .line 24
    .line 25
    .line 26
    move-result-wide v1

    .line 27
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1}, Ljava/lang/Double;->longValue()J

    .line 32
    .line 33
    .line 34
    move-result-wide v2

    .line 35
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 36
    .line 37
    .line 38
    move-result-wide v4

    .line 39
    cmp-long v0, v2, v4

    .line 40
    .line 41
    if-nez v0, :cond_1

    .line 42
    .line 43
    return-object v1

    .line 44
    :cond_1
    new-instance v0, Lxc2;

    .line 45
    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v2, "Loss of precision while converting number to double: "

    .line 49
    .line 50
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string p0, ". Did you mean to use a 64-bit long instead?"

    .line 57
    .line 58
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw v0

    .line 69
    :cond_2
    instance-of v0, p0, Ljava/lang/Double;

    .line 70
    .line 71
    if-eqz v0, :cond_3

    .line 72
    .line 73
    check-cast p0, Ljava/lang/Double;

    .line 74
    .line 75
    return-object p0

    .line 76
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    const-string v0, " to double"

    .line 85
    .line 86
    const-string v1, "Failed to convert a value of type "

    .line 87
    .line 88
    invoke-static {p0, v0, v1}, Lf6;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    const/4 p0, 0x0

    .line 92
    return-object p0
.end method

.method public static b(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const-string v2, "Failed to convert value of type "

    .line 10
    .line 11
    const-class v3, Ljava/lang/Boolean;

    .line 12
    .line 13
    if-nez v1, :cond_a

    .line 14
    .line 15
    const-class v1, Ljava/lang/Number;

    .line 16
    .line 17
    invoke-virtual {v1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_a

    .line 22
    .line 23
    invoke-virtual {v3, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_a

    .line 28
    .line 29
    const-class v1, Ljava/lang/Character;

    .line 30
    .line 31
    invoke-virtual {v1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    goto/16 :goto_0

    .line 38
    .line 39
    :cond_1
    const-class v1, Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_3

    .line 46
    .line 47
    instance-of p0, p1, Ljava/lang/String;

    .line 48
    .line 49
    if-eqz p0, :cond_2

    .line 50
    .line 51
    check-cast p1, Ljava/lang/String;

    .line 52
    .line 53
    return-object p1

    .line 54
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    const-string p1, " to String"

    .line 63
    .line 64
    invoke-static {p0, p1, v2}, Lf6;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    return-object v0

    .line 68
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-nez v1, :cond_9

    .line 73
    .line 74
    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    array-length v1, v1

    .line 79
    if-gtz v1, :cond_8

    .line 80
    .line 81
    const-class v0, Ljava/lang/Object;

    .line 82
    .line 83
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-eqz v0, :cond_4

    .line 88
    .line 89
    return-object p1

    .line 90
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Class;->isEnum()Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-eqz v0, :cond_6

    .line 95
    .line 96
    instance-of v0, p1, Ljava/lang/String;

    .line 97
    .line 98
    if-eqz v0, :cond_5

    .line 99
    .line 100
    check-cast p1, Ljava/lang/String;

    .line 101
    .line 102
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 103
    .line 104
    .line 105
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    return-object p0

    .line 107
    :catch_0
    new-instance v0, Lxc2;

    .line 108
    .line 109
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    const-string v2, "Could not find enum value of "

    .line 116
    .line 117
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string p0, " for value \""

    .line 124
    .line 125
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const-string p0, "\""

    .line 132
    .line 133
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    throw v0

    .line 144
    :cond_5
    new-instance v0, Lxc2;

    .line 145
    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    const-string v2, "Expected a String while deserializing to enum "

    .line 149
    .line 150
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    const-string p1, " but got a "

    .line 161
    .line 162
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p0

    .line 172
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    throw v0

    .line 176
    :cond_6
    invoke-static {p0}, Lt62;->e(Ljava/lang/Class;)Ls62;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    instance-of v1, p1, Ljava/util/Map;

    .line 181
    .line 182
    if-eqz v1, :cond_7

    .line 183
    .line 184
    invoke-static {p1}, Lt62;->d(Ljava/lang/Object;)Ljava/util/Map;

    .line 185
    .line 186
    .line 187
    move-result-object p0

    .line 188
    sget-object p1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 189
    .line 190
    invoke-virtual {v0, p0, p1}, Ls62;->c(Ljava/util/Map;Ljava/util/Map;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object p0

    .line 194
    return-object p0

    .line 195
    :cond_7
    new-instance v0, Lxc2;

    .line 196
    .line 197
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object p0

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    .line 210
    .line 211
    const-string v2, "Can\'t convert object of type "

    .line 212
    .line 213
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    const-string p1, " to type "

    .line 220
    .line 221
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object p0

    .line 231
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    throw v0

    .line 235
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object p0

    .line 239
    const-string p1, " has generic type parameters, please use GenericTypeIndicator instead"

    .line 240
    .line 241
    const-string v1, "Class "

    .line 242
    .line 243
    invoke-static {p0, p1, v1}, Lf6;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    return-object v0

    .line 247
    :cond_9
    new-instance p0, Lxc2;

    .line 248
    .line 249
    const-string p1, "Converting to Arrays is not supported, please use Listsinstead"

    .line 250
    .line 251
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    throw p0

    .line 255
    :cond_a
    :goto_0
    const-class v1, Ljava/lang/Integer;

    .line 256
    .line 257
    invoke-virtual {v1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 258
    .line 259
    .line 260
    move-result v1

    .line 261
    const-string v4, "Failed to convert a value of type "

    .line 262
    .line 263
    if-nez v1, :cond_19

    .line 264
    .line 265
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 266
    .line 267
    invoke-virtual {v1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 268
    .line 269
    .line 270
    move-result v1

    .line 271
    if-eqz v1, :cond_b

    .line 272
    .line 273
    goto/16 :goto_5

    .line 274
    .line 275
    :cond_b
    invoke-virtual {v3, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 276
    .line 277
    .line 278
    move-result v1

    .line 279
    if-nez v1, :cond_17

    .line 280
    .line 281
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 282
    .line 283
    invoke-virtual {v1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 284
    .line 285
    .line 286
    move-result v1

    .line 287
    if-eqz v1, :cond_c

    .line 288
    .line 289
    goto/16 :goto_4

    .line 290
    .line 291
    :cond_c
    const-class v1, Ljava/lang/Double;

    .line 292
    .line 293
    invoke-virtual {v1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 294
    .line 295
    .line 296
    move-result v1

    .line 297
    if-nez v1, :cond_16

    .line 298
    .line 299
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 300
    .line 301
    invoke-virtual {v1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 302
    .line 303
    .line 304
    move-result v1

    .line 305
    if-eqz v1, :cond_d

    .line 306
    .line 307
    goto/16 :goto_3

    .line 308
    .line 309
    :cond_d
    const-class v1, Ljava/lang/Long;

    .line 310
    .line 311
    invoke-virtual {v1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 312
    .line 313
    .line 314
    move-result v1

    .line 315
    if-nez v1, :cond_11

    .line 316
    .line 317
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 318
    .line 319
    invoke-virtual {v1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 320
    .line 321
    .line 322
    move-result v1

    .line 323
    if-eqz v1, :cond_e

    .line 324
    .line 325
    goto :goto_2

    .line 326
    :cond_e
    const-class v0, Ljava/lang/Float;

    .line 327
    .line 328
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 329
    .line 330
    .line 331
    move-result v0

    .line 332
    if-nez v0, :cond_10

    .line 333
    .line 334
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 335
    .line 336
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 337
    .line 338
    .line 339
    move-result v0

    .line 340
    if-eqz v0, :cond_f

    .line 341
    .line 342
    goto :goto_1

    .line 343
    :cond_f
    new-instance p1, Lxc2;

    .line 344
    .line 345
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object p0

    .line 349
    const-string v0, "Deserializing values to "

    .line 350
    .line 351
    const-string v1, " is not supported"

    .line 352
    .line 353
    invoke-static {v0, p0, v1}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object p0

    .line 357
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    throw p1

    .line 361
    :cond_10
    :goto_1
    invoke-static {p1}, Lt62;->a(Ljava/lang/Object;)Ljava/lang/Double;

    .line 362
    .line 363
    .line 364
    move-result-object p0

    .line 365
    invoke-virtual {p0}, Ljava/lang/Double;->floatValue()F

    .line 366
    .line 367
    .line 368
    move-result p0

    .line 369
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 370
    .line 371
    .line 372
    move-result-object p0

    .line 373
    return-object p0

    .line 374
    :cond_11
    :goto_2
    instance-of p0, p1, Ljava/lang/Integer;

    .line 375
    .line 376
    if-eqz p0, :cond_12

    .line 377
    .line 378
    check-cast p1, Ljava/lang/Integer;

    .line 379
    .line 380
    invoke-virtual {p1}, Ljava/lang/Integer;->longValue()J

    .line 381
    .line 382
    .line 383
    move-result-wide p0

    .line 384
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 385
    .line 386
    .line 387
    move-result-object p0

    .line 388
    return-object p0

    .line 389
    :cond_12
    instance-of p0, p1, Ljava/lang/Long;

    .line 390
    .line 391
    if-eqz p0, :cond_13

    .line 392
    .line 393
    check-cast p1, Ljava/lang/Long;

    .line 394
    .line 395
    return-object p1

    .line 396
    :cond_13
    instance-of p0, p1, Ljava/lang/Double;

    .line 397
    .line 398
    if-eqz p0, :cond_15

    .line 399
    .line 400
    check-cast p1, Ljava/lang/Double;

    .line 401
    .line 402
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    .line 403
    .line 404
    .line 405
    move-result-wide v0

    .line 406
    const-wide/high16 v2, -0x3c20000000000000L    # -9.223372036854776E18

    .line 407
    .line 408
    cmpl-double p0, v0, v2

    .line 409
    .line 410
    if-ltz p0, :cond_14

    .line 411
    .line 412
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    .line 413
    .line 414
    .line 415
    move-result-wide v0

    .line 416
    const-wide/high16 v2, 0x43e0000000000000L    # 9.223372036854776E18

    .line 417
    .line 418
    cmpg-double p0, v0, v2

    .line 419
    .line 420
    if-gtz p0, :cond_14

    .line 421
    .line 422
    invoke-virtual {p1}, Ljava/lang/Double;->longValue()J

    .line 423
    .line 424
    .line 425
    move-result-wide p0

    .line 426
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 427
    .line 428
    .line 429
    move-result-object p0

    .line 430
    return-object p0

    .line 431
    :cond_14
    new-instance p0, Lxc2;

    .line 432
    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    .line 434
    .line 435
    const-string v1, "Numeric value out of 64-bit long range: "

    .line 436
    .line 437
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 438
    .line 439
    .line 440
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 441
    .line 442
    .line 443
    const-string p1, ". Did you mean to use a double instead of a long?"

    .line 444
    .line 445
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    .line 447
    .line 448
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object p1

    .line 452
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 453
    .line 454
    .line 455
    throw p0

    .line 456
    :cond_15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 457
    .line 458
    .line 459
    move-result-object p0

    .line 460
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 461
    .line 462
    .line 463
    move-result-object p0

    .line 464
    const-string p1, " to long"

    .line 465
    .line 466
    invoke-static {p0, p1, v4}, Lf6;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 467
    .line 468
    .line 469
    return-object v0

    .line 470
    :cond_16
    :goto_3
    invoke-static {p1}, Lt62;->a(Ljava/lang/Object;)Ljava/lang/Double;

    .line 471
    .line 472
    .line 473
    move-result-object p0

    .line 474
    return-object p0

    .line 475
    :cond_17
    :goto_4
    instance-of p0, p1, Ljava/lang/Boolean;

    .line 476
    .line 477
    if-eqz p0, :cond_18

    .line 478
    .line 479
    check-cast p1, Ljava/lang/Boolean;

    .line 480
    .line 481
    return-object p1

    .line 482
    :cond_18
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 483
    .line 484
    .line 485
    move-result-object p0

    .line 486
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 487
    .line 488
    .line 489
    move-result-object p0

    .line 490
    const-string p1, " to boolean"

    .line 491
    .line 492
    invoke-static {p0, p1, v2}, Lf6;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 493
    .line 494
    .line 495
    return-object v0

    .line 496
    :cond_19
    :goto_5
    instance-of p0, p1, Ljava/lang/Integer;

    .line 497
    .line 498
    if-eqz p0, :cond_1a

    .line 499
    .line 500
    check-cast p1, Ljava/lang/Integer;

    .line 501
    .line 502
    return-object p1

    .line 503
    :cond_1a
    instance-of p0, p1, Ljava/lang/Long;

    .line 504
    .line 505
    if-nez p0, :cond_1c

    .line 506
    .line 507
    instance-of p0, p1, Ljava/lang/Double;

    .line 508
    .line 509
    if-eqz p0, :cond_1b

    .line 510
    .line 511
    goto :goto_6

    .line 512
    :cond_1b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 513
    .line 514
    .line 515
    move-result-object p0

    .line 516
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 517
    .line 518
    .line 519
    move-result-object p0

    .line 520
    const-string p1, " to int"

    .line 521
    .line 522
    invoke-static {p0, p1, v4}, Lf6;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 523
    .line 524
    .line 525
    return-object v0

    .line 526
    :cond_1c
    :goto_6
    check-cast p1, Ljava/lang/Number;

    .line 527
    .line 528
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    .line 529
    .line 530
    .line 531
    move-result-wide v0

    .line 532
    const-wide/high16 v2, -0x3e20000000000000L    # -2.147483648E9

    .line 533
    .line 534
    cmpl-double p0, v0, v2

    .line 535
    .line 536
    if-ltz p0, :cond_1d

    .line 537
    .line 538
    const-wide v2, 0x41dfffffffc00000L    # 2.147483647E9

    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    cmpg-double p0, v0, v2

    .line 544
    .line 545
    if-gtz p0, :cond_1d

    .line 546
    .line 547
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 548
    .line 549
    .line 550
    move-result p0

    .line 551
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 552
    .line 553
    .line 554
    move-result-object p0

    .line 555
    return-object p0

    .line 556
    :cond_1d
    new-instance p0, Lxc2;

    .line 557
    .line 558
    new-instance p1, Ljava/lang/StringBuilder;

    .line 559
    .line 560
    const-string v2, "Numeric value out of 32-bit integer range: "

    .line 561
    .line 562
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 563
    .line 564
    .line 565
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 566
    .line 567
    .line 568
    const-string v0, ". Did you mean to use a long or double instead of an int?"

    .line 569
    .line 570
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    .line 572
    .line 573
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 574
    .line 575
    .line 576
    move-result-object p1

    .line 577
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 578
    .line 579
    .line 580
    throw p0
.end method

.method public static c(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    instance-of v1, p1, Ljava/lang/reflect/ParameterizedType;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    if-eqz v1, :cond_a

    .line 10
    .line 11
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .line 12
    .line 13
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Ljava/lang/Class;

    .line 18
    .line 19
    const-class v4, Ljava/util/List;

    .line 20
    .line 21
    invoke-virtual {v4, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-eqz v4, :cond_3

    .line 26
    .line 27
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    aget-object p1, p1, v3

    .line 32
    .line 33
    instance-of v1, p0, Ljava/util/List;

    .line 34
    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    check-cast p0, Ljava/util/List;

    .line 38
    .line 39
    new-instance v0, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 46
    .line 47
    .line 48
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_1

    .line 57
    .line 58
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-static {v1, p1}, Lt62;->c(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    return-object v0

    .line 71
    :cond_2
    const-string p1, "Expected a List while deserializing, but got a "

    .line 72
    .line 73
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-static {p0, p1}, Le6;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    return-object v0

    .line 81
    :cond_3
    const-class v4, Ljava/util/Map;

    .line 82
    .line 83
    invoke-virtual {v4, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    if-eqz v4, :cond_6

    .line 88
    .line 89
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    aget-object v0, v0, v3

    .line 94
    .line 95
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    aget-object p1, p1, v2

    .line 100
    .line 101
    const-class v1, Ljava/lang/String;

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-eqz v1, :cond_5

    .line 108
    .line 109
    invoke-static {p0}, Lt62;->d(Ljava/lang/Object;)Ljava/util/Map;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    new-instance v0, Ljava/util/HashMap;

    .line 114
    .line 115
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 116
    .line 117
    .line 118
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    if-eqz v1, :cond_4

    .line 131
    .line 132
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    check-cast v1, Ljava/util/Map$Entry;

    .line 137
    .line 138
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    check-cast v2, Ljava/lang/String;

    .line 143
    .line 144
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-static {v1, p1}, Lt62;->c(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_4
    return-object v0

    .line 157
    :cond_5
    new-instance p0, Lxc2;

    .line 158
    .line 159
    new-instance p1, Ljava/lang/StringBuilder;

    .line 160
    .line 161
    const-string v1, "Only Maps with string keys are supported, but found Map with key type "

    .line 162
    .line 163
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    throw p0

    .line 177
    :cond_6
    const-class v2, Ljava/util/Collection;

    .line 178
    .line 179
    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 180
    .line 181
    .line 182
    move-result v2

    .line 183
    if-nez v2, :cond_9

    .line 184
    .line 185
    invoke-static {p0}, Lt62;->d(Ljava/lang/Object;)Ljava/util/Map;

    .line 186
    .line 187
    .line 188
    move-result-object p0

    .line 189
    invoke-static {v1}, Lt62;->e(Ljava/lang/Class;)Ls62;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    new-instance v2, Ljava/util/HashMap;

    .line 194
    .line 195
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 196
    .line 197
    .line 198
    iget-object v4, v1, Ls62;->a:Ljava/lang/Class;

    .line 199
    .line 200
    invoke-virtual {v4}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    .line 201
    .line 202
    .line 203
    move-result-object v4

    .line 204
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    array-length v5, p1

    .line 209
    array-length v6, v4

    .line 210
    if-ne v5, v6, :cond_8

    .line 211
    .line 212
    :goto_2
    array-length v0, v4

    .line 213
    if-ge v3, v0, :cond_7

    .line 214
    .line 215
    aget-object v0, v4, v3

    .line 216
    .line 217
    aget-object v5, p1, v3

    .line 218
    .line 219
    invoke-virtual {v2, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    add-int/lit8 v3, v3, 0x1

    .line 223
    .line 224
    goto :goto_2

    .line 225
    :cond_7
    invoke-virtual {v1, p0, v2}, Ls62;->c(Ljava/util/Map;Ljava/util/Map;)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object p0

    .line 229
    return-object p0

    .line 230
    :cond_8
    const-string p0, "Mismatched lengths for type variables and actual types"

    .line 231
    .line 232
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    return-object v0

    .line 236
    :cond_9
    new-instance p0, Lxc2;

    .line 237
    .line 238
    const-string p1, "Collections are not supported, please use Lists instead"

    .line 239
    .line 240
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    throw p0

    .line 244
    :cond_a
    instance-of v1, p1, Ljava/lang/Class;

    .line 245
    .line 246
    if-eqz v1, :cond_b

    .line 247
    .line 248
    check-cast p1, Ljava/lang/Class;

    .line 249
    .line 250
    invoke-static {p1, p0}, Lt62;->b(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object p0

    .line 254
    return-object p0

    .line 255
    :cond_b
    instance-of v1, p1, Ljava/lang/reflect/WildcardType;

    .line 256
    .line 257
    const-string v4, " is not upper bounded."

    .line 258
    .line 259
    const-string v5, "Wildcard type "

    .line 260
    .line 261
    if-eqz v1, :cond_e

    .line 262
    .line 263
    move-object v0, p1

    .line 264
    check-cast v0, Ljava/lang/reflect/WildcardType;

    .line 265
    .line 266
    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    .line 267
    .line 268
    .line 269
    move-result-object v1

    .line 270
    array-length v1, v1

    .line 271
    if-gtz v1, :cond_d

    .line 272
    .line 273
    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    array-length v1, v0

    .line 278
    if-lez v1, :cond_c

    .line 279
    .line 280
    goto :goto_3

    .line 281
    :cond_c
    move v2, v3

    .line 282
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 283
    .line 284
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object p1

    .line 297
    invoke-static {p1, v2}, Lzm5;->r(Ljava/lang/String;Z)V

    .line 298
    .line 299
    .line 300
    aget-object p1, v0, v3

    .line 301
    .line 302
    invoke-static {p0, p1}, Lt62;->c(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object p0

    .line 306
    return-object p0

    .line 307
    :cond_d
    new-instance p0, Lxc2;

    .line 308
    .line 309
    const-string p1, "Generic lower-bounded wildcard types are not supported"

    .line 310
    .line 311
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    throw p0

    .line 315
    :cond_e
    instance-of v1, p1, Ljava/lang/reflect/TypeVariable;

    .line 316
    .line 317
    if-eqz v1, :cond_10

    .line 318
    .line 319
    move-object v0, p1

    .line 320
    check-cast v0, Ljava/lang/reflect/TypeVariable;

    .line 321
    .line 322
    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    array-length v1, v0

    .line 327
    if-lez v1, :cond_f

    .line 328
    .line 329
    goto :goto_4

    .line 330
    :cond_f
    move v2, v3

    .line 331
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 332
    .line 333
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object p1

    .line 346
    invoke-static {p1, v2}, Lzm5;->r(Ljava/lang/String;Z)V

    .line 347
    .line 348
    .line 349
    aget-object p1, v0, v3

    .line 350
    .line 351
    invoke-static {p0, p1}, Lt62;->c(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 352
    .line 353
    .line 354
    move-result-object p0

    .line 355
    return-object p0

    .line 356
    :cond_10
    instance-of p0, p1, Ljava/lang/reflect/GenericArrayType;

    .line 357
    .line 358
    if-nez p0, :cond_11

    .line 359
    .line 360
    const-string p0, "Unknown type encountered: "

    .line 361
    .line 362
    invoke-static {p1, p0}, Ly5;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    return-object v0

    .line 366
    :cond_11
    new-instance p0, Lxc2;

    .line 367
    .line 368
    const-string p1, "Generic Arrays are not supported, please use Lists instead"

    .line 369
    .line 370
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    throw p0
.end method

.method public static d(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1

    .line 1
    instance-of v0, p0, Ljava/util/Map;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Ljava/util/Map;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const-string v0, "Expected a Map while deserializing, but got a "

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-static {p0, v0}, Le6;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    return-object p0
.end method

.method public static e(Ljava/lang/Class;)Ls62;
    .locals 2

    .line 1
    sget-object v0, Lt62;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Ls62;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    new-instance v1, Ls62;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Ls62;-><init>(Ljava/lang/Class;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    :cond_0
    return-object v1
.end method

.method public static f(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    instance-of v1, p0, Ljava/lang/Number;

    .line 6
    .line 7
    if-eqz v1, :cond_6

    .line 8
    .line 9
    instance-of v0, p0, Ljava/lang/Float;

    .line 10
    .line 11
    if-nez v0, :cond_4

    .line 12
    .line 13
    instance-of v0, p0, Ljava/lang/Double;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    instance-of v0, p0, Ljava/lang/Long;

    .line 19
    .line 20
    if-nez v0, :cond_3

    .line 21
    .line 22
    instance-of v0, p0, Ljava/lang/Integer;

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_2
    new-instance v0, Lxc2;

    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    const-string v1, "Numbers of type "

    .line 38
    .line 39
    const-string v2, " are not supported, please use an int, long, float or double"

    .line 40
    .line 41
    invoke-static {v1, p0, v2}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw v0

    .line 49
    :cond_3
    return-object p0

    .line 50
    :cond_4
    :goto_0
    check-cast p0, Ljava/lang/Number;

    .line 51
    .line 52
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    .line 53
    .line 54
    .line 55
    move-result-wide v0

    .line 56
    const-wide/high16 v2, 0x43e0000000000000L    # 9.223372036854776E18

    .line 57
    .line 58
    cmpg-double v2, v0, v2

    .line 59
    .line 60
    if-gtz v2, :cond_5

    .line 61
    .line 62
    const-wide/high16 v2, -0x3c20000000000000L    # -9.223372036854776E18

    .line 63
    .line 64
    cmpl-double v2, v0, v2

    .line 65
    .line 66
    if-ltz v2, :cond_5

    .line 67
    .line 68
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    .line 69
    .line 70
    .line 71
    move-result-wide v2

    .line 72
    cmpl-double v2, v2, v0

    .line 73
    .line 74
    if-nez v2, :cond_5

    .line 75
    .line 76
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    .line 77
    .line 78
    .line 79
    move-result-wide v0

    .line 80
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    return-object p0

    .line 85
    :cond_5
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    return-object p0

    .line 90
    :cond_6
    instance-of v1, p0, Ljava/lang/String;

    .line 91
    .line 92
    if-eqz v1, :cond_7

    .line 93
    .line 94
    return-object p0

    .line 95
    :cond_7
    instance-of v1, p0, Ljava/lang/Boolean;

    .line 96
    .line 97
    if-eqz v1, :cond_8

    .line 98
    .line 99
    return-object p0

    .line 100
    :cond_8
    instance-of v1, p0, Ljava/lang/Character;

    .line 101
    .line 102
    if-nez v1, :cond_15

    .line 103
    .line 104
    instance-of v1, p0, Ljava/util/Map;

    .line 105
    .line 106
    if-eqz v1, :cond_b

    .line 107
    .line 108
    new-instance v0, Ljava/util/HashMap;

    .line 109
    .line 110
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 111
    .line 112
    .line 113
    check-cast p0, Ljava/util/Map;

    .line 114
    .line 115
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    if-eqz v1, :cond_a

    .line 128
    .line 129
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    check-cast v1, Ljava/util/Map$Entry;

    .line 134
    .line 135
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    instance-of v3, v2, Ljava/lang/String;

    .line 140
    .line 141
    if-eqz v3, :cond_9

    .line 142
    .line 143
    check-cast v2, Ljava/lang/String;

    .line 144
    .line 145
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-static {v1}, Lt62;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_9
    new-instance p0, Lxc2;

    .line 158
    .line 159
    const-string v0, "Maps with non-string keys are not supported"

    .line 160
    .line 161
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    throw p0

    .line 165
    :cond_a
    return-object v0

    .line 166
    :cond_b
    instance-of v1, p0, Ljava/util/Collection;

    .line 167
    .line 168
    if-eqz v1, :cond_e

    .line 169
    .line 170
    instance-of v0, p0, Ljava/util/List;

    .line 171
    .line 172
    if-eqz v0, :cond_d

    .line 173
    .line 174
    check-cast p0, Ljava/util/List;

    .line 175
    .line 176
    new-instance v0, Ljava/util/ArrayList;

    .line 177
    .line 178
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 179
    .line 180
    .line 181
    move-result v1

    .line 182
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 183
    .line 184
    .line 185
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 186
    .line 187
    .line 188
    move-result-object p0

    .line 189
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 190
    .line 191
    .line 192
    move-result v1

    .line 193
    if-eqz v1, :cond_c

    .line 194
    .line 195
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    invoke-static {v1}, Lt62;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    goto :goto_2

    .line 207
    :cond_c
    return-object v0

    .line 208
    :cond_d
    new-instance p0, Lxc2;

    .line 209
    .line 210
    const-string v0, "Serializing Collections is not supported, please use Lists instead"

    .line 211
    .line 212
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    throw p0

    .line 216
    :cond_e
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    if-nez v1, :cond_14

    .line 225
    .line 226
    instance-of v1, p0, Ljava/lang/Enum;

    .line 227
    .line 228
    if-eqz v1, :cond_f

    .line 229
    .line 230
    check-cast p0, Ljava/lang/Enum;

    .line 231
    .line 232
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object p0

    .line 236
    return-object p0

    .line 237
    :cond_f
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    invoke-static {v1}, Lt62;->e(Ljava/lang/Class;)Ls62;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    iget-object v2, v1, Ls62;->f:Ljava/util/HashMap;

    .line 246
    .line 247
    iget-object v3, v1, Ls62;->a:Ljava/lang/Class;

    .line 248
    .line 249
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 250
    .line 251
    .line 252
    move-result-object v4

    .line 253
    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 254
    .line 255
    .line 256
    move-result v4

    .line 257
    if-eqz v4, :cond_13

    .line 258
    .line 259
    new-instance v3, Ljava/util/HashMap;

    .line 260
    .line 261
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 262
    .line 263
    .line 264
    iget-object v4, v1, Ls62;->e:Ljava/util/HashMap;

    .line 265
    .line 266
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 267
    .line 268
    .line 269
    move-result-object v4

    .line 270
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 271
    .line 272
    .line 273
    move-result-object v4

    .line 274
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 275
    .line 276
    .line 277
    move-result v5

    .line 278
    if-eqz v5, :cond_12

    .line 279
    .line 280
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v5

    .line 284
    check-cast v5, Ljava/lang/String;

    .line 285
    .line 286
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 287
    .line 288
    .line 289
    move-result v6

    .line 290
    if-eqz v6, :cond_10

    .line 291
    .line 292
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object v6

    .line 296
    check-cast v6, Ljava/lang/reflect/Method;

    .line 297
    .line 298
    :try_start_0
    invoke-virtual {v6, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move-result-object v6
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    goto :goto_4

    .line 303
    :catch_0
    move-exception p0

    .line 304
    invoke-static {p0}, Ly5;->k(Ljava/lang/Throwable;)V

    .line 305
    .line 306
    .line 307
    return-object v0

    .line 308
    :catch_1
    move-exception p0

    .line 309
    invoke-static {p0}, Ly5;->k(Ljava/lang/Throwable;)V

    .line 310
    .line 311
    .line 312
    return-object v0

    .line 313
    :cond_10
    iget-object v6, v1, Ls62;->h:Ljava/util/HashMap;

    .line 314
    .line 315
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    move-result-object v6

    .line 319
    check-cast v6, Ljava/lang/reflect/Field;

    .line 320
    .line 321
    if-eqz v6, :cond_11

    .line 322
    .line 323
    :try_start_1
    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    move-result-object v6
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2

    .line 327
    :goto_4
    invoke-static {v6}, Lt62;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    move-result-object v6

    .line 331
    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    goto :goto_3

    .line 335
    :catch_2
    move-exception p0

    .line 336
    invoke-static {p0}, Ly5;->k(Ljava/lang/Throwable;)V

    .line 337
    .line 338
    .line 339
    return-object v0

    .line 340
    :cond_11
    const-string p0, "Bean property without field or getter:"

    .line 341
    .line 342
    invoke-static {p0, v5}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object p0

    .line 346
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    return-object v0

    .line 350
    :cond_12
    return-object v3

    .line 351
    :cond_13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 352
    .line 353
    .line 354
    move-result-object p0

    .line 355
    const-string v1, " with BeanMapper for class "

    .line 356
    .line 357
    const-string v2, "Can\'t serialize object of class "

    .line 358
    .line 359
    invoke-static {v2, p0, v1, v3}, Ld6;->i(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 360
    .line 361
    .line 362
    return-object v0

    .line 363
    :cond_14
    new-instance p0, Lxc2;

    .line 364
    .line 365
    const-string v0, "Serializing Arrays is not supported, please use Lists instead"

    .line 366
    .line 367
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    throw p0

    .line 371
    :cond_15
    new-instance p0, Lxc2;

    .line 372
    .line 373
    const-string v0, "Characters are not supported, please use Strings"

    .line 374
    .line 375
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    throw p0
.end method
