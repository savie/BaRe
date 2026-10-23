.class public final Lmv;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lji;

.field public final b:Lq63;

.field public final c:Z

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Lah;

.field public final g:Ljava/util/LinkedHashSet;

.field public final h:Ljh5;


# direct methods
.method public constructor <init>(Lxw;Lji;Lq63;ZLjava/lang/String;Ljava/lang/String;Lah;Lkw;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p2, p0, Lmv;->a:Lji;

    .line 11
    .line 12
    iput-object p3, p0, Lmv;->b:Lq63;

    .line 13
    .line 14
    iput-boolean p4, p0, Lmv;->c:Z

    .line 15
    .line 16
    iput-object p5, p0, Lmv;->d:Ljava/lang/String;

    .line 17
    .line 18
    iput-object p6, p0, Lmv;->e:Ljava/lang/String;

    .line 19
    .line 20
    iput-object p7, p0, Lmv;->f:Lah;

    .line 21
    .line 22
    new-instance p1, Ljava/util/LinkedHashSet;

    .line 23
    .line 24
    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lmv;->g:Ljava/util/LinkedHashSet;

    .line 28
    .line 29
    new-instance p1, Ljh5;

    .line 30
    .line 31
    invoke-direct {p1, p8}, Ljh5;-><init>(Lkw;)V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Lmv;->h:Ljh5;

    .line 35
    .line 36
    return-void
.end method

.method public static a(Lyw;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Lsg;

    .line 4
    .line 5
    iget-object v2, v0, Lyw;->a:Lq63;

    .line 6
    .line 7
    iget-wide v3, v0, Lyw;->h:J

    .line 8
    .line 9
    const-string v5, "base"

    .line 10
    .line 11
    iget-wide v6, v0, Lyw;->e:J

    .line 12
    .line 13
    invoke-direct {v1, v6, v7, v2, v5}, Lsg;-><init>(JLq63;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    filled-new-array {v1}, [Lsg;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Lfl1;->C0([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    goto/16 :goto_3

    .line 31
    .line 32
    :cond_0
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const-wide/16 v5, 0x0

    .line 37
    .line 38
    move-wide v7, v5

    .line 39
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_1

    .line 44
    .line 45
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    check-cast v2, Lq63;

    .line 50
    .line 51
    invoke-virtual {v2}, Lq63;->A()J

    .line 52
    .line 53
    .line 54
    move-result-wide v9

    .line 55
    add-long/2addr v7, v9

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    const-wide/16 v1, 0x1

    .line 58
    .line 59
    cmp-long v9, v7, v1

    .line 60
    .line 61
    if-gez v9, :cond_2

    .line 62
    .line 63
    move-wide v7, v1

    .line 64
    :cond_2
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    const/4 v2, 0x0

    .line 69
    move-wide v9, v5

    .line 70
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    .line 72
    .line 73
    move-result v11

    .line 74
    if-eqz v11, :cond_7

    .line 75
    .line 76
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v11

    .line 80
    add-int/lit8 v12, v2, 0x1

    .line 81
    .line 82
    if-ltz v2, :cond_6

    .line 83
    .line 84
    check-cast v11, Lq63;

    .line 85
    .line 86
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    .line 87
    .line 88
    .line 89
    move-result v13

    .line 90
    add-int/lit8 v13, v13, -0x1

    .line 91
    .line 92
    if-ne v2, v13, :cond_3

    .line 93
    .line 94
    sub-long v13, v3, v9

    .line 95
    .line 96
    cmp-long v2, v13, v5

    .line 97
    .line 98
    if-gez v2, :cond_5

    .line 99
    .line 100
    move-wide v13, v5

    .line 101
    goto :goto_2

    .line 102
    :cond_3
    invoke-virtual {v11}, Lq63;->A()J

    .line 103
    .line 104
    .line 105
    move-result-wide v13

    .line 106
    long-to-float v2, v13

    .line 107
    long-to-float v13, v7

    .line 108
    div-float/2addr v2, v13

    .line 109
    long-to-float v13, v3

    .line 110
    mul-float/2addr v2, v13

    .line 111
    float-to-double v13, v2

    .line 112
    invoke-static {v13, v14}, Ltu0;->w(D)J

    .line 113
    .line 114
    .line 115
    move-result-wide v13

    .line 116
    cmp-long v2, v13, v5

    .line 117
    .line 118
    if-gez v2, :cond_4

    .line 119
    .line 120
    move-wide v13, v5

    .line 121
    :cond_4
    add-long/2addr v9, v13

    .line 122
    :cond_5
    :goto_2
    new-instance v2, Lsg;

    .line 123
    .line 124
    invoke-virtual {v11}, Lq63;->p()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v15

    .line 128
    invoke-direct {v2, v13, v14, v11, v15}, Lsg;-><init>(JLq63;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move v2, v12

    .line 135
    goto :goto_1

    .line 136
    :cond_6
    invoke-static {}, Lfl1;->F0()V

    .line 137
    .line 138
    .line 139
    const/4 v0, 0x0

    .line 140
    throw v0

    .line 141
    :cond_7
    :goto_3
    return-object v0
.end method

.method public static b(Lgq;Ljava/util/List;)Ljava/util/List;
    .locals 29

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    if-eqz v1, :cond_c

    .line 5
    .line 6
    iget-object v0, v1, Lgq;->a:Lji;

    .line 7
    .line 8
    const-string v3, "Preserved downgrade backup archive: "

    .line 9
    .line 10
    iget-object v4, v1, Lgq;->c:Lq63;

    .line 11
    .line 12
    const-string v5, "Failed to restore downgrade backup archive; preserving "

    .line 13
    .line 14
    const-string v6, "App is not installed after downgrade attempt; preserving "

    .line 15
    .line 16
    sget-object v7, Lvr6;->INSTANCE:Lvr6;

    .line 17
    .line 18
    const/4 v11, 0x4

    .line 19
    const/4 v12, 0x0

    .line 20
    const-string v8, "AppDowngradeTask"

    .line 21
    .line 22
    const-string v9, "Executing post-downgrade actions"

    .line 23
    .line 24
    const/4 v10, 0x0

    .line 25
    invoke-static/range {v7 .. v12}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    sget-object v13, Lfq;->ArchivePreservedAppNotInstalled:Lfq;

    .line 29
    .line 30
    const/4 v14, 0x1

    .line 31
    const/4 v15, 0x0

    .line 32
    const/4 v8, 0x4

    .line 33
    :try_start_0
    invoke-virtual {v0}, Lji;->checkInstalled()Z

    .line 34
    .line 35
    .line 36
    move-result v16
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 37
    if-nez v16, :cond_0

    .line 38
    .line 39
    move v9, v8

    .line 40
    :try_start_1
    const-string v8, "AppDowngradeTask"

    .line 41
    .line 42
    invoke-virtual {v4}, Lq63;->v()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 50
    const/4 v11, 0x4

    .line 51
    const/4 v12, 0x0

    .line 52
    const/4 v10, 0x0

    .line 53
    move v6, v9

    .line 54
    move-object v9, v0

    .line 55
    :try_start_2
    invoke-static/range {v7 .. v12}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4}, Lq63;->v()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v9

    .line 66
    const/4 v11, 0x4

    .line 67
    const/4 v12, 0x0

    .line 68
    const-string v8, "AppDowngradeTask"

    .line 69
    .line 70
    const/4 v10, 0x0

    .line 71
    invoke-static/range {v7 .. v12}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    iget-object v0, v1, Lgq;->d:Ljava/util/ArrayList;

    .line 75
    .line 76
    if-eqz v0, :cond_4

    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-eqz v1, :cond_4

    .line 87
    .line 88
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    check-cast v1, Ljr7;

    .line 93
    .line 94
    new-instance v3, Ljr7;

    .line 95
    .line 96
    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v7

    .line 111
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 112
    .line 113
    .line 114
    move-result v7

    .line 115
    sub-int/2addr v7, v6

    .line 116
    invoke-virtual {v5, v15, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    invoke-direct {v3, v4, v5}, Ljr7;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1, v3}, Ljr7;->renameTo(Ljava/io/File;)Z

    .line 124
    .line 125
    .line 126
    goto :goto_0

    .line 127
    :catchall_0
    move-exception v0

    .line 128
    :goto_1
    move v14, v15

    .line 129
    goto/16 :goto_9

    .line 130
    .line 131
    :catch_0
    move-exception v0

    .line 132
    :goto_2
    move-object v10, v0

    .line 133
    move/from16 v17, v15

    .line 134
    .line 135
    goto/16 :goto_5

    .line 136
    .line 137
    :catchall_1
    move-exception v0

    .line 138
    move v6, v9

    .line 139
    goto :goto_1

    .line 140
    :catch_1
    move-exception v0

    .line 141
    move v6, v9

    .line 142
    goto :goto_2

    .line 143
    :cond_0
    move v6, v8

    .line 144
    :try_start_3
    sget-object v8, Lg00;->a:Lg00;

    .line 145
    .line 146
    invoke-virtual {v0}, Lji;->getDataDir()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v8

    .line 150
    invoke-static {v8}, Lg00;->u(Ljava/lang/String;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v8

    .line 154
    sget-object v9, Lmz6;->a:Ljava/util/HashSet;

    .line 155
    .line 156
    new-instance v17, Ljd0;

    .line 157
    .line 158
    iget-object v9, v1, Lgq;->c:Lq63;

    .line 159
    .line 160
    new-instance v10, Lq63;

    .line 161
    .line 162
    iget-object v11, v1, Lgq;->b:Ljr7;

    .line 163
    .line 164
    invoke-virtual {v11}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v11

    .line 168
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 169
    .line 170
    .line 171
    invoke-direct {v10, v11, v6}, Lq63;-><init>(Ljava/lang/String;I)V

    .line 172
    .line 173
    .line 174
    sget-object v21, Liu;->DATA:Liu;

    .line 175
    .line 176
    sget-object v22, Lf27;->RootFidelity:Lf27;

    .line 177
    .line 178
    sget-object v25, Liz6;->Root:Liz6;

    .line 179
    .line 180
    const/16 v27, 0x0

    .line 181
    .line 182
    const/16 v28, 0x340

    .line 183
    .line 184
    const/16 v20, 0x0

    .line 185
    .line 186
    const/16 v23, 0x0

    .line 187
    .line 188
    const/16 v24, 0x0

    .line 189
    .line 190
    const/16 v26, 0x0

    .line 191
    .line 192
    move-object/from16 v18, v9

    .line 193
    .line 194
    move-object/from16 v19, v10

    .line 195
    .line 196
    invoke-direct/range {v17 .. v28}, Ljd0;-><init>(Lq63;Lq63;Ljava/lang/String;Liu;Lf27;[CLjava/util/List;Liz6;Lbt3;Lqo6;I)V

    .line 197
    .line 198
    .line 199
    invoke-static/range {v17 .. v17}, Lmz6;->f(Ljd0;)Ljz6;

    .line 200
    .line 201
    .line 202
    invoke-static {v0, v2, v8, v15}, Lg00;->e(Lji;Ljava/lang/Integer;Ljava/lang/String;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 203
    .line 204
    .line 205
    :try_start_4
    sget-object v13, Lfq;->Restored:Lfq;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 206
    .line 207
    if-eqz v16, :cond_1

    .line 208
    .line 209
    invoke-virtual {v4}, Lq63;->f()Z

    .line 210
    .line 211
    .line 212
    goto :goto_3

    .line 213
    :cond_1
    invoke-virtual {v4}, Lq63;->v()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v9

    .line 221
    const/4 v11, 0x4

    .line 222
    const/4 v12, 0x0

    .line 223
    const-string v8, "AppDowngradeTask"

    .line 224
    .line 225
    const/4 v10, 0x0

    .line 226
    invoke-static/range {v7 .. v12}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 227
    .line 228
    .line 229
    :goto_3
    iget-object v0, v1, Lgq;->d:Ljava/util/ArrayList;

    .line 230
    .line 231
    if-eqz v0, :cond_4

    .line 232
    .line 233
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 238
    .line 239
    .line 240
    move-result v1

    .line 241
    if-eqz v1, :cond_4

    .line 242
    .line 243
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    check-cast v1, Ljr7;

    .line 248
    .line 249
    new-instance v3, Ljr7;

    .line 250
    .line 251
    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v4

    .line 255
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v5

    .line 259
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v7

    .line 266
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 267
    .line 268
    .line 269
    move-result v7

    .line 270
    sub-int/2addr v7, v6

    .line 271
    invoke-virtual {v5, v15, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v5

    .line 275
    invoke-direct {v3, v4, v5}, Ljr7;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v1, v3}, Ljr7;->renameTo(Ljava/io/File;)Z

    .line 279
    .line 280
    .line 281
    goto :goto_4

    .line 282
    :catchall_2
    move-exception v0

    .line 283
    goto/16 :goto_9

    .line 284
    .line 285
    :catch_2
    move-exception v0

    .line 286
    move-object v10, v0

    .line 287
    move/from16 v17, v14

    .line 288
    .line 289
    goto :goto_5

    .line 290
    :catchall_3
    move-exception v0

    .line 291
    move v6, v8

    .line 292
    move v14, v15

    .line 293
    move/from16 v16, v14

    .line 294
    .line 295
    goto/16 :goto_9

    .line 296
    .line 297
    :catch_3
    move-exception v0

    .line 298
    move v6, v8

    .line 299
    move-object v10, v0

    .line 300
    move/from16 v16, v15

    .line 301
    .line 302
    move/from16 v17, v16

    .line 303
    .line 304
    :goto_5
    :try_start_5
    sget-object v0, Lfq;->ArchivePreservedRestoreFailed:Lfq;

    .line 305
    .line 306
    sget-object v18, Lvr6;->INSTANCE:Lvr6;

    .line 307
    .line 308
    const-string v8, "AppDowngradeTask"

    .line 309
    .line 310
    invoke-virtual {v4}, Lq63;->v()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v7

    .line 314
    invoke-virtual {v5, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v9

    .line 318
    const/16 v12, 0x8

    .line 319
    .line 320
    const/4 v13, 0x0

    .line 321
    const/4 v11, 0x0

    .line 322
    move-object/from16 v7, v18

    .line 323
    .line 324
    invoke-static/range {v7 .. v13}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 325
    .line 326
    .line 327
    if-eqz v16, :cond_2

    .line 328
    .line 329
    if-eqz v17, :cond_2

    .line 330
    .line 331
    invoke-virtual {v4}, Lq63;->f()Z

    .line 332
    .line 333
    .line 334
    goto :goto_6

    .line 335
    :cond_2
    invoke-virtual {v4}, Lq63;->v()Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v4

    .line 339
    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v20

    .line 343
    const/16 v22, 0x4

    .line 344
    .line 345
    const/16 v23, 0x0

    .line 346
    .line 347
    const-string v19, "AppDowngradeTask"

    .line 348
    .line 349
    const/16 v21, 0x0

    .line 350
    .line 351
    invoke-static/range {v18 .. v23}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 352
    .line 353
    .line 354
    :goto_6
    iget-object v1, v1, Lgq;->d:Ljava/util/ArrayList;

    .line 355
    .line 356
    if-eqz v1, :cond_3

    .line 357
    .line 358
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 359
    .line 360
    .line 361
    move-result-object v1

    .line 362
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 363
    .line 364
    .line 365
    move-result v3

    .line 366
    if-eqz v3, :cond_3

    .line 367
    .line 368
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 369
    .line 370
    .line 371
    move-result-object v3

    .line 372
    check-cast v3, Ljr7;

    .line 373
    .line 374
    new-instance v4, Ljr7;

    .line 375
    .line 376
    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v5

    .line 380
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v7

    .line 384
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 385
    .line 386
    .line 387
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v8

    .line 391
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 392
    .line 393
    .line 394
    move-result v8

    .line 395
    sub-int/2addr v8, v6

    .line 396
    invoke-virtual {v7, v15, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object v7

    .line 400
    invoke-direct {v4, v5, v7}, Ljr7;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    .line 402
    .line 403
    invoke-virtual {v3, v4}, Ljr7;->renameTo(Ljava/io/File;)Z

    .line 404
    .line 405
    .line 406
    goto :goto_7

    .line 407
    :cond_3
    move-object v13, v0

    .line 408
    :cond_4
    if-nez v13, :cond_5

    .line 409
    .line 410
    goto/16 :goto_c

    .line 411
    .line 412
    :cond_5
    invoke-static/range {p1 .. p1}, Ljd4;->v(Ljava/util/List;)Z

    .line 413
    .line 414
    .line 415
    move-result v0

    .line 416
    if-nez v0, :cond_c

    .line 417
    .line 418
    sget-object v0, Lfq;->Restored:Lfq;

    .line 419
    .line 420
    if-ne v13, v0, :cond_6

    .line 421
    .line 422
    goto/16 :goto_c

    .line 423
    .line 424
    :cond_6
    sget-object v0, Llv;->a:[I

    .line 425
    .line 426
    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    .line 427
    .line 428
    .line 429
    move-result v1

    .line 430
    aget v0, v0, v1

    .line 431
    .line 432
    if-eq v0, v14, :cond_9

    .line 433
    .line 434
    const/4 v1, 0x2

    .line 435
    if-eq v0, v1, :cond_8

    .line 436
    .line 437
    const/4 v1, 0x3

    .line 438
    if-ne v0, v1, :cond_7

    .line 439
    .line 440
    const-string v0, "Failure [Failed to restore downgrade backup archive; preserved archive]"

    .line 441
    .line 442
    goto :goto_8

    .line 443
    :cond_7
    invoke-static {}, Lq;->j()V

    .line 444
    .line 445
    .line 446
    return-object v2

    .line 447
    :cond_8
    const-string v0, "Failure [App was not installed after downgrade attempt; preserved downgrade backup archive]"

    .line 448
    .line 449
    :goto_8
    invoke-static {v0}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 450
    .line 451
    .line 452
    move-result-object v0

    .line 453
    return-object v0

    .line 454
    :cond_9
    const-string v0, "Handled above"

    .line 455
    .line 456
    invoke-static {v0}, Ll0;->e(Ljava/lang/String;)V

    .line 457
    .line 458
    .line 459
    return-object v2

    .line 460
    :catchall_4
    move-exception v0

    .line 461
    move/from16 v14, v17

    .line 462
    .line 463
    :goto_9
    if-eqz v16, :cond_a

    .line 464
    .line 465
    if-eqz v14, :cond_a

    .line 466
    .line 467
    invoke-virtual {v4}, Lq63;->f()Z

    .line 468
    .line 469
    .line 470
    goto :goto_a

    .line 471
    :cond_a
    sget-object v7, Lvr6;->INSTANCE:Lvr6;

    .line 472
    .line 473
    invoke-virtual {v4}, Lq63;->v()Ljava/lang/String;

    .line 474
    .line 475
    .line 476
    move-result-object v2

    .line 477
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 478
    .line 479
    .line 480
    move-result-object v9

    .line 481
    const/4 v11, 0x4

    .line 482
    const/4 v12, 0x0

    .line 483
    const-string v8, "AppDowngradeTask"

    .line 484
    .line 485
    const/4 v10, 0x0

    .line 486
    invoke-static/range {v7 .. v12}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 487
    .line 488
    .line 489
    :goto_a
    iget-object v1, v1, Lgq;->d:Ljava/util/ArrayList;

    .line 490
    .line 491
    if-eqz v1, :cond_b

    .line 492
    .line 493
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 494
    .line 495
    .line 496
    move-result-object v1

    .line 497
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 498
    .line 499
    .line 500
    move-result v2

    .line 501
    if-eqz v2, :cond_b

    .line 502
    .line 503
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 504
    .line 505
    .line 506
    move-result-object v2

    .line 507
    check-cast v2, Ljr7;

    .line 508
    .line 509
    new-instance v3, Ljr7;

    .line 510
    .line 511
    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 512
    .line 513
    .line 514
    move-result-object v4

    .line 515
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 516
    .line 517
    .line 518
    move-result-object v5

    .line 519
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 520
    .line 521
    .line 522
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 523
    .line 524
    .line 525
    move-result-object v7

    .line 526
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 527
    .line 528
    .line 529
    move-result v7

    .line 530
    sub-int/2addr v7, v6

    .line 531
    invoke-virtual {v5, v15, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 532
    .line 533
    .line 534
    move-result-object v5

    .line 535
    invoke-direct {v3, v4, v5}, Ljr7;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    .line 537
    .line 538
    invoke-virtual {v2, v3}, Ljr7;->renameTo(Ljava/io/File;)Z

    .line 539
    .line 540
    .line 541
    goto :goto_b

    .line 542
    :cond_b
    throw v0

    .line 543
    :cond_c
    :goto_c
    return-object v2
.end method


# virtual methods
.method public final c(Lyw;Lpe4;J)Ljava/util/List;
    .locals 11

    .line 1
    iget-object v0, p1, Lyw;->a:Lq63;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lng;->a(Lq63;Z)Lrg;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    invoke-virtual {v2}, Lrg;->b()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    invoke-virtual {p2}, Lpe4;->v()Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    sget-object v4, Lvr6;->INSTANCE:Lvr6;

    .line 21
    .line 22
    const/4 v8, 0x4

    .line 23
    const/4 v9, 0x0

    .line 24
    const-string v5, "AppRestoreHelper"

    .line 25
    .line 26
    const-string v6, "Splits backup exists but APK doesn\'t seem to require splits, installing anyway..."

    .line 27
    .line 28
    const/4 v7, 0x0

    .line 29
    invoke-static/range {v4 .. v9}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    if-nez v3, :cond_1

    .line 33
    .line 34
    sget-object p0, Lov2;->a:Lov2;

    .line 35
    .line 36
    return-object p0

    .line 37
    :cond_1
    invoke-static {v0, v1}, Lng;->a(Lq63;Z)Lrg;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lrg;->c()J

    .line 42
    .line 43
    .line 44
    move-result-wide v0

    .line 45
    const/4 v2, 0x0

    .line 46
    iget-object v3, p0, Lmv;->b:Lq63;

    .line 47
    .line 48
    if-eqz v3, :cond_9

    .line 49
    .line 50
    instance-of v4, p2, Ljv;

    .line 51
    .line 52
    if-eqz v4, :cond_6

    .line 53
    .line 54
    new-instance v6, Lq63;

    .line 55
    .line 56
    const-string v4, "splits"

    .line 57
    .line 58
    const/4 v5, 0x2

    .line 59
    invoke-direct {v6, v5, v3, v4}, Lq63;-><init>(ILq63;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v6}, Lq63;->j()Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-eqz v3, :cond_3

    .line 67
    .line 68
    invoke-virtual {v6}, Lq63;->h()Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-eqz v3, :cond_2

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    const-string p0, "Failed to clean splits dir"

    .line 76
    .line 77
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    return-object v2

    .line 81
    :cond_3
    :goto_0
    invoke-static {v6}, Lq63;->E(Lq63;)Z

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    if-eqz v3, :cond_5

    .line 86
    .line 87
    check-cast p2, Ljv;

    .line 88
    .line 89
    iget-object v5, p2, Ljv;->m:Lq63;

    .line 90
    .line 91
    iget-boolean v7, p1, Lyw;->c:Z

    .line 92
    .line 93
    new-instance v9, Lfv;

    .line 94
    .line 95
    invoke-direct {v9, p1, p0, p3, p4}, Lfv;-><init>(Lyw;Lmv;J)V

    .line 96
    .line 97
    .line 98
    new-instance v10, Lgv;

    .line 99
    .line 100
    invoke-direct {v10, p1, p0, p3, p4}, Lgv;-><init>(Lyw;Lmv;J)V

    .line 101
    .line 102
    .line 103
    iget-object v8, p0, Lmv;->f:Lah;

    .line 104
    .line 105
    invoke-static/range {v5 .. v10}, Lzg;->a(Lq63;Lq63;ZLbt3;Lfv;Lgv;)Ljava/util/List;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    if-nez p1, :cond_4

    .line 110
    .line 111
    return-object v2

    .line 112
    :cond_4
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    invoke-virtual {p0, p2, p1}, Lmv;->g(Ljava/lang/Long;Ljava/util/List;)Ljava/util/ArrayList;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    return-object p0

    .line 121
    :cond_5
    const-string p0, "Failed to create splits dir"

    .line 122
    .line 123
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    return-object v2

    .line 127
    :cond_6
    instance-of p1, p2, Lkv;

    .line 128
    .line 129
    if-eqz p1, :cond_8

    .line 130
    .line 131
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    check-cast p2, Lkv;

    .line 136
    .line 137
    iget-object p2, p2, Lkv;->m:Ljava/util/ArrayList;

    .line 138
    .line 139
    new-instance p3, Ljava/util/ArrayList;

    .line 140
    .line 141
    const/16 p4, 0xa

    .line 142
    .line 143
    invoke-static {p2, p4}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 144
    .line 145
    .line 146
    move-result p4

    .line 147
    invoke-direct {p3, p4}, Ljava/util/ArrayList;-><init>(I)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 151
    .line 152
    .line 153
    move-result-object p2

    .line 154
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 155
    .line 156
    .line 157
    move-result p4

    .line 158
    if-eqz p4, :cond_7

    .line 159
    .line 160
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object p4

    .line 164
    check-cast p4, Ljr7;

    .line 165
    .line 166
    new-instance v0, Lq63;

    .line 167
    .line 168
    invoke-virtual {p4}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p4

    .line 172
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 173
    .line 174
    .line 175
    const/4 v1, 0x1

    .line 176
    invoke-direct {v0, p4, v1}, Lq63;-><init>(Ljava/lang/String;I)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    goto :goto_1

    .line 183
    :cond_7
    invoke-virtual {p0, p1, p3}, Lmv;->g(Ljava/lang/Long;Ljava/util/List;)Ljava/util/ArrayList;

    .line 184
    .line 185
    .line 186
    move-result-object p0

    .line 187
    return-object p0

    .line 188
    :cond_8
    invoke-static {}, Lq;->j()V

    .line 189
    .line 190
    .line 191
    return-object v2

    .line 192
    :cond_9
    const-string p0, "Invalid splitsWorkingDir: "

    .line 193
    .line 194
    invoke-static {v3, p0}, Lxs1;->i(Lq63;Ljava/lang/String;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p0

    .line 198
    invoke-static {p0}, Lg84;->f(Ljava/lang/Object;)V

    .line 199
    .line 200
    .line 201
    return-object v2
.end method

.method public final d(J)V
    .locals 3

    .line 1
    iget-object p0, p0, Lmv;->h:Ljh5;

    .line 2
    .line 3
    iget-wide v0, p0, Ljh5;->b:J

    .line 4
    .line 5
    cmp-long v2, p1, v0

    .line 6
    .line 7
    if-gez v2, :cond_0

    .line 8
    .line 9
    move-wide p1, v0

    .line 10
    :cond_0
    iput-wide p1, p0, Ljh5;->b:J

    .line 11
    .line 12
    iget-object p0, p0, Ljh5;->a:Lkw;

    .line 13
    .line 14
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p0, p1}, Lkw;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final e(Lyw;Lpe4;Z)Ljava/util/List;
    .locals 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    sget-boolean v0, Lmp6;->g:Z

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    if-eqz p3, :cond_2

    .line 10
    .line 11
    const-string v0, "in_place_apk_downgrades"

    .line 12
    .line 13
    :try_start_0
    sget-object v4, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 14
    .line 15
    if-eqz v4, :cond_0

    .line 16
    .line 17
    invoke-interface {v4, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const-string v0, "prefs"

    .line 23
    .line 24
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw v3
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    :catch_0
    move v0, v2

    .line 29
    :goto_0
    if-nez v0, :cond_2

    .line 30
    .line 31
    sget-object v0, Lg00;->a:Lg00;

    .line 32
    .line 33
    invoke-static {}, Lg00;->x()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    iget-object v0, v1, Lmv;->a:Lji;

    .line 40
    .line 41
    invoke-virtual {v0}, Lji;->isBundled()Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-nez v4, :cond_2

    .line 46
    .line 47
    invoke-virtual {v0}, Lji;->isInstalled()Z

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    if-eqz v4, :cond_2

    .line 52
    .line 53
    invoke-virtual {v0}, Lji;->getDataDir()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    if-eqz v4, :cond_2

    .line 58
    .line 59
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-nez v4, :cond_1

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    new-instance v4, Lgq;

    .line 67
    .line 68
    invoke-direct {v4, v0}, Lgq;-><init>(Lji;)V

    .line 69
    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_2
    :goto_1
    move-object v4, v3

    .line 73
    :goto_2
    if-eqz v4, :cond_b

    .line 74
    .line 75
    iget-object v0, v4, Lgq;->b:Ljr7;

    .line 76
    .line 77
    iget-object v5, v4, Lgq;->a:Lji;

    .line 78
    .line 79
    sget-object v6, Lvr6;->INSTANCE:Lvr6;

    .line 80
    .line 81
    const/4 v10, 0x4

    .line 82
    const/4 v11, 0x0

    .line 83
    const-string v7, "AppDowngradeTask"

    .line 84
    .line 85
    const-string v8, "Executing pre-downgrade actions"

    .line 86
    .line 87
    const/4 v9, 0x0

    .line 88
    invoke-static/range {v6 .. v11}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    iget-object v7, v4, Lgq;->c:Lq63;

    .line 92
    .line 93
    invoke-virtual {v7}, Lq63;->f()Z

    .line 94
    .line 95
    .line 96
    :try_start_1
    sget-object v8, Lmz6;->a:Ljava/util/HashSet;

    .line 97
    .line 98
    new-instance v9, Lop3;

    .line 99
    .line 100
    iget-object v10, v4, Lgq;->c:Lq63;

    .line 101
    .line 102
    new-instance v11, Lhz6;

    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v12

    .line 108
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    new-instance v13, Lq63;

    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    const/4 v8, 0x4

    .line 121
    invoke-direct {v13, v0, v8}, Lq63;-><init>(Ljava/lang/String;I)V

    .line 122
    .line 123
    .line 124
    const/16 v16, 0x0

    .line 125
    .line 126
    const/16 v17, 0x18

    .line 127
    .line 128
    const/4 v14, 0x1

    .line 129
    const/4 v15, 0x0

    .line 130
    invoke-direct/range {v11 .. v17}, Lhz6;-><init>(Ljava/lang/String;Lq63;ZLjava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 131
    .line 132
    .line 133
    invoke-static {v11}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 134
    .line 135
    .line 136
    move-result-object v11

    .line 137
    sget-object v12, Liu;->DATA:Liu;

    .line 138
    .line 139
    sget-object v13, Lf27;->RootFidelity:Lf27;

    .line 140
    .line 141
    sget-object v14, Loy6;->j:Loy6;

    .line 142
    .line 143
    sget-object v15, Lgz6;->i:Lgz6;

    .line 144
    .line 145
    sget-object v17, Liz6;->Root:Liz6;

    .line 146
    .line 147
    const/16 v19, 0x0

    .line 148
    .line 149
    const/16 v20, 0x340

    .line 150
    .line 151
    const/16 v16, 0x0

    .line 152
    .line 153
    const/16 v18, 0x0

    .line 154
    .line 155
    invoke-direct/range {v9 .. v20}, Lop3;-><init>(Lq63;Ljava/util/List;Liu;Lf27;Lcy0;Lod2;Ljava/lang/String;Liz6;Lbt3;Lc07;I)V

    .line 156
    .line 157
    .line 158
    invoke-static {v9}, Lmz6;->b(Lop3;)Lez6;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 159
    .line 160
    .line 161
    invoke-virtual {v7}, Lq63;->j()Z

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    if-nez v0, :cond_3

    .line 166
    .line 167
    invoke-virtual {v7}, Lq63;->p()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    const-string v5, "Failed to create downgrade backup archive: "

    .line 172
    .line 173
    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v8

    .line 177
    const/4 v10, 0x4

    .line 178
    const/4 v11, 0x0

    .line 179
    const-string v7, "AppDowngradeTask"

    .line 180
    .line 181
    const/4 v9, 0x0

    .line 182
    invoke-static/range {v6 .. v11}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    goto/16 :goto_7

    .line 186
    .line 187
    :cond_3
    invoke-virtual {v5}, Lji;->getExternalDataDir()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    invoke-virtual {v5}, Lji;->getExpansionDir()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    invoke-virtual {v5}, Lji;->getMediaDir()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v6

    .line 199
    filled-new-array {v0, v2, v6}, [Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    invoke-static {v0}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    new-instance v2, Ljava/util/ArrayList;

    .line 208
    .line 209
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .line 211
    .line 212
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    :cond_4
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 217
    .line 218
    .line 219
    move-result v6

    .line 220
    const-string v7, "[ -e @@ ]"

    .line 221
    .line 222
    if-eqz v6, :cond_6

    .line 223
    .line 224
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v6

    .line 228
    check-cast v6, Ljava/lang/String;

    .line 229
    .line 230
    new-instance v8, Ljr7;

    .line 231
    .line 232
    invoke-direct {v8, v6}, Ljr7;-><init>(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v8, v7}, Ljr7;->b(Ljava/lang/String;)Z

    .line 236
    .line 237
    .line 238
    move-result v6

    .line 239
    if-eqz v6, :cond_5

    .line 240
    .line 241
    goto :goto_4

    .line 242
    :cond_5
    move-object v8, v3

    .line 243
    :goto_4
    if-eqz v8, :cond_4

    .line 244
    .line 245
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    goto :goto_3

    .line 249
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    .line 250
    .line 251
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 255
    .line 256
    .line 257
    move-result-object v2

    .line 258
    :cond_7
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 259
    .line 260
    .line 261
    move-result v6

    .line 262
    if-eqz v6, :cond_9

    .line 263
    .line 264
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v6

    .line 268
    check-cast v6, Ljr7;

    .line 269
    .line 270
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v8

    .line 274
    const-string v9, ".bkp"

    .line 275
    .line 276
    invoke-static {v8, v9}, Leq3;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v8

    .line 280
    new-instance v9, Ljr7;

    .line 281
    .line 282
    invoke-virtual {v6}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v10

    .line 286
    invoke-direct {v9, v10, v8}, Ljr7;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v6, v9}, Ljr7;->renameTo(Ljava/io/File;)Z

    .line 290
    .line 291
    .line 292
    invoke-virtual {v9, v7}, Ljr7;->b(Ljava/lang/String;)Z

    .line 293
    .line 294
    .line 295
    move-result v6

    .line 296
    if-eqz v6, :cond_8

    .line 297
    .line 298
    goto :goto_6

    .line 299
    :cond_8
    move-object v9, v3

    .line 300
    :goto_6
    if-eqz v9, :cond_7

    .line 301
    .line 302
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    .line 304
    .line 305
    goto :goto_5

    .line 306
    :cond_9
    iput-object v0, v4, Lgq;->d:Ljava/util/ArrayList;

    .line 307
    .line 308
    sget-object v10, Lvr6;->INSTANCE:Lvr6;

    .line 309
    .line 310
    const/4 v14, 0x4

    .line 311
    const/4 v15, 0x0

    .line 312
    const-string v11, "AppDowngradeTask"

    .line 313
    .line 314
    const-string v12, "Uninstalling the app, to allow downgrading!"

    .line 315
    .line 316
    const/4 v13, 0x0

    .line 317
    invoke-static/range {v10 .. v15}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 318
    .line 319
    .line 320
    sget-object v0, Lg00;->a:Lg00;

    .line 321
    .line 322
    invoke-static {}, Lg00;->i()I

    .line 323
    .line 324
    .line 325
    move-result v0

    .line 326
    invoke-virtual {v5}, Lji;->isBundled()Z

    .line 327
    .line 328
    .line 329
    move-result v2

    .line 330
    if-nez v2, :cond_a

    .line 331
    .line 332
    sget-object v2, Lmp6;->a:Lmp6;

    .line 333
    .line 334
    invoke-virtual {v5}, Lji;->getPackageName()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v5

    .line 338
    const-string v6, "pm uninstall --user "

    .line 339
    .line 340
    const-string v7, " "

    .line 341
    .line 342
    invoke-static {v0, v6, v7, v5}, Lu48;->k(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    filled-new-array {v0}, [Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v0

    .line 350
    sget-object v5, Lip6;->SHIZUKU:Lip6;

    .line 351
    .line 352
    invoke-virtual {v2, v0, v5}, Lmp6;->h([Ljava/lang/String;Lip6;)Ljava/util/List;

    .line 353
    .line 354
    .line 355
    :cond_a
    const/4 v2, 0x1

    .line 356
    goto :goto_7

    .line 357
    :catch_1
    move-exception v0

    .line 358
    move-object v11, v0

    .line 359
    sget-object v8, Lvr6;->INSTANCE:Lvr6;

    .line 360
    .line 361
    const/16 v13, 0x8

    .line 362
    .line 363
    const/4 v14, 0x0

    .line 364
    const-string v9, "AppDowngradeTask"

    .line 365
    .line 366
    const-string v10, "Failed to create downgrade backup archive"

    .line 367
    .line 368
    const/4 v12, 0x0

    .line 369
    invoke-static/range {v8 .. v14}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {v7}, Lq63;->f()Z

    .line 373
    .line 374
    .line 375
    :goto_7
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 376
    .line 377
    .line 378
    move-result-object v0

    .line 379
    goto :goto_8

    .line 380
    :cond_b
    move-object v0, v3

    .line 381
    :goto_8
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 382
    .line 383
    invoke-static {v0, v2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 384
    .line 385
    .line 386
    move-result v0

    .line 387
    if-eqz v0, :cond_c

    .line 388
    .line 389
    :goto_9
    move-object/from16 v2, p1

    .line 390
    .line 391
    move-object/from16 v4, p2

    .line 392
    .line 393
    goto :goto_a

    .line 394
    :cond_c
    move-object v3, v4

    .line 395
    goto :goto_9

    .line 396
    :goto_a
    invoke-virtual {v1, v2, v4, v3}, Lmv;->f(Lyw;Lpe4;Lgq;)Ljava/util/List;

    .line 397
    .line 398
    .line 399
    move-result-object v0

    .line 400
    return-object v0
.end method

.method public final f(Lyw;Lpe4;Lgq;)Ljava/util/List;
    .locals 31

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    move-object/from16 v4, p3

    .line 8
    .line 9
    iget-wide v5, v2, Lyw;->g:J

    .line 10
    .line 11
    iget-wide v7, v2, Lyw;->f:J

    .line 12
    .line 13
    new-instance v9, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    sget-object v0, Lmp6;->a:Lmp6;

    .line 19
    .line 20
    sget-boolean v0, Lmp6;->g:Z

    .line 21
    .line 22
    invoke-static {}, Lmp6;->f()Z

    .line 23
    .line 24
    .line 25
    move-result v10

    .line 26
    iget-object v12, v1, Lmv;->d:Ljava/lang/String;

    .line 27
    .line 28
    if-eqz v12, :cond_0

    .line 29
    .line 30
    invoke-static {v12}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 31
    .line 32
    .line 33
    move-result-object v13

    .line 34
    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v13

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 v13, 0x0

    .line 40
    :goto_0
    const-string v14, ""

    .line 41
    .line 42
    if-nez v13, :cond_1

    .line 43
    .line 44
    move-object v13, v14

    .line 45
    :cond_1
    const-string v15, "com.android.vending"

    .line 46
    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    invoke-virtual {v13, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    sget-object v0, Ltg;->SourcePreserving:Ltg;

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    if-eqz v10, :cond_3

    .line 59
    .line 60
    sget-object v0, Ltg;->Shell:Ltg;

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_3
    sget-object v0, Ltg;->Interactive:Ltg;

    .line 64
    .line 65
    :goto_1
    sget-object v10, Ltg;->SourcePreserving:Ltg;

    .line 66
    .line 67
    const-string v13, "Failure [Failed to prepare split APKs]"

    .line 68
    .line 69
    iget-object v11, v1, Lmv;->a:Lji;

    .line 70
    .line 71
    if-ne v0, v10, :cond_11

    .line 72
    .line 73
    if-eqz v12, :cond_4

    .line 74
    .line 75
    invoke-static {v12}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    goto :goto_2

    .line 84
    :cond_4
    const/4 v0, 0x0

    .line 85
    :goto_2
    if-nez v0, :cond_5

    .line 86
    .line 87
    move-object v0, v14

    .line 88
    :cond_5
    sget-boolean v10, Lmp6;->g:Z

    .line 89
    .line 90
    if-eqz v10, :cond_6

    .line 91
    .line 92
    invoke-virtual {v0, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v10

    .line 96
    if-nez v10, :cond_7

    .line 97
    .line 98
    :cond_6
    move-wide/from16 v27, v5

    .line 99
    .line 100
    move-wide/from16 v29, v7

    .line 101
    .line 102
    goto/16 :goto_7

    .line 103
    .line 104
    :cond_7
    new-instance v10, Lkh6;

    .line 105
    .line 106
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 107
    .line 108
    .line 109
    move-wide/from16 v27, v5

    .line 110
    .line 111
    iget-wide v5, v10, Lkh6;->a:J

    .line 112
    .line 113
    invoke-virtual {v1, v2, v3, v5, v6}, Lmv;->c(Lyw;Lpe4;J)Ljava/util/List;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    if-nez v5, :cond_8

    .line 118
    .line 119
    new-instance v0, Lhv;

    .line 120
    .line 121
    invoke-static {v13}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    const/4 v6, 0x0

    .line 126
    invoke-direct {v0, v5, v6}, Lhv;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 127
    .line 128
    .line 129
    move-wide/from16 v29, v7

    .line 130
    .line 131
    goto/16 :goto_9

    .line 132
    .line 133
    :cond_8
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    .line 134
    .line 135
    .line 136
    move-result v6

    .line 137
    move-wide/from16 v29, v7

    .line 138
    .line 139
    if-nez v6, :cond_9

    .line 140
    .line 141
    iget-wide v6, v10, Lkh6;->a:J

    .line 142
    .line 143
    add-long v18, v29, v27

    .line 144
    .line 145
    add-long v6, v18, v6

    .line 146
    .line 147
    iput-wide v6, v10, Lkh6;->a:J

    .line 148
    .line 149
    invoke-virtual {v1, v6, v7}, Lmv;->d(J)V

    .line 150
    .line 151
    .line 152
    :cond_9
    invoke-static {v2, v5}, Lmv;->a(Lyw;Ljava/util/List;)Ljava/util/ArrayList;

    .line 153
    .line 154
    .line 155
    move-result-object v6

    .line 156
    :try_start_0
    sget-object v7, Lnj7;->a:Lai6;

    .line 157
    .line 158
    invoke-virtual {v11}, Lji;->getPackageName()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v19

    .line 162
    iget-object v7, v1, Lmv;->e:Ljava/lang/String;

    .line 163
    .line 164
    new-instance v8, Ljava/util/ArrayList;

    .line 165
    .line 166
    const/16 v12, 0xa

    .line 167
    .line 168
    invoke-static {v6, v12}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 169
    .line 170
    .line 171
    move-result v12

    .line 172
    invoke-direct {v8, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 176
    .line 177
    .line 178
    move-result-object v12

    .line 179
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 180
    .line 181
    .line 182
    move-result v15

    .line 183
    if-eqz v15, :cond_a

    .line 184
    .line 185
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v15

    .line 189
    check-cast v15, Lsg;

    .line 190
    .line 191
    iget-object v15, v15, Lsg;->a:Lq63;

    .line 192
    .line 193
    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    goto :goto_3

    .line 197
    :catchall_0
    move-exception v0

    .line 198
    goto :goto_4

    .line 199
    :cond_a
    move-object/from16 v23, v6

    .line 200
    .line 201
    move-object/from16 v21, v7

    .line 202
    .line 203
    iget-wide v6, v2, Lyw;->i:J

    .line 204
    .line 205
    new-instance v12, Lxs;

    .line 206
    .line 207
    const/4 v15, 0x1

    .line 208
    invoke-direct {v12, v15, v1, v10}, Lxs;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 209
    .line 210
    .line 211
    new-instance v18, Llj7;

    .line 212
    .line 213
    move-object/from16 v20, v0

    .line 214
    .line 215
    move-wide/from16 v24, v6

    .line 216
    .line 217
    move-object/from16 v22, v8

    .line 218
    .line 219
    move-object/from16 v26, v12

    .line 220
    .line 221
    invoke-direct/range {v18 .. v26}, Llj7;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/ArrayList;JLmt3;)V

    .line 222
    .line 223
    .line 224
    invoke-static/range {v18 .. v18}, Lnj7;->a(Llj7;)Ljava/util/List;

    .line 225
    .line 226
    .line 227
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    goto :goto_5

    .line 229
    :goto_4
    new-instance v6, Lbn6;

    .line 230
    .line 231
    invoke-direct {v6, v0}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 232
    .line 233
    .line 234
    move-object v0, v6

    .line 235
    :goto_5
    invoke-static {v0}, Len6;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 236
    .line 237
    .line 238
    move-result-object v21

    .line 239
    if-nez v21, :cond_b

    .line 240
    .line 241
    goto :goto_6

    .line 242
    :cond_b
    sget-object v18, Lvr6;->INSTANCE:Lvr6;

    .line 243
    .line 244
    const/16 v23, 0x8

    .line 245
    .line 246
    const/16 v24, 0x0

    .line 247
    .line 248
    const-string v19, "AppRestoreHelper"

    .line 249
    .line 250
    const-string v20, "Source-preserving install error"

    .line 251
    .line 252
    const/16 v22, 0x0

    .line 253
    .line 254
    invoke-static/range {v18 .. v24}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    if-nez v0, :cond_c

    .line 262
    .line 263
    move-object v0, v14

    .line 264
    :cond_c
    new-instance v6, Ljava/lang/StringBuilder;

    .line 265
    .line 266
    const-string v7, "Failure [Source-preserving install error: "

    .line 267
    .line 268
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    const-string v0, "]"

    .line 275
    .line 276
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    invoke-static {v0}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    :goto_6
    check-cast v0, Ljava/util/List;

    .line 288
    .line 289
    if-nez v0, :cond_d

    .line 290
    .line 291
    :goto_7
    const/4 v0, 0x0

    .line 292
    goto :goto_9

    .line 293
    :cond_d
    invoke-static {v0}, Ljd4;->v(Ljava/util/List;)Z

    .line 294
    .line 295
    .line 296
    move-result v6

    .line 297
    if-eqz v6, :cond_e

    .line 298
    .line 299
    invoke-static {v0}, Ljd4;->w(Ljava/util/List;)Z

    .line 300
    .line 301
    .line 302
    move-result v6

    .line 303
    if-eqz v6, :cond_10

    .line 304
    .line 305
    invoke-virtual {v11}, Lji;->checkInstalled()Z

    .line 306
    .line 307
    .line 308
    move-result v6

    .line 309
    if-eqz v6, :cond_10

    .line 310
    .line 311
    :cond_e
    iget-wide v6, v2, Lyw;->e:J

    .line 312
    .line 313
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    .line 314
    .line 315
    .line 316
    move-result v8

    .line 317
    move-wide/from16 v18, v6

    .line 318
    .line 319
    if-nez v8, :cond_f

    .line 320
    .line 321
    iget-wide v6, v2, Lyw;->h:J

    .line 322
    .line 323
    goto :goto_8

    .line 324
    :cond_f
    const-wide/16 v6, 0x0

    .line 325
    .line 326
    :goto_8
    add-long v6, v18, v6

    .line 327
    .line 328
    move-wide/from16 v18, v6

    .line 329
    .line 330
    iget-wide v6, v10, Lkh6;->a:J

    .line 331
    .line 332
    move-wide/from16 v20, v6

    .line 333
    .line 334
    iget-wide v6, v2, Lyw;->i:J

    .line 335
    .line 336
    add-long v6, v18, v6

    .line 337
    .line 338
    add-long v6, v6, v20

    .line 339
    .line 340
    iput-wide v6, v10, Lkh6;->a:J

    .line 341
    .line 342
    invoke-virtual {v1, v6, v7}, Lmv;->d(J)V

    .line 343
    .line 344
    .line 345
    :cond_10
    new-instance v6, Lhv;

    .line 346
    .line 347
    invoke-direct {v6, v0, v5}, Lhv;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 348
    .line 349
    .line 350
    move-object v0, v6

    .line 351
    :goto_9
    move-object v6, v0

    .line 352
    goto :goto_a

    .line 353
    :cond_11
    move-wide/from16 v27, v5

    .line 354
    .line 355
    move-wide/from16 v29, v7

    .line 356
    .line 357
    const/4 v6, 0x0

    .line 358
    :goto_a
    if-eqz v6, :cond_12

    .line 359
    .line 360
    iget-object v0, v6, Lhv;->a:Ljava/util/List;

    .line 361
    .line 362
    goto :goto_b

    .line 363
    :cond_12
    const/4 v0, 0x0

    .line 364
    :goto_b
    const-string v5, "Failure"

    .line 365
    .line 366
    if-eqz v0, :cond_20

    .line 367
    .line 368
    invoke-static {v0}, Ljd4;->v(Ljava/util/List;)Z

    .line 369
    .line 370
    .line 371
    move-result v7

    .line 372
    if-nez v7, :cond_14

    .line 373
    .line 374
    invoke-static {v4, v0}, Lmv;->b(Lgq;Ljava/util/List;)Ljava/util/List;

    .line 375
    .line 376
    .line 377
    move-result-object v1

    .line 378
    if-eqz v1, :cond_13

    .line 379
    .line 380
    return-object v1

    .line 381
    :cond_13
    return-object v0

    .line 382
    :cond_14
    invoke-static {v0}, Ljd4;->w(Ljava/util/List;)Z

    .line 383
    .line 384
    .line 385
    move-result v7

    .line 386
    if-eqz v7, :cond_18

    .line 387
    .line 388
    invoke-virtual {v11}, Lji;->checkInstalled()Z

    .line 389
    .line 390
    .line 391
    move-result v1

    .line 392
    if-nez v1, :cond_15

    .line 393
    .line 394
    move-object v12, v0

    .line 395
    const/4 v11, 0x0

    .line 396
    goto :goto_c

    .line 397
    :cond_15
    sget-object v5, Lvr6;->INSTANCE:Lvr6;

    .line 398
    .line 399
    invoke-virtual {v11}, Lji;->getPackageName()Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v1

    .line 403
    const/16 v22, 0x0

    .line 404
    .line 405
    const/16 v23, 0x3f

    .line 406
    .line 407
    const/16 v19, 0x0

    .line 408
    .line 409
    const/16 v20, 0x0

    .line 410
    .line 411
    const/16 v21, 0x0

    .line 412
    .line 413
    move-object/from16 v18, v0

    .line 414
    .line 415
    invoke-static/range {v18 .. v23}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v0

    .line 419
    move-object/from16 v12, v18

    .line 420
    .line 421
    const-string v2, "Source-preserving install verification failed, but "

    .line 422
    .line 423
    const-string v3, " is installed; continuing restore. Output="

    .line 424
    .line 425
    invoke-static {v2, v1, v3, v0}, Ldj7;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object v7

    .line 429
    const/4 v9, 0x4

    .line 430
    const/4 v10, 0x0

    .line 431
    const-string v6, "AppRestoreHelper"

    .line 432
    .line 433
    const/4 v8, 0x0

    .line 434
    invoke-static/range {v5 .. v10}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 435
    .line 436
    .line 437
    const-string v0, "Warning [Source-preserving install verification failed after package install; continuing restore]"

    .line 438
    .line 439
    invoke-static {v0}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 440
    .line 441
    .line 442
    move-result-object v11

    .line 443
    :goto_c
    if-eqz v11, :cond_17

    .line 444
    .line 445
    invoke-static {v4, v11}, Lmv;->b(Lgq;Ljava/util/List;)Ljava/util/List;

    .line 446
    .line 447
    .line 448
    move-result-object v0

    .line 449
    if-eqz v0, :cond_16

    .line 450
    .line 451
    return-object v0

    .line 452
    :cond_16
    return-object v11

    .line 453
    :cond_17
    invoke-static {v4, v12}, Lmv;->b(Lgq;Ljava/util/List;)Ljava/util/List;

    .line 454
    .line 455
    .line 456
    return-object v12

    .line 457
    :cond_18
    move-object v12, v0

    .line 458
    new-instance v0, Ljava/util/ArrayList;

    .line 459
    .line 460
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 461
    .line 462
    .line 463
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 464
    .line 465
    .line 466
    move-result-object v7

    .line 467
    :goto_d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 468
    .line 469
    .line 470
    move-result v8

    .line 471
    if-eqz v8, :cond_1a

    .line 472
    .line 473
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 474
    .line 475
    .line 476
    move-result-object v8

    .line 477
    move-object v10, v8

    .line 478
    check-cast v10, Ljava/lang/String;

    .line 479
    .line 480
    invoke-static {v10}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 481
    .line 482
    .line 483
    move-result-object v10

    .line 484
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object v10

    .line 488
    const-string v12, "Success: streamed "

    .line 489
    .line 490
    const/4 v15, 0x1

    .line 491
    invoke-static {v10, v12, v15}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 492
    .line 493
    .line 494
    move-result v12

    .line 495
    if-eqz v12, :cond_19

    .line 496
    .line 497
    const-string v12, " bytes"

    .line 498
    .line 499
    invoke-static {v10, v12, v15}, Luq7;->O(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 500
    .line 501
    .line 502
    move-result v10

    .line 503
    if-eqz v10, :cond_19

    .line 504
    .line 505
    goto :goto_d

    .line 506
    :cond_19
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 507
    .line 508
    .line 509
    goto :goto_d

    .line 510
    :cond_1a
    new-instance v7, Ljava/util/ArrayList;

    .line 511
    .line 512
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 513
    .line 514
    .line 515
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 516
    .line 517
    .line 518
    move-result-object v0

    .line 519
    :cond_1b
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 520
    .line 521
    .line 522
    move-result v8

    .line 523
    if-eqz v8, :cond_1c

    .line 524
    .line 525
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 526
    .line 527
    .line 528
    move-result-object v8

    .line 529
    move-object v10, v8

    .line 530
    check-cast v10, Ljava/lang/String;

    .line 531
    .line 532
    const/4 v15, 0x1

    .line 533
    invoke-static {v10, v5, v15}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 534
    .line 535
    .line 536
    move-result v12

    .line 537
    if-eqz v12, :cond_1b

    .line 538
    .line 539
    const-string v12, "source=PackageInstaller"

    .line 540
    .line 541
    invoke-static {v10, v12, v15}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 542
    .line 543
    .line 544
    move-result v10

    .line 545
    if-eqz v10, :cond_1b

    .line 546
    .line 547
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 548
    .line 549
    .line 550
    goto :goto_e

    .line 551
    :cond_1c
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 552
    .line 553
    .line 554
    move-result v0

    .line 555
    if-nez v0, :cond_1d

    .line 556
    .line 557
    move-object/from16 v18, v7

    .line 558
    .line 559
    goto :goto_f

    .line 560
    :cond_1d
    const/16 v18, 0x0

    .line 561
    .line 562
    :goto_f
    if-eqz v18, :cond_1e

    .line 563
    .line 564
    const/16 v22, 0x0

    .line 565
    .line 566
    const/16 v23, 0x3f

    .line 567
    .line 568
    const/16 v19, 0x0

    .line 569
    .line 570
    const/16 v20, 0x0

    .line 571
    .line 572
    const/16 v21, 0x0

    .line 573
    .line 574
    invoke-static/range {v18 .. v23}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 575
    .line 576
    .line 577
    move-result-object v0

    .line 578
    goto :goto_10

    .line 579
    :cond_1e
    const/4 v0, 0x0

    .line 580
    :goto_10
    if-nez v0, :cond_1f

    .line 581
    .line 582
    const-string v0, "Source-preserving install failed without PackageInstaller error detail; falling back to package manager shell install"

    .line 583
    .line 584
    :goto_11
    move-object/from16 v20, v0

    .line 585
    .line 586
    goto :goto_12

    .line 587
    :cond_1f
    const-string v7, "Source-preserving install failed: "

    .line 588
    .line 589
    const-string v8, "; falling back to package manager shell install"

    .line 590
    .line 591
    invoke-static {v7, v0, v8}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 592
    .line 593
    .line 594
    move-result-object v0

    .line 595
    goto :goto_11

    .line 596
    :goto_12
    sget-object v18, Lvr6;->INSTANCE:Lvr6;

    .line 597
    .line 598
    const/16 v22, 0x4

    .line 599
    .line 600
    const/16 v23, 0x0

    .line 601
    .line 602
    const-string v19, "AppRestoreHelper"

    .line 603
    .line 604
    const/16 v21, 0x0

    .line 605
    .line 606
    invoke-static/range {v18 .. v23}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 607
    .line 608
    .line 609
    :cond_20
    if-eqz v6, :cond_21

    .line 610
    .line 611
    iget-object v6, v6, Lhv;->b:Ljava/util/List;

    .line 612
    .line 613
    goto :goto_13

    .line 614
    :cond_21
    const/4 v6, 0x0

    .line 615
    :goto_13
    new-instance v0, Lkh6;

    .line 616
    .line 617
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 618
    .line 619
    .line 620
    if-nez v6, :cond_22

    .line 621
    .line 622
    iget-wide v7, v0, Lkh6;->a:J

    .line 623
    .line 624
    invoke-virtual {v1, v2, v3, v7, v8}, Lmv;->c(Lyw;Lpe4;J)Ljava/util/List;

    .line 625
    .line 626
    .line 627
    move-result-object v7

    .line 628
    goto :goto_14

    .line 629
    :cond_22
    move-object v7, v6

    .line 630
    :goto_14
    const/4 v8, 0x0

    .line 631
    if-nez v7, :cond_23

    .line 632
    .line 633
    invoke-static {v13}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 634
    .line 635
    .line 636
    move-result-object v0

    .line 637
    goto :goto_16

    .line 638
    :cond_23
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    .line 639
    .line 640
    .line 641
    move-result v10

    .line 642
    if-nez v10, :cond_24

    .line 643
    .line 644
    if-nez v6, :cond_24

    .line 645
    .line 646
    iget-wide v12, v0, Lkh6;->a:J

    .line 647
    .line 648
    add-long v18, v29, v27

    .line 649
    .line 650
    add-long v12, v18, v12

    .line 651
    .line 652
    iput-wide v12, v0, Lkh6;->a:J

    .line 653
    .line 654
    invoke-virtual {v1, v12, v13}, Lmv;->d(J)V

    .line 655
    .line 656
    .line 657
    goto :goto_15

    .line 658
    :cond_24
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    .line 659
    .line 660
    .line 661
    move-result v6

    .line 662
    if-nez v6, :cond_25

    .line 663
    .line 664
    iget-wide v12, v0, Lkh6;->a:J

    .line 665
    .line 666
    add-long v18, v29, v27

    .line 667
    .line 668
    add-long v12, v18, v12

    .line 669
    .line 670
    iput-wide v12, v0, Lkh6;->a:J

    .line 671
    .line 672
    :cond_25
    :goto_15
    invoke-static {v2, v7}, Lmv;->a(Lyw;Ljava/util/List;)Ljava/util/ArrayList;

    .line 673
    .line 674
    .line 675
    move-result-object v19

    .line 676
    new-instance v18, Lqd7;

    .line 677
    .line 678
    iget-wide v6, v2, Lyw;->i:J

    .line 679
    .line 680
    new-instance v10, Lev;

    .line 681
    .line 682
    invoke-direct {v10, v8, v1, v0}, Lev;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 683
    .line 684
    .line 685
    const/16 v26, 0x10

    .line 686
    .line 687
    iget-boolean v0, v1, Lmv;->c:Z

    .line 688
    .line 689
    iget-object v12, v1, Lmv;->e:Ljava/lang/String;

    .line 690
    .line 691
    iget-object v13, v1, Lmv;->d:Ljava/lang/String;

    .line 692
    .line 693
    move/from16 v20, v0

    .line 694
    .line 695
    move-wide/from16 v23, v6

    .line 696
    .line 697
    move-object/from16 v25, v10

    .line 698
    .line 699
    move-object/from16 v21, v12

    .line 700
    .line 701
    move-object/from16 v22, v13

    .line 702
    .line 703
    invoke-direct/range {v18 .. v26}, Lqd7;-><init>(Ljava/util/ArrayList;ZLjava/lang/String;Ljava/lang/String;JLev;I)V

    .line 704
    .line 705
    .line 706
    invoke-static/range {v18 .. v18}, Lsd7;->d(Lqd7;)Ljava/util/List;

    .line 707
    .line 708
    .line 709
    move-result-object v0

    .line 710
    :goto_16
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 711
    .line 712
    .line 713
    new-instance v6, Ljava/util/ArrayList;

    .line 714
    .line 715
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 716
    .line 717
    .line 718
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 719
    .line 720
    .line 721
    move-result-object v0

    .line 722
    :cond_26
    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 723
    .line 724
    .line 725
    move-result v7

    .line 726
    if-eqz v7, :cond_27

    .line 727
    .line 728
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 729
    .line 730
    .line 731
    move-result-object v7

    .line 732
    move-object v10, v7

    .line 733
    check-cast v10, Ljava/lang/String;

    .line 734
    .line 735
    invoke-static {v10, v5, v8}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 736
    .line 737
    .line 738
    move-result v12

    .line 739
    if-eqz v12, :cond_26

    .line 740
    .line 741
    const-string v12, "/split_"

    .line 742
    .line 743
    invoke-static {v10, v12, v8}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 744
    .line 745
    .line 746
    move-result v10

    .line 747
    if-eqz v10, :cond_26

    .line 748
    .line 749
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 750
    .line 751
    .line 752
    goto :goto_17

    .line 753
    :cond_27
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 754
    .line 755
    .line 756
    move-result v0

    .line 757
    const-string v5, " "

    .line 758
    .line 759
    if-nez v0, :cond_33

    .line 760
    .line 761
    new-instance v0, Ljava/util/ArrayList;

    .line 762
    .line 763
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 764
    .line 765
    .line 766
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 767
    .line 768
    .line 769
    move-result-object v6

    .line 770
    :cond_28
    :goto_18
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 771
    .line 772
    .line 773
    move-result v7

    .line 774
    if-eqz v7, :cond_2d

    .line 775
    .line 776
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 777
    .line 778
    .line 779
    move-result-object v7

    .line 780
    check-cast v7, Ljava/lang/String;

    .line 781
    .line 782
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 783
    .line 784
    .line 785
    filled-new-array {v5}, [Ljava/lang/String;

    .line 786
    .line 787
    .line 788
    move-result-object v10

    .line 789
    const/4 v12, 0x6

    .line 790
    invoke-static {v7, v10, v12}, Lnq7;->x0(Ljava/lang/CharSequence;[Ljava/lang/String;I)Ljava/util/List;

    .line 791
    .line 792
    .line 793
    move-result-object v10

    .line 794
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 795
    .line 796
    .line 797
    move-result-object v10

    .line 798
    :cond_29
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 799
    .line 800
    .line 801
    move-result v12

    .line 802
    if-eqz v12, :cond_2a

    .line 803
    .line 804
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 805
    .line 806
    .line 807
    move-result-object v12

    .line 808
    move-object v13, v12

    .line 809
    check-cast v13, Ljava/lang/String;

    .line 810
    .line 811
    const-string v15, "/data/"

    .line 812
    .line 813
    invoke-static {v13, v15, v8}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 814
    .line 815
    .line 816
    move-result v13

    .line 817
    if-eqz v13, :cond_29

    .line 818
    .line 819
    goto :goto_19

    .line 820
    :cond_2a
    const/4 v12, 0x0

    .line 821
    :goto_19
    check-cast v12, Ljava/lang/String;

    .line 822
    .line 823
    if-eqz v12, :cond_2c

    .line 824
    .line 825
    const/4 v15, 0x1

    .line 826
    new-array v10, v15, [C

    .line 827
    .line 828
    const/16 v13, 0x3a

    .line 829
    .line 830
    aput-char v13, v10, v8

    .line 831
    .line 832
    invoke-static {v12, v10}, Lnq7;->I0(Ljava/lang/String;[C)Ljava/lang/String;

    .line 833
    .line 834
    .line 835
    move-result-object v10

    .line 836
    if-eqz v10, :cond_2c

    .line 837
    .line 838
    sget-char v12, Lmc3;->a:C

    .line 839
    .line 840
    invoke-virtual {v10, v8}, Ljava/lang/String;->indexOf(I)I

    .line 841
    .line 842
    .line 843
    move-result v12

    .line 844
    if-gez v12, :cond_2b

    .line 845
    .line 846
    const/16 v12, 0x2f

    .line 847
    .line 848
    invoke-virtual {v10, v12}, Ljava/lang/String;->lastIndexOf(I)I

    .line 849
    .line 850
    .line 851
    move-result v12

    .line 852
    const/16 v13, 0x5c

    .line 853
    .line 854
    invoke-virtual {v10, v13}, Ljava/lang/String;->lastIndexOf(I)I

    .line 855
    .line 856
    .line 857
    move-result v13

    .line 858
    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    .line 859
    .line 860
    .line 861
    move-result v12

    .line 862
    const/16 v17, 0x1

    .line 863
    .line 864
    add-int/lit8 v12, v12, 0x1

    .line 865
    .line 866
    invoke-virtual {v10, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 867
    .line 868
    .line 869
    move-result-object v12

    .line 870
    new-instance v13, Liv;

    .line 871
    .line 872
    invoke-direct {v13, v7, v10, v12}, Liv;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    .line 874
    .line 875
    const/16 v16, 0x0

    .line 876
    .line 877
    goto :goto_1a

    .line 878
    :cond_2b
    const-string v0, "Null character present in file/path name. There are no known legitimate use cases for such data, but several injection attacks may use it"

    .line 879
    .line 880
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 881
    .line 882
    .line 883
    const/16 v16, 0x0

    .line 884
    .line 885
    return-object v16

    .line 886
    :cond_2c
    const/16 v16, 0x0

    .line 887
    .line 888
    const/16 v17, 0x1

    .line 889
    .line 890
    move-object/from16 v13, v16

    .line 891
    .line 892
    :goto_1a
    if-eqz v13, :cond_28

    .line 893
    .line 894
    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 895
    .line 896
    .line 897
    goto :goto_18

    .line 898
    :cond_2d
    const/16 v16, 0x0

    .line 899
    .line 900
    const/16 v17, 0x1

    .line 901
    .line 902
    iget-object v6, v1, Lmv;->g:Ljava/util/LinkedHashSet;

    .line 903
    .line 904
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 905
    .line 906
    .line 907
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 908
    .line 909
    .line 910
    move-result v7

    .line 911
    if-eqz v7, :cond_2f

    .line 912
    .line 913
    :cond_2e
    move/from16 v17, v8

    .line 914
    .line 915
    goto :goto_1b

    .line 916
    :cond_2f
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 917
    .line 918
    .line 919
    move-result-object v7

    .line 920
    :cond_30
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 921
    .line 922
    .line 923
    move-result v10

    .line 924
    if-eqz v10, :cond_2e

    .line 925
    .line 926
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 927
    .line 928
    .line 929
    move-result-object v10

    .line 930
    check-cast v10, Liv;

    .line 931
    .line 932
    iget-object v10, v10, Liv;->c:Ljava/lang/String;

    .line 933
    .line 934
    invoke-interface {v6, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 935
    .line 936
    .line 937
    move-result v10

    .line 938
    if-nez v10, :cond_30

    .line 939
    .line 940
    :goto_1b
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 941
    .line 942
    .line 943
    move-result-object v0

    .line 944
    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 945
    .line 946
    .line 947
    move-result v7

    .line 948
    if-eqz v7, :cond_32

    .line 949
    .line 950
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 951
    .line 952
    .line 953
    move-result-object v7

    .line 954
    check-cast v7, Liv;

    .line 955
    .line 956
    new-instance v10, Ljr7;

    .line 957
    .line 958
    iget-object v12, v7, Liv;->b:Ljava/lang/String;

    .line 959
    .line 960
    iget-object v13, v7, Liv;->c:Ljava/lang/String;

    .line 961
    .line 962
    invoke-direct {v10, v12}, Ljr7;-><init>(Ljava/lang/String;)V

    .line 963
    .line 964
    .line 965
    const-string v12, "rm -rf @@"

    .line 966
    .line 967
    invoke-virtual {v10, v12}, Ljr7;->b(Ljava/lang/String;)Z

    .line 968
    .line 969
    .line 970
    move-result v10

    .line 971
    if-eqz v10, :cond_31

    .line 972
    .line 973
    sget-object v18, Lvr6;->INSTANCE:Lvr6;

    .line 974
    .line 975
    iget-object v10, v7, Liv;->b:Ljava/lang/String;

    .line 976
    .line 977
    const-string v12, "Deleted split from tmp path="

    .line 978
    .line 979
    invoke-virtual {v12, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 980
    .line 981
    .line 982
    move-result-object v20

    .line 983
    const/16 v22, 0x4

    .line 984
    .line 985
    const/16 v23, 0x0

    .line 986
    .line 987
    const-string v19, "AppRestoreHelper"

    .line 988
    .line 989
    const/16 v21, 0x0

    .line 990
    .line 991
    invoke-static/range {v18 .. v23}, Lvr6;->d$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 992
    .line 993
    .line 994
    :cond_31
    sget-object v24, Lvr6;->INSTANCE:Lvr6;

    .line 995
    .line 996
    iget-object v7, v7, Liv;->a:Ljava/lang/String;

    .line 997
    .line 998
    const-string v10, "Split install error: Name="

    .line 999
    .line 1000
    const-string v12, ", Error="

    .line 1001
    .line 1002
    invoke-static {v10, v13, v12, v7}, Ldj7;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1003
    .line 1004
    .line 1005
    move-result-object v26

    .line 1006
    const/16 v28, 0x4

    .line 1007
    .line 1008
    const/16 v29, 0x0

    .line 1009
    .line 1010
    const-string v25, "AppRestoreHelper"

    .line 1011
    .line 1012
    const/16 v27, 0x0

    .line 1013
    .line 1014
    invoke-static/range {v24 .. v29}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 1015
    .line 1016
    .line 1017
    invoke-interface {v6, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1018
    .line 1019
    .line 1020
    goto :goto_1c

    .line 1021
    :cond_32
    if-eqz v17, :cond_34

    .line 1022
    .line 1023
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 1024
    .line 1025
    const/16 v22, 0x0

    .line 1026
    .line 1027
    const/16 v23, 0x3f

    .line 1028
    .line 1029
    const/16 v19, 0x0

    .line 1030
    .line 1031
    const/16 v20, 0x0

    .line 1032
    .line 1033
    const/16 v21, 0x0

    .line 1034
    .line 1035
    move-object/from16 v18, v6

    .line 1036
    .line 1037
    invoke-static/range {v18 .. v23}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 1038
    .line 1039
    .line 1040
    move-result-object v5

    .line 1041
    const-string v6, "Retrying restore by excluding "

    .line 1042
    .line 1043
    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1044
    .line 1045
    .line 1046
    move-result-object v20

    .line 1047
    const/16 v22, 0x4

    .line 1048
    .line 1049
    const/16 v23, 0x0

    .line 1050
    .line 1051
    const-string v19, "AppRestoreHelper"

    .line 1052
    .line 1053
    move-object/from16 v18, v0

    .line 1054
    .line 1055
    invoke-static/range {v18 .. v23}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 1056
    .line 1057
    .line 1058
    invoke-virtual/range {p0 .. p3}, Lmv;->f(Lyw;Lpe4;Lgq;)Ljava/util/List;

    .line 1059
    .line 1060
    .line 1061
    move-result-object v0

    .line 1062
    return-object v0

    .line 1063
    :cond_33
    const/16 v16, 0x0

    .line 1064
    .line 1065
    :cond_34
    invoke-static {v9}, Ljd4;->t(Ljava/util/List;)Z

    .line 1066
    .line 1067
    .line 1068
    move-result v0

    .line 1069
    if-eqz v0, :cond_36

    .line 1070
    .line 1071
    invoke-virtual {v11}, Lji;->checkInstalled()Z

    .line 1072
    .line 1073
    .line 1074
    move-result v0

    .line 1075
    if-nez v0, :cond_36

    .line 1076
    .line 1077
    sget-object v17, Lvr6;->INSTANCE:Lvr6;

    .line 1078
    .line 1079
    invoke-virtual {v11}, Lji;->getPackageName()Ljava/lang/String;

    .line 1080
    .line 1081
    .line 1082
    move-result-object v0

    .line 1083
    const-string v3, "Trying install-existing for "

    .line 1084
    .line 1085
    const-string v6, " on user "

    .line 1086
    .line 1087
    iget-object v7, v1, Lmv;->e:Ljava/lang/String;

    .line 1088
    .line 1089
    invoke-static {v3, v0, v6, v7}, Ldj7;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1090
    .line 1091
    .line 1092
    move-result-object v19

    .line 1093
    const/16 v21, 0x4

    .line 1094
    .line 1095
    const/16 v22, 0x0

    .line 1096
    .line 1097
    const-string v18, "AppRestoreHelper"

    .line 1098
    .line 1099
    const/16 v20, 0x0

    .line 1100
    .line 1101
    invoke-static/range {v17 .. v22}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 1102
    .line 1103
    .line 1104
    sget-object v0, Lmp6;->a:Lmp6;

    .line 1105
    .line 1106
    invoke-virtual {v11}, Lji;->getPackageName()Ljava/lang/String;

    .line 1107
    .line 1108
    .line 1109
    move-result-object v3

    .line 1110
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1111
    .line 1112
    .line 1113
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1114
    .line 1115
    .line 1116
    const-string v6, "\'"

    .line 1117
    .line 1118
    const-string v10, "\'\"\'\"\'"

    .line 1119
    .line 1120
    invoke-static {v7, v6, v10}, Luq7;->T(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1121
    .line 1122
    .line 1123
    move-result-object v12

    .line 1124
    invoke-static {v6, v12, v6}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1125
    .line 1126
    .line 1127
    move-result-object v12

    .line 1128
    invoke-static {v3, v6, v10}, Luq7;->T(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1129
    .line 1130
    .line 1131
    move-result-object v3

    .line 1132
    invoke-static {v6, v3, v6}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1133
    .line 1134
    .line 1135
    move-result-object v3

    .line 1136
    const-string v6, "pm install-existing --user "

    .line 1137
    .line 1138
    invoke-static {v6, v12, v5, v3}, Ldj7;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1139
    .line 1140
    .line 1141
    move-result-object v3

    .line 1142
    filled-new-array {v3}, [Ljava/lang/String;

    .line 1143
    .line 1144
    .line 1145
    move-result-object v3

    .line 1146
    sget-object v5, Lip6;->SHIZUKU:Lip6;

    .line 1147
    .line 1148
    invoke-virtual {v0, v3, v5}, Lmp6;->h([Ljava/lang/String;Lip6;)Ljava/util/List;

    .line 1149
    .line 1150
    .line 1151
    move-result-object v18

    .line 1152
    const/16 v23, 0x3f

    .line 1153
    .line 1154
    const/16 v19, 0x0

    .line 1155
    .line 1156
    const/16 v21, 0x0

    .line 1157
    .line 1158
    invoke-static/range {v18 .. v23}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 1159
    .line 1160
    .line 1161
    move-result-object v0

    .line 1162
    move-object/from16 v3, v18

    .line 1163
    .line 1164
    const-string v5, "install-existing output: "

    .line 1165
    .line 1166
    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1167
    .line 1168
    .line 1169
    move-result-object v19

    .line 1170
    const/16 v21, 0x4

    .line 1171
    .line 1172
    const-string v18, "AppRestoreHelper"

    .line 1173
    .line 1174
    invoke-static/range {v17 .. v22}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 1175
    .line 1176
    .line 1177
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1178
    .line 1179
    .line 1180
    invoke-static {v3}, Ljd4;->v(Ljava/util/List;)Z

    .line 1181
    .line 1182
    .line 1183
    move-result v0

    .line 1184
    if-nez v0, :cond_36

    .line 1185
    .line 1186
    invoke-virtual {v11}, Lji;->checkInstalled()Z

    .line 1187
    .line 1188
    .line 1189
    move-result v0

    .line 1190
    if-eqz v0, :cond_36

    .line 1191
    .line 1192
    invoke-virtual {v11}, Lji;->getPackageName()Ljava/lang/String;

    .line 1193
    .line 1194
    .line 1195
    move-result-object v0

    .line 1196
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1197
    .line 1198
    .line 1199
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1200
    .line 1201
    const-string v2, "Warning [Installed existing package "

    .line 1202
    .line 1203
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1204
    .line 1205
    .line 1206
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1207
    .line 1208
    .line 1209
    const-string v0, " for user "

    .line 1210
    .line 1211
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1212
    .line 1213
    .line 1214
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1215
    .line 1216
    .line 1217
    const-string v0, " after APK downgrade rejection]"

    .line 1218
    .line 1219
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1220
    .line 1221
    .line 1222
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1223
    .line 1224
    .line 1225
    move-result-object v0

    .line 1226
    invoke-static {v0}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 1227
    .line 1228
    .line 1229
    move-result-object v0

    .line 1230
    invoke-static {v4, v0}, Lmv;->b(Lgq;Ljava/util/List;)Ljava/util/List;

    .line 1231
    .line 1232
    .line 1233
    move-result-object v1

    .line 1234
    if-eqz v1, :cond_35

    .line 1235
    .line 1236
    return-object v1

    .line 1237
    :cond_35
    return-object v0

    .line 1238
    :cond_36
    invoke-static {v4, v9}, Lmv;->b(Lgq;Ljava/util/List;)Ljava/util/List;

    .line 1239
    .line 1240
    .line 1241
    move-result-object v0

    .line 1242
    if-eqz v0, :cond_37

    .line 1243
    .line 1244
    return-object v0

    .line 1245
    :cond_37
    sget-object v0, Lg00;->a:Lg00;

    .line 1246
    .line 1247
    invoke-static {}, Lg00;->x()Z

    .line 1248
    .line 1249
    .line 1250
    move-result v0

    .line 1251
    if-eqz v0, :cond_49

    .line 1252
    .line 1253
    invoke-static {v9}, Ljd4;->t(Ljava/util/List;)Z

    .line 1254
    .line 1255
    .line 1256
    move-result v0

    .line 1257
    if-eqz v0, :cond_49

    .line 1258
    .line 1259
    sget-object v17, Lvr6;->INSTANCE:Lvr6;

    .line 1260
    .line 1261
    const/16 v21, 0x4

    .line 1262
    .line 1263
    const/16 v22, 0x0

    .line 1264
    .line 1265
    const-string v18, "AppRestoreHelper"

    .line 1266
    .line 1267
    const-string v19, "Workaround for secondary user downgrade error"

    .line 1268
    .line 1269
    const/16 v20, 0x0

    .line 1270
    .line 1271
    invoke-static/range {v17 .. v22}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 1272
    .line 1273
    .line 1274
    sget-object v0, Lmp6;->a:Lmp6;

    .line 1275
    .line 1276
    invoke-virtual {v11}, Lji;->getPackageName()Ljava/lang/String;

    .line 1277
    .line 1278
    .line 1279
    move-result-object v3

    .line 1280
    const-string v4, "pm path "

    .line 1281
    .line 1282
    invoke-static {v4, v3}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1283
    .line 1284
    .line 1285
    move-result-object v3

    .line 1286
    filled-new-array {v3}, [Ljava/lang/String;

    .line 1287
    .line 1288
    .line 1289
    move-result-object v3

    .line 1290
    sget-object v4, Lip6;->SHIZUKU:Lip6;

    .line 1291
    .line 1292
    invoke-virtual {v0, v3, v4}, Lmp6;->h([Ljava/lang/String;Lip6;)Ljava/util/List;

    .line 1293
    .line 1294
    .line 1295
    move-result-object v0

    .line 1296
    invoke-static {v0}, Lel1;->U0(Ljava/util/List;)Ljava/lang/Object;

    .line 1297
    .line 1298
    .line 1299
    move-result-object v0

    .line 1300
    check-cast v0, Ljava/lang/String;

    .line 1301
    .line 1302
    if-eqz v0, :cond_38

    .line 1303
    .line 1304
    invoke-static {v0}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 1305
    .line 1306
    .line 1307
    move-result-object v0

    .line 1308
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1309
    .line 1310
    .line 1311
    move-result-object v0

    .line 1312
    if-eqz v0, :cond_38

    .line 1313
    .line 1314
    const-string v3, "package:"

    .line 1315
    .line 1316
    invoke-static {v0, v3, v0}, Lnq7;->z0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1317
    .line 1318
    .line 1319
    move-result-object v6

    .line 1320
    goto :goto_1d

    .line 1321
    :cond_38
    move-object/from16 v6, v16

    .line 1322
    .line 1323
    :goto_1d
    const-string v0, "[ -e @@ ]"

    .line 1324
    .line 1325
    if-eqz v6, :cond_3b

    .line 1326
    .line 1327
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 1328
    .line 1329
    .line 1330
    move-result v3

    .line 1331
    if-nez v3, :cond_39

    .line 1332
    .line 1333
    goto :goto_1e

    .line 1334
    :cond_39
    new-instance v3, Ljr7;

    .line 1335
    .line 1336
    invoke-direct {v3, v6}, Ljr7;-><init>(Ljava/lang/String;)V

    .line 1337
    .line 1338
    .line 1339
    invoke-virtual {v3, v0}, Ljr7;->b(Ljava/lang/String;)Z

    .line 1340
    .line 1341
    .line 1342
    move-result v4

    .line 1343
    if-eqz v4, :cond_3c

    .line 1344
    .line 1345
    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 1346
    .line 1347
    .line 1348
    move-result-object v3

    .line 1349
    if-nez v3, :cond_3a

    .line 1350
    .line 1351
    goto :goto_1f

    .line 1352
    :cond_3a
    new-instance v6, Ljr7;

    .line 1353
    .line 1354
    invoke-direct {v6, v3}, Ljr7;-><init>(Ljava/lang/String;)V

    .line 1355
    .line 1356
    .line 1357
    goto :goto_20

    .line 1358
    :cond_3b
    :goto_1e
    const/16 v21, 0x4

    .line 1359
    .line 1360
    const/16 v22, 0x0

    .line 1361
    .line 1362
    const-string v18, "AppRestoreHelper"

    .line 1363
    .line 1364
    const-string v19, "Base apk path not found."

    .line 1365
    .line 1366
    const/16 v20, 0x0

    .line 1367
    .line 1368
    invoke-static/range {v17 .. v22}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 1369
    .line 1370
    .line 1371
    :cond_3c
    :goto_1f
    move-object/from16 v6, v16

    .line 1372
    .line 1373
    :goto_20
    if-eqz v6, :cond_3e

    .line 1374
    .line 1375
    invoke-virtual {v6}, Ljr7;->f()[Ljr7;

    .line 1376
    .line 1377
    .line 1378
    move-result-object v3

    .line 1379
    if-eqz v3, :cond_3e

    .line 1380
    .line 1381
    new-instance v6, Ljava/util/ArrayList;

    .line 1382
    .line 1383
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1384
    .line 1385
    .line 1386
    array-length v4, v3

    .line 1387
    move v5, v8

    .line 1388
    :goto_21
    if-ge v5, v4, :cond_3f

    .line 1389
    .line 1390
    aget-object v7, v3, v5

    .line 1391
    .line 1392
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 1393
    .line 1394
    .line 1395
    move-result-object v10

    .line 1396
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1397
    .line 1398
    .line 1399
    const-string v11, ".apk"

    .line 1400
    .line 1401
    invoke-static {v10, v11, v8}, Luq7;->O(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 1402
    .line 1403
    .line 1404
    move-result v10

    .line 1405
    if-eqz v10, :cond_3d

    .line 1406
    .line 1407
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1408
    .line 1409
    .line 1410
    :cond_3d
    add-int/lit8 v5, v5, 0x1

    .line 1411
    .line 1412
    goto :goto_21

    .line 1413
    :cond_3e
    move-object/from16 v6, v16

    .line 1414
    .line 1415
    :cond_3f
    if-nez v6, :cond_40

    .line 1416
    .line 1417
    sget-object v6, Lov2;->a:Lov2;

    .line 1418
    .line 1419
    :cond_40
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1420
    .line 1421
    .line 1422
    move-result-object v3

    .line 1423
    :cond_41
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1424
    .line 1425
    .line 1426
    move-result v4

    .line 1427
    if-eqz v4, :cond_42

    .line 1428
    .line 1429
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1430
    .line 1431
    .line 1432
    move-result-object v4

    .line 1433
    move-object v5, v4

    .line 1434
    check-cast v5, Ljr7;

    .line 1435
    .line 1436
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 1437
    .line 1438
    .line 1439
    move-result-object v5

    .line 1440
    const-string v7, "base.apk"

    .line 1441
    .line 1442
    invoke-static {v5, v7}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1443
    .line 1444
    .line 1445
    move-result v5

    .line 1446
    if-eqz v5, :cond_41

    .line 1447
    .line 1448
    goto :goto_22

    .line 1449
    :cond_42
    move-object/from16 v4, v16

    .line 1450
    .line 1451
    :goto_22
    check-cast v4, Ljr7;

    .line 1452
    .line 1453
    new-instance v3, Ljava/util/ArrayList;

    .line 1454
    .line 1455
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1456
    .line 1457
    .line 1458
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1459
    .line 1460
    .line 1461
    move-result-object v5

    .line 1462
    :cond_43
    :goto_23
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 1463
    .line 1464
    .line 1465
    move-result v6

    .line 1466
    if-eqz v6, :cond_44

    .line 1467
    .line 1468
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1469
    .line 1470
    .line 1471
    move-result-object v6

    .line 1472
    move-object v7, v6

    .line 1473
    check-cast v7, Ljr7;

    .line 1474
    .line 1475
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 1476
    .line 1477
    .line 1478
    move-result-object v7

    .line 1479
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1480
    .line 1481
    .line 1482
    const-string v10, "split_"

    .line 1483
    .line 1484
    invoke-static {v7, v10, v8}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 1485
    .line 1486
    .line 1487
    move-result v7

    .line 1488
    if-eqz v7, :cond_43

    .line 1489
    .line 1490
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1491
    .line 1492
    .line 1493
    goto :goto_23

    .line 1494
    :cond_44
    if-eqz v4, :cond_46

    .line 1495
    .line 1496
    invoke-virtual {v4, v0}, Ljr7;->b(Ljava/lang/String;)Z

    .line 1497
    .line 1498
    .line 1499
    move-result v0

    .line 1500
    if-nez v0, :cond_45

    .line 1501
    .line 1502
    goto :goto_24

    .line 1503
    :cond_45
    new-instance v0, Lkv;

    .line 1504
    .line 1505
    invoke-direct {v0, v3}, Lkv;-><init>(Ljava/util/ArrayList;)V

    .line 1506
    .line 1507
    .line 1508
    invoke-virtual {v1, v2, v0, v8}, Lmv;->e(Lyw;Lpe4;Z)Ljava/util/List;

    .line 1509
    .line 1510
    .line 1511
    move-result-object v0

    .line 1512
    return-object v0

    .line 1513
    :cond_46
    :goto_24
    sget-object v1, Lvr6;->INSTANCE:Lvr6;

    .line 1514
    .line 1515
    if-eqz v4, :cond_47

    .line 1516
    .line 1517
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 1518
    .line 1519
    .line 1520
    move-result-object v11

    .line 1521
    goto :goto_25

    .line 1522
    :cond_47
    move-object/from16 v11, v16

    .line 1523
    .line 1524
    :goto_25
    if-nez v11, :cond_48

    .line 1525
    .line 1526
    goto :goto_26

    .line 1527
    :cond_48
    move-object v14, v11

    .line 1528
    :goto_26
    const-string v0, "Base apk not found at path="

    .line 1529
    .line 1530
    invoke-virtual {v0, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1531
    .line 1532
    .line 1533
    move-result-object v3

    .line 1534
    const/4 v5, 0x4

    .line 1535
    const/4 v6, 0x0

    .line 1536
    const-string v2, "AppRestoreHelper"

    .line 1537
    .line 1538
    const/4 v4, 0x0

    .line 1539
    invoke-static/range {v1 .. v6}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 1540
    .line 1541
    .line 1542
    :cond_49
    return-object v9
.end method

.method public final g(Ljava/lang/Long;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 11

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_2

    .line 15
    .line 16
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    move-object v2, v1

    .line 21
    check-cast v2, Lq63;

    .line 22
    .line 23
    invoke-virtual {v2}, Lq63;->p()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    iget-object v4, p0, Lmv;->g:Ljava/util/LinkedHashSet;

    .line 28
    .line 29
    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-eqz v4, :cond_0

    .line 34
    .line 35
    sget-object v5, Lvr6;->INSTANCE:Lvr6;

    .line 36
    .line 37
    const-string v1, "Excluding split: "

    .line 38
    .line 39
    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    const/4 v9, 0x4

    .line 44
    const/4 v10, 0x0

    .line 45
    const-string v6, "AppRestoreHelper"

    .line 46
    .line 47
    const/4 v8, 0x0

    .line 48
    invoke-static/range {v5 .. v10}, Lvr6;->d$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    const/4 v4, 0x1

    .line 53
    invoke-static {v2, v4}, Lng;->a(Lq63;Z)Lrg;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v2}, Lrg;->c()J

    .line 58
    .line 59
    .line 60
    move-result-wide v4

    .line 61
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 62
    .line 63
    .line 64
    move-result-wide v6

    .line 65
    cmp-long v4, v4, v6

    .line 66
    .line 67
    if-eqz v4, :cond_1

    .line 68
    .line 69
    sget-object v5, Lvr6;->INSTANCE:Lvr6;

    .line 70
    .line 71
    invoke-virtual {v2}, Lrg;->c()J

    .line 72
    .line 73
    .line 74
    move-result-wide v1

    .line 75
    new-instance v4, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const-string v6, "Ignoring split "

    .line 78
    .line 79
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v3, " due to version difference (base="

    .line 86
    .line 87
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v3, ", split="

    .line 94
    .line 95
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v3, ")"

    .line 99
    .line 100
    invoke-static {v1, v2, v3, v4}, Ldj7;->h(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v7

    .line 104
    const/4 v9, 0x4

    .line 105
    const/4 v10, 0x0

    .line 106
    const-string v6, "AppRestoreHelper"

    .line 107
    .line 108
    const/4 v8, 0x0

    .line 109
    invoke-static/range {v5 .. v10}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_2
    return-object v0
.end method
