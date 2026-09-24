.class public final Llu3;
.super Lno2;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final n:Lfu3;

.field public final p:Ld04;

.field public final q:Lfo2;

.field public final r:Ljava/lang/String;

.field public t:Loi5;

.field public x:I


# direct methods
.method public constructor <init>(Lfu3;Ld04;Lfo2;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iget-object v0, p3, Lfo2;->a:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v1, p3, Lfo2;->d:Lq63;

    .line 10
    .line 11
    iget-wide v2, p3, Lfo2;->c:J

    .line 12
    .line 13
    invoke-direct {p0, v2, v3, v1, v0}, Lno2;-><init>(JLq63;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Llu3;->n:Lfu3;

    .line 17
    .line 18
    iput-object p2, p0, Llu3;->p:Ld04;

    .line 19
    .line 20
    iput-object p3, p0, Llu3;->q:Lfo2;

    .line 21
    .line 22
    invoke-virtual {p3}, Lfo2;->a()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string p2, "GRestDownloadSession: "

    .line 27
    .line 28
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iput-object p1, p0, Llu3;->r:Ljava/lang/String;

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final a()V
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
    iget-object v2, p0, Llu3;->r:Ljava/lang/String;

    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    invoke-static/range {v1 .. v6}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Llu3;->close()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final close()V
    .locals 0

    .line 1
    iget-object p0, p0, Llu3;->t:Loi5;

    .line 2
    .line 3
    invoke-static {p0}, Lf13;->a(Ljava/io/Closeable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final g()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Llu3;->x:I

    .line 3
    .line 4
    invoke-virtual {p0, v0}, Llu3;->j(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final j(Z)V
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v2, p1

    .line 4
    .line 5
    iget-object v3, v1, Lno2;->a:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v0, v1, Llu3;->q:Lfo2;

    .line 8
    .line 9
    const-string v4, "google_drive:"

    .line 10
    .line 11
    iget-object v5, v1, Llu3;->r:Ljava/lang/String;

    .line 12
    .line 13
    const-string v6, ": executeDownload"

    .line 14
    .line 15
    invoke-static {v5, v6}, Leq3;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v8

    .line 19
    new-instance v5, Lkh6;

    .line 20
    .line 21
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    new-instance v6, Lkh6;

    .line 25
    .line 26
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 27
    .line 28
    .line 29
    new-instance v7, Lph0;

    .line 30
    .line 31
    const/4 v9, 0x2

    .line 32
    invoke-direct {v7, v1, v5, v6, v9}, Lph0;-><init>(Lno2;Lkh6;Lkh6;I)V

    .line 33
    .line 34
    .line 35
    :try_start_0
    new-instance v10, Loi5;

    .line 36
    .line 37
    new-instance v11, Lku3;

    .line 38
    .line 39
    invoke-direct {v11, v1, v2}, Lku3;-><init>(Llu3;Z)V

    .line 40
    .line 41
    .line 42
    iget-object v12, v1, Lno2;->b:Lq63;

    .line 43
    .line 44
    iget-wide v13, v0, Lfo2;->c:J

    .line 45
    .line 46
    invoke-virtual {v0}, Lfo2;->a()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v16

    .line 50
    iget-wide v5, v0, Lfo2;->c:J

    .line 51
    .line 52
    new-instance v9, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v4, ":"

    .line 61
    .line 62
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v17

    .line 72
    iget-boolean v4, v0, Lfo2;->e:Z

    .line 73
    .line 74
    iget-boolean v0, v0, Lfo2;->f:Z

    .line 75
    .line 76
    const/4 v15, 0x1

    .line 77
    move/from16 v19, v0

    .line 78
    .line 79
    move/from16 v18, v4

    .line 80
    .line 81
    invoke-direct/range {v10 .. v19}, Loi5;-><init>(Lst3;Lq63;JZLjava/lang/String;Ljava/lang/String;ZZ)V

    .line 82
    .line 83
    .line 84
    iput-object v10, v1, Llu3;->t:Loi5;

    .line 85
    .line 86
    invoke-virtual {v10, v7}, Loi5;->b(Lmt3;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :catch_0
    move-exception v0

    .line 91
    move-object v10, v0

    .line 92
    iget-object v0, v1, Lno2;->d:Lgz7;

    .line 93
    .line 94
    invoke-virtual {v0}, Lgz7;->isCancelled()Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-eqz v0, :cond_0

    .line 99
    .line 100
    return-void

    .line 101
    :cond_0
    sget-object v7, Lvr6;->INSTANCE:Lvr6;

    .line 102
    .line 103
    const-string v0, "Error while downloading file id \'"

    .line 104
    .line 105
    const-string v4, "\'"

    .line 106
    .line 107
    invoke-static {v0, v3, v4}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v9

    .line 111
    const/16 v12, 0x8

    .line 112
    .line 113
    const/4 v13, 0x0

    .line 114
    const/4 v11, 0x0

    .line 115
    invoke-static/range {v7 .. v13}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    move-object v3, v10

    .line 119
    instance-of v4, v3, Lvz3;

    .line 120
    .line 121
    if-eqz v4, :cond_1

    .line 122
    .line 123
    move-object v10, v3

    .line 124
    check-cast v10, Lvz3;

    .line 125
    .line 126
    invoke-static {v10}, Lrs9;->w(Lvz3;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v13

    .line 130
    const/4 v15, 0x4

    .line 131
    const/16 v16, 0x0

    .line 132
    .line 133
    iget-object v12, v1, Llu3;->r:Ljava/lang/String;

    .line 134
    .line 135
    const/4 v14, 0x0

    .line 136
    move-object v11, v7

    .line 137
    invoke-static/range {v11 .. v16}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    :cond_1
    sget-object v0, Lnf1;->a:Lai6;

    .line 141
    .line 142
    invoke-static {v3}, Lx13;->E(Ljava/lang/Exception;)Z

    .line 143
    .line 144
    .line 145
    move-result v5

    .line 146
    iget-object v6, v1, Lno2;->e:Lke;

    .line 147
    .line 148
    const/4 v14, 0x0

    .line 149
    const/4 v15, 0x0

    .line 150
    iget-object v7, v1, Llu3;->n:Lfu3;

    .line 151
    .line 152
    if-eqz v5, :cond_4

    .line 153
    .line 154
    :try_start_1
    invoke-virtual {v7, v14}, Lfu3;->p(Z)Lyz3;

    .line 155
    .line 156
    .line 157
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    goto :goto_0

    .line 159
    :catchall_0
    move-exception v0

    .line 160
    new-instance v9, Lbn6;

    .line 161
    .line 162
    invoke-direct {v9, v0}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 163
    .line 164
    .line 165
    move-object v0, v9

    .line 166
    :goto_0
    invoke-static {v0}, Len6;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 167
    .line 168
    .line 169
    move-result-object v10

    .line 170
    if-eqz v10, :cond_2

    .line 171
    .line 172
    move-object v9, v7

    .line 173
    sget-object v7, Lvr6;->INSTANCE:Lvr6;

    .line 174
    .line 175
    const/16 v12, 0x8

    .line 176
    .line 177
    const/4 v13, 0x0

    .line 178
    move-object v11, v9

    .line 179
    const-string v9, "Error while checking Google Drive main folder after file-not-found response"

    .line 180
    .line 181
    move-object/from16 v16, v11

    .line 182
    .line 183
    const/4 v11, 0x0

    .line 184
    move-object/from16 v17, v16

    .line 185
    .line 186
    invoke-static/range {v7 .. v13}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 187
    .line 188
    .line 189
    goto :goto_1

    .line 190
    :cond_2
    move-object/from16 v17, v7

    .line 191
    .line 192
    :goto_1
    instance-of v7, v0, Lbn6;

    .line 193
    .line 194
    if-nez v7, :cond_5

    .line 195
    .line 196
    if-eqz v7, :cond_3

    .line 197
    .line 198
    move-object v0, v15

    .line 199
    :cond_3
    if-nez v0, :cond_5

    .line 200
    .line 201
    sget-object v0, Ltb1;->a:Ltb1;

    .line 202
    .line 203
    invoke-static {}, Lqb1;->j()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    sget-object v7, Lvr6;->INSTANCE:Lvr6;

    .line 208
    .line 209
    invoke-virtual/range {v17 .. v17}, Ltb1;->i()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    const-string v2, "\' with id \'"

    .line 214
    .line 215
    const-string v3, "\' not found!"

    .line 216
    .line 217
    const-string v4, "Main Swift Backup folder \'"

    .line 218
    .line 219
    invoke-static {v4, v1, v2, v0, v3}, Leq3;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v9

    .line 223
    const/4 v11, 0x4

    .line 224
    const/4 v12, 0x0

    .line 225
    const/4 v10, 0x0

    .line 226
    invoke-static/range {v7 .. v12}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual/range {v17 .. v17}, Ltb1;->i()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    .line 234
    .line 235
    const-string v2, "\n                    User has manually deleted the Main Swift Backup folder \'"

    .line 236
    .line 237
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    const-string v0, "\' from Google Drive. ALL cloud backups are now invalid and should be deleted from Swift Backup.\n                    ----------------\n                    Steps to resolve\n                    ----------------\n                    1. Open Swift Backup and go to \'Cloud sync\' section.\n                    2. Use \'Delete tag and associated backups\' button to delete backups. Do the same for all tags you may have.\n                    3. Disconnect then reconnect Google Drive in Swift Backup.\n                    "

    .line 244
    .line 245
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    invoke-static {v0}, Loq7;->L(Ljava/lang/String;)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v9

    .line 256
    invoke-static/range {v7 .. v12}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 257
    .line 258
    .line 259
    new-instance v0, Ljava/lang/Exception;

    .line 260
    .line 261
    invoke-direct {v0, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    iput-object v0, v6, Lke;->b:Ljava/lang/Object;

    .line 265
    .line 266
    return-void

    .line 267
    :cond_4
    move-object/from16 v17, v7

    .line 268
    .line 269
    :cond_5
    if-eqz v5, :cond_6

    .line 270
    .line 271
    sget-object v7, Lvr6;->INSTANCE:Lvr6;

    .line 272
    .line 273
    iget-object v0, v1, Lno2;->b:Lq63;

    .line 274
    .line 275
    invoke-virtual {v0}, Lq63;->p()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    const-string v1, "User has manually deleted the synced file \'"

    .line 280
    .line 281
    const-string v2, " (...)\' from Google Drive."

    .line 282
    .line 283
    invoke-static {v1, v0, v2}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v9

    .line 287
    const/4 v11, 0x4

    .line 288
    const/4 v12, 0x0

    .line 289
    const/4 v10, 0x0

    .line 290
    invoke-static/range {v7 .. v12}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 291
    .line 292
    .line 293
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 294
    .line 295
    .line 296
    const-string v9, "User has manually deleted uploaded files from Google Drive. If multiple files were deleted, it is best to delete ALL cloud backups in Swift Backup and start fresh.\n----------------\nSteps to resolve\n----------------\n1. Open Swift Backup and go to \'Cloud sync\' section.\n2. Use \'Delete tag and associated backups\' button to delete backups. Do the same for all tags you may have.\n3. Disconnect then reconnect Google Drive in Swift Backup."

    .line 297
    .line 298
    invoke-static/range {v7 .. v12}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 299
    .line 300
    .line 301
    new-instance v0, Ljava/lang/Exception;

    .line 302
    .line 303
    invoke-direct {v0, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    iput-object v0, v6, Lke;->b:Ljava/lang/Object;

    .line 307
    .line 308
    return-void

    .line 309
    :cond_6
    sget-object v0, Lnf1;->a:Lai6;

    .line 310
    .line 311
    invoke-static {v3}, Lx13;->J(Ljava/lang/Throwable;)Z

    .line 312
    .line 313
    .line 314
    move-result v0

    .line 315
    const-string v5, ""

    .line 316
    .line 317
    const/4 v7, 0x1

    .line 318
    if-nez v0, :cond_a

    .line 319
    .line 320
    invoke-static {v3}, Lx13;->G(Ljava/lang/Exception;)Z

    .line 321
    .line 322
    .line 323
    move-result v0

    .line 324
    if-nez v0, :cond_a

    .line 325
    .line 326
    invoke-static {v3}, Lx13;->I(Ljava/lang/Throwable;)Z

    .line 327
    .line 328
    .line 329
    move-result v0

    .line 330
    if-nez v0, :cond_a

    .line 331
    .line 332
    invoke-static {v3}, Lx13;->C(Ljava/lang/Throwable;)Z

    .line 333
    .line 334
    .line 335
    move-result v0

    .line 336
    if-nez v0, :cond_a

    .line 337
    .line 338
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    if-nez v0, :cond_7

    .line 343
    .line 344
    move-object v0, v5

    .line 345
    :cond_7
    const-string v9, "Connection reset by peer"

    .line 346
    .line 347
    invoke-static {v0, v9, v7}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 348
    .line 349
    .line 350
    move-result v0

    .line 351
    if-nez v0, :cond_a

    .line 352
    .line 353
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v0

    .line 357
    if-nez v0, :cond_8

    .line 358
    .line 359
    move-object v0, v5

    .line 360
    :cond_8
    const-string v9, "Internal Error"

    .line 361
    .line 362
    invoke-static {v0, v9, v7}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 363
    .line 364
    .line 365
    move-result v0

    .line 366
    if-nez v0, :cond_a

    .line 367
    .line 368
    invoke-static {v3}, Lx13;->K(Ljava/lang/Throwable;)Z

    .line 369
    .line 370
    .line 371
    move-result v0

    .line 372
    if-nez v0, :cond_a

    .line 373
    .line 374
    if-eqz v4, :cond_9

    .line 375
    .line 376
    move-object v10, v3

    .line 377
    check-cast v10, Lvz3;

    .line 378
    .line 379
    invoke-static {v10}, Lrs9;->n(Lvz3;)Z

    .line 380
    .line 381
    .line 382
    move-result v0

    .line 383
    if-nez v0, :cond_a

    .line 384
    .line 385
    :cond_9
    move-object/from16 v9, v17

    .line 386
    .line 387
    invoke-virtual {v9, v3}, Lfu3;->r(Ljava/lang/Exception;)Z

    .line 388
    .line 389
    .line 390
    move-result v0

    .line 391
    if-eqz v0, :cond_d

    .line 392
    .line 393
    :cond_a
    iget v0, v1, Llu3;->x:I

    .line 394
    .line 395
    const/4 v9, 0x5

    .line 396
    if-ge v0, v9, :cond_d

    .line 397
    .line 398
    add-int/2addr v0, v7

    .line 399
    iput v0, v1, Llu3;->x:I

    .line 400
    .line 401
    new-instance v2, Ljava/lang/StringBuilder;

    .line 402
    .line 403
    const-string v5, "Retrying download ("

    .line 404
    .line 405
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 409
    .line 410
    .line 411
    const-string v0, "/5)"

    .line 412
    .line 413
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v0

    .line 420
    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    .line 422
    .line 423
    if-eqz v4, :cond_b

    .line 424
    .line 425
    move-object v15, v3

    .line 426
    check-cast v15, Lvz3;

    .line 427
    .line 428
    :cond_b
    if-eqz v15, :cond_c

    .line 429
    .line 430
    iget-object v0, v15, Lvz3;->d:Ljava/lang/Long;

    .line 431
    .line 432
    if-eqz v0, :cond_c

    .line 433
    .line 434
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 435
    .line 436
    .line 437
    move-result-wide v2

    .line 438
    goto :goto_2

    .line 439
    :cond_c
    const-wide/16 v2, 0x1388

    .line 440
    .line 441
    :goto_2
    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 442
    .line 443
    .line 444
    :catch_1
    invoke-virtual {v1, v14}, Llu3;->j(Z)V

    .line 445
    .line 446
    .line 447
    return-void

    .line 448
    :cond_d
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object v0

    .line 452
    if-nez v0, :cond_e

    .line 453
    .line 454
    goto :goto_3

    .line 455
    :cond_e
    move-object v5, v0

    .line 456
    :goto_3
    const-string v0, "cannotDownloadAbusiveFile"

    .line 457
    .line 458
    invoke-static {v5, v0, v14}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 459
    .line 460
    .line 461
    move-result v0

    .line 462
    if-eqz v0, :cond_f

    .line 463
    .line 464
    if-nez v2, :cond_f

    .line 465
    .line 466
    const-string v0, "Surpassing abuse acknowledgement request"

    .line 467
    .line 468
    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    .line 470
    .line 471
    invoke-static {}, Lorg/swiftapps/swiftbackup/common/Const;->R()V

    .line 472
    .line 473
    .line 474
    invoke-virtual {v1, v7}, Llu3;->j(Z)V

    .line 475
    .line 476
    .line 477
    return-void

    .line 478
    :cond_f
    iput-object v3, v6, Lke;->b:Ljava/lang/Object;

    .line 479
    .line 480
    return-void
.end method
