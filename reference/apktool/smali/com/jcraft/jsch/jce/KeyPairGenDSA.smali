.class public Lcom/jcraft/jsch/jce/KeyPairGenDSA;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/jcraft/jsch/KeyPairGenDSA;


# instance fields
.field public a:[B

.field public b:[B

.field public c:[B

.field public d:[B

.field public e:[B


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
.method public final getG()[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/jce/KeyPairGenDSA;->e:[B

    .line 2
    .line 3
    return-object p0
.end method

.method public final getP()[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/jce/KeyPairGenDSA;->c:[B

    .line 2
    .line 3
    return-object p0
.end method

.method public final getQ()[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/jce/KeyPairGenDSA;->d:[B

    .line 2
    .line 3
    return-object p0
.end method

.method public final getX()[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/jce/KeyPairGenDSA;->a:[B

    .line 2
    .line 3
    return-object p0
.end method

.method public final getY()[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/jce/KeyPairGenDSA;->b:[B

    .line 2
    .line 3
    return-object p0
.end method

.method public final init(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const-string v0, "DSA"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/security/SecureRandom;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1, v1}, Ljava/security/KeyPairGenerator;->initialize(ILjava/security/SecureRandom;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    move-object v1, p1

    .line 28
    check-cast v1, Ljava/security/interfaces/DSAPrivateKey;

    .line 29
    .line 30
    invoke-interface {v1}, Ljava/security/interfaces/DSAPrivateKey;->getX()Ljava/math/BigInteger;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iput-object v1, p0, Lcom/jcraft/jsch/jce/KeyPairGenDSA;->a:[B

    .line 39
    .line 40
    check-cast v0, Ljava/security/interfaces/DSAPublicKey;

    .line 41
    .line 42
    invoke-interface {v0}, Ljava/security/interfaces/DSAPublicKey;->getY()Ljava/math/BigInteger;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iput-object v0, p0, Lcom/jcraft/jsch/jce/KeyPairGenDSA;->b:[B

    .line 51
    .line 52
    check-cast p1, Ljava/security/interfaces/DSAKey;

    .line 53
    .line 54
    invoke-interface {p1}, Ljava/security/interfaces/DSAKey;->getParams()Ljava/security/interfaces/DSAParams;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-interface {p1}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iput-object v0, p0, Lcom/jcraft/jsch/jce/KeyPairGenDSA;->c:[B

    .line 67
    .line 68
    invoke-interface {p1}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    iput-object v0, p0, Lcom/jcraft/jsch/jce/KeyPairGenDSA;->d:[B

    .line 77
    .line 78
    invoke-interface {p1}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    iput-object p1, p0, Lcom/jcraft/jsch/jce/KeyPairGenDSA;->e:[B

    .line 87
    .line 88
    return-void
.end method
