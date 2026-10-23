.class public Lcom/google/android/recaptcha/internal/zzmz;
.super Lcom/google/android/recaptcha/internal/zzmx;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/google/android/recaptcha/internal/zzoj;


# direct methods
.method public constructor <init>(Lcom/google/android/recaptcha/internal/zzna;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/recaptcha/internal/zzmx;-><init>(Lcom/google/android/recaptcha/internal/zznd;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final zze()Lcom/google/android/recaptcha/internal/zzna;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zzmx;->zza:Lcom/google/android/recaptcha/internal/zznd;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/recaptcha/internal/zzna;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/recaptcha/internal/zznd;->zzL()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Lcom/google/android/recaptcha/internal/zzmx;->zza:Lcom/google/android/recaptcha/internal/zznd;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    check-cast v1, Lcom/google/android/recaptcha/internal/zzna;

    .line 14
    .line 15
    return-object v1

    .line 16
    :cond_0
    check-cast v1, Lcom/google/android/recaptcha/internal/zzna;

    .line 17
    .line 18
    iget-object v0, v1, Lcom/google/android/recaptcha/internal/zzna;->zzb:Lcom/google/android/recaptcha/internal/zzmt;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/google/android/recaptcha/internal/zzmt;->zzg()V

    .line 21
    .line 22
    .line 23
    invoke-super {p0}, Lcom/google/android/recaptcha/internal/zzmx;->zzj()Lcom/google/android/recaptcha/internal/zznd;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lcom/google/android/recaptcha/internal/zzna;

    .line 28
    .line 29
    return-object p0
.end method

.method public final bridge synthetic zzj()Lcom/google/android/recaptcha/internal/zznd;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/recaptcha/internal/zzmz;->zze()Lcom/google/android/recaptcha/internal/zzna;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final bridge synthetic zzl()Lcom/google/android/recaptcha/internal/zzoi;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/recaptcha/internal/zzmz;->zze()Lcom/google/android/recaptcha/internal/zzna;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final zzo()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/google/android/recaptcha/internal/zzmx;->zzo()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zzmx;->zza:Lcom/google/android/recaptcha/internal/zznd;

    .line 5
    .line 6
    check-cast v0, Lcom/google/android/recaptcha/internal/zzna;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/google/android/recaptcha/internal/zzna;->zzb:Lcom/google/android/recaptcha/internal/zzmt;

    .line 9
    .line 10
    invoke-static {}, Lcom/google/android/recaptcha/internal/zzmt;->zzd()Lcom/google/android/recaptcha/internal/zzmt;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-eq v0, v1, :cond_0

    .line 15
    .line 16
    iget-object p0, p0, Lcom/google/android/recaptcha/internal/zzmx;->zza:Lcom/google/android/recaptcha/internal/zznd;

    .line 17
    .line 18
    check-cast p0, Lcom/google/android/recaptcha/internal/zzna;

    .line 19
    .line 20
    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zzna;->zzb:Lcom/google/android/recaptcha/internal/zzmt;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/google/android/recaptcha/internal/zzmt;->zzc()Lcom/google/android/recaptcha/internal/zzmt;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/google/android/recaptcha/internal/zzna;->zzb:Lcom/google/android/recaptcha/internal/zzmt;

    .line 27
    .line 28
    :cond_0
    return-void
.end method
