.class public Lcom/nimbusds/jose/crypto/MACVerifier;
.super Lcom/nimbusds/jose/crypto/impl/MACProvider;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/nimbusds/jose/JWSVerifier;
.implements Lcom/nimbusds/jose/CriticalHeaderParamsAware;


# annotations
.annotation runtime Lcom/nimbusds/jose/shaded/jcip/ThreadSafe;
.end annotation


# instance fields
.field private final critPolicy:Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;


# direct methods
.method public constructor <init>(Lcom/nimbusds/jose/jwk/OctetSequenceKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 17
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/OctetSequenceKey;->toByteArray()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/nimbusds/jose/crypto/MACVerifier;-><init>([B)V

    return-void
.end method

.method public constructor <init>(Lcom/nimbusds/jose/jwk/OctetSequenceKey;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/jwk/OctetSequenceKey;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 23
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/OctetSequenceKey;->toByteArray()[B

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/nimbusds/jose/crypto/MACVerifier;-><init>([BLjava/util/Set;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 15
    sget-object v0, Lcom/nimbusds/jose/util/StandardCharset;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/nimbusds/jose/crypto/MACVerifier;-><init>([B)V

    return-void
.end method

.method public constructor <init>(Ljavax/crypto/SecretKey;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, p1, v0}, Lcom/nimbusds/jose/crypto/MACVerifier;-><init>(Ljavax/crypto/SecretKey;Ljava/util/Set;)V

    return-void
.end method

.method public constructor <init>(Ljavax/crypto/SecretKey;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/crypto/SecretKey;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1}, Lcom/nimbusds/jose/crypto/impl/MACProvider;-><init>(Ljavax/crypto/SecretKey;)V

    .line 21
    new-instance p1, Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;

    invoke-direct {p1}, Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;-><init>()V

    iput-object p1, p0, Lcom/nimbusds/jose/crypto/MACVerifier;->critPolicy:Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;

    .line 22
    invoke-virtual {p1, p2}, Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;->setDeferredCriticalHeaderParams(Ljava/util/Set;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1}, Lcom/nimbusds/jose/crypto/impl/MACProvider;-><init>([B)V

    .line 19
    new-instance p1, Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;

    invoke-direct {p1}, Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;-><init>()V

    iput-object p1, p0, Lcom/nimbusds/jose/crypto/MACVerifier;->critPolicy:Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;

    return-void
.end method

.method public constructor <init>([BLjava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/nimbusds/jose/crypto/impl/MACProvider;-><init>([B)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;

    .line 5
    .line 6
    invoke-direct {p1}, Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/nimbusds/jose/crypto/MACVerifier;->critPolicy:Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;->setDeferredCriticalHeaderParams(Ljava/util/Set;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
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
    iget-object p0, p0, Lcom/nimbusds/jose/crypto/MACVerifier;->critPolicy:Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;

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
    iget-object p0, p0, Lcom/nimbusds/jose/crypto/MACVerifier;->critPolicy:Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;

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

.method public verify(Lcom/nimbusds/jose/JWSHeader;[BLcom/nimbusds/jose/util/Base64URL;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWSHeader;->getAlgorithm()Lcom/nimbusds/jose/JWSAlgorithm;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/crypto/impl/MACProvider;->ensureSecretLengthSatisfiesAlgorithm(Lcom/nimbusds/jose/JWSAlgorithm;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/nimbusds/jose/crypto/MACVerifier;->critPolicy:Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;->headerPasses(Lcom/nimbusds/jose/Header;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    return p0

    .line 18
    :cond_0
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWSHeader;->getAlgorithm()Lcom/nimbusds/jose/JWSAlgorithm;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {p1}, Lcom/nimbusds/jose/crypto/impl/MACProvider;->getJCAAlgorithmName(Lcom/nimbusds/jose/JWSAlgorithm;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/impl/MACProvider;->getSecretKey()Ljavax/crypto/SecretKey;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/impl/BaseJWSProvider;->getJCAContext()Lcom/nimbusds/jose/jca/JCAContext;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p0}, Lcom/nimbusds/jose/jca/JCAContext;->getProvider()Ljava/security/Provider;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-static {p1, v0, p2, p0}, Lcom/nimbusds/jose/crypto/impl/HMAC;->compute(Ljava/lang/String;Ljavax/crypto/SecretKey;[BLjava/security/Provider;)[B

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {p3}, Lcom/nimbusds/jose/util/Base64;->decode()[B

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-static {p0, p1}, Lcom/nimbusds/jose/crypto/utils/ConstantTimeUtils;->areEqual([B[B)Z

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    return p0
.end method
