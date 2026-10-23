.class public final Lcom/google/android/recaptcha/internal/zzfj;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private final zza:Los4;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget v0, Lcom/google/android/recaptcha/internal/zzav;->zza:I

    .line 5
    .line 6
    sget-object v0, Lcom/google/android/recaptcha/internal/zzfi;->zza:Lcom/google/android/recaptcha/internal/zzfi;

    .line 7
    .line 8
    invoke-static {v0}, Ljd4;->y(Lbt3;)Lgv7;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/google/android/recaptcha/internal/zzfj;->zza:Los4;

    .line 13
    .line 14
    return-void
.end method

.method public static final synthetic zza(Lcom/google/android/recaptcha/internal/zzfj;)Lcom/google/android/recaptcha/internal/zzex;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/recaptcha/internal/zzfj;->zza:Los4;

    .line 2
    .line 3
    invoke-interface {p0}, Los4;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/android/recaptcha/internal/zzex;

    .line 8
    .line 9
    return-object p0
.end method

.method public static zzc(Lcom/google/android/recaptcha/internal/zzfj;Lcom/google/android/recaptcha/internal/zzbr;Lcom/google/android/recaptcha/internal/zzsp;Ljv1;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p3, Lcom/google/android/recaptcha/internal/zzfg;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lcom/google/android/recaptcha/internal/zzfg;

    .line 7
    .line 8
    iget v1, v0, Lcom/google/android/recaptcha/internal/zzfg;->zzc:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/google/android/recaptcha/internal/zzfg;->zzc:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/google/android/recaptcha/internal/zzfg;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Lcom/google/android/recaptcha/internal/zzfg;-><init>(Lcom/google/android/recaptcha/internal/zzfj;Ljv1;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Lcom/google/android/recaptcha/internal/zzfg;->zza:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lcom/google/android/recaptcha/internal/zzfg;->zzc:I

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v3, 0x1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    if-ne v1, v3, :cond_1

    .line 34
    .line 35
    invoke-static {p3}, Llg7;->H(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    return-object p3

    .line 39
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 40
    .line 41
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-object v2

    .line 45
    :cond_2
    invoke-static {p3}, Llg7;->H(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    new-instance p3, Lcom/google/android/recaptcha/internal/zzfh;

    .line 49
    .line 50
    invoke-direct {p3, p0, p1, p2, v2}, Lcom/google/android/recaptcha/internal/zzfh;-><init>(Lcom/google/android/recaptcha/internal/zzfj;Lcom/google/android/recaptcha/internal/zzbr;Lcom/google/android/recaptcha/internal/zzsp;Ljv1;)V

    .line 51
    .line 52
    .line 53
    iput v3, v0, Lcom/google/android/recaptcha/internal/zzfg;->zzc:I

    .line 54
    .line 55
    invoke-static {p3, v0}, Ll73;->k(Lqt3;Ljv1;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    sget-object p1, Lyx1;->a:Lyx1;

    .line 60
    .line 61
    if-ne p0, p1, :cond_3

    .line 62
    .line 63
    return-object p1

    .line 64
    :cond_3
    return-object p0
.end method


# virtual methods
.method public final zzb(Lcom/google/android/recaptcha/internal/zzbr;Lcom/google/android/recaptcha/internal/zzsp;Ljv1;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/recaptcha/internal/zzfj;->zzc(Lcom/google/android/recaptcha/internal/zzfj;Lcom/google/android/recaptcha/internal/zzbr;Lcom/google/android/recaptcha/internal/zzsp;Ljv1;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
