.class final Lcom/google/android/recaptcha/internal/zzfq;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field zza:I

.field final synthetic zzb:Lcom/google/android/recaptcha/internal/zzgd;

.field final synthetic zzc:Ljava/util/List;

.field final synthetic zzd:Lcom/google/android/recaptcha/internal/zzft;

.field private synthetic zze:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/recaptcha/internal/zzgd;Ljava/util/List;Lcom/google/android/recaptcha/internal/zzft;Ljv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/recaptcha/internal/zzfq;->zzb:Lcom/google/android/recaptcha/internal/zzgd;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/google/android/recaptcha/internal/zzfq;->zzc:Ljava/util/List;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/google/android/recaptcha/internal/zzfq;->zzd:Lcom/google/android/recaptcha/internal/zzft;

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
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/recaptcha/internal/zzfq;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/recaptcha/internal/zzfq;->zzb:Lcom/google/android/recaptcha/internal/zzgd;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/recaptcha/internal/zzfq;->zzc:Ljava/util/List;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/google/android/recaptcha/internal/zzfq;->zzd:Lcom/google/android/recaptcha/internal/zzft;

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, p0, p2}, Lcom/google/android/recaptcha/internal/zzfq;-><init>(Lcom/google/android/recaptcha/internal/zzgd;Ljava/util/List;Lcom/google/android/recaptcha/internal/zzft;Ljv1;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, v0, Lcom/google/android/recaptcha/internal/zzfq;->zze:Ljava/lang/Object;

    .line 13
    .line 14
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
    invoke-virtual {p0, p1, p2}, Lcom/google/android/recaptcha/internal/zzfq;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/google/android/recaptcha/internal/zzfq;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/google/android/recaptcha/internal/zzfq;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Lcom/google/android/recaptcha/internal/zzfq;->zza:I

    .line 2
    .line 3
    sget-object v1, Lbe8;->a:Lbe8;

    .line 4
    .line 5
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return-object v1

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/google/android/recaptcha/internal/zzfq;->zze:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p1, Lxx1;

    .line 14
    .line 15
    :goto_0
    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zzfq;->zzb:Lcom/google/android/recaptcha/internal/zzgd;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/google/android/recaptcha/internal/zzgd;->zza()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-ltz v2, :cond_1

    .line 22
    .line 23
    iget-object v2, p0, Lcom/google/android/recaptcha/internal/zzfq;->zzc:Ljava/util/List;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/google/android/recaptcha/internal/zzgd;->zza()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-ge v0, v2, :cond_1

    .line 34
    .line 35
    invoke-static {p1}, Ll73;->t(Lxx1;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zzfq;->zzc:Ljava/util/List;

    .line 42
    .line 43
    iget-object v2, p0, Lcom/google/android/recaptcha/internal/zzfq;->zzb:Lcom/google/android/recaptcha/internal/zzgd;

    .line 44
    .line 45
    invoke-virtual {v2}, Lcom/google/android/recaptcha/internal/zzgd;->zza()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    move-object v2, v0

    .line 54
    check-cast v2, Lcom/google/android/recaptcha/internal/zzuf;

    .line 55
    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zzfq;->zzd:Lcom/google/android/recaptcha/internal/zzft;

    .line 57
    .line 58
    iget-object v3, p0, Lcom/google/android/recaptcha/internal/zzfq;->zzb:Lcom/google/android/recaptcha/internal/zzgd;

    .line 59
    .line 60
    invoke-static {v0, v2, v3}, Lcom/google/android/recaptcha/internal/zzft;->zzf(Lcom/google/android/recaptcha/internal/zzft;Lcom/google/android/recaptcha/internal/zzuf;Lcom/google/android/recaptcha/internal/zzgd;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    move-object p1, v0

    .line 66
    invoke-virtual {v2}, Lcom/google/android/recaptcha/internal/zzuf;->zzk()I

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2}, Lcom/google/android/recaptcha/internal/zzuf;->zzg()I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    invoke-static {v0}, Lx13;->d(I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2}, Lcom/google/android/recaptcha/internal/zzuf;->zzj()Ljava/util/List;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zzfq;->zzd:Lcom/google/android/recaptcha/internal/zzft;

    .line 81
    .line 82
    new-instance v7, Lcom/google/android/recaptcha/internal/zzfp;

    .line 83
    .line 84
    invoke-direct {v7, v0}, Lcom/google/android/recaptcha/internal/zzfp;-><init>(Lcom/google/android/recaptcha/internal/zzft;)V

    .line 85
    .line 86
    .line 87
    const/16 v8, 0x1f

    .line 88
    .line 89
    const/4 v4, 0x0

    .line 90
    const/4 v5, 0x0

    .line 91
    const/4 v6, 0x0

    .line 92
    invoke-static/range {v3 .. v8}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zzfq;->zzd:Lcom/google/android/recaptcha/internal/zzft;

    .line 96
    .line 97
    iget-object v2, p0, Lcom/google/android/recaptcha/internal/zzfq;->zzb:Lcom/google/android/recaptcha/internal/zzgd;

    .line 98
    .line 99
    const/4 v3, 0x1

    .line 100
    iput v3, p0, Lcom/google/android/recaptcha/internal/zzfq;->zza:I

    .line 101
    .line 102
    invoke-static {v0, p1, v2, p0}, Lcom/google/android/recaptcha/internal/zzft;->zzd(Lcom/google/android/recaptcha/internal/zzft;Ljava/lang/Exception;Lcom/google/android/recaptcha/internal/zzgd;Ljv1;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    sget-object p1, Lyx1;->a:Lyx1;

    .line 107
    .line 108
    if-ne p0, p1, :cond_1

    .line 109
    .line 110
    return-object p1

    .line 111
    :cond_1
    return-object v1
.end method
