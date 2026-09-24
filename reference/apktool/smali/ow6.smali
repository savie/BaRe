.class public final Low6;
.super Lk23;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public static B(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Landroid/net/ssl/SSLSockets;->isSupportedSocket(Ljavax/net/ssl/SSLSocket;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    invoke-static {p0, v0}, Landroid/net/ssl/SSLSockets;->setUseSessionTickets(Ljavax/net/ssl/SSLSocket;Z)V

    .line 15
    .line 16
    .line 17
    :cond_0
    if-eqz p1, :cond_2

    .line 18
    .line 19
    invoke-static {p1}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocket;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :try_start_0
    new-instance v1, Ljavax/net/ssl/SNIHostName;

    .line 31
    .line 32
    invoke-direct {v1, p1}, Ljavax/net/ssl/SNIHostName;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-static {v1}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLParameters;->setServerNames(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    .line 42
    :catchall_0
    invoke-virtual {p0, v0}, Ljavax/net/ssl/SSLSocket;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V

    .line 43
    .line 44
    .line 45
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public final A()V
    .locals 7

    .line 1
    iget-object v0, p0, Lyi7;->b:Ljava/net/Socket;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v1, "plainSocket"

    .line 7
    .line 8
    const-class v2, Lk23;

    .line 9
    .line 10
    invoke-virtual {v2, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/4 v3, 0x1

    .line 15
    invoke-virtual {v1, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Low6;->D()Ljavax/net/ssl/SSLContext;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const/4 v1, 0x0

    .line 26
    const/4 v4, 0x0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const-string v0, "TLS"

    .line 31
    .line 32
    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-object v5, p0, Lk23;->V:Lpb8;

    .line 37
    .line 38
    new-array v6, v3, [Ljavax/net/ssl/TrustManager;

    .line 39
    .line 40
    aput-object v5, v6, v1

    .line 41
    .line 42
    invoke-virtual {v0, v4, v6, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getClientSessionContext()Ljavax/net/ssl/SSLSessionContext;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    const/16 v6, 0x20

    .line 50
    .line 51
    invoke-interface {v5, v6}, Ljavax/net/ssl/SSLSessionContext;->setSessionCacheSize(I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getClientSessionContext()Ljavax/net/ssl/SSLSessionContext;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    const/16 v6, 0x12c

    .line 59
    .line 60
    invoke-interface {v5, v6}, Ljavax/net/ssl/SSLSessionContext;->setSessionTimeout(I)V

    .line 61
    .line 62
    .line 63
    const-string v5, "context"

    .line 64
    .line 65
    invoke-virtual {v2, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v2, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    :goto_0
    invoke-virtual {p0}, Low6;->D()Ljavax/net/ssl/SSLContext;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    if-eqz v0, :cond_4

    .line 80
    .line 81
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    iget-object v2, p0, Lyi7;->b:Ljava/net/Socket;

    .line 86
    .line 87
    iget-object v3, p0, Lyi7;->c:Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {v2}, Ljava/net/Socket;->getPort()I

    .line 90
    .line 91
    .line 92
    move-result v5

    .line 93
    invoke-virtual {v0, v2, v3, v5, v1}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 101
    .line 102
    iget-boolean v2, p0, Lk23;->S:Z

    .line 103
    .line 104
    invoke-virtual {v0, v2}, Ljavax/net/ssl/SSLSocket;->setEnableSessionCreation(Z)V

    .line 105
    .line 106
    .line 107
    iget-boolean v2, p0, Lk23;->T:Z

    .line 108
    .line 109
    invoke-virtual {v0, v2}, Ljavax/net/ssl/SSLSocket;->setUseClientMode(Z)V

    .line 110
    .line 111
    .line 112
    if-eqz v2, :cond_1

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_1
    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->setNeedClientAuth(Z)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->setWantClientAuth(Z)V

    .line 119
    .line 120
    .line 121
    :goto_1
    iget-object v1, p0, Lk23;->U:[Ljava/lang/String;

    .line 122
    .line 123
    if-nez v1, :cond_2

    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_2
    invoke-virtual {v1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    move-object v4, v1

    .line 131
    check-cast v4, [Ljava/lang/String;

    .line 132
    .line 133
    :goto_2
    if-eqz v4, :cond_3

    .line 134
    .line 135
    invoke-virtual {v0, v4}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    :cond_3
    iget-object v1, p0, Lyi7;->c:Ljava/lang/String;

    .line 139
    .line 140
    invoke-static {v0, v1}, Low6;->B(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 144
    .line 145
    .line 146
    iput-object v0, p0, Lyi7;->b:Ljava/net/Socket;

    .line 147
    .line 148
    new-instance v1, Ljava/io/BufferedReader;

    .line 149
    .line 150
    new-instance v2, Ljava/io/InputStreamReader;

    .line 151
    .line 152
    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    iget-object v4, p0, Lz13;->o:Ljava/lang/String;

    .line 157
    .line 158
    invoke-direct {v2, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 162
    .line 163
    .line 164
    iput-object v1, p0, Lz13;->r:Ljava/io/BufferedReader;

    .line 165
    .line 166
    new-instance v1, Ljava/io/BufferedWriter;

    .line 167
    .line 168
    new-instance v2, Ljava/io/OutputStreamWriter;

    .line 169
    .line 170
    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    iget-object v3, p0, Lz13;->o:Ljava/lang/String;

    .line 175
    .line 176
    invoke-direct {v2, v0, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 180
    .line 181
    .line 182
    iput-object v1, p0, Lz13;->s:Ljava/io/BufferedWriter;

    .line 183
    .line 184
    return-void

    .line 185
    :cond_4
    const-string p0, "FTPS SSLContext was not initialized"

    .line 186
    .line 187
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    return-void
.end method

.method public final C(Ljavax/net/ssl/SSLContext;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)Lls4;
    .locals 8

    .line 1
    iget-object v0, p0, Lz13;->l:Ljava/util/ArrayList;

    .line 2
    .line 3
    iget v1, p0, Ld23;->u:I

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x0

    .line 8
    if-eq v1, v2, :cond_1

    .line 9
    .line 10
    :cond_0
    :goto_0
    move-object v0, v4

    .line 11
    goto/16 :goto_3

    .line 12
    .line 13
    :cond_1
    iget-object v1, p0, Lyi7;->b:Ljava/net/Socket;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    instance-of v1, v1, Ljava/net/Inet6Address;

    .line 20
    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    const/16 v2, 0x9

    .line 24
    .line 25
    invoke-virtual {p0, v2}, Lz13;->l(I)I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const/16 v5, 0xe5

    .line 30
    .line 31
    if-ne v2, v5, :cond_2

    .line 32
    .line 33
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {p0, v0}, Ld23;->o(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    if-nez v1, :cond_0

    .line 44
    .line 45
    const/16 v1, 0x17

    .line 46
    .line 47
    invoke-virtual {p0, v1}, Lz13;->l(I)I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    const/16 v2, 0xe3

    .line 52
    .line 53
    if-eq v1, v2, :cond_3

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {p0, v0}, Ld23;->p(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :goto_1
    new-instance v0, Ljava/net/Socket;

    .line 66
    .line 67
    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    .line 68
    .line 69
    .line 70
    iget-object v1, p0, Ld23;->v:Ljava/time/Duration;

    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/time/Duration;->toMillis()J

    .line 73
    .line 74
    .line 75
    move-result-wide v1

    .line 76
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    const-wide/16 v6, 0x0

    .line 81
    .line 82
    cmp-long v1, v1, v6

    .line 83
    .line 84
    if-ltz v1, :cond_4

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_4
    move-object v5, v4

    .line 88
    :goto_2
    if-eqz v5, :cond_6

    .line 89
    .line 90
    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    .line 91
    .line 92
    .line 93
    move-result-wide v1

    .line 94
    const-wide/32 v5, 0x7fffffff

    .line 95
    .line 96
    .line 97
    cmp-long v7, v1, v5

    .line 98
    .line 99
    if-lez v7, :cond_5

    .line 100
    .line 101
    move-wide v1, v5

    .line 102
    :cond_5
    long-to-int v1, v1

    .line 103
    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 104
    .line 105
    .line 106
    :cond_6
    new-instance v1, Ljava/net/InetSocketAddress;

    .line 107
    .line 108
    iget-object v2, p0, Ld23;->x:Ljava/lang/String;

    .line 109
    .line 110
    iget v5, p0, Ld23;->w:I

    .line 111
    .line 112
    invoke-direct {v1, v2, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 113
    .line 114
    .line 115
    iget v2, p0, Lyi7;->h:I

    .line 116
    .line 117
    invoke-virtual {v0, v1, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0, v0}, Lyi7;->f(Ljava/net/Socket;)Z

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    if-nez v1, :cond_7

    .line 125
    .line 126
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 127
    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_7
    :goto_3
    if-nez v0, :cond_8

    .line 131
    .line 132
    goto :goto_5

    .line 133
    :cond_8
    const/4 v1, 0x1

    .line 134
    if-nez p6, :cond_a

    .line 135
    .line 136
    :try_start_0
    invoke-virtual {p0, p4, p5}, Lk23;->m(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    invoke-static {v2}, Lk55;->y(I)Z

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    if-eqz v2, :cond_9

    .line 145
    .line 146
    move v2, v1

    .line 147
    goto :goto_4

    .line 148
    :cond_9
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 149
    .line 150
    .line 151
    move v2, v3

    .line 152
    :goto_4
    if-nez v2, :cond_a

    .line 153
    .line 154
    :goto_5
    return-object v4

    .line 155
    :cond_a
    invoke-virtual {p1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    new-instance v2, Lww2;

    .line 160
    .line 161
    invoke-direct {v2, v0, p3}, Lww2;-><init>(Ljava/net/Socket;I)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1, v2, p2, p3, v3}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 169
    .line 170
    .line 171
    check-cast p1, Ljavax/net/ssl/SSLSocket;

    .line 172
    .line 173
    iget-boolean p3, p0, Lk23;->T:Z

    .line 174
    .line 175
    invoke-virtual {p1, p3}, Ljavax/net/ssl/SSLSocket;->setUseClientMode(Z)V

    .line 176
    .line 177
    .line 178
    iget-boolean v2, p0, Lk23;->S:Z

    .line 179
    .line 180
    invoke-virtual {p1, v2}, Ljavax/net/ssl/SSLSocket;->setEnableSessionCreation(Z)V

    .line 181
    .line 182
    .line 183
    if-nez p3, :cond_b

    .line 184
    .line 185
    invoke-virtual {p1, v3}, Ljavax/net/ssl/SSLSocket;->setNeedClientAuth(Z)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p1, v3}, Ljavax/net/ssl/SSLSocket;->setWantClientAuth(Z)V

    .line 189
    .line 190
    .line 191
    :cond_b
    iget-object p3, p0, Lk23;->U:[Ljava/lang/String;

    .line 192
    .line 193
    if-nez p3, :cond_c

    .line 194
    .line 195
    move-object p3, v4

    .line 196
    goto :goto_6

    .line 197
    :cond_c
    invoke-virtual {p3}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object p3

    .line 201
    check-cast p3, [Ljava/lang/String;

    .line 202
    .line 203
    :goto_6
    if-eqz p3, :cond_d

    .line 204
    .line 205
    invoke-virtual {p1, p3}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    :cond_d
    invoke-static {p1, p2}, Low6;->B(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 212
    .line 213
    .line 214
    if-eqz p6, :cond_f

    .line 215
    .line 216
    invoke-virtual {p0, p4, p5}, Lk23;->m(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    .line 218
    .line 219
    move-result p0

    .line 220
    invoke-static {p0}, Lk55;->y(I)Z

    .line 221
    .line 222
    .line 223
    move-result p0

    .line 224
    if-eqz p0, :cond_e

    .line 225
    .line 226
    move v3, v1

    .line 227
    goto :goto_7

    .line 228
    :cond_e
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 229
    .line 230
    .line 231
    :goto_7
    if-nez v3, :cond_f

    .line 232
    .line 233
    new-instance p0, Lls4;

    .line 234
    .line 235
    invoke-direct {p0, p1, v0}, Lls4;-><init>(Ljavax/net/ssl/SSLSocket;Ljava/net/Socket;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {p0}, Lls4;->close()V

    .line 239
    .line 240
    .line 241
    return-object v4

    .line 242
    :catch_0
    move-exception p0

    .line 243
    goto :goto_8

    .line 244
    :cond_f
    new-instance p0, Lls4;

    .line 245
    .line 246
    invoke-direct {p0, p1, v0}, Lls4;-><init>(Ljavax/net/ssl/SSLSocket;Ljava/net/Socket;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    .line 248
    .line 249
    return-object p0

    .line 250
    :goto_8
    :try_start_1
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 251
    .line 252
    .line 253
    :catchall_0
    throw p0
.end method

.method public final D()Ljavax/net/ssl/SSLContext;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-class v1, Lk23;

    .line 3
    .line 4
    const-string v2, "context"

    .line 5
    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    instance-of v1, p0, Ljavax/net/ssl/SSLContext;

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    check-cast p0, Ljavax/net/ssl/SSLContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move-object p0, v0

    .line 28
    goto :goto_1

    .line 29
    :goto_0
    new-instance v1, Lbn6;

    .line 30
    .line 31
    invoke-direct {v1, p0}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 32
    .line 33
    .line 34
    move-object p0, v1

    .line 35
    :goto_1
    nop

    .line 36
    instance-of v1, p0, Lbn6;

    .line 37
    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_1
    move-object v0, p0

    .line 42
    :goto_2
    check-cast v0, Ljavax/net/ssl/SSLContext;

    .line 43
    .line 44
    return-object v0
.end method

.method public final n(Ljava/lang/String;Ljava/lang/String;)Ljava/net/Socket;
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Ld23;->u:I

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    invoke-super {p0, p1, p2}, Lk23;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/net/Socket;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    invoke-virtual {p0}, Low6;->D()Ljavax/net/ssl/SSLContext;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    invoke-super {p0, p1, p2}, Lk23;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/net/Socket;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    :cond_1
    iget-object v0, p0, Lyi7;->b:Ljava/net/Socket;

    .line 26
    .line 27
    instance-of v2, v0, Ljavax/net/ssl/SSLSocket;

    .line 28
    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    const/4 v0, 0x0

    .line 35
    :goto_0
    if-nez v0, :cond_3

    .line 36
    .line 37
    invoke-super {p0, p1, p2}, Lk23;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/net/Socket;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0

    .line 42
    :cond_3
    iget-object v2, p0, Lyi7;->c:Ljava/lang/String;

    .line 43
    .line 44
    if-nez v2, :cond_4

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    :cond_4
    invoke-virtual {v0}, Ljava/net/Socket;->getPort()I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    const/4 v6, 0x0

    .line 62
    move-object v0, p0

    .line 63
    move-object v4, p1

    .line 64
    move-object v5, p2

    .line 65
    invoke-virtual/range {v0 .. v6}, Low6;->C(Ljavax/net/ssl/SSLContext;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)Lls4;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    if-nez p0, :cond_5

    .line 70
    .line 71
    const/4 v6, 0x1

    .line 72
    invoke-virtual/range {v0 .. v6}, Low6;->C(Ljavax/net/ssl/SSLContext;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)Lls4;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    :cond_5
    return-object p0
.end method
