.class public Lcom/nimbusds/jose/jwk/gen/ECKeyGenerator;
.super Lcom/nimbusds/jose/jwk/gen/JWKGenerator;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nimbusds/jose/jwk/gen/JWKGenerator<",
        "Lcom/nimbusds/jose/jwk/ECKey;",
        ">;"
    }
.end annotation


# instance fields
.field private final crv:Lcom/nimbusds/jose/jwk/Curve;


# direct methods
.method public constructor <init>(Lcom/nimbusds/jose/jwk/Curve;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/nimbusds/jose/jwk/gen/JWKGenerator;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/gen/ECKeyGenerator;->crv:Lcom/nimbusds/jose/jwk/Curve;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public generate()Lcom/nimbusds/jose/jwk/ECKey;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/gen/ECKeyGenerator;->crv:Lcom/nimbusds/jose/jwk/Curve;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/nimbusds/jose/jwk/Curve;->toECParameterSpec()Ljava/security/spec/ECParameterSpec;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/gen/JWKGenerator;->keyStore:Ljava/security/KeyStore;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    const-string v2, "EC"

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    :try_start_1
    invoke-virtual {v1}, Ljava/security/KeyStore;->getProvider()Ljava/security/Provider;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v2, v1}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyPairGenerator;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/gen/JWKGenerator;->provider:Ljava/security/Provider;

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-static {v2, v1}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyPairGenerator;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-static {v2}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    :goto_0
    iget-object v2, p0, Lcom/nimbusds/jose/jwk/gen/JWKGenerator;->secureRandom:Ljava/security/SecureRandom;

    .line 36
    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    invoke-virtual {v1, v0, v2}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    invoke-virtual {v1, v0}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_0

    .line 44
    .line 45
    .line 46
    :goto_1
    invoke-virtual {v1}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    new-instance v1, Lcom/nimbusds/jose/jwk/ECKey$Builder;

    .line 51
    .line 52
    iget-object v2, p0, Lcom/nimbusds/jose/jwk/gen/ECKeyGenerator;->crv:Lcom/nimbusds/jose/jwk/Curve;

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    check-cast v3, Ljava/security/interfaces/ECPublicKey;

    .line 59
    .line 60
    invoke-direct {v1, v2, v3}, Lcom/nimbusds/jose/jwk/ECKey$Builder;-><init>(Lcom/nimbusds/jose/jwk/Curve;Ljava/security/interfaces/ECPublicKey;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v1, v0}, Lcom/nimbusds/jose/jwk/ECKey$Builder;->privateKey(Ljava/security/PrivateKey;)Lcom/nimbusds/jose/jwk/ECKey$Builder;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/gen/JWKGenerator;->use:Lcom/nimbusds/jose/jwk/KeyUse;

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/jwk/ECKey$Builder;->keyUse(Lcom/nimbusds/jose/jwk/KeyUse;)Lcom/nimbusds/jose/jwk/ECKey$Builder;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/gen/JWKGenerator;->ops:Ljava/util/Set;

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/jwk/ECKey$Builder;->keyOperations(Ljava/util/Set;)Lcom/nimbusds/jose/jwk/ECKey$Builder;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/gen/JWKGenerator;->alg:Lcom/nimbusds/jose/Algorithm;

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/jwk/ECKey$Builder;->algorithm(Lcom/nimbusds/jose/Algorithm;)Lcom/nimbusds/jose/jwk/ECKey$Builder;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/gen/JWKGenerator;->exp:Ljava/util/Date;

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/jwk/ECKey$Builder;->expirationTime(Ljava/util/Date;)Lcom/nimbusds/jose/jwk/ECKey$Builder;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/gen/JWKGenerator;->nbf:Ljava/util/Date;

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/jwk/ECKey$Builder;->notBeforeTime(Ljava/util/Date;)Lcom/nimbusds/jose/jwk/ECKey$Builder;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/gen/JWKGenerator;->iat:Ljava/util/Date;

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/jwk/ECKey$Builder;->issueTime(Ljava/util/Date;)Lcom/nimbusds/jose/jwk/ECKey$Builder;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/gen/JWKGenerator;->keyStore:Ljava/security/KeyStore;

    .line 108
    .line 109
    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/jwk/ECKey$Builder;->keyStore(Ljava/security/KeyStore;)Lcom/nimbusds/jose/jwk/ECKey$Builder;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    iget-boolean v1, p0, Lcom/nimbusds/jose/jwk/gen/JWKGenerator;->tprKid:Z

    .line 114
    .line 115
    if-eqz v1, :cond_3

    .line 116
    .line 117
    invoke-virtual {v0}, Lcom/nimbusds/jose/jwk/ECKey$Builder;->keyIDFromThumbprint()Lcom/nimbusds/jose/jwk/ECKey$Builder;

    .line 118
    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_3
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/gen/JWKGenerator;->kid:Ljava/lang/String;

    .line 122
    .line 123
    invoke-virtual {v0, p0}, Lcom/nimbusds/jose/jwk/ECKey$Builder;->keyID(Ljava/lang/String;)Lcom/nimbusds/jose/jwk/ECKey$Builder;

    .line 124
    .line 125
    .line 126
    :goto_2
    invoke-virtual {v0}, Lcom/nimbusds/jose/jwk/ECKey$Builder;->build()Lcom/nimbusds/jose/jwk/ECKey;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    return-object p0

    .line 131
    :catch_0
    move-exception p0

    .line 132
    new-instance v0, Lcom/nimbusds/jose/JOSEException;

    .line 133
    .line 134
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-direct {v0, v1, p0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 139
    .line 140
    .line 141
    throw v0
.end method

.method public bridge synthetic generate()Lcom/nimbusds/jose/jwk/JWK;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 142
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/gen/ECKeyGenerator;->generate()Lcom/nimbusds/jose/jwk/ECKey;

    move-result-object p0

    return-object p0
.end method
