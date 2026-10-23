.class public abstract Lsk3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Lgv7;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ldl;

    .line 2
    .line 3
    const/16 v1, 0xd

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ldl;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lgv7;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lsk3;->a:Lgv7;

    .line 14
    .line 15
    return-void
.end method

.method public static a(Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;)Lq63;
    .locals 12

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 5
    .line 6
    const/4 v4, 0x4

    .line 7
    const/4 v5, 0x0

    .line 8
    const-string v1, "FolderCloudManifestCache"

    .line 9
    .line 10
    const-string v2, "Downloading latest manifest file from cloud"

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-static/range {v0 .. v5}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->hasValidCloudLinks()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x0

    .line 21
    if-eqz v0, :cond_f

    .line 22
    .line 23
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->getIncrementalBackups()Ljava/util/Map;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_6

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_0
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->getIncrementalBackups()Ljava/util/Map;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_5

    .line 53
    .line 54
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-nez v3, :cond_1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    move-object v3, v2

    .line 66
    check-cast v3, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$IncrementalBackup;

    .line 67
    .line 68
    invoke-virtual {v3}, Lvm3;->getDate()J

    .line 69
    .line 70
    .line 71
    move-result-wide v3

    .line 72
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    move-object v6, v5

    .line 77
    check-cast v6, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$IncrementalBackup;

    .line 78
    .line 79
    invoke-virtual {v6}, Lvm3;->getDate()J

    .line 80
    .line 81
    .line 82
    move-result-wide v6

    .line 83
    cmp-long v8, v3, v6

    .line 84
    .line 85
    if-gez v8, :cond_3

    .line 86
    .line 87
    move-object v2, v5

    .line 88
    move-wide v3, v6

    .line 89
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 90
    .line 91
    .line 92
    move-result v5

    .line 93
    if-nez v5, :cond_2

    .line 94
    .line 95
    :goto_0
    check-cast v2, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$IncrementalBackup;

    .line 96
    .line 97
    invoke-virtual {v2}, Lvm3;->isValid()Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-eqz v0, :cond_4

    .line 102
    .line 103
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$IncrementalBackup;->getManifestLink()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$IncrementalBackup;->getManifestSize()Ljava/lang/Long;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    const/16 v3, 0x21

    .line 112
    .line 113
    move-object v5, v0

    .line 114
    :goto_1
    move v6, v3

    .line 115
    goto :goto_3

    .line 116
    :cond_4
    const-string p0, "Invalid incremental backup: "

    .line 117
    .line 118
    invoke-static {v2, p0}, Lq;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    return-object v1

    .line 122
    :cond_5
    invoke-static {}, Lm0;->d()V

    .line 123
    .line 124
    .line 125
    return-object v1

    .line 126
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->getBaseBackup()Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    if-eqz v0, :cond_e

    .line 131
    .line 132
    invoke-virtual {v0}, Lvm3;->isValid()Z

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    const/4 v3, 0x1

    .line 137
    if-ne v2, v3, :cond_e

    .line 138
    .line 139
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;->getManifestLink()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;->getManifestSize()Ljava/lang/Long;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    const/16 v3, 0x1f

    .line 148
    .line 149
    move-object v5, v2

    .line 150
    move-object v2, v0

    .line 151
    goto :goto_1

    .line 152
    :goto_3
    if-eqz v2, :cond_d

    .line 153
    .line 154
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 155
    .line 156
    .line 157
    move-result-wide v3

    .line 158
    const-wide/16 v7, 0x0

    .line 159
    .line 160
    cmp-long v0, v3, v7

    .line 161
    .line 162
    if-lez v0, :cond_d

    .line 163
    .line 164
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->getFolderItem()Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getId()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p0

    .line 172
    invoke-static {p0}, Lsk3;->b(Ljava/lang/String;)Lq63;

    .line 173
    .line 174
    .line 175
    move-result-object v9

    .line 176
    invoke-static {v9}, Lio4;->g(Lq63;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v9}, Lq63;->k()Z

    .line 180
    .line 181
    .line 182
    move-result p0

    .line 183
    if-eqz p0, :cond_8

    .line 184
    .line 185
    invoke-virtual {v9}, Lq63;->A()J

    .line 186
    .line 187
    .line 188
    move-result-wide v3

    .line 189
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 190
    .line 191
    .line 192
    move-result-wide v10

    .line 193
    cmp-long p0, v3, v10

    .line 194
    .line 195
    if-nez p0, :cond_7

    .line 196
    .line 197
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 198
    .line 199
    .line 200
    move-result-object p0

    .line 201
    sget-object v0, Lp93;->a:Lp93;

    .line 202
    .line 203
    invoke-static {p0}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p0

    .line 207
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 208
    .line 209
    const-string v1, "Latest manifest file already downloaded ("

    .line 210
    .line 211
    const-string v2, ")"

    .line 212
    .line 213
    invoke-static {v1, p0, v2}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v2

    .line 217
    const/4 v4, 0x4

    .line 218
    const/4 v5, 0x0

    .line 219
    const-string v1, "FolderCloudManifestCache"

    .line 220
    .line 221
    const/4 v3, 0x0

    .line 222
    invoke-static/range {v0 .. v5}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 223
    .line 224
    .line 225
    return-object v9

    .line 226
    :cond_7
    invoke-virtual {v9}, Lq63;->h()Z

    .line 227
    .line 228
    .line 229
    :cond_8
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 233
    .line 234
    .line 235
    move-result-wide v3

    .line 236
    cmp-long p0, v3, v7

    .line 237
    .line 238
    if-lez p0, :cond_9

    .line 239
    .line 240
    goto :goto_4

    .line 241
    :cond_9
    move-object v2, v1

    .line 242
    :goto_4
    if-eqz v2, :cond_a

    .line 243
    .line 244
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 245
    .line 246
    .line 247
    move-result-wide v2

    .line 248
    :goto_5
    move-wide v7, v2

    .line 249
    goto :goto_6

    .line 250
    :cond_a
    const-wide/16 v2, -0x1

    .line 251
    .line 252
    goto :goto_5

    .line 253
    :goto_6
    new-instance v4, Lfo2;

    .line 254
    .line 255
    invoke-direct/range {v4 .. v9}, Lfo2;-><init>(Ljava/lang/String;IJLq63;)V

    .line 256
    .line 257
    .line 258
    sget-object p0, Ltb1;->a:Ltb1;

    .line 259
    .line 260
    invoke-static {}, Lqb1;->c()Ltb1;

    .line 261
    .line 262
    .line 263
    move-result-object p0

    .line 264
    invoke-virtual {p0, v4}, Ltb1;->c(Lfo2;)Lno2;

    .line 265
    .line 266
    .line 267
    move-result-object p0

    .line 268
    invoke-virtual {p0}, Lno2;->b()Lke;

    .line 269
    .line 270
    .line 271
    move-result-object p0

    .line 272
    invoke-virtual {p0}, Lke;->e()Z

    .line 273
    .line 274
    .line 275
    move-result p0

    .line 276
    if-eqz p0, :cond_c

    .line 277
    .line 278
    invoke-virtual {v9}, Lq63;->k()Z

    .line 279
    .line 280
    .line 281
    move-result p0

    .line 282
    if-eqz p0, :cond_b

    .line 283
    .line 284
    return-object v9

    .line 285
    :cond_b
    invoke-virtual {v9}, Lq63;->v()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object p0

    .line 289
    const-string v0, "Manifest file not found at "

    .line 290
    .line 291
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object p0

    .line 295
    invoke-static {p0}, Lg84;->f(Ljava/lang/Object;)V

    .line 296
    .line 297
    .line 298
    :cond_c
    return-object v1

    .line 299
    :cond_d
    const-string p0, "Check failed."

    .line 300
    .line 301
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    return-object v1

    .line 305
    :cond_e
    const-string p0, "Invalid base backup: "

    .line 306
    .line 307
    invoke-static {v0, p0}, Lq;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    return-object v1

    .line 311
    :cond_f
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->toDisplayString()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object p0

    .line 315
    const-string v0, "FolderMetadata doesn\'t have valid cloud links: "

    .line 316
    .line 317
    invoke-static {v0, p0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object p0

    .line 321
    invoke-static {p0}, Lg84;->f(Ljava/lang/Object;)V

    .line 322
    .line 323
    .line 324
    return-object v1
.end method

.method public static b(Ljava/lang/String;)Lq63;
    .locals 2

    .line 1
    sget-object v0, Lsk3;->a:Lgv7;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lq63;

    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string p0, ".json"

    .line 18
    .line 19
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {v0, p0}, Lq63;->J(Ljava/lang/String;)Lq63;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0
.end method
