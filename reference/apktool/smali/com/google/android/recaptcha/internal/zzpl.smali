.class abstract Lcom/google/android/recaptcha/internal/zzpl;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field private static volatile zza:I = 0x64


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public abstract zza(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract zzb()Ljava/lang/Object;
.end method

.method public abstract zzc(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract zzd(Ljava/lang/Object;II)V
.end method

.method public abstract zze(Ljava/lang/Object;IJ)V
.end method

.method public abstract zzf(Ljava/lang/Object;ILjava/lang/Object;)V
.end method

.method public abstract zzg(Ljava/lang/Object;ILcom/google/android/recaptcha/internal/zzle;)V
.end method

.method public abstract zzh(Ljava/lang/Object;IJ)V
.end method

.method public abstract zzi(Ljava/lang/Object;)V
.end method

.method public abstract zzj(Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public final zzk(Ljava/lang/Object;Lcom/google/android/recaptcha/internal/zzov;I)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Lcom/google/android/recaptcha/internal/zzov;->zzd()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    ushr-int/lit8 v1, v0, 0x3

    .line 6
    .line 7
    and-int/lit8 v0, v0, 0x7

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-eqz v0, :cond_9

    .line 11
    .line 12
    if-eq v0, v2, :cond_8

    .line 13
    .line 14
    const/4 v3, 0x2

    .line 15
    if-eq v0, v3, :cond_7

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    const/4 v4, 0x4

    .line 19
    const/4 v5, 0x3

    .line 20
    if-eq v0, v5, :cond_2

    .line 21
    .line 22
    if-eq v0, v4, :cond_1

    .line 23
    .line 24
    const/4 p3, 0x5

    .line 25
    if-ne v0, p3, :cond_0

    .line 26
    .line 27
    invoke-interface {p2}, Lcom/google/android/recaptcha/internal/zzov;->zzf()I

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    invoke-virtual {p0, p1, v1, p2}, Lcom/google/android/recaptcha/internal/zzpl;->zzd(Ljava/lang/Object;II)V

    .line 32
    .line 33
    .line 34
    return v2

    .line 35
    :cond_0
    invoke-static {}, Lc6;->i()V

    .line 36
    .line 37
    .line 38
    :cond_1
    return v3

    .line 39
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/recaptcha/internal/zzpl;->zzb()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    shl-int/lit8 v5, v1, 0x3

    .line 44
    .line 45
    add-int/2addr p3, v2

    .line 46
    sget v6, Lcom/google/android/recaptcha/internal/zzpl;->zza:I

    .line 47
    .line 48
    if-ge p3, v6, :cond_6

    .line 49
    .line 50
    :cond_3
    invoke-interface {p2}, Lcom/google/android/recaptcha/internal/zzov;->zzc()I

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    const v7, 0x7fffffff

    .line 55
    .line 56
    .line 57
    if-eq v6, v7, :cond_4

    .line 58
    .line 59
    invoke-virtual {p0, v0, p2, p3}, Lcom/google/android/recaptcha/internal/zzpl;->zzk(Ljava/lang/Object;Lcom/google/android/recaptcha/internal/zzov;I)Z

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    if-nez v6, :cond_3

    .line 64
    .line 65
    :cond_4
    or-int/lit8 p3, v5, 0x4

    .line 66
    .line 67
    invoke-interface {p2}, Lcom/google/android/recaptcha/internal/zzov;->zzd()I

    .line 68
    .line 69
    .line 70
    move-result p2

    .line 71
    if-ne p3, p2, :cond_5

    .line 72
    .line 73
    invoke-virtual {p0, v0}, Lcom/google/android/recaptcha/internal/zzpl;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    invoke-virtual {p0, p1, v1, p2}, Lcom/google/android/recaptcha/internal/zzpl;->zzf(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    return v2

    .line 81
    :cond_5
    const-string p0, "Protocol message end-group tag did not match expected tag."

    .line 82
    .line 83
    invoke-static {p0}, Lm0;->k(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    return v3

    .line 87
    :cond_6
    const-string p0, "Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit."

    .line 88
    .line 89
    invoke-static {p0}, Lm0;->k(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    return v3

    .line 93
    :cond_7
    invoke-interface {p2}, Lcom/google/android/recaptcha/internal/zzov;->zzp()Lcom/google/android/recaptcha/internal/zzle;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    invoke-virtual {p0, p1, v1, p2}, Lcom/google/android/recaptcha/internal/zzpl;->zzg(Ljava/lang/Object;ILcom/google/android/recaptcha/internal/zzle;)V

    .line 98
    .line 99
    .line 100
    return v2

    .line 101
    :cond_8
    invoke-interface {p2}, Lcom/google/android/recaptcha/internal/zzov;->zzk()J

    .line 102
    .line 103
    .line 104
    move-result-wide p2

    .line 105
    invoke-virtual {p0, p1, v1, p2, p3}, Lcom/google/android/recaptcha/internal/zzpl;->zze(Ljava/lang/Object;IJ)V

    .line 106
    .line 107
    .line 108
    return v2

    .line 109
    :cond_9
    invoke-interface {p2}, Lcom/google/android/recaptcha/internal/zzov;->zzl()J

    .line 110
    .line 111
    .line 112
    move-result-wide p2

    .line 113
    invoke-virtual {p0, p1, v1, p2, p3}, Lcom/google/android/recaptcha/internal/zzpl;->zzh(Ljava/lang/Object;IJ)V

    .line 114
    .line 115
    .line 116
    return v2
.end method
