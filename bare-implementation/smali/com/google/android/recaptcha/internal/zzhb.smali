.class public final Lcom/google/android/recaptcha/internal/zzhb;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/google/android/recaptcha/internal/zzgx;


# static fields
.field public static final zza:Lcom/google/android/recaptcha/internal/zzhb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/recaptcha/internal/zzhb;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/recaptcha/internal/zzhb;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/recaptcha/internal/zzhb;->zza:Lcom/google/android/recaptcha/internal/zzhb;

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
    aget-object v0, p3, v0

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/google/android/recaptcha/internal/zzge;->zza(Lcom/google/android/recaptcha/internal/zzue;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {p0}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v3, 0x1

    .line 23
    if-eq v3, v0, :cond_0

    .line 24
    .line 25
    move-object p0, v2

    .line 26
    :cond_0
    const/4 v0, 0x5

    .line 27
    if-eqz p0, :cond_4

    .line 28
    .line 29
    instance-of v4, p0, Ljava/lang/Class;

    .line 30
    .line 31
    if-eqz v4, :cond_1

    .line 32
    .line 33
    check-cast p0, Ljava/lang/Class;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    :goto_0
    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzgd;->zzc()Lcom/google/android/recaptcha/internal/zzge;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    aget-object p3, p3, v3

    .line 45
    .line 46
    invoke-virtual {v4, p3}, Lcom/google/android/recaptcha/internal/zzge;->zza(Lcom/google/android/recaptcha/internal/zzue;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p3

    .line 50
    instance-of v4, p3, Ljava/lang/String;

    .line 51
    .line 52
    if-eq v3, v4, :cond_2

    .line 53
    .line 54
    move-object p3, v2

    .line 55
    :cond_2
    check-cast p3, Ljava/lang/String;

    .line 56
    .line 57
    if-eqz p3, :cond_3

    .line 58
    .line 59
    :try_start_0
    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzgd;->zzc()Lcom/google/android/recaptcha/internal/zzge;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzgd;->zzh()Lcom/google/android/recaptcha/internal/zzcg;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    invoke-virtual {p2, p3}, Lcom/google/android/recaptcha/internal/zzcg;->zza(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    invoke-virtual {p0, p2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-virtual {v0, p1, p0}, Lcom/google/android/recaptcha/internal/zzge;->zze(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :catch_0
    move-exception p0

    .line 80
    const/4 p1, 0x6

    .line 81
    const/16 p2, 0xa

    .line 82
    .line 83
    invoke-static {p1, p2, p0}, Lg84;->d(IILjava/lang/Throwable;)V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :cond_3
    invoke-static {v1, v0, v2}, Lg84;->d(IILjava/lang/Throwable;)V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :cond_4
    invoke-static {v1, v0, v2}, Lg84;->d(IILjava/lang/Throwable;)V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :cond_5
    const/4 p0, 0x3

    .line 96
    invoke-static {v1, p0, v2}, Lg84;->d(IILjava/lang/Throwable;)V

    .line 97
    .line 98
    .line 99
    return-void
.end method
