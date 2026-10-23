.class public abstract Ltl0;
.super Ljava/security/KeyFactorySpi;

# interfaces
.implements Lm60;


# instance fields
.field public final a:Ljava/util/Set;

.field public final b:Lf1;


# direct methods
.method public constructor <init>(Lf1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/security/KeyFactorySpi;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ltl0;->b:Lf1;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Ltl0;->a:Ljava/util/Set;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/util/Set;)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/security/KeyFactorySpi;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ltl0;->b:Lf1;

    iput-object p1, p0, Ltl0;->a:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final c(Lf1;)V
    .locals 2

    .line 1
    const-string v0, "incorrect algorithm OID for key: "

    .line 2
    .line 3
    iget-object v1, p0, Ltl0;->b:Lf1;

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    invoke-virtual {v1, p1}, Lq1;->s(Lq1;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    .line 15
    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-direct {p0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p0

    .line 32
    :cond_1
    iget-object p0, p0, Ltl0;->a:Ljava/util/Set;

    .line 33
    .line 34
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    if-eqz p0, :cond_2

    .line 39
    .line 40
    :goto_0
    return-void

    .line 41
    :cond_2
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    .line 42
    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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

.method public engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
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
    invoke-static {p1}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->k(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p1, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->b:Lya;

    .line 16
    .line 17
    iget-object v0, v0, Lya;->a:Lf1;

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Ltl0;->c(Lf1;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {p0, p1}, Lm60;->a(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;

    .line 23
    .line 24
    .line 25
    move-result-object p0
    :try_end_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    return-object p0

    .line 27
    :catch_0
    move-exception p0

    .line 28
    invoke-static {p0}, Lb6;->c(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    const/4 p0, 0x0

    .line 32
    return-object p0

    .line 33
    :catch_1
    move-exception p0

    .line 34
    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-direct {p1, p0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p1

    .line 44
    :catch_2
    move-exception p0

    .line 45
    throw p0

    .line 46
    :cond_0
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v1, "Unsupported key specification: "

    .line 55
    .line 56
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string p1, "."

    .line 63
    .line 64
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-direct {p0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw p0
.end method

.method public engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
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
    iget-object v0, p1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->a:Lya;

    .line 17
    .line 18
    iget-object v0, v0, Lya;->a:Lf1;

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Ltl0;->c(Lf1;)V

    .line 21
    .line 22
    .line 23
    invoke-interface {p0, p1}, Lm60;->b(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Ljava/security/PublicKey;

    .line 24
    .line 25
    .line 26
    move-result-object p0
    :try_end_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    return-object p0

    .line 28
    :catch_0
    move-exception p0

    .line 29
    invoke-static {p0}, Lb6;->c(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    return-object v1

    .line 33
    :catch_1
    move-exception p0

    .line 34
    throw p0

    .line 35
    :cond_0
    const-string p0, "Unknown key specification: "

    .line 36
    .line 37
    invoke-static {p1, p0}, Lc6;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-object v1
.end method
