.class public final Lcom/google/android/recaptcha/internal/zzha;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/google/android/recaptcha/internal/zzgx;


# static fields
.field public static final zza:Lcom/google/android/recaptcha/internal/zzha;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/recaptcha/internal/zzha;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/recaptcha/internal/zzha;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/recaptcha/internal/zzha;->zza:Lcom/google/android/recaptcha/internal/zzha;

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
    const/4 v0, 0x4

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p0, :cond_2

    .line 5
    .line 6
    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzgd;->zzc()Lcom/google/android/recaptcha/internal/zzge;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    const/4 v3, 0x0

    .line 11
    aget-object v3, p3, v3

    .line 12
    .line 13
    invoke-virtual {v2, v3}, Lcom/google/android/recaptcha/internal/zzge;->zza(Lcom/google/android/recaptcha/internal/zzue;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    instance-of v3, v2, Ljava/lang/Class;

    .line 18
    .line 19
    const/4 v4, 0x1

    .line 20
    if-eq v4, v3, :cond_0

    .line 21
    .line 22
    move-object v2, v1

    .line 23
    :cond_0
    check-cast v2, Ljava/lang/Class;

    .line 24
    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzgd;->zzc()Lcom/google/android/recaptcha/internal/zzge;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {p3}, Lx50;->z0([Ljava/lang/Object;)Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object p3

    .line 35
    invoke-interface {p3, v4, p0}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {v0, p0}, Lcom/google/android/recaptcha/internal/zzge;->zzf(Ljava/util/List;)[Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    :try_start_0
    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzgd;->zzc()Lcom/google/android/recaptcha/internal/zzge;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    array-length p3, p0

    .line 48
    invoke-static {p0, p3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    check-cast p0, [Ljava/lang/Class;

    .line 53
    .line 54
    invoke-virtual {v2, p0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-virtual {p2, p1, p0}, Lcom/google/android/recaptcha/internal/zzge;->zze(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :catch_0
    move-exception p0

    .line 63
    const/4 p1, 0x6

    .line 64
    const/16 p2, 0x9

    .line 65
    .line 66
    invoke-static {p1, p2, p0}, Lg84;->d(IILjava/lang/Throwable;)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_1
    const/4 p0, 0x5

    .line 71
    invoke-static {v0, p0, v1}, Lg84;->d(IILjava/lang/Throwable;)V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :cond_2
    const/4 p0, 0x3

    .line 76
    invoke-static {v0, p0, v1}, Lg84;->d(IILjava/lang/Throwable;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method
