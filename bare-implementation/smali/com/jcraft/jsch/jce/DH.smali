.class public Lcom/jcraft/jsch/jce/DH;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/jcraft/jsch/DH;


# instance fields
.field public a:Ljava/math/BigInteger;

.field public b:Ljava/math/BigInteger;

.field public c:Ljava/math/BigInteger;

.field public d:[B

.field public e:Ljava/math/BigInteger;

.field public f:Ljava/security/KeyPairGenerator;

.field public g:Ljavax/crypto/KeyAgreement;


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
.method public final checkRange()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    return-void
.end method

.method public final getE()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/jce/DH;->c:Ljava/math/BigInteger;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljavax/crypto/spec/DHParameterSpec;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/jcraft/jsch/jce/DH;->a:Ljava/math/BigInteger;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/jcraft/jsch/jce/DH;->b:Ljava/math/BigInteger;

    .line 10
    .line 11
    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/jcraft/jsch/jce/DH;->f:Ljava/security/KeyPairGenerator;

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/jcraft/jsch/jce/DH;->f:Ljava/security/KeyPairGenerator;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/jcraft/jsch/jce/DH;->g:Ljavax/crypto/KeyAgreement;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v1, v2}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Ljavax/crypto/interfaces/DHPublicKey;

    .line 39
    .line 40
    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iput-object v0, p0, Lcom/jcraft/jsch/jce/DH;->c:Ljava/math/BigInteger;

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iput-object v0, p0, Lcom/jcraft/jsch/jce/DH;->d:[B

    .line 51
    .line 52
    :cond_0
    iget-object p0, p0, Lcom/jcraft/jsch/jce/DH;->d:[B

    .line 53
    .line 54
    return-object p0
.end method

.method public final getK()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const-string v0, "DH"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljavax/crypto/spec/DHPublicKeySpec;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/jcraft/jsch/jce/DH;->e:Ljava/math/BigInteger;

    .line 10
    .line 11
    iget-object v3, p0, Lcom/jcraft/jsch/jce/DH;->a:Ljava/math/BigInteger;

    .line 12
    .line 13
    iget-object v4, p0, Lcom/jcraft/jsch/jce/DH;->b:Ljava/math/BigInteger;

    .line 14
    .line 15
    invoke-direct {v1, v2, v3, v4}, Ljavax/crypto/spec/DHPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/jcraft/jsch/jce/DH;->g:Ljavax/crypto/KeyAgreement;

    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    invoke-virtual {v1, v0, v2}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lcom/jcraft/jsch/jce/DH;->g:Ljavax/crypto/KeyAgreement;

    .line 29
    .line 30
    invoke-virtual {p0}, Ljavax/crypto/KeyAgreement;->generateSecret()[B

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0
.end method

.method public final init()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const-string v0, "DH"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iput-object v1, p0, Lcom/jcraft/jsch/jce/DH;->f:Ljava/security/KeyPairGenerator;

    .line 8
    .line 9
    invoke-static {v0}, Ljavax/crypto/KeyAgreement;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/jcraft/jsch/jce/DH;->g:Ljavax/crypto/KeyAgreement;

    .line 14
    .line 15
    return-void
.end method

.method public final setF([B)V
    .locals 2

    .line 1
    new-instance v0, Ljava/math/BigInteger;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 5
    .line 6
    .line 7
    iput-object v0, p0, Lcom/jcraft/jsch/jce/DH;->e:Ljava/math/BigInteger;

    .line 8
    .line 9
    return-void
.end method

.method public final setG([B)V
    .locals 2

    .line 1
    new-instance v0, Ljava/math/BigInteger;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 5
    .line 6
    .line 7
    iput-object v0, p0, Lcom/jcraft/jsch/jce/DH;->b:Ljava/math/BigInteger;

    .line 8
    .line 9
    return-void
.end method

.method public final setP([B)V
    .locals 2

    .line 1
    new-instance v0, Ljava/math/BigInteger;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 5
    .line 6
    .line 7
    iput-object v0, p0, Lcom/jcraft/jsch/jce/DH;->a:Ljava/math/BigInteger;

    .line 8
    .line 9
    return-void
.end method
