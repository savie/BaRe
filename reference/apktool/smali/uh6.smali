.class public final Luh6;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lsz8;

.field public final b:Lla4;

.field public final c:Lla4;

.field public final d:[Ljava/lang/String;

.field public final e:[Ljava/lang/String;

.field public final f:Lna4;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Loi6;Loi6;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "newInstance"

    .line 5
    .line 6
    const-class v1, Ljava/io/ObjectStreamClass;

    .line 7
    .line 8
    const-class v2, Ljava/lang/Class;

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x1

    .line 12
    :try_start_0
    invoke-virtual {p1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 13
    .line 14
    .line 15
    move-result-object v5

    .line 16
    invoke-virtual {v5, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 17
    .line 18
    .line 19
    new-instance v6, Lz71;

    .line 20
    .line 21
    invoke-direct {v6, v5, p1}, Lz71;-><init>(Ljava/lang/reflect/Constructor;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catch_0
    :try_start_1
    const-string v5, "sun.misc.Unsafe"

    .line 26
    .line 27
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    const-string v6, "theUnsafe"

    .line 32
    .line 33
    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    invoke-virtual {v6, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v6, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    const-string v7, "allocateInstance"

    .line 45
    .line 46
    filled-new-array {v2}, [Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    move-result-object v8

    .line 50
    invoke-virtual {v5, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    new-instance v7, Lb81;

    .line 55
    .line 56
    invoke-direct {v7, v5, v6, p1}, Lb81;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/Class;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 57
    .line 58
    .line 59
    move-object v6, v7

    .line 60
    goto :goto_0

    .line 61
    :catch_1
    :try_start_2
    const-string v5, "getConstructorId"

    .line 62
    .line 63
    filled-new-array {v2}, [Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    invoke-virtual {v5, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 72
    .line 73
    .line 74
    const-class v6, Ljava/lang/Object;

    .line 75
    .line 76
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    invoke-virtual {v5, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    check-cast v5, Ljava/lang/Integer;

    .line 85
    .line 86
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 91
    .line 92
    filled-new-array {v2, v6}, [Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    invoke-virtual {v1, v0, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {v1, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 101
    .line 102
    .line 103
    new-instance v6, Ld81;

    .line 104
    .line 105
    invoke-direct {v6, v1, p1, v5}, Ld81;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Class;I)V
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_3

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :catch_2
    move-exception p0

    .line 110
    goto/16 :goto_7

    .line 111
    .line 112
    :catch_3
    :try_start_3
    const-class v1, Ljava/io/ObjectInputStream;

    .line 113
    .line 114
    filled-new-array {v2, v2}, [Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {v0, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 123
    .line 124
    .line 125
    new-instance v6, Lf81;

    .line 126
    .line 127
    invoke-direct {v6, v0, p1}, Lf81;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Class;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 128
    .line 129
    .line 130
    :goto_0
    iput-object v6, p0, Luh6;->a:Lsz8;

    .line 131
    .line 132
    iput-object p2, p0, Luh6;->b:Lla4;

    .line 133
    .line 134
    iput-object p3, p0, Luh6;->c:Lla4;

    .line 135
    .line 136
    sget-object p1, Lla4;->f:Lja4;

    .line 137
    .line 138
    new-instance p1, Lia4;

    .line 139
    .line 140
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 141
    .line 142
    .line 143
    const/4 p3, 0x4

    .line 144
    const-string v0, "initialCapacity"

    .line 145
    .line 146
    invoke-static {p3, v0}, Llg7;->c(ILjava/lang/String;)V

    .line 147
    .line 148
    .line 149
    new-array v1, p3, [Ljava/lang/Object;

    .line 150
    .line 151
    iput-object v1, p1, Lia4;->a:[Ljava/lang/Object;

    .line 152
    .line 153
    const/4 v1, 0x0

    .line 154
    iput v1, p1, Lia4;->b:I

    .line 155
    .line 156
    new-instance v2, Lia4;

    .line 157
    .line 158
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 159
    .line 160
    .line 161
    invoke-static {p3, v0}, Llg7;->c(ILjava/lang/String;)V

    .line 162
    .line 163
    .line 164
    new-array v3, p3, [Ljava/lang/Object;

    .line 165
    .line 166
    iput-object v3, v2, Lia4;->a:[Ljava/lang/Object;

    .line 167
    .line 168
    iput v1, v2, Lia4;->b:I

    .line 169
    .line 170
    invoke-virtual {p2, v1}, Lla4;->x(I)Lja4;

    .line 171
    .line 172
    .line 173
    move-result-object p2

    .line 174
    :goto_1
    invoke-virtual {p2}, Lja4;->hasNext()Z

    .line 175
    .line 176
    .line 177
    move-result v3

    .line 178
    if-eqz v3, :cond_0

    .line 179
    .line 180
    invoke-virtual {p2}, Lja4;->next()Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v3

    .line 184
    check-cast v3, Lf63;

    .line 185
    .line 186
    invoke-virtual {v3}, Lf63;->a()[Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v5

    .line 190
    invoke-virtual {p1, v5}, Lia4;->b([Ljava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v3}, Lf63;->b()[Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v3

    .line 197
    invoke-virtual {v2, v3}, Lia4;->b([Ljava/lang/Object;)V

    .line 198
    .line 199
    .line 200
    goto :goto_1

    .line 201
    :cond_0
    iput-boolean v4, p1, Lia4;->c:Z

    .line 202
    .line 203
    iget-object p2, p1, Lia4;->a:[Ljava/lang/Object;

    .line 204
    .line 205
    iget p1, p1, Lia4;->b:I

    .line 206
    .line 207
    if-nez p1, :cond_1

    .line 208
    .line 209
    sget-object p1, Loi6;->p:Loi6;

    .line 210
    .line 211
    goto :goto_2

    .line 212
    :cond_1
    new-instance v3, Loi6;

    .line 213
    .line 214
    invoke-direct {v3, p1, p2}, Loi6;-><init>(I[Ljava/lang/Object;)V

    .line 215
    .line 216
    .line 217
    move-object p1, v3

    .line 218
    :goto_2
    iget p2, p1, Loi6;->n:I

    .line 219
    .line 220
    new-array p2, p2, [Ljava/lang/String;

    .line 221
    .line 222
    invoke-virtual {p1, p2}, Lga4;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    check-cast p1, [Ljava/lang/String;

    .line 227
    .line 228
    iput-object p1, p0, Luh6;->d:[Ljava/lang/String;

    .line 229
    .line 230
    iput-boolean v4, v2, Lia4;->c:Z

    .line 231
    .line 232
    iget-object p1, v2, Lia4;->a:[Ljava/lang/Object;

    .line 233
    .line 234
    iget p2, v2, Lia4;->b:I

    .line 235
    .line 236
    if-nez p2, :cond_2

    .line 237
    .line 238
    sget-object p1, Loi6;->p:Loi6;

    .line 239
    .line 240
    goto :goto_3

    .line 241
    :cond_2
    new-instance v2, Loi6;

    .line 242
    .line 243
    invoke-direct {v2, p2, p1}, Loi6;-><init>(I[Ljava/lang/Object;)V

    .line 244
    .line 245
    .line 246
    move-object p1, v2

    .line 247
    :goto_3
    iget p2, p1, Loi6;->n:I

    .line 248
    .line 249
    new-array p2, p2, [Ljava/lang/String;

    .line 250
    .line 251
    invoke-virtual {p1, p2}, Lga4;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object p1

    .line 255
    check-cast p1, [Ljava/lang/String;

    .line 256
    .line 257
    iput-object p1, p0, Luh6;->e:[Ljava/lang/String;

    .line 258
    .line 259
    sget p2, Lna4;->k:I

    .line 260
    .line 261
    invoke-static {p3, v0}, Llg7;->c(ILjava/lang/String;)V

    .line 262
    .line 263
    .line 264
    new-array p2, p3, [Ljava/lang/Object;

    .line 265
    .line 266
    new-instance p3, Ljava/util/HashSet;

    .line 267
    .line 268
    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    .line 269
    .line 270
    .line 271
    array-length v0, p1

    .line 272
    move v2, v1

    .line 273
    move v3, v2

    .line 274
    :goto_4
    if-ge v2, v0, :cond_5

    .line 275
    .line 276
    aget-object v5, p1, v2

    .line 277
    .line 278
    invoke-virtual {p3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 279
    .line 280
    .line 281
    move-result v6

    .line 282
    if-nez v6, :cond_4

    .line 283
    .line 284
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 285
    .line 286
    .line 287
    array-length v6, p2

    .line 288
    add-int/lit8 v7, v3, 0x1

    .line 289
    .line 290
    invoke-static {v6, v7}, Lia4;->d(II)I

    .line 291
    .line 292
    .line 293
    move-result v6

    .line 294
    array-length v8, p2

    .line 295
    if-gt v6, v8, :cond_3

    .line 296
    .line 297
    goto :goto_5

    .line 298
    :cond_3
    invoke-static {p2, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move-result-object p2

    .line 302
    :goto_5
    aput-object v5, p2, v3

    .line 303
    .line 304
    move v3, v7

    .line 305
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 306
    .line 307
    goto :goto_4

    .line 308
    :cond_5
    if-eqz v3, :cond_7

    .line 309
    .line 310
    if-eq v3, v4, :cond_6

    .line 311
    .line 312
    invoke-static {v3, p2}, Lna4;->y(I[Ljava/lang/Object;)Lna4;

    .line 313
    .line 314
    .line 315
    move-result-object p1

    .line 316
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    .line 317
    .line 318
    .line 319
    goto :goto_6

    .line 320
    :cond_6
    aget-object p1, p2, v1

    .line 321
    .line 322
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    new-instance p2, Lmh7;

    .line 326
    .line 327
    invoke-direct {p2, p1}, Lmh7;-><init>(Ljava/lang/Object;)V

    .line 328
    .line 329
    .line 330
    move-object p1, p2

    .line 331
    goto :goto_6

    .line 332
    :cond_7
    sget-object p1, Lui6;->y:Lui6;

    .line 333
    .line 334
    :goto_6
    iput-object p1, p0, Luh6;->f:Lna4;

    .line 335
    .line 336
    return-void

    .line 337
    :catch_4
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object p0

    .line 341
    const-string p1, "cannot construct instances of "

    .line 342
    .line 343
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object p0

    .line 347
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    throw v3

    .line 351
    :goto_7
    invoke-static {p0}, Ly5;->k(Ljava/lang/Throwable;)V

    .line 352
    .line 353
    .line 354
    throw v3

    .line 355
    :catch_5
    invoke-static {}, Ld6;->n()V

    .line 356
    .line 357
    .line 358
    throw v3

    .line 359
    :catch_6
    invoke-static {}, Ld6;->n()V

    .line 360
    .line 361
    .line 362
    throw v3
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Luh6;->a:Lsz8;

    .line 3
    .line 4
    invoke-virtual {v1}, Lsz8;->M()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    iget-object p0, p0, Luh6;->c:Lla4;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {p0, v2}, Lla4;->x(I)Lja4;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    :goto_0
    invoke-virtual {p0}, Lja4;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Lja4;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Ldu2;

    .line 26
    .line 27
    iget-object v3, v2, Ldu2;->a:Ljava/lang/reflect/Field;

    .line 28
    .line 29
    iget-object v2, v2, Ldu2;->b:Luh6;

    .line 30
    .line 31
    invoke-virtual {v2}, Luh6;->a()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v3, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catch_0
    move-exception p0

    .line 40
    goto :goto_1

    .line 41
    :catch_1
    move-exception p0

    .line 42
    goto :goto_2

    .line 43
    :catch_2
    move-exception p0

    .line 44
    goto :goto_3

    .line 45
    :cond_0
    return-object v1

    .line 46
    :goto_1
    invoke-static {p0}, Le6;->e(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    return-object v0

    .line 50
    :goto_2
    invoke-static {p0}, Le6;->e(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    return-object v0

    .line 54
    :goto_3
    invoke-static {p0}, Le6;->e(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    return-object v0
.end method

.method public final b(Landroid/database/Cursor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Luh6;->b:Lla4;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lla4;->x(I)Lja4;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    :goto_0
    invoke-virtual {p0}, Lja4;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lja4;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lf63;

    .line 19
    .line 20
    invoke-virtual {v0, p1, p2}, Lf63;->d(Landroid/database/Cursor;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return-object p2

    .line 25
    :catch_0
    move-exception p0

    .line 26
    invoke-static {p0}, Le6;->e(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    const/4 p0, 0x0

    .line 30
    return-object p0
.end method

.method public final c(Landroid/content/ContentValues;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Luh6;->f:Lna4;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_2

    .line 8
    .line 9
    :try_start_0
    iget-object p0, p0, Luh6;->b:Lla4;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, v0}, Lla4;->x(I)Lja4;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    :goto_0
    invoke-virtual {p0}, Lja4;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Lja4;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lf63;

    .line 27
    .line 28
    if-eqz p2, :cond_0

    .line 29
    .line 30
    iget-object v1, v0, Lf63;->a:Ljava/lang/reflect/Field;

    .line 31
    .line 32
    invoke-virtual {v1, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    const/4 v1, 0x0

    .line 38
    :goto_1
    invoke-virtual {v0, p1, v1}, Lf63;->c(Landroid/content/ContentValues;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    return-void

    .line 43
    :catch_0
    move-exception p0

    .line 44
    invoke-static {p0}, Le6;->e(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :catch_1
    move-exception p0

    .line 49
    invoke-static {p0}, Le6;->e(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_2
    new-instance p0, Lsg9;

    .line 54
    .line 55
    const/4 p1, 0x3

    .line 56
    const-string p2, ", "

    .line 57
    .line 58
    invoke-direct {p0, p2, p1}, Lsg9;-><init>(Ljava/lang/String;I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v0}, Lsg9;->a(Ljava/lang/Iterable;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    const-string p1, "Duplicate columns definitions: "

    .line 66
    .line 67
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method
