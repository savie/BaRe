.class public final Lcom/google/android/recaptcha/internal/zzbr;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Ljava/lang/String;

.field private final zzc:Ljava/lang/String;

.field private final zzd:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    const-string v0, "https://www.recaptcha.net/recaptcha/api3"

    invoke-direct {p0, v0}, Lcom/google/android/recaptcha/internal/zzbr;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string p1, "https://www.recaptcha.net/recaptcha/api3"

    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/recaptcha/internal/zzbr;->zza:Ljava/lang/String;

    .line 7
    .line 8
    const-string v0, "/mri"

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/google/android/recaptcha/internal/zzbr;->zzb:Ljava/lang/String;

    .line 15
    .line 16
    const-string v0, "/mlg"

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/google/android/recaptcha/internal/zzbr;->zzc:Ljava/lang/String;

    .line 23
    .line 24
    const-string v0, "/mrr"

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iput-object p1, p0, Lcom/google/android/recaptcha/internal/zzbr;->zzd:Ljava/lang/String;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/recaptcha/internal/zzbr;->zza:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final zzb()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/recaptcha/internal/zzbr;->zzb:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final zzc()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/recaptcha/internal/zzbr;->zzc:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final zzd()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/recaptcha/internal/zzbr;->zzd:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
