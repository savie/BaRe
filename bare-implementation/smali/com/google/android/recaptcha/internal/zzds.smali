.class final Lcom/google/android/recaptcha/internal/zzds;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field zza:I

.field final synthetic zzb:Lcom/google/android/recaptcha/internal/zzdt;

.field final synthetic zzc:Lcom/google/android/recaptcha/internal/zzen;


# direct methods
.method public constructor <init>(Lcom/google/android/recaptcha/internal/zzdt;Lcom/google/android/recaptcha/internal/zzen;Ljv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/recaptcha/internal/zzds;->zzb:Lcom/google/android/recaptcha/internal/zzdt;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/google/android/recaptcha/internal/zzds;->zzc:Lcom/google/android/recaptcha/internal/zzen;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lws7;-><init>(ILjv1;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljv1;)Ljv1;
    .locals 1

    .line 1
    new-instance p1, Lcom/google/android/recaptcha/internal/zzds;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zzds;->zzb:Lcom/google/android/recaptcha/internal/zzdt;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/google/android/recaptcha/internal/zzds;->zzc:Lcom/google/android/recaptcha/internal/zzen;

    .line 6
    .line 7
    invoke-direct {p1, v0, p0, p2}, Lcom/google/android/recaptcha/internal/zzds;-><init>(Lcom/google/android/recaptcha/internal/zzdt;Lcom/google/android/recaptcha/internal/zzen;Ljv1;)V

    .line 8
    .line 9
    .line 10
    return-object p1
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
    invoke-virtual {p0, p1, p2}, Lcom/google/android/recaptcha/internal/zzds;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/google/android/recaptcha/internal/zzds;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/google/android/recaptcha/internal/zzds;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/recaptcha/internal/zzds;->zza:I

    .line 2
    .line 3
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/google/android/recaptcha/internal/zzds;->zzb:Lcom/google/android/recaptcha/internal/zzdt;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput v0, p0, Lcom/google/android/recaptcha/internal/zzds;->zza:I

    .line 13
    .line 14
    invoke-static {p1, p0}, Lcom/google/android/recaptcha/internal/zzdt;->zzj(Lcom/google/android/recaptcha/internal/zzdt;Ljv1;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    sget-object v0, Lyx1;->a:Lyx1;

    .line 19
    .line 20
    if-ne p1, v0, :cond_1

    .line 21
    .line 22
    return-object v0

    .line 23
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/google/android/recaptcha/internal/zzds;->zzc:Lcom/google/android/recaptcha/internal/zzen;

    .line 24
    .line 25
    check-cast p1, Lcom/google/android/recaptcha/internal/zzsc;

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/google/android/recaptcha/internal/zzen;->zza()V

    .line 28
    .line 29
    .line 30
    return-object p1
.end method
