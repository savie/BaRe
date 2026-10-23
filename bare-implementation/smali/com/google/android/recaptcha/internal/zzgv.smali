.class public final Lcom/google/android/recaptcha/internal/zzgv;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/google/android/recaptcha/internal/zzgx;


# static fields
.field public static final zza:Lcom/google/android/recaptcha/internal/zzgv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/recaptcha/internal/zzgv;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/recaptcha/internal/zzgv;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/recaptcha/internal/zzgv;->zza:Lcom/google/android/recaptcha/internal/zzgv;

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
    if-ne p0, v0, :cond_7

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
    invoke-static {p0}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    const/4 v4, 0x1

    .line 23
    if-eq v4, v3, :cond_0

    .line 24
    .line 25
    move-object p0, v2

    .line 26
    :cond_0
    const/4 v3, 0x5

    .line 27
    if-eqz p0, :cond_6

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
    instance-of v5, p3, Ljava/lang/Integer;

    .line 40
    .line 41
    if-eq v4, v5, :cond_1

    .line 42
    .line 43
    move-object p3, v2

    .line 44
    :cond_1
    check-cast p3, Ljava/lang/Integer;

    .line 45
    .line 46
    if-eqz p3, :cond_5

    .line 47
    .line 48
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    .line 49
    .line 50
    .line 51
    move-result p3

    .line 52
    :try_start_0
    instance-of v4, p0, Ljava/lang/Integer;

    .line 53
    .line 54
    if-eqz v4, :cond_2

    .line 55
    .line 56
    check-cast p0, Ljava/lang/Number;

    .line 57
    .line 58
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    div-int/2addr p0, p3

    .line 63
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    goto :goto_1

    .line 68
    :catch_0
    move-exception p0

    .line 69
    goto :goto_2

    .line 70
    :cond_2
    instance-of v4, p0, [I

    .line 71
    .line 72
    if-eqz v4, :cond_4

    .line 73
    .line 74
    check-cast p0, [I

    .line 75
    .line 76
    new-instance v2, Ljava/util/ArrayList;

    .line 77
    .line 78
    array-length v3, p0

    .line 79
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 80
    .line 81
    .line 82
    move v4, v0

    .line 83
    :goto_0
    if-ge v4, v3, :cond_3

    .line 84
    .line 85
    aget v5, p0, v4

    .line 86
    .line 87
    div-int/2addr v5, p3

    .line 88
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    add-int/lit8 v4, v4, 0x1

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_3
    new-array p0, v0, [Ljava/lang/Integer;

    .line 99
    .line 100
    invoke-interface {v2, p0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    :goto_1
    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzgd;->zzc()Lcom/google/android/recaptcha/internal/zzge;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    invoke-virtual {p2, p1, p0}, Lcom/google/android/recaptcha/internal/zzge;->zze(ILjava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    return-void

    .line 112
    :cond_4
    new-instance p0, Lcom/google/android/recaptcha/internal/zzce;

    .line 113
    .line 114
    invoke-direct {p0, v1, v3, v2}, Lcom/google/android/recaptcha/internal/zzce;-><init>(IILjava/lang/Throwable;)V

    .line 115
    .line 116
    .line 117
    throw p0
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :goto_2
    const/4 p1, 0x6

    .line 119
    invoke-static {v1, p1, p0}, Lg84;->d(IILjava/lang/Throwable;)V

    .line 120
    .line 121
    .line 122
    return-void

    .line 123
    :cond_5
    invoke-static {v1, v3, v2}, Lg84;->d(IILjava/lang/Throwable;)V

    .line 124
    .line 125
    .line 126
    return-void

    .line 127
    :cond_6
    invoke-static {v1, v3, v2}, Lg84;->d(IILjava/lang/Throwable;)V

    .line 128
    .line 129
    .line 130
    return-void

    .line 131
    :cond_7
    const/4 p0, 0x3

    .line 132
    invoke-static {v1, p0, v2}, Lg84;->d(IILjava/lang/Throwable;)V

    .line 133
    .line 134
    .line 135
    return-void
.end method
