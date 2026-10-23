.class public final Lww2;
.super Ljava/net/Socket;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Ljava/net/Socket;

.field public final b:I


# direct methods
.method public constructor <init>(Ljava/net/Socket;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/net/Socket;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lww2;->a:Ljava/net/Socket;

    .line 5
    .line 6
    iput p2, p0, Lww2;->b:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    .line 1
    iget-object p0, p0, Lww2;->a:Ljava/net/Socket;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/net/Socket;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final getInetAddress()Ljava/net/InetAddress;
    .locals 0

    .line 1
    iget-object p0, p0, Lww2;->a:Ljava/net/Socket;

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
    iget-object p0, p0, Lww2;->a:Ljava/net/Socket;

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
    iget-object p0, p0, Lww2;->a:Ljava/net/Socket;

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
    iget-object p0, p0, Lww2;->a:Ljava/net/Socket;

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
    iget-object p0, p0, Lww2;->a:Ljava/net/Socket;

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
    iget-object p0, p0, Lww2;->a:Ljava/net/Socket;

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
    iget-object p0, p0, Lww2;->a:Ljava/net/Socket;

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
    iget p0, p0, Lww2;->b:I

    .line 2
    .line 3
    return p0
.end method

.method public final getRemoteSocketAddress()Ljava/net/SocketAddress;
    .locals 0

    .line 1
    iget-object p0, p0, Lww2;->a:Ljava/net/Socket;

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
    iget-object p0, p0, Lww2;->a:Ljava/net/Socket;

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
    iget-object p0, p0, Lww2;->a:Ljava/net/Socket;

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
    iget-object p0, p0, Lww2;->a:Ljava/net/Socket;

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
    iget-object p0, p0, Lww2;->a:Ljava/net/Socket;

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
    iget-object p0, p0, Lww2;->a:Ljava/net/Socket;

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
    iget-object p0, p0, Lww2;->a:Ljava/net/Socket;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setSoTimeout(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lww2;->a:Ljava/net/Socket;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setTcpNoDelay(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lww2;->a:Ljava/net/Socket;

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
    iget-object p0, p0, Lww2;->a:Ljava/net/Socket;

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
    iget-object p0, p0, Lww2;->a:Ljava/net/Socket;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/net/Socket;->shutdownOutput()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
