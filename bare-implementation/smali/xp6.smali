.class public final Lxp6;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/content/ServiceConnection;


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    const-string p0, "RootServiceConnection"

    .line 8
    .line 9
    const-string p1, "daemon onServiceConnected"

    .line 10
    .line 11
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    sget-object p0, Laq6;->c:Ljava/lang/Object;

    .line 15
    .line 16
    monitor-enter p0

    .line 17
    :try_start_0
    invoke-static {p2}, Ly84;->asInterface(Landroid/os/IBinder;)Lz84;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    sput-object p1, Laq6;->a:Lz84;

    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    sput-boolean p1, Laq6;->b:Z

    .line 25
    .line 26
    const-wide/16 p1, 0x0

    .line 27
    .line 28
    sput-wide p1, Laq6;->f:J

    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    .line 33
    monitor-exit p0

    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    monitor-exit p0

    .line 37
    throw p1
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string p0, "RootServiceConnection"

    .line 5
    .line 6
    const-string p1, "daemon onServiceDisconnected"

    .line 7
    .line 8
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    sget-object p0, Laq6;->c:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter p0

    .line 14
    const/4 p1, 0x0

    .line 15
    :try_start_0
    sput-object p1, Laq6;->a:Lz84;

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    sput-boolean p1, Laq6;->b:Z

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    monitor-exit p0

    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    monitor-exit p0

    .line 27
    throw p1
.end method
