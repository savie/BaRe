.class public Lcom/nimbusds/jose/jwk/gen/OctetSequenceKeyGenerator;
.super Lcom/nimbusds/jose/jwk/gen/JWKGenerator;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nimbusds/jose/jwk/gen/JWKGenerator<",
        "Lcom/nimbusds/jose/jwk/OctetSequenceKey;",
        ">;"
    }
.end annotation


# static fields
.field public static final MIN_KEY_SIZE_BITS:I = 0x70


# instance fields
.field private final size:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/nimbusds/jose/jwk/gen/JWKGenerator;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x70

    .line 5
    .line 6
    if-lt p1, v0, :cond_1

    .line 7
    .line 8
    rem-int/lit8 v0, p1, 0x8

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iput p1, p0, Lcom/nimbusds/jose/jwk/gen/OctetSequenceKeyGenerator;->size:I

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    const-string p0, "The key size in bits must be divisible by 8"

    .line 16
    .line 17
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    throw p0

    .line 22
    :cond_1
    const-string p0, "The key size must be at least 112 bits"

    .line 23
    .line 24
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/4 p0, 0x0

    .line 28
    throw p0
.end method


# virtual methods
.method public bridge synthetic generate()Lcom/nimbusds/jose/jwk/JWK;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 92
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/gen/OctetSequenceKeyGenerator;->generate()Lcom/nimbusds/jose/jwk/OctetSequenceKey;

    move-result-object p0

    return-object p0
.end method

.method public generate()Lcom/nimbusds/jose/jwk/OctetSequenceKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/nimbusds/jose/jwk/gen/OctetSequenceKeyGenerator;->size:I

    .line 2
    .line 3
    div-int/lit8 v0, v0, 0x8

    .line 4
    .line 5
    new-array v0, v0, [B

    .line 6
    .line 7
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/gen/JWKGenerator;->secureRandom:Ljava/security/SecureRandom;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance v1, Ljava/security/SecureRandom;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 21
    .line 22
    .line 23
    :goto_0
    new-instance v1, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/nimbusds/jose/util/Base64URL;->encode([B)Lcom/nimbusds/jose/util/Base64URL;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-direct {v1, v0}, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;-><init>(Lcom/nimbusds/jose/util/Base64URL;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/gen/JWKGenerator;->use:Lcom/nimbusds/jose/jwk/KeyUse;

    .line 33
    .line 34
    invoke-virtual {v1, v0}, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;->keyUse(Lcom/nimbusds/jose/jwk/KeyUse;)Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/gen/JWKGenerator;->ops:Ljava/util/Set;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;->keyOperations(Ljava/util/Set;)Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/gen/JWKGenerator;->alg:Lcom/nimbusds/jose/Algorithm;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;->algorithm(Lcom/nimbusds/jose/Algorithm;)Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/gen/JWKGenerator;->exp:Ljava/util/Date;

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;->expirationTime(Ljava/util/Date;)Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/gen/JWKGenerator;->nbf:Ljava/util/Date;

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;->notBeforeTime(Ljava/util/Date;)Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/gen/JWKGenerator;->iat:Ljava/util/Date;

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;->issueTime(Ljava/util/Date;)Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/gen/JWKGenerator;->keyStore:Ljava/security/KeyStore;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;->keyStore(Ljava/security/KeyStore;)Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iget-boolean v1, p0, Lcom/nimbusds/jose/jwk/gen/JWKGenerator;->tprKid:Z

    .line 75
    .line 76
    if-eqz v1, :cond_1

    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;->keyIDFromThumbprint()Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_1
    iget-object p0, p0, Lcom/nimbusds/jose/jwk/gen/JWKGenerator;->kid:Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {v0, p0}, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;->keyID(Ljava/lang/String;)Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;

    .line 85
    .line 86
    .line 87
    :goto_1
    invoke-virtual {v0}, Lcom/nimbusds/jose/jwk/OctetSequenceKey$Builder;->build()Lcom/nimbusds/jose/jwk/OctetSequenceKey;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    return-object p0
.end method
