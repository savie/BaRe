.class public Lcom/nimbusds/jose/crypto/PasswordBasedDecrypter;
.super Lcom/nimbusds/jose/crypto/impl/PasswordBasedCryptoProvider;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/nimbusds/jose/JWEDecrypter;
.implements Lcom/nimbusds/jose/CriticalHeaderParamsAware;


# annotations
.annotation runtime Lcom/nimbusds/jose/shaded/jcip/ThreadSafe;
.end annotation


# static fields
.field public static final MAX_ALLOWED_ITERATION_COUNT:I = 0xf4240


# instance fields
.field private final critPolicy:Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/nimbusds/jose/util/StandardCharset;->UTF_8:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {p0, p1}, Lcom/nimbusds/jose/crypto/impl/PasswordBasedCryptoProvider;-><init>([B)V

    .line 8
    .line 9
    .line 10
    new-instance p1, Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;

    .line 11
    .line 12
    invoke-direct {p1}, Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lcom/nimbusds/jose/crypto/PasswordBasedDecrypter;->critPolicy:Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/nimbusds/jose/crypto/impl/PasswordBasedCryptoProvider;-><init>([B)V

    .line 19
    new-instance p1, Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;

    invoke-direct {p1}, Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;-><init>()V

    iput-object p1, p0, Lcom/nimbusds/jose/crypto/PasswordBasedDecrypter;->critPolicy:Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;

    return-void
.end method


# virtual methods
.method public decrypt(Lcom/nimbusds/jose/JWEHeader;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 148
    invoke-static {p1}, Lcom/nimbusds/jose/crypto/impl/AAD;->compute(Lcom/nimbusds/jose/JWEHeader;)[B

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/nimbusds/jose/crypto/PasswordBasedDecrypter;->decrypt(Lcom/nimbusds/jose/JWEHeader;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;[B)[B

    move-result-object p0

    return-object p0
.end method

.method public decrypt(Lcom/nimbusds/jose/JWEHeader;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;[B)[B
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_5

    .line 3
    .line 4
    if-eqz p3, :cond_4

    .line 5
    .line 6
    if-eqz p5, :cond_3

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getPBES2Salt()Lcom/nimbusds/jose/util/Base64URL;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eqz v1, :cond_2

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getPBES2Salt()Lcom/nimbusds/jose/util/Base64URL;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Lcom/nimbusds/jose/util/Base64;->decode()[B

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getPBES2Count()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const/4 v3, 0x1

    .line 27
    if-lt v2, v3, :cond_1

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getPBES2Count()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    const v3, 0xf4240

    .line 34
    .line 35
    .line 36
    if-gt v2, v3, :cond_0

    .line 37
    .line 38
    iget-object v0, p0, Lcom/nimbusds/jose/crypto/PasswordBasedDecrypter;->critPolicy:Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;

    .line 39
    .line 40
    invoke-virtual {v0, p1}, Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;->ensureHeaderPasses(Lcom/nimbusds/jose/JWEHeader;)V

    .line 41
    .line 42
    .line 43
    invoke-static {p1}, Lcom/nimbusds/jose/crypto/impl/JWEHeaderValidation;->getAlgorithmAndEnsureNotNull(Lcom/nimbusds/jose/JWEHeader;)Lcom/nimbusds/jose/JWEAlgorithm;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {v0, v1}, Lcom/nimbusds/jose/crypto/impl/PBKDF2;->formatSalt(Lcom/nimbusds/jose/JWEAlgorithm;[B)[B

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/impl/BaseJWEProvider;->getJCAContext()Lcom/nimbusds/jose/jca/JWEJCAContext;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v3}, Lcom/nimbusds/jose/jca/JWEJCAContext;->getMACProvider()Ljava/security/Provider;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-static {v0, v3}, Lcom/nimbusds/jose/crypto/impl/PRFParams;->resolve(Lcom/nimbusds/jose/JWEAlgorithm;Ljava/security/Provider;)Lcom/nimbusds/jose/crypto/impl/PRFParams;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/impl/PasswordBasedCryptoProvider;->getPassword()[B

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/impl/BaseJWEProvider;->getJCAContext()Lcom/nimbusds/jose/jca/JWEJCAContext;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-virtual {v4}, Lcom/nimbusds/jose/jca/JCAContext;->getProvider()Ljava/security/Provider;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    invoke-static {v3, v1, v2, v0, v4}, Lcom/nimbusds/jose/crypto/impl/PBKDF2;->deriveKey([B[BILcom/nimbusds/jose/crypto/impl/PRFParams;Ljava/security/Provider;)Ljavax/crypto/SecretKey;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {p2}, Lcom/nimbusds/jose/util/Base64;->decode()[B

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/impl/BaseJWEProvider;->getJCAContext()Lcom/nimbusds/jose/jca/JWEJCAContext;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {v2}, Lcom/nimbusds/jose/jca/JWEJCAContext;->getKeyEncryptionProvider()Ljava/security/Provider;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-static {v0, v1, v2}, Lcom/nimbusds/jose/crypto/impl/AESKW;->unwrapCEK(Ljavax/crypto/SecretKey;[BLjava/security/Provider;)Ljavax/crypto/SecretKey;

    .line 92
    .line 93
    .line 94
    move-result-object v9

    .line 95
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/impl/BaseJWEProvider;->getJCAContext()Lcom/nimbusds/jose/jca/JWEJCAContext;

    .line 96
    .line 97
    .line 98
    move-result-object v10

    .line 99
    move-object v3, p1

    .line 100
    move-object v5, p2

    .line 101
    move-object v6, p3

    .line 102
    move-object v7, p4

    .line 103
    move-object/from16 v8, p5

    .line 104
    .line 105
    move-object/from16 v4, p6

    .line 106
    .line 107
    invoke-static/range {v3 .. v10}, Lcom/nimbusds/jose/crypto/impl/ContentCryptoProvider;->decrypt(Lcom/nimbusds/jose/JWEHeader;[BLcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljavax/crypto/SecretKey;Lcom/nimbusds/jose/jca/JWEJCAContext;)[B

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    return-object p0

    .line 112
    :cond_0
    const-string p0, "The JWE p2c header exceeds the maximum allowed 1000000 count"

    .line 113
    .line 114
    invoke-static {p0}, Lf6;->j(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    return-object v0

    .line 118
    :cond_1
    const-string p0, "Missing JWE p2c header parameter"

    .line 119
    .line 120
    invoke-static {p0}, Lf6;->j(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    return-object v0

    .line 124
    :cond_2
    const-string p0, "Missing JWE p2s header parameter"

    .line 125
    .line 126
    invoke-static {p0}, Lf6;->j(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    return-object v0

    .line 130
    :cond_3
    const-string p0, "Missing JWE authentication tag"

    .line 131
    .line 132
    invoke-static {p0}, Lf6;->j(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    return-object v0

    .line 136
    :cond_4
    const-string p0, "Missing JWE initialization vector (IV)"

    .line 137
    .line 138
    invoke-static {p0}, Lf6;->j(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    return-object v0

    .line 142
    :cond_5
    const-string p0, "Missing JWE encrypted key"

    .line 143
    .line 144
    invoke-static {p0}, Lf6;->j(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    return-object v0
.end method

.method public getDeferredCriticalHeaderParams()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/crypto/PasswordBasedDecrypter;->critPolicy:Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;->getProcessedCriticalHeaderParams()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getProcessedCriticalHeaderParams()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/crypto/PasswordBasedDecrypter;->critPolicy:Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;->getProcessedCriticalHeaderParams()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
