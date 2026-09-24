.class public final Lokhttp3/internal/connection/SequentialExchangeFinder;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lokhttp3/internal/connection/ExchangeFinder;


# instance fields
.field public final a:Lokhttp3/internal/connection/RealRoutePlanner;


# direct methods
.method public constructor <init>(Lokhttp3/internal/connection/RealRoutePlanner;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lokhttp3/internal/connection/SequentialExchangeFinder;->a:Lokhttp3/internal/connection/RealRoutePlanner;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()Lokhttp3/internal/connection/RealConnection;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    move-object v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lokhttp3/internal/connection/SequentialExchangeFinder;->a:Lokhttp3/internal/connection/RealRoutePlanner;

    .line 4
    .line 5
    iget-object v3, v2, Lokhttp3/internal/connection/RealRoutePlanner;->l:Lokhttp3/internal/connection/ConnectionUser;

    .line 6
    .line 7
    invoke-interface {v3}, Lokhttp3/internal/connection/ConnectionUser;->a()Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    if-nez v3, :cond_6

    .line 12
    .line 13
    :try_start_0
    invoke-virtual {v2}, Lokhttp3/internal/connection/RealRoutePlanner;->f()Lokhttp3/internal/connection/RoutePlanner$Plan;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-interface {v3}, Lokhttp3/internal/connection/RoutePlanner$Plan;->d()Z

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    if-nez v4, :cond_3

    .line 22
    .line 23
    invoke-interface {v3}, Lokhttp3/internal/connection/RoutePlanner$Plan;->e()Lokhttp3/internal/connection/RoutePlanner$ConnectResult;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    iget-object v5, v4, Lokhttp3/internal/connection/RoutePlanner$ConnectResult;->b:Lokhttp3/internal/connection/RoutePlanner$Plan;

    .line 28
    .line 29
    if-nez v5, :cond_0

    .line 30
    .line 31
    iget-object v5, v4, Lokhttp3/internal/connection/RoutePlanner$ConnectResult;->c:Ljava/lang/Throwable;

    .line 32
    .line 33
    if-nez v5, :cond_0

    .line 34
    .line 35
    const/4 v5, 0x1

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    const/4 v5, 0x0

    .line 38
    :goto_1
    if-eqz v5, :cond_1

    .line 39
    .line 40
    invoke-interface {v3}, Lokhttp3/internal/connection/RoutePlanner$Plan;->g()Lokhttp3/internal/connection/RoutePlanner$ConnectResult;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    goto :goto_2

    .line 45
    :catch_0
    move-exception v3

    .line 46
    goto :goto_3

    .line 47
    :cond_1
    :goto_2
    iget-object v5, v4, Lokhttp3/internal/connection/RoutePlanner$ConnectResult;->b:Lokhttp3/internal/connection/RoutePlanner$Plan;

    .line 48
    .line 49
    iget-object v4, v4, Lokhttp3/internal/connection/RoutePlanner$ConnectResult;->c:Ljava/lang/Throwable;

    .line 50
    .line 51
    if-nez v4, :cond_2

    .line 52
    .line 53
    if-eqz v5, :cond_3

    .line 54
    .line 55
    iget-object v3, v2, Lokhttp3/internal/connection/RealRoutePlanner;->p:Lw40;

    .line 56
    .line 57
    invoke-virtual {v3, v5}, Lw40;->addFirst(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    throw v4

    .line 62
    :cond_3
    invoke-interface {v3}, Lokhttp3/internal/connection/RoutePlanner$Plan;->c()Lokhttp3/internal/connection/RealConnection;

    .line 63
    .line 64
    .line 65
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    return-object p0

    .line 67
    :goto_3
    if-nez v1, :cond_4

    .line 68
    .line 69
    move-object v1, v3

    .line 70
    goto :goto_4

    .line 71
    :cond_4
    invoke-static {v1, v3}, Lyc9;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 72
    .line 73
    .line 74
    :goto_4
    invoke-virtual {v2, v0}, Lokhttp3/internal/connection/RealRoutePlanner;->b(Lokhttp3/internal/connection/RealConnection;)Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-eqz v2, :cond_5

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_5
    throw v1

    .line 82
    :cond_6
    const-string p0, "Canceled"

    .line 83
    .line 84
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    return-object v0
.end method

.method public final b()Lokhttp3/internal/connection/RoutePlanner;
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/internal/connection/SequentialExchangeFinder;->a:Lokhttp3/internal/connection/RealRoutePlanner;

    .line 2
    .line 3
    return-object p0
.end method
