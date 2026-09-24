.class public Lcom/nimbusds/jose/crypto/MultiDecrypter;
.super Lcom/nimbusds/jose/crypto/impl/MultiCryptoProvider;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/nimbusds/jose/JWEDecrypter;
.implements Lcom/nimbusds/jose/CriticalHeaderParamsAware;


# annotations
.annotation runtime Lcom/nimbusds/jose/shaded/jcip/ThreadSafe;
.end annotation


# instance fields
.field private final critPolicy:Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;

.field private final jwk:Lcom/nimbusds/jose/jwk/JWK;

.field private final kid:Ljava/lang/String;

.field private final thumbprint:Lcom/nimbusds/jose/util/Base64URL;

.field private final x5c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/util/Base64;",
            ">;"
        }
    .end annotation
.end field

.field private final x5t:Lcom/nimbusds/jose/util/Base64URL;

.field private final x5t256:Lcom/nimbusds/jose/util/Base64URL;

.field private final x5u:Ljava/net/URI;


# direct methods
.method public constructor <init>(Lcom/nimbusds/jose/jwk/JWK;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;,
            Lcom/nimbusds/jose/KeyLengthException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, v0}, Lcom/nimbusds/jose/crypto/MultiDecrypter;-><init>(Lcom/nimbusds/jose/jwk/JWK;Ljava/util/Set;)V

    return-void
.end method

.method public constructor <init>(Lcom/nimbusds/jose/jwk/JWK;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/jwk/JWK;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;,
            Lcom/nimbusds/jose/KeyLengthException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/nimbusds/jose/crypto/impl/MultiCryptoProvider;-><init>(Ljavax/crypto/SecretKey;)V

    .line 3
    .line 4
    .line 5
    new-instance v1, Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;

    .line 6
    .line 7
    invoke-direct {v1}, Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v1, p0, Lcom/nimbusds/jose/crypto/MultiDecrypter;->critPolicy:Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iput-object p1, p0, Lcom/nimbusds/jose/crypto/MultiDecrypter;->jwk:Lcom/nimbusds/jose/jwk/JWK;

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getKeyID()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/nimbusds/jose/crypto/MultiDecrypter;->kid:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getX509CertChain()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/nimbusds/jose/crypto/MultiDecrypter;->x5c:Ljava/util/List;

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getX509CertURL()Ljava/net/URI;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/nimbusds/jose/crypto/MultiDecrypter;->x5u:Ljava/net/URI;

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getX509CertThumbprint()Lcom/nimbusds/jose/util/Base64URL;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Lcom/nimbusds/jose/crypto/MultiDecrypter;->x5t:Lcom/nimbusds/jose/util/Base64URL;

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getX509CertSHA256Thumbprint()Lcom/nimbusds/jose/util/Base64URL;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iput-object v0, p0, Lcom/nimbusds/jose/crypto/MultiDecrypter;->x5t256:Lcom/nimbusds/jose/util/Base64URL;

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->computeThumbprint()Lcom/nimbusds/jose/util/Base64URL;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iput-object p1, p0, Lcom/nimbusds/jose/crypto/MultiDecrypter;->thumbprint:Lcom/nimbusds/jose/util/Base64URL;

    .line 51
    .line 52
    invoke-virtual {v1, p2}, Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;->setDeferredCriticalHeaderParams(Ljava/util/Set;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_0
    const-string p0, "The private key (JWK) must not be null"

    .line 57
    .line 58
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw v0
.end method

.method private jwkMatched(Lcom/nimbusds/jose/JWEHeader;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jose/crypto/MultiDecrypter;->thumbprint:Lcom/nimbusds/jose/util/Base64URL;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/nimbusds/jose/util/Base64;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getKeyID()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x1

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    return v1

    .line 19
    :cond_0
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getJWK()Lcom/nimbusds/jose/jwk/JWK;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object v2, p0, Lcom/nimbusds/jose/crypto/MultiDecrypter;->thumbprint:Lcom/nimbusds/jose/util/Base64URL;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/nimbusds/jose/jwk/JWK;->computeThumbprint()Lcom/nimbusds/jose/util/Base64URL;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v2, v0}, Lcom/nimbusds/jose/util/Base64URL;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    return v1

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/nimbusds/jose/crypto/MultiDecrypter;->x5u:Ljava/net/URI;

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getX509CertURL()Ljava/net/URI;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v0, v2}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    return v1

    .line 53
    :cond_2
    iget-object v0, p0, Lcom/nimbusds/jose/crypto/MultiDecrypter;->x5t:Lcom/nimbusds/jose/util/Base64URL;

    .line 54
    .line 55
    if-eqz v0, :cond_3

    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getX509CertThumbprint()Lcom/nimbusds/jose/util/Base64URL;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v0, v2}, Lcom/nimbusds/jose/util/Base64URL;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_3

    .line 66
    .line 67
    return v1

    .line 68
    :cond_3
    iget-object v0, p0, Lcom/nimbusds/jose/crypto/MultiDecrypter;->x5t256:Lcom/nimbusds/jose/util/Base64URL;

    .line 69
    .line 70
    if-eqz v0, :cond_4

    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getX509CertSHA256Thumbprint()Lcom/nimbusds/jose/util/Base64URL;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {v0, v2}, Lcom/nimbusds/jose/util/Base64URL;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_4

    .line 81
    .line 82
    return v1

    .line 83
    :cond_4
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getX509CertChain()Ljava/util/List;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    iget-object v2, p0, Lcom/nimbusds/jose/crypto/MultiDecrypter;->x5c:Ljava/util/List;

    .line 88
    .line 89
    if-eqz v2, :cond_5

    .line 90
    .line 91
    if-eqz v0, :cond_5

    .line 92
    .line 93
    invoke-interface {v2, v0}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    if-eqz v2, :cond_5

    .line 98
    .line 99
    iget-object v2, p0, Lcom/nimbusds/jose/crypto/MultiDecrypter;->x5c:Ljava/util/List;

    .line 100
    .line 101
    invoke-interface {v0, v2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-eqz v0, :cond_5

    .line 106
    .line 107
    return v1

    .line 108
    :cond_5
    iget-object p0, p0, Lcom/nimbusds/jose/crypto/MultiDecrypter;->kid:Ljava/lang/String;

    .line 109
    .line 110
    if-eqz p0, :cond_6

    .line 111
    .line 112
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getKeyID()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result p0

    .line 120
    if-eqz p0, :cond_6

    .line 121
    .line 122
    return v1

    .line 123
    :cond_6
    const/4 p0, 0x0

    .line 124
    return p0
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

    .line 299
    invoke-static {p1}, Lcom/nimbusds/jose/crypto/impl/AAD;->compute(Lcom/nimbusds/jose/JWEHeader;)[B

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/nimbusds/jose/crypto/MultiDecrypter;->decrypt(Lcom/nimbusds/jose/JWEHeader;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;[B)[B

    move-result-object p0

    return-object p0
.end method

.method public decrypt(Lcom/nimbusds/jose/JWEHeader;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;[B)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    const/4 v1, 0x0

    .line 2
    if-eqz p3, :cond_a

    .line 3
    .line 4
    if-eqz p5, :cond_9

    .line 5
    .line 6
    if-eqz p6, :cond_8

    .line 7
    .line 8
    iget-object v0, p0, Lcom/nimbusds/jose/crypto/MultiDecrypter;->jwk:Lcom/nimbusds/jose/jwk/JWK;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/nimbusds/jose/jwk/JWK;->getKeyType()Lcom/nimbusds/jose/jwk/KeyType;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    iget-object v0, p0, Lcom/nimbusds/jose/crypto/MultiDecrypter;->critPolicy:Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;->getDeferredCriticalHeaderParams()Ljava/util/Set;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    :try_start_0
    invoke-virtual {p2}, Lcom/nimbusds/jose/util/Base64;->decodeToString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0}, Lcom/nimbusds/jose/util/JSONObjectUtils;->parse(Ljava/lang/String;)Ljava/util/Map;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v4, "recipients"

    .line 29
    .line 30
    invoke-static {v0, v4}, Lcom/nimbusds/jose/util/JSONObjectUtils;->getJSONArray(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    move-object v4, v1

    .line 39
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-eqz v5, :cond_1

    .line 44
    .line 45
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 49
    :try_start_1
    check-cast v4, Ljava/util/Map;

    .line 50
    .line 51
    invoke-static {v4}, Lcom/nimbusds/jose/JWEObjectJSON$Recipient;->parse(Ljava/util/Map;)Lcom/nimbusds/jose/JWEObjectJSON$Recipient;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    invoke-virtual {v4}, Lcom/nimbusds/jose/JWEObjectJSON$Recipient;->getUnprotectedHeader()Lcom/nimbusds/jose/UnprotectedHeader;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    invoke-virtual {p1, v5}, Lcom/nimbusds/jose/Header;->join(Lcom/nimbusds/jose/UnprotectedHeader;)Lcom/nimbusds/jose/Header;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    check-cast v5, Lcom/nimbusds/jose/JWEHeader;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 64
    .line 65
    :try_start_2
    invoke-direct {p0, v5}, Lcom/nimbusds/jose/crypto/MultiDecrypter;->jwkMatched(Lcom/nimbusds/jose/JWEHeader;)Z

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    if-eqz v6, :cond_0

    .line 70
    .line 71
    move-object p1, v5

    .line 72
    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    new-instance v4, Lcom/nimbusds/jose/JOSEException;

    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-direct {v4, v0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 84
    :cond_1
    move-object p1, v1

    .line 85
    goto :goto_0

    .line 86
    :catch_1
    new-instance v4, Lcom/nimbusds/jose/JWEObjectJSON$Recipient;

    .line 87
    .line 88
    invoke-direct {v4, v1, p2}, Lcom/nimbusds/jose/JWEObjectJSON$Recipient;-><init>(Lcom/nimbusds/jose/UnprotectedHeader;Lcom/nimbusds/jose/util/Base64URL;)V

    .line 89
    .line 90
    .line 91
    :goto_0
    if-eqz p1, :cond_7

    .line 92
    .line 93
    invoke-static {p1}, Lcom/nimbusds/jose/crypto/impl/JWEHeaderValidation;->getAlgorithmAndEnsureNotNull(Lcom/nimbusds/jose/JWEHeader;)Lcom/nimbusds/jose/JWEAlgorithm;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    iget-object v0, p0, Lcom/nimbusds/jose/crypto/MultiDecrypter;->critPolicy:Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;

    .line 98
    .line 99
    invoke-virtual {v0, p1}, Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;->ensureHeaderPasses(Lcom/nimbusds/jose/JWEHeader;)V

    .line 100
    .line 101
    .line 102
    sget-object v0, Lcom/nimbusds/jose/jwk/KeyType;->RSA:Lcom/nimbusds/jose/jwk/KeyType;

    .line 103
    .line 104
    invoke-virtual {v0, v2}, Lcom/nimbusds/jose/jwk/KeyType;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-eqz v0, :cond_2

    .line 109
    .line 110
    sget-object v0, Lcom/nimbusds/jose/crypto/impl/RSACryptoProvider;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    .line 111
    .line 112
    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-eqz v0, :cond_2

    .line 117
    .line 118
    new-instance p2, Lcom/nimbusds/jose/crypto/RSADecrypter;

    .line 119
    .line 120
    iget-object p0, p0, Lcom/nimbusds/jose/crypto/MultiDecrypter;->jwk:Lcom/nimbusds/jose/jwk/JWK;

    .line 121
    .line 122
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/JWK;->toRSAKey()Lcom/nimbusds/jose/jwk/RSAKey;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/RSAKey;->toRSAPrivateKey()Ljava/security/interfaces/RSAPrivateKey;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    invoke-direct {p2, p0, v3}, Lcom/nimbusds/jose/crypto/RSADecrypter;-><init>(Ljava/security/PrivateKey;Ljava/util/Set;)V

    .line 131
    .line 132
    .line 133
    :goto_1
    move-object p0, p2

    .line 134
    goto/16 :goto_2

    .line 135
    .line 136
    :cond_2
    sget-object v0, Lcom/nimbusds/jose/jwk/KeyType;->EC:Lcom/nimbusds/jose/jwk/KeyType;

    .line 137
    .line 138
    invoke-virtual {v0, v2}, Lcom/nimbusds/jose/jwk/KeyType;->equals(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-eqz v0, :cond_3

    .line 143
    .line 144
    sget-object v0, Lcom/nimbusds/jose/crypto/impl/ECDHCryptoProvider;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    .line 145
    .line 146
    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    if-eqz v0, :cond_3

    .line 151
    .line 152
    new-instance p2, Lcom/nimbusds/jose/crypto/ECDHDecrypter;

    .line 153
    .line 154
    iget-object p0, p0, Lcom/nimbusds/jose/crypto/MultiDecrypter;->jwk:Lcom/nimbusds/jose/jwk/JWK;

    .line 155
    .line 156
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/JWK;->toECKey()Lcom/nimbusds/jose/jwk/ECKey;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/ECKey;->toECPrivateKey()Ljava/security/interfaces/ECPrivateKey;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    invoke-direct {p2, p0, v3}, Lcom/nimbusds/jose/crypto/ECDHDecrypter;-><init>(Ljava/security/interfaces/ECPrivateKey;Ljava/util/Set;)V

    .line 165
    .line 166
    .line 167
    goto :goto_1

    .line 168
    :cond_3
    sget-object v0, Lcom/nimbusds/jose/jwk/KeyType;->OCT:Lcom/nimbusds/jose/jwk/KeyType;

    .line 169
    .line 170
    invoke-virtual {v0, v2}, Lcom/nimbusds/jose/jwk/KeyType;->equals(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v5

    .line 174
    const-string v6, "AES"

    .line 175
    .line 176
    if-eqz v5, :cond_4

    .line 177
    .line 178
    sget-object v5, Lcom/nimbusds/jose/crypto/impl/AESCryptoProvider;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    .line 179
    .line 180
    invoke-interface {v5, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v5

    .line 184
    if-eqz v5, :cond_4

    .line 185
    .line 186
    new-instance p2, Lcom/nimbusds/jose/crypto/AESDecrypter;

    .line 187
    .line 188
    iget-object p0, p0, Lcom/nimbusds/jose/crypto/MultiDecrypter;->jwk:Lcom/nimbusds/jose/jwk/JWK;

    .line 189
    .line 190
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/JWK;->toOctetSequenceKey()Lcom/nimbusds/jose/jwk/OctetSequenceKey;

    .line 191
    .line 192
    .line 193
    move-result-object p0

    .line 194
    invoke-virtual {p0, v6}, Lcom/nimbusds/jose/jwk/OctetSequenceKey;->toSecretKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    .line 195
    .line 196
    .line 197
    move-result-object p0

    .line 198
    invoke-direct {p2, p0, v3}, Lcom/nimbusds/jose/crypto/AESDecrypter;-><init>(Ljavax/crypto/SecretKey;Ljava/util/Set;)V

    .line 199
    .line 200
    .line 201
    goto :goto_1

    .line 202
    :cond_4
    invoke-virtual {v0, v2}, Lcom/nimbusds/jose/jwk/KeyType;->equals(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    if-eqz v0, :cond_5

    .line 207
    .line 208
    sget-object v0, Lcom/nimbusds/jose/crypto/impl/DirectCryptoProvider;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    .line 209
    .line 210
    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    if-eqz v0, :cond_5

    .line 215
    .line 216
    new-instance p2, Lcom/nimbusds/jose/crypto/DirectDecrypter;

    .line 217
    .line 218
    iget-object p0, p0, Lcom/nimbusds/jose/crypto/MultiDecrypter;->jwk:Lcom/nimbusds/jose/jwk/JWK;

    .line 219
    .line 220
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/JWK;->toOctetSequenceKey()Lcom/nimbusds/jose/jwk/OctetSequenceKey;

    .line 221
    .line 222
    .line 223
    move-result-object p0

    .line 224
    invoke-virtual {p0, v6}, Lcom/nimbusds/jose/jwk/OctetSequenceKey;->toSecretKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    .line 225
    .line 226
    .line 227
    move-result-object p0

    .line 228
    invoke-direct {p2, p0, v3}, Lcom/nimbusds/jose/crypto/DirectDecrypter;-><init>(Ljavax/crypto/SecretKey;Ljava/util/Set;)V

    .line 229
    .line 230
    .line 231
    goto :goto_1

    .line 232
    :cond_5
    sget-object v0, Lcom/nimbusds/jose/jwk/KeyType;->OKP:Lcom/nimbusds/jose/jwk/KeyType;

    .line 233
    .line 234
    invoke-virtual {v0, v2}, Lcom/nimbusds/jose/jwk/KeyType;->equals(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    move-result v0

    .line 238
    if-eqz v0, :cond_6

    .line 239
    .line 240
    sget-object v0, Lcom/nimbusds/jose/crypto/impl/ECDHCryptoProvider;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    .line 241
    .line 242
    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    move-result p2

    .line 246
    if-eqz p2, :cond_6

    .line 247
    .line 248
    new-instance p2, Lcom/nimbusds/jose/crypto/X25519Decrypter;

    .line 249
    .line 250
    iget-object p0, p0, Lcom/nimbusds/jose/crypto/MultiDecrypter;->jwk:Lcom/nimbusds/jose/jwk/JWK;

    .line 251
    .line 252
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/JWK;->toOctetKeyPair()Lcom/nimbusds/jose/jwk/OctetKeyPair;

    .line 253
    .line 254
    .line 255
    move-result-object p0

    .line 256
    invoke-direct {p2, p0, v3}, Lcom/nimbusds/jose/crypto/X25519Decrypter;-><init>(Lcom/nimbusds/jose/jwk/OctetKeyPair;Ljava/util/Set;)V

    .line 257
    .line 258
    .line 259
    goto :goto_1

    .line 260
    :goto_2
    invoke-virtual {v4}, Lcom/nimbusds/jose/JWEObjectJSON$Recipient;->getEncryptedKey()Lcom/nimbusds/jose/util/Base64URL;

    .line 261
    .line 262
    .line 263
    move-result-object p2

    .line 264
    invoke-interface/range {p0 .. p6}, Lcom/nimbusds/jose/JWEDecrypter;->decrypt(Lcom/nimbusds/jose/JWEHeader;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;[B)[B

    .line 265
    .line 266
    .line 267
    move-result-object p0

    .line 268
    return-object p0

    .line 269
    :cond_6
    const-string p0, "Unsupported algorithm"

    .line 270
    .line 271
    invoke-static {p0}, Lf6;->j(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    return-object v1

    .line 275
    :cond_7
    const-string p0, "No recipient found"

    .line 276
    .line 277
    invoke-static {p0}, Lf6;->j(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    return-object v1

    .line 281
    :cond_8
    const-string p0, "Missing JWE additional authenticated data (AAD)"

    .line 282
    .line 283
    invoke-static {p0}, Lf6;->j(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    return-object v1

    .line 287
    :cond_9
    const-string p0, "Missing JWE authentication tag"

    .line 288
    .line 289
    invoke-static {p0}, Lf6;->j(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    return-object v1

    .line 293
    :cond_a
    const-string p0, "Unexpected present JWE initialization vector (IV)"

    .line 294
    .line 295
    invoke-static {p0}, Lf6;->j(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    return-object v1
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
    iget-object p0, p0, Lcom/nimbusds/jose/crypto/MultiDecrypter;->critPolicy:Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;

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
    iget-object p0, p0, Lcom/nimbusds/jose/crypto/MultiDecrypter;->critPolicy:Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;

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
