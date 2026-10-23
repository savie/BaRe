.class public final Lpu3;
.super Lag8;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final i:Lfu3;

.field public final j:Ld04;

.field public final k:Ljava/lang/String;

.field public l:Ljava/io/InputStream;

.field public m:Ljava/lang/String;

.field public n:I


# direct methods
.method public constructor <init>(Lfu3;Ld04;Lrf8;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p3}, Lag8;-><init>(Lrf8;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lpu3;->i:Lfu3;

    .line 11
    .line 12
    iput-object p2, p0, Lpu3;->j:Ld04;

    .line 13
    .line 14
    const-string p1, "GRestUploadSession"

    .line 15
    .line 16
    iput-object p1, p0, Lpu3;->k:Ljava/lang/String;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 7

    .line 1
    sget-object v0, Ltb1;->a:Ltb1;

    .line 2
    .line 3
    invoke-static {}, Lqb1;->f()Ldd1;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ldd1;->getDisplayNameEn()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-object v1, Lvr6;->INSTANCE:Lvr6;

    .line 12
    .line 13
    const-string v2, "Closing connection with "

    .line 14
    .line 15
    const-string v3, ", may result in unknown errors"

    .line 16
    .line 17
    invoke-static {v2, v0, v3}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    const/4 v5, 0x4

    .line 22
    const/4 v6, 0x0

    .line 23
    iget-object v2, p0, Lpu3;->k:Ljava/lang/String;

    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    invoke-static/range {v1 .. v6}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lpu3;->i()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lpu3;->k:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final f()V
    .locals 8

    .line 1
    sget-object v0, Ltb1;->a:Ltb1;

    .line 2
    .line 3
    invoke-static {}, Lqb1;->e()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v5, Ljava/util/LinkedHashMap;

    .line 8
    .line 9
    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 10
    .line 11
    .line 12
    iget-object v7, p0, Lag8;->a:Lrf8;

    .line 13
    .line 14
    iget-boolean v1, v7, Lrf8;->c:Z

    .line 15
    .line 16
    iget-object v2, v7, Lrf8;->d:Ljava/lang/String;

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    const-string v1, "tag"

    .line 21
    .line 22
    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    :cond_0
    if-eqz v2, :cond_2

    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const-string v0, "backupId"

    .line 35
    .line 36
    invoke-interface {v5, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    :cond_2
    :goto_0
    new-instance v1, Lzz3;

    .line 40
    .line 41
    invoke-virtual {v7}, Lrf8;->b()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-static {}, Lqb1;->j()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    iget v0, v7, Lrf8;->b:I

    .line 50
    .line 51
    const/4 v4, 0x1

    .line 52
    if-ne v0, v4, :cond_3

    .line 53
    .line 54
    const-string v0, "application/vnd.android.package-archive"

    .line 55
    .line 56
    :goto_1
    move-object v4, v0

    .line 57
    goto :goto_2

    .line 58
    :cond_3
    const/4 v0, 0x0

    .line 59
    goto :goto_1

    .line 60
    :goto_2
    const/4 v6, 0x1

    .line 61
    invoke-direct/range {v1 .. v6}, Lzz3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;I)V

    .line 62
    .line 63
    .line 64
    new-instance v0, Ll86;

    .line 65
    .line 66
    invoke-virtual {v7}, Lrf8;->a()J

    .line 67
    .line 68
    .line 69
    move-result-wide v2

    .line 70
    invoke-direct {v0, v2, v3}, Ll86;-><init>(J)V

    .line 71
    .line 72
    .line 73
    iget-object v2, p0, Lag8;->b:Ljava/lang/String;

    .line 74
    .line 75
    new-instance v3, Lmu3;

    .line 76
    .line 77
    const/4 v4, 0x0

    .line 78
    invoke-direct {v3, v4, p0, v0}, Lmu3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, v2, v1, v3}, Lpu3;->j(Ljava/lang/String;Lzz3;Lmu3;)V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public final i()V
    .locals 1

    .line 1
    iget-object v0, p0, Lpu3;->l:Ljava/io/InputStream;

    .line 2
    .line 3
    invoke-static {v0}, Lf13;->a(Ljava/io/Closeable;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lpu3;->l:Ljava/io/InputStream;

    .line 8
    .line 9
    return-void
.end method

.method public final j(Ljava/lang/String;Lzz3;Lmu3;)V
    .locals 34

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v9, p2

    .line 6
    .line 7
    iget-object v10, v1, Lpu3;->i:Lfu3;

    .line 8
    .line 9
    const-string v11, "Update request failed because backed up file id \'"

    .line 10
    .line 11
    const-string v12, "Retrying upload ("

    .line 12
    .line 13
    const-string v13, "Restarting Google Drive upload with a fresh session ("

    .line 14
    .line 15
    const-string v14, "Main Swift Backup folder \'"

    .line 16
    .line 17
    const-string v15, "Upload failed for file \'"

    .line 18
    .line 19
    iget-object v0, v1, Lpu3;->k:Ljava/lang/String;

    .line 20
    .line 21
    const-string v3, ": executeUpload"

    .line 22
    .line 23
    invoke-static {v0, v3}, Leq3;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v17

    .line 27
    sget-object v0, Ltb1;->a:Ltb1;

    .line 28
    .line 29
    invoke-static {}, Lqb1;->j()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_15

    .line 34
    .line 35
    invoke-static {v0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    const/4 v4, 0x0

    .line 40
    if-nez v3, :cond_0

    .line 41
    .line 42
    move-object v3, v0

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    move-object v3, v4

    .line 45
    :goto_0
    if-eqz v3, :cond_15

    .line 46
    .line 47
    iget-object v5, v1, Lag8;->a:Lrf8;

    .line 48
    .line 49
    iget-object v0, v5, Lrf8;->a:Lq63;

    .line 50
    .line 51
    invoke-virtual {v0}, Lq63;->A()J

    .line 52
    .line 53
    .line 54
    move-result-wide v6

    .line 55
    const/16 v0, 0x1b

    .line 56
    .line 57
    invoke-static {v9, v4, v3, v0}, Lzz3;->a(Lzz3;Ljava/lang/String;Ljava/lang/String;I)Lzz3;

    .line 58
    .line 59
    .line 60
    move-result-object v8

    .line 61
    move-object/from16 v23, v10

    .line 62
    .line 63
    new-instance v10, Lih6;

    .line 64
    .line 65
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 66
    .line 67
    .line 68
    new-instance v9, Lih6;

    .line 69
    .line 70
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 71
    .line 72
    .line 73
    move-object/from16 v16, v3

    .line 74
    .line 75
    :try_start_0
    invoke-virtual {v1, v2, v8}, Lpu3;->l(Ljava/lang/String;Lzz3;)Lzz3;

    .line 76
    .line 77
    .line 78
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    move-object v8, v4

    .line 80
    move-wide/from16 v32, v6

    .line 81
    .line 82
    move-object v6, v5

    .line 83
    move-wide/from16 v4, v32

    .line 84
    .line 85
    :try_start_1
    new-instance v7, Lrm;

    .line 86
    .line 87
    const/16 v0, 0x9

    .line 88
    .line 89
    invoke-direct {v7, v0, v10, v9}, Lrm;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    move-object/from16 v18, v8

    .line 93
    .line 94
    new-instance v8, Lgj;

    .line 95
    .line 96
    const/16 v0, 0x14

    .line 97
    .line 98
    invoke-direct {v8, v9, v0}, Lgj;-><init>(Ljava/lang/Object;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    .line 100
    .line 101
    move-object/from16 v24, v11

    .line 102
    .line 103
    move-object/from16 v25, v12

    .line 104
    .line 105
    move-object/from16 v11, v16

    .line 106
    .line 107
    move-object v12, v6

    .line 108
    move-object/from16 v6, p3

    .line 109
    .line 110
    :try_start_2
    invoke-virtual/range {v1 .. v8}, Lpu3;->m(Ljava/lang/String;Lzz3;JLmu3;Lrm;Lgj;)Lyz3;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    iget-object v7, v1, Lag8;->d:Lzf8;

    .line 115
    .line 116
    iget-object v0, v0, Lyz3;->a:Ljava/lang/String;

    .line 117
    .line 118
    iput-object v0, v7, Lzf8;->a:Ljava/lang/String;

    .line 119
    .line 120
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    const/16 v4, 0x64

    .line 125
    .line 126
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    invoke-virtual {v6, v0, v4}, Lmu3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1}, Lpu3;->i()V

    .line 134
    .line 135
    .line 136
    return-void

    .line 137
    :catchall_0
    move-exception v0

    .line 138
    goto/16 :goto_d

    .line 139
    .line 140
    :catch_0
    move-exception v0

    .line 141
    :goto_1
    move-object/from16 v19, v0

    .line 142
    .line 143
    move-object v8, v3

    .line 144
    goto :goto_2

    .line 145
    :catch_1
    move-exception v0

    .line 146
    move-object/from16 v24, v11

    .line 147
    .line 148
    move-object/from16 v25, v12

    .line 149
    .line 150
    move-object/from16 v11, v16

    .line 151
    .line 152
    move-object v12, v6

    .line 153
    move-object/from16 v6, p3

    .line 154
    .line 155
    goto :goto_1

    .line 156
    :catch_2
    move-exception v0

    .line 157
    move-object/from16 v6, p3

    .line 158
    .line 159
    move-object/from16 v24, v11

    .line 160
    .line 161
    move-object/from16 v25, v12

    .line 162
    .line 163
    move-object/from16 v11, v16

    .line 164
    .line 165
    move-object v12, v5

    .line 166
    move-object/from16 v19, v0

    .line 167
    .line 168
    :goto_2
    :try_start_3
    sget-object v16, Lvr6;->INSTANCE:Lvr6;

    .line 169
    .line 170
    iget-object v0, v12, Lrf8;->a:Lq63;

    .line 171
    .line 172
    invoke-virtual {v0}, Lq63;->p()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    new-instance v3, Ljava/lang/StringBuilder;

    .line 177
    .line 178
    invoke-direct {v3, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    const-string v0, "\'"

    .line 185
    .line 186
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v18

    .line 193
    const/16 v21, 0x8

    .line 194
    .line 195
    const/16 v22, 0x0

    .line 196
    .line 197
    const/16 v20, 0x0

    .line 198
    .line 199
    invoke-static/range {v16 .. v22}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 200
    .line 201
    .line 202
    move-object/from16 v0, v19

    .line 203
    .line 204
    instance-of v3, v0, Lvz3;

    .line 205
    .line 206
    if-eqz v3, :cond_1

    .line 207
    .line 208
    iget-object v3, v1, Lpu3;->k:Ljava/lang/String;

    .line 209
    .line 210
    move-object/from16 v19, v0

    .line 211
    .line 212
    check-cast v19, Lvz3;

    .line 213
    .line 214
    invoke-static/range {v19 .. v19}, Lrs9;->w(Lvz3;)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v28

    .line 218
    const/16 v30, 0x4

    .line 219
    .line 220
    const/16 v31, 0x0

    .line 221
    .line 222
    const/16 v29, 0x0

    .line 223
    .line 224
    move-object/from16 v27, v3

    .line 225
    .line 226
    move-object/from16 v26, v16

    .line 227
    .line 228
    invoke-static/range {v26 .. v31}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 229
    .line 230
    .line 231
    :cond_1
    sget-object v3, Lnf1;->a:Lai6;

    .line 232
    .line 233
    invoke-static {v0}, Lx13;->E(Ljava/lang/Exception;)Z

    .line 234
    .line 235
    .line 236
    move-result v3

    .line 237
    const/4 v12, 0x1

    .line 238
    if-eqz v3, :cond_2

    .line 239
    .line 240
    invoke-static {v0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v3

    .line 244
    invoke-static {v3, v11, v12}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 245
    .line 246
    .line 247
    move-result v3

    .line 248
    if-eqz v3, :cond_2

    .line 249
    .line 250
    invoke-virtual/range {v23 .. v23}, Ltb1;->i()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    new-instance v2, Ljava/lang/StringBuilder;

    .line 255
    .line 256
    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    const-string v0, "\' with id \'"

    .line 263
    .line 264
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    const-string v0, "\' not found!"

    .line 271
    .line 272
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v6

    .line 279
    const/4 v8, 0x4

    .line 280
    const/4 v9, 0x0

    .line 281
    const/4 v7, 0x0

    .line 282
    move-object/from16 v4, v16

    .line 283
    .line 284
    move-object/from16 v5, v17

    .line 285
    .line 286
    invoke-static/range {v4 .. v9}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 287
    .line 288
    .line 289
    invoke-virtual/range {v23 .. v23}, Ltb1;->i()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    new-instance v2, Ljava/lang/StringBuilder;

    .line 294
    .line 295
    const-string v3, "\n                    User has manually deleted the Main Swift Backup folder \'"

    .line 296
    .line 297
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    const-string v0, "\' from Google Drive. ALL cloud backups are now invalid and should be deleted from Swift Backup.\n                    ----------------\n                    Steps to resolve\n                    ----------------\n                    1. Open Swift Backup and go to \'Cloud sync\' section.\n                    2. Use \'Delete tag and associated backups\' button to delete backups. Do the same for all tags you may have.\n                    3. Disconnect then reconnect Google Drive in Swift Backup.\n                    "

    .line 304
    .line 305
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    invoke-static {v0}, Loq7;->L(Ljava/lang/String;)Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v6

    .line 316
    const/4 v8, 0x4

    .line 317
    const/4 v9, 0x0

    .line 318
    const/4 v7, 0x0

    .line 319
    move-object/from16 v4, v16

    .line 320
    .line 321
    move-object/from16 v5, v17

    .line 322
    .line 323
    invoke-static/range {v4 .. v9}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 324
    .line 325
    .line 326
    new-instance v0, Ljava/lang/Exception;

    .line 327
    .line 328
    invoke-direct {v0, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {v1, v0, v12}, Lag8;->a(Ljava/lang/Exception;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 332
    .line 333
    .line 334
    invoke-virtual {v1}, Lpu3;->i()V

    .line 335
    .line 336
    .line 337
    return-void

    .line 338
    :cond_2
    :try_start_4
    invoke-virtual {v1}, Lag8;->e()Z

    .line 339
    .line 340
    .line 341
    move-result v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 342
    if-eqz v3, :cond_3

    .line 343
    .line 344
    invoke-virtual {v1}, Lpu3;->i()V

    .line 345
    .line 346
    .line 347
    return-void

    .line 348
    :cond_3
    :try_start_5
    instance-of v3, v0, Lcom/google/android/gms/auth/UserRecoverableAuthException;

    .line 349
    .line 350
    const/4 v4, 0x0

    .line 351
    if-nez v3, :cond_5

    .line 352
    .line 353
    instance-of v3, v0, Lt04;

    .line 354
    .line 355
    if-eqz v3, :cond_4

    .line 356
    .line 357
    goto :goto_3

    .line 358
    :cond_4
    move v3, v4

    .line 359
    goto :goto_4

    .line 360
    :cond_5
    :goto_3
    move v3, v12

    .line 361
    :goto_4
    iget-boolean v5, v9, Lih6;->a:Z

    .line 362
    .line 363
    if-eqz v5, :cond_7

    .line 364
    .line 365
    if-eqz v2, :cond_7

    .line 366
    .line 367
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 368
    .line 369
    .line 370
    move-result v5

    .line 371
    if-nez v5, :cond_6

    .line 372
    .line 373
    goto :goto_5

    .line 374
    :cond_6
    invoke-static {v0}, Lx13;->E(Ljava/lang/Exception;)Z

    .line 375
    .line 376
    .line 377
    move-result v5

    .line 378
    if-eqz v5, :cond_7

    .line 379
    .line 380
    invoke-static {v0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v5

    .line 384
    invoke-static {v5, v2, v12}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 385
    .line 386
    .line 387
    move-result v5

    .line 388
    if-eqz v5, :cond_7

    .line 389
    .line 390
    move v5, v12

    .line 391
    goto :goto_6

    .line 392
    :cond_7
    :goto_5
    move v5, v4

    .line 393
    :goto_6
    iget v7, v1, Lag8;->f:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 394
    .line 395
    iget v9, v1, Lag8;->e:I

    .line 396
    .line 397
    if-ge v7, v9, :cond_8

    .line 398
    .line 399
    move v7, v12

    .line 400
    goto :goto_7

    .line 401
    :cond_8
    move v7, v4

    .line 402
    :goto_7
    if-nez v5, :cond_a

    .line 403
    .line 404
    :try_start_6
    invoke-virtual {v1, v0}, Lpu3;->k(Ljava/lang/Exception;)Z

    .line 405
    .line 406
    .line 407
    move-result v11

    .line 408
    if-eqz v11, :cond_9

    .line 409
    .line 410
    goto :goto_8

    .line 411
    :cond_9
    move v11, v4

    .line 412
    goto :goto_9

    .line 413
    :cond_a
    :goto_8
    move v11, v12

    .line 414
    :goto_9
    iget-boolean v10, v10, Lih6;->a:Z

    .line 415
    .line 416
    if-eqz v10, :cond_b

    .line 417
    .line 418
    if-nez v5, :cond_b

    .line 419
    .line 420
    move v10, v12

    .line 421
    goto :goto_a

    .line 422
    :cond_b
    move v10, v4

    .line 423
    :goto_a
    if-eqz v10, :cond_c

    .line 424
    .line 425
    iget v14, v1, Lpu3;->n:I

    .line 426
    .line 427
    if-ge v14, v12, :cond_d

    .line 428
    .line 429
    :cond_c
    move v4, v12

    .line 430
    :cond_d
    if-eqz v7, :cond_13

    .line 431
    .line 432
    if-eqz v11, :cond_13

    .line 433
    .line 434
    if-eqz v4, :cond_13

    .line 435
    .line 436
    instance-of v3, v0, Lvz3;

    .line 437
    .line 438
    if-eqz v3, :cond_e

    .line 439
    .line 440
    move-object v4, v0

    .line 441
    check-cast v4, Lvz3;

    .line 442
    .line 443
    goto :goto_b

    .line 444
    :cond_e
    const/4 v4, 0x0

    .line 445
    :goto_b
    if-eqz v4, :cond_f

    .line 446
    .line 447
    iget-object v4, v4, Lvz3;->d:Ljava/lang/Long;

    .line 448
    .line 449
    goto :goto_c

    .line 450
    :cond_f
    const/4 v4, 0x0

    .line 451
    :goto_c
    invoke-virtual {v1, v4}, Lag8;->h(Ljava/lang/Long;)Z

    .line 452
    .line 453
    .line 454
    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 455
    if-nez v0, :cond_10

    .line 456
    .line 457
    invoke-virtual {v1}, Lpu3;->i()V

    .line 458
    .line 459
    .line 460
    return-void

    .line 461
    :cond_10
    if-eqz v10, :cond_11

    .line 462
    .line 463
    :try_start_7
    iget v0, v1, Lpu3;->n:I

    .line 464
    .line 465
    add-int/2addr v0, v12

    .line 466
    iput v0, v1, Lpu3;->n:I

    .line 467
    .line 468
    new-instance v3, Ljava/lang/StringBuilder;

    .line 469
    .line 470
    invoke-direct {v3, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 471
    .line 472
    .line 473
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 474
    .line 475
    .line 476
    const-string v0, "/1)"

    .line 477
    .line 478
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    .line 480
    .line 481
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 482
    .line 483
    .line 484
    move-result-object v18

    .line 485
    const/16 v20, 0x4

    .line 486
    .line 487
    const/16 v21, 0x0

    .line 488
    .line 489
    const/16 v19, 0x0

    .line 490
    .line 491
    invoke-static/range {v16 .. v21}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 492
    .line 493
    .line 494
    :cond_11
    iget v0, v1, Lag8;->f:I

    .line 495
    .line 496
    add-int/2addr v0, v12

    .line 497
    iput v0, v1, Lag8;->f:I

    .line 498
    .line 499
    new-instance v3, Ljava/lang/StringBuilder;

    .line 500
    .line 501
    move-object/from16 v4, v25

    .line 502
    .line 503
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 504
    .line 505
    .line 506
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 507
    .line 508
    .line 509
    const-string v0, "/"

    .line 510
    .line 511
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    .line 513
    .line 514
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 515
    .line 516
    .line 517
    const-string v0, ")"

    .line 518
    .line 519
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    .line 521
    .line 522
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 523
    .line 524
    .line 525
    move-result-object v18

    .line 526
    const/16 v20, 0x4

    .line 527
    .line 528
    const/16 v21, 0x0

    .line 529
    .line 530
    const/16 v19, 0x0

    .line 531
    .line 532
    invoke-static/range {v16 .. v21}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 533
    .line 534
    .line 535
    invoke-virtual {v1}, Lpu3;->i()V

    .line 536
    .line 537
    .line 538
    if-eqz v5, :cond_12

    .line 539
    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    .line 541
    .line 542
    move-object/from16 v3, v24

    .line 543
    .line 544
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 545
    .line 546
    .line 547
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    .line 549
    .line 550
    const-string v2, "\' is missing. Retrying create."

    .line 551
    .line 552
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    .line 554
    .line 555
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 556
    .line 557
    .line 558
    move-result-object v18

    .line 559
    const/16 v20, 0x4

    .line 560
    .line 561
    const/16 v21, 0x0

    .line 562
    .line 563
    const/16 v19, 0x0

    .line 564
    .line 565
    invoke-static/range {v16 .. v21}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 566
    .line 567
    .line 568
    const/16 v0, 0x1e

    .line 569
    .line 570
    move-object/from16 v9, p2

    .line 571
    .line 572
    const/4 v8, 0x0

    .line 573
    invoke-static {v9, v8, v8, v0}, Lzz3;->a(Lzz3;Ljava/lang/String;Ljava/lang/String;I)Lzz3;

    .line 574
    .line 575
    .line 576
    move-result-object v0

    .line 577
    invoke-virtual {v1, v8, v0, v6}, Lpu3;->j(Ljava/lang/String;Lzz3;Lmu3;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 578
    .line 579
    .line 580
    invoke-virtual {v1}, Lpu3;->i()V

    .line 581
    .line 582
    .line 583
    return-void

    .line 584
    :cond_12
    :try_start_8
    invoke-virtual {v1, v2, v8, v6}, Lpu3;->j(Ljava/lang/String;Lzz3;Lmu3;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 585
    .line 586
    .line 587
    invoke-virtual {v1}, Lpu3;->i()V

    .line 588
    .line 589
    .line 590
    return-void

    .line 591
    :cond_13
    if-eqz v3, :cond_14

    .line 592
    .line 593
    :try_start_9
    const-string v6, "Disconnecting Google Drive due to authentication issue"

    .line 594
    .line 595
    const/4 v8, 0x4

    .line 596
    const/4 v9, 0x0

    .line 597
    const/4 v7, 0x0

    .line 598
    move-object/from16 v4, v16

    .line 599
    .line 600
    move-object/from16 v5, v17

    .line 601
    .line 602
    invoke-static/range {v4 .. v9}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 603
    .line 604
    .line 605
    sget-object v2, Ltb1;->a:Ltb1;

    .line 606
    .line 607
    invoke-static {}, Lqb1;->a()V

    .line 608
    .line 609
    .line 610
    :cond_14
    invoke-virtual {v1, v0, v3}, Lag8;->a(Ljava/lang/Exception;Z)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 611
    .line 612
    .line 613
    invoke-virtual {v1}, Lpu3;->i()V

    .line 614
    .line 615
    .line 616
    return-void

    .line 617
    :goto_d
    invoke-virtual {v1}, Lpu3;->i()V

    .line 618
    .line 619
    .line 620
    throw v0

    .line 621
    :cond_15
    const-string v0, "CloudClient.mainFolderId is null or blank!"

    .line 622
    .line 623
    invoke-static {v0}, Ll0;->e(Ljava/lang/String;)V

    .line 624
    .line 625
    .line 626
    return-void
.end method

.method public final k(Ljava/lang/Exception;)Z
    .locals 3

    .line 1
    sget-object v0, Lnf1;->a:Lai6;

    .line 2
    .line 3
    invoke-static {p1}, Lx13;->H(Ljava/lang/Exception;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-nez v0, :cond_3

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    const-string v0, ""

    .line 17
    .line 18
    :cond_0
    const-string v2, "Internal Error"

    .line 19
    .line 20
    invoke-static {v0, v2, v1}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_3

    .line 25
    .line 26
    instance-of v0, p1, Lvz3;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    move-object v0, p1

    .line 31
    check-cast v0, Lvz3;

    .line 32
    .line 33
    invoke-static {v0}, Lrs9;->n(Lvz3;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_3

    .line 38
    .line 39
    :cond_1
    iget-object p0, p0, Lpu3;->i:Lfu3;

    .line 40
    .line 41
    invoke-virtual {p0, p1}, Lfu3;->r(Ljava/lang/Exception;)Z

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    if-eqz p0, :cond_2

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    const/4 p0, 0x0

    .line 49
    return p0

    .line 50
    :cond_3
    :goto_0
    return v1
.end method

.method public final l(Ljava/lang/String;Lzz3;)Lzz3;
    .locals 6

    .line 1
    const/16 v0, 0x1e

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    invoke-static {p1}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-static {p2, v1, v1, v0}, Lzz3;->a(Lzz3;Ljava/lang/String;Ljava/lang/String;I)Lzz3;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :cond_1
    :goto_0
    iget-object p1, p2, Lzz3;->a:Ljava/lang/String;

    .line 19
    .line 20
    if-nez p1, :cond_5

    .line 21
    .line 22
    iget-object p1, p0, Lpu3;->m:Ljava/lang/String;

    .line 23
    .line 24
    if-nez p1, :cond_5

    .line 25
    .line 26
    iget-object p1, p0, Lpu3;->j:Ld04;

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    new-instance v2, Lokhttp3/Request$Builder;

    .line 32
    .line 33
    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v3, "/drive/v3/files/generateIds"

    .line 37
    .line 38
    iget-object v4, p1, Ld04;->d:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {v4, v3}, Ld04;->u(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v3}, Lokhttp3/HttpUrl;->g()Lokhttp3/HttpUrl$Builder;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    const-string v4, "count"

    .line 49
    .line 50
    const-string v5, "1"

    .line 51
    .line 52
    invoke-virtual {v3, v4, v5}, Lokhttp3/HttpUrl$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const-string v4, "space"

    .line 56
    .line 57
    const-string v5, "drive"

    .line 58
    .line 59
    invoke-virtual {v3, v4, v5}, Lokhttp3/HttpUrl$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    const-string v4, "type"

    .line 63
    .line 64
    const-string v5, "files"

    .line 65
    .line 66
    invoke-virtual {v3, v4, v5}, Lokhttp3/HttpUrl$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3}, Lokhttp3/HttpUrl$Builder;->e()Lokhttp3/HttpUrl;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    iput-object v3, v2, Lokhttp3/Request$Builder;->a:Lokhttp3/HttpUrl;

    .line 74
    .line 75
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->b()V

    .line 76
    .line 77
    .line 78
    new-instance v3, Lokhttp3/Request;

    .line 79
    .line 80
    invoke-direct {v3, v2}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, v3}, Ld04;->g(Lokhttp3/Request;)Lfl4;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    const-string v2, "ids"

    .line 88
    .line 89
    invoke-virtual {p1, v2}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    if-eqz p1, :cond_4

    .line 94
    .line 95
    instance-of v2, p1, Lxi4;

    .line 96
    .line 97
    if-nez v2, :cond_2

    .line 98
    .line 99
    move-object p1, v1

    .line 100
    goto :goto_1

    .line 101
    :cond_2
    invoke-virtual {p1}, Lqj4;->g()Lxi4;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    :goto_1
    if-eqz p1, :cond_4

    .line 106
    .line 107
    invoke-static {p1}, Lel1;->T0(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    check-cast p1, Lqj4;

    .line 112
    .line 113
    if-eqz p1, :cond_4

    .line 114
    .line 115
    invoke-static {p1}, Ld04;->a(Lqj4;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    if-eqz p1, :cond_4

    .line 120
    .line 121
    invoke-static {p1}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    if-nez v2, :cond_3

    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_3
    move-object p1, v1

    .line 129
    :goto_2
    if-eqz p1, :cond_4

    .line 130
    .line 131
    iput-object p1, p0, Lpu3;->m:Ljava/lang/String;

    .line 132
    .line 133
    goto :goto_3

    .line 134
    :cond_4
    const-string p0, "Google Drive did not return a generated file id"

    .line 135
    .line 136
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    return-object v1

    .line 140
    :cond_5
    :goto_3
    iput-object p1, p0, Lpu3;->m:Ljava/lang/String;

    .line 141
    .line 142
    invoke-static {p2, p1, v1, v0}, Lzz3;->a(Lzz3;Ljava/lang/String;Ljava/lang/String;I)Lzz3;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    return-object p0
.end method

.method public final m(Ljava/lang/String;Lzz3;JLmu3;Lrm;Lgj;)Lyz3;
    .locals 40

    .line 1
    move-object/from16 v3, p0

    .line 2
    .line 3
    const-string v14, "Google Drive resumable upload made no progress"

    .line 4
    .line 5
    new-instance v0, Ljh6;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v10, Ll04;

    .line 11
    .line 12
    iget v1, v3, Lag8;->e:I

    .line 13
    .line 14
    iget v2, v3, Lag8;->f:I

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    if-gez v1, :cond_0

    .line 18
    .line 19
    const/4 v11, 0x0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v11, v1

    .line 22
    :goto_0
    new-instance v1, Loh1;

    .line 23
    .line 24
    const/4 v7, 0x0

    .line 25
    const/4 v8, 0x2

    .line 26
    const/4 v2, 0x1

    .line 27
    const-class v4, Lpu3;

    .line 28
    .line 29
    const-string v5, "openInputStreamAt"

    .line 30
    .line 31
    const-string v6, "openInputStreamAt(J)Ljava/io/InputStream;"

    .line 32
    .line 33
    invoke-direct/range {v1 .. v8}, Loh1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 34
    .line 35
    .line 36
    move-object v12, v1

    .line 37
    new-instance v16, Lou3;

    .line 38
    .line 39
    move-object/from16 v3, p0

    .line 40
    .line 41
    move-object/from16 v4, p1

    .line 42
    .line 43
    move-object/from16 v5, p2

    .line 44
    .line 45
    move-wide/from16 v6, p3

    .line 46
    .line 47
    move-object/from16 v8, p6

    .line 48
    .line 49
    move-object/from16 v9, p7

    .line 50
    .line 51
    move-object v2, v0

    .line 52
    move-object/from16 v1, v16

    .line 53
    .line 54
    invoke-direct/range {v1 .. v9}, Lou3;-><init>(Ljh6;Lpu3;Ljava/lang/String;Lzz3;JLrm;Lgj;)V

    .line 55
    .line 56
    .line 57
    new-instance v1, Lrk;

    .line 58
    .line 59
    const/4 v7, 0x0

    .line 60
    const/4 v8, 0x3

    .line 61
    const/4 v2, 0x0

    .line 62
    const-class v4, Lpu3;

    .line 63
    .line 64
    const-string v5, "shouldStopUpload"

    .line 65
    .line 66
    const-string v6, "shouldStopUpload()Z"

    .line 67
    .line 68
    move-object v13, v10

    .line 69
    move-wide/from16 v9, p3

    .line 70
    .line 71
    invoke-direct/range {v1 .. v8}, Lrk;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 72
    .line 73
    .line 74
    move-object v8, v1

    .line 75
    new-instance v0, Lae1;

    .line 76
    .line 77
    const/4 v6, 0x0

    .line 78
    const/4 v7, 0x6

    .line 79
    const/4 v1, 0x1

    .line 80
    const-class v3, Lpu3;

    .line 81
    .line 82
    const-string v4, "isRecoverableUploadError"

    .line 83
    .line 84
    const-string v5, "isRecoverableUploadError(Ljava/lang/Exception;)Z"

    .line 85
    .line 86
    move-object/from16 v2, p0

    .line 87
    .line 88
    invoke-direct/range {v0 .. v7}, Lae1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 89
    .line 90
    .line 91
    move-object v3, v2

    .line 92
    new-instance v1, Lrx;

    .line 93
    .line 94
    const/4 v2, 0x4

    .line 95
    invoke-direct {v1, v2}, Lrx;-><init>(I)V

    .line 96
    .line 97
    .line 98
    new-instance v2, Lox;

    .line 99
    .line 100
    const/16 v4, 0x10

    .line 101
    .line 102
    invoke-direct {v2, v3, v4}, Lox;-><init>(Ljava/lang/Object;I)V

    .line 103
    .line 104
    .line 105
    move v4, v11

    .line 106
    new-instance v11, Lnu3;

    .line 107
    .line 108
    move-object/from16 v5, p5

    .line 109
    .line 110
    invoke-direct {v11, v5, v3, v9, v10}, Lnu3;-><init>(Lmu3;Lpu3;J)V

    .line 111
    .line 112
    .line 113
    move-object v5, v12

    .line 114
    new-instance v12, Ldk;

    .line 115
    .line 116
    const/16 v6, 0x1c

    .line 117
    .line 118
    invoke-direct {v12, v3, v6}, Ldk;-><init>(Ljava/lang/Object;I)V

    .line 119
    .line 120
    .line 121
    iget v3, v3, Lpu3;->n:I

    .line 122
    .line 123
    rsub-int/lit8 v3, v3, 0x1

    .line 124
    .line 125
    if-gez v3, :cond_1

    .line 126
    .line 127
    move-wide v6, v9

    .line 128
    move-object v10, v2

    .line 129
    move-wide v2, v6

    .line 130
    move-object v9, v1

    .line 131
    move-object v1, v13

    .line 132
    const/4 v13, 0x0

    .line 133
    :goto_1
    move-object v7, v8

    .line 134
    move-object/from16 v6, v16

    .line 135
    .line 136
    move-object v8, v0

    .line 137
    goto :goto_2

    .line 138
    :cond_1
    move-wide/from16 v38, v9

    .line 139
    .line 140
    move-object v9, v1

    .line 141
    move-object v10, v2

    .line 142
    move-object v1, v13

    .line 143
    move v13, v3

    .line 144
    move-wide/from16 v2, v38

    .line 145
    .line 146
    goto :goto_1

    .line 147
    :goto_2
    invoke-direct/range {v1 .. v13}, Ll04;-><init>(JILoh1;Lou3;Lrk;Lae1;Lrx;Lox;Lnu3;Ldk;I)V

    .line 148
    .line 149
    .line 150
    move-object/from16 v16, v6

    .line 151
    .line 152
    move-object v11, v7

    .line 153
    move-object/from16 v26, v12

    .line 154
    .line 155
    move v8, v13

    .line 156
    move-object v12, v5

    .line 157
    move-object v13, v9

    .line 158
    move-wide v9, v2

    .line 159
    const-wide/16 v2, 0x0

    .line 160
    .line 161
    cmp-long v27, v9, v2

    .line 162
    .line 163
    const/16 v28, 0x0

    .line 164
    .line 165
    if-ltz v27, :cond_1e

    .line 166
    .line 167
    if-ltz v4, :cond_1d

    .line 168
    .line 169
    if-ltz v8, :cond_1c

    .line 170
    .line 171
    const/4 v0, 0x2

    .line 172
    if-ge v8, v0, :cond_1c

    .line 173
    .line 174
    move-object/from16 v0, v28

    .line 175
    .line 176
    move-object v4, v0

    .line 177
    const/4 v5, 0x0

    .line 178
    const/4 v6, 0x0

    .line 179
    :goto_3
    invoke-virtual {v11}, Lrk;->invoke()Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v7

    .line 183
    check-cast v7, Ljava/lang/Boolean;

    .line 184
    .line 185
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 186
    .line 187
    .line 188
    move-result v7

    .line 189
    const-string v15, "Google Drive upload stopped"

    .line 190
    .line 191
    if-eqz v7, :cond_3

    .line 192
    .line 193
    if-eqz v0, :cond_2

    .line 194
    .line 195
    goto :goto_4

    .line 196
    :cond_2
    new-instance v0, Ljava/io/IOException;

    .line 197
    .line 198
    invoke-direct {v0, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    :goto_4
    throw v0

    .line 202
    :cond_3
    :try_start_0
    invoke-virtual/range {v16 .. v16}, Lou3;->c()Lk04;

    .line 203
    .line 204
    .line 205
    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_e

    .line 206
    move-wide/from16 p0, v2

    .line 207
    .line 208
    instance-of v2, v7, Li04;

    .line 209
    .line 210
    if-eqz v2, :cond_4

    .line 211
    .line 212
    invoke-virtual {v1, v9, v10}, Ll04;->b(J)V

    .line 213
    .line 214
    .line 215
    check-cast v7, Li04;

    .line 216
    .line 217
    iget-object v0, v7, Li04;->a:Lyz3;

    .line 218
    .line 219
    goto/16 :goto_13

    .line 220
    .line 221
    :cond_4
    instance-of v2, v7, Lj04;

    .line 222
    .line 223
    if-eqz v2, :cond_1b

    .line 224
    .line 225
    check-cast v7, Lj04;

    .line 226
    .line 227
    iget-object v2, v7, Lj04;->a:Ljava/lang/String;

    .line 228
    .line 229
    invoke-static {v2}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 230
    .line 231
    .line 232
    move-result v3

    .line 233
    if-nez v3, :cond_1a

    .line 234
    .line 235
    :try_start_1
    sget-object v3, Lf13;->a:Lgv7;

    .line 236
    .line 237
    invoke-static/range {p0 .. p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 238
    .line 239
    .line 240
    move-result-object v3

    .line 241
    invoke-virtual {v12, v3}, Loh1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_d
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 245
    move-object v7, v2

    .line 246
    move-object/from16 p2, v3

    .line 247
    .line 248
    move-wide/from16 v2, p0

    .line 249
    .line 250
    :try_start_2
    invoke-virtual {v1, v2, v3}, Ll04;->b(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_c
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 251
    .line 252
    .line 253
    move-object/from16 v29, p2

    .line 254
    .line 255
    move-wide/from16 v19, v2

    .line 256
    .line 257
    move-object/from16 v17, v7

    .line 258
    .line 259
    const/4 v7, 0x0

    .line 260
    :goto_5
    cmp-long v18, v19, v9

    .line 261
    .line 262
    if-ltz v18, :cond_6

    .line 263
    .line 264
    if-nez v27, :cond_5

    .line 265
    .line 266
    goto :goto_7

    .line 267
    :cond_5
    :try_start_3
    new-instance v0, Ljava/io/IOException;

    .line 268
    .line 269
    const-string v1, "Google Drive upload ended without a completion response"

    .line 270
    .line 271
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 275
    :catchall_0
    move-exception v0

    .line 276
    move-object/from16 v28, v29

    .line 277
    .line 278
    goto/16 :goto_18

    .line 279
    .line 280
    :catch_0
    move-exception v0

    .line 281
    :goto_6
    move-object/from16 v28, v29

    .line 282
    .line 283
    goto/16 :goto_17

    .line 284
    .line 285
    :cond_6
    :goto_7
    :try_start_4
    invoke-virtual {v11}, Lrk;->invoke()Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object v18

    .line 289
    check-cast v18, Ljava/lang/Boolean;

    .line 290
    .line 291
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    .line 292
    .line 293
    .line 294
    move-result v18
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_b
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 295
    if-eqz v18, :cond_8

    .line 296
    .line 297
    if-eqz v0, :cond_7

    .line 298
    .line 299
    goto :goto_8

    .line 300
    :cond_7
    :try_start_5
    new-instance v0, Ljava/io/IOException;

    .line 301
    .line 302
    invoke-direct {v0, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    :goto_8
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 306
    :cond_8
    if-nez v27, :cond_9

    .line 307
    .line 308
    move-object/from16 p5, v4

    .line 309
    .line 310
    move/from16 p2, v5

    .line 311
    .line 312
    :goto_9
    move-wide v3, v2

    .line 313
    goto :goto_a

    .line 314
    :cond_9
    sub-long v2, v9, v19

    .line 315
    .line 316
    move-object/from16 p5, v4

    .line 317
    .line 318
    move/from16 p2, v5

    .line 319
    .line 320
    const-wide/32 v4, 0x800000

    .line 321
    .line 322
    .line 323
    :try_start_6
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 324
    .line 325
    .line 326
    move-result-wide v2

    .line 327
    goto :goto_9

    .line 328
    :goto_a
    add-long v30, v19, v3

    .line 329
    .line 330
    new-instance v2, Lkh6;

    .line 331
    .line 332
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 333
    .line 334
    .line 335
    const/4 v5, 0x3

    .line 336
    :try_start_7
    move-object/from16 v18, v29

    .line 337
    .line 338
    check-cast v18, Ljava/io/InputStream;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 339
    .line 340
    move-object/from16 p6, v13

    .line 341
    .line 342
    move-object/from16 v32, v14

    .line 343
    .line 344
    :try_start_8
    iget-wide v13, v1, Ll04;->a:J

    .line 345
    .line 346
    new-instance v25, Le04;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 347
    .line 348
    move-object/from16 p7, v11

    .line 349
    .line 350
    move-wide/from16 v23, v13

    .line 351
    .line 352
    move-object/from16 p0, v15

    .line 353
    .line 354
    const-wide/16 v33, 0x0

    .line 355
    .line 356
    move/from16 v13, p2

    .line 357
    .line 358
    move v11, v5

    .line 359
    move v14, v6

    .line 360
    move v15, v7

    .line 361
    move-wide/from16 v6, v19

    .line 362
    .line 363
    move-object v5, v1

    .line 364
    move-object/from16 v1, v25

    .line 365
    .line 366
    :try_start_9
    invoke-direct/range {v1 .. v7}, Le04;-><init>(Lkh6;JLl04;J)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 367
    .line 368
    .line 369
    move-object/from16 v25, v1

    .line 370
    .line 371
    move-object v1, v5

    .line 372
    move-wide/from16 v21, v3

    .line 373
    .line 374
    move-wide/from16 v19, v6

    .line 375
    .line 376
    :try_start_a
    invoke-virtual/range {v16 .. v25}, Lou3;->a(Ljava/lang/String;Ljava/io/InputStream;JJJLe04;)Lh04;

    .line 377
    .line 378
    .line 379
    move-result-object v2
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 380
    move-wide/from16 v4, v19

    .line 381
    .line 382
    :try_start_b
    instance-of v3, v2, Lf04;

    .line 383
    .line 384
    if-eqz v3, :cond_a

    .line 385
    .line 386
    invoke-virtual {v1, v9, v10}, Ll04;->b(J)V

    .line 387
    .line 388
    .line 389
    check-cast v2, Lf04;

    .line 390
    .line 391
    iget-object v0, v2, Lf04;->a:Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 392
    .line 393
    :goto_b
    check-cast v29, Ljava/io/Closeable;

    .line 394
    .line 395
    invoke-static/range {v29 .. v29}, Lf13;->a(Ljava/io/Closeable;)V

    .line 396
    .line 397
    .line 398
    goto/16 :goto_13

    .line 399
    .line 400
    :catch_1
    move-exception v0

    .line 401
    move-object/from16 v4, p5

    .line 402
    .line 403
    goto :goto_6

    .line 404
    :cond_a
    :try_start_c
    instance-of v3, v2, Lg04;

    .line 405
    .line 406
    if-eqz v3, :cond_10

    .line 407
    .line 408
    move-object v3, v2

    .line 409
    check-cast v3, Lg04;

    .line 410
    .line 411
    iget-wide v6, v3, Lg04;->a:J

    .line 412
    .line 413
    move v3, v8

    .line 414
    const-string v8, "chunk"

    .line 415
    .line 416
    move/from16 v36, v3

    .line 417
    .line 418
    move-object/from16 v35, v16

    .line 419
    .line 420
    move-object/from16 v37, v17

    .line 421
    .line 422
    move-object/from16 v16, v2

    .line 423
    .line 424
    move-wide v2, v6

    .line 425
    move-wide/from16 v6, v30

    .line 426
    .line 427
    invoke-virtual/range {v1 .. v8}, Ll04;->d(JJJLjava/lang/String;)V

    .line 428
    .line 429
    .line 430
    move-object/from16 v8, v16

    .line 431
    .line 432
    check-cast v8, Lg04;

    .line 433
    .line 434
    iget-object v8, v8, Lg04;->b:Ljava/lang/String;

    .line 435
    .line 436
    if-nez v8, :cond_b

    .line 437
    .line 438
    move-object/from16 v17, v37

    .line 439
    .line 440
    goto :goto_c

    .line 441
    :cond_b
    move-object/from16 v17, v8

    .line 442
    .line 443
    :goto_c
    cmp-long v4, v2, v4

    .line 444
    .line 445
    if-lez v4, :cond_c

    .line 446
    .line 447
    const/4 v5, 0x0

    .line 448
    goto :goto_d

    .line 449
    :cond_c
    if-ge v15, v11, :cond_f

    .line 450
    .line 451
    add-int/lit8 v5, v15, 0x1

    .line 452
    .line 453
    :goto_d
    cmp-long v6, v2, v6

    .line 454
    .line 455
    if-nez v6, :cond_d

    .line 456
    .line 457
    if-nez v4, :cond_e

    .line 458
    .line 459
    :cond_d
    move-object/from16 v4, v29

    .line 460
    .line 461
    check-cast v4, Ljava/io/Closeable;

    .line 462
    .line 463
    invoke-static {v4}, Lf13;->a(Ljava/io/Closeable;)V

    .line 464
    .line 465
    .line 466
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 467
    .line 468
    .line 469
    move-result-object v4

    .line 470
    invoke-virtual {v12, v4}, Loh1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    .line 472
    .line 473
    move-result-object v4

    .line 474
    move-object/from16 v29, v4

    .line 475
    .line 476
    :cond_e
    invoke-virtual {v1, v2, v3}, Ll04;->b(J)V

    .line 477
    .line 478
    .line 479
    move-object/from16 v15, p0

    .line 480
    .line 481
    move-object/from16 v4, p5

    .line 482
    .line 483
    move-object/from16 v11, p7

    .line 484
    .line 485
    move-wide/from16 v19, v2

    .line 486
    .line 487
    move v7, v5

    .line 488
    move v5, v13

    .line 489
    move v6, v14

    .line 490
    move-object/from16 v14, v32

    .line 491
    .line 492
    move-wide/from16 v2, v33

    .line 493
    .line 494
    move-object/from16 v16, v35

    .line 495
    .line 496
    move/from16 v8, v36

    .line 497
    .line 498
    move-object/from16 v13, p6

    .line 499
    .line 500
    goto/16 :goto_5

    .line 501
    .line 502
    :cond_f
    new-instance v0, Ljava/io/IOException;

    .line 503
    .line 504
    move-object/from16 v2, v32

    .line 505
    .line 506
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 507
    .line 508
    .line 509
    throw v0

    .line 510
    :cond_10
    new-instance v0, Lmn5;

    .line 511
    .line 512
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 513
    .line 514
    .line 515
    throw v0

    .line 516
    :catch_2
    move-exception v0

    .line 517
    move/from16 v36, v8

    .line 518
    .line 519
    move-object/from16 v35, v16

    .line 520
    .line 521
    move-object/from16 v37, v17

    .line 522
    .line 523
    move-wide/from16 v4, v19

    .line 524
    .line 525
    :goto_e
    move-wide/from16 v6, v30

    .line 526
    .line 527
    move-object/from16 v2, v32

    .line 528
    .line 529
    :goto_f
    move-object/from16 v8, p6

    .line 530
    .line 531
    move-object v3, v0

    .line 532
    goto :goto_11

    .line 533
    :catch_3
    move-exception v0

    .line 534
    move-object v1, v5

    .line 535
    move-wide v4, v6

    .line 536
    move/from16 v36, v8

    .line 537
    .line 538
    move-object/from16 v35, v16

    .line 539
    .line 540
    move-object/from16 v37, v17

    .line 541
    .line 542
    goto :goto_e

    .line 543
    :catch_4
    move-exception v0

    .line 544
    move/from16 v13, p2

    .line 545
    .line 546
    move v14, v6

    .line 547
    move/from16 v36, v8

    .line 548
    .line 549
    move-object/from16 p7, v11

    .line 550
    .line 551
    move-object/from16 p0, v15

    .line 552
    .line 553
    move-object/from16 v35, v16

    .line 554
    .line 555
    move-object/from16 v37, v17

    .line 556
    .line 557
    move-object/from16 v2, v32

    .line 558
    .line 559
    const-wide/16 v33, 0x0

    .line 560
    .line 561
    move v11, v5

    .line 562
    :goto_10
    move v15, v7

    .line 563
    move-wide/from16 v4, v19

    .line 564
    .line 565
    move-wide/from16 v6, v30

    .line 566
    .line 567
    goto :goto_f

    .line 568
    :catch_5
    move-exception v0

    .line 569
    move/from16 v36, v8

    .line 570
    .line 571
    move-object/from16 p7, v11

    .line 572
    .line 573
    move-object/from16 p6, v13

    .line 574
    .line 575
    move-object v2, v14

    .line 576
    move-object/from16 p0, v15

    .line 577
    .line 578
    move-object/from16 v35, v16

    .line 579
    .line 580
    move-object/from16 v37, v17

    .line 581
    .line 582
    const-wide/16 v33, 0x0

    .line 583
    .line 584
    move/from16 v13, p2

    .line 585
    .line 586
    move v11, v5

    .line 587
    move v14, v6

    .line 588
    goto :goto_10

    .line 589
    :goto_11
    invoke-virtual {v8, v3}, Lrx;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    .line 591
    .line 592
    move-result-object v0

    .line 593
    check-cast v0, Ljava/lang/Boolean;

    .line 594
    .line 595
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 596
    .line 597
    .line 598
    move-result v0

    .line 599
    if-eqz v0, :cond_12

    .line 600
    .line 601
    move/from16 v11, v36

    .line 602
    .line 603
    if-ge v14, v11, :cond_11

    .line 604
    .line 605
    invoke-virtual {v1, v3, v13}, Ll04;->c(Ljava/lang/Exception;I)Z

    .line 606
    .line 607
    .line 608
    move-result v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 609
    if-eqz v0, :cond_11

    .line 610
    .line 611
    add-int/lit8 v5, v13, 0x1

    .line 612
    .line 613
    add-int/lit8 v6, v14, 0x1

    .line 614
    .line 615
    :try_start_d
    invoke-interface/range {v26 .. v26}, Lbt3;->invoke()Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 616
    .line 617
    .line 618
    check-cast v29, Ljava/io/Closeable;

    .line 619
    .line 620
    invoke-static/range {v29 .. v29}, Lf13;->a(Ljava/io/Closeable;)V

    .line 621
    .line 622
    .line 623
    move-object v14, v2

    .line 624
    move-object v0, v3

    .line 625
    move-object v4, v0

    .line 626
    move-object v13, v8

    .line 627
    move v8, v11

    .line 628
    move-wide/from16 v2, v33

    .line 629
    .line 630
    move-object/from16 v16, v35

    .line 631
    .line 632
    :goto_12
    move-object/from16 v11, p7

    .line 633
    .line 634
    goto/16 :goto_3

    .line 635
    .line 636
    :catch_6
    move-exception v0

    .line 637
    move-object v4, v3

    .line 638
    goto/16 :goto_6

    .line 639
    .line 640
    :cond_11
    :try_start_e
    throw v3

    .line 641
    :cond_12
    move/from16 v11, v36

    .line 642
    .line 643
    iget-object v0, v1, Ll04;->c:Lae1;

    .line 644
    .line 645
    invoke-virtual {v0, v3}, Lae1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    .line 647
    .line 648
    move-result-object v0

    .line 649
    check-cast v0, Ljava/lang/Boolean;

    .line 650
    .line 651
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 652
    .line 653
    .line 654
    move-result v0

    .line 655
    if-eqz v0, :cond_19

    .line 656
    .line 657
    invoke-virtual {v1, v3, v13}, Ll04;->c(Ljava/lang/Exception;I)Z

    .line 658
    .line 659
    .line 660
    move-result v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 661
    if-eqz v0, :cond_19

    .line 662
    .line 663
    move/from16 p2, v13

    .line 664
    .line 665
    add-int/lit8 v13, p2, 0x1

    .line 666
    .line 667
    move/from16 v36, v11

    .line 668
    .line 669
    move/from16 p1, v13

    .line 670
    .line 671
    move-object/from16 v13, v35

    .line 672
    .line 673
    move-object/from16 v11, v37

    .line 674
    .line 675
    :try_start_f
    invoke-virtual {v13, v9, v10, v11}, Lou3;->b(JLjava/lang/String;)Lh04;

    .line 676
    .line 677
    .line 678
    move-result-object v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_9
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 679
    move-object/from16 v32, v2

    .line 680
    .line 681
    :try_start_10
    instance-of v2, v0, Lf04;

    .line 682
    .line 683
    if-eqz v2, :cond_13

    .line 684
    .line 685
    invoke-virtual {v1, v9, v10}, Ll04;->b(J)V

    .line 686
    .line 687
    .line 688
    check-cast v0, Lf04;

    .line 689
    .line 690
    iget-object v0, v0, Lf04;->a:Ljava/lang/Object;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 691
    .line 692
    goto/16 :goto_b

    .line 693
    .line 694
    :goto_13
    check-cast v0, Lyz3;

    .line 695
    .line 696
    return-object v0

    .line 697
    :cond_13
    :try_start_11
    instance-of v2, v0, Lg04;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 698
    .line 699
    if-eqz v2, :cond_17

    .line 700
    .line 701
    :try_start_12
    move-object v2, v0

    .line 702
    check-cast v2, Lg04;

    .line 703
    .line 704
    move-object/from16 p2, v0

    .line 705
    .line 706
    move-object/from16 v17, v1

    .line 707
    .line 708
    iget-wide v0, v2, Lg04;->a:J

    .line 709
    .line 710
    move-object v2, v8

    .line 711
    const-string v8, "status"
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_8
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 712
    .line 713
    move-object v9, v3

    .line 714
    move-object/from16 v10, v32

    .line 715
    .line 716
    move-object/from16 v38, v11

    .line 717
    .line 718
    move-object v11, v2

    .line 719
    move-wide v2, v0

    .line 720
    move-object/from16 v1, v17

    .line 721
    .line 722
    move-object/from16 v17, v38

    .line 723
    .line 724
    :try_start_13
    invoke-virtual/range {v1 .. v8}, Ll04;->d(JJJLjava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_7
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 725
    .line 726
    .line 727
    cmp-long v0, v2, v4

    .line 728
    .line 729
    if-lez v0, :cond_14

    .line 730
    .line 731
    const/4 v7, 0x0

    .line 732
    goto :goto_14

    .line 733
    :cond_14
    const/4 v4, 0x3

    .line 734
    if-ge v15, v4, :cond_16

    .line 735
    .line 736
    add-int/lit8 v7, v15, 0x1

    .line 737
    .line 738
    :goto_14
    :try_start_14
    move-object/from16 v0, p2

    .line 739
    .line 740
    check-cast v0, Lg04;

    .line 741
    .line 742
    iget-object v0, v0, Lg04;->b:Ljava/lang/String;

    .line 743
    .line 744
    if-nez v0, :cond_15

    .line 745
    .line 746
    goto :goto_15

    .line 747
    :cond_15
    move-object/from16 v17, v0

    .line 748
    .line 749
    :goto_15
    move-object/from16 v0, v29

    .line 750
    .line 751
    check-cast v0, Ljava/io/Closeable;

    .line 752
    .line 753
    invoke-static {v0}, Lf13;->a(Ljava/io/Closeable;)V

    .line 754
    .line 755
    .line 756
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 757
    .line 758
    .line 759
    move-result-object v0

    .line 760
    invoke-virtual {v12, v0}, Loh1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 761
    .line 762
    .line 763
    move-result-object v29

    .line 764
    invoke-virtual {v1, v2, v3}, Ll04;->b(J)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_1
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 765
    .line 766
    .line 767
    move-object/from16 v15, p0

    .line 768
    .line 769
    move/from16 v5, p1

    .line 770
    .line 771
    move-object/from16 v4, p5

    .line 772
    .line 773
    move-wide/from16 v19, v2

    .line 774
    .line 775
    move-object v0, v9

    .line 776
    move-object/from16 v16, v13

    .line 777
    .line 778
    move v6, v14

    .line 779
    move-wide/from16 v2, v33

    .line 780
    .line 781
    move/from16 v8, v36

    .line 782
    .line 783
    move-object v14, v10

    .line 784
    move-object v13, v11

    .line 785
    move-wide/from16 v9, p3

    .line 786
    .line 787
    move-object/from16 v11, p7

    .line 788
    .line 789
    goto/16 :goto_5

    .line 790
    .line 791
    :cond_16
    :try_start_15
    new-instance v0, Ljava/io/IOException;

    .line 792
    .line 793
    invoke-direct {v0, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 794
    .line 795
    .line 796
    throw v0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_7
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 797
    :catch_7
    move-exception v0

    .line 798
    goto :goto_16

    .line 799
    :catch_8
    move-exception v0

    .line 800
    move-object v9, v3

    .line 801
    :goto_16
    :try_start_16
    invoke-static {v9, v0}, Lyc9;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 802
    .line 803
    .line 804
    throw v9

    .line 805
    :cond_17
    new-instance v0, Lmn5;

    .line 806
    .line 807
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 808
    .line 809
    .line 810
    throw v0

    .line 811
    :catch_9
    move-exception v0

    .line 812
    move-object v10, v2

    .line 813
    move-object v9, v3

    .line 814
    move-object v11, v8

    .line 815
    invoke-static {v9, v0}, Lyc9;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 816
    .line 817
    .line 818
    invoke-virtual {v11, v0}, Lrx;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 819
    .line 820
    .line 821
    move-result-object v2

    .line 822
    check-cast v2, Ljava/lang/Boolean;

    .line 823
    .line 824
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 825
    .line 826
    .line 827
    move-result v2

    .line 828
    if-eqz v2, :cond_18

    .line 829
    .line 830
    move/from16 v8, v36

    .line 831
    .line 832
    if-ge v14, v8, :cond_18

    .line 833
    .line 834
    move/from16 v5, p1

    .line 835
    .line 836
    invoke-virtual {v1, v0, v5}, Ll04;->c(Ljava/lang/Exception;I)Z

    .line 837
    .line 838
    .line 839
    move-result v0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_1
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 840
    if-eqz v0, :cond_18

    .line 841
    .line 842
    add-int/lit8 v5, p2, 0x2

    .line 843
    .line 844
    add-int/lit8 v6, v14, 0x1

    .line 845
    .line 846
    :try_start_17
    invoke-interface/range {v26 .. v26}, Lbt3;->invoke()Ljava/lang/Object;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_a
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 847
    .line 848
    .line 849
    check-cast v29, Ljava/io/Closeable;

    .line 850
    .line 851
    invoke-static/range {v29 .. v29}, Lf13;->a(Ljava/io/Closeable;)V

    .line 852
    .line 853
    .line 854
    move-object v0, v9

    .line 855
    move-object v4, v0

    .line 856
    move-object v14, v10

    .line 857
    move-object/from16 v16, v13

    .line 858
    .line 859
    move-wide/from16 v2, v33

    .line 860
    .line 861
    move-wide/from16 v9, p3

    .line 862
    .line 863
    move-object v13, v11

    .line 864
    goto/16 :goto_12

    .line 865
    .line 866
    :catch_a
    move-exception v0

    .line 867
    move-object v4, v9

    .line 868
    goto/16 :goto_6

    .line 869
    .line 870
    :cond_18
    :try_start_18
    throw v9

    .line 871
    :cond_19
    move-object v9, v3

    .line 872
    throw v9
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_1
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    .line 873
    :catch_b
    move-exception v0

    .line 874
    move-object/from16 p5, v4

    .line 875
    .line 876
    goto/16 :goto_6

    .line 877
    .line 878
    :catchall_1
    move-exception v0

    .line 879
    move-object/from16 v28, p2

    .line 880
    .line 881
    goto :goto_18

    .line 882
    :catch_c
    move-exception v0

    .line 883
    move-object/from16 p5, v4

    .line 884
    .line 885
    move-object/from16 v28, p2

    .line 886
    .line 887
    goto :goto_17

    .line 888
    :catch_d
    move-exception v0

    .line 889
    move-object/from16 p5, v4

    .line 890
    .line 891
    move-object/from16 v4, p5

    .line 892
    .line 893
    :goto_17
    :try_start_19
    invoke-static {v0, v4}, Ll04;->a(Ljava/lang/Exception;Ljava/lang/Exception;)V

    .line 894
    .line 895
    .line 896
    throw v0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_2

    .line 897
    :catchall_2
    move-exception v0

    .line 898
    :goto_18
    check-cast v28, Ljava/io/Closeable;

    .line 899
    .line 900
    invoke-static/range {v28 .. v28}, Lf13;->a(Ljava/io/Closeable;)V

    .line 901
    .line 902
    .line 903
    throw v0

    .line 904
    :cond_1a
    const-string v0, "Google Drive upload URL must not be blank"

    .line 905
    .line 906
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 907
    .line 908
    .line 909
    return-object v28

    .line 910
    :cond_1b
    invoke-static {}, Lq;->j()V

    .line 911
    .line 912
    .line 913
    return-object v28

    .line 914
    :catch_e
    move-exception v0

    .line 915
    move-object/from16 p5, v4

    .line 916
    .line 917
    move-object/from16 v9, p5

    .line 918
    .line 919
    invoke-static {v0, v9}, Ll04;->a(Ljava/lang/Exception;Ljava/lang/Exception;)V

    .line 920
    .line 921
    .line 922
    throw v0

    .line 923
    :cond_1c
    const-string v0, "Google Drive uploads allow at most one fresh-session restart"

    .line 924
    .line 925
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 926
    .line 927
    .line 928
    return-object v28

    .line 929
    :cond_1d
    const-string v0, "maxRecoveryAttempts must be >= 0"

    .line 930
    .line 931
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 932
    .line 933
    .line 934
    return-object v28

    .line 935
    :cond_1e
    const-string v0, "totalBytes must be >= 0"

    .line 936
    .line 937
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 938
    .line 939
    .line 940
    return-object v28
.end method
