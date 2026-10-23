.class public final Log2;
.super Ljava/net/Socket;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Ljava/net/Socket;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/net/Socket;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "delegate"

    .line 5
    .line 6
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Log2;->a:Ljava/net/Socket;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final bind(Ljava/net/SocketAddress;)V
    .locals 0

    .line 1
    iget-object p0, p0, Log2;->a:Ljava/net/Socket;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final declared-synchronized close()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Log2;->a:Ljava/net/Socket;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception v0

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    throw v0
.end method

.method public final connect(Ljava/net/SocketAddress;)V
    .locals 0

    .line 1
    iget-object p0, p0, Log2;->a:Ljava/net/Socket;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final connect(Ljava/net/SocketAddress;I)V
    .locals 0

    .line 7
    iget-object p0, p0, Log2;->a:Ljava/net/Socket;

    invoke-virtual {p0, p1, p2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    return-void
.end method

.method public final getChannel()Ljava/nio/channels/SocketChannel;
    .locals 0

    .line 1
    iget-object p0, p0, Log2;->a:Ljava/net/Socket;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/net/Socket;->getChannel()Ljava/nio/channels/SocketChannel;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getInetAddress()Ljava/net/InetAddress;
    .locals 0

    .line 1
    iget-object p0, p0, Log2;->a:Ljava/net/Socket;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getInputStream()Ljava/io/InputStream;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/zip/InflaterInputStream;

    .line 2
    .line 3
    iget-object p0, p0, Log2;->a:Ljava/net/Socket;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-direct {v0, p0}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getKeepAlive()Z
    .locals 0

    .line 1
    iget-object p0, p0, Log2;->a:Ljava/net/Socket;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/net/Socket;->getKeepAlive()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getLocalAddress()Ljava/net/InetAddress;
    .locals 0

    .line 1
    iget-object p0, p0, Log2;->a:Ljava/net/Socket;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getLocalPort()I
    .locals 0

    .line 1
    iget-object p0, p0, Log2;->a:Ljava/net/Socket;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/net/Socket;->getLocalPort()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getLocalSocketAddress()Ljava/net/SocketAddress;
    .locals 0

    .line 1
    iget-object p0, p0, Log2;->a:Ljava/net/Socket;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getOOBInline()Z
    .locals 0

    .line 1
    iget-object p0, p0, Log2;->a:Ljava/net/Socket;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/net/Socket;->getOOBInline()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/zip/DeflaterOutputStream;

    .line 2
    .line 3
    iget-object p0, p0, Log2;->a:Ljava/net/Socket;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-direct {v0, p0}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getPort()I
    .locals 0

    .line 1
    iget-object p0, p0, Log2;->a:Ljava/net/Socket;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/net/Socket;->getPort()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final declared-synchronized getReceiveBufferSize()I
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Log2;->a:Ljava/net/Socket;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/net/Socket;->getReceiveBufferSize()I

    .line 5
    .line 6
    .line 7
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    .line 9
    return v0

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    throw v0
.end method

.method public final getRemoteSocketAddress()Ljava/net/SocketAddress;
    .locals 0

    .line 1
    iget-object p0, p0, Log2;->a:Ljava/net/Socket;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getReuseAddress()Z
    .locals 0

    .line 1
    iget-object p0, p0, Log2;->a:Ljava/net/Socket;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/net/Socket;->getReuseAddress()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final declared-synchronized getSendBufferSize()I
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Log2;->a:Ljava/net/Socket;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/net/Socket;->getSendBufferSize()I

    .line 5
    .line 6
    .line 7
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    .line 9
    return v0

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    throw v0
.end method

.method public final getSoLinger()I
    .locals 0

    .line 1
    iget-object p0, p0, Log2;->a:Ljava/net/Socket;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/net/Socket;->getSoLinger()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final declared-synchronized getSoTimeout()I
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Log2;->a:Ljava/net/Socket;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/net/Socket;->getSoTimeout()I

    .line 5
    .line 6
    .line 7
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    .line 9
    return v0

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    throw v0
.end method

.method public final getTcpNoDelay()Z
    .locals 0

    .line 1
    iget-object p0, p0, Log2;->a:Ljava/net/Socket;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/net/Socket;->getTcpNoDelay()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getTrafficClass()I
    .locals 0

    .line 1
    iget-object p0, p0, Log2;->a:Ljava/net/Socket;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/net/Socket;->getTrafficClass()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isBound()Z
    .locals 0

    .line 1
    iget-object p0, p0, Log2;->a:Ljava/net/Socket;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/net/Socket;->isBound()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isClosed()Z
    .locals 0

    .line 1
    iget-object p0, p0, Log2;->a:Ljava/net/Socket;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isConnected()Z
    .locals 0

    .line 1
    iget-object p0, p0, Log2;->a:Ljava/net/Socket;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isInputShutdown()Z
    .locals 0

    .line 1
    iget-object p0, p0, Log2;->a:Ljava/net/Socket;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/net/Socket;->isInputShutdown()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isOutputShutdown()Z
    .locals 0

    .line 1
    iget-object p0, p0, Log2;->a:Ljava/net/Socket;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/net/Socket;->isOutputShutdown()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final sendUrgentData(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Log2;->a:Ljava/net/Socket;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/net/Socket;->sendUrgentData(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setKeepAlive(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Log2;->a:Ljava/net/Socket;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setOOBInline(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Log2;->a:Ljava/net/Socket;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/net/Socket;->setOOBInline(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setPerformancePreferences(III)V
    .locals 0

    .line 1
    iget-object p0, p0, Log2;->a:Ljava/net/Socket;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Ljava/net/Socket;->setPerformancePreferences(III)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final declared-synchronized setReceiveBufferSize(I)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Log2;->a:Ljava/net/Socket;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Ljava/net/Socket;->setReceiveBufferSize(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    throw p1
.end method

.method public final setReuseAddress(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Log2;->a:Ljava/net/Socket;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/net/Socket;->setReuseAddress(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final declared-synchronized setSendBufferSize(I)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Log2;->a:Ljava/net/Socket;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSendBufferSize(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    throw p1
.end method

.method public final setSoLinger(ZI)V
    .locals 0

    .line 1
    iget-object p0, p0, Log2;->a:Ljava/net/Socket;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Ljava/net/Socket;->setSoLinger(ZI)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final declared-synchronized setSoTimeout(I)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Log2;->a:Ljava/net/Socket;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    throw p1
.end method

.method public final setTcpNoDelay(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Log2;->a:Ljava/net/Socket;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setTrafficClass(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Log2;->a:Ljava/net/Socket;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/net/Socket;->setTrafficClass(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final shutdownInput()V
    .locals 0

    .line 1
    iget-object p0, p0, Log2;->a:Ljava/net/Socket;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/net/Socket;->shutdownInput()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final shutdownOutput()V
    .locals 0

    .line 1
    iget-object p0, p0, Log2;->a:Ljava/net/Socket;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/net/Socket;->shutdownOutput()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Log2;->a:Ljava/net/Socket;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/net/Socket;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
