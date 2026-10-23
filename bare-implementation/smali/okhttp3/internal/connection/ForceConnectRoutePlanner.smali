.class public final Lokhttp3/internal/connection/ForceConnectRoutePlanner;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lokhttp3/internal/connection/RoutePlanner;


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
    iput-object p1, p0, Lokhttp3/internal/connection/ForceConnectRoutePlanner;->a:Lokhttp3/internal/connection/RealRoutePlanner;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/internal/connection/ForceConnectRoutePlanner;->a:Lokhttp3/internal/connection/RealRoutePlanner;

    .line 2
    .line 3
    iget-object p0, p0, Lokhttp3/internal/connection/RealRoutePlanner;->l:Lokhttp3/internal/connection/ConnectionUser;

    .line 4
    .line 5
    invoke-interface {p0}, Lokhttp3/internal/connection/ConnectionUser;->a()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final b(Lokhttp3/internal/connection/RealConnection;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/internal/connection/ForceConnectRoutePlanner;->a:Lokhttp3/internal/connection/RealRoutePlanner;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lokhttp3/internal/connection/RealRoutePlanner;->b(Lokhttp3/internal/connection/RealConnection;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final c()Lokhttp3/Address;
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/internal/connection/ForceConnectRoutePlanner;->a:Lokhttp3/internal/connection/RealRoutePlanner;

    .line 2
    .line 3
    iget-object p0, p0, Lokhttp3/internal/connection/RealRoutePlanner;->j:Lokhttp3/Address;

    .line 4
    .line 5
    return-object p0
.end method

.method public final d(Lokhttp3/HttpUrl;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lokhttp3/internal/connection/ForceConnectRoutePlanner;->a:Lokhttp3/internal/connection/RealRoutePlanner;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lokhttp3/internal/connection/RealRoutePlanner;->d(Lokhttp3/HttpUrl;)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public final e()Lw40;
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/internal/connection/ForceConnectRoutePlanner;->a:Lokhttp3/internal/connection/RealRoutePlanner;

    .line 2
    .line 3
    iget-object p0, p0, Lokhttp3/internal/connection/RealRoutePlanner;->p:Lw40;

    .line 4
    .line 5
    return-object p0
.end method

.method public final f()Lokhttp3/internal/connection/RoutePlanner$Plan;
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/internal/connection/ForceConnectRoutePlanner;->a:Lokhttp3/internal/connection/RealRoutePlanner;

    .line 2
    .line 3
    invoke-virtual {p0}, Lokhttp3/internal/connection/RealRoutePlanner;->g()Lokhttp3/internal/connection/ConnectPlan;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
