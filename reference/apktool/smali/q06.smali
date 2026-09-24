.class public final Lq06;
.super Ljavax/crypto/KeyAgreementSpi;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lvz0;

.field public b:Lh16;

.field public c:Ljava/security/spec/ECPoint;


# direct methods
.method public constructor <init>(Lvz0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljavax/crypto/KeyAgreementSpi;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lq06;->a:Lvz0;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final engineDoPhase(Ljava/security/Key;Z)Ljava/security/Key;
    .locals 2

    .line 1
    iget-object v0, p0, Lq06;->b:Lh16;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    if-eqz p2, :cond_1

    .line 7
    .line 8
    instance-of p2, p1, Ljava/security/interfaces/ECPublicKey;

    .line 9
    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    iget-object p2, v0, Lh16;->e:Ljava/security/spec/ECParameterSpec;

    .line 13
    .line 14
    invoke-virtual {p2}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    check-cast p1, Ljava/security/interfaces/ECPublicKey;

    .line 19
    .line 20
    invoke-interface {p1}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p2, v0}, Ljava/security/spec/EllipticCurve;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    if-eqz p2, :cond_0

    .line 33
    .line 34
    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iput-object p1, p0, Lq06;->c:Ljava/security/spec/ECPoint;

    .line 39
    .line 40
    return-object v1

    .line 41
    :cond_0
    const-string p0, "Wrong key type"

    .line 42
    .line 43
    invoke-static {p0}, Ld6;->f(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-object v1

    .line 47
    :cond_1
    const-string p0, "Multiple phases not supported"

    .line 48
    .line 49
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-object v1

    .line 53
    :cond_2
    const-string p0, "KeyAgreement not initialized"

    .line 54
    .line 55
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-object v1
.end method

.method public final engineGenerateSecret([BI)I
    .locals 2

    .line 37
    invoke-virtual {p0}, Lq06;->engineGenerateSecret()[B

    move-result-object p0

    .line 38
    :try_start_0
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39
    array-length p0, p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 40
    :catch_0
    new-instance p0, Ljavax/crypto/ShortBufferException;

    invoke-direct {p0}, Ljavax/crypto/ShortBufferException;-><init>()V

    throw p0
.end method

.method public final engineGenerateSecret(Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .locals 0

    .line 41
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Not supported"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final engineGenerateSecret()[B
    .locals 4

    .line 1
    iget-object v0, p0, Lq06;->b:Lh16;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v2, p0, Lq06;->c:Ljava/security/spec/ECPoint;

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    :try_start_0
    iget-object v3, p0, Lq06;->a:Lvz0;

    .line 11
    .line 12
    invoke-virtual {v0, v3, v2}, Lh16;->c(Lvz0;Ljava/security/spec/ECPoint;)[B

    .line 13
    .line 14
    .line 15
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    iput-object v1, p0, Lq06;->c:Ljava/security/spec/ECPoint;

    .line 17
    .line 18
    return-object v0

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception v0

    .line 22
    :try_start_1
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 23
    .line 24
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    :goto_0
    iput-object v1, p0, Lq06;->c:Ljava/security/spec/ECPoint;

    .line 29
    .line 30
    throw v0

    .line 31
    :cond_0
    const-string p0, "Not initialized with both private and public keys"

    .line 32
    .line 33
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-object v1
.end method

.method public final engineInit(Ljava/security/Key;Ljava/security/SecureRandom;)V
    .locals 0

    .line 1
    instance-of p2, p1, Lh16;

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    check-cast p1, Lh16;

    .line 6
    .line 7
    iput-object p1, p0, Lq06;->b:Lh16;

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const-string p0, "Key must be instance of PivPrivateKey"

    .line 11
    .line 12
    invoke-static {p0}, Ld6;->f(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 0

    .line 16
    invoke-virtual {p0, p1, p3}, Lq06;->engineInit(Ljava/security/Key;Ljava/security/SecureRandom;)V

    return-void
.end method
