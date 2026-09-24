.class final Lcom/google/android/recaptcha/internal/zznb;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/google/android/recaptcha/internal/zzms;


# instance fields
.field final zza:I

.field final zzb:Lcom/google/android/recaptcha/internal/zzpw;


# direct methods
.method public constructor <init>(Lcom/google/android/recaptcha/internal/zzng;ILcom/google/android/recaptcha/internal/zzpw;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lcom/google/android/recaptcha/internal/zznb;->zza:I

    .line 5
    .line 6
    iput-object p3, p0, Lcom/google/android/recaptcha/internal/zznb;->zzb:Lcom/google/android/recaptcha/internal/zzpw;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/recaptcha/internal/zznb;

    .line 2
    .line 3
    iget p1, p1, Lcom/google/android/recaptcha/internal/zznb;->zza:I

    .line 4
    .line 5
    iget p0, p0, Lcom/google/android/recaptcha/internal/zznb;->zza:I

    .line 6
    .line 7
    sub-int/2addr p0, p1

    .line 8
    return p0
.end method

.method public final zza()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/recaptcha/internal/zznb;->zza:I

    .line 2
    .line 3
    return p0
.end method

.method public final zzb(Lcom/google/android/recaptcha/internal/zzoh;Lcom/google/android/recaptcha/internal/zzoi;)Lcom/google/android/recaptcha/internal/zzoh;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/recaptcha/internal/zzmx;

    .line 2
    .line 3
    check-cast p2, Lcom/google/android/recaptcha/internal/zznd;

    .line 4
    .line 5
    invoke-virtual {p1, p2}, Lcom/google/android/recaptcha/internal/zzmx;->zzh(Lcom/google/android/recaptcha/internal/zznd;)Lcom/google/android/recaptcha/internal/zzmx;

    .line 6
    .line 7
    .line 8
    return-object p1
.end method

.method public final zzc(Lcom/google/android/recaptcha/internal/zzon;Lcom/google/android/recaptcha/internal/zzon;)Lcom/google/android/recaptcha/internal/zzon;
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p0
.end method

.method public final zzd()Lcom/google/android/recaptcha/internal/zzpw;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/recaptcha/internal/zznb;->zzb:Lcom/google/android/recaptcha/internal/zzpw;

    .line 2
    .line 3
    return-object p0
.end method

.method public final zze()Lcom/google/android/recaptcha/internal/zzpx;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/recaptcha/internal/zznb;->zzb:Lcom/google/android/recaptcha/internal/zzpw;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/recaptcha/internal/zzpw;->zza()Lcom/google/android/recaptcha/internal/zzpx;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final zzf()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final zzg()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method
