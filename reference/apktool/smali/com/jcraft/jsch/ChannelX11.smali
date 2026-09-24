.class Lcom/jcraft/jsch/ChannelX11;
.super Lcom/jcraft/jsch/Channel;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static A:[B = null

.field public static B:[B = null

.field public static final C:Ljava/util/Hashtable;

.field public static final D:Ljava/util/Hashtable;

.field public static final E:[B

.field public static y:Ljava/lang/String; = "127.0.0.1"

.field public static z:I = 0x1770


# instance fields
.field public v:Z

.field public w:Ljava/net/Socket;

.field public x:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/Hashtable;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/jcraft/jsch/ChannelX11;->C:Ljava/util/Hashtable;

    .line 7
    .line 8
    new-instance v0, Ljava/util/Hashtable;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/jcraft/jsch/ChannelX11;->D:Ljava/util/Hashtable;

    .line 14
    .line 15
    const/16 v0, 0x10

    .line 16
    .line 17
    new-array v0, v0, [B

    .line 18
    .line 19
    fill-array-data v0, :array_0

    .line 20
    .line 21
    .line 22
    sput-object v0, Lcom/jcraft/jsch/ChannelX11;->E:[B

    .line 23
    .line 24
    return-void

    .line 25
    :array_0
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/jcraft/jsch/Channel;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelX11;->v:Z

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Lcom/jcraft/jsch/ChannelX11;->w:Ljava/net/Socket;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    new-array v1, v1, [B

    .line 12
    .line 13
    iput-object v1, p0, Lcom/jcraft/jsch/ChannelX11;->x:[B

    .line 14
    .line 15
    const/high16 v1, 0x20000

    .line 16
    .line 17
    iput v1, p0, Lcom/jcraft/jsch/Channel;->d:I

    .line 18
    .line 19
    iput v1, p0, Lcom/jcraft/jsch/Channel;->e:I

    .line 20
    .line 21
    const/16 v1, 0x4000

    .line 22
    .line 23
    iput v1, p0, Lcom/jcraft/jsch/Channel;->f:I

    .line 24
    .line 25
    const-string v1, "x11"

    .line 26
    .line 27
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 28
    .line 29
    invoke-static {v1, v2}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iput-object v1, p0, Lcom/jcraft/jsch/Channel;->c:[B

    .line 34
    .line 35
    iput-boolean v0, p0, Lcom/jcraft/jsch/Channel;->n:Z

    .line 36
    .line 37
    return-void
.end method

.method public static m(Lcom/jcraft/jsch/Session;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/jcraft/jsch/ChannelX11;->D:Ljava/util/Hashtable;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    sget-object v1, Lcom/jcraft/jsch/ChannelX11;->C:Ljava/util/Hashtable;

    .line 8
    .line 9
    invoke-virtual {v1, p0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw p0
.end method


# virtual methods
.method public final l([BII)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/jcraft/jsch/ChannelX11;->v:Z

    .line 2
    .line 3
    if-eqz v0, :cond_9

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getSession()Lcom/jcraft/jsch/Session;

    .line 6
    .line 7
    .line 8
    move-result-object v0
    :try_end_0
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelX11;->x:[B

    .line 10
    .line 11
    array-length v2, v1

    .line 12
    add-int/2addr v2, p3

    .line 13
    new-array v3, v2, [B

    .line 14
    .line 15
    array-length v1, v1

    .line 16
    invoke-static {p1, p2, v3, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelX11;->x:[B

    .line 20
    .line 21
    array-length p2, p1

    .line 22
    const/4 p3, 0x0

    .line 23
    if-lez p2, :cond_0

    .line 24
    .line 25
    array-length p2, p1

    .line 26
    invoke-static {p1, p3, v3, p3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 27
    .line 28
    .line 29
    :cond_0
    iput-object v3, p0, Lcom/jcraft/jsch/ChannelX11;->x:[B

    .line 30
    .line 31
    const/16 p1, 0x9

    .line 32
    .line 33
    if-ge v2, p1, :cond_1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    const/4 p2, 0x6

    .line 37
    aget-byte p2, v3, p2

    .line 38
    .line 39
    and-int/lit16 p2, p2, 0xff

    .line 40
    .line 41
    mul-int/lit16 p2, p2, 0x100

    .line 42
    .line 43
    const/4 v1, 0x7

    .line 44
    aget-byte v1, v3, v1

    .line 45
    .line 46
    and-int/lit16 v1, v1, 0xff

    .line 47
    .line 48
    add-int/2addr p2, v1

    .line 49
    const/16 v1, 0x8

    .line 50
    .line 51
    aget-byte v1, v3, v1

    .line 52
    .line 53
    and-int/lit16 v1, v1, 0xff

    .line 54
    .line 55
    mul-int/lit16 v1, v1, 0x100

    .line 56
    .line 57
    aget-byte p1, v3, p1

    .line 58
    .line 59
    and-int/lit16 p1, p1, 0xff

    .line 60
    .line 61
    add-int/2addr v1, p1

    .line 62
    aget-byte p1, v3, p3

    .line 63
    .line 64
    and-int/lit16 p1, p1, 0xff

    .line 65
    .line 66
    const/16 v4, 0x42

    .line 67
    .line 68
    if-ne p1, v4, :cond_2

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    const/16 v4, 0x6c

    .line 72
    .line 73
    if-ne p1, v4, :cond_3

    .line 74
    .line 75
    ushr-int/lit8 p1, p2, 0x8

    .line 76
    .line 77
    and-int/lit16 p1, p1, 0xff

    .line 78
    .line 79
    shl-int/lit8 p2, p2, 0x8

    .line 80
    .line 81
    const v4, 0xff00

    .line 82
    .line 83
    .line 84
    and-int/2addr p2, v4

    .line 85
    or-int/2addr p2, p1

    .line 86
    ushr-int/lit8 p1, v1, 0x8

    .line 87
    .line 88
    and-int/lit16 p1, p1, 0xff

    .line 89
    .line 90
    shl-int/lit8 v1, v1, 0x8

    .line 91
    .line 92
    and-int/2addr v1, v4

    .line 93
    or-int/2addr v1, p1

    .line 94
    :cond_3
    :goto_0
    add-int/lit8 p1, p2, 0xc

    .line 95
    .line 96
    neg-int p2, p2

    .line 97
    and-int/lit8 p2, p2, 0x3

    .line 98
    .line 99
    add-int/2addr p1, p2

    .line 100
    add-int p2, p1, v1

    .line 101
    .line 102
    if-ge v2, p2, :cond_4

    .line 103
    .line 104
    :goto_1
    return-void

    .line 105
    :cond_4
    new-array p2, v1, [B

    .line 106
    .line 107
    invoke-static {v3, p1, p2, p3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 108
    .line 109
    .line 110
    sget-object v4, Lcom/jcraft/jsch/ChannelX11;->C:Ljava/util/Hashtable;

    .line 111
    .line 112
    monitor-enter v4

    .line 113
    :try_start_1
    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    check-cast v0, [B

    .line 118
    .line 119
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    array-length v4, v0

    .line 121
    const/4 v5, 0x0

    .line 122
    if-eq v1, v4, :cond_5

    .line 123
    .line 124
    goto :goto_3

    .line 125
    :cond_5
    move v4, p3

    .line 126
    :goto_2
    if-ge v4, v1, :cond_7

    .line 127
    .line 128
    aget-byte v6, p2, v4

    .line 129
    .line 130
    aget-byte v7, v0, v4

    .line 131
    .line 132
    if-eq v6, v7, :cond_6

    .line 133
    .line 134
    :goto_3
    iput-object v5, p0, Lcom/jcraft/jsch/Channel;->j:Ljava/lang/Thread;

    .line 135
    .line 136
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->c()V

    .line 137
    .line 138
    .line 139
    iget-object p1, p0, Lcom/jcraft/jsch/Channel;->i:Lcom/jcraft/jsch/IO;

    .line 140
    .line 141
    invoke-virtual {p1}, Lcom/jcraft/jsch/IO;->a()V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->disconnect()V

    .line 145
    .line 146
    .line 147
    goto :goto_4

    .line 148
    :cond_6
    add-int/lit8 v4, v4, 0x1

    .line 149
    .line 150
    goto :goto_2

    .line 151
    :cond_7
    sget-object p2, Lcom/jcraft/jsch/ChannelX11;->A:[B

    .line 152
    .line 153
    if-eqz p2, :cond_8

    .line 154
    .line 155
    invoke-static {p2, p3, v3, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 156
    .line 157
    .line 158
    :cond_8
    :goto_4
    iput-boolean p3, p0, Lcom/jcraft/jsch/ChannelX11;->v:Z

    .line 159
    .line 160
    iget-object p1, p0, Lcom/jcraft/jsch/Channel;->i:Lcom/jcraft/jsch/IO;

    .line 161
    .line 162
    iget-object p2, p1, Lcom/jcraft/jsch/IO;->b:Ljava/io/OutputStream;

    .line 163
    .line 164
    invoke-virtual {p2, v3, p3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 165
    .line 166
    .line 167
    iget-object p1, p1, Lcom/jcraft/jsch/IO;->b:Ljava/io/OutputStream;

    .line 168
    .line 169
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 170
    .line 171
    .line 172
    iput-object v5, p0, Lcom/jcraft/jsch/ChannelX11;->x:[B

    .line 173
    .line 174
    return-void

    .line 175
    :catchall_0
    move-exception p0

    .line 176
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 177
    throw p0

    .line 178
    :catch_0
    move-exception p0

    .line 179
    new-instance p1, Ljava/io/IOException;

    .line 180
    .line 181
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p2

    .line 185
    invoke-direct {p1, p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 186
    .line 187
    .line 188
    throw p1

    .line 189
    :cond_9
    iget-object p0, p0, Lcom/jcraft/jsch/Channel;->i:Lcom/jcraft/jsch/IO;

    .line 190
    .line 191
    iget-object v0, p0, Lcom/jcraft/jsch/IO;->b:Ljava/io/OutputStream;

    .line 192
    .line 193
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 194
    .line 195
    .line 196
    iget-object p0, p0, Lcom/jcraft/jsch/IO;->b:Ljava/io/OutputStream;

    .line 197
    .line 198
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    .line 199
    .line 200
    .line 201
    return-void
.end method

.method public final run()V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    sget-object v1, Lcom/jcraft/jsch/ChannelX11;->y:Ljava/lang/String;

    .line 3
    .line 4
    sget v2, Lcom/jcraft/jsch/ChannelX11;->z:I

    .line 5
    .line 6
    const/16 v3, 0x2710

    .line 7
    .line 8
    invoke-static {v2, v3, v1}, Lcom/jcraft/jsch/Util;->g(IILjava/lang/String;)Ljava/net/Socket;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iput-object v1, p0, Lcom/jcraft/jsch/ChannelX11;->w:Ljava/net/Socket;

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 15
    .line 16
    .line 17
    new-instance v1, Lcom/jcraft/jsch/IO;

    .line 18
    .line 19
    invoke-direct {v1}, Lcom/jcraft/jsch/IO;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Lcom/jcraft/jsch/Channel;->i:Lcom/jcraft/jsch/IO;

    .line 23
    .line 24
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelX11;->w:Ljava/net/Socket;

    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    iput-object v2, v1, Lcom/jcraft/jsch/IO;->a:Ljava/io/InputStream;

    .line 31
    .line 32
    iget-object v1, p0, Lcom/jcraft/jsch/Channel;->i:Lcom/jcraft/jsch/IO;

    .line 33
    .line 34
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelX11;->w:Ljava/net/Socket;

    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    iput-object v2, v1, Lcom/jcraft/jsch/IO;->b:Ljava/io/OutputStream;

    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->i()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 43
    .line 44
    .line 45
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iput-object v0, p0, Lcom/jcraft/jsch/Channel;->j:Ljava/lang/Thread;

    .line 50
    .line 51
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    .line 52
    .line 53
    iget v1, p0, Lcom/jcraft/jsch/Channel;->h:I

    .line 54
    .line 55
    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    .line 56
    .line 57
    .line 58
    new-instance v1, Lcom/jcraft/jsch/Packet;

    .line 59
    .line 60
    invoke-direct {v1, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    .line 61
    .line 62
    .line 63
    :try_start_1
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getSession()Lcom/jcraft/jsch/Session;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    :goto_0
    iget-object v3, p0, Lcom/jcraft/jsch/Channel;->j:Ljava/lang/Thread;

    .line 68
    .line 69
    if-eqz v3, :cond_2

    .line 70
    .line 71
    iget-object v3, p0, Lcom/jcraft/jsch/Channel;->i:Lcom/jcraft/jsch/IO;

    .line 72
    .line 73
    if-eqz v3, :cond_2

    .line 74
    .line 75
    iget-object v3, v3, Lcom/jcraft/jsch/IO;->a:Ljava/io/InputStream;

    .line 76
    .line 77
    if-eqz v3, :cond_2

    .line 78
    .line 79
    iget-object v4, v0, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 80
    .line 81
    array-length v5, v4

    .line 82
    const/16 v6, 0xe

    .line 83
    .line 84
    sub-int/2addr v5, v6

    .line 85
    invoke-virtual {v2}, Lcom/jcraft/jsch/Session;->k()I

    .line 86
    .line 87
    .line 88
    move-result v7

    .line 89
    sub-int/2addr v5, v7

    .line 90
    invoke-virtual {v3, v4, v6, v5}, Ljava/io/InputStream;->read([BII)I

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    if-gtz v3, :cond_0

    .line 95
    .line 96
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->c()V

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_0
    iget-boolean v4, p0, Lcom/jcraft/jsch/Channel;->m:Z

    .line 101
    .line 102
    if-eqz v4, :cond_1

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_1
    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->a()V

    .line 106
    .line 107
    .line 108
    const/16 v4, 0x5e

    .line 109
    .line 110
    invoke-virtual {v0, v4}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 111
    .line 112
    .line 113
    iget v4, p0, Lcom/jcraft/jsch/Channel;->b:I

    .line 114
    .line 115
    invoke-virtual {v0, v4}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/Buffer;->h(I)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v2, v1, p0, v3}, Lcom/jcraft/jsch/Session;->A(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 125
    .line 126
    .line 127
    goto :goto_0

    .line 128
    :catch_0
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->disconnect()V

    .line 129
    .line 130
    .line 131
    return-void

    .line 132
    :catch_1
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->j()V

    .line 133
    .line 134
    .line 135
    iput-boolean v0, p0, Lcom/jcraft/jsch/Channel;->m:Z

    .line 136
    .line 137
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->disconnect()V

    .line 138
    .line 139
    .line 140
    return-void
.end method
