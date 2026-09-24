.class final Lcom/google/android/recaptcha/internal/zzcs;
.super Lkv1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field zza:Ljava/lang/Object;

.field zzb:Ljava/lang/Object;

.field zzc:Ljava/lang/Object;

.field zzd:J

.field synthetic zze:Ljava/lang/Object;

.field final synthetic zzf:Lcom/google/android/recaptcha/internal/zzcv;

.field zzg:I

.field zzh:Ljava/lang/String;

.field zzi:Lcom/google/android/recaptcha/internal/zzch;

.field zzj:Lcom/google/android/recaptcha/internal/zzbi;


# direct methods
.method public constructor <init>(Lcom/google/android/recaptcha/internal/zzcv;Ljv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/recaptcha/internal/zzcs;->zzf:Lcom/google/android/recaptcha/internal/zzcv;

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
    .locals 8

    .line 1
    iput-object p1, p0, Lcom/google/android/recaptcha/internal/zzcs;->zze:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lcom/google/android/recaptcha/internal/zzcs;->zzg:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lcom/google/android/recaptcha/internal/zzcs;->zzg:I

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zzcs;->zzf:Lcom/google/android/recaptcha/internal/zzcv;

    .line 11
    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v6, 0x0

    .line 14
    const/4 v1, 0x0

    .line 15
    const-wide/16 v2, 0x0

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    move-object v7, p0

    .line 19
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/recaptcha/internal/zzcv;->zzg(Ljava/lang/String;JLcom/google/android/recaptcha/internal/zzcn;Lcom/google/android/recaptcha/internal/zzbi;Lcom/google/android/recaptcha/internal/zzch;Ljv1;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method
