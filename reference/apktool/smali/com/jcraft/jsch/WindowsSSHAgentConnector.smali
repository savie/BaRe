.class public Lcom/jcraft/jsch/WindowsSSHAgentConnector;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/jcraft/jsch/AgentConnector;


# instance fields
.field public final a:Lcom/jcraft/jsch/FileChannelFactory;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lz5;

    .line 2
    .line 3
    const/16 v1, 0xe

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lz5;-><init>(I)V

    .line 6
    .line 7
    .line 8
    const-string v1, "\\\\.\\pipe\\openssh-ssh-agent"

    .line 9
    .line 10
    invoke-direct {p0, v0, v1}, Lcom/jcraft/jsch/WindowsSSHAgentConnector;-><init>(Lcom/jcraft/jsch/FileChannelFactory;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Lcom/jcraft/jsch/FileChannelFactory;)V
    .locals 1

    .line 15
    const-string v0, "\\\\.\\pipe\\openssh-ssh-agent"

    invoke-direct {p0, p1, v0}, Lcom/jcraft/jsch/WindowsSSHAgentConnector;-><init>(Lcom/jcraft/jsch/FileChannelFactory;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/jcraft/jsch/FileChannelFactory;Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/jcraft/jsch/WindowsSSHAgentConnector;->a:Lcom/jcraft/jsch/FileChannelFactory;

    .line 18
    iput-object p2, p0, Lcom/jcraft/jsch/WindowsSSHAgentConnector;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 14
    new-instance v0, Ly5;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Ly5;-><init>(I)V

    invoke-direct {p0, v0, p1}, Lcom/jcraft/jsch/WindowsSSHAgentConnector;-><init>(Lcom/jcraft/jsch/FileChannelFactory;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "ssh-agent - Windows Named Pipe"

    .line 2
    .line 3
    return-object p0
.end method

.method public final isAvailable()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/WindowsSSHAgentConnector;->a:Lcom/jcraft/jsch/FileChannelFactory;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/jcraft/jsch/WindowsSSHAgentConnector;->b:Ljava/lang/String;

    .line 4
    .line 5
    invoke-interface {v0, p0}, Lcom/jcraft/jsch/FileChannelFactory;->open(Ljava/lang/String;)Ljava/nio/channels/FileChannel;

    .line 6
    .line 7
    .line 8
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    :try_start_1
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->isOpen()Z

    .line 10
    .line 11
    .line 12
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    :try_start_2
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 14
    .line 15
    .line 16
    return v0

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    :try_start_3
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_1
    move-exception p0

    .line 25
    :try_start_4
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    :goto_0
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 29
    :catch_0
    const/4 p0, 0x0

    .line 30
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
    iget-object v0, p0, Lcom/jcraft/jsch/WindowsSSHAgentConnector;->a:Lcom/jcraft/jsch/FileChannelFactory;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/jcraft/jsch/WindowsSSHAgentConnector;->b:Ljava/lang/String;

    .line 4
    .line 5
    invoke-interface {v0, p0}, Lcom/jcraft/jsch/FileChannelFactory;->open(Ljava/lang/String;)Ljava/nio/channels/FileChannel;

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
    invoke-virtual {p0, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

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
    invoke-virtual {p0, v0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

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
    invoke-virtual {p0, p1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

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
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    const-string v2, "I/O error communicating with OpenSSH agent: "

    .line 141
    .line 142
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-direct {p1, v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 153
    .line 154
    .line 155
    throw p1
.end method
