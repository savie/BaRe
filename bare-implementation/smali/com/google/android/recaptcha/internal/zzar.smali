.class final Lcom/google/android/recaptcha/internal/zzar;
.super Lgs4;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field final synthetic zzb:Ljg2;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljg2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/recaptcha/internal/zzar;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/google/android/recaptcha/internal/zzar;->zzb:Ljg2;

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    invoke-direct {p0, p1}, Lgs4;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    .line 2
    .line 3
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/google/android/recaptcha/internal/zzar;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 8
    .line 9
    check-cast p1, Ljava/lang/Exception;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    .line 12
    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    iget-object p1, p0, Lcom/google/android/recaptcha/internal/zzar;->zzb:Ljg2;

    .line 16
    .line 17
    invoke-interface {p1}, Ljg2;->getCompletionExceptionOrNull()Ljava/lang/Throwable;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zzar;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 22
    .line 23
    if-nez p1, :cond_1

    .line 24
    .line 25
    iget-object p0, p0, Lcom/google/android/recaptcha/internal/zzar;->zzb:Ljg2;

    .line 26
    .line 27
    invoke-interface {p0}, Ljg2;->getCompleted()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {v0, p0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    instance-of p0, p1, Ljava/lang/Exception;

    .line 36
    .line 37
    if-eqz p0, :cond_2

    .line 38
    .line 39
    move-object p0, p1

    .line 40
    check-cast p0, Ljava/lang/Exception;

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    const/4 p0, 0x0

    .line 44
    :goto_0
    if-nez p0, :cond_3

    .line 45
    .line 46
    new-instance p0, Lcom/google/android/gms/tasks/RuntimeExecutionException;

    .line 47
    .line 48
    invoke-direct {p0, p1}, Lcom/google/android/gms/tasks/RuntimeExecutionException;-><init>(Ljava/lang/Throwable;)V

    .line 49
    .line 50
    .line 51
    :cond_3
    invoke-virtual {v0, p0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    .line 52
    .line 53
    .line 54
    :goto_1
    sget-object p0, Lbe8;->a:Lbe8;

    .line 55
    .line 56
    return-object p0
.end method
