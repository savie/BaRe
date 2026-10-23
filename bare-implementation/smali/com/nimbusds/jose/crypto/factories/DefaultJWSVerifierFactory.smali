.class public Lcom/nimbusds/jose/crypto/factories/DefaultJWSVerifierFactory;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/nimbusds/jose/proc/JWSVerifierFactory;


# annotations
.annotation runtime Lcom/nimbusds/jose/shaded/jcip/ThreadSafe;
.end annotation


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
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lcom/nimbusds/jose/crypto/factories/DefaultJWSVerifierFactory;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    .line 26
    .line 27
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
    iput-object v0, p0, Lcom/nimbusds/jose/crypto/factories/DefaultJWSVerifierFactory;->jcaContext:Lcom/nimbusds/jose/jca/JCAContext;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public createJWSVerifier(Lcom/nimbusds/jose/JWSHeader;Ljava/security/Key;)Lcom/nimbusds/jose/JWSVerifier;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/nimbusds/jose/crypto/impl/MACProvider;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWSHeader;->getAlgorithm()Lcom/nimbusds/jose/JWSAlgorithm;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    instance-of p1, p2, Ljavax/crypto/SecretKey;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    check-cast p2, Ljavax/crypto/SecretKey;

    .line 18
    .line 19
    new-instance p1, Lcom/nimbusds/jose/crypto/MACVerifier;

    .line 20
    .line 21
    invoke-direct {p1, p2}, Lcom/nimbusds/jose/crypto/MACVerifier;-><init>(Ljavax/crypto/SecretKey;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance p0, Lcom/nimbusds/jose/KeyTypeException;

    .line 26
    .line 27
    const-class p1, Ljavax/crypto/SecretKey;

    .line 28
    .line 29
    invoke-direct {p0, p1}, Lcom/nimbusds/jose/KeyTypeException;-><init>(Ljava/lang/Class;)V

    .line 30
    .line 31
    .line 32
    throw p0

    .line 33
    :cond_1
    sget-object v0, Lcom/nimbusds/jose/crypto/impl/RSASSAProvider;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWSHeader;->getAlgorithm()Lcom/nimbusds/jose/JWSAlgorithm;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_3

    .line 44
    .line 45
    instance-of p1, p2, Ljava/security/interfaces/RSAPublicKey;

    .line 46
    .line 47
    if-eqz p1, :cond_2

    .line 48
    .line 49
    check-cast p2, Ljava/security/interfaces/RSAPublicKey;

    .line 50
    .line 51
    new-instance p1, Lcom/nimbusds/jose/crypto/RSASSAVerifier;

    .line 52
    .line 53
    invoke-direct {p1, p2}, Lcom/nimbusds/jose/crypto/RSASSAVerifier;-><init>(Ljava/security/interfaces/RSAPublicKey;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    new-instance p0, Lcom/nimbusds/jose/KeyTypeException;

    .line 58
    .line 59
    const-class p1, Ljava/security/interfaces/RSAPublicKey;

    .line 60
    .line 61
    invoke-direct {p0, p1}, Lcom/nimbusds/jose/KeyTypeException;-><init>(Ljava/lang/Class;)V

    .line 62
    .line 63
    .line 64
    throw p0

    .line 65
    :cond_3
    sget-object v0, Lcom/nimbusds/jose/crypto/impl/ECDSAProvider;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWSHeader;->getAlgorithm()Lcom/nimbusds/jose/JWSAlgorithm;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_5

    .line 76
    .line 77
    instance-of p1, p2, Ljava/security/interfaces/ECPublicKey;

    .line 78
    .line 79
    if-eqz p1, :cond_4

    .line 80
    .line 81
    check-cast p2, Ljava/security/interfaces/ECPublicKey;

    .line 82
    .line 83
    new-instance p1, Lcom/nimbusds/jose/crypto/ECDSAVerifier;

    .line 84
    .line 85
    invoke-direct {p1, p2}, Lcom/nimbusds/jose/crypto/ECDSAVerifier;-><init>(Ljava/security/interfaces/ECPublicKey;)V

    .line 86
    .line 87
    .line 88
    :goto_0
    invoke-interface {p1}, Lcom/nimbusds/jose/jca/JCAAware;->getJCAContext()Lcom/nimbusds/jose/jca/JCAContext;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    iget-object p0, p0, Lcom/nimbusds/jose/crypto/factories/DefaultJWSVerifierFactory;->jcaContext:Lcom/nimbusds/jose/jca/JCAContext;

    .line 93
    .line 94
    invoke-virtual {p0}, Lcom/nimbusds/jose/jca/JCAContext;->getProvider()Ljava/security/Provider;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    invoke-virtual {p2, p0}, Lcom/nimbusds/jose/jca/JCAContext;->setProvider(Ljava/security/Provider;)V

    .line 99
    .line 100
    .line 101
    return-object p1

    .line 102
    :cond_4
    new-instance p0, Lcom/nimbusds/jose/KeyTypeException;

    .line 103
    .line 104
    const-class p1, Ljava/security/interfaces/ECPublicKey;

    .line 105
    .line 106
    invoke-direct {p0, p1}, Lcom/nimbusds/jose/KeyTypeException;-><init>(Ljava/lang/Class;)V

    .line 107
    .line 108
    .line 109
    throw p0

    .line 110
    :cond_5
    new-instance p0, Lcom/nimbusds/jose/JOSEException;

    .line 111
    .line 112
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWSHeader;->getAlgorithm()Lcom/nimbusds/jose/JWSAlgorithm;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    new-instance p2, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    const-string v0, "Unsupported JWS algorithm: "

    .line 119
    .line 120
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-direct {p0, p1}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    throw p0
.end method

.method public getJCAContext()Lcom/nimbusds/jose/jca/JCAContext;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/crypto/factories/DefaultJWSVerifierFactory;->jcaContext:Lcom/nimbusds/jose/jca/JCAContext;

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
    sget-object p0, Lcom/nimbusds/jose/crypto/factories/DefaultJWSVerifierFactory;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method
