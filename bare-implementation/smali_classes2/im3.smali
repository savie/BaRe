.class public final Lim3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lqp3;

.field public final b:Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

.field public final c:Lem3;

.field public final d:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public e:Z

.field public final f:Lhm3;

.field public g:Lpv;


# direct methods
.method public constructor <init>(Lqp3;Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v6, p2

    .line 4
    .line 5
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    move-object/from16 v1, p1

    .line 12
    .line 13
    iput-object v1, v0, Lim3;->a:Lqp3;

    .line 14
    .line 15
    iput-object v6, v0, Lim3;->b:Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 16
    .line 17
    invoke-virtual {v6}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->hasValidCloudLinks()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x0

    .line 22
    if-eqz v1, :cond_9

    .line 23
    .line 24
    invoke-virtual {v6}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->getFolderItem()Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const/4 v3, 0x1

    .line 29
    invoke-static {v1, v3, v3}, Lorg/swiftapps/swiftbackup/folders/data/a;->a(Lorg/swiftapps/swiftbackup/folders/data/FolderItem;ZZ)Lkj3;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v6}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->getBaseBackup()Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    if-eqz v3, :cond_8

    .line 38
    .line 39
    invoke-virtual {v3}, Lvm3;->isValid()Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-eqz v4, :cond_7

    .line 44
    .line 45
    new-instance v7, Lfo2;

    .line 46
    .line 47
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;->getBackupLink()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v8

    .line 51
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;->getBackupSize()Ljava/lang/Long;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    invoke-static {v4}, Lio4;->h(Ljava/lang/Long;)J

    .line 56
    .line 57
    .line 58
    move-result-wide v10

    .line 59
    invoke-virtual {v1}, Lkj3;->c()Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$BaseBackup;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$FolderLocalSnapshot;->getBackupFile()Lq63;

    .line 64
    .line 65
    .line 66
    move-result-object v12

    .line 67
    const/16 v9, 0x1e

    .line 68
    .line 69
    invoke-direct/range {v7 .. v12}, Lfo2;-><init>(Ljava/lang/String;IJLq63;)V

    .line 70
    .line 71
    .line 72
    new-instance v8, Lfo2;

    .line 73
    .line 74
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;->getManifestLink()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v9

    .line 78
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$BaseBackup;->getManifestSize()Ljava/lang/Long;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-static {v3}, Lio4;->h(Ljava/lang/Long;)J

    .line 83
    .line 84
    .line 85
    move-result-wide v11

    .line 86
    invoke-virtual {v1}, Lkj3;->c()Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$BaseBackup;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$FolderLocalSnapshot;->getManifestFile()Lq63;

    .line 91
    .line 92
    .line 93
    move-result-object v13

    .line 94
    const/16 v10, 0x1f

    .line 95
    .line 96
    invoke-direct/range {v8 .. v13}, Lfo2;-><init>(Ljava/lang/String;IJLq63;)V

    .line 97
    .line 98
    .line 99
    filled-new-array {v7, v8}, [Lfo2;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    invoke-static {v3}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    invoke-virtual {v6}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->getIncrementalBackups()Ljava/util/Map;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    if-eqz v3, :cond_5

    .line 112
    .line 113
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    if-eqz v3, :cond_5

    .line 118
    .line 119
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 120
    .line 121
    .line 122
    move-result v4

    .line 123
    if-nez v4, :cond_0

    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_0
    move-object v3, v2

    .line 127
    :goto_0
    if-nez v3, :cond_1

    .line 128
    .line 129
    goto/16 :goto_3

    .line 130
    .line 131
    :cond_1
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 136
    .line 137
    .line 138
    move-result v7

    .line 139
    if-eqz v7, :cond_3

    .line 140
    .line 141
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v7

    .line 145
    check-cast v7, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$IncrementalBackup;

    .line 146
    .line 147
    invoke-virtual {v7}, Lvm3;->isValid()Z

    .line 148
    .line 149
    .line 150
    move-result v8

    .line 151
    if-eqz v8, :cond_2

    .line 152
    .line 153
    goto :goto_1

    .line 154
    :cond_2
    const-string v0, "Incremental backup doesn\'t exist or is missing files: "

    .line 155
    .line 156
    invoke-static {v7, v0}, Lq;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    throw v2

    .line 160
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    .line 161
    .line 162
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .line 164
    .line 165
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 170
    .line 171
    .line 172
    move-result v7

    .line 173
    if-eqz v7, :cond_6

    .line 174
    .line 175
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v7

    .line 179
    check-cast v7, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$IncrementalBackup;

    .line 180
    .line 181
    invoke-virtual {v7}, Lvm3;->isValid()Z

    .line 182
    .line 183
    .line 184
    move-result v8

    .line 185
    if-eqz v8, :cond_4

    .line 186
    .line 187
    invoke-virtual {v7}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$IncrementalBackup;->getTimestamp()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v8

    .line 191
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 192
    .line 193
    .line 194
    new-instance v9, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$IncrementalBackup;

    .line 195
    .line 196
    invoke-virtual {v1}, Lkj3;->b()Lq63;

    .line 197
    .line 198
    .line 199
    move-result-object v10

    .line 200
    invoke-direct {v9, v10, v8}, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$IncrementalBackup;-><init>(Lq63;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    new-instance v11, Lfo2;

    .line 204
    .line 205
    invoke-virtual {v7}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$IncrementalBackup;->getBackupLink()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v12

    .line 209
    invoke-virtual {v7}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$IncrementalBackup;->getBackupSize()Ljava/lang/Long;

    .line 210
    .line 211
    .line 212
    move-result-object v8

    .line 213
    invoke-static {v8}, Lio4;->h(Ljava/lang/Long;)J

    .line 214
    .line 215
    .line 216
    move-result-wide v14

    .line 217
    invoke-virtual {v9}, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$FolderLocalSnapshot;->getBackupFile()Lq63;

    .line 218
    .line 219
    .line 220
    move-result-object v16

    .line 221
    const/16 v13, 0x20

    .line 222
    .line 223
    invoke-direct/range {v11 .. v16}, Lfo2;-><init>(Ljava/lang/String;IJLq63;)V

    .line 224
    .line 225
    .line 226
    new-instance v12, Lfo2;

    .line 227
    .line 228
    invoke-virtual {v7}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$IncrementalBackup;->getManifestLink()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v13

    .line 232
    invoke-virtual {v7}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata$IncrementalBackup;->getManifestSize()Ljava/lang/Long;

    .line 233
    .line 234
    .line 235
    move-result-object v7

    .line 236
    invoke-static {v7}, Lio4;->h(Ljava/lang/Long;)J

    .line 237
    .line 238
    .line 239
    move-result-wide v15

    .line 240
    invoke-virtual {v9}, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$FolderLocalSnapshot;->getManifestFile()Lq63;

    .line 241
    .line 242
    .line 243
    move-result-object v17

    .line 244
    const/16 v14, 0x21

    .line 245
    .line 246
    invoke-direct/range {v12 .. v17}, Lfo2;-><init>(Ljava/lang/String;IJLq63;)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    goto :goto_2

    .line 256
    :cond_4
    const-string v0, "Invalid incremental backup: "

    .line 257
    .line 258
    invoke-static {v7, v0}, Lq;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    throw v2

    .line 262
    :cond_5
    :goto_3
    move-object v4, v2

    .line 263
    :cond_6
    new-instance v1, Lem3;

    .line 264
    .line 265
    invoke-virtual {v6}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->getTotalSize()J

    .line 266
    .line 267
    .line 268
    move-result-wide v2

    .line 269
    invoke-direct/range {v1 .. v6}, Lem3;-><init>(JLjava/util/ArrayList;Ljava/util/List;Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;)V

    .line 270
    .line 271
    .line 272
    iput-object v1, v0, Lim3;->c:Lem3;

    .line 273
    .line 274
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 275
    .line 276
    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 277
    .line 278
    .line 279
    iput-object v1, v0, Lim3;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 280
    .line 281
    new-instance v1, Lhm3;

    .line 282
    .line 283
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 284
    .line 285
    .line 286
    iput-object v1, v0, Lim3;->f:Lhm3;

    .line 287
    .line 288
    return-void

    .line 289
    :cond_7
    const-string v0, "Invalid base backup: "

    .line 290
    .line 291
    invoke-static {v3, v0}, Lq;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    throw v2

    .line 295
    :cond_8
    const-string v0, "Required value was null."

    .line 296
    .line 297
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    throw v2

    .line 301
    :cond_9
    const-string v0, "No valid cloud links to construct FolderDownload from metadata: "

    .line 302
    .line 303
    invoke-static {v6, v0}, Lq;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    throw v2
.end method
