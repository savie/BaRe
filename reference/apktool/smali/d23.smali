.class public Ld23;
.super Lz13;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lor1;


# static fields
.field public static final O:Ljava/util/regex/Pattern;


# instance fields
.field public final A:Z

.field public final B:Lie2;

.field public C:I

.field public D:Z

.field public E:Ljava/lang/String;

.field public F:Lh23;

.field public G:Le23;

.field public H:Lq23;

.field public I:Ljava/time/Duration;

.field public J:Ljava/time/Duration;

.field public final K:Lfu;

.field public L:Z

.field public M:Ljava/util/HashMap;

.field public N:Z

.field public u:I

.field public v:Ljava/time/Duration;

.field public w:I

.field public x:Ljava/lang/String;

.field public y:I

.field public z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "(\\d{1,3},\\d{1,3},\\d{1,3},\\d{1,3}),(\\d{1,3}),(\\d{1,3})"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Ld23;->O:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const v0, 0xea60

    .line 5
    .line 6
    .line 7
    iput v0, p0, Lyi7;->h:I

    .line 8
    .line 9
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lyi7;->b:Ljava/net/Socket;

    .line 14
    .line 15
    iput-object v0, p0, Lyi7;->c:Ljava/lang/String;

    .line 16
    .line 17
    iput-object v0, p0, Lyi7;->d:Ljava/io/InputStream;

    .line 18
    .line 19
    iput-object v0, p0, Lyi7;->e:Ljava/io/OutputStream;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    iput v1, p0, Lyi7;->a:I

    .line 23
    .line 24
    sget-object v2, Lyi7;->i:Ljavax/net/SocketFactory;

    .line 25
    .line 26
    iput-object v2, p0, Lyi7;->f:Ljavax/net/SocketFactory;

    .line 27
    .line 28
    sget-object v2, Lyi7;->j:Ljavax/net/ServerSocketFactory;

    .line 29
    .line 30
    iput-object v2, p0, Lyi7;->g:Ljavax/net/ServerSocketFactory;

    .line 31
    .line 32
    const/4 v2, 0x1

    .line 33
    iput-boolean v2, p0, Lz13;->q:Z

    .line 34
    .line 35
    new-instance v3, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v3, p0, Lz13;->l:Ljava/util/ArrayList;

    .line 41
    .line 42
    iput-boolean v1, p0, Lz13;->m:Z

    .line 43
    .line 44
    iput-object v0, p0, Lz13;->n:Ljava/lang/String;

    .line 45
    .line 46
    sget-object v0, Lz13;->t:Ljava/lang/String;

    .line 47
    .line 48
    iput-object v0, p0, Lz13;->o:Ljava/lang/String;

    .line 49
    .line 50
    new-instance v0, Lba6;

    .line 51
    .line 52
    invoke-direct {v0, p0}, Lba6;-><init>(Ld23;)V

    .line 53
    .line 54
    .line 55
    iput-object v0, p0, Lz13;->p:Lba6;

    .line 56
    .line 57
    const-wide/16 v0, -0x1

    .line 58
    .line 59
    invoke-static {v0, v1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iput-object v0, p0, Ld23;->v:Ljava/time/Duration;

    .line 64
    .line 65
    new-instance v0, Ljava/util/Random;

    .line 66
    .line 67
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 68
    .line 69
    .line 70
    iput-boolean v2, p0, Ld23;->A:Z

    .line 71
    .line 72
    new-instance v0, Lie2;

    .line 73
    .line 74
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 75
    .line 76
    .line 77
    iput-object v0, p0, Ld23;->B:Lie2;

    .line 78
    .line 79
    sget-object v0, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    .line 80
    .line 81
    iput-object v0, p0, Ld23;->I:Ljava/time/Duration;

    .line 82
    .line 83
    const-wide/16 v0, 0x1

    .line 84
    .line 85
    invoke-static {v0, v1}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    iput-object v0, p0, Ld23;->J:Ljava/time/Duration;

    .line 90
    .line 91
    new-instance v0, Lfu;

    .line 92
    .line 93
    invoke-direct {v0, p0}, Lfu;-><init>(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    iput-object v0, p0, Ld23;->K:Lfu;

    .line 97
    .line 98
    const-string v0, "org.apache.commons.net.ftp.ipAddressFromPasvResponse"

    .line 99
    .line 100
    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    iput-boolean v0, p0, Ld23;->N:Z

    .line 105
    .line 106
    invoke-virtual {p0}, Ld23;->s()V

    .line 107
    .line 108
    .line 109
    return-void
.end method


# virtual methods
.method public final a(Le23;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld23;->G:Le23;

    .line 2
    .line 3
    return-void
.end method

.method public b()V
    .locals 8

    .line 1
    iget-object v0, p0, Lz13;->l:Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object v1, p0, Lyi7;->b:Ljava/net/Socket;

    .line 4
    .line 5
    iget v2, p0, Lyi7;->a:I

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lyi7;->b:Ljava/net/Socket;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iput-object v1, p0, Lyi7;->d:Ljava/io/InputStream;

    .line 17
    .line 18
    iget-object v1, p0, Lyi7;->b:Ljava/net/Socket;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iput-object v1, p0, Lyi7;->e:Ljava/io/OutputStream;

    .line 25
    .line 26
    new-instance v1, Lez0;

    .line 27
    .line 28
    new-instance v2, Ljava/io/InputStreamReader;

    .line 29
    .line 30
    iget-object v3, p0, Lyi7;->d:Ljava/io/InputStream;

    .line 31
    .line 32
    iget-object v4, p0, Lz13;->o:Ljava/lang/String;

    .line 33
    .line 34
    invoke-direct {v2, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 38
    .line 39
    .line 40
    iput-object v1, p0, Lz13;->r:Ljava/io/BufferedReader;

    .line 41
    .line 42
    new-instance v1, Ljava/io/BufferedWriter;

    .line 43
    .line 44
    new-instance v2, Ljava/io/OutputStreamWriter;

    .line 45
    .line 46
    iget-object v3, p0, Lyi7;->e:Ljava/io/OutputStream;

    .line 47
    .line 48
    iget-object v4, p0, Lz13;->o:Ljava/lang/String;

    .line 49
    .line 50
    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 54
    .line 55
    .line 56
    iput-object v1, p0, Lz13;->s:Ljava/io/BufferedWriter;

    .line 57
    .line 58
    iget v1, p0, Lyi7;->h:I

    .line 59
    .line 60
    const/4 v2, 0x1

    .line 61
    if-lez v1, :cond_1

    .line 62
    .line 63
    iget-object v1, p0, Lyi7;->b:Ljava/net/Socket;

    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/net/Socket;->getSoTimeout()I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    iget-object v3, p0, Lyi7;->b:Ljava/net/Socket;

    .line 70
    .line 71
    iget v4, p0, Lyi7;->h:I

    .line 72
    .line 73
    invoke-virtual {v3, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 74
    .line 75
    .line 76
    :try_start_0
    invoke-virtual {p0, v2}, Lz13;->h(Z)I

    .line 77
    .line 78
    .line 79
    iget v3, p0, Lz13;->k:I

    .line 80
    .line 81
    invoke-static {v3}, Lk55;->y(I)Z

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    if-eqz v3, :cond_0

    .line 86
    .line 87
    invoke-virtual {p0, v2}, Lz13;->h(Z)I
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :catchall_0
    move-exception v0

    .line 92
    goto :goto_2

    .line 93
    :catch_0
    move-exception v0

    .line 94
    goto :goto_1

    .line 95
    :cond_0
    :goto_0
    iget-object v3, p0, Lyi7;->b:Ljava/net/Socket;

    .line 96
    .line 97
    invoke-virtual {v3, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 98
    .line 99
    .line 100
    goto :goto_3

    .line 101
    :goto_1
    :try_start_1
    new-instance v2, Ljava/io/IOException;

    .line 102
    .line 103
    const-string v3, "Timed out waiting for initial connect reply"

    .line 104
    .line 105
    invoke-direct {v2, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 106
    .line 107
    .line 108
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    :goto_2
    iget-object p0, p0, Lyi7;->b:Ljava/net/Socket;

    .line 110
    .line 111
    invoke-virtual {p0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 112
    .line 113
    .line 114
    throw v0

    .line 115
    :cond_1
    invoke-virtual {p0, v2}, Lz13;->h(Z)I

    .line 116
    .line 117
    .line 118
    iget v1, p0, Lz13;->k:I

    .line 119
    .line 120
    invoke-static {v1}, Lk55;->y(I)Z

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    if-eqz v1, :cond_2

    .line 125
    .line 126
    invoke-virtual {p0, v2}, Lz13;->h(Z)I

    .line 127
    .line 128
    .line 129
    :cond_2
    :goto_3
    invoke-virtual {p0}, Ld23;->s()V

    .line 130
    .line 131
    .line 132
    iget-boolean v1, p0, Ld23;->L:Z

    .line 133
    .line 134
    if-eqz v1, :cond_6

    .line 135
    .line 136
    new-instance v1, Ljava/util/ArrayList;

    .line 137
    .line 138
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 139
    .line 140
    .line 141
    iget v3, p0, Lz13;->k:I

    .line 142
    .line 143
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 144
    .line 145
    const-string v5, "UTF8"

    .line 146
    .line 147
    invoke-virtual {p0, v5}, Ld23;->r(Ljava/lang/String;)Z

    .line 148
    .line 149
    .line 150
    move-result v5

    .line 151
    if-nez v5, :cond_3

    .line 152
    .line 153
    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v5

    .line 157
    invoke-virtual {p0, v5}, Ld23;->r(Ljava/lang/String;)Z

    .line 158
    .line 159
    .line 160
    move-result v5

    .line 161
    if-eqz v5, :cond_5

    .line 162
    .line 163
    :cond_3
    sget v5, Lg51;->a:I

    .line 164
    .line 165
    if-nez v4, :cond_4

    .line 166
    .line 167
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 168
    .line 169
    .line 170
    move-result-object v4

    .line 171
    :cond_4
    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v4

    .line 175
    iput-object v4, p0, Lz13;->o:Ljava/lang/String;

    .line 176
    .line 177
    new-instance v4, Lez0;

    .line 178
    .line 179
    new-instance v5, Ljava/io/InputStreamReader;

    .line 180
    .line 181
    iget-object v6, p0, Lyi7;->d:Ljava/io/InputStream;

    .line 182
    .line 183
    iget-object v7, p0, Lz13;->o:Ljava/lang/String;

    .line 184
    .line 185
    invoke-direct {v5, v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 189
    .line 190
    .line 191
    iput-object v4, p0, Lz13;->r:Ljava/io/BufferedReader;

    .line 192
    .line 193
    new-instance v4, Ljava/io/BufferedWriter;

    .line 194
    .line 195
    new-instance v5, Ljava/io/OutputStreamWriter;

    .line 196
    .line 197
    iget-object v6, p0, Lyi7;->e:Ljava/io/OutputStream;

    .line 198
    .line 199
    iget-object v7, p0, Lz13;->o:Ljava/lang/String;

    .line 200
    .line 201
    invoke-direct {v5, v6, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    invoke-direct {v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 205
    .line 206
    .line 207
    iput-object v4, p0, Lz13;->s:Ljava/io/BufferedWriter;

    .line 208
    .line 209
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 213
    .line 214
    .line 215
    iput v3, p0, Lz13;->k:I

    .line 216
    .line 217
    iput-boolean v2, p0, Lz13;->m:Z

    .line 218
    .line 219
    :cond_6
    return-void
.end method

.method public n(Ljava/lang/String;Ljava/lang/String;)Ljava/net/Socket;
    .locals 8

    .line 1
    iget-object v0, p0, Lz13;->l:Ljava/util/ArrayList;

    .line 2
    .line 3
    iget v1, p0, Ld23;->u:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const/4 v3, 0x2

    .line 9
    if-eq v1, v3, :cond_0

    .line 10
    .line 11
    goto/16 :goto_9

    .line 12
    .line 13
    :cond_0
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
    iget-object v3, p0, Ld23;->v:Ljava/time/Duration;

    .line 22
    .line 23
    invoke-static {v3}, Lz85;->F(Ljava/time/Duration;)I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    iget v4, p0, Ld23;->u:I

    .line 28
    .line 29
    const/16 v5, 0xd

    .line 30
    .line 31
    const/4 v6, 0x0

    .line 32
    if-nez v4, :cond_8

    .line 33
    .line 34
    iget-object v0, p0, Lyi7;->g:Ljavax/net/ServerSocketFactory;

    .line 35
    .line 36
    iget-object v4, p0, Lyi7;->b:Ljava/net/Socket;

    .line 37
    .line 38
    invoke-virtual {v4}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    const/4 v7, 0x1

    .line 43
    invoke-virtual {v0, v6, v7, v4}, Ljavax/net/ServerSocketFactory;->createServerSocket(IILjava/net/InetAddress;)Ljava/net/ServerSocket;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iget-object v4, p0, Lyi7;->b:Ljava/net/Socket;

    .line 48
    .line 49
    if-eqz v1, :cond_1

    .line 50
    .line 51
    :try_start_0
    invoke-virtual {v4}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    invoke-virtual {p0, v1, v4}, Lz13;->g(Ljava/net/InetAddress;I)I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    invoke-static {v1}, Lk55;->x(I)Z

    .line 64
    .line 65
    .line 66
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    if-nez v1, :cond_2

    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    .line 70
    .line 71
    .line 72
    return-object v2

    .line 73
    :catchall_0
    move-exception p0

    .line 74
    goto :goto_1

    .line 75
    :cond_1
    :try_start_1
    invoke-virtual {v4}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    invoke-virtual {p0, v1, v4}, Lz13;->j(Ljava/net/InetAddress;I)I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    invoke-static {v1}, Lk55;->x(I)Z

    .line 88
    .line 89
    .line 90
    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    if-nez v1, :cond_2

    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    .line 94
    .line 95
    .line 96
    return-object v2

    .line 97
    :cond_2
    :try_start_2
    invoke-virtual {p0, p1, p2}, Lz13;->m(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    invoke-static {p1}, Lk55;->y(I)Z

    .line 102
    .line 103
    .line 104
    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 105
    if-nez p1, :cond_3

    .line 106
    .line 107
    if-eqz v0, :cond_12

    .line 108
    .line 109
    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    .line 110
    .line 111
    .line 112
    return-object v2

    .line 113
    :cond_3
    if-ltz v3, :cond_4

    .line 114
    .line 115
    :try_start_3
    invoke-virtual {v0, v3}, Ljava/net/ServerSocket;->setSoTimeout(I)V

    .line 116
    .line 117
    .line 118
    :cond_4
    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    iget p2, p0, Ld23;->z:I

    .line 123
    .line 124
    if-eq p2, v5, :cond_5

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_5
    new-instance p2, Log2;

    .line 128
    .line 129
    invoke-direct {p2, p1}, Log2;-><init>(Ljava/net/Socket;)V

    .line 130
    .line 131
    .line 132
    move-object p1, p2

    .line 133
    :goto_0
    if-ltz v3, :cond_6

    .line 134
    .line 135
    invoke-virtual {p1, v3}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 136
    .line 137
    .line 138
    :cond_6
    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    .line 139
    .line 140
    .line 141
    goto/16 :goto_5

    .line 142
    .line 143
    :goto_1
    if-eqz v0, :cond_7

    .line 144
    .line 145
    :try_start_4
    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 146
    .line 147
    .line 148
    goto :goto_2

    .line 149
    :catchall_1
    move-exception p1

    .line 150
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 151
    .line 152
    .line 153
    :cond_7
    :goto_2
    throw p0

    .line 154
    :cond_8
    if-eqz v1, :cond_9

    .line 155
    .line 156
    const/16 v4, 0x9

    .line 157
    .line 158
    invoke-virtual {p0, v4}, Lz13;->l(I)I

    .line 159
    .line 160
    .line 161
    move-result v4

    .line 162
    const/16 v7, 0xe5

    .line 163
    .line 164
    if-ne v4, v7, :cond_9

    .line 165
    .line 166
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    check-cast v0, Ljava/lang/String;

    .line 171
    .line 172
    invoke-virtual {p0, v0}, Ld23;->o(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    goto :goto_3

    .line 176
    :cond_9
    if-nez v1, :cond_12

    .line 177
    .line 178
    const/16 v1, 0x17

    .line 179
    .line 180
    invoke-virtual {p0, v1}, Lz13;->l(I)I

    .line 181
    .line 182
    .line 183
    move-result v1

    .line 184
    const/16 v4, 0xe3

    .line 185
    .line 186
    if-eq v1, v4, :cond_a

    .line 187
    .line 188
    goto/16 :goto_9

    .line 189
    .line 190
    :cond_a
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    check-cast v0, Ljava/lang/String;

    .line 195
    .line 196
    invoke-virtual {p0, v0}, Ld23;->p(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    :goto_3
    iget-object v0, p0, Lyi7;->f:Ljavax/net/SocketFactory;

    .line 200
    .line 201
    invoke-virtual {v0}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    iget v1, p0, Ld23;->z:I

    .line 206
    .line 207
    if-eq v1, v5, :cond_b

    .line 208
    .line 209
    goto :goto_4

    .line 210
    :cond_b
    new-instance v1, Log2;

    .line 211
    .line 212
    invoke-direct {v1, v0}, Log2;-><init>(Ljava/net/Socket;)V

    .line 213
    .line 214
    .line 215
    move-object v0, v1

    .line 216
    :goto_4
    if-ltz v3, :cond_c

    .line 217
    .line 218
    invoke-virtual {v0, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 219
    .line 220
    .line 221
    :cond_c
    new-instance v1, Ljava/net/InetSocketAddress;

    .line 222
    .line 223
    iget-object v3, p0, Ld23;->x:Ljava/lang/String;

    .line 224
    .line 225
    iget v4, p0, Ld23;->w:I

    .line 226
    .line 227
    invoke-direct {v1, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 228
    .line 229
    .line 230
    iget v3, p0, Lyi7;->h:I

    .line 231
    .line 232
    invoke-virtual {v0, v1, v3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {p0, p1, p2}, Lz13;->m(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    .line 237
    .line 238
    move-result p1

    .line 239
    invoke-static {p1}, Lk55;->y(I)Z

    .line 240
    .line 241
    .line 242
    move-result p1

    .line 243
    if-nez p1, :cond_d

    .line 244
    .line 245
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 246
    .line 247
    .line 248
    return-object v2

    .line 249
    :cond_d
    move-object p1, v0

    .line 250
    :goto_5
    iget-boolean p2, p0, Ld23;->A:Z

    .line 251
    .line 252
    if-eqz p2, :cond_11

    .line 253
    .line 254
    invoke-virtual {p0, p1}, Lyi7;->f(Ljava/net/Socket;)Z

    .line 255
    .line 256
    .line 257
    move-result p2

    .line 258
    if-eqz p2, :cond_e

    .line 259
    .line 260
    goto :goto_8

    .line 261
    :cond_e
    invoke-virtual {p1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    .line 262
    .line 263
    .line 264
    move-result-object p2

    .line 265
    if-eqz p2, :cond_f

    .line 266
    .line 267
    invoke-virtual {p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object p2

    .line 271
    goto :goto_6

    .line 272
    :cond_f
    move-object p2, v2

    .line 273
    :goto_6
    iget-object p0, p0, Lyi7;->b:Ljava/net/Socket;

    .line 274
    .line 275
    invoke-virtual {p0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    .line 276
    .line 277
    .line 278
    move-result-object p0

    .line 279
    if-eqz p0, :cond_10

    .line 280
    .line 281
    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object p0

    .line 285
    goto :goto_7

    .line 286
    :cond_10
    move-object p0, v2

    .line 287
    :goto_7
    invoke-static {p1}, Ln84;->b(Ljava/io/Closeable;)V

    .line 288
    .line 289
    .line 290
    const-string p1, "Host attempting data connection "

    .line 291
    .line 292
    const-string v0, " is not same as server "

    .line 293
    .line 294
    invoke-static {p1, p2, v0, p0}, Ldj7;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object p0

    .line 298
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    return-object v2

    .line 302
    :cond_11
    :goto_8
    return-object p1

    .line 303
    :cond_12
    :goto_9
    return-object v2
.end method

.method public final o(Ljava/lang/String;)V
    .locals 6

    .line 1
    const/16 v0, 0x28

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    add-int/2addr v0, v1

    .line 9
    const/16 v2, 0x29

    .line 10
    .line 11
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const/4 v0, 0x0

    .line 24
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    const/4 v3, 0x2

    .line 33
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    sub-int/2addr v4, v1

    .line 42
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    const-string v5, "Could not parse extended passive host information.\nServer Reply: "

    .line 47
    .line 48
    if-ne v0, v2, :cond_0

    .line 49
    .line 50
    if-ne v2, v3, :cond_0

    .line 51
    .line 52
    if-ne v3, v4, :cond_0

    .line 53
    .line 54
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    sub-int/2addr v0, v1

    .line 59
    const/4 v1, 0x3

    .line 60
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    iget-object v0, p0, Lyi7;->b:Ljava/net/Socket;

    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    iput-object v0, p0, Ld23;->x:Ljava/lang/String;

    .line 79
    .line 80
    iput p1, p0, Ld23;->w:I

    .line 81
    .line 82
    return-void

    .line 83
    :catch_0
    new-instance p0, Lil2;

    .line 84
    .line 85
    invoke-virtual {v5, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw p0

    .line 93
    :cond_0
    new-instance p0, Lil2;

    .line 94
    .line 95
    invoke-virtual {v5, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    throw p0
.end method

.method public final p(Ljava/lang/String;)V
    .locals 9

    .line 1
    const-string v0, "[Replacing PASV mode reply address "

    .line 2
    .line 3
    sget-object v1, Ld23;->O:Ljava/util/regex/Pattern;

    .line 4
    .line 5
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const-string v3, "Could not parse passive host information.\nServer Reply: "

    .line 14
    .line 15
    if-eqz v2, :cond_6

    .line 16
    .line 17
    const-string v2, "0,0,0,0"

    .line 18
    .line 19
    const/4 v4, 0x1

    .line 20
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    iget-object v2, p0, Lyi7;->b:Ljava/net/Socket;

    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    const/16 v4, 0x2c

    .line 46
    .line 47
    const/16 v5, 0x2e

    .line 48
    .line 49
    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    :goto_0
    const/4 v4, 0x2

    .line 54
    :try_start_0
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    const/4 v5, 0x3

    .line 63
    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 71
    shl-int/lit8 v4, v4, 0x8

    .line 72
    .line 73
    or-int/2addr v1, v4

    .line 74
    iget-boolean v4, p0, Ld23;->N:Z

    .line 75
    .line 76
    if-eqz v4, :cond_3

    .line 77
    .line 78
    iget-object v4, p0, Ld23;->K:Lfu;

    .line 79
    .line 80
    if-eqz v4, :cond_5

    .line 81
    .line 82
    :try_start_1
    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    invoke-virtual {v6}, Ljava/net/InetAddress;->isSiteLocalAddress()Z

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    if-eqz v6, :cond_1

    .line 91
    .line 92
    iget-object v4, v4, Lfu;->a:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v4, Ld23;

    .line 95
    .line 96
    iget-object v4, v4, Lyi7;->b:Ljava/net/Socket;

    .line 97
    .line 98
    invoke-virtual {v4}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    invoke-virtual {v4}, Ljava/net/InetAddress;->isSiteLocalAddress()Z

    .line 103
    .line 104
    .line 105
    move-result v6

    .line 106
    if-nez v6, :cond_1

    .line 107
    .line 108
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    goto :goto_1

    .line 113
    :cond_1
    move-object v4, v2

    .line 114
    :goto_1
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v6

    .line 118
    if-nez v6, :cond_5

    .line 119
    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    iget-object v0, p0, Ld23;->x:Ljava/lang/String;

    .line 126
    .line 127
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const-string v0, " with "

    .line 131
    .line 132
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    const-string v0, "]\n"

    .line 139
    .line 140
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    iget-object v2, p0, Lz13;->p:Lba6;

    .line 148
    .line 149
    iget-object v6, v2, Lba6;->b:Lvy4;

    .line 150
    .line 151
    iget-object v7, v6, Lvy4;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 152
    .line 153
    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 154
    .line 155
    .line 156
    move-result v7

    .line 157
    if-nez v7, :cond_2

    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_2
    new-instance v7, Ly96;

    .line 161
    .line 162
    iget-object v2, v2, Lba6;->a:Ld23;

    .line 163
    .line 164
    const/4 v8, 0x0

    .line 165
    invoke-direct {v7, v2, v8, v0}, Ly96;-><init>(Ld23;ILjava/lang/String;)V

    .line 166
    .line 167
    .line 168
    new-instance v0, Lkl0;

    .line 169
    .line 170
    invoke-direct {v0, v7, v5}, Lkl0;-><init>(Ljava/lang/Object;I)V

    .line 171
    .line 172
    .line 173
    invoke-interface {v6, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0

    .line 174
    .line 175
    .line 176
    :goto_2
    move-object v2, v4

    .line 177
    goto :goto_3

    .line 178
    :catch_0
    new-instance p0, Lil2;

    .line 179
    .line 180
    invoke-static {v3, p1}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    throw p0

    .line 188
    :cond_3
    iget-object p1, p0, Lyi7;->b:Ljava/net/Socket;

    .line 189
    .line 190
    if-nez p1, :cond_4

    .line 191
    .line 192
    const/4 v2, 0x0

    .line 193
    goto :goto_3

    .line 194
    :cond_4
    invoke-virtual {p1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    :cond_5
    :goto_3
    iput-object v2, p0, Ld23;->x:Ljava/lang/String;

    .line 203
    .line 204
    iput v1, p0, Ld23;->w:I

    .line 205
    .line 206
    return-void

    .line 207
    :catch_1
    new-instance p0, Lil2;

    .line 208
    .line 209
    const-string v0, "Could not parse passive port information.\nServer Reply: "

    .line 210
    .line 211
    invoke-static {v0, p1}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    throw p0

    .line 219
    :cond_6
    new-instance p0, Lil2;

    .line 220
    .line 221
    invoke-static {v3, p1}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    throw p0
.end method

.method public q()V
    .locals 2

    .line 1
    iget-object v0, p0, Lyi7;->b:Ljava/net/Socket;

    .line 2
    .line 3
    invoke-static {v0}, Ln84;->b(Ljava/io/Closeable;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lyi7;->d:Ljava/io/InputStream;

    .line 7
    .line 8
    invoke-static {v0}, Ln84;->b(Ljava/io/Closeable;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lyi7;->e:Ljava/io/OutputStream;

    .line 12
    .line 13
    invoke-static {v0}, Ln84;->b(Ljava/io/Closeable;)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lyi7;->b:Ljava/net/Socket;

    .line 18
    .line 19
    iput-object v0, p0, Lyi7;->c:Ljava/lang/String;

    .line 20
    .line 21
    iput-object v0, p0, Lyi7;->d:Ljava/io/InputStream;

    .line 22
    .line 23
    iput-object v0, p0, Lyi7;->e:Ljava/io/OutputStream;

    .line 24
    .line 25
    iput-object v0, p0, Lz13;->r:Ljava/io/BufferedReader;

    .line 26
    .line 27
    iput-object v0, p0, Lz13;->s:Ljava/io/BufferedWriter;

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    iput-boolean v1, p0, Lz13;->m:Z

    .line 31
    .line 32
    iput-object v0, p0, Lz13;->n:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {p0}, Ld23;->s()V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final r(Ljava/lang/String;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Ld23;->M:Ljava/util/HashMap;

    .line 2
    .line 3
    if-nez v0, :cond_4

    .line 4
    .line 5
    const/16 v0, 0xa

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lz13;->l(I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/16 v1, 0x212

    .line 12
    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-static {v0}, Lk55;->x(I)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    new-instance v1, Ljava/util/HashMap;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, Ld23;->M:Ljava/util/HashMap;

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    :goto_0
    const/4 p0, 0x0

    .line 30
    return p0

    .line 31
    :cond_1
    iget-object v0, p0, Lz13;->l:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_4

    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Ljava/lang/String;

    .line 48
    .line 49
    const-string v2, " "

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_2

    .line 56
    .line 57
    const/16 v2, 0x20

    .line 58
    .line 59
    const/4 v3, 0x1

    .line 60
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->indexOf(II)I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-lez v2, :cond_3

    .line 65
    .line 66
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    add-int/lit8 v2, v2, 0x1

    .line 71
    .line 72
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    goto :goto_2

    .line 77
    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    const-string v1, ""

    .line 82
    .line 83
    :goto_2
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 84
    .line 85
    invoke-virtual {v3, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    iget-object v3, p0, Ld23;->M:Ljava/util/HashMap;

    .line 90
    .line 91
    new-instance v4, La23;

    .line 92
    .line 93
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    check-cast v2, Ljava/util/Set;

    .line 101
    .line 102
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_4
    iget-object p0, p0, Ld23;->M:Ljava/util/HashMap;

    .line 107
    .line 108
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 109
    .line 110
    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result p0

    .line 118
    return p0
.end method

.method public final s()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ld23;->u:I

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Ld23;->x:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v2, -0x1

    .line 8
    iput v2, p0, Ld23;->w:I

    .line 9
    .line 10
    iput v0, p0, Ld23;->y:I

    .line 11
    .line 12
    const/16 v0, 0xa

    .line 13
    .line 14
    iput v0, p0, Ld23;->z:I

    .line 15
    .line 16
    iput-object v1, p0, Ld23;->E:Ljava/lang/String;

    .line 17
    .line 18
    iput-object v1, p0, Ld23;->F:Lh23;

    .line 19
    .line 20
    iput-object v1, p0, Ld23;->M:Ljava/util/HashMap;

    .line 21
    .line 22
    return-void
.end method

.method public final t(Ljava/lang/String;)[Lg23;
    .locals 5

    .line 1
    iget-object v0, p0, Ld23;->F:Lh23;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    goto/16 :goto_1

    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Ld23;->G:Le23;

    .line 9
    .line 10
    iget-object v2, p0, Ld23;->B:Lie2;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, v0, Le23;->a:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Ld23;->G:Le23;

    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    iget-object v2, v0, Le23;->a:Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {v2, v0}, Lie2;->a(Ljava/lang/String;Le23;)Lh23;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Ld23;->F:Lh23;

    .line 34
    .line 35
    iget-object v0, p0, Ld23;->G:Le23;

    .line 36
    .line 37
    iget-object v0, v0, Le23;->a:Ljava/lang/String;

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    const-string v0, "org.apache.commons.net.ftp.systemType"

    .line 41
    .line 42
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const/4 v3, 0x0

    .line 47
    if-nez v0, :cond_5

    .line 48
    .line 49
    iget-object v0, p0, Ld23;->E:Ljava/lang/String;

    .line 50
    .line 51
    if-nez v0, :cond_4

    .line 52
    .line 53
    const/16 v0, 0x28

    .line 54
    .line 55
    invoke-virtual {p0, v0}, Lz13;->l(I)I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    invoke-static {v0}, Lk55;->x(I)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_2

    .line 64
    .line 65
    iget-object v0, p0, Lz13;->l:Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-static {v0, v1}, Ldj7;->e(Ljava/util/ArrayList;I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Ljava/lang/String;

    .line 72
    .line 73
    const/4 v4, 0x4

    .line 74
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    iput-object v0, p0, Ld23;->E:Ljava/lang/String;

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_2
    const-string v0, "org.apache.commons.net.ftp.systemType.default"

    .line 82
    .line 83
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    if-eqz v0, :cond_3

    .line 88
    .line 89
    iput-object v0, p0, Ld23;->E:Ljava/lang/String;

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_3
    const-string p1, "Unable to determine system type - response: "

    .line 93
    .line 94
    invoke-virtual {p0}, Lz13;->i()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    invoke-static {p0, p1}, Lc6;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    return-object v3

    .line 102
    :cond_4
    :goto_0
    iget-object v0, p0, Ld23;->E:Ljava/lang/String;

    .line 103
    .line 104
    sget-object v4, Lc23;->a:Ljava/util/Properties;

    .line 105
    .line 106
    if-eqz v4, :cond_5

    .line 107
    .line 108
    invoke-virtual {v4, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    if-eqz v4, :cond_5

    .line 113
    .line 114
    move-object v0, v4

    .line 115
    :cond_5
    iget-object v4, p0, Ld23;->G:Le23;

    .line 116
    .line 117
    if-eqz v4, :cond_6

    .line 118
    .line 119
    new-instance v3, Le23;

    .line 120
    .line 121
    iget-object v4, p0, Ld23;->G:Le23;

    .line 122
    .line 123
    invoke-direct {v3, v0, v4}, Le23;-><init>(Ljava/lang/String;Le23;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    invoke-static {v0, v3}, Lie2;->a(Ljava/lang/String;Le23;)Lh23;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    iput-object v0, p0, Ld23;->F:Lh23;

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_6
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    .line 138
    .line 139
    if-eqz v0, :cond_a

    .line 140
    .line 141
    invoke-static {v0, v3}, Lie2;->a(Ljava/lang/String;Le23;)Lh23;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    iput-object v0, p0, Ld23;->F:Lh23;

    .line 146
    .line 147
    :goto_1
    iget-object v0, p0, Ld23;->F:Lh23;

    .line 148
    .line 149
    iget-boolean v2, p0, Ld23;->D:Z

    .line 150
    .line 151
    if-eqz v2, :cond_8

    .line 152
    .line 153
    if-eqz p1, :cond_7

    .line 154
    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 158
    .line 159
    .line 160
    move-result v3

    .line 161
    add-int/lit8 v3, v3, 0x3

    .line 162
    .line 163
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 164
    .line 165
    .line 166
    const-string v3, "-a "

    .line 167
    .line 168
    invoke-static {v2, v3, p1}, Ldj7;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    goto :goto_2

    .line 173
    :cond_7
    const-string p1, "-a"

    .line 174
    .line 175
    :cond_8
    :goto_2
    const-string v2, "LIST"

    .line 176
    .line 177
    invoke-virtual {p0, v2, p1}, Ld23;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/net/Socket;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    new-instance v2, Lj23;

    .line 182
    .line 183
    iget-object v3, p0, Ld23;->G:Le23;

    .line 184
    .line 185
    invoke-direct {v2, v0, v3}, Lj23;-><init>(Lh23;Le23;)V

    .line 186
    .line 187
    .line 188
    if-nez p1, :cond_9

    .line 189
    .line 190
    goto :goto_3

    .line 191
    :cond_9
    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    iget-object v3, p0, Lz13;->o:Ljava/lang/String;

    .line 196
    .line 197
    invoke-virtual {v2, v0, v3}, Lj23;->b(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    .line 199
    .line 200
    invoke-static {p1}, Ln84;->b(Ljava/io/Closeable;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {p0, v1}, Lz13;->h(Z)I

    .line 204
    .line 205
    .line 206
    :goto_3
    iget-object p0, v2, Lj23;->c:Ljava/util/Collection;

    .line 207
    .line 208
    check-cast p0, Ljava/util/LinkedList;

    .line 209
    .line 210
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 211
    .line 212
    .line 213
    move-result-object p0

    .line 214
    new-instance p1, Lrm0;

    .line 215
    .line 216
    invoke-direct {p1, v2, v1}, Lrm0;-><init>(Ljava/lang/Object;I)V

    .line 217
    .line 218
    .line 219
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 220
    .line 221
    .line 222
    move-result-object p0

    .line 223
    new-instance p1, Li23;

    .line 224
    .line 225
    const/4 v0, 0x0

    .line 226
    invoke-direct {p1, v0}, Li23;-><init>(I)V

    .line 227
    .line 228
    .line 229
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 230
    .line 231
    .line 232
    move-result-object p0

    .line 233
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object p0

    .line 241
    check-cast p0, Ljava/util/List;

    .line 242
    .line 243
    sget-object p1, Lj23;->e:[Lg23;

    .line 244
    .line 245
    invoke-interface {p0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object p0

    .line 249
    check-cast p0, [Lg23;

    .line 250
    .line 251
    return-object p0

    .line 252
    :catchall_0
    move-exception p0

    .line 253
    invoke-static {p1}, Ln84;->b(Ljava/io/Closeable;)V

    .line 254
    .line 255
    .line 256
    throw p0

    .line 257
    :cond_a
    new-instance p0, Lfx5;

    .line 258
    .line 259
    const-string p1, "Parser key cannot be null"

    .line 260
    .line 261
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    throw p0
.end method

.method public final u(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "USER"

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lz13;->m(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    iget p1, p0, Lz13;->k:I

    .line 7
    .line 8
    invoke-static {p1}, Lk55;->x(I)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const/4 p0, 0x1

    .line 15
    return p0

    .line 16
    :cond_0
    iget p1, p0, Lz13;->k:I

    .line 17
    .line 18
    const/16 v0, 0x12c

    .line 19
    .line 20
    if-lt p1, v0, :cond_1

    .line 21
    .line 22
    const/16 v0, 0x190

    .line 23
    .line 24
    if-ge p1, v0, :cond_1

    .line 25
    .line 26
    const-string p1, "PASS"

    .line 27
    .line 28
    invoke-virtual {p0, p1, p2}, Lz13;->m(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    invoke-static {p0}, Lk55;->x(I)Z

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    return p0

    .line 37
    :cond_1
    const/4 p0, 0x0

    .line 38
    return p0
.end method

.method public final v()Ljava/lang/String;
    .locals 7

    .line 1
    const/16 v0, 0x19

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lz13;->l(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x101

    .line 8
    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0

    .line 13
    :cond_0
    iget-object p0, p0, Lz13;->l:Ljava/util/ArrayList;

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    invoke-static {p0, v0}, Ldj7;->e(Ljava/util/ArrayList;I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Ljava/lang/String;

    .line 21
    .line 22
    const/4 v1, 0x4

    .line 23
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    const-string v1, "\""

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_5

    .line 34
    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 42
    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    move v3, v0

    .line 46
    move v4, v2

    .line 47
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    if-ge v3, v5, :cond_4

    .line 52
    .line 53
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    const/16 v6, 0x22

    .line 58
    .line 59
    if-ne v5, v6, :cond_2

    .line 60
    .line 61
    if-eqz v4, :cond_1

    .line 62
    .line 63
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    move v4, v2

    .line 67
    goto :goto_1

    .line 68
    :cond_1
    move v4, v0

    .line 69
    goto :goto_1

    .line 70
    :cond_2
    if-eqz v4, :cond_3

    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    return-object p0

    .line 77
    :cond_3
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_4
    if-eqz v4, :cond_5

    .line 84
    .line 85
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    :cond_5
    return-object p0
.end method

.method public final w(Ljava/lang/String;)Lzi7;
    .locals 3

    .line 1
    const-string v0, "RETR"

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Ld23;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/net/Socket;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return-object p0

    .line 11
    :cond_0
    iget v0, p0, Ld23;->y:I

    .line 12
    .line 13
    if-nez v0, :cond_2

    .line 14
    .line 15
    new-instance v0, Lus3;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget v2, p0, Ld23;->C:I

    .line 22
    .line 23
    if-lez v2, :cond_1

    .line 24
    .line 25
    new-instance v2, Ljava/io/BufferedInputStream;

    .line 26
    .line 27
    iget p0, p0, Ld23;->C:I

    .line 28
    .line 29
    invoke-direct {v2, v1, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    new-instance v2, Ljava/io/BufferedInputStream;

    .line 34
    .line 35
    invoke-direct {v2, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    sget-object p0, Lus3;->c:[B

    .line 39
    .line 40
    array-length p0, p0

    .line 41
    add-int/lit8 p0, p0, 0x1

    .line 42
    .line 43
    invoke-direct {v0, v2, p0}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    :goto_1
    new-instance p0, Lzi7;

    .line 52
    .line 53
    invoke-direct {p0, p1, v0}, Lzi7;-><init>(Ljava/net/Socket;Ljava/io/InputStream;)V

    .line 54
    .line 55
    .line 56
    return-object p0
.end method

.method public final x(Ljava/lang/String;Ljava/io/BufferedInputStream;)Z
    .locals 6

    .line 1
    const-string v0, "STOR"

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Ld23;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/net/Socket;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x0

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    return v0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :try_start_0
    iget v2, p0, Ld23;->y:I

    .line 13
    .line 14
    if-nez v2, :cond_2

    .line 15
    .line 16
    new-instance v2, Lt48;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    iget v4, p0, Ld23;->C:I

    .line 23
    .line 24
    if-lez v4, :cond_1

    .line 25
    .line 26
    new-instance v4, Ljava/io/BufferedOutputStream;

    .line 27
    .line 28
    iget v5, p0, Ld23;->C:I

    .line 29
    .line 30
    invoke-direct {v4, v3, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    new-instance v4, Ljava/io/BufferedOutputStream;

    .line 35
    .line 36
    invoke-direct {v4, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 37
    .line 38
    .line 39
    :goto_0
    invoke-direct {v2, v4}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 40
    .line 41
    .line 42
    iput-boolean v0, v2, Lt48;->a:Z

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :goto_1
    move-object p2, v1

    .line 46
    goto/16 :goto_5

    .line 47
    .line 48
    :catchall_0
    move-exception p0

    .line 49
    goto/16 :goto_6

    .line 50
    .line 51
    :catch_0
    move-exception p0

    .line 52
    goto :goto_1

    .line 53
    :cond_2
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iget v2, p0, Ld23;->C:I

    .line 58
    .line 59
    if-lez v2, :cond_3

    .line 60
    .line 61
    new-instance v2, Ljava/io/BufferedOutputStream;

    .line 62
    .line 63
    iget v3, p0, Ld23;->C:I

    .line 64
    .line 65
    invoke-direct {v2, v0, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 66
    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_3
    new-instance v2, Ljava/io/BufferedOutputStream;

    .line 70
    .line 71
    invoke-direct {v2, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    .line 73
    .line 74
    :goto_2
    :try_start_1
    iget-object v0, p0, Ld23;->I:Ljava/time/Duration;

    .line 75
    .line 76
    if-eqz v0, :cond_4

    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/time/Duration;->isNegative()Z

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    if-nez v3, :cond_4

    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/time/Duration;->isZero()Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-nez v0, :cond_4

    .line 89
    .line 90
    new-instance v0, Lb23;

    .line 91
    .line 92
    iget-object v3, p0, Ld23;->I:Ljava/time/Duration;

    .line 93
    .line 94
    iget-object v4, p0, Ld23;->J:Ljava/time/Duration;

    .line 95
    .line 96
    invoke-direct {v0, p0, v3, v4}, Lb23;-><init>(Ld23;Ljava/time/Duration;Ljava/time/Duration;)V

    .line 97
    .line 98
    .line 99
    move-object v1, v0

    .line 100
    goto :goto_3

    .line 101
    :catch_1
    move-exception p0

    .line 102
    move-object p2, v1

    .line 103
    move-object v1, v2

    .line 104
    goto :goto_5

    .line 105
    :cond_4
    :goto_3
    iget v0, p0, Ld23;->C:I

    .line 106
    .line 107
    iget-object v3, p0, Ld23;->H:Lq23;

    .line 108
    .line 109
    if-nez v1, :cond_5

    .line 110
    .line 111
    goto :goto_4

    .line 112
    :cond_5
    if-nez v3, :cond_6

    .line 113
    .line 114
    move-object v3, v1

    .line 115
    goto :goto_4

    .line 116
    :cond_6
    new-instance v3, Ltw1;

    .line 117
    .line 118
    invoke-direct {v3}, Ltw1;-><init>()V

    .line 119
    .line 120
    .line 121
    iget-object v4, v3, Ltw1;->a:Lvy4;

    .line 122
    .line 123
    iget-object v5, v4, Lvy4;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 124
    .line 125
    invoke-virtual {v5, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    iget-object v5, p0, Ld23;->H:Lq23;

    .line 129
    .line 130
    if-eqz v5, :cond_7

    .line 131
    .line 132
    iget-object v4, v4, Lvy4;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 133
    .line 134
    invoke-virtual {v4, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    goto :goto_4

    .line 138
    :cond_7
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    .line 140
    .line 141
    :goto_4
    invoke-static {p2, v2, v0, v3}, Lho6;->f(Ljava/io/BufferedInputStream;Ljava/io/FilterOutputStream;ILuw1;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1}, Ljava/net/Socket;->close()V

    .line 148
    .line 149
    .line 150
    const/4 p2, 0x1

    .line 151
    invoke-virtual {p0, p2}, Lz13;->h(Z)I

    .line 152
    .line 153
    .line 154
    move-result p0

    .line 155
    invoke-static {p0}, Lk55;->x(I)Z

    .line 156
    .line 157
    .line 158
    move-result p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    if-eqz v1, :cond_8

    .line 160
    .line 161
    invoke-virtual {v1}, Lb23;->b()V

    .line 162
    .line 163
    .line 164
    :cond_8
    return p0

    .line 165
    :goto_5
    :try_start_2
    invoke-static {v1}, Ln84;->b(Ljava/io/Closeable;)V

    .line 166
    .line 167
    .line 168
    invoke-static {p1}, Ln84;->b(Ljava/io/Closeable;)V

    .line 169
    .line 170
    .line 171
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 172
    :catchall_1
    move-exception p0

    .line 173
    move-object v1, p2

    .line 174
    :goto_6
    if-eqz v1, :cond_9

    .line 175
    .line 176
    invoke-virtual {v1}, Lb23;->b()V

    .line 177
    .line 178
    .line 179
    :cond_9
    throw p0
.end method
