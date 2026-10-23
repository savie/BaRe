.class public final Lcom/nimbusds/jose/crypto/impl/PRFParams;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation runtime Lcom/nimbusds/jose/shaded/jcip/Immutable;
.end annotation


# instance fields
.field private final dkLen:I

.field private final jcaMacAlg:Ljava/lang/String;

.field private final macProvider:Ljava/security/Provider;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/security/Provider;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/nimbusds/jose/crypto/impl/PRFParams;->jcaMacAlg:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/nimbusds/jose/crypto/impl/PRFParams;->macProvider:Ljava/security/Provider;

    .line 10
    .line 11
    iput p3, p0, Lcom/nimbusds/jose/crypto/impl/PRFParams;->dkLen:I

    .line 12
    .line 13
    return-void
.end method

.method public static resolve(Lcom/nimbusds/jose/JWEAlgorithm;Ljava/security/Provider;)Lcom/nimbusds/jose/crypto/impl/PRFParams;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/nimbusds/jose/JWEAlgorithm;->PBES2_HS256_A128KW:Lcom/nimbusds/jose/JWEAlgorithm;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string p0, "HmacSHA256"

    .line 10
    .line 11
    const/16 v0, 0x10

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    sget-object v0, Lcom/nimbusds/jose/JWEAlgorithm;->PBES2_HS384_A192KW:Lcom/nimbusds/jose/JWEAlgorithm;

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    const-string p0, "HmacSHA384"

    .line 23
    .line 24
    const/16 v0, 0x18

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    sget-object v0, Lcom/nimbusds/jose/JWEAlgorithm;->PBES2_HS512_A256KW:Lcom/nimbusds/jose/JWEAlgorithm;

    .line 28
    .line 29
    invoke-virtual {v0, p0}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    const-string p0, "HmacSHA512"

    .line 36
    .line 37
    const/16 v0, 0x20

    .line 38
    .line 39
    :goto_0
    new-instance v1, Lcom/nimbusds/jose/crypto/impl/PRFParams;

    .line 40
    .line 41
    invoke-direct {v1, p0, p1, v0}, Lcom/nimbusds/jose/crypto/impl/PRFParams;-><init>(Ljava/lang/String;Ljava/security/Provider;I)V

    .line 42
    .line 43
    .line 44
    return-object v1

    .line 45
    :cond_2
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    .line 46
    .line 47
    sget-object v0, Lcom/nimbusds/jose/crypto/impl/PasswordBasedCryptoProvider;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    .line 48
    .line 49
    invoke-static {p0, v0}, Lcom/nimbusds/jose/crypto/impl/AlgorithmSupportMessage;->unsupportedJWEAlgorithm(Lcom/nimbusds/jose/JWEAlgorithm;Ljava/util/Collection;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-direct {p1, p0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p1
.end method


# virtual methods
.method public getDerivedKeyByteLength()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/nimbusds/jose/crypto/impl/PRFParams;->dkLen:I

    .line 2
    .line 3
    return p0
.end method

.method public getMACAlgorithm()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/crypto/impl/PRFParams;->jcaMacAlg:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getMacProvider()Ljava/security/Provider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jose/crypto/impl/PRFParams;->macProvider:Ljava/security/Provider;

    .line 2
    .line 3
    return-object p0
.end method
