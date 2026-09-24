.class abstract Lcom/jcraft/jsch/jce/SignatureECDSAN;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/jcraft/jsch/SignatureECDSA;


# instance fields
.field public a:Ljava/security/Signature;

.field public b:Ljava/security/KeyFactory;


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

.method public static b([B)[B
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    aget-byte v1, p0, v0

    .line 3
    .line 4
    and-int/lit16 v1, v1, 0x80

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return-object p0

    .line 9
    :cond_0
    array-length v1, p0

    .line 10
    const/4 v2, 0x1

    .line 11
    add-int/2addr v1, v2

    .line 12
    new-array v1, v1, [B

    .line 13
    .line 14
    array-length v3, p0

    .line 15
    invoke-static {p0, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 16
    .line 17
    .line 18
    invoke-static {p0}, Lcom/jcraft/jsch/jce/Util;->a([B)V

    .line 19
    .line 20
    .line 21
    return-object v1
.end method

.method public static c([B)[B
    .locals 4

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x2

    .line 3
    if-ge v0, v1, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    move v1, v0

    .line 8
    :goto_0
    array-length v2, p0

    .line 9
    add-int/lit8 v2, v2, -0x1

    .line 10
    .line 11
    if-ge v1, v2, :cond_1

    .line 12
    .line 13
    aget-byte v2, p0, v1

    .line 14
    .line 15
    if-nez v2, :cond_1

    .line 16
    .line 17
    add-int/lit8 v2, v1, 0x1

    .line 18
    .line 19
    aget-byte v3, p0, v2

    .line 20
    .line 21
    and-int/lit16 v3, v3, 0x80

    .line 22
    .line 23
    if-nez v3, :cond_1

    .line 24
    .line 25
    move v1, v2

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    if-nez v1, :cond_2

    .line 28
    .line 29
    :goto_1
    return-object p0

    .line 30
    :cond_2
    array-length v2, p0

    .line 31
    sub-int/2addr v2, v1

    .line 32
    new-array v3, v2, [B

    .line 33
    .line 34
    invoke-static {p0, v1, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    .line 36
    .line 37
    invoke-static {p0}, Lcom/jcraft/jsch/jce/Util;->a([B)V

    .line 38
    .line 39
    .line 40
    return-object v3
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public init()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/jcraft/jsch/jce/SignatureECDSAN;->a()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "ecdsa-sha2-nistp384"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    const-string v0, "SHA384withECDSA"

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string v1, "ecdsa-sha2-nistp521"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    const-string v0, "SHA512withECDSA"

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const-string v0, "SHA256withECDSA"

    .line 28
    .line 29
    :goto_0
    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Lcom/jcraft/jsch/jce/SignatureECDSAN;->a:Ljava/security/Signature;

    .line 34
    .line 35
    const-string v0, "EC"

    .line 36
    .line 37
    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iput-object v0, p0, Lcom/jcraft/jsch/jce/SignatureECDSAN;->b:Ljava/security/KeyFactory;

    .line 42
    .line 43
    return-void
.end method

.method public setPrvKey([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/jcraft/jsch/jce/SignatureECDSAN;->b([B)[B

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    array-length v0, p1

    .line 6
    const/16 v1, 0x40

    .line 7
    .line 8
    if-lt v0, v1, :cond_0

    .line 9
    .line 10
    const-string v0, "secp521r1"

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    array-length v0, p1

    .line 14
    const/16 v1, 0x30

    .line 15
    .line 16
    if-lt v0, v1, :cond_1

    .line 17
    .line 18
    const-string v0, "secp384r1"

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const-string v0, "secp256r1"

    .line 22
    .line 23
    :goto_0
    const-string v1, "EC"

    .line 24
    .line 25
    invoke-static {v1}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    new-instance v2, Ljava/security/spec/ECGenParameterSpec;

    .line 30
    .line 31
    invoke-direct {v2, v0}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 35
    .line 36
    .line 37
    const-class v0, Ljava/security/spec/ECParameterSpec;

    .line 38
    .line 39
    invoke-virtual {v1, v0}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Ljava/security/spec/ECParameterSpec;

    .line 44
    .line 45
    new-instance v1, Ljava/math/BigInteger;

    .line 46
    .line 47
    const/4 v2, 0x1

    .line 48
    invoke-direct {v1, v2, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/jcraft/jsch/jce/SignatureECDSAN;->b:Ljava/security/KeyFactory;

    .line 52
    .line 53
    new-instance v2, Ljava/security/spec/ECPrivateKeySpec;

    .line 54
    .line 55
    invoke-direct {v2, v1, v0}, Ljava/security/spec/ECPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v2}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    iget-object p0, p0, Lcom/jcraft/jsch/jce/SignatureECDSAN;->a:Ljava/security/Signature;

    .line 63
    .line 64
    invoke-virtual {p0, p1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public setPubKey([B[B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/jcraft/jsch/jce/SignatureECDSAN;->b([B)[B

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p2}, Lcom/jcraft/jsch/jce/SignatureECDSAN;->b([B)[B

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    array-length v0, p1

    .line 10
    const/16 v1, 0x40

    .line 11
    .line 12
    if-lt v0, v1, :cond_0

    .line 13
    .line 14
    const-string v0, "secp521r1"

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    array-length v0, p1

    .line 18
    const/16 v1, 0x30

    .line 19
    .line 20
    if-lt v0, v1, :cond_1

    .line 21
    .line 22
    const-string v0, "secp384r1"

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const-string v0, "secp256r1"

    .line 26
    .line 27
    :goto_0
    const-string v1, "EC"

    .line 28
    .line 29
    invoke-static {v1}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    new-instance v2, Ljava/security/spec/ECGenParameterSpec;

    .line 34
    .line 35
    invoke-direct {v2, v0}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v2}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 39
    .line 40
    .line 41
    const-class v0, Ljava/security/spec/ECParameterSpec;

    .line 42
    .line 43
    invoke-virtual {v1, v0}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Ljava/security/spec/ECParameterSpec;

    .line 48
    .line 49
    new-instance v1, Ljava/security/spec/ECPoint;

    .line 50
    .line 51
    new-instance v2, Ljava/math/BigInteger;

    .line 52
    .line 53
    const/4 v3, 0x1

    .line 54
    invoke-direct {v2, v3, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 55
    .line 56
    .line 57
    new-instance p1, Ljava/math/BigInteger;

    .line 58
    .line 59
    invoke-direct {p1, v3, p2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 60
    .line 61
    .line 62
    invoke-direct {v1, v2, p1}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lcom/jcraft/jsch/jce/SignatureECDSAN;->b:Ljava/security/KeyFactory;

    .line 66
    .line 67
    new-instance p2, Ljava/security/spec/ECPublicKeySpec;

    .line 68
    .line 69
    invoke-direct {p2, v1, v0}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, p2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    iget-object p0, p0, Lcom/jcraft/jsch/jce/SignatureECDSAN;->a:Ljava/security/Signature;

    .line 77
    .line 78
    invoke-virtual {p0, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method public sign()[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/jce/SignatureECDSAN;->a:Ljava/security/Signature;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/security/Signature;->sign()[B

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 v0, 0x0

    .line 8
    aget-byte v1, p0, v0

    .line 9
    .line 10
    const/16 v2, 0x30

    .line 11
    .line 12
    if-ne v1, v2, :cond_4

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    aget-byte v2, p0, v1

    .line 16
    .line 17
    add-int/lit8 v3, v2, 0x2

    .line 18
    .line 19
    array-length v4, p0

    .line 20
    const/4 v5, 0x3

    .line 21
    const/4 v6, 0x2

    .line 22
    if-eq v3, v4, :cond_0

    .line 23
    .line 24
    and-int/lit16 v3, v2, 0x80

    .line 25
    .line 26
    if-eqz v3, :cond_4

    .line 27
    .line 28
    aget-byte v3, p0, v6

    .line 29
    .line 30
    and-int/lit16 v3, v3, 0xff

    .line 31
    .line 32
    add-int/2addr v3, v5

    .line 33
    array-length v4, p0

    .line 34
    if-ne v3, v4, :cond_4

    .line 35
    .line 36
    :cond_0
    and-int/lit16 v2, v2, 0x80

    .line 37
    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    aget-byte v2, p0, v6

    .line 41
    .line 42
    and-int/lit16 v2, v2, 0xff

    .line 43
    .line 44
    add-int/2addr v2, v5

    .line 45
    array-length v3, p0

    .line 46
    if-ne v2, v3, :cond_1

    .line 47
    .line 48
    const/4 v5, 0x4

    .line 49
    :cond_1
    aget-byte v2, p0, v5

    .line 50
    .line 51
    new-array v3, v2, [B

    .line 52
    .line 53
    add-int/lit8 v4, v5, 0x2

    .line 54
    .line 55
    add-int/2addr v4, v2

    .line 56
    aget-byte v4, p0, v4

    .line 57
    .line 58
    new-array v6, v4, [B

    .line 59
    .line 60
    add-int/lit8 v7, v5, 0x1

    .line 61
    .line 62
    invoke-static {p0, v7, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    .line 64
    .line 65
    add-int/lit8 v7, v5, 0x3

    .line 66
    .line 67
    aget-byte v5, p0, v5

    .line 68
    .line 69
    add-int/2addr v7, v5

    .line 70
    invoke-static {p0, v7, v6, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    .line 72
    .line 73
    aget-byte p0, v3, v0

    .line 74
    .line 75
    if-eqz p0, :cond_2

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_2
    sub-int/2addr v2, v1

    .line 79
    new-array p0, v2, [B

    .line 80
    .line 81
    invoke-static {v3, v1, p0, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 82
    .line 83
    .line 84
    invoke-static {v3}, Lcom/jcraft/jsch/jce/Util;->a([B)V

    .line 85
    .line 86
    .line 87
    move-object v3, p0

    .line 88
    :goto_0
    aget-byte p0, v6, v0

    .line 89
    .line 90
    if-eqz p0, :cond_3

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_3
    sub-int/2addr v4, v1

    .line 94
    new-array p0, v4, [B

    .line 95
    .line 96
    invoke-static {v6, v1, p0, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 97
    .line 98
    .line 99
    invoke-static {v6}, Lcom/jcraft/jsch/jce/Util;->a([B)V

    .line 100
    .line 101
    .line 102
    move-object v6, p0

    .line 103
    :goto_1
    new-instance p0, Lcom/jcraft/jsch/Buffer;

    .line 104
    .line 105
    invoke-direct {p0}, Lcom/jcraft/jsch/Buffer;-><init>()V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0, v3}, Lcom/jcraft/jsch/Buffer;->putMPInt([B)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, v6}, Lcom/jcraft/jsch/Buffer;->putMPInt([B)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getLength()I

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    new-array v2, v1, [B

    .line 119
    .line 120
    iput v0, p0, Lcom/jcraft/jsch/Buffer;->d:I

    .line 121
    .line 122
    invoke-virtual {p0, v2, v0, v1}, Lcom/jcraft/jsch/Buffer;->c([BII)V

    .line 123
    .line 124
    .line 125
    return-object v2

    .line 126
    :cond_4
    return-object p0
.end method

.method public update([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/jce/SignatureECDSAN;->a:Ljava/security/Signature;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/security/Signature;->update([B)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public verify([B)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    aget-byte v1, p1, v0

    .line 3
    .line 4
    const/4 v2, 0x3

    .line 5
    const/4 v3, 0x1

    .line 6
    const/4 v4, 0x2

    .line 7
    const/16 v5, 0x30

    .line 8
    .line 9
    if-ne v1, v5, :cond_0

    .line 10
    .line 11
    aget-byte v1, p1, v3

    .line 12
    .line 13
    add-int/lit8 v6, v1, 0x2

    .line 14
    .line 15
    array-length v7, p1

    .line 16
    if-eq v6, v7, :cond_2

    .line 17
    .line 18
    and-int/lit16 v1, v1, 0x80

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    aget-byte v1, p1, v4

    .line 23
    .line 24
    and-int/lit16 v1, v1, 0xff

    .line 25
    .line 26
    add-int/2addr v1, v2

    .line 27
    array-length v6, p1

    .line 28
    if-eq v1, v6, :cond_2

    .line 29
    .line 30
    :cond_0
    new-instance v1, Lcom/jcraft/jsch/Buffer;

    .line 31
    .line 32
    invoke-direct {v1, p1}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->getMPInt()[B

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->getMPInt()[B

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-static {p1}, Lcom/jcraft/jsch/jce/SignatureECDSAN;->b([B)[B

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-static {p1}, Lcom/jcraft/jsch/jce/SignatureECDSAN;->c([B)[B

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-static {v1}, Lcom/jcraft/jsch/jce/SignatureECDSAN;->b([B)[B

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-static {v1}, Lcom/jcraft/jsch/jce/SignatureECDSAN;->c([B)[B

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    array-length v6, p1

    .line 66
    const/16 v7, 0x40

    .line 67
    .line 68
    const/4 v8, 0x5

    .line 69
    const/4 v9, 0x4

    .line 70
    if-ge v6, v7, :cond_1

    .line 71
    .line 72
    array-length v6, p1

    .line 73
    add-int/lit8 v6, v6, 0x6

    .line 74
    .line 75
    array-length v7, v1

    .line 76
    add-int/2addr v6, v7

    .line 77
    new-array v6, v6, [B

    .line 78
    .line 79
    aput-byte v5, v6, v0

    .line 80
    .line 81
    array-length v5, p1

    .line 82
    add-int/2addr v5, v9

    .line 83
    array-length v7, v1

    .line 84
    add-int/2addr v5, v7

    .line 85
    int-to-byte v5, v5

    .line 86
    aput-byte v5, v6, v3

    .line 87
    .line 88
    aput-byte v4, v6, v4

    .line 89
    .line 90
    array-length v3, p1

    .line 91
    int-to-byte v3, v3

    .line 92
    aput-byte v3, v6, v2

    .line 93
    .line 94
    array-length v2, p1

    .line 95
    invoke-static {p1, v0, v6, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96
    .line 97
    .line 98
    array-length v2, p1

    .line 99
    add-int/2addr v2, v9

    .line 100
    aput-byte v4, v6, v2

    .line 101
    .line 102
    array-length v2, p1

    .line 103
    add-int/2addr v2, v8

    .line 104
    array-length v3, v1

    .line 105
    int-to-byte v3, v3

    .line 106
    aput-byte v3, v6, v2

    .line 107
    .line 108
    array-length p1, p1

    .line 109
    add-int/lit8 p1, p1, 0x6

    .line 110
    .line 111
    array-length v2, v1

    .line 112
    invoke-static {v1, v0, v6, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 113
    .line 114
    .line 115
    :goto_0
    move-object p1, v6

    .line 116
    goto :goto_1

    .line 117
    :cond_1
    array-length v6, p1

    .line 118
    add-int/lit8 v6, v6, 0x6

    .line 119
    .line 120
    array-length v7, v1

    .line 121
    add-int/2addr v6, v7

    .line 122
    add-int/2addr v6, v3

    .line 123
    new-array v6, v6, [B

    .line 124
    .line 125
    aput-byte v5, v6, v0

    .line 126
    .line 127
    const/16 v5, -0x7f

    .line 128
    .line 129
    aput-byte v5, v6, v3

    .line 130
    .line 131
    array-length v3, p1

    .line 132
    add-int/2addr v3, v9

    .line 133
    array-length v5, v1

    .line 134
    add-int/2addr v3, v5

    .line 135
    int-to-byte v3, v3

    .line 136
    aput-byte v3, v6, v4

    .line 137
    .line 138
    aput-byte v4, v6, v2

    .line 139
    .line 140
    array-length v2, p1

    .line 141
    int-to-byte v2, v2

    .line 142
    aput-byte v2, v6, v9

    .line 143
    .line 144
    array-length v2, p1

    .line 145
    invoke-static {p1, v0, v6, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 146
    .line 147
    .line 148
    array-length v2, p1

    .line 149
    add-int/2addr v2, v8

    .line 150
    aput-byte v4, v6, v2

    .line 151
    .line 152
    array-length v2, p1

    .line 153
    add-int/lit8 v2, v2, 0x6

    .line 154
    .line 155
    array-length v3, v1

    .line 156
    int-to-byte v3, v3

    .line 157
    aput-byte v3, v6, v2

    .line 158
    .line 159
    array-length p1, p1

    .line 160
    add-int/lit8 p1, p1, 0x7

    .line 161
    .line 162
    array-length v2, v1

    .line 163
    invoke-static {v1, v0, v6, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 164
    .line 165
    .line 166
    goto :goto_0

    .line 167
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/jcraft/jsch/jce/SignatureECDSAN;->a:Ljava/security/Signature;

    .line 168
    .line 169
    invoke-virtual {p0, p1}, Ljava/security/Signature;->verify([B)Z

    .line 170
    .line 171
    .line 172
    move-result p0

    .line 173
    return p0
.end method
