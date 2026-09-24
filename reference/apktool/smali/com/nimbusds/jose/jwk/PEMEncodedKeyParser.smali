.class Lcom/nimbusds/jose/jwk/PEMEncodedKeyParser;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field private static final pemConverter:Lorg/bouncycastle/openssl/jcajce/JcaPEMKeyConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/bouncycastle/openssl/jcajce/JcaPEMKeyConverter;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/bouncycastle/openssl/jcajce/JcaPEMKeyConverter;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/nimbusds/jose/jwk/PEMEncodedKeyParser;->pemConverter:Lorg/bouncycastle/openssl/jcajce/JcaPEMKeyConverter;

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

.method public static parseKeys(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/KeyPair;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/StringReader;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p0, Lorg/bouncycastle/openssl/PEMParser;

    .line 7
    .line 8
    invoke-direct {p0, v0}, Lorg/bouncycastle/openssl/PEMParser;-><init>(Ljava/io/Reader;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/openssl/PEMParser;->readObject()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    instance-of v2, v1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 21
    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    move-object v2, v1

    .line 25
    check-cast v2, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 26
    .line 27
    invoke-static {v2}, Lcom/nimbusds/jose/jwk/PEMEncodedKeyParser;->toKeyPair(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Ljava/security/KeyPair;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    instance-of v2, v1, Lorg/bouncycastle/cert/X509CertificateHolder;

    .line 36
    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    move-object v2, v1

    .line 40
    check-cast v2, Lorg/bouncycastle/cert/X509CertificateHolder;

    .line 41
    .line 42
    invoke-static {v2}, Lcom/nimbusds/jose/jwk/PEMEncodedKeyParser;->toKeyPair(Lorg/bouncycastle/cert/X509CertificateHolder;)Ljava/security/KeyPair;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    instance-of v2, v1, Lorg/bouncycastle/openssl/PEMKeyPair;

    .line 51
    .line 52
    if-eqz v2, :cond_3

    .line 53
    .line 54
    move-object v2, v1

    .line 55
    check-cast v2, Lorg/bouncycastle/openssl/PEMKeyPair;

    .line 56
    .line 57
    invoke-static {v2}, Lcom/nimbusds/jose/jwk/PEMEncodedKeyParser;->toKeyPair(Lorg/bouncycastle/openssl/PEMKeyPair;)Ljava/security/KeyPair;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_3
    instance-of v2, v1, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    .line 66
    .line 67
    if-eqz v2, :cond_4

    .line 68
    .line 69
    move-object v2, v1

    .line 70
    check-cast v2, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    .line 71
    .line 72
    invoke-static {v2}, Lcom/nimbusds/jose/jwk/PEMEncodedKeyParser;->toKeyPair(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/KeyPair;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .line 78
    .line 79
    :cond_4
    :goto_0
    if-nez v1, :cond_0

    .line 80
    .line 81
    return-object v0

    .line 82
    :catch_0
    move-exception p0

    .line 83
    new-instance v0, Lcom/nimbusds/jose/JOSEException;

    .line 84
    .line 85
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-direct {v0, v1, p0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 90
    .line 91
    .line 92
    throw v0
.end method

.method private static toKeyPair(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/KeyPair;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openssl/PEMException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/nimbusds/jose/jwk/PEMEncodedKeyParser;->pemConverter:Lorg/bouncycastle/openssl/jcajce/JcaPEMKeyConverter;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lorg/bouncycastle/openssl/jcajce/JcaPEMKeyConverter;->getPrivateKey(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    instance-of v0, p0, Ljava/security/interfaces/RSAPrivateCrtKey;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Ljava/security/spec/RSAPublicKeySpec;

    .line 12
    .line 13
    move-object v1, p0

    .line 14
    check-cast v1, Ljava/security/interfaces/RSAPrivateCrtKey;

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-interface {v1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-direct {v0, v2, v1}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 25
    .line 26
    .line 27
    const-string v1, "RSA"

    .line 28
    .line 29
    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    new-instance v1, Ljava/security/KeyPair;

    .line 38
    .line 39
    invoke-direct {v1, v0, p0}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    .line 40
    .line 41
    .line 42
    return-object v1

    .line 43
    :cond_0
    new-instance v0, Ljava/security/KeyPair;

    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    invoke-direct {v0, v1, p0}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    .line 47
    .line 48
    .line 49
    return-object v0
.end method

.method private static toKeyPair(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Ljava/security/KeyPair;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openssl/PEMException;
        }
    .end annotation

    .line 53
    new-instance v0, Ljava/security/KeyPair;

    sget-object v1, Lcom/nimbusds/jose/jwk/PEMEncodedKeyParser;->pemConverter:Lorg/bouncycastle/openssl/jcajce/JcaPEMKeyConverter;

    invoke-virtual {v1, p0}, Lorg/bouncycastle/openssl/jcajce/JcaPEMKeyConverter;->getPublicKey(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Ljava/security/PublicKey;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v0
.end method

.method private static toKeyPair(Lorg/bouncycastle/cert/X509CertificateHolder;)Ljava/security/KeyPair;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openssl/PEMException;
        }
    .end annotation

    .line 50
    invoke-virtual {p0}, Lorg/bouncycastle/cert/X509CertificateHolder;->getSubjectPublicKeyInfo()Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object p0

    .line 51
    new-instance v0, Ljava/security/KeyPair;

    sget-object v1, Lcom/nimbusds/jose/jwk/PEMEncodedKeyParser;->pemConverter:Lorg/bouncycastle/openssl/jcajce/JcaPEMKeyConverter;

    invoke-virtual {v1, p0}, Lorg/bouncycastle/openssl/jcajce/JcaPEMKeyConverter;->getPublicKey(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Ljava/security/PublicKey;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v0
.end method

.method private static toKeyPair(Lorg/bouncycastle/openssl/PEMKeyPair;)Ljava/security/KeyPair;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openssl/PEMException;
        }
    .end annotation

    .line 52
    sget-object v0, Lcom/nimbusds/jose/jwk/PEMEncodedKeyParser;->pemConverter:Lorg/bouncycastle/openssl/jcajce/JcaPEMKeyConverter;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/openssl/jcajce/JcaPEMKeyConverter;->getKeyPair(Lorg/bouncycastle/openssl/PEMKeyPair;)Ljava/security/KeyPair;

    move-result-object p0

    return-object p0
.end method
