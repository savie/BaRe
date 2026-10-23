.class public Lcom/jcraft/jsch/jce/KeyPairGenRSA;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/jcraft/jsch/KeyPairGenRSA;


# instance fields
.field public a:[B

.field public b:[B

.field public c:[B

.field public d:[B

.field public e:[B

.field public f:[B

.field public g:[B

.field public h:[B


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
.method public final getC()[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/jce/KeyPairGenRSA;->d:[B

    .line 2
    .line 3
    return-object p0
.end method

.method public final getD()[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/jce/KeyPairGenRSA;->a:[B

    .line 2
    .line 3
    return-object p0
.end method

.method public final getE()[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/jce/KeyPairGenRSA;->b:[B

    .line 2
    .line 3
    return-object p0
.end method

.method public final getEP()[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/jce/KeyPairGenRSA;->e:[B

    .line 2
    .line 3
    return-object p0
.end method

.method public final getEQ()[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/jce/KeyPairGenRSA;->f:[B

    .line 2
    .line 3
    return-object p0
.end method

.method public final getN()[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/jce/KeyPairGenRSA;->c:[B

    .line 2
    .line 3
    return-object p0
.end method

.method public final getP()[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/jce/KeyPairGenRSA;->g:[B

    .line 2
    .line 3
    return-object p0
.end method

.method public final getQ()[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/jce/KeyPairGenRSA;->h:[B

    .line 2
    .line 3
    return-object p0
.end method

.method public final init(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const-string v0, "RSA"

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
    check-cast v1, Ljava/security/interfaces/RSAPrivateKey;

    .line 29
    .line 30
    invoke-interface {v1}, Ljava/security/interfaces/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    iput-object v2, p0, Lcom/jcraft/jsch/jce/KeyPairGenRSA;->a:[B

    .line 39
    .line 40
    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    .line 41
    .line 42
    invoke-interface {v0}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

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
    iput-object v0, p0, Lcom/jcraft/jsch/jce/KeyPairGenRSA;->b:[B

    .line 51
    .line 52
    invoke-interface {v1}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iput-object v0, p0, Lcom/jcraft/jsch/jce/KeyPairGenRSA;->c:[B

    .line 61
    .line 62
    check-cast p1, Ljava/security/interfaces/RSAPrivateCrtKey;

    .line 63
    .line 64
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getCrtCoefficient()Ljava/math/BigInteger;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iput-object v0, p0, Lcom/jcraft/jsch/jce/KeyPairGenRSA;->d:[B

    .line 73
    .line 74
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentP()Ljava/math/BigInteger;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    iput-object v0, p0, Lcom/jcraft/jsch/jce/KeyPairGenRSA;->e:[B

    .line 83
    .line 84
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    iput-object v0, p0, Lcom/jcraft/jsch/jce/KeyPairGenRSA;->f:[B

    .line 93
    .line 94
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    iput-object v0, p0, Lcom/jcraft/jsch/jce/KeyPairGenRSA;->g:[B

    .line 103
    .line 104
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    iput-object p1, p0, Lcom/jcraft/jsch/jce/KeyPairGenRSA;->h:[B

    .line 113
    .line 114
    return-void
.end method
