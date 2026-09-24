.class public final Lls4;
.super Ljava/net/Socket;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Ljavax/net/ssl/SSLSocket;

.field public final b:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Ljavax/net/ssl/SSLSocket;Ljava/net/Socket;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/net/Socket;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lls4;->a:Ljavax/net/ssl/SSLSocket;

    .line 5
    .line 6
    iput-object p2, p0, Lls4;->b:Ljava/net/Socket;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lls4;->b:Ljava/net/Socket;

    .line 2
    .line 3
    :try_start_0
    iget-object p0, p0, Lls4;->a:Ljavax/net/ssl/SSLSocket;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 14
    .line 15
    .line 16
    throw p0
.end method

.method public final getInetAddress()Ljava/net/InetAddress;
    .locals 0

    .line 1
    iget-object p0, p0, Lls4;->b:Ljava/net/Socket;

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
    .locals 0

    .line 1
    iget-object p0, p0, Lls4;->a:Ljavax/net/ssl/SSLSocket;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public final getKeepAlive()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lls4;->b:Ljava/net/Socket;

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
    iget-object p0, p0, Lls4;->b:Ljava/net/Socket;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public final getLocalPort()I
    .locals 0

    .line 1
    iget-object p0, p0, Lls4;->b:Ljava/net/Socket;

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
    iget-object p0, p0, Lls4;->b:Ljava/net/Socket;

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

.method public final getOutputStream()Ljava/io/OutputStream;
    .locals 0

    .line 1
    iget-object p0, p0, Lls4;->a:Ljavax/net/ssl/SSLSocket;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public final getPort()I
    .locals 0

    .line 1
    iget-object p0, p0, Lls4;->b:Ljava/net/Socket;

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

.method public final getRemoteSocketAddress()Ljava/net/SocketAddress;
    .locals 0

    .line 1
    iget-object p0, p0, Lls4;->b:Ljava/net/Socket;

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

.method public final getSoTimeout()I
    .locals 0

    .line 1
    iget-object p0, p0, Lls4;->a:Ljavax/net/ssl/SSLSocket;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/net/Socket;->getSoTimeout()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getTcpNoDelay()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lls4;->b:Ljava/net/Socket;

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

.method public final isBound()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lls4;->b:Ljava/net/Socket;

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
    .locals 1

    .line 1
    iget-object v0, p0, Lls4;->a:Ljavax/net/ssl/SSLSocket;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object p0, p0, Lls4;->b:Ljava/net/Socket;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    return p0

    .line 20
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 21
    return p0
.end method

.method public final isConnected()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lls4;->b:Ljava/net/Socket;

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

.method public final setKeepAlive(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lls4;->b:Ljava/net/Socket;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setSoTimeout(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lls4;->a:Ljavax/net/ssl/SSLSocket;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lls4;->b:Ljava/net/Socket;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setTcpNoDelay(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lls4;->b:Ljava/net/Socket;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final shutdownInput()V
    .locals 0

    .line 1
    iget-object p0, p0, Lls4;->a:Ljavax/net/ssl/SSLSocket;

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
    iget-object p0, p0, Lls4;->a:Ljavax/net/ssl/SSLSocket;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/net/Socket;->shutdownOutput()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
