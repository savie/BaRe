.class public final Ly19;
.super Lk19;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final b:Lr19;

.field public final c:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field public final d:Llk;


# direct methods
.method public constructor <init>(ILr19;Lcom/google/android/gms/tasks/TaskCompletionSource;Llk;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le29;-><init>(I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Ly19;->c:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 5
    .line 6
    iput-object p2, p0, Ly19;->b:Lr19;

    .line 7
    .line 8
    iput-object p4, p0, Ly19;->d:Llk;

    .line 9
    .line 10
    const/4 p0, 0x2

    .line 11
    if-ne p1, p0, :cond_1

    .line 12
    .line 13
    iget-boolean p0, p2, Lr19;->b:Z

    .line 14
    .line 15
    if-nez p0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string p0, "Best-effort write calls cannot pass methods that should auto-resolve missing features."

    .line 19
    .line 20
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 p0, 0x0

    .line 24
    throw p0

    .line 25
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ly19;->d:Llk;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lrs9;->f(Lcom/google/android/gms/common/api/Status;)Lre;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-object p0, p0, Ly19;->c:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final b(Ljava/lang/Exception;)V
    .locals 0

    .line 1
    iget-object p0, p0, Ly19;->c:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final c(Lg19;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ly19;->c:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Ly19;->b:Lr19;

    .line 4
    .line 5
    iget-object p1, p1, Lg19;->b:Lne;

    .line 6
    .line 7
    iget-object v1, v1, Lr19;->d:Lby7;

    .line 8
    .line 9
    iget-object v1, v1, Lby7;->a:Lyi6;

    .line 10
    .line 11
    invoke-interface {v1, p1, v0}, Lyi6;->accept(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :catch_0
    move-exception p0

    .line 16
    goto :goto_0

    .line 17
    :catch_1
    move-exception p1

    .line 18
    goto :goto_1

    .line 19
    :goto_0
    invoke-virtual {v0, p0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :goto_1
    invoke-static {p1}, Le29;->e(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p0, p1}, Ly19;->a(Lcom/google/android/gms/common/api/Status;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :catch_2
    move-exception p0

    .line 32
    throw p0
.end method

.method public final d(Lw00;Z)V
    .locals 3

    .line 1
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    iget-object v0, p1, Lw00;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Ljava/util/Map;

    .line 8
    .line 9
    iget-object p0, p0, Ly19;->c:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 10
    .line 11
    invoke-interface {v0, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    new-instance v0, Lyf1;

    .line 19
    .line 20
    const/16 v1, 0xf

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-direct {v0, p1, p0, v1, v2}, Lyf1;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final f(Lg19;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Ly19;->b:Lr19;

    .line 2
    .line 3
    iget-boolean p0, p0, Lr19;->b:Z

    .line 4
    .line 5
    return p0
.end method

.method public final g(Lg19;)[Ly53;
    .locals 0

    .line 1
    iget-object p0, p0, Ly19;->b:Lr19;

    .line 2
    .line 3
    iget-object p0, p0, Lr19;->a:[Ly53;

    .line 4
    .line 5
    return-object p0
.end method
