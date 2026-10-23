.class public final Lc72;
.super Lj72;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic a:Le38;


# direct methods
.method public constructor <init>(Le38;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lc72;->a:Le38;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onCustomTabsServiceConnected(Li72;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const-string v1, "CustomTabsService is connected"

    .line 5
    .line 6
    invoke-static {v1, v0}, Lj15;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    :try_start_0
    iget-object v0, p1, Li72;->a:Lr74;

    .line 10
    .line 11
    check-cast v0, Lp74;

    .line 12
    .line 13
    invoke-virtual {v0}, Lp74;->g()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    :catch_0
    iget-object p0, p0, Lc72;->a:Le38;

    .line 17
    .line 18
    iget-object v0, p0, Le38;->c:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iget-object p0, p0, Le38;->d:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast p0, Ljava/util/concurrent/CountDownLatch;

    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    const/4 p1, 0x0

    .line 2
    new-array p1, p1, [Ljava/lang/Object;

    .line 3
    .line 4
    const-string v0, "CustomTabsService is disconnected"

    .line 5
    .line 6
    invoke-static {v0, p1}, Lj15;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lc72;->a:Le38;

    .line 10
    .line 11
    iget-object p1, p0, Le38;->c:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Le38;->d:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p0, Ljava/util/concurrent/CountDownLatch;

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 24
    .line 25
    .line 26
    return-void
.end method
