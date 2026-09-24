.class public final Lgq8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lokhttp3/OkHttpClient;

.field public final b:Lmt3;

.field public final c:Lbt3;

.field public final d:J

.field public final e:Lokhttp3/HttpUrl;


# direct methods
.method public constructor <init>(Lokhttp3/OkHttpClient;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Leq8;->a:Leq8;

    .line 2
    .line 3
    sget-object v1, Lfq8;->a:Lfq8;

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lgq8;->a:Lokhttp3/OkHttpClient;

    .line 12
    .line 13
    iput-object v0, p0, Lgq8;->b:Lmt3;

    .line 14
    .line 15
    iput-object v1, p0, Lgq8;->c:Lbt3;

    .line 16
    .line 17
    const-wide/16 v0, 0x3a98

    .line 18
    .line 19
    iput-wide v0, p0, Lgq8;->d:J

    .line 20
    .line 21
    const/16 p1, 0x2f

    .line 22
    .line 23
    invoke-static {p2, p1}, Lnq7;->b0(Ljava/lang/String;C)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const-string p1, "/"

    .line 31
    .line 32
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    :goto_0
    invoke-static {p2}, Lokhttp3/HttpUrl$Companion;->b(Ljava/lang/String;)Lokhttp3/HttpUrl;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iput-object p1, p0, Lgq8;->e:Lokhttp3/HttpUrl;

    .line 41
    .line 42
    return-void
.end method

.method public static h(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    const/16 v0, 0x3f

    .line 2
    .line 3
    invoke-static {p0, v0}, Lnq7;->D0(Ljava/lang/String;C)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :try_start_0
    invoke-static {p0}, Lokhttp3/HttpUrl$Companion;->b(Ljava/lang/String;)Lokhttp3/HttpUrl;

    .line 8
    .line 9
    .line 10
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    goto :goto_0

    .line 12
    :catch_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->b()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    :cond_0
    const/4 v0, 0x1

    .line 20
    new-array v0, v0, [C

    .line 21
    .line 22
    const/16 v1, 0x2f

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    aput-char v1, v0, v2

    .line 26
    .line 27
    invoke-static {p0, v0}, Lnq7;->K0(Ljava/lang/String;[C)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method

.method public static k(Lokhttp3/Response;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lokhttp3/Response;->H:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget v0, p0, Lokhttp3/Response;->d:I

    .line 6
    .line 7
    const/16 v1, 0xcf

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-static {p0, p1, p2}, Lgq8;->l(Lokhttp3/Response;Ljava/lang/String;Ljava/lang/String;)Lkq8;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    throw p0

    .line 17
    :cond_1
    :goto_0
    return-void
.end method

.method public static l(Lokhttp3/Response;Ljava/lang/String;Ljava/lang/String;)Lkq8;
    .locals 3

    .line 1
    iget v0, p0, Lokhttp3/Response;->d:I

    .line 2
    .line 3
    iget-object v1, p0, Lokhttp3/Response;->c:Ljava/lang/String;

    .line 4
    .line 5
    :try_start_0
    iget-object p0, p0, Lokhttp3/Response;->k:Lokhttp3/ResponseBody;

    .line 6
    .line 7
    invoke-virtual {p0}, Lokhttp3/ResponseBody;->n()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    new-instance v2, Lbn6;

    .line 14
    .line 15
    invoke-direct {v2, p0}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 16
    .line 17
    .line 18
    move-object p0, v2

    .line 19
    :goto_0
    nop

    .line 20
    instance-of v2, p0, Lbn6;

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    const/4 p0, 0x0

    .line 25
    :cond_0
    check-cast p0, Ljava/lang/String;

    .line 26
    .line 27
    new-instance p0, Lkq8;

    .line 28
    .line 29
    invoke-direct {p0, v0, p1, p2, v1}, Lkq8;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-object p0
.end method

.method public static m(Ljava/util/Map;)Lokhttp3/Headers;
    .locals 3

    .line 1
    new-instance v0, Lokhttp3/Headers$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lokhttp3/Headers$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Ljava/util/Map$Entry;

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Ljava/lang/String;

    .line 31
    .line 32
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v0, v2, v1}, Lokhttp3/Headers$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {v0}, Lokhttp3/Headers$Builder;->b()Lokhttp3/Headers;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0
.end method


# virtual methods
.method public final a(Ljava/util/Map;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lokhttp3/Request$Builder;

    .line 5
    .line 6
    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 7
    .line 8
    .line 9
    const/16 v1, 0x2f

    .line 10
    .line 11
    invoke-static {p2, v1}, Lnq7;->b0(Ljava/lang/String;C)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    move-object v1, p2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-string v1, "/"

    .line 20
    .line 21
    invoke-virtual {p2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    :goto_0
    invoke-virtual {p0, v1}, Lgq8;->n(Ljava/lang/String;)Lokhttp3/HttpUrl;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iput-object v1, v0, Lokhttp3/Request$Builder;->a:Lokhttp3/HttpUrl;

    .line 30
    .line 31
    invoke-static {p1}, Lgq8;->m(Ljava/util/Map;)Lokhttp3/Headers;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1}, Lokhttp3/Headers;->f()Lokhttp3/Headers$Builder;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iput-object p1, v0, Lokhttp3/Request$Builder;->c:Lokhttp3/Headers$Builder;

    .line 40
    .line 41
    const-string p1, "MKCOL"

    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    invoke-virtual {v0, p1, v1}, Lokhttp3/Request$Builder;->c(Ljava/lang/String;Lokhttp3/RequestBody;)V

    .line 45
    .line 46
    .line 47
    new-instance v2, Lokhttp3/Request;

    .line 48
    .line 49
    invoke-direct {v2, v0}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v2, v1}, Lgq8;->d(Lokhttp3/Request;Ljava/lang/Long;)Lokhttp3/Response;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    :try_start_0
    iget-boolean v0, p0, Lokhttp3/Response;->H:Z

    .line 57
    .line 58
    if-nez v0, :cond_2

    .line 59
    .line 60
    iget v0, p0, Lokhttp3/Response;->d:I

    .line 61
    .line 62
    const/16 v1, 0x195

    .line 63
    .line 64
    if-ne v0, v1, :cond_1

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_1
    invoke-static {p0, p1, p2}, Lgq8;->l(Lokhttp3/Response;Ljava/lang/String;Ljava/lang/String;)Lkq8;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :catchall_0
    move-exception p1

    .line 73
    goto :goto_2

    .line 74
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lokhttp3/Response;->close()V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :goto_2
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 79
    :catchall_1
    move-exception p2

    .line 80
    invoke-static {p0, p1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 81
    .line 82
    .line 83
    throw p2
.end method

.method public final b(Ljava/lang/String;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lgq8;->n(Ljava/lang/String;)Lokhttp3/HttpUrl;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    new-instance v1, Lokhttp3/Request$Builder;

    .line 9
    .line 10
    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, v1, Lokhttp3/Request$Builder;->a:Lokhttp3/HttpUrl;

    .line 14
    .line 15
    invoke-static {v1}, Lokhttp3/Request$Builder;->a(Lokhttp3/Request$Builder;)V

    .line 16
    .line 17
    .line 18
    new-instance v2, Lokhttp3/Request;

    .line 19
    .line 20
    invoke-direct {v2, v1}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 21
    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-virtual {p0, v2, v1}, Lgq8;->d(Lokhttp3/Request;Ljava/lang/Long;)Lokhttp3/Response;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    :try_start_0
    iget v2, v1, Lokhttp3/Response;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    const/16 v3, 0x194

    .line 31
    .line 32
    const/4 v4, 0x1

    .line 33
    if-eq v2, v3, :cond_1

    .line 34
    .line 35
    const/16 v3, 0x19a

    .line 36
    .line 37
    if-ne v2, v3, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 v2, 0x0

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    :goto_0
    move v2, v4

    .line 43
    :goto_1
    if-eqz v2, :cond_2

    .line 44
    .line 45
    invoke-virtual {v1}, Lokhttp3/Response;->close()V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_2
    :try_start_1
    iget-boolean v2, v1, Lokhttp3/Response;->H:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    .line 51
    if-eqz v2, :cond_8

    .line 52
    .line 53
    invoke-virtual {v1}, Lokhttp3/Response;->close()V

    .line 54
    .line 55
    .line 56
    iget-object v0, v0, Lokhttp3/HttpUrl;->d:Ljava/lang/String;

    .line 57
    .line 58
    const-string v1, "123pan"

    .line 59
    .line 60
    invoke-static {v0, v1, v4}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_7

    .line 65
    .line 66
    iget-wide v0, p0, Lgq8;->d:J

    .line 67
    .line 68
    const-wide/16 v2, 0x0

    .line 69
    .line 70
    cmp-long v4, v0, v2

    .line 71
    .line 72
    if-ltz v4, :cond_6

    .line 73
    .line 74
    iget-object v4, p0, Lgq8;->c:Lbt3;

    .line 75
    .line 76
    invoke-interface {v4}, Lbt3;->invoke()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    check-cast v4, Ljava/lang/Number;

    .line 81
    .line 82
    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    .line 83
    .line 84
    .line 85
    move-result-wide v4

    .line 86
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 87
    .line 88
    invoke-virtual {v6, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 89
    .line 90
    .line 91
    move-result-wide v0

    .line 92
    add-long/2addr v0, v4

    .line 93
    :goto_2
    invoke-virtual {p0, v0, v1}, Lgq8;->j(J)J

    .line 94
    .line 95
    .line 96
    move-result-wide v4

    .line 97
    cmp-long v6, v4, v2

    .line 98
    .line 99
    if-lez v6, :cond_5

    .line 100
    .line 101
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    invoke-virtual {p0, p1, v4}, Lgq8;->e(Ljava/lang/String;Ljava/lang/Long;)Z

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    if-nez v4, :cond_3

    .line 110
    .line 111
    goto :goto_3

    .line 112
    :cond_3
    invoke-virtual {p0, v0, v1}, Lgq8;->j(J)J

    .line 113
    .line 114
    .line 115
    move-result-wide v4

    .line 116
    cmp-long v6, v4, v2

    .line 117
    .line 118
    if-lez v6, :cond_4

    .line 119
    .line 120
    const-wide/16 v6, 0x3e8

    .line 121
    .line 122
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(JJ)J

    .line 123
    .line 124
    .line 125
    move-result-wide v4

    .line 126
    :try_start_2
    iget-object v6, p0, Lgq8;->b:Lmt3;

    .line 127
    .line 128
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    invoke-interface {v6, v4}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 133
    .line 134
    .line 135
    goto :goto_2

    .line 136
    :catch_0
    move-exception p0

    .line 137
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 142
    .line 143
    .line 144
    new-instance v0, Ljava/io/IOException;

    .line 145
    .line 146
    const-string v1, "Interrupted while confirming DELETE "

    .line 147
    .line 148
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-direct {v0, p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 153
    .line 154
    .line 155
    throw v0

    .line 156
    :cond_4
    invoke-virtual {p0, p1}, Lgq8;->c(Ljava/lang/String;)Ljava/io/IOException;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    throw p0

    .line 161
    :cond_5
    invoke-virtual {p0, p1}, Lgq8;->c(Ljava/lang/String;)Ljava/io/IOException;

    .line 162
    .line 163
    .line 164
    move-result-object p0

    .line 165
    throw p0

    .line 166
    :cond_6
    const-string p0, "Invalid delete confirmation timeout: "

    .line 167
    .line 168
    invoke-static {v0, v1, p0}, Lu48;->l(JLjava/lang/String;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p0

    .line 172
    invoke-static {p0}, Lf6;->g(Ljava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    :cond_7
    :goto_3
    return-void

    .line 176
    :cond_8
    :try_start_3
    const-string p0, "DELETE"

    .line 177
    .line 178
    invoke-static {v1, p0, p1}, Lgq8;->l(Lokhttp3/Response;Ljava/lang/String;Ljava/lang/String;)Lkq8;

    .line 179
    .line 180
    .line 181
    move-result-object p0

    .line 182
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 183
    :catchall_0
    move-exception p0

    .line 184
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 185
    :catchall_1
    move-exception p1

    .line 186
    invoke-static {v1, p0}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 187
    .line 188
    .line 189
    throw p1
.end method

.method public final c(Ljava/lang/String;)Ljava/io/IOException;
    .locals 5

    .line 1
    new-instance v0, Ljava/io/IOException;

    .line 2
    .line 3
    const-string v1, "DELETE "

    .line 4
    .line 5
    const-string v2, " did not remove the resource after "

    .line 6
    .line 7
    iget-wide v3, p0, Lgq8;->d:J

    .line 8
    .line 9
    invoke-static {v1, p1, v3, v4, v2}, Lu48;->o(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const-string p1, " ms"

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method

.method public final d(Lokhttp3/Request;Ljava/lang/Long;)Lokhttp3/Response;
    .locals 3

    .line 1
    iget-object p0, p0, Lgq8;->a:Lokhttp3/OkHttpClient;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Lokhttp3/internal/connection/RealCall;

    .line 7
    .line 8
    invoke-direct {v0, p0, p1}, Lokhttp3/internal/connection/RealCall;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;)V

    .line 9
    .line 10
    .line 11
    if-eqz p2, :cond_1

    .line 12
    .line 13
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 14
    .line 15
    .line 16
    move-result-wide p0

    .line 17
    const-wide/16 v1, 0x1

    .line 18
    .line 19
    cmp-long p2, p0, v1

    .line 20
    .line 21
    if-gez p2, :cond_0

    .line 22
    .line 23
    move-wide p0, v1

    .line 24
    :cond_0
    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 25
    .line 26
    iget-object v1, v0, Lokhttp3/internal/connection/RealCall;->e:Lokhttp3/internal/connection/RealCall$timeout$1;

    .line 27
    .line 28
    invoke-virtual {v1, p0, p1, p2}, Lf48;->g(JLjava/util/concurrent/TimeUnit;)Lf48;

    .line 29
    .line 30
    .line 31
    :cond_1
    invoke-virtual {v0}, Lokhttp3/internal/connection/RealCall;->g()Lokhttp3/Response;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method

.method public final e(Ljava/lang/String;Ljava/lang/Long;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v1, p1, v0}, Lgq8;->i(ILjava/lang/String;Ljava/lang/String;)Lokhttp3/Request;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0, p2}, Lgq8;->d(Lokhttp3/Request;Ljava/lang/Long;)Lokhttp3/Response;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    :try_start_0
    iget p2, p0, Lokhttp3/Response;->d:I

    .line 12
    .line 13
    const/16 v0, 0x194

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    if-eq p2, v0, :cond_1

    .line 17
    .line 18
    const/16 v0, 0x19a

    .line 19
    .line 20
    if-ne p2, v0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v0, v1

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    :goto_0
    move v0, v2

    .line 26
    :goto_1
    if-eqz v0, :cond_2

    .line 27
    .line 28
    goto :goto_2

    .line 29
    :cond_2
    iget-boolean v0, p0, Lokhttp3/Response;->H:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    if-nez v0, :cond_3

    .line 32
    .line 33
    const/16 v0, 0xcf

    .line 34
    .line 35
    if-ne p2, v0, :cond_4

    .line 36
    .line 37
    :cond_3
    move v1, v2

    .line 38
    :cond_4
    if-eqz v1, :cond_5

    .line 39
    .line 40
    move v1, v2

    .line 41
    :goto_2
    invoke-virtual {p0}, Lokhttp3/Response;->close()V

    .line 42
    .line 43
    .line 44
    return v1

    .line 45
    :cond_5
    :try_start_1
    const-string p2, "PROPFIND"

    .line 46
    .line 47
    invoke-static {p0, p2, p1}, Lgq8;->l(Lokhttp3/Response;Ljava/lang/String;Ljava/lang/String;)Lkq8;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    :catchall_0
    move-exception p1

    .line 53
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 54
    :catchall_1
    move-exception p2

    .line 55
    invoke-static {p0, p1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 56
    .line 57
    .line 58
    throw p2
.end method

.method public final f(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Lokhttp3/Request$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p2}, Lgq8;->n(Ljava/lang/String;)Lokhttp3/HttpUrl;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iput-object v1, v0, Lokhttp3/Request$Builder;->a:Lokhttp3/HttpUrl;

    .line 11
    .line 12
    invoke-static {p1}, Lgq8;->m(Ljava/util/Map;)Lokhttp3/Headers;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Lokhttp3/Headers;->f()Lokhttp3/Headers$Builder;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, v0, Lokhttp3/Request$Builder;->c:Lokhttp3/Headers$Builder;

    .line 21
    .line 22
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->b()V

    .line 23
    .line 24
    .line 25
    new-instance p1, Lokhttp3/Request;

    .line 26
    .line 27
    invoke-direct {p1, v0}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 28
    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    invoke-virtual {p0, p1, v0}, Lgq8;->d(Lokhttp3/Request;Ljava/lang/Long;)Lokhttp3/Response;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    :try_start_0
    const-string p1, "GET"

    .line 36
    .line 37
    invoke-static {p0, p1, p2}, Lgq8;->k(Lokhttp3/Response;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lokhttp3/Response;->k:Lokhttp3/ResponseBody;

    .line 41
    .line 42
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->n()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    invoke-virtual {p0}, Lokhttp3/Response;->close()V

    .line 47
    .line 48
    .line 49
    return-object p1

    .line 50
    :catchall_0
    move-exception p1

    .line 51
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 52
    :catchall_1
    move-exception p2

    .line 53
    invoke-static {p0, p1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 54
    .line 55
    .line 56
    throw p2
.end method

.method public final g(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lokhttp3/Request$Builder;

    .line 5
    .line 6
    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lgq8;->n(Ljava/lang/String;)Lokhttp3/HttpUrl;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iput-object v1, v0, Lokhttp3/Request$Builder;->a:Lokhttp3/HttpUrl;

    .line 14
    .line 15
    const-string v1, "MOVE"

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->c(Ljava/lang/String;Lokhttp3/RequestBody;)V

    .line 19
    .line 20
    .line 21
    invoke-static {p3}, Lgq8;->m(Ljava/util/Map;)Lokhttp3/Headers;

    .line 22
    .line 23
    .line 24
    move-result-object p3

    .line 25
    invoke-virtual {p3}, Lokhttp3/Headers;->f()Lokhttp3/Headers$Builder;

    .line 26
    .line 27
    .line 28
    move-result-object p3

    .line 29
    iput-object p3, v0, Lokhttp3/Request$Builder;->c:Lokhttp3/Headers$Builder;

    .line 30
    .line 31
    invoke-virtual {p0, p2}, Lgq8;->n(Ljava/lang/String;)Lokhttp3/HttpUrl;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    iget-object p2, p2, Lokhttp3/HttpUrl;->h:Ljava/lang/String;

    .line 36
    .line 37
    iget-object p3, v0, Lokhttp3/Request$Builder;->c:Lokhttp3/Headers$Builder;

    .line 38
    .line 39
    const-string v3, "Destination"

    .line 40
    .line 41
    invoke-virtual {p3, v3, p2}, Lokhttp3/Headers$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const-string p2, "T"

    .line 45
    .line 46
    iget-object p3, v0, Lokhttp3/Request$Builder;->c:Lokhttp3/Headers$Builder;

    .line 47
    .line 48
    const-string v3, "Overwrite"

    .line 49
    .line 50
    invoke-static {p3, v3, p2, v0}, Lxs1;->o(Lokhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;Lokhttp3/Request$Builder;)Lokhttp3/Request;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    invoke-virtual {p0, p2, v2}, Lgq8;->d(Lokhttp3/Request;Ljava/lang/Long;)Lokhttp3/Response;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    :try_start_0
    invoke-static {p0, v1, p1}, Lgq8;->k(Lokhttp3/Response;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lokhttp3/Response;->close()V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :catchall_0
    move-exception p1

    .line 66
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 67
    :catchall_1
    move-exception p2

    .line 68
    invoke-static {p0, p1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 69
    .line 70
    .line 71
    throw p2
.end method

.method public final i(ILjava/lang/String;Ljava/lang/String;)Lokhttp3/Request;
    .locals 1

    .line 1
    new-instance v0, Lokhttp3/Request$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p2}, Lgq8;->n(Ljava/lang/String;)Lokhttp3/HttpUrl;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    iput-object p0, v0, Lokhttp3/Request$Builder;->a:Lokhttp3/HttpUrl;

    .line 11
    .line 12
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    iget-object p1, v0, Lokhttp3/Request$Builder;->c:Lokhttp3/Headers$Builder;

    .line 20
    .line 21
    const-string p2, "Depth"

    .line 22
    .line 23
    invoke-virtual {p1, p2, p0}, Lokhttp3/Headers$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    if-eqz p3, :cond_0

    .line 27
    .line 28
    sget-object p0, Lokhttp3/RequestBody;->a:Lokhttp3/RequestBody$Companion$toRequestBody$1;

    .line 29
    .line 30
    sget-object p0, Lokhttp3/MediaType;->d:Lai6;

    .line 31
    .line 32
    const-string p0, "application/xml; charset=utf-8"

    .line 33
    .line 34
    invoke-static {p0}, Lokhttp3/MediaType$Companion;->a(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-static {p3, p0}, Lokhttp3/RequestBody$Companion;->a(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody$Companion$toRequestBody$3;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 p0, 0x0

    .line 44
    :goto_0
    const-string p1, "PROPFIND"

    .line 45
    .line 46
    invoke-virtual {v0, p1, p0}, Lokhttp3/Request$Builder;->c(Ljava/lang/String;Lokhttp3/RequestBody;)V

    .line 47
    .line 48
    .line 49
    new-instance p0, Lokhttp3/Request;

    .line 50
    .line 51
    invoke-direct {p0, v0}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 52
    .line 53
    .line 54
    return-object p0
.end method

.method public final j(J)J
    .locals 2

    .line 1
    iget-object p0, p0, Lgq8;->c:Lbt3;

    .line 2
    .line 3
    invoke-interface {p0}, Lbt3;->invoke()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    sub-long/2addr p1, v0

    .line 14
    const-wide/16 v0, 0x0

    .line 15
    .line 16
    cmp-long p0, p1, v0

    .line 17
    .line 18
    if-gtz p0, :cond_0

    .line 19
    .line 20
    return-wide v0

    .line 21
    :cond_0
    const-wide/32 v0, 0xf4240

    .line 22
    .line 23
    .line 24
    div-long/2addr p1, v0

    .line 25
    const-wide/16 v0, 0x1

    .line 26
    .line 27
    cmp-long p0, p1, v0

    .line 28
    .line 29
    if-gez p0, :cond_1

    .line 30
    .line 31
    return-wide v0

    .line 32
    :cond_1
    return-wide p1
.end method

.method public final n(Ljava/lang/String;)Lokhttp3/HttpUrl;
    .locals 3

    .line 1
    const-string v0, "http://"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {p1, v0, v1}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_2

    .line 9
    .line 10
    const-string v0, "https://"

    .line 11
    .line 12
    invoke-static {p1, v0, v1}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x1

    .line 20
    new-array v0, v0, [C

    .line 21
    .line 22
    const/16 v2, 0x2f

    .line 23
    .line 24
    aput-char v2, v0, v1

    .line 25
    .line 26
    invoke-static {p1, v0}, Lnq7;->I0(Ljava/lang/String;[C)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iget-object p0, p0, Lgq8;->e:Lokhttp3/HttpUrl;

    .line 31
    .line 32
    invoke-virtual {p0}, Lokhttp3/HttpUrl;->g()Lokhttp3/HttpUrl$Builder;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-lez v0, :cond_1

    .line 41
    .line 42
    const-string v0, " "

    .line 43
    .line 44
    const-string v1, "%20"

    .line 45
    .line 46
    invoke-static {p1, v0, v1}, Luq7;->T(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    const-string v0, "("

    .line 51
    .line 52
    const-string v1, "%28"

    .line 53
    .line 54
    invoke-static {p1, v0, v1}, Luq7;->T(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    const-string v0, ")"

    .line 59
    .line 60
    const-string v1, "%29"

    .line 61
    .line 62
    invoke-static {p1, v0, v1}, Luq7;->T(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p0, p1}, Lokhttp3/HttpUrl$Builder;->a(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    :cond_1
    invoke-virtual {p0}, Lokhttp3/HttpUrl$Builder;->e()Lokhttp3/HttpUrl;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    return-object p0

    .line 74
    :cond_2
    :goto_0
    invoke-static {p1}, Lokhttp3/HttpUrl$Companion;->b(Ljava/lang/String;)Lokhttp3/HttpUrl;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    return-object p0
.end method
