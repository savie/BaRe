.class final Lcom/google/android/recaptcha/internal/zzco;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field zza:I

.field final synthetic zzb:Landroid/app/Application;

.field final synthetic zzc:Ljava/lang/String;

.field final synthetic zzd:J


# direct methods
.method public constructor <init>(Landroid/app/Application;Ljava/lang/String;JLjv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/recaptcha/internal/zzco;->zzb:Landroid/app/Application;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/google/android/recaptcha/internal/zzco;->zzc:Ljava/lang/String;

    .line 4
    .line 5
    iput-wide p3, p0, Lcom/google/android/recaptcha/internal/zzco;->zzd:J

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
    new-instance v0, Lcom/google/android/recaptcha/internal/zzco;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/recaptcha/internal/zzco;->zzb:Landroid/app/Application;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/recaptcha/internal/zzco;->zzc:Ljava/lang/String;

    .line 6
    .line 7
    iget-wide v3, p0, Lcom/google/android/recaptcha/internal/zzco;->zzd:J

    .line 8
    .line 9
    move-object v5, p2

    .line 10
    invoke-direct/range {v0 .. v5}, Lcom/google/android/recaptcha/internal/zzco;-><init>(Landroid/app/Application;Ljava/lang/String;JLjv1;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/google/android/recaptcha/internal/zzco;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/google/android/recaptcha/internal/zzco;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/google/android/recaptcha/internal/zzco;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v0, p0, Lcom/google/android/recaptcha/internal/zzco;->zza:I

    .line 2
    .line 3
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-object p1

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/google/android/recaptcha/internal/zzco;->zzb:Landroid/app/Application;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zzco;->zzc:Ljava/lang/String;

    .line 12
    .line 13
    iget-wide v1, p0, Lcom/google/android/recaptcha/internal/zzco;->zzd:J

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    iput v3, p0, Lcom/google/android/recaptcha/internal/zzco;->zza:I

    .line 17
    .line 18
    invoke-static {p1, v0, v1, v2, p0}, Lcom/google/android/recaptcha/internal/zzcq;->zzb(Landroid/app/Application;Ljava/lang/String;JLjv1;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    sget-object p1, Lyx1;->a:Lyx1;

    .line 23
    .line 24
    if-ne p0, p1, :cond_1

    .line 25
    .line 26
    return-object p1

    .line 27
    :cond_1
    return-object p0
.end method
