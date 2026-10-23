.class public final Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private final mClientLatch:Ljava/util/concurrent/CountDownLatch;

.field private final mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final mCustomTabsClient:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Li72;",
            ">;"
        }
    .end annotation
.end field

.field private mCustomTabsIntent:Lix0;

.field private final mCustomTabsServiceConnection:Lj72;

.field private mCustomTabsServiceIsBound:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager$1;-><init>(Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;->mCustomTabsServiceConnection:Lj72;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 17
    .line 18
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 19
    .line 20
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;->mCustomTabsClient:Ljava/util/concurrent/atomic/AtomicReference;

    .line 24
    .line 25
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;->mClientLatch:Ljava/util/concurrent/CountDownLatch;

    .line 32
    .line 33
    return-void
.end method

.method public static synthetic access$102(Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;->mCustomTabsServiceIsBound:Z

    .line 2
    .line 3
    return-void
.end method

.method public static synthetic access$200(Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;->mCustomTabsClient:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;->mClientLatch:Ljava/util/concurrent/CountDownLatch;

    .line 2
    .line 3
    return-object p0
.end method

.method private createSession()Lka;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;->mClientLatch:Ljava/util/concurrent/CountDownLatch;

    .line 2
    .line 3
    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 4
    .line 5
    const-wide/16 v2, 0x1

    .line 6
    .line 7
    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catch_0
    sget v1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 12
    .line 13
    const-string v1, "CustomTabsManager:getClient"

    .line 14
    .line 15
    const-string v2, "Interrupted while waiting for browser connection"

    .line 16
    .line 17
    invoke-static {v1, v2}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 21
    .line 22
    .line 23
    :goto_0
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;->mCustomTabsClient:Ljava/util/concurrent/atomic/AtomicReference;

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    check-cast p0, Li72;

    .line 30
    .line 31
    const-string v0, "CustomTabsManager:createSession"

    .line 32
    .line 33
    if-nez p0, :cond_0

    .line 34
    .line 35
    sget p0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 36
    .line 37
    const-string p0, "Failed to create custom tabs session with null CustomTabClient."

    .line 38
    .line 39
    invoke-static {v0, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const/4 p0, 0x0

    .line 43
    return-object p0

    .line 44
    :cond_0
    invoke-virtual {p0}, Li72;->b()Lka;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    if-nez p0, :cond_1

    .line 49
    .line 50
    sget v1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 51
    .line 52
    const-string v1, "Failed to create custom tabs session through custom tabs client."

    .line 53
    .line 54
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    return-object p0
.end method


# virtual methods
.method public final declared-synchronized bind(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .line 1
    const-string v0, "Unable to bind custom tabs service "

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    const-string v1, "CustomTabsManager:bind"

    .line 5
    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    iget-object v2, p0, Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;->mCustomTabsServiceConnection:Lj72;

    .line 9
    .line 10
    invoke-static {p1, p2, v2}, Li72;->a(Landroid/content/Context;Ljava/lang/String;Lj72;)Z

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    if-nez p2, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance p1, Lh72;

    .line 18
    .line 19
    invoke-direct {p0}, Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;->createSession()Lka;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-direct {p1, p2}, Lh72;-><init>(Lka;)V

    .line 24
    .line 25
    .line 26
    iget-object p2, p1, Lh72;->a:Landroid/content/Intent;

    .line 27
    .line 28
    const-string v0, "android.support.customtabs.extra.SEND_TO_EXTERNAL_HANDLER"

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    iget-object p2, p1, Lh72;->a:Landroid/content/Intent;

    .line 35
    .line 36
    const-string v0, "android.support.customtabs.extra.TITLE_VISIBILITY"

    .line 37
    .line 38
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Lh72;->a()Lix0;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;->mCustomTabsIntent:Lix0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .line 47
    monitor-exit p0

    .line 48
    return v1

    .line 49
    :catchall_0
    move-exception p1

    .line 50
    goto :goto_2

    .line 51
    :cond_1
    :goto_0
    if-nez p1, :cond_2

    .line 52
    .line 53
    :try_start_1
    const-string p1, "because the context was null"

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    const-string p1, "because the bind call failed"

    .line 57
    .line 58
    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    sget p2, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 63
    .line 64
    invoke-static {v1, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;->mClientLatch:Ljava/util/concurrent/CountDownLatch;

    .line 68
    .line 69
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    .line 71
    .line 72
    monitor-exit p0

    .line 73
    const/4 p0, 0x0

    .line 74
    return p0

    .line 75
    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 76
    throw p1
.end method

.method public final getCustomTabsIntent()Lix0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;->mCustomTabsIntent:Lix0;

    .line 2
    .line 3
    return-object p0
.end method

.method public final declared-synchronized unbind()V
    .locals 4

    .line 1
    const-string v0, "Error unbinding custom tabs service, likely failed to bind or previously died: "

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    const-string v1, "CustomTabsManager:unbind"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Landroid/content/Context;

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    iget-boolean v3, p0, Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;->mCustomTabsServiceIsBound:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    :try_start_1
    iget-object v3, p0, Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;->mCustomTabsServiceConnection:Lj72;

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception v0

    .line 27
    goto :goto_1

    .line 28
    :catch_0
    move-exception v2

    .line 29
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sget v3, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 46
    .line 47
    invoke-static {v1, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    instance-of v0, v2, Ljava/lang/InterruptedException;

    .line 51
    .line 52
    if-eqz v0, :cond_0

    .line 53
    .line 54
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 59
    .line 60
    .line 61
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;->mCustomTabsServiceIsBound:Z

    .line 63
    .line 64
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;->mCustomTabsClient:Ljava/util/concurrent/atomic/AtomicReference;

    .line 65
    .line 66
    const/4 v2, 0x0

    .line 67
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    const-string v0, "CustomTabsService is unbound."

    .line 71
    .line 72
    sget v2, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 73
    .line 74
    invoke-static {v1, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 75
    .line 76
    .line 77
    monitor-exit p0

    .line 78
    return-void

    .line 79
    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 80
    throw v0
.end method
