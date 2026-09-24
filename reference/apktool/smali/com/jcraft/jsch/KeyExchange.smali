.class public abstract Lcom/jcraft/jsch/KeyExchange;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final STATE_END:I

.field public static final i:[Ljava/lang/String;


# instance fields
.field public a:Lcom/jcraft/jsch/Session;

.field public b:Lcom/jcraft/jsch/HASH;

.field public c:[B

.field public d:[B

.field public e:[B

.field public f:Lcom/jcraft/jsch/OpenSshCertificate;

.field public g:I

.field public h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    const-string v8, "languages c2s"

    .line 2
    .line 3
    const-string v9, "languages s2c"

    .line 4
    .line 5
    const-string v0, "KEX algorithms"

    .line 6
    .line 7
    const-string v1, "host key algorithms"

    .line 8
    .line 9
    const-string v2, "ciphers c2s"

    .line 10
    .line 11
    const-string v3, "ciphers s2c"

    .line 12
    .line 13
    const-string v4, "MACs c2s"

    .line 14
    .line 15
    const-string v5, "MACs s2c"

    .line 16
    .line 17
    const-string v6, "compression c2s"

    .line 18
    .line 19
    const-string v7, "compression s2c"

    .line 20
    .line 21
    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lcom/jcraft/jsch/KeyExchange;->i:[Ljava/lang/String;

    .line 26
    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->a:Lcom/jcraft/jsch/Session;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->b:Lcom/jcraft/jsch/HASH;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->c:[B

    .line 10
    .line 11
    iput-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->d:[B

    .line 12
    .line 13
    iput-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->e:[B

    .line 14
    .line 15
    iput-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->f:Lcom/jcraft/jsch/OpenSshCertificate;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/jcraft/jsch/KeyExchange;->g:I

    .line 19
    .line 20
    const-string v0, ""

    .line 21
    .line 22
    iput-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->h:Ljava/lang/String;

    .line 23
    .line 24
    return-void
.end method

.method public static a([BZ)[B
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    aget-byte v1, p0, v0

    .line 3
    .line 4
    and-int/lit16 v1, v1, 0x80

    .line 5
    .line 6
    ushr-int/lit8 v1, v1, 0x7

    .line 7
    .line 8
    array-length v2, p0

    .line 9
    add-int/2addr v2, v1

    .line 10
    add-int/lit8 v3, v2, 0x4

    .line 11
    .line 12
    new-array v3, v3, [B

    .line 13
    .line 14
    xor-int/lit8 v4, v1, 0x1

    .line 15
    .line 16
    new-array v4, v4, [B

    .line 17
    .line 18
    ushr-int/lit8 v4, v2, 0x18

    .line 19
    .line 20
    int-to-byte v4, v4

    .line 21
    aput-byte v4, v3, v0

    .line 22
    .line 23
    ushr-int/lit8 v4, v2, 0x10

    .line 24
    .line 25
    int-to-byte v4, v4

    .line 26
    const/4 v5, 0x1

    .line 27
    aput-byte v4, v3, v5

    .line 28
    .line 29
    ushr-int/lit8 v4, v2, 0x8

    .line 30
    .line 31
    int-to-byte v4, v4

    .line 32
    const/4 v5, 0x2

    .line 33
    aput-byte v4, v3, v5

    .line 34
    .line 35
    const/4 v4, 0x3

    .line 36
    int-to-byte v5, v2

    .line 37
    aput-byte v5, v3, v4

    .line 38
    .line 39
    add-int/lit8 v4, v1, 0x4

    .line 40
    .line 41
    sub-int/2addr v2, v1

    .line 42
    invoke-static {p0, v0, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    .line 44
    .line 45
    if-eqz p1, :cond_0

    .line 46
    .line 47
    invoke-static {p0}, Lcom/jcraft/jsch/Util;->e([B)V

    .line 48
    .line 49
    .line 50
    :cond_0
    return-object v3
.end method

.method public static b([BZ)[B
    .locals 5

    .line 1
    array-length v0, p0

    .line 2
    add-int/lit8 v1, v0, 0x4

    .line 3
    .line 4
    new-array v1, v1, [B

    .line 5
    .line 6
    ushr-int/lit8 v2, v0, 0x18

    .line 7
    .line 8
    int-to-byte v2, v2

    .line 9
    const/4 v3, 0x0

    .line 10
    aput-byte v2, v1, v3

    .line 11
    .line 12
    ushr-int/lit8 v2, v0, 0x10

    .line 13
    .line 14
    int-to-byte v2, v2

    .line 15
    const/4 v4, 0x1

    .line 16
    aput-byte v2, v1, v4

    .line 17
    .line 18
    ushr-int/lit8 v2, v0, 0x8

    .line 19
    .line 20
    int-to-byte v2, v2

    .line 21
    const/4 v4, 0x2

    .line 22
    aput-byte v2, v1, v4

    .line 23
    .line 24
    const/4 v2, 0x3

    .line 25
    int-to-byte v4, v0

    .line 26
    aput-byte v4, v1, v2

    .line 27
    .line 28
    const/4 v2, 0x4

    .line 29
    invoke-static {p0, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30
    .line 31
    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    invoke-static {p0}, Lcom/jcraft/jsch/Util;->e([B)V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-object v1
.end method

.method public static c(I)[B
    .locals 5

    .line 1
    ushr-int/lit8 v0, p0, 0x18

    .line 2
    .line 3
    int-to-byte v0, v0

    .line 4
    ushr-int/lit8 v1, p0, 0x10

    .line 5
    .line 6
    int-to-byte v1, v1

    .line 7
    ushr-int/lit8 v2, p0, 0x8

    .line 8
    .line 9
    int-to-byte v2, v2

    .line 10
    int-to-byte p0, p0

    .line 11
    const/4 v3, 0x4

    .line 12
    new-array v3, v3, [B

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    aput-byte v0, v3, v4

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    aput-byte v1, v3, v0

    .line 19
    .line 20
    const/4 v0, 0x2

    .line 21
    aput-byte v2, v3, v0

    .line 22
    .line 23
    const/4 v0, 0x3

    .line 24
    aput-byte p0, v3, v0

    .line 25
    .line 26
    return-object v3
.end method

.method public static d([B)[B
    .locals 10

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x2

    .line 3
    if-ge v0, v1, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const/4 v1, 0x0

    .line 7
    aget-byte v2, p0, v1

    .line 8
    .line 9
    and-int/lit16 v2, v2, 0xff

    .line 10
    .line 11
    move v3, v1

    .line 12
    move v4, v3

    .line 13
    :goto_0
    const/16 v5, 0x8

    .line 14
    .line 15
    const/4 v6, 0x1

    .line 16
    if-ge v3, v5, :cond_1

    .line 17
    .line 18
    ushr-int v5, v2, v3

    .line 19
    .line 20
    and-int/2addr v5, v6

    .line 21
    or-int/2addr v4, v5

    .line 22
    add-int/lit8 v3, v3, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    xor-int/lit8 v2, v4, 0x1

    .line 26
    .line 27
    move v4, v1

    .line 28
    move v3, v6

    .line 29
    :goto_1
    if-ge v3, v0, :cond_3

    .line 30
    .line 31
    aget-byte v5, p0, v3

    .line 32
    .line 33
    and-int/lit16 v7, v5, 0x80

    .line 34
    .line 35
    const/4 v8, 0x7

    .line 36
    ushr-int/2addr v7, v8

    .line 37
    xor-int/2addr v7, v6

    .line 38
    and-int/2addr v2, v7

    .line 39
    add-int/2addr v4, v2

    .line 40
    and-int/lit8 v5, v5, 0x7f

    .line 41
    .line 42
    move v7, v1

    .line 43
    :goto_2
    if-ge v7, v8, :cond_2

    .line 44
    .line 45
    ushr-int v9, v5, v7

    .line 46
    .line 47
    and-int/2addr v9, v6

    .line 48
    xor-int/2addr v9, v6

    .line 49
    and-int/2addr v2, v9

    .line 50
    add-int/lit8 v7, v7, 0x1

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_3
    sub-int/2addr v0, v4

    .line 57
    new-array v2, v0, [B

    .line 58
    .line 59
    new-array v3, v4, [B

    .line 60
    .line 61
    invoke-static {p0, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    .line 63
    .line 64
    invoke-static {p0, v4, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    .line 66
    .line 67
    invoke-static {p0}, Lcom/jcraft/jsch/Util;->e([B)V

    .line 68
    .line 69
    .line 70
    return-object v2
.end method


# virtual methods
.method public final e(Ljava/lang/String;[BI[B)Z
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    const/4 v5, 0x4

    .line 12
    const/16 v6, 0x8

    .line 13
    .line 14
    const/4 v7, 0x2

    .line 15
    const/4 v8, 0x3

    .line 16
    const/4 v9, 0x1

    .line 17
    const/4 v10, 0x0

    .line 18
    const/4 v11, -0x1

    .line 19
    sparse-switch v3, :sswitch_data_0

    .line 20
    .line 21
    .line 22
    goto/16 :goto_0

    .line 23
    .line 24
    :sswitch_0
    const-string v3, "ecdsa-sha2-nistp256-cert-v01@openssh.com"

    .line 25
    .line 26
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-nez v3, :cond_0

    .line 31
    .line 32
    goto/16 :goto_0

    .line 33
    .line 34
    :cond_0
    move v11, v6

    .line 35
    goto/16 :goto_0

    .line 36
    .line 37
    :sswitch_1
    const-string v3, "ecdsa-sha2-nistp384-cert-v01@openssh.com"

    .line 38
    .line 39
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-nez v3, :cond_1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const/4 v11, 0x7

    .line 47
    goto :goto_0

    .line 48
    :sswitch_2
    const-string v3, "ssh-dss-cert-v01@openssh.com"

    .line 49
    .line 50
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-nez v3, :cond_2

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    const/4 v11, 0x6

    .line 58
    goto :goto_0

    .line 59
    :sswitch_3
    const-string v3, "rsa-sha2-256-cert-v01@openssh.com"

    .line 60
    .line 61
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-nez v3, :cond_3

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_3
    const/4 v11, 0x5

    .line 69
    goto :goto_0

    .line 70
    :sswitch_4
    const-string v3, "ssh-ed448-cert-v01@openssh.com"

    .line 71
    .line 72
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    if-nez v3, :cond_4

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_4
    move v11, v5

    .line 80
    goto :goto_0

    .line 81
    :sswitch_5
    const-string v3, "ecdsa-sha2-nistp521-cert-v01@openssh.com"

    .line 82
    .line 83
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-nez v3, :cond_5

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_5
    move v11, v8

    .line 91
    goto :goto_0

    .line 92
    :sswitch_6
    const-string v3, "rsa-sha2-512-cert-v01@openssh.com"

    .line 93
    .line 94
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    if-nez v3, :cond_6

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_6
    move v11, v7

    .line 102
    goto :goto_0

    .line 103
    :sswitch_7
    const-string v3, "ssh-ed25519-cert-v01@openssh.com"

    .line 104
    .line 105
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    if-nez v3, :cond_7

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_7
    move v11, v9

    .line 113
    goto :goto_0

    .line 114
    :sswitch_8
    const-string v3, "ssh-rsa-cert-v01@openssh.com"

    .line 115
    .line 116
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    if-nez v3, :cond_8

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_8
    move v11, v10

    .line 124
    :goto_0
    const/4 v3, 0x0

    .line 125
    const v12, 0xff00

    .line 126
    .line 127
    .line 128
    const/high16 v13, 0xff0000

    .line 129
    .line 130
    const/high16 v14, -0x1000000

    .line 131
    .line 132
    packed-switch v11, :pswitch_data_0

    .line 133
    .line 134
    .line 135
    move-object/from16 v15, p2

    .line 136
    .line 137
    move/from16 v4, p3

    .line 138
    .line 139
    move-object v11, v1

    .line 140
    const/16 v16, 0x5

    .line 141
    .line 142
    goto :goto_2

    .line 143
    :pswitch_0
    iget-object v1, v0, Lcom/jcraft/jsch/KeyExchange;->a:Lcom/jcraft/jsch/Session;

    .line 144
    .line 145
    iget-object v1, v1, Lcom/jcraft/jsch/Session;->k0:Lcom/jcraft/jsch/JSch;

    .line 146
    .line 147
    iget-object v1, v1, Lcom/jcraft/jsch/JSch;->a:Lcom/jcraft/jsch/JSch$InstanceLogger;

    .line 148
    .line 149
    move-object/from16 v11, p2

    .line 150
    .line 151
    invoke-static {v1, v11}, Lcom/jcraft/jsch/OpenSshCertificateParser;->a(Lcom/jcraft/jsch/JSch$InstanceLogger;[B)Lcom/jcraft/jsch/OpenSshCertificate;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    iget-object v11, v1, Lcom/jcraft/jsch/OpenSshCertificate;->d:Ljava/lang/String;

    .line 156
    .line 157
    iget v15, v1, Lcom/jcraft/jsch/OpenSshCertificate;->c:I

    .line 158
    .line 159
    if-ne v7, v15, :cond_16

    .line 160
    .line 161
    iget-object v15, v1, Lcom/jcraft/jsch/OpenSshCertificate;->b:[B

    .line 162
    .line 163
    if-nez v15, :cond_9

    .line 164
    .line 165
    move-object v15, v3

    .line 166
    goto :goto_1

    .line 167
    :cond_9
    invoke-virtual {v15}, [B->clone()Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v15

    .line 171
    check-cast v15, [B

    .line 172
    .line 173
    :goto_1
    if-eqz v15, :cond_15

    .line 174
    .line 175
    aget-byte v11, v15, v10

    .line 176
    .line 177
    shl-int/lit8 v11, v11, 0x18

    .line 178
    .line 179
    and-int/2addr v11, v14

    .line 180
    aget-byte v16, v15, v9

    .line 181
    .line 182
    shl-int/lit8 v16, v16, 0x10

    .line 183
    .line 184
    and-int v16, v16, v13

    .line 185
    .line 186
    or-int v11, v11, v16

    .line 187
    .line 188
    aget-byte v16, v15, v7

    .line 189
    .line 190
    shl-int/lit8 v16, v16, 0x8

    .line 191
    .line 192
    and-int v16, v16, v12

    .line 193
    .line 194
    or-int v11, v11, v16

    .line 195
    .line 196
    const/16 v16, 0x5

    .line 197
    .line 198
    aget-byte v4, v15, v8

    .line 199
    .line 200
    and-int/lit16 v4, v4, 0xff

    .line 201
    .line 202
    or-int/2addr v4, v11

    .line 203
    invoke-static {v15, v5, v4}, Lcom/jcraft/jsch/Util;->d([BII)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v11

    .line 207
    add-int/2addr v4, v5

    .line 208
    iput-object v1, v0, Lcom/jcraft/jsch/KeyExchange;->f:Lcom/jcraft/jsch/OpenSshCertificate;

    .line 209
    .line 210
    :goto_2
    const-string v1, "ssh-rsa"

    .line 211
    .line 212
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result v1

    .line 216
    move/from16 v17, v5

    .line 217
    .line 218
    const-string v5, " signature "

    .line 219
    .line 220
    if-eqz v1, :cond_b

    .line 221
    .line 222
    iput v10, v0, Lcom/jcraft/jsch/KeyExchange;->g:I

    .line 223
    .line 224
    iput-object v11, v0, Lcom/jcraft/jsch/KeyExchange;->h:Ljava/lang/String;

    .line 225
    .line 226
    add-int/lit8 v1, v4, 0x1

    .line 227
    .line 228
    aget-byte v7, v15, v4

    .line 229
    .line 230
    shl-int/lit8 v7, v7, 0x18

    .line 231
    .line 232
    and-int/2addr v7, v14

    .line 233
    add-int/lit8 v8, v4, 0x2

    .line 234
    .line 235
    aget-byte v1, v15, v1

    .line 236
    .line 237
    shl-int/lit8 v1, v1, 0x10

    .line 238
    .line 239
    and-int/2addr v1, v13

    .line 240
    or-int/2addr v1, v7

    .line 241
    add-int/lit8 v7, v4, 0x3

    .line 242
    .line 243
    aget-byte v8, v15, v8

    .line 244
    .line 245
    shl-int/2addr v8, v6

    .line 246
    and-int/2addr v8, v12

    .line 247
    or-int/2addr v1, v8

    .line 248
    add-int/lit8 v4, v4, 0x4

    .line 249
    .line 250
    aget-byte v7, v15, v7

    .line 251
    .line 252
    and-int/lit16 v7, v7, 0xff

    .line 253
    .line 254
    or-int/2addr v1, v7

    .line 255
    new-array v7, v1, [B

    .line 256
    .line 257
    invoke-static {v15, v4, v7, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 258
    .line 259
    .line 260
    add-int/2addr v4, v1

    .line 261
    add-int/lit8 v1, v4, 0x1

    .line 262
    .line 263
    aget-byte v8, v15, v4

    .line 264
    .line 265
    shl-int/lit8 v8, v8, 0x18

    .line 266
    .line 267
    and-int/2addr v8, v14

    .line 268
    add-int/lit8 v11, v4, 0x2

    .line 269
    .line 270
    aget-byte v1, v15, v1

    .line 271
    .line 272
    shl-int/lit8 v1, v1, 0x10

    .line 273
    .line 274
    and-int/2addr v1, v13

    .line 275
    or-int/2addr v1, v8

    .line 276
    add-int/lit8 v8, v4, 0x3

    .line 277
    .line 278
    aget-byte v11, v15, v11

    .line 279
    .line 280
    shl-int/lit8 v6, v11, 0x8

    .line 281
    .line 282
    and-int/2addr v6, v12

    .line 283
    or-int/2addr v1, v6

    .line 284
    add-int/lit8 v4, v4, 0x4

    .line 285
    .line 286
    aget-byte v6, v15, v8

    .line 287
    .line 288
    and-int/lit16 v6, v6, 0xff

    .line 289
    .line 290
    or-int/2addr v1, v6

    .line 291
    new-array v6, v1, [B

    .line 292
    .line 293
    invoke-static {v15, v4, v6, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 294
    .line 295
    .line 296
    new-instance v1, Lcom/jcraft/jsch/Buffer;

    .line 297
    .line 298
    invoke-direct {v1, v2}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 302
    .line 303
    .line 304
    move-result-object v1

    .line 305
    sget-object v4, Lcom/jcraft/jsch/Util;->a:[B

    .line 306
    .line 307
    array-length v4, v1

    .line 308
    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 309
    .line 310
    new-instance v11, Ljava/lang/String;

    .line 311
    .line 312
    invoke-direct {v11, v1, v10, v4, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 313
    .line 314
    .line 315
    :try_start_0
    iget-object v1, v0, Lcom/jcraft/jsch/KeyExchange;->a:Lcom/jcraft/jsch/Session;

    .line 316
    .line 317
    invoke-virtual {v1, v11}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v1

    .line 321
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 322
    .line 323
    .line 324
    move-result-object v1

    .line 325
    const-class v4, Lcom/jcraft/jsch/SignatureRSA;

    .line 326
    .line 327
    invoke-virtual {v1, v4}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 328
    .line 329
    .line 330
    move-result-object v1

    .line 331
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 332
    .line 333
    .line 334
    move-result-object v1

    .line 335
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    move-result-object v1

    .line 339
    check-cast v1, Lcom/jcraft/jsch/SignatureRSA;

    .line 340
    .line 341
    invoke-interface {v1}, Lcom/jcraft/jsch/Signature;->init()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    .line 343
    .line 344
    invoke-interface {v1, v7, v6}, Lcom/jcraft/jsch/SignatureRSA;->setPubKey([B[B)V

    .line 345
    .line 346
    .line 347
    iget-object v3, v0, Lcom/jcraft/jsch/KeyExchange;->d:[B

    .line 348
    .line 349
    invoke-interface {v1, v3}, Lcom/jcraft/jsch/Signature;->update([B)V

    .line 350
    .line 351
    .line 352
    invoke-interface {v1, v2}, Lcom/jcraft/jsch/Signature;->verify([B)Z

    .line 353
    .line 354
    .line 355
    move-result v1

    .line 356
    iget-object v2, v0, Lcom/jcraft/jsch/KeyExchange;->a:Lcom/jcraft/jsch/Session;

    .line 357
    .line 358
    invoke-virtual {v2}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 359
    .line 360
    .line 361
    move-result-object v2

    .line 362
    invoke-interface {v2, v9}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 363
    .line 364
    .line 365
    move-result v2

    .line 366
    if-eqz v2, :cond_a

    .line 367
    .line 368
    iget-object v0, v0, Lcom/jcraft/jsch/KeyExchange;->a:Lcom/jcraft/jsch/Session;

    .line 369
    .line 370
    invoke-virtual {v0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 371
    .line 372
    .line 373
    move-result-object v0

    .line 374
    new-instance v2, Ljava/lang/StringBuilder;

    .line 375
    .line 376
    const-string v3, "ssh_rsa_verify: "

    .line 377
    .line 378
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 388
    .line 389
    .line 390
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v2

    .line 394
    invoke-interface {v0, v9, v2}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 395
    .line 396
    .line 397
    :cond_a
    return v1

    .line 398
    :catch_0
    move-exception v0

    .line 399
    invoke-static {v0}, La6;->f(Ljava/lang/Throwable;)V

    .line 400
    .line 401
    .line 402
    return v10

    .line 403
    :cond_b
    const-string v1, "ssh-dss"

    .line 404
    .line 405
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 406
    .line 407
    .line 408
    move-result v1

    .line 409
    if-eqz v1, :cond_d

    .line 410
    .line 411
    iput v9, v0, Lcom/jcraft/jsch/KeyExchange;->g:I

    .line 412
    .line 413
    iput-object v11, v0, Lcom/jcraft/jsch/KeyExchange;->h:Ljava/lang/String;

    .line 414
    .line 415
    add-int/lit8 v1, v4, 0x1

    .line 416
    .line 417
    aget-byte v5, v15, v4

    .line 418
    .line 419
    shl-int/lit8 v5, v5, 0x18

    .line 420
    .line 421
    and-int/2addr v5, v14

    .line 422
    add-int/lit8 v7, v4, 0x2

    .line 423
    .line 424
    aget-byte v1, v15, v1

    .line 425
    .line 426
    shl-int/lit8 v1, v1, 0x10

    .line 427
    .line 428
    and-int/2addr v1, v13

    .line 429
    or-int/2addr v1, v5

    .line 430
    add-int/lit8 v5, v4, 0x3

    .line 431
    .line 432
    aget-byte v7, v15, v7

    .line 433
    .line 434
    shl-int/2addr v7, v6

    .line 435
    and-int/2addr v7, v12

    .line 436
    or-int/2addr v1, v7

    .line 437
    add-int/lit8 v4, v4, 0x4

    .line 438
    .line 439
    aget-byte v5, v15, v5

    .line 440
    .line 441
    and-int/lit16 v5, v5, 0xff

    .line 442
    .line 443
    or-int/2addr v1, v5

    .line 444
    new-array v5, v1, [B

    .line 445
    .line 446
    invoke-static {v15, v4, v5, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 447
    .line 448
    .line 449
    add-int/2addr v4, v1

    .line 450
    add-int/lit8 v1, v4, 0x1

    .line 451
    .line 452
    aget-byte v7, v15, v4

    .line 453
    .line 454
    shl-int/lit8 v7, v7, 0x18

    .line 455
    .line 456
    and-int/2addr v7, v14

    .line 457
    add-int/lit8 v8, v4, 0x2

    .line 458
    .line 459
    aget-byte v1, v15, v1

    .line 460
    .line 461
    shl-int/lit8 v1, v1, 0x10

    .line 462
    .line 463
    and-int/2addr v1, v13

    .line 464
    or-int/2addr v1, v7

    .line 465
    add-int/lit8 v7, v4, 0x3

    .line 466
    .line 467
    aget-byte v8, v15, v8

    .line 468
    .line 469
    shl-int/2addr v8, v6

    .line 470
    and-int/2addr v8, v12

    .line 471
    or-int/2addr v1, v8

    .line 472
    add-int/lit8 v4, v4, 0x4

    .line 473
    .line 474
    aget-byte v7, v15, v7

    .line 475
    .line 476
    and-int/lit16 v7, v7, 0xff

    .line 477
    .line 478
    or-int/2addr v1, v7

    .line 479
    new-array v7, v1, [B

    .line 480
    .line 481
    invoke-static {v15, v4, v7, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 482
    .line 483
    .line 484
    add-int/2addr v4, v1

    .line 485
    add-int/lit8 v1, v4, 0x1

    .line 486
    .line 487
    aget-byte v8, v15, v4

    .line 488
    .line 489
    shl-int/lit8 v8, v8, 0x18

    .line 490
    .line 491
    and-int/2addr v8, v14

    .line 492
    add-int/lit8 v11, v4, 0x2

    .line 493
    .line 494
    aget-byte v1, v15, v1

    .line 495
    .line 496
    shl-int/lit8 v1, v1, 0x10

    .line 497
    .line 498
    and-int/2addr v1, v13

    .line 499
    or-int/2addr v1, v8

    .line 500
    add-int/lit8 v8, v4, 0x3

    .line 501
    .line 502
    aget-byte v11, v15, v11

    .line 503
    .line 504
    shl-int/2addr v11, v6

    .line 505
    and-int/2addr v11, v12

    .line 506
    or-int/2addr v1, v11

    .line 507
    add-int/lit8 v4, v4, 0x4

    .line 508
    .line 509
    aget-byte v8, v15, v8

    .line 510
    .line 511
    and-int/lit16 v8, v8, 0xff

    .line 512
    .line 513
    or-int/2addr v1, v8

    .line 514
    new-array v8, v1, [B

    .line 515
    .line 516
    invoke-static {v15, v4, v8, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 517
    .line 518
    .line 519
    add-int/2addr v4, v1

    .line 520
    add-int/lit8 v1, v4, 0x1

    .line 521
    .line 522
    aget-byte v11, v15, v4

    .line 523
    .line 524
    shl-int/lit8 v11, v11, 0x18

    .line 525
    .line 526
    and-int/2addr v11, v14

    .line 527
    add-int/lit8 v14, v4, 0x2

    .line 528
    .line 529
    aget-byte v1, v15, v1

    .line 530
    .line 531
    shl-int/lit8 v1, v1, 0x10

    .line 532
    .line 533
    and-int/2addr v1, v13

    .line 534
    or-int/2addr v1, v11

    .line 535
    add-int/lit8 v11, v4, 0x3

    .line 536
    .line 537
    aget-byte v13, v15, v14

    .line 538
    .line 539
    shl-int/lit8 v6, v13, 0x8

    .line 540
    .line 541
    and-int/2addr v6, v12

    .line 542
    or-int/2addr v1, v6

    .line 543
    add-int/lit8 v4, v4, 0x4

    .line 544
    .line 545
    aget-byte v6, v15, v11

    .line 546
    .line 547
    and-int/lit16 v6, v6, 0xff

    .line 548
    .line 549
    or-int/2addr v1, v6

    .line 550
    new-array v6, v1, [B

    .line 551
    .line 552
    invoke-static {v15, v4, v6, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 553
    .line 554
    .line 555
    :try_start_1
    iget-object v1, v0, Lcom/jcraft/jsch/KeyExchange;->a:Lcom/jcraft/jsch/Session;

    .line 556
    .line 557
    const-string v4, "signature.dss"

    .line 558
    .line 559
    invoke-virtual {v1, v4}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 560
    .line 561
    .line 562
    move-result-object v1

    .line 563
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 564
    .line 565
    .line 566
    move-result-object v1

    .line 567
    const-class v4, Lcom/jcraft/jsch/SignatureDSA;

    .line 568
    .line 569
    invoke-virtual {v1, v4}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 570
    .line 571
    .line 572
    move-result-object v1

    .line 573
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 574
    .line 575
    .line 576
    move-result-object v1

    .line 577
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    .line 579
    .line 580
    move-result-object v1

    .line 581
    check-cast v1, Lcom/jcraft/jsch/SignatureDSA;

    .line 582
    .line 583
    invoke-interface {v1}, Lcom/jcraft/jsch/Signature;->init()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 584
    .line 585
    .line 586
    invoke-interface {v1, v6, v5, v7, v8}, Lcom/jcraft/jsch/SignatureDSA;->setPubKey([B[B[B[B)V

    .line 587
    .line 588
    .line 589
    iget-object v3, v0, Lcom/jcraft/jsch/KeyExchange;->d:[B

    .line 590
    .line 591
    invoke-interface {v1, v3}, Lcom/jcraft/jsch/Signature;->update([B)V

    .line 592
    .line 593
    .line 594
    invoke-interface {v1, v2}, Lcom/jcraft/jsch/Signature;->verify([B)Z

    .line 595
    .line 596
    .line 597
    move-result v1

    .line 598
    iget-object v2, v0, Lcom/jcraft/jsch/KeyExchange;->a:Lcom/jcraft/jsch/Session;

    .line 599
    .line 600
    invoke-virtual {v2}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 601
    .line 602
    .line 603
    move-result-object v2

    .line 604
    invoke-interface {v2, v9}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 605
    .line 606
    .line 607
    move-result v2

    .line 608
    if-eqz v2, :cond_c

    .line 609
    .line 610
    iget-object v0, v0, Lcom/jcraft/jsch/KeyExchange;->a:Lcom/jcraft/jsch/Session;

    .line 611
    .line 612
    invoke-virtual {v0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 613
    .line 614
    .line 615
    move-result-object v0

    .line 616
    new-instance v2, Ljava/lang/StringBuilder;

    .line 617
    .line 618
    const-string v3, "ssh_dss_verify: signature "

    .line 619
    .line 620
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 621
    .line 622
    .line 623
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 624
    .line 625
    .line 626
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 627
    .line 628
    .line 629
    move-result-object v2

    .line 630
    invoke-interface {v0, v9, v2}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 631
    .line 632
    .line 633
    :cond_c
    return v1

    .line 634
    :catch_1
    move-exception v0

    .line 635
    invoke-static {v0}, La6;->f(Ljava/lang/Throwable;)V

    .line 636
    .line 637
    .line 638
    return v10

    .line 639
    :cond_d
    const-string v1, "ecdsa-sha2-nistp256"

    .line 640
    .line 641
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 642
    .line 643
    .line 644
    move-result v1

    .line 645
    if-nez v1, :cond_13

    .line 646
    .line 647
    const-string v1, "ecdsa-sha2-nistp384"

    .line 648
    .line 649
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 650
    .line 651
    .line 652
    move-result v1

    .line 653
    if-nez v1, :cond_13

    .line 654
    .line 655
    const-string v1, "ecdsa-sha2-nistp521"

    .line 656
    .line 657
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 658
    .line 659
    .line 660
    move-result v1

    .line 661
    if-eqz v1, :cond_e

    .line 662
    .line 663
    goto/16 :goto_4

    .line 664
    .line 665
    :cond_e
    const-string v1, "ssh-ed25519"

    .line 666
    .line 667
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 668
    .line 669
    .line 670
    move-result v1

    .line 671
    if-nez v1, :cond_11

    .line 672
    .line 673
    const-string v1, "ssh-ed448"

    .line 674
    .line 675
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 676
    .line 677
    .line 678
    move-result v1

    .line 679
    if-eqz v1, :cond_f

    .line 680
    .line 681
    goto :goto_3

    .line 682
    :cond_f
    iget-object v1, v0, Lcom/jcraft/jsch/KeyExchange;->a:Lcom/jcraft/jsch/Session;

    .line 683
    .line 684
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 685
    .line 686
    .line 687
    move-result-object v1

    .line 688
    invoke-interface {v1, v8}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 689
    .line 690
    .line 691
    move-result v1

    .line 692
    if-eqz v1, :cond_10

    .line 693
    .line 694
    iget-object v0, v0, Lcom/jcraft/jsch/KeyExchange;->a:Lcom/jcraft/jsch/Session;

    .line 695
    .line 696
    invoke-virtual {v0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 697
    .line 698
    .line 699
    move-result-object v0

    .line 700
    const-string v1, "unknown alg: "

    .line 701
    .line 702
    invoke-virtual {v1, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 703
    .line 704
    .line 705
    move-result-object v1

    .line 706
    invoke-interface {v0, v8, v1}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 707
    .line 708
    .line 709
    :cond_10
    return v10

    .line 710
    :cond_11
    :goto_3
    iput v8, v0, Lcom/jcraft/jsch/KeyExchange;->g:I

    .line 711
    .line 712
    iput-object v11, v0, Lcom/jcraft/jsch/KeyExchange;->h:Ljava/lang/String;

    .line 713
    .line 714
    add-int/lit8 v1, v4, 0x1

    .line 715
    .line 716
    aget-byte v7, v15, v4

    .line 717
    .line 718
    shl-int/lit8 v7, v7, 0x18

    .line 719
    .line 720
    and-int/2addr v7, v14

    .line 721
    add-int/lit8 v8, v4, 0x2

    .line 722
    .line 723
    aget-byte v1, v15, v1

    .line 724
    .line 725
    shl-int/lit8 v1, v1, 0x10

    .line 726
    .line 727
    and-int/2addr v1, v13

    .line 728
    or-int/2addr v1, v7

    .line 729
    add-int/lit8 v7, v4, 0x3

    .line 730
    .line 731
    aget-byte v8, v15, v8

    .line 732
    .line 733
    shl-int/lit8 v6, v8, 0x8

    .line 734
    .line 735
    and-int/2addr v6, v12

    .line 736
    or-int/2addr v1, v6

    .line 737
    add-int/lit8 v4, v4, 0x4

    .line 738
    .line 739
    aget-byte v6, v15, v7

    .line 740
    .line 741
    and-int/lit16 v6, v6, 0xff

    .line 742
    .line 743
    or-int/2addr v1, v6

    .line 744
    new-array v6, v1, [B

    .line 745
    .line 746
    invoke-static {v15, v4, v6, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 747
    .line 748
    .line 749
    :try_start_2
    iget-object v1, v0, Lcom/jcraft/jsch/KeyExchange;->a:Lcom/jcraft/jsch/Session;

    .line 750
    .line 751
    invoke-virtual {v1, v11}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 752
    .line 753
    .line 754
    move-result-object v1

    .line 755
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 756
    .line 757
    .line 758
    move-result-object v1

    .line 759
    const-class v4, Lcom/jcraft/jsch/SignatureEdDSA;

    .line 760
    .line 761
    invoke-virtual {v1, v4}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 762
    .line 763
    .line 764
    move-result-object v1

    .line 765
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 766
    .line 767
    .line 768
    move-result-object v1

    .line 769
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 770
    .line 771
    .line 772
    move-result-object v1

    .line 773
    check-cast v1, Lcom/jcraft/jsch/SignatureEdDSA;

    .line 774
    .line 775
    invoke-interface {v1}, Lcom/jcraft/jsch/Signature;->init()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/LinkageError; {:try_start_2 .. :try_end_2} :catch_2

    .line 776
    .line 777
    .line 778
    invoke-interface {v1, v6}, Lcom/jcraft/jsch/SignatureEdDSA;->setPubKey([B)V

    .line 779
    .line 780
    .line 781
    iget-object v3, v0, Lcom/jcraft/jsch/KeyExchange;->d:[B

    .line 782
    .line 783
    invoke-interface {v1, v3}, Lcom/jcraft/jsch/Signature;->update([B)V

    .line 784
    .line 785
    .line 786
    invoke-interface {v1, v2}, Lcom/jcraft/jsch/Signature;->verify([B)Z

    .line 787
    .line 788
    .line 789
    move-result v1

    .line 790
    iget-object v2, v0, Lcom/jcraft/jsch/KeyExchange;->a:Lcom/jcraft/jsch/Session;

    .line 791
    .line 792
    invoke-virtual {v2}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 793
    .line 794
    .line 795
    move-result-object v2

    .line 796
    invoke-interface {v2, v9}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 797
    .line 798
    .line 799
    move-result v2

    .line 800
    if-eqz v2, :cond_12

    .line 801
    .line 802
    iget-object v0, v0, Lcom/jcraft/jsch/KeyExchange;->a:Lcom/jcraft/jsch/Session;

    .line 803
    .line 804
    invoke-virtual {v0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 805
    .line 806
    .line 807
    move-result-object v0

    .line 808
    new-instance v2, Ljava/lang/StringBuilder;

    .line 809
    .line 810
    const-string v3, "ssh_eddsa_verify: "

    .line 811
    .line 812
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 813
    .line 814
    .line 815
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 816
    .line 817
    .line 818
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 819
    .line 820
    .line 821
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 822
    .line 823
    .line 824
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 825
    .line 826
    .line 827
    move-result-object v2

    .line 828
    invoke-interface {v0, v9, v2}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 829
    .line 830
    .line 831
    :cond_12
    return v1

    .line 832
    :catch_2
    move-exception v0

    .line 833
    new-instance v1, Lcom/jcraft/jsch/JSchException;

    .line 834
    .line 835
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 836
    .line 837
    .line 838
    move-result-object v2

    .line 839
    invoke-direct {v1, v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 840
    .line 841
    .line 842
    throw v1

    .line 843
    :cond_13
    :goto_4
    iput v7, v0, Lcom/jcraft/jsch/KeyExchange;->g:I

    .line 844
    .line 845
    iput-object v11, v0, Lcom/jcraft/jsch/KeyExchange;->h:Ljava/lang/String;

    .line 846
    .line 847
    add-int/lit8 v1, v4, 0x1

    .line 848
    .line 849
    aget-byte v8, v15, v4

    .line 850
    .line 851
    shl-int/lit8 v8, v8, 0x18

    .line 852
    .line 853
    and-int/2addr v8, v14

    .line 854
    add-int/lit8 v18, v4, 0x2

    .line 855
    .line 856
    aget-byte v1, v15, v1

    .line 857
    .line 858
    shl-int/lit8 v1, v1, 0x10

    .line 859
    .line 860
    and-int/2addr v1, v13

    .line 861
    or-int/2addr v1, v8

    .line 862
    add-int/lit8 v8, v4, 0x3

    .line 863
    .line 864
    aget-byte v18, v15, v18

    .line 865
    .line 866
    shl-int/lit8 v18, v18, 0x8

    .line 867
    .line 868
    and-int v18, v18, v12

    .line 869
    .line 870
    or-int v1, v1, v18

    .line 871
    .line 872
    add-int/lit8 v4, v4, 0x4

    .line 873
    .line 874
    aget-byte v8, v15, v8

    .line 875
    .line 876
    and-int/lit16 v8, v8, 0xff

    .line 877
    .line 878
    or-int/2addr v1, v8

    .line 879
    new-array v8, v1, [B

    .line 880
    .line 881
    invoke-static {v15, v4, v8, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 882
    .line 883
    .line 884
    add-int/2addr v4, v1

    .line 885
    add-int/lit8 v1, v4, 0x1

    .line 886
    .line 887
    aget-byte v8, v15, v4

    .line 888
    .line 889
    shl-int/lit8 v8, v8, 0x18

    .line 890
    .line 891
    and-int/2addr v8, v14

    .line 892
    add-int/lit8 v14, v4, 0x2

    .line 893
    .line 894
    aget-byte v1, v15, v1

    .line 895
    .line 896
    shl-int/lit8 v1, v1, 0x10

    .line 897
    .line 898
    and-int/2addr v1, v13

    .line 899
    or-int/2addr v1, v8

    .line 900
    add-int/lit8 v8, v4, 0x3

    .line 901
    .line 902
    aget-byte v13, v15, v14

    .line 903
    .line 904
    shl-int/lit8 v6, v13, 0x8

    .line 905
    .line 906
    and-int/2addr v6, v12

    .line 907
    or-int/2addr v1, v6

    .line 908
    aget-byte v6, v15, v8

    .line 909
    .line 910
    and-int/lit16 v6, v6, 0xff

    .line 911
    .line 912
    or-int/2addr v1, v6

    .line 913
    add-int/lit8 v4, v4, 0x5

    .line 914
    .line 915
    sub-int/2addr v1, v9

    .line 916
    div-int/2addr v1, v7

    .line 917
    new-array v6, v1, [B

    .line 918
    .line 919
    invoke-static {v15, v4, v6, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 920
    .line 921
    .line 922
    add-int/2addr v4, v1

    .line 923
    new-array v7, v1, [B

    .line 924
    .line 925
    invoke-static {v15, v4, v7, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 926
    .line 927
    .line 928
    :try_start_3
    iget-object v1, v0, Lcom/jcraft/jsch/KeyExchange;->a:Lcom/jcraft/jsch/Session;

    .line 929
    .line 930
    invoke-virtual {v1, v11}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 931
    .line 932
    .line 933
    move-result-object v1

    .line 934
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 935
    .line 936
    .line 937
    move-result-object v1

    .line 938
    const-class v4, Lcom/jcraft/jsch/SignatureECDSA;

    .line 939
    .line 940
    invoke-virtual {v1, v4}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 941
    .line 942
    .line 943
    move-result-object v1

    .line 944
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 945
    .line 946
    .line 947
    move-result-object v1

    .line 948
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 949
    .line 950
    .line 951
    move-result-object v1

    .line 952
    check-cast v1, Lcom/jcraft/jsch/SignatureECDSA;

    .line 953
    .line 954
    invoke-interface {v1}, Lcom/jcraft/jsch/Signature;->init()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 955
    .line 956
    .line 957
    invoke-interface {v1, v6, v7}, Lcom/jcraft/jsch/SignatureECDSA;->setPubKey([B[B)V

    .line 958
    .line 959
    .line 960
    iget-object v3, v0, Lcom/jcraft/jsch/KeyExchange;->d:[B

    .line 961
    .line 962
    invoke-interface {v1, v3}, Lcom/jcraft/jsch/Signature;->update([B)V

    .line 963
    .line 964
    .line 965
    invoke-interface {v1, v2}, Lcom/jcraft/jsch/Signature;->verify([B)Z

    .line 966
    .line 967
    .line 968
    move-result v1

    .line 969
    iget-object v2, v0, Lcom/jcraft/jsch/KeyExchange;->a:Lcom/jcraft/jsch/Session;

    .line 970
    .line 971
    invoke-virtual {v2}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 972
    .line 973
    .line 974
    move-result-object v2

    .line 975
    invoke-interface {v2, v9}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 976
    .line 977
    .line 978
    move-result v2

    .line 979
    if-eqz v2, :cond_14

    .line 980
    .line 981
    iget-object v0, v0, Lcom/jcraft/jsch/KeyExchange;->a:Lcom/jcraft/jsch/Session;

    .line 982
    .line 983
    invoke-virtual {v0}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 984
    .line 985
    .line 986
    move-result-object v0

    .line 987
    new-instance v2, Ljava/lang/StringBuilder;

    .line 988
    .line 989
    const-string v3, "ssh_ecdsa_verify: "

    .line 990
    .line 991
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 992
    .line 993
    .line 994
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 995
    .line 996
    .line 997
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 998
    .line 999
    .line 1000
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1001
    .line 1002
    .line 1003
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1004
    .line 1005
    .line 1006
    move-result-object v2

    .line 1007
    invoke-interface {v0, v9, v2}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 1008
    .line 1009
    .line 1010
    :cond_14
    return v1

    .line 1011
    :catch_3
    move-exception v0

    .line 1012
    invoke-static {v0}, La6;->f(Ljava/lang/Throwable;)V

    .line 1013
    .line 1014
    .line 1015
    return v10

    .line 1016
    :cond_15
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    .line 1017
    .line 1018
    const-string v1, "Invalid certificate \'"

    .line 1019
    .line 1020
    const-string v2, "\': missing public key"

    .line 1021
    .line 1022
    invoke-static {v1, v11, v2}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1023
    .line 1024
    .line 1025
    move-result-object v1

    .line 1026
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1027
    .line 1028
    .line 1029
    throw v0

    .line 1030
    :cond_16
    new-instance v1, Lcom/jcraft/jsch/JSchInvalidHostCertificateException;

    .line 1031
    .line 1032
    const-string v2, "Rejected certificate \'"

    .line 1033
    .line 1034
    const-string v3, "\': user certificate presented for host authentication. Host: "

    .line 1035
    .line 1036
    invoke-static {v2, v11, v3}, Ldj7;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1037
    .line 1038
    .line 1039
    move-result-object v2

    .line 1040
    iget-object v0, v0, Lcom/jcraft/jsch/KeyExchange;->a:Lcom/jcraft/jsch/Session;

    .line 1041
    .line 1042
    iget-object v0, v0, Lcom/jcraft/jsch/Session;->f0:Ljava/lang/String;

    .line 1043
    .line 1044
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1045
    .line 1046
    .line 1047
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1048
    .line 1049
    .line 1050
    move-result-object v0

    .line 1051
    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1052
    .line 1053
    .line 1054
    throw v1

    .line 1055
    :sswitch_data_0
    .sparse-switch
        -0x6e416ecf -> :sswitch_8
        -0x4e631eea -> :sswitch_7
        -0x414d2bf0 -> :sswitch_6
        -0xd639142 -> :sswitch_5
        -0xc1e38e8 -> :sswitch_4
        0xd8b76f3 -> :sswitch_3
        0x3f0fe02d -> :sswitch_2
        0x4b541863 -> :sswitch_1
        0x7dc932ff -> :sswitch_0
    .end sparse-switch

    .line 1056
    .line 1057
    .line 1058
    .line 1059
    .line 1060
    .line 1061
    .line 1062
    .line 1063
    .line 1064
    .line 1065
    .line 1066
    .line 1067
    .line 1068
    .line 1069
    .line 1070
    .line 1071
    .line 1072
    .line 1073
    .line 1074
    .line 1075
    .line 1076
    .line 1077
    .line 1078
    .line 1079
    .line 1080
    .line 1081
    .line 1082
    .line 1083
    .line 1084
    .line 1085
    .line 1086
    .line 1087
    .line 1088
    .line 1089
    .line 1090
    .line 1091
    .line 1092
    .line 1093
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final getFingerPrint()Ljava/lang/String;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/jcraft/jsch/KeyExchange;->a:Lcom/jcraft/jsch/Session;

    .line 3
    .line 4
    const-string v2, "FingerprintHash"

    .line 5
    .line 6
    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iget-object v2, p0, Lcom/jcraft/jsch/KeyExchange;->a:Lcom/jcraft/jsch/Session;

    .line 17
    .line 18
    invoke-virtual {v2, v1}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const-class v2, Lcom/jcraft/jsch/HASH;

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Lcom/jcraft/jsch/HASH;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    move-object v0, v1

    .line 43
    goto :goto_0

    .line 44
    :catch_0
    move-exception v1

    .line 45
    iget-object v2, p0, Lcom/jcraft/jsch/KeyExchange;->a:Lcom/jcraft/jsch/Session;

    .line 46
    .line 47
    invoke-virtual {v2}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    const/4 v3, 0x3

    .line 52
    invoke-interface {v2, v3}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-eqz v2, :cond_0

    .line 57
    .line 58
    iget-object v2, p0, Lcom/jcraft/jsch/KeyExchange;->a:Lcom/jcraft/jsch/Session;

    .line 59
    .line 60
    invoke-virtual {v2}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    new-instance v4, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string v5, "getFingerPrint: "

    .line 67
    .line 68
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-interface {v2, v3, v4, v1}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    .line 84
    .line 85
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/jcraft/jsch/KeyExchange;->e:[B

    .line 86
    .line 87
    invoke-static {v0, p0}, Lcom/jcraft/jsch/Util;->k(Lcom/jcraft/jsch/HASH;[B)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    return-object p0
.end method

.method public final getKeyAlgorithName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/KeyExchange;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getKeyType()Ljava/lang/String;
    .locals 1

    .line 1
    iget p0, p0, Lcom/jcraft/jsch/KeyExchange;->g:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    .line 6
    const-string p0, "DSA"

    .line 7
    .line 8
    return-object p0

    .line 9
    :cond_0
    if-nez p0, :cond_1

    .line 10
    .line 11
    const-string p0, "RSA"

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_1
    const/4 v0, 0x3

    .line 15
    if-ne p0, v0, :cond_2

    .line 16
    .line 17
    const-string p0, "EDDSA"

    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_2
    const-string p0, "ECDSA"

    .line 21
    .line 22
    return-object p0
.end method

.method public abstract getState()I
.end method

.method public abstract init(Lcom/jcraft/jsch/Session;[B[B[B[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract next(Lcom/jcraft/jsch/Buffer;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
