.class public final Lnq9;
.super Ldr9;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final d:Lcq9;

.field public final e:Ljava/security/spec/ECPoint;

.field public final f:Ld2a;

.field public final k:Ld2a;

.field public final n:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lcq9;Ljava/security/spec/ECPoint;Ld2a;Ld2a;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnq9;->d:Lcq9;

    .line 5
    .line 6
    iput-object p2, p0, Lnq9;->e:Ljava/security/spec/ECPoint;

    .line 7
    .line 8
    iput-object p3, p0, Lnq9;->f:Ld2a;

    .line 9
    .line 10
    iput-object p4, p0, Lnq9;->k:Ld2a;

    .line 11
    .line 12
    iput-object p5, p0, Lnq9;->n:Ljava/lang/Integer;

    .line 13
    .line 14
    return-void
.end method

.method public static K(Lcq9;Ljava/security/spec/ECPoint;Ljava/lang/Integer;)Lnq9;
    .locals 8

    .line 1
    iget-object v0, p0, Lcq9;->a:Lyp9;

    .line 2
    .line 3
    iget-object v1, p0, Lcq9;->d:Lzp9;

    .line 4
    .line 5
    sget-object v2, Lyp9;->e:Lyp9;

    .line 6
    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x0

    .line 12
    if-nez v2, :cond_3

    .line 13
    .line 14
    invoke-static {v1, p2}, Lnq9;->N(Lzp9;Ljava/lang/Integer;)V

    .line 15
    .line 16
    .line 17
    sget-object v2, Lyp9;->b:Lyp9;

    .line 18
    .line 19
    if-ne v0, v2, :cond_0

    .line 20
    .line 21
    sget-object v0, Lyr9;->a:Ljava/security/spec/ECParameterSpec;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    sget-object v2, Lyp9;->c:Lyp9;

    .line 29
    .line 30
    if-ne v0, v2, :cond_1

    .line 31
    .line 32
    sget-object v0, Lyr9;->b:Ljava/security/spec/ECParameterSpec;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    sget-object v2, Lyp9;->d:Lyp9;

    .line 40
    .line 41
    if-ne v0, v2, :cond_2

    .line 42
    .line 43
    sget-object v0, Lyr9;->c:Ljava/security/spec/ECParameterSpec;

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    :goto_0
    invoke-static {p1, v0}, Lyr9;->g(Ljava/security/spec/ECPoint;Ljava/security/spec/EllipticCurve;)V

    .line 50
    .line 51
    .line 52
    invoke-static {v1, p2}, Lnq9;->M(Lzp9;Ljava/lang/Integer;)Ld2a;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    new-instance v2, Lnq9;

    .line 57
    .line 58
    const/4 v5, 0x0

    .line 59
    move-object v3, p0

    .line 60
    move-object v4, p1

    .line 61
    move-object v7, p2

    .line 62
    invoke-direct/range {v2 .. v7}, Lnq9;-><init>(Lcq9;Ljava/security/spec/ECPoint;Ld2a;Ld2a;Ljava/lang/Integer;)V

    .line 63
    .line 64
    .line 65
    return-object v2

    .line 66
    :cond_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    const-string p1, "Unable to determine NIST curve type for "

    .line 71
    .line 72
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-object v3

    .line 80
    :cond_3
    const-string p0, "createForNistCurve may only be called with parameters for NIST curve"

    .line 81
    .line 82
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    return-object v3
.end method

.method public static L(Lcq9;Ld2a;Ljava/lang/Integer;)Lnq9;
    .locals 10

    .line 1
    iget-object v0, p0, Lcq9;->a:Lyp9;

    .line 2
    .line 3
    iget-object v1, p0, Lcq9;->d:Lzp9;

    .line 4
    .line 5
    sget-object v2, Lyp9;->e:Lyp9;

    .line 6
    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-static {v1, p2}, Lnq9;->N(Lzp9;Ljava/lang/Integer;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p1, Ld2a;->a:[B

    .line 18
    .line 19
    array-length v0, v0

    .line 20
    const/16 v3, 0x20

    .line 21
    .line 22
    if-ne v0, v3, :cond_0

    .line 23
    .line 24
    invoke-static {v1, p2}, Lnq9;->M(Lzp9;Ljava/lang/Integer;)Ld2a;

    .line 25
    .line 26
    .line 27
    move-result-object v8

    .line 28
    new-instance v4, Lnq9;

    .line 29
    .line 30
    const/4 v6, 0x0

    .line 31
    move-object v5, p0

    .line 32
    move-object v7, p1

    .line 33
    move-object v9, p2

    .line 34
    invoke-direct/range {v4 .. v9}, Lnq9;-><init>(Lcq9;Ljava/security/spec/ECPoint;Ld2a;Ld2a;Ljava/lang/Integer;)V

    .line 35
    .line 36
    .line 37
    return-object v4

    .line 38
    :cond_0
    const-string p0, "Encoded public point byte length for X25519 curve must be 32"

    .line 39
    .line 40
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-object v2

    .line 44
    :cond_1
    const-string p0, "createForCurveX25519 may only be called with parameters for curve X25519"

    .line 45
    .line 46
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-object v2
.end method

.method public static M(Lzp9;Ljava/lang/Integer;)Ld2a;
    .locals 2

    .line 1
    sget-object v0, Lzp9;->d:Lzp9;

    .line 2
    .line 3
    if-ne p0, v0, :cond_0

    .line 4
    .line 5
    sget-object p0, Lzs9;->a:Ld2a;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    if-eqz p1, :cond_3

    .line 10
    .line 11
    sget-object v1, Lzp9;->c:Lzp9;

    .line 12
    .line 13
    if-ne p0, v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    invoke-static {p0}, Lzs9;->a(I)Ld2a;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0

    .line 24
    :cond_1
    sget-object v1, Lzp9;->b:Lzp9;

    .line 25
    .line 26
    if-ne p0, v1, :cond_2

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    invoke-static {p0}, Lzs9;->b(I)Ld2a;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0

    .line 37
    :cond_2
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    const-string p1, "Unknown EciesParameters.Variant: "

    .line 42
    .line 43
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-object v0

    .line 51
    :cond_3
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    const-string p1, "idRequirement must be non-null for EciesParameters.Variant: "

    .line 56
    .line 57
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    return-object v0
.end method

.method public static N(Lzp9;Ljava/lang/Integer;)V
    .locals 2

    .line 1
    sget-object v0, Lzp9;->d:Lzp9;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 13
    .line 14
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const-string v0, "\'idRequirement\' must be non-null for "

    .line 19
    .line 20
    const-string v1, " variant."

    .line 21
    .line 22
    invoke-static {v0, p0, v1}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-direct {p1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p1

    .line 30
    :cond_1
    :goto_0
    if-eq p0, v0, :cond_2

    .line 31
    .line 32
    return-void

    .line 33
    :cond_2
    if-nez p1, :cond_3

    .line 34
    .line 35
    return-void

    .line 36
    :cond_3
    const-string p0, "\'idRequirement\' must be null for NO_PREFIX variant."

    .line 37
    .line 38
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method


# virtual methods
.method public final synthetic G()Lbd9;
    .locals 0

    .line 1
    iget-object p0, p0, Lnq9;->d:Lcq9;

    .line 2
    .line 3
    return-object p0
.end method

.method public final H()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lnq9;->n:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final J()Ld2a;
    .locals 0

    .line 1
    iget-object p0, p0, Lnq9;->k:Ld2a;

    .line 2
    .line 3
    return-object p0
.end method
