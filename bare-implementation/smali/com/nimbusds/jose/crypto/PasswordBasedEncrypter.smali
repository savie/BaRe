.class public Lcom/nimbusds/jose/crypto/PasswordBasedEncrypter;
.super Lcom/nimbusds/jose/crypto/impl/PasswordBasedCryptoProvider;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/nimbusds/jose/JWEEncrypter;


# annotations
.annotation runtime Lcom/nimbusds/jose/shaded/jcip/ThreadSafe;
.end annotation


# static fields
.field public static final MIN_RECOMMENDED_ITERATION_COUNT:I = 0x3e8

.field public static final MIN_SALT_LENGTH:I = 0x8


# instance fields
.field private final iterationCount:I

.field private final saltLength:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    .line 31
    sget-object v0, Lcom/nimbusds/jose/util/StandardCharset;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lcom/nimbusds/jose/crypto/PasswordBasedEncrypter;-><init>([BII)V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/nimbusds/jose/crypto/impl/PasswordBasedCryptoProvider;-><init>([B)V

    .line 2
    .line 3
    .line 4
    const/16 p1, 0x8

    .line 5
    .line 6
    if-lt p2, p1, :cond_1

    .line 7
    .line 8
    iput p2, p0, Lcom/nimbusds/jose/crypto/PasswordBasedEncrypter;->saltLength:I

    .line 9
    .line 10
    const/16 p1, 0x3e8

    .line 11
    .line 12
    if-lt p3, p1, :cond_0

    .line 13
    .line 14
    iput p3, p0, Lcom/nimbusds/jose/crypto/PasswordBasedEncrypter;->iterationCount:I

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    const-string p0, "The minimum recommended iteration count (p2c) is 1000"

    .line 18
    .line 19
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x0

    .line 23
    throw p0

    .line 24
    :cond_1
    const-string p0, "The minimum salt length (p2s) is 8 bytes"

    .line 25
    .line 26
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const/4 p0, 0x0

    .line 30
    throw p0
.end method


# virtual methods
.method public encrypt(Lcom/nimbusds/jose/JWEHeader;[B)Lcom/nimbusds/jose/JWECryptoParts;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 134
    invoke-static {p1}, Lcom/nimbusds/jose/crypto/impl/AAD;->compute(Lcom/nimbusds/jose/JWEHeader;)[B

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/nimbusds/jose/crypto/PasswordBasedEncrypter;->encrypt(Lcom/nimbusds/jose/JWEHeader;[B[B)Lcom/nimbusds/jose/JWECryptoParts;

    move-result-object p0

    return-object p0
.end method

.method public encrypt(Lcom/nimbusds/jose/JWEHeader;[B[B)Lcom/nimbusds/jose/JWECryptoParts;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/nimbusds/jose/crypto/impl/JWEHeaderValidation;->getAlgorithmAndEnsureNotNull(Lcom/nimbusds/jose/JWEHeader;)Lcom/nimbusds/jose/JWEAlgorithm;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getEncryptionMethod()Lcom/nimbusds/jose/EncryptionMethod;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget v2, p0, Lcom/nimbusds/jose/crypto/PasswordBasedEncrypter;->saltLength:I

    .line 10
    .line 11
    new-array v2, v2, [B

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/impl/BaseJWEProvider;->getJCAContext()Lcom/nimbusds/jose/jca/JWEJCAContext;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {v3}, Lcom/nimbusds/jose/jca/JCAContext;->getSecureRandom()Ljava/security/SecureRandom;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-virtual {v3, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v2}, Lcom/nimbusds/jose/crypto/impl/PBKDF2;->formatSalt(Lcom/nimbusds/jose/JWEAlgorithm;[B)[B

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/impl/BaseJWEProvider;->getJCAContext()Lcom/nimbusds/jose/jca/JWEJCAContext;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-virtual {v4}, Lcom/nimbusds/jose/jca/JWEJCAContext;->getMACProvider()Ljava/security/Provider;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-static {v0, v4}, Lcom/nimbusds/jose/crypto/impl/PRFParams;->resolve(Lcom/nimbusds/jose/JWEAlgorithm;Ljava/security/Provider;)Lcom/nimbusds/jose/crypto/impl/PRFParams;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/impl/PasswordBasedCryptoProvider;->getPassword()[B

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    iget v5, p0, Lcom/nimbusds/jose/crypto/PasswordBasedEncrypter;->iterationCount:I

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/impl/BaseJWEProvider;->getJCAContext()Lcom/nimbusds/jose/jca/JWEJCAContext;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    invoke-virtual {v6}, Lcom/nimbusds/jose/jca/JCAContext;->getProvider()Ljava/security/Provider;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    invoke-static {v4, v3, v5, v0, v6}, Lcom/nimbusds/jose/crypto/impl/PBKDF2;->deriveKey([B[BILcom/nimbusds/jose/crypto/impl/PRFParams;Ljava/security/Provider;)Ljavax/crypto/SecretKey;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    new-instance v3, Lcom/nimbusds/jose/JWEHeader$Builder;

    .line 59
    .line 60
    invoke-direct {v3, p1}, Lcom/nimbusds/jose/JWEHeader$Builder;-><init>(Lcom/nimbusds/jose/JWEHeader;)V

    .line 61
    .line 62
    .line 63
    invoke-static {v2}, Lcom/nimbusds/jose/util/Base64URL;->encode([B)Lcom/nimbusds/jose/util/Base64URL;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v3, v2}, Lcom/nimbusds/jose/JWEHeader$Builder;->pbes2Salt(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/JWEHeader$Builder;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    iget v3, p0, Lcom/nimbusds/jose/crypto/PasswordBasedEncrypter;->iterationCount:I

    .line 72
    .line 73
    invoke-virtual {v2, v3}, Lcom/nimbusds/jose/JWEHeader$Builder;->pbes2Count(I)Lcom/nimbusds/jose/JWEHeader$Builder;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {v2}, Lcom/nimbusds/jose/JWEHeader$Builder;->build()Lcom/nimbusds/jose/JWEHeader;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/impl/BaseJWEProvider;->getJCAContext()Lcom/nimbusds/jose/jca/JWEJCAContext;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-virtual {v2}, Lcom/nimbusds/jose/jca/JCAContext;->getSecureRandom()Ljava/security/SecureRandom;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-static {v1, v2}, Lcom/nimbusds/jose/crypto/impl/ContentCryptoProvider;->generateCEK(Lcom/nimbusds/jose/EncryptionMethod;Ljava/security/SecureRandom;)Ljavax/crypto/SecretKey;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/impl/BaseJWEProvider;->getJCAContext()Lcom/nimbusds/jose/jca/JWEJCAContext;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {v1}, Lcom/nimbusds/jose/jca/JWEJCAContext;->getKeyEncryptionProvider()Ljava/security/Provider;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-static {v6, v0, v1}, Lcom/nimbusds/jose/crypto/impl/AESKW;->wrapCEK(Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;Ljava/security/Provider;)[B

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-static {v0}, Lcom/nimbusds/jose/util/Base64URL;->encode([B)Lcom/nimbusds/jose/util/Base64URL;

    .line 106
    .line 107
    .line 108
    move-result-object v7

    .line 109
    invoke-static {p1}, Lcom/nimbusds/jose/crypto/impl/AAD;->compute(Lcom/nimbusds/jose/JWEHeader;)[B

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-static {p1, p3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    if-eqz p1, :cond_0

    .line 118
    .line 119
    invoke-static {v3}, Lcom/nimbusds/jose/crypto/impl/AAD;->compute(Lcom/nimbusds/jose/JWEHeader;)[B

    .line 120
    .line 121
    .line 122
    move-result-object p3

    .line 123
    :cond_0
    move-object v5, p3

    .line 124
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/impl/BaseJWEProvider;->getJCAContext()Lcom/nimbusds/jose/jca/JWEJCAContext;

    .line 125
    .line 126
    .line 127
    move-result-object v8

    .line 128
    move-object v4, p2

    .line 129
    invoke-static/range {v3 .. v8}, Lcom/nimbusds/jose/crypto/impl/ContentCryptoProvider;->encrypt(Lcom/nimbusds/jose/JWEHeader;[B[BLjavax/crypto/SecretKey;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/jca/JWEJCAContext;)Lcom/nimbusds/jose/JWECryptoParts;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    return-object p0
.end method

.method public getIterationCount()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/nimbusds/jose/crypto/PasswordBasedEncrypter;->iterationCount:I

    .line 2
    .line 3
    return p0
.end method

.method public getSaltLength()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/nimbusds/jose/crypto/PasswordBasedEncrypter;->saltLength:I

    .line 2
    .line 3
    return p0
.end method
