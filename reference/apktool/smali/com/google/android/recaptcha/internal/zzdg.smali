.class final Lcom/google/android/recaptcha/internal/zzdg;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field zza:Ljava/lang/Object;

.field zzb:I

.field final synthetic zzc:Lcom/google/android/recaptcha/internal/zzdt;

.field final synthetic zzd:Ljava/lang/String;

.field final synthetic zze:J

.field final synthetic zzf:Lcom/google/android/recaptcha/internal/zzsp;


# direct methods
.method public constructor <init>(Lcom/google/android/recaptcha/internal/zzdt;Ljava/lang/String;JLcom/google/android/recaptcha/internal/zzsp;Ljv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/recaptcha/internal/zzdg;->zzc:Lcom/google/android/recaptcha/internal/zzdt;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/google/android/recaptcha/internal/zzdg;->zzd:Ljava/lang/String;

    .line 4
    .line 5
    iput-wide p3, p0, Lcom/google/android/recaptcha/internal/zzdg;->zze:J

    .line 6
    .line 7
    iput-object p5, p0, Lcom/google/android/recaptcha/internal/zzdg;->zzf:Lcom/google/android/recaptcha/internal/zzsp;

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p6}, Lws7;-><init>(ILjv1;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljv1;)Ljv1;
    .locals 7

    .line 1
    new-instance v0, Lcom/google/android/recaptcha/internal/zzdg;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/recaptcha/internal/zzdg;->zzc:Lcom/google/android/recaptcha/internal/zzdt;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/recaptcha/internal/zzdg;->zzd:Ljava/lang/String;

    .line 6
    .line 7
    iget-wide v3, p0, Lcom/google/android/recaptcha/internal/zzdg;->zze:J

    .line 8
    .line 9
    iget-object v5, p0, Lcom/google/android/recaptcha/internal/zzdg;->zzf:Lcom/google/android/recaptcha/internal/zzsp;

    .line 10
    .line 11
    move-object v6, p2

    .line 12
    invoke-direct/range {v0 .. v6}, Lcom/google/android/recaptcha/internal/zzdg;-><init>(Lcom/google/android/recaptcha/internal/zzdt;Ljava/lang/String;JLcom/google/android/recaptcha/internal/zzsp;Ljv1;)V

    .line 13
    .line 14
    .line 15
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
    invoke-virtual {p0, p1, p2}, Lcom/google/android/recaptcha/internal/zzdg;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/google/android/recaptcha/internal/zzdg;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/google/android/recaptcha/internal/zzdg;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, Lcom/google/android/recaptcha/internal/zzdg;->zzb:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zzdg;->zza:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Lcom/google/android/recaptcha/internal/zzen;

    .line 8
    .line 9
    :try_start_0
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V
    :try_end_0
    .catch Lg48; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/recaptcha/internal/zzbd; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception p1

    .line 14
    goto :goto_1

    .line 15
    :catch_1
    move-exception p1

    .line 16
    goto :goto_2

    .line 17
    :catch_2
    move-exception p1

    .line 18
    goto :goto_3

    .line 19
    :cond_0
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/google/android/recaptcha/internal/zzdg;->zzc:Lcom/google/android/recaptcha/internal/zzdt;

    .line 23
    .line 24
    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zzdg;->zzd:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {p1, v0}, Lcom/google/android/recaptcha/internal/zzdt;->zzf(Lcom/google/android/recaptcha/internal/zzdt;Ljava/lang/String;)Lcom/google/android/recaptcha/internal/zzek;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const/16 v0, 0x1c

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Lcom/google/android/recaptcha/internal/zzek;->zzf(I)Lcom/google/android/recaptcha/internal/zzen;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    :try_start_1
    iget-wide v1, p0, Lcom/google/android/recaptcha/internal/zzdg;->zze:J

    .line 37
    .line 38
    new-instance p1, Lcom/google/android/recaptcha/internal/zzdf;

    .line 39
    .line 40
    iget-object v3, p0, Lcom/google/android/recaptcha/internal/zzdg;->zzc:Lcom/google/android/recaptcha/internal/zzdt;

    .line 41
    .line 42
    iget-object v4, p0, Lcom/google/android/recaptcha/internal/zzdg;->zzf:Lcom/google/android/recaptcha/internal/zzsp;

    .line 43
    .line 44
    const/4 v5, 0x0

    .line 45
    invoke-direct {p1, v3, v4, v0, v5}, Lcom/google/android/recaptcha/internal/zzdf;-><init>(Lcom/google/android/recaptcha/internal/zzdt;Lcom/google/android/recaptcha/internal/zzsp;Lcom/google/android/recaptcha/internal/zzen;Ljv1;)V

    .line 46
    .line 47
    .line 48
    iput-object v0, p0, Lcom/google/android/recaptcha/internal/zzdg;->zza:Ljava/lang/Object;

    .line 49
    .line 50
    const/4 v3, 0x1

    .line 51
    iput v3, p0, Lcom/google/android/recaptcha/internal/zzdg;->zzb:I

    .line 52
    .line 53
    invoke-static {v1, v2, p1, p0}, Ltu0;->D(JLqt3;Lkv1;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p1
    :try_end_1
    .catch Lg48; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/google/android/recaptcha/internal/zzbd; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 57
    sget-object v1, Lyx1;->a:Lyx1;

    .line 58
    .line 59
    if-eq p1, v1, :cond_1

    .line 60
    .line 61
    :goto_0
    :try_start_2
    check-cast p1, Lcom/google/android/recaptcha/internal/zzsr;
    :try_end_2
    .catch Lg48; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/google/android/recaptcha/internal/zzbd; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 62
    .line 63
    return-object p1

    .line 64
    :cond_1
    return-object v1

    .line 65
    :goto_1
    iget-object p0, p0, Lcom/google/android/recaptcha/internal/zzdg;->zzc:Lcom/google/android/recaptcha/internal/zzdt;

    .line 66
    .line 67
    new-instance v1, Lcom/google/android/recaptcha/internal/zzbd;

    .line 68
    .line 69
    sget-object v2, Lcom/google/android/recaptcha/internal/zzbb;->zzc:Lcom/google/android/recaptcha/internal/zzbb;

    .line 70
    .line 71
    sget-object v3, Lcom/google/android/recaptcha/internal/zzba;->zzZ:Lcom/google/android/recaptcha/internal/zzba;

    .line 72
    .line 73
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/recaptcha/internal/zzbd;-><init>(Lcom/google/android/recaptcha/internal/zzbb;Lcom/google/android/recaptcha/internal/zzba;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-static {p0, p1, v1}, Lcom/google/android/recaptcha/internal/zzdt;->zzb(Lcom/google/android/recaptcha/internal/zzdt;Ljava/lang/Exception;Lcom/google/android/recaptcha/internal/zzbd;)Lcom/google/android/recaptcha/internal/zzbd;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-virtual {v0, p0}, Lcom/google/android/recaptcha/internal/zzen;->zzb(Lcom/google/android/recaptcha/internal/zzbd;)V

    .line 85
    .line 86
    .line 87
    throw p0

    .line 88
    :goto_2
    iget-object p0, p0, Lcom/google/android/recaptcha/internal/zzdg;->zzc:Lcom/google/android/recaptcha/internal/zzdt;

    .line 89
    .line 90
    invoke-static {p0, p1, p1}, Lcom/google/android/recaptcha/internal/zzdt;->zzb(Lcom/google/android/recaptcha/internal/zzdt;Ljava/lang/Exception;Lcom/google/android/recaptcha/internal/zzbd;)Lcom/google/android/recaptcha/internal/zzbd;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    invoke-virtual {v0, p0}, Lcom/google/android/recaptcha/internal/zzen;->zzb(Lcom/google/android/recaptcha/internal/zzbd;)V

    .line 95
    .line 96
    .line 97
    throw p0

    .line 98
    :goto_3
    iget-object p0, p0, Lcom/google/android/recaptcha/internal/zzdg;->zzc:Lcom/google/android/recaptcha/internal/zzdt;

    .line 99
    .line 100
    new-instance v1, Lcom/google/android/recaptcha/internal/zzbd;

    .line 101
    .line 102
    sget-object v2, Lcom/google/android/recaptcha/internal/zzbb;->zzc:Lcom/google/android/recaptcha/internal/zzbb;

    .line 103
    .line 104
    sget-object v3, Lcom/google/android/recaptcha/internal/zzba;->zzb:Lcom/google/android/recaptcha/internal/zzba;

    .line 105
    .line 106
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/recaptcha/internal/zzbd;-><init>(Lcom/google/android/recaptcha/internal/zzbb;Lcom/google/android/recaptcha/internal/zzba;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-static {p0, p1, v1}, Lcom/google/android/recaptcha/internal/zzdt;->zzb(Lcom/google/android/recaptcha/internal/zzdt;Ljava/lang/Exception;Lcom/google/android/recaptcha/internal/zzbd;)Lcom/google/android/recaptcha/internal/zzbd;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    invoke-virtual {v0, p0}, Lcom/google/android/recaptcha/internal/zzen;->zzb(Lcom/google/android/recaptcha/internal/zzbd;)V

    .line 118
    .line 119
    .line 120
    throw p0
.end method
