.class public final Lc40;
.super Lpw6;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final m:Ljava/util/List;

.field public final n:Ljava/lang/String;

.field public final o:Lex6;

.field public p:Ljl;

.field public q:Lwv;

.field public r:Llz;

.field public s:Ljk;

.field public t:Lnq;

.field public u:Z

.field public v:Lpw5;


# direct methods
.method public constructor <init>(Ljava/util/List;Lty7;Lb40;)V
    .locals 1

    .line 1
    invoke-direct {p0, p2, p3}, Lpw6;-><init>(Lcz7;Ldz7;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lc40;->m:Ljava/util/List;

    .line 5
    .line 6
    const-string p3, "AppsTask"

    .line 7
    .line 8
    iput-object p3, p0, Lc40;->n:Ljava/lang/String;

    .line 9
    .line 10
    new-instance p3, Lex6;

    .line 11
    .line 12
    invoke-direct {p3}, Lzy4;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p3, p0, Lc40;->o:Lex6;

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
    check-cast v0, Lkz;

    .line 28
    .line 29
    invoke-virtual {v0}, Lkz;->a()Lji;

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
    instance-of p0, p2, Lky7;

    .line 51
    .line 52
    if-nez p0, :cond_1

    .line 53
    .line 54
    instance-of p0, p2, Lry7;

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
    check-cast p1, Lkz;

    .line 80
    .line 81
    invoke-virtual {p1}, Lkz;->b()Z

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
    const-string p2, "batch_apps_cloud"

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
    iget-object v0, p0, Lc40;->p:Ljl;

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
    iput-boolean v3, v0, Ljl;->h:Z

    .line 11
    .line 12
    iget-object v4, v0, Ljl;->e:Lvl;

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
    const-string v6, "AppBackupTask"

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
    iput-boolean v3, v4, Lvl;->s:Z

    .line 29
    .line 30
    :cond_0
    iget-object v0, v0, Ljl;->f:La00;

    .line 31
    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    iput-boolean v3, v0, La00;->k:Z

    .line 35
    .line 36
    iget-object v0, v0, La00;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

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
    const-string v6, "AppUploadTask"

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
    const-string v6, "AppUploadTask"

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
    iget-object v0, p0, Lc40;->q:Lwv;

    .line 141
    .line 142
    if-eqz v0, :cond_6

    .line 143
    .line 144
    iput-boolean v3, v0, Lwv;->i:Z

    .line 145
    .line 146
    iget-object v0, v0, Lwv;->g:Lmq;

    .line 147
    .line 148
    if-eqz v0, :cond_6

    .line 149
    .line 150
    iput-boolean v3, v0, Lmq;->i:Z

    .line 151
    .line 152
    iget-object v0, v0, Lmq;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

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
    const-string v5, "AppDownloadTask"

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
    const-string v5, "AppDownloadTask"

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
    iget-object v0, p0, Lc40;->r:Llz;

    .line 257
    .line 258
    if-eqz v0, :cond_7

    .line 259
    .line 260
    iget-object v1, v0, Llz;->b:Lgz7;

    .line 261
    .line 262
    invoke-virtual {v1}, Lgz7;->isRunning()Z

    .line 263
    .line 264
    .line 265
    move-result v1

    .line 266
    if-eqz v1, :cond_7

    .line 267
    .line 268
    sget-object v1, Lgz7;->CANCELLED:Lgz7;

    .line 269
    .line 270
    iput-object v1, v0, Llz;->b:Lgz7;

    .line 271
    .line 272
    :cond_7
    iget-object v0, p0, Lc40;->s:Ljk;

    .line 273
    .line 274
    if-eqz v0, :cond_8

    .line 275
    .line 276
    iget-object v1, v0, Ljk;->c:Lgz7;

    .line 277
    .line 278
    invoke-virtual {v1}, Lgz7;->isRunning()Z

    .line 279
    .line 280
    .line 281
    move-result v1

    .line 282
    if-eqz v1, :cond_8

    .line 283
    .line 284
    sget-object v1, Lgz7;->CANCELLED:Lgz7;

    .line 285
    .line 286
    iput-object v1, v0, Ljk;->c:Lgz7;

    .line 287
    .line 288
    :cond_8
    iget-object p0, p0, Lc40;->t:Lnq;

    .line 289
    .line 290
    if-eqz p0, :cond_9

    .line 291
    .line 292
    iget-object v0, p0, Lnq;->a:Lgz7;

    .line 293
    .line 294
    invoke-virtual {v0}, Lgz7;->isRunning()Z

    .line 295
    .line 296
    .line 297
    move-result v0

    .line 298
    if-eqz v0, :cond_9

    .line 299
    .line 300
    sget-object v0, Lgz7;->CANCELLED:Lgz7;

    .line 301
    .line 302
    iput-object v0, p0, Lnq;->a:Lgz7;

    .line 303
    .line 304
    :cond_9
    return-void
.end method

.method public final b()V
    .locals 53

    move-object/from16 v1, p0

    .line 1
    iget-object v2, v1, Lpw6;->a:Lcz7;

    instance-of v0, v2, Lky7;

    iget-object v3, v1, Lc40;->m:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, v2

    check-cast v0, Lky7;

    invoke-virtual {v1, v0}, Lc40;->q(Lky7;)V

    .line 3
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkz;

    .line 4
    sget-object v5, Liy;->d:Ljava/util/LinkedHashMap;

    .line 5
    invoke-virtual {v4}, Lkz;->a()Lji;

    move-result-object v4

    invoke-virtual {v4}, Lji;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    instance-of v0, v2, Lry7;

    iget-object v4, v1, Lpw6;->b:Ldz7;

    const-string v5, "Processing "

    iget-object v6, v1, Lpw6;->d:Lgj5;

    const-string v7, "/"

    if-eqz v0, :cond_41

    .line 7
    move-object v0, v2

    check-cast v0, Lry7;

    .line 8
    new-instance v10, Lwv;

    invoke-direct {v10, v1, v0}, Lwv;-><init>(Lc40;Lry7;)V

    iput-object v10, v1, Lc40;->q:Lwv;

    .line 9
    sget-object v0, Lg00;->a:Lg00;

    invoke-static {}, Lg00;->x()Z

    move-result v0

    const-string v11, "AppRestoreManager"

    if-eqz v0, :cond_1

    .line 10
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    const-string v12, "Secondary user detected"

    sget-object v13, Lvr6$a;->YELLOW:Lvr6$a;

    invoke-virtual {v0, v11, v12, v13}, Lvr6;->i(Ljava/lang/String;Ljava/lang/String;Lvr6$a;)V

    .line 11
    :cond_1
    sget-object v14, Lvr6;->INSTANCE:Lvr6;

    const/16 v18, 0x4

    const/16 v19, 0x0

    const-string v15, "AppRestoreManager"

    const-string v16, "Performing pre-restore tasks"

    const/16 v17, 0x0

    invoke-static/range {v14 .. v19}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 12
    sget-object v0, Lmp6;->a:Lmp6;

    invoke-static {}, Lmp6;->f()Z

    move-result v12

    const/4 v13, 0x0

    const-string v14, "null"

    const-string v15, "1"

    if-eqz v12, :cond_6

    .line 13
    const-string v12, "settings get global package_verifier_enable"

    .line 14
    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    sget-object v9, Lip6;->SHIZUKU:Lip6;

    invoke-virtual {v0, v12, v9}, Lmp6;->h([Ljava/lang/String;Lip6;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 15
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_3

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 16
    :cond_3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 17
    invoke-static {v9, v15}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    invoke-static {v9, v14}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    :cond_5
    const/4 v0, 0x1

    .line 18
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_2

    :cond_6
    move-object v0, v13

    .line 19
    :goto_2
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v9}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 20
    sget-object v9, Lmp6;->a:Lmp6;

    const-string v12, "settings put global package_verifier_enable 0"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    sget-object v8, Lip6;->SHIZUKU:Lip6;

    invoke-virtual {v9, v12, v8}, Lmp6;->h([Ljava/lang/String;Lip6;)Ljava/util/List;

    .line 21
    :cond_7
    sget-object v8, Lmp6;->a:Lmp6;

    invoke-static {}, Lmp6;->f()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 22
    const-string v9, "settings get global verifier_verify_adb_installs"

    .line 23
    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    sget-object v12, Lip6;->SHIZUKU:Lip6;

    invoke-virtual {v8, v9, v12}, Lmp6;->h([Ljava/lang/String;Lip6;)Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_9

    .line 24
    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_9

    :cond_8
    const/4 v8, 0x0

    goto :goto_3

    .line 25
    :cond_9
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 26
    invoke-static {v9, v15}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_b

    invoke-static {v9, v14}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    :cond_b
    const/4 v8, 0x1

    .line 27
    :goto_3
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    goto :goto_4

    :cond_c
    move-object v8, v13

    .line 28
    :goto_4
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v8, v9}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 29
    sget-object v9, Lmp6;->a:Lmp6;

    const-string v12, "settings put global verifier_verify_adb_installs 0"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    sget-object v14, Lip6;->SHIZUKU:Lip6;

    invoke-virtual {v9, v12, v14}, Lmp6;->h([Ljava/lang/String;Lip6;)Ljava/util/List;

    .line 30
    :cond_d
    new-instance v9, Llh6;

    .line 31
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 32
    sget-object v12, Lmp6;->a:Lmp6;

    invoke-static {}, Lmp6;->f()Z

    move-result v12

    if-eqz v12, :cond_e

    .line 33
    sget-object v12, Lzn4;->a:Lzn4;

    new-instance v12, Luv;

    const/4 v14, 0x0

    invoke-direct {v12, v9, v13, v14}, Luv;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 34
    invoke-static {v13, v12}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 35
    :cond_e
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const/4 v14, 0x0

    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    iget-object v13, v10, Lwv;->h:Lsv;

    if-eqz v15, :cond_3b

    add-int/lit8 v15, v14, 0x1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v21, v4

    move-object/from16 v4, v20

    check-cast v4, Lkz;

    .line 36
    invoke-virtual {v10}, Lwv;->a()Z

    move-result v20

    if-eqz v20, :cond_f

    :goto_6
    move-object/from16 v48, v0

    move-object/from16 v30, v2

    move-object/from16 v29, v3

    move-object/from16 v45, v5

    move-object/from16 v46, v6

    move-object/from16 v47, v7

    move-object/from16 v49, v8

    move-object/from16 v50, v9

    const/4 v14, 0x0

    goto/16 :goto_20

    .line 37
    :cond_f
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v20, v12

    move-object v12, v4

    check-cast v12, Ljz;

    move/from16 v22, v14

    iget-object v14, v12, Ljz;->h:Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;

    move-object/from16 v26, v14

    iget-object v14, v12, Ljz;->b:Lji;

    move-object/from16 v29, v3

    .line 38
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v3

    move-object/from16 v30, v2

    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 40
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v31, v15

    const/4 v15, 0x1

    if-le v3, v15, :cond_10

    .line 41
    invoke-virtual {v6, v2}, Lzy4;->i(Ljava/lang/Object;)V

    .line 42
    :cond_10
    sget-object v32, Lvr6;->INSTANCE:Lvr6;

    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    const/16 v36, 0x4

    const/16 v37, 0x0

    const-string v33, "AppRestoreManager"

    const/16 v35, 0x0

    invoke-static/range {v32 .. v37}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 43
    invoke-virtual {v1, v14}, Lc40;->p(Lji;)V

    const/4 v2, 0x0

    .line 44
    invoke-virtual {v1, v2}, Lpw6;->k(Lr62;)V

    mul-int/lit8 v2, v22, 0x64

    .line 45
    new-instance v3, Lnv;

    invoke-direct {v3, v10, v4, v2}, Lnv;-><init>(Lwv;Lkz;I)V

    if-eqz v26, :cond_11

    const/4 v4, 0x1

    goto :goto_7

    :cond_11
    const/4 v4, 0x0

    .line 46
    :goto_7
    iget-object v15, v12, Ljz;->c:Ljava/util/List;

    if-eqz v4, :cond_12

    const/16 v19, 0x2

    goto :goto_8

    :cond_12
    const/16 v19, 0x1

    :goto_8
    const/16 v32, 0x64

    move/from16 v33, v2

    mul-int/lit8 v2, v19, 0x64

    move/from16 v28, v4

    if-eqz v28, :cond_2d

    .line 47
    iget-object v4, v10, Lwv;->f:Lgv7;

    invoke-virtual {v4}, Lgv7;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lrv;

    .line 48
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v23, v12

    .line 49
    iget-object v12, v4, Lrv;->a:Lc40;

    move-object/from16 v24, v12

    .line 50
    iget-object v12, v4, Lrv;->c:Ljava/lang/String;

    if-eqz v26, :cond_2c

    .line 51
    iget-object v4, v4, Lrv;->b:Lzn7;

    .line 52
    new-instance v35, Lmq;

    move-object/from16 v27, v4

    move-object/from16 v25, v12

    move-object/from16 v22, v35

    invoke-direct/range {v22 .. v27}, Lmq;-><init>(Ljz;Lc40;Ljava/lang/String;Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;Lzn7;)V

    move-object/from16 v44, v14

    move-object/from16 v14, v22

    move-object/from16 v4, v23

    move-object/from16 v12, v24

    move-object/from16 v43, v26

    .line 53
    iput-object v14, v10, Lwv;->g:Lmq;

    move-object/from16 v45, v5

    .line 54
    new-instance v5, Lpv;

    move-object/from16 v46, v6

    const/4 v6, 0x0

    invoke-direct {v5, v3, v2, v6}, Lpv;-><init>(Lmt3;II)V

    .line 55
    iput-object v5, v14, Lmq;->l:Lpv;

    .line 56
    iget-object v5, v14, Lmq;->f:Lhq;

    iget-object v6, v5, Lhq;->c:Lfo2;

    move-object/from16 v34, v6

    .line 57
    iget-object v6, v5, Lhq;->d:Lfo2;

    move-object/from16 v35, v6

    .line 58
    iget-object v6, v5, Lhq;->e:Lfo2;

    move-object/from16 v36, v6

    .line 59
    iget-object v6, v5, Lhq;->f:Lfo2;

    move-object/from16 v37, v6

    .line 60
    iget-object v6, v5, Lhq;->g:Lfo2;

    move-object/from16 v38, v6

    .line 61
    iget-object v6, v5, Lhq;->h:Lfo2;

    move-object/from16 v39, v6

    .line 62
    iget-object v6, v5, Lhq;->i:Lfo2;

    move-object/from16 v40, v6

    .line 63
    iget-object v6, v5, Lhq;->j:Lfo2;

    move-object/from16 v41, v6

    filled-new-array/range {v34 .. v41}, [Lfo2;

    move-result-object v6

    .line 64
    invoke-static {v6}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 65
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v22

    move-object/from16 v23, v6

    iget-object v6, v14, Lmq;->j:Lkq;

    if-eqz v22, :cond_14

    :cond_13
    move-object/from16 v48, v0

    move/from16 v52, v2

    move-object/from16 v47, v7

    move-object/from16 v49, v8

    move-object/from16 v50, v9

    move-object/from16 v51, v11

    goto/16 :goto_18

    .line 66
    :cond_14
    invoke-interface/range {v23 .. v23}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_15
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_13

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lfo2;

    if-eqz v23, :cond_15

    move-object/from16 v47, v7

    .line 67
    iget-object v7, v14, Lmq;->e:Lji;

    move-object/from16 v48, v0

    invoke-virtual {v7}, Lji;->asString()Ljava/lang/String;

    move-result-object v0

    .line 68
    sget-object v22, Ltb1;->a:Ltb1;

    invoke-static {}, Lqb1;->f()Ldd1;

    move-result-object v22

    move-object/from16 v49, v8

    invoke-virtual/range {v22 .. v22}, Ldd1;->getDisplayNameEn()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v50, v9

    const-string v9, ". Cloud: "

    move-object/from16 v51, v11

    const-string v11, ", Tag: "

    move/from16 v52, v2

    .line 69
    const-string v2, "Processing download for app: "

    invoke-static {v2, v0, v9, v8, v11}, Lu48;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 70
    const-string v2, "."

    .line 71
    iget-object v8, v14, Lmq;->c:Ljava/lang/String;

    invoke-static {v0, v8, v2}, Ldj7;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 72
    sget-object v22, Lvr6;->INSTANCE:Lvr6;

    const/16 v26, 0x4

    const/16 v27, 0x0

    const-string v23, "AppDownloadTask"

    const/16 v25, 0x0

    invoke-static/range {v22 .. v27}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 73
    invoke-virtual {v12, v7}, Lc40;->p(Lji;)V

    .line 74
    iget-object v0, v14, Lmq;->g:Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;

    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getSBVersionCodesRequired()Ljava/util/List;

    move-result-object v0

    new-instance v2, Lhj;

    const/4 v8, 0x1

    invoke-direct {v2, v14, v8}, Lhj;-><init>(Ljava/lang/Object;I)V

    iget-object v8, v14, Lmq;->k:Lnm6;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v2}, Lnm6;->a(Ljava/util/List;Lmt3;)Z

    move-result v0

    if-nez v0, :cond_16

    goto/16 :goto_18

    .line 75
    :cond_16
    invoke-virtual {v7}, Lji;->checkInstalled()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 76
    invoke-static {v15}, Lwx3;->p(Ljava/util/Collection;)Z

    move-result v0

    .line 77
    sget-object v2, Liu;->EXTDATA:Liu;

    invoke-interface {v15, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 78
    sget-object v8, Liu;->MEDIA:Liu;

    invoke-interface {v15, v8}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v8

    .line 79
    sget-object v9, Liu;->EXPANSION:Liu;

    invoke-interface {v15, v9}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v9

    .line 80
    invoke-virtual {v7, v0, v2, v8, v9}, Lji;->calculateSize(ZZZZ)V

    .line 81
    :cond_17
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 82
    invoke-static {}, Lgz;->getEntries()Ljx2;

    move-result-object v2

    check-cast v2, Lz3;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    new-instance v8, Lw3;

    invoke-direct {v8, v2}, Lw3;-><init>(Lz3;)V

    .line 84
    :cond_18
    :goto_9
    invoke-virtual {v8}, Lw3;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-virtual {v8}, Lw3;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgz;

    .line 85
    sget-object v9, Llq;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget v9, v9, v11

    packed-switch v9, :pswitch_data_0

    invoke-static {}, Lq;->j()V

    return-void

    .line 86
    :pswitch_0
    iget-object v9, v5, Lhq;->j:Lfo2;

    if-eqz v9, :cond_1a

    .line 87
    iget-boolean v11, v4, Ljz;->e:Z

    if-nez v11, :cond_19

    .line 88
    iget-boolean v11, v4, Ljz;->f:Z

    if-eqz v11, :cond_1a

    .line 89
    :cond_19
    invoke-virtual {v14, v9}, Lmq;->a(Lfo2;)Z

    move-result v11

    if-eqz v11, :cond_1a

    goto/16 :goto_a

    :cond_1a
    const/4 v9, 0x0

    goto/16 :goto_a

    .line 90
    :pswitch_1
    iget-object v9, v5, Lhq;->i:Lfo2;

    if-eqz v9, :cond_1a

    .line 91
    invoke-static {v15}, Lwx3;->q(Ljava/util/Collection;)Z

    move-result v11

    if-eqz v11, :cond_1a

    invoke-virtual {v14, v9}, Lmq;->a(Lfo2;)Z

    move-result v11

    if-eqz v11, :cond_1a

    goto/16 :goto_a

    .line 92
    :pswitch_2
    iget-object v9, v5, Lhq;->h:Lfo2;

    if-eqz v9, :cond_1a

    .line 93
    invoke-static {v15}, Lwx3;->s(Ljava/util/Collection;)Z

    move-result v11

    if-eqz v11, :cond_1a

    invoke-virtual {v14, v9}, Lmq;->a(Lfo2;)Z

    move-result v11

    if-eqz v11, :cond_1a

    goto :goto_a

    .line 94
    :pswitch_3
    iget-object v9, v5, Lhq;->g:Lfo2;

    if-eqz v9, :cond_1a

    .line 95
    invoke-static {v15}, Lwx3;->r(Ljava/util/Collection;)Z

    move-result v11

    if-eqz v11, :cond_1a

    invoke-virtual {v14, v9}, Lmq;->a(Lfo2;)Z

    move-result v11

    if-eqz v11, :cond_1a

    goto :goto_a

    .line 96
    :pswitch_4
    iget-object v9, v5, Lhq;->f:Lfo2;

    if-eqz v9, :cond_1a

    .line 97
    invoke-static {v15}, Lwx3;->p(Ljava/util/Collection;)Z

    move-result v11

    if-eqz v11, :cond_1a

    invoke-virtual {v14, v9}, Lmq;->a(Lfo2;)Z

    move-result v11

    if-eqz v11, :cond_1a

    goto :goto_a

    .line 98
    :pswitch_5
    iget-object v9, v5, Lhq;->e:Lfo2;

    if-eqz v9, :cond_1a

    .line 99
    invoke-static {v15}, Lwx3;->o(Ljava/util/Collection;)Z

    move-result v11

    if-eqz v11, :cond_1a

    invoke-virtual {v14, v9}, Lmq;->a(Lfo2;)Z

    move-result v11

    if-eqz v11, :cond_1a

    goto :goto_a

    .line 100
    :pswitch_6
    iget-object v9, v5, Lhq;->d:Lfo2;

    if-eqz v9, :cond_1a

    .line 101
    invoke-static {v15}, Lwx3;->o(Ljava/util/Collection;)Z

    move-result v11

    if-eqz v11, :cond_1a

    invoke-virtual {v14, v9}, Lmq;->a(Lfo2;)Z

    move-result v11

    if-eqz v11, :cond_1a

    goto :goto_a

    .line 102
    :pswitch_7
    iget-object v9, v5, Lhq;->c:Lfo2;

    if-eqz v9, :cond_1a

    .line 103
    invoke-static {v15}, Lwx3;->o(Ljava/util/Collection;)Z

    move-result v11

    if-eqz v11, :cond_1a

    invoke-virtual {v14, v9}, Lmq;->a(Lfo2;)Z

    move-result v11

    if-eqz v11, :cond_1a

    :goto_a
    if-eqz v9, :cond_18

    .line 104
    invoke-interface {v0, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_9

    .line 105
    :cond_1b
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 106
    sget-object v22, Lvr6;->INSTANCE:Lvr6;

    const/16 v26, 0x4

    const/16 v27, 0x0

    const-string v23, "AppDownloadTask"

    const-string v24, "Nothing to download!"

    const/16 v25, 0x0

    invoke-static/range {v22 .. v27}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    goto/16 :goto_18

    .line 107
    :cond_1c
    sget-object v34, Lvr6;->INSTANCE:Lvr6;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v22

    const/16 v26, 0x0

    const/16 v27, 0x3f

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v22 .. v27}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    move-result-object v2

    const-string v5, "Download tasks: "

    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    const/16 v38, 0x4

    const/16 v39, 0x0

    const-string v35, "AppDownloadTask"

    const/16 v37, 0x0

    invoke-static/range {v34 .. v39}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 108
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const-wide/16 v22, 0x0

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lfo2;

    const-wide/16 v24, 0x0

    .line 109
    iget-wide v8, v5, Lfo2;->c:J

    add-long v22, v22, v8

    goto :goto_b

    :cond_1d
    const-wide/16 v24, 0x0

    .line 110
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    cmp-long v5, v22, v24

    if-lez v5, :cond_1e

    goto :goto_c

    :cond_1e
    const/4 v2, 0x0

    :goto_c
    if-eqz v2, :cond_1f

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    :goto_d
    move-wide/from16 v40, v8

    goto :goto_e

    :cond_1f
    const-wide/16 v8, 0x1

    goto :goto_d

    .line 111
    :goto_e
    new-instance v37, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct/range {v37 .. v37}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 112
    sget-object v2, Lry5;->u:Ljava/lang/String;

    iget-object v2, v14, Lmq;->d:Lzn7;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    invoke-virtual {v2}, Lzn7;->n()Lq63;

    move-result-object v2

    invoke-static {v2}, Lqy5;->c(Lq63;)Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_20

    .line 114
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    goto :goto_f

    :cond_20
    move-wide/from16 v8, v24

    :goto_f
    const-wide/32 v22, 0x6400000

    cmp-long v2, v8, v22

    if-lez v2, :cond_21

    sub-long v8, v8, v22

    :cond_21
    cmp-long v2, v8, v40

    if-gez v2, :cond_22

    const/4 v2, 0x1

    goto :goto_10

    :cond_22
    const/4 v2, 0x0

    .line 115
    :goto_10
    sget-object v5, Lp93;->a:Lp93;

    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v5}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v5

    .line 116
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v8}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v8

    if-eqz v2, :cond_23

    .line 117
    invoke-virtual {v7}, Lji;->getName()Ljava/lang/String;

    move-result-object v2

    .line 118
    sget-object v7, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    move-result-object v7

    const v9, 0x7f13053b

    .line 119
    filled-new-array {v5, v8}, [Ljava/lang/Object;

    move-result-object v5

    .line 120
    invoke-virtual {v7, v9, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": ("

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_11

    :cond_23
    const/4 v2, 0x0

    :goto_11
    if-eqz v2, :cond_25

    .line 122
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_24

    goto :goto_12

    .line 123
    :cond_24
    iput-object v2, v6, Lkq;->b:Ljava/lang/String;

    goto/16 :goto_18

    .line 124
    :cond_25
    :goto_12
    new-instance v39, Lkh6;

    .line 125
    invoke-direct/range {v39 .. v39}, Ljava/lang/Object;-><init>()V

    .line 126
    new-instance v42, Lkh6;

    .line 127
    invoke-direct/range {v42 .. v42}, Ljava/lang/Object;-><init>()V

    .line 128
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 129
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 130
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v38, v7

    check-cast v38, Lgz;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v36, v5

    check-cast v36, Lfo2;

    .line 131
    sget-object v5, Lzn4;->a:Lzn4;

    new-instance v34, Liq;

    move-object/from16 v35, v14

    invoke-direct/range {v34 .. v42}, Liq;-><init>(Lmq;Lfo2;Ljava/util/concurrent/ConcurrentHashMap;Lgz;Lkh6;JLkh6;)V

    move-object/from16 v5, v34

    .line 132
    new-instance v7, Lvn4;

    invoke-direct {v7, v5}, Lvn4;-><init>(Lbt3;)V

    .line 133
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 134
    :cond_26
    iget-object v0, v12, Lpw6;->i:Lex6;

    .line 135
    sget-object v5, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    move-result-object v5

    const v7, 0x7f130209

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lex6;->k(Ljava/lang/Object;)V

    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 137
    sget-object v0, Lzn4;->a:Lzn4;

    .line 138
    :try_start_0
    sget-object v0, Ld45;->b:Ld45;

    .line 139
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ld45;->a()Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    move-result-object v0

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->isAnonymous()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_14

    :catch_0
    :cond_27
    const/4 v0, 0x0

    .line 140
    :goto_14
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v5}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 141
    const-string v0, "parallel_cloud_transfers"

    .line 142
    :try_start_1
    sget-object v5, Lcz4;->f:Landroid/content/SharedPreferences;

    if-eqz v5, :cond_28

    const/4 v14, 0x0

    invoke-interface {v5, v0, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_15

    :cond_28
    const-string v0, "prefs"

    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    const/16 v18, 0x0

    throw v18
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v0, 0x0

    :goto_15
    if-eqz v0, :cond_29

    const/4 v0, 0x1

    :goto_16
    const/4 v5, 0x4

    goto :goto_17

    :cond_29
    const/4 v0, 0x0

    goto :goto_16

    .line 143
    :goto_17
    invoke-static {v5, v2, v0}, Lzn4;->a(ILjava/util/ArrayList;Z)Ljava/util/List;

    .line 144
    sget-object v22, Lvr6;->INSTANCE:Lvr6;

    invoke-static {v7, v8}, Lorg/swiftapps/swiftbackup/common/Const;->v(J)Ljava/lang/String;

    move-result-object v24

    const/16 v26, 0x4

    const/16 v27, 0x0

    const-string v23, "AppDownloadTask"

    const/16 v25, 0x0

    invoke-static/range {v22 .. v27}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    const/4 v2, 0x0

    .line 145
    invoke-virtual {v12, v2}, Lpw6;->o(Ljava/lang/String;)V

    .line 146
    :goto_18
    iget-object v0, v6, Lkq;->a:Ljava/lang/String;

    if-nez v0, :cond_2b

    .line 147
    iget-object v0, v6, Lkq;->b:Ljava/lang/String;

    if-nez v0, :cond_2b

    .line 148
    iget-object v0, v6, Lkq;->c:Ljava/lang/String;

    if-eqz v0, :cond_2a

    goto :goto_1a

    :cond_2a
    :goto_19
    const/4 v2, 0x0

    goto :goto_1b

    .line 149
    :cond_2b
    :goto_1a
    iget-object v0, v13, Lsv;->b:Ljava/util/ArrayList;

    .line 150
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 151
    :goto_1b
    invoke-virtual {v1, v2}, Lpw6;->o(Ljava/lang/String;)V

    goto :goto_1c

    .line 152
    :cond_2c
    const-string v0, "props.cloudBackup cannot be null!"

    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    return-void

    :cond_2d
    move-object/from16 v48, v0

    move/from16 v52, v2

    move-object/from16 v45, v5

    move-object/from16 v46, v6

    move-object/from16 v47, v7

    move-object/from16 v49, v8

    move-object/from16 v50, v9

    move-object/from16 v51, v11

    move-object v4, v12

    move-object/from16 v44, v14

    move-object/from16 v43, v26

    .line 153
    :goto_1c
    invoke-virtual {v10}, Lwv;->a()Z

    move-result v0

    if-eqz v0, :cond_2e

    goto/16 :goto_1e

    .line 154
    :cond_2e
    sget-object v0, Lmp6;->a:Lmp6;

    invoke-static {}, Lmp6;->f()Z

    move-result v0

    if-nez v0, :cond_2f

    sget-object v0, Liu;->APP:Liu;

    invoke-interface {v15, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    goto/16 :goto_1e

    :cond_2f
    if-eqz v28, :cond_30

    move/from16 v0, v32

    goto :goto_1d

    :cond_30
    const/4 v0, 0x0

    .line 155
    :goto_1d
    iget-object v2, v10, Lwv;->e:Lgv7;

    invoke-virtual {v2}, Lgv7;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltv;

    .line 156
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 157
    new-instance v22, Lxw;

    .line 158
    iget-object v5, v2, Ltv;->a:Lc40;

    .line 159
    iget-object v6, v2, Ltv;->b:Lry7;

    .line 160
    iget-object v7, v2, Ltv;->c:Ljava/lang/String;

    .line 161
    iget-boolean v8, v5, Lc40;->u:Z

    const/16 v16, 0x1

    xor-int/lit8 v27, v8, 0x1

    .line 162
    new-instance v8, Lck;

    const/4 v9, 0x4

    invoke-direct {v8, v2, v9}, Lck;-><init>(Ljava/lang/Object;I)V

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    move-object/from16 v25, v6

    move-object/from16 v26, v7

    move-object/from16 v28, v8

    .line 163
    invoke-direct/range {v22 .. v28}, Lxw;-><init>(Ljz;Lc40;Lry7;Ljava/lang/String;ZLck;)V

    move-object/from16 v2, v22

    .line 164
    new-instance v4, Lqv;

    move/from16 v5, v52

    const/4 v14, 0x0

    invoke-direct {v4, v0, v5, v14, v3}, Lqv;-><init>(IIILmt3;)V

    invoke-virtual {v2, v4}, Lxw;->d(Lqv;)Luw;

    move-result-object v0

    .line 165
    iget-object v2, v0, Luw;->a:Ljava/lang/String;

    if-eqz v2, :cond_31

    .line 166
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_38

    .line 167
    :cond_31
    iget-object v2, v0, Luw;->b:Ljava/lang/String;

    if-eqz v2, :cond_32

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_38

    .line 168
    :cond_32
    iget-object v2, v0, Luw;->c:Ljava/lang/String;

    if-eqz v2, :cond_33

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_38

    .line 169
    :cond_33
    iget-object v2, v0, Luw;->d:Ljava/lang/String;

    if-eqz v2, :cond_34

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_38

    .line 170
    :cond_34
    iget-object v2, v0, Luw;->e:Ljava/lang/String;

    if-eqz v2, :cond_35

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_38

    .line 171
    :cond_35
    iget-object v2, v0, Luw;->g:Ljava/lang/String;

    if-eqz v2, :cond_36

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_38

    .line 172
    :cond_36
    iget-object v2, v0, Luw;->h:Ljava/lang/String;

    if-eqz v2, :cond_37

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_38

    .line 173
    :cond_37
    iget-object v2, v0, Luw;->f:Ljava/lang/String;

    if-eqz v2, :cond_39

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_38

    goto :goto_1e

    .line 174
    :cond_38
    iget-object v2, v13, Lsv;->a:Ljava/util/ArrayList;

    .line 175
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_39
    :goto_1e
    if-eqz v43, :cond_3a

    .line 176
    sget-object v0, Lmp6;->a:Lmp6;

    invoke-static {}, Lmp6;->f()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 177
    const-string v0, "Cleaning cloud cache on device"

    move-object/from16 v2, v51

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    sget-boolean v0, Lq63;->d:Z

    sget-object v0, Lry5;->u:Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v14, 0x0

    .line 179
    invoke-static {v14, v0}, Lqy5;->f(ZLzn7;)Lry5;

    move-result-object v3

    .line 180
    iget-object v0, v3, Lry5;->h:Ljava/lang/String;

    .line 181
    invoke-static {v0}, Lcy0;->g(Ljava/lang/String;)V

    goto :goto_1f

    :cond_3a
    move-object/from16 v2, v51

    const/4 v14, 0x0

    .line 182
    :goto_1f
    new-instance v0, Lr62;

    invoke-virtual/range {v44 .. v44}, Lji;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v4, v3}, Lr62;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lpw6;->k(Lr62;)V

    add-int/lit8 v0, v33, 0x64

    .line 183
    invoke-virtual {v1, v0}, Lpw6;->n(I)V

    move-object v11, v2

    move-object/from16 v12, v20

    move-object/from16 v4, v21

    move-object/from16 v3, v29

    move-object/from16 v2, v30

    move/from16 v14, v31

    move-object/from16 v5, v45

    move-object/from16 v6, v46

    move-object/from16 v7, v47

    move-object/from16 v0, v48

    move-object/from16 v8, v49

    move-object/from16 v9, v50

    const/4 v13, 0x0

    goto/16 :goto_5

    :cond_3b
    move-object/from16 v21, v4

    goto/16 :goto_6

    .line 184
    :goto_20
    sget-object v3, Lvr6;->INSTANCE:Lvr6;

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, "AppRestoreManager"

    const-string v5, "Performing post-restore tasks"

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 185
    sget-object v0, Lzn4;->a:Lzn4;

    new-instance v0, Lvv;

    move-object/from16 v2, v48

    move-object/from16 v8, v49

    move-object/from16 v4, v50

    const/4 v5, 0x0

    invoke-direct {v0, v2, v8, v4, v5}, Lvv;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Llh6;Ljv1;)V

    .line 186
    invoke-static {v5, v0}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 187
    invoke-virtual {v13}, Lsv;->a()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 188
    move-object/from16 v4, v21

    check-cast v4, Lb40;

    .line 189
    iput-object v13, v4, Lb40;->b:Lsv;

    goto/16 :goto_23

    .line 190
    :cond_3c
    sget-object v0, Lmp6;->a:Lmp6;

    invoke-static {}, Lmp6;->f()Z

    move-result v0

    if-eqz v0, :cond_3d

    goto/16 :goto_23

    .line 191
    :cond_3d
    invoke-static/range {v29 .. v29}, Lel1;->S0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Ljz;

    iget-object v2, v0, Ljz;->g:Lhk;

    .line 192
    iget-object v0, v0, Ljz;->c:Ljava/util/List;

    .line 193
    sget-object v4, Liu;->APP:Liu;

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 194
    new-instance v5, Lq63;

    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x2

    invoke-direct {v5, v0, v4}, Lq63;-><init>(Ljava/io/File;I)V

    .line 195
    invoke-static {v5}, Lcy0;->e(Lq63;)V

    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 197
    new-instance v4, Lyw;

    .line 198
    invoke-virtual {v2}, Lhk;->c()Lq63;

    move-result-object v6

    .line 199
    invoke-virtual {v2}, Lhk;->C()Lq63;

    move-result-object v2

    .line 200
    invoke-direct {v4, v6, v2}, Lyw;-><init>(Lq63;Lq63;)V

    .line 201
    invoke-virtual {v6}, Lq63;->v()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    invoke-virtual {v2}, Lq63;->j()Z

    move-result v6

    if-eqz v6, :cond_3f

    .line 203
    new-instance v7, Lb7;

    const/4 v6, 0x3

    invoke-direct {v7, v6}, Lb7;-><init>(I)V

    .line 204
    iget-boolean v6, v4, Lyw;->c:Z

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v2

    invoke-static/range {v4 .. v9}, Lzg;->a(Lq63;Lq63;ZLbt3;Lfv;Lgv;)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_3e

    .line 205
    const-string v2, "Failed extraction of "

    .line 206
    invoke-static {v4, v2}, Lxs1;->i(Lq63;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    .line 207
    iget-object v4, v1, Lc40;->n:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    goto :goto_22

    .line 208
    :cond_3e
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq63;

    .line 209
    invoke-virtual {v3}, Lq63;->v()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_21

    .line 210
    :cond_3f
    :goto_22
    move-object/from16 v4, v21

    check-cast v4, Lb40;

    .line 211
    iput-object v0, v4, Lb40;->c:Ljava/util/ArrayList;

    :cond_40
    :goto_23
    move-object/from16 v2, v30

    goto :goto_24

    :cond_41
    move-object/from16 v29, v3

    move-object/from16 v21, v4

    move-object/from16 v45, v5

    move-object/from16 v46, v6

    move-object/from16 v47, v7

    const/4 v14, 0x0

    .line 212
    :goto_24
    instance-of v0, v2, Lsy7;

    const-string v3, " "

    iget-object v4, v1, Lpw6;->i:Lex6;

    const/16 v5, 0xa

    if-eqz v0, :cond_47

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    move-object/from16 v6, v29

    invoke-static {v6, v5}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 214
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_25
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_42

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 215
    check-cast v8, Lkz;

    .line 216
    invoke-virtual {v8}, Lkz;->a()Lji;

    move-result-object v8

    .line 217
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_25

    .line 218
    :cond_42
    new-instance v7, Llz;

    invoke-direct {v7, v1, v0}, Llz;-><init>(Lc40;Ljava/util/ArrayList;)V

    iput-object v7, v1, Lc40;->r:Llz;

    .line 219
    sget-object v8, Lgz7;->RUNNING:Lgz7;

    iput-object v8, v7, Llz;->b:Lgz7;

    .line 220
    sget-object v8, Lg00;->a:Lg00;

    invoke-static {}, Lg00;->i()I

    move-result v8

    .line 221
    sget-object v22, Lvr6;->INSTANCE:Lvr6;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    const-string v10, "Uninstalling "

    const-string v11, " apps"

    .line 222
    invoke-static {v9, v10, v11}, Lxs1;->h(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const/16 v26, 0x4

    const/16 v27, 0x0

    .line 223
    iget-object v9, v7, Llz;->a:Ljava/lang/String;

    const/16 v25, 0x0

    move-object/from16 v23, v9

    invoke-static/range {v22 .. v27}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    move-object/from16 v29, v23

    .line 224
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v10, v14

    :goto_26
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_43

    const/16 v16, 0x1

    add-int/lit8 v10, v10, 0x1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lji;

    .line 225
    iget-object v12, v7, Llz;->b:Lgz7;

    invoke-virtual {v12}, Lgz7;->isCancelled()Z

    move-result v12

    if-eqz v12, :cond_44

    :cond_43
    move-object/from16 v14, v45

    move-object/from16 v13, v46

    move-object/from16 v15, v47

    goto/16 :goto_28

    .line 226
    :cond_44
    invoke-virtual {v1, v11}, Lc40;->p(Lji;)V

    .line 227
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v15, v47

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 228
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x1

    if-le v13, v14, :cond_45

    move-object/from16 v13, v46

    .line 229
    invoke-virtual {v13, v12}, Lzy4;->i(Ljava/lang/Object;)V

    goto :goto_27

    :cond_45
    move-object/from16 v13, v46

    .line 230
    :goto_27
    sget-object v28, Lvr6;->INSTANCE:Lvr6;

    move-object/from16 v14, v45

    invoke-virtual {v14, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    const/16 v32, 0x4

    const/16 v33, 0x0

    const/16 v31, 0x0

    invoke-static/range {v28 .. v33}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 231
    sget-object v12, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    move-result-object v12

    const v5, 0x7f13057f

    invoke-virtual {v12, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lzy4;->i(Ljava/lang/Object;)V

    .line 232
    invoke-virtual {v11}, Lji;->asString()Ljava/lang/String;

    move-result-object v5

    const-string v12, "Uninstalling: "

    .line 233
    invoke-static {v12, v5}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 234
    invoke-static/range {v28 .. v33}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 235
    invoke-virtual {v11}, Lji;->isBundled()Z

    move-result v5

    if-nez v5, :cond_46

    .line 236
    sget-object v5, Lmp6;->a:Lmp6;

    .line 237
    invoke-virtual {v11}, Lji;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "pm uninstall --user "

    .line 238
    invoke-static {v8, v12, v3, v11}, Lu48;->k(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 239
    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    .line 240
    sget-object v12, Lip6;->SHIZUKU:Lip6;

    .line 241
    invoke-virtual {v5, v11, v12}, Lmp6;->h([Ljava/lang/String;Lip6;)Ljava/util/List;

    :cond_46
    mul-int/lit8 v5, v10, 0x64

    .line 242
    invoke-virtual {v1, v5}, Lpw6;->n(I)V

    move-object/from16 v46, v13

    move-object/from16 v45, v14

    move-object/from16 v47, v15

    const/16 v5, 0xa

    const/4 v14, 0x0

    goto/16 :goto_26

    .line 243
    :goto_28
    sget-object v0, Lgz7;->COMPLETE:Lgz7;

    iput-object v0, v7, Llz;->b:Lgz7;

    goto :goto_29

    :cond_47
    move-object/from16 v6, v29

    move-object/from16 v14, v45

    move-object/from16 v13, v46

    move-object/from16 v15, v47

    .line 244
    :goto_29
    instance-of v0, v2, Loy7;

    if-eqz v0, :cond_49

    .line 245
    new-instance v0, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v6, v5}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 246
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_48

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 247
    check-cast v7, Lkz;

    .line 248
    invoke-virtual {v7}, Lkz;->a()Lji;

    move-result-object v7

    .line 249
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    .line 250
    :cond_48
    new-instance v5, Ljk;

    invoke-direct {v5, v1, v0}, Ljk;-><init>(Lc40;Ljava/util/ArrayList;)V

    iput-object v5, v1, Lc40;->s:Ljk;

    .line 251
    :try_start_2
    invoke-virtual {v5}, Ljk;->a()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2b

    :catch_2
    move-exception v0

    .line 252
    move-object/from16 v5, v21

    check-cast v5, Lb40;

    .line 253
    iget-object v5, v5, Lb40;->d:Ljava/util/ArrayList;

    .line 254
    invoke-static {v0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    :cond_49
    :goto_2b
    instance-of v0, v2, Lpy7;

    if-eqz v0, :cond_51

    .line 256
    new-instance v0, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v6, v5}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 257
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 258
    check-cast v7, Lkz;

    .line 259
    invoke-virtual {v7}, Lkz;->a()Lji;

    move-result-object v7

    .line 260
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    .line 261
    :cond_4a
    check-cast v2, Lpy7;

    .line 262
    iget-boolean v2, v2, Lpy7;->f:Z

    .line 263
    new-instance v5, Lnq;

    .line 264
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 265
    sget-object v7, Lgz7;->WAITING:Lgz7;

    iput-object v7, v5, Lnq;->a:Lgz7;

    .line 266
    iput-object v5, v1, Lc40;->t:Lnq;

    .line 267
    sget-object v7, Lgz7;->RUNNING:Lgz7;

    iput-object v7, v5, Lnq;->a:Lgz7;

    .line 268
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v8, 0x0

    :goto_2d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_50

    const/16 v16, 0x1

    add-int/lit8 v8, v8, 0x1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lji;

    .line 269
    iget-object v10, v5, Lnq;->a:Lgz7;

    invoke-virtual {v10}, Lgz7;->isCancelled()Z

    move-result v10

    if-eqz v10, :cond_4b

    goto/16 :goto_31

    .line 270
    :cond_4b
    invoke-virtual {v1, v9}, Lc40;->p(Lji;)V

    .line 271
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 272
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_4c

    .line 273
    invoke-virtual {v13, v10}, Lzy4;->i(Ljava/lang/Object;)V

    .line 274
    :cond_4c
    sget-object v16, Lvr6;->INSTANCE:Lvr6;

    invoke-virtual {v14, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const/16 v20, 0x4

    const/16 v21, 0x0

    const-string v17, "AppEnableDisableHelper"

    const/16 v19, 0x0

    invoke-static/range {v16 .. v21}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 275
    sget-object v10, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    move-result-object v10

    if-eqz v2, :cond_4d

    const v11, 0x7f130217

    goto :goto_2e

    :cond_4d
    const v11, 0x7f1301fe

    :goto_2e
    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 276
    invoke-virtual {v4, v10}, Lzy4;->i(Ljava/lang/Object;)V

    if-eqz v2, :cond_4e

    .line 277
    const-string v10, "Enabling"

    goto :goto_2f

    :cond_4e
    const-string v10, "Disabling"

    .line 278
    :goto_2f
    invoke-virtual {v9}, Lji;->asString()Ljava/lang/String;

    move-result-object v11

    .line 279
    invoke-static {v10, v3, v11}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const/16 v20, 0x4

    const/16 v21, 0x0

    .line 280
    const-string v17, "AppEnableDisableHelper"

    const/16 v19, 0x0

    invoke-static/range {v16 .. v21}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 281
    invoke-virtual {v9}, Lji;->getEnabled()Z

    move-result v10

    if-ne v2, v10, :cond_4f

    goto :goto_30

    .line 282
    :cond_4f
    sget-object v10, Lg00;->a:Lg00;

    .line 283
    invoke-virtual {v9}, Lji;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 284
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    xor-int/lit8 v10, v2, 0x1

    .line 285
    const-string v11, ""

    invoke-static {v9, v11, v10}, Lg00;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_30
    mul-int/lit8 v9, v8, 0x64

    .line 286
    invoke-virtual {v1, v9}, Lpw6;->n(I)V

    goto/16 :goto_2d

    .line 287
    :cond_50
    :goto_31
    sget-object v0, Lgz7;->COMPLETE:Lgz7;

    iput-object v0, v5, Lnq;->a:Lgz7;

    .line 288
    :cond_51
    iget-boolean v0, v1, Lc40;->u:Z

    iget-object v2, v1, Lc40;->n:Ljava/lang/String;

    if-nez v0, :cond_52

    .line 289
    const-string v0, "Reloading local apps"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    sget-object v7, Lkz4;->g:Lkz4;

    const/4 v11, 0x0

    const/4 v12, 0x6

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Ldv;->i(Ldv;ZLgk6;ZZI)V

    .line 291
    :cond_52
    invoke-virtual {v1}, Lpw6;->g()Z

    move-result v0

    if-nez v0, :cond_53

    .line 292
    invoke-static {v6}, Lel1;->S0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkz;

    invoke-virtual {v0}, Lkz;->a()Lji;

    move-result-object v0

    .line 293
    invoke-virtual {v0}, Lji;->asString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "executeTask: Posting app event for single app: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    const-class v1, Lc40;

    invoke-virtual {v0}, Lji;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lw13;->q(Ljava/lang/Class;Ljava/lang/String;)V

    .line 295
    :cond_53
    new-instance v0, Ld40;

    .line 296
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 297
    invoke-static {}, Lny2;->b()Lny2;

    move-result-object v1

    invoke-virtual {v1, v0}, Lny2;->e(Ljava/lang/Object;)V

    return-void

    nop

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

.method public final c()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lc40;->n:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final d()I
    .locals 0

    .line 1
    iget-object p0, p0, Lc40;->m:Ljava/util/List;

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
    iget-object p0, p0, Lc40;->m:Ljava/util/List;

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
    const p0, 0x7f130079

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const p0, 0x7f130053

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
    iget-object p0, p0, Lc40;->m:Ljava/util/List;

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
    const v1, 0x7f1305b9

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
    new-instance v0, Ldk;

    .line 4
    .line 5
    const/16 v1, 0x9

    .line 6
    .line 7
    invoke-direct {v0, p0, v1}, Ldk;-><init>(Ljava/lang/Object;I)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lzn4;->c(Lbt3;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final p(Lji;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lzn4;->a:Lzn4;

    .line 5
    .line 6
    new-instance v0, Lqf;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-direct {v0, v1, p0, p1}, Lqf;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lzn4;->e(Lbt3;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final q(Lky7;)V
    .locals 105

    move-object/from16 v1, p0

    .line 1
    new-instance v2, Ljl;

    move-object/from16 v0, p1

    invoke-direct {v2, v1, v0}, Ljl;-><init>(Lc40;Lky7;)V

    iput-object v2, v1, Lc40;->p:Ljl;

    .line 2
    iget-object v3, v1, Lc40;->m:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v6, 0x0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    iget-object v7, v2, Ljl;->g:Lhl;

    if-eqz v0, :cond_0

    add-int/lit8 v8, v6, 0x1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkz;

    .line 3
    invoke-virtual {v2}, Ljl;->a()Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    move-object v2, v1

    move-object v1, v7

    goto/16 :goto_39

    .line 4
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v11, v0

    check-cast v11, Lhz;

    iget-object v9, v11, Lhz;->b:Lji;

    .line 5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    .line 6
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 7
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x1

    if-le v12, v13, :cond_2

    .line 8
    iget-object v12, v1, Lpw6;->d:Lgj5;

    .line 9
    invoke-virtual {v12, v10}, Lzy4;->i(Ljava/lang/Object;)V

    .line 10
    :cond_2
    sget-object v14, Lvr6;->INSTANCE:Lvr6;

    const-string v12, "Processing "

    invoke-virtual {v12, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const/16 v18, 0x4

    const/16 v19, 0x0

    const-string v15, "AppBackupManager"

    const/16 v17, 0x0

    invoke-static/range {v14 .. v19}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 11
    invoke-virtual {v1, v9}, Lc40;->p(Lji;)V

    const/4 v10, 0x0

    .line 12
    invoke-virtual {v1, v10}, Lpw6;->k(Lr62;)V

    mul-int/lit8 v12, v6, 0x64

    .line 13
    new-instance v14, Lwk;

    invoke-direct {v14, v2, v0, v12}, Lwk;-><init>(Ljl;Lkz;I)V

    .line 14
    invoke-virtual {v11}, Lhz;->d()Z

    move-result v23

    iget-object v15, v11, Lhz;->c:Ljava/util/List;

    xor-int/lit8 v0, v23, 0x1

    move-object/from16 p1, v10

    .line 15
    iget-object v10, v11, Lhz;->d:Ljava/util/List;

    .line 16
    invoke-static {v10}, Lji8;->r(Ljava/util/Collection;)Z

    move-result v10

    if-nez v10, :cond_4

    invoke-virtual {v11}, Lhz;->d()Z

    move-result v10

    if-eqz v10, :cond_3

    goto :goto_1

    :cond_3
    const/16 v24, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    move/from16 v24, v13

    .line 17
    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    filled-new-array {v0, v10}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 18
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_5

    const/4 v10, 0x0

    goto :goto_4

    .line 19
    :cond_5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v10, 0x0

    :cond_6
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Boolean;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    if-eqz v16, :cond_6

    add-int/lit8 v10, v10, 0x1

    if-ltz v10, :cond_7

    goto :goto_3

    :cond_7
    invoke-static {}, Lfl1;->E0()V

    throw p1

    :cond_8
    :goto_4
    const/16 v25, 0x64

    mul-int/lit8 v10, v10, 0x64

    const/4 v5, 0x2

    if-nez v23, :cond_b

    .line 20
    iget-object v0, v2, Ljl;->c:Lgv7;

    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgl;

    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v16, v10

    .line 22
    new-instance v10, Lvl;

    move/from16 v17, v12

    .line 23
    iget-object v12, v0, Lgl;->a:Lc40;

    move/from16 v18, v13

    .line 24
    invoke-virtual {v12}, Lpw6;->g()Z

    move-result v13

    move-object/from16 v19, v14

    .line 25
    new-instance v14, Lek;

    invoke-direct {v14, v0, v5}, Lek;-><init>(Ljava/lang/Object;I)V

    move-object/from16 v20, v15

    .line 26
    new-instance v15, Lah;

    invoke-direct {v15, v0, v5}, Lah;-><init>(Ljava/lang/Object;I)V

    .line 27
    new-instance v5, Lal;

    move-object/from16 v26, v3

    const/4 v3, 0x0

    invoke-direct {v5, v0, v3}, Lal;-><init>(Lgl;I)V

    .line 28
    new-instance v3, Ld76;

    move-object/from16 v27, v4

    const/4 v4, 0x2

    invoke-direct {v3, v0, v4}, Ld76;-><init>(Ljava/lang/Object;I)V

    .line 29
    new-instance v4, Lbl;

    move-object/from16 v21, v3

    const/4 v3, 0x0

    invoke-direct {v4, v0, v3}, Lbl;-><init>(Lgl;I)V

    .line 30
    new-instance v3, Llf;

    move-object/from16 v22, v4

    const/4 v4, 0x2

    invoke-direct {v3, v0, v4}, Llf;-><init>(Ljava/lang/Object;I)V

    move-object/from16 v28, v3

    .line 31
    new-instance v3, Lej;

    invoke-direct {v3, v0, v4}, Lej;-><init>(Ljava/lang/Object;I)V

    .line 32
    new-instance v4, Lfj;

    move-object/from16 v29, v3

    const/4 v3, 0x3

    invoke-direct {v4, v0, v3}, Lfj;-><init>(Ljava/lang/Object;I)V

    move-object/from16 v30, v4

    .line 33
    new-instance v4, Lgj;

    invoke-direct {v4, v0, v3}, Lgj;-><init>(Ljava/lang/Object;I)V

    move-object/from16 v3, v19

    move-object/from16 v19, v28

    move-object/from16 v28, v20

    move-object/from16 v20, v29

    move/from16 v29, v18

    move-object/from16 v18, v22

    move-object/from16 v22, v4

    move/from16 v4, v16

    move-object/from16 v16, v5

    move/from16 v5, v17

    move-object/from16 v17, v21

    move-object/from16 v21, v30

    .line 34
    invoke-direct/range {v10 .. v22}, Lvl;-><init>(Lhz;Lc40;ZLek;Lah;Lal;Ld76;Lbl;Llf;Lej;Lfj;Lgj;)V

    .line 35
    iput-object v10, v2, Ljl;->e:Lvl;

    .line 36
    new-instance v0, Lxk;

    invoke-direct {v0, v4, v3}, Lxk;-><init>(ILwk;)V

    .line 37
    :try_start_0
    invoke-virtual {v10, v0}, Lvl;->g(Lxk;)Ltl;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v10, v0

    goto :goto_5

    :catch_0
    move-exception v0

    move-object v15, v0

    .line 38
    sget-object v12, Lvr6;->INSTANCE:Lvr6;

    const/16 v17, 0x8

    const/16 v18, 0x0

    const-string v13, "AppBackupTask"

    const-string v14, "Unexpected app backup failure"

    const/16 v16, 0x0

    invoke-static/range {v12 .. v18}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 39
    iget-boolean v0, v10, Lvl;->s:Z

    iget-object v10, v10, Lvl;->q:Ltl;

    if-nez v0, :cond_a

    .line 40
    invoke-virtual {v15}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    const-string v0, "App backup failed"

    :cond_9
    invoke-virtual {v10, v0}, Ltl;->a(Ljava/lang/String;)V

    .line 41
    :cond_a
    :goto_5
    invoke-virtual {v10}, Ltl;->c()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 42
    iget-object v0, v7, Lhl;->a:Ljava/util/ArrayList;

    .line 43
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_b
    move-object/from16 v26, v3

    move-object/from16 v27, v4

    move v4, v10

    move v5, v12

    move/from16 v29, v13

    move-object v3, v14

    move-object/from16 v28, v15

    const/4 v10, 0x0

    .line 44
    :cond_c
    :goto_6
    invoke-virtual {v2}, Ljl;->a()Z

    move-result v0

    sget-object v12, Lov2;->a:Lov2;

    const-string v13, "."

    if-nez v0, :cond_f

    if-eqz v10, :cond_10

    .line 45
    iget-object v0, v10, Ltl;->g:Ljava/lang/String;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_d

    goto :goto_7

    :cond_d
    const/4 v0, 0x0

    goto :goto_8

    :cond_e
    :goto_7
    move/from16 v0, v29

    :goto_8
    xor-int/lit8 v0, v0, 0x1

    move/from16 v14, v29

    if-ne v0, v14, :cond_10

    :cond_f
    move-object/from16 v18, v2

    move/from16 v17, v5

    move v7, v6

    move/from16 v16, v8

    move-object/from16 v20, v9

    goto/16 :goto_32

    :cond_10
    if-nez v23, :cond_11

    move/from16 v0, v25

    goto :goto_9

    :cond_11
    const/4 v0, 0x0

    .line 46
    :goto_9
    iget-object v14, v2, Ljl;->e:Lvl;

    if-eqz v14, :cond_12

    .line 47
    iget-object v14, v14, Lvl;->r:Lhk;

    if-nez v14, :cond_13

    .line 48
    :cond_12
    iget-object v14, v11, Lhz;->e:Lhk;

    :cond_13
    if-eqz v24, :cond_f

    if-eqz v14, :cond_f

    .line 49
    iget-object v15, v2, Ljl;->d:Lgv7;

    invoke-virtual {v15}, Lgv7;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lil;

    .line 50
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v17, v5

    .line 51
    new-instance v5, La00;

    move/from16 v16, v8

    .line 52
    iget-object v8, v15, Lil;->a:Lc40;

    .line 53
    iget-object v15, v15, Lil;->b:Ljava/lang/String;

    .line 54
    invoke-direct {v5, v11, v8, v14, v15}, La00;-><init>(Lhz;Lc40;Lhk;Ljava/lang/String;)V

    .line 55
    iput-object v5, v2, Ljl;->f:La00;

    move-object/from16 v18, v2

    .line 56
    new-instance v2, Lyk;

    invoke-direct {v2, v0, v3, v4}, Lyk;-><init>(ILwk;I)V

    .line 57
    iget-object v0, v5, La00;->d:Lji;

    invoke-virtual {v0}, Lji;->asString()Ljava/lang/String;

    move-result-object v3

    .line 58
    sget-object v4, Ltb1;->a:Ltb1;

    invoke-static {}, Lqb1;->f()Ldd1;

    move-result-object v4

    invoke-virtual {v4}, Ldd1;->getDisplayNameEn()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v19, v0

    const-string v0, ". Cloud: "

    move-object/from16 v20, v9

    const-string v9, ", Tag: "

    .line 59
    const-string v1, "Processing upload for app: "

    invoke-static {v1, v3, v0, v4, v9}, Lu48;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 60
    invoke-static {v0, v15, v13}, Ldj7;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 61
    sget-object v33, Lvr6;->INSTANCE:Lvr6;

    const/16 v34, 0x4

    const/16 v35, 0x0

    const-string v31, "AppUploadTask"

    move-object/from16 v30, v33

    const/16 v33, 0x0

    invoke-static/range {v30 .. v35}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    move-object/from16 v33, v30

    .line 62
    iput-object v2, v5, La00;->n:Lyk;

    .line 63
    iget-object v0, v11, Lhz;->f:Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;

    .line 64
    sget-object v1, Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;->WIFI:Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;

    const-string v2, ": "

    iget-object v3, v5, La00;->l:Lxz;

    if-ne v0, v1, :cond_14

    invoke-static {}, Lorg/swiftapps/swiftbackup/common/Const;->z()Z

    move-result v0

    if-nez v0, :cond_14

    const/16 v37, 0x4

    const/16 v38, 0x0

    .line 65
    const-string v34, "AppUploadTask"

    const-string v35, "Upload requires WiFi, but WiFi isn\'t available. Wait for it in case of network switch."

    const/16 v36, 0x0

    invoke-static/range {v33 .. v38}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 66
    invoke-static {}, Lorg/swiftapps/swiftbackup/common/Const;->a()Z

    move-result v0

    if-nez v0, :cond_14

    const/16 v37, 0x4

    const/16 v38, 0x0

    .line 67
    const-string v34, "AppUploadTask"

    const-string v35, "Still no WiFi, skipping upload."

    const/16 v36, 0x0

    invoke-static/range {v33 .. v38}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 68
    invoke-virtual/range {v19 .. v19}, Lji;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    move-result-object v1

    const v4, 0x7f13018d

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 69
    invoke-static {v0, v2, v1}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    iput-object v0, v3, Lxz;->a:Ljava/lang/String;

    move-object/from16 v22, v7

    const/4 v1, 0x0

    move v7, v6

    goto/16 :goto_30

    :cond_14
    const/16 v37, 0x4

    const/16 v38, 0x0

    .line 71
    const-string v34, "AppUploadTask"

    const-string v35, "Checking cloud for current sync status"

    const/16 v36, 0x0

    invoke-static/range {v33 .. v38}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 72
    invoke-virtual/range {v19 .. v19}, Lji;->getAppId()Ljava/lang/String;

    move-result-object v0

    .line 73
    sget-object v1, Lre3;->a:Lzc2;

    .line 74
    iget-object v1, v14, Lhk;->a:Ljava/lang/String;

    .line 75
    invoke-static {v0, v1}, Lre3;->a(Ljava/lang/String;Ljava/lang/String;)Lzc2;

    move-result-object v0

    iput-object v0, v5, La00;->j:Lzc2;

    const/4 v14, 0x1

    .line 76
    invoke-static {v0, v14}, Lcf3;->a(Lzc2;Z)Ll73;

    move-result-object v0

    .line 77
    instance-of v1, v0, Lxe3;

    if-eqz v1, :cond_15

    check-cast v0, Lxe3;

    goto :goto_a

    :cond_15
    const/4 v0, 0x0

    :goto_a
    if-eqz v0, :cond_16

    .line 78
    iget-object v0, v0, Lxe3;->n:Leb2;

    .line 79
    const-class v1, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;

    invoke-virtual {v0, v1}, Leb2;->c(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;

    goto :goto_b

    :cond_16
    const/4 v0, 0x0

    :goto_b
    if-eqz v0, :cond_17

    .line 80
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->isValidCloudDetails()Z

    move-result v1

    const/4 v14, 0x1

    if-ne v1, v14, :cond_17

    .line 81
    iput-boolean v14, v5, La00;->i:Z

    :cond_17
    if-eqz v0, :cond_19

    .line 82
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->hasSplitApks()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 83
    invoke-virtual {v11}, Lhz;->d()Z

    move-result v1

    if-nez v1, :cond_19

    .line 84
    invoke-virtual/range {v19 .. v19}, Lji;->isInstalled()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual/range {v19 .. v19}, Lji;->getSplitSourceDirs()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_18

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_19

    :cond_18
    const/16 v37, 0x4

    const/16 v38, 0x0

    .line 85
    const-string v34, "AppUploadTask"

    const-string v35, "Removing split details from cloud, currently installed app doesn\'t have splits."

    const/16 v36, 0x0

    invoke-static/range {v33 .. v38}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 86
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->removeSplitsDetails()V

    :cond_19
    if-eqz v0, :cond_1a

    .line 87
    invoke-virtual/range {v19 .. v19}, Lji;->getName()Ljava/lang/String;

    move-result-object v36

    const/16 v103, 0x3

    const/16 v104, 0x0

    const/16 v35, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v63, 0x0

    const/16 v64, 0x0

    const/16 v65, 0x0

    const/16 v66, 0x0

    const/16 v67, 0x0

    const/16 v68, 0x0

    const/16 v69, 0x0

    const/16 v70, 0x0

    const/16 v71, 0x0

    const/16 v72, 0x0

    const/16 v73, 0x0

    const/16 v74, 0x0

    const/16 v75, 0x0

    const/16 v76, 0x0

    const/16 v77, 0x0

    const/16 v78, 0x0

    const/16 v79, 0x0

    const/16 v80, 0x0

    const/16 v81, 0x0

    const/16 v82, 0x0

    const/16 v83, 0x0

    const/16 v84, 0x0

    const/16 v85, 0x0

    const/16 v86, 0x0

    const/16 v87, 0x0

    const/16 v88, 0x0

    const/16 v89, 0x0

    const/16 v90, 0x0

    const/16 v91, 0x0

    const/16 v92, 0x0

    const/16 v93, 0x0

    const/16 v94, 0x0

    const/16 v95, 0x0

    const/16 v96, 0x0

    const/16 v97, 0x0

    const/16 v98, 0x0

    const/16 v99, 0x0

    const/16 v100, 0x0

    const/16 v101, -0x3

    const/16 v102, -0x1

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v104}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->copy$default(Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;IIILjava/lang/Object;)Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;

    move-result-object v0

    if-nez v0, :cond_1b

    :cond_1a
    new-instance v30, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;

    .line 88
    invoke-virtual/range {v19 .. v19}, Lji;->getPackageName()Ljava/lang/String;

    move-result-object v31

    .line 89
    invoke-virtual/range {v19 .. v19}, Lji;->getName()Ljava/lang/String;

    move-result-object v32

    const/16 v99, 0x3

    const/16 v100, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v63, 0x0

    const/16 v64, 0x0

    const/16 v65, 0x0

    const/16 v66, 0x0

    const/16 v67, 0x0

    const/16 v68, 0x0

    const/16 v69, 0x0

    const/16 v70, 0x0

    const/16 v71, 0x0

    const/16 v72, 0x0

    const/16 v73, 0x0

    const/16 v74, 0x0

    const/16 v75, 0x0

    const/16 v76, 0x0

    const/16 v77, 0x0

    const/16 v78, 0x0

    const/16 v79, 0x0

    const/16 v80, 0x0

    const/16 v81, 0x0

    const/16 v82, 0x0

    const/16 v83, 0x0

    const/16 v84, 0x0

    const/16 v85, 0x0

    const/16 v86, 0x0

    const/16 v87, 0x0

    const/16 v88, 0x0

    const/16 v89, 0x0

    const/16 v90, 0x0

    const/16 v91, 0x0

    const/16 v92, 0x0

    const/16 v93, 0x0

    const/16 v94, 0x0

    const/16 v95, 0x0

    const/16 v96, 0x0

    const/16 v97, -0x4

    const/16 v98, -0x1

    .line 90
    invoke-direct/range {v30 .. v100}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v0, v30

    .line 91
    :cond_1b
    iput-object v0, v5, La00;->h:Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;

    .line 92
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 93
    invoke-static {}, Lgz;->getEntries()Ljx2;

    move-result-object v4

    check-cast v4, Lz3;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    new-instance v9, Lw3;

    invoke-direct {v9, v4}, Lw3;-><init>(Lz3;)V

    .line 95
    :goto_c
    invoke-virtual {v9}, Lw3;->hasNext()Z

    move-result v4

    iget-object v14, v5, La00;->e:Lmz;

    iget-object v15, v5, La00;->f:Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;

    if-eqz v4, :cond_34

    invoke-virtual {v9}, Lw3;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgz;

    .line 96
    sget-object v21, Lyz;->a:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v22

    aget v21, v21, v22

    packed-switch v21, :pswitch_data_0

    invoke-static {}, Lq;->j()V

    return-void

    .line 97
    :pswitch_0
    iget-object v14, v14, Lmz;->h:Lrf8;

    move-object/from16 v34, v0

    move-object/from16 v22, v7

    move-object v0, v14

    move-object/from16 v21, v15

    :goto_d
    move v7, v6

    goto/16 :goto_10

    .line 98
    :pswitch_1
    iget-object v14, v14, Lmz;->g:Lrf8;

    if-eqz v14, :cond_1d

    .line 99
    invoke-static/range {v28 .. v28}, Lwx3;->q(Ljava/util/Collection;)Z

    move-result v21

    move-object/from16 v34, v0

    if-eqz v21, :cond_1e

    sget-object v0, Liu;->EXPANSION:Liu;

    move-object/from16 v22, v14

    move-object/from16 v21, v15

    invoke-virtual/range {v22 .. v22}, Lrf8;->a()J

    move-result-wide v14

    invoke-virtual {v5, v0, v14, v15}, La00;->a(Liu;J)Z

    move-result v0

    if-eqz v0, :cond_1c

    move-object/from16 v0, v22

    move-object/from16 v22, v7

    goto :goto_d

    :cond_1c
    :goto_e
    move-object/from16 v22, v7

    const/4 v0, 0x0

    goto :goto_d

    :cond_1d
    move-object/from16 v34, v0

    :cond_1e
    move-object/from16 v21, v15

    goto :goto_e

    :pswitch_2
    move-object/from16 v34, v0

    move-object/from16 v21, v15

    .line 100
    iget-object v0, v14, Lmz;->f:Lrf8;

    if-eqz v0, :cond_22

    .line 101
    invoke-static/range {v28 .. v28}, Lwx3;->s(Ljava/util/Collection;)Z

    move-result v14

    if-eqz v14, :cond_1f

    sget-object v14, Liu;->MEDIA:Liu;

    move v15, v6

    move-object/from16 v22, v7

    invoke-virtual {v0}, Lrf8;->a()J

    move-result-wide v6

    invoke-virtual {v5, v14, v6, v7}, La00;->a(Liu;J)Z

    move-result v6

    if-eqz v6, :cond_20

    move v7, v15

    goto/16 :goto_10

    :cond_1f
    move v15, v6

    move-object/from16 v22, v7

    :cond_20
    move v7, v15

    :cond_21
    :goto_f
    const/4 v0, 0x0

    goto/16 :goto_10

    :cond_22
    move-object/from16 v22, v7

    move v7, v6

    goto :goto_f

    :pswitch_3
    move-object/from16 v34, v0

    move-object/from16 v22, v7

    move-object/from16 v21, v15

    move v15, v6

    .line 102
    iget-object v0, v14, Lmz;->e:Lrf8;

    if-eqz v0, :cond_20

    .line 103
    invoke-static/range {v28 .. v28}, Lwx3;->r(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_20

    sget-object v6, Liu;->EXTDATA:Liu;

    move v7, v15

    invoke-virtual {v0}, Lrf8;->a()J

    move-result-wide v14

    invoke-virtual {v5, v6, v14, v15}, La00;->a(Liu;J)Z

    move-result v6

    if-eqz v6, :cond_21

    goto :goto_10

    :pswitch_4
    move-object/from16 v34, v0

    move-object/from16 v22, v7

    move-object/from16 v21, v15

    move v7, v6

    .line 104
    iget-object v0, v14, Lmz;->d:Lrf8;

    if-eqz v0, :cond_21

    .line 105
    invoke-static/range {v28 .. v28}, Lwx3;->p(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_21

    sget-object v6, Liu;->DATA:Liu;

    invoke-virtual {v0}, Lrf8;->a()J

    move-result-wide v14

    invoke-virtual {v5, v6, v14, v15}, La00;->a(Liu;J)Z

    move-result v6

    if-eqz v6, :cond_21

    goto :goto_10

    :pswitch_5
    move-object/from16 v34, v0

    move-object/from16 v22, v7

    move-object/from16 v21, v15

    move v7, v6

    .line 106
    iget-object v0, v14, Lmz;->c:Lrf8;

    if-eqz v0, :cond_21

    .line 107
    invoke-static/range {v28 .. v28}, Lwx3;->o(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_21

    goto :goto_10

    :pswitch_6
    move-object/from16 v34, v0

    move-object/from16 v22, v7

    move-object/from16 v21, v15

    move v7, v6

    .line 108
    iget-object v0, v14, Lmz;->b:Lrf8;

    if-eqz v0, :cond_21

    .line 109
    invoke-static/range {v28 .. v28}, Lwx3;->o(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_21

    goto :goto_10

    :pswitch_7
    move-object/from16 v34, v0

    move-object/from16 v22, v7

    move-object/from16 v21, v15

    move v7, v6

    .line 110
    iget-object v0, v14, Lmz;->a:Lrf8;

    if-eqz v0, :cond_21

    .line 111
    invoke-static/range {v28 .. v28}, Lwx3;->o(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_21

    :goto_10
    if-eqz v0, :cond_33

    .line 112
    iget-object v6, v0, Lrf8;->h:Ljava/lang/String;

    .line 113
    sget-object v35, Lvr6;->INSTANCE:Lvr6;

    const-string v14, "Checking upload for "

    .line 114
    invoke-static {v14, v6}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    const/16 v39, 0x4

    const/16 v40, 0x0

    .line 115
    const-string v36, "AppUploadTask"

    const/16 v38, 0x0

    invoke-static/range {v35 .. v40}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 116
    iget-object v14, v5, La00;->h:Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;

    if-nez v14, :cond_23

    .line 117
    new-instance v6, Lea3;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct {v6, v14, v15}, Lea3;-><init>(Ljava/lang/String;Z)V

    goto/16 :goto_1c

    .line 118
    :cond_23
    iget v15, v0, Lrf8;->b:I

    const-wide/16 v23, -0x1

    .line 119
    const-string v30, "Empty"

    packed-switch v15, :pswitch_data_1

    .line 120
    new-instance v0, Lio5;

    const-string v1, "Cloud file type "

    const-string v2, " not implemented"

    .line 121
    invoke-static {v1, v6, v2}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 122
    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 123
    throw v0

    .line 124
    :pswitch_8
    invoke-virtual {v14}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getSpecialDataLink()Ljava/lang/String;

    move-result-object v6

    :cond_24
    :goto_11
    const/4 v14, 0x1

    goto/16 :goto_1b

    .line 125
    :pswitch_9
    invoke-virtual {v14}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getMediaLink()Ljava/lang/String;

    move-result-object v6

    .line 126
    invoke-virtual {v14}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->hasMedia()Z

    move-result v15

    if-eqz v15, :cond_24

    .line 127
    sget-object v37, Liu;->MEDIA:Liu;

    .line 128
    invoke-virtual/range {v19 .. v19}, Lji;->getMediaDir()Ljava/lang/String;

    move-result-object v38

    .line 129
    iget-object v15, v0, Lrf8;->a:Lq63;

    .line 130
    invoke-virtual {v14}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getMediaBackupDate()Ljava/lang/Long;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lio4;->h(Ljava/lang/Long;)J

    move-result-wide v40

    .line 131
    invoke-virtual/range {v21 .. v21}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getMediaSizeMirrored()Ljava/lang/Long;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lio4;->h(Ljava/lang/Long;)J

    move-result-wide v42

    .line 132
    invoke-virtual {v14}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getMediaSizeMirrored()Ljava/lang/Long;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lio4;->h(Ljava/lang/Long;)J

    move-result-wide v44

    .line 133
    invoke-virtual {v14}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getMediaSize()Ljava/lang/Long;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lio4;->h(Ljava/lang/Long;)J

    move-result-wide v46

    .line 134
    invoke-virtual/range {v21 .. v21}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getMediaPasswordHash()Ljava/lang/String;

    move-result-object v48

    .line 135
    invoke-virtual {v14}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getMediaPasswordHash()Ljava/lang/String;

    move-result-object v49

    .line 136
    iget-object v14, v5, La00;->m:Lmk0;

    move-object/from16 v36, v14

    move-object/from16 v39, v15

    invoke-virtual/range {v36 .. v49}, Lmk0;->a(Liu;Ljava/lang/String;Lq63;JJJJLjava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_25

    goto :goto_11

    :cond_25
    const/4 v14, 0x0

    goto/16 :goto_1b

    .line 137
    :pswitch_a
    invoke-virtual {v14}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getExtDataLink()Ljava/lang/String;

    move-result-object v6

    .line 138
    invoke-virtual {v14}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->hasExtData()Z

    move-result v15

    if-eqz v15, :cond_24

    .line 139
    sget-object v37, Liu;->EXTDATA:Liu;

    .line 140
    invoke-virtual/range {v19 .. v19}, Lji;->getExternalDataDir()Ljava/lang/String;

    move-result-object v38

    .line 141
    iget-object v15, v0, Lrf8;->a:Lq63;

    .line 142
    invoke-virtual {v14}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getExtDataBackupDate()Ljava/lang/Long;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lio4;->h(Ljava/lang/Long;)J

    move-result-wide v40

    .line 143
    invoke-virtual/range {v21 .. v21}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getExtDataSizeMirrored()Ljava/lang/Long;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lio4;->h(Ljava/lang/Long;)J

    move-result-wide v42

    .line 144
    invoke-virtual {v14}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getExtDataSizeMirrored()Ljava/lang/Long;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lio4;->h(Ljava/lang/Long;)J

    move-result-wide v44

    .line 145
    invoke-virtual {v14}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getExtDataSize()Ljava/lang/Long;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lio4;->h(Ljava/lang/Long;)J

    move-result-wide v46

    .line 146
    invoke-virtual/range {v21 .. v21}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getExtDataPasswordHash()Ljava/lang/String;

    move-result-object v48

    .line 147
    invoke-virtual {v14}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getExtDataPasswordHash()Ljava/lang/String;

    move-result-object v49

    .line 148
    iget-object v14, v5, La00;->m:Lmk0;

    move-object/from16 v36, v14

    move-object/from16 v39, v15

    invoke-virtual/range {v36 .. v49}, Lmk0;->a(Liu;Ljava/lang/String;Lq63;JJJJLjava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_25

    goto/16 :goto_11

    .line 149
    :pswitch_b
    invoke-virtual {v14}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getExpLink()Ljava/lang/String;

    move-result-object v6

    .line 150
    invoke-virtual {v14}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->hasExpansion()Z

    move-result v15

    if-eqz v15, :cond_24

    .line 151
    sget-object v37, Liu;->EXPANSION:Liu;

    .line 152
    invoke-virtual/range {v19 .. v19}, Lji;->getExpansionDir()Ljava/lang/String;

    move-result-object v38

    .line 153
    iget-object v15, v0, Lrf8;->a:Lq63;

    .line 154
    invoke-virtual {v14}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getExpansionBackupDate()Ljava/lang/Long;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lio4;->h(Ljava/lang/Long;)J

    move-result-wide v40

    .line 155
    invoke-virtual/range {v21 .. v21}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getExpSizeMirrored()Ljava/lang/Long;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lio4;->h(Ljava/lang/Long;)J

    move-result-wide v42

    .line 156
    invoke-virtual {v14}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getExpSize()Ljava/lang/Long;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lio4;->h(Ljava/lang/Long;)J

    move-result-wide v46

    .line 157
    invoke-virtual {v14}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getExpSizeMirrored()Ljava/lang/Long;

    move-result-object v14

    invoke-static {v14}, Lio4;->h(Ljava/lang/Long;)J

    move-result-wide v44

    const/16 v48, 0x0

    const/16 v49, 0x0

    .line 158
    iget-object v14, v5, La00;->m:Lmk0;

    move-object/from16 v36, v14

    move-object/from16 v39, v15

    invoke-virtual/range {v36 .. v49}, Lmk0;->a(Liu;Ljava/lang/String;Lq63;JJJJLjava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_25

    goto/16 :goto_11

    .line 159
    :pswitch_c
    invoke-virtual {v14}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getDataLink()Ljava/lang/String;

    move-result-object v6

    .line 160
    invoke-virtual {v14}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->hasData()Z

    move-result v15

    if-eqz v15, :cond_24

    .line 161
    sget-object v37, Liu;->DATA:Liu;

    .line 162
    invoke-virtual/range {v19 .. v19}, Lji;->getDataDir()Ljava/lang/String;

    move-result-object v38

    .line 163
    iget-object v15, v0, Lrf8;->a:Lq63;

    .line 164
    invoke-virtual {v14}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getDataBackupDate()Ljava/lang/Long;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lio4;->h(Ljava/lang/Long;)J

    move-result-wide v40

    .line 165
    invoke-virtual/range {v21 .. v21}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getDataSizeMirrored()Ljava/lang/Long;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lio4;->h(Ljava/lang/Long;)J

    move-result-wide v42

    .line 166
    invoke-virtual {v14}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getDataSizeMirrored()Ljava/lang/Long;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lio4;->h(Ljava/lang/Long;)J

    move-result-wide v44

    .line 167
    invoke-virtual {v14}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getDataSize()Ljava/lang/Long;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lio4;->h(Ljava/lang/Long;)J

    move-result-wide v46

    .line 168
    invoke-virtual/range {v21 .. v21}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getDataPasswordHash()Ljava/lang/String;

    move-result-object v48

    .line 169
    invoke-virtual {v14}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getDataPasswordHash()Ljava/lang/String;

    move-result-object v49

    .line 170
    iget-object v14, v5, La00;->m:Lmk0;

    move-object/from16 v36, v14

    move-object/from16 v39, v15

    invoke-virtual/range {v36 .. v49}, Lmk0;->a(Liu;Ljava/lang/String;Lq63;JJJJLjava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_25

    goto/16 :goto_11

    .line 171
    :pswitch_d
    invoke-virtual {v14}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getSharedLibsLink()Ljava/lang/String;

    move-result-object v6

    .line 172
    invoke-virtual {v14}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->hasSharedLibs()Z

    move-result v15

    if-eqz v15, :cond_24

    .line 173
    invoke-virtual/range {v21 .. v21}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getApkSizeMirrored()Ljava/lang/Long;

    move-result-object v15

    invoke-static {v15}, Lio4;->h(Ljava/lang/Long;)J

    move-result-wide v36

    .line 174
    invoke-virtual {v14}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getApkSize()Ljava/lang/Long;

    move-result-object v38

    .line 175
    new-instance v39, Lpg;

    .line 176
    invoke-virtual/range {v21 .. v21}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getVersionName()Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_26

    move-object/from16 v40, v30

    goto :goto_12

    :cond_26
    move-object/from16 v40, v15

    .line 177
    :goto_12
    invoke-virtual/range {v21 .. v21}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getVersionCode()Ljava/lang/Long;

    move-result-object v15

    if-eqz v15, :cond_27

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v31

    move-wide/from16 v41, v31

    goto :goto_13

    :cond_27
    move-wide/from16 v41, v23

    .line 178
    :goto_13
    invoke-virtual/range {v21 .. v21}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->hasSplitApks()Z

    move-result v43

    .line 179
    invoke-virtual/range {v21 .. v21}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->hasSharedLibs()Z

    move-result v44

    .line 180
    invoke-direct/range {v39 .. v44}, Lpg;-><init>(Ljava/lang/String;JZZ)V

    .line 181
    new-instance v40, Lpg;

    .line 182
    invoke-virtual {v14}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getVersionName()Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_28

    move-object/from16 v41, v30

    goto :goto_14

    :cond_28
    move-object/from16 v41, v15

    .line 183
    :goto_14
    invoke-virtual {v14}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getVersionCode()Ljava/lang/Long;

    move-result-object v15

    if-eqz v15, :cond_29

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    :cond_29
    move-wide/from16 v42, v23

    .line 184
    invoke-virtual {v14}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->hasSplitApks()Z

    move-result v44

    .line 185
    invoke-virtual {v14}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->hasSharedLibs()Z

    move-result v45

    .line 186
    invoke-direct/range {v40 .. v45}, Lpg;-><init>(Ljava/lang/String;JZZ)V

    .line 187
    invoke-virtual {v14}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->hasSplitApks()Z

    move-result v41

    .line 188
    invoke-virtual {v14}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->hasSharedLibs()Z

    move-result v42

    .line 189
    invoke-static/range {v36 .. v42}, Leq;->a(JLjava/lang/Long;Lpg;Lrg;ZZ)Z

    move-result v14

    if-eqz v14, :cond_25

    goto/16 :goto_11

    .line 190
    :pswitch_e
    invoke-virtual {v14}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getSplitsLink()Ljava/lang/String;

    move-result-object v6

    .line 191
    invoke-virtual {v14}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->hasSplitApks()Z

    move-result v15

    if-eqz v15, :cond_24

    .line 192
    invoke-virtual/range {v21 .. v21}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getApkSizeMirrored()Ljava/lang/Long;

    move-result-object v15

    invoke-static {v15}, Lio4;->h(Ljava/lang/Long;)J

    move-result-wide v36

    .line 193
    invoke-virtual {v14}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getApkSize()Ljava/lang/Long;

    move-result-object v38

    .line 194
    new-instance v39, Lpg;

    .line 195
    invoke-virtual/range {v21 .. v21}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getVersionName()Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_2a

    move-object/from16 v40, v30

    goto :goto_15

    :cond_2a
    move-object/from16 v40, v15

    .line 196
    :goto_15
    invoke-virtual/range {v21 .. v21}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getVersionCode()Ljava/lang/Long;

    move-result-object v15

    if-eqz v15, :cond_2b

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v31

    move-wide/from16 v41, v31

    goto :goto_16

    :cond_2b
    move-wide/from16 v41, v23

    .line 197
    :goto_16
    invoke-virtual/range {v21 .. v21}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->hasSplitApks()Z

    move-result v43

    .line 198
    invoke-virtual/range {v21 .. v21}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->hasSharedLibs()Z

    move-result v44

    .line 199
    invoke-direct/range {v39 .. v44}, Lpg;-><init>(Ljava/lang/String;JZZ)V

    .line 200
    new-instance v40, Lpg;

    .line 201
    invoke-virtual {v14}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getVersionName()Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_2c

    move-object/from16 v41, v30

    goto :goto_17

    :cond_2c
    move-object/from16 v41, v15

    .line 202
    :goto_17
    invoke-virtual {v14}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getVersionCode()Ljava/lang/Long;

    move-result-object v15

    if-eqz v15, :cond_2d

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    :cond_2d
    move-wide/from16 v42, v23

    .line 203
    invoke-virtual {v14}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->hasSplitApks()Z

    move-result v44

    .line 204
    invoke-virtual {v14}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->hasSharedLibs()Z

    move-result v45

    .line 205
    invoke-direct/range {v40 .. v45}, Lpg;-><init>(Ljava/lang/String;JZZ)V

    .line 206
    invoke-virtual {v14}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->hasSplitApks()Z

    move-result v41

    .line 207
    invoke-virtual {v14}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->hasSharedLibs()Z

    move-result v42

    .line 208
    invoke-static/range {v36 .. v42}, Leq;->a(JLjava/lang/Long;Lpg;Lrg;ZZ)Z

    move-result v14

    if-eqz v14, :cond_25

    goto/16 :goto_11

    .line 209
    :pswitch_f
    invoke-virtual {v14}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getApkLink()Ljava/lang/String;

    move-result-object v6

    .line 210
    invoke-virtual {v14}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->hasApk()Z

    move-result v15

    if-eqz v15, :cond_24

    .line 211
    invoke-virtual/range {v21 .. v21}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getApkSizeMirrored()Ljava/lang/Long;

    move-result-object v15

    invoke-static {v15}, Lio4;->h(Ljava/lang/Long;)J

    move-result-wide v36

    .line 212
    invoke-virtual {v14}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getApkSize()Ljava/lang/Long;

    move-result-object v38

    .line 213
    new-instance v39, Lpg;

    .line 214
    invoke-virtual/range {v21 .. v21}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getVersionName()Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_2e

    move-object/from16 v40, v30

    goto :goto_18

    :cond_2e
    move-object/from16 v40, v15

    .line 215
    :goto_18
    invoke-virtual/range {v21 .. v21}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getVersionCode()Ljava/lang/Long;

    move-result-object v15

    if-eqz v15, :cond_2f

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v31

    move-wide/from16 v41, v31

    goto :goto_19

    :cond_2f
    move-wide/from16 v41, v23

    .line 216
    :goto_19
    invoke-virtual/range {v21 .. v21}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->hasSplitApks()Z

    move-result v43

    .line 217
    invoke-virtual/range {v21 .. v21}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->hasSharedLibs()Z

    move-result v44

    .line 218
    invoke-direct/range {v39 .. v44}, Lpg;-><init>(Ljava/lang/String;JZZ)V

    .line 219
    new-instance v40, Lpg;

    .line 220
    invoke-virtual {v14}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getVersionName()Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_30

    move-object/from16 v41, v30

    goto :goto_1a

    :cond_30
    move-object/from16 v41, v15

    .line 221
    :goto_1a
    invoke-virtual {v14}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getVersionCode()Ljava/lang/Long;

    move-result-object v15

    if-eqz v15, :cond_31

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    :cond_31
    move-wide/from16 v42, v23

    .line 222
    invoke-virtual {v14}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->hasSplitApks()Z

    move-result v44

    .line 223
    invoke-virtual {v14}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->hasSharedLibs()Z

    move-result v45

    .line 224
    invoke-direct/range {v40 .. v45}, Lpg;-><init>(Ljava/lang/String;JZZ)V

    .line 225
    invoke-virtual {v14}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->hasSplitApks()Z

    move-result v41

    .line 226
    invoke-virtual {v14}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->hasSharedLibs()Z

    move-result v42

    .line 227
    invoke-static/range {v36 .. v42}, Leq;->a(JLjava/lang/Long;Lpg;Lrg;ZZ)Z

    move-result v14

    if-eqz v14, :cond_25

    goto/16 :goto_11

    :goto_1b
    xor-int/lit8 v15, v14, 0x1

    if-nez v14, :cond_32

    const/16 v39, 0x4

    const/16 v40, 0x0

    .line 228
    const-string v36, "AppUploadTask"

    const-string v37, "Skipped uploading, already synced"

    const/16 v38, 0x0

    invoke-static/range {v35 .. v40}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 229
    :cond_32
    new-instance v14, Lea3;

    invoke-direct {v14, v6, v15}, Lea3;-><init>(Ljava/lang/String;Z)V

    move-object v6, v14

    .line 230
    :goto_1c
    iget-boolean v14, v6, Lea3;->a:Z

    if-nez v14, :cond_33

    .line 231
    iget-object v6, v6, Lea3;->b:Ljava/lang/Comparable;

    check-cast v6, Ljava/lang/String;

    .line 232
    iput-object v6, v0, Lrf8;->f:Ljava/lang/String;

    .line 233
    invoke-virtual {v1, v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_33
    move v6, v7

    move-object/from16 v7, v22

    move-object/from16 v0, v34

    goto/16 :goto_c

    :cond_34
    move-object/from16 v34, v0

    move-object/from16 v22, v7

    move-object/from16 v21, v15

    move v7, v6

    .line 234
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 235
    sget-object v35, Lvr6;->INSTANCE:Lvr6;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v40, 0x0

    const/16 v41, 0x3f

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    invoke-static/range {v36 .. v41}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "Upload tasks: "

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    const/16 v39, 0x4

    const-string v36, "AppUploadTask"

    invoke-static/range {v35 .. v40}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 236
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v23, 0x0

    move-wide/from16 v30, v23

    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lrf8;

    invoke-virtual {v4}, Lrf8;->a()J

    move-result-wide v32

    add-long v30, v32, v30

    goto :goto_1d

    :cond_35
    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    cmp-long v4, v30, v23

    if-lez v4, :cond_36

    goto :goto_1e

    :cond_36
    const/4 v0, 0x0

    :goto_1e
    if-eqz v0, :cond_37

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    :goto_1f
    move-wide/from16 v37, v23

    goto :goto_20

    :cond_37
    const-wide/16 v23, 0x1

    goto :goto_1f

    .line 237
    :goto_20
    new-instance v35, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct/range {v35 .. v35}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 238
    new-instance v36, Lkh6;

    .line 239
    invoke-direct/range {v36 .. v36}, Ljava/lang/Object;-><init>()V

    .line 240
    new-instance v39, Lkh6;

    .line 241
    invoke-direct/range {v39 .. v39}, Ljava/lang/Object;-><init>()V

    .line 242
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 243
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 244
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v32, v6

    check-cast v32, Lgz;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v33, v4

    check-cast v33, Lrf8;

    .line 245
    sget-object v4, Lyz;->a:[I

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v4, v4, v6

    packed-switch v4, :pswitch_data_2

    invoke-static {}, Lq;->j()V

    return-void

    .line 246
    :pswitch_10
    sget-object v4, Lzn4;->a:Lzn4;

    new-instance v30, Lwz;

    move-object/from16 v31, v5

    invoke-direct/range {v30 .. v39}, Lwz;-><init>(La00;Lgz;Lrf8;Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;Ljava/util/concurrent/ConcurrentHashMap;Lkh6;JLkh6;)V

    move-object/from16 v4, v30

    .line 247
    new-instance v5, Lvn4;

    invoke-direct {v5, v4}, Lvn4;-><init>(Lbt3;)V

    :goto_22
    move-object/from16 v4, v31

    goto/16 :goto_23

    :pswitch_11
    move-object/from16 v31, v5

    .line 248
    sget-object v4, Lzn4;->a:Lzn4;

    new-instance v30, Lvz;

    invoke-direct/range {v30 .. v39}, Lvz;-><init>(La00;Lgz;Lrf8;Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;Ljava/util/concurrent/ConcurrentHashMap;Lkh6;JLkh6;)V

    move-object/from16 v4, v30

    .line 249
    new-instance v5, Lvn4;

    invoke-direct {v5, v4}, Lvn4;-><init>(Lbt3;)V

    goto :goto_22

    :pswitch_12
    move-object/from16 v31, v5

    .line 250
    sget-object v4, Lzn4;->a:Lzn4;

    new-instance v30, Luz;

    invoke-direct/range {v30 .. v39}, Luz;-><init>(La00;Lgz;Lrf8;Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;Ljava/util/concurrent/ConcurrentHashMap;Lkh6;JLkh6;)V

    move-object/from16 v4, v30

    .line 251
    new-instance v5, Lvn4;

    invoke-direct {v5, v4}, Lvn4;-><init>(Lbt3;)V

    goto :goto_22

    :pswitch_13
    move-object/from16 v31, v5

    .line 252
    sget-object v4, Lzn4;->a:Lzn4;

    new-instance v30, Ltz;

    invoke-direct/range {v30 .. v39}, Ltz;-><init>(La00;Lgz;Lrf8;Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;Ljava/util/concurrent/ConcurrentHashMap;Lkh6;JLkh6;)V

    move-object/from16 v4, v30

    .line 253
    new-instance v5, Lvn4;

    invoke-direct {v5, v4}, Lvn4;-><init>(Lbt3;)V

    goto :goto_22

    :pswitch_14
    move-object/from16 v31, v5

    .line 254
    sget-object v4, Lzn4;->a:Lzn4;

    new-instance v30, Lsz;

    invoke-direct/range {v30 .. v39}, Lsz;-><init>(La00;Lgz;Lrf8;Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;Ljava/util/concurrent/ConcurrentHashMap;Lkh6;JLkh6;)V

    move-object/from16 v4, v30

    .line 255
    new-instance v5, Lvn4;

    invoke-direct {v5, v4}, Lvn4;-><init>(Lbt3;)V

    goto :goto_22

    :pswitch_15
    move-object/from16 v31, v5

    .line 256
    sget-object v4, Lzn4;->a:Lzn4;

    new-instance v30, Lrz;

    invoke-direct/range {v30 .. v39}, Lrz;-><init>(La00;Lgz;Lrf8;Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;Ljava/util/concurrent/ConcurrentHashMap;Lkh6;JLkh6;)V

    move-object/from16 v4, v30

    .line 257
    new-instance v5, Lvn4;

    invoke-direct {v5, v4}, Lvn4;-><init>(Lbt3;)V

    goto :goto_22

    :pswitch_16
    move-object/from16 v31, v5

    .line 258
    sget-object v4, Lzn4;->a:Lzn4;

    new-instance v30, Lqz;

    invoke-direct/range {v30 .. v39}, Lqz;-><init>(La00;Lgz;Lrf8;Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;Ljava/util/concurrent/ConcurrentHashMap;Lkh6;JLkh6;)V

    move-object/from16 v4, v30

    .line 259
    new-instance v5, Lvn4;

    invoke-direct {v5, v4}, Lvn4;-><init>(Lbt3;)V

    goto :goto_22

    :pswitch_17
    move-object/from16 v31, v5

    .line 260
    sget-object v4, Lzn4;->a:Lzn4;

    new-instance v30, Lpz;

    invoke-direct/range {v30 .. v39}, Lpz;-><init>(La00;Lgz;Lrf8;Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;Ljava/util/concurrent/ConcurrentHashMap;Lkh6;JLkh6;)V

    move-object/from16 v5, v30

    move-object/from16 v4, v31

    .line 261
    new-instance v6, Lvn4;

    invoke-direct {v6, v5}, Lvn4;-><init>(Lbt3;)V

    move-object v5, v6

    .line 262
    :goto_23
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v5, v4

    goto/16 :goto_21

    :cond_38
    move-object v4, v5

    .line 263
    iget-object v1, v8, Lpw6;->i:Lex6;

    .line 264
    sget-object v5, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f13058e

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lex6;->k(Ljava/lang/Object;)V

    .line 265
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 266
    sget-object v1, Lzn4;->a:Lzn4;

    .line 267
    :try_start_1
    sget-object v1, Ld45;->b:Ld45;

    .line 268
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ld45;->a()Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    move-result-object v1

    if-eqz v1, :cond_39

    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->isAnonymous()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_24

    :catch_1
    :cond_39
    const/4 v1, 0x0

    .line 269
    :goto_24
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v9}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    .line 270
    const-string v1, "parallel_cloud_transfers"

    .line 271
    :try_start_2
    sget-object v9, Lcz4;->f:Landroid/content/SharedPreferences;

    if-eqz v9, :cond_3a

    const/4 v15, 0x0

    invoke-interface {v9, v1, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_25

    :cond_3a
    const-string v1, "prefs"

    invoke-static {v1}, Lpe4;->F(Ljava/lang/String;)V

    const/4 v1, 0x0

    throw v1
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v1, 0x0

    :goto_25
    if-eqz v1, :cond_3b

    const/4 v1, 0x1

    goto :goto_26

    :cond_3b
    const/4 v1, 0x0

    :goto_26
    const/4 v9, 0x4

    .line 272
    invoke-static {v9, v0, v1}, Lzn4;->a(ILjava/util/ArrayList;Z)Ljava/util/List;

    .line 273
    sget-object v30, Lvr6;->INSTANCE:Lvr6;

    invoke-static {v5, v6}, Lorg/swiftapps/swiftbackup/common/Const;->v(J)Ljava/lang/String;

    move-result-object v32

    const/16 v34, 0x4

    const/16 v35, 0x0

    const-string v31, "AppUploadTask"

    const/16 v33, 0x0

    invoke-static/range {v30 .. v35}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    :goto_27
    const/4 v1, 0x0

    goto :goto_28

    :cond_3c
    move-object v4, v5

    .line 274
    sget-object v36, Lvr6;->INSTANCE:Lvr6;

    const/16 v40, 0x4

    const/16 v41, 0x0

    const-string v37, "AppUploadTask"

    const-string v38, "Nothing to upload!"

    const/16 v39, 0x0

    invoke-static/range {v36 .. v41}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    goto :goto_27

    .line 275
    :goto_28
    invoke-virtual {v8, v1}, Lpw6;->o(Ljava/lang/String;)V

    .line 276
    sget-object v30, Lvr6;->INSTANCE:Lvr6;

    const/16 v34, 0x4

    const/16 v35, 0x0

    const-string v31, "AppUploadTask"

    const-string v32, "Uploading metadata"

    const/16 v33, 0x0

    invoke-static/range {v30 .. v35}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    move-object/from16 v0, v30

    .line 277
    sget-object v5, Lzn4;->a:Lzn4;

    new-instance v5, Lzz;

    const/4 v15, 0x0

    invoke-direct {v5, v4, v1, v15}, Lzz;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 278
    invoke-static {v1, v5}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 279
    iget-object v1, v4, La00;->h:Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;

    if-eqz v1, :cond_5d

    .line 280
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->hasBackups()Z

    move-result v5

    const-string v6, "AppUploadTask"

    if-nez v5, :cond_3d

    .line 281
    const-string v1, "CloudMetadata has no backups! Not uploading to database."

    sget-object v5, Lvr6$a;->YELLOW:Lvr6$a;

    invoke-virtual {v0, v6, v1, v5}, Lvr6;->i(Ljava/lang/String;Ljava/lang/String;Lvr6$a;)V

    move-object/from16 v30, v0

    goto/16 :goto_2b

    .line 282
    :cond_3d
    iget-object v5, v14, Lmz;->h:Lrf8;

    if-nez v5, :cond_3e

    .line 283
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->removeSpecialDataDetails()V

    .line 284
    :cond_3e
    invoke-virtual/range {v21 .. v21}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getInstallerPackage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3f

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_40

    :cond_3f
    const/4 v5, 0x0

    :cond_40
    invoke-virtual {v1, v5}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->setInstallerPackage(Ljava/lang/String;)V

    .line 285
    invoke-virtual/range {v21 .. v21}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getKeyVersion()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->setKeyVersion(Ljava/lang/Integer;)V

    .line 286
    invoke-virtual {v11}, Lhz;->d()Z

    move-result v5

    if-nez v5, :cond_41

    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getDateBackup()Ljava/lang/Long;

    move-result-object v5

    if-nez v5, :cond_43

    .line 287
    :cond_41
    invoke-virtual/range {v21 .. v21}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getDateBackup()Ljava/lang/Long;

    move-result-object v5

    if-nez v5, :cond_42

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    :cond_42
    invoke-virtual {v1, v5}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->setDateBackup(Ljava/lang/Long;)V

    .line 288
    :cond_43
    invoke-virtual {v11}, Lhz;->d()Z

    move-result v5

    if-nez v5, :cond_44

    invoke-virtual/range {v21 .. v21}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getNote()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_45

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_44

    goto :goto_29

    .line 289
    :cond_44
    invoke-virtual/range {v21 .. v21}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getNote()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->updateNote(Ljava/lang/String;)V

    .line 290
    :cond_45
    :goto_29
    invoke-virtual {v11}, Lhz;->d()Z

    move-result v5

    if-nez v5, :cond_46

    invoke-virtual/range {v21 .. v21}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->isProtectedBackup()Z

    move-result v5

    if-eqz v5, :cond_47

    .line 291
    :cond_46
    invoke-virtual/range {v21 .. v21}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->isProtectedBackup()Z

    move-result v5

    invoke-virtual {v1, v5}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->updateProtection(Z)V

    .line 292
    :cond_47
    invoke-virtual {v11}, Lhz;->d()Z

    move-result v5

    if-eqz v5, :cond_48

    .line 293
    invoke-virtual/range {v21 .. v21}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getDateBackupUpdated()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->setDateBackupUpdated(Ljava/lang/Long;)V

    goto :goto_2a

    .line 294
    :cond_48
    iget-boolean v5, v4, La00;->i:Z

    if-eqz v5, :cond_4a

    .line 295
    invoke-virtual/range {v21 .. v21}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getDateBackupUpdated()Ljava/lang/Long;

    move-result-object v5

    if-nez v5, :cond_49

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    :cond_49
    invoke-virtual {v1, v5}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->setDateBackupUpdated(Ljava/lang/Long;)V

    .line 296
    :cond_4a
    :goto_2a
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->prepareForFirebaseUpload()V

    .line 297
    iget-object v5, v4, La00;->j:Lzc2;

    const-string v9, "cloudDetailNode"

    if-eqz v5, :cond_5c

    invoke-virtual {v5}, Lzc2;->e()Ljava/lang/String;

    move-result-object v5

    const-string v15, "Metadata node="

    .line 298
    invoke-static {v15, v5}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    const/16 v34, 0x4

    const/16 v35, 0x0

    .line 299
    const-string v31, "AppUploadTask"

    const/16 v33, 0x0

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v35}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 300
    iget-object v0, v4, La00;->j:Lzc2;

    if-eqz v0, :cond_5b

    invoke-static {v0, v1}, Lcf3;->c(Lzc2;Ljava/lang/Object;)Laf3;

    move-result-object v0

    .line 301
    sget-object v1, Lze3;->b:Lze3;

    invoke-static {v0, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    const/16 v34, 0x4

    const/16 v35, 0x0

    .line 302
    const-string v31, "AppUploadTask"

    const-string v32, "Uploading metadata complete"

    const/16 v33, 0x0

    invoke-static/range {v30 .. v35}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    const/4 v1, 0x1

    .line 303
    iput-boolean v1, v14, Lmz;->l:Z

    goto :goto_2b

    .line 304
    :cond_4b
    instance-of v1, v0, Lye3;

    if-eqz v1, :cond_5a

    .line 305
    invoke-virtual/range {v19 .. v19}, Lji;->getName()Ljava/lang/String;

    move-result-object v1

    check-cast v0, Lye3;

    .line 306
    iget-object v0, v0, Lye3;->b:Lwc2;

    .line 307
    iget-object v0, v0, Lwc2;->b:Ljava/lang/String;

    .line 308
    invoke-static {v1, v2, v0}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 309
    iput-object v0, v3, Lxz;->d:Ljava/lang/String;

    const/16 v34, 0x4

    const/16 v35, 0x0

    .line 310
    const-string v31, "AppUploadTask"

    const-string v32, "Error while uploading metadata"

    const/16 v33, 0x0

    invoke-static/range {v30 .. v35}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 311
    invoke-virtual/range {v19 .. v19}, Lji;->asString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "uploadMetadata: Error occurred while updating cloud details for app = "

    .line 312
    invoke-static {v1, v0, v6}, Lu48;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    :goto_2b
    iget-boolean v0, v4, La00;->k:Z

    if-nez v0, :cond_56

    .line 314
    iget-object v0, v3, Lxz;->a:Ljava/lang/String;

    if-nez v0, :cond_56

    .line 315
    iget-object v0, v3, Lxz;->c:Ljava/lang/String;

    if-nez v0, :cond_56

    .line 316
    iget-object v0, v3, Lxz;->d:Ljava/lang/String;

    if-eqz v0, :cond_4c

    goto/16 :goto_2f

    .line 317
    :cond_4c
    iget-object v0, v11, Lhz;->i:Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 318
    invoke-static {v0}, Lorg/swiftapps/swiftbackup/settings/f;->a(Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;)Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation;

    move-result-object v0

    .line 319
    sget-object v1, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;->Companion:Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups$a;

    invoke-virtual/range {v19 .. v19}, Lji;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups$a;->fetchForPackage(Ljava/lang/String;)Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups$a$a;

    move-result-object v1

    .line 320
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups$a$a;->getDatabaseError()Lwc2;

    move-result-object v4

    const-string v32, "AppUploadTask: CloudBackupsCleanup"

    if-eqz v4, :cond_4d

    .line 321
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups$a$a;->getDatabaseError()Lwc2;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error while fetching cloud backups: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v34, 0x4

    const/16 v35, 0x0

    const/16 v33, 0x0

    move-object/from16 v31, v32

    move-object/from16 v32, v0

    invoke-static/range {v30 .. v35}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 322
    invoke-virtual/range {v19 .. v19}, Lji;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups$a$a;->getDatabaseError()Lwc2;

    move-result-object v1

    .line 323
    iget-object v1, v1, Lwc2;->b:Ljava/lang/String;

    .line 324
    invoke-static {v0, v2, v1}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 325
    iput-object v0, v3, Lxz;->d:Ljava/lang/String;

    goto/16 :goto_2f

    .line 326
    :cond_4d
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups$a$a;->getAppCloudBackups()Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;

    move-result-object v1

    if-eqz v1, :cond_56

    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;->hasBackups()Z

    move-result v2

    if-eqz v2, :cond_4e

    goto :goto_2c

    :cond_4e
    const/4 v1, 0x0

    :goto_2c
    if-nez v1, :cond_4f

    goto/16 :goto_2f

    .line 327
    :cond_4f
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;->getBackups()Ljava/util/List;

    move-result-object v1

    .line 328
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 329
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_50
    :goto_2d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_51

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;

    .line 330
    invoke-virtual {v6}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->getMetadata()Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;

    move-result-object v6

    invoke-virtual {v6}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->isProtectedBackup()Z

    move-result v6

    if-eqz v6, :cond_50

    .line 331
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    .line 332
    :cond_51
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 333
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_52
    :goto_2e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_53

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v9, v6

    check-cast v9, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;

    .line 334
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_52

    .line 335
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    .line 336
    :cond_53
    sget-object v31, Lvr6;->INSTANCE:Lvr6;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Multiple backups strategy: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    const/16 v35, 0x4

    const/16 v36, 0x0

    const/16 v34, 0x0

    invoke-static/range {v31 .. v36}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 337
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-string v6, " ("

    const-string v9, " Normal + "

    .line 338
    const-string v11, "Total backups: "

    invoke-static {v11, v1, v6, v9, v5}, Lxs1;->n(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 339
    const-string v5, " Protected)"

    .line 340
    invoke-static {v1, v2, v5}, Lxs1;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 341
    invoke-static/range {v31 .. v36}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 342
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_55

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation;->getMaxNumOfBackups()I

    move-result v2

    if-le v1, v2, :cond_55

    .line 343
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation;->getMaxNumOfBackups()I

    move-result v1

    invoke-static {v1, v4}, Lel1;->N0(ILjava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 344
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_54

    goto :goto_2f

    .line 345
    :cond_54
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation;->getMaxNumOfBackups()I

    move-result v0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const-string v4, ". Deleting "

    const-string v5, " old normal backup(s)."

    .line 346
    const-string v6, "Max normal backups to keep: "

    invoke-static {v6, v0, v4, v5, v2}, Ldj7;->j(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v33

    const/16 v35, 0x4

    const/16 v36, 0x0

    const/16 v34, 0x0

    .line 347
    invoke-static/range {v31 .. v36}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 348
    new-instance v0, Lmy7;

    invoke-direct {v0, v12, v1}, Lmy7;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 349
    invoke-virtual/range {v19 .. v19}, Lji;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 350
    new-instance v2, Loy7;

    .line 351
    invoke-static {}, Liu;->getEntries()Ljx2;

    move-result-object v4

    .line 352
    sget-object v5, Lq05;->CLOUD:Lq05;

    invoke-static {v5}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 353
    invoke-direct {v2, v4, v5, v0}, Loy7;-><init>(Ljava/util/List;Ljava/util/List;Lny7;)V

    .line 354
    invoke-static {v1, v2}, Lik;->a(Ljava/lang/String;Loy7;)V

    goto :goto_2f

    :cond_55
    const/16 v35, 0x4

    const/16 v36, 0x0

    .line 355
    const-string v33, "No backups to delete"

    const/16 v34, 0x0

    invoke-static/range {v31 .. v36}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    :cond_56
    :goto_2f
    const/4 v1, 0x0

    .line 356
    :goto_30
    invoke-virtual {v8, v1}, Lpw6;->o(Ljava/lang/String;)V

    if-eqz v10, :cond_58

    .line 357
    iget-object v10, v10, Ltl;->e:Ljava/lang/String;

    if-eqz v10, :cond_58

    .line 358
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_57

    goto :goto_31

    :cond_57
    const/4 v10, 0x0

    :goto_31
    if-eqz v10, :cond_58

    .line 359
    iput-object v10, v3, Lxz;->c:Ljava/lang/String;

    .line 360
    :cond_58
    iget-object v0, v3, Lxz;->a:Ljava/lang/String;

    if-nez v0, :cond_59

    .line 361
    iget-object v0, v3, Lxz;->c:Ljava/lang/String;

    if-nez v0, :cond_59

    .line 362
    iget-object v0, v3, Lxz;->d:Ljava/lang/String;

    if-eqz v0, :cond_5e

    :cond_59
    move-object/from16 v1, v22

    .line 363
    iget-object v0, v1, Lhl;->b:Ljava/util/ArrayList;

    .line 364
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_32

    .line 365
    :cond_5a
    invoke-static {}, Lq;->j()V

    return-void

    :cond_5b
    invoke-static {v9}, Lpe4;->F(Ljava/lang/String;)V

    const/4 v1, 0x0

    throw v1

    :cond_5c
    const/4 v1, 0x0

    .line 366
    invoke-static {v9}, Lpe4;->F(Ljava/lang/String;)V

    throw v1

    .line 367
    :cond_5d
    const-string v0, "Cloud metadata null!!"

    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    return-void

    .line 368
    :cond_5e
    :goto_32
    invoke-static/range {v26 .. v26}, Lfl1;->z0(Ljava/util/List;)I

    move-result v0

    move v15, v7

    if-ne v15, v0, :cond_5f

    const/4 v0, 0x1

    goto :goto_33

    :cond_5f
    const/4 v0, 0x0

    .line 369
    :goto_33
    new-instance v1, Lq63;

    sget-object v2, Lry5;->u:Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 370
    invoke-static {v15, v14}, Lqy5;->f(ZLzn7;)Lry5;

    move-result-object v2

    .line 371
    iget-object v2, v2, Lry5;->h:Ljava/lang/String;

    const/4 v4, 0x2

    .line 372
    invoke-direct {v1, v2, v4}, Lq63;-><init>(Ljava/lang/String;I)V

    .line 373
    invoke-virtual {v1}, Lq63;->t()Lq63;

    move-result-object v2

    const-string v3, ".cleanup-"

    if-nez v2, :cond_60

    goto :goto_35

    .line 374
    :cond_60
    invoke-virtual {v1}, Lq63;->p()Ljava/lang/String;

    move-result-object v4

    .line 375
    invoke-static {v13, v4, v3}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 376
    new-instance v5, Lvm;

    invoke-direct {v5, v4, v15}, Lvm;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v5}, Lq63;->C(Lmt3;)Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_61

    goto :goto_34

    :cond_61
    move-object v12, v2

    .line 377
    :goto_34
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_62

    goto :goto_35

    .line 378
    :cond_62
    sget-object v2, Lzn4;->a:Lzn4;

    new-instance v2, Lz2;

    const/4 v4, 0x0

    const/4 v14, 0x1

    invoke-direct {v2, v12, v4, v14}, Lz2;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 379
    invoke-static {v4, v2}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 380
    :goto_35
    const-string v2, "Cleaning cloud cache on device"

    const-string v4, "AppCloudCacheCleaner"

    if-eqz v0, :cond_68

    .line 381
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    invoke-virtual {v1}, Lq63;->j()Z

    move-result v0

    if-nez v0, :cond_63

    :goto_36
    const/4 v15, 0x0

    goto/16 :goto_38

    .line 383
    :cond_63
    invoke-virtual {v1}, Lq63;->n()Lorg/swiftapps/filesystem/File$FileType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/swiftapps/filesystem/File$FileType;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_64

    .line 384
    invoke-static {v0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_65

    :cond_64
    const/4 v15, 0x0

    goto :goto_37

    .line 385
    :cond_65
    new-instance v5, Lq63;

    invoke-virtual {v1}, Lq63;->p()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x2

    invoke-direct {v5, v0, v3, v6}, Lq63;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 386
    invoke-virtual {v1, v5}, Lq63;->I(Lq63;)Z

    move-result v0

    if-nez v0, :cond_66

    .line 387
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    invoke-static {v1}, Lcy0;->f(Lq63;)V

    goto :goto_36

    .line 389
    :cond_66
    invoke-static {v1}, Lq63;->E(Lq63;)Z

    move-result v0

    if-nez v0, :cond_67

    invoke-virtual {v1}, Lq63;->x()Z

    move-result v0

    if-nez v0, :cond_67

    .line 390
    invoke-virtual {v1}, Lq63;->v()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Unable to recreate active cloud cache at "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    invoke-virtual {v5, v1}, Lq63;->I(Lq63;)Z

    goto :goto_36

    .line 392
    :cond_67
    sget-object v0, Lzn4;->a:Lzn4;

    new-instance v0, Lwm;

    const/4 v1, 0x0

    const/4 v15, 0x0

    invoke-direct {v0, v5, v1, v15}, Lwm;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 393
    invoke-static {v1, v0}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    goto :goto_38

    .line 394
    :goto_37
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-static {v1}, Lcy0;->f(Lq63;)V

    goto :goto_38

    :cond_68
    const/4 v15, 0x0

    .line 396
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    invoke-static {v1}, Lcy0;->f(Lq63;)V

    .line 398
    :goto_38
    new-instance v0, Lr62;

    invoke-virtual/range {v20 .. v20}, Lji;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lr62;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    move-object/from16 v2, p0

    invoke-virtual {v2, v0}, Lpw6;->k(Lr62;)V

    add-int/lit8 v12, v17, 0x64

    .line 399
    invoke-virtual {v2, v12}, Lpw6;->n(I)V

    move-object v1, v2

    move/from16 v6, v16

    move-object/from16 v2, v18

    move-object/from16 v3, v26

    move-object/from16 v4, v27

    goto/16 :goto_0

    .line 400
    :goto_39
    invoke-virtual {v1}, Lhl;->a()Z

    move-result v0

    if-eqz v0, :cond_69

    .line 401
    iget-object v0, v2, Lpw6;->b:Ldz7;

    .line 402
    check-cast v0, Lb40;

    .line 403
    iput-object v1, v0, Lb40;->a:Lhl;

    :cond_69
    return-void

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

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method
