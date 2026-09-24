.class public final Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lxb8;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$RecordAdapter;,
        Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$FieldReflectionAdapter;,
        Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;
    }
.end annotation


# instance fields
.field public final a:Lvt1;

.field public final b:I

.field public final c:Lcom/google/gson/internal/Excluder;

.field public final d:Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

.field public final e:Ljava/util/List;


# direct methods
.method public constructor <init>(Lvt1;ILcom/google/gson/internal/Excluder;Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->a:Lvt1;

    .line 5
    .line 6
    iput p2, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->b:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->c:Lcom/google/gson/internal/Excluder;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->d:Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->e:Ljava/util/List;

    .line 13
    .line 14
    return-void
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "Class "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string p0, " declares multiple JSON fields named \'"

    .line 18
    .line 19
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string p0, "\'; conflict is caused by fields "

    .line 26
    .line 27
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-static {p2}, Lth6;->c(Ljava/lang/reflect/Field;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string p0, " and "

    .line 38
    .line 39
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-static {p3}, Lth6;->c(Ljava/lang/reflect/Field;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string p0, "\nSee "

    .line 50
    .line 51
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string p0, "duplicate-fields"

    .line 55
    .line 56
    const-string p1, "https://github.com/google/gson/blob/main/Troubleshooting.md#"

    .line 57
    .line 58
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw v0
.end method


# virtual methods
.method public final b(Lcom/google/gson/a;Lcom/google/gson/reflect/TypeToken;Ljava/lang/Class;Z)Lyh6;
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v7, p3

    .line 4
    .line 5
    invoke-virtual {v7}, Ljava/lang/Class;->isInterface()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    sget-object v0, Lyh6;->c:Lyh6;

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    new-instance v8, Ljava/util/LinkedHashMap;

    .line 15
    .line 16
    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    .line 17
    .line 18
    .line 19
    new-instance v9, Ljava/util/LinkedHashMap;

    .line 20
    .line 21
    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    .line 22
    .line 23
    .line 24
    move-object/from16 v10, p2

    .line 25
    .line 26
    move-object v11, v7

    .line 27
    :goto_0
    const-class v1, Ljava/lang/Object;

    .line 28
    .line 29
    if-eq v11, v1, :cond_16

    .line 30
    .line 31
    invoke-virtual {v11}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 32
    .line 33
    .line 34
    move-result-object v12

    .line 35
    if-eq v11, v7, :cond_1

    .line 36
    .line 37
    array-length v1, v12

    .line 38
    if-lez v1, :cond_1

    .line 39
    .line 40
    iget-object v1, v0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->e:Ljava/util/List;

    .line 41
    .line 42
    invoke-static {v1}, Ljd4;->q(Ljava/util/List;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    array-length v13, v12

    .line 46
    const/4 v14, 0x0

    .line 47
    move v15, v14

    .line 48
    :goto_1
    if-ge v15, v13, :cond_15

    .line 49
    .line 50
    aget-object v1, v12, v15

    .line 51
    .line 52
    const/4 v2, 0x1

    .line 53
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->c(Ljava/lang/reflect/Field;Z)Z

    .line 54
    .line 55
    .line 56
    move-result v24

    .line 57
    invoke-virtual {v0, v1, v14}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->c(Ljava/lang/reflect/Field;Z)Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-nez v24, :cond_2

    .line 62
    .line 63
    if-nez v3, :cond_2

    .line 64
    .line 65
    move-object/from16 v3, p1

    .line 66
    .line 67
    goto/16 :goto_f

    .line 68
    .line 69
    :cond_2
    const-class v4, Ly77;

    .line 70
    .line 71
    const/16 v25, 0x0

    .line 72
    .line 73
    if-eqz p4, :cond_6

    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    if-eqz v5, :cond_3

    .line 84
    .line 85
    move/from16 v26, v14

    .line 86
    .line 87
    :goto_2
    move-object/from16 v19, v25

    .line 88
    .line 89
    goto :goto_4

    .line 90
    :cond_3
    sget-object v5, Lth6;->a:Lpe4;

    .line 91
    .line 92
    invoke-virtual {v5, v11, v1}, Lpe4;->m(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    invoke-static {v5}, Lth6;->f(Ljava/lang/reflect/AccessibleObject;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v5, v4}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    if-eqz v6, :cond_5

    .line 104
    .line 105
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 106
    .line 107
    .line 108
    move-result-object v6

    .line 109
    if-eqz v6, :cond_4

    .line 110
    .line 111
    goto :goto_3

    .line 112
    :cond_4
    invoke-static {v5, v14}, Lth6;->d(Ljava/lang/reflect/AccessibleObject;Z)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    new-instance v1, Lik4;

    .line 117
    .line 118
    const-string v2, "@SerializedName on "

    .line 119
    .line 120
    const-string v3, " is not supported"

    .line 121
    .line 122
    invoke-static {v2, v0, v3}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    throw v1

    .line 130
    :cond_5
    :goto_3
    move/from16 v26, v3

    .line 131
    .line 132
    move-object/from16 v19, v5

    .line 133
    .line 134
    goto :goto_4

    .line 135
    :cond_6
    move/from16 v26, v3

    .line 136
    .line 137
    goto :goto_2

    .line 138
    :goto_4
    if-nez v19, :cond_7

    .line 139
    .line 140
    invoke-static {v1}, Lth6;->f(Ljava/lang/reflect/AccessibleObject;)V

    .line 141
    .line 142
    .line 143
    :cond_7
    invoke-virtual {v10}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    .line 148
    .line 149
    .line 150
    move-result-object v5

    .line 151
    new-instance v6, Ljava/util/HashMap;

    .line 152
    .line 153
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 154
    .line 155
    .line 156
    invoke-static {v3, v11, v5, v6}, Lx13;->P(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/HashMap;)Ljava/lang/reflect/Type;

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 161
    .line 162
    .line 163
    move-result-object v4

    .line 164
    check-cast v4, Ly77;

    .line 165
    .line 166
    if-nez v4, :cond_8

    .line 167
    .line 168
    const/16 v4, 0x5f

    .line 169
    .line 170
    iget v5, v0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->b:I

    .line 171
    .line 172
    packed-switch v5, :pswitch_data_0

    .line 173
    .line 174
    .line 175
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v4

    .line 179
    const/16 v5, 0x2e

    .line 180
    .line 181
    invoke-static {v4, v5}, Lxs1;->a(Ljava/lang/String;C)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v4

    .line 185
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 186
    .line 187
    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v4

    .line 191
    goto :goto_5

    .line 192
    :pswitch_0
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v4

    .line 196
    const/16 v5, 0x2d

    .line 197
    .line 198
    invoke-static {v4, v5}, Lxs1;->a(Ljava/lang/String;C)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v4

    .line 202
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 203
    .line 204
    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v4

    .line 208
    goto :goto_5

    .line 209
    :pswitch_1
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v5

    .line 213
    invoke-static {v5, v4}, Lxs1;->a(Ljava/lang/String;C)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v4

    .line 217
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 218
    .line 219
    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v4

    .line 223
    goto :goto_5

    .line 224
    :pswitch_2
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v5

    .line 228
    invoke-static {v5, v4}, Lxs1;->a(Ljava/lang/String;C)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v4

    .line 232
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 233
    .line 234
    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v4

    .line 238
    goto :goto_5

    .line 239
    :pswitch_3
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v4

    .line 243
    const/16 v5, 0x20

    .line 244
    .line 245
    invoke-static {v4, v5}, Lxs1;->a(Ljava/lang/String;C)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v4

    .line 249
    invoke-static {v4}, Lxs1;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v4

    .line 253
    goto :goto_5

    .line 254
    :pswitch_4
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v4

    .line 258
    invoke-static {v4}, Lxs1;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v4

    .line 262
    goto :goto_5

    .line 263
    :pswitch_5
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v4

    .line 267
    :goto_5
    sget-object v5, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 268
    .line 269
    goto :goto_6

    .line 270
    :cond_8
    invoke-interface {v4}, Ly77;->value()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v5

    .line 274
    invoke-interface {v4}, Ly77;->alternate()[Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v4

    .line 278
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 279
    .line 280
    .line 281
    move-result-object v4

    .line 282
    move-object/from16 v28, v5

    .line 283
    .line 284
    move-object v5, v4

    .line 285
    move-object/from16 v4, v28

    .line 286
    .line 287
    :goto_6
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 288
    .line 289
    .line 290
    move-result v6

    .line 291
    if-eqz v6, :cond_9

    .line 292
    .line 293
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 294
    .line 295
    .line 296
    move-result-object v4

    .line 297
    move/from16 p2, v2

    .line 298
    .line 299
    move-object v2, v4

    .line 300
    goto :goto_7

    .line 301
    :cond_9
    new-instance v6, Ljava/util/ArrayList;

    .line 302
    .line 303
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 304
    .line 305
    .line 306
    move-result v16

    .line 307
    move/from16 p2, v2

    .line 308
    .line 309
    add-int/lit8 v2, v16, 0x1

    .line 310
    .line 311
    invoke-direct {v6, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    .line 316
    .line 317
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 318
    .line 319
    .line 320
    move-object v2, v6

    .line 321
    :goto_7
    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    move-result-object v4

    .line 325
    move-object/from16 v17, v4

    .line 326
    .line 327
    check-cast v17, Ljava/lang/String;

    .line 328
    .line 329
    invoke-static {v3}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    .line 330
    .line 331
    .line 332
    move-result-object v4

    .line 333
    invoke-virtual {v4}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    .line 334
    .line 335
    .line 336
    move-result-object v3

    .line 337
    if-eqz v3, :cond_a

    .line 338
    .line 339
    invoke-virtual {v3}, Ljava/lang/Class;->isPrimitive()Z

    .line 340
    .line 341
    .line 342
    move-result v3

    .line 343
    if-eqz v3, :cond_a

    .line 344
    .line 345
    move/from16 v22, p2

    .line 346
    .line 347
    goto :goto_8

    .line 348
    :cond_a
    move/from16 v22, v14

    .line 349
    .line 350
    :goto_8
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 351
    .line 352
    .line 353
    move-result v3

    .line 354
    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 355
    .line 356
    .line 357
    move-result v5

    .line 358
    if-eqz v5, :cond_b

    .line 359
    .line 360
    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    .line 361
    .line 362
    .line 363
    move-result v3

    .line 364
    if-eqz v3, :cond_b

    .line 365
    .line 366
    move/from16 v23, p2

    .line 367
    .line 368
    goto :goto_9

    .line 369
    :cond_b
    move/from16 v23, v14

    .line 370
    .line 371
    :goto_9
    const-class v3, Lri4;

    .line 372
    .line 373
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 374
    .line 375
    .line 376
    move-result-object v3

    .line 377
    move-object v5, v3

    .line 378
    check-cast v5, Lri4;

    .line 379
    .line 380
    if-eqz v5, :cond_c

    .line 381
    .line 382
    move-object v6, v2

    .line 383
    iget-object v2, v0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->a:Lvt1;

    .line 384
    .line 385
    move-object v3, v6

    .line 386
    const/4 v6, 0x0

    .line 387
    move-object/from16 v18, v1

    .line 388
    .line 389
    iget-object v1, v0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->d:Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    .line 390
    .line 391
    move/from16 v16, p2

    .line 392
    .line 393
    move-object/from16 v27, v3

    .line 394
    .line 395
    move-object/from16 v3, p1

    .line 396
    .line 397
    invoke-virtual/range {v1 .. v6}, Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;->a(Lvt1;Lcom/google/gson/a;Lcom/google/gson/reflect/TypeToken;Lri4;Z)Lcom/google/gson/b;

    .line 398
    .line 399
    .line 400
    move-result-object v1

    .line 401
    goto :goto_a

    .line 402
    :cond_c
    move-object/from16 v3, p1

    .line 403
    .line 404
    move/from16 v16, p2

    .line 405
    .line 406
    move-object/from16 v18, v1

    .line 407
    .line 408
    move-object/from16 v27, v2

    .line 409
    .line 410
    move-object/from16 v1, v25

    .line 411
    .line 412
    :goto_a
    if-eqz v1, :cond_d

    .line 413
    .line 414
    move/from16 v2, v16

    .line 415
    .line 416
    goto :goto_b

    .line 417
    :cond_d
    move v2, v14

    .line 418
    :goto_b
    if-nez v1, :cond_e

    .line 419
    .line 420
    invoke-virtual {v3, v4}, Lcom/google/gson/a;->d(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/b;

    .line 421
    .line 422
    .line 423
    move-result-object v1

    .line 424
    :cond_e
    if-eqz v24, :cond_10

    .line 425
    .line 426
    if-eqz v2, :cond_f

    .line 427
    .line 428
    move-object v2, v1

    .line 429
    goto :goto_c

    .line 430
    :cond_f
    new-instance v2, Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;

    .line 431
    .line 432
    invoke-virtual {v4}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 433
    .line 434
    .line 435
    move-result-object v4

    .line 436
    invoke-direct {v2, v3, v1, v4}, Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;-><init>(Lcom/google/gson/a;Lcom/google/gson/b;Ljava/lang/reflect/Type;)V

    .line 437
    .line 438
    .line 439
    :goto_c
    move-object/from16 v20, v2

    .line 440
    .line 441
    goto :goto_d

    .line 442
    :cond_10
    move-object/from16 v20, v1

    .line 443
    .line 444
    :goto_d
    new-instance v16, Lxh6;

    .line 445
    .line 446
    move-object/from16 v21, v1

    .line 447
    .line 448
    invoke-direct/range {v16 .. v23}, Lxh6;-><init>(Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Lcom/google/gson/b;Lcom/google/gson/b;ZZ)V

    .line 449
    .line 450
    .line 451
    move-object/from16 v2, v16

    .line 452
    .line 453
    move-object/from16 v4, v17

    .line 454
    .line 455
    move-object/from16 v1, v18

    .line 456
    .line 457
    if-eqz v26, :cond_12

    .line 458
    .line 459
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 460
    .line 461
    .line 462
    move-result-object v5

    .line 463
    :goto_e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 464
    .line 465
    .line 466
    move-result v6

    .line 467
    if-eqz v6, :cond_12

    .line 468
    .line 469
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 470
    .line 471
    .line 472
    move-result-object v6

    .line 473
    check-cast v6, Ljava/lang/String;

    .line 474
    .line 475
    invoke-interface {v8, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    .line 477
    .line 478
    move-result-object v16

    .line 479
    move-object/from16 v14, v16

    .line 480
    .line 481
    check-cast v14, Lxh6;

    .line 482
    .line 483
    if-nez v14, :cond_11

    .line 484
    .line 485
    const/4 v14, 0x0

    .line 486
    goto :goto_e

    .line 487
    :cond_11
    iget-object v0, v14, Lxh6;->b:Ljava/lang/reflect/Field;

    .line 488
    .line 489
    invoke-static {v7, v6, v0, v1}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;)V

    .line 490
    .line 491
    .line 492
    throw v25

    .line 493
    :cond_12
    if-eqz v24, :cond_14

    .line 494
    .line 495
    invoke-interface {v9, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    .line 497
    .line 498
    move-result-object v2

    .line 499
    check-cast v2, Lxh6;

    .line 500
    .line 501
    if-nez v2, :cond_13

    .line 502
    .line 503
    goto :goto_f

    .line 504
    :cond_13
    iget-object v0, v2, Lxh6;->b:Ljava/lang/reflect/Field;

    .line 505
    .line 506
    invoke-static {v7, v4, v0, v1}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;)V

    .line 507
    .line 508
    .line 509
    throw v25

    .line 510
    :cond_14
    :goto_f
    add-int/lit8 v15, v15, 0x1

    .line 511
    .line 512
    const/4 v14, 0x0

    .line 513
    goto/16 :goto_1

    .line 514
    .line 515
    :cond_15
    move-object/from16 v3, p1

    .line 516
    .line 517
    invoke-virtual {v10}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 518
    .line 519
    .line 520
    move-result-object v1

    .line 521
    invoke-virtual {v11}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    .line 522
    .line 523
    .line 524
    move-result-object v2

    .line 525
    new-instance v4, Ljava/util/HashMap;

    .line 526
    .line 527
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 528
    .line 529
    .line 530
    invoke-static {v1, v11, v2, v4}, Lx13;->P(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/HashMap;)Ljava/lang/reflect/Type;

    .line 531
    .line 532
    .line 533
    move-result-object v1

    .line 534
    invoke-static {v1}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    .line 535
    .line 536
    .line 537
    move-result-object v10

    .line 538
    invoke-virtual {v10}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    .line 539
    .line 540
    .line 541
    move-result-object v11

    .line 542
    goto/16 :goto_0

    .line 543
    .line 544
    :cond_16
    new-instance v0, Lyh6;

    .line 545
    .line 546
    new-instance v1, Ljava/util/ArrayList;

    .line 547
    .line 548
    invoke-virtual {v9}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 549
    .line 550
    .line 551
    move-result-object v2

    .line 552
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 553
    .line 554
    .line 555
    invoke-direct {v0, v8, v1}, Lyh6;-><init>(Ljava/util/Map;Ljava/util/List;)V

    .line 556
    .line 557
    .line 558
    return-object v0

    .line 559
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Ljava/lang/reflect/Field;Z)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->c:Lcom/google/gson/internal/Excluder;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/16 v0, 0x88

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    and-int/2addr v0, v1

    .line 13
    const/4 v1, 0x1

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    :cond_0
    :goto_0
    move p0, v1

    .line 17
    goto :goto_3

    .line 18
    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->isSynthetic()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_2
    iget-boolean v0, p0, Lcom/google/gson/internal/Excluder;->a:Z

    .line 26
    .line 27
    if-eqz v0, :cond_4

    .line 28
    .line 29
    const-class v0, Lq03;

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lq03;

    .line 36
    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    if-eqz p2, :cond_3

    .line 40
    .line 41
    invoke-interface {v0}, Lq03;->serialize()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_4

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_3
    invoke-interface {v0}, Lq03;->deserialize()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-nez v0, :cond_4

    .line 53
    .line 54
    :goto_1
    goto :goto_0

    .line 55
    :cond_4
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {p0, v0, p2}, Lcom/google/gson/internal/Excluder;->b(Ljava/lang/Class;Z)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_5

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_5
    if-eqz p2, :cond_6

    .line 67
    .line 68
    iget-object p0, p0, Lcom/google/gson/internal/Excluder;->b:Ljava/util/List;

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_6
    iget-object p0, p0, Lcom/google/gson/internal/Excluder;->c:Ljava/util/List;

    .line 72
    .line 73
    :goto_2
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    if-nez p2, :cond_8

    .line 78
    .line 79
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    :cond_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 84
    .line 85
    .line 86
    move-result p2

    .line 87
    if-eqz p2, :cond_8

    .line 88
    .line 89
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    check-cast p2, Lv14;

    .line 94
    .line 95
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    const-class p2, Lx14;

    .line 99
    .line 100
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    check-cast p2, Lx14;

    .line 105
    .line 106
    if-eqz p2, :cond_7

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_8
    const/4 p0, 0x0

    .line 110
    :goto_3
    xor-int/2addr p0, v1

    .line 111
    return p0
.end method

.method public final create(Lcom/google/gson/a;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/b;
    .locals 4

    .line 1
    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Ljava/lang/Object;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    return-object p0

    .line 15
    :cond_0
    sget-object v1, Lth6;->a:Lpe4;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_2

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Class;->isAnonymousClass()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_1

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Class;->isLocalClass()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    :cond_1
    new-instance p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;

    .line 40
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    .line 43
    .line 44
    return-object p0

    .line 45
    :cond_2
    iget-object v1, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->e:Ljava/util/List;

    .line 46
    .line 47
    invoke-static {v1}, Ljd4;->q(Ljava/util/List;)V

    .line 48
    .line 49
    .line 50
    sget-object v1, Lth6;->a:Lpe4;

    .line 51
    .line 52
    invoke-virtual {v1, v0}, Lpe4;->u(Ljava/lang/Class;)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    const/4 v2, 0x1

    .line 57
    if-eqz v1, :cond_3

    .line 58
    .line 59
    new-instance v1, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$RecordAdapter;

    .line 60
    .line 61
    invoke-virtual {p0, p1, p2, v0, v2}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->b(Lcom/google/gson/a;Lcom/google/gson/reflect/TypeToken;Ljava/lang/Class;Z)Lyh6;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-direct {v1, v0, p0}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$RecordAdapter;-><init>(Ljava/lang/Class;Lyh6;)V

    .line 66
    .line 67
    .line 68
    return-object v1

    .line 69
    :cond_3
    iget-object v1, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->a:Lvt1;

    .line 70
    .line 71
    invoke-virtual {v1, p2, v2}, Lvt1;->b(Lcom/google/gson/reflect/TypeToken;Z)Ler5;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    new-instance v2, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$FieldReflectionAdapter;

    .line 76
    .line 77
    const/4 v3, 0x0

    .line 78
    invoke-virtual {p0, p1, p2, v0, v3}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->b(Lcom/google/gson/a;Lcom/google/gson/reflect/TypeToken;Ljava/lang/Class;Z)Lyh6;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-direct {v2, v1, p0}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$FieldReflectionAdapter;-><init>(Ler5;Lyh6;)V

    .line 83
    .line 84
    .line 85
    return-object v2
.end method
