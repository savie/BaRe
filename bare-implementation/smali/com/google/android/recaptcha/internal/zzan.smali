.class public final Lcom/google/android/recaptcha/internal/zzan;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public zza:Lan1;

.field private final zzb:Lxx1;

.field private final zzc:Lcom/google/android/recaptcha/internal/zzek;

.field private final zzd:Lcom/google/android/play/core/integrity/StandardIntegrityManager;

.field private zze:Lcom/google/android/recaptcha/internal/zzao;

.field private zzf:J

.field private final zzg:Lkj5;

.field private zzh:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lxx1;Lcom/google/android/recaptcha/internal/zzek;Lcom/google/android/play/core/integrity/StandardIntegrityManager;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/android/recaptcha/internal/zzan;->zzb:Lxx1;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/google/android/recaptcha/internal/zzan;->zzc:Lcom/google/android/recaptcha/internal/zzek;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/google/android/recaptcha/internal/zzan;->zzd:Lcom/google/android/play/core/integrity/StandardIntegrityManager;

    .line 9
    .line 10
    sget-object p1, Lcom/google/android/recaptcha/internal/zzao;->zza:Lcom/google/android/recaptcha/internal/zzao;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/google/android/recaptcha/internal/zzan;->zze:Lcom/google/android/recaptcha/internal/zzao;

    .line 13
    .line 14
    new-instance p1, Lmj5;

    .line 15
    .line 16
    invoke-direct {p1}, Lmj5;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/google/android/recaptcha/internal/zzan;->zzg:Lkj5;

    .line 20
    .line 21
    return-void
.end method

.method public static final synthetic zza(Lcom/google/android/recaptcha/internal/zzan;Ljv1;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/recaptcha/internal/zzan;->zzi(Ljv1;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic zzb(Lcom/google/android/recaptcha/internal/zzan;Ljava/lang/String;Ljv1;)Ljava/lang/Object;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/recaptcha/internal/zzan;->zzj(Ljava/lang/String;Ljv1;)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method public static final synthetic zzg(Lcom/google/android/recaptcha/internal/zzan;)Lxx1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/recaptcha/internal/zzan;->zzb:Lxx1;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic zzh(Lcom/google/android/recaptcha/internal/zzan;Lcom/google/android/recaptcha/internal/zzao;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/recaptcha/internal/zzan;->zze:Lcom/google/android/recaptcha/internal/zzao;

    .line 2
    .line 3
    return-void
.end method

.method private final zzi(Ljv1;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/recaptcha/internal/zzag;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/google/android/recaptcha/internal/zzag;

    .line 7
    .line 8
    iget v1, v0, Lcom/google/android/recaptcha/internal/zzag;->zzc:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/google/android/recaptcha/internal/zzag;->zzc:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/google/android/recaptcha/internal/zzag;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcom/google/android/recaptcha/internal/zzag;-><init>(Lcom/google/android/recaptcha/internal/zzan;Ljv1;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lcom/google/android/recaptcha/internal/zzag;->zza:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lcom/google/android/recaptcha/internal/zzag;->zzc:I

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    if-ne v1, v2, :cond_1

    .line 33
    .line 34
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    return-object p1

    .line 38
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 39
    .line 40
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const/4 p0, 0x0

    .line 44
    return-object p0

    .line 45
    :cond_2
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    invoke-static {}, Lcom/google/android/play/core/integrity/StandardIntegrityManager$PrepareIntegrityTokenRequest;->builder()Lcom/google/android/play/core/integrity/StandardIntegrityManager$PrepareIntegrityTokenRequest$Builder;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iget-wide v3, p0, Lcom/google/android/recaptcha/internal/zzan;->zzf:J

    .line 53
    .line 54
    invoke-virtual {p1, v3, v4}, Lcom/google/android/play/core/integrity/StandardIntegrityManager$PrepareIntegrityTokenRequest$Builder;->setCloudProjectNumber(J)Lcom/google/android/play/core/integrity/StandardIntegrityManager$PrepareIntegrityTokenRequest$Builder;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p1}, Lcom/google/android/play/core/integrity/StandardIntegrityManager$PrepareIntegrityTokenRequest$Builder;->build()Lcom/google/android/play/core/integrity/StandardIntegrityManager$PrepareIntegrityTokenRequest;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    iget-object p0, p0, Lcom/google/android/recaptcha/internal/zzan;->zzd:Lcom/google/android/play/core/integrity/StandardIntegrityManager;

    .line 63
    .line 64
    invoke-interface {p0, p1}, Lcom/google/android/play/core/integrity/StandardIntegrityManager;->prepareIntegrityToken(Lcom/google/android/play/core/integrity/StandardIntegrityManager$PrepareIntegrityTokenRequest;)Lcom/google/android/gms/tasks/Task;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-static {p0}, Lcom/google/android/recaptcha/internal/zzbx;->zza(Lcom/google/android/gms/tasks/Task;)Ljg2;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    iput v2, v0, Lcom/google/android/recaptcha/internal/zzag;->zzc:I

    .line 73
    .line 74
    invoke-interface {p0, v0}, Ljg2;->await(Ljv1;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    sget-object p1, Lyx1;->a:Lyx1;

    .line 79
    .line 80
    if-ne p0, p1, :cond_3

    .line 81
    .line 82
    return-object p1

    .line 83
    :cond_3
    return-object p0
.end method

.method private final zzj(Ljava/lang/String;Ljv1;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lcom/google/android/recaptcha/internal/zzah;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/google/android/recaptcha/internal/zzah;

    .line 7
    .line 8
    iget v1, v0, Lcom/google/android/recaptcha/internal/zzah;->zzc:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/google/android/recaptcha/internal/zzah;->zzc:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/google/android/recaptcha/internal/zzah;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lcom/google/android/recaptcha/internal/zzah;-><init>(Lcom/google/android/recaptcha/internal/zzan;Ljv1;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcom/google/android/recaptcha/internal/zzah;->zza:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lcom/google/android/recaptcha/internal/zzah;->zzc:I

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v3, 0x2

    .line 31
    const/4 v4, 0x1

    .line 32
    sget-object v5, Lyx1;->a:Lyx1;

    .line 33
    .line 34
    if-eqz v1, :cond_3

    .line 35
    .line 36
    if-eq v1, v4, :cond_2

    .line 37
    .line 38
    if-ne v1, v3, :cond_1

    .line 39
    .line 40
    invoke-static {p2}, Llg7;->H(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 45
    .line 46
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-object v2

    .line 50
    :cond_2
    iget-object p1, v0, Lcom/google/android/recaptcha/internal/zzah;->zzd:Ljava/lang/String;

    .line 51
    .line 52
    invoke-static {p2}, Llg7;->H(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_3
    invoke-static {p2}, Llg7;->H(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/google/android/recaptcha/internal/zzan;->zzf()Lan1;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    iput-object p1, v0, Lcom/google/android/recaptcha/internal/zzah;->zzd:Ljava/lang/String;

    .line 64
    .line 65
    iput v4, v0, Lcom/google/android/recaptcha/internal/zzah;->zzc:I

    .line 66
    .line 67
    check-cast p0, Lbn1;

    .line 68
    .line 69
    invoke-virtual {p0, v0}, Lci4;->k(Ljv1;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    if-eq p2, v5, :cond_5

    .line 74
    .line 75
    :goto_1
    check-cast p2, Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityTokenProvider;

    .line 76
    .line 77
    invoke-static {}, Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityTokenRequest;->builder()Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityTokenRequest$Builder;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-virtual {p0, p1}, Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityTokenRequest$Builder;->setRequestHash(Ljava/lang/String;)Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityTokenRequest$Builder;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    invoke-virtual {p0}, Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityTokenRequest$Builder;->build()Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityTokenRequest;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    invoke-interface {p2, p0}, Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityTokenProvider;->request(Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityTokenRequest;)Lcom/google/android/gms/tasks/Task;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    invoke-static {p0}, Lcom/google/android/recaptcha/internal/zzbx;->zza(Lcom/google/android/gms/tasks/Task;)Ljg2;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    iput-object v2, v0, Lcom/google/android/recaptcha/internal/zzah;->zzd:Ljava/lang/String;

    .line 98
    .line 99
    iput v3, v0, Lcom/google/android/recaptcha/internal/zzah;->zzc:I

    .line 100
    .line 101
    invoke-interface {p0, v0}, Ljg2;->await(Ljv1;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    if-ne p2, v5, :cond_4

    .line 106
    .line 107
    goto :goto_3

    .line 108
    :cond_4
    :goto_2
    check-cast p2, Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityToken;

    .line 109
    .line 110
    invoke-virtual {p2}, Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityToken;->token()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    return-object p0

    .line 115
    :cond_5
    :goto_3
    return-object v5
.end method


# virtual methods
.method public final zzc(Ljava/lang/String;Ljv1;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lcom/google/android/recaptcha/internal/zzaf;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/google/android/recaptcha/internal/zzaf;

    .line 7
    .line 8
    iget v1, v0, Lcom/google/android/recaptcha/internal/zzaf;->zzc:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/google/android/recaptcha/internal/zzaf;->zzc:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/google/android/recaptcha/internal/zzaf;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lcom/google/android/recaptcha/internal/zzaf;-><init>(Lcom/google/android/recaptcha/internal/zzan;Ljv1;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcom/google/android/recaptcha/internal/zzaf;->zza:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lcom/google/android/recaptcha/internal/zzaf;->zzc:I

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v3, 0x3

    .line 31
    const/4 v4, 0x2

    .line 32
    const/4 v5, 0x1

    .line 33
    sget-object v6, Lyx1;->a:Lyx1;

    .line 34
    .line 35
    if-eqz v1, :cond_4

    .line 36
    .line 37
    if-eq v1, v5, :cond_3

    .line 38
    .line 39
    if-eq v1, v4, :cond_2

    .line 40
    .line 41
    if-ne v1, v3, :cond_1

    .line 42
    .line 43
    invoke-static {p2}, Llg7;->H(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    goto :goto_3

    .line 47
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 48
    .line 49
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-object v2

    .line 53
    :cond_2
    iget-object p0, v0, Lcom/google/android/recaptcha/internal/zzaf;->zze:Ljava/lang/String;

    .line 54
    .line 55
    iget-object p1, v0, Lcom/google/android/recaptcha/internal/zzaf;->zzd:Lcom/google/android/recaptcha/internal/zzan;

    .line 56
    .line 57
    invoke-static {p2}, Llg7;->H(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_3
    iget-object p1, v0, Lcom/google/android/recaptcha/internal/zzaf;->zze:Ljava/lang/String;

    .line 62
    .line 63
    iget-object p0, v0, Lcom/google/android/recaptcha/internal/zzaf;->zzd:Lcom/google/android/recaptcha/internal/zzan;

    .line 64
    .line 65
    :try_start_0
    invoke-static {p2}, Llg7;->H(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_4
    invoke-static {p2}, Llg7;->H(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    :try_start_1
    iput-object p0, v0, Lcom/google/android/recaptcha/internal/zzaf;->zzd:Lcom/google/android/recaptcha/internal/zzan;

    .line 73
    .line 74
    iput-object p1, v0, Lcom/google/android/recaptcha/internal/zzaf;->zze:Ljava/lang/String;

    .line 75
    .line 76
    iput v5, v0, Lcom/google/android/recaptcha/internal/zzaf;->zzc:I

    .line 77
    .line 78
    invoke-direct {p0, p1, v0}, Lcom/google/android/recaptcha/internal/zzan;->zzj(Ljava/lang/String;Ljv1;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    if-ne p2, v6, :cond_5

    .line 83
    .line 84
    goto :goto_4

    .line 85
    :cond_5
    :goto_1
    check-cast p2, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 86
    .line 87
    return-object p2

    .line 88
    :catch_0
    iput-object p0, v0, Lcom/google/android/recaptcha/internal/zzaf;->zzd:Lcom/google/android/recaptcha/internal/zzan;

    .line 89
    .line 90
    iput-object p1, v0, Lcom/google/android/recaptcha/internal/zzaf;->zze:Ljava/lang/String;

    .line 91
    .line 92
    iput v4, v0, Lcom/google/android/recaptcha/internal/zzaf;->zzc:I

    .line 93
    .line 94
    invoke-virtual {p0, v0}, Lcom/google/android/recaptcha/internal/zzan;->zze(Ljv1;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    if-ne p2, v6, :cond_6

    .line 99
    .line 100
    goto :goto_4

    .line 101
    :cond_6
    move-object v7, p1

    .line 102
    move-object p1, p0

    .line 103
    move-object p0, v7

    .line 104
    :goto_2
    iput-object v2, v0, Lcom/google/android/recaptcha/internal/zzaf;->zzd:Lcom/google/android/recaptcha/internal/zzan;

    .line 105
    .line 106
    iput-object v2, v0, Lcom/google/android/recaptcha/internal/zzaf;->zze:Ljava/lang/String;

    .line 107
    .line 108
    iput v3, v0, Lcom/google/android/recaptcha/internal/zzaf;->zzc:I

    .line 109
    .line 110
    invoke-direct {p1, p0, v0}, Lcom/google/android/recaptcha/internal/zzan;->zzj(Ljava/lang/String;Ljv1;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    if-eq p2, v6, :cond_7

    .line 115
    .line 116
    :goto_3
    check-cast p2, Ljava/lang/String;

    .line 117
    .line 118
    return-object p2

    .line 119
    :cond_7
    :goto_4
    return-object v6
.end method

.method public final zzd(JLjv1;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/google/android/recaptcha/internal/zzan;->zzf:J

    .line 2
    .line 3
    sget-object p0, Lbe8;->a:Lbe8;

    .line 4
    .line 5
    return-object p0
.end method

.method public final zze(Ljv1;)Ljava/lang/Object;
    .locals 13

    .line 1
    instance-of v0, p1, Lcom/google/android/recaptcha/internal/zzak;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/google/android/recaptcha/internal/zzak;

    .line 7
    .line 8
    iget v1, v0, Lcom/google/android/recaptcha/internal/zzak;->zzd:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/google/android/recaptcha/internal/zzak;->zzd:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/google/android/recaptcha/internal/zzak;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcom/google/android/recaptcha/internal/zzak;-><init>(Lcom/google/android/recaptcha/internal/zzan;Ljv1;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lcom/google/android/recaptcha/internal/zzak;->zzb:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lcom/google/android/recaptcha/internal/zzak;->zzd:I

    .line 28
    .line 29
    sget-object v2, Lbe8;->a:Lbe8;

    .line 30
    .line 31
    const/4 v3, 0x2

    .line 32
    const/4 v4, 0x1

    .line 33
    const/4 v5, 0x0

    .line 34
    sget-object v6, Lyx1;->a:Lyx1;

    .line 35
    .line 36
    if-eqz v1, :cond_3

    .line 37
    .line 38
    if-eq v1, v4, :cond_2

    .line 39
    .line 40
    if-ne v1, v3, :cond_1

    .line 41
    .line 42
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    return-object v2

    .line 46
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 47
    .line 48
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-object v5

    .line 52
    :cond_2
    iget-object p0, v0, Lcom/google/android/recaptcha/internal/zzak;->zza:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast p0, Lkj5;

    .line 55
    .line 56
    iget-object v1, v0, Lcom/google/android/recaptcha/internal/zzak;->zze:Lcom/google/android/recaptcha/internal/zzan;

    .line 57
    .line 58
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    move-object p1, p0

    .line 62
    move-object p0, v1

    .line 63
    goto :goto_1

    .line 64
    :cond_3
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lcom/google/android/recaptcha/internal/zzan;->zzg:Lkj5;

    .line 68
    .line 69
    iput-object p0, v0, Lcom/google/android/recaptcha/internal/zzak;->zze:Lcom/google/android/recaptcha/internal/zzan;

    .line 70
    .line 71
    iput-object p1, v0, Lcom/google/android/recaptcha/internal/zzak;->zza:Ljava/lang/Object;

    .line 72
    .line 73
    iput v4, v0, Lcom/google/android/recaptcha/internal/zzak;->zzd:I

    .line 74
    .line 75
    invoke-interface {p1, v0}, Lkj5;->a(Lkv1;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    if-eq v1, v6, :cond_7

    .line 80
    .line 81
    :goto_1
    :try_start_0
    iget-object v1, p0, Lcom/google/android/recaptcha/internal/zzan;->zze:Lcom/google/android/recaptcha/internal/zzao;

    .line 82
    .line 83
    sget-object v7, Lcom/google/android/recaptcha/internal/zzao;->zza:Lcom/google/android/recaptcha/internal/zzao;

    .line 84
    .line 85
    invoke-static {v1, v7}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    if-nez v1, :cond_4

    .line 90
    .line 91
    invoke-interface {p1, v5}, Lkj5;->b(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    return-object v2

    .line 95
    :cond_4
    :try_start_1
    sget-object v1, Lcom/google/android/recaptcha/internal/zzao;->zzb:Lcom/google/android/recaptcha/internal/zzao;

    .line 96
    .line 97
    iput-object v1, p0, Lcom/google/android/recaptcha/internal/zzan;->zze:Lcom/google/android/recaptcha/internal/zzao;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    .line 99
    invoke-interface {p1, v5}, Lkj5;->b(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    iget-object p1, p0, Lcom/google/android/recaptcha/internal/zzan;->zzc:Lcom/google/android/recaptcha/internal/zzek;

    .line 103
    .line 104
    invoke-virtual {p1}, Lcom/google/android/recaptcha/internal/zzek;->zzd()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {p1, v1}, Lcom/google/android/recaptcha/internal/zzek;->zzc(Ljava/lang/String;)Lcom/google/android/recaptcha/internal/zzek;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, v3}, Lcom/google/android/recaptcha/internal/zzek;->zzb(I)Lcom/google/android/recaptcha/internal/zzek;

    .line 112
    .line 113
    .line 114
    const/16 v1, 0x26

    .line 115
    .line 116
    invoke-virtual {p1, v1}, Lcom/google/android/recaptcha/internal/zzek;->zzf(I)Lcom/google/android/recaptcha/internal/zzen;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-static {}, Lly8;->a()Lbn1;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    iput-object v1, p0, Lcom/google/android/recaptcha/internal/zzan;->zza:Lan1;

    .line 125
    .line 126
    iget-object v1, p0, Lcom/google/android/recaptcha/internal/zzan;->zzb:Lxx1;

    .line 127
    .line 128
    new-instance v7, Lcom/google/android/recaptcha/internal/zzam;

    .line 129
    .line 130
    invoke-direct {v7, p0, p1, v5}, Lcom/google/android/recaptcha/internal/zzam;-><init>(Lcom/google/android/recaptcha/internal/zzan;Lcom/google/android/recaptcha/internal/zzen;Ljv1;)V

    .line 131
    .line 132
    .line 133
    const/4 p1, 0x3

    .line 134
    invoke-static {v1, v5, v7, p1}, Ll73;->v(Lxx1;Lox1;Lqt3;I)Lbl7;

    .line 135
    .line 136
    .line 137
    iput-object v5, v0, Lcom/google/android/recaptcha/internal/zzak;->zze:Lcom/google/android/recaptcha/internal/zzan;

    .line 138
    .line 139
    iput-object v5, v0, Lcom/google/android/recaptcha/internal/zzak;->zza:Ljava/lang/Object;

    .line 140
    .line 141
    iput v3, v0, Lcom/google/android/recaptcha/internal/zzak;->zzd:I

    .line 142
    .line 143
    iget-boolean p1, p0, Lcom/google/android/recaptcha/internal/zzan;->zzh:Z

    .line 144
    .line 145
    if-nez p1, :cond_5

    .line 146
    .line 147
    new-instance v7, Ljava/util/Timer;

    .line 148
    .line 149
    invoke-direct {v7}, Ljava/util/Timer;-><init>()V

    .line 150
    .line 151
    .line 152
    new-instance v8, Lcom/google/android/recaptcha/internal/zzai;

    .line 153
    .line 154
    invoke-direct {v8, p0}, Lcom/google/android/recaptcha/internal/zzai;-><init>(Lcom/google/android/recaptcha/internal/zzan;)V

    .line 155
    .line 156
    .line 157
    const-wide/32 v9, 0x1b77400

    .line 158
    .line 159
    .line 160
    move-wide v11, v9

    .line 161
    invoke-virtual/range {v7 .. v12}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 162
    .line 163
    .line 164
    iput-boolean v4, p0, Lcom/google/android/recaptcha/internal/zzan;->zzh:Z

    .line 165
    .line 166
    :cond_5
    if-ne v2, v6, :cond_6

    .line 167
    .line 168
    goto :goto_2

    .line 169
    :cond_6
    return-object v2

    .line 170
    :catchall_0
    move-exception v0

    .line 171
    move-object p0, v0

    .line 172
    invoke-interface {p1, v5}, Lkj5;->b(Ljava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    throw p0

    .line 176
    :cond_7
    :goto_2
    return-object v6
.end method

.method public final zzf()Lan1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/recaptcha/internal/zzan;->zza:Lan1;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const/4 p0, 0x0

    .line 7
    return-object p0
.end method
