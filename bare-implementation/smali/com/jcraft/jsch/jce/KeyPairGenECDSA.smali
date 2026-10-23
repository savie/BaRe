.class public Lcom/jcraft/jsch/jce/KeyPairGenECDSA;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/jcraft/jsch/KeyPairGenECDSA;


# instance fields
.field public a:[B

.field public b:[B

.field public c:[B

.field public d:Ljava/security/interfaces/ECPublicKey;

.field public e:Ljava/security/interfaces/ECPrivateKey;


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
.method public final getD()[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/jce/KeyPairGenECDSA;->a:[B

    .line 2
    .line 3
    return-object p0
.end method

.method public final getR()[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/jce/KeyPairGenECDSA;->b:[B

    .line 2
    .line 3
    return-object p0
.end method

.method public final getS()[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/jce/KeyPairGenECDSA;->c:[B

    .line 2
    .line 3
    return-object p0
.end method

.method public final init(I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const/16 v0, 0x209

    .line 2
    .line 3
    const/16 v1, 0x180

    .line 4
    .line 5
    const/16 v2, 0x100

    .line 6
    .line 7
    if-ne p1, v2, :cond_0

    .line 8
    .line 9
    const-string v3, "secp256r1"

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    if-ne p1, v1, :cond_1

    .line 13
    .line 14
    const-string v3, "secp384r1"

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    if-ne p1, v0, :cond_8

    .line 18
    .line 19
    const-string v3, "secp521r1"

    .line 20
    .line 21
    :goto_0
    const/4 v4, 0x0

    .line 22
    move v5, v4

    .line 23
    :goto_1
    const/16 v6, 0x3e8

    .line 24
    .line 25
    if-ge v5, v6, :cond_6

    .line 26
    .line 27
    const-string v6, "EC"

    .line 28
    .line 29
    invoke-static {v6}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    new-instance v7, Ljava/security/spec/ECGenParameterSpec;

    .line 34
    .line 35
    invoke-direct {v7, v3}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v6, v7}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v6}, Ljava/security/KeyPairGenerator;->genKeyPair()Ljava/security/KeyPair;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    invoke-virtual {v6}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    check-cast v7, Ljava/security/interfaces/ECPrivateKey;

    .line 50
    .line 51
    iput-object v7, p0, Lcom/jcraft/jsch/jce/KeyPairGenECDSA;->e:Ljava/security/interfaces/ECPrivateKey;

    .line 52
    .line 53
    invoke-virtual {v6}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    check-cast v6, Ljava/security/interfaces/ECPublicKey;

    .line 58
    .line 59
    iput-object v6, p0, Lcom/jcraft/jsch/jce/KeyPairGenECDSA;->d:Ljava/security/interfaces/ECPublicKey;

    .line 60
    .line 61
    invoke-interface {v6}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    .line 62
    .line 63
    .line 64
    iget-object v6, p0, Lcom/jcraft/jsch/jce/KeyPairGenECDSA;->e:Ljava/security/interfaces/ECPrivateKey;

    .line 65
    .line 66
    invoke-interface {v6}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    invoke-virtual {v6}, Ljava/math/BigInteger;->toByteArray()[B

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    iput-object v6, p0, Lcom/jcraft/jsch/jce/KeyPairGenECDSA;->a:[B

    .line 75
    .line 76
    iget-object v6, p0, Lcom/jcraft/jsch/jce/KeyPairGenECDSA;->d:Ljava/security/interfaces/ECPublicKey;

    .line 77
    .line 78
    invoke-interface {v6}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    invoke-virtual {v6}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    .line 83
    .line 84
    .line 85
    move-result-object v7

    .line 86
    invoke-virtual {v7}, Ljava/math/BigInteger;->toByteArray()[B

    .line 87
    .line 88
    .line 89
    move-result-object v7

    .line 90
    iput-object v7, p0, Lcom/jcraft/jsch/jce/KeyPairGenECDSA;->b:[B

    .line 91
    .line 92
    invoke-virtual {v6}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    invoke-virtual {v6}, Ljava/math/BigInteger;->toByteArray()[B

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    iput-object v6, p0, Lcom/jcraft/jsch/jce/KeyPairGenECDSA;->c:[B

    .line 101
    .line 102
    iget-object v7, p0, Lcom/jcraft/jsch/jce/KeyPairGenECDSA;->b:[B

    .line 103
    .line 104
    array-length v8, v7

    .line 105
    array-length v6, v6

    .line 106
    if-eq v8, v6, :cond_2

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_2
    if-ne p1, v2, :cond_3

    .line 110
    .line 111
    array-length v6, v7

    .line 112
    const/16 v8, 0x20

    .line 113
    .line 114
    if-ne v6, v8, :cond_3

    .line 115
    .line 116
    goto :goto_3

    .line 117
    :cond_3
    if-ne p1, v1, :cond_4

    .line 118
    .line 119
    array-length v6, v7

    .line 120
    const/16 v8, 0x30

    .line 121
    .line 122
    if-ne v6, v8, :cond_4

    .line 123
    .line 124
    goto :goto_3

    .line 125
    :cond_4
    if-ne p1, v0, :cond_5

    .line 126
    .line 127
    array-length v6, v7

    .line 128
    const/16 v7, 0x42

    .line 129
    .line 130
    if-ne v6, v7, :cond_5

    .line 131
    .line 132
    goto :goto_3

    .line 133
    :cond_5
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_6
    :goto_3
    iget-object p1, p0, Lcom/jcraft/jsch/jce/KeyPairGenECDSA;->a:[B

    .line 137
    .line 138
    array-length v0, p1

    .line 139
    iget-object v1, p0, Lcom/jcraft/jsch/jce/KeyPairGenECDSA;->b:[B

    .line 140
    .line 141
    array-length v1, v1

    .line 142
    if-ge v0, v1, :cond_7

    .line 143
    .line 144
    array-length v0, p1

    .line 145
    const/4 v1, 0x1

    .line 146
    add-int/2addr v0, v1

    .line 147
    new-array v0, v0, [B

    .line 148
    .line 149
    array-length v2, p1

    .line 150
    invoke-static {p1, v4, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 151
    .line 152
    .line 153
    invoke-static {p1}, Lcom/jcraft/jsch/jce/Util;->a([B)V

    .line 154
    .line 155
    .line 156
    iput-object v0, p0, Lcom/jcraft/jsch/jce/KeyPairGenECDSA;->a:[B

    .line 157
    .line 158
    :cond_7
    return-void

    .line 159
    :cond_8
    new-instance p0, Lcom/jcraft/jsch/JSchException;

    .line 160
    .line 161
    const-string v0, "unsupported key size: "

    .line 162
    .line 163
    invoke-static {p1, v0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    throw p0
.end method
