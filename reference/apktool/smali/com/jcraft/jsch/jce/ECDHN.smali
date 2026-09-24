.class public Lcom/jcraft/jsch/jce/ECDHN;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/jcraft/jsch/ECDH;


# static fields
.field public static final d:Ljava/math/BigInteger;

.field public static final e:Ljava/math/BigInteger;


# instance fields
.field public a:[B

.field public b:Ljava/security/interfaces/ECPublicKey;

.field public c:Ljavax/crypto/KeyAgreement;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 2
    .line 3
    invoke-virtual {v0, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    sput-object v1, Lcom/jcraft/jsch/jce/ECDHN;->d:Ljava/math/BigInteger;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Lcom/jcraft/jsch/jce/ECDHN;->e:Ljava/math/BigInteger;

    .line 14
    .line 15
    return-void
.end method

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
.method public final getQ()[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/jce/ECDHN;->a:[B

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSecret([B[B)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const-string v0, "EC"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/security/spec/ECPoint;

    .line 8
    .line 9
    new-instance v2, Ljava/math/BigInteger;

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    invoke-direct {v2, v3, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 13
    .line 14
    .line 15
    new-instance p1, Ljava/math/BigInteger;

    .line 16
    .line 17
    invoke-direct {p1, v3, p2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 18
    .line 19
    .line 20
    invoke-direct {v1, v2, p1}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 21
    .line 22
    .line 23
    new-instance p1, Ljava/security/spec/ECPublicKeySpec;

    .line 24
    .line 25
    iget-object p2, p0, Lcom/jcraft/jsch/jce/ECDHN;->b:Ljava/security/interfaces/ECPublicKey;

    .line 26
    .line 27
    invoke-interface {p2}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-direct {p1, v1, p2}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iget-object p2, p0, Lcom/jcraft/jsch/jce/ECDHN;->c:Ljavax/crypto/KeyAgreement;

    .line 39
    .line 40
    invoke-virtual {p2, p1, v3}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    .line 41
    .line 42
    .line 43
    iget-object p0, p0, Lcom/jcraft/jsch/jce/ECDHN;->c:Ljavax/crypto/KeyAgreement;

    .line 44
    .line 45
    invoke-virtual {p0}, Ljavax/crypto/KeyAgreement;->generateSecret()[B

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    return-object p0
.end method

.method public final init(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const-string v0, "ECDH"

    .line 2
    .line 3
    invoke-static {v0}, Ljavax/crypto/KeyAgreement;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/jcraft/jsch/jce/ECDHN;->c:Ljavax/crypto/KeyAgreement;

    .line 8
    .line 9
    new-instance v0, Lcom/jcraft/jsch/jce/KeyPairGenECDSA;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/jce/KeyPairGenECDSA;->init(I)V

    .line 15
    .line 16
    .line 17
    iget-object p1, v0, Lcom/jcraft/jsch/jce/KeyPairGenECDSA;->d:Ljava/security/interfaces/ECPublicKey;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/jcraft/jsch/jce/ECDHN;->b:Ljava/security/interfaces/ECPublicKey;

    .line 20
    .line 21
    iget-object p1, v0, Lcom/jcraft/jsch/jce/KeyPairGenECDSA;->b:[B

    .line 22
    .line 23
    iget-object v1, v0, Lcom/jcraft/jsch/jce/KeyPairGenECDSA;->c:[B

    .line 24
    .line 25
    array-length v2, p1

    .line 26
    const/4 v3, 0x1

    .line 27
    add-int/2addr v2, v3

    .line 28
    array-length v4, v1

    .line 29
    add-int/2addr v2, v4

    .line 30
    new-array v2, v2, [B

    .line 31
    .line 32
    const/4 v4, 0x4

    .line 33
    const/4 v5, 0x0

    .line 34
    aput-byte v4, v2, v5

    .line 35
    .line 36
    array-length v4, p1

    .line 37
    invoke-static {p1, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    .line 39
    .line 40
    array-length p1, p1

    .line 41
    add-int/2addr p1, v3

    .line 42
    array-length v3, v1

    .line 43
    invoke-static {v1, v5, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 44
    .line 45
    .line 46
    iput-object v2, p0, Lcom/jcraft/jsch/jce/ECDHN;->a:[B

    .line 47
    .line 48
    iget-object p0, p0, Lcom/jcraft/jsch/jce/ECDHN;->c:Ljavax/crypto/KeyAgreement;

    .line 49
    .line 50
    iget-object p1, v0, Lcom/jcraft/jsch/jce/KeyPairGenECDSA;->e:Ljava/security/interfaces/ECPrivateKey;

    .line 51
    .line 52
    invoke-virtual {p0, p1}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public final validate([B[B)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

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
    new-instance p1, Ljava/math/BigInteger;

    .line 8
    .line 9
    invoke-direct {p1, v1, p2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 10
    .line 11
    .line 12
    new-instance p2, Ljava/security/spec/ECPoint;

    .line 13
    .line 14
    invoke-direct {p2, v0, p1}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 15
    .line 16
    .line 17
    sget-object v2, Ljava/security/spec/ECPoint;->POINT_INFINITY:Ljava/security/spec/ECPoint;

    .line 18
    .line 19
    invoke-virtual {p2, v2}, Ljava/security/spec/ECPoint;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    const/4 v2, 0x0

    .line 24
    if-eqz p2, :cond_0

    .line 25
    .line 26
    return v2

    .line 27
    :cond_0
    iget-object p0, p0, Lcom/jcraft/jsch/jce/ECDHN;->b:Ljava/security/interfaces/ECPublicKey;

    .line 28
    .line 29
    invoke-interface {p0}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {p0}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    check-cast p2, Ljava/security/spec/ECFieldFp;

    .line 42
    .line 43
    invoke-virtual {p2}, Ljava/security/spec/ECFieldFp;->getP()Ljava/math/BigInteger;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    sget-object v3, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 48
    .line 49
    invoke-virtual {p2, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-gtz v4, :cond_3

    .line 58
    .line 59
    invoke-virtual {p1, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-lez v3, :cond_1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {p0}, Ljava/security/spec/EllipticCurve;->getA()Ljava/math/BigInteger;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-virtual {p0}, Ljava/security/spec/EllipticCurve;->getB()Ljava/math/BigInteger;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-virtual {v3, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    sget-object v3, Lcom/jcraft/jsch/jce/ECDHN;->e:Ljava/math/BigInteger;

    .line 83
    .line 84
    invoke-virtual {v0, v3, p2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    invoke-virtual {p0, p2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    sget-object v0, Lcom/jcraft/jsch/jce/ECDHN;->d:Ljava/math/BigInteger;

    .line 97
    .line 98
    invoke-virtual {p1, v0, p2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result p0

    .line 106
    if-nez p0, :cond_2

    .line 107
    .line 108
    return v2

    .line 109
    :cond_2
    return v1

    .line 110
    :cond_3
    :goto_0
    return v2
.end method
