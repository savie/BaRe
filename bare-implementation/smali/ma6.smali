.class public final Lma6;
.super Ljavax/net/SocketFactory;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final c:Ll15;


# instance fields
.field public final a:Ljava/net/Proxy;

.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lma6;

    .line 2
    .line 3
    invoke-static {v0}, Lo15;->b(Ljava/lang/Class;)Ll15;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lma6;->c:Ll15;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    .line 2
    .line 3
    invoke-direct {p0}, Ljavax/net/SocketFactory;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lma6;->a:Ljava/net/Proxy;

    .line 7
    .line 8
    const/16 v0, 0x1388

    .line 9
    .line 10
    iput v0, p0, Lma6;->b:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)Ljava/net/Socket;
    .locals 2

    .line 1
    new-instance v0, Ljava/net/Socket;

    .line 2
    .line 3
    iget-object v1, p0, Lma6;->a:Ljava/net/Proxy;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    .line 6
    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, p2}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    sget-object p2, Lma6;->c:Ll15;

    .line 14
    .line 15
    const-string v1, "Connecting to {}"

    .line 16
    .line 17
    invoke-interface {p2, p1, v1}, Ll15;->D(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget p0, p0, Lma6;->b:I

    .line 21
    .line 22
    invoke-virtual {v0, p1, p0}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method

.method public final createSocket()Ljava/net/Socket;
    .locals 1

    .line 17
    new-instance v0, Ljava/net/Socket;

    iget-object p0, p0, Lma6;->a:Ljava/net/Proxy;

    invoke-direct {v0, p0}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    return-object v0
.end method

.method public final createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 1

    .line 16
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lma6;->a(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)Ljava/net/Socket;

    move-result-object p0

    return-object p0
.end method

.method public final createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1

    .line 1
    new-instance v0, Ljava/net/InetSocketAddress;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/net/InetSocketAddress;

    .line 7
    .line 8
    invoke-direct {p1, p3, p4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0, p1}, Lma6;->a(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)Ljava/net/Socket;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public final createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1

    .line 18
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lma6;->a(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)Ljava/net/Socket;

    move-result-object p0

    return-object p0
.end method

.method public final createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1

    .line 19
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    new-instance p1, Ljava/net/InetSocketAddress;

    invoke-direct {p1, p3, p4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {p0, v0, p1}, Lma6;->a(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)Ljava/net/Socket;

    move-result-object p0

    return-object p0
.end method
