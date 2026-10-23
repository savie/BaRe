.class public final Lcom/google/android/recaptcha/internal/zzfz;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private final zza:Lcom/google/android/recaptcha/internal/zzjj;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 11
    invoke-direct {p0, v0}, Lcom/google/android/recaptcha/internal/zzfz;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/google/android/recaptcha/internal/zzjj;->zza(I)Lcom/google/android/recaptcha/internal/zzjj;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/google/android/recaptcha/internal/zzfz;->zza:Lcom/google/android/recaptcha/internal/zzjj;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final zwk()Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/recaptcha/internal/zzfz;->zza()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final zza()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/recaptcha/internal/zzfz;->zza:Lcom/google/android/recaptcha/internal/zzjj;

    .line 2
    .line 3
    invoke-static {p0}, Lel1;->v1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final zzb(Ljava/util/List;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/recaptcha/internal/zzfz;->zza:Lcom/google/android/recaptcha/internal/zzjj;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/recaptcha/internal/zzjj;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    return p0
.end method
