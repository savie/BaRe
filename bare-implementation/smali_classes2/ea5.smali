.class public final Lea5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lokhttp3/OkHttpClient;

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:I

.field public final e:J

.field public final f:Lmt3;

.field public final g:Lmt3;

.field public final h:Ljava/util/concurrent/atomic/AtomicLong;

.field public final i:Lokhttp3/MediaType;


# direct methods
.method public constructor <init>(Lokhttp3/OkHttpClient;)V
    .locals 10

    .line 1
    new-instance v0, Ldq;

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ldq;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v2, Lcj2;

    .line 9
    .line 10
    const/4 v8, 0x0

    .line 11
    const/4 v9, 0x3

    .line 12
    const/4 v3, 0x1

    .line 13
    sget-object v4, Lka5;->a:Lka5;

    .line 14
    .line 15
    const-class v5, Lka5;

    .line 16
    .line 17
    const-string v6, "solve"

    .line 18
    .line 19
    const-string v7, "solve(Lorg/swiftapps/swiftbackup/cloud/protocols/mega/lite/MegaLiteHashcash$Challenge;)Ljava/lang/String;"

    .line 20
    .line 21
    invoke-direct/range {v2 .. v9}, Lcj2;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lea5;->a:Lokhttp3/OkHttpClient;

    .line 31
    .line 32
    const-string p1, "https://g.api.mega.co.nz"

    .line 33
    .line 34
    iput-object p1, p0, Lea5;->b:Ljava/lang/String;

    .line 35
    .line 36
    const/4 p1, 0x3

    .line 37
    iput p1, p0, Lea5;->c:I

    .line 38
    .line 39
    const/16 p1, 0x10

    .line 40
    .line 41
    iput p1, p0, Lea5;->d:I

    .line 42
    .line 43
    const-wide/16 v3, 0x1f4

    .line 44
    .line 45
    iput-wide v3, p0, Lea5;->e:J

    .line 46
    .line 47
    iput-object v0, p0, Lea5;->f:Lmt3;

    .line 48
    .line 49
    iput-object v2, p0, Lea5;->g:Lmt3;

    .line 50
    .line 51
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    .line 52
    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 54
    .line 55
    .line 56
    move-result-wide v0

    .line 57
    invoke-direct {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 58
    .line 59
    .line 60
    iput-object p1, p0, Lea5;->h:Ljava/util/concurrent/atomic/AtomicLong;

    .line 61
    .line 62
    sget-object p1, Lokhttp3/MediaType;->d:Lai6;

    .line 63
    .line 64
    const-string p1, "application/json; charset=utf-8"

    .line 65
    .line 66
    invoke-static {p1}, Lokhttp3/MediaType$Companion;->a(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    iput-object p1, p0, Lea5;->i:Lokhttp3/MediaType;

    .line 71
    .line 72
    return-void
.end method


# virtual methods
.method public final a(Lff;Lja5;)Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, "MEGA API HTTP "

    .line 2
    .line 3
    new-instance v1, Lokhttp3/Request$Builder;

    .line 4
    .line 5
    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    .line 6
    .line 7
    .line 8
    iget-object v2, p1, Lff;->a:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Lokhttp3/Request$Builder;->d(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    sget-object v2, Lokhttp3/RequestBody;->a:Lokhttp3/RequestBody$Companion$toRequestBody$1;

    .line 14
    .line 15
    iget-object p1, p1, Lff;->b:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v2, p0, Lea5;->i:Lokhttp3/MediaType;

    .line 18
    .line 19
    invoke-static {p1, v2}, Lokhttp3/RequestBody$Companion;->a(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody$Companion$toRequestBody$3;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string v2, "POST"

    .line 24
    .line 25
    invoke-virtual {v1, v2, p1}, Lokhttp3/Request$Builder;->c(Ljava/lang/String;Lokhttp3/RequestBody;)V

    .line 26
    .line 27
    .line 28
    const-string p1, "X-Hashcash"

    .line 29
    .line 30
    if-eqz p2, :cond_0

    .line 31
    .line 32
    iget-object v2, p2, Lja5;->a:Ljava/lang/String;

    .line 33
    .line 34
    iget-object p2, p2, Lja5;->b:Ljava/lang/String;

    .line 35
    .line 36
    const-string v3, "1:"

    .line 37
    .line 38
    const-string v4, ":"

    .line 39
    .line 40
    invoke-static {v3, v2, v4, p2}, Ldj7;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    iget-object v2, v1, Lokhttp3/Request$Builder;->c:Lokhttp3/Headers$Builder;

    .line 45
    .line 46
    invoke-virtual {v2, p1, p2}, Lokhttp3/Headers$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :cond_0
    new-instance p2, Lokhttp3/Request;

    .line 50
    .line 51
    invoke-direct {p2, v1}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 52
    .line 53
    .line 54
    iget-object p0, p0, Lea5;->a:Lokhttp3/OkHttpClient;

    .line 55
    .line 56
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    new-instance v1, Lokhttp3/internal/connection/RealCall;

    .line 60
    .line 61
    invoke-direct {v1, p0, p2}, Lokhttp3/internal/connection/RealCall;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Lokhttp3/internal/connection/RealCall;->g()Lokhttp3/Response;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    :try_start_0
    iget-object p2, p0, Lokhttp3/Response;->k:Lokhttp3/ResponseBody;

    .line 69
    .line 70
    iget v1, p0, Lokhttp3/Response;->d:I

    .line 71
    .line 72
    invoke-virtual {p2}, Lokhttp3/ResponseBody;->n()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    const/16 v2, 0x192

    .line 77
    .line 78
    const/4 v3, 0x0

    .line 79
    if-ne v1, v2, :cond_3

    .line 80
    .line 81
    invoke-static {p1, p0}, Lokhttp3/Response;->b(Ljava/lang/String;Lokhttp3/Response;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    if-eqz p1, :cond_1

    .line 86
    .line 87
    invoke-static {p1}, Lka5;->a(Ljava/lang/String;)Lia5;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    goto :goto_0

    .line 92
    :catchall_0
    move-exception p1

    .line 93
    goto :goto_2

    .line 94
    :cond_1
    move-object p1, v3

    .line 95
    :goto_0
    if-eqz p1, :cond_3

    .line 96
    .line 97
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    if-eqz v2, :cond_2

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_2
    new-instance p2, Lla5;

    .line 105
    .line 106
    invoke-direct {p2, p1}, Lla5;-><init>(Lia5;)V

    .line 107
    .line 108
    .line 109
    throw p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    :cond_3
    :goto_1
    const/16 p1, 0xc8

    .line 111
    .line 112
    if-ne v1, p1, :cond_4

    .line 113
    .line 114
    invoke-virtual {p0}, Lokhttp3/Response;->close()V

    .line 115
    .line 116
    .line 117
    return-object p2

    .line 118
    :cond_4
    :try_start_1
    new-instance p1, Llb5;

    .line 119
    .line 120
    iget-object v2, p0, Lokhttp3/Response;->c:Ljava/lang/String;

    .line 121
    .line 122
    const/16 v4, 0x100

    .line 123
    .line 124
    invoke-static {v4, p2}, Lnq7;->G0(ILjava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p2

    .line 128
    new-instance v4, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string v0, " "

    .line 137
    .line 138
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    const-string v0, ": "

    .line 145
    .line 146
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p2

    .line 156
    const/4 v0, 0x4

    .line 157
    invoke-direct {p1, p2, v3, v0}, Llb5;-><init>(Ljava/lang/String;Ljava/lang/RuntimeException;I)V

    .line 158
    .line 159
    .line 160
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    :goto_2
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 162
    :catchall_1
    move-exception p2

    .line 163
    invoke-static {p0, p1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 164
    .line 165
    .line 166
    throw p2
.end method

.method public final b(Lfl4;Ljava/lang/String;Lda5;)Lqj4;
    .locals 8

    .line 1
    iget v0, p0, Lea5;->d:I

    .line 2
    .line 3
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v1, Lxi4;

    .line 7
    .line 8
    invoke-direct {v1}, Lxi4;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p1}, Lxi4;->p(Lqj4;)V

    .line 12
    .line 13
    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    iget-object v2, p0, Lea5;->b:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v2, "/cs?id="

    .line 25
    .line 26
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-object v2, p0, Lea5;->h:Ljava/util/concurrent/atomic/AtomicLong;

    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 32
    .line 33
    .line 34
    move-result-wide v2

    .line 35
    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v2, "&v=3"

    .line 39
    .line 40
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    if-eqz p2, :cond_1

    .line 44
    .line 45
    invoke-static {p2}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_0

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    const-string v2, "&sid="

    .line 53
    .line 54
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    new-instance p2, Lff;

    .line 65
    .line 66
    invoke-virtual {v1}, Lqj4;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-direct {p2, p1, v1}, Lff;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    const/4 p1, 0x0

    .line 74
    const/4 v1, 0x0

    .line 75
    move-object v2, p1

    .line 76
    move v3, v1

    .line 77
    move v4, v3

    .line 78
    :goto_1
    :try_start_0
    invoke-virtual {p0, p2, v2}, Lea5;->a(Lff;Lja5;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2
    :try_end_0
    .catch Lla5; {:try_start_0 .. :try_end_0} :catch_2
    .catch Llb5; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    invoke-static {v2}, Lyc9;->K(Ljava/lang/String;)Lqj4;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    instance-of v6, v5, Lkl4;

    .line 87
    .line 88
    if-eqz v6, :cond_2

    .line 89
    .line 90
    invoke-virtual {v5}, Lqj4;->k()Lkl4;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    iget-object v6, v6, Lkl4;->a:Ljava/io/Serializable;

    .line 95
    .line 96
    instance-of v6, v6, Ljava/lang/Number;

    .line 97
    .line 98
    if-eqz v6, :cond_2

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_2
    instance-of v6, v5, Lxi4;

    .line 102
    .line 103
    if-eqz v6, :cond_3

    .line 104
    .line 105
    move-object v7, v5

    .line 106
    check-cast v7, Lxi4;

    .line 107
    .line 108
    iget-object v7, v7, Lxi4;->a:Ljava/util/ArrayList;

    .line 109
    .line 110
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 111
    .line 112
    .line 113
    move-result v7

    .line 114
    if-nez v7, :cond_3

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_3
    instance-of v7, v5, Lfl4;

    .line 118
    .line 119
    if-eqz v7, :cond_4

    .line 120
    .line 121
    invoke-static {v5}, Lw13;->n(Lqj4;)Ljava/lang/Integer;

    .line 122
    .line 123
    .line 124
    move-result-object v7

    .line 125
    if-eqz v7, :cond_4

    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_4
    if-eqz v6, :cond_8

    .line 129
    .line 130
    check-cast v5, Lxi4;

    .line 131
    .line 132
    iget-object v5, v5, Lxi4;->a:Ljava/util/ArrayList;

    .line 133
    .line 134
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 135
    .line 136
    .line 137
    move-result v6

    .line 138
    const/4 v7, 0x1

    .line 139
    if-ne v6, v7, :cond_8

    .line 140
    .line 141
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    move-object v5, v2

    .line 146
    check-cast v5, Lqj4;

    .line 147
    .line 148
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    .line 150
    .line 151
    :goto_2
    invoke-static {v5}, Lw13;->n(Lqj4;)Ljava/lang/Integer;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    if-nez v2, :cond_5

    .line 156
    .line 157
    return-object v5

    .line 158
    :cond_5
    new-instance v5, Lca5;

    .line 159
    .line 160
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 161
    .line 162
    .line 163
    move-result v2

    .line 164
    invoke-direct {v5, v2}, Lca5;-><init>(I)V

    .line 165
    .line 166
    .line 167
    const/4 v2, -0x3

    .line 168
    iget v6, v5, Lca5;->a:I

    .line 169
    .line 170
    if-eq v6, v2, :cond_6

    .line 171
    .line 172
    const/4 v2, -0x4

    .line 173
    if-eq v6, v2, :cond_6

    .line 174
    .line 175
    const/16 v2, -0x12

    .line 176
    .line 177
    if-eq v6, v2, :cond_6

    .line 178
    .line 179
    const/16 v2, -0x13

    .line 180
    .line 181
    if-ne v6, v2, :cond_7

    .line 182
    .line 183
    :cond_6
    iget v2, p0, Lea5;->c:I

    .line 184
    .line 185
    if-ge v4, v2, :cond_7

    .line 186
    .line 187
    invoke-virtual {p0, v4}, Lea5;->c(I)V

    .line 188
    .line 189
    .line 190
    add-int/lit8 v4, v4, 0x1

    .line 191
    .line 192
    move-object v2, p1

    .line 193
    goto :goto_1

    .line 194
    :cond_7
    throw v5

    .line 195
    :cond_8
    const/16 p0, 0x100

    .line 196
    .line 197
    invoke-static {p0, v2}, Lnq7;->G0(ILjava/lang/String;)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object p0

    .line 201
    const-string p2, "Unexpected MEGA API response: "

    .line 202
    .line 203
    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p0

    .line 207
    invoke-static {p0}, Lf6;->g(Ljava/lang/Object;)V

    .line 208
    .line 209
    .line 210
    return-object p1

    .line 211
    :catch_0
    move-exception v5

    .line 212
    invoke-virtual {p3}, Lda5;->getRetriesNetworkFailures()Z

    .line 213
    .line 214
    .line 215
    move-result v6

    .line 216
    if-eqz v6, :cond_9

    .line 217
    .line 218
    if-ge v3, v0, :cond_9

    .line 219
    .line 220
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 221
    .line 222
    .line 223
    move-result-object v6

    .line 224
    invoke-virtual {v6}, Ljava/lang/Thread;->isInterrupted()Z

    .line 225
    .line 226
    .line 227
    move-result v6

    .line 228
    if-nez v6, :cond_9

    .line 229
    .line 230
    invoke-virtual {p0, v3}, Lea5;->c(I)V

    .line 231
    .line 232
    .line 233
    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 234
    .line 235
    goto/16 :goto_1

    .line 236
    .line 237
    :cond_9
    throw v5

    .line 238
    :catch_1
    move-exception v5

    .line 239
    iget-boolean v6, v5, Llb5;->a:Z

    .line 240
    .line 241
    if-eqz v6, :cond_a

    .line 242
    .line 243
    invoke-virtual {p3}, Lda5;->getRetriesNetworkFailures()Z

    .line 244
    .line 245
    .line 246
    move-result v6

    .line 247
    if-eqz v6, :cond_a

    .line 248
    .line 249
    if-ge v3, v0, :cond_a

    .line 250
    .line 251
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 252
    .line 253
    .line 254
    move-result-object v6

    .line 255
    invoke-virtual {v6}, Ljava/lang/Thread;->isInterrupted()Z

    .line 256
    .line 257
    .line 258
    move-result v6

    .line 259
    if-nez v6, :cond_a

    .line 260
    .line 261
    invoke-virtual {p0, v3}, Lea5;->c(I)V

    .line 262
    .line 263
    .line 264
    goto :goto_3

    .line 265
    :cond_a
    throw v5

    .line 266
    :catch_2
    move-exception v2

    .line 267
    :try_start_1
    iget-object v5, p0, Lea5;->g:Lmt3;

    .line 268
    .line 269
    iget-object v6, v2, Lla5;->a:Lia5;

    .line 270
    .line 271
    invoke-interface {v5, v6}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v5

    .line 275
    check-cast v5, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3

    .line 276
    .line 277
    invoke-static {v5}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 278
    .line 279
    .line 280
    move-result v6

    .line 281
    if-nez v6, :cond_b

    .line 282
    .line 283
    new-instance v6, Lja5;

    .line 284
    .line 285
    iget-object v2, v2, Lla5;->a:Lia5;

    .line 286
    .line 287
    iget-object v2, v2, Lia5;->c:Ljava/lang/String;

    .line 288
    .line 289
    invoke-direct {v6, v2, v5}, Lja5;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    move-object v2, v6

    .line 293
    goto/16 :goto_1

    .line 294
    .line 295
    :cond_b
    new-instance p0, Llb5;

    .line 296
    .line 297
    const-string p2, "MEGA hashcash challenge could not be solved"

    .line 298
    .line 299
    const/4 p3, 0x6

    .line 300
    invoke-direct {p0, p2, p1, p3}, Llb5;-><init>(Ljava/lang/String;Ljava/lang/RuntimeException;I)V

    .line 301
    .line 302
    .line 303
    throw p0

    .line 304
    :catch_3
    move-exception p0

    .line 305
    new-instance p1, Llb5;

    .line 306
    .line 307
    const-string p2, "MEGA hashcash challenge failed"

    .line 308
    .line 309
    const/4 p3, 0x2

    .line 310
    invoke-direct {p1, p2, p0, p3}, Llb5;-><init>(Ljava/lang/String;Ljava/lang/RuntimeException;I)V

    .line 311
    .line 312
    .line 313
    throw p1
.end method

.method public final c(I)V
    .locals 4

    .line 1
    add-int/lit8 p1, p1, 0x1

    .line 2
    .line 3
    int-to-long v0, p1

    .line 4
    iget-wide v2, p0, Lea5;->e:J

    .line 5
    .line 6
    mul-long/2addr v2, v0

    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    cmp-long p1, v2, v0

    .line 10
    .line 11
    if-gtz p1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    :try_start_0
    iget-object p0, p0, Lea5;->f:Lmt3;

    .line 15
    .line 16
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-interface {p0, p1}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :catch_0
    move-exception p0

    .line 25
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 30
    .line 31
    .line 32
    new-instance p1, Ljava/io/InterruptedIOException;

    .line 33
    .line 34
    const-string v0, "MEGA API retry interrupted"

    .line 35
    .line 36
    invoke-direct {p1, v0}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 40
    .line 41
    .line 42
    throw p1
.end method
