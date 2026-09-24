.class public Lcom/nimbusds/jose/crypto/ECDH1PUX25519Encrypter;
.super Lcom/nimbusds/jose/crypto/impl/ECDH1PUCryptoProvider;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/nimbusds/jose/JWEEncrypter;


# annotations
.annotation runtime Lcom/nimbusds/jose/shaded/jcip/ThreadSafe;
.end annotation


# instance fields
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

    .line 13
    invoke-direct {p0, p1, p2, v0}, Lcom/nimbusds/jose/crypto/ECDH1PUX25519Encrypter;-><init>(Lcom/nimbusds/jose/jwk/OctetKeyPair;Lcom/nimbusds/jose/jwk/OctetKeyPair;Ljavax/crypto/SecretKey;)V

    return-void
.end method

.method public constructor <init>(Lcom/nimbusds/jose/jwk/OctetKeyPair;Lcom/nimbusds/jose/jwk/OctetKeyPair;Ljavax/crypto/SecretKey;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/nimbusds/jose/jwk/OctetKeyPair;->getCurve()Lcom/nimbusds/jose/jwk/Curve;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0, p3}, Lcom/nimbusds/jose/crypto/impl/ECDH1PUCryptoProvider;-><init>(Lcom/nimbusds/jose/jwk/Curve;Ljavax/crypto/SecretKey;)V

    .line 6
    .line 7
    .line 8
    iput-object p2, p0, Lcom/nimbusds/jose/crypto/ECDH1PUX25519Encrypter;->publicKey:Lcom/nimbusds/jose/jwk/OctetKeyPair;

    .line 9
    .line 10
    iput-object p1, p0, Lcom/nimbusds/jose/crypto/ECDH1PUX25519Encrypter;->privateKey:Lcom/nimbusds/jose/jwk/OctetKeyPair;

    .line 11
    .line 12
    return-void
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

    .line 58
    invoke-static {p1}, Lcom/nimbusds/jose/crypto/impl/AAD;->compute(Lcom/nimbusds/jose/JWEHeader;)[B

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/nimbusds/jose/crypto/ECDH1PUX25519Encrypter;->encrypt(Lcom/nimbusds/jose/JWEHeader;[B[B)Lcom/nimbusds/jose/JWECryptoParts;

    move-result-object p0

    return-object p0
.end method

.method public encrypt(Lcom/nimbusds/jose/JWEHeader;[B[B)Lcom/nimbusds/jose/JWECryptoParts;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/nimbusds/jose/jwk/gen/OctetKeyPairGenerator;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/impl/ECDH1PUCryptoProvider;->getCurve()Lcom/nimbusds/jose/jwk/Curve;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lcom/nimbusds/jose/jwk/gen/OctetKeyPairGenerator;-><init>(Lcom/nimbusds/jose/jwk/Curve;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/nimbusds/jose/jwk/gen/OctetKeyPairGenerator;->generate()Lcom/nimbusds/jose/jwk/OctetKeyPair;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/nimbusds/jose/jwk/OctetKeyPair;->toPublicJWK()Lcom/nimbusds/jose/jwk/OctetKeyPair;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, Lcom/nimbusds/jose/JWEHeader$Builder;

    .line 19
    .line 20
    invoke-direct {v2, p1}, Lcom/nimbusds/jose/JWEHeader$Builder;-><init>(Lcom/nimbusds/jose/JWEHeader;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v1}, Lcom/nimbusds/jose/JWEHeader$Builder;->ephemeralPublicKey(Lcom/nimbusds/jose/jwk/JWK;)Lcom/nimbusds/jose/JWEHeader$Builder;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Lcom/nimbusds/jose/JWEHeader$Builder;->build()Lcom/nimbusds/jose/JWEHeader;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget-object v2, p0, Lcom/nimbusds/jose/crypto/ECDH1PUX25519Encrypter;->privateKey:Lcom/nimbusds/jose/jwk/OctetKeyPair;

    .line 32
    .line 33
    iget-object v3, p0, Lcom/nimbusds/jose/crypto/ECDH1PUX25519Encrypter;->publicKey:Lcom/nimbusds/jose/jwk/OctetKeyPair;

    .line 34
    .line 35
    invoke-static {v2, v3, v0}, Lcom/nimbusds/jose/crypto/impl/ECDH1PU;->deriveSenderZ(Lcom/nimbusds/jose/jwk/OctetKeyPair;Lcom/nimbusds/jose/jwk/OctetKeyPair;Lcom/nimbusds/jose/jwk/OctetKeyPair;)Ljavax/crypto/SecretKey;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {p1}, Lcom/nimbusds/jose/crypto/impl/AAD;->compute(Lcom/nimbusds/jose/JWEHeader;)[B

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {p1, p3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_0

    .line 48
    .line 49
    invoke-static {v1}, Lcom/nimbusds/jose/crypto/impl/AAD;->compute(Lcom/nimbusds/jose/JWEHeader;)[B

    .line 50
    .line 51
    .line 52
    move-result-object p3

    .line 53
    :cond_0
    invoke-virtual {p0, v1, v0, p2, p3}, Lcom/nimbusds/jose/crypto/impl/ECDH1PUCryptoProvider;->encryptWithZ(Lcom/nimbusds/jose/JWEHeader;Ljavax/crypto/SecretKey;[B[B)Lcom/nimbusds/jose/JWECryptoParts;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    return-object p0
.end method

.method public getPrivateKey()Lcom/nimbusds/jose/jwk/OctetKeyPair;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/crypto/ECDH1PUX25519Encrypter;->privateKey:Lcom/nimbusds/jose/jwk/OctetKeyPair;

    .line 2
    .line 3
    return-object p0
.end method

.method public getPublicKey()Lcom/nimbusds/jose/jwk/OctetKeyPair;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/crypto/ECDH1PUX25519Encrypter;->publicKey:Lcom/nimbusds/jose/jwk/OctetKeyPair;

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
