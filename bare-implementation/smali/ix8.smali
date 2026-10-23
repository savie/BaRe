.class public final Lix8;
.super Ljava/security/KeyFactorySpi;

# interfaces
.implements Lm60;


# virtual methods
.method public final a(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;
    .locals 1

    .line 1
    new-instance p0, Leh0;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->d:Lx1;

    .line 7
    .line 8
    iput-object v0, p0, Leh0;->c:Lx1;

    .line 9
    .line 10
    iget-object v0, p1, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->b:Lya;

    .line 11
    .line 12
    iget-object v0, v0, Lya;->b:Lb0;

    .line 13
    .line 14
    invoke-static {v0}, Ljx8;->k(Ljava/lang/Object;)Ljx8;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v0, v0, Ljx8;->d:Lya;

    .line 19
    .line 20
    iget-object v0, v0, Lya;->a:Lf1;

    .line 21
    .line 22
    iput-object v0, p0, Leh0;->a:Lf1;

    .line 23
    .line 24
    invoke-static {p1}, Ltu0;->e(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Ln60;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Lnx8;

    .line 29
    .line 30
    iput-object p1, p0, Leh0;->b:Lnx8;

    .line 31
    .line 32
    return-object p0
.end method

.method public final b(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Ljava/security/PublicKey;
    .locals 0

    .line 1
    new-instance p0, Lfh0;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lmb6;->a(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Ln60;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lpx8;

    .line 11
    .line 12
    iput-object p1, p0, Lfh0;->b:Lpx8;

    .line 13
    .line 14
    iget-object p1, p1, Luv6;->b:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {p1}, Lk55;->n(Ljava/lang/String;)Lf1;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lfh0;->a:Lf1;

    .line 21
    .line 22
    return-object p0
.end method

.method public final engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    .locals 2

    .line 1
    instance-of v0, p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/security/spec/PKCS8EncodedKeySpec;->getEncoded()[B

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    :try_start_0
    invoke-static {p1}, Lq1;->t([B)Lq1;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->k(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p0, p1}, Lix8;->a(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;

    .line 20
    .line 21
    .line 22
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    return-object p0

    .line 24
    :catch_0
    move-exception p0

    .line 25
    invoke-static {p0}, Lb6;->c(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    const/4 p0, 0x0

    .line 29
    return-object p0

    .line 30
    :cond_0
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v1, "unsupported key specification: "

    .line 39
    .line 40
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string p1, "."

    .line 47
    .line 48
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-direct {p0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p0
.end method

.method public final engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    .locals 2

    .line 1
    instance-of v0, p1, Ljava/security/spec/X509EncodedKeySpec;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Ljava/security/spec/X509EncodedKeySpec;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/security/spec/X509EncodedKeySpec;->getEncoded()[B

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    :try_start_0
    invoke-static {p1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->k(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p0, p1}, Lix8;->b(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Ljava/security/PublicKey;

    .line 17
    .line 18
    .line 19
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    return-object p0

    .line 21
    :catch_0
    move-exception p0

    .line 22
    invoke-static {p0}, Lb6;->c(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    return-object v1

    .line 26
    :cond_0
    const-string p0, "unknown key specification: "

    .line 27
    .line 28
    invoke-static {p1, p0}, Lc6;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-object v1
.end method

.method public final engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .locals 2

    .line 1
    instance-of p0, p1, Leh0;

    .line 2
    .line 3
    const-string v0, "."

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const-class p0, Ljava/security/spec/PKCS8EncodedKeySpec;

    .line 8
    .line 9
    invoke-virtual {p0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_1

    .line 14
    .line 15
    new-instance p0, Ljava/security/spec/PKCS8EncodedKeySpec;

    .line 16
    .line 17
    check-cast p1, Leh0;

    .line 18
    .line 19
    invoke-virtual {p1}, Leh0;->getEncoded()[B

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-direct {p0, p1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 24
    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_0
    instance-of p0, p1, Lfh0;

    .line 28
    .line 29
    if-eqz p0, :cond_2

    .line 30
    .line 31
    const-class p0, Ljava/security/spec/X509EncodedKeySpec;

    .line 32
    .line 33
    invoke-virtual {p0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-eqz p0, :cond_1

    .line 38
    .line 39
    new-instance p0, Ljava/security/spec/X509EncodedKeySpec;

    .line 40
    .line 41
    check-cast p1, Lfh0;

    .line 42
    .line 43
    invoke-virtual {p1}, Lfh0;->getEncoded()[B

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-direct {p0, p1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 48
    .line 49
    .line 50
    return-object p0

    .line 51
    :cond_1
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    .line 52
    .line 53
    const-string p1, "unknown key specification: "

    .line 54
    .line 55
    invoke-static {p2, p1, v0}, Lfz5;->l(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-direct {p0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p0

    .line 63
    :cond_2
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    new-instance p2, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string v1, "unsupported key type: "

    .line 72
    .line 73
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-direct {p0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw p0
.end method

.method public final engineTranslateKey(Ljava/security/Key;)Ljava/security/Key;
    .locals 0

    .line 1
    instance-of p0, p1, Leh0;

    .line 2
    .line 3
    if-nez p0, :cond_1

    .line 4
    .line 5
    instance-of p0, p1, Lfh0;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    return-object p1

    .line 10
    :cond_0
    const-string p0, "unsupported key type"

    .line 11
    .line 12
    invoke-static {p0}, Ld6;->f(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    return-object p0

    .line 17
    :cond_1
    return-object p1
.end method
