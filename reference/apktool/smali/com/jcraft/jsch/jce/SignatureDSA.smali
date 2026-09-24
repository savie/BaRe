.class public Lcom/jcraft/jsch/jce/SignatureDSA;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/jcraft/jsch/SignatureDSA;


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

.method public static a([B)[B
    .locals 4

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-le v0, v1, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    aget-byte v2, p0, v0

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    aget-byte v2, p0, v1

    .line 11
    .line 12
    and-int/lit16 v2, v2, 0x80

    .line 13
    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    array-length v2, p0

    .line 17
    sub-int/2addr v2, v1

    .line 18
    new-array v3, v2, [B

    .line 19
    .line 20
    invoke-static {p0, v1, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 21
    .line 22
    .line 23
    invoke-static {v3}, Lcom/jcraft/jsch/jce/SignatureDSA;->a([B)[B

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    :cond_0
    return-object p0
.end method


# virtual methods
.method public final init()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const-string v0, "SHA1withDSA"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/jcraft/jsch/jce/SignatureDSA;->a:Ljava/security/Signature;

    .line 8
    .line 9
    const-string v0, "DSA"

    .line 10
    .line 11
    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/jcraft/jsch/jce/SignatureDSA;->b:Ljava/security/KeyFactory;

    .line 16
    .line 17
    return-void
.end method

.method public final setPrvKey([B[B[B[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/security/spec/DSAPrivateKeySpec;

    .line 2
    .line 3
    new-instance v1, Ljava/math/BigInteger;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Ljava/math/BigInteger;-><init>([B)V

    .line 6
    .line 7
    .line 8
    new-instance p1, Ljava/math/BigInteger;

    .line 9
    .line 10
    invoke-direct {p1, p2}, Ljava/math/BigInteger;-><init>([B)V

    .line 11
    .line 12
    .line 13
    new-instance p2, Ljava/math/BigInteger;

    .line 14
    .line 15
    invoke-direct {p2, p3}, Ljava/math/BigInteger;-><init>([B)V

    .line 16
    .line 17
    .line 18
    new-instance p3, Ljava/math/BigInteger;

    .line 19
    .line 20
    invoke-direct {p3, p4}, Ljava/math/BigInteger;-><init>([B)V

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, v1, p1, p2, p3}, Ljava/security/spec/DSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/jcraft/jsch/jce/SignatureDSA;->b:Ljava/security/KeyFactory;

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-object p0, p0, Lcom/jcraft/jsch/jce/SignatureDSA;->a:Ljava/security/Signature;

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final setPubKey([B[B[B[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/security/spec/DSAPublicKeySpec;

    .line 2
    .line 3
    new-instance v1, Ljava/math/BigInteger;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Ljava/math/BigInteger;-><init>([B)V

    .line 6
    .line 7
    .line 8
    new-instance p1, Ljava/math/BigInteger;

    .line 9
    .line 10
    invoke-direct {p1, p2}, Ljava/math/BigInteger;-><init>([B)V

    .line 11
    .line 12
    .line 13
    new-instance p2, Ljava/math/BigInteger;

    .line 14
    .line 15
    invoke-direct {p2, p3}, Ljava/math/BigInteger;-><init>([B)V

    .line 16
    .line 17
    .line 18
    new-instance p3, Ljava/math/BigInteger;

    .line 19
    .line 20
    invoke-direct {p3, p4}, Ljava/math/BigInteger;-><init>([B)V

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, v1, p1, p2, p3}, Ljava/security/spec/DSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/jcraft/jsch/jce/SignatureDSA;->b:Ljava/security/KeyFactory;

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-object p0, p0, Lcom/jcraft/jsch/jce/SignatureDSA;->a:Ljava/security/Signature;

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final sign()[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/jce/SignatureDSA;->a:Ljava/security/Signature;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/security/Signature;->sign()[B

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 v0, 0x3

    .line 8
    aget-byte v0, p0, v0

    .line 9
    .line 10
    and-int/lit16 v0, v0, 0xff

    .line 11
    .line 12
    new-array v1, v0, [B

    .line 13
    .line 14
    const/4 v2, 0x4

    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-static {p0, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 17
    .line 18
    .line 19
    add-int/lit8 v2, v0, 0x5

    .line 20
    .line 21
    add-int/lit8 v4, v0, 0x6

    .line 22
    .line 23
    aget-byte v2, p0, v2

    .line 24
    .line 25
    and-int/lit16 v2, v2, 0xff

    .line 26
    .line 27
    new-array v5, v2, [B

    .line 28
    .line 29
    invoke-static {p0, v4, v5, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30
    .line 31
    .line 32
    const/16 p0, 0x28

    .line 33
    .line 34
    new-array p0, p0, [B

    .line 35
    .line 36
    const/4 v4, 0x1

    .line 37
    const/16 v6, 0x14

    .line 38
    .line 39
    if-le v0, v6, :cond_0

    .line 40
    .line 41
    move v7, v4

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    move v7, v3

    .line 44
    :goto_0
    if-le v0, v6, :cond_1

    .line 45
    .line 46
    move v8, v3

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    rsub-int/lit8 v8, v0, 0x14

    .line 49
    .line 50
    :goto_1
    if-le v0, v6, :cond_2

    .line 51
    .line 52
    move v0, v6

    .line 53
    :cond_2
    invoke-static {v1, v7, p0, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    .line 55
    .line 56
    if-le v2, v6, :cond_3

    .line 57
    .line 58
    move v3, v4

    .line 59
    :cond_3
    if-le v2, v6, :cond_4

    .line 60
    .line 61
    move v0, v6

    .line 62
    goto :goto_2

    .line 63
    :cond_4
    rsub-int/lit8 v0, v2, 0x28

    .line 64
    .line 65
    :goto_2
    if-le v2, v6, :cond_5

    .line 66
    .line 67
    move v2, v6

    .line 68
    :cond_5
    invoke-static {v5, v3, p0, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    .line 70
    .line 71
    return-object p0
.end method

.method public final update([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/jce/SignatureDSA;->a:Ljava/security/Signature;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/security/Signature;->update([B)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final verify([B)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 13
    .line 14
    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 15
    .line 16
    .line 17
    const-string v2, "ssh-dss"

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/4 v2, 0x0

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    iget v0, v0, Lcom/jcraft/jsch/Buffer;->d:I

    .line 31
    .line 32
    new-array v3, v1, [B

    .line 33
    .line 34
    invoke-static {p1, v0, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    .line 36
    .line 37
    move-object p1, v3

    .line 38
    :cond_0
    const/16 v0, 0x14

    .line 39
    .line 40
    new-array v1, v0, [B

    .line 41
    .line 42
    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    .line 44
    .line 45
    invoke-static {v1}, Lcom/jcraft/jsch/jce/SignatureDSA;->a([B)[B

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    new-array v3, v0, [B

    .line 50
    .line 51
    invoke-static {p1, v0, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 52
    .line 53
    .line 54
    invoke-static {v3}, Lcom/jcraft/jsch/jce/SignatureDSA;->a([B)[B

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    aget-byte v0, v1, v2

    .line 59
    .line 60
    and-int/lit16 v0, v0, 0x80

    .line 61
    .line 62
    const/4 v3, 0x1

    .line 63
    if-eqz v0, :cond_1

    .line 64
    .line 65
    move v0, v3

    .line 66
    goto :goto_0

    .line 67
    :cond_1
    move v0, v2

    .line 68
    :goto_0
    aget-byte v4, p1, v2

    .line 69
    .line 70
    and-int/lit16 v4, v4, 0x80

    .line 71
    .line 72
    if-eqz v4, :cond_2

    .line 73
    .line 74
    move v4, v3

    .line 75
    goto :goto_1

    .line 76
    :cond_2
    move v4, v2

    .line 77
    :goto_1
    array-length v5, v1

    .line 78
    array-length v6, p1

    .line 79
    add-int/2addr v5, v6

    .line 80
    add-int/lit8 v5, v5, 0x6

    .line 81
    .line 82
    add-int/2addr v5, v0

    .line 83
    add-int/2addr v5, v4

    .line 84
    new-array v5, v5, [B

    .line 85
    .line 86
    const/16 v6, 0x30

    .line 87
    .line 88
    aput-byte v6, v5, v2

    .line 89
    .line 90
    array-length v6, v1

    .line 91
    array-length v7, p1

    .line 92
    add-int/2addr v6, v7

    .line 93
    add-int/lit8 v6, v6, 0x4

    .line 94
    .line 95
    int-to-byte v6, v6

    .line 96
    aput-byte v6, v5, v3

    .line 97
    .line 98
    int-to-byte v7, v0

    .line 99
    add-int/2addr v6, v7

    .line 100
    int-to-byte v6, v6

    .line 101
    aput-byte v6, v5, v3

    .line 102
    .line 103
    int-to-byte v8, v4

    .line 104
    add-int/2addr v6, v8

    .line 105
    int-to-byte v6, v6

    .line 106
    aput-byte v6, v5, v3

    .line 107
    .line 108
    const/4 v3, 0x2

    .line 109
    aput-byte v3, v5, v3

    .line 110
    .line 111
    array-length v6, v1

    .line 112
    int-to-byte v6, v6

    .line 113
    const/4 v9, 0x3

    .line 114
    aput-byte v6, v5, v9

    .line 115
    .line 116
    add-int/2addr v6, v7

    .line 117
    int-to-byte v6, v6

    .line 118
    aput-byte v6, v5, v9

    .line 119
    .line 120
    add-int/lit8 v0, v0, 0x4

    .line 121
    .line 122
    array-length v6, v1

    .line 123
    invoke-static {v1, v2, v5, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 124
    .line 125
    .line 126
    aget-byte v0, v5, v9

    .line 127
    .line 128
    add-int/lit8 v0, v0, 0x4

    .line 129
    .line 130
    aput-byte v3, v5, v0

    .line 131
    .line 132
    aget-byte v0, v5, v9

    .line 133
    .line 134
    add-int/lit8 v0, v0, 0x5

    .line 135
    .line 136
    array-length v1, p1

    .line 137
    int-to-byte v1, v1

    .line 138
    aput-byte v1, v5, v0

    .line 139
    .line 140
    aget-byte v0, v5, v9

    .line 141
    .line 142
    add-int/lit8 v0, v0, 0x5

    .line 143
    .line 144
    aget-byte v1, v5, v0

    .line 145
    .line 146
    add-int/2addr v1, v8

    .line 147
    int-to-byte v1, v1

    .line 148
    aput-byte v1, v5, v0

    .line 149
    .line 150
    aget-byte v0, v5, v9

    .line 151
    .line 152
    add-int/lit8 v0, v0, 0x6

    .line 153
    .line 154
    add-int/2addr v0, v4

    .line 155
    array-length v1, p1

    .line 156
    invoke-static {p1, v2, v5, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 157
    .line 158
    .line 159
    iget-object p0, p0, Lcom/jcraft/jsch/jce/SignatureDSA;->a:Ljava/security/Signature;

    .line 160
    .line 161
    invoke-virtual {p0, v5}, Ljava/security/Signature;->verify([B)Z

    .line 162
    .line 163
    .line 164
    move-result p0

    .line 165
    return p0
.end method
