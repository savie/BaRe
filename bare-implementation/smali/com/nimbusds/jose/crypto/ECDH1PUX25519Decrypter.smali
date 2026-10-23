.class public Lcom/nimbusds/jose/crypto/ECDH1PUX25519Decrypter;
.super Lcom/nimbusds/jose/crypto/impl/ECDH1PUCryptoProvider;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/nimbusds/jose/JWEDecrypter;
.implements Lcom/nimbusds/jose/CriticalHeaderParamsAware;


# annotations
.annotation runtime Lcom/nimbusds/jose/shaded/jcip/ThreadSafe;
.end annotation


# instance fields
.field private final critPolicy:Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;

.field private final privateKey:Lcom/nimbusds/jose/jwk/OctetKeyPair;

.field private final publicKey:Lcom/nimbusds/jose/jwk/OctetKeyPair;


# direct methods
.method public constructor <init>(Lcom/nimbusds/jose/jwk/OctetKeyPair;Lcom/nimbusds/jose/jwk/OctetKeyPair;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, p2, v0}, Lcom/nimbusds/jose/crypto/ECDH1PUX25519Decrypter;-><init>(Lcom/nimbusds/jose/jwk/OctetKeyPair;Lcom/nimbusds/jose/jwk/OctetKeyPair;Ljava/util/Set;)V

    return-void
.end method

.method public constructor <init>(Lcom/nimbusds/jose/jwk/OctetKeyPair;Lcom/nimbusds/jose/jwk/OctetKeyPair;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/jwk/OctetKeyPair;",
            "Lcom/nimbusds/jose/jwk/OctetKeyPair;",
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
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/OctetKeyPair;->getCurve()Lcom/nimbusds/jose/jwk/Curve;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {p0, v0, v1}, Lcom/nimbusds/jose/crypto/impl/ECDH1PUCryptoProvider;-><init>(Lcom/nimbusds/jose/jwk/Curve;Ljavax/crypto/SecretKey;)V

    .line 7
    .line 8
    .line 9
    new-instance v0, Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/nimbusds/jose/crypto/ECDH1PUX25519Decrypter;->critPolicy:Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;

    .line 15
    .line 16
    iput-object p1, p0, Lcom/nimbusds/jose/crypto/ECDH1PUX25519Decrypter;->privateKey:Lcom/nimbusds/jose/jwk/OctetKeyPair;

    .line 17
    .line 18
    iput-object p2, p0, Lcom/nimbusds/jose/crypto/ECDH1PUX25519Decrypter;->publicKey:Lcom/nimbusds/jose/jwk/OctetKeyPair;

    .line 19
    .line 20
    invoke-virtual {v0, p3}, Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;->setDeferredCriticalHeaderParams(Ljava/util/Set;)V

    .line 21
    .line 22
    .line 23
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

    .line 41
    invoke-static {p1}, Lcom/nimbusds/jose/crypto/impl/AAD;->compute(Lcom/nimbusds/jose/JWEHeader;)[B

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/nimbusds/jose/crypto/ECDH1PUX25519Decrypter;->decrypt(Lcom/nimbusds/jose/JWEHeader;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;[B)[B

    move-result-object p0

    return-object p0
.end method

.method public decrypt(Lcom/nimbusds/jose/JWEHeader;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;[B)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    iget-object v1, p0, Lcom/nimbusds/jose/crypto/ECDH1PUX25519Decrypter;->critPolicy:Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;

    .line 2
    .line 3
    invoke-virtual {v1, p1}, Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;->ensureHeaderPasses(Lcom/nimbusds/jose/JWEHeader;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getEphemeralPublicKey()Lcom/nimbusds/jose/jwk/JWK;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lcom/nimbusds/jose/jwk/OctetKeyPair;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iget-object v3, p0, Lcom/nimbusds/jose/crypto/ECDH1PUX25519Decrypter;->privateKey:Lcom/nimbusds/jose/jwk/OctetKeyPair;

    .line 15
    .line 16
    iget-object v4, p0, Lcom/nimbusds/jose/crypto/ECDH1PUX25519Decrypter;->publicKey:Lcom/nimbusds/jose/jwk/OctetKeyPair;

    .line 17
    .line 18
    invoke-static {v3, v4, v1}, Lcom/nimbusds/jose/crypto/impl/ECDH1PU;->deriveRecipientZ(Lcom/nimbusds/jose/jwk/OctetKeyPair;Lcom/nimbusds/jose/jwk/OctetKeyPair;Lcom/nimbusds/jose/jwk/OctetKeyPair;)Ljavax/crypto/SecretKey;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    move-object v0, p0

    .line 23
    move-object v1, p1

    .line 24
    move-object v4, p2

    .line 25
    move-object v5, p3

    .line 26
    move-object v6, p4

    .line 27
    move-object v7, p5

    .line 28
    move-object v2, p6

    .line 29
    invoke-virtual/range {v0 .. v7}, Lcom/nimbusds/jose/crypto/impl/ECDH1PUCryptoProvider;->decryptWithZ(Lcom/nimbusds/jose/JWEHeader;[BLjavax/crypto/SecretKey;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;)[B

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    return-object v0

    .line 34
    :cond_0
    const-string v0, "Missing ephemeral public key \"epk\" JWE header parameter"

    .line 35
    .line 36
    invoke-static {v0}, Lf6;->j(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
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
    iget-object p0, p0, Lcom/nimbusds/jose/crypto/ECDH1PUX25519Decrypter;->critPolicy:Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;

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

.method public getPrivateKey()Lcom/nimbusds/jose/jwk/OctetKeyPair;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/crypto/ECDH1PUX25519Decrypter;->privateKey:Lcom/nimbusds/jose/jwk/OctetKeyPair;

    .line 2
    .line 3
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
    iget-object p0, p0, Lcom/nimbusds/jose/crypto/ECDH1PUX25519Decrypter;->critPolicy:Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;

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

.method public getPublicKey()Lcom/nimbusds/jose/jwk/OctetKeyPair;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/crypto/ECDH1PUX25519Decrypter;->publicKey:Lcom/nimbusds/jose/jwk/OctetKeyPair;

    .line 2
    .line 3
    return-object p0
.end method

.method public supportedEllipticCurves()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/Curve;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object p0, Lcom/nimbusds/jose/jwk/Curve;->X25519:Lcom/nimbusds/jose/jwk/Curve;

    .line 2
    .line 3
    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
