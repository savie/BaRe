.class public Lpg5;
.super Lcn0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpg5$b;,
        Lpg5$a;
    }
.end annotation


# static fields
.field public static final synthetic n:I


# direct methods
.method public constructor <init>(Lpg5;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcn0;-><init>(Lcn0;)V

    return-void
.end method

.method private constructor <init>(Lv64$a;Lda6;Lokhttp3/OkHttpClient;Z)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3, p4}, Lcn0;-><init>(Lv64$a;Lda6;Lokhttp3/OkHttpClient;Z)V

    return-void
.end method

.method public synthetic constructor <init>(Lv64$a;Lum7;Lokhttp3/OkHttpClient;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lpg5;-><init>(Lv64$a;Lda6;Lokhttp3/OkHttpClient;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static W(Ljava/util/concurrent/CompletionException;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    instance-of v0, p0, Lrg5;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Ljava/lang/RuntimeException;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    move-object p0, v0

    .line 18
    :cond_0
    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    throw v1

    .line 22
    :cond_1
    check-cast p0, Lrg5;

    .line 23
    .line 24
    throw p0
.end method


# virtual methods
.method public final J(Lgw0;)Ljava/util/concurrent/CompletableFuture;
    .locals 3

    .line 1
    new-instance v0, Lv64$h$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lv64$h$a;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcn0;->b:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lv64$h$a;->c(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v1, Lv64$d;->b:Lv64$d;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lv64$h$a;->b(Lv64$d;)V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    iput-object v1, v0, Lv64$h$a;->d:Lv64$c;

    .line 18
    .line 19
    iput-object v1, v0, Lv64$h$a;->e:Lv64$e;

    .line 20
    .line 21
    iput-object p1, v0, Lv64$h$a;->c:Lll0;

    .line 22
    .line 23
    invoke-virtual {v0}, Lv64$h$a;->a()Lv64$h;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p0, p1}, Lcn0;->j(Lv64$h;)Ljava/util/concurrent/CompletableFuture;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    new-instance v1, Lwm0;

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-direct {v1, v2}, Lwm0;-><init>(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->exceptionally(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    new-instance v1, Lxm0;

    .line 42
    .line 43
    invoke-direct {v1, p0, p1}, Lxm0;-><init>(Lpg5;Lv64$h;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->thenCompose(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    new-instance p1, Lw81;

    .line 51
    .line 52
    const/4 v0, 0x1

    .line 53
    invoke-direct {p1, v0}, Lw81;-><init>(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->exceptionally(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    new-instance p1, Lqm0;

    .line 61
    .line 62
    invoke-direct {p1, v0}, Lqm0;-><init>(I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->thenApply(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    return-object p0
.end method

.method public final O(Llw3;)Ljava/util/concurrent/CompletableFuture;
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcn0;->b(Lll0;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcn0;->c:Lv64$a;

    .line 5
    .line 6
    iget-object v0, v0, Lv64$a;->a:Lokhttp3/HttpUrl;

    .line 7
    .line 8
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->f()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p1, v0}, Lrr5;->k(Z)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Ldr5;->o()Lv64$c;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p1}, Lvr5;->i()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    new-instance v1, Lv64$e;

    .line 26
    .line 27
    const-string v2, "versionId"

    .line 28
    .line 29
    invoke-virtual {p1}, Lvr5;->i()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    filled-new-array {v2, v3}, [Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-direct {v1, v2}, Lv64$e;-><init>([Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 v1, 0x0

    .line 42
    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Lcn0;->n(Lfw0;Lv64$c;Lv64$e;)Ljava/util/concurrent/CompletableFuture;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    new-instance v0, Lzm0;

    .line 47
    .line 48
    const/4 v1, 0x1

    .line 49
    invoke-direct {v0, p1, v1}, Lzm0;-><init>(Lyq5;I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->thenApply(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    return-object p0
.end method

.method public final S(Lbc6;)Ljava/util/concurrent/CompletableFuture;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcn0;->b(Lll0;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcn0;->c:Lv64$a;

    .line 5
    .line 6
    iget-object v1, v0, Lv64$a;->a:Lokhttp3/HttpUrl;

    .line 7
    .line 8
    invoke-virtual {v1}, Lokhttp3/HttpUrl;->f()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {p1, v1}, Lyr5;->t(Z)V

    .line 13
    .line 14
    .line 15
    :try_start_0
    invoke-virtual {p1}, Lbc6;->F()Ljava/io/InputStream;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {p1}, Lbc6;->F()Ljava/io/InputStream;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p1}, Lbc6;->E()[B

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    :goto_0
    invoke-virtual {p1}, Lbc6;->j()Lokhttp3/MediaType;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    iget-object v0, v0, Lv64$a;->a:Lokhttp3/HttpUrl;

    .line 35
    .line 36
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->f()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    xor-int/lit8 v0, v0, 0x1

    .line 41
    .line 42
    invoke-virtual {p0, p1, v1, v2, v0}, Lpg5;->U(Lbc6;Ljava/lang/Object;Lokhttp3/MediaType;Z)Ljava/util/concurrent/CompletableFuture;

    .line 43
    .line 44
    .line 45
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    return-object p0

    .line 47
    :catch_0
    move-exception p0

    .line 48
    new-instance p1, Lrg5;

    .line 49
    .line 50
    invoke-direct {p1, p0}, Lrg5;-><init>(Ljava/lang/Throwable;)V

    .line 51
    .line 52
    .line 53
    invoke-static {p1}, Lki8;->c(Lrg5;)Ljava/util/concurrent/CompletableFuture;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    return-object p0
.end method

.method public final U(Lbc6;Ljava/lang/Object;Lokhttp3/MediaType;Z)Ljava/util/concurrent/CompletableFuture;
    .locals 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v3, p1

    .line 4
    .line 5
    move-object/from16 v0, p2

    .line 6
    .line 7
    move-object/from16 v6, p3

    .line 8
    .line 9
    move/from16 v2, p4

    .line 10
    .line 11
    instance-of v4, v0, Ljava/io/RandomAccessFile;

    .line 12
    .line 13
    if-eqz v4, :cond_0

    .line 14
    .line 15
    move-object v4, v0

    .line 16
    check-cast v4, Ljava/io/RandomAccessFile;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v4, 0x0

    .line 20
    :goto_0
    instance-of v7, v0, Ljava/io/InputStream;

    .line 21
    .line 22
    if-eqz v7, :cond_1

    .line 23
    .line 24
    move-object v7, v0

    .line 25
    check-cast v7, Ljava/io/InputStream;

    .line 26
    .line 27
    move-object v9, v7

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    const/4 v9, 0x0

    .line 30
    :goto_1
    instance-of v7, v0, [B

    .line 31
    .line 32
    if-eqz v7, :cond_2

    .line 33
    .line 34
    check-cast v0, [B

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_2
    const/4 v0, 0x0

    .line 38
    :goto_2
    invoke-virtual {v3}, Ldc6;->u()Ly51$a;

    .line 39
    .line 40
    .line 41
    move-result-object v7

    .line 42
    if-eqz v7, :cond_3

    .line 43
    .line 44
    invoke-virtual {v3}, Ldc6;->u()Ly51$a;

    .line 45
    .line 46
    .line 47
    move-result-object v7

    .line 48
    :goto_3
    move-object v15, v7

    .line 49
    goto :goto_4

    .line 50
    :cond_3
    sget-object v7, Ly51$a;->b:Ly51$a;

    .line 51
    .line 52
    goto :goto_3

    .line 53
    :goto_4
    sget-object v7, Ly51$a;->e:Ly51$a;

    .line 54
    .line 55
    const/4 v8, 0x0

    .line 56
    const/4 v10, 0x1

    .line 57
    if-ne v15, v7, :cond_4

    .line 58
    .line 59
    move v11, v10

    .line 60
    goto :goto_5

    .line 61
    :cond_4
    move v11, v8

    .line 62
    :goto_5
    if-eqz v2, :cond_5

    .line 63
    .line 64
    if-nez v11, :cond_5

    .line 65
    .line 66
    const/4 v12, 0x2

    .line 67
    new-array v12, v12, [Ly51$a;

    .line 68
    .line 69
    aput-object v15, v12, v8

    .line 70
    .line 71
    aput-object v7, v12, v10

    .line 72
    .line 73
    :goto_6
    move-object v13, v12

    .line 74
    goto :goto_7

    .line 75
    :cond_5
    new-array v12, v10, [Ly51$a;

    .line 76
    .line 77
    aput-object v15, v12, v8

    .line 78
    .line 79
    goto :goto_6

    .line 80
    :goto_7
    invoke-virtual {v3}, Ldc6;->x()I

    .line 81
    .line 82
    .line 83
    move-result v12

    .line 84
    if-eqz v9, :cond_7

    .line 85
    .line 86
    move v14, v8

    .line 87
    :try_start_0
    new-instance v8, Lhx5;

    .line 88
    .line 89
    move v12, v10

    .line 90
    invoke-virtual {v3}, Ldc6;->v()Ljava/lang/Long;

    .line 91
    .line 92
    .line 93
    move-result-object v10

    .line 94
    move/from16 v16, v11

    .line 95
    .line 96
    move/from16 v17, v12

    .line 97
    .line 98
    invoke-virtual {v3}, Ldc6;->y()J

    .line 99
    .line 100
    .line 101
    move-result-wide v11

    .line 102
    move/from16 v18, v14

    .line 103
    .line 104
    move-object v14, v13

    .line 105
    invoke-virtual {v3}, Ldc6;->x()I

    .line 106
    .line 107
    .line 108
    move-result v13

    .line 109
    move/from16 v20, v16

    .line 110
    .line 111
    move/from16 v5, v17

    .line 112
    .line 113
    invoke-direct/range {v8 .. v14}, Lhx5;-><init>(Ljava/io/InputStream;Ljava/lang/Long;JI[Ly51$a;)V

    .line 114
    .line 115
    .line 116
    new-instance v10, Lox0;

    .line 117
    .line 118
    iget v11, v8, Lhx5;->f:I

    .line 119
    .line 120
    if-ne v11, v5, :cond_6

    .line 121
    .line 122
    invoke-virtual {v3}, Ldc6;->v()Ljava/lang/Long;

    .line 123
    .line 124
    .line 125
    move-result-object v11

    .line 126
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    .line 127
    .line 128
    .line 129
    move-result-wide v11

    .line 130
    goto :goto_8

    .line 131
    :cond_6
    invoke-virtual {v3}, Ldc6;->y()J

    .line 132
    .line 133
    .line 134
    move-result-wide v11

    .line 135
    :goto_8
    invoke-direct {v10, v11, v12}, Lox0;-><init>(J)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v8, v10}, Lhx5;->a(Lox0;)V

    .line 139
    .line 140
    .line 141
    iget v12, v8, Lhx5;->f:I
    :try_end_0
    .catch Lrg5; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    .line 143
    goto :goto_9

    .line 144
    :catch_0
    move-exception v0

    .line 145
    invoke-static {v0}, Lki8;->c(Lrg5;)Ljava/util/concurrent/CompletableFuture;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    return-object v0

    .line 150
    :cond_7
    move v5, v10

    .line 151
    move/from16 v20, v11

    .line 152
    .line 153
    move-object v14, v13

    .line 154
    const/4 v8, 0x0

    .line 155
    const/4 v10, 0x0

    .line 156
    :goto_9
    if-ne v12, v5, :cond_b

    .line 157
    .line 158
    if-eqz v9, :cond_8

    .line 159
    .line 160
    new-instance v0, Lxb6;

    .line 161
    .line 162
    iget-object v4, v8, Lhx5;->g:Ljava/util/HashMap;

    .line 163
    .line 164
    move/from16 v9, v20

    .line 165
    .line 166
    invoke-static {v4, v2, v9}, Ly51;->c(Ljava/util/Map;ZZ)Lv64$c;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    invoke-direct {v0, v3, v10, v6, v2}, Lxb6;-><init>(Ldc6;Lox0;Lokhttp3/MediaType;Lv64$c;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1, v0}, Lcn0;->D(Lxb6;)Ljava/util/concurrent/CompletableFuture;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    return-object v0

    .line 178
    :cond_8
    move/from16 v9, v20

    .line 179
    .line 180
    invoke-virtual {v3}, Ldc6;->v()Ljava/lang/Long;

    .line 181
    .line 182
    .line 183
    move-result-object v5

    .line 184
    if-nez v5, :cond_9

    .line 185
    .line 186
    new-instance v0, Lrg5;

    .line 187
    .line 188
    const-string v1, "object size is null; this should not happen"

    .line 189
    .line 190
    invoke-direct {v0, v1}, Lrg5;-><init>(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    invoke-static {v0}, Lki8;->c(Lrg5;)Ljava/util/concurrent/CompletableFuture;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    return-object v0

    .line 198
    :cond_9
    invoke-virtual {v3}, Ldc6;->v()Ljava/lang/Long;

    .line 199
    .line 200
    .line 201
    move-result-object v5

    .line 202
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 203
    .line 204
    .line 205
    move-result-wide v7

    .line 206
    :try_start_1
    invoke-static {v14}, Ly51;->d([Ly51$a;)Ljava/util/HashMap;

    .line 207
    .line 208
    .line 209
    move-result-object v10

    .line 210
    if-eqz v4, :cond_a

    .line 211
    .line 212
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 213
    .line 214
    .line 215
    move-result-wide v11

    .line 216
    const/4 v0, 0x0

    .line 217
    invoke-static {v10, v0, v4, v5}, Ly51;->e(Ljava/util/HashMap;Lox0;Ljava/io/RandomAccessFile;Ljava/lang/Long;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v4, v11, v12}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 221
    .line 222
    .line 223
    new-instance v0, Lxb6;

    .line 224
    .line 225
    move-wide v5, v7

    .line 226
    invoke-static {v10, v2, v9}, Ly51;->c(Ljava/util/Map;ZZ)Lv64$c;

    .line 227
    .line 228
    .line 229
    move-result-object v8

    .line 230
    move-object/from16 v7, p3

    .line 231
    .line 232
    move-object v2, v0

    .line 233
    invoke-direct/range {v2 .. v8}, Lxb6;-><init>(Ldc6;Ljava/io/RandomAccessFile;JLokhttp3/MediaType;Lv64$c;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v1, v2}, Lcn0;->D(Lxb6;)Ljava/util/concurrent/CompletableFuture;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    return-object v0

    .line 241
    :cond_a
    move-wide v5, v7

    .line 242
    long-to-int v5, v5

    .line 243
    invoke-static {v10, v0, v5}, Ly51;->f(Ljava/util/Map;[BI)V

    .line 244
    .line 245
    .line 246
    new-instance v3, Lxb6;

    .line 247
    .line 248
    invoke-static {v10, v2, v9}, Ly51;->c(Ljava/util/Map;ZZ)Lv64$c;

    .line 249
    .line 250
    .line 251
    move-result-object v7

    .line 252
    move-object/from16 v6, p3

    .line 253
    .line 254
    move-object v4, v0

    .line 255
    move-object v2, v3

    .line 256
    move-object/from16 v3, p1

    .line 257
    .line 258
    invoke-direct/range {v2 .. v7}, Lxb6;-><init>(Ldc6;[BILokhttp3/MediaType;Lv64$c;)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v1, v2}, Lcn0;->D(Lxb6;)Ljava/util/concurrent/CompletableFuture;

    .line 262
    .line 263
    .line 264
    move-result-object v0
    :try_end_1
    .catch Lrg5; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 265
    return-object v0

    .line 266
    :catch_1
    move-exception v0

    .line 267
    new-instance v1, Lrg5;

    .line 268
    .line 269
    invoke-direct {v1, v0}, Lrg5;-><init>(Ljava/lang/Throwable;)V

    .line 270
    .line 271
    .line 272
    invoke-static {v1}, Lki8;->c(Lrg5;)Ljava/util/concurrent/CompletableFuture;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    return-object v0

    .line 277
    :catch_2
    move-exception v0

    .line 278
    invoke-static {v0}, Lki8;->c(Lrg5;)Ljava/util/concurrent/CompletableFuture;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    return-object v0

    .line 283
    :cond_b
    move-object v0, v6

    .line 284
    move/from16 v9, v20

    .line 285
    .line 286
    invoke-virtual {v3}, Ldc6;->u()Ly51$a;

    .line 287
    .line 288
    .line 289
    move-result-object v6

    .line 290
    if-eqz v6, :cond_d

    .line 291
    .line 292
    invoke-virtual {v3}, Ldc6;->u()Ly51$a;

    .line 293
    .line 294
    .line 295
    move-result-object v6

    .line 296
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 297
    .line 298
    .line 299
    sget-object v11, Ly51$a;->a:Ly51$a;

    .line 300
    .line 301
    if-eq v6, v11, :cond_d

    .line 302
    .line 303
    sget-object v11, Ly51$a;->b:Ly51$a;

    .line 304
    .line 305
    if-eq v6, v11, :cond_d

    .line 306
    .line 307
    sget-object v11, Ly51$a;->d:Ly51$a;

    .line 308
    .line 309
    if-eq v6, v11, :cond_d

    .line 310
    .line 311
    if-ne v6, v7, :cond_c

    .line 312
    .line 313
    goto :goto_a

    .line 314
    :cond_c
    invoke-virtual {v3}, Ldc6;->u()Ly51$a;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    const-string v1, " for multipart upload"

    .line 319
    .line 320
    const-string v2, "unsupported checksum "

    .line 321
    .line 322
    invoke-static {v0, v1, v2}, Lz5;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    const/16 v19, 0x0

    .line 326
    .line 327
    return-object v19

    .line 328
    :cond_d
    :goto_a
    if-eqz v4, :cond_e

    .line 329
    .line 330
    :try_start_2
    new-instance v6, Lhx5;

    .line 331
    .line 332
    invoke-virtual {v3}, Ldc6;->v()Ljava/lang/Long;

    .line 333
    .line 334
    .line 335
    move-result-object v7

    .line 336
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 337
    .line 338
    .line 339
    move-result-wide v7

    .line 340
    invoke-virtual {v3}, Ldc6;->y()J

    .line 341
    .line 342
    .line 343
    move-result-wide v10

    .line 344
    invoke-virtual {v3}, Ldc6;->x()I

    .line 345
    .line 346
    .line 347
    move-result v12

    .line 348
    move/from16 v16, v9

    .line 349
    .line 350
    move-object v13, v14

    .line 351
    move-wide v8, v7

    .line 352
    move-object v7, v4

    .line 353
    invoke-direct/range {v6 .. v13}, Lhx5;-><init>(Ljava/io/RandomAccessFile;JJI[Ly51$a;)V

    .line 354
    .line 355
    .line 356
    new-instance v10, Lox0;

    .line 357
    .line 358
    invoke-virtual {v3}, Ldc6;->y()J

    .line 359
    .line 360
    .line 361
    move-result-wide v7

    .line 362
    invoke-direct {v10, v7, v8}, Lox0;-><init>(J)V

    .line 363
    .line 364
    .line 365
    invoke-virtual {v6, v10}, Lhx5;->a(Lox0;)V
    :try_end_2
    .catch Lrg5; {:try_start_2 .. :try_end_2} :catch_3

    .line 366
    .line 367
    .line 368
    move-object v8, v6

    .line 369
    goto :goto_b

    .line 370
    :catch_3
    move-exception v0

    .line 371
    invoke-static {v0}, Lki8;->c(Lrg5;)Ljava/util/concurrent/CompletableFuture;

    .line 372
    .line 373
    .line 374
    move-result-object v0

    .line 375
    return-object v0

    .line 376
    :cond_e
    move/from16 v16, v9

    .line 377
    .line 378
    :goto_b
    invoke-virtual {v3}, Ldc6;->w()I

    .line 379
    .line 380
    .line 381
    move-result v4

    .line 382
    if-gtz v4, :cond_f

    .line 383
    .line 384
    move v4, v5

    .line 385
    :cond_f
    iget v5, v8, Lhx5;->f:I

    .line 386
    .line 387
    if-lez v5, :cond_10

    .line 388
    .line 389
    if-le v4, v5, :cond_10

    .line 390
    .line 391
    move v4, v5

    .line 392
    :cond_10
    const/4 v5, 0x0

    .line 393
    filled-new-array {v5}, [Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v2

    .line 397
    new-instance v6, Ls12;

    .line 398
    .line 399
    invoke-direct {v6, v3, v0, v15}, Ls12;-><init>(Ldc6;Lokhttp3/MediaType;Ly51$a;)V

    .line 400
    .line 401
    .line 402
    invoke-virtual {v1, v6}, Lcn0;->b(Lll0;)V

    .line 403
    .line 404
    .line 405
    invoke-virtual {v6}, Ls12;->k()Lv64$c;

    .line 406
    .line 407
    .line 408
    move-result-object v0

    .line 409
    new-instance v7, Lv64$e;

    .line 410
    .line 411
    const-string v9, "uploads"

    .line 412
    .line 413
    const-string v11, ""

    .line 414
    .line 415
    filled-new-array {v9, v11}, [Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v9

    .line 419
    invoke-direct {v7, v9}, Lv64$e;-><init>([Ljava/lang/String;)V

    .line 420
    .line 421
    .line 422
    invoke-virtual {v1, v6, v0, v7, v5}, Lcn0;->q(Lfw0;Lv64$c;Lv64$e;Lv64$b;)Ljava/util/concurrent/CompletableFuture;

    .line 423
    .line 424
    .line 425
    move-result-object v0

    .line 426
    new-instance v5, Lzm0;

    .line 427
    .line 428
    const/4 v14, 0x0

    .line 429
    invoke-direct {v5, v6, v14}, Lzm0;-><init>(Lyq5;I)V

    .line 430
    .line 431
    .line 432
    invoke-virtual {v0, v5}, Ljava/util/concurrent/CompletableFuture;->thenApply(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    .line 433
    .line 434
    .line 435
    move-result-object v9

    .line 436
    new-instance v0, Lbg5;

    .line 437
    .line 438
    move v5, v4

    .line 439
    move-object v4, v3

    .line 440
    move v3, v5

    .line 441
    move/from16 v6, p4

    .line 442
    .line 443
    move-object v5, v8

    .line 444
    move-object v8, v10

    .line 445
    move/from16 v7, v16

    .line 446
    .line 447
    invoke-direct/range {v0 .. v8}, Lbg5;-><init>(Lpg5;[Ljava/lang/String;ILdc6;Lhx5;ZZLox0;)V

    .line 448
    .line 449
    .line 450
    move-object v3, v4

    .line 451
    invoke-virtual {v9, v0}, Ljava/util/concurrent/CompletableFuture;->thenCompose(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    .line 452
    .line 453
    .line 454
    move-result-object v0

    .line 455
    new-instance v4, Lcg5;

    .line 456
    .line 457
    invoke-direct {v4, v1, v3, v2}, Lcg5;-><init>(Lpg5;Ldc6;[Ljava/lang/String;)V

    .line 458
    .line 459
    .line 460
    invoke-virtual {v0, v4}, Ljava/util/concurrent/CompletableFuture;->thenCompose(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    .line 461
    .line 462
    .line 463
    move-result-object v0

    .line 464
    new-instance v4, Ldg5;

    .line 465
    .line 466
    invoke-direct {v4, v1, v3, v2}, Ldg5;-><init>(Lpg5;Ldc6;[Ljava/lang/String;)V

    .line 467
    .line 468
    .line 469
    invoke-virtual {v0, v4}, Ljava/util/concurrent/CompletableFuture;->exceptionally(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    .line 470
    .line 471
    .line 472
    move-result-object v0

    .line 473
    return-object v0
.end method
