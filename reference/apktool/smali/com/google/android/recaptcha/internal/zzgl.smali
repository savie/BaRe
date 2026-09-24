.class public final Lcom/google/android/recaptcha/internal/zzgl;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/google/android/recaptcha/internal/zzgx;


# static fields
.field public static final zza:Lcom/google/android/recaptcha/internal/zzgl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/recaptcha/internal/zzgl;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/recaptcha/internal/zzgl;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/recaptcha/internal/zzgl;->zza:Lcom/google/android/recaptcha/internal/zzgl;

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
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/recaptcha/internal/zzce;
        }
    .end annotation

    .line 1
    array-length p0, p3

    .line 2
    const/4 p1, 0x2

    .line 3
    const/4 v0, 0x4

    .line 4
    const/4 v1, 0x0

    .line 5
    if-ne p0, p1, :cond_5

    .line 6
    .line 7
    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzgd;->zzc()Lcom/google/android/recaptcha/internal/zzge;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const/4 p1, 0x0

    .line 12
    aget-object p1, p3, p1

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/google/android/recaptcha/internal/zzge;->zza(Lcom/google/android/recaptcha/internal/zzue;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    instance-of p1, p0, Ljava/lang/String;

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    if-eq v2, p1, :cond_0

    .line 22
    .line 23
    move-object p0, v1

    .line 24
    :cond_0
    check-cast p0, Ljava/lang/String;

    .line 25
    .line 26
    if-eqz p0, :cond_4

    .line 27
    .line 28
    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzgd;->zzc()Lcom/google/android/recaptcha/internal/zzge;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    aget-object p3, p3, v2

    .line 33
    .line 34
    invoke-virtual {p1, p3}, Lcom/google/android/recaptcha/internal/zzge;->zza(Lcom/google/android/recaptcha/internal/zzue;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    if-eqz p1, :cond_3

    .line 39
    .line 40
    instance-of p3, p1, Ljava/lang/Integer;

    .line 41
    .line 42
    if-nez p3, :cond_2

    .line 43
    .line 44
    instance-of p3, p1, Ljava/lang/Short;

    .line 45
    .line 46
    if-nez p3, :cond_2

    .line 47
    .line 48
    instance-of p3, p1, Ljava/lang/Byte;

    .line 49
    .line 50
    if-nez p3, :cond_2

    .line 51
    .line 52
    instance-of p3, p1, Ljava/lang/Long;

    .line 53
    .line 54
    if-nez p3, :cond_2

    .line 55
    .line 56
    instance-of p3, p1, Ljava/lang/Double;

    .line 57
    .line 58
    if-nez p3, :cond_2

    .line 59
    .line 60
    instance-of p3, p1, Ljava/lang/Float;

    .line 61
    .line 62
    if-nez p3, :cond_2

    .line 63
    .line 64
    instance-of p3, p1, Ljava/lang/Boolean;

    .line 65
    .line 66
    if-nez p3, :cond_2

    .line 67
    .line 68
    instance-of p3, p1, Ljava/lang/Character;

    .line 69
    .line 70
    if-nez p3, :cond_2

    .line 71
    .line 72
    instance-of p3, p1, Ljava/lang/String;

    .line 73
    .line 74
    if-eqz p3, :cond_1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_1
    const/4 p0, 0x7

    .line 78
    invoke-static {v0, p0, v1}, Lg84;->d(IILjava/lang/Throwable;)V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :cond_2
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzgd;->zzi()Lcom/google/android/recaptcha/internal/zzfw;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    filled-new-array {p1}, [Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {p2, p0, p1}, Lcom/google/android/recaptcha/internal/zzfw;->zzb(Ljava/lang/String;[Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :cond_3
    new-instance p0, Lcom/google/android/recaptcha/internal/zzce;

    .line 99
    .line 100
    invoke-direct {p0, v0, v0, v1}, Lcom/google/android/recaptcha/internal/zzce;-><init>(IILjava/lang/Throwable;)V

    .line 101
    .line 102
    .line 103
    throw p0

    .line 104
    :cond_4
    const/4 p0, 0x5

    .line 105
    invoke-static {v0, p0, v1}, Lg84;->d(IILjava/lang/Throwable;)V

    .line 106
    .line 107
    .line 108
    return-void

    .line 109
    :cond_5
    const/4 p0, 0x3

    .line 110
    invoke-static {v0, p0, v1}, Lg84;->d(IILjava/lang/Throwable;)V

    .line 111
    .line 112
    .line 113
    return-void
.end method
