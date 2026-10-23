.class final Lcom/google/android/gms/tasks/zzo;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/tasks/Task;

.field final synthetic zzb:Lcom/google/android/gms/tasks/zzp;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/tasks/zzp;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/tasks/zzo;->zza:Lcom/google/android/gms/tasks/Task;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/gms/tasks/zzo;->zzb:Lcom/google/android/gms/tasks/zzp;

    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzo;->zzb:Lcom/google/android/gms/tasks/zzp;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/zzp;->zzc()Lcom/google/android/gms/tasks/SuccessContinuation;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/tasks/zzo;->zza:Lcom/google/android/gms/tasks/Task;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v0, v1}, Lcom/google/android/gms/tasks/SuccessContinuation;->then(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 14
    .line 15
    .line 16
    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/tasks/RuntimeExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    iget-object p0, p0, Lcom/google/android/gms/tasks/zzo;->zzb:Lcom/google/android/gms/tasks/zzp;

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    new-instance v0, Ljava/lang/NullPointerException;

    .line 22
    .line 23
    const-string v1, "Continuation returned null"

    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/zzp;->onFailure(Ljava/lang/Exception;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    sget-object v1, Lcom/google/android/gms/tasks/TaskExecutors;->zza:Ljava/util/concurrent/Executor;

    .line 33
    .line 34
    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/tasks/Task;->addOnCanceledListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCanceledListener;)Lcom/google/android/gms/tasks/Task;

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :catch_0
    move-exception v0

    .line 45
    goto :goto_0

    .line 46
    :catch_1
    move-exception v0

    .line 47
    goto :goto_1

    .line 48
    :goto_0
    iget-object p0, p0, Lcom/google/android/gms/tasks/zzo;->zzb:Lcom/google/android/gms/tasks/zzp;

    .line 49
    .line 50
    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/zzp;->onFailure(Ljava/lang/Exception;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :catch_2
    iget-object p0, p0, Lcom/google/android/gms/tasks/zzo;->zzb:Lcom/google/android/gms/tasks/zzp;

    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/zzp;->onCanceled()V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    instance-of v1, v1, Ljava/lang/Exception;

    .line 65
    .line 66
    iget-object p0, p0, Lcom/google/android/gms/tasks/zzo;->zzb:Lcom/google/android/gms/tasks/zzp;

    .line 67
    .line 68
    if-eqz v1, :cond_1

    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Ljava/lang/Exception;

    .line 75
    .line 76
    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/zzp;->onFailure(Ljava/lang/Exception;)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/zzp;->onFailure(Ljava/lang/Exception;)V

    .line 81
    .line 82
    .line 83
    return-void
.end method
