.class public abstract Lij1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Lgv7;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcl;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    invoke-direct {v0, v1}, Lcl;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Lgv7;

    .line 8
    .line 9
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 10
    .line 11
    .line 12
    sput-object v1, Lij1;->a:Lgv7;

    .line 13
    .line 14
    return-void
.end method

.method public static a(Lkj1;Ljavax/net/SocketFactory;)Ljava/net/Socket;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :try_start_0
    new-instance v0, Ljava/net/InetSocketAddress;

    .line 6
    .line 7
    iget-object v1, p0, Lkj1;->a:Ljava/lang/String;

    .line 8
    .line 9
    iget p0, p0, Lkj1;->b:I

    .line 10
    .line 11
    invoke-direct {v0, v1, p0}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 12
    .line 13
    .line 14
    const/16 p0, 0xfa

    .line 15
    .line 16
    invoke-virtual {p1, v0, p0}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p0}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    return-object p1

    .line 23
    :catch_0
    move-exception p0

    .line 24
    invoke-virtual {p1}, Ljava/net/Socket;->close()V

    .line 25
    .line 26
    .line 27
    throw p0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Lcv4;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcv4;-><init>(Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcv4;->hasNext()Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    move-object p0, v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v0}, Lcv4;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    :goto_0
    check-cast p0, Ljava/lang/String;

    .line 20
    .line 21
    if-eqz p0, :cond_1

    .line 22
    .line 23
    invoke-static {p0}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    if-eqz p0, :cond_1

    .line 32
    .line 33
    const/16 v0, 0xa0

    .line 34
    .line 35
    invoke-static {v0, p0}, Lnq7;->G0(ILjava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    :cond_1
    if-nez v1, :cond_2

    .line 40
    .line 41
    const-string p0, ""

    .line 42
    .line 43
    return-object p0

    .line 44
    :cond_2
    return-object v1
.end method

.method public static c(Lcj1;Ljavax/net/SocketFactory;)Lbj1;
    .locals 10

    .line 1
    new-instance v1, Lbj1;

    .line 2
    .line 3
    iget v2, p0, Lcj1;->a:I

    .line 4
    .line 5
    iget-object v4, p0, Lcj1;->b:Lkj1;

    .line 6
    .line 7
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 8
    .line 9
    .line 10
    move-result-wide v5

    .line 11
    const/4 p0, 0x0

    .line 12
    :try_start_0
    iget-object v0, v4, Lkj1;->c:Ldd1;

    .line 13
    .line 14
    sget-object v3, Lfj1;->b:[I

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    aget v0, v3, v0

    .line 21
    .line 22
    const/4 v3, 0x1

    .line 23
    if-eq v0, v3, :cond_5

    .line 24
    .line 25
    const/4 v7, 0x2

    .line 26
    if-eq v0, v7, :cond_4

    .line 27
    .line 28
    const/4 v8, 0x3

    .line 29
    if-eq v0, v8, :cond_1

    .line 30
    .line 31
    const/4 v3, 0x4

    .line 32
    if-eq v0, v3, :cond_0

    .line 33
    .line 34
    new-instance p1, Laj1;

    .line 35
    .line 36
    const-string v0, "unsupported"

    .line 37
    .line 38
    invoke-direct {p1, v0, p0}, Laj1;-><init>(Ljava/lang/String;Z)V

    .line 39
    .line 40
    .line 41
    goto :goto_2

    .line 42
    :catchall_0
    move-exception v0

    .line 43
    move-object p1, v0

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-static {v4, p1}, Lij1;->g(Lkj1;Ljavax/net/SocketFactory;)Laj1;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    goto :goto_2

    .line 50
    :cond_1
    iget-object v0, v4, Lkj1;->d:Lfd1;

    .line 51
    .line 52
    sget-object v8, Lfj1;->a:[I

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    aget v0, v8, v0

    .line 59
    .line 60
    if-eq v0, v3, :cond_3

    .line 61
    .line 62
    if-eq v0, v7, :cond_2

    .line 63
    .line 64
    new-instance v0, Lgf1;

    .line 65
    .line 66
    invoke-direct {v0, v3}, Lgf1;-><init>(I)V

    .line 67
    .line 68
    .line 69
    invoke-static {v4, p1, v0}, Lij1;->d(Lkj1;Ljavax/net/SocketFactory;Lmt3;)Laj1;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    goto :goto_2

    .line 74
    :cond_2
    invoke-static {v4, p1}, Lij1;->e(Lkj1;Ljavax/net/SocketFactory;)Laj1;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    goto :goto_2

    .line 79
    :cond_3
    invoke-static {v4, p1}, Lij1;->f(Lkj1;Ljavax/net/SocketFactory;)Laj1;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    goto :goto_2

    .line 84
    :cond_4
    new-instance v0, Lzi1;

    .line 85
    .line 86
    invoke-direct {v0, p0}, Lzi1;-><init>(I)V

    .line 87
    .line 88
    .line 89
    invoke-static {v4, p1, v0}, Lij1;->d(Lkj1;Ljavax/net/SocketFactory;Lmt3;)Laj1;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    goto :goto_2

    .line 94
    :cond_5
    invoke-static {v4, p1}, Lij1;->a(Lkj1;Ljavax/net/SocketFactory;)Ljava/net/Socket;

    .line 95
    .line 96
    .line 97
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :try_start_1
    new-instance v0, Laj1;

    .line 99
    .line 100
    const-string v7, "tcp-open"

    .line 101
    .line 102
    invoke-direct {v0, v7, v3}, Laj1;-><init>(Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 103
    .line 104
    .line 105
    :try_start_2
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :catchall_1
    move-exception v0

    .line 110
    move-object v3, v0

    .line 111
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 112
    :catchall_2
    move-exception v0

    .line 113
    :try_start_4
    invoke-static {p1, v3}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 114
    .line 115
    .line 116
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 117
    :goto_0
    new-instance v0, Lbn6;

    .line 118
    .line 119
    invoke-direct {v0, p1}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 120
    .line 121
    .line 122
    :goto_1
    move-object p1, v0

    .line 123
    :goto_2
    invoke-static {p1}, Len6;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    if-nez v0, :cond_6

    .line 128
    .line 129
    goto :goto_4

    .line 130
    :cond_6
    new-instance p1, Laj1;

    .line 131
    .line 132
    instance-of v3, v0, Ljava/net/ConnectException;

    .line 133
    .line 134
    if-eqz v3, :cond_7

    .line 135
    .line 136
    const-string v0, "connect-failed"

    .line 137
    .line 138
    goto :goto_3

    .line 139
    :cond_7
    instance-of v3, v0, Ljava/net/SocketTimeoutException;

    .line 140
    .line 141
    if-eqz v3, :cond_8

    .line 142
    .line 143
    const-string v0, "timeout"

    .line 144
    .line 145
    goto :goto_3

    .line 146
    :cond_8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-static {v0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 155
    .line 156
    .line 157
    move-result v3

    .line 158
    if-eqz v3, :cond_9

    .line 159
    .line 160
    const-string v0, "probe-failed"

    .line 161
    .line 162
    :cond_9
    :goto_3
    invoke-direct {p1, v0, p0}, Laj1;-><init>(Ljava/lang/String;Z)V

    .line 163
    .line 164
    .line 165
    :goto_4
    check-cast p1, Laj1;

    .line 166
    .line 167
    new-instance v3, Ljj1;

    .line 168
    .line 169
    move-wide v6, v5

    .line 170
    iget-boolean v5, p1, Laj1;->a:Z

    .line 171
    .line 172
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 173
    .line 174
    .line 175
    move-result-wide v8

    .line 176
    sub-long/2addr v8, v6

    .line 177
    const-wide/32 v6, 0xf4240

    .line 178
    .line 179
    .line 180
    div-long/2addr v8, v6

    .line 181
    const-wide/16 v6, 0x0

    .line 182
    .line 183
    cmp-long p0, v8, v6

    .line 184
    .line 185
    if-gez p0, :cond_a

    .line 186
    .line 187
    goto :goto_5

    .line 188
    :cond_a
    move-wide v6, v8

    .line 189
    :goto_5
    iget-object v8, p1, Laj1;->b:Ljava/lang/String;

    .line 190
    .line 191
    invoke-direct/range {v3 .. v8}, Ljj1;-><init>(Lkj1;ZJLjava/lang/String;)V

    .line 192
    .line 193
    .line 194
    invoke-direct {v1, v2, v3}, Lbj1;-><init>(ILjj1;)V

    .line 195
    .line 196
    .line 197
    return-object v1
.end method

.method public static d(Lkj1;Ljavax/net/SocketFactory;Lmt3;)Laj1;
    .locals 1

    .line 1
    invoke-static {p0, p1}, Lij1;->a(Lkj1;Ljavax/net/SocketFactory;)Ljava/net/Socket;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/16 p1, 0x200

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    :try_start_0
    invoke-static {p0, p1, v0}, Lij1;->h(Ljava/net/Socket;IZ)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-static {p1}, Lij1;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-interface {p2, p1}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    check-cast p2, Ljava/lang/Boolean;

    .line 21
    .line 22
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    invoke-static {p1}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    const-string p1, "tcp-open-no-banner"

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    :goto_0
    new-instance v0, Laj1;

    .line 38
    .line 39
    invoke-direct {v0, p1, p2}, Laj1;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    .line 42
    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    .line 43
    .line 44
    .line 45
    return-object v0

    .line 46
    :goto_1
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 47
    :catchall_1
    move-exception p2

    .line 48
    invoke-static {p0, p1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 49
    .line 50
    .line 51
    throw p2
.end method

.method public static e(Lkj1;Ljavax/net/SocketFactory;)Laj1;
    .locals 5

    .line 1
    invoke-static {p0, p1}, Lij1;->a(Lkj1;Ljavax/net/SocketFactory;)Ljava/net/Socket;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 p1, 0x1

    .line 6
    const/16 v0, 0x200

    .line 7
    .line 8
    :try_start_0
    invoke-static {p0, v0, p1}, Lij1;->h(Ljava/net/Socket;IZ)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-static {v1}, Lij1;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-string v2, "220"

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-static {v1, v2, v3}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-nez v2, :cond_1

    .line 24
    .line 25
    invoke-static {v1}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    const-string v1, "tcp-open-no-banner"

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    :goto_0
    new-instance p1, Laj1;

    .line 37
    .line 38
    invoke-direct {p1, v1, v3}, Laj1;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    .line 41
    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    .line 42
    .line 43
    .line 44
    return-object p1

    .line 45
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    const-string v2, "AUTH TLS\r\n"

    .line 50
    .line 51
    sget-object v4, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 52
    .line 53
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 71
    .line 72
    .line 73
    invoke-static {p0, v0, p1}, Lij1;->h(Ljava/net/Socket;IZ)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-static {p1}, Lij1;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    const-string v0, "234"

    .line 82
    .line 83
    invoke-static {p1, v0, v3}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    invoke-static {p1}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-eqz v1, :cond_2

    .line 92
    .line 93
    const-string p1, "ftpes-auth-no-response"

    .line 94
    .line 95
    :cond_2
    new-instance v1, Laj1;

    .line 96
    .line 97
    invoke-direct {v1, p1, v0}, Laj1;-><init>(Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    .line 99
    .line 100
    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    .line 101
    .line 102
    .line 103
    return-object v1

    .line 104
    :goto_1
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 105
    :catchall_1
    move-exception v0

    .line 106
    invoke-static {p0, p1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 107
    .line 108
    .line 109
    throw v0
.end method

.method public static f(Lkj1;Ljavax/net/SocketFactory;)Laj1;
    .locals 3

    .line 1
    invoke-static {p0, p1}, Lij1;->a(Lkj1;Ljavax/net/SocketFactory;)Ljava/net/Socket;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :try_start_0
    sget-object v0, Lij1;->a:Lgv7;

    .line 6
    .line 7
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    check-cast v0, Ljavax/net/ssl/SSLSocketFactory;

    .line 15
    .line 16
    iget-object v1, p0, Lkj1;->a:Ljava/lang/String;

    .line 17
    .line 18
    iget p0, p0, Lkj1;->b:I

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-virtual {v0, p1, v1, p0, v2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 26
    .line 27
    .line 28
    const/16 v0, 0xfa

    .line 29
    .line 30
    :try_start_1
    invoke-virtual {p0, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 31
    .line 32
    .line 33
    const/16 v0, 0x200

    .line 34
    .line 35
    invoke-static {p0, v0, v2}, Lij1;->h(Ljava/net/Socket;IZ)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v0}, Lij1;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const-string v1, "220"

    .line 44
    .line 45
    const/4 v2, 0x0

    .line 46
    invoke-static {v0, v1, v2}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    invoke-static {v0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_0

    .line 55
    .line 56
    const-string v0, "tls-open-no-banner"

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catchall_0
    move-exception v0

    .line 60
    goto :goto_1

    .line 61
    :cond_0
    :goto_0
    new-instance v2, Laj1;

    .line 62
    .line 63
    invoke-direct {v2, v0, v1}, Laj1;-><init>(Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    .line 65
    .line 66
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 67
    .line 68
    .line 69
    invoke-interface {p1}, Ljava/io/Closeable;->close()V

    .line 70
    .line 71
    .line 72
    return-object v2

    .line 73
    :catchall_1
    move-exception p0

    .line 74
    goto :goto_2

    .line 75
    :goto_1
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 76
    :catchall_2
    move-exception v1

    .line 77
    :try_start_4
    invoke-static {p0, v0}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 78
    .line 79
    .line 80
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 81
    :goto_2
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 82
    :catchall_3
    move-exception v0

    .line 83
    invoke-static {p1, p0}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 84
    .line 85
    .line 86
    throw v0
.end method

.method public static g(Lkj1;Ljavax/net/SocketFactory;)Laj1;
    .locals 11

    .line 1
    const-string v0, "HTTP/"

    .line 2
    .line 3
    const-string v1, "\r\nUser-Agent: SwiftBackupLocalDiscovery\r\nConnection: close\r\n\r\n"

    .line 4
    .line 5
    const-string v2, " HTTP/1.1\r\nHost: "

    .line 6
    .line 7
    const-string v3, "OPTIONS "

    .line 8
    .line 9
    invoke-static {p0, p1}, Lij1;->a(Lkj1;Ljavax/net/SocketFactory;)Ljava/net/Socket;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget v4, p0, Lkj1;->b:I

    .line 14
    .line 15
    iget-object v5, p0, Lkj1;->a:Ljava/lang/String;

    .line 16
    .line 17
    :try_start_0
    iget-object v6, p0, Lkj1;->d:Lfd1;

    .line 18
    .line 19
    sget-object v7, Lfd1;->HTTPS:Lfd1;

    .line 20
    .line 21
    const/4 v8, 0x1

    .line 22
    if-ne v6, v7, :cond_0

    .line 23
    .line 24
    sget-object v6, Lij1;->a:Lgv7;

    .line 25
    .line 26
    invoke-virtual {v6}, Lgv7;->getValue()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    check-cast v6, Ljavax/net/ssl/SSLSocketFactory;

    .line 34
    .line 35
    invoke-virtual {v6, p1, v5, v4, v8}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    move-object v6, p1

    .line 44
    :goto_0
    :try_start_1
    iget-object p0, p0, Lkj1;->e:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    .line 46
    const-string v7, "/"

    .line 47
    .line 48
    const/4 v9, 0x0

    .line 49
    if-eqz p0, :cond_2

    .line 50
    .line 51
    :try_start_2
    invoke-static {p0, v7, v9}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 52
    .line 53
    .line 54
    move-result v10

    .line 55
    if-eqz v10, :cond_1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    invoke-virtual {v7, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    :goto_1
    move-object v7, p0

    .line 63
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v2, ":"

    .line 78
    .line 79
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    invoke-virtual {v6}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    sget-object v2, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 97
    .line 98
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, p0}, Ljava/io/OutputStream;->write([B)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v6}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    .line 116
    .line 117
    .line 118
    const/16 p0, 0x1000

    .line 119
    .line 120
    invoke-static {v6, p0, v9}, Lij1;->h(Ljava/net/Socket;IZ)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    invoke-static {p0, v0, v9}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    if-eqz v1, :cond_3

    .line 129
    .line 130
    invoke-static {p0}, Lij1;->i(Ljava/lang/String;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-static {v1}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    if-nez v1, :cond_3

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_3
    move v8, v9

    .line 142
    :goto_2
    if-eqz v8, :cond_4

    .line 143
    .line 144
    invoke-static {p0}, Lij1;->i(Ljava/lang/String;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    goto :goto_3

    .line 149
    :catchall_0
    move-exception p0

    .line 150
    goto :goto_4

    .line 151
    :cond_4
    invoke-static {p0, v0, v9}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    if-eqz v0, :cond_5

    .line 156
    .line 157
    invoke-static {p0}, Lij1;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    goto :goto_3

    .line 162
    :cond_5
    invoke-static {p0}, Lij1;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    invoke-static {p0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    if-eqz v0, :cond_6

    .line 171
    .line 172
    const-string p0, "tcp-open-no-http-response"

    .line 173
    .line 174
    :cond_6
    :goto_3
    new-instance v0, Laj1;

    .line 175
    .line 176
    invoke-direct {v0, p0, v8}, Laj1;-><init>(Ljava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 177
    .line 178
    .line 179
    :try_start_3
    invoke-interface {v6}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 180
    .line 181
    .line 182
    invoke-interface {p1}, Ljava/io/Closeable;->close()V

    .line 183
    .line 184
    .line 185
    return-object v0

    .line 186
    :catchall_1
    move-exception p0

    .line 187
    goto :goto_5

    .line 188
    :goto_4
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 189
    :catchall_2
    move-exception v0

    .line 190
    :try_start_5
    invoke-static {v6, p0}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 191
    .line 192
    .line 193
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 194
    :goto_5
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 195
    :catchall_3
    move-exception v0

    .line 196
    invoke-static {p1, p0}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 197
    .line 198
    .line 199
    throw v0
.end method

.method public static h(Ljava/net/Socket;IZ)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0x200

    .line 7
    .line 8
    new-array v1, v1, [B

    .line 9
    .line 10
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-ge v2, p1, :cond_3

    .line 15
    .line 16
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    .line 21
    .line 22
    .line 23
    move-result v2
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    const/4 v3, -0x1

    .line 25
    if-ne v2, v3, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    sub-int v3, p1, v3

    .line 33
    .line 34
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    const/4 v3, 0x0

    .line 39
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 40
    .line 41
    .line 42
    sget-object v2, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    if-eqz p2, :cond_2

    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    const-string v4, "\n"

    .line 58
    .line 59
    invoke-static {v2, v4, v3}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-nez v4, :cond_3

    .line 64
    .line 65
    :cond_2
    if-nez p2, :cond_0

    .line 66
    .line 67
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    const-string v4, "\r\n\r\n"

    .line 71
    .line 72
    invoke-static {v2, v4, v3}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-eqz v2, :cond_0

    .line 77
    .line 78
    :catch_0
    :cond_3
    :goto_0
    sget-object p0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 79
    .line 80
    invoke-virtual {p0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    return-object p0
.end method

.method public static i(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, "\r\n\r\n"

    .line 2
    .line 3
    invoke-static {p0, v0, p0}, Lnq7;->C0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v0, "\n\n"

    .line 8
    .line 9
    invoke-static {p0, v0, p0}, Lnq7;->C0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    new-instance v0, Lcv4;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcv4;-><init>(Ljava/lang/CharSequence;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {v0}, Lcv4;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    const/4 v1, 0x0

    .line 23
    if-eqz p0, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0}, Lcv4;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    move-object v2, p0

    .line 30
    check-cast v2, Ljava/lang/String;

    .line 31
    .line 32
    const-string v3, "DAV:"

    .line 33
    .line 34
    const/4 v4, 0x1

    .line 35
    invoke-static {v2, v3, v4}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-nez v3, :cond_2

    .line 40
    .line 41
    const-string v3, "Nextcloud"

    .line 42
    .line 43
    invoke-static {v2, v3, v4}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-nez v3, :cond_2

    .line 48
    .line 49
    const-string v3, "ownCloud"

    .line 50
    .line 51
    invoke-static {v2, v3, v4}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-nez v3, :cond_2

    .line 56
    .line 57
    const-string v3, "SabreDAV"

    .line 58
    .line 59
    invoke-static {v2, v3, v4}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-eqz v2, :cond_0

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    move-object p0, v1

    .line 67
    :cond_2
    :goto_0
    check-cast p0, Ljava/lang/String;

    .line 68
    .line 69
    if-eqz p0, :cond_3

    .line 70
    .line 71
    invoke-static {p0}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    if-eqz p0, :cond_3

    .line 80
    .line 81
    const/16 v0, 0xa0

    .line 82
    .line 83
    invoke-static {v0, p0}, Lnq7;->G0(ILjava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    :cond_3
    if-nez v1, :cond_4

    .line 88
    .line 89
    const-string p0, ""

    .line 90
    .line 91
    return-object p0

    .line 92
    :cond_4
    return-object v1
.end method
