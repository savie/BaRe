.class public final Lcom/google/android/recaptcha/internal/zzhn;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/google/android/recaptcha/internal/zzgx;


# static fields
.field public static final zza:Lcom/google/android/recaptcha/internal/zzhn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/recaptcha/internal/zzhn;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/recaptcha/internal/zzhn;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/recaptcha/internal/zzhn;->zza:Lcom/google/android/recaptcha/internal/zzhn;

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
    const/4 p1, 0x4

    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x3

    .line 5
    if-ne p0, v1, :cond_2

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
    instance-of v1, p0, Ljava/lang/reflect/Field;

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    if-eq v2, v1, :cond_0

    .line 22
    .line 23
    move-object p0, v0

    .line 24
    :cond_0
    check-cast p0, Ljava/lang/reflect/Field;

    .line 25
    .line 26
    if-eqz p0, :cond_1

    .line 27
    .line 28
    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzgd;->zzc()Lcom/google/android/recaptcha/internal/zzge;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    aget-object v0, p3, v2

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Lcom/google/android/recaptcha/internal/zzge;->zza(Lcom/google/android/recaptcha/internal/zzue;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzgd;->zzc()Lcom/google/android/recaptcha/internal/zzge;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    const/4 v0, 0x2

    .line 43
    aget-object p3, p3, v0

    .line 44
    .line 45
    invoke-virtual {p2, p3}, Lcom/google/android/recaptcha/internal/zzge;->zza(Lcom/google/android/recaptcha/internal/zzue;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :catch_0
    move-exception p0

    .line 54
    const/4 p1, 0x6

    .line 55
    const/16 p2, 0xb

    .line 56
    .line 57
    invoke-static {p1, p2, p0}, Lg84;->d(IILjava/lang/Throwable;)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_1
    const/4 p0, 0x5

    .line 62
    invoke-static {p1, p0, v0}, Lg84;->d(IILjava/lang/Throwable;)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :cond_2
    invoke-static {p1, v1, v0}, Lg84;->d(IILjava/lang/Throwable;)V

    .line 67
    .line 68
    .line 69
    return-void
.end method
