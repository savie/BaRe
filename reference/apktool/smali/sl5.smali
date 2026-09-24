.class public final Lsl5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lkm7;

.field public final b:Lkm7;

.field public final c:Lmf6;

.field public final d:Lw40;

.field public final e:Lw40;

.field public f:Lrs5;

.field public g:I

.field public h:Lrl5;

.field public final i:Ljava/util/LinkedHashSet;

.field public final j:Ljava/util/LinkedHashSet;

.field public final k:Ljava/util/LinkedHashSet;

.field public l:Z

.field public m:Z

.field public n:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Ltl5;->g:Ltl5;

    .line 5
    .line 6
    new-instance v1, Lkm7;

    .line 7
    .line 8
    invoke-direct {v1, v0}, Lkm7;-><init>(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iput-object v1, p0, Lsl5;->a:Lkm7;

    .line 12
    .line 13
    new-instance v0, Lql5;

    .line 14
    .line 15
    invoke-direct {v0}, Lql5;-><init>()V

    .line 16
    .line 17
    .line 18
    new-instance v1, Lkm7;

    .line 19
    .line 20
    invoke-direct {v1, v0}, Lkm7;-><init>(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lsl5;->b:Lkm7;

    .line 24
    .line 25
    new-instance v0, Lmf6;

    .line 26
    .line 27
    invoke-direct {v0, v1}, Lmf6;-><init>(Lkm7;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lsl5;->c:Lmf6;

    .line 31
    .line 32
    new-instance v0, Lw40;

    .line 33
    .line 34
    invoke-direct {v0}, Lw40;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lsl5;->d:Lw40;

    .line 38
    .line 39
    new-instance v0, Lw40;

    .line 40
    .line 41
    invoke-direct {v0}, Lw40;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lsl5;->e:Lw40;

    .line 45
    .line 46
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 47
    .line 48
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lsl5;->i:Ljava/util/LinkedHashSet;

    .line 52
    .line 53
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 54
    .line 55
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lsl5;->j:Ljava/util/LinkedHashSet;

    .line 59
    .line 60
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 61
    .line 62
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object v0, p0, Lsl5;->k:Ljava/util/LinkedHashSet;

    .line 66
    .line 67
    return-void
.end method


# virtual methods
.method public final a(Lf41;Lrl5;I)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p2, Lrl5;->a:Lf41;

    .line 5
    .line 6
    if-nez v0, :cond_4

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    if-eqz p3, :cond_1

    .line 10
    .line 11
    if-eq p3, v0, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Lsl5;->i:Ljava/util/LinkedHashSet;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v1, p0, Lsl5;->j:Ljava/util/LinkedHashSet;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    iget-object v1, p0, Lsl5;->k:Ljava/util/LinkedHashSet;

    .line 20
    .line 21
    :goto_0
    invoke-interface {v1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    iput-object p1, p2, Lrl5;->a:Lf41;

    .line 25
    .line 26
    iget-object p1, p0, Lsl5;->c:Lmf6;

    .line 27
    .line 28
    iget-object p1, p1, Lmf6;->a:Lkm7;

    .line 29
    .line 30
    invoke-virtual {p1}, Lkm7;->d()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Lql5;

    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    if-eqz p3, :cond_3

    .line 40
    .line 41
    if-eq p3, v0, :cond_2

    .line 42
    .line 43
    iget-boolean p0, p0, Lsl5;->n:Z

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    iget-boolean p0, p0, Lsl5;->l:Z

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_3
    iget-boolean p0, p0, Lsl5;->m:Z

    .line 50
    .line 51
    :goto_1
    invoke-virtual {p2, p0}, Lrl5;->b(Z)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string p1, "Input \'"

    .line 58
    .line 59
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    iget-object p1, p2, Lrl5;->a:Lf41;

    .line 66
    .line 67
    const-string p2, "\' is already added to dispatcher "

    .line 68
    .line 69
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const/16 p1, 0x2e

    .line 76
    .line 77
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 85
    .line 86
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw p1
.end method

.method public final b()V
    .locals 11

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iget-object v2, p0, Lsl5;->d:Lw40;

    .line 4
    .line 5
    if-eqz v2, :cond_1

    .line 6
    .line 7
    invoke-virtual {v2}, Lw40;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    if-eqz v3, :cond_1

    .line 12
    .line 13
    :cond_0
    move v3, v1

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    invoke-virtual {v2}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-eqz v4, :cond_0

    .line 24
    .line 25
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    check-cast v4, Lrs5;

    .line 30
    .line 31
    iget-boolean v4, v4, Lrs5;->d:Z

    .line 32
    .line 33
    if-nez v4, :cond_2

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    move v3, v0

    .line 37
    :goto_1
    iget-object v4, p0, Lsl5;->e:Lw40;

    .line 38
    .line 39
    if-eqz v4, :cond_4

    .line 40
    .line 41
    invoke-virtual {v4}, Lw40;->isEmpty()Z

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    if-eqz v5, :cond_4

    .line 46
    .line 47
    :cond_3
    move v5, v1

    .line 48
    goto :goto_3

    .line 49
    :cond_4
    invoke-virtual {v4}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    if-eqz v6, :cond_3

    .line 58
    .line 59
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    check-cast v6, Lrs5;

    .line 64
    .line 65
    iget-boolean v6, v6, Lrs5;->d:Z

    .line 66
    .line 67
    if-nez v6, :cond_5

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_5
    move v5, v0

    .line 71
    :goto_3
    if-nez v3, :cond_7

    .line 72
    .line 73
    if-eqz v5, :cond_6

    .line 74
    .line 75
    goto :goto_4

    .line 76
    :cond_6
    move v6, v1

    .line 77
    goto :goto_5

    .line 78
    :cond_7
    :goto_4
    move v6, v0

    .line 79
    :goto_5
    iget-boolean v7, p0, Lsl5;->m:Z

    .line 80
    .line 81
    if-eq v7, v3, :cond_8

    .line 82
    .line 83
    move v7, v0

    .line 84
    goto :goto_6

    .line 85
    :cond_8
    move v7, v1

    .line 86
    :goto_6
    iget-boolean v8, p0, Lsl5;->l:Z

    .line 87
    .line 88
    if-eq v8, v5, :cond_9

    .line 89
    .line 90
    move v8, v0

    .line 91
    goto :goto_7

    .line 92
    :cond_9
    move v8, v1

    .line 93
    :goto_7
    iget-boolean v9, p0, Lsl5;->n:Z

    .line 94
    .line 95
    if-eq v9, v6, :cond_a

    .line 96
    .line 97
    goto :goto_8

    .line 98
    :cond_a
    move v0, v1

    .line 99
    :goto_8
    iget-object v9, p0, Lsl5;->k:Ljava/util/LinkedHashSet;

    .line 100
    .line 101
    if-eqz v7, :cond_b

    .line 102
    .line 103
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 104
    .line 105
    .line 106
    move-result-object v7

    .line 107
    :goto_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 108
    .line 109
    .line 110
    move-result v10

    .line 111
    if-eqz v10, :cond_b

    .line 112
    .line 113
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v10

    .line 117
    check-cast v10, Lrl5;

    .line 118
    .line 119
    invoke-virtual {v10, v3}, Lrl5;->b(Z)V

    .line 120
    .line 121
    .line 122
    goto :goto_9

    .line 123
    :cond_b
    iget-object v7, p0, Lsl5;->j:Ljava/util/LinkedHashSet;

    .line 124
    .line 125
    if-eqz v8, :cond_c

    .line 126
    .line 127
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 128
    .line 129
    .line 130
    move-result-object v8

    .line 131
    :goto_a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 132
    .line 133
    .line 134
    move-result v10

    .line 135
    if-eqz v10, :cond_c

    .line 136
    .line 137
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v10

    .line 141
    check-cast v10, Lrl5;

    .line 142
    .line 143
    invoke-virtual {v10, v5}, Lrl5;->b(Z)V

    .line 144
    .line 145
    .line 146
    goto :goto_a

    .line 147
    :cond_c
    iget-object v8, p0, Lsl5;->i:Ljava/util/LinkedHashSet;

    .line 148
    .line 149
    if-eqz v0, :cond_d

    .line 150
    .line 151
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 156
    .line 157
    .line 158
    move-result v10

    .line 159
    if-eqz v10, :cond_d

    .line 160
    .line 161
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v10

    .line 165
    check-cast v10, Lrl5;

    .line 166
    .line 167
    invoke-virtual {v10, v6}, Lrl5;->b(Z)V

    .line 168
    .line 169
    .line 170
    goto :goto_b

    .line 171
    :cond_d
    iput-boolean v3, p0, Lsl5;->m:Z

    .line 172
    .line 173
    iput-boolean v5, p0, Lsl5;->l:Z

    .line 174
    .line 175
    iput-boolean v6, p0, Lsl5;->n:Z

    .line 176
    .line 177
    iget-object v0, p0, Lsl5;->f:Lrs5;

    .line 178
    .line 179
    if-nez v0, :cond_e

    .line 180
    .line 181
    invoke-virtual {p0, v1}, Lsl5;->c(I)Lrs5;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    :cond_e
    iget-object v3, p0, Lsl5;->f:Lrs5;

    .line 186
    .line 187
    if-nez v3, :cond_f

    .line 188
    .line 189
    invoke-virtual {p0, v1}, Lsl5;->c(I)Lrs5;

    .line 190
    .line 191
    .line 192
    move-result-object v3

    .line 193
    :cond_f
    invoke-static {v3, v0}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    if-nez v0, :cond_10

    .line 198
    .line 199
    goto/16 :goto_12

    .line 200
    .line 201
    :cond_10
    if-nez v3, :cond_11

    .line 202
    .line 203
    new-instance v0, Lql5;

    .line 204
    .line 205
    invoke-direct {v0}, Lql5;-><init>()V

    .line 206
    .line 207
    .line 208
    goto :goto_e

    .line 209
    :cond_11
    new-instance v0, Ljava/util/ArrayList;

    .line 210
    .line 211
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    :cond_12
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 219
    .line 220
    .line 221
    move-result v2

    .line 222
    if-eqz v2, :cond_13

    .line 223
    .line 224
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    check-cast v2, Lrs5;

    .line 229
    .line 230
    iget-boolean v5, v2, Lrs5;->d:Z

    .line 231
    .line 232
    if-eqz v5, :cond_12

    .line 233
    .line 234
    iget-object v2, v2, Lrs5;->b:Lov2;

    .line 235
    .line 236
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 237
    .line 238
    .line 239
    goto :goto_c

    .line 240
    :cond_13
    invoke-virtual {v4}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 241
    .line 242
    .line 243
    move-result-object v1

    .line 244
    :cond_14
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 245
    .line 246
    .line 247
    move-result v2

    .line 248
    if-eqz v2, :cond_15

    .line 249
    .line 250
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v2

    .line 254
    check-cast v2, Lrs5;

    .line 255
    .line 256
    iget-boolean v4, v2, Lrs5;->d:Z

    .line 257
    .line 258
    if-eqz v4, :cond_14

    .line 259
    .line 260
    iget-object v2, v2, Lrs5;->b:Lov2;

    .line 261
    .line 262
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 263
    .line 264
    .line 265
    goto :goto_d

    .line 266
    :cond_15
    iget-object v1, v3, Lrs5;->a:Lts5;

    .line 267
    .line 268
    iget-object v2, v3, Lrs5;->c:Lov2;

    .line 269
    .line 270
    new-instance v3, Lql5;

    .line 271
    .line 272
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 276
    .line 277
    .line 278
    invoke-static {}, Lnc8;->p()Lww4;

    .line 279
    .line 280
    .line 281
    move-result-object v4

    .line 282
    invoke-static {v0, v4}, Lel1;->K0(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v4, v1}, Lww4;->add(Ljava/lang/Object;)Z

    .line 286
    .line 287
    .line 288
    invoke-static {v2, v4}, Lel1;->K0(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    .line 289
    .line 290
    .line 291
    invoke-static {v4}, Lnc8;->h(Lww4;)Lww4;

    .line 292
    .line 293
    .line 294
    move-result-object v1

    .line 295
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 296
    .line 297
    .line 298
    move-result v0

    .line 299
    invoke-direct {v3, v0, v1}, Lql5;-><init>(ILjava/util/List;)V

    .line 300
    .line 301
    .line 302
    move-object v0, v3

    .line 303
    :goto_e
    iget-object p0, p0, Lsl5;->b:Lkm7;

    .line 304
    .line 305
    invoke-virtual {p0}, Lkm7;->d()Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object v1

    .line 309
    check-cast v1, Lql5;

    .line 310
    .line 311
    invoke-static {v1, v0}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 312
    .line 313
    .line 314
    move-result v1

    .line 315
    if-eqz v1, :cond_16

    .line 316
    .line 317
    goto :goto_12

    .line 318
    :cond_16
    const/4 v1, 0x0

    .line 319
    invoke-virtual {p0, v1, v0}, Lkm7;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 320
    .line 321
    .line 322
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 323
    .line 324
    .line 325
    move-result-object p0

    .line 326
    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 327
    .line 328
    .line 329
    move-result v0

    .line 330
    if-eqz v0, :cond_17

    .line 331
    .line 332
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    move-result-object v0

    .line 336
    check-cast v0, Lrl5;

    .line 337
    .line 338
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 339
    .line 340
    .line 341
    goto :goto_f

    .line 342
    :cond_17
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 343
    .line 344
    .line 345
    move-result-object p0

    .line 346
    :goto_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 347
    .line 348
    .line 349
    move-result v0

    .line 350
    if-eqz v0, :cond_18

    .line 351
    .line 352
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    check-cast v0, Lrl5;

    .line 357
    .line 358
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 359
    .line 360
    .line 361
    goto :goto_10

    .line 362
    :cond_18
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 363
    .line 364
    .line 365
    move-result-object p0

    .line 366
    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 367
    .line 368
    .line 369
    move-result v0

    .line 370
    if-eqz v0, :cond_19

    .line 371
    .line 372
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 373
    .line 374
    .line 375
    move-result-object v0

    .line 376
    check-cast v0, Lrl5;

    .line 377
    .line 378
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 379
    .line 380
    .line 381
    goto :goto_11

    .line 382
    :cond_19
    :goto_12
    return-void
.end method

.method public final c(I)Lrs5;
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    iget-object v1, p0, Lsl5;->e:Lw40;

    .line 3
    .line 4
    iget-object p0, p0, Lsl5;->d:Lw40;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    if-eq p1, v0, :cond_9

    .line 8
    .line 9
    if-eqz p1, :cond_3

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    if-ne p1, v0, :cond_2

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Lrs5;

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {v1}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    check-cast p1, Lrs5;

    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    return-object v2

    .line 55
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 56
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    const-string v1, "Unsupported direction: \'"

    .line 60
    .line 61
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string p1, "\'."

    .line 68
    .line 69
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw p0

    .line 84
    :cond_3
    invoke-virtual {p0}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-eqz p1, :cond_4

    .line 93
    .line 94
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    move-object v0, p1

    .line 99
    check-cast v0, Lrs5;

    .line 100
    .line 101
    iget-boolean v0, v0, Lrs5;->d:Z

    .line 102
    .line 103
    if-nez v0, :cond_5

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_4
    move-object p1, v2

    .line 107
    :cond_5
    check-cast p1, Lrs5;

    .line 108
    .line 109
    if-nez p1, :cond_8

    .line 110
    .line 111
    invoke-virtual {v1}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    if-eqz p1, :cond_7

    .line 120
    .line 121
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    move-object v0, p1

    .line 126
    check-cast v0, Lrs5;

    .line 127
    .line 128
    iget-boolean v0, v0, Lrs5;->d:Z

    .line 129
    .line 130
    if-nez v0, :cond_6

    .line 131
    .line 132
    goto :goto_3

    .line 133
    :cond_6
    move-object v2, p1

    .line 134
    :cond_7
    check-cast v2, Lrs5;

    .line 135
    .line 136
    return-object v2

    .line 137
    :cond_8
    return-object p1

    .line 138
    :cond_9
    invoke-virtual {p0}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    if-eqz p1, :cond_b

    .line 147
    .line 148
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    move-object v0, p1

    .line 153
    check-cast v0, Lrs5;

    .line 154
    .line 155
    iget-boolean v0, v0, Lrs5;->d:Z

    .line 156
    .line 157
    if-eqz v0, :cond_a

    .line 158
    .line 159
    goto :goto_4

    .line 160
    :cond_b
    move-object p1, v2

    .line 161
    :goto_4
    check-cast p1, Lrs5;

    .line 162
    .line 163
    if-nez p1, :cond_e

    .line 164
    .line 165
    invoke-virtual {v1}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    :cond_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 170
    .line 171
    .line 172
    move-result p1

    .line 173
    if-eqz p1, :cond_d

    .line 174
    .line 175
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    move-object v0, p1

    .line 180
    check-cast v0, Lrs5;

    .line 181
    .line 182
    iget-boolean v0, v0, Lrs5;->d:Z

    .line 183
    .line 184
    if-eqz v0, :cond_c

    .line 185
    .line 186
    move-object v2, p1

    .line 187
    :cond_d
    check-cast v2, Lrs5;

    .line 188
    .line 189
    return-object v2

    .line 190
    :cond_e
    return-object p1
.end method
