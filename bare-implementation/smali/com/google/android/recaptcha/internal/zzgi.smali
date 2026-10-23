.class public final Lcom/google/android/recaptcha/internal/zzgi;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/google/android/recaptcha/internal/zzgx;


# static fields
.field public static final zza:Lcom/google/android/recaptcha/internal/zzgi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/recaptcha/internal/zzgi;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/recaptcha/internal/zzgi;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/recaptcha/internal/zzgi;->zza:Lcom/google/android/recaptcha/internal/zzgi;

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
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/recaptcha/internal/zzce;
        }
    .end annotation

    .line 1
    array-length p0, p3

    .line 2
    const/4 p1, 0x4

    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x3

    .line 5
    if-ne p0, v1, :cond_7

    .line 6
    .line 7
    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzgd;->zzc()Lcom/google/android/recaptcha/internal/zzge;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const/4 v1, 0x0

    .line 12
    aget-object v1, p3, v1

    .line 13
    .line 14
    invoke-virtual {p0, v1}, Lcom/google/android/recaptcha/internal/zzge;->zza(Lcom/google/android/recaptcha/internal/zzue;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {p0}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/4 v2, 0x1

    .line 23
    if-eq v2, v1, :cond_0

    .line 24
    .line 25
    move-object p0, v0

    .line 26
    :cond_0
    const/4 v1, 0x5

    .line 27
    if-eqz p0, :cond_6

    .line 28
    .line 29
    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzgd;->zzc()Lcom/google/android/recaptcha/internal/zzge;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    aget-object v4, p3, v2

    .line 34
    .line 35
    invoke-virtual {v3, v4}, Lcom/google/android/recaptcha/internal/zzge;->zza(Lcom/google/android/recaptcha/internal/zzue;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    instance-of v4, v3, Ljava/lang/Integer;

    .line 40
    .line 41
    if-eq v2, v4, :cond_1

    .line 42
    .line 43
    move-object v3, v0

    .line 44
    :cond_1
    check-cast v3, Ljava/lang/Integer;

    .line 45
    .line 46
    if-eqz v3, :cond_5

    .line 47
    .line 48
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzgd;->zzc()Lcom/google/android/recaptcha/internal/zzge;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    const/4 v4, 0x2

    .line 57
    aget-object p3, p3, v4

    .line 58
    .line 59
    invoke-virtual {p2, p3}, Lcom/google/android/recaptcha/internal/zzge;->zza(Lcom/google/android/recaptcha/internal/zzue;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    invoke-static {p2}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result p3

    .line 67
    if-eq v2, p3, :cond_2

    .line 68
    .line 69
    move-object p2, v0

    .line 70
    :cond_2
    if-eqz p2, :cond_4

    .line 71
    .line 72
    :try_start_0
    invoke-static {p0, v3, p2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :catch_0
    move-exception p0

    .line 77
    instance-of p2, p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 78
    .line 79
    if-eqz p2, :cond_3

    .line 80
    .line 81
    const/16 p2, 0x16

    .line 82
    .line 83
    invoke-static {p1, p2, p0}, Lg84;->d(IILjava/lang/Throwable;)V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :cond_3
    const/16 p2, 0x19

    .line 88
    .line 89
    invoke-static {p1, p2, p0}, Lg84;->d(IILjava/lang/Throwable;)V

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :cond_4
    invoke-static {p1, v1, v0}, Lg84;->d(IILjava/lang/Throwable;)V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :cond_5
    invoke-static {p1, v1, v0}, Lg84;->d(IILjava/lang/Throwable;)V

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :cond_6
    invoke-static {p1, v1, v0}, Lg84;->d(IILjava/lang/Throwable;)V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :cond_7
    invoke-static {p1, v1, v0}, Lg84;->d(IILjava/lang/Throwable;)V

    .line 106
    .line 107
    .line 108
    return-void
.end method
