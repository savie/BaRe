.class abstract Lcom/jcraft/jsch/bc/MLKEM;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/jcraft/jsch/KEM;


# instance fields
.field public a:Lorg/bouncycastle/crypto/params/MLKEMParameters;

.field public b:Lorg/bouncycastle/crypto/kems/MLKEMExtractor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public decapsulate([B)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/bc/MLKEM;->b:Lorg/bouncycastle/crypto/kems/MLKEMExtractor;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/kems/MLKEMExtractor;->extractSecret([B)[B

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getPublicKey()[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const/4 p0, 0x0

    .line 2
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/MLKEMPublicKeyParameters;->getEncoded()[B

    .line 3
    .line 4
    .line 5
    throw p0
.end method

.method public init()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/bouncycastle/crypto/generators/MLKEMKeyPairGenerator;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/bouncycastle/crypto/generators/MLKEMKeyPairGenerator;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lorg/bouncycastle/crypto/params/MLKEMKeyGenerationParameters;

    .line 7
    .line 8
    new-instance v2, Ljava/security/SecureRandom;

    .line 9
    .line 10
    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    .line 11
    .line 12
    .line 13
    iget-object v3, p0, Lcom/jcraft/jsch/bc/MLKEM;->a:Lorg/bouncycastle/crypto/params/MLKEMParameters;

    .line 14
    .line 15
    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/crypto/params/MLKEMKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/crypto/params/MLKEMParameters;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/generators/MLKEMKeyPairGenerator;->init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/generators/MLKEMKeyPairGenerator;->generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    new-instance v1, Lorg/bouncycastle/crypto/kems/MLKEMExtractor;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    move-object v2, v0

    .line 32
    check-cast v2, Lorg/bouncycastle/crypto/params/MLKEMPrivateKeyParameters;

    .line 33
    .line 34
    invoke-direct {v1, v0}, Lorg/bouncycastle/crypto/kems/MLKEMExtractor;-><init>(Lorg/bouncycastle/crypto/params/MLKEMPrivateKeyParameters;)V

    .line 35
    .line 36
    .line 37
    iput-object v1, p0, Lcom/jcraft/jsch/bc/MLKEM;->b:Lorg/bouncycastle/crypto/kems/MLKEMExtractor;

    .line 38
    .line 39
    const/4 p0, 0x0

    .line 40
    check-cast p0, Lorg/bouncycastle/crypto/params/MLKEMPublicKeyParameters;

    .line 41
    .line 42
    return-void
.end method
