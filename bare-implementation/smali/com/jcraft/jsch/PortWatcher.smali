.class Lcom/jcraft/jsch/PortWatcher;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final j:Ljava/util/Vector;

.field public static final k:Ljava/net/InetAddress;


# instance fields
.field public final a:Lcom/jcraft/jsch/Session;

.field public b:I

.field public final c:I

.field public final d:Ljava/lang/String;

.field public e:Ljava/net/InetAddress;

.field public f:Lcom/jcraft/jsch/l;

.field public g:Ljava/net/ServerSocket;

.field public h:I

.field public final i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/Vector;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/jcraft/jsch/PortWatcher;->j:Ljava/util/Vector;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    sput-object v0, Lcom/jcraft/jsch/PortWatcher;->k:Ljava/net/InetAddress;

    .line 10
    .line 11
    :try_start_0
    const-string v0, "0.0.0.0"

    .line 12
    .line 13
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/jcraft/jsch/PortWatcher;->k:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    :catch_0
    return-void
.end method

.method public constructor <init>(Lcom/jcraft/jsch/Session;Ljava/lang/String;ILjava/lang/String;ILcom/jcraft/jsch/ServerSocketFactory;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/jcraft/jsch/PortWatcher;->h:I

    .line 6
    .line 7
    iput-object p1, p0, Lcom/jcraft/jsch/PortWatcher;->a:Lcom/jcraft/jsch/Session;

    .line 8
    .line 9
    iput p3, p0, Lcom/jcraft/jsch/PortWatcher;->b:I

    .line 10
    .line 11
    iput-object p4, p0, Lcom/jcraft/jsch/PortWatcher;->d:Ljava/lang/String;

    .line 12
    .line 13
    iput p5, p0, Lcom/jcraft/jsch/PortWatcher;->c:I

    .line 14
    .line 15
    invoke-virtual {p0, p2, p3, p6}, Lcom/jcraft/jsch/PortWatcher;->a(Ljava/lang/String;ILcom/jcraft/jsch/ServerSocketFactory;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/jcraft/jsch/Session;Ljava/lang/String;ILjava/lang/String;Lcom/jcraft/jsch/ServerSocketFactory;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/jcraft/jsch/PortWatcher;->h:I

    .line 21
    iput-object p1, p0, Lcom/jcraft/jsch/PortWatcher;->a:Lcom/jcraft/jsch/Session;

    .line 22
    iput p3, p0, Lcom/jcraft/jsch/PortWatcher;->b:I

    .line 23
    iput-object p4, p0, Lcom/jcraft/jsch/PortWatcher;->i:Ljava/lang/String;

    .line 24
    invoke-virtual {p0, p2, p3, p5}, Lcom/jcraft/jsch/PortWatcher;->a(Ljava/lang/String;ILcom/jcraft/jsch/ServerSocketFactory;)V

    return-void
.end method

.method public static addSocket(Lcom/jcraft/jsch/Session;Ljava/lang/String;ILjava/lang/String;Lcom/jcraft/jsch/ServerSocketFactory;)Lcom/jcraft/jsch/PortWatcher;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/jcraft/jsch/PortWatcher;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v2

    .line 5
    invoke-static {p0, v2, p2}, Lcom/jcraft/jsch/PortWatcher;->b(Lcom/jcraft/jsch/Session;Ljava/lang/String;I)Lcom/jcraft/jsch/PortWatcher;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    new-instance v0, Lcom/jcraft/jsch/PortWatcher;

    .line 12
    .line 13
    move-object v1, p0

    .line 14
    move v3, p2

    .line 15
    move-object v4, p3

    .line 16
    move-object v5, p4

    .line 17
    invoke-direct/range {v0 .. v5}, Lcom/jcraft/jsch/PortWatcher;-><init>(Lcom/jcraft/jsch/Session;Ljava/lang/String;ILjava/lang/String;Lcom/jcraft/jsch/ServerSocketFactory;)V

    .line 18
    .line 19
    .line 20
    sget-object p0, Lcom/jcraft/jsch/PortWatcher;->j:Ljava/util/Vector;

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    return-object v0

    .line 26
    :cond_0
    move v3, p2

    .line 27
    new-instance p0, Lcom/jcraft/jsch/JSchException;

    .line 28
    .line 29
    const-string p1, ":"

    .line 30
    .line 31
    const-string p2, " is already registered."

    .line 32
    .line 33
    const-string p3, "PortForwardingL: local port "

    .line 34
    .line 35
    invoke-static {p3, v2, p1, v3, p2}, Lu48;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p0
.end method

.method public static b(Lcom/jcraft/jsch/Session;Ljava/lang/String;I)Lcom/jcraft/jsch/PortWatcher;
    .locals 5

    .line 1
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 2
    .line 3
    .line 4
    move-result-object p1
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    sget-object v0, Lcom/jcraft/jsch/PortWatcher;->j:Ljava/util/Vector;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    :try_start_1
    sget-object v2, Lcom/jcraft/jsch/PortWatcher;->j:Ljava/util/Vector;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-ge v1, v3, :cond_3

    .line 16
    .line 17
    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lcom/jcraft/jsch/PortWatcher;

    .line 22
    .line 23
    iget-object v3, v2, Lcom/jcraft/jsch/PortWatcher;->a:Lcom/jcraft/jsch/Session;

    .line 24
    .line 25
    if-ne v3, p0, :cond_2

    .line 26
    .line 27
    iget v3, v2, Lcom/jcraft/jsch/PortWatcher;->b:I

    .line 28
    .line 29
    if-ne v3, p2, :cond_2

    .line 30
    .line 31
    sget-object v3, Lcom/jcraft/jsch/PortWatcher;->k:Ljava/net/InetAddress;

    .line 32
    .line 33
    if-eqz v3, :cond_0

    .line 34
    .line 35
    iget-object v4, v2, Lcom/jcraft/jsch/PortWatcher;->e:Ljava/net/InetAddress;

    .line 36
    .line 37
    invoke-virtual {v4, v3}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-nez v3, :cond_1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    goto :goto_2

    .line 46
    :cond_0
    :goto_1
    iget-object v3, v2, Lcom/jcraft/jsch/PortWatcher;->e:Ljava/net/InetAddress;

    .line 47
    .line 48
    invoke-virtual {v3, p1}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-eqz v3, :cond_2

    .line 53
    .line 54
    :cond_1
    monitor-exit v0

    .line 55
    return-object v2

    .line 56
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    const/4 p0, 0x0

    .line 60
    monitor-exit v0

    .line 61
    return-object p0

    .line 62
    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    throw p0

    .line 64
    :catch_0
    move-exception p0

    .line 65
    new-instance p2, Lcom/jcraft/jsch/JSchException;

    .line 66
    .line 67
    const-string v0, "PortForwardingL: invalid address "

    .line 68
    .line 69
    const-string v1, " specified."

    .line 70
    .line 71
    invoke-static {v0, p1, v1}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-direct {p2, p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    .line 77
    .line 78
    throw p2
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    const-string v0, "*"

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string v0, "localhost"

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    const-string p0, "127.0.0.1"

    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_1
    :goto_0
    const-string p0, "0.0.0.0"

    .line 30
    .line 31
    :cond_2
    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;ILcom/jcraft/jsch/ServerSocketFactory;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/jcraft/jsch/PortWatcher;->e:Ljava/net/InetAddress;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez p3, :cond_0

    .line 9
    .line 10
    new-instance p3, Ljava/net/ServerSocket;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/jcraft/jsch/PortWatcher;->e:Ljava/net/InetAddress;

    .line 13
    .line 14
    invoke-direct {p3, p2, v1, v0}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception p0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    invoke-interface {p3, p2, v1, v0}, Lcom/jcraft/jsch/ServerSocketFactory;->createServerSocket(IILjava/net/InetAddress;)Ljava/net/ServerSocket;

    .line 21
    .line 22
    .line 23
    move-result-object p3

    .line 24
    :goto_0
    iput-object p3, p0, Lcom/jcraft/jsch/PortWatcher;->g:Ljava/net/ServerSocket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    if-nez p2, :cond_1

    .line 27
    .line 28
    invoke-virtual {p3}, Ljava/net/ServerSocket;->getLocalPort()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    const/4 p2, -0x1

    .line 33
    if-eq p1, p2, :cond_1

    .line 34
    .line 35
    iput p1, p0, Lcom/jcraft/jsch/PortWatcher;->b:I

    .line 36
    .line 37
    :cond_1
    return-void

    .line 38
    :goto_1
    const-string p3, ":"

    .line 39
    .line 40
    const-string v0, " cannot be bound."

    .line 41
    .line 42
    const-string v1, "PortForwardingL: local port "

    .line 43
    .line 44
    invoke-static {v1, p1, p3, p2, v0}, Lu48;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    new-instance p2, Lcom/jcraft/jsch/JSchException;

    .line 49
    .line 50
    invoke-direct {p2, p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    .line 52
    .line 53
    throw p2
.end method

.method public final d()V
    .locals 12

    .line 1
    const-string v0, ":"

    .line 2
    .line 3
    const-string v1, "Failed to add DirectTCPIP channel to "

    .line 4
    .line 5
    const-string v2, "Failed to add DirectStreamLocal channel for socket path: "

    .line 6
    .line 7
    new-instance v3, Lcom/jcraft/jsch/l;

    .line 8
    .line 9
    invoke-direct {v3, p0}, Lcom/jcraft/jsch/l;-><init>(Lcom/jcraft/jsch/PortWatcher;)V

    .line 10
    .line 11
    .line 12
    iput-object v3, p0, Lcom/jcraft/jsch/PortWatcher;->f:Lcom/jcraft/jsch/l;

    .line 13
    .line 14
    :cond_0
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/jcraft/jsch/PortWatcher;->f:Lcom/jcraft/jsch/l;

    .line 15
    .line 16
    if-eqz v3, :cond_6

    .line 17
    .line 18
    iget-object v3, p0, Lcom/jcraft/jsch/PortWatcher;->g:Ljava/net/ServerSocket;

    .line 19
    .line 20
    invoke-virtual {v3}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const/4 v4, 0x1

    .line 25
    invoke-virtual {v3, v4}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 33
    .line 34
    .line 35
    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 36
    iget-object v6, p0, Lcom/jcraft/jsch/PortWatcher;->i:Ljava/lang/String;

    .line 37
    .line 38
    const-string v7, " - session may be disconnecting"

    .line 39
    .line 40
    const/4 v8, 0x0

    .line 41
    iget-object v9, p0, Lcom/jcraft/jsch/PortWatcher;->a:Lcom/jcraft/jsch/Session;

    .line 42
    .line 43
    if-eqz v6, :cond_3

    .line 44
    .line 45
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 46
    .line 47
    .line 48
    move-result v10

    .line 49
    if-lez v10, :cond_3

    .line 50
    .line 51
    const-string v10, "direct-streamlocal@openssh.com"

    .line 52
    .line 53
    invoke-virtual {v9, v10}, Lcom/jcraft/jsch/Session;->openChannel(Ljava/lang/String;)Lcom/jcraft/jsch/Channel;

    .line 54
    .line 55
    .line 56
    move-result-object v10

    .line 57
    check-cast v10, Lcom/jcraft/jsch/ChannelDirectStreamLocal;

    .line 58
    .line 59
    if-eqz v10, :cond_1

    .line 60
    .line 61
    iget-object v7, v10, Lcom/jcraft/jsch/Channel;->i:Lcom/jcraft/jsch/IO;

    .line 62
    .line 63
    iput-object v4, v7, Lcom/jcraft/jsch/IO;->a:Ljava/io/InputStream;

    .line 64
    .line 65
    iput-object v5, v7, Lcom/jcraft/jsch/IO;->b:Ljava/io/OutputStream;

    .line 66
    .line 67
    iput-object v6, v10, Lcom/jcraft/jsch/ChannelDirectStreamLocal;->A:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {v3}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    iput-object v4, v10, Lcom/jcraft/jsch/ChannelDirectTCPIP;->x:Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {v3}, Ljava/net/Socket;->getPort()I

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    iput v3, v10, Lcom/jcraft/jsch/ChannelDirectTCPIP;->y:I

    .line 84
    .line 85
    iget v3, p0, Lcom/jcraft/jsch/PortWatcher;->h:I

    .line 86
    .line 87
    invoke-virtual {v10, v3}, Lcom/jcraft/jsch/ChannelDirectTCPIP;->connect(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_1
    :try_start_2
    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 92
    .line 93
    .line 94
    :try_start_3
    invoke-virtual {v9}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    invoke-interface {v3, v8}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    if-eqz v3, :cond_0

    .line 103
    .line 104
    invoke-virtual {v9}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    new-instance v4, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    :goto_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    invoke-interface {v3, v8, v4}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 127
    .line 128
    .line 129
    goto :goto_0

    .line 130
    :catchall_0
    move-exception v0

    .line 131
    invoke-virtual {v9}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-interface {v1, v8}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    if-eqz v1, :cond_2

    .line 140
    .line 141
    invoke-virtual {v9}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    new-instance v3, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    invoke-interface {v1, v8, v2}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 164
    .line 165
    .line 166
    :cond_2
    throw v0

    .line 167
    :catch_0
    invoke-virtual {v9}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    invoke-interface {v3, v8}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 172
    .line 173
    .line 174
    move-result v3

    .line 175
    if-eqz v3, :cond_0

    .line 176
    .line 177
    invoke-virtual {v9}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    new-instance v4, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    goto :goto_1

    .line 196
    :cond_3
    const-string v6, "direct-tcpip"

    .line 197
    .line 198
    invoke-virtual {v9, v6}, Lcom/jcraft/jsch/Session;->openChannel(Ljava/lang/String;)Lcom/jcraft/jsch/Channel;

    .line 199
    .line 200
    .line 201
    move-result-object v6

    .line 202
    check-cast v6, Lcom/jcraft/jsch/ChannelDirectTCPIP;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 203
    .line 204
    iget v10, p0, Lcom/jcraft/jsch/PortWatcher;->c:I

    .line 205
    .line 206
    iget-object v11, p0, Lcom/jcraft/jsch/PortWatcher;->d:Ljava/lang/String;

    .line 207
    .line 208
    if-eqz v6, :cond_4

    .line 209
    .line 210
    :try_start_4
    iget-object v7, v6, Lcom/jcraft/jsch/Channel;->i:Lcom/jcraft/jsch/IO;

    .line 211
    .line 212
    iput-object v4, v7, Lcom/jcraft/jsch/IO;->a:Ljava/io/InputStream;

    .line 213
    .line 214
    iput-object v5, v7, Lcom/jcraft/jsch/IO;->b:Ljava/io/OutputStream;

    .line 215
    .line 216
    iput-object v11, v6, Lcom/jcraft/jsch/ChannelDirectTCPIP;->v:Ljava/lang/String;

    .line 217
    .line 218
    iput v10, v6, Lcom/jcraft/jsch/ChannelDirectTCPIP;->w:I

    .line 219
    .line 220
    invoke-virtual {v3}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    .line 221
    .line 222
    .line 223
    move-result-object v4

    .line 224
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v4

    .line 228
    iput-object v4, v6, Lcom/jcraft/jsch/ChannelDirectTCPIP;->x:Ljava/lang/String;

    .line 229
    .line 230
    invoke-virtual {v3}, Ljava/net/Socket;->getPort()I

    .line 231
    .line 232
    .line 233
    move-result v3

    .line 234
    iput v3, v6, Lcom/jcraft/jsch/ChannelDirectTCPIP;->y:I

    .line 235
    .line 236
    iget v3, p0, Lcom/jcraft/jsch/PortWatcher;->h:I

    .line 237
    .line 238
    invoke-virtual {v6, v3}, Lcom/jcraft/jsch/ChannelDirectTCPIP;->connect(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 239
    .line 240
    .line 241
    goto/16 :goto_0

    .line 242
    .line 243
    :cond_4
    :try_start_5
    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 244
    .line 245
    .line 246
    :try_start_6
    invoke-virtual {v9}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 247
    .line 248
    .line 249
    move-result-object v3

    .line 250
    invoke-interface {v3, v8}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 251
    .line 252
    .line 253
    move-result v3

    .line 254
    if-eqz v3, :cond_0

    .line 255
    .line 256
    invoke-virtual {v9}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 257
    .line 258
    .line 259
    move-result-object v3

    .line 260
    new-instance v4, Ljava/lang/StringBuilder;

    .line 261
    .line 262
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    :goto_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v4

    .line 284
    invoke-interface {v3, v8, v4}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 285
    .line 286
    .line 287
    goto/16 :goto_0

    .line 288
    .line 289
    :catchall_1
    move-exception v2

    .line 290
    invoke-virtual {v9}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 291
    .line 292
    .line 293
    move-result-object v3

    .line 294
    invoke-interface {v3, v8}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 295
    .line 296
    .line 297
    move-result v3

    .line 298
    if-eqz v3, :cond_5

    .line 299
    .line 300
    invoke-virtual {v9}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 301
    .line 302
    .line 303
    move-result-object v3

    .line 304
    new-instance v4, Ljava/lang/StringBuilder;

    .line 305
    .line 306
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    invoke-interface {v3, v8, v0}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 329
    .line 330
    .line 331
    :cond_5
    throw v2

    .line 332
    :catch_1
    invoke-virtual {v9}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 333
    .line 334
    .line 335
    move-result-object v3

    .line 336
    invoke-interface {v3, v8}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 337
    .line 338
    .line 339
    move-result v3

    .line 340
    if-eqz v3, :cond_0

    .line 341
    .line 342
    invoke-virtual {v9}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 343
    .line 344
    .line 345
    move-result-object v3

    .line 346
    new-instance v4, Ljava/lang/StringBuilder;

    .line 347
    .line 348
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 349
    .line 350
    .line 351
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 364
    .line 365
    .line 366
    goto :goto_2

    .line 367
    :catch_2
    :cond_6
    const/4 v0, 0x0

    .line 368
    iput-object v0, p0, Lcom/jcraft/jsch/PortWatcher;->f:Lcom/jcraft/jsch/l;

    .line 369
    .line 370
    :try_start_7
    iget-object v1, p0, Lcom/jcraft/jsch/PortWatcher;->g:Ljava/net/ServerSocket;

    .line 371
    .line 372
    if-eqz v1, :cond_7

    .line 373
    .line 374
    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V

    .line 375
    .line 376
    .line 377
    :cond_7
    iput-object v0, p0, Lcom/jcraft/jsch/PortWatcher;->g:Ljava/net/ServerSocket;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 378
    .line 379
    :catch_3
    return-void
.end method
