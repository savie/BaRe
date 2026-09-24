.class public final Lbl3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lqp3;

.field public final b:Lvy7;

.field public c:Lgz7;


# direct methods
.method public constructor <init>(Lqp3;Lvy7;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lbl3;->a:Lqp3;

    .line 8
    .line 9
    iput-object p2, p0, Lbl3;->b:Lvy7;

    .line 10
    .line 11
    sget-object p1, Lgz7;->WAITING:Lgz7;

    .line 12
    .line 13
    iput-object p1, p0, Lbl3;->c:Lgz7;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    sget-object v0, Lgz7;->RUNNING:Lgz7;

    .line 4
    .line 5
    iput-object v0, v1, Lbl3;->c:Lgz7;

    .line 6
    .line 7
    iget-object v2, v1, Lbl3;->a:Lqp3;

    .line 8
    .line 9
    iget-object v0, v2, Lqp3;->m:Ljava/util/List;

    .line 10
    .line 11
    new-instance v3, Ljava/util/ArrayList;

    .line 12
    .line 13
    const/16 v4, 0xa

    .line 14
    .line 15
    invoke-static {v0, v4}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 20
    .line 21
    .line 22
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-eqz v4, :cond_0

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    check-cast v4, Leo3;

    .line 37
    .line 38
    invoke-virtual {v4}, Leo3;->a()Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    const/4 v5, 0x0

    .line 51
    const/4 v6, 0x1

    .line 52
    move v0, v5

    .line 53
    move v7, v6

    .line 54
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v8

    .line 58
    if-eqz v8, :cond_9

    .line 59
    .line 60
    add-int/lit8 v8, v0, 0x1

    .line 61
    .line 62
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    move-object v9, v0

    .line 67
    check-cast v9, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 68
    .line 69
    iget-object v0, v1, Lbl3;->c:Lgz7;

    .line 70
    .line 71
    invoke-virtual {v0}, Lgz7;->isCancelled()Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_1

    .line 76
    .line 77
    goto/16 :goto_6

    .line 78
    .line 79
    :cond_1
    invoke-virtual {v2, v9}, Lqp3;->p(Lorg/swiftapps/swiftbackup/folders/data/FolderItem;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    new-instance v7, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v10, "/"

    .line 95
    .line 96
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 107
    .line 108
    .line 109
    move-result v7

    .line 110
    if-le v7, v6, :cond_2

    .line 111
    .line 112
    iget-object v7, v2, Lpw6;->d:Lgj5;

    .line 113
    .line 114
    invoke-virtual {v7, v0}, Lzy4;->i(Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    :cond_2
    sget-object v10, Lvr6;->INSTANCE:Lvr6;

    .line 118
    .line 119
    const-string v7, "Processing "

    .line 120
    .line 121
    invoke-virtual {v7, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v12

    .line 125
    const/4 v14, 0x4

    .line 126
    const/4 v15, 0x0

    .line 127
    const-string v11, "FolderBackupDeleteHelper"

    .line 128
    .line 129
    const/4 v13, 0x0

    .line 130
    invoke-static/range {v10 .. v15}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    iget-object v0, v2, Lpw6;->i:Lex6;

    .line 134
    .line 135
    sget-object v7, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 136
    .line 137
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 138
    .line 139
    .line 140
    move-result-object v7

    .line 141
    const v11, 0x7f1301e6

    .line 142
    .line 143
    .line 144
    invoke-virtual {v7, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v7

    .line 148
    invoke-virtual {v0, v7}, Lzy4;->i(Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    iget-object v0, v1, Lbl3;->b:Lvy7;

    .line 152
    .line 153
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 154
    .line 155
    .line 156
    new-instance v7, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    const-string v11, "Deleting backup file(s) for "

    .line 159
    .line 160
    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    const-string v11, " with params="

    .line 167
    .line 168
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v12

    .line 178
    const-string v11, "FolderBackupDeleteHelper"

    .line 179
    .line 180
    invoke-static/range {v10 .. v15}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    new-instance v7, Ljava/util/ArrayList;

    .line 184
    .line 185
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 186
    .line 187
    .line 188
    iget-object v10, v0, Lvy7;->f:Ljava/util/List;

    .line 189
    .line 190
    sget-object v0, Lq05;->DEVICE:Lq05;

    .line 191
    .line 192
    invoke-interface {v10, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result v0

    .line 196
    const-string v11, "Error deleting backup for "

    .line 197
    .line 198
    if-eqz v0, :cond_3

    .line 199
    .line 200
    :try_start_0
    invoke-static {v9, v5}, Lal3;->b(Lorg/swiftapps/swiftbackup/folders/data/FolderItem;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    .line 202
    .line 203
    move v0, v6

    .line 204
    goto :goto_2

    .line 205
    :catch_0
    move-exception v0

    .line 206
    move-object v15, v0

    .line 207
    sget-object v12, Lvr6;->INSTANCE:Lvr6;

    .line 208
    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    .line 210
    .line 211
    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v14

    .line 221
    const/16 v17, 0x8

    .line 222
    .line 223
    const/16 v18, 0x0

    .line 224
    .line 225
    const-string v13, "FolderBackupDeleteHelper"

    .line 226
    .line 227
    const/16 v16, 0x0

    .line 228
    .line 229
    invoke-static/range {v12 .. v18}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 230
    .line 231
    .line 232
    move v0, v5

    .line 233
    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    :cond_3
    sget-object v0, Lq05;->CLOUD:Lq05;

    .line 241
    .line 242
    invoke-interface {v10, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    move-result v0

    .line 246
    if-eqz v0, :cond_5

    .line 247
    .line 248
    :try_start_1
    invoke-virtual {v9}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->fetchCloudBackup()Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    if-nez v0, :cond_4

    .line 253
    .line 254
    :goto_3
    move v0, v6

    .line 255
    goto :goto_4

    .line 256
    :cond_4
    invoke-static {v0}, Lal3;->a(Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 257
    .line 258
    .line 259
    goto :goto_3

    .line 260
    :catch_1
    move-exception v0

    .line 261
    move-object v15, v0

    .line 262
    sget-object v12, Lvr6;->INSTANCE:Lvr6;

    .line 263
    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    .line 265
    .line 266
    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v14

    .line 276
    const/16 v17, 0x8

    .line 277
    .line 278
    const/16 v18, 0x0

    .line 279
    .line 280
    const-string v13, "FolderBackupDeleteHelper"

    .line 281
    .line 282
    const/16 v16, 0x0

    .line 283
    .line 284
    invoke-static/range {v12 .. v18}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 285
    .line 286
    .line 287
    move v0, v5

    .line 288
    :goto_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    .line 294
    .line 295
    :cond_5
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 296
    .line 297
    .line 298
    move-result v0

    .line 299
    if-eqz v0, :cond_7

    .line 300
    .line 301
    :cond_6
    move v7, v6

    .line 302
    goto :goto_5

    .line 303
    :cond_7
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 308
    .line 309
    .line 310
    move-result v7

    .line 311
    if-eqz v7, :cond_6

    .line 312
    .line 313
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    move-result-object v7

    .line 317
    check-cast v7, Ljava/lang/Boolean;

    .line 318
    .line 319
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 320
    .line 321
    .line 322
    move-result v7

    .line 323
    if-nez v7, :cond_8

    .line 324
    .line 325
    move v7, v5

    .line 326
    :goto_5
    mul-int/lit8 v0, v8, 0x64

    .line 327
    .line 328
    invoke-virtual {v2, v0}, Lpw6;->n(I)V

    .line 329
    .line 330
    .line 331
    move v0, v8

    .line 332
    goto/16 :goto_1

    .line 333
    .line 334
    :cond_9
    :goto_6
    sget-object v0, Lgz7;->COMPLETE:Lgz7;

    .line 335
    .line 336
    iput-object v0, v1, Lbl3;->c:Lgz7;

    .line 337
    .line 338
    return v7
.end method
