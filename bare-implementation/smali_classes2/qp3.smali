.class public final Lqp3;
.super Lpw6;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final m:Ljava/util/List;

.field public final n:Ljava/lang/String;

.field public final o:Lex6;

.field public p:Lek3;

.field public q:Lsn3;

.field public r:Lbl3;


# direct methods
.method public constructor <init>(Ljava/util/List;Lty7;Lpp3;)V
    .locals 1

    .line 1
    invoke-direct {p0, p2, p3}, Lpw6;-><init>(Lcz7;Ldz7;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lqp3;->m:Ljava/util/List;

    .line 5
    .line 6
    const-string p3, "FoldersTask"

    .line 7
    .line 8
    iput-object p3, p0, Lqp3;->n:Ljava/lang/String;

    .line 9
    .line 10
    new-instance p3, Lex6;

    .line 11
    .line 12
    invoke-direct {p3}, Lzy4;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p3, p0, Lqp3;->o:Lex6;

    .line 16
    .line 17
    invoke-virtual {p0}, Lpw6;->g()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    invoke-static {p1}, Lel1;->S0(Ljava/util/List;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Leo3;

    .line 28
    .line 29
    invoke-virtual {v0}, Leo3;->a()Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p3, v0}, Lex6;->k(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-virtual {p0}, Lpw6;->g()Z

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    if-eqz p0, :cond_6

    .line 41
    .line 42
    sget-object p0, Lorg/swiftapps/swiftbackup/common/V;->INSTANCE:Lorg/swiftapps/swiftbackup/common/V;

    .line 43
    .line 44
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/common/V;->getVp()Z

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    if-nez p0, :cond_4

    .line 49
    .line 50
    instance-of p0, p2, Luy7;

    .line 51
    .line 52
    if-nez p0, :cond_1

    .line 53
    .line 54
    instance-of p0, p2, Lwy7;

    .line 55
    .line 56
    if-eqz p0, :cond_4

    .line 57
    .line 58
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    if-eqz p0, :cond_2

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-eqz p1, :cond_4

    .line 74
    .line 75
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    check-cast p1, Leo3;

    .line 80
    .line 81
    invoke-virtual {p1}, Leo3;->b()Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-eqz p1, :cond_3

    .line 86
    .line 87
    const/4 p0, 0x1

    .line 88
    goto :goto_1

    .line 89
    :cond_4
    :goto_0
    const/4 p0, 0x0

    .line 90
    :goto_1
    sget-object p1, Lre3;->a:Lzc2;

    .line 91
    .line 92
    if-eqz p0, :cond_5

    .line 93
    .line 94
    const-string p0, "novp"

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_5
    const/4 p0, 0x0

    .line 98
    :goto_2
    new-instance p1, Lqe3;

    .line 99
    .line 100
    const-string p2, "batch_folders_cloud"

    .line 101
    .line 102
    invoke-direct {p1, p2, p0}, Lqe3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    :try_start_0
    invoke-virtual {p1}, Lqe3;->invoke()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .line 107
    .line 108
    :catch_0
    :cond_6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 11

    .line 1
    iget-object v0, p0, Lqp3;->p:Lek3;

    .line 2
    .line 3
    const-string v1, ", may result in unknown errors"

    .line 4
    .line 5
    const-string v2, "Closing connection with "

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    if-eqz v0, :cond_3

    .line 9
    .line 10
    iput-boolean v3, v0, Lek3;->e:Z

    .line 11
    .line 12
    iget-object v4, v0, Lek3;->b:Lhk3;

    .line 13
    .line 14
    if-eqz v4, :cond_0

    .line 15
    .line 16
    sget-object v5, Lvr6;->INSTANCE:Lvr6;

    .line 17
    .line 18
    const/4 v9, 0x4

    .line 19
    const/4 v10, 0x0

    .line 20
    const-string v6, "FolderBackupTask"

    .line 21
    .line 22
    const-string v7, "Backup was cancelled"

    .line 23
    .line 24
    const/4 v8, 0x0

    .line 25
    invoke-static/range {v5 .. v10}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    iput-boolean v3, v4, Lhk3;->c:Z

    .line 29
    .line 30
    :cond_0
    iget-object v0, v0, Lek3;->c:Lio3;

    .line 31
    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    iput-boolean v3, v0, Lio3;->i:Z

    .line 35
    .line 36
    iget-object v0, v0, Lio3;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 37
    .line 38
    invoke-static {v0}, Lel1;->Q0(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    new-instance v4, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    if-eqz v5, :cond_2

    .line 56
    .line 57
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    move-object v6, v5

    .line 62
    check-cast v6, Lag8;

    .line 63
    .line 64
    iget-object v6, v6, Lag8;->c:Lgz7;

    .line 65
    .line 66
    invoke-virtual {v6}, Lgz7;->isRunning()Z

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    if-eqz v6, :cond_1

    .line 71
    .line 72
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-nez v0, :cond_3

    .line 81
    .line 82
    sget-object v5, Lvr6;->INSTANCE:Lvr6;

    .line 83
    .line 84
    const/4 v9, 0x4

    .line 85
    const/4 v10, 0x0

    .line 86
    const-string v6, "FolderUploadTask"

    .line 87
    .line 88
    const-string v7, "User cancelled the upload process"

    .line 89
    .line 90
    const/4 v8, 0x0

    .line 91
    invoke-static/range {v5 .. v10}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    sget-object v0, Ltb1;->a:Ltb1;

    .line 95
    .line 96
    invoke-static {}, Lqb1;->f()Ldd1;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {v0}, Ldd1;->getDisplayNameEn()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-static {v2, v0, v1}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v7

    .line 108
    const-string v6, "FolderUploadTask"

    .line 109
    .line 110
    invoke-static/range {v5 .. v10}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    if-eqz v4, :cond_3

    .line 122
    .line 123
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    check-cast v4, Lag8;

    .line 128
    .line 129
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    .line 131
    .line 132
    sget-object v5, Lgz7;->CANCELLED:Lgz7;

    .line 133
    .line 134
    iput-object v5, v4, Lag8;->c:Lgz7;

    .line 135
    .line 136
    invoke-virtual {v4}, Lag8;->b()V

    .line 137
    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_3
    iget-object v0, p0, Lqp3;->q:Lsn3;

    .line 141
    .line 142
    if-eqz v0, :cond_6

    .line 143
    .line 144
    iput-boolean v3, v0, Lsn3;->d:Z

    .line 145
    .line 146
    iget-object v0, v0, Lsn3;->b:Lim3;

    .line 147
    .line 148
    if-eqz v0, :cond_6

    .line 149
    .line 150
    iput-boolean v3, v0, Lim3;->e:Z

    .line 151
    .line 152
    iget-object v0, v0, Lim3;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 153
    .line 154
    invoke-static {v0}, Lel1;->Q0(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    new-instance v3, Ljava/util/ArrayList;

    .line 159
    .line 160
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 168
    .line 169
    .line 170
    move-result v4

    .line 171
    if-eqz v4, :cond_5

    .line 172
    .line 173
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v4

    .line 177
    move-object v5, v4

    .line 178
    check-cast v5, Lno2;

    .line 179
    .line 180
    iget-object v5, v5, Lno2;->d:Lgz7;

    .line 181
    .line 182
    invoke-virtual {v5}, Lgz7;->isRunning()Z

    .line 183
    .line 184
    .line 185
    move-result v5

    .line 186
    if-eqz v5, :cond_4

    .line 187
    .line 188
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    goto :goto_2

    .line 192
    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 193
    .line 194
    .line 195
    move-result v0

    .line 196
    if-nez v0, :cond_6

    .line 197
    .line 198
    sget-object v4, Lvr6;->INSTANCE:Lvr6;

    .line 199
    .line 200
    const/4 v8, 0x4

    .line 201
    const/4 v9, 0x0

    .line 202
    const-string v5, "FolderDownloadTask"

    .line 203
    .line 204
    const-string v6, "User cancelled the download process"

    .line 205
    .line 206
    const/4 v7, 0x0

    .line 207
    invoke-static/range {v4 .. v9}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 208
    .line 209
    .line 210
    sget-object v0, Ltb1;->a:Ltb1;

    .line 211
    .line 212
    invoke-static {}, Lqb1;->f()Ldd1;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    invoke-virtual {v0}, Ldd1;->getDisplayNameEn()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    invoke-static {v2, v0, v1}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v6

    .line 224
    const-string v5, "FolderDownloadTask"

    .line 225
    .line 226
    invoke-static/range {v4 .. v9}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 234
    .line 235
    .line 236
    move-result v1

    .line 237
    if-eqz v1, :cond_6

    .line 238
    .line 239
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    check-cast v1, Lno2;

    .line 244
    .line 245
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 246
    .line 247
    .line 248
    sget-object v2, Lgz7;->CANCELLED:Lgz7;

    .line 249
    .line 250
    iput-object v2, v1, Lno2;->d:Lgz7;

    .line 251
    .line 252
    invoke-virtual {v1}, Lno2;->a()V

    .line 253
    .line 254
    .line 255
    goto :goto_3

    .line 256
    :cond_6
    iget-object p0, p0, Lqp3;->r:Lbl3;

    .line 257
    .line 258
    if-eqz p0, :cond_7

    .line 259
    .line 260
    iget-object v0, p0, Lbl3;->c:Lgz7;

    .line 261
    .line 262
    invoke-virtual {v0}, Lgz7;->isRunning()Z

    .line 263
    .line 264
    .line 265
    move-result v0

    .line 266
    if-eqz v0, :cond_7

    .line 267
    .line 268
    sget-object v0, Lgz7;->CANCELLED:Lgz7;

    .line 269
    .line 270
    iput-object v0, p0, Lbl3;->c:Lgz7;

    .line 271
    .line 272
    :cond_7
    return-void
.end method

.method public final b()V
    .locals 43

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v2, v1, Lpw6;->a:Lcz7;

    .line 4
    .line 5
    instance-of v0, v2, Luy7;

    .line 6
    .line 7
    const-string v3, "Processing "

    .line 8
    .line 9
    iget-object v4, v1, Lpw6;->d:Lgj5;

    .line 10
    .line 11
    const-string v5, "/"

    .line 12
    .line 13
    iget-object v8, v1, Lpw6;->b:Ldz7;

    .line 14
    .line 15
    iget-object v9, v1, Lqp3;->m:Ljava/util/List;

    .line 16
    .line 17
    if-eqz v0, :cond_3

    .line 18
    .line 19
    new-instance v0, Lek3;

    .line 20
    .line 21
    invoke-direct {v0, v1}, Lek3;-><init>(Lqp3;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, v1, Lqp3;->p:Lek3;

    .line 25
    .line 26
    const-string v11, "Cleaning cloud cache on device"

    .line 27
    .line 28
    const-string v12, "FolderBackupManager"

    .line 29
    .line 30
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v13

    .line 34
    const/4 v14, 0x0

    .line 35
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v15

    .line 39
    if-eqz v15, :cond_0

    .line 40
    .line 41
    add-int/lit8 v15, v14, 0x1

    .line 42
    .line 43
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v16

    .line 47
    move-object/from16 v6, v16

    .line 48
    .line 49
    check-cast v6, Leo3;

    .line 50
    .line 51
    invoke-virtual {v0}, Lek3;->b()Z

    .line 52
    .line 53
    .line 54
    move-result v16

    .line 55
    if-eqz v16, :cond_1

    .line 56
    .line 57
    :cond_0
    move-object/from16 v17, v8

    .line 58
    .line 59
    move-object/from16 v18, v9

    .line 60
    .line 61
    goto/16 :goto_1

    .line 62
    .line 63
    :cond_1
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    move-object v10, v6

    .line 67
    check-cast v10, Lbo3;

    .line 68
    .line 69
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 70
    .line 71
    .line 72
    move-result v7

    .line 73
    move-object/from16 v17, v8

    .line 74
    .line 75
    new-instance v8, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v7

    .line 93
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 94
    .line 95
    .line 96
    move-result v8

    .line 97
    move-object/from16 v18, v9

    .line 98
    .line 99
    const/4 v9, 0x1

    .line 100
    if-le v8, v9, :cond_2

    .line 101
    .line 102
    invoke-virtual {v4, v7}, Lzy4;->i(Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    :cond_2
    sget-object v19, Lvr6;->INSTANCE:Lvr6;

    .line 106
    .line 107
    invoke-virtual {v3, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v21

    .line 111
    const/16 v23, 0x4

    .line 112
    .line 113
    const/16 v24, 0x0

    .line 114
    .line 115
    const-string v20, "FolderBackupManager"

    .line 116
    .line 117
    const/16 v22, 0x0

    .line 118
    .line 119
    invoke-static/range {v19 .. v24}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    iget-object v7, v10, Lbo3;->a:Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 123
    .line 124
    invoke-virtual {v1, v7}, Lqp3;->p(Lorg/swiftapps/swiftbackup/folders/data/FolderItem;)V

    .line 125
    .line 126
    .line 127
    const/4 v7, 0x0

    .line 128
    invoke-virtual {v1, v7}, Lpw6;->k(Lr62;)V

    .line 129
    .line 130
    .line 131
    mul-int/lit8 v14, v14, 0x64

    .line 132
    .line 133
    :try_start_0
    move-object v7, v6

    .line 134
    check-cast v7, Lbo3;

    .line 135
    .line 136
    new-instance v8, Lbk3;

    .line 137
    .line 138
    invoke-direct {v8, v0, v6, v14}, Lbk3;-><init>(Lek3;Leo3;I)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, v7, v8}, Lek3;->a(Lbo3;Lbk3;)V

    .line 142
    .line 143
    .line 144
    add-int/lit8 v14, v14, 0x64

    .line 145
    .line 146
    invoke-virtual {v1, v14}, Lpw6;->n(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    .line 148
    .line 149
    invoke-static {v12, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    .line 151
    .line 152
    sget-boolean v6, Lq63;->d:Z

    .line 153
    .line 154
    sget-object v6, Lry5;->u:Ljava/lang/String;

    .line 155
    .line 156
    const/4 v6, 0x0

    .line 157
    const/4 v7, 0x0

    .line 158
    invoke-static {v6, v7}, Lqy5;->f(ZLzn7;)Lry5;

    .line 159
    .line 160
    .line 161
    move-result-object v8

    .line 162
    iget-object v6, v8, Lry5;->t:Ljava/lang/String;

    .line 163
    .line 164
    invoke-static {v6}, Lcy0;->g(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    move v14, v15

    .line 168
    move-object/from16 v8, v17

    .line 169
    .line 170
    move-object/from16 v9, v18

    .line 171
    .line 172
    goto/16 :goto_0

    .line 173
    .line 174
    :catchall_0
    move-exception v0

    .line 175
    invoke-static {v12, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    .line 177
    .line 178
    sget-boolean v1, Lq63;->d:Z

    .line 179
    .line 180
    sget-object v1, Lry5;->u:Ljava/lang/String;

    .line 181
    .line 182
    const/4 v6, 0x0

    .line 183
    const/4 v7, 0x0

    .line 184
    invoke-static {v6, v7}, Lqy5;->f(ZLzn7;)Lry5;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    iget-object v1, v1, Lry5;->t:Ljava/lang/String;

    .line 189
    .line 190
    invoke-static {v1}, Lcy0;->g(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    throw v0

    .line 194
    :goto_1
    iget-object v0, v0, Lek3;->d:Lcd;

    .line 195
    .line 196
    invoke-virtual {v0}, Lcd;->g()Z

    .line 197
    .line 198
    .line 199
    move-result v6

    .line 200
    if-eqz v6, :cond_4

    .line 201
    .line 202
    move-object/from16 v8, v17

    .line 203
    .line 204
    check-cast v8, Lpp3;

    .line 205
    .line 206
    iput-object v0, v8, Lpp3;->a:Lcd;

    .line 207
    .line 208
    goto :goto_2

    .line 209
    :cond_3
    move-object/from16 v17, v8

    .line 210
    .line 211
    move-object/from16 v18, v9

    .line 212
    .line 213
    :cond_4
    :goto_2
    instance-of v0, v2, Lwy7;

    .line 214
    .line 215
    if-eqz v0, :cond_2f

    .line 216
    .line 217
    new-instance v6, Lsn3;

    .line 218
    .line 219
    invoke-direct {v6, v1}, Lsn3;-><init>(Lqp3;)V

    .line 220
    .line 221
    .line 222
    iput-object v6, v1, Lqp3;->q:Lsn3;

    .line 223
    .line 224
    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 225
    .line 226
    .line 227
    move-result-object v7

    .line 228
    const/4 v0, 0x0

    .line 229
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 230
    .line 231
    .line 232
    move-result v8

    .line 233
    iget-object v9, v6, Lsn3;->c:Lrn3;

    .line 234
    .line 235
    if-eqz v8, :cond_2e

    .line 236
    .line 237
    add-int/lit8 v8, v0, 0x1

    .line 238
    .line 239
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v10

    .line 243
    check-cast v10, Leo3;

    .line 244
    .line 245
    invoke-virtual {v6}, Lsn3;->a()Z

    .line 246
    .line 247
    .line 248
    move-result v11

    .line 249
    if-eqz v11, :cond_5

    .line 250
    .line 251
    goto/16 :goto_26

    .line 252
    .line 253
    :cond_5
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 254
    .line 255
    .line 256
    move-object v11, v10

    .line 257
    check-cast v11, Ldo3;

    .line 258
    .line 259
    iget-object v12, v11, Ldo3;->a:Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 260
    .line 261
    iget-object v13, v11, Ldo3;->c:Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 262
    .line 263
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    .line 264
    .line 265
    .line 266
    move-result v14

    .line 267
    new-instance v15, Ljava/lang/StringBuilder;

    .line 268
    .line 269
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v14

    .line 285
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    .line 286
    .line 287
    .line 288
    move-result v15

    .line 289
    move-object/from16 v19, v5

    .line 290
    .line 291
    const/4 v5, 0x1

    .line 292
    if-le v15, v5, :cond_6

    .line 293
    .line 294
    invoke-virtual {v4, v14}, Lzy4;->i(Ljava/lang/Object;)V

    .line 295
    .line 296
    .line 297
    :cond_6
    sget-object v20, Lvr6;->INSTANCE:Lvr6;

    .line 298
    .line 299
    invoke-virtual {v3, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v22

    .line 303
    const/16 v24, 0x4

    .line 304
    .line 305
    const/16 v25, 0x0

    .line 306
    .line 307
    const-string v21, "FolderRestoreManager"

    .line 308
    .line 309
    const/16 v23, 0x0

    .line 310
    .line 311
    invoke-static/range {v20 .. v25}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v1, v12}, Lqp3;->p(Lorg/swiftapps/swiftbackup/folders/data/FolderItem;)V

    .line 315
    .line 316
    .line 317
    const/4 v5, 0x0

    .line 318
    invoke-virtual {v1, v5}, Lpw6;->k(Lr62;)V

    .line 319
    .line 320
    .line 321
    mul-int/lit8 v14, v0, 0x64

    .line 322
    .line 323
    new-instance v0, Lqn3;

    .line 324
    .line 325
    invoke-direct {v0, v6, v10, v14}, Lqn3;-><init>(Lsn3;Leo3;I)V

    .line 326
    .line 327
    .line 328
    const/4 v10, 0x0

    .line 329
    invoke-static {v11, v10, v5}, Lpn3;->a(Ldo3;ZLorg/swiftapps/swiftbackup/folders/data/FolderState;)Lnn3;

    .line 330
    .line 331
    .line 332
    move-result-object v15

    .line 333
    iget-boolean v5, v15, Lnn3;->a:Z

    .line 334
    .line 335
    if-nez v5, :cond_7

    .line 336
    .line 337
    move-object/from16 v27, v3

    .line 338
    .line 339
    move-object/from16 v36, v4

    .line 340
    .line 341
    move-object/from16 v38, v6

    .line 342
    .line 343
    move-object/from16 v39, v7

    .line 344
    .line 345
    move/from16 v40, v8

    .line 346
    .line 347
    move-object/from16 v42, v13

    .line 348
    .line 349
    :goto_4
    const/4 v5, 0x1

    .line 350
    goto/16 :goto_23

    .line 351
    .line 352
    :cond_7
    if-eqz v13, :cond_8

    .line 353
    .line 354
    const/4 v5, 0x1

    .line 355
    goto :goto_5

    .line 356
    :cond_8
    const/4 v5, 0x0

    .line 357
    :goto_5
    if-eqz v5, :cond_9

    .line 358
    .line 359
    const/16 v21, 0x2

    .line 360
    .line 361
    goto :goto_6

    .line 362
    :cond_9
    const/16 v21, 0x1

    .line 363
    .line 364
    :goto_6
    const/16 v26, 0x64

    .line 365
    .line 366
    mul-int/lit8 v10, v21, 0x64

    .line 367
    .line 368
    move-object/from16 v27, v3

    .line 369
    .line 370
    iget-object v3, v1, Lpw6;->i:Lex6;

    .line 371
    .line 372
    if-eqz v5, :cond_1c

    .line 373
    .line 374
    if-eqz v13, :cond_1b

    .line 375
    .line 376
    move-object/from16 v36, v4

    .line 377
    .line 378
    new-instance v4, Lim3;

    .line 379
    .line 380
    invoke-direct {v4, v1, v13}, Lim3;-><init>(Lqp3;Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;)V

    .line 381
    .line 382
    .line 383
    iput-object v4, v6, Lsn3;->b:Lim3;

    .line 384
    .line 385
    move/from16 v37, v5

    .line 386
    .line 387
    new-instance v5, Lpv;

    .line 388
    .line 389
    move-object/from16 v38, v6

    .line 390
    .line 391
    const/4 v6, 0x1

    .line 392
    invoke-direct {v5, v0, v10, v6}, Lpv;-><init>(Lmt3;II)V

    .line 393
    .line 394
    .line 395
    iput-object v5, v4, Lim3;->g:Lpv;

    .line 396
    .line 397
    invoke-virtual {v13}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->toDisplayString()Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v5

    .line 401
    sget-object v6, Ltb1;->a:Ltb1;

    .line 402
    .line 403
    invoke-static {}, Lqb1;->f()Ldd1;

    .line 404
    .line 405
    .line 406
    move-result-object v6

    .line 407
    invoke-virtual {v6}, Ldd1;->getDisplayNameEn()Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object v6

    .line 411
    move-object/from16 v39, v7

    .line 412
    .line 413
    invoke-static {}, Lqb1;->e()Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v7

    .line 417
    move/from16 v40, v8

    .line 418
    .line 419
    const-string v8, ". Cloud: "

    .line 420
    .line 421
    move-object/from16 v41, v12

    .line 422
    .line 423
    const-string v12, ", Tag: "

    .line 424
    .line 425
    move-object/from16 v42, v13

    .line 426
    .line 427
    const-string v13, "Processing download for folder: "

    .line 428
    .line 429
    invoke-static {v13, v5, v8, v6, v12}, Lu48;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    .line 431
    .line 432
    move-result-object v5

    .line 433
    const-string v6, "."

    .line 434
    .line 435
    invoke-static {v5, v7, v6}, Ldj7;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object v22

    .line 439
    const/16 v24, 0x4

    .line 440
    .line 441
    const/16 v25, 0x0

    .line 442
    .line 443
    const-string v21, "FolderDownloadTask"

    .line 444
    .line 445
    const/16 v23, 0x0

    .line 446
    .line 447
    invoke-static/range {v20 .. v25}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 448
    .line 449
    .line 450
    invoke-virtual/range {v42 .. v42}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->getFolderItem()Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 451
    .line 452
    .line 453
    move-result-object v5

    .line 454
    invoke-virtual {v1, v5}, Lqp3;->p(Lorg/swiftapps/swiftbackup/folders/data/FolderItem;)V

    .line 455
    .line 456
    .line 457
    iget-object v5, v4, Lim3;->c:Lem3;

    .line 458
    .line 459
    iget-object v6, v5, Lem3;->b:Ljava/util/List;

    .line 460
    .line 461
    iget-object v5, v5, Lem3;->c:Ljava/util/List;

    .line 462
    .line 463
    new-instance v7, Ljava/util/ArrayList;

    .line 464
    .line 465
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 466
    .line 467
    .line 468
    if-nez v5, :cond_a

    .line 469
    .line 470
    sget-object v8, Lov2;->a:Lov2;

    .line 471
    .line 472
    goto :goto_7

    .line 473
    :cond_a
    move-object v8, v5

    .line 474
    :goto_7
    invoke-static {v6, v8}, Lel1;->g1(Ljava/util/Collection;Ljava/util/List;)Ljava/util/ArrayList;

    .line 475
    .line 476
    .line 477
    move-result-object v6

    .line 478
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 479
    .line 480
    .line 481
    move-result-object v6

    .line 482
    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 483
    .line 484
    .line 485
    move-result v8

    .line 486
    if-eqz v8, :cond_d

    .line 487
    .line 488
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 489
    .line 490
    .line 491
    move-result-object v8

    .line 492
    check-cast v8, Lfo2;

    .line 493
    .line 494
    sget-object v20, Lvr6;->INSTANCE:Lvr6;

    .line 495
    .line 496
    invoke-virtual {v8}, Lfo2;->a()Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object v12

    .line 500
    const-string v13, "Checking download for "

    .line 501
    .line 502
    invoke-virtual {v13, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 503
    .line 504
    .line 505
    move-result-object v22

    .line 506
    const/16 v24, 0x4

    .line 507
    .line 508
    const/16 v25, 0x0

    .line 509
    .line 510
    const-string v21, "FolderDownloadTask"

    .line 511
    .line 512
    const/16 v23, 0x0

    .line 513
    .line 514
    invoke-static/range {v20 .. v25}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 515
    .line 516
    .line 517
    iget-object v12, v8, Lfo2;->d:Lq63;

    .line 518
    .line 519
    invoke-virtual {v12}, Lq63;->j()Z

    .line 520
    .line 521
    .line 522
    move-result v13

    .line 523
    if-eqz v13, :cond_b

    .line 524
    .line 525
    invoke-virtual {v12}, Lq63;->A()J

    .line 526
    .line 527
    .line 528
    move-result-wide v12

    .line 529
    move-object/from16 v32, v4

    .line 530
    .line 531
    move-object/from16 v28, v5

    .line 532
    .line 533
    iget-wide v4, v8, Lfo2;->c:J

    .line 534
    .line 535
    cmp-long v4, v12, v4

    .line 536
    .line 537
    if-nez v4, :cond_c

    .line 538
    .line 539
    const/16 v24, 0x4

    .line 540
    .line 541
    const/16 v25, 0x0

    .line 542
    .line 543
    const-string v21, "FolderDownloadTask"

    .line 544
    .line 545
    const-string v22, "Skipped downloading, cloud copy available on device"

    .line 546
    .line 547
    const/16 v23, 0x0

    .line 548
    .line 549
    invoke-static/range {v20 .. v25}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 550
    .line 551
    .line 552
    goto :goto_9

    .line 553
    :cond_b
    move-object/from16 v32, v4

    .line 554
    .line 555
    move-object/from16 v28, v5

    .line 556
    .line 557
    :cond_c
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 558
    .line 559
    .line 560
    :goto_9
    move-object/from16 v5, v28

    .line 561
    .line 562
    move-object/from16 v4, v32

    .line 563
    .line 564
    goto :goto_8

    .line 565
    :cond_d
    move-object/from16 v32, v4

    .line 566
    .line 567
    move-object/from16 v28, v5

    .line 568
    .line 569
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 570
    .line 571
    .line 572
    move-result v4

    .line 573
    if-eqz v4, :cond_e

    .line 574
    .line 575
    sget-object v20, Lvr6;->INSTANCE:Lvr6;

    .line 576
    .line 577
    const/16 v24, 0x4

    .line 578
    .line 579
    const/16 v25, 0x0

    .line 580
    .line 581
    const-string v21, "FolderDownloadTask"

    .line 582
    .line 583
    const-string v22, "Nothing to download"

    .line 584
    .line 585
    const/16 v23, 0x0

    .line 586
    .line 587
    invoke-static/range {v20 .. v25}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 588
    .line 589
    .line 590
    move-object/from16 v6, v32

    .line 591
    .line 592
    const/4 v7, 0x0

    .line 593
    goto/16 :goto_14

    .line 594
    .line 595
    :cond_e
    new-instance v4, Ljava/lang/StringBuilder;

    .line 596
    .line 597
    const-string v5, "Download tasks: Base backup"

    .line 598
    .line 599
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 600
    .line 601
    .line 602
    if-eqz v28, :cond_12

    .line 603
    .line 604
    invoke-interface/range {v28 .. v28}, Ljava/util/Collection;->isEmpty()Z

    .line 605
    .line 606
    .line 607
    move-result v5

    .line 608
    if-eqz v5, :cond_f

    .line 609
    .line 610
    goto :goto_b

    .line 611
    :cond_f
    new-instance v5, Ljava/util/ArrayList;

    .line 612
    .line 613
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 614
    .line 615
    .line 616
    invoke-interface/range {v28 .. v28}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 617
    .line 618
    .line 619
    move-result-object v6

    .line 620
    :cond_10
    :goto_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 621
    .line 622
    .line 623
    move-result v8

    .line 624
    if-eqz v8, :cond_11

    .line 625
    .line 626
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 627
    .line 628
    .line 629
    move-result-object v8

    .line 630
    move-object v12, v8

    .line 631
    check-cast v12, Lfo2;

    .line 632
    .line 633
    iget v12, v12, Lfo2;->b:I

    .line 634
    .line 635
    const/16 v13, 0x20

    .line 636
    .line 637
    if-ne v12, v13, :cond_10

    .line 638
    .line 639
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 640
    .line 641
    .line 642
    goto :goto_a

    .line 643
    :cond_11
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 644
    .line 645
    .line 646
    move-result v5

    .line 647
    new-instance v6, Ljava/lang/StringBuilder;

    .line 648
    .line 649
    const-string v8, " & "

    .line 650
    .line 651
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 652
    .line 653
    .line 654
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 655
    .line 656
    .line 657
    const-string v5, " incremental backups"

    .line 658
    .line 659
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    .line 661
    .line 662
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 663
    .line 664
    .line 665
    move-result-object v5

    .line 666
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 667
    .line 668
    .line 669
    :cond_12
    :goto_b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 670
    .line 671
    .line 672
    move-result-object v22

    .line 673
    sget-object v20, Lvr6;->INSTANCE:Lvr6;

    .line 674
    .line 675
    const/16 v24, 0x4

    .line 676
    .line 677
    const/16 v25, 0x0

    .line 678
    .line 679
    const-string v21, "FolderDownloadTask"

    .line 680
    .line 681
    const/16 v23, 0x0

    .line 682
    .line 683
    invoke-static/range {v20 .. v25}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 684
    .line 685
    .line 686
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 687
    .line 688
    .line 689
    move-result-object v4

    .line 690
    const-wide/16 v12, 0x0

    .line 691
    .line 692
    :goto_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 693
    .line 694
    .line 695
    move-result v8

    .line 696
    if-eqz v8, :cond_13

    .line 697
    .line 698
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 699
    .line 700
    .line 701
    move-result-object v8

    .line 702
    check-cast v8, Lfo2;

    .line 703
    .line 704
    const-wide/16 v20, 0x0

    .line 705
    .line 706
    iget-wide v5, v8, Lfo2;->c:J

    .line 707
    .line 708
    add-long/2addr v12, v5

    .line 709
    goto :goto_c

    .line 710
    :cond_13
    const-wide/16 v20, 0x0

    .line 711
    .line 712
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 713
    .line 714
    .line 715
    move-result-object v4

    .line 716
    cmp-long v5, v12, v20

    .line 717
    .line 718
    if-lez v5, :cond_14

    .line 719
    .line 720
    goto :goto_d

    .line 721
    :cond_14
    const/4 v4, 0x0

    .line 722
    :goto_d
    if-eqz v4, :cond_15

    .line 723
    .line 724
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 725
    .line 726
    .line 727
    move-result-wide v4

    .line 728
    :goto_e
    move-wide/from16 v29, v4

    .line 729
    .line 730
    goto :goto_f

    .line 731
    :cond_15
    const-wide/16 v4, 0x1

    .line 732
    .line 733
    goto :goto_e

    .line 734
    :goto_f
    new-instance v35, Ljava/util/concurrent/ConcurrentHashMap;

    .line 735
    .line 736
    invoke-direct/range {v35 .. v35}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 737
    .line 738
    .line 739
    new-instance v33, Lkh6;

    .line 740
    .line 741
    invoke-direct/range {v33 .. v33}, Ljava/lang/Object;-><init>()V

    .line 742
    .line 743
    .line 744
    new-instance v34, Lkh6;

    .line 745
    .line 746
    invoke-direct/range {v34 .. v34}, Ljava/lang/Object;-><init>()V

    .line 747
    .line 748
    .line 749
    new-instance v4, Ljava/util/ArrayList;

    .line 750
    .line 751
    const/16 v5, 0xa

    .line 752
    .line 753
    invoke-static {v7, v5}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 754
    .line 755
    .line 756
    move-result v5

    .line 757
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 758
    .line 759
    .line 760
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 761
    .line 762
    .line 763
    move-result-object v5

    .line 764
    :goto_10
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 765
    .line 766
    .line 767
    move-result v6

    .line 768
    if-eqz v6, :cond_16

    .line 769
    .line 770
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 771
    .line 772
    .line 773
    move-result-object v6

    .line 774
    move-object/from16 v31, v6

    .line 775
    .line 776
    check-cast v31, Lfo2;

    .line 777
    .line 778
    sget-object v6, Lzn4;->a:Lzn4;

    .line 779
    .line 780
    new-instance v28, Lfm3;

    .line 781
    .line 782
    invoke-direct/range {v28 .. v35}, Lfm3;-><init>(JLfo2;Lim3;Lkh6;Lkh6;Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 783
    .line 784
    .line 785
    move-object/from16 v7, v28

    .line 786
    .line 787
    move-object/from16 v6, v32

    .line 788
    .line 789
    new-instance v8, Lvn4;

    .line 790
    .line 791
    invoke-direct {v8, v7}, Lvn4;-><init>(Lbt3;)V

    .line 792
    .line 793
    .line 794
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 795
    .line 796
    .line 797
    goto :goto_10

    .line 798
    :cond_16
    move-object/from16 v6, v32

    .line 799
    .line 800
    sget-object v5, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 801
    .line 802
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 803
    .line 804
    .line 805
    move-result-object v5

    .line 806
    const v7, 0x7f130209

    .line 807
    .line 808
    .line 809
    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 810
    .line 811
    .line 812
    move-result-object v5

    .line 813
    invoke-virtual {v3, v5}, Lex6;->k(Ljava/lang/Object;)V

    .line 814
    .line 815
    .line 816
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 817
    .line 818
    .line 819
    move-result-wide v7

    .line 820
    sget-object v5, Lzn4;->a:Lzn4;

    .line 821
    .line 822
    :try_start_1
    sget-object v5, Ld45;->b:Ld45;

    .line 823
    .line 824
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 825
    .line 826
    .line 827
    invoke-static {}, Ld45;->a()Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    .line 828
    .line 829
    .line 830
    move-result-object v5

    .line 831
    if-eqz v5, :cond_17

    .line 832
    .line 833
    invoke-virtual {v5}, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->isAnonymous()Z

    .line 834
    .line 835
    .line 836
    move-result v5

    .line 837
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 838
    .line 839
    .line 840
    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 841
    goto :goto_11

    .line 842
    :catch_0
    :cond_17
    const/4 v5, 0x0

    .line 843
    :goto_11
    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 844
    .line 845
    invoke-static {v5, v12}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 846
    .line 847
    .line 848
    move-result v5

    .line 849
    if-nez v5, :cond_19

    .line 850
    .line 851
    const-string v5, "parallel_cloud_transfers"

    .line 852
    .line 853
    :try_start_2
    sget-object v12, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 854
    .line 855
    if-eqz v12, :cond_18

    .line 856
    .line 857
    const/4 v13, 0x0

    .line 858
    invoke-interface {v12, v5, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 859
    .line 860
    .line 861
    move-result v5

    .line 862
    goto :goto_12

    .line 863
    :cond_18
    const-string v5, "prefs"

    .line 864
    .line 865
    invoke-static {v5}, Lpe4;->F(Ljava/lang/String;)V

    .line 866
    .line 867
    .line 868
    const/16 v16, 0x0

    .line 869
    .line 870
    throw v16
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_1

    .line 871
    :catch_1
    const/4 v5, 0x0

    .line 872
    :goto_12
    if-eqz v5, :cond_19

    .line 873
    .line 874
    const/4 v5, 0x1

    .line 875
    goto :goto_13

    .line 876
    :cond_19
    const/4 v5, 0x0

    .line 877
    :goto_13
    const/4 v12, 0x4

    .line 878
    invoke-static {v12, v4, v5}, Lzn4;->a(ILjava/util/ArrayList;Z)Ljava/util/List;

    .line 879
    .line 880
    .line 881
    sget-object v20, Lvr6;->INSTANCE:Lvr6;

    .line 882
    .line 883
    invoke-static {v7, v8}, Lorg/swiftapps/swiftbackup/common/Const;->v(J)Ljava/lang/String;

    .line 884
    .line 885
    .line 886
    move-result-object v22

    .line 887
    const/16 v24, 0x4

    .line 888
    .line 889
    const/16 v25, 0x0

    .line 890
    .line 891
    const-string v21, "FolderDownloadTask"

    .line 892
    .line 893
    const/16 v23, 0x0

    .line 894
    .line 895
    invoke-static/range {v20 .. v25}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 896
    .line 897
    .line 898
    const/4 v7, 0x0

    .line 899
    invoke-virtual {v1, v7}, Lpw6;->o(Ljava/lang/String;)V

    .line 900
    .line 901
    .line 902
    :goto_14
    iget-object v4, v6, Lim3;->f:Lhm3;

    .line 903
    .line 904
    iget-object v5, v4, Lhm3;->a:Ljava/lang/String;

    .line 905
    .line 906
    if-nez v5, :cond_1a

    .line 907
    .line 908
    goto :goto_15

    .line 909
    :cond_1a
    iget-object v5, v9, Lrn3;->b:Ljava/util/ArrayList;

    .line 910
    .line 911
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 912
    .line 913
    .line 914
    :goto_15
    invoke-virtual {v1, v7}, Lpw6;->o(Ljava/lang/String;)V

    .line 915
    .line 916
    .line 917
    goto :goto_16

    .line 918
    :cond_1b
    const-string v0, "props.cloudBackup cannot be null!"

    .line 919
    .line 920
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 921
    .line 922
    .line 923
    return-void

    .line 924
    :cond_1c
    move-object/from16 v36, v4

    .line 925
    .line 926
    move/from16 v37, v5

    .line 927
    .line 928
    move-object/from16 v38, v6

    .line 929
    .line 930
    move-object/from16 v39, v7

    .line 931
    .line 932
    move/from16 v40, v8

    .line 933
    .line 934
    move-object/from16 v41, v12

    .line 935
    .line 936
    move-object/from16 v42, v13

    .line 937
    .line 938
    :goto_16
    invoke-virtual/range {v38 .. v38}, Lsn3;->a()Z

    .line 939
    .line 940
    .line 941
    move-result v4

    .line 942
    if-eqz v4, :cond_1d

    .line 943
    .line 944
    goto/16 :goto_4

    .line 945
    .line 946
    :cond_1d
    if-eqz v37, :cond_1e

    .line 947
    .line 948
    move/from16 v6, v26

    .line 949
    .line 950
    goto :goto_17

    .line 951
    :cond_1e
    const/4 v6, 0x0

    .line 952
    :goto_17
    if-eqz v42, :cond_1f

    .line 953
    .line 954
    iget-object v4, v15, Lnn3;->d:Lorg/swiftapps/swiftbackup/folders/data/FolderState;

    .line 955
    .line 956
    const/4 v5, 0x1

    .line 957
    invoke-static {v11, v5, v4}, Lpn3;->a(Ldo3;ZLorg/swiftapps/swiftbackup/folders/data/FolderState;)Lnn3;

    .line 958
    .line 959
    .line 960
    move-result-object v15

    .line 961
    goto :goto_18

    .line 962
    :cond_1f
    const/4 v5, 0x1

    .line 963
    :goto_18
    iget-boolean v4, v15, Lnn3;->a:Z

    .line 964
    .line 965
    if-nez v4, :cond_20

    .line 966
    .line 967
    goto/16 :goto_23

    .line 968
    .line 969
    :cond_20
    new-instance v4, Lvn3;

    .line 970
    .line 971
    invoke-direct {v4, v11, v1, v15}, Lvn3;-><init>(Ldo3;Lqp3;Lnn3;)V

    .line 972
    .line 973
    .line 974
    new-instance v7, Lqv;

    .line 975
    .line 976
    invoke-direct {v7, v6, v10, v5, v0}, Lqv;-><init>(IIILmt3;)V

    .line 977
    .line 978
    .line 979
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 980
    .line 981
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 982
    .line 983
    .line 984
    move-result-object v0

    .line 985
    const v6, 0x7f130491

    .line 986
    .line 987
    .line 988
    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 989
    .line 990
    .line 991
    move-result-object v0

    .line 992
    invoke-virtual {v3, v0}, Lex6;->k(Ljava/lang/Object;)V

    .line 993
    .line 994
    .line 995
    sget-object v20, Lvr6;->INSTANCE:Lvr6;

    .line 996
    .line 997
    new-instance v0, Ljava/lang/StringBuilder;

    .line 998
    .line 999
    const-string v3, "Started restore: "

    .line 1000
    .line 1001
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1002
    .line 1003
    .line 1004
    iget-object v3, v4, Lvn3;->a:Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 1005
    .line 1006
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1007
    .line 1008
    .line 1009
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1010
    .line 1011
    .line 1012
    move-result-object v22

    .line 1013
    const/16 v24, 0x4

    .line 1014
    .line 1015
    const/16 v25, 0x0

    .line 1016
    .line 1017
    const-string v21, "FolderRestoreTask"

    .line 1018
    .line 1019
    const/16 v23, 0x0

    .line 1020
    .line 1021
    invoke-static/range {v20 .. v25}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 1022
    .line 1023
    .line 1024
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1025
    .line 1026
    const-string v3, "Props="

    .line 1027
    .line 1028
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1029
    .line 1030
    .line 1031
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1032
    .line 1033
    .line 1034
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1035
    .line 1036
    .line 1037
    move-result-object v22

    .line 1038
    const-string v21, "FolderRestoreTask"

    .line 1039
    .line 1040
    invoke-static/range {v20 .. v25}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 1041
    .line 1042
    .line 1043
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1044
    .line 1045
    .line 1046
    move-result-wide v12

    .line 1047
    new-instance v0, Lq63;

    .line 1048
    .line 1049
    iget-object v3, v11, Ldo3;->e:Ljava/lang/String;

    .line 1050
    .line 1051
    if-eqz v3, :cond_23

    .line 1052
    .line 1053
    invoke-static {v3}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 1054
    .line 1055
    .line 1056
    move-result v6

    .line 1057
    if-nez v6, :cond_21

    .line 1058
    .line 1059
    goto :goto_19

    .line 1060
    :cond_21
    const/4 v3, 0x0

    .line 1061
    :goto_19
    if-nez v3, :cond_22

    .line 1062
    .line 1063
    goto :goto_1b

    .line 1064
    :cond_22
    :goto_1a
    const/4 v6, 0x2

    .line 1065
    goto :goto_1c

    .line 1066
    :cond_23
    :goto_1b
    invoke-virtual/range {v41 .. v41}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getSourceFolder()Ljava/lang/String;

    .line 1067
    .line 1068
    .line 1069
    move-result-object v3

    .line 1070
    goto :goto_1a

    .line 1071
    :goto_1c
    invoke-direct {v0, v3, v6}, Lq63;-><init>(Ljava/lang/String;I)V

    .line 1072
    .line 1073
    .line 1074
    iget-object v3, v11, Ldo3;->d:Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;

    .line 1075
    .line 1076
    iget-object v6, v4, Lvn3;->b:Lkj3;

    .line 1077
    .line 1078
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1079
    .line 1080
    .line 1081
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 1082
    .line 1083
    .line 1084
    move-result-object v8

    .line 1085
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 1086
    .line 1087
    .line 1088
    move-result-object v10

    .line 1089
    invoke-static {v8, v10}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1090
    .line 1091
    .line 1092
    move-result v8

    .line 1093
    if-nez v8, :cond_2d

    .line 1094
    .line 1095
    invoke-virtual {v6}, Lkj3;->f()Z

    .line 1096
    .line 1097
    .line 1098
    move-result v8

    .line 1099
    if-eqz v8, :cond_2c

    .line 1100
    .line 1101
    new-instance v8, Lwj3;

    .line 1102
    .line 1103
    invoke-direct {v8, v1, v6, v7}, Lwj3;-><init>(Lqp3;Lkj3;Lmt3;)V

    .line 1104
    .line 1105
    .line 1106
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1107
    .line 1108
    const-string v10, "Restore strategy: "

    .line 1109
    .line 1110
    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1111
    .line 1112
    .line 1113
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1114
    .line 1115
    .line 1116
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1117
    .line 1118
    .line 1119
    move-result-object v22

    .line 1120
    const/16 v24, 0x4

    .line 1121
    .line 1122
    const/16 v25, 0x0

    .line 1123
    .line 1124
    const-string v21, "FolderRestoreHelper"

    .line 1125
    .line 1126
    const/16 v23, 0x0

    .line 1127
    .line 1128
    invoke-static/range {v20 .. v25}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 1129
    .line 1130
    .line 1131
    iget-object v6, v8, Lwj3;->d:Lq63;

    .line 1132
    .line 1133
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1134
    .line 1135
    .line 1136
    const-string v29, "restoreFolder"

    .line 1137
    .line 1138
    :try_start_3
    invoke-virtual {v6}, Lq63;->j()Z

    .line 1139
    .line 1140
    .line 1141
    move-result v10

    .line 1142
    if-eqz v10, :cond_24

    .line 1143
    .line 1144
    invoke-static {v6}, Lcy0;->e(Lq63;)V

    .line 1145
    .line 1146
    .line 1147
    goto :goto_1d

    .line 1148
    :catchall_1
    move-exception v0

    .line 1149
    goto/16 :goto_25

    .line 1150
    .line 1151
    :catch_2
    move-exception v0

    .line 1152
    move-object/from16 v31, v0

    .line 1153
    .line 1154
    goto :goto_1f

    .line 1155
    :cond_24
    invoke-static {v6}, Lq63;->E(Lq63;)Z

    .line 1156
    .line 1157
    .line 1158
    :goto_1d
    invoke-virtual {v8, v0, v3, v15}, Lwj3;->h(Lq63;Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;Lnn3;)Lrm6;

    .line 1159
    .line 1160
    .line 1161
    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1162
    :goto_1e
    invoke-virtual {v6}, Lq63;->h()Z

    .line 1163
    .line 1164
    .line 1165
    goto :goto_20

    .line 1166
    :goto_1f
    :try_start_4
    sget-object v28, Lvr6;->INSTANCE:Lvr6;

    .line 1167
    .line 1168
    const-string v30, "Error restoring backup"

    .line 1169
    .line 1170
    const/16 v33, 0x8

    .line 1171
    .line 1172
    const/16 v34, 0x0

    .line 1173
    .line 1174
    const/16 v32, 0x0

    .line 1175
    .line 1176
    invoke-static/range {v28 .. v34}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 1177
    .line 1178
    .line 1179
    new-instance v0, Lqm6;

    .line 1180
    .line 1181
    invoke-virtual/range {v31 .. v31}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1182
    .line 1183
    .line 1184
    move-result-object v3

    .line 1185
    if-nez v3, :cond_25

    .line 1186
    .line 1187
    const-string v3, "Unknown error during restore"

    .line 1188
    .line 1189
    :cond_25
    invoke-direct {v0, v3}, Lqm6;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1190
    .line 1191
    .line 1192
    goto :goto_1e

    .line 1193
    :goto_20
    sget-object v20, Lvr6;->INSTANCE:Lvr6;

    .line 1194
    .line 1195
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1196
    .line 1197
    const-string v6, "Restore result: "

    .line 1198
    .line 1199
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1200
    .line 1201
    .line 1202
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1203
    .line 1204
    .line 1205
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1206
    .line 1207
    .line 1208
    move-result-object v22

    .line 1209
    const/16 v24, 0x4

    .line 1210
    .line 1211
    const/16 v25, 0x0

    .line 1212
    .line 1213
    const-string v21, "FolderRestoreHelper"

    .line 1214
    .line 1215
    const/16 v23, 0x0

    .line 1216
    .line 1217
    invoke-static/range {v20 .. v25}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 1218
    .line 1219
    .line 1220
    instance-of v3, v0, Lqm6;

    .line 1221
    .line 1222
    iget-object v4, v4, Lvn3;->c:Lun3;

    .line 1223
    .line 1224
    if-eqz v3, :cond_28

    .line 1225
    .line 1226
    check-cast v0, Lqm6;

    .line 1227
    .line 1228
    iget-object v0, v0, Lqm6;->a:Ljava/lang/String;

    .line 1229
    .line 1230
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1231
    .line 1232
    .line 1233
    iget-object v3, v4, Lun3;->a:Ljava/lang/String;

    .line 1234
    .line 1235
    if-eqz v3, :cond_27

    .line 1236
    .line 1237
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 1238
    .line 1239
    .line 1240
    move-result v3

    .line 1241
    if-nez v3, :cond_26

    .line 1242
    .line 1243
    goto :goto_21

    .line 1244
    :cond_26
    iget-object v3, v4, Lun3;->a:Ljava/lang/String;

    .line 1245
    .line 1246
    const-string v6, ", "

    .line 1247
    .line 1248
    invoke-static {v3, v6, v0}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1249
    .line 1250
    .line 1251
    move-result-object v0

    .line 1252
    iput-object v0, v4, Lun3;->a:Ljava/lang/String;

    .line 1253
    .line 1254
    goto :goto_22

    .line 1255
    :cond_27
    :goto_21
    iget-object v3, v4, Lun3;->b:Lvn3;

    .line 1256
    .line 1257
    iget-object v3, v3, Lvn3;->a:Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 1258
    .line 1259
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getDisplayName()Ljava/lang/String;

    .line 1260
    .line 1261
    .line 1262
    move-result-object v3

    .line 1263
    const-string v6, ": "

    .line 1264
    .line 1265
    invoke-static {v3, v6, v0}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1266
    .line 1267
    .line 1268
    move-result-object v0

    .line 1269
    iput-object v0, v4, Lun3;->a:Ljava/lang/String;

    .line 1270
    .line 1271
    :cond_28
    :goto_22
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1272
    .line 1273
    .line 1274
    move-result-object v0

    .line 1275
    invoke-virtual {v7, v0}, Lqv;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1276
    .line 1277
    .line 1278
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1279
    .line 1280
    .line 1281
    move-result-wide v6

    .line 1282
    invoke-static {v12, v13, v6, v7}, Lorg/swiftapps/swiftbackup/common/Const;->u(JJ)Ljava/lang/String;

    .line 1283
    .line 1284
    .line 1285
    move-result-object v22

    .line 1286
    const/16 v24, 0x4

    .line 1287
    .line 1288
    const/16 v25, 0x0

    .line 1289
    .line 1290
    const-string v21, "FolderRestoreTask"

    .line 1291
    .line 1292
    const/16 v23, 0x0

    .line 1293
    .line 1294
    invoke-static/range {v20 .. v25}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 1295
    .line 1296
    .line 1297
    iget-object v0, v4, Lun3;->a:Ljava/lang/String;

    .line 1298
    .line 1299
    if-eqz v0, :cond_2a

    .line 1300
    .line 1301
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 1302
    .line 1303
    .line 1304
    move-result v0

    .line 1305
    if-nez v0, :cond_29

    .line 1306
    .line 1307
    goto :goto_23

    .line 1308
    :cond_29
    iget-object v0, v9, Lrn3;->a:Ljava/util/ArrayList;

    .line 1309
    .line 1310
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1311
    .line 1312
    .line 1313
    :cond_2a
    :goto_23
    add-int/lit8 v14, v14, 0x64

    .line 1314
    .line 1315
    invoke-virtual {v1, v14}, Lpw6;->n(I)V

    .line 1316
    .line 1317
    .line 1318
    if-eqz v42, :cond_2b

    .line 1319
    .line 1320
    sget-boolean v0, Lq63;->d:Z

    .line 1321
    .line 1322
    sget-object v0, Lry5;->u:Ljava/lang/String;

    .line 1323
    .line 1324
    const/4 v7, 0x0

    .line 1325
    const/4 v10, 0x0

    .line 1326
    invoke-static {v10, v7}, Lqy5;->f(ZLzn7;)Lry5;

    .line 1327
    .line 1328
    .line 1329
    move-result-object v0

    .line 1330
    iget-object v0, v0, Lry5;->t:Ljava/lang/String;

    .line 1331
    .line 1332
    invoke-static {v0}, Lcy0;->g(Ljava/lang/String;)V

    .line 1333
    .line 1334
    .line 1335
    goto :goto_24

    .line 1336
    :cond_2b
    const/4 v7, 0x0

    .line 1337
    const/4 v10, 0x0

    .line 1338
    :goto_24
    move-object/from16 v5, v19

    .line 1339
    .line 1340
    move-object/from16 v3, v27

    .line 1341
    .line 1342
    move-object/from16 v4, v36

    .line 1343
    .line 1344
    move-object/from16 v6, v38

    .line 1345
    .line 1346
    move-object/from16 v7, v39

    .line 1347
    .line 1348
    move/from16 v0, v40

    .line 1349
    .line 1350
    goto/16 :goto_3

    .line 1351
    .line 1352
    :goto_25
    invoke-virtual {v6}, Lq63;->h()Z

    .line 1353
    .line 1354
    .line 1355
    throw v0

    .line 1356
    :cond_2c
    const-string v0, "FolderBackup has no backups: "

    .line 1357
    .line 1358
    invoke-static {v6, v0}, Ly5;->l(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1359
    .line 1360
    .line 1361
    return-void

    .line 1362
    :cond_2d
    invoke-static {}, Ld6;->o()V

    .line 1363
    .line 1364
    .line 1365
    return-void

    .line 1366
    :cond_2e
    :goto_26
    invoke-virtual {v9}, Lrn3;->a()Z

    .line 1367
    .line 1368
    .line 1369
    move-result v0

    .line 1370
    if-eqz v0, :cond_2f

    .line 1371
    .line 1372
    move-object/from16 v8, v17

    .line 1373
    .line 1374
    check-cast v8, Lpp3;

    .line 1375
    .line 1376
    iput-object v9, v8, Lpp3;->b:Lrn3;

    .line 1377
    .line 1378
    :cond_2f
    instance-of v0, v2, Lvy7;

    .line 1379
    .line 1380
    iget-object v3, v1, Lqp3;->n:Ljava/lang/String;

    .line 1381
    .line 1382
    if-eqz v0, :cond_30

    .line 1383
    .line 1384
    check-cast v2, Lvy7;

    .line 1385
    .line 1386
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    .line 1387
    .line 1388
    .line 1389
    move-result v0

    .line 1390
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1391
    .line 1392
    const-string v5, "Starting delete backup operation for "

    .line 1393
    .line 1394
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1395
    .line 1396
    .line 1397
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1398
    .line 1399
    .line 1400
    const-string v0, " folders"

    .line 1401
    .line 1402
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1403
    .line 1404
    .line 1405
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1406
    .line 1407
    .line 1408
    move-result-object v0

    .line 1409
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    .line 1411
    .line 1412
    new-instance v0, Lbl3;

    .line 1413
    .line 1414
    invoke-direct {v0, v1, v2}, Lbl3;-><init>(Lqp3;Lvy7;)V

    .line 1415
    .line 1416
    .line 1417
    iput-object v0, v1, Lqp3;->r:Lbl3;

    .line 1418
    .line 1419
    :try_start_5
    invoke-virtual {v0}, Lbl3;->a()Z

    .line 1420
    .line 1421
    .line 1422
    move-result v0

    .line 1423
    if-nez v0, :cond_30

    .line 1424
    .line 1425
    move-object/from16 v8, v17

    .line 1426
    .line 1427
    check-cast v8, Lpp3;

    .line 1428
    .line 1429
    iget-object v0, v8, Lpp3;->c:Ljava/util/ArrayList;

    .line 1430
    .line 1431
    const-string v2, "Error deleting some backup files"

    .line 1432
    .line 1433
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 1434
    .line 1435
    .line 1436
    goto :goto_27

    .line 1437
    :catch_3
    move-exception v0

    .line 1438
    move-object/from16 v8, v17

    .line 1439
    .line 1440
    check-cast v8, Lpp3;

    .line 1441
    .line 1442
    iget-object v2, v8, Lpp3;->c:Ljava/util/ArrayList;

    .line 1443
    .line 1444
    invoke-static {v0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 1445
    .line 1446
    .line 1447
    move-result-object v0

    .line 1448
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1449
    .line 1450
    .line 1451
    :cond_30
    :goto_27
    invoke-virtual {v1}, Lpw6;->g()Z

    .line 1452
    .line 1453
    .line 1454
    move-result v0

    .line 1455
    if-nez v0, :cond_31

    .line 1456
    .line 1457
    invoke-static/range {v18 .. v18}, Lel1;->S0(Ljava/util/List;)Ljava/lang/Object;

    .line 1458
    .line 1459
    .line 1460
    move-result-object v0

    .line 1461
    check-cast v0, Leo3;

    .line 1462
    .line 1463
    invoke-virtual {v0}, Leo3;->a()Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 1464
    .line 1465
    .line 1466
    move-result-object v0

    .line 1467
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1468
    .line 1469
    const-string v2, "executeTask: Posting folder event for single folder: "

    .line 1470
    .line 1471
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1472
    .line 1473
    .line 1474
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1475
    .line 1476
    .line 1477
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1478
    .line 1479
    .line 1480
    move-result-object v1

    .line 1481
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1482
    .line 1483
    .line 1484
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getId()Ljava/lang/String;

    .line 1485
    .line 1486
    .line 1487
    move-result-object v0

    .line 1488
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1489
    .line 1490
    .line 1491
    const-class v1, Lqp3;

    .line 1492
    .line 1493
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 1494
    .line 1495
    .line 1496
    move-result-object v1

    .line 1497
    const-string v2, "FolderEventSingle requested by "

    .line 1498
    .line 1499
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1500
    .line 1501
    .line 1502
    move-result-object v1

    .line 1503
    const-string v2, "FolderEventSingle"

    .line 1504
    .line 1505
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    .line 1507
    .line 1508
    new-instance v1, Lmm3;

    .line 1509
    .line 1510
    invoke-direct {v1, v0}, Lmm3;-><init>(Ljava/lang/String;)V

    .line 1511
    .line 1512
    .line 1513
    invoke-static {}, Lny2;->b()Lny2;

    .line 1514
    .line 1515
    .line 1516
    move-result-object v0

    .line 1517
    invoke-virtual {v0, v1}, Lny2;->e(Ljava/lang/Object;)V

    .line 1518
    .line 1519
    .line 1520
    :cond_31
    new-instance v0, Lb05;

    .line 1521
    .line 1522
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 1523
    .line 1524
    .line 1525
    invoke-static {}, Lny2;->b()Lny2;

    .line 1526
    .line 1527
    .line 1528
    move-result-object v1

    .line 1529
    invoke-virtual {v1, v0}, Lny2;->e(Ljava/lang/Object;)V

    .line 1530
    .line 1531
    .line 1532
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lqp3;->n:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final d()I
    .locals 0

    .line 1
    iget-object p0, p0, Lqp3;->m:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    mul-int/lit8 p0, p0, 0x64

    .line 8
    .line 9
    return p0
.end method

.method public final f()I
    .locals 0

    .line 1
    iget-object p0, p0, Lqp3;->m:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 2
    .line 3
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lpw6;->g()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    const p0, 0x7f130281

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const p0, 0x7f130260

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    return-object p0
.end method

.method public final j()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 2
    .line 3
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object p0, p0, Lqp3;->m:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const v1, 0x7f1305c3

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    return-object p0
.end method

.method public final l()V
    .locals 2

    .line 1
    sget-object v0, Lzn4;->a:Lzn4;

    .line 2
    .line 3
    new-instance v0, Lfj;

    .line 4
    .line 5
    const/16 v1, 0x1a

    .line 6
    .line 7
    invoke-direct {v0, p0, v1}, Lfj;-><init>(Ljava/lang/Object;I)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lzn4;->c(Lbt3;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final p(Lorg/swiftapps/swiftbackup/folders/data/FolderItem;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lzn4;->a:Lzn4;

    .line 5
    .line 6
    new-instance v0, Lg52;

    .line 7
    .line 8
    const/4 v1, 0x5

    .line 9
    invoke-direct {v0, v1, p0, p1}, Lg52;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lzn4;->e(Lbt3;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
