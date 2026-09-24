.class public final Loa5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lea5;


# direct methods
.method public constructor <init>(Lea5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Loa5;->a:Lea5;

    .line 5
    .line 6
    return-void
.end method

.method public static a([B)Lna5;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0}, Loa5;->f([BI)Lma5;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    iget v1, v0, Lma5;->b:I

    .line 7
    .line 8
    iget-object v0, v0, Lma5;->a:Ljava/math/BigInteger;

    .line 9
    .line 10
    invoke-static {p0, v1}, Loa5;->f([BI)Lma5;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget v2, v1, Lma5;->b:I

    .line 15
    .line 16
    iget-object v1, v1, Lma5;->a:Ljava/math/BigInteger;

    .line 17
    .line 18
    invoke-static {p0, v2}, Loa5;->f([BI)Lma5;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    iget v3, v2, Lma5;->b:I

    .line 23
    .line 24
    iget-object v2, v2, Lma5;->a:Ljava/math/BigInteger;

    .line 25
    .line 26
    invoke-static {p0, v3}, Loa5;->f([BI)Lma5;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    iget v4, v3, Lma5;->b:I

    .line 31
    .line 32
    iget-object v3, v3, Lma5;->a:Ljava/math/BigInteger;

    .line 33
    .line 34
    const-string v5, "MEGA RSA private key"

    .line 35
    .line 36
    invoke-static {v5, v4, p0}, Loa5;->g(Ljava/lang/String;I[B)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    const/16 v4, 0x3e8

    .line 44
    .line 45
    if-le p0, v4, :cond_1

    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    if-le p0, v4, :cond_1

    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    const/16 v5, 0x7d0

    .line 58
    .line 59
    if-le p0, v5, :cond_1

    .line 60
    .line 61
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    if-le p0, v4, :cond_1

    .line 66
    .line 67
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-static {p0, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 76
    .line 77
    .line 78
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    goto :goto_0

    .line 80
    :catchall_0
    move-exception p0

    .line 81
    new-instance v3, Lbn6;

    .line 82
    .line 83
    invoke-direct {v3, p0}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 84
    .line 85
    .line 86
    move-object p0, v3

    .line 87
    :goto_0
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 88
    .line 89
    instance-of v4, p0, Lbn6;

    .line 90
    .line 91
    if-eqz v4, :cond_0

    .line 92
    .line 93
    move-object p0, v3

    .line 94
    :cond_0
    check-cast p0, Ljava/lang/Boolean;

    .line 95
    .line 96
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 97
    .line 98
    .line 99
    move-result p0

    .line 100
    if-eqz p0, :cond_1

    .line 101
    .line 102
    new-instance p0, Lna5;

    .line 103
    .line 104
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    add-int/lit8 v0, v0, 0x7

    .line 116
    .line 117
    div-int/lit8 v0, v0, 0x8

    .line 118
    .line 119
    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    add-int/lit8 v1, v1, 0x7

    .line 124
    .line 125
    div-int/lit8 v1, v1, 0x8

    .line 126
    .line 127
    add-int/2addr v1, v0

    .line 128
    add-int/lit8 v1, v1, -0x2

    .line 129
    .line 130
    invoke-direct {p0, v3, v2, v1}, Lna5;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    .line 131
    .line 132
    .line 133
    return-object p0

    .line 134
    :cond_1
    const-string p0, "MEGA RSA private key is invalid"

    .line 135
    .line 136
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    const/4 p0, 0x0

    .line 140
    return-object p0
.end method

.method public static b(Ljava/lang/String;[B)[B
    .locals 2

    .line 1
    const/16 v0, 0x2b

    .line 2
    .line 3
    const/16 v1, 0x2d

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const/16 v0, 0x2f

    .line 13
    .line 14
    const/16 v1, 0x5f

    .line 15
    .line 16
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    rem-int/lit8 v0, v0, 0x4

    .line 28
    .line 29
    rsub-int/lit8 v0, v0, 0x4

    .line 30
    .line 31
    rem-int/lit8 v0, v0, 0x4

    .line 32
    .line 33
    const-string v1, "="

    .line 34
    .line 35
    invoke-static {v0, v1}, Luq7;->R(ILjava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {p0, v0}, Leq3;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-static {}, Ljava/util/Base64;->getUrlDecoder()Ljava/util/Base64$Decoder;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0, p0}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    array-length v0, p0

    .line 55
    const/16 v1, 0x10

    .line 56
    .line 57
    if-ne v0, v1, :cond_0

    .line 58
    .line 59
    invoke-static {p1, p0}, Ly13;->b([B[B)[B

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    return-object p0

    .line 64
    :cond_0
    array-length p0, p0

    .line 65
    const-string p1, "Unexpected MEGA encrypted master key size: "

    .line 66
    .line 67
    invoke-static {p0, p1}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-static {p0}, Lf6;->g(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    const/4 p0, 0x0

    .line 75
    return-object p0
.end method

.method public static c([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    if-eqz p1, :cond_6

    .line 2
    .line 3
    invoke-static {p1}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_1

    .line 10
    .line 11
    :cond_0
    if-eqz p2, :cond_6

    .line 12
    .line 13
    invoke-static {p2}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    goto/16 :goto_1

    .line 20
    .line 21
    :cond_1
    invoke-static {p1}, Lx13;->c(Ljava/lang/String;)[B

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-static {p0, p1}, Ly13;->b([B[B)[B

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-static {p2}, Lx13;->c(Ljava/lang/String;)[B

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    const/4 v0, 0x0

    .line 34
    new-array v1, v0, [B

    .line 35
    .line 36
    :try_start_0
    invoke-static {p0}, Loa5;->a([B)Lna5;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-static {p2, v0}, Loa5;->f([BI)Lma5;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    iget v4, v3, Lma5;->b:I

    .line 45
    .line 46
    const-string v5, "MEGA RSA encrypted session"

    .line 47
    .line 48
    invoke-static {v5, v4, p2}, Loa5;->g(Ljava/lang/String;I[B)V

    .line 49
    .line 50
    .line 51
    iget-object v3, v3, Lma5;->a:Ljava/math/BigInteger;

    .line 52
    .line 53
    iget-object v4, v2, Lna5;->b:Ljava/math/BigInteger;

    .line 54
    .line 55
    iget-object v5, v2, Lna5;->a:Ljava/math/BigInteger;

    .line 56
    .line 57
    invoke-virtual {v3, v4, v5}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    iget v2, v2, Lna5;->c:I

    .line 65
    .line 66
    invoke-static {v2, v3}, Loa5;->i(ILjava/math/BigInteger;)[B

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    array-length v2, v1

    .line 71
    const/16 v3, 0x2b

    .line 72
    .line 73
    if-lt v2, v3, :cond_5

    .line 74
    .line 75
    invoke-static {v1, v0, v3}, Lx50;->k0([BII)[B

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-static {p3}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    if-nez v3, :cond_4

    .line 84
    .line 85
    array-length v3, v2

    .line 86
    const/16 v4, 0x1b

    .line 87
    .line 88
    if-lt v3, v4, :cond_3

    .line 89
    .line 90
    new-instance v3, Ljava/lang/String;

    .line 91
    .line 92
    const/16 v5, 0x10

    .line 93
    .line 94
    invoke-static {v2, v5, v4}, Lx50;->k0([BII)[B

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    sget-object v5, Lf51;->d:Ljava/nio/charset/Charset;

    .line 99
    .line 100
    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v3, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result p3

    .line 107
    if-eqz p3, :cond_2

    .line 108
    .line 109
    invoke-static {}, Ljava/util/Base64;->getUrlEncoder()Ljava/util/Base64$Encoder;

    .line 110
    .line 111
    .line 112
    move-result-object p3

    .line 113
    invoke-virtual {p3}, Ljava/util/Base64$Encoder;->withoutPadding()Ljava/util/Base64$Encoder;

    .line 114
    .line 115
    .line 116
    move-result-object p3

    .line 117
    invoke-virtual {p3, v2}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p3

    .line 121
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    .line 123
    .line 124
    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 125
    .line 126
    .line 127
    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 128
    .line 129
    .line 130
    invoke-static {p2, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 131
    .line 132
    .line 133
    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 134
    .line 135
    .line 136
    return-object p3

    .line 137
    :cond_2
    :try_start_1
    const-string p3, "MEGA RSA decrypted session user handle mismatch"

    .line 138
    .line 139
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 140
    .line 141
    invoke-direct {v2, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    throw v2

    .line 145
    :catchall_0
    move-exception p3

    .line 146
    goto :goto_0

    .line 147
    :cond_3
    const-string p3, "MEGA RSA decrypted session is missing user handle"

    .line 148
    .line 149
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 150
    .line 151
    invoke-direct {v2, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    throw v2

    .line 155
    :cond_4
    const-string p3, "MEGA login response is missing user handle"

    .line 156
    .line 157
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 158
    .line 159
    invoke-direct {v2, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    throw v2

    .line 163
    :cond_5
    const-string p3, "MEGA RSA decrypted session is too short"

    .line 164
    .line 165
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 166
    .line 167
    invoke-direct {v2, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    :goto_0
    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 172
    .line 173
    .line 174
    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 175
    .line 176
    .line 177
    invoke-static {p2, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 178
    .line 179
    .line 180
    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 181
    .line 182
    .line 183
    throw p3

    .line 184
    :cond_6
    :goto_1
    const/4 p0, 0x0

    .line 185
    return-object p0
.end method

.method public static e(Lfl4;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 p1, 0x0

    .line 6
    if-eqz p0, :cond_1

    .line 7
    .line 8
    instance-of v0, p0, Lel4;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object p0, p1

    .line 14
    :goto_0
    if-eqz p0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Lqj4;->o()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    if-eqz p0, :cond_1

    .line 21
    .line 22
    invoke-static {p0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_1
    return-object p1
.end method

.method public static f([BI)Lma5;
    .locals 4

    .line 1
    add-int/lit8 v0, p1, 0x2

    .line 2
    .line 3
    array-length v1, p0

    .line 4
    const/4 v2, 0x0

    .line 5
    if-gt v0, v1, :cond_1

    .line 6
    .line 7
    aget-byte v1, p0, p1

    .line 8
    .line 9
    and-int/lit16 v1, v1, 0xff

    .line 10
    .line 11
    shl-int/lit8 v1, v1, 0x8

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    add-int/2addr p1, v3

    .line 15
    aget-byte p1, p0, p1

    .line 16
    .line 17
    and-int/lit16 p1, p1, 0xff

    .line 18
    .line 19
    or-int/2addr p1, v1

    .line 20
    add-int/lit8 p1, p1, 0x7

    .line 21
    .line 22
    div-int/lit8 p1, p1, 0x8

    .line 23
    .line 24
    add-int/2addr p1, v0

    .line 25
    array-length v1, p0

    .line 26
    if-gt p1, v1, :cond_0

    .line 27
    .line 28
    new-instance v1, Lma5;

    .line 29
    .line 30
    new-instance v2, Ljava/math/BigInteger;

    .line 31
    .line 32
    invoke-static {p0, v0, p1}, Lx50;->k0([BII)[B

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-direct {v2, v3, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 37
    .line 38
    .line 39
    invoke-direct {v1, p1, v2}, Lma5;-><init>(ILjava/math/BigInteger;)V

    .line 40
    .line 41
    .line 42
    return-object v1

    .line 43
    :cond_0
    const-string p0, "Truncated MEGA MPI value"

    .line 44
    .line 45
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-object v2

    .line 49
    :cond_1
    const-string p0, "Truncated MEGA MPI length"

    .line 50
    .line 51
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return-object v2
.end method

.method public static g(Ljava/lang/String;I[B)V
    .locals 1

    .line 1
    array-length v0, p2

    .line 2
    if-gt p1, v0, :cond_0

    .line 3
    .line 4
    array-length p2, p2

    .line 5
    sub-int/2addr p2, p1

    .line 6
    const/16 p1, 0x10

    .line 7
    .line 8
    if-ge p2, p1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const-string p1, " has invalid trailing data"

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-static {p0}, Lf6;->g(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public static h(Lfl4;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Loa5;->e(Lfl4;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const-string p0, "MEGA login response is missing \'"

    .line 9
    .line 10
    invoke-static {p1, p0}, Lm0;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    return-object p0
.end method

.method public static i(ILjava/math/BigInteger;)[B
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    array-length v1, p1

    .line 14
    const/4 v2, 0x0

    .line 15
    move v3, v2

    .line 16
    :goto_0
    if-ge v2, v1, :cond_2

    .line 17
    .line 18
    aget-byte v4, p1, v2

    .line 19
    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    if-nez v4, :cond_1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    const/4 v3, 0x1

    .line 41
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    invoke-static {v0}, Lel1;->s1(Ljava/util/List;)[B

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    array-length v0, p1

    .line 49
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    array-length v0, p1

    .line 54
    sub-int/2addr p0, v0

    .line 55
    new-array p0, p0, [B

    .line 56
    .line 57
    invoke-static {p0, p1}, Lx50;->u0([B[B)[B

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    return-object p0
.end method

.method public static k(Ljava/lang/String;[B)V
    .locals 5

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    invoke-static {p0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const/16 v0, 0x2d

    .line 13
    .line 14
    const/16 v1, 0x2b

    .line 15
    .line 16
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    const/16 v0, 0x2f

    .line 24
    .line 25
    const/16 v2, 0x5f

    .line 26
    .line 27
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    rem-int/lit8 v0, v0, 0x4

    .line 39
    .line 40
    rsub-int/lit8 v0, v0, 0x4

    .line 41
    .line 42
    rem-int/lit8 v0, v0, 0x4

    .line 43
    .line 44
    const-string v2, "="

    .line 45
    .line 46
    invoke-static {v0, v2}, Luq7;->R(ILjava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-static {p0, v0}, Leq3;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-static {}, Ljava/util/Base64;->getUrlDecoder()Ljava/util/Base64$Decoder;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0, p0}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    array-length v0, p0

    .line 66
    if-ne v0, v1, :cond_1

    .line 67
    .line 68
    const/4 v0, 0x0

    .line 69
    const/16 v1, 0x10

    .line 70
    .line 71
    invoke-static {p0, v0, v1}, Lx50;->k0([BII)[B

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    array-length v3, p0

    .line 76
    sub-int/2addr v3, v1

    .line 77
    array-length v1, p0

    .line 78
    invoke-static {p0, v3, v1}, Lx50;->k0([BII)[B

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-static {p1, v2}, Ly13;->c([B[B)[B

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    :try_start_0
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 87
    .line 88
    .line 89
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    if-eqz v3, :cond_0

    .line 91
    .line 92
    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 93
    .line 94
    .line 95
    invoke-static {v2, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 96
    .line 97
    .line 98
    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 99
    .line 100
    .line 101
    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :cond_0
    :try_start_1
    const-string v3, "MEGA temporary session challenge verification failed"

    .line 106
    .line 107
    new-instance v4, Ljava/lang/IllegalArgumentException;

    .line 108
    .line 109
    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    :catchall_0
    move-exception v3

    .line 114
    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 115
    .line 116
    .line 117
    invoke-static {v2, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 118
    .line 119
    .line 120
    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 121
    .line 122
    .line 123
    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 124
    .line 125
    .line 126
    throw v3

    .line 127
    :cond_1
    const-string p0, "MEGA temporary session id has invalid length"

    .line 128
    .line 129
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    return-void

    .line 133
    :cond_2
    const-string p0, "MEGA login response is missing a usable session id"

    .line 134
    .line 135
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgh;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-static/range {p1 .. p1}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    const/4 v4, 0x0

    .line 33
    if-lez v3, :cond_16

    .line 34
    .line 35
    new-instance v3, Lfl4;

    .line 36
    .line 37
    invoke-direct {v3}, Lfl4;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string v5, "us0"

    .line 41
    .line 42
    const-string v6, "a"

    .line 43
    .line 44
    invoke-virtual {v3, v6, v5}, Lfl4;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const-string v5, "user"

    .line 48
    .line 49
    invoke-virtual {v3, v5, v2}, Lfl4;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    sget-object v7, Lda5;->READ_SAFE:Lda5;

    .line 53
    .line 54
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    iget-object v8, v0, Loa5;->a:Lea5;

    .line 58
    .line 59
    invoke-virtual {v8, v3, v4, v7}, Lea5;->b(Lfl4;Ljava/lang/String;Lda5;)Lqj4;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-virtual {v3}, Lqj4;->i()Lfl4;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    const-string v7, "v"

    .line 68
    .line 69
    invoke-virtual {v3, v7}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    if-eqz v7, :cond_15

    .line 74
    .line 75
    invoke-virtual {v7}, Lqj4;->f()I

    .line 76
    .line 77
    .line 78
    move-result v7

    .line 79
    const/4 v9, 0x1

    .line 80
    if-gt v9, v7, :cond_14

    .line 81
    .line 82
    const/4 v10, 0x3

    .line 83
    if-ge v7, v10, :cond_14

    .line 84
    .line 85
    const-string v11, "s"

    .line 86
    .line 87
    invoke-virtual {v3, v11}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    const/4 v11, 0x4

    .line 92
    if-eqz v3, :cond_1

    .line 93
    .line 94
    invoke-virtual {v3}, Lqj4;->o()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    if-eqz v3, :cond_1

    .line 99
    .line 100
    invoke-static {v3}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 101
    .line 102
    .line 103
    move-result v12

    .line 104
    if-nez v12, :cond_0

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_0
    move-object v3, v4

    .line 108
    :goto_0
    if-eqz v3, :cond_1

    .line 109
    .line 110
    const/16 v12, 0x2b

    .line 111
    .line 112
    const/16 v13, 0x2d

    .line 113
    .line 114
    invoke-virtual {v3, v12, v13}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    const/16 v12, 0x2f

    .line 122
    .line 123
    const/16 v13, 0x5f

    .line 124
    .line 125
    invoke-virtual {v3, v12, v13}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 133
    .line 134
    .line 135
    move-result v12

    .line 136
    rem-int/2addr v12, v11

    .line 137
    rsub-int/lit8 v12, v12, 0x4

    .line 138
    .line 139
    rem-int/2addr v12, v11

    .line 140
    const-string v13, "="

    .line 141
    .line 142
    invoke-static {v12, v13}, Luq7;->R(ILjava/lang/String;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v12

    .line 146
    invoke-static {v3, v12}, Leq3;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    invoke-static {}, Ljava/util/Base64;->getUrlDecoder()Ljava/util/Base64$Decoder;

    .line 151
    .line 152
    .line 153
    move-result-object v12

    .line 154
    invoke-virtual {v12, v3}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 159
    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_1
    move-object v3, v4

    .line 163
    :goto_1
    if-le v7, v9, :cond_3

    .line 164
    .line 165
    if-eqz v3, :cond_2

    .line 166
    .line 167
    array-length v12, v3

    .line 168
    if-eqz v12, :cond_2

    .line 169
    .line 170
    goto :goto_2

    .line 171
    :cond_2
    const-string v0, "MEGA prelogin response is missing salt"

    .line 172
    .line 173
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    return-object v4

    .line 177
    :cond_3
    :goto_2
    if-ne v7, v9, :cond_f

    .line 178
    .line 179
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 180
    .line 181
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 182
    .line 183
    .line 184
    move-object/from16 v7, p2

    .line 185
    .line 186
    invoke-virtual {v7, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 191
    .line 192
    .line 193
    invoke-static {v3}, Lx13;->e([B)[I

    .line 194
    .line 195
    .line 196
    move-result-object v3

    .line 197
    const v7, -0x2e41c07f

    .line 198
    .line 199
    .line 200
    const v14, 0x152cb56

    .line 201
    .line 202
    .line 203
    const v15, -0x6c3b981d

    .line 204
    .line 205
    .line 206
    move/from16 p1, v10

    .line 207
    .line 208
    const v10, 0x7db0c7a4

    .line 209
    .line 210
    .line 211
    filled-new-array {v15, v10, v7, v14}, [I

    .line 212
    .line 213
    .line 214
    move-result-object v7

    .line 215
    invoke-static {v7}, Lx13;->a([I)[B

    .line 216
    .line 217
    .line 218
    move-result-object v7

    .line 219
    array-length v10, v3

    .line 220
    add-int/lit8 v10, v10, 0x3

    .line 221
    .line 222
    div-int/2addr v10, v11

    .line 223
    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    .line 224
    .line 225
    .line 226
    move-result v10

    .line 227
    new-array v14, v10, [[B

    .line 228
    .line 229
    const/4 v15, 0x0

    .line 230
    :goto_3
    if-ge v15, v10, :cond_7

    .line 231
    .line 232
    move-object/from16 v16, v4

    .line 233
    .line 234
    new-array v4, v11, [I

    .line 235
    .line 236
    const/4 v12, 0x0

    .line 237
    const/16 v17, 0x0

    .line 238
    .line 239
    :goto_4
    if-ge v12, v11, :cond_5

    .line 240
    .line 241
    mul-int/lit8 v18, v15, 0x4

    .line 242
    .line 243
    add-int v9, v18, v12

    .line 244
    .line 245
    const/16 v18, 0x10

    .line 246
    .line 247
    if-ltz v9, :cond_4

    .line 248
    .line 249
    array-length v13, v3

    .line 250
    if-ge v9, v13, :cond_4

    .line 251
    .line 252
    aget v9, v3, v9

    .line 253
    .line 254
    goto :goto_5

    .line 255
    :cond_4
    move/from16 v9, v17

    .line 256
    .line 257
    :goto_5
    aput v9, v4, v12

    .line 258
    .line 259
    add-int/lit8 v12, v12, 0x1

    .line 260
    .line 261
    const/4 v9, 0x1

    .line 262
    goto :goto_4

    .line 263
    :cond_5
    const/16 v18, 0x10

    .line 264
    .line 265
    invoke-static/range {v18 .. v18}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 266
    .line 267
    .line 268
    move-result-object v9

    .line 269
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 270
    .line 271
    .line 272
    move/from16 v12, v17

    .line 273
    .line 274
    :goto_6
    if-ge v12, v11, :cond_6

    .line 275
    .line 276
    aget v13, v4, v12

    .line 277
    .line 278
    invoke-virtual {v9, v13}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 279
    .line 280
    .line 281
    add-int/lit8 v12, v12, 0x1

    .line 282
    .line 283
    goto :goto_6

    .line 284
    :cond_6
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->array()[B

    .line 285
    .line 286
    .line 287
    move-result-object v4

    .line 288
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 289
    .line 290
    .line 291
    aput-object v4, v14, v15

    .line 292
    .line 293
    add-int/lit8 v15, v15, 0x1

    .line 294
    .line 295
    move-object/from16 v4, v16

    .line 296
    .line 297
    const/4 v9, 0x1

    .line 298
    goto :goto_3

    .line 299
    :cond_7
    move-object/from16 v16, v4

    .line 300
    .line 301
    const/16 v17, 0x0

    .line 302
    .line 303
    const/16 v18, 0x10

    .line 304
    .line 305
    move/from16 v3, v17

    .line 306
    .line 307
    :goto_7
    const/high16 v4, 0x10000

    .line 308
    .line 309
    if-ge v3, v4, :cond_9

    .line 310
    .line 311
    move/from16 v4, v17

    .line 312
    .line 313
    :goto_8
    if-ge v4, v10, :cond_8

    .line 314
    .line 315
    aget-object v9, v14, v4

    .line 316
    .line 317
    invoke-static {v9, v7}, Ly13;->c([B[B)[B

    .line 318
    .line 319
    .line 320
    move-result-object v7

    .line 321
    add-int/lit8 v4, v4, 0x1

    .line 322
    .line 323
    goto :goto_8

    .line 324
    :cond_8
    add-int/lit8 v3, v3, 0x1

    .line 325
    .line 326
    goto :goto_7

    .line 327
    :cond_9
    new-instance v3, Lla;

    .line 328
    .line 329
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 330
    .line 331
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 332
    .line 333
    .line 334
    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 335
    .line 336
    .line 337
    move-result-object v4

    .line 338
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 339
    .line 340
    .line 341
    array-length v9, v4

    .line 342
    add-int/lit8 v9, v9, 0x3

    .line 343
    .line 344
    div-int/2addr v9, v11

    .line 345
    mul-int/2addr v9, v11

    .line 346
    invoke-static {v4, v9}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 347
    .line 348
    .line 349
    move-result-object v4

    .line 350
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 351
    .line 352
    .line 353
    move-result-object v4

    .line 354
    div-int/2addr v9, v11

    .line 355
    new-array v10, v9, [I

    .line 356
    .line 357
    move/from16 v12, v17

    .line 358
    .line 359
    :goto_9
    if-ge v12, v9, :cond_a

    .line 360
    .line 361
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    .line 362
    .line 363
    .line 364
    move-result v13

    .line 365
    aput v13, v10, v12

    .line 366
    .line 367
    add-int/lit8 v12, v12, 0x1

    .line 368
    .line 369
    goto :goto_9

    .line 370
    :cond_a
    new-array v4, v11, [I

    .line 371
    .line 372
    move/from16 v12, v17

    .line 373
    .line 374
    move v13, v12

    .line 375
    :goto_a
    if-ge v12, v9, :cond_b

    .line 376
    .line 377
    aget v14, v10, v12

    .line 378
    .line 379
    add-int/lit8 v15, v13, 0x1

    .line 380
    .line 381
    and-int/lit8 v13, v13, 0x3

    .line 382
    .line 383
    aget v19, v4, v13

    .line 384
    .line 385
    xor-int v14, v19, v14

    .line 386
    .line 387
    aput v14, v4, v13

    .line 388
    .line 389
    add-int/lit8 v12, v12, 0x1

    .line 390
    .line 391
    move v13, v15

    .line 392
    goto :goto_a

    .line 393
    :cond_b
    invoke-static/range {v18 .. v18}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 394
    .line 395
    .line 396
    move-result-object v9

    .line 397
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 398
    .line 399
    .line 400
    move/from16 v10, v17

    .line 401
    .line 402
    :goto_b
    if-ge v10, v11, :cond_c

    .line 403
    .line 404
    aget v12, v4, v10

    .line 405
    .line 406
    invoke-virtual {v9, v12}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 407
    .line 408
    .line 409
    add-int/lit8 v10, v10, 0x1

    .line 410
    .line 411
    goto :goto_b

    .line 412
    :cond_c
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->array()[B

    .line 413
    .line 414
    .line 415
    move-result-object v4

    .line 416
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 417
    .line 418
    .line 419
    array-length v9, v4

    .line 420
    move/from16 v10, v18

    .line 421
    .line 422
    if-ne v9, v10, :cond_e

    .line 423
    .line 424
    const-string v9, "AES/ECB/NoPadding"

    .line 425
    .line 426
    invoke-static {v9}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 427
    .line 428
    .line 429
    move-result-object v9

    .line 430
    new-instance v10, Ljavax/crypto/spec/SecretKeySpec;

    .line 431
    .line 432
    const-string v11, "AES"

    .line 433
    .line 434
    invoke-direct {v10, v7, v11}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 435
    .line 436
    .line 437
    const/4 v11, 0x1

    .line 438
    invoke-virtual {v9, v11, v10}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 439
    .line 440
    .line 441
    move/from16 v10, v17

    .line 442
    .line 443
    :goto_c
    const/16 v11, 0x4000

    .line 444
    .line 445
    if-ge v10, v11, :cond_d

    .line 446
    .line 447
    invoke-virtual {v9, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 448
    .line 449
    .line 450
    move-result-object v4

    .line 451
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 452
    .line 453
    .line 454
    add-int/lit8 v10, v10, 0x1

    .line 455
    .line 456
    goto :goto_c

    .line 457
    :cond_d
    invoke-static {v4}, Lx13;->e([B)[I

    .line 458
    .line 459
    .line 460
    move-result-object v4

    .line 461
    aget v9, v4, v17

    .line 462
    .line 463
    const/4 v10, 0x2

    .line 464
    aget v4, v4, v10

    .line 465
    .line 466
    filled-new-array {v9, v4}, [I

    .line 467
    .line 468
    .line 469
    move-result-object v4

    .line 470
    invoke-static {v4}, Lx13;->a([I)[B

    .line 471
    .line 472
    .line 473
    move-result-object v4

    .line 474
    invoke-static {}, Ljava/util/Base64;->getUrlEncoder()Ljava/util/Base64$Encoder;

    .line 475
    .line 476
    .line 477
    move-result-object v9

    .line 478
    invoke-virtual {v9}, Ljava/util/Base64$Encoder;->withoutPadding()Ljava/util/Base64$Encoder;

    .line 479
    .line 480
    .line 481
    move-result-object v9

    .line 482
    invoke-virtual {v9, v4}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object v4

    .line 486
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 487
    .line 488
    .line 489
    move/from16 v9, v17

    .line 490
    .line 491
    invoke-direct {v3, v7, v4, v9}, Lla;-><init>(Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 492
    .line 493
    .line 494
    goto :goto_d

    .line 495
    :cond_e
    const-string v0, "AES-ECB repeated encryption block must be 16 bytes"

    .line 496
    .line 497
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 498
    .line 499
    .line 500
    return-object v16

    .line 501
    :cond_f
    move-object/from16 v7, p2

    .line 502
    .line 503
    move-object/from16 v16, v4

    .line 504
    .line 505
    if-eqz v3, :cond_13

    .line 506
    .line 507
    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    .line 508
    .line 509
    .line 510
    move-result-object v4

    .line 511
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 512
    .line 513
    .line 514
    new-instance v7, Ljavax/crypto/spec/PBEKeySpec;

    .line 515
    .line 516
    const v9, 0x186a0

    .line 517
    .line 518
    .line 519
    const/16 v10, 0x100

    .line 520
    .line 521
    invoke-direct {v7, v4, v3, v9, v10}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 522
    .line 523
    .line 524
    :try_start_0
    const-string v3, "PBKDF2WithHmacSHA512"

    .line 525
    .line 526
    invoke-static {v3}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    .line 527
    .line 528
    .line 529
    move-result-object v3

    .line 530
    invoke-virtual {v3, v7}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    .line 531
    .line 532
    .line 533
    move-result-object v3

    .line 534
    invoke-interface {v3}, Ljava/security/Key;->getEncoded()[B

    .line 535
    .line 536
    .line 537
    move-result-object v3

    .line 538
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 539
    .line 540
    .line 541
    const/4 v9, 0x0

    .line 542
    invoke-static {v4, v9}, Ljava/util/Arrays;->fill([CC)V

    .line 543
    .line 544
    .line 545
    invoke-virtual {v7}, Ljavax/crypto/spec/PBEKeySpec;->clearPassword()V

    .line 546
    .line 547
    .line 548
    new-instance v4, Lla;

    .line 549
    .line 550
    const/16 v10, 0x10

    .line 551
    .line 552
    invoke-static {v3, v9, v10}, Lx50;->k0([BII)[B

    .line 553
    .line 554
    .line 555
    move-result-object v7

    .line 556
    const/16 v11, 0x20

    .line 557
    .line 558
    invoke-static {v3, v10, v11}, Lx50;->k0([BII)[B

    .line 559
    .line 560
    .line 561
    move-result-object v10

    .line 562
    invoke-static {}, Ljava/util/Base64;->getUrlEncoder()Ljava/util/Base64$Encoder;

    .line 563
    .line 564
    .line 565
    move-result-object v11

    .line 566
    invoke-virtual {v11}, Ljava/util/Base64$Encoder;->withoutPadding()Ljava/util/Base64$Encoder;

    .line 567
    .line 568
    .line 569
    move-result-object v11

    .line 570
    invoke-virtual {v11, v10}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    .line 571
    .line 572
    .line 573
    move-result-object v10

    .line 574
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 575
    .line 576
    .line 577
    invoke-direct {v4, v7, v10, v9}, Lla;-><init>(Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 578
    .line 579
    .line 580
    invoke-static {v3, v9}, Ljava/util/Arrays;->fill([BB)V

    .line 581
    .line 582
    .line 583
    move-object v3, v4

    .line 584
    :goto_d
    iget-object v4, v3, Lla;->b:Ljava/lang/Object;

    .line 585
    .line 586
    check-cast v4, [B

    .line 587
    .line 588
    iget-object v3, v3, Lla;->a:Ljava/lang/Object;

    .line 589
    .line 590
    check-cast v3, Ljava/lang/String;

    .line 591
    .line 592
    new-instance v7, Lfl4;

    .line 593
    .line 594
    invoke-direct {v7}, Lfl4;-><init>()V

    .line 595
    .line 596
    .line 597
    const-string v9, "us"

    .line 598
    .line 599
    invoke-virtual {v7, v6, v9}, Lfl4;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    .line 601
    .line 602
    invoke-virtual {v7, v5, v2}, Lfl4;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    .line 604
    .line 605
    const-string v2, "uh"

    .line 606
    .line 607
    invoke-virtual {v7, v2, v3}, Lfl4;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    .line 609
    .line 610
    if-eqz v1, :cond_11

    .line 611
    .line 612
    invoke-static {v1}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 613
    .line 614
    .line 615
    move-result v2

    .line 616
    if-eqz v2, :cond_10

    .line 617
    .line 618
    goto :goto_e

    .line 619
    :cond_10
    const-string v2, "mfa"

    .line 620
    .line 621
    invoke-virtual {v7, v2, v1}, Lfl4;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    .line 623
    .line 624
    :cond_11
    :goto_e
    sget-object v1, Lda5;->READ_SAFE:Lda5;

    .line 625
    .line 626
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 627
    .line 628
    .line 629
    move-object/from16 v2, v16

    .line 630
    .line 631
    invoke-virtual {v8, v7, v2, v1}, Lea5;->b(Lfl4;Ljava/lang/String;Lda5;)Lqj4;

    .line 632
    .line 633
    .line 634
    move-result-object v1

    .line 635
    invoke-virtual {v1}, Lqj4;->i()Lfl4;

    .line 636
    .line 637
    .line 638
    move-result-object v1

    .line 639
    const-string v2, "k"

    .line 640
    .line 641
    invoke-static {v1, v2}, Loa5;->h(Lfl4;Ljava/lang/String;)Ljava/lang/String;

    .line 642
    .line 643
    .line 644
    move-result-object v2

    .line 645
    const-string v3, "csid"

    .line 646
    .line 647
    invoke-static {v1, v3}, Loa5;->e(Lfl4;Ljava/lang/String;)Ljava/lang/String;

    .line 648
    .line 649
    .line 650
    move-result-object v3

    .line 651
    const-string v5, "privk"

    .line 652
    .line 653
    invoke-static {v1, v5}, Loa5;->e(Lfl4;Ljava/lang/String;)Ljava/lang/String;

    .line 654
    .line 655
    .line 656
    move-result-object v5

    .line 657
    const-string v6, "tsid"

    .line 658
    .line 659
    invoke-static {v1, v6}, Loa5;->e(Lfl4;Ljava/lang/String;)Ljava/lang/String;

    .line 660
    .line 661
    .line 662
    move-result-object v6

    .line 663
    const-string v7, "u"

    .line 664
    .line 665
    invoke-static {v1, v7}, Loa5;->h(Lfl4;Ljava/lang/String;)Ljava/lang/String;

    .line 666
    .line 667
    .line 668
    move-result-object v1

    .line 669
    :try_start_1
    invoke-static {v2, v4}, Loa5;->b(Ljava/lang/String;[B)[B

    .line 670
    .line 671
    .line 672
    move-result-object v2

    .line 673
    invoke-static {v2, v5, v3, v1}, Loa5;->c([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 674
    .line 675
    .line 676
    move-result-object v3

    .line 677
    if-nez v3, :cond_12

    .line 678
    .line 679
    invoke-static {v6, v2}, Loa5;->k(Ljava/lang/String;[B)V

    .line 680
    .line 681
    .line 682
    goto :goto_f

    .line 683
    :catchall_0
    move-exception v0

    .line 684
    const/4 v9, 0x0

    .line 685
    goto :goto_10

    .line 686
    :cond_12
    move-object v6, v3

    .line 687
    :goto_f
    invoke-virtual {v0, v6}, Loa5;->j(Ljava/lang/String;)V

    .line 688
    .line 689
    .line 690
    new-instance v0, Lgh;

    .line 691
    .line 692
    invoke-direct {v0, v6, v2, v1}, Lgh;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 693
    .line 694
    .line 695
    const/4 v9, 0x0

    .line 696
    invoke-static {v4, v9}, Ljava/util/Arrays;->fill([BB)V

    .line 697
    .line 698
    .line 699
    return-object v0

    .line 700
    :goto_10
    invoke-static {v4, v9}, Ljava/util/Arrays;->fill([BB)V

    .line 701
    .line 702
    .line 703
    throw v0

    .line 704
    :catchall_1
    move-exception v0

    .line 705
    const/4 v9, 0x0

    .line 706
    invoke-static {v4, v9}, Ljava/util/Arrays;->fill([CC)V

    .line 707
    .line 708
    .line 709
    invoke-virtual {v7}, Ljavax/crypto/spec/PBEKeySpec;->clearPassword()V

    .line 710
    .line 711
    .line 712
    throw v0

    .line 713
    :cond_13
    const-string v0, "Required value was null."

    .line 714
    .line 715
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 716
    .line 717
    .line 718
    const/16 v16, 0x0

    .line 719
    .line 720
    return-object v16

    .line 721
    :cond_14
    move-object/from16 v16, v4

    .line 722
    .line 723
    const-string v0, "Unsupported MEGA account version: "

    .line 724
    .line 725
    invoke-static {v7, v0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 726
    .line 727
    .line 728
    move-result-object v0

    .line 729
    invoke-static {v0}, Lf6;->g(Ljava/lang/Object;)V

    .line 730
    .line 731
    .line 732
    return-object v16

    .line 733
    :cond_15
    move-object/from16 v16, v4

    .line 734
    .line 735
    const-string v0, "MEGA prelogin response is missing version"

    .line 736
    .line 737
    invoke-static {v0}, Ll0;->e(Ljava/lang/String;)V

    .line 738
    .line 739
    .line 740
    return-object v16

    .line 741
    :cond_16
    move-object/from16 v16, v4

    .line 742
    .line 743
    const-string v0, "MEGA email is blank"

    .line 744
    .line 745
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 746
    .line 747
    .line 748
    return-object v16
.end method

.method public final j(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lfl4;

    .line 2
    .line 3
    invoke-direct {v0}, Lfl4;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "a"

    .line 7
    .line 8
    const-string v2, "ug"

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lfl4;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const-string v2, "v"

    .line 19
    .line 20
    invoke-virtual {v0, v2, v1}, Lfl4;->t(Ljava/lang/String;Ljava/lang/Number;)V

    .line 21
    .line 22
    .line 23
    iget-object p0, p0, Loa5;->a:Lea5;

    .line 24
    .line 25
    sget-object v1, Lda5;->READ_SAFE:Lda5;

    .line 26
    .line 27
    invoke-virtual {p0, v0, p1, v1}, Lea5;->b(Lfl4;Ljava/lang/String;Lda5;)Lqj4;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    instance-of p0, p0, Lfl4;

    .line 32
    .line 33
    if-eqz p0, :cond_0

    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    const-string p0, "MEGA session verification did not return a user object"

    .line 37
    .line 38
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method
