.class public final Lu16;
.super Ljava/security/SignatureSpi;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lvz0;

.field public final b:Ljava/util/Map;

.field public final c:Ljava/lang/String;

.field public d:Li16;

.field public e:Ljava/security/Signature;


# direct methods
.method public constructor <init>(Lvz0;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lu16;->a:Lvz0;

    .line 5
    .line 6
    iput-object p2, p0, Lu16;->b:Ljava/util/Map;

    .line 7
    .line 8
    iput-object p3, p0, Lu16;->c:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(Z)Ljava/security/Signature;
    .locals 2

    .line 1
    iget-object v0, p0, Lu16;->e:Ljava/security/Signature;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lu16;->c:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lu16;->e:Ljava/security/Signature;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    :try_start_0
    iget-object p1, p0, Lu16;->b:Ljava/util/Map;

    .line 16
    .line 17
    sget-object v1, Lvo4;->d:Lvo4;

    .line 18
    .line 19
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Ljava/security/KeyPair;

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {v0, p1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catch_0
    new-instance p0, Ljava/security/NoSuchAlgorithmException;

    .line 34
    .line 35
    invoke-direct {p0}, Ljava/security/NoSuchAlgorithmException;-><init>()V

    .line 36
    .line 37
    .line 38
    throw p0

    .line 39
    :cond_0
    :goto_0
    iget-object p0, p0, Lu16;->e:Ljava/security/Signature;

    .line 40
    .line 41
    return-object p0
.end method

.method public final engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lu16;->e:Ljava/security/Signature;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Ljava/security/Signature;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0

    .line 10
    :cond_0
    new-instance p0, Ljava/security/InvalidParameterException;

    .line 11
    .line 12
    const-string p1, "Not initialized"

    .line 13
    .line 14
    invoke-direct {p0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p0
.end method

.method public final engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 1

    .line 1
    iget-object p0, p0, Lu16;->e:Ljava/security/Signature;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/security/Signature;->getParameters()Ljava/security/AlgorithmParameters;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0

    .line 10
    :cond_0
    new-instance p0, Ljava/security/InvalidParameterException;

    .line 11
    .line 12
    const-string v0, "Not initialized"

    .line 13
    .line 14
    invoke-direct {p0, v0}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p0
.end method

.method public final engineInitSign(Ljava/security/PrivateKey;)V
    .locals 1

    .line 1
    instance-of v0, p1, Li16;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Li16;

    .line 6
    .line 7
    iput-object p1, p0, Lu16;->d:Li16;

    .line 8
    .line 9
    iget-object v0, p0, Lu16;->b:Ljava/util/Map;

    .line 10
    .line 11
    iget-object p1, p1, Lj16;->b:Lvo4;

    .line 12
    .line 13
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Ljava/security/KeyPair;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    :try_start_0
    invoke-virtual {p0, v0}, Lu16;->a(Z)Ljava/security/Signature;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p0, p1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :catch_0
    move-exception p0

    .line 33
    new-instance p1, Ljava/security/InvalidKeyException;

    .line 34
    .line 35
    invoke-direct {p1, p0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    .line 36
    .line 37
    .line 38
    throw p1

    .line 39
    :cond_0
    const-string p0, "Unsupported key type"

    .line 40
    .line 41
    invoke-static {p0}, Ld6;->f(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final engineInitVerify(Ljava/security/PublicKey;)V
    .locals 0

    .line 1
    new-instance p0, Ljava/security/InvalidKeyException;

    .line 2
    .line 3
    const-string p1, "Can only be used for signing."

    .line 4
    .line 5
    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p0
.end method

.method public final engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    invoke-virtual {p0, v0}, Lu16;->a(Z)Ljava/security/Signature;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    invoke-virtual {p0, p1, p2}, Ljava/security/Signature;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :catch_0
    new-instance p0, Ljava/security/InvalidParameterException;

    .line 11
    .line 12
    const-string p1, "Not initialized"

    .line 13
    .line 14
    invoke-direct {p0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p0
.end method

.method public final engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 1

    const/4 v0, 0x1

    .line 18
    :try_start_0
    invoke-virtual {p0, v0}, Lu16;->a(Z)Ljava/security/Signature;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/security/Signature;->setParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 19
    :catch_0
    new-instance p0, Ljava/security/InvalidParameterException;

    const-string p1, "Not initialized"

    invoke-direct {p0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final engineSign()[B
    .locals 3

    .line 1
    iget-object v0, p0, Lu16;->d:Li16;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lu16;->e:Ljava/security/Signature;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    :try_start_0
    const-string v0, "RSA/ECB/NoPadding"

    .line 10
    .line 11
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lu16;->b:Ljava/util/Map;

    .line 16
    .line 17
    iget-object v2, p0, Lu16;->d:Li16;

    .line 18
    .line 19
    iget-object v2, v2, Lj16;->b:Lvo4;

    .line 20
    .line 21
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Ljava/security/KeyPair;

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const/4 v2, 0x1

    .line 32
    invoke-virtual {v0, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lu16;->e:Ljava/security/Signature;

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/security/Signature;->sign()[B

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget-object v1, p0, Lu16;->d:Li16;

    .line 46
    .line 47
    iget-object p0, p0, Lu16;->a:Lvz0;

    .line 48
    .line 49
    invoke-virtual {v1, p0, v0}, Lj16;->b(Lvz0;[B)[B

    .line 50
    .line 51
    .line 52
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    return-object p0

    .line 54
    :catch_0
    move-exception p0

    .line 55
    new-instance v0, Ljava/security/SignatureException;

    .line 56
    .line 57
    invoke-direct {v0, p0}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    .line 58
    .line 59
    .line 60
    throw v0

    .line 61
    :cond_0
    new-instance p0, Ljava/security/SignatureException;

    .line 62
    .line 63
    const-string v0, "Not initialized"

    .line 64
    .line 65
    invoke-direct {p0, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw p0
.end method

.method public final engineUpdate(B)V
    .locals 0

    .line 1
    iget-object p0, p0, Lu16;->e:Ljava/security/Signature;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Ljava/security/Signature;->update(B)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance p0, Ljava/security/SignatureException;

    .line 10
    .line 11
    const-string p1, "Not initialized"

    .line 12
    .line 13
    invoke-direct {p0, p1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw p0
.end method

.method public final engineUpdate([BII)V
    .locals 0

    .line 17
    iget-object p0, p0, Lu16;->e:Ljava/security/Signature;

    if-eqz p0, :cond_0

    .line 18
    invoke-virtual {p0, p1, p2, p3}, Ljava/security/Signature;->update([BII)V

    return-void

    .line 19
    :cond_0
    new-instance p0, Ljava/security/SignatureException;

    const-string p1, "Not initialized"

    invoke-direct {p0, p1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final engineVerify([B)Z
    .locals 0

    .line 1
    new-instance p0, Ljava/security/SignatureException;

    .line 2
    .line 3
    const-string p1, "Not initialized"

    .line 4
    .line 5
    invoke-direct {p0, p1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p0
.end method
