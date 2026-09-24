.class final Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager$1;
.super Lj72;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field final synthetic this$0:Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager$1;->this$0:Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onBindingDied(Landroid/content/ComponentName;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Binding died callback on custom tabs service, there will likely be failures.  Component class that failed: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    const-string v1, "null"

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sget v1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 25
    .line 26
    const-string v1, "CustomTabsManager:onBindingDied"

    .line 27
    .line 28
    invoke-static {v1, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-super {p0, p1}, Landroid/content/ServiceConnection;->onBindingDied(Landroid/content/ComponentName;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final onCustomTabsServiceConnected(Li72;)V
    .locals 2

    .line 1
    sget v0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 2
    .line 3
    const-string v0, "CustomTabsManager:onCustomTabsServiceConnection"

    .line 4
    .line 5
    const-string v1, "CustomTabsService is connected"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :try_start_0
    iget-object v0, p1, Li72;->a:Lr74;

    .line 11
    .line 12
    check-cast v0, Lp74;

    .line 13
    .line 14
    invoke-virtual {v0}, Lp74;->g()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    :catch_0
    const/4 v0, 0x1

    .line 18
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager$1;->this$0:Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;

    .line 19
    .line 20
    invoke-static {p0, v0}, Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;->access$102(Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;Z)V

    .line 21
    .line 22
    .line 23
    invoke-static {p0}, Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;->access$200(Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;)Ljava/util/concurrent/atomic/AtomicReference;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    invoke-static {p0}, Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;->access$300(Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;)Ljava/util/concurrent/CountDownLatch;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final onNullBinding(Landroid/content/ComponentName;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Null binding callback on custom tabs service, there will likely be failures. Component class that failed: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    const-string v1, "null"

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sget v1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 25
    .line 26
    const-string v1, "CustomTabsManager:onNullBinding"

    .line 27
    .line 28
    invoke-static {v1, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-super {p0, p1}, Landroid/content/ServiceConnection;->onNullBinding(Landroid/content/ComponentName;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    sget p1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 2
    .line 3
    const-string p1, "CustomTabsManager:onServiceDisconnected"

    .line 4
    .line 5
    const-string v0, "CustomTabsService is disconnected"

    .line 6
    .line 7
    invoke-static {p1, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager$1;->this$0:Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;

    .line 12
    .line 13
    invoke-static {p0, p1}, Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;->access$102(Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;Z)V

    .line 14
    .line 15
    .line 16
    invoke-static {p0}, Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;->access$200(Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;)Ljava/util/concurrent/atomic/AtomicReference;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    invoke-static {p0}, Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;->access$300(Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;)Ljava/util/concurrent/CountDownLatch;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 29
    .line 30
    .line 31
    return-void
.end method
