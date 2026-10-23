.class public final Lwp9;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public a:Lyp9;

.field public b:Lxp9;

.field public c:Laq9;

.field public d:Lbd9;

.field public e:Lzp9;

.field public f:Ld2a;


# virtual methods
.method public final a()Lcq9;
    .locals 9

    .line 1
    iget-object v0, p0, Lwp9;->a:Lyp9;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_7

    .line 5
    .line 6
    iget-object v2, p0, Lwp9;->b:Lxp9;

    .line 7
    .line 8
    if-eqz v2, :cond_6

    .line 9
    .line 10
    iget-object v2, p0, Lwp9;->d:Lbd9;

    .line 11
    .line 12
    if-eqz v2, :cond_5

    .line 13
    .line 14
    iget-object v2, p0, Lwp9;->e:Lzp9;

    .line 15
    .line 16
    if-eqz v2, :cond_4

    .line 17
    .line 18
    sget-object v2, Lyp9;->e:Lyp9;

    .line 19
    .line 20
    if-eq v0, v2, :cond_1

    .line 21
    .line 22
    iget-object v3, p0, Lwp9;->c:Laq9;

    .line 23
    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const-string p0, "Point format is not set"

    .line 28
    .line 29
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-object v1

    .line 33
    :cond_1
    :goto_0
    if-ne v0, v2, :cond_3

    .line 34
    .line 35
    iget-object v0, p0, Lwp9;->c:Laq9;

    .line 36
    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    const-string p0, "For Curve25519 point format must not be set"

    .line 41
    .line 42
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-object v1

    .line 46
    :cond_3
    :goto_1
    new-instance v2, Lcq9;

    .line 47
    .line 48
    iget-object v3, p0, Lwp9;->a:Lyp9;

    .line 49
    .line 50
    iget-object v4, p0, Lwp9;->b:Lxp9;

    .line 51
    .line 52
    iget-object v5, p0, Lwp9;->c:Laq9;

    .line 53
    .line 54
    iget-object v6, p0, Lwp9;->d:Lbd9;

    .line 55
    .line 56
    iget-object v7, p0, Lwp9;->e:Lzp9;

    .line 57
    .line 58
    iget-object v8, p0, Lwp9;->f:Ld2a;

    .line 59
    .line 60
    invoke-direct/range {v2 .. v8}, Lcq9;-><init>(Lyp9;Lxp9;Laq9;Lbd9;Lzp9;Ld2a;)V

    .line 61
    .line 62
    .line 63
    return-object v2

    .line 64
    :cond_4
    const-string p0, "Variant is not set"

    .line 65
    .line 66
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    return-object v1

    .line 70
    :cond_5
    const-string p0, "DEM parameters are not set"

    .line 71
    .line 72
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    return-object v1

    .line 76
    :cond_6
    const-string p0, "Hash type is not set"

    .line 77
    .line 78
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    return-object v1

    .line 82
    :cond_7
    const-string p0, "Elliptic curve type is not set"

    .line 83
    .line 84
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    return-object v1
.end method

.method public final b(Lbd9;)V
    .locals 2

    .line 1
    sget-object v0, Lcq9;->g:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iput-object p1, p0, Lwp9;->d:Lbd9;

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 13
    .line 14
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string v0, "Invalid DEM parameters "

    .line 19
    .line 20
    const-string v1, "; only AES128_GCM_RAW, AES256_GCM_RAW, AES128_CTR_HMAC_SHA256_RAW, AES256_CTR_HMAC_SHA256_RAW XCHACHA20_POLY1305_RAW and AES256_SIV_RAW are currently supported."

    .line 21
    .line 22
    invoke-static {v0, p1, v1}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p0
.end method
