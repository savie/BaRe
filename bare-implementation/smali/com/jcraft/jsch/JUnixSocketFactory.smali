.class public Lcom/jcraft/jsch/JUnixSocketFactory;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/jcraft/jsch/USocketFactory;


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/AgentProxyException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-static {}, Lorg/newsclub/net/unix/AFUNIXSocketChannel;->open()Lorg/newsclub/net/unix/AFUNIXSocketChannel;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lorg/newsclub/net/unix/AFUNIXSocketChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void

    .line 14
    :catch_0
    move-exception p0

    .line 15
    new-instance v0, Lcom/jcraft/jsch/AgentProxyException;

    .line 16
    .line 17
    const-string v1, "junixsocket library unavailable"

    .line 18
    .line 19
    invoke-direct {v0, v1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 20
    .line 21
    .line 22
    throw v0
.end method


# virtual methods
.method public final bind(Ljava/nio/file/Path;)Ljava/nio/channels/ServerSocketChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lorg/newsclub/net/unix/AFUNIXSocketAddress;->of(Ljava/nio/file/Path;)Lorg/newsclub/net/unix/AFUNIXSocketAddress;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {}, Lorg/newsclub/net/unix/AFUNIXServerSocketChannel;->open()Lorg/newsclub/net/unix/AFUNIXServerSocketChannel;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/4 v0, 0x1

    .line 10
    invoke-virtual {p1, v0}, Lorg/newsclub/net/unix/AFUNIXServerSocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p0}, Lorg/newsclub/net/unix/AFUNIXServerSocketChannel;->bind(Ljava/net/SocketAddress;)Ljava/nio/channels/ServerSocketChannel;

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method public final connect(Ljava/nio/file/Path;)Ljava/nio/channels/SocketChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lorg/newsclub/net/unix/AFUNIXSocketAddress;->of(Ljava/nio/file/Path;)Lorg/newsclub/net/unix/AFUNIXSocketAddress;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {}, Lorg/newsclub/net/unix/AFUNIXSocketChannel;->open()Lorg/newsclub/net/unix/AFUNIXSocketChannel;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/4 v0, 0x1

    .line 10
    invoke-virtual {p1, v0}, Lorg/newsclub/net/unix/AFUNIXSocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p0}, Lorg/newsclub/net/unix/AFUNIXSocketChannel;->connect(Ljava/net/SocketAddress;)Z

    .line 14
    .line 15
    .line 16
    return-object p1
.end method
