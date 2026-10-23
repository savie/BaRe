.class public Lcom/nimbusds/jose/crypto/Ed25519Signer;
.super Lcom/nimbusds/jose/crypto/impl/EdDSAProvider;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/nimbusds/jose/JWSSigner;


# annotations
.annotation runtime Lcom/nimbusds/jose/shaded/jcip/ThreadSafe;
.end annotation


# instance fields
.field private final privateKey:Lcom/nimbusds/jose/jwk/OctetKeyPair;

.field private final tinkSigner:Lcom/google/crypto/tink/subtle/Ed25519Sign;


# direct methods
.method public constructor <init>(Lcom/nimbusds/jose/jwk/OctetKeyPair;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/nimbusds/jose/crypto/impl/EdDSAProvider;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/nimbusds/jose/jwk/Curve;->Ed25519:Lcom/nimbusds/jose/jwk/Curve;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/OctetKeyPair;->getCurve()Lcom/nimbusds/jose/jwk/Curve;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/jwk/Curve;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/OctetKeyPair;->isPrivate()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iput-object p1, p0, Lcom/nimbusds/jose/crypto/Ed25519Signer;->privateKey:Lcom/nimbusds/jose/jwk/OctetKeyPair;

    .line 24
    .line 25
    :try_start_0
    new-instance v0, Lcom/google/crypto/tink/subtle/Ed25519Sign;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/OctetKeyPair;->getDecodedD()[B

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-direct {v0, p1}, Lcom/google/crypto/tink/subtle/Ed25519Sign;-><init>([B)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lcom/nimbusds/jose/crypto/Ed25519Signer;->tinkSigner:Lcom/google/crypto/tink/subtle/Ed25519Sign;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    return-void

    .line 37
    :catch_0
    move-exception p0

    .line 38
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-direct {p1, v0, p0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 45
    .line 46
    .line 47
    throw p1

    .line 48
    :cond_0
    const-string p0, "The OctetKeyPair doesn\'t contain a private part"

    .line 49
    .line 50
    invoke-static {p0}, Lf6;->j(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw v1

    .line 54
    :cond_1
    const-string p0, "Ed25519Signer only supports OctetKeyPairs with crv=Ed25519"

    .line 55
    .line 56
    invoke-static {p0}, Lf6;->j(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw v1
.end method


# virtual methods
.method public getPrivateKey()Lcom/nimbusds/jose/jwk/OctetKeyPair;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/crypto/Ed25519Signer;->privateKey:Lcom/nimbusds/jose/jwk/OctetKeyPair;

    .line 2
    .line 3
    return-object p0
.end method

.method public sign(Lcom/nimbusds/jose/JWSHeader;[B)Lcom/nimbusds/jose/util/Base64URL;
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
    move-result-object p1

    .line 5
    sget-object v0, Lcom/nimbusds/jose/JWSAlgorithm;->Ed25519:Lcom/nimbusds/jose/JWSAlgorithm;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    sget-object v0, Lcom/nimbusds/jose/JWSAlgorithm;->EdDSA:Lcom/nimbusds/jose/JWSAlgorithm;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const-string p0, "Ed25519Verifier requires alg=Ed25519 or alg=EdDSA in JWSHeader"

    .line 23
    .line 24
    invoke-static {p0}, Lf6;->j(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/4 p0, 0x0

    .line 28
    return-object p0

    .line 29
    :cond_1
    :goto_0
    :try_start_0
    iget-object p0, p0, Lcom/nimbusds/jose/crypto/Ed25519Signer;->tinkSigner:Lcom/google/crypto/tink/subtle/Ed25519Sign;

    .line 30
    .line 31
    invoke-virtual {p0, p2}, Lcom/google/crypto/tink/subtle/Ed25519Sign;->sign([B)[B

    .line 32
    .line 33
    .line 34
    move-result-object p0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    invoke-static {p0}, Lcom/nimbusds/jose/util/Base64URL;->encode([B)Lcom/nimbusds/jose/util/Base64URL;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0

    .line 40
    :catch_0
    move-exception p0

    .line 41
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    .line 42
    .line 43
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-direct {p1, p2, p0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    .line 49
    .line 50
    throw p1
.end method
