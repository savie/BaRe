.class public final Li81;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lpi4;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Li81;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static b(Ljava/lang/reflect/Type;Ljava/lang/Class;)V
    .locals 4

    .line 1
    invoke-static {p0}, Lwx3;->l(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 13
    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v3, "No JsonAdapter for "

    .line 17
    .line 18
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const-string v0, ", you should probably use "

    .line 33
    .line 34
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string p0, " instead of "

    .line 41
    .line 42
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string p0, " (Moshi only supports the collection interfaces by default) or else register a custom JsonAdapter."

    .line 49
    .line 50
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw v1
.end method


# virtual methods
.method public final a(Ljava/lang/reflect/Type;Ljava/util/Set;Lnh5;)Lqi4;
    .locals 17

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    move-object/from16 v0, p0

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    iget v0, v0, Li81;->a:I

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x1

    .line 11
    const-class v5, Ljava/lang/Object;

    .line 12
    .line 13
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 14
    .line 15
    const/4 v7, 0x0

    .line 16
    packed-switch v0, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    sget-object v0, Ll73;->k:Lpl7;

    .line 20
    .line 21
    sget-object v8, Ll73;->j:Lol7;

    .line 22
    .line 23
    sget-object v9, Ll73;->i:Lnl7;

    .line 24
    .line 25
    sget-object v10, Ll73;->h:Lml7;

    .line 26
    .line 27
    sget-object v11, Ll73;->g:Lll7;

    .line 28
    .line 29
    sget-object v12, Ll73;->f:Lkl7;

    .line 30
    .line 31
    sget-object v13, Ll73;->e:Ljl7;

    .line 32
    .line 33
    sget-object v14, Ll73;->d:Lil7;

    .line 34
    .line 35
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result v15

    .line 39
    if-nez v15, :cond_0

    .line 40
    .line 41
    goto/16 :goto_9

    .line 42
    .line 43
    :cond_0
    sget-object v15, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 44
    .line 45
    if-ne v1, v15, :cond_1

    .line 46
    .line 47
    move-object v7, v14

    .line 48
    goto/16 :goto_9

    .line 49
    .line 50
    :cond_1
    sget-object v15, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 51
    .line 52
    if-ne v1, v15, :cond_2

    .line 53
    .line 54
    move-object v7, v13

    .line 55
    goto/16 :goto_9

    .line 56
    .line 57
    :cond_2
    sget-object v15, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 58
    .line 59
    if-ne v1, v15, :cond_3

    .line 60
    .line 61
    move-object v7, v12

    .line 62
    goto/16 :goto_9

    .line 63
    .line 64
    :cond_3
    sget-object v15, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 65
    .line 66
    if-ne v1, v15, :cond_4

    .line 67
    .line 68
    move-object v7, v11

    .line 69
    goto/16 :goto_9

    .line 70
    .line 71
    :cond_4
    sget-object v15, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 72
    .line 73
    if-ne v1, v15, :cond_5

    .line 74
    .line 75
    move-object v7, v10

    .line 76
    goto/16 :goto_9

    .line 77
    .line 78
    :cond_5
    if-ne v1, v6, :cond_6

    .line 79
    .line 80
    move-object v7, v9

    .line 81
    goto/16 :goto_9

    .line 82
    .line 83
    :cond_6
    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 84
    .line 85
    if-ne v1, v6, :cond_7

    .line 86
    .line 87
    move-object v7, v8

    .line 88
    goto/16 :goto_9

    .line 89
    .line 90
    :cond_7
    sget-object v6, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 91
    .line 92
    if-ne v1, v6, :cond_8

    .line 93
    .line 94
    move-object v7, v0

    .line 95
    goto/16 :goto_9

    .line 96
    .line 97
    :cond_8
    const-class v6, Ljava/lang/Boolean;

    .line 98
    .line 99
    if-ne v1, v6, :cond_9

    .line 100
    .line 101
    invoke-virtual {v14}, Lqi4;->c()Lpp5;

    .line 102
    .line 103
    .line 104
    move-result-object v7

    .line 105
    goto/16 :goto_9

    .line 106
    .line 107
    :cond_9
    const-class v6, Ljava/lang/Byte;

    .line 108
    .line 109
    if-ne v1, v6, :cond_a

    .line 110
    .line 111
    invoke-virtual {v13}, Lqi4;->c()Lpp5;

    .line 112
    .line 113
    .line 114
    move-result-object v7

    .line 115
    goto/16 :goto_9

    .line 116
    .line 117
    :cond_a
    const-class v6, Ljava/lang/Character;

    .line 118
    .line 119
    if-ne v1, v6, :cond_b

    .line 120
    .line 121
    invoke-virtual {v12}, Lqi4;->c()Lpp5;

    .line 122
    .line 123
    .line 124
    move-result-object v7

    .line 125
    goto/16 :goto_9

    .line 126
    .line 127
    :cond_b
    const-class v6, Ljava/lang/Double;

    .line 128
    .line 129
    if-ne v1, v6, :cond_c

    .line 130
    .line 131
    invoke-virtual {v11}, Lqi4;->c()Lpp5;

    .line 132
    .line 133
    .line 134
    move-result-object v7

    .line 135
    goto/16 :goto_9

    .line 136
    .line 137
    :cond_c
    const-class v6, Ljava/lang/Float;

    .line 138
    .line 139
    if-ne v1, v6, :cond_d

    .line 140
    .line 141
    invoke-virtual {v10}, Lqi4;->c()Lpp5;

    .line 142
    .line 143
    .line 144
    move-result-object v7

    .line 145
    goto/16 :goto_9

    .line 146
    .line 147
    :cond_d
    const-class v6, Ljava/lang/Integer;

    .line 148
    .line 149
    if-ne v1, v6, :cond_e

    .line 150
    .line 151
    invoke-virtual {v9}, Lqi4;->c()Lpp5;

    .line 152
    .line 153
    .line 154
    move-result-object v7

    .line 155
    goto/16 :goto_9

    .line 156
    .line 157
    :cond_e
    const-class v6, Ljava/lang/Long;

    .line 158
    .line 159
    if-ne v1, v6, :cond_f

    .line 160
    .line 161
    invoke-virtual {v8}, Lqi4;->c()Lpp5;

    .line 162
    .line 163
    .line 164
    move-result-object v7

    .line 165
    goto/16 :goto_9

    .line 166
    .line 167
    :cond_f
    const-class v6, Ljava/lang/Short;

    .line 168
    .line 169
    if-ne v1, v6, :cond_10

    .line 170
    .line 171
    invoke-virtual {v0}, Lqi4;->c()Lpp5;

    .line 172
    .line 173
    .line 174
    move-result-object v7

    .line 175
    goto/16 :goto_9

    .line 176
    .line 177
    :cond_10
    const-class v0, Ljava/lang/String;

    .line 178
    .line 179
    if-ne v1, v0, :cond_11

    .line 180
    .line 181
    sget-object v0, Ll73;->l:Lhl7;

    .line 182
    .line 183
    invoke-virtual {v0}, Lqi4;->c()Lpp5;

    .line 184
    .line 185
    .line 186
    move-result-object v7

    .line 187
    goto/16 :goto_9

    .line 188
    .line 189
    :cond_11
    if-ne v1, v5, :cond_12

    .line 190
    .line 191
    new-instance v0, Lrl7;

    .line 192
    .line 193
    invoke-direct {v0, v2}, Lrl7;-><init>(Lnh5;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0}, Lqi4;->c()Lpp5;

    .line 197
    .line 198
    .line 199
    move-result-object v7

    .line 200
    goto/16 :goto_9

    .line 201
    .line 202
    :cond_12
    invoke-static {v1}, Lwx3;->l(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    sget-object v5, Lyh8;->a:Ljava/util/Set;

    .line 207
    .line 208
    const-class v5, [Ljava/lang/reflect/Type;

    .line 209
    .line 210
    const-class v6, Lbj4;

    .line 211
    .line 212
    invoke-virtual {v0, v6}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 213
    .line 214
    .line 215
    move-result-object v6

    .line 216
    check-cast v6, Lbj4;

    .line 217
    .line 218
    if-eqz v6, :cond_17

    .line 219
    .line 220
    invoke-interface {v6}, Lbj4;->generateAdapter()Z

    .line 221
    .line 222
    .line 223
    move-result v6

    .line 224
    if-nez v6, :cond_13

    .line 225
    .line 226
    goto/16 :goto_7

    .line 227
    .line 228
    :cond_13
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v6

    .line 232
    new-instance v8, Ljava/lang/StringBuilder;

    .line 233
    .line 234
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 235
    .line 236
    .line 237
    const-string v9, "$"

    .line 238
    .line 239
    const-string v10, "_"

    .line 240
    .line 241
    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v6

    .line 245
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    const-string v6, "JsonAdapter"

    .line 249
    .line 250
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v6

    .line 257
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 258
    .line 259
    .line 260
    move-result-object v8

    .line 261
    invoke-static {v6, v4, v8}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 262
    .line 263
    .line 264
    move-result-object v6
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    :try_start_1
    instance-of v8, v1, Ljava/lang/reflect/ParameterizedType;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    .line 266
    .line 267
    const-class v9, Lnh5;

    .line 268
    .line 269
    if-eqz v8, :cond_14

    .line 270
    .line 271
    :try_start_2
    move-object v3, v1

    .line 272
    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    .line 273
    .line 274
    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 275
    .line 276
    .line 277
    move-result-object v3
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_0

    .line 278
    :try_start_3
    filled-new-array {v9, v5}, [Ljava/lang/Class;

    .line 279
    .line 280
    .line 281
    move-result-object v8

    .line 282
    invoke-virtual {v6, v8}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 283
    .line 284
    .line 285
    move-result-object v8

    .line 286
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object v2
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_0

    .line 290
    goto :goto_0

    .line 291
    :catch_0
    move-exception v0

    .line 292
    goto :goto_1

    .line 293
    :catch_1
    move-exception v0

    .line 294
    goto :goto_2

    .line 295
    :catch_2
    move-exception v0

    .line 296
    goto :goto_3

    .line 297
    :catch_3
    move-exception v0

    .line 298
    goto/16 :goto_6

    .line 299
    .line 300
    :catch_4
    :try_start_4
    filled-new-array {v5}, [Ljava/lang/Class;

    .line 301
    .line 302
    .line 303
    move-result-object v2

    .line 304
    invoke-virtual {v6, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 305
    .line 306
    .line 307
    move-result-object v8

    .line 308
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object v2
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_0

    .line 312
    goto :goto_0

    .line 313
    :catch_5
    move-exception v0

    .line 314
    goto :goto_4

    .line 315
    :cond_14
    :try_start_5
    filled-new-array {v9}, [Ljava/lang/Class;

    .line 316
    .line 317
    .line 318
    move-result-object v5

    .line 319
    invoke-virtual {v6, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 320
    .line 321
    .line 322
    move-result-object v8

    .line 323
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    move-result-object v2
    :try_end_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_5} :catch_0

    .line 327
    goto :goto_0

    .line 328
    :catch_6
    :try_start_6
    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 329
    .line 330
    .line 331
    move-result-object v8

    .line 332
    new-array v2, v3, [Ljava/lang/Object;

    .line 333
    .line 334
    :goto_0
    invoke-virtual {v8, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v8, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    move-result-object v2

    .line 341
    check-cast v2, Lqi4;

    .line 342
    .line 343
    invoke-virtual {v2}, Lqi4;->c()Lpp5;

    .line 344
    .line 345
    .line 346
    move-result-object v1
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_6} :catch_0

    .line 347
    goto :goto_8

    .line 348
    :catch_7
    move-exception v0

    .line 349
    move-object v6, v7

    .line 350
    goto :goto_4

    .line 351
    :goto_1
    invoke-static {v0}, Lyh8;->h(Ljava/lang/reflect/InvocationTargetException;)V

    .line 352
    .line 353
    .line 354
    throw v7

    .line 355
    :goto_2
    const-string v2, "Failed to instantiate the generated JsonAdapter for "

    .line 356
    .line 357
    invoke-static {v2, v1, v0}, Lc6;->h(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 358
    .line 359
    .line 360
    goto :goto_9

    .line 361
    :goto_3
    const-string v2, "Failed to access the generated JsonAdapter for "

    .line 362
    .line 363
    invoke-static {v2, v1, v0}, Lc6;->h(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 364
    .line 365
    .line 366
    goto :goto_9

    .line 367
    :goto_4
    instance-of v2, v1, Ljava/lang/reflect/ParameterizedType;

    .line 368
    .line 369
    if-nez v2, :cond_16

    .line 370
    .line 371
    invoke-virtual {v6}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    .line 372
    .line 373
    .line 374
    move-result-object v2

    .line 375
    array-length v2, v2

    .line 376
    if-nez v2, :cond_15

    .line 377
    .line 378
    goto :goto_5

    .line 379
    :cond_15
    new-instance v2, Ljava/lang/RuntimeException;

    .line 380
    .line 381
    new-instance v3, Ljava/lang/StringBuilder;

    .line 382
    .line 383
    const-string v4, "Failed to find the generated JsonAdapter constructor for \'"

    .line 384
    .line 385
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v1

    .line 395
    const-string v4, "\'. Suspiciously, the type was not parameterized but the target class \'"

    .line 396
    .line 397
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    .line 402
    .line 403
    const-string v1, "\' is generic. Consider using Types#newParameterizedType() to define these missing type variables."

    .line 404
    .line 405
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    .line 407
    .line 408
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v1

    .line 412
    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 413
    .line 414
    .line 415
    throw v2

    .line 416
    :cond_16
    :goto_5
    const-string v2, "Failed to find the generated JsonAdapter constructor for "

    .line 417
    .line 418
    invoke-static {v2, v1, v0}, Lc6;->h(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 419
    .line 420
    .line 421
    goto :goto_9

    .line 422
    :goto_6
    const-string v2, "Failed to find the generated JsonAdapter class for "

    .line 423
    .line 424
    invoke-static {v2, v1, v0}, Lc6;->h(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 425
    .line 426
    .line 427
    goto :goto_9

    .line 428
    :cond_17
    :goto_7
    move-object v1, v7

    .line 429
    :goto_8
    if-eqz v1, :cond_18

    .line 430
    .line 431
    move-object v7, v1

    .line 432
    goto :goto_9

    .line 433
    :cond_18
    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    .line 434
    .line 435
    .line 436
    move-result v1

    .line 437
    if-eqz v1, :cond_19

    .line 438
    .line 439
    new-instance v1, Lql7;

    .line 440
    .line 441
    invoke-direct {v1, v0}, Lql7;-><init>(Ljava/lang/Class;)V

    .line 442
    .line 443
    .line 444
    invoke-virtual {v1}, Lqi4;->c()Lpp5;

    .line 445
    .line 446
    .line 447
    move-result-object v7

    .line 448
    :cond_19
    :goto_9
    return-object v7

    .line 449
    :pswitch_0
    instance-of v0, v1, Ljava/lang/Class;

    .line 450
    .line 451
    if-nez v0, :cond_1b

    .line 452
    .line 453
    instance-of v0, v1, Ljava/lang/reflect/ParameterizedType;

    .line 454
    .line 455
    if-nez v0, :cond_1b

    .line 456
    .line 457
    :cond_1a
    :goto_a
    move-object/from16 v16, v7

    .line 458
    .line 459
    goto/16 :goto_12

    .line 460
    .line 461
    :cond_1b
    invoke-static {v1}, Lwx3;->l(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 462
    .line 463
    .line 464
    move-result-object v0

    .line 465
    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    .line 466
    .line 467
    .line 468
    move-result v8

    .line 469
    if-nez v8, :cond_1a

    .line 470
    .line 471
    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    .line 472
    .line 473
    .line 474
    move-result v8

    .line 475
    if-eqz v8, :cond_1c

    .line 476
    .line 477
    goto :goto_a

    .line 478
    :cond_1c
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->isEmpty()Z

    .line 479
    .line 480
    .line 481
    move-result v8

    .line 482
    if-nez v8, :cond_1d

    .line 483
    .line 484
    goto :goto_a

    .line 485
    :cond_1d
    invoke-static {v0}, Lyh8;->d(Ljava/lang/Class;)Z

    .line 486
    .line 487
    .line 488
    move-result v8

    .line 489
    if-eqz v8, :cond_1f

    .line 490
    .line 491
    const-class v2, Ljava/util/List;

    .line 492
    .line 493
    invoke-static {v1, v2}, Li81;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;)V

    .line 494
    .line 495
    .line 496
    const-class v2, Ljava/util/Set;

    .line 497
    .line 498
    invoke-static {v1, v2}, Li81;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;)V

    .line 499
    .line 500
    .line 501
    const-class v2, Ljava/util/Map;

    .line 502
    .line 503
    invoke-static {v1, v2}, Li81;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;)V

    .line 504
    .line 505
    .line 506
    const-class v2, Ljava/util/Collection;

    .line 507
    .line 508
    invoke-static {v1, v2}, Li81;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;)V

    .line 509
    .line 510
    .line 511
    new-instance v2, Ljava/lang/StringBuilder;

    .line 512
    .line 513
    const-string v3, "Platform "

    .line 514
    .line 515
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 516
    .line 517
    .line 518
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 519
    .line 520
    .line 521
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 522
    .line 523
    .line 524
    move-result-object v0

    .line 525
    instance-of v2, v1, Ljava/lang/reflect/ParameterizedType;

    .line 526
    .line 527
    if-eqz v2, :cond_1e

    .line 528
    .line 529
    new-instance v2, Ljava/lang/StringBuilder;

    .line 530
    .line 531
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 532
    .line 533
    .line 534
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    .line 536
    .line 537
    const-string v0, " in "

    .line 538
    .line 539
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    .line 541
    .line 542
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 543
    .line 544
    .line 545
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 546
    .line 547
    .line 548
    move-result-object v0

    .line 549
    :cond_1e
    const-string v1, " requires explicit JsonAdapter to be registered"

    .line 550
    .line 551
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 552
    .line 553
    .line 554
    move-result-object v0

    .line 555
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 556
    .line 557
    .line 558
    goto/16 :goto_17

    .line 559
    .line 560
    :cond_1f
    invoke-virtual {v0}, Ljava/lang/Class;->isAnonymousClass()Z

    .line 561
    .line 562
    .line 563
    move-result v8

    .line 564
    if-nez v8, :cond_2f

    .line 565
    .line 566
    invoke-virtual {v0}, Ljava/lang/Class;->isLocalClass()Z

    .line 567
    .line 568
    .line 569
    move-result v8

    .line 570
    if-nez v8, :cond_2e

    .line 571
    .line 572
    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    .line 573
    .line 574
    .line 575
    move-result-object v8

    .line 576
    if-eqz v8, :cond_21

    .line 577
    .line 578
    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    .line 579
    .line 580
    .line 581
    move-result v8

    .line 582
    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 583
    .line 584
    .line 585
    move-result v8

    .line 586
    if-eqz v8, :cond_20

    .line 587
    .line 588
    goto :goto_b

    .line 589
    :cond_20
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 590
    .line 591
    .line 592
    move-result-object v0

    .line 593
    const-string v1, "Cannot serialize non-static nested class "

    .line 594
    .line 595
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 596
    .line 597
    .line 598
    move-result-object v0

    .line 599
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 600
    .line 601
    .line 602
    goto/16 :goto_17

    .line 603
    .line 604
    :cond_21
    :goto_b
    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    .line 605
    .line 606
    .line 607
    move-result v8

    .line 608
    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    .line 609
    .line 610
    .line 611
    move-result v8

    .line 612
    if-nez v8, :cond_2d

    .line 613
    .line 614
    sget-object v8, Lyh8;->c:Ljava/lang/Class;

    .line 615
    .line 616
    if-eqz v8, :cond_23

    .line 617
    .line 618
    invoke-virtual {v0, v8}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    .line 619
    .line 620
    .line 621
    move-result v8

    .line 622
    if-nez v8, :cond_22

    .line 623
    .line 624
    goto :goto_c

    .line 625
    :cond_22
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 626
    .line 627
    .line 628
    move-result-object v0

    .line 629
    const-string v1, ". Reflective serialization of Kotlin classes without using kotlin-reflect has undefined and unexpected behavior. Please use KotlinJsonAdapterFactory from the moshi-kotlin artifact or use code gen from the moshi-kotlin-codegen artifact."

    .line 630
    .line 631
    const-string v2, "Cannot serialize Kotlin type "

    .line 632
    .line 633
    invoke-static {v0, v1, v2}, Lz5;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 634
    .line 635
    .line 636
    goto/16 :goto_17

    .line 637
    .line 638
    :cond_23
    :goto_c
    const-string v8, "newInstance"

    .line 639
    .line 640
    const-class v9, Ljava/io/ObjectStreamClass;

    .line 641
    .line 642
    const-class v10, Ljava/lang/Class;

    .line 643
    .line 644
    :try_start_7
    invoke-virtual {v0, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 645
    .line 646
    .line 647
    move-result-object v11

    .line 648
    invoke-virtual {v11, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 649
    .line 650
    .line 651
    new-instance v12, La81;

    .line 652
    .line 653
    invoke-direct {v12, v11, v0}, La81;-><init>(Ljava/lang/reflect/Constructor;Ljava/lang/Class;)V
    :try_end_7
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_7} :catch_8

    .line 654
    .line 655
    .line 656
    goto :goto_d

    .line 657
    :catch_8
    :try_start_8
    const-string v11, "sun.misc.Unsafe"

    .line 658
    .line 659
    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 660
    .line 661
    .line 662
    move-result-object v11

    .line 663
    const-string v12, "theUnsafe"

    .line 664
    .line 665
    invoke-virtual {v11, v12}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 666
    .line 667
    .line 668
    move-result-object v12

    .line 669
    invoke-virtual {v12, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 670
    .line 671
    .line 672
    invoke-virtual {v12, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    .line 674
    .line 675
    move-result-object v12

    .line 676
    const-string v13, "allocateInstance"

    .line 677
    .line 678
    filled-new-array {v10}, [Ljava/lang/Class;

    .line 679
    .line 680
    .line 681
    move-result-object v14

    .line 682
    invoke-virtual {v11, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 683
    .line 684
    .line 685
    move-result-object v11

    .line 686
    new-instance v13, Lc81;

    .line 687
    .line 688
    invoke-direct {v13, v11, v12, v0}, Lc81;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/Class;)V
    :try_end_8
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_8} :catch_a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_8} :catch_a
    .catch Ljava/lang/NoSuchFieldException; {:try_start_8 .. :try_end_8} :catch_a

    .line 689
    .line 690
    .line 691
    move-object v12, v13

    .line 692
    goto :goto_d

    .line 693
    :catch_9
    move-object/from16 v16, v7

    .line 694
    .line 695
    goto/16 :goto_16

    .line 696
    .line 697
    :catch_a
    :try_start_9
    const-string v11, "getConstructorId"

    .line 698
    .line 699
    filled-new-array {v10}, [Ljava/lang/Class;

    .line 700
    .line 701
    .line 702
    move-result-object v12

    .line 703
    invoke-virtual {v9, v11, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 704
    .line 705
    .line 706
    move-result-object v11

    .line 707
    invoke-virtual {v11, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 708
    .line 709
    .line 710
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 711
    .line 712
    .line 713
    move-result-object v12

    .line 714
    invoke-virtual {v11, v7, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    .line 716
    .line 717
    move-result-object v11

    .line 718
    check-cast v11, Ljava/lang/Integer;

    .line 719
    .line 720
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 721
    .line 722
    .line 723
    move-result v11

    .line 724
    filled-new-array {v10, v6}, [Ljava/lang/Class;

    .line 725
    .line 726
    .line 727
    move-result-object v6

    .line 728
    invoke-virtual {v9, v8, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 729
    .line 730
    .line 731
    move-result-object v6

    .line 732
    invoke-virtual {v6, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 733
    .line 734
    .line 735
    new-instance v12, Le81;

    .line 736
    .line 737
    invoke-direct {v12, v6, v0, v11}, Le81;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Class;I)V
    :try_end_9
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_9} :catch_c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_9 .. :try_end_9} :catch_b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_9 .. :try_end_9} :catch_d

    .line 738
    .line 739
    .line 740
    goto :goto_d

    .line 741
    :catch_b
    move-exception v0

    .line 742
    move-object/from16 v16, v7

    .line 743
    .line 744
    goto/16 :goto_14

    .line 745
    .line 746
    :catch_c
    move-object/from16 v16, v7

    .line 747
    .line 748
    goto/16 :goto_15

    .line 749
    .line 750
    :catch_d
    :try_start_a
    const-class v6, Ljava/io/ObjectInputStream;

    .line 751
    .line 752
    filled-new-array {v10, v10}, [Ljava/lang/Class;

    .line 753
    .line 754
    .line 755
    move-result-object v9

    .line 756
    invoke-virtual {v6, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 757
    .line 758
    .line 759
    move-result-object v6

    .line 760
    invoke-virtual {v6, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 761
    .line 762
    .line 763
    new-instance v12, Lg81;

    .line 764
    .line 765
    invoke-direct {v12, v6, v0}, Lg81;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Class;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_e

    .line 766
    .line 767
    .line 768
    :goto_d
    new-instance v0, Ljava/util/TreeMap;

    .line 769
    .line 770
    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 771
    .line 772
    .line 773
    :goto_e
    if-eq v1, v5, :cond_2c

    .line 774
    .line 775
    invoke-static {v1}, Lwx3;->l(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 776
    .line 777
    .line 778
    move-result-object v6

    .line 779
    invoke-static {v6}, Lyh8;->d(Ljava/lang/Class;)Z

    .line 780
    .line 781
    .line 782
    move-result v8

    .line 783
    invoke-virtual {v6}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 784
    .line 785
    .line 786
    move-result-object v9

    .line 787
    array-length v10, v9

    .line 788
    move v11, v3

    .line 789
    :goto_f
    if-ge v11, v10, :cond_2b

    .line 790
    .line 791
    aget-object v13, v9, v11

    .line 792
    .line 793
    invoke-virtual {v13}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 794
    .line 795
    .line 796
    move-result v14

    .line 797
    invoke-static {v14}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 798
    .line 799
    .line 800
    move-result v15

    .line 801
    if-nez v15, :cond_26

    .line 802
    .line 803
    invoke-static {v14}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    .line 804
    .line 805
    .line 806
    move-result v15

    .line 807
    if-eqz v15, :cond_24

    .line 808
    .line 809
    goto :goto_10

    .line 810
    :cond_24
    invoke-static {v14}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    .line 811
    .line 812
    .line 813
    move-result v15

    .line 814
    if-nez v15, :cond_25

    .line 815
    .line 816
    invoke-static {v14}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    .line 817
    .line 818
    .line 819
    move-result v14

    .line 820
    if-nez v14, :cond_25

    .line 821
    .line 822
    if-nez v8, :cond_26

    .line 823
    .line 824
    :cond_25
    const-class v14, Loi4;

    .line 825
    .line 826
    invoke-virtual {v13, v14}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 827
    .line 828
    .line 829
    move-result-object v14

    .line 830
    check-cast v14, Loi4;

    .line 831
    .line 832
    if-eqz v14, :cond_27

    .line 833
    .line 834
    invoke-interface {v14}, Loi4;->ignore()Z

    .line 835
    .line 836
    .line 837
    move-result v15

    .line 838
    if-eqz v15, :cond_27

    .line 839
    .line 840
    :cond_26
    :goto_10
    move-object/from16 v16, v7

    .line 841
    .line 842
    goto :goto_13

    .line 843
    :cond_27
    invoke-virtual {v13}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    .line 844
    .line 845
    .line 846
    move-result-object v15

    .line 847
    new-instance v3, Ljava/util/LinkedHashSet;

    .line 848
    .line 849
    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    .line 850
    .line 851
    .line 852
    invoke-static {v1, v6, v15, v3}, Lyh8;->g(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/LinkedHashSet;)Ljava/lang/reflect/Type;

    .line 853
    .line 854
    .line 855
    move-result-object v3

    .line 856
    invoke-interface {v13}, Ljava/lang/reflect/AnnotatedElement;->getAnnotations()[Ljava/lang/annotation/Annotation;

    .line 857
    .line 858
    .line 859
    move-result-object v15

    .line 860
    invoke-static {v15}, Lyh8;->e([Ljava/lang/annotation/Annotation;)Ljava/util/Set;

    .line 861
    .line 862
    .line 863
    move-result-object v15

    .line 864
    move-object/from16 v16, v7

    .line 865
    .line 866
    invoke-virtual {v13}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 867
    .line 868
    .line 869
    move-result-object v7

    .line 870
    invoke-virtual {v2, v3, v15, v7}, Lnh5;->b(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lqi4;

    .line 871
    .line 872
    .line 873
    move-result-object v3

    .line 874
    invoke-virtual {v13, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 875
    .line 876
    .line 877
    if-nez v14, :cond_28

    .line 878
    .line 879
    goto :goto_11

    .line 880
    :cond_28
    invoke-interface {v14}, Loi4;->name()Ljava/lang/String;

    .line 881
    .line 882
    .line 883
    move-result-object v14

    .line 884
    const-string v15, "\u0000"

    .line 885
    .line 886
    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 887
    .line 888
    .line 889
    move-result v15

    .line 890
    if-eqz v15, :cond_29

    .line 891
    .line 892
    goto :goto_11

    .line 893
    :cond_29
    move-object v7, v14

    .line 894
    :goto_11
    new-instance v14, Lj81;

    .line 895
    .line 896
    invoke-direct {v14, v7, v13, v3}, Lj81;-><init>(Ljava/lang/String;Ljava/lang/reflect/Field;Lqi4;)V

    .line 897
    .line 898
    .line 899
    invoke-virtual {v0, v7, v14}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 900
    .line 901
    .line 902
    move-result-object v3

    .line 903
    check-cast v3, Lj81;

    .line 904
    .line 905
    if-nez v3, :cond_2a

    .line 906
    .line 907
    goto :goto_13

    .line 908
    :cond_2a
    iget-object v0, v3, Lj81;->b:Ljava/lang/reflect/Field;

    .line 909
    .line 910
    const-string v1, "\n    "

    .line 911
    .line 912
    const-string v2, "Conflicting fields:\n    "

    .line 913
    .line 914
    invoke-static {v2, v0, v1, v13}, Ld6;->i(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 915
    .line 916
    .line 917
    :goto_12
    move-object/from16 v7, v16

    .line 918
    .line 919
    goto/16 :goto_17

    .line 920
    .line 921
    :goto_13
    add-int/lit8 v11, v11, 0x1

    .line 922
    .line 923
    move-object/from16 v7, v16

    .line 924
    .line 925
    const/4 v3, 0x0

    .line 926
    goto/16 :goto_f

    .line 927
    .line 928
    :cond_2b
    move-object/from16 v16, v7

    .line 929
    .line 930
    invoke-static {v1}, Lwx3;->l(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 931
    .line 932
    .line 933
    move-result-object v3

    .line 934
    invoke-virtual {v3}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    .line 935
    .line 936
    .line 937
    move-result-object v6

    .line 938
    new-instance v7, Ljava/util/LinkedHashSet;

    .line 939
    .line 940
    invoke-direct {v7}, Ljava/util/LinkedHashSet;-><init>()V

    .line 941
    .line 942
    .line 943
    invoke-static {v1, v3, v6, v7}, Lyh8;->g(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/LinkedHashSet;)Ljava/lang/reflect/Type;

    .line 944
    .line 945
    .line 946
    move-result-object v1

    .line 947
    move-object/from16 v7, v16

    .line 948
    .line 949
    const/4 v3, 0x0

    .line 950
    goto/16 :goto_e

    .line 951
    .line 952
    :cond_2c
    new-instance v1, Lk81;

    .line 953
    .line 954
    invoke-direct {v1, v12, v0}, Lk81;-><init>(Lbb9;Ljava/util/TreeMap;)V

    .line 955
    .line 956
    .line 957
    invoke-virtual {v1}, Lqi4;->c()Lpp5;

    .line 958
    .line 959
    .line 960
    move-result-object v7

    .line 961
    goto :goto_17

    .line 962
    :catch_e
    move-object/from16 v16, v7

    .line 963
    .line 964
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 965
    .line 966
    .line 967
    move-result-object v0

    .line 968
    const-string v1, "cannot construct instances of "

    .line 969
    .line 970
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 971
    .line 972
    .line 973
    move-result-object v0

    .line 974
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 975
    .line 976
    .line 977
    goto :goto_12

    .line 978
    :goto_14
    invoke-static {v0}, Lyh8;->h(Ljava/lang/reflect/InvocationTargetException;)V

    .line 979
    .line 980
    .line 981
    throw v16

    .line 982
    :goto_15
    invoke-static {}, Ld6;->n()V

    .line 983
    .line 984
    .line 985
    goto :goto_12

    .line 986
    :goto_16
    invoke-static {}, Ld6;->n()V

    .line 987
    .line 988
    .line 989
    goto :goto_12

    .line 990
    :cond_2d
    move-object/from16 v16, v7

    .line 991
    .line 992
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 993
    .line 994
    .line 995
    move-result-object v0

    .line 996
    const-string v1, "Cannot serialize abstract class "

    .line 997
    .line 998
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 999
    .line 1000
    .line 1001
    move-result-object v0

    .line 1002
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 1003
    .line 1004
    .line 1005
    goto :goto_17

    .line 1006
    :cond_2e
    move-object/from16 v16, v7

    .line 1007
    .line 1008
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1009
    .line 1010
    .line 1011
    move-result-object v0

    .line 1012
    const-string v1, "Cannot serialize local class "

    .line 1013
    .line 1014
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1015
    .line 1016
    .line 1017
    move-result-object v0

    .line 1018
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 1019
    .line 1020
    .line 1021
    goto :goto_17

    .line 1022
    :cond_2f
    move-object/from16 v16, v7

    .line 1023
    .line 1024
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1025
    .line 1026
    .line 1027
    move-result-object v0

    .line 1028
    const-string v1, "Cannot serialize anonymous class "

    .line 1029
    .line 1030
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1031
    .line 1032
    .line 1033
    move-result-object v0

    .line 1034
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 1035
    .line 1036
    .line 1037
    :goto_17
    return-object v7

    .line 1038
    nop

    .line 1039
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
