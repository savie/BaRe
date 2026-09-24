.class final Lcom/google/android/recaptcha/internal/zzkx;
.super Lcom/google/android/recaptcha/internal/zzky;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field final synthetic zza:Lcom/google/android/recaptcha/internal/zzle;

.field private zzb:I

.field private final zzc:I


# direct methods
.method public constructor <init>(Lcom/google/android/recaptcha/internal/zzle;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/android/recaptcha/internal/zzkx;->zza:Lcom/google/android/recaptcha/internal/zzle;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/recaptcha/internal/zzky;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/google/android/recaptcha/internal/zzkx;->zzb:I

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/google/android/recaptcha/internal/zzle;->zzd()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    iput p1, p0, Lcom/google/android/recaptcha/internal/zzkx;->zzc:I

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/recaptcha/internal/zzkx;->zzb:I

    .line 2
    .line 3
    iget p0, p0, Lcom/google/android/recaptcha/internal/zzkx;->zzc:I

    .line 4
    .line 5
    if-ge v0, p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    return p0
.end method

.method public final zza()B
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/recaptcha/internal/zzkx;->zzb:I

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/recaptcha/internal/zzkx;->zzc:I

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    add-int/lit8 v1, v0, 0x1

    .line 8
    .line 9
    iput v1, p0, Lcom/google/android/recaptcha/internal/zzkx;->zzb:I

    .line 10
    .line 11
    iget-object p0, p0, Lcom/google/android/recaptcha/internal/zzkx;->zza:Lcom/google/android/recaptcha/internal/zzle;

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/google/android/recaptcha/internal/zzle;->zzb(I)B

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0

    .line 18
    :cond_0
    invoke-static {}, Lm0;->d()V

    .line 19
    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    return p0
.end method
