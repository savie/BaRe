.class public final Llh7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static volatile d:Llh7;


# instance fields
.field public final a:Lkh7;

.field public final b:Ljava/util/HashSet;

.field public c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Llh7;->b:Ljava/util/HashSet;

    .line 10
    .line 11
    new-instance v0, Lp92;

    .line 12
    .line 13
    invoke-direct {v0, p1}, Lp92;-><init>(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    new-instance p1, Lqy3;

    .line 17
    .line 18
    invoke-direct {p1, v0}, Lqy3;-><init>(Lry3;)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Lhh7;

    .line 22
    .line 23
    invoke-direct {v0, p0}, Lhh7;-><init>(Llh7;)V

    .line 24
    .line 25
    .line 26
    new-instance v1, Lkh7;

    .line 27
    .line 28
    invoke-direct {v1, p1, v0}, Lkh7;-><init>(Lqy3;Lhh7;)V

    .line 29
    .line 30
    .line 31
    iput-object v1, p0, Llh7;->a:Lkh7;

    .line 32
    .line 33
    return-void
.end method

.method public static a(Landroid/content/Context;)Llh7;
    .locals 2

    .line 1
    sget-object v0, Llh7;->d:Llh7;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Llh7;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Llh7;->d:Llh7;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Llh7;

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-direct {v1, p0}, Llh7;-><init>(Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    sput-object v1, Llh7;->d:Llh7;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    :goto_0
    monitor-exit v0

    .line 27
    goto :goto_2

    .line 28
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw p0

    .line 30
    :cond_1
    :goto_2
    sget-object p0, Llh7;->d:Llh7;

    .line 31
    .line 32
    return-object p0
.end method


# virtual methods
.method public final b()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Llh7;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Llh7;->b:Ljava/util/HashSet;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_2

    .line 14
    :cond_0
    iget-object v0, p0, Llh7;->a:Lkh7;

    .line 15
    .line 16
    iget-object v1, v0, Lkh7;->c:Lqy3;

    .line 17
    .line 18
    invoke-virtual {v1}, Lqy3;->get()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Landroid/net/ConnectivityManager;

    .line 23
    .line 24
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    const/4 v3, 0x0

    .line 29
    const/4 v4, 0x1

    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    move v2, v4

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    move v2, v3

    .line 35
    :goto_0
    iput-boolean v2, v0, Lkh7;->a:Z

    .line 36
    .line 37
    :try_start_0
    invoke-virtual {v1}, Lqy3;->get()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Landroid/net/ConnectivityManager;

    .line 42
    .line 43
    iget-object v0, v0, Lkh7;->d:Ljh7;

    .line 44
    .line 45
    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    move v3, v4

    .line 49
    goto :goto_1

    .line 50
    :catch_0
    move-exception v0

    .line 51
    const/4 v1, 0x5

    .line 52
    const-string v2, "ConnectivityMonitor"

    .line 53
    .line 54
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_2

    .line 59
    .line 60
    const-string v1, "Failed to register callback"

    .line 61
    .line 62
    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    .line 64
    .line 65
    :cond_2
    :goto_1
    iput-boolean v3, p0, Llh7;->c:Z

    .line 66
    .line 67
    :cond_3
    :goto_2
    return-void
.end method
