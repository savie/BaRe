.class final Lcom/google/android/recaptcha/internal/zzj;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field zza:I

.field final synthetic zzb:Lcom/google/android/recaptcha/internal/zze;

.field final synthetic zzc:J

.field final synthetic zzd:Lcom/google/android/recaptcha/internal/zzsc;


# direct methods
.method public constructor <init>(Lcom/google/android/recaptcha/internal/zze;JLcom/google/android/recaptcha/internal/zzsc;Ljv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/recaptcha/internal/zzj;->zzb:Lcom/google/android/recaptcha/internal/zze;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/google/android/recaptcha/internal/zzj;->zzc:J

    .line 4
    .line 5
    iput-object p4, p0, Lcom/google/android/recaptcha/internal/zzj;->zzd:Lcom/google/android/recaptcha/internal/zzsc;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p5}, Lws7;-><init>(ILjv1;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljv1;)Ljv1;
    .locals 6

    .line 1
    new-instance v0, Lcom/google/android/recaptcha/internal/zzj;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/recaptcha/internal/zzj;->zzb:Lcom/google/android/recaptcha/internal/zze;

    .line 4
    .line 5
    iget-wide v2, p0, Lcom/google/android/recaptcha/internal/zzj;->zzc:J

    .line 6
    .line 7
    iget-object v4, p0, Lcom/google/android/recaptcha/internal/zzj;->zzd:Lcom/google/android/recaptcha/internal/zzsc;

    .line 8
    .line 9
    move-object v5, p2

    .line 10
    invoke-direct/range {v0 .. v5}, Lcom/google/android/recaptcha/internal/zzj;-><init>(Lcom/google/android/recaptcha/internal/zze;JLcom/google/android/recaptcha/internal/zzsc;Ljv1;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public final bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lxx1;

    .line 2
    .line 3
    check-cast p2, Ljv1;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/google/android/recaptcha/internal/zzj;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/google/android/recaptcha/internal/zzj;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/google/android/recaptcha/internal/zzj;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/recaptcha/internal/zzj;->zza:I

    .line 2
    .line 3
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    check-cast p1, Len6;

    .line 9
    .line 10
    iget-object p0, p1, Len6;->a:Ljava/lang/Object;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/google/android/recaptcha/internal/zzj;->zzb:Lcom/google/android/recaptcha/internal/zze;

    .line 14
    .line 15
    iget-wide v0, p0, Lcom/google/android/recaptcha/internal/zzj;->zzc:J

    .line 16
    .line 17
    iget-object v2, p0, Lcom/google/android/recaptcha/internal/zzj;->zzd:Lcom/google/android/recaptcha/internal/zzsc;

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    iput v3, p0, Lcom/google/android/recaptcha/internal/zzj;->zza:I

    .line 21
    .line 22
    invoke-virtual {p1, v0, v1, v2, p0}, Lcom/google/android/recaptcha/internal/zze;->zze(JLcom/google/android/recaptcha/internal/zzsc;Ljv1;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    sget-object p1, Lyx1;->a:Lyx1;

    .line 27
    .line 28
    if-ne p0, p1, :cond_1

    .line 29
    .line 30
    return-object p1

    .line 31
    :cond_1
    :goto_0
    new-instance p1, Len6;

    .line 32
    .line 33
    invoke-direct {p1, p0}, Len6;-><init>(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    return-object p1
.end method
