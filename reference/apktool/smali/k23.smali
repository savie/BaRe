.class public abstract Lk23;
.super Ld23;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final W:[Ljava/lang/String;


# instance fields
.field public final P:Z

.field public final Q:Ljava/lang/String;

.field public final R:Ljava/lang/String;

.field public final S:Z

.field public final T:Z

.field public U:[Ljava/lang/String;

.field public V:Lpb8;

.field private context:Ljavax/net/ssl/SSLContext;

.field private plainSocket:Ljava/net/Socket;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-string v0, "S"

    .line 2
    .line 3
    const-string v1, "P"

    .line 4
    .line 5
    const-string v2, "C"

    .line 6
    .line 7
    const-string v3, "E"

    .line 8
    .line 9
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Lk23;->W:[Ljava/lang/String;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ld23;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "TLS"

    .line 5
    .line 6
    iput-object v0, p0, Lk23;->R:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Lk23;->S:Z

    .line 10
    .line 11
    iput-boolean v1, p0, Lk23;->T:Z

    .line 12
    .line 13
    sget-object v1, Lz85;->e:Lpb8;

    .line 14
    .line 15
    iput-object v1, p0, Lk23;->V:Lpb8;

    .line 16
    .line 17
    iput-object v0, p0, Lk23;->Q:Ljava/lang/String;

    .line 18
    .line 19
    iput-boolean p1, p0, Lk23;->P:Z

    .line 20
    .line 21
    return-void
.end method

.method public static y(Ljava/net/Socket;)V
    .locals 7

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/io/Closeable;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p0, v0, v1

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    aput-object v2, v0, p0

    .line 10
    .line 11
    sget p0, Ln84;->a:I

    .line 12
    .line 13
    new-instance p0, Lc6;

    .line 14
    .line 15
    const/16 v3, 0x9

    .line 16
    .line 17
    invoke-direct {p0, v3}, Lc6;-><init>(I)V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0}, Li84;->a(Ljava/util/stream/Stream;)Li84;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    new-instance v3, Lj84;

    .line 29
    .line 30
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    new-instance v4, Ljava/util/concurrent/atomic/AtomicReference;

    .line 37
    .line 38
    invoke-direct {v4}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 39
    .line 40
    .line 41
    new-instance v5, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 42
    .line 43
    invoke-direct {v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 44
    .line 45
    .line 46
    iget-object v0, v0, Li84;->a:Ljava/util/stream/Stream;

    .line 47
    .line 48
    new-instance v6, Lh84;

    .line 49
    .line 50
    invoke-direct {v6, p0, v4, v3, v5}, Lh84;-><init>(Lc6;Ljava/util/concurrent/atomic/AtomicReference;Lj84;Ljava/util/concurrent/atomic/AtomicInteger;)V

    .line 51
    .line 52
    .line 53
    invoke-interface {v0, v6}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    check-cast p0, Ljava/util/List;

    .line 61
    .line 62
    if-eqz p0, :cond_0

    .line 63
    .line 64
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    :cond_0
    if-nez v1, :cond_1

    .line 69
    .line 70
    return-void

    .line 71
    :cond_1
    new-instance v0, Ld84;

    .line 72
    .line 73
    invoke-direct {v0, v2, p0}, Ld84;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 74
    .line 75
    .line 76
    throw v0
.end method


# virtual methods
.method public abstract A()V
.end method

.method public final b()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lk23;->P:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lyi7;->b:Ljava/net/Socket;

    .line 6
    .line 7
    iget v2, p0, Lyi7;->a:I

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lk23;->A()V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-super {p0}, Ld23;->b()V

    .line 16
    .line 17
    .line 18
    if-nez v0, :cond_3

    .line 19
    .line 20
    const-string v0, "AUTH"

    .line 21
    .line 22
    iget-object v1, p0, Lk23;->R:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {p0, v0, v1}, Lk23;->m(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const/16 v1, 0x14e

    .line 29
    .line 30
    if-ne v1, v0, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/16 v1, 0xea

    .line 34
    .line 35
    if-ne v1, v0, :cond_2

    .line 36
    .line 37
    :goto_0
    invoke-virtual {p0}, Lk23;->A()V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_2
    new-instance v0, Ljavax/net/ssl/SSLException;

    .line 42
    .line 43
    invoke-virtual {p0}, Lz13;->i()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-direct {v0, p0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw v0

    .line 51
    :cond_3
    return-void
.end method

.method public final m(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Lz13;->m(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const-string v0, "CCC"

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    const/16 p1, 0xc8

    .line 14
    .line 15
    if-ne p1, p2, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lyi7;->b:Ljava/net/Socket;

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/net/Socket;->close()V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lk23;->plainSocket:Ljava/net/Socket;

    .line 23
    .line 24
    iput-object p1, p0, Lyi7;->b:Ljava/net/Socket;

    .line 25
    .line 26
    new-instance p1, Ljava/io/BufferedReader;

    .line 27
    .line 28
    new-instance v0, Ljava/io/InputStreamReader;

    .line 29
    .line 30
    iget-object v1, p0, Lyi7;->b:Ljava/net/Socket;

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iget-object v2, p0, Lz13;->o:Ljava/lang/String;

    .line 37
    .line 38
    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-direct {p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 42
    .line 43
    .line 44
    iput-object p1, p0, Lz13;->r:Ljava/io/BufferedReader;

    .line 45
    .line 46
    new-instance p1, Ljava/io/BufferedWriter;

    .line 47
    .line 48
    new-instance v0, Ljava/io/OutputStreamWriter;

    .line 49
    .line 50
    iget-object v1, p0, Lyi7;->b:Ljava/net/Socket;

    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    iget-object v2, p0, Lz13;->o:Ljava/lang/String;

    .line 57
    .line 58
    invoke-direct {v0, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-direct {p1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 62
    .line 63
    .line 64
    iput-object p1, p0, Lz13;->s:Ljava/io/BufferedWriter;

    .line 65
    .line 66
    return p2

    .line 67
    :cond_0
    new-instance p1, Ljavax/net/ssl/SSLException;

    .line 68
    .line 69
    invoke-virtual {p0}, Lz13;->i()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-direct {p1, p0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw p1

    .line 77
    :cond_1
    return p2
.end method

.method public n(Ljava/lang/String;Ljava/lang/String;)Ljava/net/Socket;
    .locals 7

    .line 1
    iget-object v0, p0, Lz13;->l:Ljava/util/ArrayList;

    .line 2
    .line 3
    iget v1, p0, Ld23;->u:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 v4, 0x2

    .line 10
    if-eq v1, v4, :cond_0

    .line 11
    .line 12
    goto/16 :goto_6

    .line 13
    .line 14
    :cond_0
    iget-object v1, p0, Lyi7;->b:Ljava/net/Socket;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    instance-of v1, v1, Ljava/net/Inet6Address;

    .line 21
    .line 22
    iget-object v4, p0, Ld23;->v:Ljava/time/Duration;

    .line 23
    .line 24
    invoke-static {v4}, Lz85;->F(Ljava/time/Duration;)I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    iget v5, p0, Ld23;->u:I

    .line 29
    .line 30
    if-nez v5, :cond_7

    .line 31
    .line 32
    iget-object v0, p0, Lyi7;->g:Ljavax/net/ServerSocketFactory;

    .line 33
    .line 34
    iget-object v5, p0, Lyi7;->b:Ljava/net/Socket;

    .line 35
    .line 36
    invoke-virtual {v5}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    const/4 v6, 0x1

    .line 41
    invoke-virtual {v0, v2, v6, v5}, Ljavax/net/ServerSocketFactory;->createServerSocket(IILjava/net/InetAddress;)Ljava/net/ServerSocket;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget-object v5, p0, Lyi7;->b:Ljava/net/Socket;

    .line 46
    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    :try_start_0
    invoke-virtual {v5}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    invoke-virtual {p0, v1, v5}, Lz13;->g(Ljava/net/InetAddress;I)I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    invoke-static {v1}, Lk55;->x(I)Z

    .line 62
    .line 63
    .line 64
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    if-nez v1, :cond_2

    .line 66
    .line 67
    :goto_0
    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    .line 68
    .line 69
    .line 70
    goto/16 :goto_6

    .line 71
    .line 72
    :catchall_0
    move-exception p0

    .line 73
    goto :goto_1

    .line 74
    :cond_1
    :try_start_1
    invoke-virtual {v5}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    invoke-virtual {p0, v1, v5}, Lz13;->j(Ljava/net/InetAddress;I)I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    invoke-static {v1}, Lk55;->x(I)Z

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-nez v1, :cond_2

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_2
    invoke-virtual {p0, p1, p2}, Lk23;->m(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    invoke-static {p1}, Lk55;->y(I)Z

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    if-nez p1, :cond_3

    .line 102
    .line 103
    if-eqz v0, :cond_e

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_3
    if-ltz v4, :cond_4

    .line 107
    .line 108
    invoke-virtual {v0, v4}, Ljava/net/ServerSocket;->setSoTimeout(I)V

    .line 109
    .line 110
    .line 111
    :cond_4
    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    if-ltz v4, :cond_5

    .line 116
    .line 117
    invoke-virtual {p1, v4}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    .line 119
    .line 120
    :cond_5
    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    .line 121
    .line 122
    .line 123
    goto :goto_4

    .line 124
    :goto_1
    if-eqz v0, :cond_6

    .line 125
    .line 126
    :try_start_2
    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 127
    .line 128
    .line 129
    goto :goto_2

    .line 130
    :catchall_1
    move-exception p1

    .line 131
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 132
    .line 133
    .line 134
    :cond_6
    :goto_2
    throw p0

    .line 135
    :cond_7
    if-eqz v1, :cond_8

    .line 136
    .line 137
    const/16 v5, 0x9

    .line 138
    .line 139
    invoke-virtual {p0, v5}, Lz13;->l(I)I

    .line 140
    .line 141
    .line 142
    move-result v5

    .line 143
    const/16 v6, 0xe5

    .line 144
    .line 145
    if-ne v5, v6, :cond_8

    .line 146
    .line 147
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    check-cast v0, Ljava/lang/String;

    .line 152
    .line 153
    invoke-virtual {p0, v0}, Ld23;->o(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    goto :goto_3

    .line 157
    :cond_8
    if-nez v1, :cond_e

    .line 158
    .line 159
    const/16 v1, 0x17

    .line 160
    .line 161
    invoke-virtual {p0, v1}, Lz13;->l(I)I

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    const/16 v5, 0xe3

    .line 166
    .line 167
    if-eq v1, v5, :cond_9

    .line 168
    .line 169
    goto :goto_6

    .line 170
    :cond_9
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    check-cast v0, Ljava/lang/String;

    .line 175
    .line 176
    invoke-virtual {p0, v0}, Ld23;->p(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    :goto_3
    iget-object v0, p0, Lyi7;->f:Ljavax/net/SocketFactory;

    .line 180
    .line 181
    invoke-virtual {v0}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    if-ltz v4, :cond_a

    .line 186
    .line 187
    invoke-virtual {v0, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 188
    .line 189
    .line 190
    :cond_a
    new-instance v1, Ljava/net/InetSocketAddress;

    .line 191
    .line 192
    iget-object v4, p0, Ld23;->x:Ljava/lang/String;

    .line 193
    .line 194
    iget v5, p0, Ld23;->w:I

    .line 195
    .line 196
    invoke-direct {v1, v4, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 197
    .line 198
    .line 199
    iget v4, p0, Lyi7;->h:I

    .line 200
    .line 201
    invoke-virtual {v0, v1, v4}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p0, p1, p2}, Lk23;->m(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    .line 206
    .line 207
    move-result p1

    .line 208
    invoke-static {p1}, Lk55;->y(I)Z

    .line 209
    .line 210
    .line 211
    move-result p1

    .line 212
    if-nez p1, :cond_b

    .line 213
    .line 214
    invoke-static {v0}, Lk23;->y(Ljava/net/Socket;)V

    .line 215
    .line 216
    .line 217
    goto :goto_6

    .line 218
    :cond_b
    move-object p1, v0

    .line 219
    :goto_4
    iget-boolean p2, p0, Ld23;->A:Z

    .line 220
    .line 221
    if-eqz p2, :cond_d

    .line 222
    .line 223
    invoke-virtual {p0, p1}, Lyi7;->f(Ljava/net/Socket;)Z

    .line 224
    .line 225
    .line 226
    move-result p2

    .line 227
    if-eqz p2, :cond_c

    .line 228
    .line 229
    goto :goto_5

    .line 230
    :cond_c
    invoke-virtual {p1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    .line 231
    .line 232
    .line 233
    move-result-object p2

    .line 234
    invoke-static {p1}, Lk23;->y(Ljava/net/Socket;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    iget-object p0, p0, Lyi7;->b:Ljava/net/Socket;

    .line 242
    .line 243
    invoke-virtual {p0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    .line 244
    .line 245
    .line 246
    move-result-object p0

    .line 247
    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object p0

    .line 251
    const-string p2, "Host attempting data connection "

    .line 252
    .line 253
    const-string v0, " is not same as server "

    .line 254
    .line 255
    invoke-static {p2, p1, v0, p0}, Lq;->k(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 256
    .line 257
    .line 258
    return-object v3

    .line 259
    :cond_d
    :goto_5
    move-object v3, p1

    .line 260
    :cond_e
    :goto_6
    nop

    .line 261
    instance-of p1, v3, Ljavax/net/ssl/SSLSocket;

    .line 262
    .line 263
    if-eqz p1, :cond_11

    .line 264
    .line 265
    move-object p1, v3

    .line 266
    check-cast p1, Ljavax/net/ssl/SSLSocket;

    .line 267
    .line 268
    iget-boolean p2, p0, Lk23;->T:Z

    .line 269
    .line 270
    invoke-virtual {p1, p2}, Ljavax/net/ssl/SSLSocket;->setUseClientMode(Z)V

    .line 271
    .line 272
    .line 273
    iget-boolean v0, p0, Lk23;->S:Z

    .line 274
    .line 275
    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLSocket;->setEnableSessionCreation(Z)V

    .line 276
    .line 277
    .line 278
    if-nez p2, :cond_f

    .line 279
    .line 280
    invoke-virtual {p1, v2}, Ljavax/net/ssl/SSLSocket;->setNeedClientAuth(Z)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {p1, v2}, Ljavax/net/ssl/SSLSocket;->setWantClientAuth(Z)V

    .line 284
    .line 285
    .line 286
    :cond_f
    iget-object p0, p0, Lk23;->U:[Ljava/lang/String;

    .line 287
    .line 288
    if-eqz p0, :cond_10

    .line 289
    .line 290
    invoke-virtual {p1, p0}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    :cond_10
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 294
    .line 295
    .line 296
    :cond_11
    return-object v3
.end method

.method public final q()V
    .locals 1

    .line 1
    invoke-super {p0}, Ld23;->q()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lk23;->plainSocket:Ljava/net/Socket;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    .line 9
    .line 10
    .line 11
    :cond_0
    sget-object v0, Lyi7;->i:Ljavax/net/SocketFactory;

    .line 12
    .line 13
    iput-object v0, p0, Lyi7;->f:Ljavax/net/SocketFactory;

    .line 14
    .line 15
    sget-object v0, Lyi7;->j:Ljavax/net/ServerSocketFactory;

    .line 16
    .line 17
    iput-object v0, p0, Lyi7;->g:Ljavax/net/ServerSocketFactory;

    .line 18
    .line 19
    return-void
.end method

.method public final z()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    const/4 v2, 0x4

    .line 4
    if-ge v1, v2, :cond_5

    .line 5
    .line 6
    sget-object v2, Lk23;->W:[Ljava/lang/String;

    .line 7
    .line 8
    aget-object v2, v2, v1

    .line 9
    .line 10
    const-string v3, "P"

    .line 11
    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_4

    .line 17
    .line 18
    const-string v1, "PROT"

    .line 19
    .line 20
    invoke-virtual {p0, v1, v3}, Lk23;->m(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    const/16 v2, 0xc8

    .line 25
    .line 26
    if-ne v2, v1, :cond_3

    .line 27
    .line 28
    const-string v1, "C"

    .line 29
    .line 30
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    sget-object v0, Lyi7;->i:Ljavax/net/SocketFactory;

    .line 37
    .line 38
    iput-object v0, p0, Lyi7;->f:Ljavax/net/SocketFactory;

    .line 39
    .line 40
    sget-object v0, Lyi7;->j:Ljavax/net/ServerSocketFactory;

    .line 41
    .line 42
    iput-object v0, p0, Lyi7;->g:Ljavax/net/ServerSocketFactory;

    .line 43
    .line 44
    return-void

    .line 45
    :cond_0
    new-instance v1, Lm23;

    .line 46
    .line 47
    iget-object v2, p0, Lk23;->context:Ljavax/net/ssl/SSLContext;

    .line 48
    .line 49
    invoke-direct {v1, v2}, Lm23;-><init>(Ljavax/net/ssl/SSLContext;)V

    .line 50
    .line 51
    .line 52
    iput-object v1, p0, Lyi7;->f:Ljavax/net/SocketFactory;

    .line 53
    .line 54
    new-instance v1, Ll23;

    .line 55
    .line 56
    iget-object v2, p0, Lk23;->context:Ljavax/net/ssl/SSLContext;

    .line 57
    .line 58
    invoke-direct {v1, v2}, Ll23;-><init>(Ljavax/net/ssl/SSLContext;)V

    .line 59
    .line 60
    .line 61
    iput-object v1, p0, Lyi7;->g:Ljavax/net/ServerSocketFactory;

    .line 62
    .line 63
    iget-object v1, p0, Lk23;->context:Ljavax/net/ssl/SSLContext;

    .line 64
    .line 65
    if-nez v1, :cond_2

    .line 66
    .line 67
    iget-object v1, p0, Lk23;->Q:Ljava/lang/String;

    .line 68
    .line 69
    iget-object v2, p0, Lk23;->V:Lpb8;

    .line 70
    .line 71
    const/4 v3, 0x0

    .line 72
    if-nez v2, :cond_1

    .line 73
    .line 74
    move-object v4, v3

    .line 75
    goto :goto_1

    .line 76
    :cond_1
    const/4 v4, 0x1

    .line 77
    new-array v4, v4, [Ljavax/net/ssl/TrustManager;

    .line 78
    .line 79
    aput-object v2, v4, v0

    .line 80
    .line 81
    :goto_1
    :try_start_0
    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {v0, v3, v4, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .line 87
    .line 88
    iput-object v0, p0, Lk23;->context:Ljavax/net/ssl/SSLContext;

    .line 89
    .line 90
    return-void

    .line 91
    :catch_0
    move-exception p0

    .line 92
    new-instance v0, Ljava/io/IOException;

    .line 93
    .line 94
    const-string v1, "Could not initialize SSL context"

    .line 95
    .line 96
    invoke-direct {v0, v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 97
    .line 98
    .line 99
    throw v0

    .line 100
    :cond_2
    return-void

    .line 101
    :cond_3
    new-instance v0, Ljavax/net/ssl/SSLException;

    .line 102
    .line 103
    invoke-virtual {p0}, Lz13;->i()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    invoke-direct {v0, p0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    throw v0

    .line 111
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_5
    invoke-static {}, Lc6;->b()V

    .line 115
    .line 116
    .line 117
    return-void
.end method
