.class final Lcom/google/android/gms/tasks/zzc;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/tasks/Task;

.field final synthetic zzb:Lcom/google/android/gms/tasks/zzd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/tasks/zzd;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/tasks/zzc;->zza:Lcom/google/android/gms/tasks/Task;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/gms/tasks/zzc;->zzb:Lcom/google/android/gms/tasks/zzd;

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
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzc;->zza:Lcom/google/android/gms/tasks/Task;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/Task;->isCanceled()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget-object v2, p0, Lcom/google/android/gms/tasks/zzc;->zzb:Lcom/google/android/gms/tasks/zzd;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v2}, Lcom/google/android/gms/tasks/zzd;->zzd()Lcom/google/android/gms/tasks/zzw;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/zzw;->zze()Z

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Lcom/google/android/gms/tasks/zzd;->zzc()Lcom/google/android/gms/tasks/Continuation;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-interface {v1, v0}, Lcom/google/android/gms/tasks/Continuation;->then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/tasks/RuntimeExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    iget-object p0, p0, Lcom/google/android/gms/tasks/zzc;->zzb:Lcom/google/android/gms/tasks/zzd;

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/zzd;->zzd()Lcom/google/android/gms/tasks/zzw;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/zzw;->zza(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :catch_0
    move-exception v0

    .line 38
    goto :goto_0

    .line 39
    :catch_1
    move-exception v0

    .line 40
    goto :goto_1

    .line 41
    :goto_0
    iget-object p0, p0, Lcom/google/android/gms/tasks/zzc;->zzb:Lcom/google/android/gms/tasks/zzd;

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/zzd;->zzd()Lcom/google/android/gms/tasks/zzw;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/zzw;->zzc(Ljava/lang/Exception;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    instance-of v1, v1, Ljava/lang/Exception;

    .line 56
    .line 57
    iget-object p0, p0, Lcom/google/android/gms/tasks/zzc;->zzb:Lcom/google/android/gms/tasks/zzd;

    .line 58
    .line 59
    if-eqz v1, :cond_1

    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    check-cast v0, Ljava/lang/Exception;

    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/zzd;->zzd()Lcom/google/android/gms/tasks/zzw;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/zzw;->zzc(Ljava/lang/Exception;)V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/zzd;->zzd()Lcom/google/android/gms/tasks/zzw;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/zzw;->zzc(Ljava/lang/Exception;)V

    .line 80
    .line 81
    .line 82
    return-void
.end method
