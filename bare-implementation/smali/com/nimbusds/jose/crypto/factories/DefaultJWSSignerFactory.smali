.class public Lcom/nimbusds/jose/crypto/factories/DefaultJWSSignerFactory;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/nimbusds/jose/produce/JWSSignerFactory;


# static fields
.field public static final SUPPORTED_ALGORITHMS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/JWSAlgorithm;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final jcaContext:Lcom/nimbusds/jose/jca/JCAContext;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/nimbusds/jose/crypto/impl/MACProvider;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    .line 7
    .line 8
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 9
    .line 10
    .line 11
    sget-object v1, Lcom/nimbusds/jose/crypto/impl/RSASSAProvider;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    .line 12
    .line 13
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 14
    .line 15
    .line 16
    sget-object v1, Lcom/nimbusds/jose/crypto/impl/ECDSAProvider;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    .line 17
    .line 18
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 19
    .line 20
    .line 21
    sget-object v1, Lcom/nimbusds/jose/crypto/impl/EdDSAProvider;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    .line 22
    .line 23
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sput-object v0, Lcom/nimbusds/jose/crypto/factories/DefaultJWSSignerFactory;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    .line 31
    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/nimbusds/jose/jca/JCAContext;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/nimbusds/jose/jca/JCAContext;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/nimbusds/jose/crypto/factories/DefaultJWSSignerFactory;->jcaContext:Lcom/nimbusds/jose/jca/JCAContext;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public createJWSSigner(Lcom/nimbusds/jose/jwk/JWK;)Lcom/nimbusds/jose/JWSSigner;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 177
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->isPrivate()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 178
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getKeyUse()Lcom/nimbusds/jose/jwk/KeyUse;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/nimbusds/jose/jwk/KeyUse;->SIGNATURE:Lcom/nimbusds/jose/jwk/KeyUse;

    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getKeyUse()Lcom/nimbusds/jose/jwk/KeyUse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/jwk/KeyUse;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 179
    :cond_0
    new-instance p0, Lcom/nimbusds/jose/jwk/JWKException;

    const-string p1, "The JWK use must be sig (signature) or unspecified"

    invoke-direct {p0, p1}, Lcom/nimbusds/jose/jwk/JWKException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 180
    :cond_1
    :goto_0
    instance-of v0, p1, Lcom/nimbusds/jose/jwk/OctetSequenceKey;

    if-eqz v0, :cond_2

    .line 181
    new-instance v0, Lcom/nimbusds/jose/crypto/MACSigner;

    check-cast p1, Lcom/nimbusds/jose/jwk/OctetSequenceKey;

    invoke-direct {v0, p1}, Lcom/nimbusds/jose/crypto/MACSigner;-><init>(Lcom/nimbusds/jose/jwk/OctetSequenceKey;)V

    goto :goto_1

    .line 182
    :cond_2
    instance-of v0, p1, Lcom/nimbusds/jose/jwk/RSAKey;

    if-eqz v0, :cond_3

    .line 183
    new-instance v0, Lcom/nimbusds/jose/crypto/RSASSASigner;

    check-cast p1, Lcom/nimbusds/jose/jwk/RSAKey;

    invoke-direct {v0, p1}, Lcom/nimbusds/jose/crypto/RSASSASigner;-><init>(Lcom/nimbusds/jose/jwk/RSAKey;)V

    goto :goto_1

    .line 184
    :cond_3
    instance-of v0, p1, Lcom/nimbusds/jose/jwk/ECKey;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/nimbusds/jose/crypto/impl/ECDSAProvider;->SUPPORTED_CURVES:Ljava/util/Set;

    move-object v1, p1

    check-cast v1, Lcom/nimbusds/jose/jwk/ECKey;

    invoke-virtual {v1}, Lcom/nimbusds/jose/jwk/ECKey;->getCurve()Lcom/nimbusds/jose/jwk/Curve;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 185
    new-instance v0, Lcom/nimbusds/jose/crypto/ECDSASigner;

    invoke-direct {v0, v1}, Lcom/nimbusds/jose/crypto/ECDSASigner;-><init>(Lcom/nimbusds/jose/jwk/ECKey;)V

    goto :goto_1

    .line 186
    :cond_4
    instance-of v0, p1, Lcom/nimbusds/jose/jwk/OctetKeyPair;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/nimbusds/jose/crypto/impl/EdDSAProvider;->SUPPORTED_CURVES:Ljava/util/Set;

    check-cast p1, Lcom/nimbusds/jose/jwk/OctetKeyPair;

    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/OctetKeyPair;->getCurve()Lcom/nimbusds/jose/jwk/Curve;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 187
    new-instance v0, Lcom/nimbusds/jose/crypto/Ed25519Signer;

    invoke-direct {v0, p1}, Lcom/nimbusds/jose/crypto/Ed25519Signer;-><init>(Lcom/nimbusds/jose/jwk/OctetKeyPair;)V

    .line 188
    :goto_1
    invoke-interface {v0}, Lcom/nimbusds/jose/jca/JCAAware;->getJCAContext()Lcom/nimbusds/jose/jca/JCAContext;

    move-result-object p1

    iget-object v1, p0, Lcom/nimbusds/jose/crypto/factories/DefaultJWSSignerFactory;->jcaContext:Lcom/nimbusds/jose/jca/JCAContext;

    invoke-virtual {v1}, Lcom/nimbusds/jose/jca/JCAContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/nimbusds/jose/jca/JCAContext;->setSecureRandom(Ljava/security/SecureRandom;)V

    .line 189
    invoke-interface {v0}, Lcom/nimbusds/jose/jca/JCAAware;->getJCAContext()Lcom/nimbusds/jose/jca/JCAContext;

    move-result-object p1

    iget-object p0, p0, Lcom/nimbusds/jose/crypto/factories/DefaultJWSSignerFactory;->jcaContext:Lcom/nimbusds/jose/jca/JCAContext;

    invoke-virtual {p0}, Lcom/nimbusds/jose/jca/JCAContext;->getProvider()Ljava/security/Provider;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/nimbusds/jose/jca/JCAContext;->setProvider(Ljava/security/Provider;)V

    return-object v0

    .line 190
    :cond_5
    const-string p0, "Unsupported JWK type and / or curve"

    invoke-static {p0}, Lf6;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 191
    :cond_6
    invoke-static {}, Lcom/nimbusds/jose/jwk/JWKException;->expectedPrivate()Lcom/nimbusds/jose/jwk/JWKException;

    move-result-object p0

    throw p0
.end method

.method public createJWSSigner(Lcom/nimbusds/jose/jwk/JWK;Lcom/nimbusds/jose/JWSAlgorithm;)Lcom/nimbusds/jose/JWSSigner;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->isPrivate()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_6

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getKeyUse()Lcom/nimbusds/jose/jwk/KeyUse;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    sget-object v0, Lcom/nimbusds/jose/jwk/KeyUse;->SIGNATURE:Lcom/nimbusds/jose/jwk/KeyUse;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getKeyUse()Lcom/nimbusds/jose/jwk/KeyUse;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/jwk/KeyUse;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance p0, Lcom/nimbusds/jose/jwk/JWKException;

    .line 27
    .line 28
    const-string p1, "The JWK use must be sig (signature) or unspecified"

    .line 29
    .line 30
    invoke-direct {p0, p1}, Lcom/nimbusds/jose/jwk/JWKException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p0

    .line 34
    :cond_1
    :goto_0
    sget-object v0, Lcom/nimbusds/jose/crypto/impl/MACProvider;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    .line 35
    .line 36
    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    instance-of v0, p1, Lcom/nimbusds/jose/jwk/OctetSequenceKey;

    .line 43
    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    new-instance p2, Lcom/nimbusds/jose/crypto/MACSigner;

    .line 47
    .line 48
    check-cast p1, Lcom/nimbusds/jose/jwk/OctetSequenceKey;

    .line 49
    .line 50
    invoke-direct {p2, p1}, Lcom/nimbusds/jose/crypto/MACSigner;-><init>(Lcom/nimbusds/jose/jwk/OctetSequenceKey;)V

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    sget-object v0, Lcom/nimbusds/jose/crypto/impl/RSASSAProvider;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    .line 55
    .line 56
    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_3

    .line 61
    .line 62
    instance-of v0, p1, Lcom/nimbusds/jose/jwk/RSAKey;

    .line 63
    .line 64
    if-eqz v0, :cond_3

    .line 65
    .line 66
    new-instance p2, Lcom/nimbusds/jose/crypto/RSASSASigner;

    .line 67
    .line 68
    check-cast p1, Lcom/nimbusds/jose/jwk/RSAKey;

    .line 69
    .line 70
    invoke-direct {p2, p1}, Lcom/nimbusds/jose/crypto/RSASSASigner;-><init>(Lcom/nimbusds/jose/jwk/RSAKey;)V

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_3
    sget-object v0, Lcom/nimbusds/jose/crypto/impl/ECDSAProvider;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    .line 75
    .line 76
    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_4

    .line 81
    .line 82
    instance-of v0, p1, Lcom/nimbusds/jose/jwk/ECKey;

    .line 83
    .line 84
    if-eqz v0, :cond_4

    .line 85
    .line 86
    sget-object v0, Lcom/nimbusds/jose/crypto/impl/ECDSAProvider;->SUPPORTED_CURVES:Ljava/util/Set;

    .line 87
    .line 88
    move-object v1, p1

    .line 89
    check-cast v1, Lcom/nimbusds/jose/jwk/ECKey;

    .line 90
    .line 91
    invoke-virtual {v1}, Lcom/nimbusds/jose/jwk/ECKey;->getCurve()Lcom/nimbusds/jose/jwk/Curve;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-eqz v0, :cond_4

    .line 100
    .line 101
    new-instance p2, Lcom/nimbusds/jose/crypto/ECDSASigner;

    .line 102
    .line 103
    invoke-direct {p2, v1}, Lcom/nimbusds/jose/crypto/ECDSASigner;-><init>(Lcom/nimbusds/jose/jwk/ECKey;)V

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_4
    sget-object v0, Lcom/nimbusds/jose/crypto/impl/EdDSAProvider;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    .line 108
    .line 109
    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result p2

    .line 113
    if-eqz p2, :cond_5

    .line 114
    .line 115
    instance-of p2, p1, Lcom/nimbusds/jose/jwk/OctetKeyPair;

    .line 116
    .line 117
    if-eqz p2, :cond_5

    .line 118
    .line 119
    sget-object p2, Lcom/nimbusds/jose/crypto/impl/EdDSAProvider;->SUPPORTED_CURVES:Ljava/util/Set;

    .line 120
    .line 121
    check-cast p1, Lcom/nimbusds/jose/jwk/OctetKeyPair;

    .line 122
    .line 123
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/OctetKeyPair;->getCurve()Lcom/nimbusds/jose/jwk/Curve;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result p2

    .line 131
    if-eqz p2, :cond_5

    .line 132
    .line 133
    new-instance p2, Lcom/nimbusds/jose/crypto/Ed25519Signer;

    .line 134
    .line 135
    invoke-direct {p2, p1}, Lcom/nimbusds/jose/crypto/Ed25519Signer;-><init>(Lcom/nimbusds/jose/jwk/OctetKeyPair;)V

    .line 136
    .line 137
    .line 138
    :goto_1
    invoke-interface {p2}, Lcom/nimbusds/jose/jca/JCAAware;->getJCAContext()Lcom/nimbusds/jose/jca/JCAContext;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    iget-object v0, p0, Lcom/nimbusds/jose/crypto/factories/DefaultJWSSignerFactory;->jcaContext:Lcom/nimbusds/jose/jca/JCAContext;

    .line 143
    .line 144
    invoke-virtual {v0}, Lcom/nimbusds/jose/jca/JCAContext;->getSecureRandom()Ljava/security/SecureRandom;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-virtual {p1, v0}, Lcom/nimbusds/jose/jca/JCAContext;->setSecureRandom(Ljava/security/SecureRandom;)V

    .line 149
    .line 150
    .line 151
    invoke-interface {p2}, Lcom/nimbusds/jose/jca/JCAAware;->getJCAContext()Lcom/nimbusds/jose/jca/JCAContext;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    iget-object p0, p0, Lcom/nimbusds/jose/crypto/factories/DefaultJWSSignerFactory;->jcaContext:Lcom/nimbusds/jose/jca/JCAContext;

    .line 156
    .line 157
    invoke-virtual {p0}, Lcom/nimbusds/jose/jca/JCAContext;->getProvider()Ljava/security/Provider;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    invoke-virtual {p1, p0}, Lcom/nimbusds/jose/jca/JCAContext;->setProvider(Ljava/security/Provider;)V

    .line 162
    .line 163
    .line 164
    return-object p2

    .line 165
    :cond_5
    const-string p0, "Unsupported JWK type, JWK curve and / or JWS algorithm"

    .line 166
    .line 167
    invoke-static {p0}, Lf6;->j(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    const/4 p0, 0x0

    .line 171
    return-object p0

    .line 172
    :cond_6
    invoke-static {}, Lcom/nimbusds/jose/jwk/JWKException;->expectedPrivate()Lcom/nimbusds/jose/jwk/JWKException;

    .line 173
    .line 174
    .line 175
    move-result-object p0

    .line 176
    throw p0
.end method

.method public getJCAContext()Lcom/nimbusds/jose/jca/JCAContext;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/crypto/factories/DefaultJWSSignerFactory;->jcaContext:Lcom/nimbusds/jose/jca/JCAContext;

    .line 2
    .line 3
    return-object p0
.end method

.method public supportedJWSAlgorithms()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/JWSAlgorithm;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object p0, Lcom/nimbusds/jose/crypto/factories/DefaultJWSSignerFactory;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method
