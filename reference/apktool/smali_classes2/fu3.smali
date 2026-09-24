.class public final Lfu3;
.super Ltb1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final g:Ldd1;

.field public final h:Ld04;

.field public i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Ldd1;->GoogleDrive:Ldd1;

    .line 5
    .line 6
    iput-object v0, p0, Lfu3;->g:Ldd1;

    .line 7
    .line 8
    new-instance v8, Ld04;

    .line 9
    .line 10
    new-instance v0, Lq02;

    .line 11
    .line 12
    const/4 v6, 0x0

    .line 13
    const/4 v7, 0x1

    .line 14
    const/4 v1, 0x0

    .line 15
    const-class v3, Lfu3;

    .line 16
    .line 17
    const-string v4, "restAccessToken"

    .line 18
    .line 19
    const-string v5, "restAccessToken()Ljava/lang/String;"

    .line 20
    .line 21
    move-object v2, p0

    .line 22
    invoke-direct/range {v0 .. v7}, Lq02;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 23
    .line 24
    .line 25
    move-object v9, v0

    .line 26
    new-instance v0, Lrk;

    .line 27
    .line 28
    const/4 v7, 0x2

    .line 29
    const-class v3, Lfu3;

    .line 30
    .line 31
    const-string v4, "refreshRestAccessToken"

    .line 32
    .line 33
    const-string v5, "refreshRestAccessToken()Z"

    .line 34
    .line 35
    invoke-direct/range {v0 .. v7}, Lrk;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 36
    .line 37
    .line 38
    invoke-direct {v8, v9, v0}, Ld04;-><init>(Lq02;Lrk;)V

    .line 39
    .line 40
    .line 41
    iput-object v8, p0, Lfu3;->h:Ld04;

    .line 42
    .line 43
    return-void
.end method

.method public static final q(Lfu3;Ljava/lang/String;)Ljava/util/List;
    .locals 5

    .line 1
    sget-object v0, Ld04;->i:Lokhttp3/OkHttpClient;

    .line 2
    .line 3
    invoke-static {p1}, Ljm1;->N(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "application/vnd.google-apps.folder"

    .line 8
    .line 9
    invoke-static {v1}, Ljm1;->N(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, " and mimeType = "

    .line 14
    .line 15
    const-string v3, " and trashed = false"

    .line 16
    .line 17
    const-string v4, "name = "

    .line 18
    .line 19
    invoke-static {v4, v0, v2, v1, v3}, Leq3;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object p0, p0, Lfu3;->h:Ld04;

    .line 24
    .line 25
    const-string v1, "files(id, name, createdTime)"

    .line 26
    .line 27
    invoke-static {p0, v0, v1}, Ld04;->k(Ld04;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    move-object v2, v1

    .line 51
    check-cast v2, Lyz3;

    .line 52
    .line 53
    iget-object v2, v2, Lyz3;->b:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_0

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    new-instance p0, Lxg;

    .line 66
    .line 67
    const/4 p1, 0x6

    .line 68
    invoke-direct {p0, p1}, Lxg;-><init>(I)V

    .line 69
    .line 70
    .line 71
    invoke-static {v0, p0}, Lel1;->n1(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    return-object p0
.end method


# virtual methods
.method public final b(Lzv1;)Lxh2;
    .locals 1

    .line 1
    new-instance v0, Lju3;

    .line 2
    .line 3
    iget-object p0, p0, Lfu3;->h:Ld04;

    .line 4
    .line 5
    invoke-direct {v0, p0, p1}, Lju3;-><init>(Ld04;Lzv1;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public final c(Lfo2;)Lno2;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Llu3;

    .line 5
    .line 6
    iget-object v1, p0, Lfu3;->h:Ld04;

    .line 7
    .line 8
    invoke-direct {v0, p0, v1, p1}, Llu3;-><init>(Lfu3;Ld04;Lfo2;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public final d(Lrf8;)Lag8;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lpu3;

    .line 5
    .line 6
    iget-object v1, p0, Lfu3;->h:Ld04;

    .line 7
    .line 8
    invoke-direct {v0, p0, v1, p1}, Lpu3;-><init>(Lfu3;Ld04;Lrf8;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public final e(Ljava/lang/String;)Z
    .locals 9

    .line 1
    const-string v0, "files(id, name)"

    .line 2
    .line 3
    sget-object v1, Ld04;->i:Lokhttp3/OkHttpClient;

    .line 4
    .line 5
    const-string v1, "tag"

    .line 6
    .line 7
    invoke-static {v1}, Ljm1;->N(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {p1}, Ljm1;->N(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const-string v3, "properties has { key="

    .line 16
    .line 17
    const-string v4, " and value="

    .line 18
    .line 19
    const-string v5, " }"

    .line 20
    .line 21
    invoke-static {v3, v1, v4, v2, v5}, Leq3;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 26
    .line 27
    const-string v3, "GClient"

    .line 28
    .line 29
    const-string v4, "deleteTaggedBackups: Querying cloud for files tagged with "

    .line 30
    .line 31
    invoke-virtual {v4, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    const/4 v6, 0x4

    .line 36
    const/4 v7, 0x0

    .line 37
    const/4 v5, 0x0

    .line 38
    invoke-static/range {v2 .. v7}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-static {}, Lqb1;->j()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p0, v0, v1, p1}, Lfu3;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lui1;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    iget-object p1, p0, Lui1;->b:Ljava/lang/Exception;

    .line 50
    .line 51
    const/4 v0, 0x0

    .line 52
    const/4 v1, 0x0

    .line 53
    if-nez p1, :cond_b

    .line 54
    .line 55
    const-string v3, "GClient"

    .line 56
    .line 57
    iget-object p1, p0, Lui1;->a:Ljava/util/List;

    .line 58
    .line 59
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    const-string v4, "deleteTaggedBackups: Cloud files to be deleted = "

    .line 64
    .line 65
    invoke-static {p1, v4}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    const/4 v6, 0x4

    .line 70
    const/4 v7, 0x0

    .line 71
    const/4 v5, 0x0

    .line 72
    invoke-static/range {v2 .. v7}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lui1;->a:Ljava/util/List;

    .line 76
    .line 77
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    if-nez p1, :cond_8

    .line 82
    .line 83
    iget-object p0, p0, Lui1;->a:Ljava/util/List;

    .line 84
    .line 85
    new-instance p1, Ljava/util/ArrayList;

    .line 86
    .line 87
    const/16 v2, 0xa

    .line 88
    .line 89
    invoke-static {p0, v2}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 94
    .line 95
    .line 96
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    if-eqz v2, :cond_0

    .line 105
    .line 106
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    check-cast v2, Lpg1;

    .line 111
    .line 112
    iget-object v2, v2, Lpg1;->b:Ljava/lang/String;

    .line 113
    .line 114
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_0
    sget-object v3, Lvr6;->INSTANCE:Lvr6;

    .line 119
    .line 120
    const-string v4, "GClient"

    .line 121
    .line 122
    const-string v5, "deleteTaggedBackups: Deleting cloud files"

    .line 123
    .line 124
    const/4 v7, 0x4

    .line 125
    const/4 v8, 0x0

    .line 126
    const/4 v6, 0x0

    .line 127
    invoke-static/range {v3 .. v8}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    :try_start_0
    sget-object p0, Ld45;->b:Ld45;

    .line 131
    .line 132
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    .line 134
    .line 135
    invoke-static {}, Ld45;->a()Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    if-eqz p0, :cond_1

    .line 140
    .line 141
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->isAnonymous()Z

    .line 142
    .line 143
    .line 144
    move-result p0

    .line 145
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 146
    .line 147
    .line 148
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    goto :goto_1

    .line 150
    :catch_0
    :cond_1
    move-object p0, v1

    .line 151
    :goto_1
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 152
    .line 153
    invoke-static {p0, v2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result p0

    .line 157
    if-eqz p0, :cond_2

    .line 158
    .line 159
    sget-object p0, Lkv2;->i:Lkv2;

    .line 160
    .line 161
    goto :goto_5

    .line 162
    :cond_2
    sget-object p0, Ltb1;->a:Ltb1;

    .line 163
    .line 164
    if-nez p0, :cond_4

    .line 165
    .line 166
    const-class p0, Lqb1;

    .line 167
    .line 168
    monitor-enter p0

    .line 169
    :try_start_1
    sget-object v2, Ltb1;->a:Ltb1;

    .line 170
    .line 171
    if-nez v2, :cond_3

    .line 172
    .line 173
    invoke-static {}, Lqb1;->f()Ldd1;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    invoke-virtual {v2}, Ldd1;->getClient()Ltb1;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    sput-object v2, Ltb1;->a:Ltb1;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    .line 183
    goto :goto_2

    .line 184
    :catchall_0
    move-exception v0

    .line 185
    move-object p1, v0

    .line 186
    goto :goto_3

    .line 187
    :cond_3
    :goto_2
    monitor-exit p0

    .line 188
    goto :goto_4

    .line 189
    :goto_3
    monitor-exit p0

    .line 190
    throw p1

    .line 191
    :cond_4
    :goto_4
    sget-object p0, Ltb1;->a:Ltb1;

    .line 192
    .line 193
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 194
    .line 195
    .line 196
    :goto_5
    new-instance v2, Ljd1;

    .line 197
    .line 198
    invoke-static {p1}, Leq3;->p(Ljava/util/ArrayList;)Ljava/util/List;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    invoke-direct {v2, p1}, Ljd1;-><init>(Ljava/util/List;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {p0, v2}, Ltb1;->b(Lzv1;)Lxh2;

    .line 206
    .line 207
    .line 208
    move-result-object p0

    .line 209
    invoke-virtual {p0}, Lxh2;->c()Ljq6;

    .line 210
    .line 211
    .line 212
    move-result-object p0

    .line 213
    invoke-virtual {p0}, Ljq6;->q()Z

    .line 214
    .line 215
    .line 216
    move-result p1

    .line 217
    if-nez p1, :cond_7

    .line 218
    .line 219
    const-string v4, "GClient"

    .line 220
    .line 221
    iget-object p1, p0, Ljq6;->b:Ljava/lang/Object;

    .line 222
    .line 223
    check-cast p1, Ljava/lang/Exception;

    .line 224
    .line 225
    if-eqz p1, :cond_5

    .line 226
    .line 227
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    :cond_5
    if-nez v1, :cond_6

    .line 232
    .line 233
    const-string v1, ""

    .line 234
    .line 235
    :cond_6
    const-string p1, "deleteTaggedBackups: "

    .line 236
    .line 237
    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v5

    .line 241
    const/4 v7, 0x4

    .line 242
    const/4 v8, 0x0

    .line 243
    const/4 v6, 0x0

    .line 244
    invoke-static/range {v3 .. v8}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 245
    .line 246
    .line 247
    :cond_7
    invoke-virtual {p0}, Ljq6;->q()Z

    .line 248
    .line 249
    .line 250
    move-result p0

    .line 251
    if-eqz p0, :cond_9

    .line 252
    .line 253
    :cond_8
    const/4 v0, 0x1

    .line 254
    :cond_9
    if-eqz v0, :cond_a

    .line 255
    .line 256
    sget-object v1, Lvr6;->INSTANCE:Lvr6;

    .line 257
    .line 258
    const-string v2, "GClient"

    .line 259
    .line 260
    const-string v3, "deleteTaggedBackups: Successful"

    .line 261
    .line 262
    const/4 v5, 0x4

    .line 263
    const/4 v6, 0x0

    .line 264
    const/4 v4, 0x0

    .line 265
    invoke-static/range {v1 .. v6}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 266
    .line 267
    .line 268
    :cond_a
    return v0

    .line 269
    :cond_b
    const-string v3, "GClient"

    .line 270
    .line 271
    if-eqz p1, :cond_c

    .line 272
    .line 273
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v1

    .line 277
    :cond_c
    if-nez v1, :cond_d

    .line 278
    .line 279
    const-string v1, ""

    .line 280
    .line 281
    :cond_d
    const-string p0, "deleteTaggedBackups:"

    .line 282
    .line 283
    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v4

    .line 287
    const/4 v6, 0x4

    .line 288
    const/4 v7, 0x0

    .line 289
    const/4 v5, 0x0

    .line 290
    invoke-static/range {v2 .. v7}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 291
    .line 292
    .line 293
    return v0
.end method

.method public final f()Lui1;
    .locals 3

    .line 1
    sget-object v0, Ld04;->i:Lokhttp3/OkHttpClient;

    .line 2
    .line 3
    invoke-static {}, Lqb1;->e()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, ".cls ("

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v0, ")"

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0}, Ljm1;->N(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "name contains "

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {}, Lqb1;->j()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const-string v2, "files(id, name, size)"

    .line 41
    .line 42
    invoke-virtual {p0, v2, v0, v1}, Lfu3;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lui1;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0
.end method

.method public final g()Ldd1;
    .locals 0

    .line 1
    iget-object p0, p0, Lfu3;->g:Ldd1;

    .line 2
    .line 3
    return-object p0
.end method

.method public final h()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "GClient"

    .line 2
    .line 3
    return-object p0
.end method

.method public final j()Lui1;
    .locals 3

    .line 1
    sget-object v0, Ld04;->i:Lokhttp3/OkHttpClient;

    .line 2
    .line 3
    invoke-static {}, Lqb1;->e()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, ".msg ("

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v0, ")"

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0}, Ljm1;->N(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "name contains "

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {}, Lqb1;->j()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const-string v2, "files(id, name, size)"

    .line 41
    .line 42
    invoke-virtual {p0, v2, v0, v1}, Lfu3;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lui1;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0
.end method

.method public final k()Lui1;
    .locals 3

    .line 1
    sget-object v0, Ld04;->i:Lokhttp3/OkHttpClient;

    .line 2
    .line 3
    const-string v0, ".wal"

    .line 4
    .line 5
    invoke-static {v0}, Ljm1;->N(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "name contains "

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {}, Lqb1;->j()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v2, "files(id, name, size, createdTime, modifiedTime, thumbnailLink)"

    .line 20
    .line 21
    invoke-virtual {p0, v2, v0, v1}, Lfu3;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lui1;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public final l()Lui1;
    .locals 3

    .line 1
    sget-object v0, Ld04;->i:Lokhttp3/OkHttpClient;

    .line 2
    .line 3
    const-string v0, ".wfi"

    .line 4
    .line 5
    invoke-static {v0}, Ljm1;->N(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "name contains "

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {}, Lqb1;->j()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v2, "files(id, name, size, createdTime, modifiedTime, thumbnailLink)"

    .line 20
    .line 21
    invoke-virtual {p0, v2, v0, v1}, Lfu3;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lui1;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public final m()Ljm1;
    .locals 4

    .line 1
    const-string v0, " in parents and trashed = false"

    .line 2
    .line 3
    :try_start_0
    invoke-static {}, Lqb1;->j()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-static {v1}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-nez v3, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object v1, v2

    .line 18
    :goto_0
    if-eqz v1, :cond_1

    .line 19
    .line 20
    sget-object v2, Ld04;->i:Lokhttp3/OkHttpClient;

    .line 21
    .line 22
    invoke-static {v1}, Ljm1;->N(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object p0, p0, Lfu3;->h:Ld04;

    .line 31
    .line 32
    const-string v1, "files(id, name, size, createdTime, modifiedTime, mimeType)"

    .line 33
    .line 34
    invoke-static {p0, v0, v1}, Ld04;->k(Ld04;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-static {p0}, Log1;->b(Ljava/util/List;)Ljava/util/ArrayList;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    sget-object v0, Lqf1;->OPAQUE:Lqf1;

    .line 43
    .line 44
    invoke-static {p0, v0}, Lk55;->h(Ljava/util/ArrayList;Lqf1;)Ljm1;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    return-object p0

    .line 49
    :cond_1
    const-string p0, "Google Drive main folder id is not initialized"

    .line 50
    .line 51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 52
    .line 53
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :catch_0
    move-exception p0

    .line 58
    new-instance v0, Lxa1;

    .line 59
    .line 60
    invoke-direct {v0, p0}, Lxa1;-><init>(Ljava/lang/Exception;)V

    .line 61
    .line 62
    .line 63
    return-object v0
.end method

.method public final n()Lorg/swiftapps/swiftbackup/cloud/model/CloudResult;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lfu3;->w(I)Lorg/swiftapps/swiftbackup/cloud/model/CloudResult;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method public final o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 6

    .line 1
    const-string v0, "doQueryRest called"

    .line 2
    .line 3
    const-string v1, "GClient"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    if-eqz p3, :cond_4

    .line 9
    .line 10
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    invoke-static {p3}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    sget-object v0, Ld04;->i:Lokhttp3/OkHttpClient;

    .line 25
    .line 26
    invoke-static {p3}, Ljm1;->N(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p3

    .line 30
    const-string v0, " in parents and trashed = false"

    .line 31
    .line 32
    invoke-virtual {p3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p3

    .line 36
    if-eqz p2, :cond_3

    .line 37
    .line 38
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_2

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    invoke-static {p2}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_3

    .line 50
    .line 51
    const-string v0, " and "

    .line 52
    .line 53
    invoke-static {p3, v0, p2}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p3

    .line 57
    :cond_3
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    const-string v0, "doQueryRest: Querying cloud with fields = "

    .line 60
    .line 61
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v0, ", query = "

    .line 68
    .line 69
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    iget-object p0, p0, Lfu3;->h:Ld04;

    .line 83
    .line 84
    invoke-static {p0, p3, p1}, Ld04;->k(Ld04;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    return-object p0

    .line 89
    :cond_4
    :goto_1
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 90
    .line 91
    const/4 v4, 0x4

    .line 92
    const/4 v5, 0x0

    .line 93
    const-string v1, "GClient"

    .line 94
    .line 95
    const-string v2, "doQueryRest: Cloud main folder id is null! Clearing cloud connection."

    .line 96
    .line 97
    const/4 v3, 0x0

    .line 98
    invoke-static/range {v0 .. v5}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    invoke-static {}, Lqb1;->a()V

    .line 102
    .line 103
    .line 104
    invoke-static {}, Lqb1;->c()Ltb1;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    const/4 p1, 0x1

    .line 109
    invoke-virtual {p0, p1}, Ltb1;->a(Z)Lorg/swiftapps/swiftbackup/cloud/model/CloudResult;

    .line 110
    .line 111
    .line 112
    sget-object p0, Lov2;->a:Lov2;

    .line 113
    .line 114
    return-object p0
.end method

.method public final declared-synchronized p(Z)Lyz3;
    .locals 12

    .line 1
    const-string v0, "Main folder creation failed ("

    .line 2
    .line 3
    const-string v1, "Main folder created: "

    .line 4
    .line 5
    const-string v2, "Main folder already exists: "

    .line 6
    .line 7
    const-string v3, "getMainFolderRest(createIfNeeded: "

    .line 8
    .line 9
    monitor-enter p0

    .line 10
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v3, ")"

    .line 19
    .line 20
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v6

    .line 27
    iget-object v3, p0, Lfu3;->g:Ldd1;

    .line 28
    .line 29
    invoke-virtual {v3}, Ldd1;->getMainCloudFolderName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-static {p0, v3}, Lfu3;->q(Lfu3;Ljava/lang/String;)Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    if-nez v5, :cond_1

    .line 42
    .line 43
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    const/4 v0, 0x1

    .line 48
    if-ne p1, v0, :cond_0

    .line 49
    .line 50
    invoke-static {v4}, Lel1;->S0(Ljava/util/List;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Lyz3;

    .line 55
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :catchall_0
    move-exception v0

    .line 73
    move-object p1, v0

    .line 74
    goto/16 :goto_3

    .line 75
    .line 76
    :cond_0
    sget-object v5, Lvr6;->INSTANCE:Lvr6;

    .line 77
    .line 78
    const-string v7, "More than 1 main folders found!"

    .line 79
    .line 80
    const/4 v9, 0x4

    .line 81
    const/4 v10, 0x0

    .line 82
    const/4 v8, 0x0

    .line 83
    invoke-static/range {v5 .. v10}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    invoke-static {v4}, Lel1;->S0(Ljava/util/List;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    check-cast p1, Lyz3;

    .line 91
    .line 92
    invoke-static {v0, v4}, Lel1;->N0(ILjava/util/List;)Ljava/util/List;

    .line 93
    .line 94
    .line 95
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    :try_start_1
    invoke-virtual {p0, p1, v0}, Lfu3;->s(Lyz3;Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    move-object v8, v0

    .line 102
    :try_start_2
    sget-object v5, Lvr6;->INSTANCE:Lvr6;

    .line 103
    .line 104
    const-string v7, "Error while merging folders"

    .line 105
    .line 106
    const/16 v10, 0x8

    .line 107
    .line 108
    const/4 v11, 0x0

    .line 109
    const/4 v9, 0x0

    .line 110
    invoke-static/range {v5 .. v11}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 111
    .line 112
    .line 113
    :goto_0
    monitor-exit p0

    .line 114
    return-object p1

    .line 115
    :cond_1
    if-nez p1, :cond_2

    .line 116
    .line 117
    monitor-exit p0

    .line 118
    const/4 p0, 0x0

    .line 119
    return-object p0

    .line 120
    :cond_2
    :try_start_3
    const-string p1, "Main folder not found, Creating folder"

    .line 121
    .line 122
    invoke-static {v6, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    iget-object p1, p0, Lfu3;->h:Ld04;

    .line 126
    .line 127
    invoke-virtual {p1, v3}, Ld04;->c(Ljava/lang/String;)Lyz3;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    iget-object v2, p1, Lyz3;->a:Ljava/lang/String;

    .line 132
    .line 133
    if-eqz v2, :cond_3

    .line 134
    .line 135
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    if-nez v2, :cond_4

    .line 140
    .line 141
    :cond_3
    move-object v1, v0

    .line 142
    goto :goto_1

    .line 143
    :cond_4
    sget-object v5, Lvr6;->INSTANCE:Lvr6;

    .line 144
    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v7

    .line 157
    const/4 v9, 0x4

    .line 158
    const/4 v10, 0x0

    .line 159
    const/4 v8, 0x0

    .line 160
    invoke-static/range {v5 .. v10}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    goto :goto_2

    .line 164
    :goto_1
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 165
    .line 166
    move-object v2, v1

    .line 167
    const-string v1, "GClient"

    .line 168
    .line 169
    new-instance v4, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    const-string v2, ")"

    .line 178
    .line 179
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    const/4 v4, 0x4

    .line 187
    const/4 v5, 0x0

    .line 188
    const/4 v3, 0x0

    .line 189
    invoke-static/range {v0 .. v5}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 190
    .line 191
    .line 192
    :goto_2
    monitor-exit p0

    .line 193
    return-object p1

    .line 194
    :goto_3
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 195
    throw p1
.end method

.method public final r(Ljava/lang/Exception;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    instance-of v0, p1, Lvz3;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast p1, Lvz3;

    .line 10
    .line 11
    iget p1, p1, Lvz3;->b:I

    .line 12
    .line 13
    const/16 v0, 0x191

    .line 14
    .line 15
    if-ne p1, v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0, v1}, Lfu3;->w(I)Lorg/swiftapps/swiftbackup/cloud/model/CloudResult;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 22
    .line 23
    new-instance p1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v1, "handleUnauthorizedStatus: "

    .line 26
    .line 27
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    const/4 v4, 0x4

    .line 38
    const/4 v5, 0x0

    .line 39
    const-string v1, "GClient"

    .line 40
    .line 41
    const/4 v3, 0x0

    .line 42
    invoke-static/range {v0 .. v5}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    instance-of p0, p0, Lsi1;

    .line 46
    .line 47
    return p0

    .line 48
    :cond_0
    return v1
.end method

.method public final s(Lyz3;Ljava/util/List;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 6
    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v4, "mergeFoldersRest() called with: mainFolder = "

    .line 10
    .line 11
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v4, ", duplicateFolders = "

    .line 18
    .line 19
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    move-object/from16 v8, p2

    .line 23
    .line 24
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    const/4 v6, 0x4

    .line 32
    const/4 v7, 0x0

    .line 33
    const-string v3, "GClient"

    .line 34
    .line 35
    const/4 v5, 0x0

    .line 36
    invoke-static/range {v2 .. v7}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    iget-object v2, v1, Lyz3;->a:Ljava/lang/String;

    .line 40
    .line 41
    if-nez v2, :cond_0

    .line 42
    .line 43
    goto/16 :goto_2

    .line 44
    .line 45
    :cond_0
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-eqz v4, :cond_6

    .line 54
    .line 55
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    check-cast v4, Lyz3;

    .line 60
    .line 61
    iget-object v5, v4, Lyz3;->a:Ljava/lang/String;

    .line 62
    .line 63
    if-nez v5, :cond_1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    sget-object v6, Lvr6;->INSTANCE:Lvr6;

    .line 67
    .line 68
    new-instance v7, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const-string v8, "Merging duplicate folder \'"

    .line 71
    .line 72
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v8, "\' into original folder \'"

    .line 79
    .line 80
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v8, "\'"

    .line 87
    .line 88
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v8

    .line 95
    const/4 v10, 0x4

    .line 96
    const/4 v11, 0x0

    .line 97
    const-string v13, "GClient: mergeFoldersRest"

    .line 98
    .line 99
    const/4 v9, 0x0

    .line 100
    move-object v7, v13

    .line 101
    invoke-static/range {v6 .. v11}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    const-string v7, "files(id, name, size)"

    .line 105
    .line 106
    const/4 v8, 0x0

    .line 107
    invoke-virtual {v0, v7, v8, v5}, Lfu3;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 108
    .line 109
    .line 110
    move-result-object v9

    .line 111
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    .line 112
    .line 113
    .line 114
    move-result v10

    .line 115
    const-string v12, "Deleted "

    .line 116
    .line 117
    const-string v11, "Duplicate folder \'"

    .line 118
    .line 119
    iget-object v14, v0, Lfu3;->h:Ld04;

    .line 120
    .line 121
    if-eqz v10, :cond_2

    .line 122
    .line 123
    new-instance v7, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const-string v8, "\' is empty, deleting it."

    .line 132
    .line 133
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v8

    .line 140
    const/4 v10, 0x4

    .line 141
    const/4 v11, 0x0

    .line 142
    const/4 v9, 0x0

    .line 143
    move-object v7, v13

    .line 144
    invoke-static/range {v6 .. v11}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    new-instance v7, Lju3;

    .line 148
    .line 149
    invoke-static {v5}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 150
    .line 151
    .line 152
    move-result-object v5

    .line 153
    new-instance v8, Ljd1;

    .line 154
    .line 155
    new-instance v9, Ljava/util/LinkedHashSet;

    .line 156
    .line 157
    invoke-direct {v9, v5}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 158
    .line 159
    .line 160
    invoke-static {v9}, Lel1;->v1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 161
    .line 162
    .line 163
    move-result-object v5

    .line 164
    invoke-direct {v8, v5}, Ljd1;-><init>(Ljava/util/List;)V

    .line 165
    .line 166
    .line 167
    invoke-direct {v7, v14, v8}, Lju3;-><init>(Ld04;Lzv1;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v7}, Lxh2;->c()Ljq6;

    .line 171
    .line 172
    .line 173
    new-instance v5, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    invoke-direct {v5, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v8

    .line 185
    const/4 v9, 0x0

    .line 186
    move-object v7, v13

    .line 187
    invoke-static/range {v6 .. v11}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    goto/16 :goto_0

    .line 191
    .line 192
    :cond_2
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 193
    .line 194
    .line 195
    move-result-object v6

    .line 196
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 197
    .line 198
    .line 199
    move-result v9

    .line 200
    if-eqz v9, :cond_4

    .line 201
    .line 202
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v9

    .line 206
    check-cast v9, Lyz3;

    .line 207
    .line 208
    iget-object v9, v9, Lyz3;->a:Ljava/lang/String;

    .line 209
    .line 210
    if-eqz v9, :cond_3

    .line 211
    .line 212
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 213
    .line 214
    .line 215
    new-instance v10, Lokhttp3/Request$Builder;

    .line 216
    .line 217
    invoke-direct {v10}, Lokhttp3/Request$Builder;-><init>()V

    .line 218
    .line 219
    .line 220
    const-string v15, "/drive/v3/files/"

    .line 221
    .line 222
    invoke-virtual {v15, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v9

    .line 226
    iget-object v15, v14, Ld04;->d:Ljava/lang/String;

    .line 227
    .line 228
    invoke-static {v15, v9}, Ld04;->u(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl;

    .line 229
    .line 230
    .line 231
    move-result-object v9

    .line 232
    invoke-virtual {v9}, Lokhttp3/HttpUrl;->g()Lokhttp3/HttpUrl$Builder;

    .line 233
    .line 234
    .line 235
    move-result-object v9

    .line 236
    const-string v15, "addParents"

    .line 237
    .line 238
    invoke-virtual {v9, v15, v2}, Lokhttp3/HttpUrl$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    const-string v15, "removeParents"

    .line 242
    .line 243
    invoke-virtual {v9, v15, v5}, Lokhttp3/HttpUrl$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    const-string v15, "fields"

    .line 247
    .line 248
    const-string v8, "id"

    .line 249
    .line 250
    invoke-virtual {v9, v15, v8}, Lokhttp3/HttpUrl$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    const-string v8, "supportsAllDrives"

    .line 254
    .line 255
    const-string v15, "true"

    .line 256
    .line 257
    invoke-virtual {v9, v8, v15}, Lokhttp3/HttpUrl$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v9}, Lokhttp3/HttpUrl$Builder;->e()Lokhttp3/HttpUrl;

    .line 261
    .line 262
    .line 263
    move-result-object v8

    .line 264
    iput-object v8, v10, Lokhttp3/Request$Builder;->a:Lokhttp3/HttpUrl;

    .line 265
    .line 266
    new-instance v8, Lfl4;

    .line 267
    .line 268
    invoke-direct {v8}, Lfl4;-><init>()V

    .line 269
    .line 270
    .line 271
    sget-object v9, Lokhttp3/RequestBody;->a:Lokhttp3/RequestBody$Companion$toRequestBody$1;

    .line 272
    .line 273
    invoke-virtual {v8}, Lqj4;->toString()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v8

    .line 277
    sget-object v9, Ld04;->j:Lokhttp3/MediaType;

    .line 278
    .line 279
    invoke-static {v8, v9}, Lokhttp3/RequestBody$Companion;->a(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody$Companion$toRequestBody$3;

    .line 280
    .line 281
    .line 282
    move-result-object v8

    .line 283
    const-string v9, "PATCH"

    .line 284
    .line 285
    invoke-virtual {v10, v9, v8}, Lokhttp3/Request$Builder;->c(Ljava/lang/String;Lokhttp3/RequestBody;)V

    .line 286
    .line 287
    .line 288
    new-instance v8, Lokhttp3/Request;

    .line 289
    .line 290
    invoke-direct {v8, v10}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v14, v8}, Ld04;->e(Lokhttp3/Request;)Lokhttp3/Response;

    .line 294
    .line 295
    .line 296
    move-result-object v8

    .line 297
    invoke-virtual {v8}, Lokhttp3/Response;->close()V

    .line 298
    .line 299
    .line 300
    :cond_3
    const/4 v8, 0x0

    .line 301
    goto :goto_1

    .line 302
    :cond_4
    invoke-virtual {v0, v7, v8, v5}, Lfu3;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 303
    .line 304
    .line 305
    move-result-object v6

    .line 306
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 307
    .line 308
    .line 309
    move-result v7

    .line 310
    if-eqz v7, :cond_5

    .line 311
    .line 312
    move-object v7, v12

    .line 313
    sget-object v12, Lvr6;->INSTANCE:Lvr6;

    .line 314
    .line 315
    new-instance v6, Ljava/lang/StringBuilder;

    .line 316
    .line 317
    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    const-string v8, "\' cleaned, deleting it."

    .line 324
    .line 325
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v6

    .line 332
    const/16 v16, 0x4

    .line 333
    .line 334
    const/16 v17, 0x0

    .line 335
    .line 336
    const/4 v15, 0x0

    .line 337
    move-object/from16 v18, v14

    .line 338
    .line 339
    move-object v14, v6

    .line 340
    move-object/from16 v6, v18

    .line 341
    .line 342
    invoke-static/range {v12 .. v17}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 343
    .line 344
    .line 345
    new-instance v8, Lju3;

    .line 346
    .line 347
    invoke-static {v5}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 348
    .line 349
    .line 350
    move-result-object v5

    .line 351
    new-instance v9, Ljd1;

    .line 352
    .line 353
    new-instance v10, Ljava/util/LinkedHashSet;

    .line 354
    .line 355
    invoke-direct {v10, v5}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 356
    .line 357
    .line 358
    invoke-static {v10}, Lel1;->v1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 359
    .line 360
    .line 361
    move-result-object v5

    .line 362
    invoke-direct {v9, v5}, Ljd1;-><init>(Ljava/util/List;)V

    .line 363
    .line 364
    .line 365
    invoke-direct {v8, v6, v9}, Lju3;-><init>(Ld04;Lzv1;)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v8}, Lxh2;->c()Ljq6;

    .line 369
    .line 370
    .line 371
    new-instance v5, Ljava/lang/StringBuilder;

    .line 372
    .line 373
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v14

    .line 383
    invoke-static/range {v12 .. v17}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 384
    .line 385
    .line 386
    goto/16 :goto_0

    .line 387
    .line 388
    :cond_5
    sget-object v12, Lvr6;->INSTANCE:Lvr6;

    .line 389
    .line 390
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 391
    .line 392
    .line 393
    move-result v5

    .line 394
    new-instance v6, Ljava/lang/StringBuilder;

    .line 395
    .line 396
    const-string v7, "Failed moving "

    .line 397
    .line 398
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 402
    .line 403
    .line 404
    const-string v5, " files from duplicate folder \'"

    .line 405
    .line 406
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    .line 408
    .line 409
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 410
    .line 411
    .line 412
    const-string v4, "\'!"

    .line 413
    .line 414
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    .line 416
    .line 417
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v14

    .line 421
    const/16 v16, 0x4

    .line 422
    .line 423
    const/16 v17, 0x0

    .line 424
    .line 425
    const/4 v15, 0x0

    .line 426
    invoke-static/range {v12 .. v17}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 427
    .line 428
    .line 429
    goto/16 :goto_0

    .line 430
    .line 431
    :cond_6
    :goto_2
    return-void
.end method

.method public final t(Ljava/lang/String;Z)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    sget-object v2, Ld45;->b:Ld45;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {}, Ld45;->a()Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const/4 v3, 0x0

    .line 15
    if-eqz v2, :cond_15

    .line 16
    .line 17
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->getEmail()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const/4 v4, 0x1

    .line 22
    invoke-static {v2, v1, v4}, Luq7;->P(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-eqz v4, :cond_0

    .line 27
    .line 28
    goto/16 :goto_3

    .line 29
    .line 30
    :cond_0
    iget-object v4, v0, Lfu3;->g:Ldd1;

    .line 31
    .line 32
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    sget-object v5, Lre3;->a:Lzc2;

    .line 39
    .line 40
    invoke-static {v4, v2}, Lqb1;->h(Ldd1;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    invoke-static {v5}, Lre3;->m(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    invoke-static {v4, v1}, Lqb1;->h(Ldd1;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    invoke-static {v4}, Lre3;->m(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    new-instance v6, Ldw;

    .line 60
    .line 61
    const/4 v7, 0x2

    .line 62
    invoke-direct {v6, v7, v2, v1, v0}, Ldw;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    new-instance v2, Ldq;

    .line 66
    .line 67
    const/4 v7, 0x6

    .line 68
    invoke-direct {v2, v7}, Ldq;-><init>(I)V

    .line 69
    .line 70
    .line 71
    sget-object v7, Ljf1;->i:Ljf1;

    .line 72
    .line 73
    sget-object v8, Lkf1;->i:Lkf1;

    .line 74
    .line 75
    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v9

    .line 79
    sget-object v10, Lse3;->a:Lse3;

    .line 80
    .line 81
    sget-object v11, Lte3;->a:Lte3;

    .line 82
    .line 83
    if-eqz v9, :cond_1

    .line 84
    .line 85
    goto/16 :goto_1

    .line 86
    .line 87
    :cond_1
    invoke-virtual {v2, v4}, Ldq;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v9

    .line 91
    check-cast v9, Lw13;

    .line 92
    .line 93
    instance-of v12, v9, Llf1;

    .line 94
    .line 95
    if-eqz v12, :cond_2

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_2
    instance-of v12, v9, Lmf1;

    .line 99
    .line 100
    if-eqz v12, :cond_3

    .line 101
    .line 102
    check-cast v9, Lmf1;

    .line 103
    .line 104
    iget-boolean v9, v9, Lmf1;->g:Z

    .line 105
    .line 106
    if-eqz v9, :cond_3

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_3
    invoke-virtual {v2, v5}, Ldq;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    check-cast v2, Lw13;

    .line 114
    .line 115
    instance-of v9, v2, Llf1;

    .line 116
    .line 117
    if-eqz v9, :cond_4

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_4
    instance-of v9, v2, Lmf1;

    .line 121
    .line 122
    if-eqz v9, :cond_b

    .line 123
    .line 124
    check-cast v2, Lmf1;

    .line 125
    .line 126
    iget-boolean v9, v2, Lmf1;->g:Z

    .line 127
    .line 128
    if-nez v9, :cond_5

    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_5
    iget-object v2, v2, Lmf1;->h:Ljava/lang/Object;

    .line 132
    .line 133
    if-nez v2, :cond_6

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_6
    invoke-virtual {v6, v2}, Ldw;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v6

    .line 140
    check-cast v6, Ljava/lang/Boolean;

    .line 141
    .line 142
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 143
    .line 144
    .line 145
    move-result v6

    .line 146
    if-nez v6, :cond_7

    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_7
    invoke-static {}, Lre3;->k()Lzc2;

    .line 150
    .line 151
    .line 152
    move-result-object v6

    .line 153
    const-string v9, "cloud_v1"

    .line 154
    .line 155
    invoke-virtual {v6, v9}, Lzc2;->d(Ljava/lang/String;)Lzc2;

    .line 156
    .line 157
    .line 158
    move-result-object v6

    .line 159
    invoke-virtual {v6, v4}, Lzc2;->d(Ljava/lang/String;)Lzc2;

    .line 160
    .line 161
    .line 162
    move-result-object v6

    .line 163
    new-instance v9, Lox;

    .line 164
    .line 165
    const/16 v12, 0xc

    .line 166
    .line 167
    invoke-direct {v9, v2, v12}, Lox;-><init>(Ljava/lang/Object;I)V

    .line 168
    .line 169
    .line 170
    invoke-static {v6, v9}, Lcf3;->b(Lzc2;Lmt3;)Lve3;

    .line 171
    .line 172
    .line 173
    move-result-object v6

    .line 174
    invoke-virtual {v6, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v9

    .line 178
    if-eqz v9, :cond_8

    .line 179
    .line 180
    new-instance v6, Lif1;

    .line 181
    .line 182
    invoke-direct {v6, v2}, Lif1;-><init>(Ljava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    goto :goto_2

    .line 186
    :cond_8
    invoke-virtual {v6, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result v2

    .line 190
    if-eqz v2, :cond_9

    .line 191
    .line 192
    goto :goto_1

    .line 193
    :cond_9
    instance-of v2, v6, Lue3;

    .line 194
    .line 195
    if-eqz v2, :cond_a

    .line 196
    .line 197
    :goto_0
    move-object v6, v7

    .line 198
    goto :goto_2

    .line 199
    :cond_a
    invoke-static {}, Lq;->j()V

    .line 200
    .line 201
    .line 202
    return-void

    .line 203
    :cond_b
    :goto_1
    move-object v6, v8

    .line 204
    :goto_2
    instance-of v2, v6, Lif1;

    .line 205
    .line 206
    if-eqz v2, :cond_12

    .line 207
    .line 208
    sget-object v12, Lvr6;->INSTANCE:Lvr6;

    .line 209
    .line 210
    const/16 v16, 0x4

    .line 211
    .line 212
    const/16 v17, 0x0

    .line 213
    .line 214
    const-string v13, "GClient"

    .line 215
    .line 216
    const-string v14, "Migrated Google Drive backup metadata after account email change"

    .line 217
    .line 218
    const/4 v15, 0x0

    .line 219
    invoke-static/range {v12 .. v17}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 220
    .line 221
    .line 222
    check-cast v6, Lif1;

    .line 223
    .line 224
    iget-object v2, v6, Lif1;->i:Ljava/lang/Object;

    .line 225
    .line 226
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 227
    .line 228
    .line 229
    invoke-static {v5}, Lre3;->e(Ljava/lang/String;)Lzc2;

    .line 230
    .line 231
    .line 232
    move-result-object v5

    .line 233
    new-instance v6, Lhj;

    .line 234
    .line 235
    const/16 v7, 0xf

    .line 236
    .line 237
    invoke-direct {v6, v2, v7}, Lhj;-><init>(Ljava/lang/Object;I)V

    .line 238
    .line 239
    .line 240
    invoke-static {v5, v6}, Lcf3;->b(Lzc2;Lmt3;)Lve3;

    .line 241
    .line 242
    .line 243
    move-result-object v5

    .line 244
    invoke-virtual {v5, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    move-result v6

    .line 248
    if-eqz v6, :cond_c

    .line 249
    .line 250
    const/16 v16, 0x4

    .line 251
    .line 252
    const/16 v17, 0x0

    .line 253
    .line 254
    const-string v13, "GClient"

    .line 255
    .line 256
    const-string v14, "Deleted old Google Drive backup metadata after account email change"

    .line 257
    .line 258
    const/4 v15, 0x0

    .line 259
    invoke-static/range {v12 .. v17}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 260
    .line 261
    .line 262
    return-void

    .line 263
    :cond_c
    invoke-virtual {v5, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    move-result v6

    .line 267
    if-eqz v6, :cond_10

    .line 268
    .line 269
    const/16 v16, 0x4

    .line 270
    .line 271
    const/16 v17, 0x0

    .line 272
    .line 273
    const-string v13, "GClient"

    .line 274
    .line 275
    const-string v14, "Skipped old Google Drive backup metadata cleanup because source changed during migration"

    .line 276
    .line 277
    const/4 v15, 0x0

    .line 278
    invoke-static/range {v12 .. v17}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 279
    .line 280
    .line 281
    invoke-static {v4}, Lre3;->e(Ljava/lang/String;)Lzc2;

    .line 282
    .line 283
    .line 284
    move-result-object v4

    .line 285
    new-instance v5, Lhj;

    .line 286
    .line 287
    invoke-direct {v5, v2, v7}, Lhj;-><init>(Ljava/lang/Object;I)V

    .line 288
    .line 289
    .line 290
    invoke-static {v4, v5}, Lcf3;->b(Lzc2;Lmt3;)Lve3;

    .line 291
    .line 292
    .line 293
    move-result-object v2

    .line 294
    invoke-virtual {v2, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 295
    .line 296
    .line 297
    move-result v4

    .line 298
    if-eqz v4, :cond_d

    .line 299
    .line 300
    const/16 v16, 0x4

    .line 301
    .line 302
    const/16 v17, 0x0

    .line 303
    .line 304
    const-string v13, "GClient"

    .line 305
    .line 306
    const-string v14, "Rolled back Google Drive backup metadata migration because source changed during migration"

    .line 307
    .line 308
    const/4 v15, 0x0

    .line 309
    invoke-static/range {v12 .. v17}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 310
    .line 311
    .line 312
    if-eqz p2, :cond_14

    .line 313
    .line 314
    const/16 v16, 0x4

    .line 315
    .line 316
    const/16 v17, 0x0

    .line 317
    .line 318
    const-string v13, "GClient"

    .line 319
    .line 320
    const-string v14, "Retrying Google Drive backup metadata migration after source changed"

    .line 321
    .line 322
    const/4 v15, 0x0

    .line 323
    invoke-static/range {v12 .. v17}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v0, v1, v3}, Lfu3;->t(Ljava/lang/String;Z)V

    .line 327
    .line 328
    .line 329
    return-void

    .line 330
    :cond_d
    invoke-virtual {v2, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 331
    .line 332
    .line 333
    move-result v0

    .line 334
    if-eqz v0, :cond_e

    .line 335
    .line 336
    const/16 v16, 0x4

    .line 337
    .line 338
    const/16 v17, 0x0

    .line 339
    .line 340
    const-string v13, "GClient"

    .line 341
    .line 342
    const-string v14, "Skipped Google Drive backup metadata migration rollback because destination changed"

    .line 343
    .line 344
    const/4 v15, 0x0

    .line 345
    invoke-static/range {v12 .. v17}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 346
    .line 347
    .line 348
    return-void

    .line 349
    :cond_e
    instance-of v0, v2, Lue3;

    .line 350
    .line 351
    if-eqz v0, :cond_f

    .line 352
    .line 353
    check-cast v2, Lue3;

    .line 354
    .line 355
    iget-object v0, v2, Lue3;->a:Lwc2;

    .line 356
    .line 357
    iget-object v0, v0, Lwc2;->b:Ljava/lang/String;

    .line 358
    .line 359
    const-string v1, "Unable to roll back Google Drive backup metadata migration after source changed: "

    .line 360
    .line 361
    invoke-static {v1, v0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v14

    .line 365
    const/16 v16, 0x4

    .line 366
    .line 367
    const/16 v17, 0x0

    .line 368
    .line 369
    const-string v13, "GClient"

    .line 370
    .line 371
    const/4 v15, 0x0

    .line 372
    invoke-static/range {v12 .. v17}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 373
    .line 374
    .line 375
    return-void

    .line 376
    :cond_f
    invoke-static {}, Lq;->j()V

    .line 377
    .line 378
    .line 379
    return-void

    .line 380
    :cond_10
    instance-of v0, v5, Lue3;

    .line 381
    .line 382
    if-eqz v0, :cond_11

    .line 383
    .line 384
    check-cast v5, Lue3;

    .line 385
    .line 386
    iget-object v0, v5, Lue3;->a:Lwc2;

    .line 387
    .line 388
    iget-object v0, v0, Lwc2;->b:Ljava/lang/String;

    .line 389
    .line 390
    const-string v1, "Unable to delete old Google Drive backup metadata after account email change: "

    .line 391
    .line 392
    invoke-static {v1, v0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v14

    .line 396
    const/16 v16, 0x4

    .line 397
    .line 398
    const/16 v17, 0x0

    .line 399
    .line 400
    const-string v13, "GClient"

    .line 401
    .line 402
    const/4 v15, 0x0

    .line 403
    invoke-static/range {v12 .. v17}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 404
    .line 405
    .line 406
    return-void

    .line 407
    :cond_11
    invoke-static {}, Lq;->j()V

    .line 408
    .line 409
    .line 410
    return-void

    .line 411
    :cond_12
    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 412
    .line 413
    .line 414
    move-result v0

    .line 415
    if-nez v0, :cond_14

    .line 416
    .line 417
    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 418
    .line 419
    .line 420
    move-result v0

    .line 421
    if-eqz v0, :cond_13

    .line 422
    .line 423
    sget-object v1, Lvr6;->INSTANCE:Lvr6;

    .line 424
    .line 425
    const/4 v5, 0x4

    .line 426
    const/4 v6, 0x0

    .line 427
    const-string v2, "GClient"

    .line 428
    .line 429
    const-string v3, "Unable to migrate Google Drive backup metadata after account email change"

    .line 430
    .line 431
    const/4 v4, 0x0

    .line 432
    invoke-static/range {v1 .. v6}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 433
    .line 434
    .line 435
    return-void

    .line 436
    :cond_13
    invoke-static {}, Lq;->j()V

    .line 437
    .line 438
    .line 439
    :cond_14
    :goto_3
    return-void

    .line 440
    :cond_15
    const-string v0, "System.exit returned normally, while it was supposed to halt JVM."

    .line 441
    .line 442
    invoke-static {v3, v0}, Ldj7;->f(ILjava/lang/String;)Ljava/lang/RuntimeException;

    .line 443
    .line 444
    .line 445
    move-result-object v0

    .line 446
    throw v0
.end method

.method public final u()Z
    .locals 29

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    sget-object v0, Lorg/swiftapps/swiftbackup/common/V;->INSTANCE:Lorg/swiftapps/swiftbackup/common/V;

    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/common/V;->getG()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v10, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    goto/16 :goto_6

    .line 15
    .line 16
    :cond_0
    sget-object v0, Llz3;->d:Llz3;

    .line 17
    .line 18
    sget-object v4, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 19
    .line 20
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    sget v5, Lmz3;->a:I

    .line 25
    .line 26
    invoke-virtual {v0, v4, v5}, Lmz3;->c(Landroid/content/Context;I)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_4

    .line 31
    .line 32
    invoke-static {}, Lhz3;->a()Landroid/accounts/Account;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    if-nez v4, :cond_1

    .line 37
    .line 38
    sget-object v11, Lvr6;->INSTANCE:Lvr6;

    .line 39
    .line 40
    const-string v12, "GClient"

    .line 41
    .line 42
    const-string v13, "Failed to refresh Google Drive GMS access token: signed-in Google account is missing"

    .line 43
    .line 44
    const/4 v15, 0x4

    .line 45
    const/16 v16, 0x0

    .line 46
    .line 47
    const/4 v14, 0x0

    .line 48
    invoke-static/range {v11 .. v16}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    goto/16 :goto_12

    .line 52
    .line 53
    :cond_1
    iget-object v0, v1, Lfu3;->i:Ljava/lang/String;

    .line 54
    .line 55
    if-eqz v0, :cond_3

    .line 56
    .line 57
    invoke-static {v0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    if-nez v5, :cond_2

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    move-object v0, v10

    .line 65
    :goto_0
    if-eqz v0, :cond_3

    .line 66
    .line 67
    :try_start_0
    sget-object v5, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 68
    .line 69
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    invoke-static {v5, v0}, Lsz3;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    sget-object v0, Lbe8;->a:Lbe8;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :catchall_0
    move-exception v0

    .line 80
    new-instance v5, Lbn6;

    .line 81
    .line 82
    invoke-direct {v5, v0}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 83
    .line 84
    .line 85
    move-object v0, v5

    .line 86
    :goto_1
    invoke-static {v0}, Len6;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 87
    .line 88
    .line 89
    move-result-object v14

    .line 90
    if-eqz v14, :cond_3

    .line 91
    .line 92
    sget-object v11, Lvr6;->INSTANCE:Lvr6;

    .line 93
    .line 94
    const-string v12, "GClient"

    .line 95
    .line 96
    const-string v13, "Failed to clear stale Google Drive token"

    .line 97
    .line 98
    const/16 v16, 0x8

    .line 99
    .line 100
    const/16 v17, 0x0

    .line 101
    .line 102
    const/4 v15, 0x0

    .line 103
    invoke-static/range {v11 .. v17}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    :cond_3
    :try_start_1
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 107
    .line 108
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-static {v0, v4}, Lsz3;->b(Landroid/content/Context;Landroid/accounts/Account;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    iput-object v0, v1, Lfu3;->i:Ljava/lang/String;

    .line 120
    .line 121
    invoke-static {v0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 122
    .line 123
    .line 124
    move-result v0
    :try_end_1
    .catch Lcom/google/android/gms/auth/UserRecoverableAuthException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lrz3; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 125
    xor-int/lit8 v3, v0, 0x1

    .line 126
    .line 127
    goto/16 :goto_12

    .line 128
    .line 129
    :catch_0
    move-exception v0

    .line 130
    move-object v14, v0

    .line 131
    goto :goto_2

    .line 132
    :catch_1
    move-exception v0

    .line 133
    move-object v14, v0

    .line 134
    goto :goto_3

    .line 135
    :catch_2
    move-exception v0

    .line 136
    move-object v14, v0

    .line 137
    goto :goto_4

    .line 138
    :catch_3
    move-exception v0

    .line 139
    goto :goto_5

    .line 140
    :goto_2
    sget-object v11, Lvr6;->INSTANCE:Lvr6;

    .line 141
    .line 142
    const-string v12, "GClient"

    .line 143
    .line 144
    const-string v13, "Failed to refresh Google Drive GMS access token"

    .line 145
    .line 146
    const/16 v16, 0x8

    .line 147
    .line 148
    const/16 v17, 0x0

    .line 149
    .line 150
    const/4 v15, 0x0

    .line 151
    invoke-static/range {v11 .. v17}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    iput-object v10, v1, Lfu3;->i:Ljava/lang/String;

    .line 155
    .line 156
    goto/16 :goto_12

    .line 157
    .line 158
    :goto_3
    sget-object v11, Lvr6;->INSTANCE:Lvr6;

    .line 159
    .line 160
    const-string v12, "GClient"

    .line 161
    .line 162
    const-string v13, "Failed to refresh Google Drive GMS access token"

    .line 163
    .line 164
    const/16 v16, 0x8

    .line 165
    .line 166
    const/16 v17, 0x0

    .line 167
    .line 168
    const/4 v15, 0x0

    .line 169
    invoke-static/range {v11 .. v17}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 170
    .line 171
    .line 172
    iput-object v10, v1, Lfu3;->i:Ljava/lang/String;

    .line 173
    .line 174
    goto/16 :goto_12

    .line 175
    .line 176
    :goto_4
    sget-object v11, Lvr6;->INSTANCE:Lvr6;

    .line 177
    .line 178
    const-string v12, "GClient"

    .line 179
    .line 180
    const-string v13, "Failed to refresh Google Drive GMS access token"

    .line 181
    .line 182
    const/16 v16, 0x8

    .line 183
    .line 184
    const/16 v17, 0x0

    .line 185
    .line 186
    const/4 v15, 0x0

    .line 187
    invoke-static/range {v11 .. v17}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    iput-object v10, v1, Lfu3;->i:Ljava/lang/String;

    .line 191
    .line 192
    goto/16 :goto_12

    .line 193
    .line 194
    :goto_5
    iput-object v10, v1, Lfu3;->i:Ljava/lang/String;

    .line 195
    .line 196
    throw v0

    .line 197
    :cond_4
    :goto_6
    sget-object v0, Lgn5;->a:Ljava/lang/String;

    .line 198
    .line 199
    sget-object v4, Lvr6;->INSTANCE:Lvr6;

    .line 200
    .line 201
    const-string v5, "NoGmsClient"

    .line 202
    .line 203
    const-string v6, "refreshToken"

    .line 204
    .line 205
    const/4 v8, 0x4

    .line 206
    const/4 v9, 0x0

    .line 207
    const/4 v7, 0x0

    .line 208
    invoke-static/range {v4 .. v9}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 209
    .line 210
    .line 211
    const-string v0, "nogms_auth_state"

    .line 212
    .line 213
    const/4 v1, 0x0

    .line 214
    :try_start_2
    sget-object v4, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 215
    .line 216
    if-eqz v4, :cond_5

    .line 217
    .line 218
    invoke-interface {v4, v0, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    goto :goto_7

    .line 223
    :cond_5
    const-string v0, "prefs"

    .line 224
    .line 225
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    throw v1
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_4

    .line 229
    :catch_4
    move-object v0, v10

    .line 230
    :goto_7
    if-eqz v0, :cond_10

    .line 231
    .line 232
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 233
    .line 234
    .line 235
    move-result v4

    .line 236
    if-nez v4, :cond_6

    .line 237
    .line 238
    goto/16 :goto_a

    .line 239
    .line 240
    :cond_6
    const-string v4, "jsonStr cannot be null or empty"

    .line 241
    .line 242
    invoke-static {v0, v4}, Ljb9;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    new-instance v4, Lorg/json/JSONObject;

    .line 246
    .line 247
    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    const-string v0, "lastRegistrationResponse"

    .line 251
    .line 252
    const-string v5, "configuration"

    .line 253
    .line 254
    const-string v6, "request"

    .line 255
    .line 256
    const-string v7, "additionalParameters"

    .line 257
    .line 258
    const-string v8, "mLastTokenResponse"

    .line 259
    .line 260
    const-string v9, "lastAuthorizationResponse"

    .line 261
    .line 262
    const-string v11, "mAuthorizationException"

    .line 263
    .line 264
    const-string v12, "json cannot be null"

    .line 265
    .line 266
    new-instance v13, Lf80;

    .line 267
    .line 268
    invoke-direct {v13}, Lf80;-><init>()V

    .line 269
    .line 270
    .line 271
    const-string v14, "refreshToken"

    .line 272
    .line 273
    invoke-static {v4, v14}, Ljm1;->u(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v15

    .line 277
    iput-object v15, v13, Lf80;->a:Ljava/lang/Object;

    .line 278
    .line 279
    const-string v15, "scope"

    .line 280
    .line 281
    invoke-static {v4, v15}, Ljm1;->u(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v1

    .line 285
    iput-object v1, v13, Lf80;->b:Ljava/lang/Object;

    .line 286
    .line 287
    const-string v1, "config"

    .line 288
    .line 289
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 290
    .line 291
    .line 292
    move-result v16

    .line 293
    if-eqz v16, :cond_7

    .line 294
    .line 295
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 296
    .line 297
    .line 298
    move-result-object v1

    .line 299
    invoke-static {v1}, Ll90;->e(Lorg/json/JSONObject;)Ll90;

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    iput-object v1, v13, Lf80;->c:Ljava/lang/Object;

    .line 304
    .line 305
    :cond_7
    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 306
    .line 307
    .line 308
    move-result v1

    .line 309
    if-eqz v1, :cond_8

    .line 310
    .line 311
    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 312
    .line 313
    .line 314
    move-result-object v1

    .line 315
    invoke-static {v1}, Lz80;->f(Lorg/json/JSONObject;)Lz80;

    .line 316
    .line 317
    .line 318
    move-result-object v1

    .line 319
    iput-object v1, v13, Lf80;->g:Ljava/lang/Object;

    .line 320
    .line 321
    :cond_8
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 322
    .line 323
    .line 324
    move-result v1

    .line 325
    if-eqz v1, :cond_9

    .line 326
    .line 327
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 328
    .line 329
    .line 330
    move-result-object v1

    .line 331
    invoke-static {v1}, Lg90;->K(Lorg/json/JSONObject;)Lg90;

    .line 332
    .line 333
    .line 334
    move-result-object v1

    .line 335
    iput-object v1, v13, Lf80;->d:Ljava/lang/Object;

    .line 336
    .line 337
    :cond_9
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 338
    .line 339
    .line 340
    move-result v1

    .line 341
    if-eqz v1, :cond_b

    .line 342
    .line 343
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 344
    .line 345
    .line 346
    move-result-object v1

    .line 347
    sget-object v8, Ln58;->i:Ljava/util/HashSet;

    .line 348
    .line 349
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 350
    .line 351
    .line 352
    move-result v8

    .line 353
    if-eqz v8, :cond_a

    .line 354
    .line 355
    new-instance v16, Ln58;

    .line 356
    .line 357
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 358
    .line 359
    .line 360
    move-result-object v8

    .line 361
    sget-object v9, Ll58;->k:Ljava/util/Set;

    .line 362
    .line 363
    const-string v9, "json object cannot be null"

    .line 364
    .line 365
    invoke-static {v8, v9}, Ljb9;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    new-instance v17, Ll58;

    .line 369
    .line 370
    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 371
    .line 372
    .line 373
    move-result-object v9

    .line 374
    invoke-static {v9}, Ll90;->e(Lorg/json/JSONObject;)Ll90;

    .line 375
    .line 376
    .line 377
    move-result-object v18

    .line 378
    const-string v9, "clientId"

    .line 379
    .line 380
    invoke-static {v8, v9}, Ljm1;->t(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v19

    .line 384
    const-string v9, "nonce"

    .line 385
    .line 386
    invoke-static {v8, v9}, Ljm1;->u(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v20

    .line 390
    const-string v9, "grantType"

    .line 391
    .line 392
    invoke-static {v8, v9}, Ljm1;->t(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v21

    .line 396
    const-string v9, "redirectUri"

    .line 397
    .line 398
    invoke-static {v8, v9}, Ljm1;->y(Lorg/json/JSONObject;Ljava/lang/String;)Landroid/net/Uri;

    .line 399
    .line 400
    .line 401
    move-result-object v22

    .line 402
    invoke-static {v8, v15}, Ljm1;->u(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v23

    .line 406
    const-string v9, "authorizationCode"

    .line 407
    .line 408
    invoke-static {v8, v9}, Ljm1;->u(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v24

    .line 412
    invoke-static {v8, v14}, Ljm1;->u(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v25

    .line 416
    const-string v9, "codeVerifier"

    .line 417
    .line 418
    invoke-static {v8, v9}, Ljm1;->u(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    move-result-object v26

    .line 422
    invoke-static {v8, v7}, Ljm1;->w(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 423
    .line 424
    .line 425
    move-result-object v27

    .line 426
    invoke-direct/range {v17 .. v27}, Ll58;-><init>(Ll90;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 427
    .line 428
    .line 429
    const-string v8, "token_type"

    .line 430
    .line 431
    invoke-static {v1, v8}, Ljm1;->u(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v18

    .line 435
    const-string v8, "access_token"

    .line 436
    .line 437
    invoke-static {v1, v8}, Ljm1;->u(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 438
    .line 439
    .line 440
    move-result-object v19

    .line 441
    const-string v8, "expires_at"

    .line 442
    .line 443
    invoke-static {v1, v8}, Ljm1;->p(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    .line 444
    .line 445
    .line 446
    move-result-object v20

    .line 447
    const-string v8, "id_token"

    .line 448
    .line 449
    invoke-static {v1, v8}, Ljm1;->u(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    move-result-object v21

    .line 453
    const-string v8, "refresh_token"

    .line 454
    .line 455
    invoke-static {v1, v8}, Ljm1;->u(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object v22

    .line 459
    invoke-static {v1, v15}, Ljm1;->u(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object v23

    .line 463
    invoke-static {v1, v7}, Ljm1;->w(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 464
    .line 465
    .line 466
    move-result-object v24

    .line 467
    invoke-direct/range {v16 .. v24}, Ln58;-><init>(Ll58;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 468
    .line 469
    .line 470
    move-object/from16 v1, v16

    .line 471
    .line 472
    iput-object v1, v13, Lf80;->e:Ljava/lang/Object;

    .line 473
    .line 474
    goto :goto_8

    .line 475
    :cond_a
    const-string v0, "token request not provided and not found in JSON"

    .line 476
    .line 477
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 478
    .line 479
    .line 480
    return v3

    .line 481
    :cond_b
    :goto_8
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 482
    .line 483
    .line 484
    move-result v1

    .line 485
    if-eqz v1, :cond_d

    .line 486
    .line 487
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 488
    .line 489
    .line 490
    move-result-object v0

    .line 491
    sget v1, Lfi6;->j:I

    .line 492
    .line 493
    const-string v1, "token_endpoint_auth_method"

    .line 494
    .line 495
    invoke-static {v0, v12}, Ljb9;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 496
    .line 497
    .line 498
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 499
    .line 500
    .line 501
    move-result v4

    .line 502
    if-eqz v4, :cond_f

    .line 503
    .line 504
    new-instance v14, Lfi6;

    .line 505
    .line 506
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 507
    .line 508
    .line 509
    move-result-object v4

    .line 510
    sget v6, Lei6;->j:I

    .line 511
    .line 512
    const-string v6, "json must not be null"

    .line 513
    .line 514
    invoke-static {v4, v6}, Ljb9;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 515
    .line 516
    .line 517
    new-instance v15, Lei6;

    .line 518
    .line 519
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 520
    .line 521
    .line 522
    move-result-object v5

    .line 523
    invoke-static {v5}, Ll90;->e(Lorg/json/JSONObject;)Ll90;

    .line 524
    .line 525
    .line 526
    move-result-object v16

    .line 527
    const-string v5, "redirect_uris"

    .line 528
    .line 529
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 530
    .line 531
    .line 532
    move-result v6

    .line 533
    if-eqz v6, :cond_e

    .line 534
    .line 535
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 536
    .line 537
    .line 538
    move-result-object v5

    .line 539
    new-instance v6, Ljava/util/ArrayList;

    .line 540
    .line 541
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 542
    .line 543
    .line 544
    if-eqz v5, :cond_c

    .line 545
    .line 546
    move v8, v3

    .line 547
    :goto_9
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    .line 548
    .line 549
    .line 550
    move-result v9

    .line 551
    if-ge v8, v9, :cond_c

    .line 552
    .line 553
    invoke-virtual {v5, v8}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    .line 554
    .line 555
    .line 556
    move-result-object v9

    .line 557
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 558
    .line 559
    .line 560
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 561
    .line 562
    .line 563
    move-result-object v9

    .line 564
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 565
    .line 566
    .line 567
    move-result-object v9

    .line 568
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 569
    .line 570
    .line 571
    add-int/lit8 v8, v8, 0x1

    .line 572
    .line 573
    goto :goto_9

    .line 574
    :cond_c
    const-string v5, "response_types"

    .line 575
    .line 576
    invoke-static {v4, v5}, Ljm1;->v(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 577
    .line 578
    .line 579
    move-result-object v18

    .line 580
    const-string v5, "grant_types"

    .line 581
    .line 582
    invoke-static {v4, v5}, Ljm1;->v(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 583
    .line 584
    .line 585
    move-result-object v19

    .line 586
    const-string v5, "subject_type"

    .line 587
    .line 588
    invoke-static {v4, v5}, Ljm1;->u(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 589
    .line 590
    .line 591
    move-result-object v20

    .line 592
    const-string v5, "jwks_uri"

    .line 593
    .line 594
    invoke-static {v4, v5}, Ljm1;->y(Lorg/json/JSONObject;Ljava/lang/String;)Landroid/net/Uri;

    .line 595
    .line 596
    .line 597
    move-result-object v21

    .line 598
    const-string v5, "jwks"

    .line 599
    .line 600
    invoke-static {v4, v5}, Ljm1;->o(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    .line 601
    .line 602
    .line 603
    move-result-object v22

    .line 604
    invoke-static {v4, v1}, Ljm1;->u(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 605
    .line 606
    .line 607
    move-result-object v23

    .line 608
    invoke-static {v4, v7}, Ljm1;->w(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 609
    .line 610
    .line 611
    move-result-object v24

    .line 612
    move-object/from16 v17, v6

    .line 613
    .line 614
    invoke-direct/range {v15 .. v24}, Lei6;-><init>(Ll90;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Landroid/net/Uri;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/LinkedHashMap;)V

    .line 615
    .line 616
    .line 617
    const-string v4, "client_id"

    .line 618
    .line 619
    invoke-static {v0, v4}, Ljm1;->t(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 620
    .line 621
    .line 622
    move-result-object v16

    .line 623
    const-string v4, "client_id_issued_at"

    .line 624
    .line 625
    invoke-static {v0, v4}, Ljm1;->p(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    .line 626
    .line 627
    .line 628
    move-result-object v17

    .line 629
    const-string v4, "client_secret"

    .line 630
    .line 631
    invoke-static {v0, v4}, Ljm1;->u(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 632
    .line 633
    .line 634
    move-result-object v18

    .line 635
    const-string v4, "client_secret_expires_at"

    .line 636
    .line 637
    invoke-static {v0, v4}, Ljm1;->p(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    .line 638
    .line 639
    .line 640
    move-result-object v19

    .line 641
    const-string v4, "registration_access_token"

    .line 642
    .line 643
    invoke-static {v0, v4}, Ljm1;->u(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 644
    .line 645
    .line 646
    move-result-object v20

    .line 647
    const-string v4, "registration_client_uri"

    .line 648
    .line 649
    invoke-static {v0, v4}, Ljm1;->y(Lorg/json/JSONObject;Ljava/lang/String;)Landroid/net/Uri;

    .line 650
    .line 651
    .line 652
    move-result-object v21

    .line 653
    invoke-static {v0, v1}, Ljm1;->u(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 654
    .line 655
    .line 656
    move-result-object v22

    .line 657
    invoke-static {v0, v7}, Ljm1;->w(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 658
    .line 659
    .line 660
    move-result-object v23

    .line 661
    invoke-direct/range {v14 .. v23}, Lfi6;-><init>(Lei6;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/LinkedHashMap;)V

    .line 662
    .line 663
    .line 664
    iput-object v14, v13, Lf80;->f:Ljava/lang/Object;

    .line 665
    .line 666
    :cond_d
    move-object v0, v13

    .line 667
    goto :goto_b

    .line 668
    :cond_e
    new-instance v0, Lorg/json/JSONException;

    .line 669
    .line 670
    const-string v1, "field \"redirect_uris\" not found in json object"

    .line 671
    .line 672
    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    .line 673
    .line 674
    .line 675
    throw v0

    .line 676
    :cond_f
    const-string v0, "registration request not found in JSON"

    .line 677
    .line 678
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 679
    .line 680
    .line 681
    return v3

    .line 682
    :cond_10
    :goto_a
    move-object v0, v10

    .line 683
    :goto_b
    if-nez v0, :cond_11

    .line 684
    .line 685
    sget-object v4, Lvr6;->INSTANCE:Lvr6;

    .line 686
    .line 687
    const-string v5, "NoGmsClient"

    .line 688
    .line 689
    const-string v6, "refreshNoGmsToken: Null auth state!"

    .line 690
    .line 691
    const/4 v8, 0x4

    .line 692
    const/4 v9, 0x0

    .line 693
    const/4 v7, 0x0

    .line 694
    invoke-static/range {v4 .. v9}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 695
    .line 696
    .line 697
    goto/16 :goto_12

    .line 698
    .line 699
    :cond_11
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    .line 700
    .line 701
    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 702
    .line 703
    .line 704
    new-instance v2, Lih6;

    .line 705
    .line 706
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 707
    .line 708
    .line 709
    new-instance v15, Lk90;

    .line 710
    .line 711
    sget-object v4, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 712
    .line 713
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 714
    .line 715
    .line 716
    move-result-object v4

    .line 717
    invoke-direct {v15, v4}, Lk90;-><init>(Landroid/content/Context;)V

    .line 718
    .line 719
    .line 720
    new-instance v4, Lcn5;

    .line 721
    .line 722
    invoke-direct {v4, v2, v0, v1}, Lcn5;-><init>(Lih6;Lf80;Ljava/util/concurrent/CountDownLatch;)V

    .line 723
    .line 724
    .line 725
    sget-object v5, Lq34;->d:Lq34;

    .line 726
    .line 727
    sget-object v6, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 728
    .line 729
    const-string v7, "additional params cannot be null"

    .line 730
    .line 731
    invoke-static {v6, v7}, Ljb9;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 732
    .line 733
    .line 734
    iget-object v7, v0, Lf80;->g:Ljava/lang/Object;

    .line 735
    .line 736
    check-cast v7, Lz80;

    .line 737
    .line 738
    if-eqz v7, :cond_13

    .line 739
    .line 740
    :cond_12
    const/4 v8, 0x0

    .line 741
    goto :goto_c

    .line 742
    :cond_13
    iget-object v8, v0, Lf80;->e:Ljava/lang/Object;

    .line 743
    .line 744
    check-cast v8, Ln58;

    .line 745
    .line 746
    if-eqz v8, :cond_14

    .line 747
    .line 748
    iget-object v9, v8, Ln58;->c:Ljava/lang/String;

    .line 749
    .line 750
    if-eqz v9, :cond_14

    .line 751
    .line 752
    iget-object v8, v8, Ln58;->d:Ljava/lang/Long;

    .line 753
    .line 754
    goto :goto_c

    .line 755
    :cond_14
    iget-object v8, v0, Lf80;->d:Ljava/lang/Object;

    .line 756
    .line 757
    check-cast v8, Lg90;

    .line 758
    .line 759
    if-eqz v8, :cond_12

    .line 760
    .line 761
    iget-object v9, v8, Lg90;->A:Ljava/lang/String;

    .line 762
    .line 763
    if-eqz v9, :cond_12

    .line 764
    .line 765
    iget-object v8, v8, Lg90;->B:Ljava/lang/Long;

    .line 766
    .line 767
    :goto_c
    if-nez v8, :cond_15

    .line 768
    .line 769
    invoke-virtual {v0}, Lf80;->a()Ljava/lang/String;

    .line 770
    .line 771
    .line 772
    move-result-object v7

    .line 773
    if-nez v7, :cond_1f

    .line 774
    .line 775
    goto :goto_e

    .line 776
    :cond_15
    if-eqz v7, :cond_17

    .line 777
    .line 778
    :cond_16
    const/4 v7, 0x0

    .line 779
    goto :goto_d

    .line 780
    :cond_17
    iget-object v7, v0, Lf80;->e:Ljava/lang/Object;

    .line 781
    .line 782
    check-cast v7, Ln58;

    .line 783
    .line 784
    if-eqz v7, :cond_18

    .line 785
    .line 786
    iget-object v8, v7, Ln58;->c:Ljava/lang/String;

    .line 787
    .line 788
    if-eqz v8, :cond_18

    .line 789
    .line 790
    iget-object v7, v7, Ln58;->d:Ljava/lang/Long;

    .line 791
    .line 792
    goto :goto_d

    .line 793
    :cond_18
    iget-object v7, v0, Lf80;->d:Ljava/lang/Object;

    .line 794
    .line 795
    check-cast v7, Lg90;

    .line 796
    .line 797
    if-eqz v7, :cond_16

    .line 798
    .line 799
    iget-object v8, v7, Lg90;->A:Ljava/lang/String;

    .line 800
    .line 801
    if-eqz v8, :cond_16

    .line 802
    .line 803
    iget-object v7, v7, Lg90;->B:Ljava/lang/Long;

    .line 804
    .line 805
    :goto_d
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 806
    .line 807
    .line 808
    move-result-wide v7

    .line 809
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 810
    .line 811
    .line 812
    move-result-wide v11

    .line 813
    const-wide/32 v13, 0xea60

    .line 814
    .line 815
    .line 816
    add-long/2addr v11, v13

    .line 817
    cmp-long v7, v7, v11

    .line 818
    .line 819
    if-gtz v7, :cond_1f

    .line 820
    .line 821
    :goto_e
    iget-object v7, v0, Lf80;->a:Ljava/lang/Object;

    .line 822
    .line 823
    check-cast v7, Ljava/lang/String;

    .line 824
    .line 825
    if-nez v7, :cond_19

    .line 826
    .line 827
    sget-object v0, Lw80;->b:Lz80;

    .line 828
    .line 829
    new-instance v3, Ljava/lang/IllegalStateException;

    .line 830
    .line 831
    const-string v5, "No refresh token available and token have expired"

    .line 832
    .line 833
    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 834
    .line 835
    .line 836
    invoke-static {v0, v3}, Lz80;->g(Lz80;Ljava/lang/Exception;)Lz80;

    .line 837
    .line 838
    .line 839
    move-result-object v0

    .line 840
    invoke-virtual {v4, v10, v10, v0}, Lcn5;->a(Ljava/lang/String;Ljava/lang/String;Lz80;)V

    .line 841
    .line 842
    .line 843
    goto/16 :goto_11

    .line 844
    .line 845
    :cond_19
    iget-object v7, v0, Lf80;->h:Ljava/lang/Object;

    .line 846
    .line 847
    monitor-enter v7

    .line 848
    :try_start_3
    iget-object v8, v0, Lf80;->i:Ljava/io/Serializable;

    .line 849
    .line 850
    check-cast v8, Ljava/util/ArrayList;

    .line 851
    .line 852
    if-eqz v8, :cond_1a

    .line 853
    .line 854
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 855
    .line 856
    .line 857
    monitor-exit v7

    .line 858
    goto/16 :goto_11

    .line 859
    .line 860
    :catchall_1
    move-exception v0

    .line 861
    goto/16 :goto_f

    .line 862
    .line 863
    :cond_1a
    new-instance v8, Ljava/util/ArrayList;

    .line 864
    .line 865
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 866
    .line 867
    .line 868
    iput-object v8, v0, Lf80;->i:Ljava/io/Serializable;

    .line 869
    .line 870
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 871
    .line 872
    .line 873
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 874
    iget-object v4, v0, Lf80;->a:Ljava/lang/Object;

    .line 875
    .line 876
    check-cast v4, Ljava/lang/String;

    .line 877
    .line 878
    if-eqz v4, :cond_1e

    .line 879
    .line 880
    iget-object v4, v0, Lf80;->d:Ljava/lang/Object;

    .line 881
    .line 882
    check-cast v4, Lg90;

    .line 883
    .line 884
    if-eqz v4, :cond_1d

    .line 885
    .line 886
    iget-object v3, v4, Lg90;->w:Le90;

    .line 887
    .line 888
    move-object v4, v5

    .line 889
    iget-object v5, v3, Le90;->a:Ll90;

    .line 890
    .line 891
    iget-object v3, v3, Le90;->b:Ljava/lang/String;

    .line 892
    .line 893
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 894
    .line 895
    .line 896
    const-string v7, "clientId cannot be null or empty"

    .line 897
    .line 898
    invoke-static {v3, v7}, Ljb9;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    .line 900
    .line 901
    new-instance v7, Ljava/util/LinkedHashMap;

    .line 902
    .line 903
    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 904
    .line 905
    .line 906
    const-string v8, "refresh_token"

    .line 907
    .line 908
    const-string v7, "grantType cannot be null or empty"

    .line 909
    .line 910
    invoke-static {v8, v7}, Ljb9;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    .line 912
    .line 913
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 914
    .line 915
    .line 916
    move-result v7

    .line 917
    if-eqz v7, :cond_1c

    .line 918
    .line 919
    iget-object v7, v0, Lf80;->a:Ljava/lang/Object;

    .line 920
    .line 921
    move-object v12, v7

    .line 922
    check-cast v12, Ljava/lang/String;

    .line 923
    .line 924
    if-eqz v12, :cond_1b

    .line 925
    .line 926
    const-string v7, "refresh token cannot be empty if defined"

    .line 927
    .line 928
    invoke-static {v12, v7}, Ljb9;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    .line 930
    .line 931
    :cond_1b
    sget-object v7, Ll58;->k:Ljava/util/Set;

    .line 932
    .line 933
    invoke-static {v6, v7}, Lji8;->e(Ljava/util/Map;Ljava/util/Set;)Ljava/util/Map;

    .line 934
    .line 935
    .line 936
    move-result-object v6

    .line 937
    const-string v7, "refresh token must be specified for grant_type = refresh_token"

    .line 938
    .line 939
    invoke-static {v12, v7}, Ljb9;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 940
    .line 941
    .line 942
    move-object v7, v4

    .line 943
    new-instance v4, Ll58;

    .line 944
    .line 945
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 946
    .line 947
    .line 948
    move-result-object v14

    .line 949
    move-object v6, v7

    .line 950
    const/4 v7, 0x0

    .line 951
    const/4 v9, 0x0

    .line 952
    const/4 v11, 0x0

    .line 953
    const/4 v13, 0x0

    .line 954
    move-object/from16 v28, v6

    .line 955
    .line 956
    move-object v6, v3

    .line 957
    move-object/from16 v3, v28

    .line 958
    .line 959
    invoke-direct/range {v4 .. v14}, Ll58;-><init>(Ll90;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 960
    .line 961
    .line 962
    new-instance v5, Lz28;

    .line 963
    .line 964
    const/4 v6, 0x6

    .line 965
    invoke-direct {v5, v0, v6}, Lz28;-><init>(Ljava/lang/Object;I)V

    .line 966
    .line 967
    .line 968
    invoke-virtual {v15, v4, v3, v5}, Lk90;->c(Ll58;Lt91;Lj90;)V

    .line 969
    .line 970
    .line 971
    goto :goto_11

    .line 972
    :cond_1c
    throw v10

    .line 973
    :cond_1d
    const-string v0, "No authorization configuration available for refresh request"

    .line 974
    .line 975
    invoke-static {v0}, Ll0;->e(Ljava/lang/String;)V

    .line 976
    .line 977
    .line 978
    return v3

    .line 979
    :cond_1e
    const-string v0, "No refresh token available for refresh request"

    .line 980
    .line 981
    invoke-static {v0}, Ll0;->e(Ljava/lang/String;)V

    .line 982
    .line 983
    .line 984
    return v3

    .line 985
    :goto_f
    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 986
    throw v0

    .line 987
    :cond_1f
    invoke-virtual {v0}, Lf80;->a()Ljava/lang/String;

    .line 988
    .line 989
    .line 990
    move-result-object v3

    .line 991
    iget-object v5, v0, Lf80;->g:Ljava/lang/Object;

    .line 992
    .line 993
    check-cast v5, Lz80;

    .line 994
    .line 995
    if-eqz v5, :cond_21

    .line 996
    .line 997
    :cond_20
    const/4 v0, 0x0

    .line 998
    goto :goto_10

    .line 999
    :cond_21
    iget-object v5, v0, Lf80;->e:Ljava/lang/Object;

    .line 1000
    .line 1001
    check-cast v5, Ln58;

    .line 1002
    .line 1003
    if-eqz v5, :cond_22

    .line 1004
    .line 1005
    iget-object v5, v5, Ln58;->e:Ljava/lang/String;

    .line 1006
    .line 1007
    if-eqz v5, :cond_22

    .line 1008
    .line 1009
    move-object v0, v5

    .line 1010
    goto :goto_10

    .line 1011
    :cond_22
    iget-object v0, v0, Lf80;->d:Ljava/lang/Object;

    .line 1012
    .line 1013
    check-cast v0, Lg90;

    .line 1014
    .line 1015
    if-eqz v0, :cond_20

    .line 1016
    .line 1017
    iget-object v0, v0, Lg90;->C:Ljava/lang/String;

    .line 1018
    .line 1019
    :goto_10
    invoke-virtual {v4, v3, v0, v10}, Lcn5;->a(Ljava/lang/String;Ljava/lang/String;Lz80;)V

    .line 1020
    .line 1021
    .line 1022
    :goto_11
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 1023
    .line 1024
    .line 1025
    iget-boolean v3, v2, Lih6;->a:Z

    .line 1026
    .line 1027
    :goto_12
    return v3
.end method

.method public final v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lui1;
    .locals 9

    .line 1
    const-string v1, "GClient"

    .line 2
    .line 3
    new-instance v2, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lfu3;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    const/4 p0, 0x0

    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception v0

    .line 15
    move-object p0, v0

    .line 16
    const-string p1, "searchRest: "

    .line 17
    .line 18
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 19
    .line 20
    .line 21
    instance-of p1, p0, Lvz3;

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    sget-object v3, Lvr6;->INSTANCE:Lvr6;

    .line 26
    .line 27
    move-object v0, p0

    .line 28
    check-cast v0, Lvz3;

    .line 29
    .line 30
    invoke-static {v0}, Lrs9;->w(Lvz3;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    const/4 v7, 0x4

    .line 35
    const/4 v8, 0x0

    .line 36
    const-string v4, "GClient"

    .line 37
    .line 38
    const/4 v6, 0x0

    .line 39
    invoke-static/range {v3 .. v8}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    new-instance p2, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string p3, "searchRest: Total drive files = "

    .line 49
    .line 50
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-eqz p1, :cond_1

    .line 68
    .line 69
    sget-object p1, Lov2;->a:Lov2;

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_1
    invoke-static {v2}, Log1;->b(Ljava/util/List;)Ljava/util/ArrayList;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    :goto_1
    new-instance p2, Lui1;

    .line 77
    .line 78
    invoke-direct {p2, p0, p1}, Lui1;-><init>(Ljava/lang/Exception;Ljava/util/List;)V

    .line 79
    .line 80
    .line 81
    return-object p2
.end method

.method public final w(I)Lorg/swiftapps/swiftbackup/cloud/model/CloudResult;
    .locals 14

    .line 1
    const-string v0, "GClient"

    .line 2
    .line 3
    const-string v1, "startCheckAccessRest()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 9
    .line 10
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Lai8;->i(Landroid/content/Context;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    sget-object p0, Lqi1;->a:Lqi1;

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_0
    invoke-static {}, Lqb1;->j()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "Error: "

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v3, 0x1

    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-static {}, Lqb1;->j()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    goto :goto_3

    .line 45
    :cond_2
    :goto_0
    :try_start_0
    invoke-virtual {p0, v3}, Lfu3;->p(Z)Lyz3;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    if-eqz v0, :cond_3

    .line 50
    .line 51
    iget-object v0, v0, Lyz3;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/VerifyError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    goto :goto_3

    .line 54
    :catch_0
    move-exception v0

    .line 55
    move-object v7, v0

    .line 56
    goto :goto_2

    .line 57
    :catch_1
    move-exception v0

    .line 58
    move-object p0, v0

    .line 59
    goto/16 :goto_c

    .line 60
    .line 61
    :cond_3
    :goto_1
    move-object v0, v2

    .line 62
    goto :goto_3

    .line 63
    :goto_2
    sget-object v0, Lnf1;->a:Lai6;

    .line 64
    .line 65
    instance-of v0, v7, Lcom/google/android/gms/auth/UserRecoverableAuthException;

    .line 66
    .line 67
    if-nez v0, :cond_e

    .line 68
    .line 69
    instance-of v0, v7, Lt04;

    .line 70
    .line 71
    if-eqz v0, :cond_4

    .line 72
    .line 73
    goto/16 :goto_b

    .line 74
    .line 75
    :cond_4
    sget-object v4, Lvr6;->INSTANCE:Lvr6;

    .line 76
    .line 77
    const/16 v9, 0x8

    .line 78
    .line 79
    const/4 v10, 0x0

    .line 80
    const-string v5, "GClient"

    .line 81
    .line 82
    const-string v6, "getMainFolderRest(createIfNeeded: true)"

    .line 83
    .line 84
    const/4 v8, 0x0

    .line 85
    invoke-static/range {v4 .. v10}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    instance-of v0, v7, Lvz3;

    .line 89
    .line 90
    if-eqz v0, :cond_3

    .line 91
    .line 92
    check-cast v7, Lvz3;

    .line 93
    .line 94
    invoke-static {v7}, Lrs9;->w(Lvz3;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v10

    .line 98
    const/4 v12, 0x4

    .line 99
    const/4 v13, 0x0

    .line 100
    const-string v9, "GClient"

    .line 101
    .line 102
    const/4 v11, 0x0

    .line 103
    move-object v8, v4

    .line 104
    invoke-static/range {v8 .. v13}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    goto :goto_1

    .line 108
    :goto_3
    if-eqz v0, :cond_d

    .line 109
    .line 110
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    if-nez v4, :cond_5

    .line 115
    .line 116
    goto/16 :goto_a

    .line 117
    .line 118
    :cond_5
    invoke-static {v0}, Lqb1;->s(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    :try_start_1
    iget-object v0, p0, Lfu3;->h:Ld04;

    .line 122
    .line 123
    invoke-virtual {v0}, Ld04;->h()Ltz3;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    iget-object v4, v0, Ltz3;->a:La04;

    .line 128
    .line 129
    new-instance v5, Lni1;

    .line 130
    .line 131
    if-eqz v4, :cond_6

    .line 132
    .line 133
    iget-object v6, v4, La04;->a:Ljava/lang/Long;

    .line 134
    .line 135
    goto :goto_4

    .line 136
    :cond_6
    move-object v6, v2

    .line 137
    :goto_4
    if-eqz v4, :cond_7

    .line 138
    .line 139
    iget-object v4, v4, La04;->b:Ljava/lang/Long;

    .line 140
    .line 141
    goto :goto_5

    .line 142
    :cond_7
    move-object v4, v2

    .line 143
    :goto_5
    invoke-direct {v5, v6, v4}, Lni1;-><init>(Ljava/lang/Long;Ljava/lang/Long;)V

    .line 144
    .line 145
    .line 146
    iget-object v0, v0, Ltz3;->b:Ljava/lang/String;

    .line 147
    .line 148
    if-eqz v0, :cond_8

    .line 149
    .line 150
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 151
    .line 152
    .line 153
    move-result v4

    .line 154
    if-eqz v4, :cond_8

    .line 155
    .line 156
    invoke-static {v0}, Lqb1;->q(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0, v0, v3}, Lfu3;->t(Ljava/lang/String;Z)V

    .line 160
    .line 161
    .line 162
    new-instance v4, Lsi1;

    .line 163
    .line 164
    invoke-direct {v4, v5, v0}, Lsi1;-><init>(Lni1;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    return-object v4

    .line 168
    :catch_2
    move-exception v0

    .line 169
    move-object v7, v0

    .line 170
    goto :goto_6

    .line 171
    :catch_3
    move-exception v0

    .line 172
    move-object p0, v0

    .line 173
    goto/16 :goto_9

    .line 174
    .line 175
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 176
    .line 177
    const-string v4, "Email address not received to uniquely identify the cloud drive!"

    .line 178
    .line 179
    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    throw v0
    :try_end_1
    .catch Ljava/lang/VerifyError; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 183
    :goto_6
    sget-object v8, Lvr6;->INSTANCE:Lvr6;

    .line 184
    .line 185
    const/16 v9, 0x8

    .line 186
    .line 187
    const/4 v10, 0x0

    .line 188
    const-string v5, "GClient"

    .line 189
    .line 190
    const-string v6, "startCheckAccessRest: Error while checking access"

    .line 191
    .line 192
    move-object v4, v8

    .line 193
    const/4 v8, 0x0

    .line 194
    invoke-static/range {v4 .. v10}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 195
    .line 196
    .line 197
    move-object v8, v4

    .line 198
    instance-of v0, v7, Lvz3;

    .line 199
    .line 200
    if-eqz v0, :cond_9

    .line 201
    .line 202
    move-object v1, v7

    .line 203
    check-cast v1, Lvz3;

    .line 204
    .line 205
    invoke-static {v1}, Lrs9;->w(Lvz3;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v10

    .line 209
    const/4 v12, 0x4

    .line 210
    const/4 v13, 0x0

    .line 211
    const-string v9, "GClient"

    .line 212
    .line 213
    const/4 v11, 0x0

    .line 214
    invoke-static/range {v8 .. v13}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 215
    .line 216
    .line 217
    :cond_9
    if-eqz v0, :cond_b

    .line 218
    .line 219
    move-object v0, v7

    .line 220
    check-cast v0, Lvz3;

    .line 221
    .line 222
    iget v0, v0, Lvz3;->b:I

    .line 223
    .line 224
    const/16 v1, 0x191

    .line 225
    .line 226
    if-ne v0, v1, :cond_b

    .line 227
    .line 228
    const/4 v12, 0x4

    .line 229
    const/4 v13, 0x0

    .line 230
    const-string v9, "GClient"

    .line 231
    .line 232
    const-string v10, "Retrying authentication"

    .line 233
    .line 234
    const/4 v11, 0x0

    .line 235
    invoke-static/range {v8 .. v13}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 236
    .line 237
    .line 238
    if-ge p1, v3, :cond_a

    .line 239
    .line 240
    invoke-virtual {p0}, Lfu3;->u()Z

    .line 241
    .line 242
    .line 243
    move-result v0

    .line 244
    if-eqz v0, :cond_a

    .line 245
    .line 246
    add-int/2addr p1, v3

    .line 247
    invoke-virtual {p0, p1}, Lfu3;->w(I)Lorg/swiftapps/swiftbackup/cloud/model/CloudResult;

    .line 248
    .line 249
    .line 250
    move-result-object p0

    .line 251
    goto :goto_7

    .line 252
    :cond_a
    new-instance p0, Lti1;

    .line 253
    .line 254
    invoke-direct {p0, v7}, Lti1;-><init>(Ljava/lang/Exception;)V

    .line 255
    .line 256
    .line 257
    :goto_7
    return-object p0

    .line 258
    :cond_b
    instance-of p0, v7, Lcom/google/android/gms/auth/UserRecoverableAuthException;

    .line 259
    .line 260
    if-eqz p0, :cond_c

    .line 261
    .line 262
    new-instance p0, Loi1;

    .line 263
    .line 264
    invoke-direct {p0, v7, v3}, Loi1;-><init>(Ljava/lang/Exception;Z)V

    .line 265
    .line 266
    .line 267
    goto :goto_8

    .line 268
    :cond_c
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v10

    .line 272
    const/4 v12, 0x4

    .line 273
    const/4 v13, 0x0

    .line 274
    const-string v9, "GClient"

    .line 275
    .line 276
    const/4 v11, 0x0

    .line 277
    invoke-static/range {v8 .. v13}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 278
    .line 279
    .line 280
    new-instance p0, Loi1;

    .line 281
    .line 282
    const/4 p1, 0x0

    .line 283
    invoke-direct {p0, v7, p1}, Loi1;-><init>(Ljava/lang/Exception;Z)V

    .line 284
    .line 285
    .line 286
    :goto_8
    return-object p0

    .line 287
    :goto_9
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object p0

    .line 291
    new-instance p1, Ljava/lang/StringBuilder;

    .line 292
    .line 293
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object p0

    .line 303
    invoke-static {p0, v3}, Lorg/swiftapps/swiftbackup/common/Const;->g(Ljava/lang/String;Z)V

    .line 304
    .line 305
    .line 306
    throw v2

    .line 307
    :cond_d
    :goto_a
    sget-object v4, Lvr6;->INSTANCE:Lvr6;

    .line 308
    .line 309
    const/4 v8, 0x4

    .line 310
    const/4 v9, 0x0

    .line 311
    const-string v5, "GClient"

    .line 312
    .line 313
    const-string v6, "Null folder id!"

    .line 314
    .line 315
    const/4 v7, 0x0

    .line 316
    invoke-static/range {v4 .. v9}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 317
    .line 318
    .line 319
    sget-object p0, Lpi1;->a:Lpi1;

    .line 320
    .line 321
    return-object p0

    .line 322
    :cond_e
    :goto_b
    new-instance p0, Loi1;

    .line 323
    .line 324
    invoke-direct {p0, v7, v3}, Loi1;-><init>(Ljava/lang/Exception;Z)V

    .line 325
    .line 326
    .line 327
    return-object p0

    .line 328
    :goto_c
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object p0

    .line 332
    new-instance p1, Ljava/lang/StringBuilder;

    .line 333
    .line 334
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object p0

    .line 344
    invoke-static {p0, v3}, Lorg/swiftapps/swiftbackup/common/Const;->g(Ljava/lang/String;Z)V

    .line 345
    .line 346
    .line 347
    throw v2
.end method
