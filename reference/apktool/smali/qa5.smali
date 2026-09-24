.class public abstract Lqa5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "MEGA"

    .line 2
    .line 3
    sget-object v1, Lf51;->a:Ljava/nio/charset/Charset;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    sput-object v0, Lqa5;->a:[B

    .line 13
    .line 14
    return-void
.end method

.method public static a([ILjava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lx13;->a([I)[B

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-static {p1}, Lx13;->c(Ljava/lang/String;)[B

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const/16 v0, 0x10

    .line 13
    .line 14
    new-array v1, v0, [B

    .line 15
    .line 16
    array-length v2, p1

    .line 17
    rem-int/2addr v2, v0

    .line 18
    const/4 v0, 0x0

    .line 19
    if-nez v2, :cond_5

    .line 20
    .line 21
    const-string v2, "AES/CBC/NoPadding"

    .line 22
    .line 23
    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    .line 28
    .line 29
    const-string v4, "AES"

    .line 30
    .line 31
    invoke-direct {v3, p0, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 32
    .line 33
    .line 34
    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    .line 35
    .line 36
    invoke-direct {v4, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 37
    .line 38
    .line 39
    const/4 v1, 0x2

    .line 40
    invoke-virtual {v2, v1, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    const/4 v2, 0x0

    .line 51
    :try_start_0
    array-length v3, v1

    .line 52
    sget-object v4, Lqa5;->a:[B

    .line 53
    .line 54
    array-length v5, v4

    .line 55
    if-lt v3, v5, :cond_4

    .line 56
    .line 57
    array-length v3, v4

    .line 58
    invoke-static {v1, v2, v3}, Lx50;->k0([BII)[B

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-eqz v3, :cond_3

    .line 67
    .line 68
    array-length v3, v4

    .line 69
    array-length v4, v1

    .line 70
    invoke-static {v1, v3, v4}, Lx50;->k0([BII)[B

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    new-instance v4, Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .line 78
    .line 79
    array-length v5, v3

    .line 80
    move v6, v2

    .line 81
    :goto_0
    if-ge v6, v5, :cond_0

    .line 82
    .line 83
    aget-byte v7, v3, v6

    .line 84
    .line 85
    if-eqz v7, :cond_0

    .line 86
    .line 87
    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 88
    .line 89
    .line 90
    move-result-object v7

    .line 91
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    add-int/lit8 v6, v6, 0x1

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :catchall_0
    move-exception v0

    .line 98
    goto :goto_2

    .line 99
    :cond_0
    invoke-static {v4}, Lel1;->s1(Ljava/util/List;)[B

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    sget-object v4, Lf51;->a:Ljava/nio/charset/Charset;

    .line 104
    .line 105
    new-instance v5, Ljava/lang/String;

    .line 106
    .line 107
    invoke-direct {v5, v3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 108
    .line 109
    .line 110
    invoke-static {v5}, Lyc9;->K(Ljava/lang/String;)Lqj4;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    invoke-virtual {v3}, Lqj4;->i()Lfl4;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    invoke-static {v3}, Lqa5;->c(Lfl4;)Lfl4;

    .line 119
    .line 120
    .line 121
    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    invoke-static {p0, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 123
    .line 124
    .line 125
    invoke-static {p1, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 126
    .line 127
    .line 128
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 129
    .line 130
    .line 131
    const-string p0, "n"

    .line 132
    .line 133
    invoke-virtual {v3, p0}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    if-eqz p0, :cond_2

    .line 138
    .line 139
    invoke-virtual {p0}, Lqj4;->o()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    if-eqz p0, :cond_2

    .line 144
    .line 145
    invoke-static {p0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    if-nez p1, :cond_1

    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_1
    move-object p0, v0

    .line 153
    :goto_1
    if-eqz p0, :cond_2

    .line 154
    .line 155
    return-object p0

    .line 156
    :cond_2
    const-string p0, "MEGA node attributes are missing name"

    .line 157
    .line 158
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    return-object v0

    .line 162
    :cond_3
    :try_start_1
    const-string v0, "MEGA node attributes have an invalid prefix"

    .line 163
    .line 164
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 165
    .line 166
    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    throw v3

    .line 170
    :cond_4
    const-string v0, "MEGA node attributes are shorter than expected"

    .line 171
    .line 172
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 173
    .line 174
    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    :goto_2
    invoke-static {p0, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 179
    .line 180
    .line 181
    invoke-static {p1, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 182
    .line 183
    .line 184
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 185
    .line 186
    .line 187
    throw v0

    .line 188
    :cond_5
    const-string p0, "AES-CBC ciphertext must be block aligned"

    .line 189
    .line 190
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    return-object v0
.end method

.method public static b([ILfl4;)Ljava/lang/String;
    .locals 5

    .line 1
    array-length v0, p0

    .line 2
    mul-int/lit8 v0, v0, 0x4

    .line 3
    .line 4
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    array-length v1, p0

    .line 12
    const/4 v2, 0x0

    .line 13
    move v3, v2

    .line 14
    :goto_0
    if-ge v3, v1, :cond_0

    .line 15
    .line 16
    aget v4, p0, v3

    .line 17
    .line 18
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 19
    .line 20
    .line 21
    add-int/lit8 v3, v3, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-static {p1}, Lqa5;->c(Lfl4;)Lfl4;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1}, Lqj4;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    sget-object v0, Lf51;->a:Ljava/nio/charset/Charset;

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    sget-object v0, Lqa5;->a:[B

    .line 49
    .line 50
    invoke-static {v0, p1}, Lx50;->u0([B[B)[B

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    array-length v0, p1

    .line 55
    add-int/lit8 v0, v0, 0xf

    .line 56
    .line 57
    const/16 v1, 0x10

    .line 58
    .line 59
    div-int/2addr v0, v1

    .line 60
    mul-int/2addr v0, v1

    .line 61
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    :try_start_0
    new-array v0, v1, [B

    .line 66
    .line 67
    invoke-static {p0, v0, p1}, Ly13;->a([B[B[B)[B

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-static {}, Ljava/util/Base64;->getUrlEncoder()Ljava/util/Base64$Encoder;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v1}, Ljava/util/Base64$Encoder;->withoutPadding()Ljava/util/Base64$Encoder;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v1, v0}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    .line 85
    .line 86
    invoke-static {p0, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 87
    .line 88
    .line 89
    invoke-static {p1, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 90
    .line 91
    .line 92
    return-object v0

    .line 93
    :catchall_0
    move-exception v0

    .line 94
    invoke-static {p0, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 95
    .line 96
    .line 97
    invoke-static {p1, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 98
    .line 99
    .line 100
    throw v0
.end method

.method public static c(Lfl4;)Lfl4;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lfl4;->w()Lfl4;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "n"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    instance-of v2, v1, Lkl4;

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    invoke-virtual {v1}, Lqj4;->k()Lkl4;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    iget-object v2, v2, Lkl4;->a:Ljava/io/Serializable;

    .line 22
    .line 23
    instance-of v2, v2, Ljava/lang/String;

    .line 24
    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v1, 0x0

    .line 29
    :goto_0
    if-eqz v1, :cond_1

    .line 30
    .line 31
    invoke-virtual {v1}, Lqj4;->o()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    sget-object v2, Ljava/text/Normalizer$Form;->NFC:Ljava/text/Normalizer$Form;

    .line 38
    .line 39
    invoke-static {v1, v2}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {p0, v0, v1}, Lfl4;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    return-object p0
.end method
