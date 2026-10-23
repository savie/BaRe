.class final Lcom/google/android/recaptcha/internal/zzkt;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public zza:I

.field public zzb:J

.field public zzc:Ljava/lang/Object;

.field public final zzd:Lcom/google/android/recaptcha/internal/zzmo;

.field public zze:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget v0, Lcom/google/android/recaptcha/internal/zzmo;->zzb:I

    .line 5
    .line 6
    sget v0, Lcom/google/android/recaptcha/internal/zzos;->zza:I

    .line 7
    .line 8
    sget-object v0, Lcom/google/android/recaptcha/internal/zzmo;->zza:Lcom/google/android/recaptcha/internal/zzmo;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/android/recaptcha/internal/zzkt;->zzd:Lcom/google/android/recaptcha/internal/zzmo;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Lcom/google/android/recaptcha/internal/zzmo;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/recaptcha/internal/zzkt;->zzd:Lcom/google/android/recaptcha/internal/zzmo;

    return-void
.end method
