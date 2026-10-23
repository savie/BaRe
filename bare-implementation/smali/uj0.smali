.class public final Luj0;
.super Lyp1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public G:I

.field public H:I

.field public I:I

.field public J:I

.field public K:I

.field public L:C

.field public M:Ltj0;

.field public a:I

.field public b:I

.field public c:I

.field public d:Z

.field public final e:Ldz0;

.field public f:I

.field public k:Lgr0;

.field public n:I

.field public p:I

.field public q:I

.field public r:I

.field public t:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ldz0;

    .line 5
    .line 6
    invoke-direct {v0}, Ldz0;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Luj0;->e:Ldz0;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput v0, p0, Luj0;->n:I

    .line 13
    .line 14
    new-instance v0, Lgr0;

    .line 15
    .line 16
    sget-object v1, Ljava/lang/System;->in:Ljava/io/InputStream;

    .line 17
    .line 18
    if-ne p1, v1, :cond_0

    .line 19
    .line 20
    new-instance v1, Lha1;

    .line 21
    .line 22
    invoke-direct {v1, p1}, Lka6;-><init>(Ljava/io/InputStream;)V

    .line 23
    .line 24
    .line 25
    move-object p1, v1

    .line 26
    :cond_0
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 27
    .line 28
    invoke-direct {v0, p1, v1}, Lgr0;-><init>(Ljava/io/InputStream;Ljava/nio/ByteOrder;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Luj0;->k:Lgr0;

    .line 32
    .line 33
    iget-object p1, p0, Luj0;->k:Lgr0;

    .line 34
    .line 35
    if-eqz p1, :cond_3

    .line 36
    .line 37
    const/16 v0, 0x8

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Lgr0;->a(I)J

    .line 40
    .line 41
    .line 42
    move-result-wide v1

    .line 43
    long-to-int p1, v1

    .line 44
    iget-object v1, p0, Luj0;->k:Lgr0;

    .line 45
    .line 46
    invoke-virtual {v1, v0}, Lgr0;->a(I)J

    .line 47
    .line 48
    .line 49
    move-result-wide v1

    .line 50
    long-to-int v1, v1

    .line 51
    iget-object v2, p0, Luj0;->k:Lgr0;

    .line 52
    .line 53
    invoke-virtual {v2, v0}, Lgr0;->a(I)J

    .line 54
    .line 55
    .line 56
    move-result-wide v2

    .line 57
    long-to-int v2, v2

    .line 58
    const/16 v3, 0x42

    .line 59
    .line 60
    if-ne p1, v3, :cond_2

    .line 61
    .line 62
    const/16 p1, 0x5a

    .line 63
    .line 64
    if-ne v1, p1, :cond_2

    .line 65
    .line 66
    const/16 p1, 0x68

    .line 67
    .line 68
    if-ne v2, p1, :cond_2

    .line 69
    .line 70
    iget-object p1, p0, Luj0;->k:Lgr0;

    .line 71
    .line 72
    invoke-virtual {p1, v0}, Lgr0;->a(I)J

    .line 73
    .line 74
    .line 75
    move-result-wide v0

    .line 76
    long-to-int p1, v0

    .line 77
    const/16 v0, 0x31

    .line 78
    .line 79
    if-lt p1, v0, :cond_1

    .line 80
    .line 81
    const/16 v0, 0x39

    .line 82
    .line 83
    if-gt p1, v0, :cond_1

    .line 84
    .line 85
    add-int/lit8 p1, p1, -0x30

    .line 86
    .line 87
    iput p1, p0, Luj0;->c:I

    .line 88
    .line 89
    const/4 p1, 0x0

    .line 90
    iput p1, p0, Luj0;->r:I

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_1
    const-string p1, "BZip2 block size is invalid"

    .line 94
    .line 95
    invoke-static {p1}, Ly5;->m(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_2
    new-instance p0, Ljava/io/IOException;

    .line 100
    .line 101
    const-string p1, "Stream is not in the BZip2 format"

    .line 102
    .line 103
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw p0

    .line 107
    :cond_3
    const-string p1, "No InputStream"

    .line 108
    .line 109
    invoke-static {p1}, Ly5;->m(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    :goto_0
    invoke-virtual {p0}, Luj0;->h()V

    .line 113
    .line 114
    .line 115
    return-void
.end method

.method public static a(Lgr0;I)I
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lgr0;->a(I)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    cmp-long v0, p0, v0

    .line 8
    .line 9
    if-ltz v0, :cond_0

    .line 10
    .line 11
    long-to-int p0, p0

    .line 12
    return p0

    .line 13
    :cond_0
    const-string p0, "Unexpected end of stream"

    .line 14
    .line 15
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    return p0
.end method

.method public static b(IILjava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "Corrupted input, "

    .line 2
    .line 3
    if-ltz p0, :cond_1

    .line 4
    .line 5
    if-ge p0, p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-string p0, " value too big"

    .line 9
    .line 10
    invoke-static {v0, p2, p0}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    const-string p0, " value negative"

    .line 19
    .line 20
    invoke-static {v0, p2, p0}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .line 1
    iget-object v0, p0, Luj0;->k:Lgr0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_0
    invoke-virtual {v0}, Lgr0;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Luj0;->M:Ltj0;

    .line 10
    .line 11
    iput-object v1, p0, Luj0;->k:Lgr0;

    .line 12
    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    iput-object v1, p0, Luj0;->M:Ltj0;

    .line 16
    .line 17
    iput-object v1, p0, Luj0;->k:Lgr0;

    .line 18
    .line 19
    throw v0

    .line 20
    :cond_0
    return-void
.end method

.method public final g()V
    .locals 3

    .line 1
    iget-object v0, p0, Luj0;->e:Ldz0;

    .line 2
    .line 3
    iget v0, v0, Ldz0;->a:I

    .line 4
    .line 5
    not-int v0, v0

    .line 6
    iget v1, p0, Luj0;->p:I

    .line 7
    .line 8
    if-ne v1, v0, :cond_0

    .line 9
    .line 10
    iget v1, p0, Luj0;->r:I

    .line 11
    .line 12
    shl-int/lit8 v2, v1, 0x1

    .line 13
    .line 14
    ushr-int/lit8 v1, v1, 0x1f

    .line 15
    .line 16
    or-int/2addr v1, v2

    .line 17
    xor-int/2addr v0, v1

    .line 18
    iput v0, p0, Luj0;->r:I

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget v0, p0, Luj0;->q:I

    .line 22
    .line 23
    shl-int/lit8 v2, v0, 0x1

    .line 24
    .line 25
    ushr-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    or-int/2addr v0, v2

    .line 28
    xor-int/2addr v0, v1

    .line 29
    iput v0, p0, Luj0;->r:I

    .line 30
    .line 31
    const-string p0, "BZip2 CRC error"

    .line 32
    .line 33
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final h()V
    .locals 39

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Luj0;->k:Lgr0;

    .line 4
    .line 5
    const/16 v2, 0x8

    .line 6
    .line 7
    invoke-static {v1, v2}, Luj0;->a(Lgr0;I)I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    int-to-char v3, v3

    .line 12
    invoke-static {v1, v2}, Luj0;->a(Lgr0;I)I

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    int-to-char v4, v4

    .line 17
    invoke-static {v1, v2}, Luj0;->a(Lgr0;I)I

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    int-to-char v5, v5

    .line 22
    invoke-static {v1, v2}, Luj0;->a(Lgr0;I)I

    .line 23
    .line 24
    .line 25
    move-result v6

    .line 26
    int-to-char v6, v6

    .line 27
    invoke-static {v1, v2}, Luj0;->a(Lgr0;I)I

    .line 28
    .line 29
    .line 30
    move-result v7

    .line 31
    int-to-char v7, v7

    .line 32
    invoke-static {v1, v2}, Luj0;->a(Lgr0;I)I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    int-to-char v2, v2

    .line 37
    const/16 v8, 0x17

    .line 38
    .line 39
    const/16 v9, 0x20

    .line 40
    .line 41
    const/4 v10, 0x0

    .line 42
    if-ne v3, v8, :cond_2

    .line 43
    .line 44
    const/16 v11, 0x72

    .line 45
    .line 46
    if-ne v4, v11, :cond_2

    .line 47
    .line 48
    const/16 v11, 0x45

    .line 49
    .line 50
    if-ne v5, v11, :cond_2

    .line 51
    .line 52
    const/16 v11, 0x38

    .line 53
    .line 54
    if-ne v6, v11, :cond_2

    .line 55
    .line 56
    const/16 v11, 0x50

    .line 57
    .line 58
    if-ne v7, v11, :cond_2

    .line 59
    .line 60
    const/16 v11, 0x90

    .line 61
    .line 62
    if-eq v2, v11, :cond_0

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_0
    iget-object v1, v0, Luj0;->k:Lgr0;

    .line 66
    .line 67
    invoke-static {v1, v9}, Luj0;->a(Lgr0;I)I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    iput v1, v0, Luj0;->q:I

    .line 72
    .line 73
    iput v10, v0, Luj0;->n:I

    .line 74
    .line 75
    const/4 v2, 0x0

    .line 76
    iput-object v2, v0, Luj0;->M:Ltj0;

    .line 77
    .line 78
    iget v0, v0, Luj0;->r:I

    .line 79
    .line 80
    if-ne v1, v0, :cond_1

    .line 81
    .line 82
    return-void

    .line 83
    :cond_1
    const-string v0, "BZip2 CRC error"

    .line 84
    .line 85
    invoke-static {v0}, Ly5;->m(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :cond_2
    :goto_0
    const/16 v11, 0x31

    .line 90
    .line 91
    if-ne v3, v11, :cond_32

    .line 92
    .line 93
    const/16 v3, 0x41

    .line 94
    .line 95
    if-ne v4, v3, :cond_32

    .line 96
    .line 97
    const/16 v3, 0x59

    .line 98
    .line 99
    if-ne v5, v3, :cond_32

    .line 100
    .line 101
    const/16 v4, 0x26

    .line 102
    .line 103
    if-ne v6, v4, :cond_32

    .line 104
    .line 105
    const/16 v4, 0x53

    .line 106
    .line 107
    if-ne v7, v4, :cond_32

    .line 108
    .line 109
    if-ne v2, v3, :cond_32

    .line 110
    .line 111
    invoke-static {v1, v9}, Luj0;->a(Lgr0;I)I

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    iput v2, v0, Luj0;->p:I

    .line 116
    .line 117
    const/4 v2, 0x1

    .line 118
    invoke-static {v1, v2}, Luj0;->a(Lgr0;I)I

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    if-ne v1, v2, :cond_3

    .line 123
    .line 124
    move v1, v2

    .line 125
    goto :goto_1

    .line 126
    :cond_3
    move v1, v10

    .line 127
    :goto_1
    iput-boolean v1, v0, Luj0;->d:Z

    .line 128
    .line 129
    iget-object v1, v0, Luj0;->M:Ltj0;

    .line 130
    .line 131
    if-nez v1, :cond_4

    .line 132
    .line 133
    new-instance v1, Ltj0;

    .line 134
    .line 135
    iget v3, v0, Luj0;->c:I

    .line 136
    .line 137
    invoke-direct {v1, v3}, Ltj0;-><init>(I)V

    .line 138
    .line 139
    .line 140
    iput-object v1, v0, Luj0;->M:Ltj0;

    .line 141
    .line 142
    :cond_4
    iget-object v1, v0, Luj0;->k:Lgr0;

    .line 143
    .line 144
    const/16 v3, 0x18

    .line 145
    .line 146
    invoke-static {v1, v3}, Luj0;->a(Lgr0;I)I

    .line 147
    .line 148
    .line 149
    move-result v3

    .line 150
    iput v3, v0, Luj0;->b:I

    .line 151
    .line 152
    iget-object v3, v0, Luj0;->k:Lgr0;

    .line 153
    .line 154
    iget-object v4, v0, Luj0;->M:Ltj0;

    .line 155
    .line 156
    iget-object v5, v4, Ltj0;->a:[Z

    .line 157
    .line 158
    iget-object v6, v4, Ltj0;->m:[B

    .line 159
    .line 160
    iget-object v7, v4, Ltj0;->c:[B

    .line 161
    .line 162
    iget-object v12, v4, Ltj0;->d:[B

    .line 163
    .line 164
    move v13, v10

    .line 165
    move v14, v13

    .line 166
    :goto_2
    const/16 v15, 0x10

    .line 167
    .line 168
    if-ge v13, v15, :cond_6

    .line 169
    .line 170
    invoke-static {v3, v2}, Luj0;->a(Lgr0;I)I

    .line 171
    .line 172
    .line 173
    move-result v15

    .line 174
    if-eqz v15, :cond_5

    .line 175
    .line 176
    shl-int v15, v2, v13

    .line 177
    .line 178
    or-int/2addr v14, v15

    .line 179
    :cond_5
    add-int/lit8 v13, v13, 0x1

    .line 180
    .line 181
    goto :goto_2

    .line 182
    :cond_6
    invoke-static {v5, v10}, Ljava/util/Arrays;->fill([ZZ)V

    .line 183
    .line 184
    .line 185
    move v13, v10

    .line 186
    :goto_3
    if-ge v13, v15, :cond_9

    .line 187
    .line 188
    shl-int v16, v2, v13

    .line 189
    .line 190
    and-int v16, v14, v16

    .line 191
    .line 192
    if-eqz v16, :cond_8

    .line 193
    .line 194
    shl-int/lit8 v16, v13, 0x4

    .line 195
    .line 196
    move v9, v10

    .line 197
    :goto_4
    if-ge v9, v15, :cond_8

    .line 198
    .line 199
    invoke-static {v3, v2}, Luj0;->a(Lgr0;I)I

    .line 200
    .line 201
    .line 202
    move-result v18

    .line 203
    if-eqz v18, :cond_7

    .line 204
    .line 205
    add-int v18, v16, v9

    .line 206
    .line 207
    aput-boolean v2, v5, v18

    .line 208
    .line 209
    :cond_7
    add-int/lit8 v9, v9, 0x1

    .line 210
    .line 211
    goto :goto_4

    .line 212
    :cond_8
    add-int/lit8 v13, v13, 0x1

    .line 213
    .line 214
    const/16 v9, 0x20

    .line 215
    .line 216
    goto :goto_3

    .line 217
    :cond_9
    iget-object v5, v0, Luj0;->M:Ltj0;

    .line 218
    .line 219
    iget-object v9, v5, Ltj0;->a:[Z

    .line 220
    .line 221
    iget-object v5, v5, Ltj0;->b:[B

    .line 222
    .line 223
    move v13, v10

    .line 224
    move v14, v13

    .line 225
    :goto_5
    const/16 v11, 0x100

    .line 226
    .line 227
    if-ge v13, v11, :cond_b

    .line 228
    .line 229
    aget-boolean v11, v9, v13

    .line 230
    .line 231
    if-eqz v11, :cond_a

    .line 232
    .line 233
    add-int/lit8 v11, v14, 0x1

    .line 234
    .line 235
    move/from16 v18, v10

    .line 236
    .line 237
    int-to-byte v10, v13

    .line 238
    aput-byte v10, v5, v14

    .line 239
    .line 240
    move v14, v11

    .line 241
    goto :goto_6

    .line 242
    :cond_a
    move/from16 v18, v10

    .line 243
    .line 244
    :goto_6
    add-int/lit8 v13, v13, 0x1

    .line 245
    .line 246
    move/from16 v10, v18

    .line 247
    .line 248
    goto :goto_5

    .line 249
    :cond_b
    move/from16 v18, v10

    .line 250
    .line 251
    iput v14, v0, Luj0;->f:I

    .line 252
    .line 253
    add-int/lit8 v14, v14, 0x2

    .line 254
    .line 255
    const/4 v5, 0x3

    .line 256
    invoke-static {v3, v5}, Luj0;->a(Lgr0;I)I

    .line 257
    .line 258
    .line 259
    move-result v5

    .line 260
    const/16 v9, 0xf

    .line 261
    .line 262
    invoke-static {v3, v9}, Luj0;->a(Lgr0;I)I

    .line 263
    .line 264
    .line 265
    move-result v9

    .line 266
    if-ltz v9, :cond_31

    .line 267
    .line 268
    const/16 v10, 0x103

    .line 269
    .line 270
    const-string v13, "alphaSize"

    .line 271
    .line 272
    invoke-static {v14, v10, v13}, Luj0;->b(IILjava/lang/String;)V

    .line 273
    .line 274
    .line 275
    const/4 v10, 0x7

    .line 276
    const-string v13, "nGroups"

    .line 277
    .line 278
    invoke-static {v5, v10, v13}, Luj0;->b(IILjava/lang/String;)V

    .line 279
    .line 280
    .line 281
    move/from16 v10, v18

    .line 282
    .line 283
    :goto_7
    const/16 v13, 0x4652

    .line 284
    .line 285
    if-ge v10, v9, :cond_e

    .line 286
    .line 287
    move/from16 v15, v18

    .line 288
    .line 289
    :goto_8
    invoke-static {v3, v2}, Luj0;->a(Lgr0;I)I

    .line 290
    .line 291
    .line 292
    move-result v20

    .line 293
    if-eqz v20, :cond_c

    .line 294
    .line 295
    add-int/lit8 v15, v15, 0x1

    .line 296
    .line 297
    goto :goto_8

    .line 298
    :cond_c
    if-ge v10, v13, :cond_d

    .line 299
    .line 300
    int-to-byte v13, v15

    .line 301
    aput-byte v13, v12, v10

    .line 302
    .line 303
    :cond_d
    add-int/lit8 v10, v10, 0x1

    .line 304
    .line 305
    const/16 v15, 0x10

    .line 306
    .line 307
    goto :goto_7

    .line 308
    :cond_e
    invoke-static {v9, v13}, Ljava/lang/Math;->min(II)I

    .line 309
    .line 310
    .line 311
    move-result v9

    .line 312
    move v10, v5

    .line 313
    :goto_9
    const/4 v15, -0x1

    .line 314
    add-int/2addr v10, v15

    .line 315
    if-ltz v10, :cond_f

    .line 316
    .line 317
    int-to-byte v15, v10

    .line 318
    aput-byte v15, v6, v10

    .line 319
    .line 320
    goto :goto_9

    .line 321
    :cond_f
    move/from16 v20, v15

    .line 322
    .line 323
    move/from16 v10, v18

    .line 324
    .line 325
    :goto_a
    const/4 v15, 0x6

    .line 326
    if-ge v10, v9, :cond_11

    .line 327
    .line 328
    aget-byte v13, v12, v10

    .line 329
    .line 330
    and-int/lit16 v13, v13, 0xff

    .line 331
    .line 332
    const-string v11, "selectorMtf"

    .line 333
    .line 334
    invoke-static {v13, v15, v11}, Luj0;->b(IILjava/lang/String;)V

    .line 335
    .line 336
    .line 337
    aget-byte v11, v6, v13

    .line 338
    .line 339
    :goto_b
    if-lez v13, :cond_10

    .line 340
    .line 341
    add-int/lit8 v15, v13, -0x1

    .line 342
    .line 343
    aget-byte v15, v6, v15

    .line 344
    .line 345
    aput-byte v15, v6, v13

    .line 346
    .line 347
    add-int/lit8 v13, v13, -0x1

    .line 348
    .line 349
    goto :goto_b

    .line 350
    :cond_10
    aput-byte v11, v6, v18

    .line 351
    .line 352
    aput-byte v11, v7, v10

    .line 353
    .line 354
    add-int/lit8 v10, v10, 0x1

    .line 355
    .line 356
    const/16 v11, 0x100

    .line 357
    .line 358
    const/16 v13, 0x4652

    .line 359
    .line 360
    goto :goto_a

    .line 361
    :cond_11
    iget-object v4, v4, Ltj0;->l:[[C

    .line 362
    .line 363
    move/from16 v6, v18

    .line 364
    .line 365
    :goto_c
    if-ge v6, v5, :cond_15

    .line 366
    .line 367
    const/4 v7, 0x5

    .line 368
    invoke-static {v3, v7}, Luj0;->a(Lgr0;I)I

    .line 369
    .line 370
    .line 371
    move-result v7

    .line 372
    aget-object v9, v4, v6

    .line 373
    .line 374
    move/from16 v10, v18

    .line 375
    .line 376
    :goto_d
    if-ge v10, v14, :cond_14

    .line 377
    .line 378
    :goto_e
    invoke-static {v3, v2}, Luj0;->a(Lgr0;I)I

    .line 379
    .line 380
    .line 381
    move-result v11

    .line 382
    if-eqz v11, :cond_13

    .line 383
    .line 384
    invoke-static {v3, v2}, Luj0;->a(Lgr0;I)I

    .line 385
    .line 386
    .line 387
    move-result v11

    .line 388
    if-eqz v11, :cond_12

    .line 389
    .line 390
    move/from16 v11, v20

    .line 391
    .line 392
    goto :goto_f

    .line 393
    :cond_12
    move v11, v2

    .line 394
    :goto_f
    add-int/2addr v7, v11

    .line 395
    goto :goto_e

    .line 396
    :cond_13
    int-to-char v11, v7

    .line 397
    aput-char v11, v9, v10

    .line 398
    .line 399
    add-int/lit8 v10, v10, 0x1

    .line 400
    .line 401
    goto :goto_d

    .line 402
    :cond_14
    add-int/lit8 v6, v6, 0x1

    .line 403
    .line 404
    goto :goto_c

    .line 405
    :cond_15
    iget-object v3, v0, Luj0;->M:Ltj0;

    .line 406
    .line 407
    iget-object v4, v3, Ltj0;->l:[[C

    .line 408
    .line 409
    iget-object v6, v3, Ltj0;->i:[I

    .line 410
    .line 411
    iget-object v7, v3, Ltj0;->f:[[I

    .line 412
    .line 413
    iget-object v9, v3, Ltj0;->g:[[I

    .line 414
    .line 415
    iget-object v3, v3, Ltj0;->h:[[I

    .line 416
    .line 417
    move/from16 v10, v18

    .line 418
    .line 419
    :goto_10
    if-ge v10, v5, :cond_21

    .line 420
    .line 421
    aget-object v12, v4, v10

    .line 422
    .line 423
    move/from16 v23, v2

    .line 424
    .line 425
    move/from16 v22, v14

    .line 426
    .line 427
    move/from16 v13, v18

    .line 428
    .line 429
    const/16 v2, 0x20

    .line 430
    .line 431
    :goto_11
    add-int/lit8 v22, v22, -0x1

    .line 432
    .line 433
    if-ltz v22, :cond_18

    .line 434
    .line 435
    aget-char v15, v12, v22

    .line 436
    .line 437
    if-le v15, v13, :cond_16

    .line 438
    .line 439
    move v13, v15

    .line 440
    :cond_16
    if-ge v15, v2, :cond_17

    .line 441
    .line 442
    move v2, v15

    .line 443
    :cond_17
    const/4 v15, 0x6

    .line 444
    goto :goto_11

    .line 445
    :cond_18
    aget-object v12, v7, v10

    .line 446
    .line 447
    aget-object v15, v9, v10

    .line 448
    .line 449
    aget-object v22, v3, v10

    .line 450
    .line 451
    aget-object v25, v4, v10

    .line 452
    .line 453
    move v8, v2

    .line 454
    move/from16 v26, v18

    .line 455
    .line 456
    :goto_12
    if-gt v8, v13, :cond_1b

    .line 457
    .line 458
    move/from16 v11, v18

    .line 459
    .line 460
    :goto_13
    if-ge v11, v14, :cond_1a

    .line 461
    .line 462
    move/from16 v29, v2

    .line 463
    .line 464
    aget-char v2, v25, v11

    .line 465
    .line 466
    if-ne v2, v8, :cond_19

    .line 467
    .line 468
    add-int/lit8 v2, v26, 0x1

    .line 469
    .line 470
    aput v11, v22, v26

    .line 471
    .line 472
    move/from16 v26, v2

    .line 473
    .line 474
    :cond_19
    add-int/lit8 v11, v11, 0x1

    .line 475
    .line 476
    move/from16 v2, v29

    .line 477
    .line 478
    goto :goto_13

    .line 479
    :cond_1a
    move/from16 v29, v2

    .line 480
    .line 481
    add-int/lit8 v8, v8, 0x1

    .line 482
    .line 483
    goto :goto_12

    .line 484
    :cond_1b
    move/from16 v29, v2

    .line 485
    .line 486
    const/16 v2, 0x17

    .line 487
    .line 488
    :goto_14
    add-int/lit8 v2, v2, -0x1

    .line 489
    .line 490
    if-lez v2, :cond_1c

    .line 491
    .line 492
    aput v18, v15, v2

    .line 493
    .line 494
    aput v18, v12, v2

    .line 495
    .line 496
    goto :goto_14

    .line 497
    :cond_1c
    move/from16 v2, v18

    .line 498
    .line 499
    :goto_15
    if-ge v2, v14, :cond_1d

    .line 500
    .line 501
    aget-char v8, v25, v2

    .line 502
    .line 503
    const-string v11, "length"

    .line 504
    .line 505
    move/from16 v22, v2

    .line 506
    .line 507
    const/16 v2, 0x102

    .line 508
    .line 509
    invoke-static {v8, v2, v11}, Luj0;->b(IILjava/lang/String;)V

    .line 510
    .line 511
    .line 512
    add-int/lit8 v8, v8, 0x1

    .line 513
    .line 514
    aget v2, v15, v8

    .line 515
    .line 516
    add-int/lit8 v2, v2, 0x1

    .line 517
    .line 518
    aput v2, v15, v8

    .line 519
    .line 520
    add-int/lit8 v2, v22, 0x1

    .line 521
    .line 522
    goto :goto_15

    .line 523
    :cond_1d
    aget v2, v15, v18

    .line 524
    .line 525
    move/from16 v8, v23

    .line 526
    .line 527
    const/16 v11, 0x17

    .line 528
    .line 529
    :goto_16
    if-ge v8, v11, :cond_1e

    .line 530
    .line 531
    aget v22, v15, v8

    .line 532
    .line 533
    add-int v2, v2, v22

    .line 534
    .line 535
    aput v2, v15, v8

    .line 536
    .line 537
    add-int/lit8 v8, v8, 0x1

    .line 538
    .line 539
    goto :goto_16

    .line 540
    :cond_1e
    aget v2, v15, v29

    .line 541
    .line 542
    move/from16 v8, v18

    .line 543
    .line 544
    move/from16 v11, v29

    .line 545
    .line 546
    :goto_17
    if-gt v11, v13, :cond_1f

    .line 547
    .line 548
    add-int/lit8 v22, v11, 0x1

    .line 549
    .line 550
    aget v25, v15, v22

    .line 551
    .line 552
    sub-int v2, v25, v2

    .line 553
    .line 554
    add-int/2addr v2, v8

    .line 555
    add-int/lit8 v8, v2, -0x1

    .line 556
    .line 557
    aput v8, v12, v11

    .line 558
    .line 559
    shl-int/lit8 v8, v2, 0x1

    .line 560
    .line 561
    move/from16 v11, v22

    .line 562
    .line 563
    move/from16 v2, v25

    .line 564
    .line 565
    goto :goto_17

    .line 566
    :cond_1f
    add-int/lit8 v2, v29, 0x1

    .line 567
    .line 568
    :goto_18
    if-gt v2, v13, :cond_20

    .line 569
    .line 570
    add-int/lit8 v8, v2, -0x1

    .line 571
    .line 572
    aget v8, v12, v8

    .line 573
    .line 574
    add-int/lit8 v8, v8, 0x1

    .line 575
    .line 576
    shl-int/lit8 v8, v8, 0x1

    .line 577
    .line 578
    aget v11, v15, v2

    .line 579
    .line 580
    sub-int/2addr v8, v11

    .line 581
    aput v8, v15, v2

    .line 582
    .line 583
    add-int/lit8 v2, v2, 0x1

    .line 584
    .line 585
    goto :goto_18

    .line 586
    :cond_20
    aput v29, v6, v10

    .line 587
    .line 588
    add-int/lit8 v10, v10, 0x1

    .line 589
    .line 590
    move/from16 v2, v23

    .line 591
    .line 592
    const/16 v8, 0x17

    .line 593
    .line 594
    const/4 v15, 0x6

    .line 595
    goto/16 :goto_10

    .line 596
    .line 597
    :cond_21
    move/from16 v23, v2

    .line 598
    .line 599
    iget-object v2, v0, Luj0;->M:Ltj0;

    .line 600
    .line 601
    iget-object v3, v2, Ltj0;->o:[B

    .line 602
    .line 603
    iget-object v4, v2, Ltj0;->e:[I

    .line 604
    .line 605
    iget-object v5, v2, Ltj0;->c:[B

    .line 606
    .line 607
    iget-object v6, v2, Ltj0;->b:[B

    .line 608
    .line 609
    iget-object v7, v2, Ltj0;->k:[C

    .line 610
    .line 611
    iget-object v8, v2, Ltj0;->i:[I

    .line 612
    .line 613
    iget-object v9, v2, Ltj0;->f:[[I

    .line 614
    .line 615
    iget-object v10, v2, Ltj0;->g:[[I

    .line 616
    .line 617
    iget-object v2, v2, Ltj0;->h:[[I

    .line 618
    .line 619
    iget v11, v0, Luj0;->c:I

    .line 620
    .line 621
    const v12, 0x186a0

    .line 622
    .line 623
    .line 624
    mul-int/2addr v11, v12

    .line 625
    const/16 v12, 0x100

    .line 626
    .line 627
    :goto_19
    add-int/lit8 v12, v12, -0x1

    .line 628
    .line 629
    if-ltz v12, :cond_22

    .line 630
    .line 631
    int-to-char v13, v12

    .line 632
    aput-char v13, v7, v12

    .line 633
    .line 634
    aput v18, v4, v12

    .line 635
    .line 636
    goto :goto_19

    .line 637
    :cond_22
    iget v12, v0, Luj0;->f:I

    .line 638
    .line 639
    add-int/lit8 v12, v12, 0x1

    .line 640
    .line 641
    iget-object v13, v0, Luj0;->M:Ltj0;

    .line 642
    .line 643
    iget-object v14, v13, Ltj0;->c:[B

    .line 644
    .line 645
    aget-byte v14, v14, v18

    .line 646
    .line 647
    and-int/lit16 v14, v14, 0xff

    .line 648
    .line 649
    const-string v15, "zt"

    .line 650
    .line 651
    move-object/from16 v17, v2

    .line 652
    .line 653
    const/4 v2, 0x6

    .line 654
    invoke-static {v14, v2, v15}, Luj0;->b(IILjava/lang/String;)V

    .line 655
    .line 656
    .line 657
    iget-object v2, v13, Ltj0;->f:[[I

    .line 658
    .line 659
    aget-object v2, v2, v14

    .line 660
    .line 661
    move-object/from16 v22, v2

    .line 662
    .line 663
    iget-object v2, v13, Ltj0;->i:[I

    .line 664
    .line 665
    aget v2, v2, v14

    .line 666
    .line 667
    move-object/from16 v25, v4

    .line 668
    .line 669
    const-string v4, "zn"

    .line 670
    .line 671
    move-object/from16 v26, v5

    .line 672
    .line 673
    const/16 v5, 0x102

    .line 674
    .line 675
    invoke-static {v2, v5, v4}, Luj0;->b(IILjava/lang/String;)V

    .line 676
    .line 677
    .line 678
    iget-object v5, v0, Luj0;->k:Lgr0;

    .line 679
    .line 680
    invoke-static {v5, v2}, Luj0;->a(Lgr0;I)I

    .line 681
    .line 682
    .line 683
    move-result v5

    .line 684
    move/from16 v27, v2

    .line 685
    .line 686
    :goto_1a
    aget v2, v22, v27

    .line 687
    .line 688
    if-le v5, v2, :cond_23

    .line 689
    .line 690
    add-int/lit8 v2, v27, 0x1

    .line 691
    .line 692
    move/from16 v29, v5

    .line 693
    .line 694
    const/16 v5, 0x102

    .line 695
    .line 696
    invoke-static {v2, v5, v4}, Luj0;->b(IILjava/lang/String;)V

    .line 697
    .line 698
    .line 699
    shl-int/lit8 v5, v29, 0x1

    .line 700
    .line 701
    move/from16 v27, v2

    .line 702
    .line 703
    iget-object v2, v0, Luj0;->k:Lgr0;

    .line 704
    .line 705
    move/from16 v29, v5

    .line 706
    .line 707
    move/from16 v5, v23

    .line 708
    .line 709
    invoke-static {v2, v5}, Luj0;->a(Lgr0;I)I

    .line 710
    .line 711
    .line 712
    move-result v2

    .line 713
    or-int v5, v29, v2

    .line 714
    .line 715
    const/16 v23, 0x1

    .line 716
    .line 717
    goto :goto_1a

    .line 718
    :cond_23
    move/from16 v29, v5

    .line 719
    .line 720
    iget-object v2, v13, Ltj0;->g:[[I

    .line 721
    .line 722
    aget-object v2, v2, v14

    .line 723
    .line 724
    aget v2, v2, v27

    .line 725
    .line 726
    sub-int v5, v29, v2

    .line 727
    .line 728
    const-string v2, "zvec"

    .line 729
    .line 730
    move-object/from16 v22, v6

    .line 731
    .line 732
    const/16 v6, 0x102

    .line 733
    .line 734
    invoke-static {v5, v6, v2}, Luj0;->b(IILjava/lang/String;)V

    .line 735
    .line 736
    .line 737
    iget-object v6, v13, Ltj0;->h:[[I

    .line 738
    .line 739
    aget-object v6, v6, v14

    .line 740
    .line 741
    aget v5, v6, v5

    .line 742
    .line 743
    aget-byte v6, v26, v18

    .line 744
    .line 745
    and-int/lit16 v6, v6, 0xff

    .line 746
    .line 747
    const/4 v13, 0x6

    .line 748
    invoke-static {v6, v13, v15}, Luj0;->b(IILjava/lang/String;)V

    .line 749
    .line 750
    .line 751
    aget-object v13, v10, v6

    .line 752
    .line 753
    aget-object v14, v9, v6

    .line 754
    .line 755
    aget-object v27, v17, v6

    .line 756
    .line 757
    aget v6, v8, v6

    .line 758
    .line 759
    move/from16 v30, v6

    .line 760
    .line 761
    move/from16 v6, v20

    .line 762
    .line 763
    move-object/from16 v29, v27

    .line 764
    .line 765
    const/16 v31, 0x31

    .line 766
    .line 767
    move/from16 v27, v18

    .line 768
    .line 769
    :goto_1b
    if-eq v5, v12, :cond_30

    .line 770
    .line 771
    move-object/from16 v32, v8

    .line 772
    .line 773
    const-string v8, "groupNo"

    .line 774
    .line 775
    move-object/from16 v33, v9

    .line 776
    .line 777
    const-string v9, "yy"

    .line 778
    .line 779
    move-object/from16 v34, v10

    .line 780
    .line 781
    const-string v10, " exceeds "

    .line 782
    .line 783
    move/from16 v35, v12

    .line 784
    .line 785
    if-eqz v5, :cond_24

    .line 786
    .line 787
    const/4 v12, 0x1

    .line 788
    if-ne v5, v12, :cond_25

    .line 789
    .line 790
    :cond_24
    move-object/from16 v36, v13

    .line 791
    .line 792
    const/16 v13, 0x10

    .line 793
    .line 794
    goto/16 :goto_22

    .line 795
    .line 796
    :cond_25
    add-int/lit8 v6, v6, 0x1

    .line 797
    .line 798
    if-ge v6, v11, :cond_2a

    .line 799
    .line 800
    const/16 v10, 0x101

    .line 801
    .line 802
    const-string v12, "nextSym"

    .line 803
    .line 804
    invoke-static {v5, v10, v12}, Luj0;->b(IILjava/lang/String;)V

    .line 805
    .line 806
    .line 807
    add-int/lit8 v10, v5, -0x1

    .line 808
    .line 809
    aget-char v12, v7, v10

    .line 810
    .line 811
    move-object/from16 v36, v13

    .line 812
    .line 813
    const/16 v13, 0x100

    .line 814
    .line 815
    invoke-static {v12, v13, v9}, Luj0;->b(IILjava/lang/String;)V

    .line 816
    .line 817
    .line 818
    aget-byte v9, v22, v12

    .line 819
    .line 820
    and-int/lit16 v13, v9, 0xff

    .line 821
    .line 822
    aget v37, v25, v13

    .line 823
    .line 824
    const/16 v23, 0x1

    .line 825
    .line 826
    add-int/lit8 v37, v37, 0x1

    .line 827
    .line 828
    aput v37, v25, v13

    .line 829
    .line 830
    aput-byte v9, v3, v6

    .line 831
    .line 832
    const/16 v13, 0x10

    .line 833
    .line 834
    if-gt v5, v13, :cond_27

    .line 835
    .line 836
    :goto_1c
    if-lez v10, :cond_26

    .line 837
    .line 838
    add-int/lit8 v5, v10, -0x1

    .line 839
    .line 840
    aget-char v9, v7, v5

    .line 841
    .line 842
    aput-char v9, v7, v10

    .line 843
    .line 844
    move v10, v5

    .line 845
    goto :goto_1c

    .line 846
    :cond_26
    move/from16 v5, v18

    .line 847
    .line 848
    goto :goto_1d

    .line 849
    :cond_27
    move/from16 v5, v18

    .line 850
    .line 851
    const/4 v9, 0x1

    .line 852
    invoke-static {v7, v5, v7, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 853
    .line 854
    .line 855
    :goto_1d
    aput-char v12, v7, v5

    .line 856
    .line 857
    if-nez v31, :cond_28

    .line 858
    .line 859
    add-int/lit8 v5, v27, 0x1

    .line 860
    .line 861
    const/16 v9, 0x4652

    .line 862
    .line 863
    invoke-static {v5, v9, v8}, Luj0;->b(IILjava/lang/String;)V

    .line 864
    .line 865
    .line 866
    aget-byte v8, v26, v5

    .line 867
    .line 868
    and-int/lit16 v8, v8, 0xff

    .line 869
    .line 870
    const/4 v9, 0x6

    .line 871
    invoke-static {v8, v9, v15}, Luj0;->b(IILjava/lang/String;)V

    .line 872
    .line 873
    .line 874
    aget-object v9, v34, v8

    .line 875
    .line 876
    aget-object v10, v33, v8

    .line 877
    .line 878
    aget-object v12, v17, v8

    .line 879
    .line 880
    aget v8, v32, v8

    .line 881
    .line 882
    move/from16 v27, v5

    .line 883
    .line 884
    move-object/from16 v36, v9

    .line 885
    .line 886
    move-object v14, v10

    .line 887
    move-object/from16 v29, v12

    .line 888
    .line 889
    const/16 v31, 0x31

    .line 890
    .line 891
    :goto_1e
    const/16 v5, 0x102

    .line 892
    .line 893
    goto :goto_1f

    .line 894
    :cond_28
    add-int/lit8 v31, v31, -0x1

    .line 895
    .line 896
    move/from16 v8, v30

    .line 897
    .line 898
    goto :goto_1e

    .line 899
    :goto_1f
    invoke-static {v8, v5, v4}, Luj0;->b(IILjava/lang/String;)V

    .line 900
    .line 901
    .line 902
    invoke-static {v1, v8}, Luj0;->a(Lgr0;I)I

    .line 903
    .line 904
    .line 905
    move-result v9

    .line 906
    move v10, v8

    .line 907
    :goto_20
    aget v12, v14, v10

    .line 908
    .line 909
    if-le v9, v12, :cond_29

    .line 910
    .line 911
    add-int/lit8 v10, v10, 0x1

    .line 912
    .line 913
    invoke-static {v10, v5, v4}, Luj0;->b(IILjava/lang/String;)V

    .line 914
    .line 915
    .line 916
    shl-int/lit8 v9, v9, 0x1

    .line 917
    .line 918
    const/4 v12, 0x1

    .line 919
    invoke-static {v1, v12}, Luj0;->a(Lgr0;I)I

    .line 920
    .line 921
    .line 922
    move-result v19

    .line 923
    or-int v9, v9, v19

    .line 924
    .line 925
    goto :goto_20

    .line 926
    :cond_29
    aget v10, v36, v10

    .line 927
    .line 928
    sub-int/2addr v9, v10

    .line 929
    invoke-static {v9, v5, v2}, Luj0;->b(IILjava/lang/String;)V

    .line 930
    .line 931
    .line 932
    aget v5, v29, v9

    .line 933
    .line 934
    move/from16 v30, v8

    .line 935
    .line 936
    move-object/from16 v8, v32

    .line 937
    .line 938
    move-object/from16 v9, v33

    .line 939
    .line 940
    move-object/from16 v10, v34

    .line 941
    .line 942
    move/from16 v12, v35

    .line 943
    .line 944
    move-object/from16 v13, v36

    .line 945
    .line 946
    :goto_21
    const/16 v18, 0x0

    .line 947
    .line 948
    goto/16 :goto_1b

    .line 949
    .line 950
    :cond_2a
    const-string v0, "Block overrun in MTF, "

    .line 951
    .line 952
    invoke-static {v0, v6, v11, v10}, Ldj7;->i(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    .line 953
    .line 954
    .line 955
    move-result-object v0

    .line 956
    invoke-static {v0}, Ly5;->m(Ljava/lang/String;)V

    .line 957
    .line 958
    .line 959
    return-void

    .line 960
    :goto_22
    move/from16 v13, v20

    .line 961
    .line 962
    const/4 v12, 0x1

    .line 963
    :goto_23
    if-nez v5, :cond_2b

    .line 964
    .line 965
    add-int/2addr v13, v12

    .line 966
    move-object/from16 v37, v7

    .line 967
    .line 968
    goto :goto_24

    .line 969
    :cond_2b
    move-object/from16 v37, v7

    .line 970
    .line 971
    const/4 v7, 0x1

    .line 972
    if-ne v5, v7, :cond_2e

    .line 973
    .line 974
    shl-int/lit8 v5, v12, 0x1

    .line 975
    .line 976
    add-int/2addr v13, v5

    .line 977
    :goto_24
    if-nez v31, :cond_2c

    .line 978
    .line 979
    add-int/lit8 v5, v27, 0x1

    .line 980
    .line 981
    const/16 v7, 0x4652

    .line 982
    .line 983
    invoke-static {v5, v7, v8}, Luj0;->b(IILjava/lang/String;)V

    .line 984
    .line 985
    .line 986
    aget-byte v14, v26, v5

    .line 987
    .line 988
    and-int/lit16 v14, v14, 0xff

    .line 989
    .line 990
    const/4 v7, 0x6

    .line 991
    invoke-static {v14, v7, v15}, Luj0;->b(IILjava/lang/String;)V

    .line 992
    .line 993
    .line 994
    aget-object v36, v34, v14

    .line 995
    .line 996
    aget-object v24, v33, v14

    .line 997
    .line 998
    aget-object v29, v17, v14

    .line 999
    .line 1000
    aget v30, v32, v14

    .line 1001
    .line 1002
    move/from16 v27, v5

    .line 1003
    .line 1004
    move-object/from16 v14, v24

    .line 1005
    .line 1006
    const/16 v31, 0x31

    .line 1007
    .line 1008
    :goto_25
    move/from16 v5, v30

    .line 1009
    .line 1010
    const/16 v7, 0x102

    .line 1011
    .line 1012
    goto :goto_26

    .line 1013
    :cond_2c
    const/4 v7, 0x6

    .line 1014
    add-int/lit8 v31, v31, -0x1

    .line 1015
    .line 1016
    goto :goto_25

    .line 1017
    :goto_26
    invoke-static {v5, v7, v4}, Luj0;->b(IILjava/lang/String;)V

    .line 1018
    .line 1019
    .line 1020
    invoke-static {v1, v5}, Luj0;->a(Lgr0;I)I

    .line 1021
    .line 1022
    .line 1023
    move-result v28

    .line 1024
    move/from16 v30, v5

    .line 1025
    .line 1026
    move/from16 v7, v28

    .line 1027
    .line 1028
    move/from16 v28, v30

    .line 1029
    .line 1030
    :goto_27
    aget v5, v14, v28

    .line 1031
    .line 1032
    if-le v7, v5, :cond_2d

    .line 1033
    .line 1034
    add-int/lit8 v5, v28, 0x1

    .line 1035
    .line 1036
    move/from16 v38, v7

    .line 1037
    .line 1038
    const/16 v7, 0x102

    .line 1039
    .line 1040
    invoke-static {v5, v7, v4}, Luj0;->b(IILjava/lang/String;)V

    .line 1041
    .line 1042
    .line 1043
    shl-int/lit8 v28, v38, 0x1

    .line 1044
    .line 1045
    const/4 v7, 0x1

    .line 1046
    invoke-static {v1, v7}, Luj0;->a(Lgr0;I)I

    .line 1047
    .line 1048
    .line 1049
    move-result v38

    .line 1050
    or-int v7, v28, v38

    .line 1051
    .line 1052
    move/from16 v28, v5

    .line 1053
    .line 1054
    goto :goto_27

    .line 1055
    :cond_2d
    move/from16 v38, v7

    .line 1056
    .line 1057
    aget v5, v36, v28

    .line 1058
    .line 1059
    sub-int v7, v38, v5

    .line 1060
    .line 1061
    const/16 v5, 0x102

    .line 1062
    .line 1063
    invoke-static {v7, v5, v2}, Luj0;->b(IILjava/lang/String;)V

    .line 1064
    .line 1065
    .line 1066
    aget v7, v29, v7

    .line 1067
    .line 1068
    shl-int/lit8 v12, v12, 0x1

    .line 1069
    .line 1070
    move v5, v7

    .line 1071
    move-object/from16 v7, v37

    .line 1072
    .line 1073
    goto :goto_23

    .line 1074
    :cond_2e
    const/16 v28, 0x102

    .line 1075
    .line 1076
    iget-object v7, v0, Luj0;->M:Ltj0;

    .line 1077
    .line 1078
    iget-object v7, v7, Ltj0;->o:[B

    .line 1079
    .line 1080
    array-length v7, v7

    .line 1081
    const-string v8, "s"

    .line 1082
    .line 1083
    invoke-static {v13, v7, v8}, Luj0;->b(IILjava/lang/String;)V

    .line 1084
    .line 1085
    .line 1086
    const/16 v18, 0x0

    .line 1087
    .line 1088
    aget-char v7, v37, v18

    .line 1089
    .line 1090
    const/16 v8, 0x100

    .line 1091
    .line 1092
    invoke-static {v7, v8, v9}, Luj0;->b(IILjava/lang/String;)V

    .line 1093
    .line 1094
    .line 1095
    aget-byte v7, v22, v7

    .line 1096
    .line 1097
    and-int/lit16 v9, v7, 0xff

    .line 1098
    .line 1099
    aget v12, v25, v9

    .line 1100
    .line 1101
    add-int/lit8 v21, v13, 0x1

    .line 1102
    .line 1103
    add-int v21, v21, v12

    .line 1104
    .line 1105
    aput v21, v25, v9

    .line 1106
    .line 1107
    add-int/lit8 v6, v6, 0x1

    .line 1108
    .line 1109
    add-int v9, v6, v13

    .line 1110
    .line 1111
    iget-object v12, v0, Luj0;->M:Ltj0;

    .line 1112
    .line 1113
    iget-object v12, v12, Ltj0;->o:[B

    .line 1114
    .line 1115
    array-length v12, v12

    .line 1116
    const-string v13, "lastShadow"

    .line 1117
    .line 1118
    invoke-static {v9, v12, v13}, Luj0;->b(IILjava/lang/String;)V

    .line 1119
    .line 1120
    .line 1121
    add-int/lit8 v12, v9, 0x1

    .line 1122
    .line 1123
    invoke-static {v3, v6, v12, v7}, Ljava/util/Arrays;->fill([BIIB)V

    .line 1124
    .line 1125
    .line 1126
    if-ge v9, v11, :cond_2f

    .line 1127
    .line 1128
    move v6, v9

    .line 1129
    move-object/from16 v8, v32

    .line 1130
    .line 1131
    move-object/from16 v9, v33

    .line 1132
    .line 1133
    move-object/from16 v10, v34

    .line 1134
    .line 1135
    move/from16 v12, v35

    .line 1136
    .line 1137
    move-object/from16 v13, v36

    .line 1138
    .line 1139
    move-object/from16 v7, v37

    .line 1140
    .line 1141
    goto/16 :goto_21

    .line 1142
    .line 1143
    :cond_2f
    const-string v0, "Block overrun while expanding RLE in MTF, "

    .line 1144
    .line 1145
    invoke-static {v0, v9, v11, v10}, Ldj7;->i(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    .line 1146
    .line 1147
    .line 1148
    move-result-object v0

    .line 1149
    invoke-static {v0}, Ly5;->m(Ljava/lang/String;)V

    .line 1150
    .line 1151
    .line 1152
    return-void

    .line 1153
    :cond_30
    iput v6, v0, Luj0;->a:I

    .line 1154
    .line 1155
    iget-object v1, v0, Luj0;->e:Ldz0;

    .line 1156
    .line 1157
    move/from16 v2, v20

    .line 1158
    .line 1159
    iput v2, v1, Ldz0;->a:I

    .line 1160
    .line 1161
    const/4 v7, 0x1

    .line 1162
    iput v7, v0, Luj0;->n:I

    .line 1163
    .line 1164
    return-void

    .line 1165
    :cond_31
    const-string v0, "Corrupted input, nSelectors value negative"

    .line 1166
    .line 1167
    invoke-static {v0}, Ly5;->m(Ljava/lang/String;)V

    .line 1168
    .line 1169
    .line 1170
    return-void

    .line 1171
    :cond_32
    move v5, v10

    .line 1172
    iput v5, v0, Luj0;->n:I

    .line 1173
    .line 1174
    const-string v0, "Bad block header"

    .line 1175
    .line 1176
    invoke-static {v0}, Ly5;->m(Ljava/lang/String;)V

    .line 1177
    .line 1178
    .line 1179
    return-void
.end method

.method public final j()I
    .locals 7

    .line 1
    iget v0, p0, Luj0;->n:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "su_tPos"

    .line 5
    .line 6
    const/4 v3, 0x4

    .line 7
    const/4 v4, 0x1

    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lg84;->c()V

    .line 12
    .line 13
    .line 14
    return v1

    .line 15
    :pswitch_0
    invoke-virtual {p0}, Luj0;->q()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0

    .line 20
    :pswitch_1
    iget v0, p0, Luj0;->x:I

    .line 21
    .line 22
    iget v5, p0, Luj0;->y:I

    .line 23
    .line 24
    if-eq v0, v5, :cond_0

    .line 25
    .line 26
    iput v4, p0, Luj0;->t:I

    .line 27
    .line 28
    invoke-virtual {p0}, Luj0;->n()I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    return p0

    .line 33
    :cond_0
    iget v0, p0, Luj0;->t:I

    .line 34
    .line 35
    add-int/2addr v0, v4

    .line 36
    iput v0, p0, Luj0;->t:I

    .line 37
    .line 38
    if-lt v0, v3, :cond_1

    .line 39
    .line 40
    iget v0, p0, Luj0;->K:I

    .line 41
    .line 42
    iget-object v3, p0, Luj0;->M:Ltj0;

    .line 43
    .line 44
    iget-object v3, v3, Ltj0;->o:[B

    .line 45
    .line 46
    array-length v3, v3

    .line 47
    invoke-static {v0, v3, v2}, Luj0;->b(IILjava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Luj0;->M:Ltj0;

    .line 51
    .line 52
    iget-object v2, v0, Ltj0;->o:[B

    .line 53
    .line 54
    iget v3, p0, Luj0;->K:I

    .line 55
    .line 56
    aget-byte v2, v2, v3

    .line 57
    .line 58
    and-int/lit16 v2, v2, 0xff

    .line 59
    .line 60
    int-to-char v2, v2

    .line 61
    iput-char v2, p0, Luj0;->L:C

    .line 62
    .line 63
    iget-object v0, v0, Ltj0;->n:[I

    .line 64
    .line 65
    aget v0, v0, v3

    .line 66
    .line 67
    iput v0, p0, Luj0;->K:I

    .line 68
    .line 69
    iput v1, p0, Luj0;->H:I

    .line 70
    .line 71
    invoke-virtual {p0}, Luj0;->q()I

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    return p0

    .line 76
    :cond_1
    invoke-virtual {p0}, Luj0;->n()I

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    return p0

    .line 81
    :pswitch_2
    invoke-static {}, Lg84;->c()V

    .line 82
    .line 83
    .line 84
    return v1

    .line 85
    :pswitch_3
    invoke-virtual {p0}, Luj0;->u()I

    .line 86
    .line 87
    .line 88
    move-result p0

    .line 89
    return p0

    .line 90
    :pswitch_4
    iget v0, p0, Luj0;->x:I

    .line 91
    .line 92
    iget v5, p0, Luj0;->y:I

    .line 93
    .line 94
    const/4 v6, 0x2

    .line 95
    if-eq v0, v5, :cond_2

    .line 96
    .line 97
    iput v6, p0, Luj0;->n:I

    .line 98
    .line 99
    iput v4, p0, Luj0;->t:I

    .line 100
    .line 101
    invoke-virtual {p0}, Luj0;->r()I

    .line 102
    .line 103
    .line 104
    move-result p0

    .line 105
    return p0

    .line 106
    :cond_2
    iget v0, p0, Luj0;->t:I

    .line 107
    .line 108
    add-int/2addr v0, v4

    .line 109
    iput v0, p0, Luj0;->t:I

    .line 110
    .line 111
    if-ge v0, v3, :cond_3

    .line 112
    .line 113
    iput v6, p0, Luj0;->n:I

    .line 114
    .line 115
    invoke-virtual {p0}, Luj0;->r()I

    .line 116
    .line 117
    .line 118
    move-result p0

    .line 119
    return p0

    .line 120
    :cond_3
    iget-object v0, p0, Luj0;->M:Ltj0;

    .line 121
    .line 122
    iget-object v5, v0, Ltj0;->o:[B

    .line 123
    .line 124
    iget v6, p0, Luj0;->K:I

    .line 125
    .line 126
    aget-byte v5, v5, v6

    .line 127
    .line 128
    and-int/lit16 v5, v5, 0xff

    .line 129
    .line 130
    int-to-char v5, v5

    .line 131
    iput-char v5, p0, Luj0;->L:C

    .line 132
    .line 133
    iget-object v0, v0, Ltj0;->n:[I

    .line 134
    .line 135
    array-length v0, v0

    .line 136
    invoke-static {v6, v0, v2}, Luj0;->b(IILjava/lang/String;)V

    .line 137
    .line 138
    .line 139
    iget-object v0, p0, Luj0;->M:Ltj0;

    .line 140
    .line 141
    iget-object v0, v0, Ltj0;->n:[I

    .line 142
    .line 143
    iget v2, p0, Luj0;->K:I

    .line 144
    .line 145
    aget v0, v0, v2

    .line 146
    .line 147
    iput v0, p0, Luj0;->K:I

    .line 148
    .line 149
    iget v0, p0, Luj0;->I:I

    .line 150
    .line 151
    if-nez v0, :cond_4

    .line 152
    .line 153
    iget v0, p0, Luj0;->J:I

    .line 154
    .line 155
    sget-object v2, Lk55;->e:[I

    .line 156
    .line 157
    aget v2, v2, v0

    .line 158
    .line 159
    sub-int/2addr v2, v4

    .line 160
    iput v2, p0, Luj0;->I:I

    .line 161
    .line 162
    add-int/2addr v0, v4

    .line 163
    iput v0, p0, Luj0;->J:I

    .line 164
    .line 165
    const/16 v2, 0x200

    .line 166
    .line 167
    if-ne v0, v2, :cond_5

    .line 168
    .line 169
    iput v1, p0, Luj0;->J:I

    .line 170
    .line 171
    goto :goto_0

    .line 172
    :cond_4
    sub-int/2addr v0, v4

    .line 173
    iput v0, p0, Luj0;->I:I

    .line 174
    .line 175
    :cond_5
    :goto_0
    iput v1, p0, Luj0;->H:I

    .line 176
    .line 177
    iput v3, p0, Luj0;->n:I

    .line 178
    .line 179
    iget v0, p0, Luj0;->I:I

    .line 180
    .line 181
    if-ne v0, v4, :cond_6

    .line 182
    .line 183
    iget-char v0, p0, Luj0;->L:C

    .line 184
    .line 185
    xor-int/2addr v0, v4

    .line 186
    int-to-char v0, v0

    .line 187
    iput-char v0, p0, Luj0;->L:C

    .line 188
    .line 189
    :cond_6
    invoke-virtual {p0}, Luj0;->u()I

    .line 190
    .line 191
    .line 192
    move-result p0

    .line 193
    return p0

    .line 194
    :pswitch_5
    invoke-static {}, Lg84;->c()V

    .line 195
    .line 196
    .line 197
    return v1

    .line 198
    :pswitch_6
    invoke-virtual {p0}, Luj0;->m()I

    .line 199
    .line 200
    .line 201
    move-result p0

    .line 202
    return p0

    .line 203
    :pswitch_7
    const/4 p0, -0x1

    .line 204
    return p0

    .line 205
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final m()I
    .locals 11

    .line 1
    iget v0, p0, Luj0;->n:I

    .line 2
    .line 3
    if-eqz v0, :cond_7

    .line 4
    .line 5
    iget-object v0, p0, Luj0;->M:Ltj0;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_2

    .line 10
    :cond_0
    iget-object v1, v0, Ltj0;->j:[I

    .line 11
    .line 12
    iget v2, p0, Luj0;->a:I

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    add-int/2addr v2, v3

    .line 16
    iget-object v4, v0, Ltj0;->n:[I

    .line 17
    .line 18
    if-eqz v4, :cond_1

    .line 19
    .line 20
    array-length v5, v4

    .line 21
    if-ge v5, v2, :cond_2

    .line 22
    .line 23
    :cond_1
    new-array v4, v2, [I

    .line 24
    .line 25
    iput-object v4, v0, Ltj0;->n:[I

    .line 26
    .line 27
    :cond_2
    iget-object v5, v0, Ltj0;->o:[B

    .line 28
    .line 29
    const/4 v6, 0x0

    .line 30
    aput v6, v1, v6

    .line 31
    .line 32
    iget-object v0, v0, Ltj0;->e:[I

    .line 33
    .line 34
    const/16 v7, 0x100

    .line 35
    .line 36
    invoke-static {v0, v6, v1, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    .line 38
    .line 39
    aget v0, v1, v6

    .line 40
    .line 41
    :goto_0
    if-gt v3, v7, :cond_3

    .line 42
    .line 43
    aget v8, v1, v3

    .line 44
    .line 45
    add-int/2addr v0, v8

    .line 46
    aput v0, v1, v3

    .line 47
    .line 48
    add-int/lit8 v3, v3, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_3
    iget v0, p0, Luj0;->a:I

    .line 52
    .line 53
    move v3, v6

    .line 54
    :goto_1
    if-gt v3, v0, :cond_4

    .line 55
    .line 56
    aget-byte v8, v5, v3

    .line 57
    .line 58
    and-int/lit16 v8, v8, 0xff

    .line 59
    .line 60
    aget v9, v1, v8

    .line 61
    .line 62
    add-int/lit8 v10, v9, 0x1

    .line 63
    .line 64
    aput v10, v1, v8

    .line 65
    .line 66
    const-string v8, "tt index"

    .line 67
    .line 68
    invoke-static {v9, v2, v8}, Luj0;->b(IILjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    aput v3, v4, v9

    .line 72
    .line 73
    add-int/lit8 v3, v3, 0x1

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_4
    iget v0, p0, Luj0;->b:I

    .line 77
    .line 78
    if-ltz v0, :cond_6

    .line 79
    .line 80
    array-length v1, v4

    .line 81
    if-ge v0, v1, :cond_6

    .line 82
    .line 83
    aget v0, v4, v0

    .line 84
    .line 85
    iput v0, p0, Luj0;->K:I

    .line 86
    .line 87
    iput v6, p0, Luj0;->t:I

    .line 88
    .line 89
    iput v6, p0, Luj0;->G:I

    .line 90
    .line 91
    iput v7, p0, Luj0;->x:I

    .line 92
    .line 93
    iget-boolean v0, p0, Luj0;->d:Z

    .line 94
    .line 95
    if-eqz v0, :cond_5

    .line 96
    .line 97
    iput v6, p0, Luj0;->I:I

    .line 98
    .line 99
    iput v6, p0, Luj0;->J:I

    .line 100
    .line 101
    invoke-virtual {p0}, Luj0;->r()I

    .line 102
    .line 103
    .line 104
    move-result p0

    .line 105
    return p0

    .line 106
    :cond_5
    invoke-virtual {p0}, Luj0;->n()I

    .line 107
    .line 108
    .line 109
    move-result p0

    .line 110
    return p0

    .line 111
    :cond_6
    const-string p0, "Stream corrupted"

    .line 112
    .line 113
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    return v6

    .line 117
    :cond_7
    :goto_2
    const/4 p0, -0x1

    .line 118
    return p0
.end method

.method public final n()I
    .locals 4

    .line 1
    iget v0, p0, Luj0;->G:I

    .line 2
    .line 3
    iget v1, p0, Luj0;->a:I

    .line 4
    .line 5
    if-gt v0, v1, :cond_1

    .line 6
    .line 7
    iget v0, p0, Luj0;->x:I

    .line 8
    .line 9
    iput v0, p0, Luj0;->y:I

    .line 10
    .line 11
    iget-object v0, p0, Luj0;->M:Ltj0;

    .line 12
    .line 13
    iget-object v1, v0, Ltj0;->o:[B

    .line 14
    .line 15
    iget v2, p0, Luj0;->K:I

    .line 16
    .line 17
    aget-byte v1, v1, v2

    .line 18
    .line 19
    and-int/lit16 v1, v1, 0xff

    .line 20
    .line 21
    iput v1, p0, Luj0;->x:I

    .line 22
    .line 23
    iget-object v0, v0, Ltj0;->n:[I

    .line 24
    .line 25
    array-length v0, v0

    .line 26
    const-string v3, "su_tPos"

    .line 27
    .line 28
    invoke-static {v2, v0, v3}, Luj0;->b(IILjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Luj0;->M:Ltj0;

    .line 32
    .line 33
    iget-object v0, v0, Ltj0;->n:[I

    .line 34
    .line 35
    iget v2, p0, Luj0;->K:I

    .line 36
    .line 37
    aget v0, v0, v2

    .line 38
    .line 39
    iput v0, p0, Luj0;->K:I

    .line 40
    .line 41
    iget v0, p0, Luj0;->G:I

    .line 42
    .line 43
    add-int/lit8 v0, v0, 0x1

    .line 44
    .line 45
    iput v0, p0, Luj0;->G:I

    .line 46
    .line 47
    const/4 v0, 0x6

    .line 48
    iput v0, p0, Luj0;->n:I

    .line 49
    .line 50
    iget-object p0, p0, Luj0;->e:Ldz0;

    .line 51
    .line 52
    iget v0, p0, Ldz0;->a:I

    .line 53
    .line 54
    shr-int/lit8 v2, v0, 0x18

    .line 55
    .line 56
    xor-int/2addr v2, v1

    .line 57
    shl-int/lit8 v0, v0, 0x8

    .line 58
    .line 59
    if-gez v2, :cond_0

    .line 60
    .line 61
    add-int/lit16 v2, v2, 0x100

    .line 62
    .line 63
    :cond_0
    sget-object v3, Ldz0;->b:[I

    .line 64
    .line 65
    aget v2, v3, v2

    .line 66
    .line 67
    xor-int/2addr v0, v2

    .line 68
    iput v0, p0, Ldz0;->a:I

    .line 69
    .line 70
    return v1

    .line 71
    :cond_1
    const/4 v0, 0x5

    .line 72
    iput v0, p0, Luj0;->n:I

    .line 73
    .line 74
    invoke-virtual {p0}, Luj0;->g()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Luj0;->h()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Luj0;->m()I

    .line 81
    .line 82
    .line 83
    move-result p0

    .line 84
    return p0
.end method

.method public final q()I
    .locals 6

    .line 1
    iget v0, p0, Luj0;->H:I

    .line 2
    .line 3
    iget-char v1, p0, Luj0;->L:C

    .line 4
    .line 5
    if-ge v0, v1, :cond_1

    .line 6
    .line 7
    iget v1, p0, Luj0;->x:I

    .line 8
    .line 9
    iget-object v2, p0, Luj0;->e:Ldz0;

    .line 10
    .line 11
    iget v3, v2, Ldz0;->a:I

    .line 12
    .line 13
    shr-int/lit8 v4, v3, 0x18

    .line 14
    .line 15
    xor-int/2addr v4, v1

    .line 16
    shl-int/lit8 v3, v3, 0x8

    .line 17
    .line 18
    if-gez v4, :cond_0

    .line 19
    .line 20
    add-int/lit16 v4, v4, 0x100

    .line 21
    .line 22
    :cond_0
    sget-object v5, Ldz0;->b:[I

    .line 23
    .line 24
    aget v4, v5, v4

    .line 25
    .line 26
    xor-int/2addr v3, v4

    .line 27
    iput v3, v2, Ldz0;->a:I

    .line 28
    .line 29
    add-int/lit8 v0, v0, 0x1

    .line 30
    .line 31
    iput v0, p0, Luj0;->H:I

    .line 32
    .line 33
    const/4 v0, 0x7

    .line 34
    iput v0, p0, Luj0;->n:I

    .line 35
    .line 36
    return v1

    .line 37
    :cond_1
    iget v0, p0, Luj0;->G:I

    .line 38
    .line 39
    add-int/lit8 v0, v0, 0x1

    .line 40
    .line 41
    iput v0, p0, Luj0;->G:I

    .line 42
    .line 43
    const/4 v0, 0x0

    .line 44
    iput v0, p0, Luj0;->t:I

    .line 45
    .line 46
    invoke-virtual {p0}, Luj0;->n()I

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    return p0
.end method

.method public final r()I
    .locals 5

    .line 1
    iget v0, p0, Luj0;->G:I

    .line 2
    .line 3
    iget v1, p0, Luj0;->a:I

    .line 4
    .line 5
    if-gt v0, v1, :cond_4

    .line 6
    .line 7
    iget v0, p0, Luj0;->x:I

    .line 8
    .line 9
    iput v0, p0, Luj0;->y:I

    .line 10
    .line 11
    iget-object v0, p0, Luj0;->M:Ltj0;

    .line 12
    .line 13
    iget-object v1, v0, Ltj0;->o:[B

    .line 14
    .line 15
    iget v2, p0, Luj0;->K:I

    .line 16
    .line 17
    aget-byte v1, v1, v2

    .line 18
    .line 19
    and-int/lit16 v1, v1, 0xff

    .line 20
    .line 21
    iget-object v0, v0, Ltj0;->n:[I

    .line 22
    .line 23
    array-length v0, v0

    .line 24
    const-string v3, "su_tPos"

    .line 25
    .line 26
    invoke-static {v2, v0, v3}, Luj0;->b(IILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Luj0;->M:Ltj0;

    .line 30
    .line 31
    iget-object v0, v0, Ltj0;->n:[I

    .line 32
    .line 33
    iget v2, p0, Luj0;->K:I

    .line 34
    .line 35
    aget v0, v0, v2

    .line 36
    .line 37
    iput v0, p0, Luj0;->K:I

    .line 38
    .line 39
    iget v0, p0, Luj0;->I:I

    .line 40
    .line 41
    const/4 v2, 0x0

    .line 42
    const/4 v3, 0x1

    .line 43
    if-nez v0, :cond_0

    .line 44
    .line 45
    iget v0, p0, Luj0;->J:I

    .line 46
    .line 47
    sget-object v4, Lk55;->e:[I

    .line 48
    .line 49
    aget v4, v4, v0

    .line 50
    .line 51
    sub-int/2addr v4, v3

    .line 52
    iput v4, p0, Luj0;->I:I

    .line 53
    .line 54
    add-int/2addr v0, v3

    .line 55
    iput v0, p0, Luj0;->J:I

    .line 56
    .line 57
    const/16 v4, 0x200

    .line 58
    .line 59
    if-ne v0, v4, :cond_1

    .line 60
    .line 61
    iput v2, p0, Luj0;->J:I

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    sub-int/2addr v0, v3

    .line 65
    iput v0, p0, Luj0;->I:I

    .line 66
    .line 67
    :cond_1
    :goto_0
    iget v0, p0, Luj0;->I:I

    .line 68
    .line 69
    if-ne v0, v3, :cond_2

    .line 70
    .line 71
    move v2, v3

    .line 72
    :cond_2
    xor-int v0, v1, v2

    .line 73
    .line 74
    iput v0, p0, Luj0;->x:I

    .line 75
    .line 76
    iget v1, p0, Luj0;->G:I

    .line 77
    .line 78
    add-int/2addr v1, v3

    .line 79
    iput v1, p0, Luj0;->G:I

    .line 80
    .line 81
    const/4 v1, 0x3

    .line 82
    iput v1, p0, Luj0;->n:I

    .line 83
    .line 84
    iget-object p0, p0, Luj0;->e:Ldz0;

    .line 85
    .line 86
    iget v1, p0, Ldz0;->a:I

    .line 87
    .line 88
    shr-int/lit8 v2, v1, 0x18

    .line 89
    .line 90
    xor-int/2addr v2, v0

    .line 91
    shl-int/lit8 v1, v1, 0x8

    .line 92
    .line 93
    if-gez v2, :cond_3

    .line 94
    .line 95
    add-int/lit16 v2, v2, 0x100

    .line 96
    .line 97
    :cond_3
    sget-object v3, Ldz0;->b:[I

    .line 98
    .line 99
    aget v2, v3, v2

    .line 100
    .line 101
    xor-int/2addr v1, v2

    .line 102
    iput v1, p0, Ldz0;->a:I

    .line 103
    .line 104
    return v0

    .line 105
    :cond_4
    invoke-virtual {p0}, Luj0;->g()V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0}, Luj0;->h()V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0}, Luj0;->m()I

    .line 112
    .line 113
    .line 114
    move-result p0

    .line 115
    return p0
.end method

.method public final read()I
    .locals 1

    .line 87
    iget-object v0, p0, Luj0;->k:Lgr0;

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p0}, Luj0;->j()I

    move-result p0

    return p0

    .line 89
    :cond_0
    const-string p0, "Stream closed"

    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final read([BII)I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, ") < 0."

    .line 3
    .line 4
    const-string v2, "offs("

    .line 5
    .line 6
    if-ltz p2, :cond_6

    .line 7
    .line 8
    if-ltz p3, :cond_5

    .line 9
    .line 10
    add-int v1, p2, p3

    .line 11
    .line 12
    array-length v3, p1

    .line 13
    if-gt v1, v3, :cond_4

    .line 14
    .line 15
    iget-object v2, p0, Luj0;->k:Lgr0;

    .line 16
    .line 17
    if-eqz v2, :cond_3

    .line 18
    .line 19
    if-nez p3, :cond_0

    .line 20
    .line 21
    return v0

    .line 22
    :cond_0
    move p3, p2

    .line 23
    :goto_0
    if-ge p3, v1, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0}, Luj0;->j()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-ltz v0, :cond_1

    .line 30
    .line 31
    add-int/lit8 v2, p3, 0x1

    .line 32
    .line 33
    int-to-byte v0, v0

    .line 34
    aput-byte v0, p1, p3

    .line 35
    .line 36
    move p3, v2

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    if-ne p3, p2, :cond_2

    .line 39
    .line 40
    const/4 p0, -0x1

    .line 41
    return p0

    .line 42
    :cond_2
    sub-int/2addr p3, p2

    .line 43
    return p3

    .line 44
    :cond_3
    const-string p0, "Stream closed"

    .line 45
    .line 46
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return v0

    .line 50
    :cond_4
    const-string p0, ") + len("

    .line 51
    .line 52
    const-string v1, ") > dest.length("

    .line 53
    .line 54
    invoke-static {v2, p2, p0, v1, p3}, Lxs1;->n(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    array-length p1, p1

    .line 59
    const-string p2, ")."

    .line 60
    .line 61
    invoke-static {p0, p1, p2}, Lxs1;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-static {p0}, La6;->d(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    return v0

    .line 69
    :cond_5
    const-string p0, "len("

    .line 70
    .line 71
    invoke-static {p3, p0, v1}, Lxs1;->h(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-static {p0}, La6;->d(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    return v0

    .line 79
    :cond_6
    invoke-static {p2, v2, v1}, Lxs1;->h(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-static {p0}, La6;->d(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    return v0
.end method

.method public final u()I
    .locals 6

    .line 1
    iget v0, p0, Luj0;->H:I

    .line 2
    .line 3
    iget-char v1, p0, Luj0;->L:C

    .line 4
    .line 5
    if-ge v0, v1, :cond_1

    .line 6
    .line 7
    iget v1, p0, Luj0;->x:I

    .line 8
    .line 9
    iget-object v2, p0, Luj0;->e:Ldz0;

    .line 10
    .line 11
    iget v3, v2, Ldz0;->a:I

    .line 12
    .line 13
    shr-int/lit8 v4, v3, 0x18

    .line 14
    .line 15
    xor-int/2addr v4, v1

    .line 16
    shl-int/lit8 v3, v3, 0x8

    .line 17
    .line 18
    if-gez v4, :cond_0

    .line 19
    .line 20
    add-int/lit16 v4, v4, 0x100

    .line 21
    .line 22
    :cond_0
    sget-object v5, Ldz0;->b:[I

    .line 23
    .line 24
    aget v4, v5, v4

    .line 25
    .line 26
    xor-int/2addr v3, v4

    .line 27
    iput v3, v2, Ldz0;->a:I

    .line 28
    .line 29
    add-int/lit8 v0, v0, 0x1

    .line 30
    .line 31
    iput v0, p0, Luj0;->H:I

    .line 32
    .line 33
    return v1

    .line 34
    :cond_1
    const/4 v0, 0x2

    .line 35
    iput v0, p0, Luj0;->n:I

    .line 36
    .line 37
    iget v0, p0, Luj0;->G:I

    .line 38
    .line 39
    add-int/lit8 v0, v0, 0x1

    .line 40
    .line 41
    iput v0, p0, Luj0;->G:I

    .line 42
    .line 43
    const/4 v0, 0x0

    .line 44
    iput v0, p0, Luj0;->t:I

    .line 45
    .line 46
    invoke-virtual {p0}, Luj0;->r()I

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    return p0
.end method
