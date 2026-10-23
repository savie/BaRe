.class public final Lcom/google/android/recaptcha/internal/zzbx;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public static final zza(Lcom/google/android/gms/tasks/Task;)Ljg2;
    .locals 3

    .line 1
    invoke-static {}, Lly8;->a()Lbn1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/google/android/recaptcha/internal/zzbv;->zza:Lcom/google/android/recaptcha/internal/zzbv;

    .line 6
    .line 7
    new-instance v2, Lcom/google/android/recaptcha/internal/zzbu;

    .line 8
    .line 9
    invoke-direct {v2, v0}, Lcom/google/android/recaptcha/internal/zzbu;-><init>(Lan1;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 13
    .line 14
    .line 15
    new-instance p0, Lcom/google/android/recaptcha/internal/zzbw;

    .line 16
    .line 17
    invoke-direct {p0, v0}, Lcom/google/android/recaptcha/internal/zzbw;-><init>(Lan1;)V

    .line 18
    .line 19
    .line 20
    return-object p0
.end method
