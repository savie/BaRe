.class public final Lcom/google/android/recaptcha/internal/zzhr;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/google/android/recaptcha/internal/zzgx;


# static fields
.field public static final zza:Lcom/google/android/recaptcha/internal/zzhr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/recaptcha/internal/zzhr;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/recaptcha/internal/zzhr;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/recaptcha/internal/zzhr;->zza:Lcom/google/android/recaptcha/internal/zzhr;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final varargs zza(ILcom/google/android/recaptcha/internal/zzgd;[Lcom/google/android/recaptcha/internal/zzue;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/recaptcha/internal/zzce;
        }
    .end annotation

    .line 1
    array-length p0, p3

    .line 2
    const/4 v0, 0x2

    .line 3
    const/4 v1, 0x4

    .line 4
    const/4 v2, 0x0

    .line 5
    if-ne p0, v0, :cond_5

    .line 6
    .line 7
    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzgd;->zzc()Lcom/google/android/recaptcha/internal/zzge;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const/4 v0, 0x0

    .line 12
    aget-object v3, p3, v0

    .line 13
    .line 14
    invoke-virtual {p0, v3}, Lcom/google/android/recaptcha/internal/zzge;->zza(Lcom/google/android/recaptcha/internal/zzue;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    instance-of v3, p0, [I

    .line 19
    .line 20
    const/4 v4, 0x1

    .line 21
    if-eq v4, v3, :cond_0

    .line 22
    .line 23
    move-object p0, v2

    .line 24
    :cond_0
    check-cast p0, [I

    .line 25
    .line 26
    const/4 v3, 0x5

    .line 27
    if-eqz p0, :cond_4

    .line 28
    .line 29
    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzgd;->zzc()Lcom/google/android/recaptcha/internal/zzge;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    aget-object p3, p3, v4

    .line 34
    .line 35
    invoke-virtual {v5, p3}, Lcom/google/android/recaptcha/internal/zzge;->zza(Lcom/google/android/recaptcha/internal/zzue;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p3

    .line 39
    instance-of v5, p3, Ljava/lang/String;

    .line 40
    .line 41
    if-eq v4, v5, :cond_1

    .line 42
    .line 43
    move-object p3, v2

    .line 44
    :cond_1
    check-cast p3, Ljava/lang/String;

    .line 45
    .line 46
    if-eqz p3, :cond_3

    .line 47
    .line 48
    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzgd;->zzc()Lcom/google/android/recaptcha/internal/zzge;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    :try_start_0
    array-length v3, p0

    .line 58
    :goto_0
    if-ge v0, v3, :cond_2

    .line 59
    .line 60
    aget v4, p0, v0

    .line 61
    .line 62
    invoke-virtual {p3, v4}, Ljava/lang/String;->charAt(I)C

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .line 68
    .line 69
    add-int/lit8 v0, v0, 0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :catch_0
    move-exception p0

    .line 73
    goto :goto_1

    .line 74
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-virtual {p2, p1, p0}, Lcom/google/android/recaptcha/internal/zzge;->zze(ILjava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :goto_1
    const/16 p1, 0x16

    .line 83
    .line 84
    invoke-static {v1, p1, p0}, Lg84;->d(IILjava/lang/Throwable;)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_3
    invoke-static {v1, v3, v2}, Lg84;->d(IILjava/lang/Throwable;)V

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :cond_4
    invoke-static {v1, v3, v2}, Lg84;->d(IILjava/lang/Throwable;)V

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :cond_5
    const/4 p0, 0x3

    .line 97
    invoke-static {v1, p0, v2}, Lg84;->d(IILjava/lang/Throwable;)V

    .line 98
    .line 99
    .line 100
    return-void
.end method
