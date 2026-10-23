.class public final Lg80;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lokhttp3/Interceptor;


# instance fields
.field public final a:Ljava/util/concurrent/ConcurrentHashMap;

.field public final b:Lsl4;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ConcurrentHashMap;)V
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
    iput-object p1, p0, Lg80;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    iput-object v0, p0, Lg80;->b:Lsl4;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a(Lokhttp3/internal/http/RealInterceptorChain;)Lokhttp3/Response;
    .locals 6

    .line 1
    iget-object v0, p1, Lokhttp3/internal/http/RealInterceptorChain;->e:Lokhttp3/Request;

    .line 2
    .line 3
    iget-object v1, p0, Lg80;->b:Lsl4;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Lsl4;->z(Ljava/lang/Object;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lg80;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Lkz0;

    .line 16
    .line 17
    iget-object v3, p1, Lokhttp3/internal/http/RealInterceptorChain;->d:Lokhttp3/internal/connection/Exchange;

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    invoke-virtual {v3}, Lokhttp3/internal/connection/Exchange;->c()Lokhttp3/internal/connection/RealConnection;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move-object v3, v4

    .line 28
    :goto_0
    if-eqz v3, :cond_1

    .line 29
    .line 30
    iget-object v3, v3, Lokhttp3/internal/connection/RealConnection;->d:Lokhttp3/Route;

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move-object v3, v4

    .line 34
    :goto_1
    if-eqz v2, :cond_2

    .line 35
    .line 36
    invoke-interface {v2, v3, v0}, Lkz0;->a(Lokhttp3/Route;Lokhttp3/Request;)Lokhttp3/Request;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    goto :goto_2

    .line 41
    :cond_2
    move-object v3, v4

    .line 42
    :goto_2
    if-nez v3, :cond_3

    .line 43
    .line 44
    move-object v3, v0

    .line 45
    :cond_3
    invoke-virtual {p1, v3}, Lokhttp3/internal/http/RealInterceptorChain;->b(Lokhttp3/Request;)Lokhttp3/Response;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    iget v5, v3, Lokhttp3/Response;->d:I

    .line 50
    .line 51
    if-eqz v2, :cond_4

    .line 52
    .line 53
    const/16 v2, 0x191

    .line 54
    .line 55
    if-ne v5, v2, :cond_4

    .line 56
    .line 57
    iget-object p0, p0, Lg80;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 58
    .line 59
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    if-eqz p0, :cond_4

    .line 64
    .line 65
    iget-object p0, v3, Lokhttp3/Response;->k:Lokhttp3/ResponseBody;

    .line 66
    .line 67
    invoke-virtual {p0}, Lokhttp3/ResponseBody;->close()V

    .line 68
    .line 69
    .line 70
    sget-object p0, Lokhttp3/internal/platform/Platform;->a:Lokhttp3/internal/platform/Platform;

    .line 71
    .line 72
    const-string v1, "Cached authentication expired. Sending a new request."

    .line 73
    .line 74
    const/4 v2, 0x4

    .line 75
    invoke-virtual {p0, v2, v1, v4}, Lokhttp3/internal/platform/Platform;->j(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v0}, Lokhttp3/internal/http/RealInterceptorChain;->b(Lokhttp3/Request;)Lokhttp3/Response;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    :cond_4
    return-object v3
.end method
