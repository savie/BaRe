.class final Lcom/jcraft/jsch/jzlib/Deflater;
.super Lcom/jcraft/jsch/jzlib/ZStream;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public m:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Lcom/jcraft/jsch/jzlib/ZStream;-><init>()V

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lcom/jcraft/jsch/jzlib/Deflater;->m:Z

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/jzlib/GZIPException;
        }
    .end annotation

    const/16 v0, 0xf

    const/4 v1, 0x0

    .line 60
    invoke-direct {p0, p1, v0, v1}, Lcom/jcraft/jsch/jzlib/Deflater;-><init>(IIZ)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/jzlib/GZIPException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, p2, v0}, Lcom/jcraft/jsch/jzlib/Deflater;-><init>(IIZ)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/jzlib/GZIPException;
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Lcom/jcraft/jsch/jzlib/ZStream;-><init>()V

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lcom/jcraft/jsch/jzlib/Deflater;->m:Z

    .line 71
    new-instance v0, Lcom/jcraft/jsch/jzlib/Deflate;

    invoke-direct {v0, p0}, Lcom/jcraft/jsch/jzlib/Deflate;-><init>(Lcom/jcraft/jsch/jzlib/ZStream;)V

    iput-object v0, p0, Lcom/jcraft/jsch/jzlib/ZStream;->j:Lcom/jcraft/jsch/jzlib/Deflate;

    .line 72
    invoke-virtual {v0, p1, p2, p3}, Lcom/jcraft/jsch/jzlib/Deflate;->d(III)I

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 73
    :cond_0
    iget-object p0, p0, Lcom/jcraft/jsch/jzlib/ZStream;->i:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/jcraft/jsch/jzlib/a;->a(ILjava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(IIILcom/jcraft/jsch/jzlib/JZlib$WrapperType;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/jzlib/GZIPException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/jcraft/jsch/jzlib/ZStream;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/jcraft/jsch/jzlib/Deflater;->m:Z

    .line 6
    .line 7
    const/16 v1, 0x9

    .line 8
    .line 9
    const/4 v2, -0x2

    .line 10
    if-lt p2, v1, :cond_4

    .line 11
    .line 12
    const/16 v1, 0xf

    .line 13
    .line 14
    if-le p2, v1, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    sget-object v1, Lcom/jcraft/jsch/jzlib/JZlib;->a:Lcom/jcraft/jsch/jzlib/JZlib$WrapperType;

    .line 18
    .line 19
    if-ne p4, v1, :cond_1

    .line 20
    .line 21
    mul-int/lit8 p2, p2, -0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    sget-object v1, Lcom/jcraft/jsch/jzlib/JZlib;->b:Lcom/jcraft/jsch/jzlib/JZlib$WrapperType;

    .line 25
    .line 26
    if-ne p4, v1, :cond_2

    .line 27
    .line 28
    add-int/lit8 p2, p2, 0x10

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    sget-object v1, Lcom/jcraft/jsch/jzlib/JZlib;->c:Lcom/jcraft/jsch/jzlib/JZlib$WrapperType;

    .line 32
    .line 33
    if-ne p4, v1, :cond_3

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_3
    :goto_0
    iput-boolean v0, p0, Lcom/jcraft/jsch/jzlib/Deflater;->m:Z

    .line 37
    .line 38
    new-instance p4, Lcom/jcraft/jsch/jzlib/Deflate;

    .line 39
    .line 40
    invoke-direct {p4, p0}, Lcom/jcraft/jsch/jzlib/Deflate;-><init>(Lcom/jcraft/jsch/jzlib/ZStream;)V

    .line 41
    .line 42
    .line 43
    iput-object p4, p0, Lcom/jcraft/jsch/jzlib/ZStream;->j:Lcom/jcraft/jsch/jzlib/Deflate;

    .line 44
    .line 45
    invoke-virtual {p4, p1, p2, p3}, Lcom/jcraft/jsch/jzlib/Deflate;->d(III)I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    :cond_4
    :goto_1
    if-nez v2, :cond_5

    .line 50
    .line 51
    return-void

    .line 52
    :cond_5
    iget-object p0, p0, Lcom/jcraft/jsch/jzlib/ZStream;->i:Ljava/lang/String;

    .line 53
    .line 54
    invoke-static {v2, p0}, Lcom/jcraft/jsch/jzlib/a;->a(ILjava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    const/4 p0, 0x0

    .line 58
    throw p0
.end method

.method public constructor <init>(IIZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/jzlib/GZIPException;
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Lcom/jcraft/jsch/jzlib/ZStream;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lcom/jcraft/jsch/jzlib/Deflater;->m:Z

    .line 64
    new-instance v0, Lcom/jcraft/jsch/jzlib/Deflate;

    invoke-direct {v0, p0}, Lcom/jcraft/jsch/jzlib/Deflate;-><init>(Lcom/jcraft/jsch/jzlib/ZStream;)V

    iput-object v0, p0, Lcom/jcraft/jsch/jzlib/ZStream;->j:Lcom/jcraft/jsch/jzlib/Deflate;

    if-eqz p3, :cond_0

    neg-int p2, p2

    :cond_0
    const/16 p3, 0x8

    .line 65
    invoke-virtual {v0, p1, p2, p3}, Lcom/jcraft/jsch/jzlib/Deflate;->d(III)I

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 66
    :cond_1
    iget-object p0, p0, Lcom/jcraft/jsch/jzlib/ZStream;->i:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/jcraft/jsch/jzlib/a;->a(ILjava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/jzlib/GZIPException;
        }
    .end annotation

    const/16 v0, 0xf

    .line 59
    invoke-direct {p0, p1, v0, p2}, Lcom/jcraft/jsch/jzlib/Deflater;-><init>(IIZ)V

    return-void
.end method


# virtual methods
.method public final c(I)I
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/jcraft/jsch/jzlib/ZStream;->j:Lcom/jcraft/jsch/jzlib/Deflate;

    .line 6
    .line 7
    const/4 v3, -0x2

    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    return v3

    .line 11
    :cond_0
    iget-object v4, v2, Lcom/jcraft/jsch/jzlib/Deflate;->a:Lcom/jcraft/jsch/jzlib/ZStream;

    .line 12
    .line 13
    const/4 v5, 0x1

    .line 14
    const/4 v6, 0x4

    .line 15
    if-gt v1, v6, :cond_4d

    .line 16
    .line 17
    if-gez v1, :cond_1

    .line 18
    .line 19
    goto/16 :goto_1f

    .line 20
    .line 21
    :cond_1
    iget-object v7, v4, Lcom/jcraft/jsch/jzlib/ZStream;->e:[B

    .line 22
    .line 23
    sget-object v8, Lcom/jcraft/jsch/jzlib/Deflate;->x0:[Ljava/lang/String;

    .line 24
    .line 25
    if-eqz v7, :cond_4c

    .line 26
    .line 27
    iget-object v7, v4, Lcom/jcraft/jsch/jzlib/ZStream;->a:[B

    .line 28
    .line 29
    if-nez v7, :cond_2

    .line 30
    .line 31
    iget v7, v4, Lcom/jcraft/jsch/jzlib/ZStream;->c:I

    .line 32
    .line 33
    if-nez v7, :cond_4c

    .line 34
    .line 35
    :cond_2
    iget v7, v2, Lcom/jcraft/jsch/jzlib/Deflate;->b:I

    .line 36
    .line 37
    const/16 v9, 0x29a

    .line 38
    .line 39
    if-ne v7, v9, :cond_3

    .line 40
    .line 41
    if-eq v1, v6, :cond_3

    .line 42
    .line 43
    goto/16 :goto_1e

    .line 44
    .line 45
    :cond_3
    iget v3, v4, Lcom/jcraft/jsch/jzlib/ZStream;->g:I

    .line 46
    .line 47
    const/4 v11, 0x7

    .line 48
    if-nez v3, :cond_4

    .line 49
    .line 50
    aget-object v1, v8, v11

    .line 51
    .line 52
    iput-object v1, v4, Lcom/jcraft/jsch/jzlib/ZStream;->i:Ljava/lang/String;

    .line 53
    .line 54
    :goto_0
    const/4 v3, -0x5

    .line 55
    goto/16 :goto_1f

    .line 56
    .line 57
    :cond_4
    iget v3, v2, Lcom/jcraft/jsch/jzlib/Deflate;->p:I

    .line 58
    .line 59
    iput v1, v2, Lcom/jcraft/jsch/jzlib/Deflate;->p:I

    .line 60
    .line 61
    const/16 v12, 0x2a

    .line 62
    .line 63
    const/4 v13, 0x3

    .line 64
    const/16 v14, 0x8

    .line 65
    .line 66
    const/4 v15, 0x0

    .line 67
    const-wide/32 v16, 0xffff

    .line 68
    .line 69
    .line 70
    const/16 v10, 0x9

    .line 71
    .line 72
    const/16 v19, 0x18

    .line 73
    .line 74
    const/16 v20, 0x10

    .line 75
    .line 76
    move/from16 v21, v11

    .line 77
    .line 78
    const/4 v11, 0x2

    .line 79
    if-ne v7, v12, :cond_11

    .line 80
    .line 81
    iget v7, v2, Lcom/jcraft/jsch/jzlib/Deflate;->k:I

    .line 82
    .line 83
    const/16 v12, 0x71

    .line 84
    .line 85
    if-ne v7, v11, :cond_d

    .line 86
    .line 87
    invoke-virtual {v2}, Lcom/jcraft/jsch/jzlib/Deflate;->i()Lcom/jcraft/jsch/jzlib/GZIPHeader;

    .line 88
    .line 89
    .line 90
    move-result-object v7

    .line 91
    iget-object v11, v7, Lcom/jcraft/jsch/jzlib/GZIPHeader;->b:[B

    .line 92
    .line 93
    if-eqz v11, :cond_5

    .line 94
    .line 95
    move v11, v6

    .line 96
    goto :goto_1

    .line 97
    :cond_5
    move v11, v15

    .line 98
    :goto_1
    iget-object v9, v7, Lcom/jcraft/jsch/jzlib/GZIPHeader;->c:[B

    .line 99
    .line 100
    if-eqz v9, :cond_6

    .line 101
    .line 102
    or-int/lit8 v11, v11, 0x8

    .line 103
    .line 104
    :cond_6
    iget-object v9, v7, Lcom/jcraft/jsch/jzlib/GZIPHeader;->d:[B

    .line 105
    .line 106
    if-eqz v9, :cond_7

    .line 107
    .line 108
    or-int/lit8 v11, v11, 0x10

    .line 109
    .line 110
    :cond_7
    iget v9, v2, Lcom/jcraft/jsch/jzlib/Deflate;->W:I

    .line 111
    .line 112
    if-ne v9, v5, :cond_8

    .line 113
    .line 114
    move v9, v6

    .line 115
    goto :goto_2

    .line 116
    :cond_8
    if-ne v9, v10, :cond_9

    .line 117
    .line 118
    const/4 v9, 0x2

    .line 119
    goto :goto_2

    .line 120
    :cond_9
    move v9, v15

    .line 121
    :goto_2
    const/16 v10, -0x74e1

    .line 122
    .line 123
    invoke-virtual {v2, v10}, Lcom/jcraft/jsch/jzlib/Deflate;->p(I)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2, v14}, Lcom/jcraft/jsch/jzlib/Deflate;->n(B)V

    .line 127
    .line 128
    .line 129
    int-to-byte v10, v11

    .line 130
    invoke-virtual {v2, v10}, Lcom/jcraft/jsch/jzlib/Deflate;->n(B)V

    .line 131
    .line 132
    .line 133
    iget-wide v10, v7, Lcom/jcraft/jsch/jzlib/GZIPHeader;->e:J

    .line 134
    .line 135
    long-to-int v10, v10

    .line 136
    int-to-byte v10, v10

    .line 137
    invoke-virtual {v2, v10}, Lcom/jcraft/jsch/jzlib/Deflate;->n(B)V

    .line 138
    .line 139
    .line 140
    iget-wide v10, v7, Lcom/jcraft/jsch/jzlib/GZIPHeader;->e:J

    .line 141
    .line 142
    shr-long/2addr v10, v14

    .line 143
    long-to-int v10, v10

    .line 144
    int-to-byte v10, v10

    .line 145
    invoke-virtual {v2, v10}, Lcom/jcraft/jsch/jzlib/Deflate;->n(B)V

    .line 146
    .line 147
    .line 148
    iget-wide v10, v7, Lcom/jcraft/jsch/jzlib/GZIPHeader;->e:J

    .line 149
    .line 150
    shr-long v10, v10, v20

    .line 151
    .line 152
    long-to-int v10, v10

    .line 153
    int-to-byte v10, v10

    .line 154
    invoke-virtual {v2, v10}, Lcom/jcraft/jsch/jzlib/Deflate;->n(B)V

    .line 155
    .line 156
    .line 157
    iget-wide v10, v7, Lcom/jcraft/jsch/jzlib/GZIPHeader;->e:J

    .line 158
    .line 159
    shr-long v10, v10, v19

    .line 160
    .line 161
    long-to-int v10, v10

    .line 162
    int-to-byte v10, v10

    .line 163
    invoke-virtual {v2, v10}, Lcom/jcraft/jsch/jzlib/Deflate;->n(B)V

    .line 164
    .line 165
    .line 166
    int-to-byte v9, v9

    .line 167
    invoke-virtual {v2, v9}, Lcom/jcraft/jsch/jzlib/Deflate;->n(B)V

    .line 168
    .line 169
    .line 170
    iget v9, v7, Lcom/jcraft/jsch/jzlib/GZIPHeader;->a:I

    .line 171
    .line 172
    int-to-byte v9, v9

    .line 173
    invoke-virtual {v2, v9}, Lcom/jcraft/jsch/jzlib/Deflate;->n(B)V

    .line 174
    .line 175
    .line 176
    iget-object v9, v7, Lcom/jcraft/jsch/jzlib/GZIPHeader;->b:[B

    .line 177
    .line 178
    if-eqz v9, :cond_a

    .line 179
    .line 180
    array-length v9, v9

    .line 181
    int-to-byte v9, v9

    .line 182
    invoke-virtual {v2, v9}, Lcom/jcraft/jsch/jzlib/Deflate;->n(B)V

    .line 183
    .line 184
    .line 185
    iget-object v9, v7, Lcom/jcraft/jsch/jzlib/GZIPHeader;->b:[B

    .line 186
    .line 187
    array-length v9, v9

    .line 188
    shr-int/2addr v9, v14

    .line 189
    int-to-byte v9, v9

    .line 190
    invoke-virtual {v2, v9}, Lcom/jcraft/jsch/jzlib/Deflate;->n(B)V

    .line 191
    .line 192
    .line 193
    iget-object v9, v7, Lcom/jcraft/jsch/jzlib/GZIPHeader;->b:[B

    .line 194
    .line 195
    array-length v10, v9

    .line 196
    invoke-virtual {v2, v9, v15, v10}, Lcom/jcraft/jsch/jzlib/Deflate;->o([BII)V

    .line 197
    .line 198
    .line 199
    :cond_a
    iget-object v9, v7, Lcom/jcraft/jsch/jzlib/GZIPHeader;->c:[B

    .line 200
    .line 201
    if-eqz v9, :cond_b

    .line 202
    .line 203
    array-length v10, v9

    .line 204
    invoke-virtual {v2, v9, v15, v10}, Lcom/jcraft/jsch/jzlib/Deflate;->o([BII)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v2, v15}, Lcom/jcraft/jsch/jzlib/Deflate;->n(B)V

    .line 208
    .line 209
    .line 210
    :cond_b
    iget-object v7, v7, Lcom/jcraft/jsch/jzlib/GZIPHeader;->d:[B

    .line 211
    .line 212
    if-eqz v7, :cond_c

    .line 213
    .line 214
    array-length v9, v7

    .line 215
    invoke-virtual {v2, v7, v15, v9}, Lcom/jcraft/jsch/jzlib/Deflate;->o([BII)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v2, v15}, Lcom/jcraft/jsch/jzlib/Deflate;->n(B)V

    .line 219
    .line 220
    .line 221
    :cond_c
    iput v12, v2, Lcom/jcraft/jsch/jzlib/Deflate;->b:I

    .line 222
    .line 223
    iget-object v7, v4, Lcom/jcraft/jsch/jzlib/ZStream;->l:Lcom/jcraft/jsch/jzlib/Checksum;

    .line 224
    .line 225
    invoke-interface {v7}, Lcom/jcraft/jsch/jzlib/Checksum;->reset()V

    .line 226
    .line 227
    .line 228
    goto :goto_3

    .line 229
    :cond_d
    iget v7, v2, Lcom/jcraft/jsch/jzlib/Deflate;->r:I

    .line 230
    .line 231
    sub-int/2addr v7, v14

    .line 232
    shl-int/2addr v7, v6

    .line 233
    add-int/2addr v7, v14

    .line 234
    shl-int/2addr v7, v14

    .line 235
    iget v9, v2, Lcom/jcraft/jsch/jzlib/Deflate;->W:I

    .line 236
    .line 237
    sub-int/2addr v9, v5

    .line 238
    and-int/lit16 v9, v9, 0xff

    .line 239
    .line 240
    shr-int/2addr v9, v5

    .line 241
    if-le v9, v13, :cond_e

    .line 242
    .line 243
    move v9, v13

    .line 244
    :cond_e
    shl-int/lit8 v9, v9, 0x6

    .line 245
    .line 246
    or-int/2addr v7, v9

    .line 247
    iget v9, v2, Lcom/jcraft/jsch/jzlib/Deflate;->Q:I

    .line 248
    .line 249
    if-eqz v9, :cond_f

    .line 250
    .line 251
    or-int/lit8 v7, v7, 0x20

    .line 252
    .line 253
    :cond_f
    rem-int/lit8 v9, v7, 0x1f

    .line 254
    .line 255
    rsub-int/lit8 v9, v9, 0x1f

    .line 256
    .line 257
    add-int/2addr v9, v7

    .line 258
    iput v12, v2, Lcom/jcraft/jsch/jzlib/Deflate;->b:I

    .line 259
    .line 260
    invoke-virtual {v2, v9}, Lcom/jcraft/jsch/jzlib/Deflate;->m(I)V

    .line 261
    .line 262
    .line 263
    iget v7, v2, Lcom/jcraft/jsch/jzlib/Deflate;->Q:I

    .line 264
    .line 265
    if-eqz v7, :cond_10

    .line 266
    .line 267
    iget-object v7, v4, Lcom/jcraft/jsch/jzlib/ZStream;->l:Lcom/jcraft/jsch/jzlib/Checksum;

    .line 268
    .line 269
    invoke-interface {v7}, Lcom/jcraft/jsch/jzlib/Checksum;->getValue()J

    .line 270
    .line 271
    .line 272
    move-result-wide v9

    .line 273
    ushr-long v11, v9, v20

    .line 274
    .line 275
    long-to-int v7, v11

    .line 276
    invoke-virtual {v2, v7}, Lcom/jcraft/jsch/jzlib/Deflate;->m(I)V

    .line 277
    .line 278
    .line 279
    and-long v9, v9, v16

    .line 280
    .line 281
    long-to-int v7, v9

    .line 282
    invoke-virtual {v2, v7}, Lcom/jcraft/jsch/jzlib/Deflate;->m(I)V

    .line 283
    .line 284
    .line 285
    :cond_10
    iget-object v7, v4, Lcom/jcraft/jsch/jzlib/ZStream;->l:Lcom/jcraft/jsch/jzlib/Checksum;

    .line 286
    .line 287
    invoke-interface {v7}, Lcom/jcraft/jsch/jzlib/Checksum;->reset()V

    .line 288
    .line 289
    .line 290
    :cond_11
    :goto_3
    iget v7, v2, Lcom/jcraft/jsch/jzlib/Deflate;->f:I

    .line 291
    .line 292
    const/4 v9, -0x1

    .line 293
    if-eqz v7, :cond_13

    .line 294
    .line 295
    invoke-virtual {v4}, Lcom/jcraft/jsch/jzlib/ZStream;->a()V

    .line 296
    .line 297
    .line 298
    iget v3, v4, Lcom/jcraft/jsch/jzlib/ZStream;->g:I

    .line 299
    .line 300
    if-nez v3, :cond_14

    .line 301
    .line 302
    iput v9, v2, Lcom/jcraft/jsch/jzlib/Deflate;->p:I

    .line 303
    .line 304
    :cond_12
    :goto_4
    move v3, v15

    .line 305
    goto/16 :goto_1f

    .line 306
    .line 307
    :cond_13
    iget v7, v4, Lcom/jcraft/jsch/jzlib/ZStream;->c:I

    .line 308
    .line 309
    if-nez v7, :cond_14

    .line 310
    .line 311
    if-gt v1, v3, :cond_14

    .line 312
    .line 313
    if-eq v1, v6, :cond_14

    .line 314
    .line 315
    aget-object v1, v8, v21

    .line 316
    .line 317
    iput-object v1, v4, Lcom/jcraft/jsch/jzlib/ZStream;->i:Ljava/lang/String;

    .line 318
    .line 319
    goto/16 :goto_0

    .line 320
    .line 321
    :cond_14
    iget v3, v2, Lcom/jcraft/jsch/jzlib/Deflate;->b:I

    .line 322
    .line 323
    const/16 v7, 0x29a

    .line 324
    .line 325
    if-ne v3, v7, :cond_15

    .line 326
    .line 327
    iget v7, v4, Lcom/jcraft/jsch/jzlib/ZStream;->c:I

    .line 328
    .line 329
    if-eqz v7, :cond_15

    .line 330
    .line 331
    aget-object v1, v8, v21

    .line 332
    .line 333
    iput-object v1, v4, Lcom/jcraft/jsch/jzlib/ZStream;->i:Ljava/lang/String;

    .line 334
    .line 335
    goto/16 :goto_0

    .line 336
    .line 337
    :cond_15
    iget v7, v4, Lcom/jcraft/jsch/jzlib/ZStream;->c:I

    .line 338
    .line 339
    if-nez v7, :cond_16

    .line 340
    .line 341
    iget v7, v2, Lcom/jcraft/jsch/jzlib/Deflate;->S:I

    .line 342
    .line 343
    if-nez v7, :cond_16

    .line 344
    .line 345
    if-eqz v1, :cond_44

    .line 346
    .line 347
    const/16 v7, 0x29a

    .line 348
    .line 349
    if-eq v3, v7, :cond_44

    .line 350
    .line 351
    :cond_16
    sget-object v3, Lcom/jcraft/jsch/jzlib/Deflate;->w0:[Lcom/jcraft/jsch/jzlib/Deflate$Config;

    .line 352
    .line 353
    iget v7, v2, Lcom/jcraft/jsch/jzlib/Deflate;->W:I

    .line 354
    .line 355
    aget-object v3, v3, v7

    .line 356
    .line 357
    iget v3, v3, Lcom/jcraft/jsch/jzlib/Deflate$Config;->e:I

    .line 358
    .line 359
    const/4 v7, 0x5

    .line 360
    const/16 v10, 0x106

    .line 361
    .line 362
    const v8, 0xffff

    .line 363
    .line 364
    .line 365
    if-eqz v3, :cond_34

    .line 366
    .line 367
    if-eq v3, v5, :cond_27

    .line 368
    .line 369
    const/4 v11, 0x2

    .line 370
    if-eq v3, v11, :cond_17

    .line 371
    .line 372
    move v3, v9

    .line 373
    goto/16 :goto_17

    .line 374
    .line 375
    :cond_17
    move v3, v15

    .line 376
    :goto_5
    iget v11, v2, Lcom/jcraft/jsch/jzlib/Deflate;->S:I

    .line 377
    .line 378
    if-ge v11, v10, :cond_1e

    .line 379
    .line 380
    invoke-virtual {v2}, Lcom/jcraft/jsch/jzlib/Deflate;->f()V

    .line 381
    .line 382
    .line 383
    iget v11, v2, Lcom/jcraft/jsch/jzlib/Deflate;->S:I

    .line 384
    .line 385
    if-ge v11, v10, :cond_19

    .line 386
    .line 387
    if-nez v1, :cond_19

    .line 388
    .line 389
    :cond_18
    :goto_6
    move v13, v15

    .line 390
    goto/16 :goto_b

    .line 391
    .line 392
    :cond_19
    if-nez v11, :cond_1e

    .line 393
    .line 394
    iget v3, v2, Lcom/jcraft/jsch/jzlib/Deflate;->P:I

    .line 395
    .line 396
    if-eqz v3, :cond_1a

    .line 397
    .line 398
    iget-object v3, v2, Lcom/jcraft/jsch/jzlib/Deflate;->x:[B

    .line 399
    .line 400
    iget v7, v2, Lcom/jcraft/jsch/jzlib/Deflate;->Q:I

    .line 401
    .line 402
    sub-int/2addr v7, v5

    .line 403
    aget-byte v3, v3, v7

    .line 404
    .line 405
    and-int/lit16 v3, v3, 0xff

    .line 406
    .line 407
    invoke-virtual {v2, v15, v3}, Lcom/jcraft/jsch/jzlib/Deflate;->a(II)Z

    .line 408
    .line 409
    .line 410
    iput v15, v2, Lcom/jcraft/jsch/jzlib/Deflate;->P:I

    .line 411
    .line 412
    :cond_1a
    if-ne v1, v6, :cond_1b

    .line 413
    .line 414
    move v3, v5

    .line 415
    goto :goto_7

    .line 416
    :cond_1b
    move v3, v15

    .line 417
    :goto_7
    invoke-virtual {v2, v3}, Lcom/jcraft/jsch/jzlib/Deflate;->h(Z)V

    .line 418
    .line 419
    .line 420
    iget v3, v4, Lcom/jcraft/jsch/jzlib/ZStream;->g:I

    .line 421
    .line 422
    if-nez v3, :cond_1c

    .line 423
    .line 424
    if-ne v1, v6, :cond_18

    .line 425
    .line 426
    const/4 v13, 0x2

    .line 427
    goto/16 :goto_b

    .line 428
    .line 429
    :cond_1c
    if-ne v1, v6, :cond_1d

    .line 430
    .line 431
    goto/16 :goto_b

    .line 432
    .line 433
    :cond_1d
    move v13, v5

    .line 434
    goto/16 :goto_b

    .line 435
    .line 436
    :cond_1e
    iget v11, v2, Lcom/jcraft/jsch/jzlib/Deflate;->S:I

    .line 437
    .line 438
    if-lt v11, v13, :cond_1f

    .line 439
    .line 440
    iget v3, v2, Lcom/jcraft/jsch/jzlib/Deflate;->I:I

    .line 441
    .line 442
    iget v11, v2, Lcom/jcraft/jsch/jzlib/Deflate;->L:I

    .line 443
    .line 444
    shl-int/2addr v3, v11

    .line 445
    iget-object v11, v2, Lcom/jcraft/jsch/jzlib/Deflate;->x:[B

    .line 446
    .line 447
    iget v12, v2, Lcom/jcraft/jsch/jzlib/Deflate;->Q:I

    .line 448
    .line 449
    add-int/lit8 v18, v12, 0x2

    .line 450
    .line 451
    aget-byte v11, v11, v18

    .line 452
    .line 453
    and-int/lit16 v11, v11, 0xff

    .line 454
    .line 455
    xor-int/2addr v3, v11

    .line 456
    iget v11, v2, Lcom/jcraft/jsch/jzlib/Deflate;->K:I

    .line 457
    .line 458
    and-int/2addr v3, v11

    .line 459
    iput v3, v2, Lcom/jcraft/jsch/jzlib/Deflate;->I:I

    .line 460
    .line 461
    iget-object v11, v2, Lcom/jcraft/jsch/jzlib/Deflate;->H:[S

    .line 462
    .line 463
    aget-short v18, v11, v3

    .line 464
    .line 465
    and-int v23, v18, v8

    .line 466
    .line 467
    iget-object v9, v2, Lcom/jcraft/jsch/jzlib/Deflate;->G:[S

    .line 468
    .line 469
    iget v14, v2, Lcom/jcraft/jsch/jzlib/Deflate;->t:I

    .line 470
    .line 471
    and-int/2addr v14, v12

    .line 472
    aput-short v18, v9, v14

    .line 473
    .line 474
    int-to-short v9, v12

    .line 475
    aput-short v9, v11, v3

    .line 476
    .line 477
    move/from16 v3, v23

    .line 478
    .line 479
    :cond_1f
    iget v9, v2, Lcom/jcraft/jsch/jzlib/Deflate;->N:I

    .line 480
    .line 481
    iput v9, v2, Lcom/jcraft/jsch/jzlib/Deflate;->T:I

    .line 482
    .line 483
    iget v11, v2, Lcom/jcraft/jsch/jzlib/Deflate;->R:I

    .line 484
    .line 485
    iput v11, v2, Lcom/jcraft/jsch/jzlib/Deflate;->O:I

    .line 486
    .line 487
    const/4 v11, 0x2

    .line 488
    iput v11, v2, Lcom/jcraft/jsch/jzlib/Deflate;->N:I

    .line 489
    .line 490
    if-eqz v3, :cond_20

    .line 491
    .line 492
    iget v11, v2, Lcom/jcraft/jsch/jzlib/Deflate;->V:I

    .line 493
    .line 494
    if-ge v9, v11, :cond_20

    .line 495
    .line 496
    iget v9, v2, Lcom/jcraft/jsch/jzlib/Deflate;->Q:I

    .line 497
    .line 498
    sub-int/2addr v9, v3

    .line 499
    and-int/2addr v9, v8

    .line 500
    iget v11, v2, Lcom/jcraft/jsch/jzlib/Deflate;->q:I

    .line 501
    .line 502
    sub-int/2addr v11, v10

    .line 503
    if-gt v9, v11, :cond_20

    .line 504
    .line 505
    invoke-virtual {v2, v3}, Lcom/jcraft/jsch/jzlib/Deflate;->k(I)I

    .line 506
    .line 507
    .line 508
    move-result v9

    .line 509
    iput v9, v2, Lcom/jcraft/jsch/jzlib/Deflate;->N:I

    .line 510
    .line 511
    if-gt v9, v7, :cond_20

    .line 512
    .line 513
    if-ne v9, v13, :cond_20

    .line 514
    .line 515
    iget v9, v2, Lcom/jcraft/jsch/jzlib/Deflate;->Q:I

    .line 516
    .line 517
    iget v11, v2, Lcom/jcraft/jsch/jzlib/Deflate;->R:I

    .line 518
    .line 519
    sub-int/2addr v9, v11

    .line 520
    const/16 v11, 0x1000

    .line 521
    .line 522
    if-le v9, v11, :cond_20

    .line 523
    .line 524
    const/4 v11, 0x2

    .line 525
    iput v11, v2, Lcom/jcraft/jsch/jzlib/Deflate;->N:I

    .line 526
    .line 527
    :cond_20
    iget v9, v2, Lcom/jcraft/jsch/jzlib/Deflate;->T:I

    .line 528
    .line 529
    if-lt v9, v13, :cond_24

    .line 530
    .line 531
    iget v11, v2, Lcom/jcraft/jsch/jzlib/Deflate;->N:I

    .line 532
    .line 533
    if-gt v11, v9, :cond_24

    .line 534
    .line 535
    iget v11, v2, Lcom/jcraft/jsch/jzlib/Deflate;->Q:I

    .line 536
    .line 537
    iget v12, v2, Lcom/jcraft/jsch/jzlib/Deflate;->S:I

    .line 538
    .line 539
    add-int/2addr v12, v11

    .line 540
    sub-int/2addr v12, v13

    .line 541
    sub-int/2addr v11, v5

    .line 542
    iget v14, v2, Lcom/jcraft/jsch/jzlib/Deflate;->O:I

    .line 543
    .line 544
    sub-int/2addr v11, v14

    .line 545
    add-int/lit8 v9, v9, -0x3

    .line 546
    .line 547
    invoke-virtual {v2, v11, v9}, Lcom/jcraft/jsch/jzlib/Deflate;->a(II)Z

    .line 548
    .line 549
    .line 550
    move-result v9

    .line 551
    iget v11, v2, Lcom/jcraft/jsch/jzlib/Deflate;->S:I

    .line 552
    .line 553
    iget v14, v2, Lcom/jcraft/jsch/jzlib/Deflate;->T:I

    .line 554
    .line 555
    add-int/lit8 v18, v14, -0x1

    .line 556
    .line 557
    sub-int v11, v11, v18

    .line 558
    .line 559
    iput v11, v2, Lcom/jcraft/jsch/jzlib/Deflate;->S:I

    .line 560
    .line 561
    const/16 v22, 0x2

    .line 562
    .line 563
    add-int/lit8 v14, v14, -0x2

    .line 564
    .line 565
    iput v14, v2, Lcom/jcraft/jsch/jzlib/Deflate;->T:I

    .line 566
    .line 567
    :goto_8
    iget v11, v2, Lcom/jcraft/jsch/jzlib/Deflate;->Q:I

    .line 568
    .line 569
    add-int/lit8 v14, v11, 0x1

    .line 570
    .line 571
    iput v14, v2, Lcom/jcraft/jsch/jzlib/Deflate;->Q:I

    .line 572
    .line 573
    if-gt v14, v12, :cond_21

    .line 574
    .line 575
    iget v3, v2, Lcom/jcraft/jsch/jzlib/Deflate;->I:I

    .line 576
    .line 577
    move/from16 v18, v7

    .line 578
    .line 579
    iget v7, v2, Lcom/jcraft/jsch/jzlib/Deflate;->L:I

    .line 580
    .line 581
    shl-int/2addr v3, v7

    .line 582
    iget-object v7, v2, Lcom/jcraft/jsch/jzlib/Deflate;->x:[B

    .line 583
    .line 584
    add-int/lit8 v23, v11, 0x3

    .line 585
    .line 586
    aget-byte v7, v7, v23

    .line 587
    .line 588
    and-int/lit16 v7, v7, 0xff

    .line 589
    .line 590
    xor-int/2addr v3, v7

    .line 591
    iget v7, v2, Lcom/jcraft/jsch/jzlib/Deflate;->K:I

    .line 592
    .line 593
    and-int/2addr v3, v7

    .line 594
    iput v3, v2, Lcom/jcraft/jsch/jzlib/Deflate;->I:I

    .line 595
    .line 596
    iget-object v7, v2, Lcom/jcraft/jsch/jzlib/Deflate;->H:[S

    .line 597
    .line 598
    aget-short v23, v7, v3

    .line 599
    .line 600
    and-int v25, v23, v8

    .line 601
    .line 602
    move/from16 v26, v8

    .line 603
    .line 604
    iget-object v8, v2, Lcom/jcraft/jsch/jzlib/Deflate;->G:[S

    .line 605
    .line 606
    iget v13, v2, Lcom/jcraft/jsch/jzlib/Deflate;->t:I

    .line 607
    .line 608
    and-int/2addr v13, v14

    .line 609
    aput-short v23, v8, v13

    .line 610
    .line 611
    int-to-short v8, v14

    .line 612
    aput-short v8, v7, v3

    .line 613
    .line 614
    move/from16 v3, v25

    .line 615
    .line 616
    goto :goto_9

    .line 617
    :cond_21
    move/from16 v18, v7

    .line 618
    .line 619
    move/from16 v26, v8

    .line 620
    .line 621
    :goto_9
    iget v7, v2, Lcom/jcraft/jsch/jzlib/Deflate;->T:I

    .line 622
    .line 623
    sub-int/2addr v7, v5

    .line 624
    iput v7, v2, Lcom/jcraft/jsch/jzlib/Deflate;->T:I

    .line 625
    .line 626
    if-nez v7, :cond_23

    .line 627
    .line 628
    iput v15, v2, Lcom/jcraft/jsch/jzlib/Deflate;->P:I

    .line 629
    .line 630
    const/4 v7, 0x2

    .line 631
    iput v7, v2, Lcom/jcraft/jsch/jzlib/Deflate;->N:I

    .line 632
    .line 633
    add-int/lit8 v11, v11, 0x2

    .line 634
    .line 635
    iput v11, v2, Lcom/jcraft/jsch/jzlib/Deflate;->Q:I

    .line 636
    .line 637
    if-eqz v9, :cond_22

    .line 638
    .line 639
    invoke-virtual {v2, v15}, Lcom/jcraft/jsch/jzlib/Deflate;->h(Z)V

    .line 640
    .line 641
    .line 642
    iget v7, v4, Lcom/jcraft/jsch/jzlib/ZStream;->g:I

    .line 643
    .line 644
    if-nez v7, :cond_22

    .line 645
    .line 646
    goto/16 :goto_6

    .line 647
    .line 648
    :cond_22
    :goto_a
    move/from16 v7, v18

    .line 649
    .line 650
    move/from16 v8, v26

    .line 651
    .line 652
    const/4 v9, -0x1

    .line 653
    const/4 v13, 0x3

    .line 654
    const/16 v14, 0x8

    .line 655
    .line 656
    goto/16 :goto_5

    .line 657
    .line 658
    :cond_23
    move/from16 v7, v18

    .line 659
    .line 660
    move/from16 v8, v26

    .line 661
    .line 662
    const/4 v13, 0x3

    .line 663
    goto :goto_8

    .line 664
    :cond_24
    move/from16 v18, v7

    .line 665
    .line 666
    move/from16 v26, v8

    .line 667
    .line 668
    iget v7, v2, Lcom/jcraft/jsch/jzlib/Deflate;->P:I

    .line 669
    .line 670
    if-eqz v7, :cond_26

    .line 671
    .line 672
    iget-object v7, v2, Lcom/jcraft/jsch/jzlib/Deflate;->x:[B

    .line 673
    .line 674
    iget v8, v2, Lcom/jcraft/jsch/jzlib/Deflate;->Q:I

    .line 675
    .line 676
    sub-int/2addr v8, v5

    .line 677
    aget-byte v7, v7, v8

    .line 678
    .line 679
    and-int/lit16 v7, v7, 0xff

    .line 680
    .line 681
    invoke-virtual {v2, v15, v7}, Lcom/jcraft/jsch/jzlib/Deflate;->a(II)Z

    .line 682
    .line 683
    .line 684
    move-result v7

    .line 685
    if-eqz v7, :cond_25

    .line 686
    .line 687
    invoke-virtual {v2, v15}, Lcom/jcraft/jsch/jzlib/Deflate;->h(Z)V

    .line 688
    .line 689
    .line 690
    :cond_25
    iget v7, v2, Lcom/jcraft/jsch/jzlib/Deflate;->Q:I

    .line 691
    .line 692
    add-int/2addr v7, v5

    .line 693
    iput v7, v2, Lcom/jcraft/jsch/jzlib/Deflate;->Q:I

    .line 694
    .line 695
    iget v7, v2, Lcom/jcraft/jsch/jzlib/Deflate;->S:I

    .line 696
    .line 697
    sub-int/2addr v7, v5

    .line 698
    iput v7, v2, Lcom/jcraft/jsch/jzlib/Deflate;->S:I

    .line 699
    .line 700
    iget v7, v4, Lcom/jcraft/jsch/jzlib/ZStream;->g:I

    .line 701
    .line 702
    if-nez v7, :cond_22

    .line 703
    .line 704
    goto/16 :goto_6

    .line 705
    .line 706
    :goto_b
    move v3, v13

    .line 707
    :goto_c
    const/4 v11, 0x2

    .line 708
    goto/16 :goto_17

    .line 709
    .line 710
    :cond_26
    iput v5, v2, Lcom/jcraft/jsch/jzlib/Deflate;->P:I

    .line 711
    .line 712
    iget v7, v2, Lcom/jcraft/jsch/jzlib/Deflate;->Q:I

    .line 713
    .line 714
    add-int/2addr v7, v5

    .line 715
    iput v7, v2, Lcom/jcraft/jsch/jzlib/Deflate;->Q:I

    .line 716
    .line 717
    iget v7, v2, Lcom/jcraft/jsch/jzlib/Deflate;->S:I

    .line 718
    .line 719
    sub-int/2addr v7, v5

    .line 720
    iput v7, v2, Lcom/jcraft/jsch/jzlib/Deflate;->S:I

    .line 721
    .line 722
    goto :goto_a

    .line 723
    :cond_27
    move/from16 v26, v8

    .line 724
    .line 725
    move v3, v15

    .line 726
    :goto_d
    iget v7, v2, Lcom/jcraft/jsch/jzlib/Deflate;->S:I

    .line 727
    .line 728
    if-ge v7, v10, :cond_2d

    .line 729
    .line 730
    invoke-virtual {v2}, Lcom/jcraft/jsch/jzlib/Deflate;->f()V

    .line 731
    .line 732
    .line 733
    iget v7, v2, Lcom/jcraft/jsch/jzlib/Deflate;->S:I

    .line 734
    .line 735
    if-ge v7, v10, :cond_29

    .line 736
    .line 737
    if-nez v1, :cond_29

    .line 738
    .line 739
    :cond_28
    :goto_e
    move v3, v15

    .line 740
    goto :goto_c

    .line 741
    :cond_29
    if-nez v7, :cond_2d

    .line 742
    .line 743
    if-ne v1, v6, :cond_2a

    .line 744
    .line 745
    move v3, v5

    .line 746
    goto :goto_f

    .line 747
    :cond_2a
    move v3, v15

    .line 748
    :goto_f
    invoke-virtual {v2, v3}, Lcom/jcraft/jsch/jzlib/Deflate;->h(Z)V

    .line 749
    .line 750
    .line 751
    iget v3, v4, Lcom/jcraft/jsch/jzlib/ZStream;->g:I

    .line 752
    .line 753
    if-nez v3, :cond_2b

    .line 754
    .line 755
    if-ne v1, v6, :cond_28

    .line 756
    .line 757
    :goto_10
    const/4 v3, 0x2

    .line 758
    goto :goto_c

    .line 759
    :cond_2b
    if-ne v1, v6, :cond_2c

    .line 760
    .line 761
    :goto_11
    const/4 v3, 0x3

    .line 762
    goto :goto_c

    .line 763
    :cond_2c
    move v3, v5

    .line 764
    goto :goto_c

    .line 765
    :cond_2d
    iget v7, v2, Lcom/jcraft/jsch/jzlib/Deflate;->S:I

    .line 766
    .line 767
    const/4 v8, 0x3

    .line 768
    if-lt v7, v8, :cond_2e

    .line 769
    .line 770
    iget v3, v2, Lcom/jcraft/jsch/jzlib/Deflate;->I:I

    .line 771
    .line 772
    iget v7, v2, Lcom/jcraft/jsch/jzlib/Deflate;->L:I

    .line 773
    .line 774
    shl-int/2addr v3, v7

    .line 775
    iget-object v7, v2, Lcom/jcraft/jsch/jzlib/Deflate;->x:[B

    .line 776
    .line 777
    iget v8, v2, Lcom/jcraft/jsch/jzlib/Deflate;->Q:I

    .line 778
    .line 779
    add-int/lit8 v9, v8, 0x2

    .line 780
    .line 781
    aget-byte v7, v7, v9

    .line 782
    .line 783
    and-int/lit16 v7, v7, 0xff

    .line 784
    .line 785
    xor-int/2addr v3, v7

    .line 786
    iget v7, v2, Lcom/jcraft/jsch/jzlib/Deflate;->K:I

    .line 787
    .line 788
    and-int/2addr v3, v7

    .line 789
    iput v3, v2, Lcom/jcraft/jsch/jzlib/Deflate;->I:I

    .line 790
    .line 791
    iget-object v7, v2, Lcom/jcraft/jsch/jzlib/Deflate;->H:[S

    .line 792
    .line 793
    aget-short v9, v7, v3

    .line 794
    .line 795
    and-int v11, v9, v26

    .line 796
    .line 797
    iget-object v12, v2, Lcom/jcraft/jsch/jzlib/Deflate;->G:[S

    .line 798
    .line 799
    iget v13, v2, Lcom/jcraft/jsch/jzlib/Deflate;->t:I

    .line 800
    .line 801
    and-int/2addr v13, v8

    .line 802
    aput-short v9, v12, v13

    .line 803
    .line 804
    int-to-short v8, v8

    .line 805
    aput-short v8, v7, v3

    .line 806
    .line 807
    move v3, v11

    .line 808
    :cond_2e
    int-to-long v7, v3

    .line 809
    const-wide/16 v11, 0x0

    .line 810
    .line 811
    cmp-long v7, v7, v11

    .line 812
    .line 813
    if-eqz v7, :cond_2f

    .line 814
    .line 815
    iget v7, v2, Lcom/jcraft/jsch/jzlib/Deflate;->Q:I

    .line 816
    .line 817
    sub-int/2addr v7, v3

    .line 818
    and-int v7, v7, v26

    .line 819
    .line 820
    iget v8, v2, Lcom/jcraft/jsch/jzlib/Deflate;->q:I

    .line 821
    .line 822
    sub-int/2addr v8, v10

    .line 823
    if-gt v7, v8, :cond_2f

    .line 824
    .line 825
    invoke-virtual {v2, v3}, Lcom/jcraft/jsch/jzlib/Deflate;->k(I)I

    .line 826
    .line 827
    .line 828
    move-result v7

    .line 829
    iput v7, v2, Lcom/jcraft/jsch/jzlib/Deflate;->N:I

    .line 830
    .line 831
    :cond_2f
    iget v7, v2, Lcom/jcraft/jsch/jzlib/Deflate;->N:I

    .line 832
    .line 833
    const/4 v8, 0x3

    .line 834
    if-lt v7, v8, :cond_32

    .line 835
    .line 836
    iget v8, v2, Lcom/jcraft/jsch/jzlib/Deflate;->Q:I

    .line 837
    .line 838
    iget v9, v2, Lcom/jcraft/jsch/jzlib/Deflate;->R:I

    .line 839
    .line 840
    sub-int/2addr v8, v9

    .line 841
    add-int/lit8 v7, v7, -0x3

    .line 842
    .line 843
    invoke-virtual {v2, v8, v7}, Lcom/jcraft/jsch/jzlib/Deflate;->a(II)Z

    .line 844
    .line 845
    .line 846
    move-result v7

    .line 847
    iget v8, v2, Lcom/jcraft/jsch/jzlib/Deflate;->S:I

    .line 848
    .line 849
    iget v9, v2, Lcom/jcraft/jsch/jzlib/Deflate;->N:I

    .line 850
    .line 851
    sub-int/2addr v8, v9

    .line 852
    iput v8, v2, Lcom/jcraft/jsch/jzlib/Deflate;->S:I

    .line 853
    .line 854
    iget v11, v2, Lcom/jcraft/jsch/jzlib/Deflate;->V:I

    .line 855
    .line 856
    if-gt v9, v11, :cond_31

    .line 857
    .line 858
    const/4 v11, 0x3

    .line 859
    if-lt v8, v11, :cond_31

    .line 860
    .line 861
    add-int/lit8 v9, v9, -0x1

    .line 862
    .line 863
    iput v9, v2, Lcom/jcraft/jsch/jzlib/Deflate;->N:I

    .line 864
    .line 865
    :goto_12
    iget v3, v2, Lcom/jcraft/jsch/jzlib/Deflate;->Q:I

    .line 866
    .line 867
    add-int/lit8 v8, v3, 0x1

    .line 868
    .line 869
    iput v8, v2, Lcom/jcraft/jsch/jzlib/Deflate;->Q:I

    .line 870
    .line 871
    iget v9, v2, Lcom/jcraft/jsch/jzlib/Deflate;->I:I

    .line 872
    .line 873
    iget v11, v2, Lcom/jcraft/jsch/jzlib/Deflate;->L:I

    .line 874
    .line 875
    shl-int/2addr v9, v11

    .line 876
    iget-object v11, v2, Lcom/jcraft/jsch/jzlib/Deflate;->x:[B

    .line 877
    .line 878
    add-int/lit8 v12, v3, 0x3

    .line 879
    .line 880
    aget-byte v11, v11, v12

    .line 881
    .line 882
    and-int/lit16 v11, v11, 0xff

    .line 883
    .line 884
    xor-int/2addr v9, v11

    .line 885
    iget v11, v2, Lcom/jcraft/jsch/jzlib/Deflate;->K:I

    .line 886
    .line 887
    and-int/2addr v9, v11

    .line 888
    iput v9, v2, Lcom/jcraft/jsch/jzlib/Deflate;->I:I

    .line 889
    .line 890
    iget-object v11, v2, Lcom/jcraft/jsch/jzlib/Deflate;->H:[S

    .line 891
    .line 892
    aget-short v12, v11, v9

    .line 893
    .line 894
    and-int v13, v12, v26

    .line 895
    .line 896
    iget-object v14, v2, Lcom/jcraft/jsch/jzlib/Deflate;->G:[S

    .line 897
    .line 898
    iget v10, v2, Lcom/jcraft/jsch/jzlib/Deflate;->t:I

    .line 899
    .line 900
    and-int/2addr v10, v8

    .line 901
    aput-short v12, v14, v10

    .line 902
    .line 903
    int-to-short v8, v8

    .line 904
    aput-short v8, v11, v9

    .line 905
    .line 906
    iget v8, v2, Lcom/jcraft/jsch/jzlib/Deflate;->N:I

    .line 907
    .line 908
    sub-int/2addr v8, v5

    .line 909
    iput v8, v2, Lcom/jcraft/jsch/jzlib/Deflate;->N:I

    .line 910
    .line 911
    if-nez v8, :cond_30

    .line 912
    .line 913
    add-int/lit8 v3, v3, 0x2

    .line 914
    .line 915
    iput v3, v2, Lcom/jcraft/jsch/jzlib/Deflate;->Q:I

    .line 916
    .line 917
    move v3, v13

    .line 918
    goto :goto_13

    .line 919
    :cond_30
    const/16 v10, 0x106

    .line 920
    .line 921
    goto :goto_12

    .line 922
    :cond_31
    iget v8, v2, Lcom/jcraft/jsch/jzlib/Deflate;->Q:I

    .line 923
    .line 924
    add-int/2addr v8, v9

    .line 925
    iput v8, v2, Lcom/jcraft/jsch/jzlib/Deflate;->Q:I

    .line 926
    .line 927
    iput v15, v2, Lcom/jcraft/jsch/jzlib/Deflate;->N:I

    .line 928
    .line 929
    iget-object v9, v2, Lcom/jcraft/jsch/jzlib/Deflate;->x:[B

    .line 930
    .line 931
    aget-byte v10, v9, v8

    .line 932
    .line 933
    and-int/lit16 v10, v10, 0xff

    .line 934
    .line 935
    iput v10, v2, Lcom/jcraft/jsch/jzlib/Deflate;->I:I

    .line 936
    .line 937
    iget v11, v2, Lcom/jcraft/jsch/jzlib/Deflate;->L:I

    .line 938
    .line 939
    shl-int/2addr v10, v11

    .line 940
    add-int/2addr v8, v5

    .line 941
    aget-byte v8, v9, v8

    .line 942
    .line 943
    and-int/lit16 v8, v8, 0xff

    .line 944
    .line 945
    xor-int/2addr v8, v10

    .line 946
    iget v9, v2, Lcom/jcraft/jsch/jzlib/Deflate;->K:I

    .line 947
    .line 948
    and-int/2addr v8, v9

    .line 949
    iput v8, v2, Lcom/jcraft/jsch/jzlib/Deflate;->I:I

    .line 950
    .line 951
    goto :goto_13

    .line 952
    :cond_32
    iget-object v7, v2, Lcom/jcraft/jsch/jzlib/Deflate;->x:[B

    .line 953
    .line 954
    iget v8, v2, Lcom/jcraft/jsch/jzlib/Deflate;->Q:I

    .line 955
    .line 956
    aget-byte v7, v7, v8

    .line 957
    .line 958
    and-int/lit16 v7, v7, 0xff

    .line 959
    .line 960
    invoke-virtual {v2, v15, v7}, Lcom/jcraft/jsch/jzlib/Deflate;->a(II)Z

    .line 961
    .line 962
    .line 963
    move-result v7

    .line 964
    iget v8, v2, Lcom/jcraft/jsch/jzlib/Deflate;->S:I

    .line 965
    .line 966
    sub-int/2addr v8, v5

    .line 967
    iput v8, v2, Lcom/jcraft/jsch/jzlib/Deflate;->S:I

    .line 968
    .line 969
    iget v8, v2, Lcom/jcraft/jsch/jzlib/Deflate;->Q:I

    .line 970
    .line 971
    add-int/2addr v8, v5

    .line 972
    iput v8, v2, Lcom/jcraft/jsch/jzlib/Deflate;->Q:I

    .line 973
    .line 974
    :goto_13
    if-eqz v7, :cond_33

    .line 975
    .line 976
    invoke-virtual {v2, v15}, Lcom/jcraft/jsch/jzlib/Deflate;->h(Z)V

    .line 977
    .line 978
    .line 979
    iget v7, v4, Lcom/jcraft/jsch/jzlib/ZStream;->g:I

    .line 980
    .line 981
    if-nez v7, :cond_33

    .line 982
    .line 983
    goto/16 :goto_e

    .line 984
    .line 985
    :cond_33
    const/16 v10, 0x106

    .line 986
    .line 987
    goto/16 :goto_d

    .line 988
    .line 989
    :cond_34
    move/from16 v18, v7

    .line 990
    .line 991
    move/from16 v26, v8

    .line 992
    .line 993
    iget v3, v2, Lcom/jcraft/jsch/jzlib/Deflate;->d:I

    .line 994
    .line 995
    add-int/lit8 v3, v3, -0x5

    .line 996
    .line 997
    move/from16 v7, v26

    .line 998
    .line 999
    if-le v7, v3, :cond_35

    .line 1000
    .line 1001
    move v8, v3

    .line 1002
    goto :goto_14

    .line 1003
    :cond_35
    move v8, v7

    .line 1004
    :goto_14
    iget v3, v2, Lcom/jcraft/jsch/jzlib/Deflate;->S:I

    .line 1005
    .line 1006
    if-gt v3, v5, :cond_39

    .line 1007
    .line 1008
    invoke-virtual {v2}, Lcom/jcraft/jsch/jzlib/Deflate;->f()V

    .line 1009
    .line 1010
    .line 1011
    iget v3, v2, Lcom/jcraft/jsch/jzlib/Deflate;->S:I

    .line 1012
    .line 1013
    if-nez v3, :cond_36

    .line 1014
    .line 1015
    if-nez v1, :cond_36

    .line 1016
    .line 1017
    :goto_15
    goto/16 :goto_e

    .line 1018
    .line 1019
    :cond_36
    if-nez v3, :cond_39

    .line 1020
    .line 1021
    if-ne v1, v6, :cond_37

    .line 1022
    .line 1023
    move v3, v5

    .line 1024
    goto :goto_16

    .line 1025
    :cond_37
    move v3, v15

    .line 1026
    :goto_16
    invoke-virtual {v2, v3}, Lcom/jcraft/jsch/jzlib/Deflate;->h(Z)V

    .line 1027
    .line 1028
    .line 1029
    iget v3, v4, Lcom/jcraft/jsch/jzlib/ZStream;->g:I

    .line 1030
    .line 1031
    if-nez v3, :cond_38

    .line 1032
    .line 1033
    if-ne v1, v6, :cond_28

    .line 1034
    .line 1035
    goto/16 :goto_10

    .line 1036
    .line 1037
    :cond_38
    if-ne v1, v6, :cond_2c

    .line 1038
    .line 1039
    goto/16 :goto_11

    .line 1040
    .line 1041
    :cond_39
    iget v3, v2, Lcom/jcraft/jsch/jzlib/Deflate;->Q:I

    .line 1042
    .line 1043
    iget v7, v2, Lcom/jcraft/jsch/jzlib/Deflate;->S:I

    .line 1044
    .line 1045
    add-int/2addr v3, v7

    .line 1046
    iput v3, v2, Lcom/jcraft/jsch/jzlib/Deflate;->Q:I

    .line 1047
    .line 1048
    iput v15, v2, Lcom/jcraft/jsch/jzlib/Deflate;->S:I

    .line 1049
    .line 1050
    iget v7, v2, Lcom/jcraft/jsch/jzlib/Deflate;->M:I

    .line 1051
    .line 1052
    add-int/2addr v7, v8

    .line 1053
    if-eqz v3, :cond_3a

    .line 1054
    .line 1055
    if-lt v3, v7, :cond_3b

    .line 1056
    .line 1057
    :cond_3a
    sub-int/2addr v3, v7

    .line 1058
    iput v3, v2, Lcom/jcraft/jsch/jzlib/Deflate;->S:I

    .line 1059
    .line 1060
    iput v7, v2, Lcom/jcraft/jsch/jzlib/Deflate;->Q:I

    .line 1061
    .line 1062
    invoke-virtual {v2, v15}, Lcom/jcraft/jsch/jzlib/Deflate;->h(Z)V

    .line 1063
    .line 1064
    .line 1065
    iget v3, v4, Lcom/jcraft/jsch/jzlib/ZStream;->g:I

    .line 1066
    .line 1067
    if-nez v3, :cond_3b

    .line 1068
    .line 1069
    goto :goto_15

    .line 1070
    :cond_3b
    iget v3, v2, Lcom/jcraft/jsch/jzlib/Deflate;->Q:I

    .line 1071
    .line 1072
    iget v7, v2, Lcom/jcraft/jsch/jzlib/Deflate;->M:I

    .line 1073
    .line 1074
    sub-int/2addr v3, v7

    .line 1075
    iget v7, v2, Lcom/jcraft/jsch/jzlib/Deflate;->q:I

    .line 1076
    .line 1077
    const/16 v9, 0x106

    .line 1078
    .line 1079
    sub-int/2addr v7, v9

    .line 1080
    if-lt v3, v7, :cond_4b

    .line 1081
    .line 1082
    invoke-virtual {v2, v15}, Lcom/jcraft/jsch/jzlib/Deflate;->h(Z)V

    .line 1083
    .line 1084
    .line 1085
    iget v3, v4, Lcom/jcraft/jsch/jzlib/ZStream;->g:I

    .line 1086
    .line 1087
    if-nez v3, :cond_4b

    .line 1088
    .line 1089
    goto :goto_15

    .line 1090
    :goto_17
    const/4 v8, 0x3

    .line 1091
    if-eq v3, v11, :cond_3c

    .line 1092
    .line 1093
    if-ne v3, v8, :cond_3d

    .line 1094
    .line 1095
    :cond_3c
    const/16 v7, 0x29a

    .line 1096
    .line 1097
    iput v7, v2, Lcom/jcraft/jsch/jzlib/Deflate;->b:I

    .line 1098
    .line 1099
    :cond_3d
    if-eqz v3, :cond_4a

    .line 1100
    .line 1101
    if-ne v3, v11, :cond_3e

    .line 1102
    .line 1103
    goto/16 :goto_1d

    .line 1104
    .line 1105
    :cond_3e
    if-ne v3, v5, :cond_44

    .line 1106
    .line 1107
    if-ne v1, v5, :cond_40

    .line 1108
    .line 1109
    invoke-virtual {v2, v11, v8}, Lcom/jcraft/jsch/jzlib/Deflate;->r(II)V

    .line 1110
    .line 1111
    .line 1112
    sget-object v3, Lcom/jcraft/jsch/jzlib/StaticTree;->f:[S

    .line 1113
    .line 1114
    const/16 v7, 0x100

    .line 1115
    .line 1116
    invoke-virtual {v2, v7, v3}, Lcom/jcraft/jsch/jzlib/Deflate;->s(I[S)V

    .line 1117
    .line 1118
    .line 1119
    invoke-virtual {v2}, Lcom/jcraft/jsch/jzlib/Deflate;->b()V

    .line 1120
    .line 1121
    .line 1122
    iget v9, v2, Lcom/jcraft/jsch/jzlib/Deflate;->s0:I

    .line 1123
    .line 1124
    add-int/lit8 v9, v9, 0xb

    .line 1125
    .line 1126
    iget v10, v2, Lcom/jcraft/jsch/jzlib/Deflate;->u0:I

    .line 1127
    .line 1128
    sub-int/2addr v9, v10

    .line 1129
    const/16 v10, 0x9

    .line 1130
    .line 1131
    if-ge v9, v10, :cond_3f

    .line 1132
    .line 1133
    invoke-virtual {v2, v11, v8}, Lcom/jcraft/jsch/jzlib/Deflate;->r(II)V

    .line 1134
    .line 1135
    .line 1136
    invoke-virtual {v2, v7, v3}, Lcom/jcraft/jsch/jzlib/Deflate;->s(I[S)V

    .line 1137
    .line 1138
    .line 1139
    invoke-virtual {v2}, Lcom/jcraft/jsch/jzlib/Deflate;->b()V

    .line 1140
    .line 1141
    .line 1142
    :cond_3f
    move/from16 v11, v21

    .line 1143
    .line 1144
    iput v11, v2, Lcom/jcraft/jsch/jzlib/Deflate;->s0:I

    .line 1145
    .line 1146
    goto :goto_1a

    .line 1147
    :cond_40
    invoke-virtual {v2, v15, v8}, Lcom/jcraft/jsch/jzlib/Deflate;->r(II)V

    .line 1148
    .line 1149
    .line 1150
    iget v3, v2, Lcom/jcraft/jsch/jzlib/Deflate;->u0:I

    .line 1151
    .line 1152
    const/16 v7, 0x8

    .line 1153
    .line 1154
    if-le v3, v7, :cond_41

    .line 1155
    .line 1156
    iget-short v3, v2, Lcom/jcraft/jsch/jzlib/Deflate;->t0:S

    .line 1157
    .line 1158
    invoke-virtual {v2, v3}, Lcom/jcraft/jsch/jzlib/Deflate;->p(I)V

    .line 1159
    .line 1160
    .line 1161
    goto :goto_18

    .line 1162
    :cond_41
    if-lez v3, :cond_42

    .line 1163
    .line 1164
    iget-short v3, v2, Lcom/jcraft/jsch/jzlib/Deflate;->t0:S

    .line 1165
    .line 1166
    int-to-byte v3, v3

    .line 1167
    invoke-virtual {v2, v3}, Lcom/jcraft/jsch/jzlib/Deflate;->n(B)V

    .line 1168
    .line 1169
    .line 1170
    :cond_42
    :goto_18
    iput-short v15, v2, Lcom/jcraft/jsch/jzlib/Deflate;->t0:S

    .line 1171
    .line 1172
    iput v15, v2, Lcom/jcraft/jsch/jzlib/Deflate;->u0:I

    .line 1173
    .line 1174
    const/16 v7, 0x8

    .line 1175
    .line 1176
    iput v7, v2, Lcom/jcraft/jsch/jzlib/Deflate;->s0:I

    .line 1177
    .line 1178
    invoke-virtual {v2, v15}, Lcom/jcraft/jsch/jzlib/Deflate;->p(I)V

    .line 1179
    .line 1180
    .line 1181
    const/4 v3, -0x1

    .line 1182
    invoke-virtual {v2, v3}, Lcom/jcraft/jsch/jzlib/Deflate;->p(I)V

    .line 1183
    .line 1184
    .line 1185
    iget-object v3, v2, Lcom/jcraft/jsch/jzlib/Deflate;->x:[B

    .line 1186
    .line 1187
    invoke-virtual {v2, v3, v15, v15}, Lcom/jcraft/jsch/jzlib/Deflate;->o([BII)V

    .line 1188
    .line 1189
    .line 1190
    const/4 v12, 0x3

    .line 1191
    if-ne v1, v12, :cond_43

    .line 1192
    .line 1193
    move v3, v15

    .line 1194
    :goto_19
    iget v7, v2, Lcom/jcraft/jsch/jzlib/Deflate;->J:I

    .line 1195
    .line 1196
    if-ge v3, v7, :cond_43

    .line 1197
    .line 1198
    iget-object v7, v2, Lcom/jcraft/jsch/jzlib/Deflate;->H:[S

    .line 1199
    .line 1200
    aput-short v15, v7, v3

    .line 1201
    .line 1202
    add-int/lit8 v3, v3, 0x1

    .line 1203
    .line 1204
    goto :goto_19

    .line 1205
    :cond_43
    :goto_1a
    invoke-virtual {v4}, Lcom/jcraft/jsch/jzlib/ZStream;->a()V

    .line 1206
    .line 1207
    .line 1208
    iget v3, v4, Lcom/jcraft/jsch/jzlib/ZStream;->g:I

    .line 1209
    .line 1210
    if-nez v3, :cond_44

    .line 1211
    .line 1212
    const/4 v3, -0x1

    .line 1213
    iput v3, v2, Lcom/jcraft/jsch/jzlib/Deflate;->p:I

    .line 1214
    .line 1215
    goto/16 :goto_4

    .line 1216
    .line 1217
    :cond_44
    if-eq v1, v6, :cond_45

    .line 1218
    .line 1219
    :goto_1b
    goto/16 :goto_4

    .line 1220
    .line 1221
    :cond_45
    iget v1, v2, Lcom/jcraft/jsch/jzlib/Deflate;->k:I

    .line 1222
    .line 1223
    if-gtz v1, :cond_47

    .line 1224
    .line 1225
    :cond_46
    move v3, v5

    .line 1226
    goto/16 :goto_1f

    .line 1227
    .line 1228
    :cond_47
    iget-object v3, v4, Lcom/jcraft/jsch/jzlib/ZStream;->l:Lcom/jcraft/jsch/jzlib/Checksum;

    .line 1229
    .line 1230
    const/4 v13, 0x2

    .line 1231
    if-ne v1, v13, :cond_48

    .line 1232
    .line 1233
    invoke-interface {v3}, Lcom/jcraft/jsch/jzlib/Checksum;->getValue()J

    .line 1234
    .line 1235
    .line 1236
    move-result-wide v6

    .line 1237
    const-wide/16 v8, 0xff

    .line 1238
    .line 1239
    and-long v10, v6, v8

    .line 1240
    .line 1241
    long-to-int v1, v10

    .line 1242
    int-to-byte v1, v1

    .line 1243
    invoke-virtual {v2, v1}, Lcom/jcraft/jsch/jzlib/Deflate;->n(B)V

    .line 1244
    .line 1245
    .line 1246
    const/16 v24, 0x8

    .line 1247
    .line 1248
    shr-long v10, v6, v24

    .line 1249
    .line 1250
    and-long/2addr v10, v8

    .line 1251
    long-to-int v1, v10

    .line 1252
    int-to-byte v1, v1

    .line 1253
    invoke-virtual {v2, v1}, Lcom/jcraft/jsch/jzlib/Deflate;->n(B)V

    .line 1254
    .line 1255
    .line 1256
    shr-long v10, v6, v20

    .line 1257
    .line 1258
    and-long/2addr v10, v8

    .line 1259
    long-to-int v1, v10

    .line 1260
    int-to-byte v1, v1

    .line 1261
    invoke-virtual {v2, v1}, Lcom/jcraft/jsch/jzlib/Deflate;->n(B)V

    .line 1262
    .line 1263
    .line 1264
    shr-long v6, v6, v19

    .line 1265
    .line 1266
    and-long/2addr v6, v8

    .line 1267
    long-to-int v1, v6

    .line 1268
    int-to-byte v1, v1

    .line 1269
    invoke-virtual {v2, v1}, Lcom/jcraft/jsch/jzlib/Deflate;->n(B)V

    .line 1270
    .line 1271
    .line 1272
    iget-wide v6, v4, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 1273
    .line 1274
    and-long/2addr v6, v8

    .line 1275
    long-to-int v1, v6

    .line 1276
    int-to-byte v1, v1

    .line 1277
    invoke-virtual {v2, v1}, Lcom/jcraft/jsch/jzlib/Deflate;->n(B)V

    .line 1278
    .line 1279
    .line 1280
    iget-wide v6, v4, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 1281
    .line 1282
    const/16 v24, 0x8

    .line 1283
    .line 1284
    shr-long v6, v6, v24

    .line 1285
    .line 1286
    and-long/2addr v6, v8

    .line 1287
    long-to-int v1, v6

    .line 1288
    int-to-byte v1, v1

    .line 1289
    invoke-virtual {v2, v1}, Lcom/jcraft/jsch/jzlib/Deflate;->n(B)V

    .line 1290
    .line 1291
    .line 1292
    iget-wide v6, v4, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 1293
    .line 1294
    shr-long v6, v6, v20

    .line 1295
    .line 1296
    and-long/2addr v6, v8

    .line 1297
    long-to-int v1, v6

    .line 1298
    int-to-byte v1, v1

    .line 1299
    invoke-virtual {v2, v1}, Lcom/jcraft/jsch/jzlib/Deflate;->n(B)V

    .line 1300
    .line 1301
    .line 1302
    iget-wide v6, v4, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 1303
    .line 1304
    shr-long v6, v6, v19

    .line 1305
    .line 1306
    and-long/2addr v6, v8

    .line 1307
    long-to-int v1, v6

    .line 1308
    int-to-byte v1, v1

    .line 1309
    invoke-virtual {v2, v1}, Lcom/jcraft/jsch/jzlib/Deflate;->n(B)V

    .line 1310
    .line 1311
    .line 1312
    invoke-virtual {v2}, Lcom/jcraft/jsch/jzlib/Deflate;->i()Lcom/jcraft/jsch/jzlib/GZIPHeader;

    .line 1313
    .line 1314
    .line 1315
    move-result-object v1

    .line 1316
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1317
    .line 1318
    .line 1319
    goto :goto_1c

    .line 1320
    :cond_48
    invoke-interface {v3}, Lcom/jcraft/jsch/jzlib/Checksum;->getValue()J

    .line 1321
    .line 1322
    .line 1323
    move-result-wide v6

    .line 1324
    ushr-long v8, v6, v20

    .line 1325
    .line 1326
    long-to-int v1, v8

    .line 1327
    invoke-virtual {v2, v1}, Lcom/jcraft/jsch/jzlib/Deflate;->m(I)V

    .line 1328
    .line 1329
    .line 1330
    and-long v6, v6, v16

    .line 1331
    .line 1332
    long-to-int v1, v6

    .line 1333
    invoke-virtual {v2, v1}, Lcom/jcraft/jsch/jzlib/Deflate;->m(I)V

    .line 1334
    .line 1335
    .line 1336
    :goto_1c
    invoke-virtual {v4}, Lcom/jcraft/jsch/jzlib/ZStream;->a()V

    .line 1337
    .line 1338
    .line 1339
    iget v1, v2, Lcom/jcraft/jsch/jzlib/Deflate;->k:I

    .line 1340
    .line 1341
    if-lez v1, :cond_49

    .line 1342
    .line 1343
    neg-int v1, v1

    .line 1344
    iput v1, v2, Lcom/jcraft/jsch/jzlib/Deflate;->k:I

    .line 1345
    .line 1346
    :cond_49
    iget v1, v2, Lcom/jcraft/jsch/jzlib/Deflate;->f:I

    .line 1347
    .line 1348
    if-eqz v1, :cond_46

    .line 1349
    .line 1350
    goto/16 :goto_1b

    .line 1351
    .line 1352
    :cond_4a
    :goto_1d
    iget v1, v4, Lcom/jcraft/jsch/jzlib/ZStream;->g:I

    .line 1353
    .line 1354
    if-nez v1, :cond_12

    .line 1355
    .line 1356
    const/4 v14, -0x1

    .line 1357
    iput v14, v2, Lcom/jcraft/jsch/jzlib/Deflate;->p:I

    .line 1358
    .line 1359
    goto/16 :goto_4

    .line 1360
    .line 1361
    :cond_4b
    move/from16 v11, v21

    .line 1362
    .line 1363
    const/16 v7, 0x29a

    .line 1364
    .line 1365
    const/16 v10, 0x9

    .line 1366
    .line 1367
    const/4 v12, 0x3

    .line 1368
    const/4 v13, 0x2

    .line 1369
    const/4 v14, -0x1

    .line 1370
    const/16 v24, 0x8

    .line 1371
    .line 1372
    move/from16 v21, v11

    .line 1373
    .line 1374
    goto/16 :goto_14

    .line 1375
    .line 1376
    :cond_4c
    :goto_1e
    aget-object v1, v8, v6

    .line 1377
    .line 1378
    iput-object v1, v4, Lcom/jcraft/jsch/jzlib/ZStream;->i:Ljava/lang/String;

    .line 1379
    .line 1380
    :cond_4d
    :goto_1f
    if-ne v3, v5, :cond_4e

    .line 1381
    .line 1382
    iput-boolean v5, v0, Lcom/jcraft/jsch/jzlib/Deflater;->m:Z

    .line 1383
    .line 1384
    :cond_4e
    return v3
.end method

.method public final d()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/jcraft/jsch/jzlib/Deflater;->m:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/ZStream;->j:Lcom/jcraft/jsch/jzlib/Deflate;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget v1, v0, Lcom/jcraft/jsch/jzlib/Deflate;->b:I

    .line 10
    .line 11
    const/16 v2, 0x2a

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    if-eq v1, v2, :cond_1

    .line 15
    .line 16
    const/16 v2, 0x71

    .line 17
    .line 18
    if-eq v1, v2, :cond_1

    .line 19
    .line 20
    const/16 v2, 0x29a

    .line 21
    .line 22
    if-eq v1, v2, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iput-object v3, v0, Lcom/jcraft/jsch/jzlib/Deflate;->c:[B

    .line 26
    .line 27
    iput-object v3, v0, Lcom/jcraft/jsch/jzlib/Deflate;->l0:[B

    .line 28
    .line 29
    iput-object v3, v0, Lcom/jcraft/jsch/jzlib/Deflate;->H:[S

    .line 30
    .line 31
    iput-object v3, v0, Lcom/jcraft/jsch/jzlib/Deflate;->G:[S

    .line 32
    .line 33
    iput-object v3, v0, Lcom/jcraft/jsch/jzlib/Deflate;->x:[B

    .line 34
    .line 35
    :goto_0
    iput-object v3, p0, Lcom/jcraft/jsch/jzlib/ZStream;->j:Lcom/jcraft/jsch/jzlib/Deflate;

    .line 36
    .line 37
    iput-object v3, p0, Lcom/jcraft/jsch/jzlib/ZStream;->a:[B

    .line 38
    .line 39
    iput-object v3, p0, Lcom/jcraft/jsch/jzlib/ZStream;->e:[B

    .line 40
    .line 41
    iput-object v3, p0, Lcom/jcraft/jsch/jzlib/ZStream;->i:Ljava/lang/String;

    .line 42
    .line 43
    return-void
.end method
