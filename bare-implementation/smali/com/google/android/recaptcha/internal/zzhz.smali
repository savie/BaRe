.class public final Lcom/google/android/recaptcha/internal/zzhz;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/google/android/recaptcha/internal/zzhx;


# instance fields
.field private final zza:Lcom/google/android/recaptcha/internal/zzhy;


# direct methods
.method public constructor <init>(Lcom/google/android/recaptcha/internal/zzhy;Lcom/google/android/recaptcha/internal/zzhw;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/recaptcha/internal/zzhz;->zza:Lcom/google/android/recaptcha/internal/zzhy;

    .line 5
    .line 6
    return-void
.end method

.method private final zzb(Ljava/lang/String;Ljava/util/List;)Lcom/google/android/recaptcha/internal/zztz;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/recaptcha/internal/zzce;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x3

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    :try_start_0
    iget-object p0, p0, Lcom/google/android/recaptcha/internal/zzhz;->zza:Lcom/google/android/recaptcha/internal/zzhy;

    .line 10
    .line 11
    invoke-static {p2}, Lel1;->w1(Ljava/util/List;)[J

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-virtual {p0, p2}, Lcom/google/android/recaptcha/internal/zzhy;->zza([J)J

    .line 16
    .line 17
    .line 18
    move-result-wide v4

    .line 19
    new-instance v3, Lcom/google/android/recaptcha/internal/zzhv;

    .line 20
    .line 21
    invoke-static {}, Lcom/google/android/recaptcha/internal/zzhv;->zzb()Lcom/google/android/recaptcha/internal/zzhu;

    .line 22
    .line 23
    .line 24
    move-result-object v8

    .line 25
    const-wide/16 v6, 0xff

    .line 26
    .line 27
    invoke-direct/range {v3 .. v8}, Lcom/google/android/recaptcha/internal/zzhv;-><init>(JJLcom/google/android/recaptcha/internal/zzhu;)V

    .line 28
    .line 29
    .line 30
    new-instance p0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 37
    .line 38
    .line 39
    const/4 p2, 0x0

    .line 40
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-ge p2, v0, :cond_0

    .line 45
    .line 46
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    invoke-virtual {v3}, Lcom/google/android/recaptcha/internal/zzhv;->zza()J

    .line 51
    .line 52
    .line 53
    move-result-wide v4

    .line 54
    long-to-int v4, v4

    .line 55
    xor-int/2addr v0, v4

    .line 56
    int-to-char v0, v0

    .line 57
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    add-int/lit8 p2, p2, 0x1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    move-object p0, v0

    .line 65
    goto :goto_1

    .line 66
    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-static {}, Lcom/google/android/recaptcha/internal/zzkh;->zzh()Lcom/google/android/recaptcha/internal/zzkh;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p1, p0}, Lcom/google/android/recaptcha/internal/zzkh;->zzj(Ljava/lang/CharSequence;)[B

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-static {p0}, Lcom/google/android/recaptcha/internal/zztz;->zzg([B)Lcom/google/android/recaptcha/internal/zztz;

    .line 79
    .line 80
    .line 81
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    return-object p0

    .line 83
    :goto_1
    const/16 p1, 0x12

    .line 84
    .line 85
    invoke-static {v2, p1, p0}, Lg84;->d(IILjava/lang/Throwable;)V

    .line 86
    .line 87
    .line 88
    return-object v1

    .line 89
    :cond_1
    const/16 p0, 0x11

    .line 90
    .line 91
    invoke-static {v2, p0, v1}, Lg84;->d(IILjava/lang/Throwable;)V

    .line 92
    .line 93
    .line 94
    return-object v1
.end method


# virtual methods
.method public final zza(Lcom/google/android/recaptcha/internal/zzub;)Lcom/google/android/recaptcha/internal/zztz;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/recaptcha/internal/zzce;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/recaptcha/internal/zzjh;->zzb()Lcom/google/android/recaptcha/internal/zzjh;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/google/android/recaptcha/internal/zzub;->zzj()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p1}, Lcom/google/android/recaptcha/internal/zzub;->zzk()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-direct {p0, v1, p1}, Lcom/google/android/recaptcha/internal/zzhz;->zzb(Ljava/lang/String;Ljava/util/List;)Lcom/google/android/recaptcha/internal/zztz;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {v0}, Lcom/google/android/recaptcha/internal/zzjh;->zzf()Lcom/google/android/recaptcha/internal/zzjh;

    .line 18
    .line 19
    .line 20
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Lcom/google/android/recaptcha/internal/zzjh;->zza(Ljava/util/concurrent/TimeUnit;)J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    sget p1, Lcom/google/android/recaptcha/internal/zzbk;->zza:I

    .line 27
    .line 28
    sget-object p1, Lcom/google/android/recaptcha/internal/zzbl;->zzh:Lcom/google/android/recaptcha/internal/zzbl;

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/google/android/recaptcha/internal/zzbl;->zza()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    invoke-static {p1, v0, v1}, Lcom/google/android/recaptcha/internal/zzbk;->zza(IJ)V

    .line 35
    .line 36
    .line 37
    return-object p0
.end method
