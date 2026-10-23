.class public abstract Lky;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public static a(Lq63;Lq63;Lbt3;Lrt3;)Z
    .locals 26

    .line 1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static/range {p0 .. p0}, Lorg/swiftapps/swiftbackup/compress/Packer;->c(Lq63;)Li40;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_b

    .line 9
    .line 10
    iget v0, v0, Li40;->a:I

    .line 11
    .line 12
    const/4 v1, 0x6

    .line 13
    if-ne v0, v1, :cond_b

    .line 14
    .line 15
    :try_start_0
    sget-object v0, Lmz6;->a:Ljava/util/HashSet;

    .line 16
    .line 17
    invoke-static/range {p0 .. p0}, Lmz6;->n(Lq63;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    new-instance v1, Lbn6;

    .line 24
    .line 25
    invoke-direct {v1, v0}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 26
    .line 27
    .line 28
    move-object v0, v1

    .line 29
    :goto_0
    invoke-static {v0}, Len6;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    const/4 v8, 0x0

    .line 34
    if-nez v4, :cond_a

    .line 35
    .line 36
    check-cast v0, Ljava/util/List;

    .line 37
    .line 38
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_0

    .line 43
    .line 44
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 45
    .line 46
    const/4 v6, 0x4

    .line 47
    const/4 v7, 0x0

    .line 48
    const-string v3, "AppSplitsArchiveExtractor"

    .line 49
    .line 50
    const-string v4, "SBA split archive has no entries"

    .line 51
    .line 52
    const/4 v5, 0x0

    .line 53
    invoke-static/range {v2 .. v7}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    goto/16 :goto_a

    .line 57
    .line 58
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    const-wide/16 v9, 0x0

    .line 63
    .line 64
    move-wide v2, v9

    .line 65
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    const-wide/16 v11, 0x1

    .line 70
    .line 71
    if-eqz v4, :cond_2

    .line 72
    .line 73
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    check-cast v4, Lxy6;

    .line 78
    .line 79
    iget-wide v4, v4, Lxy6;->e:J

    .line 80
    .line 81
    cmp-long v6, v4, v11

    .line 82
    .line 83
    if-gez v6, :cond_1

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_1
    move-wide v11, v4

    .line 87
    :goto_2
    add-long/2addr v2, v11

    .line 88
    goto :goto_1

    .line 89
    :cond_2
    cmp-long v1, v2, v11

    .line 90
    .line 91
    if-gez v1, :cond_3

    .line 92
    .line 93
    move-wide v5, v11

    .line 94
    goto :goto_3

    .line 95
    :cond_3
    move-wide v5, v2

    .line 96
    :goto_3
    new-instance v4, Lkh6;

    .line 97
    .line 98
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 99
    .line 100
    .line 101
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 102
    .line 103
    .line 104
    move-result-object v7

    .line 105
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-eqz v0, :cond_8

    .line 110
    .line 111
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    move-object v13, v0

    .line 116
    check-cast v13, Lxy6;

    .line 117
    .line 118
    iget-wide v0, v13, Lxy6;->e:J

    .line 119
    .line 120
    cmp-long v2, v0, v11

    .line 121
    .line 122
    if-gez v2, :cond_4

    .line 123
    .line 124
    move-wide v1, v11

    .line 125
    goto :goto_5

    .line 126
    :cond_4
    move-wide v1, v0

    .line 127
    :goto_5
    :try_start_1
    sget-object v0, Lmz6;->a:Ljava/util/HashSet;

    .line 128
    .line 129
    iget-object v14, v13, Lxy6;->a:Ljava/lang/String;

    .line 130
    .line 131
    sget-object v18, Liu;->APP:Liu;

    .line 132
    .line 133
    sget-object v19, Lf27;->Basic:Lf27;

    .line 134
    .line 135
    sget-object v22, Liz6;->Auto:Liz6;

    .line 136
    .line 137
    if-eqz p3, :cond_5

    .line 138
    .line 139
    new-instance v0, Ljy;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 140
    .line 141
    move-object/from16 v3, p3

    .line 142
    .line 143
    :try_start_2
    invoke-direct/range {v0 .. v6}, Ljy;-><init>(JLrt3;Lkh6;J)V

    .line 144
    .line 145
    .line 146
    invoke-static {v0}, Lmz6;->g(Lmt3;)Lqo6;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    :goto_6
    move-object/from16 v24, v0

    .line 151
    .line 152
    move-object/from16 v17, v14

    .line 153
    .line 154
    goto :goto_7

    .line 155
    :catchall_1
    move-exception v0

    .line 156
    goto :goto_8

    .line 157
    :catchall_2
    move-exception v0

    .line 158
    move-object/from16 v3, p3

    .line 159
    .line 160
    goto :goto_8

    .line 161
    :cond_5
    move-object/from16 v3, p3

    .line 162
    .line 163
    const/4 v0, 0x0

    .line 164
    goto :goto_6

    .line 165
    :goto_7
    new-instance v14, Ljd0;

    .line 166
    .line 167
    const/16 v20, 0x0

    .line 168
    .line 169
    const/16 v21, 0x0

    .line 170
    .line 171
    const/16 v25, 0x40

    .line 172
    .line 173
    move-object/from16 v15, p0

    .line 174
    .line 175
    move-object/from16 v16, p1

    .line 176
    .line 177
    move-object/from16 v23, p2

    .line 178
    .line 179
    invoke-direct/range {v14 .. v25}, Ljd0;-><init>(Lq63;Lq63;Ljava/lang/String;Liu;Lf27;[CLjava/util/List;Liz6;Lbt3;Lqo6;I)V

    .line 180
    .line 181
    .line 182
    invoke-static {v14}, Lmz6;->f(Ljd0;)Ljz6;

    .line 183
    .line 184
    .line 185
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 186
    goto :goto_9

    .line 187
    :goto_8
    new-instance v14, Lbn6;

    .line 188
    .line 189
    invoke-direct {v14, v0}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 190
    .line 191
    .line 192
    move-object v0, v14

    .line 193
    :goto_9
    invoke-static {v0}, Len6;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 194
    .line 195
    .line 196
    move-result-object v17

    .line 197
    if-eqz v17, :cond_6

    .line 198
    .line 199
    sget-object v14, Lvr6;->INSTANCE:Lvr6;

    .line 200
    .line 201
    iget-object v13, v13, Lxy6;->a:Ljava/lang/String;

    .line 202
    .line 203
    const-string v15, "Failed to extract SBA split entry "

    .line 204
    .line 205
    invoke-static {v15, v13}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v16

    .line 209
    const/16 v19, 0x8

    .line 210
    .line 211
    const/16 v20, 0x0

    .line 212
    .line 213
    const-string v15, "AppSplitsArchiveExtractor"

    .line 214
    .line 215
    const/16 v18, 0x0

    .line 216
    .line 217
    invoke-static/range {v14 .. v20}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 218
    .line 219
    .line 220
    :cond_6
    instance-of v0, v0, Lbn6;

    .line 221
    .line 222
    if-eqz v0, :cond_7

    .line 223
    .line 224
    goto :goto_a

    .line 225
    :cond_7
    iget-wide v13, v4, Lkh6;->a:J

    .line 226
    .line 227
    add-long/2addr v13, v1

    .line 228
    iput-wide v13, v4, Lkh6;->a:J

    .line 229
    .line 230
    goto :goto_4

    .line 231
    :cond_8
    move-object/from16 v3, p3

    .line 232
    .line 233
    if-eqz v3, :cond_9

    .line 234
    .line 235
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 244
    .line 245
    .line 246
    move-result-object v2

    .line 247
    invoke-interface {v3, v0, v1, v2}, Lrt3;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    :cond_9
    const/4 v8, 0x1

    .line 251
    goto :goto_a

    .line 252
    :cond_a
    sget-object v1, Lvr6;->INSTANCE:Lvr6;

    .line 253
    .line 254
    const/16 v6, 0x8

    .line 255
    .line 256
    const/4 v7, 0x0

    .line 257
    const-string v2, "AppSplitsArchiveExtractor"

    .line 258
    .line 259
    const-string v3, "Failed to list SBA split entries"

    .line 260
    .line 261
    const/4 v5, 0x0

    .line 262
    invoke-static/range {v1 .. v7}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 263
    .line 264
    .line 265
    :goto_a
    return v8

    .line 266
    :cond_b
    move-object/from16 v3, p3

    .line 267
    .line 268
    const/4 v5, 0x0

    .line 269
    const/16 v7, 0x1c

    .line 270
    .line 271
    const/4 v3, 0x0

    .line 272
    const/4 v4, 0x0

    .line 273
    move-object/from16 v1, p0

    .line 274
    .line 275
    move-object/from16 v2, p1

    .line 276
    .line 277
    move-object/from16 v6, p3

    .line 278
    .line 279
    invoke-static/range {v1 .. v7}, Lorg/swiftapps/swiftbackup/compress/Packer;->a(Lq63;Lq63;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lrt3;I)Lfw5;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    iget-boolean v0, v0, Lfw5;->a:Z

    .line 284
    .line 285
    return v0
.end method
