.class public final Lg;
.super Ljava/io/InputStream;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Ljava/io/InputStream;

.field public final b:Lkk1;

.field public final c:Ljava/lang/String;

.field public final d:[B

.field public e:Z

.field public f:Ljavax/crypto/CipherInputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lkk1;Ljava/lang/String;[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lg;->a:Ljava/io/InputStream;

    .line 5
    .line 6
    iput-object p2, p0, Lg;->b:Lkk1;

    .line 7
    .line 8
    iput-object p3, p0, Lg;->c:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lg;->d:[B

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a()Ljavax/crypto/CipherInputStream;
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-boolean v0, v1, Lg;->e:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, v1, Lg;->f:Ljavax/crypto/CipherInputStream;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    iget-object v0, v1, Lg;->b:Lkk1;

    .line 11
    .line 12
    iget-object v2, v0, Lkk1;->d:[B

    .line 13
    .line 14
    iget-object v4, v1, Lg;->c:Ljava/lang/String;

    .line 15
    .line 16
    if-eqz v2, :cond_8

    .line 17
    .line 18
    array-length v5, v2

    .line 19
    const/4 v6, 0x2

    .line 20
    if-lt v5, v6, :cond_7

    .line 21
    .line 22
    const/4 v5, 0x0

    .line 23
    aget-byte v7, v2, v5

    .line 24
    .line 25
    and-int/lit16 v8, v7, 0xff

    .line 26
    .line 27
    const/16 v9, 0x3f

    .line 28
    .line 29
    and-int/2addr v7, v9

    .line 30
    const/4 v10, 0x1

    .line 31
    aget-byte v11, v2, v10

    .line 32
    .line 33
    and-int/lit16 v12, v11, 0xff

    .line 34
    .line 35
    shr-int/lit8 v13, v8, 0x6

    .line 36
    .line 37
    and-int/2addr v13, v10

    .line 38
    and-int/lit8 v11, v11, 0xf

    .line 39
    .line 40
    add-int/2addr v13, v11

    .line 41
    shr-int/lit8 v8, v8, 0x7

    .line 42
    .line 43
    and-int/2addr v8, v10

    .line 44
    shr-int/lit8 v11, v12, 0x4

    .line 45
    .line 46
    add-int/2addr v8, v11

    .line 47
    add-int/lit8 v11, v8, 0x2

    .line 48
    .line 49
    add-int v12, v11, v13

    .line 50
    .line 51
    array-length v14, v2

    .line 52
    if-gt v12, v14, :cond_6

    .line 53
    .line 54
    new-array v12, v8, [B

    .line 55
    .line 56
    invoke-static {v2, v6, v12, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    .line 58
    .line 59
    const/16 v2, 0x10

    .line 60
    .line 61
    new-array v2, v2, [B

    .line 62
    .line 63
    iget-object v0, v0, Lkk1;->d:[B

    .line 64
    .line 65
    invoke-static {v0, v11, v2, v5, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    .line 67
    .line 68
    iget-object v0, v1, Lg;->d:[B

    .line 69
    .line 70
    if-eqz v0, :cond_5

    .line 71
    .line 72
    if-ne v7, v9, :cond_1

    .line 73
    .line 74
    const/16 v4, 0x20

    .line 75
    .line 76
    new-array v4, v4, [B

    .line 77
    .line 78
    invoke-static {v12, v5, v4, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    .line 80
    .line 81
    array-length v7, v0

    .line 82
    rsub-int/lit8 v9, v8, 0x20

    .line 83
    .line 84
    invoke-static {v7, v9}, Ljava/lang/Math;->min(II)I

    .line 85
    .line 86
    .line 87
    move-result v7

    .line 88
    invoke-static {v0, v5, v4, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 89
    .line 90
    .line 91
    const/16 v18, 0x0

    .line 92
    .line 93
    goto :goto_3

    .line 94
    :cond_1
    :try_start_0
    const-string v4, "SHA-256"

    .line 95
    .line 96
    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 97
    .line 98
    .line 99
    move-result-object v4
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    const/16 v8, 0x8

    .line 101
    .line 102
    new-array v9, v8, [B

    .line 103
    .line 104
    const-wide/16 v13, 0x0

    .line 105
    .line 106
    :goto_0
    const-wide/16 v15, 0x1

    .line 107
    .line 108
    shl-long v17, v15, v7

    .line 109
    .line 110
    cmp-long v11, v13, v17

    .line 111
    .line 112
    if-gez v11, :cond_4

    .line 113
    .line 114
    invoke-virtual {v4, v12}, Ljava/security/MessageDigest;->update([B)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v4, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v4, v9}, Ljava/security/MessageDigest;->update([B)V

    .line 121
    .line 122
    .line 123
    move v11, v5

    .line 124
    :goto_1
    if-ge v11, v8, :cond_3

    .line 125
    .line 126
    aget-byte v17, v9, v11

    .line 127
    .line 128
    const/16 v18, 0x0

    .line 129
    .line 130
    add-int/lit8 v3, v17, 0x1

    .line 131
    .line 132
    int-to-byte v3, v3

    .line 133
    aput-byte v3, v9, v11

    .line 134
    .line 135
    if-eqz v3, :cond_2

    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_2
    add-int/lit8 v11, v11, 0x1

    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_3
    const/16 v18, 0x0

    .line 142
    .line 143
    :goto_2
    add-long/2addr v13, v15

    .line 144
    goto :goto_0

    .line 145
    :cond_4
    const/16 v18, 0x0

    .line 146
    .line 147
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    move-object v4, v0

    .line 152
    goto :goto_3

    .line 153
    :catch_0
    move-exception v0

    .line 154
    const/16 v18, 0x0

    .line 155
    .line 156
    const-string v3, "SHA-256 is unsupported by your Java implementation"

    .line 157
    .line 158
    invoke-static {v3, v0}, Le6;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 159
    .line 160
    .line 161
    move-object/from16 v4, v18

    .line 162
    .line 163
    :goto_3
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    .line 164
    .line 165
    const-string v3, "AES"

    .line 166
    .line 167
    invoke-direct {v0, v4, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 168
    .line 169
    .line 170
    :try_start_1
    const-string v3, "AES/CBC/NoPadding"

    .line 171
    .line 172
    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 173
    .line 174
    .line 175
    move-result-object v3

    .line 176
    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    .line 177
    .line 178
    invoke-direct {v4, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v3, v6, v0, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 182
    .line 183
    .line 184
    new-instance v0, Ljavax/crypto/CipherInputStream;

    .line 185
    .line 186
    iget-object v2, v1, Lg;->a:Ljava/io/InputStream;

    .line 187
    .line 188
    invoke-direct {v0, v2, v3}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    .line 189
    .line 190
    .line 191
    iput-object v0, v1, Lg;->f:Ljavax/crypto/CipherInputStream;

    .line 192
    .line 193
    iput-boolean v10, v1, Lg;->e:Z
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 194
    .line 195
    return-object v0

    .line 196
    :catch_1
    move-exception v0

    .line 197
    const-string v1, "Decryption error (do you have the JCE Unlimited Strength Jurisdiction Policy Files installed?)"

    .line 198
    .line 199
    invoke-static {v1, v0}, Le6;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 200
    .line 201
    .line 202
    return-object v18

    .line 203
    :cond_5
    new-instance v0, Ltx5;

    .line 204
    .line 205
    const-string v1, "Cannot read encrypted content from "

    .line 206
    .line 207
    const-string v2, " without a password."

    .line 208
    .line 209
    invoke-static {v1, v4, v2}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    throw v0

    .line 217
    :cond_6
    const/16 v18, 0x0

    .line 218
    .line 219
    const-string v0, "Salt size + IV size too long in "

    .line 220
    .line 221
    invoke-static {v0, v4}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    invoke-static {v0}, Ly5;->m(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    return-object v18

    .line 229
    :cond_7
    const/16 v18, 0x0

    .line 230
    .line 231
    const-string v0, "AES256 properties too short in "

    .line 232
    .line 233
    invoke-static {v0, v4}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    invoke-static {v0}, Ly5;->m(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    return-object v18

    .line 241
    :cond_8
    const/16 v18, 0x0

    .line 242
    .line 243
    const-string v0, "Missing AES256 properties in "

    .line 244
    .line 245
    invoke-static {v0, v4}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    invoke-static {v0}, Ly5;->m(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    return-object v18
.end method

.method public final close()V
    .locals 0

    .line 1
    iget-object p0, p0, Lg;->f:Ljavax/crypto/CipherInputStream;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Ljavax/crypto/CipherInputStream;->close()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final read()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lg;->a()Ljavax/crypto/CipherInputStream;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljavax/crypto/CipherInputStream;->read()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final read([BII)I
    .locals 0

    .line 10
    invoke-virtual {p0}, Lg;->a()Ljavax/crypto/CipherInputStream;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Ljavax/crypto/CipherInputStream;->read([BII)I

    move-result p0

    return p0
.end method
