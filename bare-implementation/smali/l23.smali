.class public final Ll23;
.super Ljavax/net/ServerSocketFactory;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Ljavax/net/ssl/SSLContext;


# direct methods
.method public constructor <init>(Ljavax/net/ssl/SSLContext;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljavax/net/ServerSocketFactory;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ll23;->a:Ljavax/net/ssl/SSLContext;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final createServerSocket()Ljava/net/ServerSocket;
    .locals 2

    .line 1
    iget-object p0, p0, Ll23;->a:Ljavax/net/ssl/SSLContext;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljavax/net/ssl/SSLContext;->getServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljavax/net/ServerSocketFactory;->createServerSocket()Ljava/net/ServerSocket;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    move-object v0, p0

    .line 12
    check-cast v0, Ljavax/net/ssl/SSLServerSocket;

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLServerSocket;->setUseClientMode(Z)V

    .line 16
    .line 17
    .line 18
    return-object p0
.end method

.method public final createServerSocket(I)Ljava/net/ServerSocket;
    .locals 1

    .line 19
    iget-object p0, p0, Ll23;->a:Ljavax/net/ssl/SSLContext;

    invoke-virtual {p0}, Ljavax/net/ssl/SSLContext;->getServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;

    move-result-object p0

    .line 20
    invoke-virtual {p0, p1}, Ljavax/net/ServerSocketFactory;->createServerSocket(I)Ljava/net/ServerSocket;

    move-result-object p0

    .line 21
    move-object p1, p0

    check-cast p1, Ljavax/net/ssl/SSLServerSocket;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLServerSocket;->setUseClientMode(Z)V

    return-object p0
.end method

.method public final createServerSocket(II)Ljava/net/ServerSocket;
    .locals 0

    .line 22
    iget-object p0, p0, Ll23;->a:Ljavax/net/ssl/SSLContext;

    invoke-virtual {p0}, Ljavax/net/ssl/SSLContext;->getServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;

    move-result-object p0

    .line 23
    invoke-virtual {p0, p1, p2}, Ljavax/net/ServerSocketFactory;->createServerSocket(II)Ljava/net/ServerSocket;

    move-result-object p0

    .line 24
    move-object p1, p0

    check-cast p1, Ljavax/net/ssl/SSLServerSocket;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljavax/net/ssl/SSLServerSocket;->setUseClientMode(Z)V

    return-object p0
.end method

.method public final createServerSocket(IILjava/net/InetAddress;)Ljava/net/ServerSocket;
    .locals 0

    .line 25
    iget-object p0, p0, Ll23;->a:Ljavax/net/ssl/SSLContext;

    invoke-virtual {p0}, Ljavax/net/ssl/SSLContext;->getServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;

    move-result-object p0

    .line 26
    invoke-virtual {p0, p1, p2, p3}, Ljavax/net/ServerSocketFactory;->createServerSocket(IILjava/net/InetAddress;)Ljava/net/ServerSocket;

    move-result-object p0

    .line 27
    move-object p1, p0

    check-cast p1, Ljavax/net/ssl/SSLServerSocket;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljavax/net/ssl/SSLServerSocket;->setUseClientMode(Z)V

    return-object p0
.end method
