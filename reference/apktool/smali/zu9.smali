.class public final Lzu9;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lyu9;


# static fields
.field public static final d:Lid5;


# instance fields
.field public final a:Ljavax/crypto/spec/SecretKeySpec;

.field public final b:[B

.field public final c:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lid5;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, v1}, Lid5;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lzu9;->d:Lid5;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    array-length v0, p1

    .line 5
    invoke-static {v0}, Llg7;->P(I)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    .line 9
    .line 10
    const-string v1, "AES"

    .line 11
    .line 12
    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lzu9;->a:Ljavax/crypto/spec/SecretKeySpec;

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    invoke-static {p1}, Lu48;->e(I)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    sget-object v1, Lzu9;->d:Lid5;

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Ljavax/crypto/Cipher;

    .line 31
    .line 32
    invoke-virtual {v1, p1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 33
    .line 34
    .line 35
    const/16 p1, 0x10

    .line 36
    .line 37
    new-array p1, p1, [B

    .line 38
    .line 39
    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {p1}, Ljd4;->Q([B)[B

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iput-object p1, p0, Lzu9;->b:[B

    .line 48
    .line 49
    invoke-static {p1}, Ljd4;->Q([B)[B

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iput-object p1, p0, Lzu9;->c:[B

    .line 54
    .line 55
    return-void

    .line 56
    :cond_0
    const-string p0, "Can not use AES-CMAC in FIPS-mode."

    .line 57
    .line 58
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const/4 p0, 0x0

    .line 62
    throw p0
.end method


# virtual methods
.method public final a([BI)[B
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    const/16 v3, 0x10

    .line 8
    .line 9
    if-gt v2, v3, :cond_a

    .line 10
    .line 11
    const/4 v4, 0x1

    .line 12
    invoke-static {v4}, Lu48;->e(I)Z

    .line 13
    .line 14
    .line 15
    move-result v5

    .line 16
    const/4 v6, 0x0

    .line 17
    if-eqz v5, :cond_9

    .line 18
    .line 19
    sget-object v5, Lzu9;->d:Lid5;

    .line 20
    .line 21
    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    check-cast v5, Ljavax/crypto/Cipher;

    .line 26
    .line 27
    iget-object v7, v0, Lzu9;->a:Ljavax/crypto/spec/SecretKeySpec;

    .line 28
    .line 29
    invoke-virtual {v5, v4, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 30
    .line 31
    .line 32
    array-length v7, v1

    .line 33
    if-nez v7, :cond_0

    .line 34
    .line 35
    move v7, v4

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    sub-int/2addr v7, v4

    .line 38
    div-int/2addr v7, v3

    .line 39
    add-int/2addr v7, v4

    .line 40
    :goto_0
    shl-int/lit8 v8, v7, 0x4

    .line 41
    .line 42
    array-length v9, v1

    .line 43
    if-ne v8, v9, :cond_1

    .line 44
    .line 45
    add-int/lit8 v8, v7, -0x1

    .line 46
    .line 47
    shl-int/lit8 v8, v8, 0x4

    .line 48
    .line 49
    iget-object v0, v0, Lzu9;->b:[B

    .line 50
    .line 51
    invoke-static {v1, v0, v8, v3}, Lz85;->M([B[BII)[B

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    add-int/lit8 v8, v7, -0x1

    .line 57
    .line 58
    shl-int/lit8 v8, v8, 0x4

    .line 59
    .line 60
    array-length v9, v1

    .line 61
    invoke-static {v1, v8, v9}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 62
    .line 63
    .line 64
    move-result-object v8

    .line 65
    array-length v9, v8

    .line 66
    if-ge v9, v3, :cond_8

    .line 67
    .line 68
    invoke-static {v8, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 69
    .line 70
    .line 71
    move-result-object v9

    .line 72
    array-length v8, v8

    .line 73
    const/16 v10, -0x80

    .line 74
    .line 75
    aput-byte v10, v9, v8

    .line 76
    .line 77
    iget-object v0, v0, Lzu9;->c:[B

    .line 78
    .line 79
    invoke-static {v9, v0}, Lz85;->L([B[B)[B

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    :goto_1
    new-array v8, v3, [B

    .line 84
    .line 85
    new-array v9, v3, [B

    .line 86
    .line 87
    const/4 v10, 0x0

    .line 88
    move v11, v10

    .line 89
    :goto_2
    add-int/lit8 v12, v7, -0x1

    .line 90
    .line 91
    const-string v13, "Cipher didn\'t write full block"

    .line 92
    .line 93
    if-ge v11, v12, :cond_4

    .line 94
    .line 95
    shl-int/lit8 v12, v11, 0x4

    .line 96
    .line 97
    move v14, v10

    .line 98
    :goto_3
    if-ge v14, v3, :cond_2

    .line 99
    .line 100
    aget-byte v15, v8, v14

    .line 101
    .line 102
    add-int v16, v14, v12

    .line 103
    .line 104
    aget-byte v16, v1, v16

    .line 105
    .line 106
    xor-int v15, v15, v16

    .line 107
    .line 108
    int-to-byte v15, v15

    .line 109
    aput-byte v15, v9, v14

    .line 110
    .line 111
    add-int/lit8 v14, v14, 0x1

    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_2
    invoke-virtual {v5, v9, v10, v3, v8}, Ljavax/crypto/Cipher;->doFinal([BII[B)I

    .line 115
    .line 116
    .line 117
    move-result v12

    .line 118
    if-ne v12, v3, :cond_3

    .line 119
    .line 120
    add-int/lit8 v11, v11, 0x1

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_3
    invoke-static {v13}, Ll0;->e(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    return-object v6

    .line 127
    :cond_4
    move v1, v10

    .line 128
    :goto_4
    if-ge v1, v3, :cond_5

    .line 129
    .line 130
    aget-byte v4, v8, v1

    .line 131
    .line 132
    aget-byte v7, v0, v1

    .line 133
    .line 134
    xor-int/2addr v4, v7

    .line 135
    int-to-byte v4, v4

    .line 136
    aput-byte v4, v9, v1

    .line 137
    .line 138
    add-int/lit8 v1, v1, 0x1

    .line 139
    .line 140
    goto :goto_4

    .line 141
    :cond_5
    invoke-virtual {v5, v9, v10, v3, v8}, Ljavax/crypto/Cipher;->doFinal([BII[B)I

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    if-ne v0, v3, :cond_7

    .line 146
    .line 147
    if-ne v3, v2, :cond_6

    .line 148
    .line 149
    return-object v8

    .line 150
    :cond_6
    invoke-static {v8, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    return-object v0

    .line 155
    :cond_7
    invoke-static {v13}, Ll0;->e(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    return-object v6

    .line 159
    :cond_8
    const-string v0, "x must be smaller than a block."

    .line 160
    .line 161
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    return-object v6

    .line 165
    :cond_9
    const-string v0, "Can not use AES-CMAC in FIPS-mode."

    .line 166
    .line 167
    invoke-static {v0}, Lm0;->h(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    return-object v6

    .line 171
    :cond_a
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    .line 172
    .line 173
    const-string v1, "outputLength too large, max is 16 bytes"

    .line 174
    .line 175
    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    throw v0
.end method
