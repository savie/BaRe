.class final Lcom/google/android/recaptcha/internal/zzal;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field zza:J

.field zzb:Z

.field zzc:I

.field final synthetic zzd:Lcom/google/android/recaptcha/internal/zzan;

.field final synthetic zze:Lcom/google/android/recaptcha/internal/zzen;

.field final synthetic zzf:Llh6;


# direct methods
.method public constructor <init>(Lcom/google/android/recaptcha/internal/zzan;Lcom/google/android/recaptcha/internal/zzen;Llh6;Ljv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/recaptcha/internal/zzal;->zzd:Lcom/google/android/recaptcha/internal/zzan;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/google/android/recaptcha/internal/zzal;->zze:Lcom/google/android/recaptcha/internal/zzen;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/google/android/recaptcha/internal/zzal;->zzf:Llh6;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lws7;-><init>(ILjv1;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljv1;)Ljv1;
    .locals 2

    .line 1
    new-instance p1, Lcom/google/android/recaptcha/internal/zzal;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zzal;->zzd:Lcom/google/android/recaptcha/internal/zzan;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/android/recaptcha/internal/zzal;->zze:Lcom/google/android/recaptcha/internal/zzen;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/google/android/recaptcha/internal/zzal;->zzf:Llh6;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, p0, p2}, Lcom/google/android/recaptcha/internal/zzal;-><init>(Lcom/google/android/recaptcha/internal/zzan;Lcom/google/android/recaptcha/internal/zzen;Llh6;Ljv1;)V

    .line 10
    .line 11
    .line 12
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
    invoke-virtual {p0, p1, p2}, Lcom/google/android/recaptcha/internal/zzal;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/google/android/recaptcha/internal/zzal;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/google/android/recaptcha/internal/zzal;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, Lcom/google/android/recaptcha/internal/zzal;->zzc:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    sget-object v3, Lyx1;->a:Lyx1;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    if-eq v0, v2, :cond_0

    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/google/android/recaptcha/internal/zzal;->zzb:Z

    .line 12
    .line 13
    iget-wide v4, p0, Lcom/google/android/recaptcha/internal/zzal;->zza:J

    .line 14
    .line 15
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    :goto_0
    move p1, v0

    .line 19
    goto/16 :goto_5

    .line 20
    .line 21
    :cond_0
    iget-wide v4, p0, Lcom/google/android/recaptcha/internal/zzal;->zza:J

    .line 22
    .line 23
    :try_start_0
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    goto :goto_2

    .line 27
    :catch_0
    move-exception p1

    .line 28
    goto :goto_3

    .line 29
    :cond_1
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    const-wide/16 v4, 0x3e8

    .line 33
    .line 34
    move p1, v2

    .line 35
    :goto_1
    if-eqz p1, :cond_6

    .line 36
    .line 37
    :try_start_1
    iget-object p1, p0, Lcom/google/android/recaptcha/internal/zzal;->zzd:Lcom/google/android/recaptcha/internal/zzan;

    .line 38
    .line 39
    iput-wide v4, p0, Lcom/google/android/recaptcha/internal/zzal;->zza:J

    .line 40
    .line 41
    iput v2, p0, Lcom/google/android/recaptcha/internal/zzal;->zzc:I

    .line 42
    .line 43
    invoke-static {p1, p0}, Lcom/google/android/recaptcha/internal/zzan;->zza(Lcom/google/android/recaptcha/internal/zzan;Ljv1;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    if-eq p1, v3, :cond_4

    .line 48
    .line 49
    :goto_2
    check-cast p1, Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityTokenProvider;

    .line 50
    .line 51
    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zzal;->zzd:Lcom/google/android/recaptcha/internal/zzan;

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/google/android/recaptcha/internal/zzan;->zzf()Lan1;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Lbn1;

    .line 58
    .line 59
    invoke-virtual {v0, p1}, Lci4;->G(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Lcom/google/android/recaptcha/internal/zzal;->zzd:Lcom/google/android/recaptcha/internal/zzan;

    .line 63
    .line 64
    sget-object v0, Lcom/google/android/recaptcha/internal/zzao;->zzc:Lcom/google/android/recaptcha/internal/zzao;

    .line 65
    .line 66
    invoke-static {p1, v0}, Lcom/google/android/recaptcha/internal/zzan;->zzh(Lcom/google/android/recaptcha/internal/zzan;Lcom/google/android/recaptcha/internal/zzao;)V

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Lcom/google/android/recaptcha/internal/zzal;->zze:Lcom/google/android/recaptcha/internal/zzen;

    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/google/android/recaptcha/internal/zzen;->zza()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 72
    .line 73
    .line 74
    move p1, v1

    .line 75
    goto :goto_1

    .line 76
    :goto_3
    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zzal;->zzf:Llh6;

    .line 77
    .line 78
    iput-object p1, v0, Llh6;->a:Ljava/lang/Object;

    .line 79
    .line 80
    instance-of v0, p1, Lcom/google/android/play/core/integrity/StandardIntegrityException;

    .line 81
    .line 82
    if-eqz v0, :cond_2

    .line 83
    .line 84
    move-object v0, p1

    .line 85
    check-cast v0, Lcom/google/android/play/core/integrity/StandardIntegrityException;

    .line 86
    .line 87
    invoke-virtual {v0}, Lcom/google/android/play/core/integrity/StandardIntegrityException;->getErrorCode()I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    const/16 v6, -0x64

    .line 92
    .line 93
    if-eq v0, v6, :cond_3

    .line 94
    .line 95
    const/16 v6, -0x12

    .line 96
    .line 97
    if-eq v0, v6, :cond_3

    .line 98
    .line 99
    const/16 v6, -0xc

    .line 100
    .line 101
    if-eq v0, v6, :cond_3

    .line 102
    .line 103
    const/4 v6, -0x8

    .line 104
    if-eq v0, v6, :cond_3

    .line 105
    .line 106
    const/4 v6, -0x3

    .line 107
    if-eq v0, v6, :cond_3

    .line 108
    .line 109
    :cond_2
    move v0, v1

    .line 110
    goto :goto_4

    .line 111
    :cond_3
    move v0, v2

    .line 112
    :goto_4
    if-eqz v0, :cond_5

    .line 113
    .line 114
    iput-wide v4, p0, Lcom/google/android/recaptcha/internal/zzal;->zza:J

    .line 115
    .line 116
    iput-boolean v2, p0, Lcom/google/android/recaptcha/internal/zzal;->zzb:Z

    .line 117
    .line 118
    const/4 p1, 0x2

    .line 119
    iput p1, p0, Lcom/google/android/recaptcha/internal/zzal;->zzc:I

    .line 120
    .line 121
    invoke-static {v4, v5, p0}, Lyc9;->j(JLjv1;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    if-eq p1, v3, :cond_4

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :goto_5
    add-long/2addr v4, v4

    .line 129
    goto :goto_1

    .line 130
    :cond_4
    return-object v3

    .line 131
    :cond_5
    throw p1

    .line 132
    :cond_6
    sget-object p0, Lbe8;->a:Lbe8;

    .line 133
    .line 134
    return-object p0
.end method
