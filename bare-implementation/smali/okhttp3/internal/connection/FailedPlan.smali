.class public final Lokhttp3/internal/connection/FailedPlan;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lokhttp3/internal/connection/RoutePlanner$Plan;


# instance fields
.field public final a:Lokhttp3/internal/connection/RoutePlanner$ConnectResult;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lokhttp3/internal/connection/RoutePlanner$ConnectResult;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x2

    .line 8
    invoke-direct {v0, p0, v1, p1, v2}, Lokhttp3/internal/connection/RoutePlanner$ConnectResult;-><init>(Lokhttp3/internal/connection/RoutePlanner$Plan;Lokhttp3/internal/connection/ConnectPlan;Ljava/lang/Throwable;I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lokhttp3/internal/connection/FailedPlan;->a:Lokhttp3/internal/connection/RoutePlanner$ConnectResult;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a()Lokhttp3/internal/connection/RoutePlanner$Plan;
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 2
    .line 3
    const-string v0, "unexpected retry"

    .line 4
    .line 5
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p0
.end method

.method public final c()Lokhttp3/internal/connection/RealConnection;
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 2
    .line 3
    const-string v0, "unexpected call"

    .line 4
    .line 5
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p0
.end method

.method public final cancel()V
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 2
    .line 3
    const-string v0, "unexpected cancel"

    .line 4
    .line 5
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p0
.end method

.method public final d()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final e()Lokhttp3/internal/connection/RoutePlanner$ConnectResult;
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/internal/connection/FailedPlan;->a:Lokhttp3/internal/connection/RoutePlanner$ConnectResult;

    .line 2
    .line 3
    return-object p0
.end method

.method public final g()Lokhttp3/internal/connection/RoutePlanner$ConnectResult;
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/internal/connection/FailedPlan;->a:Lokhttp3/internal/connection/RoutePlanner$ConnectResult;

    .line 2
    .line 3
    return-object p0
.end method
