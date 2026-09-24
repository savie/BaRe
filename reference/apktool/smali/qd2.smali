.class public final Lqd2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:Ljava/util/ArrayList;

.field public c:Ldy3;

.field public d:Ljava/lang/Object;

.field public e:I

.field public f:I

.field public g:Ljava/lang/Class;

.field public h:Lyw2;

.field public i:Lou5;

.field public j:Ljava/util/Map;

.field public k:Ljava/lang/Class;

.field public l:Z

.field public m:Z

.field public n:Ljo4;

.field public o:Le66;

.field public p:Lkm2;

.field public q:Z

.field public r:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lqd2;->a:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lqd2;->b:Ljava/util/ArrayList;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/ArrayList;
    .locals 7

    .line 1
    iget-boolean v0, p0, Lqd2;->m:Z

    .line 2
    .line 3
    iget-object v1, p0, Lqd2;->b:Ljava/util/ArrayList;

    .line 4
    .line 5
    if-nez v0, :cond_3

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lqd2;->m:Z

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lqd2;->b()Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v2, 0x0

    .line 22
    move v3, v2

    .line 23
    :goto_0
    if-ge v3, v0, :cond_3

    .line 24
    .line 25
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    check-cast v4, Lbh5;

    .line 30
    .line 31
    iget-object v5, v4, Lbh5;->a:Ljo4;

    .line 32
    .line 33
    iget-object v6, v4, Lbh5;->b:Ljava/util/List;

    .line 34
    .line 35
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    if-nez v5, :cond_0

    .line 40
    .line 41
    iget-object v4, v4, Lbh5;->a:Ljo4;

    .line 42
    .line 43
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    :cond_0
    move v4, v2

    .line 47
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    if-ge v4, v5, :cond_2

    .line 52
    .line 53
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    if-nez v5, :cond_1

    .line 62
    .line 63
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_3
    return-object v1
.end method

.method public final b()Ljava/util/ArrayList;
    .locals 9

    .line 1
    iget-boolean v0, p0, Lqd2;->l:Z

    .line 2
    .line 3
    iget-object v1, p0, Lqd2;->a:Ljava/util/ArrayList;

    .line 4
    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lqd2;->l:Z

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lqd2;->c:Ldy3;

    .line 14
    .line 15
    invoke-virtual {v0}, Ldy3;->a()Lmi6;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v2, p0, Lqd2;->d:Ljava/lang/Object;

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Lmi6;->f(Ljava/lang/Object;)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const/4 v3, 0x0

    .line 30
    :goto_0
    if-ge v3, v2, :cond_1

    .line 31
    .line 32
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    check-cast v4, Lch5;

    .line 37
    .line 38
    iget-object v5, p0, Lqd2;->d:Ljava/lang/Object;

    .line 39
    .line 40
    iget v6, p0, Lqd2;->e:I

    .line 41
    .line 42
    iget v7, p0, Lqd2;->f:I

    .line 43
    .line 44
    iget-object v8, p0, Lqd2;->i:Lou5;

    .line 45
    .line 46
    invoke-interface {v4, v5, v6, v7, v8}, Lch5;->b(Ljava/lang/Object;IILou5;)Lbh5;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    if-eqz v4, :cond_0

    .line 51
    .line 52
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    return-object v1
.end method

.method public final c(Ljava/lang/Class;)Laz4;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lqd2;->c:Ldy3;

    .line 6
    .line 7
    invoke-virtual {v2}, Ldy3;->a()Lmi6;

    .line 8
    .line 9
    .line 10
    move-result-object v7

    .line 11
    iget-object v8, v0, Lqd2;->g:Ljava/lang/Class;

    .line 12
    .line 13
    iget-object v9, v0, Lqd2;->k:Ljava/lang/Class;

    .line 14
    .line 15
    iget-object v0, v7, Lmi6;->i:Lbz4;

    .line 16
    .line 17
    iget-object v2, v0, Lbz4;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 18
    .line 19
    const/4 v10, 0x0

    .line 20
    invoke-virtual {v2, v10}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lrh5;

    .line 25
    .line 26
    if-nez v2, :cond_0

    .line 27
    .line 28
    new-instance v2, Lrh5;

    .line 29
    .line 30
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 31
    .line 32
    .line 33
    :cond_0
    iput-object v1, v2, Lrh5;->a:Ljava/lang/Class;

    .line 34
    .line 35
    iput-object v8, v2, Lrh5;->b:Ljava/lang/Class;

    .line 36
    .line 37
    iput-object v9, v2, Lrh5;->c:Ljava/lang/Class;

    .line 38
    .line 39
    iget-object v3, v0, Lbz4;->a:Lk50;

    .line 40
    .line 41
    monitor-enter v3

    .line 42
    :try_start_0
    iget-object v4, v0, Lbz4;->a:Lk50;

    .line 43
    .line 44
    invoke-virtual {v4, v2}, Ldg7;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    check-cast v4, Laz4;

    .line 49
    .line 50
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 51
    iget-object v0, v0, Lbz4;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 52
    .line 53
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    iget-object v0, v7, Lmi6;->i:Lbz4;

    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    sget-object v0, Lbz4;->c:Laz4;

    .line 62
    .line 63
    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_1

    .line 68
    .line 69
    return-object v10

    .line 70
    :cond_1
    if-nez v4, :cond_f

    .line 71
    .line 72
    new-instance v11, Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .line 76
    .line 77
    iget-object v0, v7, Lmi6;->c:Lix0;

    .line 78
    .line 79
    invoke-virtual {v0, v1, v8}, Lix0;->f(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 84
    .line 85
    .line 86
    move-result-object v12

    .line 87
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_c

    .line 92
    .line 93
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    move-object v2, v0

    .line 98
    check-cast v2, Ljava/lang/Class;

    .line 99
    .line 100
    iget-object v0, v7, Lmi6;->f:Ls40;

    .line 101
    .line 102
    invoke-virtual {v0, v2, v9}, Ls40;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 107
    .line 108
    .line 109
    move-result-object v13

    .line 110
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-eqz v0, :cond_b

    .line 115
    .line 116
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    move-object v3, v0

    .line 121
    check-cast v3, Ljava/lang/Class;

    .line 122
    .line 123
    iget-object v4, v7, Lmi6;->c:Lix0;

    .line 124
    .line 125
    monitor-enter v4

    .line 126
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    .line 127
    .line 128
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .line 130
    .line 131
    iget-object v5, v4, Lix0;->b:Ljava/lang/Object;

    .line 132
    .line 133
    check-cast v5, Ljava/util/ArrayList;

    .line 134
    .line 135
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 136
    .line 137
    .line 138
    move-result-object v5

    .line 139
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 140
    .line 141
    .line 142
    move-result v6

    .line 143
    const/4 v15, 0x1

    .line 144
    if-eqz v6, :cond_6

    .line 145
    .line 146
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v6

    .line 150
    check-cast v6, Ljava/lang/String;

    .line 151
    .line 152
    iget-object v10, v4, Lix0;->c:Ljava/lang/Object;

    .line 153
    .line 154
    check-cast v10, Ljava/util/HashMap;

    .line 155
    .line 156
    invoke-virtual {v10, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v6

    .line 160
    check-cast v6, Ljava/util/List;

    .line 161
    .line 162
    if-nez v6, :cond_3

    .line 163
    .line 164
    :cond_2
    const/4 v10, 0x0

    .line 165
    goto :goto_2

    .line 166
    :cond_3
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 167
    .line 168
    .line 169
    move-result-object v6

    .line 170
    :cond_4
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 171
    .line 172
    .line 173
    move-result v10

    .line 174
    if-eqz v10, :cond_2

    .line 175
    .line 176
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v10

    .line 180
    check-cast v10, Lrl6;

    .line 181
    .line 182
    iget-object v14, v10, Lrl6;->a:Ljava/lang/Class;

    .line 183
    .line 184
    invoke-virtual {v14, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 185
    .line 186
    .line 187
    move-result v14

    .line 188
    if-eqz v14, :cond_5

    .line 189
    .line 190
    iget-object v14, v10, Lrl6;->b:Ljava/lang/Class;

    .line 191
    .line 192
    invoke-virtual {v2, v14}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 193
    .line 194
    .line 195
    move-result v14

    .line 196
    if-eqz v14, :cond_5

    .line 197
    .line 198
    move v14, v15

    .line 199
    goto :goto_4

    .line 200
    :cond_5
    const/4 v14, 0x0

    .line 201
    :goto_4
    if-eqz v14, :cond_4

    .line 202
    .line 203
    iget-object v10, v10, Lrl6;->c:Lql6;

    .line 204
    .line 205
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 206
    .line 207
    .line 208
    goto :goto_3

    .line 209
    :catchall_0
    move-exception v0

    .line 210
    goto/16 :goto_a

    .line 211
    .line 212
    :cond_6
    monitor-exit v4

    .line 213
    iget-object v5, v7, Lmi6;->f:Ls40;

    .line 214
    .line 215
    monitor-enter v5

    .line 216
    :try_start_2
    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 217
    .line 218
    .line 219
    move-result v4

    .line 220
    if-eqz v4, :cond_7

    .line 221
    .line 222
    sget-object v4, Lus2;->f:Lus2;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 223
    .line 224
    monitor-exit v5

    .line 225
    :goto_5
    move-object v5, v4

    .line 226
    move-object v4, v0

    .line 227
    goto :goto_8

    .line 228
    :catchall_1
    move-exception v0

    .line 229
    goto :goto_9

    .line 230
    :cond_7
    :try_start_3
    iget-object v4, v5, Ls40;->a:Ljava/util/ArrayList;

    .line 231
    .line 232
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 233
    .line 234
    .line 235
    move-result-object v4

    .line 236
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 237
    .line 238
    .line 239
    move-result v6

    .line 240
    if-eqz v6, :cond_a

    .line 241
    .line 242
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v6

    .line 246
    check-cast v6, Lh98;

    .line 247
    .line 248
    iget-object v10, v6, Lh98;->a:Ljava/lang/Class;

    .line 249
    .line 250
    invoke-virtual {v10, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 251
    .line 252
    .line 253
    move-result v10

    .line 254
    if-eqz v10, :cond_8

    .line 255
    .line 256
    iget-object v10, v6, Lh98;->b:Ljava/lang/Class;

    .line 257
    .line 258
    invoke-virtual {v3, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 259
    .line 260
    .line 261
    move-result v10

    .line 262
    if-eqz v10, :cond_8

    .line 263
    .line 264
    move v10, v15

    .line 265
    goto :goto_7

    .line 266
    :cond_8
    const/4 v10, 0x0

    .line 267
    :goto_7
    if-eqz v10, :cond_9

    .line 268
    .line 269
    iget-object v4, v6, Lh98;->c:Lam6;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 270
    .line 271
    monitor-exit v5

    .line 272
    goto :goto_5

    .line 273
    :goto_8
    new-instance v0, Lud2;

    .line 274
    .line 275
    iget-object v6, v7, Lmi6;->j:Ll22;

    .line 276
    .line 277
    invoke-direct/range {v0 .. v6}, Lud2;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;Lam6;Ld36;)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    move-object/from16 v1, p1

    .line 284
    .line 285
    const/4 v10, 0x0

    .line 286
    goto/16 :goto_1

    .line 287
    .line 288
    :cond_9
    move-object/from16 v1, p1

    .line 289
    .line 290
    goto :goto_6

    .line 291
    :cond_a
    :try_start_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 292
    .line 293
    new-instance v1, Ljava/lang/StringBuilder;

    .line 294
    .line 295
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 296
    .line 297
    .line 298
    const-string v4, "No transcoder registered to transcode from "

    .line 299
    .line 300
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    const-string v2, " to "

    .line 307
    .line 308
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v1

    .line 318
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    throw v0

    .line 322
    :goto_9
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 323
    throw v0

    .line 324
    :goto_a
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 325
    throw v0

    .line 326
    :cond_b
    move-object/from16 v1, p1

    .line 327
    .line 328
    goto/16 :goto_0

    .line 329
    .line 330
    :cond_c
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    .line 331
    .line 332
    .line 333
    move-result v0

    .line 334
    if-eqz v0, :cond_d

    .line 335
    .line 336
    move-object/from16 v1, p1

    .line 337
    .line 338
    move-object v2, v8

    .line 339
    move-object v3, v9

    .line 340
    const/4 v10, 0x0

    .line 341
    goto :goto_b

    .line 342
    :cond_d
    new-instance v0, Laz4;

    .line 343
    .line 344
    iget-object v5, v7, Lmi6;->j:Ll22;

    .line 345
    .line 346
    move-object/from16 v1, p1

    .line 347
    .line 348
    move-object v2, v8

    .line 349
    move-object v3, v9

    .line 350
    move-object v4, v11

    .line 351
    invoke-direct/range {v0 .. v5}, Laz4;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;Ld36;)V

    .line 352
    .line 353
    .line 354
    move-object v10, v0

    .line 355
    :goto_b
    iget-object v0, v7, Lmi6;->i:Lbz4;

    .line 356
    .line 357
    iget-object v5, v0, Lbz4;->a:Lk50;

    .line 358
    .line 359
    monitor-enter v5

    .line 360
    :try_start_6
    iget-object v0, v0, Lbz4;->a:Lk50;

    .line 361
    .line 362
    new-instance v4, Lrh5;

    .line 363
    .line 364
    invoke-direct {v4, v1, v2, v3}, Lrh5;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 365
    .line 366
    .line 367
    if-eqz v10, :cond_e

    .line 368
    .line 369
    move-object v1, v10

    .line 370
    goto :goto_c

    .line 371
    :cond_e
    sget-object v1, Lbz4;->c:Laz4;

    .line 372
    .line 373
    :goto_c
    invoke-virtual {v0, v4, v1}, Ldg7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    monitor-exit v5

    .line 377
    return-object v10

    .line 378
    :catchall_2
    move-exception v0

    .line 379
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 380
    throw v0

    .line 381
    :cond_f
    return-object v4

    .line 382
    :catchall_3
    move-exception v0

    .line 383
    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 384
    throw v0
.end method

.method public final d(Ljava/lang/Object;)Lzv2;
    .locals 4

    .line 1
    iget-object p0, p0, Lqd2;->c:Ldy3;

    .line 2
    .line 3
    invoke-virtual {p0}, Ldy3;->a()Lmi6;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    iget-object p0, p0, Lmi6;->b:Lcw2;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    monitor-enter p0

    .line 14
    :try_start_0
    iget-object v1, p0, Lcw2;->a:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Lbw2;

    .line 31
    .line 32
    iget-object v3, v2, Lbw2;->a:Ljava/lang/Class;

    .line 33
    .line 34
    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_0

    .line 39
    .line 40
    iget-object v0, v2, Lbw2;->b:Lzv2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    monitor-exit p0

    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    monitor-exit p0

    .line 47
    const/4 v0, 0x0

    .line 48
    :goto_0
    if-eqz v0, :cond_2

    .line 49
    .line 50
    return-object v0

    .line 51
    :cond_2
    new-instance p0, Lli6;

    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    const-string v0, "Failed to find source encoder for data class: "

    .line 58
    .line 59
    invoke-static {p1, v0}, Lfz5;->k(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw p0

    .line 67
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    throw p1
.end method

.method public final e(Ljava/lang/Class;)Ll98;
    .locals 4

    .line 1
    iget-object v0, p0, Lqd2;->j:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ll98;

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, Lqd2;->j:Ljava/util/Map;

    .line 12
    .line 13
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Ljava/util/Map$Entry;

    .line 32
    .line 33
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Ljava/lang/Class;

    .line 38
    .line 39
    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_0

    .line 44
    .line 45
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Ll98;

    .line 50
    .line 51
    :cond_1
    if-nez v0, :cond_4

    .line 52
    .line 53
    iget-object v0, p0, Lqd2;->j:Ljava/util/Map;

    .line 54
    .line 55
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_3

    .line 60
    .line 61
    iget-boolean p0, p0, Lqd2;->q:Z

    .line 62
    .line 63
    if-nez p0, :cond_2

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    const-string p0, "Missing transformation for "

    .line 67
    .line 68
    const-string v0, ". If you wish to ignore unknown resource types, use the optional transformation methods."

    .line 69
    .line 70
    invoke-static {p1, p0, v0}, Lfz5;->l(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    const/4 p0, 0x0

    .line 78
    return-object p0

    .line 79
    :cond_3
    :goto_0
    sget-object p0, Lge8;->b:Lge8;

    .line 80
    .line 81
    return-object p0

    .line 82
    :cond_4
    return-object v0
.end method
