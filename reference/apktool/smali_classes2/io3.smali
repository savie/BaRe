.class public final Lio3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lbo3;

.field public final b:Lqp3;

.field public final c:Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

.field public final d:Lkj3;

.field public final e:Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

.field public final f:Lfo3;

.field public final g:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public h:Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

.field public i:Z

.field public final j:Lho3;

.field public k:Ldk3;


# direct methods
.method public constructor <init>(Lbo3;Lqp3;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object v1, v0, Lio3;->a:Lbo3;

    .line 9
    .line 10
    move-object/from16 v2, p2

    .line 11
    .line 12
    iput-object v2, v0, Lio3;->b:Lqp3;

    .line 13
    .line 14
    iget-object v2, v1, Lbo3;->a:Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 15
    .line 16
    iput-object v2, v0, Lio3;->c:Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 17
    .line 18
    iget-object v1, v1, Lbo3;->d:Lkj3;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    if-eqz v1, :cond_10

    .line 22
    .line 23
    iput-object v1, v0, Lio3;->d:Lkj3;

    .line 24
    .line 25
    invoke-virtual {v1}, Lkj3;->h()Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    const-string v4, "Required value was null."

    .line 30
    .line 31
    if-eqz v3, :cond_f

    .line 32
    .line 33
    iput-object v3, v0, Lio3;->e:Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 34
    .line 35
    invoke-virtual {v1}, Lkj3;->c()Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$BaseBackup;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$FolderLocalSnapshot;->exists()Z

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-eqz v5, :cond_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    move-object v3, v2

    .line 47
    :goto_0
    invoke-virtual {v1}, Lkj3;->a()Ljava/util/ArrayList;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    iget-object v10, v1, Lkj3;->a:Ljava/lang/String;

    .line 52
    .line 53
    const/4 v12, 0x1

    .line 54
    const/4 v13, 0x0

    .line 55
    if-eqz v3, :cond_3

    .line 56
    .line 57
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    new-instance v6, Lrf8;

    .line 61
    .line 62
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$FolderLocalSnapshot;->getBackupFile()Lq63;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    sget-object v14, Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;->WIFI:Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;

    .line 67
    .line 68
    if-nez v14, :cond_1

    .line 69
    .line 70
    move v11, v12

    .line 71
    goto :goto_1

    .line 72
    :cond_1
    move v11, v13

    .line 73
    :goto_1
    const/16 v8, 0x1e

    .line 74
    .line 75
    const/4 v9, 0x1

    .line 76
    invoke-direct/range {v6 .. v11}, Lrf8;-><init>(Lq63;IZLjava/lang/String;Z)V

    .line 77
    .line 78
    .line 79
    move-object v15, v6

    .line 80
    new-instance v6, Lrf8;

    .line 81
    .line 82
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$FolderLocalSnapshot;->getManifestFile()Lq63;

    .line 83
    .line 84
    .line 85
    move-result-object v7

    .line 86
    if-nez v14, :cond_2

    .line 87
    .line 88
    move v11, v12

    .line 89
    goto :goto_2

    .line 90
    :cond_2
    move v11, v13

    .line 91
    :goto_2
    const/16 v8, 0x1f

    .line 92
    .line 93
    const/4 v9, 0x1

    .line 94
    invoke-direct/range {v6 .. v11}, Lrf8;-><init>(Lq63;IZLjava/lang/String;Z)V

    .line 95
    .line 96
    .line 97
    filled-new-array {v15, v6}, [Lrf8;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-static {v3}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    move-object/from16 v18, v3

    .line 106
    .line 107
    goto :goto_3

    .line 108
    :cond_3
    move-object/from16 v18, v2

    .line 109
    .line 110
    :goto_3
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    if-eqz v5, :cond_9

    .line 114
    .line 115
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    if-eqz v3, :cond_4

    .line 120
    .line 121
    goto :goto_8

    .line 122
    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    .line 123
    .line 124
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 132
    .line 133
    .line 134
    move-result v6

    .line 135
    if-eqz v6, :cond_8

    .line 136
    .line 137
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v6

    .line 141
    move-object v14, v6

    .line 142
    check-cast v14, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$IncrementalBackup;

    .line 143
    .line 144
    invoke-virtual {v14}, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$FolderLocalSnapshot;->exists()Z

    .line 145
    .line 146
    .line 147
    move-result v6

    .line 148
    if-eqz v6, :cond_7

    .line 149
    .line 150
    new-instance v6, Lrf8;

    .line 151
    .line 152
    invoke-virtual {v14}, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$FolderLocalSnapshot;->getBackupFile()Lq63;

    .line 153
    .line 154
    .line 155
    move-result-object v7

    .line 156
    sget-object v15, Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;->WIFI:Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;

    .line 157
    .line 158
    if-nez v15, :cond_5

    .line 159
    .line 160
    move v11, v12

    .line 161
    goto :goto_5

    .line 162
    :cond_5
    move v11, v13

    .line 163
    :goto_5
    const/16 v8, 0x20

    .line 164
    .line 165
    const/4 v9, 0x1

    .line 166
    invoke-direct/range {v6 .. v11}, Lrf8;-><init>(Lq63;IZLjava/lang/String;Z)V

    .line 167
    .line 168
    .line 169
    new-instance v7, Lrf8;

    .line 170
    .line 171
    move-object v8, v6

    .line 172
    move-object v6, v7

    .line 173
    invoke-virtual {v14}, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$FolderLocalSnapshot;->getManifestFile()Lq63;

    .line 174
    .line 175
    .line 176
    move-result-object v7

    .line 177
    if-nez v15, :cond_6

    .line 178
    .line 179
    move v11, v12

    .line 180
    :goto_6
    move-object v9, v8

    .line 181
    goto :goto_7

    .line 182
    :cond_6
    move v11, v13

    .line 183
    goto :goto_6

    .line 184
    :goto_7
    const/16 v8, 0x21

    .line 185
    .line 186
    move-object v14, v9

    .line 187
    const/4 v9, 0x1

    .line 188
    invoke-direct/range {v6 .. v11}, Lrf8;-><init>(Lq63;IZLjava/lang/String;Z)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    goto :goto_4

    .line 198
    :cond_7
    const-string v0, "Incremental backup doesn\'t exist or is missing files: "

    .line 199
    .line 200
    invoke-static {v14, v0}, Lq;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    throw v2

    .line 204
    :cond_8
    move-object/from16 v17, v3

    .line 205
    .line 206
    goto :goto_9

    .line 207
    :cond_9
    :goto_8
    move-object/from16 v17, v2

    .line 208
    .line 209
    :goto_9
    invoke-virtual {v1}, Lkj3;->h()Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 210
    .line 211
    .line 212
    move-result-object v19

    .line 213
    if-eqz v19, :cond_e

    .line 214
    .line 215
    const-wide/16 v3, 0x0

    .line 216
    .line 217
    if-eqz v18, :cond_b

    .line 218
    .line 219
    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    move-wide v5, v3

    .line 224
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 225
    .line 226
    .line 227
    move-result v7

    .line 228
    if-eqz v7, :cond_a

    .line 229
    .line 230
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v7

    .line 234
    check-cast v7, Lrf8;

    .line 235
    .line 236
    invoke-virtual {v7}, Lrf8;->a()J

    .line 237
    .line 238
    .line 239
    move-result-wide v7

    .line 240
    add-long/2addr v5, v7

    .line 241
    goto :goto_a

    .line 242
    :cond_a
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    goto :goto_b

    .line 247
    :cond_b
    move-object v1, v2

    .line 248
    :goto_b
    invoke-static {v1}, Lio4;->h(Ljava/lang/Long;)J

    .line 249
    .line 250
    .line 251
    move-result-wide v5

    .line 252
    if-eqz v17, :cond_d

    .line 253
    .line 254
    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 259
    .line 260
    .line 261
    move-result v2

    .line 262
    if-eqz v2, :cond_c

    .line 263
    .line 264
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v2

    .line 268
    check-cast v2, Lrf8;

    .line 269
    .line 270
    invoke-virtual {v2}, Lrf8;->a()J

    .line 271
    .line 272
    .line 273
    move-result-wide v7

    .line 274
    add-long/2addr v3, v7

    .line 275
    goto :goto_c

    .line 276
    :cond_c
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 277
    .line 278
    .line 279
    move-result-object v2

    .line 280
    :cond_d
    invoke-static {v2}, Lio4;->h(Ljava/lang/Long;)J

    .line 281
    .line 282
    .line 283
    move-result-wide v1

    .line 284
    add-long v15, v1, v5

    .line 285
    .line 286
    new-instance v14, Lfo3;

    .line 287
    .line 288
    invoke-direct/range {v14 .. v19}, Lfo3;-><init>(JLjava/util/ArrayList;Ljava/util/List;Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;)V

    .line 289
    .line 290
    .line 291
    iput-object v14, v0, Lio3;->f:Lfo3;

    .line 292
    .line 293
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 294
    .line 295
    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 296
    .line 297
    .line 298
    iput-object v1, v0, Lio3;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 299
    .line 300
    new-instance v1, Lho3;

    .line 301
    .line 302
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 303
    .line 304
    .line 305
    iput-object v1, v0, Lio3;->j:Lho3;

    .line 306
    .line 307
    return-void

    .line 308
    :cond_e
    invoke-static {v4}, Ll0;->e(Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    throw v2

    .line 312
    :cond_f
    invoke-static {v4}, Lc6;->f(Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    throw v2

    .line 316
    :cond_10
    const-string v0, "props.backupToUpload should not be null"

    .line 317
    .line 318
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    throw v2
.end method


# virtual methods
.method public final a(Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 6

    .line 1
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 2
    .line 3
    const/4 v4, 0x4

    .line 4
    const/4 v5, 0x0

    .line 5
    const-string v1, "FolderUploadTask"

    .line 6
    .line 7
    const-string v2, "Cleaning uploaded files"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static/range {v0 .. v5}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Ljava/util/Map$Entry;

    .line 37
    .line 38
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Lzf8;

    .line 43
    .line 44
    iget-object v1, v1, Lzf8;->a:Ljava/lang/String;

    .line 45
    .line 46
    if-eqz v1, :cond_0

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    invoke-static {v0}, Leq3;->p(Ljava/util/ArrayList;)Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_2
    sget-object v0, Ltb1;->a:Ltb1;

    .line 64
    .line 65
    invoke-static {}, Lqb1;->c()Ltb1;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    new-instance v1, Ljd1;

    .line 70
    .line 71
    new-instance v2, Ljava/util/LinkedHashSet;

    .line 72
    .line 73
    invoke-direct {v2, p1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 74
    .line 75
    .line 76
    invoke-static {v2}, Lel1;->v1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-direct {v1, p1}, Ljd1;-><init>(Ljava/util/List;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ltb1;->b(Lzv1;)Lxh2;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {p1}, Lxh2;->c()Ljq6;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {p1}, Ljq6;->c()Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_4

    .line 96
    .line 97
    invoke-virtual {p1}, Ljq6;->b()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 102
    .line 103
    const-string v1, "Error cleaning uploaded files: "

    .line 104
    .line 105
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    const/4 v4, 0x4

    .line 110
    const/4 v5, 0x0

    .line 111
    const-string v1, "FolderUploadTask"

    .line 112
    .line 113
    const/4 v3, 0x0

    .line 114
    invoke-static/range {v0 .. v5}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    iget-object v0, p0, Lio3;->j:Lho3;

    .line 118
    .line 119
    iget-object v1, v0, Lho3;->a:Ljava/lang/String;

    .line 120
    .line 121
    if-eqz v1, :cond_3

    .line 122
    .line 123
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    if-nez v1, :cond_4

    .line 128
    .line 129
    :cond_3
    iget-object p0, p0, Lio3;->e:Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 130
    .line 131
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->getFolderItem()Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getDisplayName()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    const-string v1, ": "

    .line 140
    .line 141
    invoke-static {p0, v1, p1}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    iput-object p0, v0, Lho3;->a:Ljava/lang/String;

    .line 146
    .line 147
    :cond_4
    :goto_1
    return-void
.end method
