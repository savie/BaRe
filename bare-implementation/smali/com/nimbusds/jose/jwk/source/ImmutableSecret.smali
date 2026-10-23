.class public Lcom/nimbusds/jose/jwk/source/ImmutableSecret;
.super Lcom/nimbusds/jose/jwk/source/ImmutableJWKSet;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation runtime Lcom/nimbusds/jose/shaded/jcip/Immutable;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Lcom/nimbusds/jose/proc/SecurityContext;",
        ">",
        "Lcom/nimbusds/jose/jwk/source/ImmutableJWKSet<",
        "TC;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljavax/crypto/SecretKey;)V
    .locals 2

    .line 19
    new-instance v0, Lcom/nimbusds/jose/jwk/JWKSet;

    new-instance v1, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;

    invoke-direct {v1, p1}, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;-><init>(Ljavax/crypto/SecretKey;)V

    invoke-virtual {v1}, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;->build()Lcom/nimbusds/jose/jwk/OctetSequenceKey;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/nimbusds/jose/jwk/JWKSet;-><init>(Lcom/nimbusds/jose/jwk/JWK;)V

    invoke-direct {p0, v0}, Lcom/nimbusds/jose/jwk/source/ImmutableJWKSet;-><init>(Lcom/nimbusds/jose/jwk/JWKSet;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .line 1
    new-instance v0, Lcom/nimbusds/jose/jwk/JWKSet;

    .line 2
    .line 3
    new-instance v1, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;-><init>([B)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;->build()Lcom/nimbusds/jose/jwk/OctetSequenceKey;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-direct {v0, p1}, Lcom/nimbusds/jose/jwk/JWKSet;-><init>(Lcom/nimbusds/jose/jwk/JWK;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, v0}, Lcom/nimbusds/jose/jwk/source/ImmutableJWKSet;-><init>(Lcom/nimbusds/jose/jwk/JWKSet;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public getSecret()[B
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/source/ImmutableJWKSet;->getJWKSet()Lcom/nimbusds/jose/jwk/JWKSet;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/JWKSet;->getKeys()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Lcom/nimbusds/jose/jwk/OctetSequenceKey;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/OctetSequenceKey;->toByteArray()[B

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public getSecretKey()Ljavax/crypto/SecretKey;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/source/ImmutableJWKSet;->getJWKSet()Lcom/nimbusds/jose/jwk/JWKSet;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/JWKSet;->getKeys()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Lcom/nimbusds/jose/jwk/OctetSequenceKey;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/OctetSequenceKey;->toSecretKey()Ljavax/crypto/SecretKey;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method
