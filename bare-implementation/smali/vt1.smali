.class public final Lvt1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Ljava/util/Map;

.field public final b:Z

.field public final c:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/Map;ZLjava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lvt1;->a:Ljava/util/Map;

    .line 5
    .line 6
    iput-boolean p2, p0, Lvt1;->b:Z

    .line 7
    .line 8
    iput-object p3, p0, Lvt1;->c:Ljava/util/List;

    .line 9
    .line 10
    return-void
.end method

.method public static a(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isInterface(I)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const-string v0, "Interfaces can\'t be instantiated! Register an InstanceCreator or a TypeAdapter for this type. Interface name: "

    .line 16
    .line 17
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :cond_0
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v1, "Abstract classes can\'t be instantiated! Adjust the R8 configuration or register an InstanceCreator or a TypeAdapter for this type. Class name: "

    .line 31
    .line 32
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string p0, "\nSee "

    .line 43
    .line 44
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string p0, "r8-abstract-class"

    .line 48
    .line 49
    const-string v1, "https://github.com/google/gson/blob/main/Troubleshooting.md#"

    .line 50
    .line 51
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    return-object p0

    .line 63
    :cond_1
    const/4 p0, 0x0

    .line 64
    return-object p0
.end method


# virtual methods
.method public final b(Lcom/google/gson/reflect/TypeToken;Z)Ler5;
    .locals 8

    .line 1
    invoke-virtual {p1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object v1, p0, Lvt1;->a:Ljava/util/Map;

    .line 10
    .line 11
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Lhd4;

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    new-instance p0, Ljq6;

    .line 20
    .line 21
    invoke-direct {p0, v2, v0}, Ljq6;-><init>(Lhd4;Ljava/lang/reflect/Type;)V

    .line 22
    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_0
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lhd4;

    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    new-instance p0, Ljq6;

    .line 34
    .line 35
    invoke-direct {p0, v1, v0}, Ljq6;-><init>(Lhd4;Ljava/lang/reflect/Type;)V

    .line 36
    .line 37
    .line 38
    return-object p0

    .line 39
    :cond_1
    const-class v1, Ljava/util/EnumSet;

    .line 40
    .line 41
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    const/4 v2, 0x3

    .line 46
    const/4 v3, 0x0

    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    new-instance v1, Lmb;

    .line 50
    .line 51
    invoke-direct {v1, v0}, Lmb;-><init>(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    const-class v1, Ljava/util/EnumMap;

    .line 56
    .line 57
    if-ne p1, v1, :cond_3

    .line 58
    .line 59
    new-instance v1, Lpf;

    .line 60
    .line 61
    invoke-direct {v1, v0, v2}, Lpf;-><init>(Ljava/lang/Object;I)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_3
    move-object v1, v3

    .line 66
    :goto_0
    if-eqz v1, :cond_4

    .line 67
    .line 68
    return-object v1

    .line 69
    :cond_4
    iget-object v1, p0, Lvt1;->c:Ljava/util/List;

    .line 70
    .line 71
    invoke-static {v1}, Ljd4;->q(Ljava/util/List;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    const/4 v4, 0x1

    .line 83
    if-eqz v1, :cond_5

    .line 84
    .line 85
    :catch_0
    move-object v1, v3

    .line 86
    goto :goto_2

    .line 87
    :cond_5
    :try_start_0
    invoke-virtual {p1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 88
    .line 89
    .line 90
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    sget-object v5, Lth6;->a:Lpe4;

    .line 92
    .line 93
    :try_start_1
    invoke-virtual {v1, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 94
    .line 95
    .line 96
    move-object v5, v3

    .line 97
    goto :goto_1

    .line 98
    :catch_1
    move-exception v5

    .line 99
    new-instance v6, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    const-string v7, "Failed making constructor \'"

    .line 102
    .line 103
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-static {v1}, Lth6;->b(Ljava/lang/reflect/Constructor;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v7

    .line 110
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v7, "\' accessible; either increase its visibility or write a custom InstanceCreator or TypeAdapter for its declaring type: "

    .line 114
    .line 115
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v7

    .line 122
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-static {v5}, Lth6;->e(Ljava/lang/Exception;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    :goto_1
    if-eqz v5, :cond_6

    .line 137
    .line 138
    new-instance v1, Lut1;

    .line 139
    .line 140
    invoke-direct {v1, v5}, Lut1;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_6
    new-instance v5, Lhb;

    .line 145
    .line 146
    invoke-direct {v5, v1, v4}, Lhb;-><init>(Ljava/lang/Object;I)V

    .line 147
    .line 148
    .line 149
    move-object v1, v5

    .line 150
    :goto_2
    if-eqz v1, :cond_7

    .line 151
    .line 152
    return-object v1

    .line 153
    :cond_7
    const-class v1, Ljava/util/Collection;

    .line 154
    .line 155
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    if-eqz v1, :cond_b

    .line 160
    .line 161
    const-class v0, Ljava/util/ArrayList;

    .line 162
    .line 163
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    const/4 v1, 0x4

    .line 168
    if-eqz v0, :cond_8

    .line 169
    .line 170
    new-instance v3, Ll0;

    .line 171
    .line 172
    invoke-direct {v3, v1}, Ll0;-><init>(I)V

    .line 173
    .line 174
    .line 175
    goto/16 :goto_5

    .line 176
    .line 177
    :cond_8
    const-class v0, Ljava/util/LinkedHashSet;

    .line 178
    .line 179
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    if-eqz v0, :cond_9

    .line 184
    .line 185
    new-instance v3, Lq;

    .line 186
    .line 187
    invoke-direct {v3, v1}, Lq;-><init>(I)V

    .line 188
    .line 189
    .line 190
    goto/16 :goto_5

    .line 191
    .line 192
    :cond_9
    const-class v0, Ljava/util/TreeSet;

    .line 193
    .line 194
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 195
    .line 196
    .line 197
    move-result v0

    .line 198
    if-eqz v0, :cond_a

    .line 199
    .line 200
    new-instance v3, Ly5;

    .line 201
    .line 202
    invoke-direct {v3, v1}, Ly5;-><init>(I)V

    .line 203
    .line 204
    .line 205
    goto/16 :goto_5

    .line 206
    .line 207
    :cond_a
    const-class v0, Ljava/util/ArrayDeque;

    .line 208
    .line 209
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    if-eqz v0, :cond_12

    .line 214
    .line 215
    new-instance v3, La6;

    .line 216
    .line 217
    const/4 v0, 0x2

    .line 218
    invoke-direct {v3, v0}, La6;-><init>(I)V

    .line 219
    .line 220
    .line 221
    goto/16 :goto_5

    .line 222
    .line 223
    :cond_b
    const-class v1, Ljava/util/Map;

    .line 224
    .line 225
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 226
    .line 227
    .line 228
    move-result v1

    .line 229
    if-eqz v1, :cond_12

    .line 230
    .line 231
    const-class v1, Liw4;

    .line 232
    .line 233
    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 234
    .line 235
    .line 236
    move-result v1

    .line 237
    const/4 v5, 0x5

    .line 238
    if-eqz v1, :cond_e

    .line 239
    .line 240
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    .line 241
    .line 242
    if-nez v1, :cond_c

    .line 243
    .line 244
    goto :goto_3

    .line 245
    :cond_c
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 246
    .line 247
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    array-length v1, v0

    .line 252
    if-nez v1, :cond_d

    .line 253
    .line 254
    goto :goto_4

    .line 255
    :cond_d
    const/4 v1, 0x0

    .line 256
    aget-object v0, v0, v1

    .line 257
    .line 258
    invoke-static {v0}, Lx13;->w(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    const-class v1, Ljava/lang/String;

    .line 263
    .line 264
    if-ne v0, v1, :cond_e

    .line 265
    .line 266
    :goto_3
    new-instance v3, Lq;

    .line 267
    .line 268
    invoke-direct {v3, v5}, Lq;-><init>(I)V

    .line 269
    .line 270
    .line 271
    goto :goto_5

    .line 272
    :cond_e
    :goto_4
    const-class v0, Ljava/util/LinkedHashMap;

    .line 273
    .line 274
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 275
    .line 276
    .line 277
    move-result v0

    .line 278
    if-eqz v0, :cond_f

    .line 279
    .line 280
    new-instance v3, Lg84;

    .line 281
    .line 282
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 283
    .line 284
    .line 285
    goto :goto_5

    .line 286
    :cond_f
    const-class v0, Ljava/util/TreeMap;

    .line 287
    .line 288
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 289
    .line 290
    .line 291
    move-result v0

    .line 292
    if-eqz v0, :cond_10

    .line 293
    .line 294
    new-instance v3, Lz5;

    .line 295
    .line 296
    invoke-direct {v3, v5}, Lz5;-><init>(I)V

    .line 297
    .line 298
    .line 299
    goto :goto_5

    .line 300
    :cond_10
    const-class v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 301
    .line 302
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 303
    .line 304
    .line 305
    move-result v0

    .line 306
    if-eqz v0, :cond_11

    .line 307
    .line 308
    new-instance v3, Lq;

    .line 309
    .line 310
    invoke-direct {v3, v2}, Lq;-><init>(I)V

    .line 311
    .line 312
    .line 313
    goto :goto_5

    .line 314
    :cond_11
    const-class v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    .line 315
    .line 316
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 317
    .line 318
    .line 319
    move-result v0

    .line 320
    if-eqz v0, :cond_12

    .line 321
    .line 322
    new-instance v3, Ly5;

    .line 323
    .line 324
    invoke-direct {v3, v2}, Ly5;-><init>(I)V

    .line 325
    .line 326
    .line 327
    :cond_12
    :goto_5
    if-eqz v3, :cond_13

    .line 328
    .line 329
    return-object v3

    .line 330
    :cond_13
    invoke-static {p1}, Lvt1;->a(Ljava/lang/Class;)Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    if-eqz v0, :cond_14

    .line 335
    .line 336
    new-instance p0, Lut1;

    .line 337
    .line 338
    invoke-direct {p0, v0}, Lut1;-><init>(Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    return-object p0

    .line 342
    :cond_14
    const-string v0, "Unable to create instance of "

    .line 343
    .line 344
    if-nez p2, :cond_15

    .line 345
    .line 346
    const-string p0, "; Register an InstanceCreator or a TypeAdapter for this type."

    .line 347
    .line 348
    invoke-static {p1, v0, p0}, Lfz5;->l(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object p0

    .line 352
    new-instance p1, Lut1;

    .line 353
    .line 354
    invoke-direct {p1, p0}, Lut1;-><init>(Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    return-object p1

    .line 358
    :cond_15
    iget-boolean p0, p0, Lvt1;->b:Z

    .line 359
    .line 360
    if-eqz p0, :cond_16

    .line 361
    .line 362
    new-instance p0, Lsn1;

    .line 363
    .line 364
    invoke-direct {p0, p1, v4}, Lsn1;-><init>(Ljava/lang/Object;I)V

    .line 365
    .line 366
    .line 367
    goto :goto_6

    .line 368
    :cond_16
    const-string p0, "; usage of JDK Unsafe is disabled. Registering an InstanceCreator or a TypeAdapter for this type, adding a no-args constructor, or enabling usage of JDK Unsafe may fix this problem."

    .line 369
    .line 370
    invoke-static {p1, v0, p0}, Lfz5;->l(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object p0

    .line 374
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    .line 375
    .line 376
    .line 377
    move-result-object p1

    .line 378
    array-length p1, p1

    .line 379
    if-nez p1, :cond_17

    .line 380
    .line 381
    const-string p1, " Or adjust your R8 configuration to keep the no-args constructor of the class."

    .line 382
    .line 383
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object p0

    .line 387
    :cond_17
    new-instance p1, Lut1;

    .line 388
    .line 389
    invoke-direct {p1, p0}, Lut1;-><init>(Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    move-object p0, p1

    .line 393
    :goto_6
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lvt1;->a:Ljava/util/Map;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
