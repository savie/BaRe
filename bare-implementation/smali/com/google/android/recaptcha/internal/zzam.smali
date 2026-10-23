.class final Lcom/google/android/recaptcha/internal/zzam;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field zza:Ljava/lang/Object;

.field zzb:I

.field final synthetic zzc:Lcom/google/android/recaptcha/internal/zzan;

.field final synthetic zzd:Lcom/google/android/recaptcha/internal/zzen;


# direct methods
.method public constructor <init>(Lcom/google/android/recaptcha/internal/zzan;Lcom/google/android/recaptcha/internal/zzen;Ljv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/recaptcha/internal/zzam;->zzc:Lcom/google/android/recaptcha/internal/zzan;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/google/android/recaptcha/internal/zzam;->zzd:Lcom/google/android/recaptcha/internal/zzen;

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
    new-instance p1, Lcom/google/android/recaptcha/internal/zzam;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zzam;->zzc:Lcom/google/android/recaptcha/internal/zzan;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/google/android/recaptcha/internal/zzam;->zzd:Lcom/google/android/recaptcha/internal/zzen;

    .line 6
    .line 7
    invoke-direct {p1, v0, p0, p2}, Lcom/google/android/recaptcha/internal/zzam;-><init>(Lcom/google/android/recaptcha/internal/zzan;Lcom/google/android/recaptcha/internal/zzen;Ljv1;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/google/android/recaptcha/internal/zzam;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/google/android/recaptcha/internal/zzam;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/google/android/recaptcha/internal/zzam;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v0, p0, Lcom/google/android/recaptcha/internal/zzam;->zzb:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zzam;->zza:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Llh6;

    .line 8
    .line 9
    :try_start_0
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    goto :goto_1

    .line 13
    :catch_0
    move-exception p1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    new-instance v0, Llh6;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    :try_start_1
    new-instance p1, Lcom/google/android/recaptcha/internal/zzal;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/google/android/recaptcha/internal/zzam;->zzc:Lcom/google/android/recaptcha/internal/zzan;

    .line 26
    .line 27
    iget-object v2, p0, Lcom/google/android/recaptcha/internal/zzam;->zzd:Lcom/google/android/recaptcha/internal/zzen;

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    invoke-direct {p1, v1, v2, v0, v3}, Lcom/google/android/recaptcha/internal/zzal;-><init>(Lcom/google/android/recaptcha/internal/zzan;Lcom/google/android/recaptcha/internal/zzen;Llh6;Ljv1;)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/google/android/recaptcha/internal/zzam;->zza:Ljava/lang/Object;

    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    iput v1, p0, Lcom/google/android/recaptcha/internal/zzam;->zzb:I

    .line 37
    .line 38
    const-wide/32 v1, 0xea60

    .line 39
    .line 40
    .line 41
    invoke-static {v1, v2, p1, p0}, Ltu0;->D(JLqt3;Lkv1;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 45
    sget-object p1, Lyx1;->a:Lyx1;

    .line 46
    .line 47
    if-ne p0, p1, :cond_2

    .line 48
    .line 49
    return-object p1

    .line 50
    :goto_0
    iget-object v1, p0, Lcom/google/android/recaptcha/internal/zzam;->zzc:Lcom/google/android/recaptcha/internal/zzan;

    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/google/android/recaptcha/internal/zzan;->zzf()Lan1;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    iget-object v0, v0, Llh6;->a:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v0, Ljava/lang/Throwable;

    .line 59
    .line 60
    if-nez v0, :cond_1

    .line 61
    .line 62
    move-object v0, p1

    .line 63
    :cond_1
    check-cast v1, Lbn1;

    .line 64
    .line 65
    invoke-virtual {v1, v0}, Lbn1;->Y(Ljava/lang/Throwable;)Z

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zzam;->zzc:Lcom/google/android/recaptcha/internal/zzan;

    .line 69
    .line 70
    sget-object v1, Lcom/google/android/recaptcha/internal/zzao;->zza:Lcom/google/android/recaptcha/internal/zzao;

    .line 71
    .line 72
    invoke-static {v0, v1}, Lcom/google/android/recaptcha/internal/zzan;->zzh(Lcom/google/android/recaptcha/internal/zzan;Lcom/google/android/recaptcha/internal/zzao;)V

    .line 73
    .line 74
    .line 75
    iget-object p0, p0, Lcom/google/android/recaptcha/internal/zzam;->zzd:Lcom/google/android/recaptcha/internal/zzen;

    .line 76
    .line 77
    new-instance v0, Lcom/google/android/recaptcha/internal/zzbd;

    .line 78
    .line 79
    sget-object v1, Lcom/google/android/recaptcha/internal/zzbb;->zzb:Lcom/google/android/recaptcha/internal/zzbb;

    .line 80
    .line 81
    sget-object v2, Lcom/google/android/recaptcha/internal/zzba;->zza:Lcom/google/android/recaptcha/internal/zzba;

    .line 82
    .line 83
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/recaptcha/internal/zzbd;-><init>(Lcom/google/android/recaptcha/internal/zzbb;Lcom/google/android/recaptcha/internal/zzba;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, v0}, Lcom/google/android/recaptcha/internal/zzen;->zzb(Lcom/google/android/recaptcha/internal/zzbd;)V

    .line 91
    .line 92
    .line 93
    :cond_2
    :goto_1
    sget-object p0, Lbe8;->a:Lbe8;

    .line 94
    .line 95
    return-object p0
.end method
