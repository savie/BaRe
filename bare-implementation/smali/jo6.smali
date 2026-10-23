.class public final Ljo6;
.super Lzy4;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final l:Lorg/swiftapps/swiftbackup/database/MDatabase_Impl;

.field public final m:Lh80;

.field public final n:Llo6;

.field public final o:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final p:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final q:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final r:Lox1;

.field public final s:Lt34;


# direct methods
.method public constructor <init>(Lorg/swiftapps/swiftbackup/database/MDatabase_Impl;Lh80;[Ljava/lang/String;Lt34;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lzy4;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Ljo6;->l:Lorg/swiftapps/swiftbackup/database/MDatabase_Impl;

    .line 8
    .line 9
    iput-object p2, p0, Ljo6;->m:Lh80;

    .line 10
    .line 11
    new-instance p2, Llo6;

    .line 12
    .line 13
    invoke-direct {p2, p3, p0}, Llo6;-><init>([Ljava/lang/String;Ljo6;)V

    .line 14
    .line 15
    .line 16
    iput-object p2, p0, Ljo6;->n:Llo6;

    .line 17
    .line 18
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19
    .line 20
    const/4 p3, 0x1

    .line 21
    invoke-direct {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 22
    .line 23
    .line 24
    iput-object p2, p0, Ljo6;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 25
    .line 26
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 27
    .line 28
    const/4 p3, 0x0

    .line 29
    invoke-direct {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 30
    .line 31
    .line 32
    iput-object p2, p0, Ljo6;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 33
    .line 34
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 35
    .line 36
    invoke-direct {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 37
    .line 38
    .line 39
    iput-object p2, p0, Ljo6;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 40
    .line 41
    invoke-virtual {p1}, Leo6;->h()Z

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    if-eqz p2, :cond_0

    .line 46
    .line 47
    invoke-virtual {p1}, Leo6;->e()Lox1;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    sget-object p1, Llv2;->a:Llv2;

    .line 53
    .line 54
    :goto_0
    iput-object p1, p0, Ljo6;->r:Lox1;

    .line 55
    .line 56
    iput-object p4, p0, Ljo6;->s:Lt34;

    .line 57
    .line 58
    return-void
.end method

.method public static final l(Ljo6;Lkv1;)Ljava/lang/Object;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Ljo6;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    .line 7
    iget-object v3, v0, Ljo6;->l:Lorg/swiftapps/swiftbackup/database/MDatabase_Impl;

    .line 8
    .line 9
    iget-object v4, v0, Ljo6;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    instance-of v5, v1, Lmo6;

    .line 12
    .line 13
    if-eqz v5, :cond_0

    .line 14
    .line 15
    move-object v5, v1

    .line 16
    check-cast v5, Lmo6;

    .line 17
    .line 18
    iget v6, v5, Lmo6;->d:I

    .line 19
    .line 20
    const/high16 v7, -0x80000000

    .line 21
    .line 22
    and-int v8, v6, v7

    .line 23
    .line 24
    if-eqz v8, :cond_0

    .line 25
    .line 26
    sub-int/2addr v6, v7

    .line 27
    iput v6, v5, Lmo6;->d:I

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    new-instance v5, Lmo6;

    .line 31
    .line 32
    invoke-direct {v5, v0, v1}, Lmo6;-><init>(Ljo6;Lkv1;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    iget-object v1, v5, Lmo6;->b:Ljava/lang/Object;

    .line 36
    .line 37
    sget-object v6, Lyx1;->a:Lyx1;

    .line 38
    .line 39
    iget v7, v5, Lmo6;->d:I

    .line 40
    .line 41
    const/4 v8, 0x0

    .line 42
    const/4 v9, 0x0

    .line 43
    const/4 v10, 0x1

    .line 44
    if-eqz v7, :cond_2

    .line 45
    .line 46
    if-ne v7, v10, :cond_1

    .line 47
    .line 48
    iget v7, v5, Lmo6;->a:I

    .line 49
    .line 50
    :try_start_0
    invoke-static {v1}, Llg7;->H(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .line 52
    .line 53
    :goto_1
    move-object v9, v1

    .line 54
    goto/16 :goto_c

    .line 55
    .line 56
    :catchall_0
    move-exception v0

    .line 57
    move v1, v9

    .line 58
    goto/16 :goto_f

    .line 59
    .line 60
    :catch_0
    move-exception v0

    .line 61
    goto/16 :goto_e

    .line 62
    .line 63
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 64
    .line 65
    invoke-static {v0}, Ll0;->e(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    return-object v8

    .line 69
    :cond_2
    invoke-static {v1}, Llg7;->H(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    iget-object v1, v0, Ljo6;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 73
    .line 74
    invoke-virtual {v1, v9, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-eqz v1, :cond_9

    .line 79
    .line 80
    invoke-virtual {v3}, Leo6;->d()Lkg4;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    iget-object v7, v0, Ljo6;->n:Llo6;

    .line 85
    .line 86
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    new-instance v11, Ldq8;

    .line 90
    .line 91
    invoke-direct {v11, v1, v7}, Ldq8;-><init>(Lkg4;Llo6;)V

    .line 92
    .line 93
    .line 94
    iget-object v7, v1, Lkg4;->b:Lmb8;

    .line 95
    .line 96
    iget-object v12, v11, Ljg4;->a:[Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {v7, v12}, Lmb8;->f([Ljava/lang/String;)Lpw5;

    .line 99
    .line 100
    .line 101
    move-result-object v7

    .line 102
    iget-object v12, v7, Lpw5;->a:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast v12, [Ljava/lang/String;

    .line 105
    .line 106
    iget-object v7, v7, Lpw5;->b:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast v7, [I

    .line 109
    .line 110
    new-instance v13, Lfs5;

    .line 111
    .line 112
    invoke-direct {v13, v11, v7, v12}, Lfs5;-><init>(Ljg4;[I[Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    iget-object v12, v1, Lkg4;->d:Ljava/util/concurrent/locks/ReentrantLock;

    .line 116
    .line 117
    invoke-virtual {v12}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 118
    .line 119
    .line 120
    :try_start_1
    iget-object v14, v1, Lkg4;->c:Ljava/util/LinkedHashMap;

    .line 121
    .line 122
    invoke-interface {v14, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 126
    iget-object v15, v1, Lkg4;->c:Ljava/util/LinkedHashMap;

    .line 127
    .line 128
    if-eqz v14, :cond_3

    .line 129
    .line 130
    :try_start_2
    invoke-static {v15, v11}, Lx65;->p0(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v11

    .line 134
    check-cast v11, Lfs5;

    .line 135
    .line 136
    goto :goto_2

    .line 137
    :catchall_1
    move-exception v0

    .line 138
    goto/16 :goto_9

    .line 139
    .line 140
    :cond_3
    invoke-interface {v15, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v11

    .line 144
    check-cast v11, Lfs5;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 145
    .line 146
    :goto_2
    invoke-virtual {v12}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 147
    .line 148
    .line 149
    if-nez v11, :cond_8

    .line 150
    .line 151
    iget-object v11, v1, Lkg4;->b:Lmb8;

    .line 152
    .line 153
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 154
    .line 155
    .line 156
    iget-object v11, v11, Lmb8;->h:Lds5;

    .line 157
    .line 158
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 159
    .line 160
    .line 161
    iget-object v12, v11, Lds5;->a:Ljava/util/concurrent/locks/ReentrantLock;

    .line 162
    .line 163
    invoke-virtual {v12}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 164
    .line 165
    .line 166
    :try_start_3
    array-length v13, v7

    .line 167
    move v14, v9

    .line 168
    move v15, v14

    .line 169
    :goto_3
    if-ge v14, v13, :cond_5

    .line 170
    .line 171
    aget v16, v7, v14

    .line 172
    .line 173
    iget-object v9, v11, Lds5;->b:[J

    .line 174
    .line 175
    aget-wide v17, v9, v16

    .line 176
    .line 177
    const-wide/16 v19, 0x1

    .line 178
    .line 179
    add-long v19, v17, v19

    .line 180
    .line 181
    aput-wide v19, v9, v16

    .line 182
    .line 183
    const-wide/16 v19, 0x0

    .line 184
    .line 185
    cmp-long v9, v17, v19

    .line 186
    .line 187
    if-nez v9, :cond_4

    .line 188
    .line 189
    iput-boolean v10, v11, Lds5;->d:Z

    .line 190
    .line 191
    move v15, v10

    .line 192
    goto :goto_4

    .line 193
    :catchall_2
    move-exception v0

    .line 194
    goto :goto_7

    .line 195
    :cond_4
    :goto_4
    add-int/lit8 v14, v14, 0x1

    .line 196
    .line 197
    const/4 v9, 0x0

    .line 198
    goto :goto_3

    .line 199
    :cond_5
    if-nez v15, :cond_7

    .line 200
    .line 201
    iget-boolean v7, v11, Lds5;->d:Z

    .line 202
    .line 203
    if-nez v7, :cond_7

    .line 204
    .line 205
    iget-boolean v7, v11, Lds5;->f:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 206
    .line 207
    if-eqz v7, :cond_6

    .line 208
    .line 209
    goto :goto_5

    .line 210
    :cond_6
    const/4 v7, 0x0

    .line 211
    goto :goto_6

    .line 212
    :cond_7
    :goto_5
    move v7, v10

    .line 213
    :goto_6
    invoke-virtual {v12}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 214
    .line 215
    .line 216
    if-eqz v7, :cond_8

    .line 217
    .line 218
    move v7, v10

    .line 219
    goto :goto_8

    .line 220
    :goto_7
    invoke-virtual {v12}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 221
    .line 222
    .line 223
    throw v0

    .line 224
    :cond_8
    const/4 v7, 0x0

    .line 225
    :goto_8
    if-eqz v7, :cond_9

    .line 226
    .line 227
    new-instance v7, Lpj;

    .line 228
    .line 229
    invoke-direct {v7, v1, v8, v10}, Lpj;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 230
    .line 231
    .line 232
    invoke-static {v7}, Lzh8;->I(Lqt3;)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    goto :goto_a

    .line 236
    :goto_9
    invoke-virtual {v12}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 237
    .line 238
    .line 239
    throw v0

    .line 240
    :cond_9
    :goto_a
    const/4 v1, 0x0

    .line 241
    :cond_a
    invoke-virtual {v4, v1, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 242
    .line 243
    .line 244
    move-result v7

    .line 245
    if-eqz v7, :cond_e

    .line 246
    .line 247
    move v7, v1

    .line 248
    move-object v9, v8

    .line 249
    :goto_b
    :try_start_4
    invoke-virtual {v2, v10, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 250
    .line 251
    .line 252
    move-result v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 253
    if-eqz v11, :cond_c

    .line 254
    .line 255
    :try_start_5
    iput v10, v5, Lmo6;->a:I

    .line 256
    .line 257
    iput v10, v5, Lmo6;->d:I

    .line 258
    .line 259
    iget-object v1, v0, Ljo6;->s:Lt34;

    .line 260
    .line 261
    invoke-static {v3, v10, v1, v5}, Lg67;->A(Lorg/swiftapps/swiftbackup/database/MDatabase_Impl;ZLt34;Lkv1;)Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 265
    if-ne v1, v6, :cond_b

    .line 266
    .line 267
    return-object v6

    .line 268
    :cond_b
    move v7, v10

    .line 269
    goto/16 :goto_1

    .line 270
    .line 271
    :goto_c
    const/4 v1, 0x0

    .line 272
    goto :goto_b

    .line 273
    :goto_d
    const/4 v1, 0x0

    .line 274
    goto :goto_f

    .line 275
    :catchall_3
    move-exception v0

    .line 276
    goto :goto_d

    .line 277
    :goto_e
    :try_start_6
    new-instance v1, Ljava/lang/RuntimeException;

    .line 278
    .line 279
    const-string v2, "Exception while computing database live data."

    .line 280
    .line 281
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 282
    .line 283
    .line 284
    throw v1

    .line 285
    :cond_c
    if-eqz v7, :cond_d

    .line 286
    .line 287
    invoke-virtual {v0, v9}, Lzy4;->i(Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 288
    .line 289
    .line 290
    :cond_d
    const/4 v1, 0x0

    .line 291
    invoke-virtual {v4, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 292
    .line 293
    .line 294
    goto :goto_10

    .line 295
    :catchall_4
    move-exception v0

    .line 296
    :goto_f
    invoke-virtual {v4, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 297
    .line 298
    .line 299
    throw v0

    .line 300
    :cond_e
    move v7, v1

    .line 301
    :goto_10
    if-eqz v7, :cond_f

    .line 302
    .line 303
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 304
    .line 305
    .line 306
    move-result v7

    .line 307
    if-nez v7, :cond_a

    .line 308
    .line 309
    :cond_f
    sget-object v0, Lbe8;->a:Lbe8;

    .line 310
    .line 311
    return-object v0
.end method


# virtual methods
.method public final g()V
    .locals 4

    .line 1
    iget-object v0, p0, Ljo6;->m:Lh80;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, v0, Lh80;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Ljava/util/Set;

    .line 9
    .line 10
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Ljo6;->l:Lorg/swiftapps/swiftbackup/database/MDatabase_Impl;

    .line 14
    .line 15
    iget-object v0, v0, Leo6;->a:Ldv1;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    new-instance v2, Lmg1;

    .line 21
    .line 22
    const/4 v3, 0x3

    .line 23
    invoke-direct {v2, p0, v1, v3}, Lmg1;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 24
    .line 25
    .line 26
    const/4 v1, 0x2

    .line 27
    iget-object p0, p0, Ljo6;->r:Lox1;

    .line 28
    .line 29
    invoke-static {v0, p0, v2, v1}, Ll73;->v(Lxx1;Lox1;Lqt3;I)Lbl7;

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    const-string p0, "coroutineScope"

    .line 34
    .line 35
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw v1
.end method

.method public final h()V
    .locals 1

    .line 1
    iget-object v0, p0, Ljo6;->m:Lh80;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, v0, Lh80;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Ljava/util/Set;

    .line 9
    .line 10
    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method
