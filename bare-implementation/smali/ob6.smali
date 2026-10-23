.class public final Lob6;
.super Lqb6;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final c:Lzt2;

.field public final d:Ljava/math/BigInteger;

.field public final e:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Lzt2;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1

    .line 1
    iget v0, p1, Lzt2;->a:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lqb6;-><init>(I)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lzt2;->f:Lzt2;

    .line 7
    .line 8
    if-eq p1, v0, :cond_0

    .line 9
    .line 10
    sget-object v0, Lzt2;->e:Lzt2;

    .line 11
    .line 12
    if-eq p1, v0, :cond_0

    .line 13
    .line 14
    iput-object p1, p0, Lob6;->c:Lzt2;

    .line 15
    .line 16
    iput-object p2, p0, Lob6;->d:Ljava/math/BigInteger;

    .line 17
    .line 18
    iput-object p3, p0, Lob6;->e:Ljava/math/BigInteger;

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    const-string p0, "InvalidCurve"

    .line 22
    .line 23
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const/4 p0, 0x0

    .line 27
    throw p0
.end method

.method public static i(Lzt2;[B)Lob6;
    .locals 3

    .line 1
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x4

    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    array-length p1, p1

    .line 13
    const/4 v1, 0x1

    .line 14
    sub-int/2addr p1, v1

    .line 15
    div-int/lit8 p1, p1, 0x2

    .line 16
    .line 17
    new-array p1, p1, [B

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 20
    .line 21
    .line 22
    new-instance v2, Ljava/math/BigInteger;

    .line 23
    .line 24
    invoke-direct {v2, v1, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 28
    .line 29
    .line 30
    new-instance v0, Ljava/math/BigInteger;

    .line 31
    .line 32
    invoke-direct {v0, v1, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 33
    .line 34
    .line 35
    new-instance p1, Lob6;

    .line 36
    .line 37
    invoke-direct {p1, p0, v2, v0}, Lob6;-><init>(Lzt2;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 38
    .line 39
    .line 40
    return-object p1

    .line 41
    :cond_0
    const-string p0, "Only uncompressed public keys are supported"

    .line 42
    .line 43
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const/4 p0, 0x0

    .line 47
    return-object p0
.end method


# virtual methods
.method public final h()Ljava/security/PublicKey;
    .locals 9

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
    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    .line 8
    .line 9
    iget-object v2, p0, Lob6;->c:Lzt2;

    .line 10
    .line 11
    iget v3, v2, Lzt2;->a:I

    .line 12
    .line 13
    int-to-double v3, v3

    .line 14
    const-wide/high16 v5, 0x4020000000000000L    # 8.0

    .line 15
    .line 16
    div-double/2addr v3, v5

    .line 17
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    .line 18
    .line 19
    .line 20
    move-result-wide v3

    .line 21
    double-to-int v3, v3

    .line 22
    mul-int/lit8 v4, v3, 0x2

    .line 23
    .line 24
    add-int/lit8 v4, v4, 0x1

    .line 25
    .line 26
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    const/4 v5, 0x4

    .line 31
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    iget-object v5, p0, Lob6;->d:Ljava/math/BigInteger;

    .line 36
    .line 37
    invoke-static {v3, v5}, Lvm4;->s(ILjava/math/BigInteger;)[B

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    iget-object p0, p0, Lob6;->e:Ljava/math/BigInteger;

    .line 46
    .line 47
    invoke-static {v3, p0}, Lvm4;->s(ILjava/math/BigInteger;)[B

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {v4, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    new-instance v3, Lq48;

    .line 60
    .line 61
    new-instance v4, Lq48;

    .line 62
    .line 63
    new-instance v5, Lq48;

    .line 64
    .line 65
    sget-object v6, Lqb6;->b:[B

    .line 66
    .line 67
    const/4 v7, 0x6

    .line 68
    invoke-direct {v5, v6, v7}, Lq48;-><init>([BI)V

    .line 69
    .line 70
    .line 71
    new-instance v6, Lq48;

    .line 72
    .line 73
    iget-object v2, v2, Lzt2;->b:[B

    .line 74
    .line 75
    array-length v8, v2

    .line 76
    invoke-static {v2, v8}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-direct {v6, v2, v7}, Lq48;-><init>([BI)V

    .line 81
    .line 82
    .line 83
    filled-new-array {v5, v6}, [Lq48;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-static {v2}, Lcy0;->r(Ljava/util/List;)[B

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    const/16 v5, 0x30

    .line 96
    .line 97
    invoke-direct {v4, v2, v5}, Lq48;-><init>([BI)V

    .line 98
    .line 99
    .line 100
    new-instance v2, Lq48;

    .line 101
    .line 102
    array-length v6, p0

    .line 103
    add-int/lit8 v6, v6, 0x1

    .line 104
    .line 105
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 106
    .line 107
    .line 108
    move-result-object v6

    .line 109
    const/4 v7, 0x0

    .line 110
    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 111
    .line 112
    .line 113
    move-result-object v6

    .line 114
    invoke-virtual {v6, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    const/4 v6, 0x3

    .line 123
    invoke-direct {v2, p0, v6}, Lq48;-><init>([BI)V

    .line 124
    .line 125
    .line 126
    filled-new-array {v4, v2}, [Lq48;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    invoke-static {p0}, Lcy0;->r(Ljava/util/List;)[B

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    invoke-direct {v3, p0, v5}, Lq48;-><init>([BI)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v3}, Lq48;->a()[B

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    invoke-direct {v1, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    check-cast p0, Ljava/security/interfaces/ECPublicKey;

    .line 153
    .line 154
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "PublicKeyValues.Ec{curve="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lob6;->c:Lzt2;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, ", x="

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lob6;->d:Ljava/math/BigInteger;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, ", y="

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lob6;->e:Ljava/math/BigInteger;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v1, ", bitLength="

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget p0, p0, Lqb6;->a:I

    .line 43
    .line 44
    const/16 v1, 0x7d

    .line 45
    .line 46
    invoke-static {v0, p0, v1}, Leq3;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    return-object p0
.end method
