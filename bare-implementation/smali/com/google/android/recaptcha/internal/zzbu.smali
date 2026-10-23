.class public final synthetic Lcom/google/android/recaptcha/internal/zzbu;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic zza:Lan1;


# direct methods
.method public synthetic constructor <init>(Lan1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/recaptcha/internal/zzbu;->zza:Lan1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/recaptcha/internal/zzbu;->zza:Lan1;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isCanceled()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    check-cast p0, Lci4;

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lci4;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p0, Lbn1;

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lci4;->G(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    check-cast p0, Lbn1;

    .line 33
    .line 34
    invoke-virtual {p0, v0}, Lbn1;->Y(Ljava/lang/Throwable;)Z

    .line 35
    .line 36
    .line 37
    return-void
.end method
