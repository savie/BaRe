.class public Lcom/jcraft/jsch/SSHAgentConnector;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/jcraft/jsch/AgentConnector;


# instance fields
.field public final a:Lcom/jcraft/jsch/USocketFactory;

.field public final b:Ljava/nio/file/Path;


# direct methods
.method public constructor <init>()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/AgentProxyException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/jcraft/jsch/SSHAgentConnector;->a()Lcom/jcraft/jsch/JUnixSocketFactory;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "SSH_AUTH_SOCK"

    .line 6
    .line 7
    sget-object v2, Lcom/jcraft/jsch/Util;->a:[B

    .line 8
    .line 9
    :try_start_0
    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    goto :goto_0

    .line 14
    :catch_0
    const/4 v1, 0x0

    .line 15
    :goto_0
    if-eqz v1, :cond_0

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    new-array v2, v2, [Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {v1, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-direct {p0, v0, v1}, Lcom/jcraft/jsch/SSHAgentConnector;-><init>(Lcom/jcraft/jsch/USocketFactory;Ljava/nio/file/Path;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    new-instance p0, Lcom/jcraft/jsch/AgentProxyException;

    .line 29
    .line 30
    const-string v0, "SSH_AUTH_SOCK is not defined."

    .line 31
    .line 32
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p0
.end method

.method public constructor <init>(Lcom/jcraft/jsch/USocketFactory;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/AgentProxyException;
        }
    .end annotation

    .line 40
    const-string v0, "SSH_AUTH_SOCK"

    sget-object v1, Lcom/jcraft/jsch/Util;->a:[B

    .line 41
    :try_start_0
    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 42
    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    .line 43
    invoke-direct {p0, p1, v0}, Lcom/jcraft/jsch/SSHAgentConnector;-><init>(Lcom/jcraft/jsch/USocketFactory;Ljava/nio/file/Path;)V

    return-void

    .line 44
    :cond_0
    new-instance p0, Lcom/jcraft/jsch/AgentProxyException;

    const-string p1, "SSH_AUTH_SOCK is not defined."

    .line 45
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 46
    throw p0
.end method

.method public constructor <init>(Lcom/jcraft/jsch/USocketFactory;Ljava/nio/file/Path;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/jcraft/jsch/SSHAgentConnector;->a:Lcom/jcraft/jsch/USocketFactory;

    .line 39
    iput-object p2, p0, Lcom/jcraft/jsch/SSHAgentConnector;->b:Ljava/nio/file/Path;

    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/AgentProxyException;
        }
    .end annotation

    .line 36
    invoke-static {}, Lcom/jcraft/jsch/SSHAgentConnector;->a()Lcom/jcraft/jsch/JUnixSocketFactory;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/jcraft/jsch/SSHAgentConnector;-><init>(Lcom/jcraft/jsch/USocketFactory;Ljava/nio/file/Path;)V

    return-void
.end method

.method public static a()Lcom/jcraft/jsch/JUnixSocketFactory;
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Lcom/jcraft/jsch/UnixDomainSocketFactory;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/jcraft/jsch/UnixDomainSocketFactory;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    throw v0
    :try_end_0
    .catch Lcom/jcraft/jsch/AgentProxyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    :catch_0
    move-exception v0

    .line 9
    :try_start_1
    new-instance v1, Lcom/jcraft/jsch/JUnixSocketFactory;

    .line 10
    .line 11
    invoke-direct {v1}, Lcom/jcraft/jsch/JUnixSocketFactory;-><init>()V
    :try_end_1
    .catch Ljava/lang/LinkageError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/jcraft/jsch/AgentProxyException; {:try_start_1 .. :try_end_1} :catch_1

    .line 12
    .line 13
    .line 14
    return-object v1

    .line 15
    :catch_1
    move-exception v1

    .line 16
    goto :goto_0

    .line 17
    :catch_2
    move-exception v1

    .line 18
    goto :goto_1

    .line 19
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 20
    .line 21
    .line 22
    throw v0

    .line 23
    :goto_1
    new-instance v2, Lcom/jcraft/jsch/AgentProxyException;

    .line 24
    .line 25
    const-string v3, "junixsocket library unavailable"

    .line 26
    .line 27
    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 34
    .line 35
    .line 36
    throw v2
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "ssh-agent"

    .line 2
    .line 3
    return-object p0
.end method

.method public final isAvailable()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/SSHAgentConnector;->a:Lcom/jcraft/jsch/USocketFactory;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/jcraft/jsch/SSHAgentConnector;->b:Ljava/nio/file/Path;

    .line 4
    .line 5
    invoke-interface {v0, p0}, Lcom/jcraft/jsch/USocketFactory;->connect(Ljava/nio/file/Path;)Ljava/nio/channels/SocketChannel;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const/4 v0, 0x1

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    :cond_0
    return v0

    .line 16
    :catch_0
    const/4 p0, 0x0

    .line 17
    return p0
.end method

.method public final query(Lcom/jcraft/jsch/Buffer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/AgentProxyException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/SSHAgentConnector;->a:Lcom/jcraft/jsch/USocketFactory;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/jcraft/jsch/SSHAgentConnector;->b:Ljava/nio/file/Path;

    .line 4
    .line 5
    invoke-interface {v0, p0}, Lcom/jcraft/jsch/USocketFactory;->connect(Ljava/nio/file/Path;)Ljava/nio/channels/SocketChannel;

    .line 6
    .line 7
    .line 8
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    :try_start_1
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getLength()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget-object v1, p1, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-static {v1, v2, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    :cond_0
    :goto_0
    if-lez v0, :cond_2

    .line 21
    .line 22
    invoke-virtual {p0, v1}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-gez v3, :cond_1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    if-lez v3, :cond_0

    .line 30
    .line 31
    sub-int/2addr v0, v3

    .line 32
    goto :goto_0

    .line 33
    :cond_2
    :goto_1
    iput v2, p1, Lcom/jcraft/jsch/Buffer;->d:I

    .line 34
    .line 35
    iget-object v0, p1, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 36
    .line 37
    const/4 v1, 0x4

    .line 38
    invoke-static {v0, v2, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    :cond_3
    :goto_2
    if-lez v1, :cond_5

    .line 43
    .line 44
    invoke-virtual {p0, v0}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-gez v3, :cond_4

    .line 49
    .line 50
    goto :goto_3

    .line 51
    :cond_4
    if-lez v3, :cond_3

    .line 52
    .line 53
    sub-int/2addr v1, v3

    .line 54
    goto :goto_2

    .line 55
    :cond_5
    :goto_3
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-lez v0, :cond_a

    .line 60
    .line 61
    const/high16 v1, 0x40000

    .line 62
    .line 63
    if-gt v0, v1, :cond_a

    .line 64
    .line 65
    iput v2, p1, Lcom/jcraft/jsch/Buffer;->d:I

    .line 66
    .line 67
    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Buffer;->a(I)V

    .line 68
    .line 69
    .line 70
    iget-object p1, p1, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 71
    .line 72
    invoke-static {p1, v2, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    :cond_6
    :goto_4
    if-lez v0, :cond_8

    .line 77
    .line 78
    invoke-virtual {p0, p1}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 79
    .line 80
    .line 81
    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    if-gez v1, :cond_7

    .line 83
    .line 84
    goto :goto_5

    .line 85
    :cond_7
    if-lez v1, :cond_6

    .line 86
    .line 87
    sub-int/2addr v0, v1

    .line 88
    goto :goto_4

    .line 89
    :cond_8
    :goto_5
    if-eqz p0, :cond_9

    .line 90
    .line 91
    :try_start_2
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 92
    .line 93
    .line 94
    :cond_9
    return-void

    .line 95
    :catchall_0
    move-exception p1

    .line 96
    goto :goto_6

    .line 97
    :cond_a
    :try_start_3
    new-instance p1, Lcom/jcraft/jsch/AgentProxyException;

    .line 98
    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    const-string v2, "Illegal length: "

    .line 105
    .line 106
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 120
    :goto_6
    if-eqz p0, :cond_b

    .line 121
    .line 122
    :try_start_4
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 123
    .line 124
    .line 125
    goto :goto_7

    .line 126
    :catchall_1
    move-exception p0

    .line 127
    :try_start_5
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 128
    .line 129
    .line 130
    :cond_b
    :goto_7
    throw p1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 131
    :catch_0
    move-exception p0

    .line 132
    new-instance p1, Lcom/jcraft/jsch/AgentProxyException;

    .line 133
    .line 134
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-direct {p1, v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 139
    .line 140
    .line 141
    throw p1
.end method
