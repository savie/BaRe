.class public Lcom/jcraft/jsch/ChannelDirectTCPIP;
.super Lcom/jcraft/jsch/Channel;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final z:[B


# instance fields
.field public v:Ljava/lang/String;

.field public w:I

.field public x:Ljava/lang/String;

.field public y:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lcom/jcraft/jsch/Util;->a:[B

    .line 2
    .line 3
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 4
    .line 5
    const-string v1, "direct-tcpip"

    .line 6
    .line 7
    invoke-static {v1, v0}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->z:[B

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/jcraft/jsch/Channel;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "127.0.0.1"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->x:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->y:I

    .line 10
    .line 11
    sget-object v0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->z:[B

    .line 12
    .line 13
    iput-object v0, p0, Lcom/jcraft/jsch/Channel;->c:[B

    .line 14
    .line 15
    const/high16 v0, 0x20000

    .line 16
    .line 17
    iput v0, p0, Lcom/jcraft/jsch/Channel;->d:I

    .line 18
    .line 19
    iput v0, p0, Lcom/jcraft/jsch/Channel;->e:I

    .line 20
    .line 21
    const/16 v0, 0x4000

    .line 22
    .line 23
    iput v0, p0, Lcom/jcraft/jsch/Channel;->f:I

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final connect(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 1
    const-string v0, "DirectTCPIP thread "

    .line 2
    .line 3
    iput p1, p0, Lcom/jcraft/jsch/Channel;->r:I

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getSession()Lcom/jcraft/jsch/Session;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-boolean v1, p1, Lcom/jcraft/jsch/Session;->z:Z

    .line 10
    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    iget-object v1, p0, Lcom/jcraft/jsch/Channel;->i:Lcom/jcraft/jsch/IO;

    .line 14
    .line 15
    iget-object v1, v1, Lcom/jcraft/jsch/IO;->a:Ljava/io/InputStream;

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    iget-object v1, p1, Lcom/jcraft/jsch/Session;->m0:Ljava/util/concurrent/ThreadFactory;

    .line 20
    .line 21
    new-instance v2, Li41;

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-direct {v2, p0, v3}, Li41;-><init>(Ljava/lang/Object;I)V

    .line 25
    .line 26
    .line 27
    invoke-interface {v1, v2}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iput-object v1, p0, Lcom/jcraft/jsch/Channel;->j:Ljava/lang/Thread;

    .line 32
    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p1, Lcom/jcraft/jsch/Session;->f0:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-boolean p1, p1, Lcom/jcraft/jsch/Session;->b0:Z

    .line 51
    .line 52
    if-eqz p1, :cond_0

    .line 53
    .line 54
    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->j:Ljava/lang/Thread;

    .line 55
    .line 56
    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catch_0
    move-exception p1

    .line 61
    goto :goto_1

    .line 62
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/jcraft/jsch/Channel;->j:Ljava/lang/Thread;

    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_1
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->h()V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_2
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    .line 73
    .line 74
    const-string v0, "session is down"

    .line 75
    .line 76
    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_1
    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->i:Lcom/jcraft/jsch/IO;

    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/jcraft/jsch/IO;->a()V

    .line 83
    .line 84
    .line 85
    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lcom/jcraft/jsch/Channel;->i:Lcom/jcraft/jsch/IO;

    .line 87
    .line 88
    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->s:Lcom/jcraft/jsch/Session;

    .line 89
    .line 90
    if-eqz v0, :cond_3

    .line 91
    .line 92
    invoke-virtual {v0, p0}, Lcom/jcraft/jsch/Session;->g(Lcom/jcraft/jsch/Channel;)V

    .line 93
    .line 94
    .line 95
    :cond_3
    instance-of p0, p1, Lcom/jcraft/jsch/JSchException;

    .line 96
    .line 97
    if-nez p0, :cond_4

    .line 98
    .line 99
    return-void

    .line 100
    :cond_4
    check-cast p1, Lcom/jcraft/jsch/JSchException;

    .line 101
    .line 102
    throw p1
.end method

.method public e()Lcom/jcraft/jsch/Packet;
    .locals 4

    .line 1
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->v:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    add-int/lit8 v1, v1, 0x32

    .line 10
    .line 11
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->x:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    add-int/2addr v2, v1

    .line 18
    iget-object v1, p0, Lcom/jcraft/jsch/Channel;->s:Lcom/jcraft/jsch/Session;

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->k()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    add-int/2addr v1, v2

    .line 25
    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    .line 26
    .line 27
    .line 28
    new-instance v1, Lcom/jcraft/jsch/Packet;

    .line 29
    .line 30
    invoke-direct {v1, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->a()V

    .line 34
    .line 35
    .line 36
    const/16 v2, 0x5a

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 39
    .line 40
    .line 41
    iget-object v2, p0, Lcom/jcraft/jsch/Channel;->c:[B

    .line 42
    .line 43
    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 44
    .line 45
    .line 46
    iget v2, p0, Lcom/jcraft/jsch/Channel;->a:I

    .line 47
    .line 48
    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 49
    .line 50
    .line 51
    iget v2, p0, Lcom/jcraft/jsch/Channel;->e:I

    .line 52
    .line 53
    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 54
    .line 55
    .line 56
    iget v2, p0, Lcom/jcraft/jsch/Channel;->f:I

    .line 57
    .line 58
    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 59
    .line 60
    .line 61
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->v:Ljava/lang/String;

    .line 62
    .line 63
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 64
    .line 65
    invoke-static {v2, v3}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 70
    .line 71
    .line 72
    iget v2, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->w:I

    .line 73
    .line 74
    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 75
    .line 76
    .line 77
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->x:Ljava/lang/String;

    .line 78
    .line 79
    invoke-static {v2, v3}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 84
    .line 85
    .line 86
    iget p0, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->y:I

    .line 87
    .line 88
    invoke-virtual {v0, p0}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 89
    .line 90
    .line 91
    return-object v1
.end method

.method public final g()V
    .locals 1

    .line 1
    new-instance v0, Lcom/jcraft/jsch/IO;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/jcraft/jsch/IO;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/jcraft/jsch/Channel;->i:Lcom/jcraft/jsch/IO;

    .line 7
    .line 8
    return-void
.end method

.method public final run()V
    .locals 8

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->h()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    .line 5
    .line 6
    iget v1, p0, Lcom/jcraft/jsch/Channel;->h:I

    .line 7
    .line 8
    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lcom/jcraft/jsch/Packet;

    .line 12
    .line 13
    invoke-direct {v1, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getSession()Lcom/jcraft/jsch/Session;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    :goto_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->isConnected()Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_2

    .line 25
    .line 26
    iget-object v3, p0, Lcom/jcraft/jsch/Channel;->j:Ljava/lang/Thread;

    .line 27
    .line 28
    if-eqz v3, :cond_2

    .line 29
    .line 30
    iget-object v3, p0, Lcom/jcraft/jsch/Channel;->i:Lcom/jcraft/jsch/IO;

    .line 31
    .line 32
    if-eqz v3, :cond_2

    .line 33
    .line 34
    iget-object v3, v3, Lcom/jcraft/jsch/IO;->a:Ljava/io/InputStream;

    .line 35
    .line 36
    if-eqz v3, :cond_2

    .line 37
    .line 38
    iget-object v4, v0, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 39
    .line 40
    array-length v5, v4

    .line 41
    const/16 v6, 0xe

    .line 42
    .line 43
    sub-int/2addr v5, v6

    .line 44
    invoke-virtual {v2}, Lcom/jcraft/jsch/Session;->k()I

    .line 45
    .line 46
    .line 47
    move-result v7

    .line 48
    sub-int/2addr v5, v7

    .line 49
    invoke-virtual {v3, v4, v6, v5}, Ljava/io/InputStream;->read([BII)I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-gtz v3, :cond_0

    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->c()V

    .line 56
    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_0
    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->a()V

    .line 60
    .line 61
    .line 62
    const/16 v4, 0x5e

    .line 63
    .line 64
    invoke-virtual {v0, v4}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 65
    .line 66
    .line 67
    iget v4, p0, Lcom/jcraft/jsch/Channel;->b:I

    .line 68
    .line 69
    invoke-virtual {v0, v4}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/Buffer;->h(I)V

    .line 76
    .line 77
    .line 78
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :try_start_1
    iget-boolean v4, p0, Lcom/jcraft/jsch/Channel;->m:Z

    .line 80
    .line 81
    if-eqz v4, :cond_1

    .line 82
    .line 83
    monitor-exit p0

    .line 84
    goto :goto_2

    .line 85
    :catchall_0
    move-exception v0

    .line 86
    goto :goto_1

    .line 87
    :cond_1
    invoke-virtual {v2, v1, p0, v3}, Lcom/jcraft/jsch/Session;->A(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V

    .line 88
    .line 89
    .line 90
    monitor-exit p0

    .line 91
    goto :goto_0

    .line 92
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 94
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->c()V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->disconnect()V

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :catch_0
    iget-boolean v0, p0, Lcom/jcraft/jsch/Channel;->n:Z

    .line 102
    .line 103
    if-nez v0, :cond_3

    .line 104
    .line 105
    const/4 v0, 0x1

    .line 106
    iput-boolean v0, p0, Lcom/jcraft/jsch/Channel;->n:Z

    .line 107
    .line 108
    :cond_3
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->disconnect()V

    .line 109
    .line 110
    .line 111
    return-void
.end method

.method public final setHost(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->v:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setInputStream(Ljava/io/InputStream;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/Channel;->i:Lcom/jcraft/jsch/IO;

    .line 2
    .line 3
    iput-object p1, p0, Lcom/jcraft/jsch/IO;->a:Ljava/io/InputStream;

    .line 4
    .line 5
    return-void
.end method

.method public final setOrgIPAddress(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->x:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setOrgPort(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->y:I

    .line 2
    .line 3
    return-void
.end method

.method public final setOutputStream(Ljava/io/OutputStream;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/Channel;->i:Lcom/jcraft/jsch/IO;

    .line 2
    .line 3
    iput-object p1, p0, Lcom/jcraft/jsch/IO;->b:Ljava/io/OutputStream;

    .line 4
    .line 5
    return-void
.end method

.method public final setPort(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->w:I

    .line 2
    .line 3
    return-void
.end method
