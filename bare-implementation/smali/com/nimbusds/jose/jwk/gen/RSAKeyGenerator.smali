.class public Lcom/nimbusds/jose/jwk/gen/RSAKeyGenerator;
.super Lcom/nimbusds/jose/jwk/gen/JWKGenerator;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nimbusds/jose/jwk/gen/JWKGenerator<",
        "Lcom/nimbusds/jose/jwk/RSAKey;",
        ">;"
    }
.end annotation


# static fields
.field public static final MIN_KEY_SIZE_BITS:I = 0x800


# instance fields
.field private final size:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1, v0}, Lcom/nimbusds/jose/jwk/gen/RSAKeyGenerator;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/nimbusds/jose/jwk/gen/JWKGenerator;-><init>()V

    .line 2
    .line 3
    .line 4
    if-nez p2, :cond_1

    .line 5
    .line 6
    const/16 p2, 0x800

    .line 7
    .line 8
    if-lt p1, p2, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const-string p0, "The key size must be at least 2048 bits"

    .line 12
    .line 13
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    throw p0

    .line 18
    :cond_1
    :goto_0
    iput p1, p0, Lcom/nimbusds/jose/jwk/gen/RSAKeyGenerator;->size:I

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public bridge synthetic generate()Lcom/nimbusds/jose/jwk/JWK;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 136
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/gen/RSAKeyGenerator;->generate()Lcom/nimbusds/jose/jwk/RSAKey;

    move-result-object p0

    return-object p0
.end method

.method public generate()Lcom/nimbusds/jose/jwk/RSAKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/gen/JWKGenerator;->keyStore:Ljava/security/KeyStore;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    const-string v1, "RSA"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_1
    invoke-virtual {v0}, Ljava/security/KeyStore;->getProvider()Ljava/security/Provider;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v1, v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyPairGenerator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/gen/JWKGenerator;->provider:Ljava/security/Provider;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-static {v1, v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyPairGenerator;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-static {v1}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    :goto_0
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/gen/JWKGenerator;->secureRandom:Ljava/security/SecureRandom;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    .line 30
    .line 31
    iget v2, p0, Lcom/nimbusds/jose/jwk/gen/RSAKeyGenerator;->size:I

    .line 32
    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    :try_start_2
    invoke-virtual {v0, v2, v1}, Ljava/security/KeyPairGenerator;->initialize(ILjava/security/SecureRandom;)V

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_2
    invoke-virtual {v0, v2}, Ljava/security/KeyPairGenerator;->initialize(I)V
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_0

    .line 40
    .line 41
    .line 42
    :goto_1
    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    new-instance v1, Lcom/nimbusds/jose/jwk/RSAKey$Builder;

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    check-cast v2, Ljava/security/interfaces/RSAPublicKey;

    .line 53
    .line 54
    invoke-direct {v1, v2}, Lcom/nimbusds/jose/jwk/RSAKey$Builder;-><init>(Ljava/security/interfaces/RSAPublicKey;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v1, v0}, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->privateKey(Ljava/security/PrivateKey;)Lcom/nimbusds/jose/jwk/RSAKey$Builder;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/gen/JWKGenerator;->use:Lcom/nimbusds/jose/jwk/KeyUse;

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->keyUse(Lcom/nimbusds/jose/jwk/KeyUse;)Lcom/nimbusds/jose/jwk/RSAKey$Builder;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/gen/JWKGenerator;->ops:Ljava/util/Set;

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->keyOperations(Ljava/util/Set;)Lcom/nimbusds/jose/jwk/RSAKey$Builder;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/gen/JWKGenerator;->alg:Lcom/nimbusds/jose/Algorithm;

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->algorithm(Lcom/nimbusds/jose/Algorithm;)Lcom/nimbusds/jose/jwk/RSAKey$Builder;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/gen/JWKGenerator;->exp:Ljava/util/Date;

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->expirationTime(Ljava/util/Date;)Lcom/nimbusds/jose/jwk/RSAKey$Builder;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/gen/JWKGenerator;->nbf:Ljava/util/Date;

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->notBeforeTime(Ljava/util/Date;)Lcom/nimbusds/jose/jwk/RSAKey$Builder;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/gen/JWKGenerator;->iat:Ljava/util/Date;

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->issueTime(Ljava/util/Date;)Lcom/nimbusds/jose/jwk/RSAKey$Builder;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/gen/JWKGenerator;->keyStore:Ljava/security/KeyStore;

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->keyStore(Ljava/security/KeyStore;)Lcom/nimbusds/jose/jwk/RSAKey$Builder;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    iget-boolean v1, p0, Lcom/nimbusds/jose/jwk/gen/JWKGenerator;->tprKid:Z

    .line 108
    .line 109
    if-eqz v1, :cond_3

    .line 110
    .line 111
    invoke-virtual {v0}, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->keyIDFromThumbprint()Lcom/nimbusds/jose/jwk/RSAKey$Builder;

    .line 112
    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_3
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/gen/JWKGenerator;->kid:Ljava/lang/String;

    .line 116
    .line 117
    invoke-virtual {v0, p0}, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->keyID(Ljava/lang/String;)Lcom/nimbusds/jose/jwk/RSAKey$Builder;

    .line 118
    .line 119
    .line 120
    :goto_2
    invoke-virtual {v0}, Lcom/nimbusds/jose/jwk/RSAKey$Builder;->build()Lcom/nimbusds/jose/jwk/RSAKey;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    return-object p0

    .line 125
    :catch_0
    move-exception p0

    .line 126
    new-instance v0, Lcom/nimbusds/jose/JOSEException;

    .line 127
    .line 128
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-direct {v0, v1, p0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 133
    .line 134
    .line 135
    throw v0
.end method
