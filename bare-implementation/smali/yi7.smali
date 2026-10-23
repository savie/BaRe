.class public abstract Lyi7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final i:Ljavax/net/SocketFactory;

.field public static final j:Ljavax/net/ServerSocketFactory;


# instance fields
.field public a:I

.field public b:Ljava/net/Socket;

.field public c:Ljava/lang/String;

.field public d:Ljava/io/InputStream;

.field public e:Ljava/io/OutputStream;

.field public f:Ljavax/net/SocketFactory;

.field public g:Ljavax/net/ServerSocketFactory;

.field public h:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lyi7;->i:Ljavax/net/SocketFactory;

    .line 6
    .line 7
    invoke-static {}, Ljavax/net/ServerSocketFactory;->getDefault()Ljavax/net/ServerSocketFactory;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lyi7;->j:Ljavax/net/ServerSocketFactory;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public abstract b()V
.end method

.method public final c(ILjava/lang/String;)V
    .locals 1

    .line 1
    iput-object p2, p0, Lyi7;->c:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v0, Ljava/net/InetSocketAddress;

    .line 4
    .line 5
    invoke-direct {v0, p2, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lyi7;->f:Ljavax/net/SocketFactory;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lyi7;->b:Ljava/net/Socket;

    .line 15
    .line 16
    iget p2, p0, Lyi7;->h:I

    .line 17
    .line 18
    invoke-virtual {p1, v0, p2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lyi7;->b()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final d()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lyi7;->b:Ljava/net/Socket;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    move v0, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    :goto_0
    if-eqz v0, :cond_3

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lyi7;->b:Ljava/net/Socket;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_3

    .line 21
    .line 22
    iget-object v0, p0, Lyi7;->b:Ljava/net/Socket;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/net/Socket;->getPort()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_3

    .line 29
    .line 30
    iget-object v0, p0, Lyi7;->b:Ljava/net/Socket;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    iget-object v0, p0, Lyi7;->b:Ljava/net/Socket;

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    iget-object v0, p0, Lyi7;->b:Ljava/net/Socket;

    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-nez v0, :cond_3

    .line 54
    .line 55
    iget-object v0, p0, Lyi7;->b:Ljava/net/Socket;

    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_2
    iget-object v0, p0, Lyi7;->b:Ljava/net/Socket;

    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 67
    .line 68
    .line 69
    iget-object p0, p0, Lyi7;->b:Ljava/net/Socket;

    .line 70
    .line 71
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .line 73
    .line 74
    const/4 p0, 0x1

    .line 75
    return p0

    .line 76
    :catch_0
    :cond_3
    :goto_1
    return v1
.end method

.method public final e(Lz96;)V
    .locals 0

    .line 1
    check-cast p0, Lz13;

    .line 2
    .line 3
    iget-object p0, p0, Lz13;->p:Lba6;

    .line 4
    .line 5
    iget-object p0, p0, Lba6;->b:Lvy4;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lvy4;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final f(Ljava/net/Socket;)Z
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object p0, p0, Lyi7;->b:Ljava/net/Socket;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-static {p1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    const/4 p0, 0x1

    .line 20
    return p0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    return p0
.end method
