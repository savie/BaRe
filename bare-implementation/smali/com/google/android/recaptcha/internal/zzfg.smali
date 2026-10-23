.class final Lcom/google/android/recaptcha/internal/zzfg;
.super Lkv1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field synthetic zza:Ljava/lang/Object;

.field final synthetic zzb:Lcom/google/android/recaptcha/internal/zzfj;

.field zzc:I


# direct methods
.method public constructor <init>(Lcom/google/android/recaptcha/internal/zzfj;Ljv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/recaptcha/internal/zzfg;->zzb:Lcom/google/android/recaptcha/internal/zzfj;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lkv1;-><init>(Ljv1;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/android/recaptcha/internal/zzfg;->zza:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lcom/google/android/recaptcha/internal/zzfg;->zzc:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lcom/google/android/recaptcha/internal/zzfg;->zzc:I

    .line 9
    .line 10
    iget-object p1, p0, Lcom/google/android/recaptcha/internal/zzfg;->zzb:Lcom/google/android/recaptcha/internal/zzfj;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-static {p1, v0, v0, p0}, Lcom/google/android/recaptcha/internal/zzfj;->zzc(Lcom/google/android/recaptcha/internal/zzfj;Lcom/google/android/recaptcha/internal/zzbr;Lcom/google/android/recaptcha/internal/zzsp;Ljv1;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method
