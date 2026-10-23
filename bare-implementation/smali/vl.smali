.class public final Lvl;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lhz;

.field public final b:Lc40;

.field public final c:Z

.field public final d:Lek;

.field public final e:Lah;

.field public final f:Lal;

.field public final g:Ld76;

.field public final h:Lbl;

.field public final i:Llf;

.field public final j:Lej;

.field public final k:Lfj;

.field public final l:Lgj;

.field public final m:Lji;

.field public final n:Ljava/util/LinkedHashSet;

.field public final o:Lgv7;

.field public final p:Lgv7;

.field public final q:Ltl;

.field public r:Lhk;

.field public s:Z


# direct methods
.method public constructor <init>(Lhz;Lc40;ZLek;Lah;Lal;Ld76;Lbl;Llf;Lej;Lfj;Lgj;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lvl;->a:Lhz;

    .line 5
    .line 6
    iput-object p2, p0, Lvl;->b:Lc40;

    .line 7
    .line 8
    iput-boolean p3, p0, Lvl;->c:Z

    .line 9
    .line 10
    iput-object p4, p0, Lvl;->d:Lek;

    .line 11
    .line 12
    iput-object p5, p0, Lvl;->e:Lah;

    .line 13
    .line 14
    iput-object p6, p0, Lvl;->f:Lal;

    .line 15
    .line 16
    iput-object p7, p0, Lvl;->g:Ld76;

    .line 17
    .line 18
    iput-object p8, p0, Lvl;->h:Lbl;

    .line 19
    .line 20
    iput-object p9, p0, Lvl;->i:Llf;

    .line 21
    .line 22
    iput-object p10, p0, Lvl;->j:Lej;

    .line 23
    .line 24
    iput-object p11, p0, Lvl;->k:Lfj;

    .line 25
    .line 26
    iput-object p12, p0, Lvl;->l:Lgj;

    .line 27
    .line 28
    iget-object p1, p1, Lhz;->b:Lji;

    .line 29
    .line 30
    iput-object p1, p0, Lvl;->m:Lji;

    .line 31
    .line 32
    new-instance p2, Ljava/util/LinkedHashSet;

    .line 33
    .line 34
    invoke-direct {p2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object p2, p0, Lvl;->n:Ljava/util/LinkedHashSet;

    .line 38
    .line 39
    new-instance p2, Lkf;

    .line 40
    .line 41
    const/4 p3, 0x2

    .line 42
    invoke-direct {p2, p0, p3}, Lkf;-><init>(Ljava/lang/Object;I)V

    .line 43
    .line 44
    .line 45
    new-instance p3, Lgv7;

    .line 46
    .line 47
    invoke-direct {p3, p2}, Lgv7;-><init>(Lbt3;)V

    .line 48
    .line 49
    .line 50
    iput-object p3, p0, Lvl;->o:Lgv7;

    .line 51
    .line 52
    new-instance p2, Llf;

    .line 53
    .line 54
    const/4 p3, 0x3

    .line 55
    invoke-direct {p2, p0, p3}, Llf;-><init>(Ljava/lang/Object;I)V

    .line 56
    .line 57
    .line 58
    new-instance p3, Lgv7;

    .line 59
    .line 60
    invoke-direct {p3, p2}, Lgv7;-><init>(Lbt3;)V

    .line 61
    .line 62
    .line 63
    iput-object p3, p0, Lvl;->p:Lgv7;

    .line 64
    .line 65
    new-instance p2, Ltl;

    .line 66
    .line 67
    invoke-direct {p2, p1}, Ltl;-><init>(Lji;)V

    .line 68
    .line 69
    .line 70
    iput-object p2, p0, Lvl;->q:Ltl;

    .line 71
    .line 72
    return-void
.end method

.method public static b(Lvl;Lem;Liu;Ljava/lang/String;Lq63;Ljava/lang/String;Lcy0;Lod2;ZLmt3;)Z
    .locals 23

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v7, p2

    .line 4
    .line 5
    iget-object v12, v1, Lvl;->q:Ltl;

    .line 6
    .line 7
    sget-object v13, Lgz6;->i:Lgz6;

    .line 8
    .line 9
    const-string v0, "Creating "

    .line 10
    .line 11
    invoke-virtual/range {p4 .. p4}, Lq63;->t()Lq63;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual/range {p1 .. p1}, Lem;->b()J

    .line 16
    .line 17
    .line 18
    move-result-wide v3

    .line 19
    invoke-static {v2, v3, v4}, Lpj7;->a(Lq63;J)Loj7;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const/4 v14, 0x0

    .line 24
    const/4 v15, 0x1

    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    iget-object v0, v2, Loj7;->a:Ljava/lang/String;

    .line 28
    .line 29
    iget-boolean v1, v2, Loj7;->b:Z

    .line 30
    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    iput-boolean v15, v12, Ltl;->b:Z

    .line 34
    .line 35
    invoke-virtual {v12, v0}, Ltl;->a(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return v14

    .line 39
    :cond_0
    invoke-virtual {v12, v7, v0}, Ltl;->b(Liu;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return v14

    .line 43
    :cond_1
    :try_start_0
    sget-object v16, Lvr6;->INSTANCE:Lvr6;

    .line 44
    .line 45
    const-string v17, "AppBackupTask"

    .line 46
    .line 47
    invoke-virtual {v7, v15}, Liu;->toDisplayString(Z)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    new-instance v3, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v0, " backup"

    .line 60
    .line 61
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v18

    .line 68
    const/16 v20, 0x4

    .line 69
    .line 70
    const/16 v21, 0x0

    .line 71
    .line 72
    const/16 v19, 0x0

    .line 73
    .line 74
    invoke-static/range {v16 .. v21}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    sget-object v0, Lmz6;->a:Ljava/util/HashSet;

    .line 78
    .line 79
    new-instance v0, Lop3;

    .line 80
    .line 81
    new-instance v16, Lhz6;

    .line 82
    .line 83
    new-instance v2, Lq63;

    .line 84
    .line 85
    move-object/from16 v3, p3

    .line 86
    .line 87
    invoke-direct {v2, v3, v15}, Lq63;-><init>(Ljava/lang/String;I)V

    .line 88
    .line 89
    .line 90
    sget-object v3, Lay6;->a:[I

    .line 91
    .line 92
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    aget v3, v3, v4

    .line 97
    .line 98
    const/4 v4, 0x3

    .line 99
    if-eq v3, v15, :cond_4

    .line 100
    .line 101
    const/4 v5, 0x2

    .line 102
    if-eq v3, v5, :cond_4

    .line 103
    .line 104
    if-eq v3, v4, :cond_3

    .line 105
    .line 106
    const/4 v5, 0x4

    .line 107
    if-eq v3, v5, :cond_3

    .line 108
    .line 109
    const/4 v5, 0x5

    .line 110
    if-ne v3, v5, :cond_2

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_2
    new-instance v0, Lmn5;

    .line 114
    .line 115
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 116
    .line 117
    .line 118
    throw v0

    .line 119
    :cond_3
    :goto_0
    const/4 v3, 0x0

    .line 120
    :goto_1
    move-object/from16 v21, v3

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    .line 124
    .line 125
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .line 127
    .line 128
    if-nez p8, :cond_5

    .line 129
    .line 130
    const-string v5, "cache"

    .line 131
    .line 132
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    :cond_5
    const-string v5, "code_cache"

    .line 136
    .line 137
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    const-string v5, "lib"

    .line 141
    .line 142
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    const-string v5, "shared_prefs/com.google.android.gms.*"

    .line 146
    .line 147
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    goto :goto_1

    .line 151
    :goto_2
    const/16 v22, 0x8

    .line 152
    .line 153
    const/16 v19, 0x1

    .line 154
    .line 155
    const/16 v20, 0x0

    .line 156
    .line 157
    move-object/from16 v17, p5

    .line 158
    .line 159
    move-object/from16 v18, v2

    .line 160
    .line 161
    invoke-direct/range {v16 .. v22}, Lhz6;-><init>(Ljava/lang/String;Lq63;ZLjava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 162
    .line 163
    .line 164
    invoke-static/range {v16 .. v16}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 165
    .line 166
    .line 167
    move-result-object v8

    .line 168
    sget-object v9, Lf27;->Basic:Lf27;

    .line 169
    .line 170
    move-object v10, v8

    .line 171
    sget-object v8, Liz6;->Auto:Liz6;

    .line 172
    .line 173
    move-object v11, v9

    .line 174
    new-instance v9, Lbh;

    .line 175
    .line 176
    invoke-direct {v9, v1, v4}, Lbh;-><init>(Ljava/lang/Object;I)V

    .line 177
    .line 178
    .line 179
    invoke-virtual/range {p1 .. p1}, Lem;->b()J

    .line 180
    .line 181
    .line 182
    move-result-wide v2

    .line 183
    invoke-virtual/range {p1 .. p1}, Lem;->c()J

    .line 184
    .line 185
    .line 186
    move-result-wide v4

    .line 187
    move-object/from16 v6, p9

    .line 188
    .line 189
    invoke-virtual/range {v1 .. v6}, Lvl;->h(JJLmt3;)Lc07;

    .line 190
    .line 191
    .line 192
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 193
    move-object v4, v11

    .line 194
    const/16 v11, 0x40

    .line 195
    .line 196
    const/4 v7, 0x0

    .line 197
    move-object v1, v10

    .line 198
    move-object v10, v2

    .line 199
    move-object v2, v1

    .line 200
    move-object/from16 v3, p2

    .line 201
    .line 202
    move-object/from16 v1, p4

    .line 203
    .line 204
    move-object/from16 v5, p6

    .line 205
    .line 206
    move-object/from16 v6, p7

    .line 207
    .line 208
    :try_start_1
    invoke-direct/range {v0 .. v11}, Lop3;-><init>(Lq63;Ljava/util/List;Liu;Lf27;Lcy0;Lod2;Ljava/lang/String;Liz6;Lbt3;Lc07;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 209
    .line 210
    .line 211
    move-object v7, v3

    .line 212
    :try_start_2
    invoke-static {v0}, Lmz6;->b(Lop3;)Lez6;

    .line 213
    .line 214
    .line 215
    invoke-virtual/range {p1 .. p1}, Lem;->c()J

    .line 216
    .line 217
    .line 218
    move-result-wide v0

    .line 219
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    move-object/from16 v1, p9

    .line 224
    .line 225
    invoke-interface {v1, v0}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 226
    .line 227
    .line 228
    instance-of v0, v6, Lfz6;

    .line 229
    .line 230
    if-eqz v0, :cond_6

    .line 231
    .line 232
    move-object v0, v6

    .line 233
    check-cast v0, Lfz6;

    .line 234
    .line 235
    iget-object v0, v0, Lfz6;->i:[C

    .line 236
    .line 237
    invoke-static {v0}, Lx50;->o0([C)V

    .line 238
    .line 239
    .line 240
    return v15

    .line 241
    :cond_6
    invoke-virtual {v6, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    move-result v0

    .line 245
    if-eqz v0, :cond_7

    .line 246
    .line 247
    return v15

    .line 248
    :cond_7
    invoke-static {}, Lq;->j()V

    .line 249
    .line 250
    .line 251
    return v14

    .line 252
    :catchall_0
    move-exception v0

    .line 253
    goto :goto_3

    .line 254
    :catchall_1
    move-exception v0

    .line 255
    move-object v7, v3

    .line 256
    goto :goto_3

    .line 257
    :catchall_2
    move-exception v0

    .line 258
    move-object/from16 v6, p7

    .line 259
    .line 260
    :goto_3
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lvl;->i()Z

    .line 261
    .line 262
    .line 263
    move-result v1

    .line 264
    if-nez v1, :cond_9

    .line 265
    .line 266
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    if-nez v0, :cond_8

    .line 271
    .line 272
    invoke-virtual {v7, v15}, Liu;->toDisplayString(Z)Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    new-instance v1, Ljava/lang/StringBuilder;

    .line 277
    .line 278
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    const-string v0, " backup failed"

    .line 285
    .line 286
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    goto :goto_4

    .line 294
    :catchall_3
    move-exception v0

    .line 295
    goto :goto_6

    .line 296
    :cond_8
    :goto_4
    invoke-virtual {v12, v0}, Ltl;->a(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 297
    .line 298
    .line 299
    :cond_9
    instance-of v0, v6, Lfz6;

    .line 300
    .line 301
    if-eqz v0, :cond_a

    .line 302
    .line 303
    move-object v0, v6

    .line 304
    check-cast v0, Lfz6;

    .line 305
    .line 306
    iget-object v0, v0, Lfz6;->i:[C

    .line 307
    .line 308
    invoke-static {v0}, Lx50;->o0([C)V

    .line 309
    .line 310
    .line 311
    goto :goto_5

    .line 312
    :cond_a
    invoke-virtual {v6, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 313
    .line 314
    .line 315
    move-result v0

    .line 316
    if-eqz v0, :cond_b

    .line 317
    .line 318
    :goto_5
    return v14

    .line 319
    :cond_b
    invoke-static {}, Lq;->j()V

    .line 320
    .line 321
    .line 322
    return v14

    .line 323
    :goto_6
    instance-of v1, v6, Lfz6;

    .line 324
    .line 325
    if-nez v1, :cond_c

    .line 326
    .line 327
    invoke-virtual {v6, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 328
    .line 329
    .line 330
    move-result v1

    .line 331
    if-nez v1, :cond_d

    .line 332
    .line 333
    invoke-static {}, Lq;->j()V

    .line 334
    .line 335
    .line 336
    return v14

    .line 337
    :cond_c
    move-object v1, v6

    .line 338
    check-cast v1, Lfz6;

    .line 339
    .line 340
    iget-object v1, v1, Lfz6;->i:[C

    .line 341
    .line 342
    invoke-static {v1}, Lx50;->o0([C)V

    .line 343
    .line 344
    .line 345
    :cond_d
    throw v0
.end method

.method public static d(Lok0;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lok0;->n:Lhk;

    .line 2
    .line 3
    invoke-virtual {v0}, Lhk;->z()Lq63;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lq63;->j()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 14
    .line 15
    const/4 v6, 0x4

    .line 16
    const/4 v7, 0x0

    .line 17
    const-string v3, "AppBackupTask"

    .line 18
    .line 19
    const-string v4, "Removing shared libs archive because current APK has no shared libs"

    .line 20
    .line 21
    const/4 v5, 0x0

    .line 22
    invoke-static/range {v2 .. v7}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lq63;->h()Z

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object p0, p0, Lok0;->t:Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;

    .line 29
    .line 30
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->clearSharedLibsDetails()V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public static e(Lok0;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lok0;->n:Lhk;

    .line 2
    .line 3
    invoke-virtual {v0}, Lhk;->C()Lq63;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lq63;->j()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 14
    .line 15
    const/4 v6, 0x4

    .line 16
    const/4 v7, 0x0

    .line 17
    const-string v3, "AppBackupTask"

    .line 18
    .line 19
    const-string v4, "Removing Split APKs archive because current APK has no Splits"

    .line 20
    .line 21
    const/4 v5, 0x0

    .line 22
    invoke-static/range {v2 .. v7}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lq63;->h()Z

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object p0, p0, Lok0;->t:Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;

    .line 29
    .line 30
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->clearSplitsDetails()V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public static j(Lxp1;)Lcy0;
    .locals 1

    .line 1
    sget-object v0, Lxp1;->NO_COMPRESSION:Lxp1;

    .line 2
    .line 3
    if-ne p0, v0, :cond_0

    .line 4
    .line 5
    sget-object p0, Loy6;->j:Loy6;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    new-instance v0, Lpy6;

    .line 9
    .line 10
    invoke-virtual {p0}, Lxp1;->getLevel()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    invoke-direct {v0, p0}, Lpy6;-><init>(I)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method


# virtual methods
.method public final a(Lq63;Lok0;Lxk;)V
    .locals 55

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v11, p2

    .line 4
    .line 5
    iget-object v12, v11, Lok0;->t:Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;

    .line 6
    .line 7
    iget-object v13, v11, Lok0;->n:Lhk;

    .line 8
    .line 9
    sget-object v20, Lgz6;->i:Lgz6;

    .line 10
    .line 11
    iget-object v0, v1, Lvl;->b:Lc40;

    .line 12
    .line 13
    iget-object v8, v0, Lpw6;->i:Lex6;

    .line 14
    .line 15
    iget-object v9, v1, Lvl;->a:Lhz;

    .line 16
    .line 17
    iget-object v10, v9, Lhz;->h:Lxp1;

    .line 18
    .line 19
    iget-boolean v14, v9, Lhz;->g:Z

    .line 20
    .line 21
    new-instance v15, Ljava/util/ArrayList;

    .line 22
    .line 23
    iget-object v0, v1, Lvl;->n:Ljava/util/LinkedHashSet;

    .line 24
    .line 25
    const/16 v2, 0xa

    .line 26
    .line 27
    invoke-static {v0, v2}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    invoke-direct {v15, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 32
    .line 33
    .line 34
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    iget-object v4, v1, Lvl;->m:Lji;

    .line 43
    .line 44
    if-eqz v3, :cond_0

    .line 45
    .line 46
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    check-cast v3, Lgz;

    .line 51
    .line 52
    sget-object v5, Lul;->a:[I

    .line 53
    .line 54
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    aget v3, v5, v3

    .line 59
    .line 60
    packed-switch v3, :pswitch_data_0

    .line 61
    .line 62
    .line 63
    invoke-static {}, Lq;->j()V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :pswitch_0
    const-string v0, "SpecialData is generated with app metadata, not an app part backup task"

    .line 68
    .line 69
    invoke-static {v0}, Ll0;->e(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :pswitch_1
    new-instance v3, Lbm;

    .line 74
    .line 75
    invoke-direct {v3, v4}, Lbm;-><init>(Lji;)V

    .line 76
    .line 77
    .line 78
    :goto_1
    move-object/from16 v5, p1

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :pswitch_2
    new-instance v3, Lzl;

    .line 82
    .line 83
    invoke-direct {v3, v4}, Lzl;-><init>(Lji;)V

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :pswitch_3
    new-instance v3, Lam;

    .line 88
    .line 89
    invoke-direct {v3, v4, v14}, Lam;-><init>(Lji;Z)V

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :pswitch_4
    new-instance v3, Lyl;

    .line 94
    .line 95
    invoke-direct {v3, v4, v14}, Lyl;-><init>(Lji;Z)V

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :pswitch_5
    new-instance v3, Lcm;

    .line 100
    .line 101
    invoke-virtual {v4}, Lji;->getSharedLibsInfos()Ljava/util/List;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    invoke-virtual {v13}, Lhk;->z()Lq63;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    invoke-direct {v3, v4, v5}, Lcm;-><init>(Ljava/util/List;Lq63;)V

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :pswitch_6
    new-instance v3, Ldm;

    .line 114
    .line 115
    invoke-virtual {v4}, Lji;->getSplitSourceDirs()Ljava/util/List;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    invoke-virtual {v13}, Lhk;->C()Lq63;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    invoke-direct {v3, v4, v5}, Ldm;-><init>(Ljava/util/List;Lq63;)V

    .line 124
    .line 125
    .line 126
    goto :goto_1

    .line 127
    :pswitch_7
    new-instance v3, Lwl;

    .line 128
    .line 129
    move-object/from16 v5, p1

    .line 130
    .line 131
    invoke-direct {v3, v5}, Lwl;-><init>(Lq63;)V

    .line 132
    .line 133
    .line 134
    :goto_2
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_0
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    const-wide/16 v5, 0x0

    .line 143
    .line 144
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 145
    .line 146
    .line 147
    move-result v3

    .line 148
    if-eqz v3, :cond_1

    .line 149
    .line 150
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    check-cast v3, Lem;

    .line 155
    .line 156
    invoke-virtual {v3}, Lem;->c()J

    .line 157
    .line 158
    .line 159
    move-result-wide v16

    .line 160
    add-long v5, v16, v5

    .line 161
    .line 162
    goto :goto_3

    .line 163
    :cond_1
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 164
    .line 165
    .line 166
    move-result-object v26

    .line 167
    const/4 v3, 0x0

    .line 168
    move v0, v3

    .line 169
    :goto_4
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    .line 170
    .line 171
    .line 172
    move-result v7

    .line 173
    if-eqz v7, :cond_24

    .line 174
    .line 175
    add-int/lit8 v27, v0, 0x1

    .line 176
    .line 177
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v7

    .line 181
    check-cast v7, Lem;

    .line 182
    .line 183
    invoke-virtual {v1}, Lvl;->i()Z

    .line 184
    .line 185
    .line 186
    move-result v16

    .line 187
    if-eqz v16, :cond_2

    .line 188
    .line 189
    goto/16 :goto_1e

    .line 190
    .line 191
    :cond_2
    move/from16 v16, v3

    .line 192
    .line 193
    new-instance v3, Lkh6;

    .line 194
    .line 195
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 196
    .line 197
    .line 198
    move/from16 v2, v16

    .line 199
    .line 200
    :goto_5
    if-ge v2, v0, :cond_3

    .line 201
    .line 202
    move-object/from16 v18, v4

    .line 203
    .line 204
    move-wide/from16 v21, v5

    .line 205
    .line 206
    iget-wide v4, v3, Lkh6;->a:J

    .line 207
    .line 208
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v6

    .line 212
    check-cast v6, Lem;

    .line 213
    .line 214
    invoke-virtual {v6}, Lem;->c()J

    .line 215
    .line 216
    .line 217
    move-result-wide v23

    .line 218
    add-long v4, v23, v4

    .line 219
    .line 220
    iput-wide v4, v3, Lkh6;->a:J

    .line 221
    .line 222
    add-int/lit8 v2, v2, 0x1

    .line 223
    .line 224
    move-object/from16 v4, v18

    .line 225
    .line 226
    move-wide/from16 v5, v21

    .line 227
    .line 228
    goto :goto_5

    .line 229
    :cond_3
    move-object/from16 v18, v4

    .line 230
    .line 231
    move-wide/from16 v21, v5

    .line 232
    .line 233
    instance-of v0, v7, Lwl;

    .line 234
    .line 235
    const/4 v2, 0x1

    .line 236
    iget-object v4, v1, Lvl;->q:Ltl;

    .line 237
    .line 238
    const/4 v5, 0x0

    .line 239
    const-string v6, " ("

    .line 240
    .line 241
    move-object/from16 p1, v7

    .line 242
    .line 243
    const-string v7, ")"

    .line 244
    .line 245
    if-eqz v0, :cond_6

    .line 246
    .line 247
    move-object/from16 v0, p1

    .line 248
    .line 249
    check-cast v0, Lwl;

    .line 250
    .line 251
    move/from16 v19, v2

    .line 252
    .line 253
    new-instance v2, Lml;

    .line 254
    .line 255
    move-object/from16 v23, v7

    .line 256
    .line 257
    const/4 v7, 0x1

    .line 258
    move-object/from16 v29, v9

    .line 259
    .line 260
    move-object/from16 v31, v10

    .line 261
    .line 262
    move-object/from16 v28, v13

    .line 263
    .line 264
    move/from16 v17, v14

    .line 265
    .line 266
    move-object/from16 v30, v18

    .line 267
    .line 268
    move-object/from16 v14, v23

    .line 269
    .line 270
    const/16 v10, 0xa

    .line 271
    .line 272
    move-object v9, v4

    .line 273
    move-object v13, v6

    .line 274
    move-wide/from16 v4, v21

    .line 275
    .line 276
    move-object/from16 v6, p3

    .line 277
    .line 278
    invoke-direct/range {v2 .. v7}, Lml;-><init>(Lkh6;JLxk;I)V

    .line 279
    .line 280
    .line 281
    move-wide/from16 v53, v4

    .line 282
    .line 283
    move-object v4, v2

    .line 284
    move-wide/from16 v2, v53

    .line 285
    .line 286
    move-object v7, v6

    .line 287
    sget-object v5, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 288
    .line 289
    const v5, 0x7f130088

    .line 290
    .line 291
    .line 292
    invoke-static {v5}, Ldj7;->g(I)Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v5

    .line 296
    sget-object v6, Lp93;->a:Lp93;

    .line 297
    .line 298
    invoke-virtual {v0}, Lwl;->d()J

    .line 299
    .line 300
    .line 301
    move-result-wide v21

    .line 302
    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 303
    .line 304
    .line 305
    move-result-object v6

    .line 306
    invoke-static {v6}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v6

    .line 310
    sget-object v32, Lvr6;->INSTANCE:Lvr6;

    .line 311
    .line 312
    const-string v10, "Backing up APK ("

    .line 313
    .line 314
    invoke-static {v10, v6, v14}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v34

    .line 318
    const/16 v36, 0x4

    .line 319
    .line 320
    const/16 v37, 0x0

    .line 321
    .line 322
    const-string v33, "AppBackupTask"

    .line 323
    .line 324
    const/16 v35, 0x0

    .line 325
    .line 326
    invoke-static/range {v32 .. v37}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 327
    .line 328
    .line 329
    new-instance v10, Ljava/lang/StringBuilder;

    .line 330
    .line 331
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 332
    .line 333
    .line 334
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v5

    .line 350
    invoke-virtual {v8, v5}, Lex6;->k(Ljava/lang/Object;)V

    .line 351
    .line 352
    .line 353
    invoke-virtual/range {v28 .. v28}, Lhk;->c()Lq63;

    .line 354
    .line 355
    .line 356
    move-result-object v5

    .line 357
    invoke-virtual {v5}, Lq63;->t()Lq63;

    .line 358
    .line 359
    .line 360
    move-result-object v6

    .line 361
    invoke-virtual {v0}, Lwl;->b()J

    .line 362
    .line 363
    .line 364
    move-result-wide v13

    .line 365
    invoke-static {v6, v13, v14}, Lpj7;->b(Lq63;J)Loj7;

    .line 366
    .line 367
    .line 368
    move-result-object v6

    .line 369
    if-eqz v6, :cond_5

    .line 370
    .line 371
    iget-object v0, v6, Loj7;->a:Ljava/lang/String;

    .line 372
    .line 373
    iget-boolean v4, v6, Loj7;->b:Z

    .line 374
    .line 375
    if-eqz v4, :cond_4

    .line 376
    .line 377
    const/4 v4, 0x1

    .line 378
    iput-boolean v4, v9, Ltl;->b:Z

    .line 379
    .line 380
    invoke-virtual {v9, v0}, Ltl;->a(Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    goto :goto_6

    .line 384
    :cond_4
    sget-object v4, Liu;->APP:Liu;

    .line 385
    .line 386
    invoke-virtual {v9, v4, v0}, Ltl;->b(Liu;Ljava/lang/String;)V

    .line 387
    .line 388
    .line 389
    goto :goto_6

    .line 390
    :cond_5
    new-instance v6, Lh86;

    .line 391
    .line 392
    sget-object v9, Lg86;->a:Lg86;

    .line 393
    .line 394
    const-wide v13, 0x7fffffffffffffffL

    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    const/4 v10, 0x0

    .line 400
    invoke-direct {v6, v9, v13, v14, v10}, Lh86;-><init>(Lbt3;JLjava/lang/Long;)V

    .line 401
    .line 402
    .line 403
    iget-object v9, v0, Lwl;->b:Lq63;

    .line 404
    .line 405
    new-instance v10, Lkl;

    .line 406
    .line 407
    invoke-direct {v10, v4, v1, v0, v6}, Lkl;-><init>(Lml;Lvl;Lwl;Lh86;)V

    .line 408
    .line 409
    .line 410
    invoke-virtual {v9, v5, v10}, Lq63;->d(Lq63;Lkl;)V

    .line 411
    .line 412
    .line 413
    invoke-virtual/range {v30 .. v30}, Lji;->getVersionName()Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v4

    .line 417
    invoke-virtual/range {v30 .. v30}, Lji;->getVersionCode()Ljava/lang/Long;

    .line 418
    .line 419
    .line 420
    move-result-object v5

    .line 421
    invoke-virtual {v0}, Lwl;->d()J

    .line 422
    .line 423
    .line 424
    move-result-wide v9

    .line 425
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 426
    .line 427
    .line 428
    move-result-object v0

    .line 429
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 430
    .line 431
    .line 432
    move-result-wide v9

    .line 433
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 434
    .line 435
    .line 436
    move-result-object v6

    .line 437
    invoke-virtual {v12, v4, v5, v0, v6}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->updateApkDetails(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 438
    .line 439
    .line 440
    invoke-virtual {v1, v11}, Lvl;->f(Lok0;)V

    .line 441
    .line 442
    .line 443
    :goto_6
    move-wide/from16 v51, v2

    .line 444
    .line 445
    move-object/from16 v32, v8

    .line 446
    .line 447
    move-object/from16 v34, v15

    .line 448
    .line 449
    move/from16 v33, v17

    .line 450
    .line 451
    move-object/from16 v18, v30

    .line 452
    .line 453
    const/16 v17, 0x0

    .line 454
    .line 455
    const/16 v38, 0xa

    .line 456
    .line 457
    goto/16 :goto_1d

    .line 458
    .line 459
    :cond_6
    move-object/from16 v0, p1

    .line 460
    .line 461
    move-object/from16 v29, v9

    .line 462
    .line 463
    move-object/from16 v31, v10

    .line 464
    .line 465
    move-object/from16 v28, v13

    .line 466
    .line 467
    move/from16 v17, v14

    .line 468
    .line 469
    move-object/from16 v30, v18

    .line 470
    .line 471
    move-object v9, v4

    .line 472
    move-object v13, v6

    .line 473
    move-object v14, v7

    .line 474
    move-object/from16 v7, p3

    .line 475
    .line 476
    move-object v4, v3

    .line 477
    move-wide/from16 v2, v21

    .line 478
    .line 479
    instance-of v5, v0, Ldm;

    .line 480
    .line 481
    const-string v10, "Backing up "

    .line 482
    .line 483
    if-eqz v5, :cond_d

    .line 484
    .line 485
    check-cast v0, Ldm;

    .line 486
    .line 487
    iget-object v5, v0, Ldm;->e:Lgv7;

    .line 488
    .line 489
    new-instance v6, Lll;

    .line 490
    .line 491
    invoke-direct {v6, v4, v2, v3, v7}, Lll;-><init>(Lkh6;JLxk;)V

    .line 492
    .line 493
    .line 494
    invoke-virtual {v5}, Lgv7;->getValue()Ljava/lang/Object;

    .line 495
    .line 496
    .line 497
    move-result-object v4

    .line 498
    check-cast v4, Ljava/util/List;

    .line 499
    .line 500
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 501
    .line 502
    .line 503
    move-result v4

    .line 504
    if-eqz v4, :cond_7

    .line 505
    .line 506
    invoke-static {v11}, Lvl;->e(Lok0;)V

    .line 507
    .line 508
    .line 509
    move-object v6, v1

    .line 510
    move-wide/from16 v32, v2

    .line 511
    .line 512
    move-object/from16 v34, v15

    .line 513
    .line 514
    move/from16 v2, v17

    .line 515
    .line 516
    goto/16 :goto_c

    .line 517
    .line 518
    :cond_7
    sget-object v4, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 519
    .line 520
    const v4, 0x7f13008e

    .line 521
    .line 522
    .line 523
    invoke-static {v4}, Ldj7;->g(I)Ljava/lang/String;

    .line 524
    .line 525
    .line 526
    move-result-object v4

    .line 527
    sget-object v16, Lp93;->a:Lp93;

    .line 528
    .line 529
    invoke-virtual {v0}, Ldm;->d()J

    .line 530
    .line 531
    .line 532
    move-result-wide v21

    .line 533
    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 534
    .line 535
    .line 536
    move-result-object v16

    .line 537
    move-wide/from16 v21, v2

    .line 538
    .line 539
    invoke-static/range {v16 .. v16}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 540
    .line 541
    .line 542
    move-result-object v2

    .line 543
    sget-object v32, Lvr6;->INSTANCE:Lvr6;

    .line 544
    .line 545
    invoke-virtual {v5}, Lgv7;->getValue()Ljava/lang/Object;

    .line 546
    .line 547
    .line 548
    move-result-object v3

    .line 549
    check-cast v3, Ljava/util/List;

    .line 550
    .line 551
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 552
    .line 553
    .line 554
    move-result v3

    .line 555
    move-object/from16 v16, v5

    .line 556
    .line 557
    new-instance v5, Ljava/lang/StringBuilder;

    .line 558
    .line 559
    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 560
    .line 561
    .line 562
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 563
    .line 564
    .line 565
    const-string v3, " splits ("

    .line 566
    .line 567
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    .line 569
    .line 570
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    .line 572
    .line 573
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    .line 575
    .line 576
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 577
    .line 578
    .line 579
    move-result-object v34

    .line 580
    const/16 v36, 0x4

    .line 581
    .line 582
    const/16 v37, 0x0

    .line 583
    .line 584
    const-string v33, "AppBackupTask"

    .line 585
    .line 586
    const/16 v35, 0x0

    .line 587
    .line 588
    invoke-static/range {v32 .. v37}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 589
    .line 590
    .line 591
    new-instance v3, Ljava/lang/StringBuilder;

    .line 592
    .line 593
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 594
    .line 595
    .line 596
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    .line 598
    .line 599
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    .line 601
    .line 602
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    .line 604
    .line 605
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    .line 607
    .line 608
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 609
    .line 610
    .line 611
    move-result-object v2

    .line 612
    invoke-virtual {v8, v2}, Lex6;->k(Ljava/lang/Object;)V

    .line 613
    .line 614
    .line 615
    move-object v10, v15

    .line 616
    iget-object v15, v0, Ldm;->c:Lq63;

    .line 617
    .line 618
    invoke-virtual {v15}, Lq63;->t()Lq63;

    .line 619
    .line 620
    .line 621
    move-result-object v2

    .line 622
    invoke-virtual {v0}, Ldm;->d()J

    .line 623
    .line 624
    .line 625
    move-result-wide v3

    .line 626
    invoke-static {v2, v3, v4}, Lpj7;->a(Lq63;J)Loj7;

    .line 627
    .line 628
    .line 629
    move-result-object v2

    .line 630
    if-eqz v2, :cond_9

    .line 631
    .line 632
    iget-object v0, v2, Loj7;->a:Ljava/lang/String;

    .line 633
    .line 634
    iget-boolean v2, v2, Loj7;->b:Z

    .line 635
    .line 636
    if-eqz v2, :cond_8

    .line 637
    .line 638
    const/4 v4, 0x1

    .line 639
    iput-boolean v4, v9, Ltl;->b:Z

    .line 640
    .line 641
    invoke-virtual {v9, v0}, Ltl;->a(Ljava/lang/String;)V

    .line 642
    .line 643
    .line 644
    :goto_7
    move-object v6, v1

    .line 645
    move-object/from16 v34, v10

    .line 646
    .line 647
    move/from16 v2, v17

    .line 648
    .line 649
    move-wide/from16 v32, v21

    .line 650
    .line 651
    goto/16 :goto_c

    .line 652
    .line 653
    :cond_8
    sget-object v2, Liu;->APP:Liu;

    .line 654
    .line 655
    invoke-virtual {v9, v2, v0}, Ltl;->b(Liu;Ljava/lang/String;)V

    .line 656
    .line 657
    .line 658
    goto :goto_7

    .line 659
    :cond_9
    :try_start_0
    const-string v33, "AppBackupTask"

    .line 660
    .line 661
    const-string v34, "Creating Split APKs backup"

    .line 662
    .line 663
    const/16 v36, 0x4

    .line 664
    .line 665
    const/16 v37, 0x0

    .line 666
    .line 667
    const/16 v35, 0x0

    .line 668
    .line 669
    invoke-static/range {v32 .. v37}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 670
    .line 671
    .line 672
    sget-object v2, Lmz6;->a:Ljava/util/HashSet;

    .line 673
    .line 674
    invoke-virtual/range {v16 .. v16}, Lgv7;->getValue()Ljava/lang/Object;

    .line 675
    .line 676
    .line 677
    move-result-object v2

    .line 678
    check-cast v2, Ljava/util/List;

    .line 679
    .line 680
    new-instance v13, Ljava/util/ArrayList;

    .line 681
    .line 682
    const/16 v3, 0xa

    .line 683
    .line 684
    invoke-static {v2, v3}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 685
    .line 686
    .line 687
    move-result v4

    .line 688
    invoke-direct {v13, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 689
    .line 690
    .line 691
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 692
    .line 693
    .line 694
    move-result-object v2

    .line 695
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 696
    .line 697
    .line 698
    move-result v3

    .line 699
    if-eqz v3, :cond_a

    .line 700
    .line 701
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 702
    .line 703
    .line 704
    move-result-object v3

    .line 705
    move-object/from16 v41, v3

    .line 706
    .line 707
    check-cast v41, Lq63;

    .line 708
    .line 709
    new-instance v39, Lhz6;

    .line 710
    .line 711
    invoke-virtual/range {v41 .. v41}, Lq63;->p()Ljava/lang/String;

    .line 712
    .line 713
    .line 714
    move-result-object v40

    .line 715
    const/16 v44, 0x0

    .line 716
    .line 717
    const/16 v45, 0x18

    .line 718
    .line 719
    const/16 v42, 0x1

    .line 720
    .line 721
    const/16 v43, 0x0

    .line 722
    .line 723
    invoke-direct/range {v39 .. v45}, Lhz6;-><init>(Ljava/lang/String;Lq63;ZLjava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 724
    .line 725
    .line 726
    move-object/from16 v3, v39

    .line 727
    .line 728
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 729
    .line 730
    .line 731
    goto :goto_8

    .line 732
    :catchall_0
    move-exception v0

    .line 733
    move-object v6, v1

    .line 734
    move-object/from16 v34, v10

    .line 735
    .line 736
    move/from16 v2, v17

    .line 737
    .line 738
    :goto_9
    move-wide/from16 v32, v21

    .line 739
    .line 740
    goto/16 :goto_b

    .line 741
    .line 742
    :cond_a
    move/from16 v14, v17

    .line 743
    .line 744
    :try_start_1
    sget-object v17, Liu;->APP:Liu;

    .line 745
    .line 746
    const/4 v2, 0x3

    .line 747
    sget-object v18, Lf27;->Basic:Lf27;

    .line 748
    .line 749
    invoke-static/range {v31 .. v31}, Lvl;->j(Lxp1;)Lcy0;

    .line 750
    .line 751
    .line 752
    move-result-object v19
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    .line 753
    move-wide/from16 v4, v21

    .line 754
    .line 755
    :try_start_2
    sget-object v22, Liz6;->Auto:Liz6;

    .line 756
    .line 757
    new-instance v3, Lek;

    .line 758
    .line 759
    invoke-direct {v3, v1, v2}, Lek;-><init>(Ljava/lang/Object;I)V

    .line 760
    .line 761
    .line 762
    move-object/from16 v23, v3

    .line 763
    .line 764
    invoke-virtual {v0}, Ldm;->b()J

    .line 765
    .line 766
    .line 767
    move-result-wide v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 768
    move-wide/from16 v24, v4

    .line 769
    .line 770
    :try_start_3
    invoke-virtual {v0}, Lem;->c()J

    .line 771
    .line 772
    .line 773
    move-result-wide v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 774
    move-wide/from16 v32, v24

    .line 775
    .line 776
    :try_start_4
    invoke-virtual/range {v1 .. v6}, Lvl;->h(JJLmt3;)Lc07;

    .line 777
    .line 778
    .line 779
    move-result-object v24
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 780
    move-object/from16 v53, v6

    .line 781
    .line 782
    move-object v6, v1

    .line 783
    move-object/from16 v1, v53

    .line 784
    .line 785
    move v2, v14

    .line 786
    :try_start_5
    new-instance v14, Lop3;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 787
    .line 788
    const/16 v21, 0x0

    .line 789
    .line 790
    const/16 v25, 0x40

    .line 791
    .line 792
    move-object/from16 v34, v10

    .line 793
    .line 794
    move-object/from16 v16, v13

    .line 795
    .line 796
    :try_start_6
    invoke-direct/range {v14 .. v25}, Lop3;-><init>(Lq63;Ljava/util/List;Liu;Lf27;Lcy0;Lod2;Ljava/lang/String;Liz6;Lbt3;Lc07;I)V

    .line 797
    .line 798
    .line 799
    invoke-static {v14}, Lmz6;->b(Lop3;)Lez6;

    .line 800
    .line 801
    .line 802
    invoke-virtual {v0}, Lem;->c()J

    .line 803
    .line 804
    .line 805
    move-result-wide v3

    .line 806
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 807
    .line 808
    .line 809
    move-result-object v3

    .line 810
    invoke-virtual {v1, v3}, Lll;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 811
    .line 812
    .line 813
    invoke-virtual {v15}, Lq63;->A()J

    .line 814
    .line 815
    .line 816
    move-result-wide v3

    .line 817
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 818
    .line 819
    .line 820
    move-result-object v1

    .line 821
    invoke-virtual {v0}, Ldm;->d()J

    .line 822
    .line 823
    .line 824
    move-result-wide v3

    .line 825
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 826
    .line 827
    .line 828
    move-result-object v0

    .line 829
    invoke-virtual {v12, v1, v0}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->updateSplitsDetails(Ljava/lang/Long;Ljava/lang/Long;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 830
    .line 831
    .line 832
    goto :goto_c

    .line 833
    :catchall_1
    move-exception v0

    .line 834
    goto :goto_b

    .line 835
    :catchall_2
    move-exception v0

    .line 836
    move-object/from16 v34, v10

    .line 837
    .line 838
    goto :goto_b

    .line 839
    :catchall_3
    move-exception v0

    .line 840
    move-object v6, v1

    .line 841
    :goto_a
    move-object/from16 v34, v10

    .line 842
    .line 843
    move v2, v14

    .line 844
    goto :goto_b

    .line 845
    :catchall_4
    move-exception v0

    .line 846
    move-object v6, v1

    .line 847
    move-object/from16 v34, v10

    .line 848
    .line 849
    move v2, v14

    .line 850
    move-wide/from16 v32, v24

    .line 851
    .line 852
    goto :goto_b

    .line 853
    :catchall_5
    move-exception v0

    .line 854
    move-object v6, v1

    .line 855
    move-wide/from16 v32, v4

    .line 856
    .line 857
    goto :goto_a

    .line 858
    :catchall_6
    move-exception v0

    .line 859
    move-object v6, v1

    .line 860
    move-object/from16 v34, v10

    .line 861
    .line 862
    move v2, v14

    .line 863
    goto :goto_9

    .line 864
    :goto_b
    invoke-virtual {v6}, Lvl;->i()Z

    .line 865
    .line 866
    .line 867
    move-result v1

    .line 868
    if-nez v1, :cond_c

    .line 869
    .line 870
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 871
    .line 872
    .line 873
    move-result-object v0

    .line 874
    if-nez v0, :cond_b

    .line 875
    .line 876
    const-string v0, "Split APKs backup failed"

    .line 877
    .line 878
    :cond_b
    invoke-virtual {v9, v0}, Ltl;->a(Ljava/lang/String;)V

    .line 879
    .line 880
    .line 881
    :cond_c
    :goto_c
    move-object/from16 v18, v30

    .line 882
    .line 883
    move-wide/from16 v51, v32

    .line 884
    .line 885
    const/16 v17, 0x0

    .line 886
    .line 887
    const/16 v38, 0xa

    .line 888
    .line 889
    move/from16 v33, v2

    .line 890
    .line 891
    move-object/from16 v32, v8

    .line 892
    .line 893
    goto/16 :goto_1d

    .line 894
    .line 895
    :cond_d
    move-object v6, v1

    .line 896
    move-wide/from16 v32, v2

    .line 897
    .line 898
    move-object/from16 v34, v15

    .line 899
    .line 900
    move/from16 v2, v17

    .line 901
    .line 902
    instance-of v1, v0, Lcm;

    .line 903
    .line 904
    if-eqz v1, :cond_16

    .line 905
    .line 906
    move-object v15, v0

    .line 907
    check-cast v15, Lcm;

    .line 908
    .line 909
    iget-object v0, v15, Lcm;->e:Lgv7;

    .line 910
    .line 911
    move-object v1, v0

    .line 912
    new-instance v0, Lml;

    .line 913
    .line 914
    const/4 v5, 0x0

    .line 915
    move-object/from16 v17, v1

    .line 916
    .line 917
    move-object v1, v4

    .line 918
    move-object v4, v7

    .line 919
    move v7, v2

    .line 920
    move-wide/from16 v2, v32

    .line 921
    .line 922
    invoke-direct/range {v0 .. v5}, Lml;-><init>(Lkh6;JLxk;I)V

    .line 923
    .line 924
    .line 925
    invoke-virtual/range {v17 .. v17}, Lgv7;->getValue()Ljava/lang/Object;

    .line 926
    .line 927
    .line 928
    move-result-object v1

    .line 929
    check-cast v1, Ljava/util/List;

    .line 930
    .line 931
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 932
    .line 933
    .line 934
    move-result v1

    .line 935
    if-eqz v1, :cond_e

    .line 936
    .line 937
    invoke-static {v11}, Lvl;->d(Lok0;)V

    .line 938
    .line 939
    .line 940
    :goto_d
    move-object/from16 v10, p3

    .line 941
    .line 942
    move-object v1, v6

    .line 943
    move/from16 v33, v7

    .line 944
    .line 945
    move-object/from16 v32, v8

    .line 946
    .line 947
    const/16 v13, 0xa

    .line 948
    .line 949
    move-wide v7, v2

    .line 950
    goto/16 :goto_13

    .line 951
    .line 952
    :cond_e
    sget-object v1, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 953
    .line 954
    const v1, 0x7f13008d

    .line 955
    .line 956
    .line 957
    invoke-static {v1}, Ldj7;->g(I)Ljava/lang/String;

    .line 958
    .line 959
    .line 960
    move-result-object v1

    .line 961
    sget-object v4, Lp93;->a:Lp93;

    .line 962
    .line 963
    invoke-virtual {v15}, Lcm;->d()J

    .line 964
    .line 965
    .line 966
    move-result-wide v4

    .line 967
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 968
    .line 969
    .line 970
    move-result-object v4

    .line 971
    invoke-static {v4}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 972
    .line 973
    .line 974
    move-result-object v4

    .line 975
    sget-object v39, Lvr6;->INSTANCE:Lvr6;

    .line 976
    .line 977
    invoke-virtual/range {v17 .. v17}, Lgv7;->getValue()Ljava/lang/Object;

    .line 978
    .line 979
    .line 980
    move-result-object v5

    .line 981
    check-cast v5, Ljava/util/List;

    .line 982
    .line 983
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 984
    .line 985
    .line 986
    move-result v5

    .line 987
    move-object/from16 v18, v0

    .line 988
    .line 989
    new-instance v0, Ljava/lang/StringBuilder;

    .line 990
    .line 991
    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 992
    .line 993
    .line 994
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 995
    .line 996
    .line 997
    const-string v5, " shared libs ("

    .line 998
    .line 999
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1000
    .line 1001
    .line 1002
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1003
    .line 1004
    .line 1005
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1006
    .line 1007
    .line 1008
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1009
    .line 1010
    .line 1011
    move-result-object v41

    .line 1012
    const/16 v43, 0x4

    .line 1013
    .line 1014
    const/16 v44, 0x0

    .line 1015
    .line 1016
    const-string v40, "AppBackupTask"

    .line 1017
    .line 1018
    const/16 v42, 0x0

    .line 1019
    .line 1020
    invoke-static/range {v39 .. v44}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 1021
    .line 1022
    .line 1023
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1024
    .line 1025
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1026
    .line 1027
    .line 1028
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1029
    .line 1030
    .line 1031
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1032
    .line 1033
    .line 1034
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1035
    .line 1036
    .line 1037
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1038
    .line 1039
    .line 1040
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1041
    .line 1042
    .line 1043
    move-result-object v0

    .line 1044
    invoke-virtual {v8, v0}, Lex6;->k(Ljava/lang/Object;)V

    .line 1045
    .line 1046
    .line 1047
    iget-object v0, v15, Lcm;->c:Lq63;

    .line 1048
    .line 1049
    invoke-virtual {v0}, Lq63;->t()Lq63;

    .line 1050
    .line 1051
    .line 1052
    move-result-object v1

    .line 1053
    invoke-virtual {v15}, Lcm;->d()J

    .line 1054
    .line 1055
    .line 1056
    move-result-wide v4

    .line 1057
    invoke-static {v1, v4, v5}, Lpj7;->a(Lq63;J)Loj7;

    .line 1058
    .line 1059
    .line 1060
    move-result-object v1

    .line 1061
    if-eqz v1, :cond_10

    .line 1062
    .line 1063
    iget-object v0, v1, Loj7;->a:Ljava/lang/String;

    .line 1064
    .line 1065
    iget-boolean v1, v1, Loj7;->b:Z

    .line 1066
    .line 1067
    if-eqz v1, :cond_f

    .line 1068
    .line 1069
    const/4 v4, 0x1

    .line 1070
    iput-boolean v4, v9, Ltl;->b:Z

    .line 1071
    .line 1072
    invoke-virtual {v9, v0}, Ltl;->a(Ljava/lang/String;)V

    .line 1073
    .line 1074
    .line 1075
    goto/16 :goto_d

    .line 1076
    .line 1077
    :cond_f
    sget-object v1, Liu;->APP:Liu;

    .line 1078
    .line 1079
    invoke-virtual {v9, v1, v0}, Ltl;->b(Liu;Ljava/lang/String;)V

    .line 1080
    .line 1081
    .line 1082
    goto/16 :goto_d

    .line 1083
    .line 1084
    :cond_10
    :try_start_7
    const-string v40, "AppBackupTask"

    .line 1085
    .line 1086
    const-string v41, "Creating Shared Libs backup"

    .line 1087
    .line 1088
    const/16 v43, 0x4

    .line 1089
    .line 1090
    const/16 v44, 0x0

    .line 1091
    .line 1092
    const/16 v42, 0x0

    .line 1093
    .line 1094
    invoke-static/range {v39 .. v44}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 1095
    .line 1096
    .line 1097
    sget-object v1, Lmz6;->a:Ljava/util/HashSet;

    .line 1098
    .line 1099
    invoke-virtual/range {v17 .. v17}, Lgv7;->getValue()Ljava/lang/Object;

    .line 1100
    .line 1101
    .line 1102
    move-result-object v1

    .line 1103
    check-cast v1, Ljava/util/List;

    .line 1104
    .line 1105
    new-instance v10, Ljava/util/ArrayList;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_b

    .line 1106
    .line 1107
    const/16 v13, 0xa

    .line 1108
    .line 1109
    :try_start_8
    invoke-static {v1, v13}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 1110
    .line 1111
    .line 1112
    move-result v4

    .line 1113
    invoke-direct {v10, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1114
    .line 1115
    .line 1116
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1117
    .line 1118
    .line 1119
    move-result-object v1

    .line 1120
    const/4 v4, 0x0

    .line 1121
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1122
    .line 1123
    .line 1124
    move-result v5

    .line 1125
    if-eqz v5, :cond_13

    .line 1126
    .line 1127
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1128
    .line 1129
    .line 1130
    move-result-object v5

    .line 1131
    add-int/lit8 v14, v4, 0x1

    .line 1132
    .line 1133
    if-ltz v4, :cond_12

    .line 1134
    .line 1135
    move-object/from16 v37, v5

    .line 1136
    .line 1137
    check-cast v37, Lq63;

    .line 1138
    .line 1139
    new-instance v35, Lhz6;

    .line 1140
    .line 1141
    iget-object v5, v15, Lcm;->b:Ljava/util/List;

    .line 1142
    .line 1143
    if-eqz v5, :cond_11

    .line 1144
    .line 1145
    invoke-static {v4, v5}, Lel1;->V0(ILjava/util/List;)Ljava/lang/Object;

    .line 1146
    .line 1147
    .line 1148
    move-result-object v4

    .line 1149
    check-cast v4, Lyc7;

    .line 1150
    .line 1151
    if-eqz v4, :cond_11

    .line 1152
    .line 1153
    invoke-virtual {v4}, Lyc7;->getBackupFileName()Ljava/lang/String;

    .line 1154
    .line 1155
    .line 1156
    move-result-object v4

    .line 1157
    if-eqz v4, :cond_11

    .line 1158
    .line 1159
    :goto_f
    move-object/from16 v36, v4

    .line 1160
    .line 1161
    goto :goto_11

    .line 1162
    :catchall_7
    move-exception v0

    .line 1163
    move-object/from16 v10, p3

    .line 1164
    .line 1165
    move-object v1, v6

    .line 1166
    move/from16 v33, v7

    .line 1167
    .line 1168
    move-object/from16 v32, v8

    .line 1169
    .line 1170
    :goto_10
    move-wide v7, v2

    .line 1171
    goto/16 :goto_12

    .line 1172
    .line 1173
    :cond_11
    invoke-virtual/range {v37 .. v37}, Lq63;->p()Ljava/lang/String;

    .line 1174
    .line 1175
    .line 1176
    move-result-object v4

    .line 1177
    goto :goto_f

    .line 1178
    :goto_11
    const/16 v40, 0x0

    .line 1179
    .line 1180
    const/16 v41, 0x18

    .line 1181
    .line 1182
    const/16 v38, 0x1

    .line 1183
    .line 1184
    const/16 v39, 0x0

    .line 1185
    .line 1186
    invoke-direct/range {v35 .. v41}, Lhz6;-><init>(Ljava/lang/String;Lq63;ZLjava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 1187
    .line 1188
    .line 1189
    move-object/from16 v4, v35

    .line 1190
    .line 1191
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1192
    .line 1193
    .line 1194
    move v4, v14

    .line 1195
    goto :goto_e

    .line 1196
    :cond_12
    invoke-static {}, Lfl1;->F0()V

    .line 1197
    .line 1198
    .line 1199
    const/16 v16, 0x0

    .line 1200
    .line 1201
    throw v16

    .line 1202
    :cond_13
    sget-object v17, Liu;->APP:Liu;

    .line 1203
    .line 1204
    move-object/from16 v1, v18

    .line 1205
    .line 1206
    sget-object v18, Lf27;->Basic:Lf27;

    .line 1207
    .line 1208
    invoke-static/range {v31 .. v31}, Lvl;->j(Lxp1;)Lcy0;

    .line 1209
    .line 1210
    .line 1211
    move-result-object v19

    .line 1212
    sget-object v22, Liz6;->Auto:Liz6;

    .line 1213
    .line 1214
    new-instance v14, Ldk;

    .line 1215
    .line 1216
    const/4 v4, 0x2

    .line 1217
    invoke-direct {v14, v6, v4}, Ldk;-><init>(Ljava/lang/Object;I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    .line 1218
    .line 1219
    .line 1220
    move-wide v4, v2

    .line 1221
    :try_start_9
    invoke-virtual {v15}, Lcm;->b()J

    .line 1222
    .line 1223
    .line 1224
    move-result-wide v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_a

    .line 1225
    move-wide/from16 v32, v4

    .line 1226
    .line 1227
    :try_start_a
    invoke-virtual {v15}, Lem;->c()J

    .line 1228
    .line 1229
    .line 1230
    move-result-wide v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    .line 1231
    move-object/from16 v16, v6

    .line 1232
    .line 1233
    move-object v6, v1

    .line 1234
    move-object/from16 v1, v16

    .line 1235
    .line 1236
    move-object/from16 v16, v10

    .line 1237
    .line 1238
    move-object/from16 v10, p3

    .line 1239
    .line 1240
    move-wide/from16 v53, v32

    .line 1241
    .line 1242
    move/from16 v33, v7

    .line 1243
    .line 1244
    move-object/from16 v32, v8

    .line 1245
    .line 1246
    move-wide/from16 v7, v53

    .line 1247
    .line 1248
    :try_start_b
    invoke-virtual/range {v1 .. v6}, Lvl;->h(JJLmt3;)Lc07;

    .line 1249
    .line 1250
    .line 1251
    move-result-object v24

    .line 1252
    move-object/from16 v23, v14

    .line 1253
    .line 1254
    new-instance v14, Lop3;

    .line 1255
    .line 1256
    const/16 v21, 0x0

    .line 1257
    .line 1258
    const/16 v25, 0x40

    .line 1259
    .line 1260
    move-object/from16 v53, v15

    .line 1261
    .line 1262
    move-object v15, v0

    .line 1263
    move-object/from16 v0, v53

    .line 1264
    .line 1265
    invoke-direct/range {v14 .. v25}, Lop3;-><init>(Lq63;Ljava/util/List;Liu;Lf27;Lcy0;Lod2;Ljava/lang/String;Liz6;Lbt3;Lc07;I)V

    .line 1266
    .line 1267
    .line 1268
    invoke-static {v14}, Lmz6;->b(Lop3;)Lez6;

    .line 1269
    .line 1270
    .line 1271
    invoke-virtual {v0}, Lem;->c()J

    .line 1272
    .line 1273
    .line 1274
    move-result-wide v2

    .line 1275
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1276
    .line 1277
    .line 1278
    move-result-object v2

    .line 1279
    invoke-virtual {v6, v2}, Lml;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1280
    .line 1281
    .line 1282
    invoke-virtual {v15}, Lq63;->A()J

    .line 1283
    .line 1284
    .line 1285
    move-result-wide v2

    .line 1286
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1287
    .line 1288
    .line 1289
    move-result-object v2

    .line 1290
    invoke-virtual {v0}, Lcm;->d()J

    .line 1291
    .line 1292
    .line 1293
    move-result-wide v3

    .line 1294
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1295
    .line 1296
    .line 1297
    move-result-object v0

    .line 1298
    invoke-virtual {v12, v2, v0}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->updateSharedLibsDetails(Ljava/lang/Long;Ljava/lang/Long;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    .line 1299
    .line 1300
    .line 1301
    goto :goto_13

    .line 1302
    :catchall_8
    move-exception v0

    .line 1303
    goto :goto_12

    .line 1304
    :catchall_9
    move-exception v0

    .line 1305
    move-object/from16 v10, p3

    .line 1306
    .line 1307
    move-object v1, v6

    .line 1308
    move-wide/from16 v53, v32

    .line 1309
    .line 1310
    move/from16 v33, v7

    .line 1311
    .line 1312
    move-object/from16 v32, v8

    .line 1313
    .line 1314
    move-wide/from16 v7, v53

    .line 1315
    .line 1316
    goto :goto_12

    .line 1317
    :catchall_a
    move-exception v0

    .line 1318
    move-object/from16 v10, p3

    .line 1319
    .line 1320
    move-object v1, v6

    .line 1321
    move/from16 v33, v7

    .line 1322
    .line 1323
    move-object/from16 v32, v8

    .line 1324
    .line 1325
    move-wide v7, v4

    .line 1326
    goto :goto_12

    .line 1327
    :catchall_b
    move-exception v0

    .line 1328
    move-object/from16 v10, p3

    .line 1329
    .line 1330
    move-object v1, v6

    .line 1331
    move/from16 v33, v7

    .line 1332
    .line 1333
    move-object/from16 v32, v8

    .line 1334
    .line 1335
    const/16 v13, 0xa

    .line 1336
    .line 1337
    goto/16 :goto_10

    .line 1338
    .line 1339
    :goto_12
    invoke-virtual {v1}, Lvl;->i()Z

    .line 1340
    .line 1341
    .line 1342
    move-result v2

    .line 1343
    if-nez v2, :cond_15

    .line 1344
    .line 1345
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1346
    .line 1347
    .line 1348
    move-result-object v0

    .line 1349
    if-nez v0, :cond_14

    .line 1350
    .line 1351
    const-string v0, "Shared libs backup failed"

    .line 1352
    .line 1353
    :cond_14
    invoke-virtual {v9, v0}, Ltl;->a(Ljava/lang/String;)V

    .line 1354
    .line 1355
    .line 1356
    :cond_15
    :goto_13
    move-wide/from16 v51, v7

    .line 1357
    .line 1358
    move/from16 v38, v13

    .line 1359
    .line 1360
    move-object/from16 v18, v30

    .line 1361
    .line 1362
    const/16 v17, 0x0

    .line 1363
    .line 1364
    goto/16 :goto_1d

    .line 1365
    .line 1366
    :cond_16
    move-object v3, v4

    .line 1367
    move-object v1, v6

    .line 1368
    move-object v10, v7

    .line 1369
    const/16 v16, 0x0

    .line 1370
    .line 1371
    const/16 v38, 0xa

    .line 1372
    .line 1373
    move-wide/from16 v53, v32

    .line 1374
    .line 1375
    move/from16 v33, v2

    .line 1376
    .line 1377
    move-object/from16 v32, v8

    .line 1378
    .line 1379
    move-wide/from16 v7, v53

    .line 1380
    .line 1381
    instance-of v2, v0, Lyl;

    .line 1382
    .line 1383
    iget-object v15, v1, Lvl;->p:Lgv7;

    .line 1384
    .line 1385
    iget-object v4, v1, Lvl;->o:Lgv7;

    .line 1386
    .line 1387
    const-string v5, ", Cache="

    .line 1388
    .line 1389
    const-string v6, ", v6)"

    .line 1390
    .line 1391
    if-eqz v2, :cond_1d

    .line 1392
    .line 1393
    check-cast v0, Lyl;

    .line 1394
    .line 1395
    new-instance v2, Lnl;

    .line 1396
    .line 1397
    invoke-direct {v2, v3, v7, v8, v10}, Lnl;-><init>(Lkh6;JLxk;)V

    .line 1398
    .line 1399
    .line 1400
    invoke-virtual {v0}, Lyl;->b()J

    .line 1401
    .line 1402
    .line 1403
    move-result-wide v21

    .line 1404
    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1405
    .line 1406
    .line 1407
    move-result-object v3

    .line 1408
    sget-object v17, Lp93;->a:Lp93;

    .line 1409
    .line 1410
    invoke-static {v3}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 1411
    .line 1412
    .line 1413
    move-result-object v3

    .line 1414
    sget-object v39, Lvr6;->INSTANCE:Lvr6;

    .line 1415
    .line 1416
    move-object/from16 v17, v2

    .line 1417
    .line 1418
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1419
    .line 1420
    move-object/from16 v21, v4

    .line 1421
    .line 1422
    const-string v4, "Backing up Data ("

    .line 1423
    .line 1424
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1425
    .line 1426
    .line 1427
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1428
    .line 1429
    .line 1430
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1431
    .line 1432
    .line 1433
    move/from16 v4, v33

    .line 1434
    .line 1435
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1436
    .line 1437
    .line 1438
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1439
    .line 1440
    .line 1441
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1442
    .line 1443
    .line 1444
    move-result-object v41

    .line 1445
    const/16 v43, 0x4

    .line 1446
    .line 1447
    const/16 v44, 0x0

    .line 1448
    .line 1449
    const-string v40, "AppBackupTask"

    .line 1450
    .line 1451
    const/16 v42, 0x0

    .line 1452
    .line 1453
    invoke-static/range {v39 .. v44}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 1454
    .line 1455
    .line 1456
    sget-object v2, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 1457
    .line 1458
    const v2, 0x7f130089

    .line 1459
    .line 1460
    .line 1461
    invoke-static {v2}, Ldj7;->g(I)Ljava/lang/String;

    .line 1462
    .line 1463
    .line 1464
    move-result-object v2

    .line 1465
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1466
    .line 1467
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1468
    .line 1469
    .line 1470
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1471
    .line 1472
    .line 1473
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1474
    .line 1475
    .line 1476
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1477
    .line 1478
    .line 1479
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1480
    .line 1481
    .line 1482
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1483
    .line 1484
    .line 1485
    move-result-object v2

    .line 1486
    move-object/from16 v13, v32

    .line 1487
    .line 1488
    invoke-virtual {v13, v2}, Lex6;->k(Ljava/lang/Object;)V

    .line 1489
    .line 1490
    .line 1491
    invoke-virtual/range {v28 .. v28}, Lhk;->g()Lq63;

    .line 1492
    .line 1493
    .line 1494
    move-result-object v14

    .line 1495
    invoke-virtual {v14}, Lq63;->t()Lq63;

    .line 1496
    .line 1497
    .line 1498
    move-result-object v2

    .line 1499
    invoke-virtual {v0}, Lyl;->b()J

    .line 1500
    .line 1501
    .line 1502
    move-result-wide v5

    .line 1503
    invoke-static {v2, v5, v6}, Lpj7;->a(Lq63;J)Loj7;

    .line 1504
    .line 1505
    .line 1506
    move-result-object v2

    .line 1507
    if-eqz v2, :cond_18

    .line 1508
    .line 1509
    iget-object v0, v2, Loj7;->a:Ljava/lang/String;

    .line 1510
    .line 1511
    iget-boolean v2, v2, Loj7;->b:Z

    .line 1512
    .line 1513
    if-eqz v2, :cond_17

    .line 1514
    .line 1515
    const/4 v2, 0x1

    .line 1516
    iput-boolean v2, v9, Ltl;->b:Z

    .line 1517
    .line 1518
    invoke-virtual {v9, v0}, Ltl;->a(Ljava/lang/String;)V

    .line 1519
    .line 1520
    .line 1521
    :goto_14
    move v15, v4

    .line 1522
    move-object/from16 v32, v13

    .line 1523
    .line 1524
    move-object/from16 v18, v30

    .line 1525
    .line 1526
    const/4 v1, 0x0

    .line 1527
    goto/16 :goto_1b

    .line 1528
    .line 1529
    :cond_17
    sget-object v2, Liu;->DATA:Liu;

    .line 1530
    .line 1531
    invoke-virtual {v9, v2, v0}, Ltl;->b(Liu;Ljava/lang/String;)V

    .line 1532
    .line 1533
    .line 1534
    goto :goto_14

    .line 1535
    :cond_18
    invoke-virtual/range {v21 .. v21}, Lgv7;->getValue()Ljava/lang/Object;

    .line 1536
    .line 1537
    .line 1538
    move-result-object v2

    .line 1539
    check-cast v2, [C

    .line 1540
    .line 1541
    array-length v3, v2

    .line 1542
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([CI)[C

    .line 1543
    .line 1544
    .line 1545
    move-result-object v2

    .line 1546
    :try_start_c
    invoke-virtual {v1, v0}, Lvl;->c(Lyl;)Ljava/util/ArrayList;

    .line 1547
    .line 1548
    .line 1549
    move-result-object v19
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_12

    .line 1550
    :try_start_d
    const-string v40, "AppBackupTask"

    .line 1551
    .line 1552
    const-string v41, "Creating Data backup"

    .line 1553
    .line 1554
    const/16 v43, 0x4

    .line 1555
    .line 1556
    const/16 v44, 0x0

    .line 1557
    .line 1558
    const/16 v42, 0x0

    .line 1559
    .line 1560
    invoke-static/range {v39 .. v44}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 1561
    .line 1562
    .line 1563
    sget-object v3, Lmz6;->a:Ljava/util/HashSet;

    .line 1564
    .line 1565
    new-instance v40, Lop3;

    .line 1566
    .line 1567
    sget-object v43, Liu;->DATA:Liu;

    .line 1568
    .line 1569
    sget-object v44, Lf27;->Fidelity:Lf27;

    .line 1570
    .line 1571
    invoke-static/range {v31 .. v31}, Lvl;->j(Lxp1;)Lcy0;

    .line 1572
    .line 1573
    .line 1574
    move-result-object v45

    .line 1575
    new-instance v3, Lfz6;

    .line 1576
    .line 1577
    invoke-direct {v3, v2}, Lfz6;-><init>([C)V

    .line 1578
    .line 1579
    .line 1580
    iget-object v5, v0, Lyl;->f:Lgv7;

    .line 1581
    .line 1582
    invoke-virtual {v5}, Lgv7;->getValue()Ljava/lang/Object;

    .line 1583
    .line 1584
    .line 1585
    move-result-object v5

    .line 1586
    check-cast v5, Ljava/lang/Boolean;

    .line 1587
    .line 1588
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1589
    .line 1590
    .line 1591
    move-result v5
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_10

    .line 1592
    move-object/from16 v22, v15

    .line 1593
    .line 1594
    move-object/from16 v15, v30

    .line 1595
    .line 1596
    move-object/from16 v6, v31

    .line 1597
    .line 1598
    :try_start_e
    invoke-static {v15, v5, v4, v6}, Lorg/swiftapps/swiftbackup/apptasks/sba/a;->a(Lji;ZZLxp1;)Ljava/lang/String;

    .line 1599
    .line 1600
    .line 1601
    move-result-object v47

    .line 1602
    sget-object v48, Liz6;->Auto:Liz6;

    .line 1603
    .line 1604
    new-instance v5, Lah;

    .line 1605
    .line 1606
    move-object/from16 v23, v0

    .line 1607
    .line 1608
    const/4 v0, 0x3

    .line 1609
    invoke-direct {v5, v1, v0}, Lah;-><init>(Ljava/lang/Object;I)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_f

    .line 1610
    .line 1611
    .line 1612
    move-object/from16 v18, v2

    .line 1613
    .line 1614
    move-object/from16 v46, v3

    .line 1615
    .line 1616
    :try_start_f
    invoke-virtual/range {v23 .. v23}, Lyl;->b()J

    .line 1617
    .line 1618
    .line 1619
    move-result-wide v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_e

    .line 1620
    move/from16 v33, v4

    .line 1621
    .line 1622
    move-object/from16 v49, v5

    .line 1623
    .line 1624
    :try_start_10
    invoke-virtual/range {v23 .. v23}, Lem;->c()J

    .line 1625
    .line 1626
    .line 1627
    move-result-wide v4
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_d

    .line 1628
    move-object/from16 v31, v6

    .line 1629
    .line 1630
    move-object/from16 v32, v13

    .line 1631
    .line 1632
    move-object/from16 v6, v17

    .line 1633
    .line 1634
    move-object/from16 v13, v18

    .line 1635
    .line 1636
    move-object/from16 v18, v15

    .line 1637
    .line 1638
    move/from16 v15, v33

    .line 1639
    .line 1640
    :try_start_11
    invoke-virtual/range {v1 .. v6}, Lvl;->h(JJLmt3;)Lc07;

    .line 1641
    .line 1642
    .line 1643
    move-result-object v50

    .line 1644
    move-object/from16 v41, v14

    .line 1645
    .line 1646
    move-object/from16 v42, v19

    .line 1647
    .line 1648
    invoke-direct/range {v40 .. v50}, Lop3;-><init>(Lq63;Ljava/util/List;Liu;Lf27;Lcy0;Lod2;Ljava/lang/String;Liz6;Lbt3;Lh07;)V

    .line 1649
    .line 1650
    .line 1651
    invoke-static/range {v40 .. v40}, Lmz6;->b(Lop3;)Lez6;

    .line 1652
    .line 1653
    .line 1654
    invoke-virtual/range {v23 .. v23}, Lem;->c()J

    .line 1655
    .line 1656
    .line 1657
    move-result-wide v0

    .line 1658
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1659
    .line 1660
    .line 1661
    move-result-object v0

    .line 1662
    invoke-virtual {v6, v0}, Lnl;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1663
    .line 1664
    .line 1665
    iget-object v0, v11, Lok0;->t:Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;

    .line 1666
    .line 1667
    invoke-virtual/range {v18 .. v18}, Lji;->getSizeInfo()Lqx;

    .line 1668
    .line 1669
    .line 1670
    move-result-object v1

    .line 1671
    if-eqz v1, :cond_19

    .line 1672
    .line 1673
    invoke-virtual {v1, v15}, Lqx;->getTotalDataSize(Z)J

    .line 1674
    .line 1675
    .line 1676
    move-result-wide v1

    .line 1677
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1678
    .line 1679
    .line 1680
    move-result-object v5

    .line 1681
    move-object/from16 v43, v5

    .line 1682
    .line 1683
    goto :goto_15

    .line 1684
    :catchall_c
    move-exception v0

    .line 1685
    goto :goto_18

    .line 1686
    :cond_19
    move-object/from16 v43, v16

    .line 1687
    .line 1688
    :goto_15
    invoke-virtual/range {v41 .. v41}, Lq63;->A()J

    .line 1689
    .line 1690
    .line 1691
    move-result-wide v1

    .line 1692
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1693
    .line 1694
    .line 1695
    move-result-object v44

    .line 1696
    sget-object v45, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1697
    .line 1698
    const-string v46, "AEGIS-256"

    .line 1699
    .line 1700
    invoke-virtual/range {v22 .. v22}, Lgv7;->getValue()Ljava/lang/Object;

    .line 1701
    .line 1702
    .line 1703
    move-result-object v1

    .line 1704
    move-object/from16 v47, v1

    .line 1705
    .line 1706
    check-cast v47, Ljava/lang/String;

    .line 1707
    .line 1708
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1709
    .line 1710
    .line 1711
    move-result-wide v1

    .line 1712
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1713
    .line 1714
    .line 1715
    move-result-object v48

    .line 1716
    move-object/from16 v42, v0

    .line 1717
    .line 1718
    invoke-virtual/range {v42 .. v48}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->updateDataDetails(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_c

    .line 1719
    .line 1720
    .line 1721
    :cond_1a
    :goto_16
    array-length v0, v13

    .line 1722
    const/4 v1, 0x0

    .line 1723
    invoke-static {v13, v1, v0, v1}, Ljava/util/Arrays;->fill([CIIC)V

    .line 1724
    .line 1725
    .line 1726
    goto/16 :goto_1b

    .line 1727
    .line 1728
    :catchall_d
    move-exception v0

    .line 1729
    move-object/from16 v31, v6

    .line 1730
    .line 1731
    move-object/from16 v32, v13

    .line 1732
    .line 1733
    move-object/from16 v13, v18

    .line 1734
    .line 1735
    move-object/from16 v18, v15

    .line 1736
    .line 1737
    move/from16 v15, v33

    .line 1738
    .line 1739
    goto :goto_18

    .line 1740
    :catchall_e
    move-exception v0

    .line 1741
    move-object/from16 v31, v6

    .line 1742
    .line 1743
    move-object/from16 v32, v13

    .line 1744
    .line 1745
    move-object/from16 v13, v18

    .line 1746
    .line 1747
    move-object/from16 v18, v15

    .line 1748
    .line 1749
    :goto_17
    move v15, v4

    .line 1750
    goto :goto_18

    .line 1751
    :catchall_f
    move-exception v0

    .line 1752
    move-object/from16 v31, v6

    .line 1753
    .line 1754
    move-object/from16 v32, v13

    .line 1755
    .line 1756
    move-object/from16 v18, v15

    .line 1757
    .line 1758
    move-object v13, v2

    .line 1759
    goto :goto_17

    .line 1760
    :catchall_10
    move-exception v0

    .line 1761
    move v15, v4

    .line 1762
    move-object/from16 v32, v13

    .line 1763
    .line 1764
    move-object/from16 v18, v30

    .line 1765
    .line 1766
    move-object v13, v2

    .line 1767
    :goto_18
    :try_start_12
    invoke-virtual/range {p0 .. p0}, Lvl;->i()Z

    .line 1768
    .line 1769
    .line 1770
    move-result v1

    .line 1771
    if-nez v1, :cond_1a

    .line 1772
    .line 1773
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1774
    .line 1775
    .line 1776
    move-result-object v0

    .line 1777
    if-nez v0, :cond_1b

    .line 1778
    .line 1779
    const-string v0, "App Data backup failed"

    .line 1780
    .line 1781
    goto :goto_19

    .line 1782
    :catchall_11
    move-exception v0

    .line 1783
    const/4 v1, 0x0

    .line 1784
    goto :goto_1a

    .line 1785
    :cond_1b
    :goto_19
    invoke-virtual {v9, v0}, Ltl;->a(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_11

    .line 1786
    .line 1787
    .line 1788
    goto :goto_16

    .line 1789
    :goto_1a
    array-length v2, v13

    .line 1790
    invoke-static {v13, v1, v2, v1}, Ljava/util/Arrays;->fill([CIIC)V

    .line 1791
    .line 1792
    .line 1793
    throw v0

    .line 1794
    :catchall_12
    move-exception v0

    .line 1795
    move v15, v4

    .line 1796
    move-object/from16 v32, v13

    .line 1797
    .line 1798
    move-object/from16 v18, v30

    .line 1799
    .line 1800
    const/4 v1, 0x0

    .line 1801
    move-object v13, v2

    .line 1802
    array-length v2, v13

    .line 1803
    invoke-static {v13, v1, v2, v1}, Ljava/util/Arrays;->fill([CIIC)V

    .line 1804
    .line 1805
    .line 1806
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1807
    .line 1808
    .line 1809
    move-result-object v0

    .line 1810
    if-nez v0, :cond_1c

    .line 1811
    .line 1812
    const-string v0, "Failed to build app-data backup request"

    .line 1813
    .line 1814
    :cond_1c
    invoke-virtual {v9, v0}, Ltl;->a(Ljava/lang/String;)V

    .line 1815
    .line 1816
    .line 1817
    :goto_1b
    move/from16 v17, v1

    .line 1818
    .line 1819
    move-wide/from16 v51, v7

    .line 1820
    .line 1821
    move/from16 v33, v15

    .line 1822
    .line 1823
    goto/16 :goto_1d

    .line 1824
    .line 1825
    :cond_1d
    move-object/from16 v21, v4

    .line 1826
    .line 1827
    move-object/from16 v22, v15

    .line 1828
    .line 1829
    move-object/from16 v18, v30

    .line 1830
    .line 1831
    move-object/from16 v2, v32

    .line 1832
    .line 1833
    move/from16 v15, v33

    .line 1834
    .line 1835
    const/4 v1, 0x0

    .line 1836
    instance-of v4, v0, Lam;

    .line 1837
    .line 1838
    if-eqz v4, :cond_20

    .line 1839
    .line 1840
    check-cast v0, Lam;

    .line 1841
    .line 1842
    new-instance v4, Lol;

    .line 1843
    .line 1844
    invoke-direct {v4, v3, v7, v8, v10}, Lol;-><init>(Lkh6;JLxk;)V

    .line 1845
    .line 1846
    .line 1847
    invoke-virtual {v0}, Lam;->b()J

    .line 1848
    .line 1849
    .line 1850
    move-result-wide v23

    .line 1851
    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1852
    .line 1853
    .line 1854
    move-result-object v3

    .line 1855
    sget-object v9, Lp93;->a:Lp93;

    .line 1856
    .line 1857
    invoke-static {v3}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 1858
    .line 1859
    .line 1860
    move-result-object v3

    .line 1861
    sget-object v39, Lvr6;->INSTANCE:Lvr6;

    .line 1862
    .line 1863
    new-instance v9, Ljava/lang/StringBuilder;

    .line 1864
    .line 1865
    const-string v1, "Backing up Ext Data ("

    .line 1866
    .line 1867
    invoke-direct {v9, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1868
    .line 1869
    .line 1870
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1871
    .line 1872
    .line 1873
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1874
    .line 1875
    .line 1876
    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1877
    .line 1878
    .line 1879
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1880
    .line 1881
    .line 1882
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1883
    .line 1884
    .line 1885
    move-result-object v41

    .line 1886
    const/16 v43, 0x4

    .line 1887
    .line 1888
    const/16 v44, 0x0

    .line 1889
    .line 1890
    const-string v40, "AppBackupTask"

    .line 1891
    .line 1892
    const/16 v42, 0x0

    .line 1893
    .line 1894
    invoke-static/range {v39 .. v44}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 1895
    .line 1896
    .line 1897
    sget-object v1, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 1898
    .line 1899
    const v1, 0x7f13008b

    .line 1900
    .line 1901
    .line 1902
    invoke-static {v1}, Ldj7;->g(I)Ljava/lang/String;

    .line 1903
    .line 1904
    .line 1905
    move-result-object v1

    .line 1906
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1907
    .line 1908
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1909
    .line 1910
    .line 1911
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1912
    .line 1913
    .line 1914
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1915
    .line 1916
    .line 1917
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1918
    .line 1919
    .line 1920
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1921
    .line 1922
    .line 1923
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1924
    .line 1925
    .line 1926
    move-result-object v1

    .line 1927
    invoke-virtual {v2, v1}, Lex6;->k(Ljava/lang/Object;)V

    .line 1928
    .line 1929
    .line 1930
    invoke-virtual/range {v28 .. v28}, Lhk;->n()Lq63;

    .line 1931
    .line 1932
    .line 1933
    move-result-object v5

    .line 1934
    sget-object v3, Liu;->EXTDATA:Liu;

    .line 1935
    .line 1936
    move-object v10, v4

    .line 1937
    invoke-virtual/range {v18 .. v18}, Lji;->getExternalDataDir()Ljava/lang/String;

    .line 1938
    .line 1939
    .line 1940
    move-result-object v4

    .line 1941
    invoke-virtual/range {v18 .. v18}, Lji;->getPackageName()Ljava/lang/String;

    .line 1942
    .line 1943
    .line 1944
    move-result-object v6

    .line 1945
    move-wide/from16 v32, v7

    .line 1946
    .line 1947
    invoke-static/range {v31 .. v31}, Lvl;->j(Lxp1;)Lcy0;

    .line 1948
    .line 1949
    .line 1950
    move-result-object v7

    .line 1951
    new-instance v8, Lfz6;

    .line 1952
    .line 1953
    invoke-virtual/range {v21 .. v21}, Lgv7;->getValue()Ljava/lang/Object;

    .line 1954
    .line 1955
    .line 1956
    move-result-object v1

    .line 1957
    check-cast v1, [C

    .line 1958
    .line 1959
    array-length v9, v1

    .line 1960
    invoke-static {v1, v9}, Ljava/util/Arrays;->copyOf([CI)[C

    .line 1961
    .line 1962
    .line 1963
    move-result-object v1

    .line 1964
    invoke-direct {v8, v1}, Lfz6;-><init>([C)V

    .line 1965
    .line 1966
    .line 1967
    move-object/from16 v1, v29

    .line 1968
    .line 1969
    iget-boolean v9, v1, Lhz;->g:Z

    .line 1970
    .line 1971
    move v13, v15

    .line 1972
    move-wide/from16 v51, v32

    .line 1973
    .line 1974
    const/16 v17, 0x0

    .line 1975
    .line 1976
    move-object/from16 v1, p0

    .line 1977
    .line 1978
    move-object/from16 v15, p3

    .line 1979
    .line 1980
    move-object/from16 v32, v2

    .line 1981
    .line 1982
    move-object v2, v0

    .line 1983
    invoke-static/range {v1 .. v10}, Lvl;->b(Lvl;Lem;Liu;Ljava/lang/String;Lq63;Ljava/lang/String;Lcy0;Lod2;ZLmt3;)Z

    .line 1984
    .line 1985
    .line 1986
    move-result v0

    .line 1987
    if-eqz v0, :cond_1f

    .line 1988
    .line 1989
    iget-object v0, v11, Lok0;->t:Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;

    .line 1990
    .line 1991
    invoke-virtual/range {v18 .. v18}, Lji;->getSizeInfo()Lqx;

    .line 1992
    .line 1993
    .line 1994
    move-result-object v1

    .line 1995
    if-eqz v1, :cond_1e

    .line 1996
    .line 1997
    invoke-virtual {v1, v13}, Lqx;->getExtDataSize(Z)J

    .line 1998
    .line 1999
    .line 2000
    move-result-wide v1

    .line 2001
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2002
    .line 2003
    .line 2004
    move-result-object v1

    .line 2005
    move-object/from16 v40, v1

    .line 2006
    .line 2007
    goto :goto_1c

    .line 2008
    :cond_1e
    move-object/from16 v40, v16

    .line 2009
    .line 2010
    :goto_1c
    invoke-virtual {v5}, Lq63;->A()J

    .line 2011
    .line 2012
    .line 2013
    move-result-wide v1

    .line 2014
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2015
    .line 2016
    .line 2017
    move-result-object v41

    .line 2018
    sget-object v42, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2019
    .line 2020
    invoke-virtual/range {v22 .. v22}, Lgv7;->getValue()Ljava/lang/Object;

    .line 2021
    .line 2022
    .line 2023
    move-result-object v1

    .line 2024
    move-object/from16 v44, v1

    .line 2025
    .line 2026
    check-cast v44, Ljava/lang/String;

    .line 2027
    .line 2028
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2029
    .line 2030
    .line 2031
    move-result-wide v1

    .line 2032
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2033
    .line 2034
    .line 2035
    move-result-object v45

    .line 2036
    const-string v43, "AEGIS-256"

    .line 2037
    .line 2038
    move-object/from16 v39, v0

    .line 2039
    .line 2040
    invoke-virtual/range {v39 .. v45}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->updateExtDataDetails(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 2041
    .line 2042
    .line 2043
    :cond_1f
    move/from16 v33, v13

    .line 2044
    .line 2045
    goto/16 :goto_1d

    .line 2046
    .line 2047
    :cond_20
    move/from16 v17, v1

    .line 2048
    .line 2049
    move-object v1, v2

    .line 2050
    move-wide/from16 v51, v7

    .line 2051
    .line 2052
    move/from16 v33, v15

    .line 2053
    .line 2054
    move-object/from16 v2, v29

    .line 2055
    .line 2056
    move-object v15, v10

    .line 2057
    instance-of v4, v0, Lbm;

    .line 2058
    .line 2059
    if-eqz v4, :cond_21

    .line 2060
    .line 2061
    move-object v7, v0

    .line 2062
    check-cast v7, Lbm;

    .line 2063
    .line 2064
    new-instance v10, Lpl;

    .line 2065
    .line 2066
    move-wide/from16 v4, v51

    .line 2067
    .line 2068
    invoke-direct {v10, v3, v4, v5, v15}, Lpl;-><init>(Lkh6;JLxk;)V

    .line 2069
    .line 2070
    .line 2071
    invoke-virtual {v7}, Lbm;->b()J

    .line 2072
    .line 2073
    .line 2074
    move-result-wide v8

    .line 2075
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2076
    .line 2077
    .line 2078
    move-result-object v0

    .line 2079
    sget-object v3, Lp93;->a:Lp93;

    .line 2080
    .line 2081
    invoke-static {v0}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 2082
    .line 2083
    .line 2084
    move-result-object v0

    .line 2085
    sget-object v39, Lvr6;->INSTANCE:Lvr6;

    .line 2086
    .line 2087
    const-string v3, "Backing up Media ("

    .line 2088
    .line 2089
    invoke-static {v3, v0, v6}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2090
    .line 2091
    .line 2092
    move-result-object v41

    .line 2093
    const/16 v43, 0x4

    .line 2094
    .line 2095
    const/16 v44, 0x0

    .line 2096
    .line 2097
    const-string v40, "AppBackupTask"

    .line 2098
    .line 2099
    const/16 v42, 0x0

    .line 2100
    .line 2101
    invoke-static/range {v39 .. v44}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 2102
    .line 2103
    .line 2104
    sget-object v3, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 2105
    .line 2106
    const v3, 0x7f13008c

    .line 2107
    .line 2108
    .line 2109
    invoke-static {v3}, Ldj7;->g(I)Ljava/lang/String;

    .line 2110
    .line 2111
    .line 2112
    move-result-object v3

    .line 2113
    new-instance v6, Ljava/lang/StringBuilder;

    .line 2114
    .line 2115
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 2116
    .line 2117
    .line 2118
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2119
    .line 2120
    .line 2121
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2122
    .line 2123
    .line 2124
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2125
    .line 2126
    .line 2127
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2128
    .line 2129
    .line 2130
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2131
    .line 2132
    .line 2133
    move-result-object v0

    .line 2134
    invoke-virtual {v1, v0}, Lex6;->k(Ljava/lang/Object;)V

    .line 2135
    .line 2136
    .line 2137
    invoke-virtual/range {v28 .. v28}, Lhk;->q()Lq63;

    .line 2138
    .line 2139
    .line 2140
    move-result-object v5

    .line 2141
    sget-object v3, Liu;->MEDIA:Liu;

    .line 2142
    .line 2143
    invoke-virtual/range {v18 .. v18}, Lji;->getMediaDir()Ljava/lang/String;

    .line 2144
    .line 2145
    .line 2146
    move-result-object v4

    .line 2147
    invoke-virtual/range {v18 .. v18}, Lji;->getPackageName()Ljava/lang/String;

    .line 2148
    .line 2149
    .line 2150
    move-result-object v6

    .line 2151
    move-object v0, v7

    .line 2152
    invoke-static/range {v31 .. v31}, Lvl;->j(Lxp1;)Lcy0;

    .line 2153
    .line 2154
    .line 2155
    move-result-object v7

    .line 2156
    new-instance v8, Lfz6;

    .line 2157
    .line 2158
    invoke-virtual/range {v21 .. v21}, Lgv7;->getValue()Ljava/lang/Object;

    .line 2159
    .line 2160
    .line 2161
    move-result-object v9

    .line 2162
    check-cast v9, [C

    .line 2163
    .line 2164
    array-length v13, v9

    .line 2165
    invoke-static {v9, v13}, Ljava/util/Arrays;->copyOf([CI)[C

    .line 2166
    .line 2167
    .line 2168
    move-result-object v9

    .line 2169
    invoke-direct {v8, v9}, Lfz6;-><init>([C)V

    .line 2170
    .line 2171
    .line 2172
    iget-boolean v9, v2, Lhz;->g:Z

    .line 2173
    .line 2174
    move-object/from16 v32, v1

    .line 2175
    .line 2176
    move-object/from16 v29, v2

    .line 2177
    .line 2178
    move-object/from16 v1, p0

    .line 2179
    .line 2180
    move-object v2, v0

    .line 2181
    invoke-static/range {v1 .. v10}, Lvl;->b(Lvl;Lem;Liu;Ljava/lang/String;Lq63;Ljava/lang/String;Lcy0;Lod2;ZLmt3;)Z

    .line 2182
    .line 2183
    .line 2184
    move-result v0

    .line 2185
    if-eqz v0, :cond_22

    .line 2186
    .line 2187
    iget-object v0, v11, Lok0;->t:Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;

    .line 2188
    .line 2189
    invoke-virtual {v2}, Lbm;->b()J

    .line 2190
    .line 2191
    .line 2192
    move-result-wide v1

    .line 2193
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2194
    .line 2195
    .line 2196
    move-result-object v40

    .line 2197
    invoke-virtual {v5}, Lq63;->A()J

    .line 2198
    .line 2199
    .line 2200
    move-result-wide v1

    .line 2201
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2202
    .line 2203
    .line 2204
    move-result-object v41

    .line 2205
    sget-object v42, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2206
    .line 2207
    invoke-virtual/range {v22 .. v22}, Lgv7;->getValue()Ljava/lang/Object;

    .line 2208
    .line 2209
    .line 2210
    move-result-object v1

    .line 2211
    move-object/from16 v44, v1

    .line 2212
    .line 2213
    check-cast v44, Ljava/lang/String;

    .line 2214
    .line 2215
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2216
    .line 2217
    .line 2218
    move-result-wide v1

    .line 2219
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2220
    .line 2221
    .line 2222
    move-result-object v45

    .line 2223
    const-string v43, "AEGIS-256"

    .line 2224
    .line 2225
    move-object/from16 v39, v0

    .line 2226
    .line 2227
    invoke-virtual/range {v39 .. v45}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->updateMediaDetails(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 2228
    .line 2229
    .line 2230
    goto/16 :goto_1d

    .line 2231
    .line 2232
    :cond_21
    move-object v7, v1

    .line 2233
    move-object v8, v2

    .line 2234
    instance-of v1, v0, Lzl;

    .line 2235
    .line 2236
    if-eqz v1, :cond_23

    .line 2237
    .line 2238
    move-object v9, v0

    .line 2239
    check-cast v9, Lzl;

    .line 2240
    .line 2241
    new-instance v0, Lql;

    .line 2242
    .line 2243
    const/4 v5, 0x0

    .line 2244
    move-object v1, v3

    .line 2245
    move-object v4, v15

    .line 2246
    move-wide/from16 v2, v51

    .line 2247
    .line 2248
    invoke-direct/range {v0 .. v5}, Lql;-><init>(Lkh6;JLmt3;I)V

    .line 2249
    .line 2250
    .line 2251
    invoke-virtual {v9}, Lzl;->b()J

    .line 2252
    .line 2253
    .line 2254
    move-result-wide v1

    .line 2255
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2256
    .line 2257
    .line 2258
    move-result-object v1

    .line 2259
    sget-object v2, Lp93;->a:Lp93;

    .line 2260
    .line 2261
    invoke-static {v1}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 2262
    .line 2263
    .line 2264
    move-result-object v1

    .line 2265
    sget-object v39, Lvr6;->INSTANCE:Lvr6;

    .line 2266
    .line 2267
    const-string v2, "Backing up Expansion ("

    .line 2268
    .line 2269
    invoke-static {v2, v1, v6}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2270
    .line 2271
    .line 2272
    move-result-object v41

    .line 2273
    const/16 v43, 0x4

    .line 2274
    .line 2275
    const/16 v44, 0x0

    .line 2276
    .line 2277
    const-string v40, "AppBackupTask"

    .line 2278
    .line 2279
    const/16 v42, 0x0

    .line 2280
    .line 2281
    invoke-static/range {v39 .. v44}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 2282
    .line 2283
    .line 2284
    sget-object v2, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 2285
    .line 2286
    const v2, 0x7f13008a

    .line 2287
    .line 2288
    .line 2289
    invoke-static {v2}, Ldj7;->g(I)Ljava/lang/String;

    .line 2290
    .line 2291
    .line 2292
    move-result-object v2

    .line 2293
    new-instance v3, Ljava/lang/StringBuilder;

    .line 2294
    .line 2295
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2296
    .line 2297
    .line 2298
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2299
    .line 2300
    .line 2301
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2302
    .line 2303
    .line 2304
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2305
    .line 2306
    .line 2307
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2308
    .line 2309
    .line 2310
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2311
    .line 2312
    .line 2313
    move-result-object v1

    .line 2314
    invoke-virtual {v7, v1}, Lex6;->k(Ljava/lang/Object;)V

    .line 2315
    .line 2316
    .line 2317
    invoke-virtual/range {v28 .. v28}, Lhk;->m()Lq63;

    .line 2318
    .line 2319
    .line 2320
    move-result-object v5

    .line 2321
    sget-object v3, Liu;->EXPANSION:Liu;

    .line 2322
    .line 2323
    invoke-virtual/range {v18 .. v18}, Lji;->getExpansionDir()Ljava/lang/String;

    .line 2324
    .line 2325
    .line 2326
    move-result-object v4

    .line 2327
    invoke-virtual/range {v18 .. v18}, Lji;->getPackageName()Ljava/lang/String;

    .line 2328
    .line 2329
    .line 2330
    move-result-object v6

    .line 2331
    move-object/from16 v32, v7

    .line 2332
    .line 2333
    sget-object v7, Loy6;->j:Loy6;

    .line 2334
    .line 2335
    move-object v2, v9

    .line 2336
    iget-boolean v9, v8, Lhz;->g:Z

    .line 2337
    .line 2338
    move-object/from16 v1, p0

    .line 2339
    .line 2340
    move-object v10, v0

    .line 2341
    move-object/from16 v29, v8

    .line 2342
    .line 2343
    move-object/from16 v8, v20

    .line 2344
    .line 2345
    invoke-static/range {v1 .. v10}, Lvl;->b(Lvl;Lem;Liu;Ljava/lang/String;Lq63;Ljava/lang/String;Lcy0;Lod2;ZLmt3;)Z

    .line 2346
    .line 2347
    .line 2348
    move-result v0

    .line 2349
    if-eqz v0, :cond_22

    .line 2350
    .line 2351
    invoke-virtual {v2}, Lzl;->b()J

    .line 2352
    .line 2353
    .line 2354
    move-result-wide v0

    .line 2355
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2356
    .line 2357
    .line 2358
    move-result-object v0

    .line 2359
    invoke-virtual {v5}, Lq63;->A()J

    .line 2360
    .line 2361
    .line 2362
    move-result-wide v1

    .line 2363
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2364
    .line 2365
    .line 2366
    move-result-object v1

    .line 2367
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2368
    .line 2369
    .line 2370
    move-result-wide v2

    .line 2371
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2372
    .line 2373
    .line 2374
    move-result-object v2

    .line 2375
    invoke-virtual {v12, v0, v1, v2}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->updateExpansionDetails(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 2376
    .line 2377
    .line 2378
    :cond_22
    :goto_1d
    move-object/from16 v1, p0

    .line 2379
    .line 2380
    move/from16 v3, v17

    .line 2381
    .line 2382
    move-object/from16 v4, v18

    .line 2383
    .line 2384
    move/from16 v0, v27

    .line 2385
    .line 2386
    move-object/from16 v13, v28

    .line 2387
    .line 2388
    move-object/from16 v9, v29

    .line 2389
    .line 2390
    move-object/from16 v10, v31

    .line 2391
    .line 2392
    move-object/from16 v8, v32

    .line 2393
    .line 2394
    move/from16 v14, v33

    .line 2395
    .line 2396
    move-object/from16 v15, v34

    .line 2397
    .line 2398
    move/from16 v2, v38

    .line 2399
    .line 2400
    move-wide/from16 v5, v51

    .line 2401
    .line 2402
    goto/16 :goto_4

    .line 2403
    .line 2404
    :cond_23
    invoke-static {}, Lq;->j()V

    .line 2405
    .line 2406
    .line 2407
    :cond_24
    :goto_1e
    return-void

    .line 2408
    nop

    .line 2409
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Lyl;)Ljava/util/ArrayList;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lvl;->a:Lhz;

    .line 4
    .line 5
    iget-boolean v1, v1, Lhz;->g:Z

    .line 6
    .line 7
    new-instance v2, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iget-object v0, v0, Lvl;->m:Lji;

    .line 13
    .line 14
    invoke-virtual {v0}, Lji;->getDataDir()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    const-string v4, "shared_prefs/com.google.android.gms.*"

    .line 19
    .line 20
    const-string v5, "lib"

    .line 21
    .line 22
    const-string v6, "code_cache"

    .line 23
    .line 24
    const-string v7, "cache"

    .line 25
    .line 26
    const/4 v8, 0x1

    .line 27
    const/4 v9, 0x0

    .line 28
    if-eqz v3, :cond_2

    .line 29
    .line 30
    invoke-static {v3}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result v10

    .line 34
    if-nez v10, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    move-object v3, v9

    .line 38
    :goto_0
    if-eqz v3, :cond_2

    .line 39
    .line 40
    new-instance v10, Lhz6;

    .line 41
    .line 42
    new-instance v12, Lq63;

    .line 43
    .line 44
    invoke-direct {v12, v3, v8}, Lq63;-><init>(Ljava/lang/String;I)V

    .line 45
    .line 46
    .line 47
    new-instance v15, Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .line 51
    .line 52
    if-nez v1, :cond_1

    .line 53
    .line 54
    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    :cond_1
    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    const/16 v16, 0x8

    .line 67
    .line 68
    const-string v11, "data"

    .line 69
    .line 70
    const/4 v13, 0x1

    .line 71
    const/4 v14, 0x0

    .line 72
    invoke-direct/range {v10 .. v16}, Lhz6;-><init>(Ljava/lang/String;Lq63;ZLjava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    :cond_2
    move-object/from16 v3, p1

    .line 79
    .line 80
    iget-object v3, v3, Lyl;->f:Lgv7;

    .line 81
    .line 82
    invoke-virtual {v3}, Lgv7;->getValue()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    check-cast v3, Ljava/lang/Boolean;

    .line 87
    .line 88
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    if-eqz v3, :cond_5

    .line 93
    .line 94
    invoke-virtual {v0}, Lji;->getDeDataDir()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    if-eqz v0, :cond_5

    .line 99
    .line 100
    invoke-static {v0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    if-nez v3, :cond_3

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_3
    move-object v0, v9

    .line 108
    :goto_1
    if-eqz v0, :cond_5

    .line 109
    .line 110
    new-instance v10, Lhz6;

    .line 111
    .line 112
    new-instance v12, Lq63;

    .line 113
    .line 114
    invoke-direct {v12, v0, v8}, Lq63;-><init>(Ljava/lang/String;I)V

    .line 115
    .line 116
    .line 117
    new-instance v15, Ljava/util/ArrayList;

    .line 118
    .line 119
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .line 121
    .line 122
    if-nez v1, :cond_4

    .line 123
    .line 124
    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    :cond_4
    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    const/16 v16, 0x8

    .line 137
    .line 138
    const-string v11, "data_de"

    .line 139
    .line 140
    const/4 v13, 0x1

    .line 141
    const/4 v14, 0x0

    .line 142
    invoke-direct/range {v10 .. v16}, Lhz6;-><init>(Ljava/lang/String;Lq63;ZLjava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    if-nez v0, :cond_6

    .line 153
    .line 154
    return-object v2

    .line 155
    :cond_6
    const-string v0, "App Data backup requires at least one data directory"

    .line 156
    .line 157
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    return-object v9
.end method

.method public final f(Lok0;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lvl;->m:Lji;

    .line 2
    .line 3
    invoke-virtual {p0}, Lji;->getSplitSourceDirs()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    :cond_0
    invoke-static {p1}, Lvl;->e(Lok0;)V

    .line 16
    .line 17
    .line 18
    :cond_1
    invoke-virtual {p0}, Lji;->getSharedLibsInfos()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    if-eqz p0, :cond_3

    .line 23
    .line 24
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    if-eqz p0, :cond_2

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    return-void

    .line 32
    :cond_3
    :goto_0
    invoke-static {p1}, Lvl;->d(Lok0;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final g(Lxk;)Ltl;
    .locals 35

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    sget-object v3, Lvr6;->INSTANCE:Lvr6;

    .line 6
    .line 7
    iget-object v9, v1, Lvl;->m:Lji;

    .line 8
    .line 9
    invoke-virtual {v9}, Lji;->asString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v4, "Started backup: "

    .line 14
    .line 15
    invoke-static {v4, v0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    const/4 v7, 0x4

    .line 20
    const/4 v8, 0x0

    .line 21
    const-string v4, "AppBackupTask"

    .line 22
    .line 23
    const/4 v6, 0x0

    .line 24
    invoke-static/range {v3 .. v8}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v4, "Props="

    .line 30
    .line 31
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v11, v1, Lvl;->a:Lhz;

    .line 35
    .line 36
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    const-string v4, "AppBackupTask"

    .line 44
    .line 45
    invoke-static/range {v3 .. v8}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Lvl;->i()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    iget-object v7, v1, Lvl;->q:Ltl;

    .line 53
    .line 54
    if-eqz v0, :cond_0

    .line 55
    .line 56
    return-object v7

    .line 57
    :cond_0
    sget-object v0, Lmp6;->a:Lmp6;

    .line 58
    .line 59
    sget-object v0, Lmp6;->i:Ljava/lang/String;

    .line 60
    .line 61
    const-string v4, "AppBackupTask"

    .line 62
    .line 63
    if-eqz v0, :cond_2

    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-nez v0, :cond_1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    invoke-virtual {v9}, Lji;->getPackageName()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    sget-object v5, Lmp6;->i:Ljava/lang/String;

    .line 77
    .line 78
    invoke-static {v0, v5}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_2

    .line 83
    .line 84
    const-string v0, "Magisk package shouldn\'t be backed up or restored! Skipping."

    .line 85
    .line 86
    sget-object v1, Lvr6$a;->YELLOW:Lvr6$a;

    .line 87
    .line 88
    invoke-virtual {v3, v4, v0, v1}, Lvr6;->i(Ljava/lang/String;Ljava/lang/String;Lvr6$a;)V

    .line 89
    .line 90
    .line 91
    return-object v7

    .line 92
    :cond_2
    :goto_0
    invoke-static {}, Lmp6;->g()Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_3

    .line 97
    .line 98
    invoke-virtual {v9}, Lji;->getPackageName()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    const-string v5, "moe.shizuku.privileged.api"

    .line 103
    .line 104
    invoke-static {v0, v5}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-eqz v0, :cond_3

    .line 109
    .line 110
    const-string v0, "Shizuku package shouldn\'t be backed up or restored when Swift Backup is actively using Shizuku! Skipping."

    .line 111
    .line 112
    sget-object v1, Lvr6$a;->YELLOW:Lvr6$a;

    .line 113
    .line 114
    invoke-virtual {v3, v4, v0, v1}, Lvr6;->i(Ljava/lang/String;Ljava/lang/String;Lvr6$a;)V

    .line 115
    .line 116
    .line 117
    return-object v7

    .line 118
    :cond_3
    iget-object v0, v1, Lvl;->b:Lc40;

    .line 119
    .line 120
    iget-object v4, v0, Lpw6;->i:Lex6;

    .line 121
    .line 122
    sget-object v5, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 123
    .line 124
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    const v6, 0x7f130086

    .line 129
    .line 130
    .line 131
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v5

    .line 135
    invoke-virtual {v4, v5}, Lex6;->k(Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v9}, Lji;->getSourceDir()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    if-eqz v4, :cond_4

    .line 143
    .line 144
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 145
    .line 146
    .line 147
    move-result v4

    .line 148
    if-nez v4, :cond_5

    .line 149
    .line 150
    :cond_4
    move-object/from16 v30, v7

    .line 151
    .line 152
    move-object/from16 v18, v9

    .line 153
    .line 154
    goto/16 :goto_35

    .line 155
    .line 156
    :cond_5
    new-instance v12, Lq63;

    .line 157
    .line 158
    invoke-virtual {v9}, Lji;->getSourceDir()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 163
    .line 164
    .line 165
    const/4 v5, 0x1

    .line 166
    invoke-direct {v12, v4, v5}, Lq63;-><init>(Ljava/lang/String;I)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v12}, Lq63;->j()Z

    .line 170
    .line 171
    .line 172
    move-result v4

    .line 173
    if-nez v4, :cond_6

    .line 174
    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    const-string v1, "APK doesn\'t exist at "

    .line 178
    .line 179
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    const-string v1, "!"

    .line 186
    .line 187
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    const/4 v5, 0x4

    .line 195
    const/4 v6, 0x0

    .line 196
    const-string v2, "AppBackupTask"

    .line 197
    .line 198
    const/4 v4, 0x0

    .line 199
    move-object v1, v3

    .line 200
    move-object v3, v0

    .line 201
    invoke-static/range {v1 .. v6}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 202
    .line 203
    .line 204
    return-object v7

    .line 205
    :cond_6
    new-instance v10, Lqk0;

    .line 206
    .line 207
    iget-object v4, v1, Lvl;->p:Lgv7;

    .line 208
    .line 209
    invoke-virtual {v4}, Lgv7;->getValue()Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v4

    .line 213
    move-object v14, v4

    .line 214
    check-cast v14, Ljava/lang/String;

    .line 215
    .line 216
    iget-object v4, v1, Lvl;->l:Lgj;

    .line 217
    .line 218
    iget-boolean v0, v0, Lc40;->u:Z

    .line 219
    .line 220
    iget-boolean v13, v1, Lvl;->c:Z

    .line 221
    .line 222
    iget-object v15, v1, Lvl;->q:Ltl;

    .line 223
    .line 224
    move/from16 v17, v0

    .line 225
    .line 226
    move-object/from16 v16, v4

    .line 227
    .line 228
    invoke-direct/range {v10 .. v17}, Lqk0;-><init>(Lhz;Lq63;ZLjava/lang/String;Ltl;Lgj;Z)V

    .line 229
    .line 230
    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    .line 232
    .line 233
    const-string v4, "MultipleBackupStrategy: "

    .line 234
    .line 235
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    iget-object v13, v10, Lqk0;->i:Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation;

    .line 239
    .line 240
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    move-object v4, v7

    .line 248
    const/4 v7, 0x4

    .line 249
    const/4 v8, 0x0

    .line 250
    move-object v6, v4

    .line 251
    const-string v4, "BackupPlan"

    .line 252
    .line 253
    move-object v14, v6

    .line 254
    const/4 v6, 0x0

    .line 255
    move/from16 v34, v5

    .line 256
    .line 257
    move-object v5, v0

    .line 258
    move/from16 v0, v34

    .line 259
    .line 260
    invoke-static/range {v3 .. v8}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 261
    .line 262
    .line 263
    iget-object v15, v11, Lhz;->c:Ljava/util/List;

    .line 264
    .line 265
    invoke-static {v15}, Lwx3;->o(Ljava/util/Collection;)Z

    .line 266
    .line 267
    .line 268
    move-result v4

    .line 269
    iget-object v5, v10, Lqk0;->h:Lji;

    .line 270
    .line 271
    if-eqz v4, :cond_7

    .line 272
    .line 273
    invoke-virtual {v5}, Lji;->getSplitsUsingWorkaround()Ljava/util/List;

    .line 274
    .line 275
    .line 276
    :cond_7
    invoke-virtual {v10}, Lqk0;->j()Z

    .line 277
    .line 278
    .line 279
    move-result v4

    .line 280
    if-eqz v4, :cond_8

    .line 281
    .line 282
    const/4 v7, 0x4

    .line 283
    const/4 v8, 0x0

    .line 284
    const-string v4, "BackupPlan"

    .line 285
    .line 286
    move-object v6, v5

    .line 287
    const-string v5, "App is blacklisted. No Data will not be backed up"

    .line 288
    .line 289
    move-object/from16 v16, v6

    .line 290
    .line 291
    const/4 v6, 0x0

    .line 292
    move-object/from16 v0, v16

    .line 293
    .line 294
    invoke-static/range {v3 .. v8}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 295
    .line 296
    .line 297
    goto :goto_1

    .line 298
    :cond_8
    move-object v0, v5

    .line 299
    :goto_1
    invoke-static {v15}, Lwx3;->n(Ljava/util/Collection;)Z

    .line 300
    .line 301
    .line 302
    move-result v4

    .line 303
    if-eqz v4, :cond_9

    .line 304
    .line 305
    invoke-virtual {v10}, Lqk0;->j()Z

    .line 306
    .line 307
    .line 308
    move-result v4

    .line 309
    if-nez v4, :cond_9

    .line 310
    .line 311
    sget-object v4, Liu;->DATA:Liu;

    .line 312
    .line 313
    invoke-interface {v15, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 314
    .line 315
    .line 316
    move-result v4

    .line 317
    sget-object v5, Liu;->EXTDATA:Liu;

    .line 318
    .line 319
    invoke-interface {v15, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 320
    .line 321
    .line 322
    move-result v5

    .line 323
    sget-object v6, Liu;->MEDIA:Liu;

    .line 324
    .line 325
    invoke-interface {v15, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 326
    .line 327
    .line 328
    move-result v6

    .line 329
    sget-object v7, Liu;->EXPANSION:Liu;

    .line 330
    .line 331
    invoke-interface {v15, v7}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 332
    .line 333
    .line 334
    move-result v7

    .line 335
    invoke-virtual {v0, v4, v5, v6, v7}, Lji;->calculateSize(ZZZZ)V

    .line 336
    .line 337
    .line 338
    :cond_9
    instance-of v0, v13, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation$SingleBackup;

    .line 339
    .line 340
    const/4 v4, 0x0

    .line 341
    if-eqz v0, :cond_a

    .line 342
    .line 343
    invoke-virtual {v10}, Lqk0;->f()Ltu0;

    .line 344
    .line 345
    .line 346
    move-result-object v0

    .line 347
    move-object/from16 v18, v9

    .line 348
    .line 349
    move-object v9, v4

    .line 350
    goto/16 :goto_5

    .line 351
    .line 352
    :cond_a
    instance-of v0, v13, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation$ConditionalBackups;

    .line 353
    .line 354
    if-eqz v0, :cond_14

    .line 355
    .line 356
    check-cast v13, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation$ConditionalBackups;

    .line 357
    .line 358
    invoke-virtual {v13}, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation$ConditionalBackups;->getCondition()Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$NewBackupCondition;

    .line 359
    .line 360
    .line 361
    move-result-object v0

    .line 362
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v0

    .line 366
    const-string v5, "MultipleBackupStrategy condition: "

    .line 367
    .line 368
    invoke-static {v5, v0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v5

    .line 372
    const/4 v7, 0x4

    .line 373
    const/4 v8, 0x0

    .line 374
    move-object v6, v4

    .line 375
    const-string v4, "BackupPlan"

    .line 376
    .line 377
    move-object/from16 v16, v6

    .line 378
    .line 379
    const/4 v6, 0x0

    .line 380
    move-object/from16 v18, v9

    .line 381
    .line 382
    move-object/from16 v9, v16

    .line 383
    .line 384
    invoke-static/range {v3 .. v8}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 385
    .line 386
    .line 387
    sget-object v0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$NewBackupCondition;->ApkChanges:Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$NewBackupCondition;

    .line 388
    .line 389
    sget-object v4, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$NewBackupCondition;->ApkOrDataChanges:Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$NewBackupCondition;

    .line 390
    .line 391
    filled-new-array {v0, v4}, [Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$NewBackupCondition;

    .line 392
    .line 393
    .line 394
    move-result-object v0

    .line 395
    invoke-static {v0}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 396
    .line 397
    .line 398
    move-result-object v0

    .line 399
    invoke-virtual {v13}, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation$ConditionalBackups;->getCondition()Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$NewBackupCondition;

    .line 400
    .line 401
    .line 402
    move-result-object v5

    .line 403
    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 404
    .line 405
    .line 406
    move-result v0

    .line 407
    sget-object v5, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$NewBackupCondition;->DataChanges:Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$NewBackupCondition;

    .line 408
    .line 409
    filled-new-array {v5, v4}, [Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$NewBackupCondition;

    .line 410
    .line 411
    .line 412
    move-result-object v4

    .line 413
    invoke-static {v4}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 414
    .line 415
    .line 416
    move-result-object v4

    .line 417
    invoke-virtual {v13}, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation$ConditionalBackups;->getCondition()Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$NewBackupCondition;

    .line 418
    .line 419
    .line 420
    move-result-object v5

    .line 421
    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 422
    .line 423
    .line 424
    move-result v13

    .line 425
    if-eqz v0, :cond_d

    .line 426
    .line 427
    sget-object v0, Liu;->APP:Liu;

    .line 428
    .line 429
    invoke-interface {v15, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 430
    .line 431
    .line 432
    move-result v0

    .line 433
    if-eqz v0, :cond_c

    .line 434
    .line 435
    invoke-virtual {v10}, Lqk0;->i()Z

    .line 436
    .line 437
    .line 438
    move-result v0

    .line 439
    if-eqz v0, :cond_b

    .line 440
    .line 441
    invoke-virtual {v10}, Lqk0;->e()Lok0;

    .line 442
    .line 443
    .line 444
    move-result-object v0

    .line 445
    goto/16 :goto_5

    .line 446
    .line 447
    :cond_b
    const/4 v7, 0x4

    .line 448
    const/4 v8, 0x0

    .line 449
    const-string v4, "BackupPlan"

    .line 450
    .line 451
    const-string v5, "No change in APK"

    .line 452
    .line 453
    const/4 v6, 0x0

    .line 454
    invoke-static/range {v3 .. v8}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 455
    .line 456
    .line 457
    goto :goto_2

    .line 458
    :cond_c
    const/4 v7, 0x4

    .line 459
    const/4 v8, 0x0

    .line 460
    const-string v4, "BackupPlan"

    .line 461
    .line 462
    const-string v5, "APK not selected for backup"

    .line 463
    .line 464
    const/4 v6, 0x0

    .line 465
    invoke-static/range {v3 .. v8}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 466
    .line 467
    .line 468
    :cond_d
    :goto_2
    if-eqz v13, :cond_13

    .line 469
    .line 470
    invoke-static {v15}, Lwx3;->n(Ljava/util/Collection;)Z

    .line 471
    .line 472
    .line 473
    move-result v0

    .line 474
    if-eqz v0, :cond_12

    .line 475
    .line 476
    invoke-virtual {v10}, Lqk0;->a()Z

    .line 477
    .line 478
    .line 479
    move-result v0

    .line 480
    if-eqz v0, :cond_e

    .line 481
    .line 482
    invoke-virtual {v10}, Lqk0;->k()Z

    .line 483
    .line 484
    .line 485
    move-result v0

    .line 486
    if-eqz v0, :cond_e

    .line 487
    .line 488
    goto :goto_3

    .line 489
    :cond_e
    invoke-virtual {v10}, Lqk0;->c()Z

    .line 490
    .line 491
    .line 492
    move-result v0

    .line 493
    if-eqz v0, :cond_f

    .line 494
    .line 495
    invoke-virtual {v10}, Lqk0;->m()Z

    .line 496
    .line 497
    .line 498
    move-result v0

    .line 499
    if-eqz v0, :cond_f

    .line 500
    .line 501
    goto :goto_3

    .line 502
    :cond_f
    invoke-virtual {v10}, Lqk0;->b()Z

    .line 503
    .line 504
    .line 505
    move-result v0

    .line 506
    if-eqz v0, :cond_10

    .line 507
    .line 508
    invoke-virtual {v10}, Lqk0;->l()Z

    .line 509
    .line 510
    .line 511
    move-result v0

    .line 512
    if-eqz v0, :cond_10

    .line 513
    .line 514
    goto :goto_3

    .line 515
    :cond_10
    invoke-virtual {v10}, Lqk0;->d()Z

    .line 516
    .line 517
    .line 518
    move-result v0

    .line 519
    if-eqz v0, :cond_11

    .line 520
    .line 521
    invoke-virtual {v10}, Lqk0;->o()Z

    .line 522
    .line 523
    .line 524
    move-result v0

    .line 525
    if-eqz v0, :cond_11

    .line 526
    .line 527
    :goto_3
    invoke-virtual {v10}, Lqk0;->e()Lok0;

    .line 528
    .line 529
    .line 530
    move-result-object v0

    .line 531
    goto :goto_5

    .line 532
    :cond_11
    const/4 v7, 0x4

    .line 533
    const/4 v8, 0x0

    .line 534
    const-string v4, "BackupPlan"

    .line 535
    .line 536
    const-string v5, "No change in any selected Data parts"

    .line 537
    .line 538
    const/4 v6, 0x0

    .line 539
    invoke-static/range {v3 .. v8}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 540
    .line 541
    .line 542
    invoke-virtual {v10}, Lqk0;->j()Z

    .line 543
    .line 544
    .line 545
    move-result v0

    .line 546
    if-eqz v0, :cond_13

    .line 547
    .line 548
    const/4 v7, 0x4

    .line 549
    const/4 v8, 0x0

    .line 550
    const-string v4, "BackupPlan"

    .line 551
    .line 552
    const-string v5, "App is blacklisted with NoData mode."

    .line 553
    .line 554
    const/4 v6, 0x0

    .line 555
    invoke-static/range {v3 .. v8}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 556
    .line 557
    .line 558
    goto :goto_4

    .line 559
    :cond_12
    const/4 v7, 0x4

    .line 560
    const/4 v8, 0x0

    .line 561
    const-string v4, "BackupPlan"

    .line 562
    .line 563
    const-string v5, "No data parts selected for backup"

    .line 564
    .line 565
    const/4 v6, 0x0

    .line 566
    invoke-static/range {v3 .. v8}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 567
    .line 568
    .line 569
    :cond_13
    :goto_4
    invoke-virtual {v10}, Lqk0;->f()Ltu0;

    .line 570
    .line 571
    .line 572
    move-result-object v0

    .line 573
    goto :goto_5

    .line 574
    :cond_14
    move-object/from16 v18, v9

    .line 575
    .line 576
    move-object v9, v4

    .line 577
    instance-of v0, v13, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation$DatedBackups;

    .line 578
    .line 579
    if-eqz v0, :cond_6c

    .line 580
    .line 581
    invoke-virtual {v10}, Lqk0;->e()Lok0;

    .line 582
    .line 583
    .line 584
    move-result-object v0

    .line 585
    :goto_5
    instance-of v4, v0, Lnk0;

    .line 586
    .line 587
    if-eqz v4, :cond_15

    .line 588
    .line 589
    check-cast v0, Lnk0;

    .line 590
    .line 591
    iget-object v0, v0, Lnk0;->n:Ljava/lang/String;

    .line 592
    .line 593
    const-string v1, "Skipping backup. Reason: "

    .line 594
    .line 595
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 596
    .line 597
    .line 598
    move-result-object v0

    .line 599
    const/4 v5, 0x4

    .line 600
    const/4 v6, 0x0

    .line 601
    const-string v2, "AppBackupTask"

    .line 602
    .line 603
    const/4 v4, 0x0

    .line 604
    move-object v1, v3

    .line 605
    move-object v3, v0

    .line 606
    invoke-static/range {v1 .. v6}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 607
    .line 608
    .line 609
    return-object v14

    .line 610
    :cond_15
    instance-of v4, v0, Lok0;

    .line 611
    .line 612
    if-eqz v4, :cond_6b

    .line 613
    .line 614
    move-object v10, v0

    .line 615
    check-cast v10, Lok0;

    .line 616
    .line 617
    iget-object v13, v10, Lok0;->t:Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;

    .line 618
    .line 619
    iget-object v15, v10, Lok0;->n:Lhk;

    .line 620
    .line 621
    iget-boolean v0, v10, Lok0;->o:Z

    .line 622
    .line 623
    iget-object v4, v1, Lvl;->n:Ljava/util/LinkedHashSet;

    .line 624
    .line 625
    if-eqz v0, :cond_19

    .line 626
    .line 627
    sget-object v0, Lgz;->Apk:Lgz;

    .line 628
    .line 629
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 630
    .line 631
    .line 632
    invoke-virtual/range {v18 .. v18}, Lji;->getSplitSourceDirs()Ljava/util/List;

    .line 633
    .line 634
    .line 635
    move-result-object v0

    .line 636
    if-eqz v0, :cond_17

    .line 637
    .line 638
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 639
    .line 640
    .line 641
    move-result v0

    .line 642
    if-eqz v0, :cond_16

    .line 643
    .line 644
    goto :goto_6

    .line 645
    :cond_16
    sget-object v0, Lgz;->Splits:Lgz;

    .line 646
    .line 647
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 648
    .line 649
    .line 650
    :cond_17
    :goto_6
    invoke-virtual/range {v18 .. v18}, Lji;->getSharedLibsInfos()Ljava/util/List;

    .line 651
    .line 652
    .line 653
    move-result-object v0

    .line 654
    if-eqz v0, :cond_19

    .line 655
    .line 656
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 657
    .line 658
    .line 659
    move-result v0

    .line 660
    if-eqz v0, :cond_18

    .line 661
    .line 662
    goto :goto_7

    .line 663
    :cond_18
    sget-object v0, Lgz;->SharedLibs:Lgz;

    .line 664
    .line 665
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 666
    .line 667
    .line 668
    :cond_19
    :goto_7
    iget-boolean v0, v10, Lok0;->p:Z

    .line 669
    .line 670
    if-eqz v0, :cond_1a

    .line 671
    .line 672
    sget-object v0, Lgz;->Data:Lgz;

    .line 673
    .line 674
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 675
    .line 676
    .line 677
    :cond_1a
    iget-boolean v0, v10, Lok0;->q:Z

    .line 678
    .line 679
    if-eqz v0, :cond_1b

    .line 680
    .line 681
    sget-object v0, Lgz;->ExtData:Lgz;

    .line 682
    .line 683
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 684
    .line 685
    .line 686
    :cond_1b
    iget-boolean v0, v10, Lok0;->r:Z

    .line 687
    .line 688
    if-eqz v0, :cond_1c

    .line 689
    .line 690
    sget-object v0, Lgz;->Expansion:Lgz;

    .line 691
    .line 692
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 693
    .line 694
    .line 695
    :cond_1c
    iget-boolean v0, v10, Lok0;->s:Z

    .line 696
    .line 697
    if-eqz v0, :cond_1d

    .line 698
    .line 699
    sget-object v0, Lgz;->Media:Lgz;

    .line 700
    .line 701
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 702
    .line 703
    .line 704
    :cond_1d
    invoke-virtual {v15}, Lhk;->e()Lq63;

    .line 705
    .line 706
    .line 707
    move-result-object v0

    .line 708
    invoke-static {v0}, Lq63;->E(Lq63;)Z

    .line 709
    .line 710
    .line 711
    iget-object v0, v11, Lhz;->c:Ljava/util/List;

    .line 712
    .line 713
    invoke-static {v0}, Lwx3;->o(Ljava/util/Collection;)Z

    .line 714
    .line 715
    .line 716
    move-result v0

    .line 717
    if-eqz v0, :cond_1e

    .line 718
    .line 719
    invoke-virtual {v1, v10}, Lvl;->f(Lok0;)V

    .line 720
    .line 721
    .line 722
    :cond_1e
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 723
    .line 724
    .line 725
    move-result v0

    .line 726
    if-nez v0, :cond_1f

    .line 727
    .line 728
    const/16 v23, 0x0

    .line 729
    .line 730
    const/16 v24, 0x3f

    .line 731
    .line 732
    const/16 v20, 0x0

    .line 733
    .line 734
    const/16 v21, 0x0

    .line 735
    .line 736
    const/16 v22, 0x0

    .line 737
    .line 738
    move-object/from16 v19, v4

    .line 739
    .line 740
    invoke-static/range {v19 .. v24}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 741
    .line 742
    .line 743
    move-result-object v0

    .line 744
    const-string v4, "Tasks to perform = "

    .line 745
    .line 746
    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 747
    .line 748
    .line 749
    move-result-object v5

    .line 750
    const/4 v7, 0x4

    .line 751
    const/4 v8, 0x0

    .line 752
    const-string v4, "AppBackupTask"

    .line 753
    .line 754
    const/4 v6, 0x0

    .line 755
    invoke-static/range {v3 .. v8}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 756
    .line 757
    .line 758
    invoke-virtual {v1, v12, v10, v2}, Lvl;->a(Lq63;Lok0;Lxk;)V

    .line 759
    .line 760
    .line 761
    goto :goto_8

    .line 762
    :cond_1f
    const/4 v7, 0x4

    .line 763
    const/4 v8, 0x0

    .line 764
    const-string v4, "AppBackupTask"

    .line 765
    .line 766
    const-string v5, "No app part backups to perform with this app!"

    .line 767
    .line 768
    const/4 v6, 0x0

    .line 769
    invoke-static/range {v3 .. v8}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 770
    .line 771
    .line 772
    :goto_8
    invoke-virtual {v1}, Lvl;->i()Z

    .line 773
    .line 774
    .line 775
    move-result v0

    .line 776
    if-nez v0, :cond_65

    .line 777
    .line 778
    sget-object v19, Lvr6;->INSTANCE:Lvr6;

    .line 779
    .line 780
    const/16 v23, 0x4

    .line 781
    .line 782
    const/16 v24, 0x0

    .line 783
    .line 784
    const-string v20, "AppBackupTask"

    .line 785
    .line 786
    const-string v21, "Backing up permissions and additional data"

    .line 787
    .line 788
    const/16 v22, 0x0

    .line 789
    .line 790
    invoke-static/range {v19 .. v24}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 791
    .line 792
    .line 793
    sget-object v0, Lav;->a:Lgv7;

    .line 794
    .line 795
    iget-object v4, v10, Lok0;->t:Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;

    .line 796
    .line 797
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getPackageName()Ljava/lang/String;

    .line 798
    .line 799
    .line 800
    move-result-object v0

    .line 801
    iget-object v5, v1, Lvl;->f:Lal;

    .line 802
    .line 803
    invoke-virtual {v5}, Lal;->invoke()Ljava/lang/Object;

    .line 804
    .line 805
    .line 806
    move-result-object v5

    .line 807
    move-object/from16 v20, v5

    .line 808
    .line 809
    check-cast v20, Ljava/util/Set;

    .line 810
    .line 811
    iget-object v5, v1, Lvl;->h:Lbl;

    .line 812
    .line 813
    invoke-virtual {v5}, Lbl;->invoke()Ljava/lang/Object;

    .line 814
    .line 815
    .line 816
    move-result-object v5

    .line 817
    move-object/from16 v21, v5

    .line 818
    .line 819
    check-cast v21, Ljava/util/Set;

    .line 820
    .line 821
    iget-object v5, v1, Lvl;->i:Llf;

    .line 822
    .line 823
    invoke-virtual {v5}, Llf;->invoke()Ljava/lang/Object;

    .line 824
    .line 825
    .line 826
    move-result-object v5

    .line 827
    move-object/from16 v22, v5

    .line 828
    .line 829
    check-cast v22, Ljava/util/Set;

    .line 830
    .line 831
    iget-object v5, v1, Lvl;->j:Lej;

    .line 832
    .line 833
    invoke-virtual {v5}, Lej;->invoke()Ljava/lang/Object;

    .line 834
    .line 835
    .line 836
    move-result-object v5

    .line 837
    move-object/from16 v23, v5

    .line 838
    .line 839
    check-cast v23, Lg55;

    .line 840
    .line 841
    iget-object v5, v1, Lvl;->k:Lfj;

    .line 842
    .line 843
    invoke-virtual {v5}, Lfj;->invoke()Ljava/lang/Object;

    .line 844
    .line 845
    .line 846
    move-result-object v5

    .line 847
    move-object/from16 v24, v5

    .line 848
    .line 849
    check-cast v24, Ljava/util/Set;

    .line 850
    .line 851
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 852
    .line 853
    .line 854
    new-instance v5, Ljava/util/LinkedHashMap;

    .line 855
    .line 856
    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 857
    .line 858
    .line 859
    sget-object v6, Lg00;->a:Lg00;

    .line 860
    .line 861
    const/16 v6, 0x1000

    .line 862
    .line 863
    invoke-static {v6, v0}, Lg00;->q(ILjava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 864
    .line 865
    .line 866
    move-result-object v6

    .line 867
    if-eqz v6, :cond_20

    .line 868
    .line 869
    iget-object v7, v6, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 870
    .line 871
    if-eqz v7, :cond_20

    .line 872
    .line 873
    array-length v8, v7

    .line 874
    if-nez v8, :cond_21

    .line 875
    .line 876
    :cond_20
    move-object v7, v9

    .line 877
    :cond_21
    if-eqz v6, :cond_22

    .line 878
    .line 879
    iget-object v6, v6, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    .line 880
    .line 881
    if-eqz v6, :cond_22

    .line 882
    .line 883
    array-length v8, v6

    .line 884
    if-nez v8, :cond_23

    .line 885
    .line 886
    :cond_22
    move-object v6, v9

    .line 887
    :cond_23
    sget-object v8, Lmp6;->a:Lmp6;

    .line 888
    .line 889
    invoke-static {}, Lmp6;->f()Z

    .line 890
    .line 891
    .line 892
    move-result v16

    .line 893
    move-object/from16 v19, v6

    .line 894
    .line 895
    const-string v9, ":"

    .line 896
    .line 897
    if-nez v16, :cond_24

    .line 898
    .line 899
    sget-object v8, Lpv2;->a:Lpv2;

    .line 900
    .line 901
    move-object/from16 v28, v0

    .line 902
    .line 903
    move-object/from16 v29, v3

    .line 904
    .line 905
    move-object/from16 v31, v11

    .line 906
    .line 907
    move-object/from16 v33, v13

    .line 908
    .line 909
    move-object/from16 v30, v14

    .line 910
    .line 911
    move-object/from16 v32, v15

    .line 912
    .line 913
    goto/16 :goto_13

    .line 914
    .line 915
    :cond_24
    invoke-static {}, Lg00;->i()I

    .line 916
    .line 917
    .line 918
    move-result v6

    .line 919
    const-string v25, "^\\s*User\\s+(\\d+):.*"

    .line 920
    .line 921
    invoke-static/range {v25 .. v25}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 922
    .line 923
    .line 924
    move-result-object v12

    .line 925
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 926
    .line 927
    .line 928
    const-string v25, "^\\s*([A-Za-z0-9_.]+):\\s+granted=(?:true|false),\\s+flags=\\[(.*)]"

    .line 929
    .line 930
    move-object/from16 v28, v0

    .line 931
    .line 932
    invoke-static/range {v25 .. v25}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 933
    .line 934
    .line 935
    move-result-object v0

    .line 936
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 937
    .line 938
    .line 939
    move-object/from16 v29, v3

    .line 940
    .line 941
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 942
    .line 943
    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 944
    .line 945
    .line 946
    sget-object v25, Lg42;->m:Lgv7;

    .line 947
    .line 948
    invoke-virtual/range {v25 .. v25}, Lgv7;->getValue()Ljava/lang/Object;

    .line 949
    .line 950
    .line 951
    move-result-object v25

    .line 952
    move-object/from16 v30, v14

    .line 953
    .line 954
    move-object/from16 v14, v25

    .line 955
    .line 956
    check-cast v14, Ljava/lang/String;

    .line 957
    .line 958
    filled-new-array/range {v28 .. v28}, [Ljava/lang/Object;

    .line 959
    .line 960
    .line 961
    move-result-object v2

    .line 962
    move-object/from16 v31, v11

    .line 963
    .line 964
    const/4 v11, 0x1

    .line 965
    invoke-static {v2, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 966
    .line 967
    .line 968
    move-result-object v2

    .line 969
    invoke-static {v14, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 970
    .line 971
    .line 972
    move-result-object v2

    .line 973
    const-string v11, "^[[:space:]]*User[[:space:]]*"

    .line 974
    .line 975
    invoke-static {v6, v11, v9}, Lxs1;->h(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 976
    .line 977
    .line 978
    move-result-object v11

    .line 979
    const-string v14, "/,$ { /^[[:space:]]*User[[:space:]][0-9][0-9]*:/ { /"

    .line 980
    .line 981
    move-object/from16 v32, v15

    .line 982
    .line 983
    const-string v15, "/! q; }; p; }"

    .line 984
    .line 985
    move-object/from16 v33, v13

    .line 986
    .line 987
    const-string v13, "/"

    .line 988
    .line 989
    invoke-static {v13, v11, v14, v11, v15}, Leq3;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 990
    .line 991
    .line 992
    move-result-object v11

    .line 993
    const-string v13, " 2>/dev/null | sed -n \'"

    .line 994
    .line 995
    const-string v14, "\'"

    .line 996
    .line 997
    invoke-static {v2, v13, v11, v14}, Lu48;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 998
    .line 999
    .line 1000
    move-result-object v2

    .line 1001
    filled-new-array {v2}, [Ljava/lang/String;

    .line 1002
    .line 1003
    .line 1004
    move-result-object v2

    .line 1005
    sget-object v11, Lip6;->SHIZUKU:Lip6;

    .line 1006
    .line 1007
    invoke-virtual {v8, v2, v11}, Lmp6;->h([Ljava/lang/String;Lip6;)Ljava/util/List;

    .line 1008
    .line 1009
    .line 1010
    move-result-object v2

    .line 1011
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1012
    .line 1013
    .line 1014
    move-result-object v2

    .line 1015
    const/4 v8, 0x0

    .line 1016
    const/4 v11, 0x0

    .line 1017
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1018
    .line 1019
    .line 1020
    move-result v13

    .line 1021
    if-eqz v13, :cond_32

    .line 1022
    .line 1023
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1024
    .line 1025
    .line 1026
    move-result-object v13

    .line 1027
    check-cast v13, Ljava/lang/String;

    .line 1028
    .line 1029
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1030
    .line 1031
    .line 1032
    invoke-virtual {v12, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 1033
    .line 1034
    .line 1035
    move-result-object v14

    .line 1036
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1037
    .line 1038
    .line 1039
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->matches()Z

    .line 1040
    .line 1041
    .line 1042
    move-result v15

    .line 1043
    if-nez v15, :cond_25

    .line 1044
    .line 1045
    const/4 v15, 0x0

    .line 1046
    goto :goto_a

    .line 1047
    :cond_25
    new-instance v15, Lu75;

    .line 1048
    .line 1049
    invoke-direct {v15, v14, v13}, Lu75;-><init>(Ljava/util/regex/Matcher;Ljava/lang/CharSequence;)V

    .line 1050
    .line 1051
    .line 1052
    :goto_a
    if-eqz v15, :cond_28

    .line 1053
    .line 1054
    invoke-virtual {v15}, Lu75;->a()Ljava/util/List;

    .line 1055
    .line 1056
    .line 1057
    move-result-object v8

    .line 1058
    check-cast v8, Ls75;

    .line 1059
    .line 1060
    const/4 v11, 0x1

    .line 1061
    invoke-virtual {v8, v11}, Ls75;->get(I)Ljava/lang/Object;

    .line 1062
    .line 1063
    .line 1064
    move-result-object v8

    .line 1065
    check-cast v8, Ljava/lang/String;

    .line 1066
    .line 1067
    invoke-static {v8}, Luq7;->X(Ljava/lang/String;)Ljava/lang/Integer;

    .line 1068
    .line 1069
    .line 1070
    move-result-object v8

    .line 1071
    if-nez v8, :cond_26

    .line 1072
    .line 1073
    goto :goto_b

    .line 1074
    :cond_26
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 1075
    .line 1076
    .line 1077
    move-result v8

    .line 1078
    if-ne v8, v6, :cond_27

    .line 1079
    .line 1080
    const/4 v8, 0x1

    .line 1081
    goto :goto_c

    .line 1082
    :cond_27
    :goto_b
    const/4 v8, 0x0

    .line 1083
    :goto_c
    move-object/from16 v25, v0

    .line 1084
    .line 1085
    move-object/from16 v16, v2

    .line 1086
    .line 1087
    move v11, v8

    .line 1088
    :goto_d
    const/4 v8, 0x0

    .line 1089
    goto/16 :goto_12

    .line 1090
    .line 1091
    :cond_28
    if-nez v11, :cond_29

    .line 1092
    .line 1093
    goto :goto_e

    .line 1094
    :cond_29
    invoke-static {v13}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 1095
    .line 1096
    .line 1097
    move-result-object v14

    .line 1098
    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1099
    .line 1100
    .line 1101
    move-result-object v14

    .line 1102
    const-string v15, "runtime permissions:"

    .line 1103
    .line 1104
    invoke-static {v14, v15}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1105
    .line 1106
    .line 1107
    move-result v15

    .line 1108
    if-eqz v15, :cond_2a

    .line 1109
    .line 1110
    move-object/from16 v25, v0

    .line 1111
    .line 1112
    move-object/from16 v16, v2

    .line 1113
    .line 1114
    const/4 v8, 0x1

    .line 1115
    goto/16 :goto_12

    .line 1116
    .line 1117
    :cond_2a
    if-nez v8, :cond_2b

    .line 1118
    .line 1119
    :goto_e
    move-object/from16 v25, v0

    .line 1120
    .line 1121
    move-object/from16 v16, v2

    .line 1122
    .line 1123
    goto/16 :goto_12

    .line 1124
    .line 1125
    :cond_2b
    invoke-virtual {v0, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 1126
    .line 1127
    .line 1128
    move-result-object v15

    .line 1129
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1130
    .line 1131
    .line 1132
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->matches()Z

    .line 1133
    .line 1134
    .line 1135
    move-result v25

    .line 1136
    if-nez v25, :cond_2c

    .line 1137
    .line 1138
    move-object/from16 v25, v0

    .line 1139
    .line 1140
    const/4 v0, 0x0

    .line 1141
    goto :goto_f

    .line 1142
    :cond_2c
    move-object/from16 v25, v0

    .line 1143
    .line 1144
    new-instance v0, Lu75;

    .line 1145
    .line 1146
    invoke-direct {v0, v15, v13}, Lu75;-><init>(Ljava/util/regex/Matcher;Ljava/lang/CharSequence;)V

    .line 1147
    .line 1148
    .line 1149
    :goto_f
    if-eqz v0, :cond_30

    .line 1150
    .line 1151
    invoke-virtual {v0}, Lu75;->a()Ljava/util/List;

    .line 1152
    .line 1153
    .line 1154
    move-result-object v13

    .line 1155
    check-cast v13, Ls75;

    .line 1156
    .line 1157
    const/4 v14, 0x1

    .line 1158
    invoke-virtual {v13, v14}, Ls75;->get(I)Ljava/lang/Object;

    .line 1159
    .line 1160
    .line 1161
    move-result-object v13

    .line 1162
    check-cast v13, Ljava/lang/String;

    .line 1163
    .line 1164
    invoke-virtual {v0}, Lu75;->a()Ljava/util/List;

    .line 1165
    .line 1166
    .line 1167
    move-result-object v0

    .line 1168
    check-cast v0, Ls75;

    .line 1169
    .line 1170
    const/4 v14, 0x2

    .line 1171
    invoke-virtual {v0, v14}, Ls75;->get(I)Ljava/lang/Object;

    .line 1172
    .line 1173
    .line 1174
    move-result-object v0

    .line 1175
    check-cast v0, Ljava/lang/CharSequence;

    .line 1176
    .line 1177
    const-string v14, "|"

    .line 1178
    .line 1179
    filled-new-array {v14}, [Ljava/lang/String;

    .line 1180
    .line 1181
    .line 1182
    move-result-object v14

    .line 1183
    const/4 v15, 0x6

    .line 1184
    invoke-static {v0, v14, v15}, Lnq7;->x0(Ljava/lang/CharSequence;[Ljava/lang/String;I)Ljava/util/List;

    .line 1185
    .line 1186
    .line 1187
    move-result-object v0

    .line 1188
    new-instance v14, Ljava/util/ArrayList;

    .line 1189
    .line 1190
    move-object/from16 v16, v2

    .line 1191
    .line 1192
    const/16 v15, 0xa

    .line 1193
    .line 1194
    invoke-static {v0, v15}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 1195
    .line 1196
    .line 1197
    move-result v2

    .line 1198
    invoke-direct {v14, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1199
    .line 1200
    .line 1201
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1202
    .line 1203
    .line 1204
    move-result-object v0

    .line 1205
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1206
    .line 1207
    .line 1208
    move-result v2

    .line 1209
    if-eqz v2, :cond_2d

    .line 1210
    .line 1211
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1212
    .line 1213
    .line 1214
    move-result-object v2

    .line 1215
    check-cast v2, Ljava/lang/String;

    .line 1216
    .line 1217
    invoke-static {v2}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 1218
    .line 1219
    .line 1220
    move-result-object v2

    .line 1221
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1222
    .line 1223
    .line 1224
    move-result-object v2

    .line 1225
    sget-object v15, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 1226
    .line 1227
    invoke-virtual {v2, v15}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 1228
    .line 1229
    .line 1230
    move-result-object v2

    .line 1231
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1232
    .line 1233
    .line 1234
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1235
    .line 1236
    .line 1237
    const/16 v15, 0xa

    .line 1238
    .line 1239
    goto :goto_10

    .line 1240
    :cond_2d
    new-instance v0, Ljava/util/ArrayList;

    .line 1241
    .line 1242
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1243
    .line 1244
    .line 1245
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1246
    .line 1247
    .line 1248
    move-result-object v2

    .line 1249
    :cond_2e
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1250
    .line 1251
    .line 1252
    move-result v14

    .line 1253
    if-eqz v14, :cond_2f

    .line 1254
    .line 1255
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1256
    .line 1257
    .line 1258
    move-result-object v14

    .line 1259
    move-object v15, v14

    .line 1260
    check-cast v15, Ljava/lang/String;

    .line 1261
    .line 1262
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    .line 1263
    .line 1264
    .line 1265
    move-result v15

    .line 1266
    if-lez v15, :cond_2e

    .line 1267
    .line 1268
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1269
    .line 1270
    .line 1271
    goto :goto_11

    .line 1272
    :cond_2f
    invoke-static {v0}, Lel1;->z1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 1273
    .line 1274
    .line 1275
    move-result-object v0

    .line 1276
    invoke-interface {v3, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1277
    .line 1278
    .line 1279
    goto :goto_12

    .line 1280
    :cond_30
    move-object/from16 v16, v2

    .line 1281
    .line 1282
    const/4 v2, 0x0

    .line 1283
    invoke-static {v14, v9, v2}, Luq7;->O(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 1284
    .line 1285
    .line 1286
    move-result v0

    .line 1287
    if-eqz v0, :cond_31

    .line 1288
    .line 1289
    goto/16 :goto_d

    .line 1290
    .line 1291
    :cond_31
    :goto_12
    move-object/from16 v2, v16

    .line 1292
    .line 1293
    move-object/from16 v0, v25

    .line 1294
    .line 1295
    goto/16 :goto_9

    .line 1296
    .line 1297
    :cond_32
    move-object v8, v3

    .line 1298
    :goto_13
    sget-object v0, Lmp6;->a:Lmp6;

    .line 1299
    .line 1300
    invoke-static {}, Lmp6;->f()Z

    .line 1301
    .line 1302
    .line 1303
    move-result v0

    .line 1304
    if-eqz v0, :cond_33

    .line 1305
    .line 1306
    invoke-static/range {v28 .. v28}, Ll73;->o(Ljava/lang/String;)Lfu;

    .line 1307
    .line 1308
    .line 1309
    move-result-object v0

    .line 1310
    move-object/from16 v25, v0

    .line 1311
    .line 1312
    goto :goto_14

    .line 1313
    :cond_33
    const/16 v25, 0x0

    .line 1314
    .line 1315
    :goto_14
    if-eqz v7, :cond_3b

    .line 1316
    .line 1317
    if-eqz v19, :cond_3b

    .line 1318
    .line 1319
    array-length v0, v7

    .line 1320
    const/4 v2, 0x0

    .line 1321
    :goto_15
    if-ge v2, v0, :cond_3b

    .line 1322
    .line 1323
    aget-object v3, v7, v2

    .line 1324
    .line 1325
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1326
    .line 1327
    .line 1328
    sget-object v6, Lav;->b:Lgv7;

    .line 1329
    .line 1330
    invoke-virtual {v6}, Lgv7;->getValue()Ljava/lang/Object;

    .line 1331
    .line 1332
    .line 1333
    move-result-object v6

    .line 1334
    check-cast v6, Ljava/util/Map;

    .line 1335
    .line 1336
    invoke-interface {v6, v3}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    .line 1337
    .line 1338
    .line 1339
    move-result v6

    .line 1340
    if-eqz v6, :cond_39

    .line 1341
    .line 1342
    aget v6, v19, v2

    .line 1343
    .line 1344
    const/16 v26, 0x2

    .line 1345
    .line 1346
    and-int/lit8 v6, v6, 0x2

    .line 1347
    .line 1348
    if-eqz v6, :cond_34

    .line 1349
    .line 1350
    const/4 v6, 0x1

    .line 1351
    goto :goto_16

    .line 1352
    :cond_34
    const/4 v6, 0x0

    .line 1353
    :goto_16
    invoke-interface {v8, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1354
    .line 1355
    .line 1356
    move-result-object v11

    .line 1357
    check-cast v11, Ljava/util/Set;

    .line 1358
    .line 1359
    if-nez v11, :cond_35

    .line 1360
    .line 1361
    sget-object v11, Lsv2;->a:Lsv2;

    .line 1362
    .line 1363
    :cond_35
    if-eqz v6, :cond_36

    .line 1364
    .line 1365
    sget-object v6, Luu;->Granted:Luu;

    .line 1366
    .line 1367
    goto :goto_17

    .line 1368
    :cond_36
    const-string v6, "USER_FIXED"

    .line 1369
    .line 1370
    invoke-interface {v11, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 1371
    .line 1372
    .line 1373
    move-result v6

    .line 1374
    if-eqz v6, :cond_37

    .line 1375
    .line 1376
    sget-object v6, Luu;->DeniedUserFixed:Luu;

    .line 1377
    .line 1378
    goto :goto_17

    .line 1379
    :cond_37
    const-string v6, "USER_SET"

    .line 1380
    .line 1381
    invoke-interface {v11, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 1382
    .line 1383
    .line 1384
    move-result v6

    .line 1385
    if-eqz v6, :cond_38

    .line 1386
    .line 1387
    sget-object v6, Luu;->DeniedUserSet:Luu;

    .line 1388
    .line 1389
    goto :goto_17

    .line 1390
    :cond_38
    const/4 v6, 0x0

    .line 1391
    :goto_17
    if-eqz v6, :cond_3a

    .line 1392
    .line 1393
    new-instance v11, Lsu;

    .line 1394
    .line 1395
    invoke-direct {v11, v3, v6}, Lsu;-><init>(Ljava/lang/String;Luu;)V

    .line 1396
    .line 1397
    .line 1398
    invoke-interface {v5, v3, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1399
    .line 1400
    .line 1401
    goto :goto_18

    .line 1402
    :cond_39
    const/16 v26, 0x2

    .line 1403
    .line 1404
    :cond_3a
    :goto_18
    add-int/lit8 v2, v2, 0x1

    .line 1405
    .line 1406
    goto :goto_15

    .line 1407
    :cond_3b
    sget-object v0, Lmp6;->a:Lmp6;

    .line 1408
    .line 1409
    invoke-static {}, Lmp6;->f()Z

    .line 1410
    .line 1411
    .line 1412
    move-result v0

    .line 1413
    if-eqz v0, :cond_3c

    .line 1414
    .line 1415
    const/16 v26, 0x1

    .line 1416
    .line 1417
    move-object/from16 v19, v28

    .line 1418
    .line 1419
    invoke-static/range {v19 .. v26}, Lav;->a(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lg55;Ljava/util/Set;Lfu;Z)Ljava/util/ArrayList;

    .line 1420
    .line 1421
    .line 1422
    move-result-object v0

    .line 1423
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1424
    .line 1425
    .line 1426
    move-result-object v0

    .line 1427
    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1428
    .line 1429
    .line 1430
    move-result v2

    .line 1431
    if-eqz v2, :cond_3c

    .line 1432
    .line 1433
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1434
    .line 1435
    .line 1436
    move-result-object v2

    .line 1437
    check-cast v2, Ljava/lang/String;

    .line 1438
    .line 1439
    new-instance v3, Lsu;

    .line 1440
    .line 1441
    sget-object v6, Luu;->Granted:Luu;

    .line 1442
    .line 1443
    invoke-direct {v3, v2, v6}, Lsu;-><init>(Ljava/lang/String;Luu;)V

    .line 1444
    .line 1445
    .line 1446
    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1447
    .line 1448
    .line 1449
    goto :goto_19

    .line 1450
    :cond_3c
    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 1451
    .line 1452
    .line 1453
    move-result-object v0

    .line 1454
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1455
    .line 1456
    .line 1457
    invoke-static {v0}, Lav;->i(Ljava/util/Collection;)Ljava/util/List;

    .line 1458
    .line 1459
    .line 1460
    move-result-object v0

    .line 1461
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1462
    .line 1463
    .line 1464
    move-result-object v0

    .line 1465
    :cond_3d
    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1466
    .line 1467
    .line 1468
    move-result v2

    .line 1469
    if-eqz v2, :cond_3e

    .line 1470
    .line 1471
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1472
    .line 1473
    .line 1474
    move-result-object v2

    .line 1475
    check-cast v2, Lsu;

    .line 1476
    .line 1477
    iget-object v3, v2, Lsu;->a:Ljava/lang/String;

    .line 1478
    .line 1479
    sget-object v6, Lav;->b:Lgv7;

    .line 1480
    .line 1481
    invoke-virtual {v6}, Lgv7;->getValue()Ljava/lang/Object;

    .line 1482
    .line 1483
    .line 1484
    move-result-object v6

    .line 1485
    check-cast v6, Ljava/util/Map;

    .line 1486
    .line 1487
    invoke-interface {v6, v3}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    .line 1488
    .line 1489
    .line 1490
    move-result v3

    .line 1491
    if-eqz v3, :cond_3d

    .line 1492
    .line 1493
    sget-object v11, Lvr6;->INSTANCE:Lvr6;

    .line 1494
    .line 1495
    iget-object v3, v2, Lsu;->a:Ljava/lang/String;

    .line 1496
    .line 1497
    const-string v6, "."

    .line 1498
    .line 1499
    invoke-static {v3, v6, v3}, Lnq7;->A0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1500
    .line 1501
    .line 1502
    move-result-object v3

    .line 1503
    iget-object v2, v2, Lsu;->b:Luu;

    .line 1504
    .line 1505
    invoke-static {v2}, Lav;->j(Luu;)Ljava/lang/String;

    .line 1506
    .line 1507
    .line 1508
    move-result-object v2

    .line 1509
    const-string v6, "Permission: "

    .line 1510
    .line 1511
    const-string v7, " = "

    .line 1512
    .line 1513
    invoke-static {v6, v3, v7, v2}, Ldj7;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1514
    .line 1515
    .line 1516
    move-result-object v13

    .line 1517
    const/4 v15, 0x4

    .line 1518
    const/16 v16, 0x0

    .line 1519
    .line 1520
    const-string v12, "AppPermissionsHelper"

    .line 1521
    .line 1522
    const/4 v14, 0x0

    .line 1523
    invoke-static/range {v11 .. v16}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 1524
    .line 1525
    .line 1526
    goto :goto_1a

    .line 1527
    :cond_3e
    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 1528
    .line 1529
    .line 1530
    move-result-object v0

    .line 1531
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1532
    .line 1533
    .line 1534
    invoke-static {v0}, Lav;->i(Ljava/util/Collection;)Ljava/util/List;

    .line 1535
    .line 1536
    .line 1537
    move-result-object v0

    .line 1538
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 1539
    .line 1540
    .line 1541
    move-result v2

    .line 1542
    if-eqz v2, :cond_40

    .line 1543
    .line 1544
    :cond_3f
    const/4 v0, 0x0

    .line 1545
    :goto_1b
    const/4 v6, 0x0

    .line 1546
    goto :goto_1f

    .line 1547
    :cond_40
    invoke-static {v0}, Lav;->i(Ljava/util/Collection;)Ljava/util/List;

    .line 1548
    .line 1549
    .line 1550
    move-result-object v0

    .line 1551
    new-instance v2, Ljava/util/ArrayList;

    .line 1552
    .line 1553
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1554
    .line 1555
    .line 1556
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1557
    .line 1558
    .line 1559
    move-result-object v0

    .line 1560
    :cond_41
    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1561
    .line 1562
    .line 1563
    move-result v3

    .line 1564
    if-eqz v3, :cond_43

    .line 1565
    .line 1566
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1567
    .line 1568
    .line 1569
    move-result-object v3

    .line 1570
    check-cast v3, Lsu;

    .line 1571
    .line 1572
    sget-object v5, Lav;->a:Lgv7;

    .line 1573
    .line 1574
    invoke-virtual {v5}, Lgv7;->getValue()Ljava/lang/Object;

    .line 1575
    .line 1576
    .line 1577
    move-result-object v5

    .line 1578
    check-cast v5, Ljava/util/Map;

    .line 1579
    .line 1580
    iget-object v6, v3, Lsu;->a:Ljava/lang/String;

    .line 1581
    .line 1582
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1583
    .line 1584
    .line 1585
    move-result-object v5

    .line 1586
    check-cast v5, Ljava/lang/Integer;

    .line 1587
    .line 1588
    if-eqz v5, :cond_42

    .line 1589
    .line 1590
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 1591
    .line 1592
    .line 1593
    move-result v5

    .line 1594
    iget-object v3, v3, Lsu;->b:Luu;

    .line 1595
    .line 1596
    invoke-virtual {v3}, Luu;->getToken()Ljava/lang/String;

    .line 1597
    .line 1598
    .line 1599
    move-result-object v3

    .line 1600
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1601
    .line 1602
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1603
    .line 1604
    .line 1605
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1606
    .line 1607
    .line 1608
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1609
    .line 1610
    .line 1611
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1612
    .line 1613
    .line 1614
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1615
    .line 1616
    .line 1617
    move-result-object v3

    .line 1618
    goto :goto_1d

    .line 1619
    :cond_42
    const/4 v3, 0x0

    .line 1620
    :goto_1d
    if-eqz v3, :cond_41

    .line 1621
    .line 1622
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1623
    .line 1624
    .line 1625
    goto :goto_1c

    .line 1626
    :cond_43
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1627
    .line 1628
    .line 1629
    move-result v0

    .line 1630
    if-nez v0, :cond_44

    .line 1631
    .line 1632
    move-object v11, v2

    .line 1633
    goto :goto_1e

    .line 1634
    :cond_44
    const/4 v11, 0x0

    .line 1635
    :goto_1e
    if-eqz v11, :cond_3f

    .line 1636
    .line 1637
    const/4 v15, 0x0

    .line 1638
    const/16 v16, 0x3e

    .line 1639
    .line 1640
    const-string v12, ","

    .line 1641
    .line 1642
    const/4 v13, 0x0

    .line 1643
    const/4 v14, 0x0

    .line 1644
    invoke-static/range {v11 .. v16}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 1645
    .line 1646
    .line 1647
    move-result-object v0

    .line 1648
    goto :goto_1b

    .line 1649
    :goto_1f
    invoke-virtual {v4, v6}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->setPermissionIdsCsv(Ljava/lang/String;)V

    .line 1650
    .line 1651
    .line 1652
    invoke-virtual {v4, v6}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->setPermissionStatesCsv(Ljava/lang/String;)V

    .line 1653
    .line 1654
    .line 1655
    if-eqz v0, :cond_45

    .line 1656
    .line 1657
    invoke-static {v0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 1658
    .line 1659
    .line 1660
    move-result v2

    .line 1661
    if-nez v2, :cond_45

    .line 1662
    .line 1663
    move-object/from16 v20, v0

    .line 1664
    .line 1665
    goto :goto_20

    .line 1666
    :cond_45
    const/16 v20, 0x0

    .line 1667
    .line 1668
    :goto_20
    if-nez v20, :cond_46

    .line 1669
    .line 1670
    sget-object v11, Lvr6;->INSTANCE:Lvr6;

    .line 1671
    .line 1672
    const/4 v15, 0x4

    .line 1673
    const/16 v16, 0x0

    .line 1674
    .line 1675
    const-string v12, "AppBackupTask"

    .line 1676
    .line 1677
    const-string v13, "No permission choices to back up"

    .line 1678
    .line 1679
    const/4 v14, 0x0

    .line 1680
    invoke-static/range {v11 .. v16}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 1681
    .line 1682
    .line 1683
    :cond_46
    iget-object v0, v1, Lvl;->e:Lah;

    .line 1684
    .line 1685
    invoke-virtual {v0}, Lah;->invoke()Ljava/lang/Object;

    .line 1686
    .line 1687
    .line 1688
    move-result-object v0

    .line 1689
    check-cast v0, Lyo5;

    .line 1690
    .line 1691
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getPackageName()Ljava/lang/String;

    .line 1692
    .line 1693
    .line 1694
    move-result-object v2

    .line 1695
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1696
    .line 1697
    .line 1698
    iget-object v0, v0, Lyo5;->a:Ljava/util/Map;

    .line 1699
    .line 1700
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1701
    .line 1702
    .line 1703
    if-eqz v0, :cond_47

    .line 1704
    .line 1705
    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 1706
    .line 1707
    .line 1708
    move-result v2

    .line 1709
    const/4 v11, 0x1

    .line 1710
    if-ne v2, v11, :cond_47

    .line 1711
    .line 1712
    sget-object v21, Lvr6;->INSTANCE:Lvr6;

    .line 1713
    .line 1714
    const/16 v25, 0x4

    .line 1715
    .line 1716
    const/16 v26, 0x0

    .line 1717
    .line 1718
    const-string v22, "AppBackupTask"

    .line 1719
    .line 1720
    const-string v23, "Special permission: Notification Access = Granted"

    .line 1721
    .line 1722
    const/16 v24, 0x0

    .line 1723
    .line 1724
    invoke-static/range {v21 .. v26}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 1725
    .line 1726
    .line 1727
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getPackageName()Ljava/lang/String;

    .line 1728
    .line 1729
    .line 1730
    move-result-object v2

    .line 1731
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1732
    .line 1733
    .line 1734
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1735
    .line 1736
    .line 1737
    move-result-object v0

    .line 1738
    check-cast v0, Ljava/lang/String;

    .line 1739
    .line 1740
    move-object/from16 v22, v0

    .line 1741
    .line 1742
    goto :goto_21

    .line 1743
    :cond_47
    const/16 v22, 0x0

    .line 1744
    .line 1745
    :goto_21
    iget-object v0, v1, Lvl;->g:Ld76;

    .line 1746
    .line 1747
    invoke-virtual {v0}, Ld76;->invoke()Ljava/lang/Object;

    .line 1748
    .line 1749
    .line 1750
    move-result-object v0

    .line 1751
    check-cast v0, Lo6;

    .line 1752
    .line 1753
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getPackageName()Ljava/lang/String;

    .line 1754
    .line 1755
    .line 1756
    move-result-object v2

    .line 1757
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1758
    .line 1759
    .line 1760
    iget-object v0, v0, Lo6;->a:Ljava/util/Map;

    .line 1761
    .line 1762
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1763
    .line 1764
    .line 1765
    if-eqz v0, :cond_48

    .line 1766
    .line 1767
    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 1768
    .line 1769
    .line 1770
    move-result v2

    .line 1771
    const/4 v11, 0x1

    .line 1772
    if-ne v2, v11, :cond_48

    .line 1773
    .line 1774
    sget-object v12, Lvr6;->INSTANCE:Lvr6;

    .line 1775
    .line 1776
    const/16 v16, 0x4

    .line 1777
    .line 1778
    const/16 v17, 0x0

    .line 1779
    .line 1780
    const-string v13, "AppBackupTask"

    .line 1781
    .line 1782
    const-string v14, "Special permission: Accessibility service = Granted"

    .line 1783
    .line 1784
    const/4 v15, 0x0

    .line 1785
    invoke-static/range {v12 .. v17}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 1786
    .line 1787
    .line 1788
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getPackageName()Ljava/lang/String;

    .line 1789
    .line 1790
    .line 1791
    move-result-object v2

    .line 1792
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1793
    .line 1794
    .line 1795
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1796
    .line 1797
    .line 1798
    move-result-object v0

    .line 1799
    check-cast v0, Ljava/lang/String;

    .line 1800
    .line 1801
    move-object/from16 v23, v0

    .line 1802
    .line 1803
    goto :goto_22

    .line 1804
    :cond_48
    const/16 v23, 0x0

    .line 1805
    .line 1806
    :goto_22
    iget-object v0, v1, Lvl;->d:Lek;

    .line 1807
    .line 1808
    invoke-virtual {v0}, Lek;->invoke()Ljava/lang/Object;

    .line 1809
    .line 1810
    .line 1811
    move-result-object v0

    .line 1812
    check-cast v0, Ljava/util/HashMap;

    .line 1813
    .line 1814
    if-eqz v0, :cond_4a

    .line 1815
    .line 1816
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 1817
    .line 1818
    .line 1819
    move-result v2

    .line 1820
    if-eqz v2, :cond_49

    .line 1821
    .line 1822
    goto :goto_23

    .line 1823
    :cond_49
    invoke-virtual/range {v18 .. v18}, Lji;->getPackageName()Ljava/lang/String;

    .line 1824
    .line 1825
    .line 1826
    move-result-object v2

    .line 1827
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1828
    .line 1829
    .line 1830
    move-result-object v0

    .line 1831
    check-cast v0, Lkk7;

    .line 1832
    .line 1833
    if-nez v0, :cond_4b

    .line 1834
    .line 1835
    sget-object v11, Lvr6;->INSTANCE:Lvr6;

    .line 1836
    .line 1837
    const/4 v15, 0x4

    .line 1838
    const/16 v16, 0x0

    .line 1839
    .line 1840
    const-string v12, "AppBackupTask"

    .line 1841
    .line 1842
    const-string v13, "No ssaid to backup"

    .line 1843
    .line 1844
    const/4 v14, 0x0

    .line 1845
    invoke-static/range {v11 .. v16}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 1846
    .line 1847
    .line 1848
    :cond_4a
    :goto_23
    const/16 v21, 0x0

    .line 1849
    .line 1850
    goto :goto_24

    .line 1851
    :cond_4b
    iget-object v2, v0, Lkk7;->c:Ljava/lang/String;

    .line 1852
    .line 1853
    sget-object v3, Llk7;->a:Lai6;

    .line 1854
    .line 1855
    iget-object v0, v0, Lkk7;->b:Ljava/lang/String;

    .line 1856
    .line 1857
    if-eqz v0, :cond_4a

    .line 1858
    .line 1859
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 1860
    .line 1861
    .line 1862
    move-result v0

    .line 1863
    if-nez v0, :cond_4c

    .line 1864
    .line 1865
    goto :goto_23

    .line 1866
    :cond_4c
    if-eqz v2, :cond_4a

    .line 1867
    .line 1868
    sget-object v0, Llk7;->a:Lai6;

    .line 1869
    .line 1870
    invoke-virtual {v0, v2}, Lai6;->b(Ljava/lang/CharSequence;)Z

    .line 1871
    .line 1872
    .line 1873
    move-result v0

    .line 1874
    if-eqz v0, :cond_4a

    .line 1875
    .line 1876
    sget-object v11, Lvr6;->INSTANCE:Lvr6;

    .line 1877
    .line 1878
    const-string v0, "Backed up app ssaid = "

    .line 1879
    .line 1880
    invoke-static {v0, v2}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1881
    .line 1882
    .line 1883
    move-result-object v13

    .line 1884
    const/4 v15, 0x4

    .line 1885
    const/16 v16, 0x0

    .line 1886
    .line 1887
    const-string v12, "AppBackupTask"

    .line 1888
    .line 1889
    const/4 v14, 0x0

    .line 1890
    invoke-static/range {v11 .. v16}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 1891
    .line 1892
    .line 1893
    move-object/from16 v21, v2

    .line 1894
    .line 1895
    :goto_24
    invoke-virtual/range {v18 .. v18}, Lji;->getPackageName()Ljava/lang/String;

    .line 1896
    .line 1897
    .line 1898
    move-result-object v0

    .line 1899
    sget-object v2, Lg00;->a:Lg00;

    .line 1900
    .line 1901
    invoke-static {}, Lg00;->i()I

    .line 1902
    .line 1903
    .line 1904
    move-result v2

    .line 1905
    const-string v3, "Notification settings backup failed: "

    .line 1906
    .line 1907
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1908
    .line 1909
    .line 1910
    sget-boolean v5, Lmp6;->g:Z

    .line 1911
    .line 1912
    if-nez v5, :cond_4d

    .line 1913
    .line 1914
    :goto_25
    const/16 v24, 0x0

    .line 1915
    .line 1916
    goto/16 :goto_2d

    .line 1917
    .line 1918
    :cond_4d
    invoke-static {v0}, Lap5;->a(Ljava/lang/String;)Z

    .line 1919
    .line 1920
    .line 1921
    move-result v5

    .line 1922
    if-nez v5, :cond_4e

    .line 1923
    .line 1924
    sget-object v11, Lvr6;->INSTANCE:Lvr6;

    .line 1925
    .line 1926
    const-string v2, "Skipping notification settings backup for unsafe package name: "

    .line 1927
    .line 1928
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1929
    .line 1930
    .line 1931
    move-result-object v13

    .line 1932
    const/4 v15, 0x4

    .line 1933
    const/16 v16, 0x0

    .line 1934
    .line 1935
    const-string v12, "NotificationPolicyBackupHelper"

    .line 1936
    .line 1937
    const/4 v14, 0x0

    .line 1938
    invoke-static/range {v11 .. v16}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 1939
    .line 1940
    .line 1941
    goto :goto_25

    .line 1942
    :cond_4e
    const-string v5, "backup"

    .line 1943
    .line 1944
    invoke-static {v5}, Lap5;->b(Ljava/lang/String;)Ljava/io/File;

    .line 1945
    .line 1946
    .line 1947
    move-result-object v6

    .line 1948
    :try_start_0
    const-class v7, Lorg/swiftapps/swiftbackup/apptasks/notifications/NotificationPolicyProxy;

    .line 1949
    .line 1950
    const-string v8, "swiftbackup_notification_policy_proxy"

    .line 1951
    .line 1952
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 1953
    .line 1954
    .line 1955
    move-result-object v2

    .line 1956
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 1957
    .line 1958
    .line 1959
    move-result-object v9

    .line 1960
    filled-new-array {v5, v2, v0, v9}, [Ljava/lang/String;

    .line 1961
    .line 1962
    .line 1963
    move-result-object v0

    .line 1964
    invoke-static {v0}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 1965
    .line 1966
    .line 1967
    move-result-object v0

    .line 1968
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1969
    .line 1970
    .line 1971
    move-result-object v2

    .line 1972
    const/4 v9, 0x0

    .line 1973
    invoke-static {v2, v8, v0, v9}, Lbv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;)Ljava/util/List;

    .line 1974
    .line 1975
    .line 1976
    move-result-object v11

    .line 1977
    if-eqz v11, :cond_4f

    .line 1978
    .line 1979
    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    .line 1980
    .line 1981
    .line 1982
    move-result v0

    .line 1983
    if-eqz v0, :cond_4f

    .line 1984
    .line 1985
    goto :goto_28

    .line 1986
    :catchall_0
    move-exception v0

    .line 1987
    goto/16 :goto_32

    .line 1988
    .line 1989
    :catch_0
    move-exception v0

    .line 1990
    goto/16 :goto_2c

    .line 1991
    .line 1992
    :cond_4f
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1993
    .line 1994
    .line 1995
    move-result-object v0

    .line 1996
    :cond_50
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1997
    .line 1998
    .line 1999
    move-result v2

    .line 2000
    if-eqz v2, :cond_53

    .line 2001
    .line 2002
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2003
    .line 2004
    .line 2005
    move-result-object v2

    .line 2006
    check-cast v2, Ljava/lang/String;

    .line 2007
    .line 2008
    const-string v5, "SB_NOTIFICATION_POLICY:OK"

    .line 2009
    .line 2010
    invoke-static {v2, v5}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2011
    .line 2012
    .line 2013
    move-result v2

    .line 2014
    if-eqz v2, :cond_50

    .line 2015
    .line 2016
    sget-object v0, Lf51;->a:Ljava/nio/charset/Charset;

    .line 2017
    .line 2018
    invoke-static {v6, v0}, Lnc3;->T(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 2019
    .line 2020
    .line 2021
    move-result-object v2

    .line 2022
    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 2023
    .line 2024
    .line 2025
    move-result-object v0

    .line 2026
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2027
    .line 2028
    .line 2029
    array-length v0, v0

    .line 2030
    if-eqz v0, :cond_52

    .line 2031
    .line 2032
    const/high16 v5, 0x80000

    .line 2033
    .line 2034
    if-le v0, v5, :cond_51

    .line 2035
    .line 2036
    goto :goto_26

    .line 2037
    :cond_51
    sget-object v11, Lvr6;->INSTANCE:Lvr6;

    .line 2038
    .line 2039
    const-string v12, "NotificationPolicyBackupHelper"

    .line 2040
    .line 2041
    const-string v13, "Backed up notification settings"

    .line 2042
    .line 2043
    const/4 v15, 0x4

    .line 2044
    const/16 v16, 0x0

    .line 2045
    .line 2046
    const/4 v14, 0x0

    .line 2047
    invoke-static/range {v11 .. v16}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 2048
    .line 2049
    .line 2050
    goto/16 :goto_2b

    .line 2051
    .line 2052
    :cond_52
    :goto_26
    sget-object v11, Lvr6;->INSTANCE:Lvr6;

    .line 2053
    .line 2054
    const-string v12, "NotificationPolicyBackupHelper"

    .line 2055
    .line 2056
    new-instance v2, Ljava/lang/StringBuilder;

    .line 2057
    .line 2058
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2059
    .line 2060
    .line 2061
    const-string v5, "Skipping notification settings backup due to XML size="

    .line 2062
    .line 2063
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2064
    .line 2065
    .line 2066
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2067
    .line 2068
    .line 2069
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2070
    .line 2071
    .line 2072
    move-result-object v13

    .line 2073
    const/4 v15, 0x4

    .line 2074
    const/16 v16, 0x0

    .line 2075
    .line 2076
    const/4 v14, 0x0

    .line 2077
    invoke-static/range {v11 .. v16}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 2078
    .line 2079
    .line 2080
    :goto_27
    const/4 v2, 0x0

    .line 2081
    goto/16 :goto_2b

    .line 2082
    .line 2083
    :cond_53
    :goto_28
    if-eqz v11, :cond_54

    .line 2084
    .line 2085
    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    .line 2086
    .line 2087
    .line 2088
    move-result v0

    .line 2089
    if-eqz v0, :cond_54

    .line 2090
    .line 2091
    goto :goto_29

    .line 2092
    :cond_54
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 2093
    .line 2094
    .line 2095
    move-result-object v0

    .line 2096
    :cond_55
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 2097
    .line 2098
    .line 2099
    move-result v2

    .line 2100
    if-eqz v2, :cond_56

    .line 2101
    .line 2102
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2103
    .line 2104
    .line 2105
    move-result-object v2

    .line 2106
    check-cast v2, Ljava/lang/String;

    .line 2107
    .line 2108
    const-string v5, "SB_NOTIFICATION_POLICY:MISSING"

    .line 2109
    .line 2110
    invoke-static {v2, v5}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2111
    .line 2112
    .line 2113
    move-result v2

    .line 2114
    if-eqz v2, :cond_55

    .line 2115
    .line 2116
    goto :goto_27

    .line 2117
    :cond_56
    :goto_29
    if-eqz v11, :cond_57

    .line 2118
    .line 2119
    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    .line 2120
    .line 2121
    .line 2122
    move-result v0

    .line 2123
    if-eqz v0, :cond_57

    .line 2124
    .line 2125
    goto :goto_2a

    .line 2126
    :cond_57
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 2127
    .line 2128
    .line 2129
    move-result-object v0

    .line 2130
    :cond_58
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 2131
    .line 2132
    .line 2133
    move-result v2

    .line 2134
    if-eqz v2, :cond_59

    .line 2135
    .line 2136
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2137
    .line 2138
    .line 2139
    move-result-object v2

    .line 2140
    check-cast v2, Ljava/lang/String;

    .line 2141
    .line 2142
    const-string v5, "SB_NOTIFICATION_POLICY:UNSUPPORTED"

    .line 2143
    .line 2144
    invoke-static {v2, v5}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2145
    .line 2146
    .line 2147
    move-result v2

    .line 2148
    if-eqz v2, :cond_58

    .line 2149
    .line 2150
    goto :goto_27

    .line 2151
    :cond_59
    :goto_2a
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 2152
    .line 2153
    const-string v2, "NotificationPolicyBackupHelper"

    .line 2154
    .line 2155
    const/4 v15, 0x0

    .line 2156
    const/16 v16, 0x3f

    .line 2157
    .line 2158
    const/4 v12, 0x0

    .line 2159
    const/4 v13, 0x0

    .line 2160
    const/4 v14, 0x0

    .line 2161
    invoke-static/range {v11 .. v16}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 2162
    .line 2163
    .line 2164
    move-result-object v5

    .line 2165
    new-instance v7, Ljava/lang/StringBuilder;

    .line 2166
    .line 2167
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 2168
    .line 2169
    .line 2170
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2171
    .line 2172
    .line 2173
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2174
    .line 2175
    .line 2176
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2177
    .line 2178
    .line 2179
    move-result-object v13

    .line 2180
    const/4 v15, 0x4

    .line 2181
    const/16 v16, 0x0

    .line 2182
    .line 2183
    const/4 v14, 0x0

    .line 2184
    move-object v11, v0

    .line 2185
    move-object v12, v2

    .line 2186
    invoke-static/range {v11 .. v16}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2187
    .line 2188
    .line 2189
    goto :goto_27

    .line 2190
    :goto_2b
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 2191
    .line 2192
    .line 2193
    move-object/from16 v24, v2

    .line 2194
    .line 2195
    goto :goto_2d

    .line 2196
    :goto_2c
    :try_start_1
    sget-object v11, Lvr6;->INSTANCE:Lvr6;

    .line 2197
    .line 2198
    const-string v12, "NotificationPolicyBackupHelper"

    .line 2199
    .line 2200
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 2201
    .line 2202
    .line 2203
    move-result-object v0

    .line 2204
    new-instance v2, Ljava/lang/StringBuilder;

    .line 2205
    .line 2206
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2207
    .line 2208
    .line 2209
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2210
    .line 2211
    .line 2212
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2213
    .line 2214
    .line 2215
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2216
    .line 2217
    .line 2218
    move-result-object v13

    .line 2219
    const/4 v15, 0x4

    .line 2220
    const/16 v16, 0x0

    .line 2221
    .line 2222
    const/4 v14, 0x0

    .line 2223
    invoke-static/range {v11 .. v16}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2224
    .line 2225
    .line 2226
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 2227
    .line 2228
    .line 2229
    goto/16 :goto_25

    .line 2230
    .line 2231
    :goto_2d
    sget-object v19, Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload;->Companion:Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload$a;

    .line 2232
    .line 2233
    iget-object v0, v10, Lok0;->n:Lhk;

    .line 2234
    .line 2235
    invoke-virtual {v0}, Lhk;->B()Lq63;

    .line 2236
    .line 2237
    .line 2238
    move-result-object v25

    .line 2239
    invoke-virtual/range {v19 .. v25}, Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload$a;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lq63;)Z

    .line 2240
    .line 2241
    .line 2242
    const/4 v6, 0x0

    .line 2243
    invoke-virtual {v4, v6}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->setNtfAccessComponent(Ljava/lang/String;)V

    .line 2244
    .line 2245
    .line 2246
    invoke-virtual {v4, v6}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->setAccessibilityComponent(Ljava/lang/String;)V

    .line 2247
    .line 2248
    .line 2249
    invoke-virtual {v4, v6}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->setSsaid(Ljava/lang/String;)V

    .line 2250
    .line 2251
    .line 2252
    iget-boolean v0, v10, Lok0;->u:Z

    .line 2253
    .line 2254
    if-eqz v0, :cond_5a

    .line 2255
    .line 2256
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2257
    .line 2258
    .line 2259
    move-result-wide v2

    .line 2260
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2261
    .line 2262
    .line 2263
    move-result-object v0

    .line 2264
    move-object/from16 v2, v33

    .line 2265
    .line 2266
    invoke-virtual {v2, v0}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->setDateBackupUpdated(Ljava/lang/Long;)V

    .line 2267
    .line 2268
    .line 2269
    goto :goto_2e

    .line 2270
    :cond_5a
    move-object/from16 v2, v33

    .line 2271
    .line 2272
    :goto_2e
    const/4 v7, 0x4

    .line 2273
    const/4 v8, 0x0

    .line 2274
    const-string v4, "AppBackupTask"

    .line 2275
    .line 2276
    const-string v5, "Saving backup metadata"

    .line 2277
    .line 2278
    const/4 v6, 0x0

    .line 2279
    move-object/from16 v3, v29

    .line 2280
    .line 2281
    const/16 v15, 0xa

    .line 2282
    .line 2283
    invoke-static/range {v3 .. v8}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 2284
    .line 2285
    .line 2286
    invoke-virtual/range {v18 .. v18}, Lji;->refresh()V

    .line 2287
    .line 2288
    .line 2289
    sget-object v0, Lcu;->a:Lcu;

    .line 2290
    .line 2291
    invoke-virtual/range {v32 .. v32}, Lhk;->v()Lq63;

    .line 2292
    .line 2293
    .line 2294
    move-result-object v3

    .line 2295
    invoke-virtual {v0, v2, v3}, Lcu;->f(Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;Lq63;)V

    .line 2296
    .line 2297
    .line 2298
    sget-object v0, Lj94;->a:Ljava/util/Set;

    .line 2299
    .line 2300
    invoke-virtual/range {v18 .. v18}, Lji;->getPackageName()Ljava/lang/String;

    .line 2301
    .line 2302
    .line 2303
    move-result-object v0

    .line 2304
    invoke-virtual/range {v18 .. v18}, Lji;->isInstalled()Z

    .line 2305
    .line 2306
    .line 2307
    move-result v2

    .line 2308
    invoke-static {v0, v2}, Lj94;->f(Ljava/lang/String;Z)V

    .line 2309
    .line 2310
    .line 2311
    invoke-virtual/range {v32 .. v32}, Lhk;->E()Z

    .line 2312
    .line 2313
    .line 2314
    move-result v0

    .line 2315
    move-object/from16 v2, v32

    .line 2316
    .line 2317
    if-eqz v0, :cond_5b

    .line 2318
    .line 2319
    iput-object v2, v1, Lvl;->r:Lhk;

    .line 2320
    .line 2321
    :cond_5b
    iget-boolean v0, v1, Lvl;->s:Z

    .line 2322
    .line 2323
    if-nez v0, :cond_66

    .line 2324
    .line 2325
    move-object/from16 v11, v31

    .line 2326
    .line 2327
    iget-object v0, v11, Lhz;->d:Ljava/util/List;

    .line 2328
    .line 2329
    invoke-static {v0}, Lji8;->s(Ljava/util/Collection;)Z

    .line 2330
    .line 2331
    .line 2332
    move-result v0

    .line 2333
    if-nez v0, :cond_5c

    .line 2334
    .line 2335
    goto/16 :goto_33

    .line 2336
    .line 2337
    :cond_5c
    iget-object v0, v11, Lhz;->i:Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 2338
    .line 2339
    invoke-static {v0}, Lorg/swiftapps/swiftbackup/settings/f;->a(Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;)Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation;

    .line 2340
    .line 2341
    .line 2342
    move-result-object v0

    .line 2343
    invoke-virtual/range {v18 .. v18}, Lji;->refreshBackupDetails()V

    .line 2344
    .line 2345
    .line 2346
    invoke-virtual/range {v18 .. v18}, Lji;->getLocalBackups()Ljava/util/List;

    .line 2347
    .line 2348
    .line 2349
    move-result-object v1

    .line 2350
    if-nez v1, :cond_5d

    .line 2351
    .line 2352
    goto/16 :goto_33

    .line 2353
    .line 2354
    :cond_5d
    new-instance v3, Ljava/util/ArrayList;

    .line 2355
    .line 2356
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2357
    .line 2358
    .line 2359
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 2360
    .line 2361
    .line 2362
    move-result-object v4

    .line 2363
    :cond_5e
    :goto_2f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 2364
    .line 2365
    .line 2366
    move-result v5

    .line 2367
    if-eqz v5, :cond_5f

    .line 2368
    .line 2369
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2370
    .line 2371
    .line 2372
    move-result-object v5

    .line 2373
    move-object v6, v5

    .line 2374
    check-cast v6, Lgm;

    .line 2375
    .line 2376
    iget-object v6, v6, Lgm;->b:Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;

    .line 2377
    .line 2378
    invoke-virtual {v6}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->isProtectedBackup()Z

    .line 2379
    .line 2380
    .line 2381
    move-result v6

    .line 2382
    if-eqz v6, :cond_5e

    .line 2383
    .line 2384
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2385
    .line 2386
    .line 2387
    goto :goto_2f

    .line 2388
    :cond_5f
    new-instance v4, Ljava/util/ArrayList;

    .line 2389
    .line 2390
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2391
    .line 2392
    .line 2393
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 2394
    .line 2395
    .line 2396
    move-result-object v5

    .line 2397
    :cond_60
    :goto_30
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 2398
    .line 2399
    .line 2400
    move-result v6

    .line 2401
    if-eqz v6, :cond_61

    .line 2402
    .line 2403
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2404
    .line 2405
    .line 2406
    move-result-object v6

    .line 2407
    move-object v7, v6

    .line 2408
    check-cast v7, Lgm;

    .line 2409
    .line 2410
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 2411
    .line 2412
    .line 2413
    move-result v7

    .line 2414
    if-nez v7, :cond_60

    .line 2415
    .line 2416
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2417
    .line 2418
    .line 2419
    goto :goto_30

    .line 2420
    :cond_61
    sget-object v8, Lvr6;->INSTANCE:Lvr6;

    .line 2421
    .line 2422
    new-instance v5, Ljava/lang/StringBuilder;

    .line 2423
    .line 2424
    const-string v6, "Multiple backups strategy: "

    .line 2425
    .line 2426
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2427
    .line 2428
    .line 2429
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2430
    .line 2431
    .line 2432
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2433
    .line 2434
    .line 2435
    move-result-object v10

    .line 2436
    const/4 v12, 0x4

    .line 2437
    const/4 v13, 0x0

    .line 2438
    const-string v9, "AppBackupTask: LocalBackupsCleanup"

    .line 2439
    .line 2440
    const/4 v11, 0x0

    .line 2441
    invoke-static/range {v8 .. v13}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 2442
    .line 2443
    .line 2444
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 2445
    .line 2446
    .line 2447
    move-result v1

    .line 2448
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 2449
    .line 2450
    .line 2451
    move-result v5

    .line 2452
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 2453
    .line 2454
    .line 2455
    move-result v3

    .line 2456
    const-string v6, " ("

    .line 2457
    .line 2458
    const-string v7, " Normal + "

    .line 2459
    .line 2460
    const-string v10, "Total backups: "

    .line 2461
    .line 2462
    invoke-static {v10, v1, v6, v7, v5}, Lxs1;->n(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/StringBuilder;

    .line 2463
    .line 2464
    .line 2465
    move-result-object v1

    .line 2466
    const-string v5, " Protected)"

    .line 2467
    .line 2468
    invoke-static {v1, v3, v5}, Lxs1;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 2469
    .line 2470
    .line 2471
    move-result-object v10

    .line 2472
    invoke-static/range {v8 .. v13}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 2473
    .line 2474
    .line 2475
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 2476
    .line 2477
    .line 2478
    move-result v1

    .line 2479
    if-nez v1, :cond_64

    .line 2480
    .line 2481
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 2482
    .line 2483
    .line 2484
    move-result v1

    .line 2485
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation;->getMaxNumOfBackups()I

    .line 2486
    .line 2487
    .line 2488
    move-result v3

    .line 2489
    if-le v1, v3, :cond_64

    .line 2490
    .line 2491
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation;->getMaxNumOfBackups()I

    .line 2492
    .line 2493
    .line 2494
    move-result v1

    .line 2495
    invoke-static {v1, v4}, Lel1;->N0(ILjava/util/List;)Ljava/util/List;

    .line 2496
    .line 2497
    .line 2498
    move-result-object v1

    .line 2499
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 2500
    .line 2501
    .line 2502
    move-result v3

    .line 2503
    if-eqz v3, :cond_62

    .line 2504
    .line 2505
    goto :goto_33

    .line 2506
    :cond_62
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation;->getMaxNumOfBackups()I

    .line 2507
    .line 2508
    .line 2509
    move-result v0

    .line 2510
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 2511
    .line 2512
    .line 2513
    move-result v3

    .line 2514
    const-string v4, ". Deleting "

    .line 2515
    .line 2516
    const-string v5, " old normal backup(s)."

    .line 2517
    .line 2518
    const-string v6, "Max normal backups to keep: "

    .line 2519
    .line 2520
    invoke-static {v6, v0, v4, v5, v3}, Ldj7;->j(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 2521
    .line 2522
    .line 2523
    move-result-object v10

    .line 2524
    const/4 v12, 0x4

    .line 2525
    const/4 v13, 0x0

    .line 2526
    const/4 v11, 0x0

    .line 2527
    invoke-static/range {v8 .. v13}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 2528
    .line 2529
    .line 2530
    new-instance v0, Ljava/util/ArrayList;

    .line 2531
    .line 2532
    invoke-static {v1, v15}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 2533
    .line 2534
    .line 2535
    move-result v3

    .line 2536
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 2537
    .line 2538
    .line 2539
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 2540
    .line 2541
    .line 2542
    move-result-object v1

    .line 2543
    :goto_31
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 2544
    .line 2545
    .line 2546
    move-result v3

    .line 2547
    if-eqz v3, :cond_63

    .line 2548
    .line 2549
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2550
    .line 2551
    .line 2552
    move-result-object v3

    .line 2553
    check-cast v3, Lgm;

    .line 2554
    .line 2555
    iget-object v3, v3, Lgm;->a:Lhk;

    .line 2556
    .line 2557
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2558
    .line 2559
    .line 2560
    goto :goto_31

    .line 2561
    :cond_63
    new-instance v1, Lmy7;

    .line 2562
    .line 2563
    sget-object v3, Lov2;->a:Lov2;

    .line 2564
    .line 2565
    invoke-direct {v1, v0, v3}, Lmy7;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 2566
    .line 2567
    .line 2568
    invoke-virtual/range {v18 .. v18}, Lji;->getPackageName()Ljava/lang/String;

    .line 2569
    .line 2570
    .line 2571
    move-result-object v0

    .line 2572
    new-instance v3, Loy7;

    .line 2573
    .line 2574
    invoke-static {}, Liu;->getEntries()Ljx2;

    .line 2575
    .line 2576
    .line 2577
    move-result-object v4

    .line 2578
    sget-object v5, Lq05;->DEVICE:Lq05;

    .line 2579
    .line 2580
    invoke-static {v5}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 2581
    .line 2582
    .line 2583
    move-result-object v5

    .line 2584
    invoke-direct {v3, v4, v5, v1}, Loy7;-><init>(Ljava/util/List;Ljava/util/List;Lny7;)V

    .line 2585
    .line 2586
    .line 2587
    invoke-static {v0, v3}, Lik;->a(Ljava/lang/String;Loy7;)V

    .line 2588
    .line 2589
    .line 2590
    goto :goto_33

    .line 2591
    :cond_64
    const/4 v12, 0x4

    .line 2592
    const/4 v13, 0x0

    .line 2593
    const-string v10, "No backups to delete"

    .line 2594
    .line 2595
    const/4 v11, 0x0

    .line 2596
    invoke-static/range {v8 .. v13}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 2597
    .line 2598
    .line 2599
    goto :goto_33

    .line 2600
    :goto_32
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 2601
    .line 2602
    .line 2603
    throw v0

    .line 2604
    :cond_65
    move-object/from16 v30, v14

    .line 2605
    .line 2606
    move-object v2, v15

    .line 2607
    :cond_66
    :goto_33
    invoke-virtual {v2}, Lhk;->E()Z

    .line 2608
    .line 2609
    .line 2610
    move-result v0

    .line 2611
    if-nez v0, :cond_6a

    .line 2612
    .line 2613
    invoke-virtual {v2}, Lhk;->c()Lq63;

    .line 2614
    .line 2615
    .line 2616
    move-result-object v0

    .line 2617
    new-instance v3, Lpw5;

    .line 2618
    .line 2619
    const-string v1, "apk"

    .line 2620
    .line 2621
    invoke-direct {v3, v1, v0}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2622
    .line 2623
    .line 2624
    invoke-virtual {v2}, Lhk;->C()Lq63;

    .line 2625
    .line 2626
    .line 2627
    move-result-object v0

    .line 2628
    new-instance v4, Lpw5;

    .line 2629
    .line 2630
    const-string v1, "splits"

    .line 2631
    .line 2632
    invoke-direct {v4, v1, v0}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2633
    .line 2634
    .line 2635
    invoke-virtual {v2}, Lhk;->g()Lq63;

    .line 2636
    .line 2637
    .line 2638
    move-result-object v0

    .line 2639
    new-instance v5, Lpw5;

    .line 2640
    .line 2641
    const-string v1, "data"

    .line 2642
    .line 2643
    invoke-direct {v5, v1, v0}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2644
    .line 2645
    .line 2646
    invoke-virtual {v2}, Lhk;->n()Lq63;

    .line 2647
    .line 2648
    .line 2649
    move-result-object v0

    .line 2650
    new-instance v6, Lpw5;

    .line 2651
    .line 2652
    const-string v1, "extData"

    .line 2653
    .line 2654
    invoke-direct {v6, v1, v0}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2655
    .line 2656
    .line 2657
    invoke-virtual {v2}, Lhk;->q()Lq63;

    .line 2658
    .line 2659
    .line 2660
    move-result-object v0

    .line 2661
    new-instance v7, Lpw5;

    .line 2662
    .line 2663
    const-string v1, "media"

    .line 2664
    .line 2665
    invoke-direct {v7, v1, v0}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2666
    .line 2667
    .line 2668
    invoke-virtual {v2}, Lhk;->m()Lq63;

    .line 2669
    .line 2670
    .line 2671
    move-result-object v0

    .line 2672
    new-instance v8, Lpw5;

    .line 2673
    .line 2674
    const-string v1, "expansion"

    .line 2675
    .line 2676
    invoke-direct {v8, v1, v0}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2677
    .line 2678
    .line 2679
    invoke-virtual {v2}, Lhk;->v()Lq63;

    .line 2680
    .line 2681
    .line 2682
    move-result-object v0

    .line 2683
    new-instance v9, Lpw5;

    .line 2684
    .line 2685
    const-string v1, "metadata"

    .line 2686
    .line 2687
    invoke-direct {v9, v1, v0}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2688
    .line 2689
    .line 2690
    invoke-virtual {v2}, Lhk;->B()Lq63;

    .line 2691
    .line 2692
    .line 2693
    move-result-object v0

    .line 2694
    new-instance v10, Lpw5;

    .line 2695
    .line 2696
    const-string v1, "specialData"

    .line 2697
    .line 2698
    invoke-direct {v10, v1, v0}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2699
    .line 2700
    .line 2701
    filled-new-array/range {v3 .. v10}, [Lpw5;

    .line 2702
    .line 2703
    .line 2704
    move-result-object v0

    .line 2705
    invoke-static {v0}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 2706
    .line 2707
    .line 2708
    move-result-object v0

    .line 2709
    new-instance v3, Ljava/util/ArrayList;

    .line 2710
    .line 2711
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2712
    .line 2713
    .line 2714
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 2715
    .line 2716
    .line 2717
    move-result-object v0

    .line 2718
    :cond_67
    :goto_34
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 2719
    .line 2720
    .line 2721
    move-result v1

    .line 2722
    if-eqz v1, :cond_68

    .line 2723
    .line 2724
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2725
    .line 2726
    .line 2727
    move-result-object v1

    .line 2728
    move-object v4, v1

    .line 2729
    check-cast v4, Lpw5;

    .line 2730
    .line 2731
    iget-object v4, v4, Lpw5;->b:Ljava/lang/Object;

    .line 2732
    .line 2733
    check-cast v4, Lq63;

    .line 2734
    .line 2735
    invoke-virtual {v4}, Lq63;->j()Z

    .line 2736
    .line 2737
    .line 2738
    move-result v4

    .line 2739
    if-eqz v4, :cond_67

    .line 2740
    .line 2741
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2742
    .line 2743
    .line 2744
    goto :goto_34

    .line 2745
    :cond_68
    new-instance v7, Lsl;

    .line 2746
    .line 2747
    const/4 v1, 0x0

    .line 2748
    invoke-direct {v7, v1}, Lsl;-><init>(I)V

    .line 2749
    .line 2750
    .line 2751
    const/16 v8, 0x1f

    .line 2752
    .line 2753
    const/4 v4, 0x0

    .line 2754
    const/4 v5, 0x0

    .line 2755
    const/4 v6, 0x0

    .line 2756
    invoke-static/range {v3 .. v8}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 2757
    .line 2758
    .line 2759
    move-result-object v0

    .line 2760
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 2761
    .line 2762
    .line 2763
    move-result v1

    .line 2764
    if-nez v1, :cond_69

    .line 2765
    .line 2766
    const-string v0, "none"

    .line 2767
    .line 2768
    :cond_69
    sget-object v3, Lvr6;->INSTANCE:Lvr6;

    .line 2769
    .line 2770
    invoke-virtual {v2}, Lhk;->e()Lq63;

    .line 2771
    .line 2772
    .line 2773
    move-result-object v1

    .line 2774
    invoke-virtual {v1}, Lq63;->p()Ljava/lang/String;

    .line 2775
    .line 2776
    .line 2777
    move-result-object v1

    .line 2778
    const-string v4, "Backup has no committed metadata/app parts, deleting base directory "

    .line 2779
    .line 2780
    const-string v5, ". Existing files before cleanup: "

    .line 2781
    .line 2782
    invoke-static {v4, v1, v5, v0}, Ldj7;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2783
    .line 2784
    .line 2785
    move-result-object v5

    .line 2786
    const/4 v7, 0x4

    .line 2787
    const/4 v8, 0x0

    .line 2788
    const-string v4, "AppBackupTask"

    .line 2789
    .line 2790
    const/4 v6, 0x0

    .line 2791
    invoke-static/range {v3 .. v8}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 2792
    .line 2793
    .line 2794
    invoke-virtual {v2}, Lhk;->e()Lq63;

    .line 2795
    .line 2796
    .line 2797
    move-result-object v0

    .line 2798
    invoke-virtual {v0}, Lq63;->g()Z

    .line 2799
    .line 2800
    .line 2801
    :cond_6a
    const/16 v0, 0x64

    .line 2802
    .line 2803
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2804
    .line 2805
    .line 2806
    move-result-object v0

    .line 2807
    move-object/from16 v2, p1

    .line 2808
    .line 2809
    invoke-virtual {v2, v0}, Lxk;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2810
    .line 2811
    .line 2812
    return-object v30

    .line 2813
    :cond_6b
    const-string v1, "Unexpected BackupPlan: "

    .line 2814
    .line 2815
    invoke-static {v0, v1}, Ly5;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2816
    .line 2817
    .line 2818
    const/16 v27, 0x0

    .line 2819
    .line 2820
    return-object v27

    .line 2821
    :cond_6c
    move-object/from16 v27, v9

    .line 2822
    .line 2823
    invoke-static {}, Lq;->j()V

    .line 2824
    .line 2825
    .line 2826
    return-object v27

    .line 2827
    :goto_35
    invoke-virtual/range {v18 .. v18}, Lji;->getSourceDir()Ljava/lang/String;

    .line 2828
    .line 2829
    .line 2830
    move-result-object v0

    .line 2831
    const-string v1, "App sourceDir is invalid ("

    .line 2832
    .line 2833
    const-string v2, "). Probably uninstalled, Skipping..."

    .line 2834
    .line 2835
    invoke-static {v1, v0, v2}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2836
    .line 2837
    .line 2838
    move-result-object v0

    .line 2839
    const/4 v5, 0x4

    .line 2840
    const/4 v6, 0x0

    .line 2841
    const-string v2, "AppBackupTask"

    .line 2842
    .line 2843
    const/4 v4, 0x0

    .line 2844
    move-object v1, v3

    .line 2845
    move-object v3, v0

    .line 2846
    invoke-static/range {v1 .. v6}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 2847
    .line 2848
    .line 2849
    return-object v30
.end method

.method public final h(JJLmt3;)Lc07;
    .locals 8

    .line 1
    sget-object v0, Lmz6;->a:Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lrl;

    .line 8
    .line 9
    move-object v7, p0

    .line 10
    move-wide v2, p1

    .line 11
    move-wide v4, p3

    .line 12
    move-object v6, p5

    .line 13
    invoke-direct/range {v1 .. v7}, Lrl;-><init>(JJLmt3;Lvl;)V

    .line 14
    .line 15
    .line 16
    new-instance p0, Lu10;

    .line 17
    .line 18
    const/16 p1, 0x11

    .line 19
    .line 20
    invoke-direct {p0, v1, p1}, Lu10;-><init>(Ljava/lang/Object;I)V

    .line 21
    .line 22
    .line 23
    sget-object p1, Ld07;->a:Ld07;

    .line 24
    .line 25
    new-instance p2, Lmy6;

    .line 26
    .line 27
    invoke-direct {p2, p1}, Lmy6;-><init>(Lbt3;)V

    .line 28
    .line 29
    .line 30
    new-instance p1, Lc07;

    .line 31
    .line 32
    invoke-direct {p1, v0, p0, p2}, Lc07;-><init>(Ljava/lang/Long;Lu10;Lmy6;)V

    .line 33
    .line 34
    .line 35
    return-object p1
.end method

.method public final i()Z
    .locals 10

    .line 1
    iget-object v0, p0, Lvl;->q:Ltl;

    .line 2
    .line 3
    iget-object v1, v0, Ltl;->g:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v1, v2

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    move v1, v3

    .line 19
    :goto_1
    if-eqz v1, :cond_8

    .line 20
    .line 21
    iget-object v1, v0, Ltl;->c:Ljava/lang/String;

    .line 22
    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_8

    .line 30
    .line 31
    :cond_2
    invoke-virtual {v0}, Ltl;->c()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_4

    .line 36
    .line 37
    iget-object v0, v0, Ltl;->g:Ljava/lang/String;

    .line 38
    .line 39
    if-eqz v0, :cond_4

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_3

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_3
    return v3

    .line 49
    :cond_4
    :goto_2
    iget-boolean v0, p0, Lvl;->s:Z

    .line 50
    .line 51
    if-eqz v0, :cond_5

    .line 52
    .line 53
    goto :goto_3

    .line 54
    :cond_5
    iget-object p0, p0, Lvl;->m:Lji;

    .line 55
    .line 56
    invoke-virtual {p0}, Lji;->checkInstalled()Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    invoke-virtual {p0}, Lji;->isInstalled()Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-nez v1, :cond_6

    .line 65
    .line 66
    sget-object v4, Lvr6;->INSTANCE:Lvr6;

    .line 67
    .line 68
    invoke-virtual {p0}, Lji;->asString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    const-string v1, "App uninstalled: "

    .line 73
    .line 74
    invoke-static {v1, p0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    const/4 v8, 0x4

    .line 79
    const/4 v9, 0x0

    .line 80
    const-string v5, "AppBackupTask"

    .line 81
    .line 82
    const/4 v7, 0x0

    .line 83
    invoke-static/range {v4 .. v9}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    :cond_6
    if-nez v0, :cond_7

    .line 87
    .line 88
    goto :goto_3

    .line 89
    :cond_7
    return v2

    .line 90
    :cond_8
    :goto_3
    return v3
.end method
