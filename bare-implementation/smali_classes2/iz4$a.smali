.class public final Liz4$a;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Liz4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Liz4$a;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final init(Lgm;)Liz4;
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance p0, Liz4;

    .line 5
    .line 6
    invoke-direct {p0, p1}, Liz4;-><init>(Lgm;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p1, Lgm;->b:Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Liz4;->setMetadata(Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p1, Lgm;->a:Lhk;

    .line 15
    .line 16
    invoke-virtual {p1}, Lhk;->E()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_c

    .line 21
    .line 22
    iget-object v1, p1, Lhk;->a:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {p0, v1}, Liz4;->setBackupId(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getDateBackup()Ljava/lang/Long;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 34
    .line 35
    .line 36
    move-result-wide v1

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {p1}, Lhk;->l()J

    .line 39
    .line 40
    .line 41
    move-result-wide v1

    .line 42
    :goto_0
    invoke-virtual {p0, v1, v2}, Liz4;->setDateBackup(J)V

    .line 43
    .line 44
    .line 45
    invoke-static {v1, v2}, Lorg/swiftapps/swiftbackup/common/Const;->s(J)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {p0, v1}, Liz4;->setDateBackupString(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getDateBackupUpdated()Ljava/lang/Long;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {p0, v1}, Liz4;->setDateUpdated(Ljava/lang/Long;)V

    .line 57
    .line 58
    .line 59
    if-eqz v1, :cond_1

    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    .line 62
    .line 63
    .line 64
    move-result-wide v1

    .line 65
    invoke-static {v1, v2}, Lorg/swiftapps/swiftbackup/common/Const;->s(J)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    goto :goto_1

    .line 70
    :cond_1
    const/4 v1, 0x0

    .line 71
    :goto_1
    invoke-virtual {p0, v1}, Liz4;->setDateBackupUpdatedString(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iget-object v1, p1, Lhk;->H:Lgv7;

    .line 75
    .line 76
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    check-cast v1, Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {p0, v1}, Liz4;->setBackupTag(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1}, Lhk;->c()Lq63;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {v1}, Lq63;->j()Z

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    if-eqz v2, :cond_2

    .line 94
    .line 95
    sget-object v2, Lp93;->a:Lp93;

    .line 96
    .line 97
    invoke-virtual {v1}, Lq63;->v()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-virtual {v2, v3}, Lp93;->f(Ljava/lang/String;)J

    .line 102
    .line 103
    .line 104
    move-result-wide v2

    .line 105
    invoke-virtual {p0, v2, v3}, Liz4;->setApkSize(J)V

    .line 106
    .line 107
    .line 108
    const/4 v2, 0x0

    .line 109
    invoke-static {v1, v2}, Lng;->a(Lq63;Z)Lrg;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-virtual {v1}, Lrg;->d()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-virtual {p0, v2}, Liz4;->setBackupVersion(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1}, Lrg;->c()J

    .line 121
    .line 122
    .line 123
    move-result-wide v1

    .line 124
    invoke-virtual {p0, v1, v2}, Liz4;->setBackupVersionCode(J)V

    .line 125
    .line 126
    .line 127
    :cond_2
    invoke-virtual {p1}, Lhk;->C()Lq63;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-virtual {v1}, Lq63;->j()Z

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    if-eqz v2, :cond_3

    .line 136
    .line 137
    sget-object v2, Lp93;->a:Lp93;

    .line 138
    .line 139
    invoke-virtual {v1}, Lq63;->v()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-virtual {v2, v1}, Lp93;->f(Ljava/lang/String;)J

    .line 144
    .line 145
    .line 146
    move-result-wide v1

    .line 147
    invoke-virtual {p0, v1, v2}, Liz4;->setSplitsApkSize(J)V

    .line 148
    .line 149
    .line 150
    :cond_3
    invoke-virtual {p1}, Lhk;->z()Lq63;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    invoke-virtual {v1}, Lq63;->j()Z

    .line 155
    .line 156
    .line 157
    move-result v2

    .line 158
    if-eqz v2, :cond_4

    .line 159
    .line 160
    sget-object v2, Lp93;->a:Lp93;

    .line 161
    .line 162
    invoke-virtual {v1}, Lq63;->v()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    invoke-virtual {v2, v1}, Lp93;->f(Ljava/lang/String;)J

    .line 167
    .line 168
    .line 169
    move-result-wide v1

    .line 170
    invoke-virtual {p0, v1, v2}, Liz4;->setSharedLibsSize(J)V

    .line 171
    .line 172
    .line 173
    :cond_4
    invoke-virtual {p1}, Lhk;->g()Lq63;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    invoke-virtual {v1}, Lq63;->j()Z

    .line 178
    .line 179
    .line 180
    move-result v2

    .line 181
    if-eqz v2, :cond_6

    .line 182
    .line 183
    sget-object v2, Lp93;->a:Lp93;

    .line 184
    .line 185
    invoke-virtual {v1}, Lq63;->v()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v3

    .line 189
    invoke-virtual {v2, v3}, Lp93;->f(Ljava/lang/String;)J

    .line 190
    .line 191
    .line 192
    move-result-wide v2

    .line 193
    invoke-virtual {p0, v2, v3}, Liz4;->setDataSize(J)V

    .line 194
    .line 195
    .line 196
    invoke-static {v1}, Lorg/swiftapps/swiftbackup/compress/Packer;->c(Lq63;)Li40;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    if-eqz v1, :cond_6

    .line 201
    .line 202
    iget-boolean v2, v1, Li40;->c:Z

    .line 203
    .line 204
    invoke-virtual {p0, v2}, Liz4;->setDataEncrypted(Z)V

    .line 205
    .line 206
    .line 207
    iget-object v1, v1, Li40;->d:Ljava/lang/String;

    .line 208
    .line 209
    if-nez v1, :cond_5

    .line 210
    .line 211
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getDataEncryptionMethod()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    :cond_5
    invoke-virtual {p0, v1}, Liz4;->setDataEncryptionInfo(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    :cond_6
    invoke-virtual {p1}, Lhk;->n()Lq63;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    invoke-virtual {v1}, Lq63;->j()Z

    .line 223
    .line 224
    .line 225
    move-result v2

    .line 226
    if-eqz v2, :cond_8

    .line 227
    .line 228
    sget-object v2, Lp93;->a:Lp93;

    .line 229
    .line 230
    invoke-virtual {v1}, Lq63;->v()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v3

    .line 234
    invoke-virtual {v2, v3}, Lp93;->f(Ljava/lang/String;)J

    .line 235
    .line 236
    .line 237
    move-result-wide v2

    .line 238
    invoke-virtual {p0, v2, v3}, Liz4;->setExtDataSize(J)V

    .line 239
    .line 240
    .line 241
    invoke-static {v1}, Lorg/swiftapps/swiftbackup/compress/Packer;->c(Lq63;)Li40;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    if-eqz v1, :cond_8

    .line 246
    .line 247
    iget-boolean v2, v1, Li40;->c:Z

    .line 248
    .line 249
    invoke-virtual {p0, v2}, Liz4;->setExtDataEncrypted(Z)V

    .line 250
    .line 251
    .line 252
    iget-object v1, v1, Li40;->d:Ljava/lang/String;

    .line 253
    .line 254
    if-nez v1, :cond_7

    .line 255
    .line 256
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getExtDataEncryptionMethod()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    :cond_7
    invoke-virtual {p0, v1}, Liz4;->setExtDataEncryptionInfo(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    :cond_8
    invoke-virtual {p1}, Lhk;->q()Lq63;

    .line 264
    .line 265
    .line 266
    move-result-object v1

    .line 267
    invoke-virtual {v1}, Lq63;->j()Z

    .line 268
    .line 269
    .line 270
    move-result v2

    .line 271
    if-eqz v2, :cond_a

    .line 272
    .line 273
    sget-object v2, Lp93;->a:Lp93;

    .line 274
    .line 275
    invoke-virtual {v1}, Lq63;->v()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v3

    .line 279
    invoke-virtual {v2, v3}, Lp93;->f(Ljava/lang/String;)J

    .line 280
    .line 281
    .line 282
    move-result-wide v2

    .line 283
    invoke-virtual {p0, v2, v3}, Liz4;->setMediaSize(J)V

    .line 284
    .line 285
    .line 286
    invoke-static {v1}, Lorg/swiftapps/swiftbackup/compress/Packer;->c(Lq63;)Li40;

    .line 287
    .line 288
    .line 289
    move-result-object v1

    .line 290
    if-eqz v1, :cond_a

    .line 291
    .line 292
    iget-boolean v2, v1, Li40;->c:Z

    .line 293
    .line 294
    invoke-virtual {p0, v2}, Liz4;->setMediaEncrypted(Z)V

    .line 295
    .line 296
    .line 297
    iget-object v1, v1, Li40;->d:Ljava/lang/String;

    .line 298
    .line 299
    if-nez v1, :cond_9

    .line 300
    .line 301
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getMediaEncryptionMethod()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v1

    .line 305
    :cond_9
    invoke-virtual {p0, v1}, Liz4;->setMediaEncryptionInfo(Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    :cond_a
    invoke-virtual {p1}, Lhk;->m()Lq63;

    .line 309
    .line 310
    .line 311
    move-result-object p1

    .line 312
    invoke-virtual {p1}, Lq63;->j()Z

    .line 313
    .line 314
    .line 315
    move-result v0

    .line 316
    if-eqz v0, :cond_b

    .line 317
    .line 318
    sget-object v0, Lp93;->a:Lp93;

    .line 319
    .line 320
    invoke-virtual {p1}, Lq63;->v()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object p1

    .line 324
    invoke-virtual {v0, p1}, Lp93;->f(Ljava/lang/String;)J

    .line 325
    .line 326
    .line 327
    move-result-wide v0

    .line 328
    invoke-virtual {p0, v0, v1}, Liz4;->setExpansionSize(J)V

    .line 329
    .line 330
    .line 331
    :cond_b
    invoke-virtual {p0}, Liz4;->getApkSize()J

    .line 332
    .line 333
    .line 334
    move-result-wide v0

    .line 335
    invoke-virtual {p0}, Liz4;->getSplitsApkSize()J

    .line 336
    .line 337
    .line 338
    move-result-wide v2

    .line 339
    add-long/2addr v2, v0

    .line 340
    invoke-virtual {p0}, Liz4;->getSharedLibsSize()J

    .line 341
    .line 342
    .line 343
    move-result-wide v0

    .line 344
    add-long/2addr v0, v2

    .line 345
    invoke-virtual {p0}, Liz4;->getDataSize()J

    .line 346
    .line 347
    .line 348
    move-result-wide v2

    .line 349
    add-long/2addr v2, v0

    .line 350
    invoke-virtual {p0}, Liz4;->getExtDataSize()J

    .line 351
    .line 352
    .line 353
    move-result-wide v0

    .line 354
    add-long/2addr v0, v2

    .line 355
    invoke-virtual {p0}, Liz4;->getMediaSize()J

    .line 356
    .line 357
    .line 358
    move-result-wide v2

    .line 359
    add-long/2addr v2, v0

    .line 360
    invoke-virtual {p0}, Liz4;->getExpansionSize()J

    .line 361
    .line 362
    .line 363
    move-result-wide v0

    .line 364
    add-long/2addr v0, v2

    .line 365
    invoke-virtual {p0, v0, v1}, Liz4;->setTotalSize(J)V

    .line 366
    .line 367
    .line 368
    :cond_c
    return-object p0
.end method
