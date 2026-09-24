.class public final Lhd;
.super Ljb9;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqc8;


# static fields
.field public static final a0:Lgd;


# instance fields
.field public final M:Lgc8;

.field public final N:Ljava/lang/Class;

.field public final O:Ljc8;

.field public final P:Ljava/util/List;

.field public final Q:Las5;

.field public final R:Llc8;

.field public final S:Lh81;

.field public final T:Ljava/lang/Class;

.field public final U:Z

.field public final V:Lee;

.field public W:Lgd;

.field public X:Lsd;

.field public Y:Ljava/util/List;

.field public transient Z:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lgd;

    .line 2
    .line 3
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-direct {v0, v2, v3, v1, v1}, Lgd;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lhd;->a0:Lgd;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Lgc8;Ljava/lang/Class;Ljava/util/List;Ljava/lang/Class;Lee;Ljc8;Las5;Lh81;Llc8;Z)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lhd;->M:Lgc8;

    .line 35
    iput-object p2, p0, Lhd;->N:Ljava/lang/Class;

    .line 36
    iput-object p3, p0, Lhd;->P:Ljava/util/List;

    .line 37
    iput-object p4, p0, Lhd;->T:Ljava/lang/Class;

    .line 38
    iput-object p5, p0, Lhd;->V:Lee;

    .line 39
    iput-object p6, p0, Lhd;->O:Ljc8;

    .line 40
    iput-object p7, p0, Lhd;->Q:Las5;

    .line 41
    iput-object p8, p0, Lhd;->S:Lh81;

    .line 42
    iput-object p9, p0, Lhd;->R:Llc8;

    .line 43
    iput-boolean p10, p0, Lhd;->U:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lhd;->M:Lgc8;

    .line 6
    .line 7
    iput-object p1, p0, Lhd;->N:Ljava/lang/Class;

    .line 8
    .line 9
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 10
    .line 11
    iput-object p1, p0, Lhd;->P:Ljava/util/List;

    .line 12
    .line 13
    iput-object v0, p0, Lhd;->T:Ljava/lang/Class;

    .line 14
    .line 15
    sget-object p1, Lcy0;->a:Lxd;

    .line 16
    .line 17
    iput-object p1, p0, Lhd;->V:Lee;

    .line 18
    .line 19
    sget-object p1, Ljc8;->k:Ljc8;

    .line 20
    .line 21
    iput-object p1, p0, Lhd;->O:Ljc8;

    .line 22
    .line 23
    iput-object v0, p0, Lhd;->Q:Las5;

    .line 24
    .line 25
    iput-object v0, p0, Lhd;->S:Lh81;

    .line 26
    .line 27
    iput-object v0, p0, Lhd;->R:Llc8;

    .line 28
    .line 29
    const/4 p1, 0x0

    .line 30
    iput-boolean p1, p0, Lhd;->U:Z

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final A()I
    .locals 0

    .line 1
    iget-object p0, p0, Lhd;->N:Ljava/lang/Class;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final B()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lhd;->N:Ljava/lang/Class;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final C()Ljava/lang/Class;
    .locals 0

    .line 1
    iget-object p0, p0, Lhd;->N:Ljava/lang/Class;

    .line 2
    .line 3
    return-object p0
.end method

.method public final D()Lgc8;
    .locals 0

    .line 1
    iget-object p0, p0, Lhd;->M:Lgc8;

    .line 2
    .line 3
    return-object p0
.end method

.method public final c(Ljava/lang/reflect/Type;)Lgc8;
    .locals 2

    .line 1
    iget-object v0, p0, Lhd;->O:Ljc8;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object p0, p0, Lhd;->R:Llc8;

    .line 5
    .line 6
    invoke-virtual {p0, v1, p1, v0}, Llc8;->b(Lvq;Ljava/lang/reflect/Type;Ljc8;)Lgc8;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const-class v1, Lhd;

    .line 6
    .line 7
    invoke-static {v1, p1}, Lu81;->n(Ljava/lang/Class;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    return v2

    .line 15
    :cond_1
    check-cast p1, Lhd;

    .line 16
    .line 17
    iget-object p1, p1, Lhd;->N:Ljava/lang/Class;

    .line 18
    .line 19
    iget-object p0, p0, Lhd;->N:Ljava/lang/Class;

    .line 20
    .line 21
    if-ne p1, p0, :cond_2

    .line 22
    .line 23
    return v0

    .line 24
    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lhd;->N:Ljava/lang/Class;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final p0()Lgd;
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lhd;->W:Lgd;

    .line 4
    .line 5
    if-nez v1, :cond_40

    .line 6
    .line 7
    iget-object v1, v0, Lhd;->M:Lgc8;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    sget-object v1, Lhd;->a0:Lgd;

    .line 12
    .line 13
    goto/16 :goto_2b

    .line 14
    .line 15
    :cond_0
    iget-object v4, v0, Lhd;->T:Ljava/lang/Class;

    .line 16
    .line 17
    if-eqz v4, :cond_1

    .line 18
    .line 19
    const/4 v5, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 v5, 0x0

    .line 22
    :goto_0
    iget-boolean v6, v0, Lhd;->U:Z

    .line 23
    .line 24
    or-int/2addr v5, v6

    .line 25
    new-instance v6, Lkd;

    .line 26
    .line 27
    iget-object v7, v0, Lhd;->Q:Las5;

    .line 28
    .line 29
    invoke-direct {v6, v7, v0, v5}, Lkd;-><init>(Las5;Lhd;Z)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Lgc8;->y0()Z

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    iget-object v8, v1, Lgc8;->f:Ljava/lang/Class;

    .line 37
    .line 38
    const/4 v9, 0x0

    .line 39
    if-nez v5, :cond_6

    .line 40
    .line 41
    invoke-static {v8}, Lu81;->k(Ljava/lang/Class;)[Ls81;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    array-length v10, v5

    .line 46
    move-object v12, v9

    .line 47
    move-object v13, v12

    .line 48
    const/4 v11, 0x0

    .line 49
    :goto_1
    if-ge v11, v10, :cond_7

    .line 50
    .line 51
    aget-object v14, v5, v11

    .line 52
    .line 53
    iget-object v15, v14, Ls81;->a:Ljava/lang/reflect/Constructor;

    .line 54
    .line 55
    invoke-virtual {v15}, Ljava/lang/reflect/Constructor;->isSynthetic()Z

    .line 56
    .line 57
    .line 58
    move-result v15

    .line 59
    if-eqz v15, :cond_2

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_2
    iget v15, v14, Ls81;->d:I

    .line 63
    .line 64
    if-gez v15, :cond_3

    .line 65
    .line 66
    iget-object v15, v14, Ls81;->a:Ljava/lang/reflect/Constructor;

    .line 67
    .line 68
    invoke-virtual {v15}, Ljava/lang/reflect/Constructor;->getParameterCount()I

    .line 69
    .line 70
    .line 71
    move-result v15

    .line 72
    iput v15, v14, Ls81;->d:I

    .line 73
    .line 74
    :cond_3
    if-nez v15, :cond_4

    .line 75
    .line 76
    move-object v12, v14

    .line 77
    goto :goto_2

    .line 78
    :cond_4
    if-nez v13, :cond_5

    .line 79
    .line 80
    new-instance v13, Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .line 84
    .line 85
    :cond_5
    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    :goto_2
    add-int/lit8 v11, v11, 0x1

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_6
    move-object v12, v9

    .line 92
    move-object v13, v12

    .line 93
    :cond_7
    iget-object v5, v6, Lkd;->e:Lhd;

    .line 94
    .line 95
    if-nez v13, :cond_9

    .line 96
    .line 97
    sget-object v10, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 98
    .line 99
    if-nez v12, :cond_8

    .line 100
    .line 101
    move-object/from16 v18, v1

    .line 102
    .line 103
    const/16 v16, 0x1

    .line 104
    .line 105
    goto/16 :goto_d

    .line 106
    .line 107
    :cond_8
    const/4 v11, 0x0

    .line 108
    goto :goto_4

    .line 109
    :cond_9
    invoke-interface {v13}, Ljava/util/List;->size()I

    .line 110
    .line 111
    .line 112
    move-result v10

    .line 113
    new-instance v11, Ljava/util/ArrayList;

    .line 114
    .line 115
    invoke-direct {v11, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 116
    .line 117
    .line 118
    const/4 v14, 0x0

    .line 119
    :goto_3
    if-ge v14, v10, :cond_a

    .line 120
    .line 121
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    add-int/lit8 v14, v14, 0x1

    .line 125
    .line 126
    goto :goto_3

    .line 127
    :cond_a
    move-object/from16 v24, v11

    .line 128
    .line 129
    move v11, v10

    .line 130
    move-object/from16 v10, v24

    .line 131
    .line 132
    :goto_4
    sget-object v14, Lol1;->c:[Ls79;

    .line 133
    .line 134
    if-eqz v4, :cond_12

    .line 135
    .line 136
    invoke-static {v4}, Lu81;->k(Ljava/lang/Class;)[Ls81;

    .line 137
    .line 138
    .line 139
    move-result-object v15

    .line 140
    const/16 v16, 0x1

    .line 141
    .line 142
    array-length v2, v15

    .line 143
    move-object/from16 v17, v9

    .line 144
    .line 145
    const/4 v3, 0x0

    .line 146
    :goto_5
    if-ge v3, v2, :cond_11

    .line 147
    .line 148
    aget-object v9, v15, v3

    .line 149
    .line 150
    move-object/from16 v18, v1

    .line 151
    .line 152
    iget v1, v9, Ls81;->d:I

    .line 153
    .line 154
    move/from16 v19, v1

    .line 155
    .line 156
    iget-object v1, v9, Ls81;->a:Ljava/lang/reflect/Constructor;

    .line 157
    .line 158
    if-gez v19, :cond_b

    .line 159
    .line 160
    move/from16 v20, v2

    .line 161
    .line 162
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterCount()I

    .line 163
    .line 164
    .line 165
    move-result v2

    .line 166
    iput v2, v9, Ls81;->d:I

    .line 167
    .line 168
    goto :goto_6

    .line 169
    :cond_b
    move/from16 v20, v2

    .line 170
    .line 171
    move/from16 v2, v19

    .line 172
    .line 173
    :goto_6
    if-nez v2, :cond_d

    .line 174
    .line 175
    if-eqz v12, :cond_c

    .line 176
    .line 177
    new-instance v1, Ljd;

    .line 178
    .line 179
    iget-object v2, v12, Ls81;->a:Ljava/lang/reflect/Constructor;

    .line 180
    .line 181
    invoke-virtual {v6, v12, v9}, Lkd;->H(Ls81;Ls81;)Ls79;

    .line 182
    .line 183
    .line 184
    move-result-object v9

    .line 185
    invoke-direct {v1, v5, v2, v9, v14}, Ljd;-><init>(Lqc8;Ljava/lang/reflect/Constructor;Ls79;[Ls79;)V

    .line 186
    .line 187
    .line 188
    iput-object v1, v6, Lkd;->k:Ljd;

    .line 189
    .line 190
    move/from16 v19, v3

    .line 191
    .line 192
    const/4 v12, 0x0

    .line 193
    goto :goto_9

    .line 194
    :cond_c
    move/from16 v19, v3

    .line 195
    .line 196
    goto :goto_9

    .line 197
    :cond_d
    if-eqz v13, :cond_c

    .line 198
    .line 199
    if-nez v17, :cond_e

    .line 200
    .line 201
    new-array v2, v11, [Lwb5;

    .line 202
    .line 203
    move-object/from16 v17, v2

    .line 204
    .line 205
    const/4 v2, 0x0

    .line 206
    :goto_7
    if-ge v2, v11, :cond_e

    .line 207
    .line 208
    move/from16 v19, v3

    .line 209
    .line 210
    new-instance v3, Lwb5;

    .line 211
    .line 212
    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v21

    .line 216
    move/from16 v22, v2

    .line 217
    .line 218
    move-object/from16 v2, v21

    .line 219
    .line 220
    check-cast v2, Ls81;

    .line 221
    .line 222
    iget-object v2, v2, Ls81;->a:Ljava/lang/reflect/Constructor;

    .line 223
    .line 224
    invoke-direct {v3, v2}, Lwb5;-><init>(Ljava/lang/reflect/Constructor;)V

    .line 225
    .line 226
    .line 227
    aput-object v3, v17, v22

    .line 228
    .line 229
    add-int/lit8 v2, v22, 0x1

    .line 230
    .line 231
    move/from16 v3, v19

    .line 232
    .line 233
    goto :goto_7

    .line 234
    :cond_e
    move/from16 v19, v3

    .line 235
    .line 236
    new-instance v2, Lwb5;

    .line 237
    .line 238
    invoke-direct {v2, v1}, Lwb5;-><init>(Ljava/lang/reflect/Constructor;)V

    .line 239
    .line 240
    .line 241
    const/4 v1, 0x0

    .line 242
    :goto_8
    if-ge v1, v11, :cond_10

    .line 243
    .line 244
    aget-object v3, v17, v1

    .line 245
    .line 246
    invoke-virtual {v2, v3}, Lwb5;->equals(Ljava/lang/Object;)Z

    .line 247
    .line 248
    .line 249
    move-result v3

    .line 250
    if-eqz v3, :cond_f

    .line 251
    .line 252
    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v2

    .line 256
    check-cast v2, Ls81;

    .line 257
    .line 258
    invoke-virtual {v6, v2, v9}, Lkd;->K(Ls81;Ls81;)Ljd;

    .line 259
    .line 260
    .line 261
    move-result-object v2

    .line 262
    invoke-interface {v10, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    goto :goto_9

    .line 266
    :cond_f
    add-int/lit8 v1, v1, 0x1

    .line 267
    .line 268
    goto :goto_8

    .line 269
    :cond_10
    :goto_9
    add-int/lit8 v3, v19, 0x1

    .line 270
    .line 271
    move-object/from16 v1, v18

    .line 272
    .line 273
    move/from16 v2, v20

    .line 274
    .line 275
    const/4 v9, 0x0

    .line 276
    goto/16 :goto_5

    .line 277
    .line 278
    :cond_11
    :goto_a
    move-object/from16 v18, v1

    .line 279
    .line 280
    goto :goto_b

    .line 281
    :cond_12
    const/16 v16, 0x1

    .line 282
    .line 283
    goto :goto_a

    .line 284
    :goto_b
    if-eqz v12, :cond_13

    .line 285
    .line 286
    new-instance v1, Ljd;

    .line 287
    .line 288
    iget-object v2, v12, Ls81;->a:Ljava/lang/reflect/Constructor;

    .line 289
    .line 290
    const/4 v3, 0x0

    .line 291
    invoke-virtual {v6, v12, v3}, Lkd;->H(Ls81;Ls81;)Ls79;

    .line 292
    .line 293
    .line 294
    move-result-object v9

    .line 295
    invoke-direct {v1, v5, v2, v9, v14}, Ljd;-><init>(Lqc8;Ljava/lang/reflect/Constructor;Ls79;[Ls79;)V

    .line 296
    .line 297
    .line 298
    iput-object v1, v6, Lkd;->k:Ljd;

    .line 299
    .line 300
    :cond_13
    const/4 v1, 0x0

    .line 301
    :goto_c
    if-ge v1, v11, :cond_15

    .line 302
    .line 303
    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v2

    .line 307
    check-cast v2, Ljd;

    .line 308
    .line 309
    if-nez v2, :cond_14

    .line 310
    .line 311
    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object v2

    .line 315
    check-cast v2, Ls81;

    .line 316
    .line 317
    const/4 v3, 0x0

    .line 318
    invoke-virtual {v6, v2, v3}, Lkd;->K(Ls81;Ls81;)Ljd;

    .line 319
    .line 320
    .line 321
    move-result-object v2

    .line 322
    invoke-interface {v10, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    :cond_14
    add-int/lit8 v1, v1, 0x1

    .line 326
    .line 327
    goto :goto_c

    .line 328
    :cond_15
    :goto_d
    invoke-static {v8}, Lu81;->j(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    .line 329
    .line 330
    .line 331
    move-result-object v1

    .line 332
    array-length v2, v1

    .line 333
    const/4 v3, 0x0

    .line 334
    const/4 v9, 0x0

    .line 335
    :goto_e
    if-ge v9, v2, :cond_19

    .line 336
    .line 337
    aget-object v11, v1, v9

    .line 338
    .line 339
    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getModifiers()I

    .line 340
    .line 341
    .line 342
    move-result v12

    .line 343
    invoke-static {v12}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 344
    .line 345
    .line 346
    move-result v12

    .line 347
    if-nez v12, :cond_16

    .line 348
    .line 349
    const/4 v12, 0x0

    .line 350
    goto :goto_f

    .line 351
    :cond_16
    invoke-virtual {v11}, Ljava/lang/reflect/Method;->isSynthetic()Z

    .line 352
    .line 353
    .line 354
    move-result v12

    .line 355
    xor-int/lit8 v12, v12, 0x1

    .line 356
    .line 357
    :goto_f
    if-nez v12, :cond_17

    .line 358
    .line 359
    goto :goto_10

    .line 360
    :cond_17
    if-nez v3, :cond_18

    .line 361
    .line 362
    new-instance v3, Ljava/util/ArrayList;

    .line 363
    .line 364
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 365
    .line 366
    .line 367
    :cond_18
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 368
    .line 369
    .line 370
    :goto_10
    add-int/lit8 v9, v9, 0x1

    .line 371
    .line 372
    goto :goto_e

    .line 373
    :cond_19
    if-nez v3, :cond_1a

    .line 374
    .line 375
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 376
    .line 377
    goto/16 :goto_28

    .line 378
    .line 379
    :cond_1a
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 380
    .line 381
    .line 382
    move-result v2

    .line 383
    new-instance v9, Ljava/util/ArrayList;

    .line 384
    .line 385
    invoke-direct {v9, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 386
    .line 387
    .line 388
    const/4 v11, 0x0

    .line 389
    :goto_11
    if-ge v11, v2, :cond_1b

    .line 390
    .line 391
    const/4 v12, 0x0

    .line 392
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    .line 394
    .line 395
    add-int/lit8 v11, v11, 0x1

    .line 396
    .line 397
    goto :goto_11

    .line 398
    :cond_1b
    if-eqz v4, :cond_21

    .line 399
    .line 400
    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    .line 401
    .line 402
    .line 403
    move-result-object v4

    .line 404
    array-length v11, v4

    .line 405
    const/4 v12, 0x0

    .line 406
    const/4 v13, 0x0

    .line 407
    :goto_12
    if-ge v13, v11, :cond_21

    .line 408
    .line 409
    aget-object v14, v4, v13

    .line 410
    .line 411
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getModifiers()I

    .line 412
    .line 413
    .line 414
    move-result v15

    .line 415
    invoke-static {v15}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 416
    .line 417
    .line 418
    move-result v15

    .line 419
    if-nez v15, :cond_1c

    .line 420
    .line 421
    const/4 v15, 0x0

    .line 422
    goto :goto_13

    .line 423
    :cond_1c
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->isSynthetic()Z

    .line 424
    .line 425
    .line 426
    move-result v15

    .line 427
    xor-int/lit8 v15, v15, 0x1

    .line 428
    .line 429
    :goto_13
    if-nez v15, :cond_1d

    .line 430
    .line 431
    move-object/from16 v20, v4

    .line 432
    .line 433
    goto :goto_16

    .line 434
    :cond_1d
    if-nez v12, :cond_1e

    .line 435
    .line 436
    new-array v12, v2, [Lwb5;

    .line 437
    .line 438
    const/4 v15, 0x0

    .line 439
    :goto_14
    if-ge v15, v2, :cond_1e

    .line 440
    .line 441
    new-instance v1, Lwb5;

    .line 442
    .line 443
    invoke-interface {v3, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 444
    .line 445
    .line 446
    move-result-object v19

    .line 447
    move-object/from16 v20, v4

    .line 448
    .line 449
    move-object/from16 v4, v19

    .line 450
    .line 451
    check-cast v4, Ljava/lang/reflect/Method;

    .line 452
    .line 453
    invoke-direct {v1, v4}, Lwb5;-><init>(Ljava/lang/reflect/Method;)V

    .line 454
    .line 455
    .line 456
    aput-object v1, v12, v15

    .line 457
    .line 458
    add-int/lit8 v15, v15, 0x1

    .line 459
    .line 460
    move-object/from16 v4, v20

    .line 461
    .line 462
    goto :goto_14

    .line 463
    :cond_1e
    move-object/from16 v20, v4

    .line 464
    .line 465
    new-instance v1, Lwb5;

    .line 466
    .line 467
    invoke-direct {v1, v14}, Lwb5;-><init>(Ljava/lang/reflect/Method;)V

    .line 468
    .line 469
    .line 470
    const/4 v4, 0x0

    .line 471
    :goto_15
    if-ge v4, v2, :cond_20

    .line 472
    .line 473
    aget-object v15, v12, v4

    .line 474
    .line 475
    invoke-virtual {v1, v15}, Lwb5;->equals(Ljava/lang/Object;)Z

    .line 476
    .line 477
    .line 478
    move-result v15

    .line 479
    if-eqz v15, :cond_1f

    .line 480
    .line 481
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 482
    .line 483
    .line 484
    move-result-object v1

    .line 485
    check-cast v1, Ljava/lang/reflect/Method;

    .line 486
    .line 487
    invoke-virtual {v6, v1, v5, v14}, Lkd;->J(Ljava/lang/reflect/Method;Lqc8;Ljava/lang/reflect/Method;)Lpd;

    .line 488
    .line 489
    .line 490
    move-result-object v1

    .line 491
    invoke-virtual {v9, v4, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 492
    .line 493
    .line 494
    goto :goto_16

    .line 495
    :cond_1f
    add-int/lit8 v4, v4, 0x1

    .line 496
    .line 497
    goto :goto_15

    .line 498
    :cond_20
    :goto_16
    add-int/lit8 v13, v13, 0x1

    .line 499
    .line 500
    move-object/from16 v4, v20

    .line 501
    .line 502
    goto :goto_12

    .line 503
    :cond_21
    const/4 v1, 0x0

    .line 504
    :goto_17
    if-ge v1, v2, :cond_3a

    .line 505
    .line 506
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 507
    .line 508
    .line 509
    move-result-object v4

    .line 510
    check-cast v4, Lpd;

    .line 511
    .line 512
    if-nez v4, :cond_39

    .line 513
    .line 514
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 515
    .line 516
    .line 517
    move-result-object v4

    .line 518
    check-cast v4, Ljava/lang/reflect/Method;

    .line 519
    .line 520
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    .line 521
    .line 522
    .line 523
    move-result-object v11

    .line 524
    array-length v12, v11

    .line 525
    if-eqz v12, :cond_22

    .line 526
    .line 527
    invoke-virtual/range {v18 .. v18}, Lgc8;->n0()Ljc8;

    .line 528
    .line 529
    .line 530
    move-result-object v12

    .line 531
    invoke-virtual {v12}, Ljc8;->f()Z

    .line 532
    .line 533
    .line 534
    move-result v12

    .line 535
    if-eqz v12, :cond_23

    .line 536
    .line 537
    :cond_22
    move/from16 v16, v2

    .line 538
    .line 539
    goto :goto_19

    .line 540
    :cond_23
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    .line 541
    .line 542
    .line 543
    move-result-object v12

    .line 544
    instance-of v13, v12, Ljava/lang/reflect/ParameterizedType;

    .line 545
    .line 546
    if-nez v13, :cond_24

    .line 547
    .line 548
    :goto_18
    move/from16 v16, v2

    .line 549
    .line 550
    :goto_19
    move-object/from16 v19, v3

    .line 551
    .line 552
    move-object/from16 v20, v8

    .line 553
    .line 554
    :goto_1a
    const/4 v2, 0x0

    .line 555
    goto/16 :goto_24

    .line 556
    .line 557
    :cond_24
    check-cast v12, Ljava/lang/reflect/ParameterizedType;

    .line 558
    .line 559
    invoke-interface {v12}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    .line 560
    .line 561
    .line 562
    move-result-object v13

    .line 563
    invoke-virtual {v8, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 564
    .line 565
    .line 566
    move-result v13

    .line 567
    if-nez v13, :cond_25

    .line 568
    .line 569
    goto :goto_18

    .line 570
    :cond_25
    invoke-interface {v12}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 571
    .line 572
    .line 573
    move-result-object v12

    .line 574
    new-instance v13, Ljava/util/ArrayList;

    .line 575
    .line 576
    array-length v14, v11

    .line 577
    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 578
    .line 579
    .line 580
    new-instance v14, Ljava/util/ArrayList;

    .line 581
    .line 582
    array-length v15, v11

    .line 583
    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 584
    .line 585
    .line 586
    move/from16 v16, v2

    .line 587
    .line 588
    const/4 v15, 0x0

    .line 589
    :goto_1b
    array-length v2, v12

    .line 590
    if-ge v15, v2, :cond_34

    .line 591
    .line 592
    aget-object v2, v12, v15

    .line 593
    .line 594
    invoke-static {v2}, Lho6;->F(Ljava/lang/reflect/Type;)Ljava/lang/reflect/TypeVariable;

    .line 595
    .line 596
    .line 597
    move-result-object v2

    .line 598
    if-eqz v2, :cond_32

    .line 599
    .line 600
    invoke-interface {v2}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    .line 601
    .line 602
    .line 603
    move-result-object v2

    .line 604
    if-nez v2, :cond_26

    .line 605
    .line 606
    goto :goto_19

    .line 607
    :cond_26
    move-object/from16 v19, v3

    .line 608
    .line 609
    invoke-virtual/range {v18 .. v18}, Lgc8;->n0()Ljc8;

    .line 610
    .line 611
    .line 612
    move-result-object v3

    .line 613
    if-ltz v15, :cond_28

    .line 614
    .line 615
    iget-object v3, v3, Ljc8;->b:[Lgc8;

    .line 616
    .line 617
    move-object/from16 v20, v8

    .line 618
    .line 619
    array-length v8, v3

    .line 620
    if-lt v15, v8, :cond_27

    .line 621
    .line 622
    goto :goto_1c

    .line 623
    :cond_27
    aget-object v3, v3, v15

    .line 624
    .line 625
    goto :goto_1d

    .line 626
    :cond_28
    move-object/from16 v20, v8

    .line 627
    .line 628
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 629
    .line 630
    .line 631
    :goto_1c
    const/4 v3, 0x0

    .line 632
    :goto_1d
    if-nez v3, :cond_29

    .line 633
    .line 634
    :goto_1e
    goto :goto_1a

    .line 635
    :cond_29
    array-length v8, v11

    .line 636
    move-object/from16 v21, v11

    .line 637
    .line 638
    const/4 v11, 0x0

    .line 639
    :goto_1f
    if-ge v11, v8, :cond_2b

    .line 640
    .line 641
    aget-object v22, v21, v11

    .line 642
    .line 643
    move/from16 v23, v8

    .line 644
    .line 645
    invoke-interface/range {v22 .. v22}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    .line 646
    .line 647
    .line 648
    move-result-object v8

    .line 649
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 650
    .line 651
    .line 652
    move-result v8

    .line 653
    if-eqz v8, :cond_2a

    .line 654
    .line 655
    goto :goto_20

    .line 656
    :cond_2a
    add-int/lit8 v11, v11, 0x1

    .line 657
    .line 658
    move/from16 v8, v23

    .line 659
    .line 660
    goto :goto_1f

    .line 661
    :cond_2b
    const/16 v22, 0x0

    .line 662
    .line 663
    :goto_20
    if-nez v22, :cond_2c

    .line 664
    .line 665
    goto :goto_1e

    .line 666
    :cond_2c
    invoke-interface/range {v22 .. v22}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    .line 667
    .line 668
    .line 669
    move-result-object v8

    .line 670
    array-length v11, v8

    .line 671
    move-object/from16 v22, v8

    .line 672
    .line 673
    const/4 v8, 0x0

    .line 674
    :goto_21
    if-ge v8, v11, :cond_2e

    .line 675
    .line 676
    move/from16 v23, v8

    .line 677
    .line 678
    aget-object v8, v22, v23

    .line 679
    .line 680
    invoke-static {v5, v3, v8}, Lho6;->H(Lhd;Lgc8;Ljava/lang/reflect/Type;)Z

    .line 681
    .line 682
    .line 683
    move-result v8

    .line 684
    if-nez v8, :cond_2d

    .line 685
    .line 686
    goto :goto_22

    .line 687
    :cond_2d
    add-int/lit8 v8, v23, 0x1

    .line 688
    .line 689
    goto :goto_21

    .line 690
    :cond_2e
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 691
    .line 692
    .line 693
    move-result v8

    .line 694
    const/4 v11, -0x1

    .line 695
    if-eq v8, v11, :cond_31

    .line 696
    .line 697
    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 698
    .line 699
    .line 700
    move-result-object v2

    .line 701
    check-cast v2, Lgc8;

    .line 702
    .line 703
    invoke-virtual {v3, v2}, Lgc8;->equals(Ljava/lang/Object;)Z

    .line 704
    .line 705
    .line 706
    move-result v11

    .line 707
    if-eqz v11, :cond_2f

    .line 708
    .line 709
    goto :goto_22

    .line 710
    :cond_2f
    iget-object v11, v3, Lgc8;->f:Ljava/lang/Class;

    .line 711
    .line 712
    invoke-virtual {v2, v11}, Lgc8;->A0(Ljava/lang/Class;)Z

    .line 713
    .line 714
    .line 715
    move-result v11

    .line 716
    iget-object v2, v2, Lgc8;->f:Ljava/lang/Class;

    .line 717
    .line 718
    invoke-virtual {v3, v2}, Lgc8;->A0(Ljava/lang/Class;)Z

    .line 719
    .line 720
    .line 721
    move-result v2

    .line 722
    if-nez v11, :cond_30

    .line 723
    .line 724
    if-nez v2, :cond_30

    .line 725
    .line 726
    goto :goto_1e

    .line 727
    :cond_30
    xor-int/2addr v11, v2

    .line 728
    if-eqz v11, :cond_33

    .line 729
    .line 730
    if-eqz v2, :cond_33

    .line 731
    .line 732
    invoke-virtual {v14, v8, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 733
    .line 734
    .line 735
    goto :goto_22

    .line 736
    :cond_31
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 737
    .line 738
    .line 739
    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 740
    .line 741
    .line 742
    goto :goto_22

    .line 743
    :cond_32
    move-object/from16 v19, v3

    .line 744
    .line 745
    move-object/from16 v20, v8

    .line 746
    .line 747
    move-object/from16 v21, v11

    .line 748
    .line 749
    :cond_33
    :goto_22
    add-int/lit8 v15, v15, 0x1

    .line 750
    .line 751
    move-object/from16 v3, v19

    .line 752
    .line 753
    move-object/from16 v8, v20

    .line 754
    .line 755
    move-object/from16 v11, v21

    .line 756
    .line 757
    goto/16 :goto_1b

    .line 758
    .line 759
    :cond_34
    move-object/from16 v19, v3

    .line 760
    .line 761
    move-object/from16 v20, v8

    .line 762
    .line 763
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    .line 764
    .line 765
    .line 766
    move-result v2

    .line 767
    if-eqz v2, :cond_35

    .line 768
    .line 769
    goto/16 :goto_1e

    .line 770
    .line 771
    :cond_35
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    .line 772
    .line 773
    .line 774
    move-result v2

    .line 775
    if-nez v2, :cond_37

    .line 776
    .line 777
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    .line 778
    .line 779
    .line 780
    move-result v2

    .line 781
    if-eqz v2, :cond_36

    .line 782
    .line 783
    goto :goto_23

    .line 784
    :cond_36
    new-instance v2, Ljc8;

    .line 785
    .line 786
    sget-object v3, Ljc8;->e:[Ljava/lang/String;

    .line 787
    .line 788
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 789
    .line 790
    .line 791
    move-result-object v3

    .line 792
    check-cast v3, [Ljava/lang/String;

    .line 793
    .line 794
    sget-object v8, Ljc8;->f:[Lgc8;

    .line 795
    .line 796
    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 797
    .line 798
    .line 799
    move-result-object v8

    .line 800
    check-cast v8, [Lgc8;

    .line 801
    .line 802
    const/4 v12, 0x0

    .line 803
    invoke-direct {v2, v3, v8, v12}, Ljc8;-><init>([Ljava/lang/String;[Lgc8;[Ljava/lang/String;)V

    .line 804
    .line 805
    .line 806
    goto :goto_24

    .line 807
    :cond_37
    :goto_23
    sget-object v2, Ljc8;->k:Ljc8;

    .line 808
    .line 809
    :goto_24
    if-nez v2, :cond_38

    .line 810
    .line 811
    move-object v3, v5

    .line 812
    :goto_25
    const/4 v12, 0x0

    .line 813
    goto :goto_26

    .line 814
    :cond_38
    new-instance v3, Lib;

    .line 815
    .line 816
    const/16 v8, 0xd

    .line 817
    .line 818
    iget-object v11, v0, Lhd;->R:Llc8;

    .line 819
    .line 820
    invoke-direct {v3, v8, v11, v2}, Lib;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 821
    .line 822
    .line 823
    goto :goto_25

    .line 824
    :goto_26
    invoke-virtual {v6, v4, v3, v12}, Lkd;->J(Ljava/lang/reflect/Method;Lqc8;Ljava/lang/reflect/Method;)Lpd;

    .line 825
    .line 826
    .line 827
    move-result-object v2

    .line 828
    invoke-virtual {v9, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 829
    .line 830
    .line 831
    goto :goto_27

    .line 832
    :cond_39
    move/from16 v16, v2

    .line 833
    .line 834
    move-object/from16 v19, v3

    .line 835
    .line 836
    move-object/from16 v20, v8

    .line 837
    .line 838
    :goto_27
    add-int/lit8 v1, v1, 0x1

    .line 839
    .line 840
    move/from16 v2, v16

    .line 841
    .line 842
    move-object/from16 v3, v19

    .line 843
    .line 844
    move-object/from16 v8, v20

    .line 845
    .line 846
    goto/16 :goto_17

    .line 847
    .line 848
    :cond_3a
    move-object v2, v9

    .line 849
    :goto_28
    iget-boolean v1, v6, Lkd;->f:Z

    .line 850
    .line 851
    if-eqz v1, :cond_3f

    .line 852
    .line 853
    iget-object v1, v6, Lkd;->k:Ljd;

    .line 854
    .line 855
    if-eqz v1, :cond_3b

    .line 856
    .line 857
    invoke-virtual {v7, v1}, Las5;->X(Lod;)Z

    .line 858
    .line 859
    .line 860
    move-result v1

    .line 861
    if-eqz v1, :cond_3b

    .line 862
    .line 863
    const/4 v12, 0x0

    .line 864
    iput-object v12, v6, Lkd;->k:Ljd;

    .line 865
    .line 866
    :cond_3b
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 867
    .line 868
    .line 869
    move-result v1

    .line 870
    :cond_3c
    :goto_29
    const/16 v17, -0x1

    .line 871
    .line 872
    add-int/lit8 v1, v1, -0x1

    .line 873
    .line 874
    if-ltz v1, :cond_3d

    .line 875
    .line 876
    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 877
    .line 878
    .line 879
    move-result-object v3

    .line 880
    check-cast v3, Lod;

    .line 881
    .line 882
    invoke-virtual {v7, v3}, Las5;->X(Lod;)Z

    .line 883
    .line 884
    .line 885
    move-result v3

    .line 886
    if-eqz v3, :cond_3c

    .line 887
    .line 888
    invoke-interface {v10, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 889
    .line 890
    .line 891
    goto :goto_29

    .line 892
    :cond_3d
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 893
    .line 894
    .line 895
    move-result v1

    .line 896
    const/16 v17, -0x1

    .line 897
    .line 898
    :cond_3e
    :goto_2a
    add-int/lit8 v1, v1, -0x1

    .line 899
    .line 900
    if-ltz v1, :cond_3f

    .line 901
    .line 902
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 903
    .line 904
    .line 905
    move-result-object v3

    .line 906
    check-cast v3, Lod;

    .line 907
    .line 908
    invoke-virtual {v7, v3}, Las5;->X(Lod;)Z

    .line 909
    .line 910
    .line 911
    move-result v3

    .line 912
    if-eqz v3, :cond_3e

    .line 913
    .line 914
    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 915
    .line 916
    .line 917
    goto :goto_2a

    .line 918
    :cond_3f
    new-instance v1, Lgd;

    .line 919
    .line 920
    iget-object v3, v6, Lkd;->k:Ljd;

    .line 921
    .line 922
    const/4 v4, 0x0

    .line 923
    invoke-direct {v1, v4, v3, v10, v2}, Lgd;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 924
    .line 925
    .line 926
    :goto_2b
    iput-object v1, v0, Lhd;->W:Lgd;

    .line 927
    .line 928
    :cond_40
    return-object v1
.end method

.method public final q0()Ljava/util/List;
    .locals 6

    .line 1
    iget-object v0, p0, Lhd;->Y:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Lhd;->M:Lgc8;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    new-instance v1, Lnd;

    .line 13
    .line 14
    iget-object v2, p0, Lhd;->Q:Las5;

    .line 15
    .line 16
    iget-object v3, p0, Lhd;->R:Llc8;

    .line 17
    .line 18
    iget-object v4, p0, Lhd;->S:Lh81;

    .line 19
    .line 20
    iget-boolean v5, p0, Lhd;->U:Z

    .line 21
    .line 22
    invoke-direct {v1, v2, v3, v4, v5}, Lnd;-><init>(Las5;Llc8;Lh81;Z)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p0, v0}, Lnd;->H(Lqc8;Lgc8;)Ljava/util/Map;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 41
    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_2

    .line 56
    .line 57
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    check-cast v2, Lmd;

    .line 62
    .line 63
    new-instance v3, Lld;

    .line 64
    .line 65
    iget-object v4, v2, Lmd;->a:Lqc8;

    .line 66
    .line 67
    iget-object v5, v2, Lmd;->b:Ljava/lang/reflect/Field;

    .line 68
    .line 69
    iget-object v2, v2, Lmd;->c:Lcy0;

    .line 70
    .line 71
    invoke-virtual {v2}, Lcy0;->c()Ls79;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-direct {v3, v4, v5, v2}, Lld;-><init>(Lqc8;Ljava/lang/reflect/Field;Ls79;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_2
    move-object v0, v1

    .line 83
    :goto_1
    iput-object v0, p0, Lhd;->Y:Ljava/util/List;

    .line 84
    .line 85
    :cond_3
    return-object v0
.end method

.method public final r0()Lsd;
    .locals 10

    .line 1
    iget-object v0, p0, Lhd;->X:Lsd;

    .line 2
    .line 3
    if-nez v0, :cond_a

    .line 4
    .line 5
    iget-object v0, p0, Lhd;->M:Lgc8;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Lsd;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    goto/16 :goto_5

    .line 15
    .line 16
    :cond_0
    iget-object v0, v0, Lgc8;->f:Ljava/lang/Class;

    .line 17
    .line 18
    new-instance v1, Lrd;

    .line 19
    .line 20
    iget-object v2, p0, Lhd;->Q:Las5;

    .line 21
    .line 22
    iget-object v3, p0, Lhd;->S:Lh81;

    .line 23
    .line 24
    iget-boolean v4, p0, Lhd;->U:Z

    .line 25
    .line 26
    invoke-direct {v1, v2, v3, v4}, Lrd;-><init>(Las5;Lh81;Z)V

    .line 27
    .line 28
    .line 29
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 30
    .line 31
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 32
    .line 33
    .line 34
    iget-object v3, p0, Lhd;->T:Ljava/lang/Class;

    .line 35
    .line 36
    invoke-virtual {v1, p0, v0, v2, v3}, Lrd;->H(Lqc8;Ljava/lang/Class;Ljava/util/LinkedHashMap;Ljava/lang/Class;)V

    .line 37
    .line 38
    .line 39
    iget-object v3, p0, Lhd;->P:Ljava/util/List;

    .line 40
    .line 41
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    iget-object v5, v1, Lrd;->e:Lh81;

    .line 50
    .line 51
    const/4 v6, 0x0

    .line 52
    if-eqz v4, :cond_2

    .line 53
    .line 54
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    check-cast v4, Lgc8;

    .line 59
    .line 60
    if-nez v5, :cond_1

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_1
    iget-object v6, v4, Lgc8;->f:Ljava/lang/Class;

    .line 64
    .line 65
    invoke-interface {v5, v6}, Lh81;->a(Ljava/lang/Class;)Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    :goto_1
    new-instance v5, Lib;

    .line 70
    .line 71
    invoke-virtual {v4}, Lgc8;->n0()Ljc8;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    const/16 v8, 0xd

    .line 76
    .line 77
    iget-object v9, p0, Lhd;->R:Llc8;

    .line 78
    .line 79
    invoke-direct {v5, v8, v9, v7}, Lib;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    iget-object v4, v4, Lgc8;->f:Ljava/lang/Class;

    .line 83
    .line 84
    invoke-virtual {v1, v5, v4, v2, v6}, Lrd;->H(Lqc8;Ljava/lang/Class;Ljava/util/LinkedHashMap;Ljava/lang/Class;)V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_2
    if-eqz v5, :cond_5

    .line 89
    .line 90
    const-class v3, Ljava/lang/Object;

    .line 91
    .line 92
    invoke-interface {v5, v3}, Lh81;->a(Ljava/lang/Class;)Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    if-eqz v4, :cond_5

    .line 97
    .line 98
    invoke-virtual {v1, p0, v0, v2, v4}, Lrd;->I(Lqc8;Ljava/lang/Class;Ljava/util/LinkedHashMap;Ljava/lang/Class;)V

    .line 99
    .line 100
    .line 101
    iget-object v0, v1, Lol1;->b:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast v0, Las5;

    .line 104
    .line 105
    if-eqz v0, :cond_5

    .line 106
    .line 107
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-nez v0, :cond_5

    .line 112
    .line 113
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    :catch_0
    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 122
    .line 123
    .line 124
    move-result v4

    .line 125
    if-eqz v4, :cond_5

    .line 126
    .line 127
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    check-cast v4, Ljava/util/Map$Entry;

    .line 132
    .line 133
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    check-cast v5, Lwb5;

    .line 138
    .line 139
    const-string v7, "hashCode"

    .line 140
    .line 141
    iget-object v8, v5, Lwb5;->a:Ljava/lang/String;

    .line 142
    .line 143
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v7

    .line 147
    if-eqz v7, :cond_3

    .line 148
    .line 149
    iget-object v7, v5, Lwb5;->b:[Ljava/lang/Class;

    .line 150
    .line 151
    array-length v7, v7

    .line 152
    if-eqz v7, :cond_4

    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_4
    :try_start_0
    iget-object v5, v5, Lwb5;->a:Ljava/lang/String;

    .line 156
    .line 157
    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 158
    .line 159
    .line 160
    move-result-object v5

    .line 161
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v4

    .line 165
    check-cast v4, Lqd;

    .line 166
    .line 167
    iget-object v7, v4, Lqd;->c:Lcy0;

    .line 168
    .line 169
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    .line 170
    .line 171
    .line 172
    move-result-object v8

    .line 173
    invoke-virtual {v1, v7, v8}, Lol1;->g(Lcy0;[Ljava/lang/annotation/Annotation;)Lcy0;

    .line 174
    .line 175
    .line 176
    move-result-object v7

    .line 177
    iput-object v7, v4, Lqd;->c:Lcy0;

    .line 178
    .line 179
    iput-object v5, v4, Lqd;->b:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    .line 181
    goto :goto_2

    .line 182
    :cond_5
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    if-eqz v0, :cond_6

    .line 187
    .line 188
    new-instance v0, Lsd;

    .line 189
    .line 190
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 191
    .line 192
    .line 193
    goto :goto_5

    .line 194
    :cond_6
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 195
    .line 196
    invoke-interface {v2}, Ljava/util/Map;->size()I

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    :cond_7
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 212
    .line 213
    .line 214
    move-result v2

    .line 215
    if-eqz v2, :cond_9

    .line 216
    .line 217
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    check-cast v2, Ljava/util/Map$Entry;

    .line 222
    .line 223
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v3

    .line 227
    check-cast v3, Lqd;

    .line 228
    .line 229
    iget-object v4, v3, Lqd;->b:Ljava/lang/reflect/Method;

    .line 230
    .line 231
    if-nez v4, :cond_8

    .line 232
    .line 233
    move-object v5, v6

    .line 234
    goto :goto_4

    .line 235
    :cond_8
    new-instance v5, Lpd;

    .line 236
    .line 237
    iget-object v7, v3, Lqd;->a:Lqc8;

    .line 238
    .line 239
    iget-object v3, v3, Lqd;->c:Lcy0;

    .line 240
    .line 241
    invoke-virtual {v3}, Lcy0;->c()Ls79;

    .line 242
    .line 243
    .line 244
    move-result-object v3

    .line 245
    invoke-direct {v5, v7, v4, v3, v6}, Lpd;-><init>(Lqc8;Ljava/lang/reflect/Method;Ls79;[Ls79;)V

    .line 246
    .line 247
    .line 248
    :goto_4
    if-eqz v5, :cond_7

    .line 249
    .line 250
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v2

    .line 254
    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    goto :goto_3

    .line 258
    :cond_9
    new-instance v1, Lsd;

    .line 259
    .line 260
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 261
    .line 262
    .line 263
    iput-object v0, v1, Lsd;->a:Ljava/util/LinkedHashMap;

    .line 264
    .line 265
    move-object v0, v1

    .line 266
    :goto_5
    iput-object v0, p0, Lhd;->X:Lsd;

    .line 267
    .line 268
    :cond_a
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "[AnnotedClass "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lhd;->N:Ljava/lang/Class;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string p0, "]"

    .line 18
    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method

.method public final z(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 0

    .line 1
    iget-object p0, p0, Lhd;->V:Lee;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lee;->b(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
