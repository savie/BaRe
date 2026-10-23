.class public final Lcom/google/android/recaptcha/internal/zzhf;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/google/android/recaptcha/internal/zzgx;


# static fields
.field public static final zza:Lcom/google/android/recaptcha/internal/zzhf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/recaptcha/internal/zzhf;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/recaptcha/internal/zzhf;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/recaptcha/internal/zzhf;->zza:Lcom/google/android/recaptcha/internal/zzhf;

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
    const/4 v0, 0x4

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x2

    .line 5
    if-lt p0, v2, :cond_2

    .line 6
    .line 7
    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzgd;->zzc()Lcom/google/android/recaptcha/internal/zzge;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    const/4 v4, 0x0

    .line 12
    aget-object v4, p3, v4

    .line 13
    .line 14
    invoke-virtual {v3, v4}, Lcom/google/android/recaptcha/internal/zzge;->zza(Lcom/google/android/recaptcha/internal/zzue;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    instance-of v4, v3, Ljava/lang/reflect/Method;

    .line 19
    .line 20
    const/4 v5, 0x1

    .line 21
    if-eq v5, v4, :cond_0

    .line 22
    .line 23
    move-object v3, v1

    .line 24
    :cond_0
    check-cast v3, Ljava/lang/reflect/Method;

    .line 25
    .line 26
    if-eqz v3, :cond_1

    .line 27
    .line 28
    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzgd;->zzc()Lcom/google/android/recaptcha/internal/zzge;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    aget-object v1, p3, v5

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/google/android/recaptcha/internal/zzge;->zza(Lcom/google/android/recaptcha/internal/zzue;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzgd;->zzc()Lcom/google/android/recaptcha/internal/zzge;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-static {p3}, Lx50;->z0([Ljava/lang/Object;)Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object p3

    .line 46
    invoke-interface {p3, v2, p0}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-virtual {v1, p0}, Lcom/google/android/recaptcha/internal/zzge;->zzg(Ljava/util/List;)[Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    :try_start_0
    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzgd;->zzc()Lcom/google/android/recaptcha/internal/zzge;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    array-length p3, p0

    .line 59
    invoke-static {p0, p3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {v3, v0, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-virtual {p2, p1, p0}, Lcom/google/android/recaptcha/internal/zzge;->zze(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :catch_0
    move-exception p0

    .line 72
    const/4 p1, 0x6

    .line 73
    const/16 p2, 0xf

    .line 74
    .line 75
    invoke-static {p1, p2, p0}, Lg84;->d(IILjava/lang/Throwable;)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :cond_1
    const/4 p0, 0x5

    .line 80
    invoke-static {v0, p0, v1}, Lg84;->d(IILjava/lang/Throwable;)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_2
    const/4 p0, 0x3

    .line 85
    invoke-static {v0, p0, v1}, Lg84;->d(IILjava/lang/Throwable;)V

    .line 86
    .line 87
    .line 88
    return-void
.end method
