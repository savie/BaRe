.class public final Llz0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lokhttp3/Authenticator;


# instance fields
.field public final b:Ldn2;

.field public final c:Ljava/util/concurrent/ConcurrentHashMap;

.field public final d:Lsl4;


# direct methods
.method public constructor <init>(Ldn2;Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 1

    .line 1
    new-instance v0, Lsl4;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Llz0;->b:Ldn2;

    .line 10
    .line 11
    iput-object p2, p0, Llz0;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    .line 13
    iput-object v0, p0, Llz0;->d:Lsl4;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final b(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;
    .locals 4

    .line 1
    iget-object v0, p0, Llz0;->b:Ldn2;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Ldn2;->b(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    if-eqz p2, :cond_2

    .line 8
    .line 9
    iget-object v1, p0, Llz0;->d:Lsl4;

    .line 10
    .line 11
    invoke-virtual {v1}, Lsl4;->w()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    iget-object v3, p2, Lokhttp3/Request;->c:Lokhttp3/Headers;

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    const-string v2, "Proxy-Authorization"

    .line 20
    .line 21
    invoke-virtual {v3, v2}, Lokhttp3/Headers;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const-string v2, "Authorization"

    .line 27
    .line 28
    invoke-virtual {v3, v2}, Lokhttp3/Headers;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    :goto_0
    if-eqz v2, :cond_2

    .line 33
    .line 34
    invoke-virtual {v1}, Lsl4;->w()Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    iget-object p1, p1, Lokhttp3/Route;->b:Ljava/net/Proxy;

    .line 41
    .line 42
    invoke-virtual {v1, p1}, Lsl4;->z(Ljava/lang/Object;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    invoke-virtual {v1, p2}, Lsl4;->z(Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    :goto_1
    iget-object p0, p0, Llz0;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 52
    .line 53
    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    :cond_2
    return-object p2
.end method
