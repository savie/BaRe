.class public final synthetic Llb;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lig2;
.implements Lh9;
.implements Lcom/google/android/gms/tasks/Continuation;
.implements Lmo1;
.implements Lv51;
.implements Lhm6;
.implements Lny6;


# instance fields
.field public final synthetic a:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Llb;->a:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lokhttp3/Response;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p0, p0, Llb;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/pcloud/sdk/internal/a;

    .line 4
    .line 5
    const-class v0, Lgw3;

    .line 6
    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/pcloud/sdk/internal/a;->f(Lokhttp3/Response;Ljava/lang/Class;)Lgf;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lgw3;

    .line 12
    .line 13
    invoke-virtual {p0}, Lgw3;->d()Laj6;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object p0, p0, Llb;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lpw2;

    .line 4
    .line 5
    iget-object p0, p0, Lpw2;->k:Lcom/google/android/material/internal/CheckableImageButton;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {p0, v0}, Lwx3;->E(Lcom/google/android/material/internal/CheckableImageButton;Ljava/lang/CharSequence;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public c(Lga6;)V
    .locals 0

    .line 1
    iget-object p0, p0, Llb;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lwc9;

    .line 4
    .line 5
    iget-object p0, p0, Lwc9;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 8
    .line 9
    invoke-interface {p1}, Lga6;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lae4;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Llb;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/microsoft/identity/common/internal/providers/oauth2/CameraPermissionRequestHandler;

    .line 4
    .line 5
    check-cast p1, Ljava/lang/Boolean;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-static {p0, p1}, Lcom/microsoft/identity/common/internal/providers/oauth2/CameraPermissionRequestHandler;->c(Lcom/microsoft/identity/common/internal/providers/oauth2/CameraPermissionRequestHandler;Z)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public isCancellationRequested()Z
    .locals 0

    .line 1
    iget-object p0, p0, Llb;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lap6;

    .line 4
    .line 5
    iget-object p0, p0, Lap6;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    check-cast p0, Ljava/lang/Boolean;

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    return p0
.end method

.method public m(Lpp0;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object p0, p0, Llb;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lnc6;

    .line 4
    .line 5
    new-instance v0, Lne2;

    .line 6
    .line 7
    const-class v1, Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {p1, v1}, Lpp0;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Landroid/content/Context;

    .line 14
    .line 15
    const-class v2, Lcom/google/firebase/FirebaseApp;

    .line 16
    .line 17
    invoke-virtual {p1, v2}, Lpp0;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lcom/google/firebase/FirebaseApp;

    .line 22
    .line 23
    invoke-virtual {v2}, Lcom/google/firebase/FirebaseApp;->getPersistenceKey()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const-class v3, Lq34;

    .line 28
    .line 29
    invoke-static {v3}, Lnc6;->a(Ljava/lang/Class;)Lnc6;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {p1, v3}, Lpp0;->a(Lnc6;)Ljava/util/Set;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    const-class v4, Lfg2;

    .line 38
    .line 39
    invoke-virtual {p1, v4}, Lpp0;->c(Ljava/lang/Class;)Lga6;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-virtual {p1, p0}, Lpp0;->g(Lnc6;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    move-object v5, p0

    .line 48
    check-cast v5, Ljava/util/concurrent/Executor;

    .line 49
    .line 50
    invoke-direct/range {v0 .. v5}, Lne2;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;Lga6;Ljava/util/concurrent/Executor;)V

    .line 51
    .line 52
    .line 53
    return-object v0
.end method

.method public then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Llb;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 6
    .line 7
    .line 8
    const/4 p0, 0x0

    .line 9
    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method
