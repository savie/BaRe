.class final Lcom/jcraft/jsch/jzlib/Inflater;
.super Lcom/jcraft/jsch/jzlib/ZStream;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Lcom/jcraft/jsch/jzlib/ZStream;-><init>()V

    const/16 v0, 0xf

    const/4 v1, 0x0

    .line 43
    invoke-virtual {p0, v0, v1}, Lcom/jcraft/jsch/jzlib/Inflater;->d(IZ)I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/jzlib/GZIPException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, v0}, Lcom/jcraft/jsch/jzlib/Inflater;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(ILcom/jcraft/jsch/jzlib/JZlib$WrapperType;)V
    .locals 2
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
    sget-object v0, Lcom/jcraft/jsch/jzlib/JZlib;->a:Lcom/jcraft/jsch/jzlib/JZlib$WrapperType;

    .line 5
    .line 6
    if-ne p2, v0, :cond_0

    .line 7
    .line 8
    const/4 p2, 0x1

    .line 9
    goto :goto_1

    .line 10
    :cond_0
    sget-object v0, Lcom/jcraft/jsch/jzlib/JZlib;->b:Lcom/jcraft/jsch/jzlib/JZlib$WrapperType;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    if-ne p2, v0, :cond_2

    .line 14
    .line 15
    add-int/lit8 p1, p1, 0x10

    .line 16
    .line 17
    :cond_1
    :goto_0
    move p2, v1

    .line 18
    goto :goto_1

    .line 19
    :cond_2
    sget-object v0, Lcom/jcraft/jsch/jzlib/JZlib;->c:Lcom/jcraft/jsch/jzlib/JZlib$WrapperType;

    .line 20
    .line 21
    if-ne p2, v0, :cond_1

    .line 22
    .line 23
    const/high16 p2, 0x40000000    # 2.0f

    .line 24
    .line 25
    or-int/2addr p1, p2

    .line 26
    goto :goto_0

    .line 27
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/jcraft/jsch/jzlib/Inflater;->d(IZ)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-nez p1, :cond_3

    .line 32
    .line 33
    return-void

    .line 34
    :cond_3
    iget-object p0, p0, Lcom/jcraft/jsch/jzlib/ZStream;->i:Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {p1, p0}, Lcom/jcraft/jsch/jzlib/a;->a(ILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    const/4 p0, 0x0

    .line 40
    throw p0
.end method

.method public constructor <init>(IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/jzlib/GZIPException;
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Lcom/jcraft/jsch/jzlib/ZStream;-><init>()V

    .line 47
    invoke-virtual {p0, p1, p2}, Lcom/jcraft/jsch/jzlib/Inflater;->d(IZ)I

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 48
    :cond_0
    iget-object p0, p0, Lcom/jcraft/jsch/jzlib/ZStream;->i:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/jcraft/jsch/jzlib/a;->a(ILjava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Lcom/jcraft/jsch/jzlib/JZlib$WrapperType;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/jzlib/GZIPException;
        }
    .end annotation

    const/16 v0, 0xf

    .line 41
    invoke-direct {p0, v0, p1}, Lcom/jcraft/jsch/jzlib/Inflater;-><init>(ILcom/jcraft/jsch/jzlib/JZlib$WrapperType;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/jzlib/GZIPException;
        }
    .end annotation

    const/16 v0, 0xf

    .line 45
    invoke-direct {p0, v0, p1}, Lcom/jcraft/jsch/jzlib/Inflater;-><init>(IZ)V

    return-void
.end method


# virtual methods
.method public final c(I)I
    .locals 68

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    iget-object v0, v0, Lcom/jcraft/jsch/jzlib/ZStream;->k:Lcom/jcraft/jsch/jzlib/Inflate;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    :cond_0
    :goto_0
    const/16 v28, -0x2

    .line 10
    .line 11
    goto/16 :goto_44

    .line 12
    .line 13
    :cond_1
    iget-object v3, v0, Lcom/jcraft/jsch/jzlib/Inflate;->g:Lcom/jcraft/jsch/jzlib/ZStream;

    .line 14
    .line 15
    const/4 v5, 0x4

    .line 16
    if-eqz v3, :cond_2

    .line 17
    .line 18
    iget-object v7, v3, Lcom/jcraft/jsch/jzlib/ZStream;->a:[B

    .line 19
    .line 20
    if-nez v7, :cond_3

    .line 21
    .line 22
    :cond_2
    move v2, v5

    .line 23
    goto/16 :goto_43

    .line 24
    .line 25
    :cond_3
    if-ne v1, v5, :cond_4

    .line 26
    .line 27
    const/4 v1, -0x5

    .line 28
    goto :goto_1

    .line 29
    :cond_4
    const/4 v1, 0x0

    .line 30
    :goto_1
    const/4 v8, -0x5

    .line 31
    :goto_2
    iget v9, v0, Lcom/jcraft/jsch/jzlib/Inflate;->a:I

    .line 32
    .line 33
    const/16 v10, 0x13

    .line 34
    .line 35
    const/16 p1, 0xa

    .line 36
    .line 37
    const/16 v11, 0x12

    .line 38
    .line 39
    const/16 v16, 0x6

    .line 40
    .line 41
    const/4 v14, 0x2

    .line 42
    const/16 v13, 0x8

    .line 43
    .line 44
    const/16 v4, 0x10

    .line 45
    .line 46
    const v21, 0xffff

    .line 47
    .line 48
    .line 49
    const-wide v22, 0xffffffffL

    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    const-wide/16 v24, 0xff

    .line 55
    .line 56
    const-wide v26, 0xff000000L

    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    const-wide/32 v30, 0xffff

    .line 62
    .line 63
    .line 64
    const/16 v32, -0x3

    .line 65
    .line 66
    const-string v2, "unknown compression method"

    .line 67
    .line 68
    const-string v15, "incorrect data check"

    .line 69
    .line 70
    const-wide/32 v34, 0xff00

    .line 71
    .line 72
    .line 73
    const-wide/32 v36, 0xff0000

    .line 74
    .line 75
    .line 76
    const/16 v38, 0x18

    .line 77
    .line 78
    const-wide/16 v39, 0x1

    .line 79
    .line 80
    const/16 v12, 0xd

    .line 81
    .line 82
    packed-switch v9, :pswitch_data_0

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :pswitch_0
    :try_start_0
    invoke-virtual {v0, v14, v8, v1}, Lcom/jcraft/jsch/jzlib/Inflate;->c(III)I

    .line 87
    .line 88
    .line 89
    move-result v8
    :try_end_0
    .catch Lcom/jcraft/jsch/jzlib/Inflate$Return; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    iget-wide v6, v0, Lcom/jcraft/jsch/jzlib/Inflate;->c:J

    .line 91
    .line 92
    long-to-int v15, v6

    .line 93
    and-int v9, v15, v21

    .line 94
    .line 95
    iput v9, v0, Lcom/jcraft/jsch/jzlib/Inflate;->h:I

    .line 96
    .line 97
    and-int/lit16 v9, v15, 0xff

    .line 98
    .line 99
    if-eq v9, v13, :cond_5

    .line 100
    .line 101
    iput-object v2, v3, Lcom/jcraft/jsch/jzlib/ZStream;->i:Ljava/lang/String;

    .line 102
    .line 103
    iput v12, v0, Lcom/jcraft/jsch/jzlib/Inflate;->a:I

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_5
    const v2, 0xe000

    .line 107
    .line 108
    .line 109
    and-int/2addr v2, v15

    .line 110
    if-eqz v2, :cond_6

    .line 111
    .line 112
    const-string v2, "unknown header flags set"

    .line 113
    .line 114
    iput-object v2, v3, Lcom/jcraft/jsch/jzlib/ZStream;->i:Ljava/lang/String;

    .line 115
    .line 116
    iput v12, v0, Lcom/jcraft/jsch/jzlib/Inflate;->a:I

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_6
    and-int/lit16 v2, v15, 0x200

    .line 120
    .line 121
    if-eqz v2, :cond_7

    .line 122
    .line 123
    invoke-virtual {v0, v14, v6, v7}, Lcom/jcraft/jsch/jzlib/Inflate;->a(IJ)V

    .line 124
    .line 125
    .line 126
    :cond_7
    iput v4, v0, Lcom/jcraft/jsch/jzlib/Inflate;->a:I

    .line 127
    .line 128
    goto :goto_3

    .line 129
    :catch_0
    move-exception v0

    .line 130
    iget v0, v0, Lcom/jcraft/jsch/jzlib/Inflate$Return;->a:I

    .line 131
    .line 132
    goto/16 :goto_3c

    .line 133
    .line 134
    :goto_3
    :pswitch_1
    :try_start_1
    invoke-virtual {v0, v5, v8, v1}, Lcom/jcraft/jsch/jzlib/Inflate;->c(III)I

    .line 135
    .line 136
    .line 137
    move-result v8
    :try_end_1
    .catch Lcom/jcraft/jsch/jzlib/Inflate$Return; {:try_start_1 .. :try_end_1} :catch_7

    .line 138
    iget-object v2, v0, Lcom/jcraft/jsch/jzlib/Inflate;->k:Lcom/jcraft/jsch/jzlib/GZIPHeader;

    .line 139
    .line 140
    if-eqz v2, :cond_8

    .line 141
    .line 142
    iget-wide v6, v0, Lcom/jcraft/jsch/jzlib/Inflate;->c:J

    .line 143
    .line 144
    iput-wide v6, v2, Lcom/jcraft/jsch/jzlib/GZIPHeader;->e:J

    .line 145
    .line 146
    :cond_8
    iget v2, v0, Lcom/jcraft/jsch/jzlib/Inflate;->h:I

    .line 147
    .line 148
    and-int/lit16 v2, v2, 0x200

    .line 149
    .line 150
    if-eqz v2, :cond_9

    .line 151
    .line 152
    iget-wide v6, v0, Lcom/jcraft/jsch/jzlib/Inflate;->c:J

    .line 153
    .line 154
    invoke-virtual {v0, v5, v6, v7}, Lcom/jcraft/jsch/jzlib/Inflate;->a(IJ)V

    .line 155
    .line 156
    .line 157
    :cond_9
    const/16 v2, 0x11

    .line 158
    .line 159
    iput v2, v0, Lcom/jcraft/jsch/jzlib/Inflate;->a:I

    .line 160
    .line 161
    :pswitch_2
    :try_start_2
    invoke-virtual {v0, v14, v8, v1}, Lcom/jcraft/jsch/jzlib/Inflate;->c(III)I

    .line 162
    .line 163
    .line 164
    move-result v8
    :try_end_2
    .catch Lcom/jcraft/jsch/jzlib/Inflate$Return; {:try_start_2 .. :try_end_2} :catch_6

    .line 165
    iget-object v2, v0, Lcom/jcraft/jsch/jzlib/Inflate;->k:Lcom/jcraft/jsch/jzlib/GZIPHeader;

    .line 166
    .line 167
    if-eqz v2, :cond_a

    .line 168
    .line 169
    iget-wide v6, v0, Lcom/jcraft/jsch/jzlib/Inflate;->c:J

    .line 170
    .line 171
    long-to-int v4, v6

    .line 172
    shr-int/2addr v4, v13

    .line 173
    and-int/lit16 v4, v4, 0xff

    .line 174
    .line 175
    iput v4, v2, Lcom/jcraft/jsch/jzlib/GZIPHeader;->a:I

    .line 176
    .line 177
    :cond_a
    iget v2, v0, Lcom/jcraft/jsch/jzlib/Inflate;->h:I

    .line 178
    .line 179
    and-int/lit16 v2, v2, 0x200

    .line 180
    .line 181
    if-eqz v2, :cond_b

    .line 182
    .line 183
    iget-wide v6, v0, Lcom/jcraft/jsch/jzlib/Inflate;->c:J

    .line 184
    .line 185
    invoke-virtual {v0, v14, v6, v7}, Lcom/jcraft/jsch/jzlib/Inflate;->a(IJ)V

    .line 186
    .line 187
    .line 188
    :cond_b
    iput v11, v0, Lcom/jcraft/jsch/jzlib/Inflate;->a:I

    .line 189
    .line 190
    :pswitch_3
    iget v2, v0, Lcom/jcraft/jsch/jzlib/Inflate;->h:I

    .line 191
    .line 192
    and-int/lit16 v2, v2, 0x400

    .line 193
    .line 194
    if-eqz v2, :cond_e

    .line 195
    .line 196
    :try_start_3
    invoke-virtual {v0, v14, v8, v1}, Lcom/jcraft/jsch/jzlib/Inflate;->c(III)I

    .line 197
    .line 198
    .line 199
    move-result v2
    :try_end_3
    .catch Lcom/jcraft/jsch/jzlib/Inflate$Return; {:try_start_3 .. :try_end_3} :catch_1

    .line 200
    iget-object v4, v0, Lcom/jcraft/jsch/jzlib/Inflate;->k:Lcom/jcraft/jsch/jzlib/GZIPHeader;

    .line 201
    .line 202
    if-eqz v4, :cond_c

    .line 203
    .line 204
    iget-wide v6, v0, Lcom/jcraft/jsch/jzlib/Inflate;->c:J

    .line 205
    .line 206
    long-to-int v6, v6

    .line 207
    and-int v6, v6, v21

    .line 208
    .line 209
    new-array v6, v6, [B

    .line 210
    .line 211
    iput-object v6, v4, Lcom/jcraft/jsch/jzlib/GZIPHeader;->b:[B

    .line 212
    .line 213
    :cond_c
    iget v4, v0, Lcom/jcraft/jsch/jzlib/Inflate;->h:I

    .line 214
    .line 215
    and-int/lit16 v4, v4, 0x200

    .line 216
    .line 217
    if-eqz v4, :cond_d

    .line 218
    .line 219
    iget-wide v6, v0, Lcom/jcraft/jsch/jzlib/Inflate;->c:J

    .line 220
    .line 221
    invoke-virtual {v0, v14, v6, v7}, Lcom/jcraft/jsch/jzlib/Inflate;->a(IJ)V

    .line 222
    .line 223
    .line 224
    :cond_d
    move v8, v2

    .line 225
    goto :goto_4

    .line 226
    :catch_1
    move-exception v0

    .line 227
    iget v0, v0, Lcom/jcraft/jsch/jzlib/Inflate$Return;->a:I

    .line 228
    .line 229
    goto/16 :goto_3c

    .line 230
    .line 231
    :cond_e
    iget-object v2, v0, Lcom/jcraft/jsch/jzlib/Inflate;->k:Lcom/jcraft/jsch/jzlib/GZIPHeader;

    .line 232
    .line 233
    if-eqz v2, :cond_f

    .line 234
    .line 235
    const/4 v4, 0x0

    .line 236
    iput-object v4, v2, Lcom/jcraft/jsch/jzlib/GZIPHeader;->b:[B

    .line 237
    .line 238
    :cond_f
    :goto_4
    iput v10, v0, Lcom/jcraft/jsch/jzlib/Inflate;->a:I

    .line 239
    .line 240
    :pswitch_4
    iget v2, v0, Lcom/jcraft/jsch/jzlib/Inflate;->h:I

    .line 241
    .line 242
    and-int/lit16 v2, v2, 0x400

    .line 243
    .line 244
    if-eqz v2, :cond_11

    .line 245
    .line 246
    :try_start_4
    invoke-virtual {v0, v8, v1}, Lcom/jcraft/jsch/jzlib/Inflate;->b(II)I

    .line 247
    .line 248
    .line 249
    move-result v8

    .line 250
    iget-object v2, v0, Lcom/jcraft/jsch/jzlib/Inflate;->k:Lcom/jcraft/jsch/jzlib/GZIPHeader;

    .line 251
    .line 252
    if-eqz v2, :cond_12

    .line 253
    .line 254
    iget-object v2, v0, Lcom/jcraft/jsch/jzlib/Inflate;->l:Ljava/io/ByteArrayOutputStream;

    .line 255
    .line 256
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 257
    .line 258
    .line 259
    move-result-object v2

    .line 260
    const/4 v4, 0x0

    .line 261
    iput-object v4, v0, Lcom/jcraft/jsch/jzlib/Inflate;->l:Ljava/io/ByteArrayOutputStream;

    .line 262
    .line 263
    array-length v4, v2

    .line 264
    iget-object v6, v0, Lcom/jcraft/jsch/jzlib/Inflate;->k:Lcom/jcraft/jsch/jzlib/GZIPHeader;

    .line 265
    .line 266
    iget-object v6, v6, Lcom/jcraft/jsch/jzlib/GZIPHeader;->b:[B

    .line 267
    .line 268
    array-length v7, v6

    .line 269
    if-ne v4, v7, :cond_10

    .line 270
    .line 271
    array-length v4, v2

    .line 272
    const/4 v9, 0x0

    .line 273
    invoke-static {v2, v9, v6, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 274
    .line 275
    .line 276
    goto :goto_5

    .line 277
    :cond_10
    const-string v2, "bad extra field length"

    .line 278
    .line 279
    iput-object v2, v3, Lcom/jcraft/jsch/jzlib/ZStream;->i:Ljava/lang/String;

    .line 280
    .line 281
    iput v12, v0, Lcom/jcraft/jsch/jzlib/Inflate;->a:I
    :try_end_4
    .catch Lcom/jcraft/jsch/jzlib/Inflate$Return; {:try_start_4 .. :try_end_4} :catch_2

    .line 282
    .line 283
    goto/16 :goto_2

    .line 284
    .line 285
    :catch_2
    move-exception v0

    .line 286
    iget v0, v0, Lcom/jcraft/jsch/jzlib/Inflate$Return;->a:I

    .line 287
    .line 288
    goto/16 :goto_3c

    .line 289
    .line 290
    :cond_11
    iget-object v2, v0, Lcom/jcraft/jsch/jzlib/Inflate;->k:Lcom/jcraft/jsch/jzlib/GZIPHeader;

    .line 291
    .line 292
    if-eqz v2, :cond_12

    .line 293
    .line 294
    const/4 v4, 0x0

    .line 295
    iput-object v4, v2, Lcom/jcraft/jsch/jzlib/GZIPHeader;->b:[B

    .line 296
    .line 297
    :cond_12
    :goto_5
    const/16 v2, 0x14

    .line 298
    .line 299
    iput v2, v0, Lcom/jcraft/jsch/jzlib/Inflate;->a:I

    .line 300
    .line 301
    :pswitch_5
    iget v2, v0, Lcom/jcraft/jsch/jzlib/Inflate;->h:I

    .line 302
    .line 303
    and-int/lit16 v2, v2, 0x800

    .line 304
    .line 305
    if-eqz v2, :cond_14

    .line 306
    .line 307
    :try_start_5
    invoke-virtual {v0, v8, v1}, Lcom/jcraft/jsch/jzlib/Inflate;->d(II)V

    .line 308
    .line 309
    .line 310
    iget-object v2, v0, Lcom/jcraft/jsch/jzlib/Inflate;->k:Lcom/jcraft/jsch/jzlib/GZIPHeader;

    .line 311
    .line 312
    if-eqz v2, :cond_13

    .line 313
    .line 314
    iget-object v4, v0, Lcom/jcraft/jsch/jzlib/Inflate;->l:Ljava/io/ByteArrayOutputStream;

    .line 315
    .line 316
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 317
    .line 318
    .line 319
    move-result-object v4

    .line 320
    iput-object v4, v2, Lcom/jcraft/jsch/jzlib/GZIPHeader;->c:[B

    .line 321
    .line 322
    :cond_13
    const/4 v4, 0x0

    .line 323
    iput-object v4, v0, Lcom/jcraft/jsch/jzlib/Inflate;->l:Ljava/io/ByteArrayOutputStream;
    :try_end_5
    .catch Lcom/jcraft/jsch/jzlib/Inflate$Return; {:try_start_5 .. :try_end_5} :catch_3

    .line 324
    .line 325
    move v8, v1

    .line 326
    goto :goto_6

    .line 327
    :catch_3
    move-exception v0

    .line 328
    iget v0, v0, Lcom/jcraft/jsch/jzlib/Inflate$Return;->a:I

    .line 329
    .line 330
    goto/16 :goto_3c

    .line 331
    .line 332
    :cond_14
    iget-object v2, v0, Lcom/jcraft/jsch/jzlib/Inflate;->k:Lcom/jcraft/jsch/jzlib/GZIPHeader;

    .line 333
    .line 334
    if-eqz v2, :cond_15

    .line 335
    .line 336
    const/4 v4, 0x0

    .line 337
    iput-object v4, v2, Lcom/jcraft/jsch/jzlib/GZIPHeader;->c:[B

    .line 338
    .line 339
    :cond_15
    :goto_6
    const/16 v2, 0x15

    .line 340
    .line 341
    iput v2, v0, Lcom/jcraft/jsch/jzlib/Inflate;->a:I

    .line 342
    .line 343
    :pswitch_6
    iget v2, v0, Lcom/jcraft/jsch/jzlib/Inflate;->h:I

    .line 344
    .line 345
    and-int/lit16 v2, v2, 0x1000

    .line 346
    .line 347
    if-eqz v2, :cond_17

    .line 348
    .line 349
    :try_start_6
    invoke-virtual {v0, v8, v1}, Lcom/jcraft/jsch/jzlib/Inflate;->d(II)V

    .line 350
    .line 351
    .line 352
    iget-object v2, v0, Lcom/jcraft/jsch/jzlib/Inflate;->k:Lcom/jcraft/jsch/jzlib/GZIPHeader;

    .line 353
    .line 354
    if-eqz v2, :cond_16

    .line 355
    .line 356
    iget-object v4, v0, Lcom/jcraft/jsch/jzlib/Inflate;->l:Ljava/io/ByteArrayOutputStream;

    .line 357
    .line 358
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 359
    .line 360
    .line 361
    move-result-object v4

    .line 362
    iput-object v4, v2, Lcom/jcraft/jsch/jzlib/GZIPHeader;->d:[B

    .line 363
    .line 364
    :cond_16
    const/4 v4, 0x0

    .line 365
    iput-object v4, v0, Lcom/jcraft/jsch/jzlib/Inflate;->l:Ljava/io/ByteArrayOutputStream;
    :try_end_6
    .catch Lcom/jcraft/jsch/jzlib/Inflate$Return; {:try_start_6 .. :try_end_6} :catch_4

    .line 366
    .line 367
    move v8, v1

    .line 368
    goto :goto_7

    .line 369
    :catch_4
    move-exception v0

    .line 370
    iget v0, v0, Lcom/jcraft/jsch/jzlib/Inflate$Return;->a:I

    .line 371
    .line 372
    goto/16 :goto_3c

    .line 373
    .line 374
    :cond_17
    iget-object v2, v0, Lcom/jcraft/jsch/jzlib/Inflate;->k:Lcom/jcraft/jsch/jzlib/GZIPHeader;

    .line 375
    .line 376
    if-eqz v2, :cond_18

    .line 377
    .line 378
    const/4 v4, 0x0

    .line 379
    iput-object v4, v2, Lcom/jcraft/jsch/jzlib/GZIPHeader;->d:[B

    .line 380
    .line 381
    :cond_18
    :goto_7
    const/16 v2, 0x16

    .line 382
    .line 383
    iput v2, v0, Lcom/jcraft/jsch/jzlib/Inflate;->a:I

    .line 384
    .line 385
    :pswitch_7
    iget v2, v0, Lcom/jcraft/jsch/jzlib/Inflate;->h:I

    .line 386
    .line 387
    and-int/lit16 v2, v2, 0x200

    .line 388
    .line 389
    if-eqz v2, :cond_19

    .line 390
    .line 391
    :try_start_7
    invoke-virtual {v0, v14, v8, v1}, Lcom/jcraft/jsch/jzlib/Inflate;->c(III)I

    .line 392
    .line 393
    .line 394
    move-result v8
    :try_end_7
    .catch Lcom/jcraft/jsch/jzlib/Inflate$Return; {:try_start_7 .. :try_end_7} :catch_5

    .line 395
    iget-wide v6, v0, Lcom/jcraft/jsch/jzlib/Inflate;->c:J

    .line 396
    .line 397
    iget-object v2, v3, Lcom/jcraft/jsch/jzlib/ZStream;->l:Lcom/jcraft/jsch/jzlib/Checksum;

    .line 398
    .line 399
    invoke-interface {v2}, Lcom/jcraft/jsch/jzlib/Checksum;->getValue()J

    .line 400
    .line 401
    .line 402
    move-result-wide v10

    .line 403
    and-long v10, v10, v30

    .line 404
    .line 405
    cmp-long v2, v6, v10

    .line 406
    .line 407
    if-eqz v2, :cond_19

    .line 408
    .line 409
    iput v12, v0, Lcom/jcraft/jsch/jzlib/Inflate;->a:I

    .line 410
    .line 411
    const-string v2, "header crc mismatch"

    .line 412
    .line 413
    iput-object v2, v3, Lcom/jcraft/jsch/jzlib/ZStream;->i:Ljava/lang/String;

    .line 414
    .line 415
    goto/16 :goto_2

    .line 416
    .line 417
    :catch_5
    move-exception v0

    .line 418
    iget v0, v0, Lcom/jcraft/jsch/jzlib/Inflate$Return;->a:I

    .line 419
    .line 420
    goto/16 :goto_3c

    .line 421
    .line 422
    :cond_19
    new-instance v2, Lcom/jcraft/jsch/jzlib/CRC32;

    .line 423
    .line 424
    invoke-direct {v2}, Lcom/jcraft/jsch/jzlib/CRC32;-><init>()V

    .line 425
    .line 426
    .line 427
    iput-object v2, v3, Lcom/jcraft/jsch/jzlib/ZStream;->l:Lcom/jcraft/jsch/jzlib/Checksum;

    .line 428
    .line 429
    const/4 v6, 0x7

    .line 430
    iput v6, v0, Lcom/jcraft/jsch/jzlib/Inflate;->a:I

    .line 431
    .line 432
    goto/16 :goto_2

    .line 433
    .line 434
    :catch_6
    move-exception v0

    .line 435
    iget v0, v0, Lcom/jcraft/jsch/jzlib/Inflate$Return;->a:I

    .line 436
    .line 437
    goto/16 :goto_3c

    .line 438
    .line 439
    :catch_7
    move-exception v0

    .line 440
    iget v0, v0, Lcom/jcraft/jsch/jzlib/Inflate$Return;->a:I

    .line 441
    .line 442
    goto/16 :goto_3c

    .line 443
    .line 444
    :pswitch_8
    move/from16 v63, v1

    .line 445
    .line 446
    const/16 v19, -0x5

    .line 447
    .line 448
    goto/16 :goto_3b

    .line 449
    .line 450
    :pswitch_9
    const/4 v6, 0x7

    .line 451
    iget v7, v0, Lcom/jcraft/jsch/jzlib/Inflate;->d:I

    .line 452
    .line 453
    if-nez v7, :cond_1a

    .line 454
    .line 455
    iput v6, v0, Lcom/jcraft/jsch/jzlib/Inflate;->a:I

    .line 456
    .line 457
    goto/16 :goto_2

    .line 458
    .line 459
    :cond_1a
    :try_start_8
    invoke-virtual {v0, v14, v8, v1}, Lcom/jcraft/jsch/jzlib/Inflate;->c(III)I

    .line 460
    .line 461
    .line 462
    move-result v8
    :try_end_8
    .catch Lcom/jcraft/jsch/jzlib/Inflate$Return; {:try_start_8 .. :try_end_8} :catch_8

    .line 463
    iget v6, v0, Lcom/jcraft/jsch/jzlib/Inflate;->d:I

    .line 464
    .line 465
    if-eq v6, v5, :cond_1b

    .line 466
    .line 467
    and-int/lit8 v7, v6, 0x2

    .line 468
    .line 469
    if-eqz v7, :cond_1e

    .line 470
    .line 471
    :cond_1b
    iget-wide v10, v0, Lcom/jcraft/jsch/jzlib/Inflate;->c:J

    .line 472
    .line 473
    const-wide/32 v21, 0x8b1f

    .line 474
    .line 475
    .line 476
    cmp-long v7, v10, v21

    .line 477
    .line 478
    if-nez v7, :cond_1e

    .line 479
    .line 480
    if-ne v6, v5, :cond_1c

    .line 481
    .line 482
    iput v14, v0, Lcom/jcraft/jsch/jzlib/Inflate;->d:I

    .line 483
    .line 484
    :cond_1c
    new-instance v2, Lcom/jcraft/jsch/jzlib/CRC32;

    .line 485
    .line 486
    invoke-direct {v2}, Lcom/jcraft/jsch/jzlib/CRC32;-><init>()V

    .line 487
    .line 488
    .line 489
    iput-object v2, v3, Lcom/jcraft/jsch/jzlib/ZStream;->l:Lcom/jcraft/jsch/jzlib/Checksum;

    .line 490
    .line 491
    iget-wide v6, v0, Lcom/jcraft/jsch/jzlib/Inflate;->c:J

    .line 492
    .line 493
    invoke-virtual {v0, v14, v6, v7}, Lcom/jcraft/jsch/jzlib/Inflate;->a(IJ)V

    .line 494
    .line 495
    .line 496
    iget-object v2, v0, Lcom/jcraft/jsch/jzlib/Inflate;->k:Lcom/jcraft/jsch/jzlib/GZIPHeader;

    .line 497
    .line 498
    if-nez v2, :cond_1d

    .line 499
    .line 500
    new-instance v2, Lcom/jcraft/jsch/jzlib/GZIPHeader;

    .line 501
    .line 502
    invoke-direct {v2}, Lcom/jcraft/jsch/jzlib/GZIPHeader;-><init>()V

    .line 503
    .line 504
    .line 505
    iput-object v2, v0, Lcom/jcraft/jsch/jzlib/Inflate;->k:Lcom/jcraft/jsch/jzlib/GZIPHeader;

    .line 506
    .line 507
    :cond_1d
    const/16 v2, 0x17

    .line 508
    .line 509
    iput v2, v0, Lcom/jcraft/jsch/jzlib/Inflate;->a:I

    .line 510
    .line 511
    goto/16 :goto_2

    .line 512
    .line 513
    :cond_1e
    and-int/lit8 v7, v6, 0x2

    .line 514
    .line 515
    const-string v10, "incorrect header check"

    .line 516
    .line 517
    if-eqz v7, :cond_1f

    .line 518
    .line 519
    iput v12, v0, Lcom/jcraft/jsch/jzlib/Inflate;->a:I

    .line 520
    .line 521
    iput-object v10, v3, Lcom/jcraft/jsch/jzlib/ZStream;->i:Ljava/lang/String;

    .line 522
    .line 523
    goto/16 :goto_2

    .line 524
    .line 525
    :cond_1f
    const/4 v9, 0x0

    .line 526
    iput v9, v0, Lcom/jcraft/jsch/jzlib/Inflate;->h:I

    .line 527
    .line 528
    move v7, v14

    .line 529
    iget-wide v14, v0, Lcom/jcraft/jsch/jzlib/Inflate;->c:J

    .line 530
    .line 531
    long-to-int v11, v14

    .line 532
    move/from16 p0, v7

    .line 533
    .line 534
    and-int/lit16 v7, v11, 0xff

    .line 535
    .line 536
    shr-long/2addr v14, v13

    .line 537
    long-to-int v14, v14

    .line 538
    and-int/lit16 v15, v14, 0xff

    .line 539
    .line 540
    and-int/lit8 v18, v6, 0x1

    .line 541
    .line 542
    if-eqz v18, :cond_20

    .line 543
    .line 544
    shl-int/lit8 v18, v7, 0x8

    .line 545
    .line 546
    add-int v18, v18, v15

    .line 547
    .line 548
    rem-int/lit8 v18, v18, 0x1f

    .line 549
    .line 550
    if-eqz v18, :cond_22

    .line 551
    .line 552
    :cond_20
    and-int/lit8 v15, v11, 0xf

    .line 553
    .line 554
    if-eq v15, v13, :cond_22

    .line 555
    .line 556
    if-ne v6, v5, :cond_21

    .line 557
    .line 558
    iget v2, v3, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 559
    .line 560
    add-int/lit8 v2, v2, -0x2

    .line 561
    .line 562
    iput v2, v3, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 563
    .line 564
    iget v2, v3, Lcom/jcraft/jsch/jzlib/ZStream;->c:I

    .line 565
    .line 566
    add-int/lit8 v2, v2, 0x2

    .line 567
    .line 568
    iput v2, v3, Lcom/jcraft/jsch/jzlib/ZStream;->c:I

    .line 569
    .line 570
    iget-wide v6, v3, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 571
    .line 572
    const-wide/16 v10, 0x2

    .line 573
    .line 574
    sub-long/2addr v6, v10

    .line 575
    iput-wide v6, v3, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 576
    .line 577
    const/4 v9, 0x0

    .line 578
    iput v9, v0, Lcom/jcraft/jsch/jzlib/Inflate;->d:I

    .line 579
    .line 580
    const/4 v6, 0x7

    .line 581
    iput v6, v0, Lcom/jcraft/jsch/jzlib/Inflate;->a:I

    .line 582
    .line 583
    goto/16 :goto_2

    .line 584
    .line 585
    :cond_21
    iput v12, v0, Lcom/jcraft/jsch/jzlib/Inflate;->a:I

    .line 586
    .line 587
    iput-object v10, v3, Lcom/jcraft/jsch/jzlib/ZStream;->i:Ljava/lang/String;

    .line 588
    .line 589
    goto/16 :goto_2

    .line 590
    .line 591
    :cond_22
    and-int/lit8 v10, v11, 0xf

    .line 592
    .line 593
    if-eq v10, v13, :cond_23

    .line 594
    .line 595
    iput v12, v0, Lcom/jcraft/jsch/jzlib/Inflate;->a:I

    .line 596
    .line 597
    iput-object v2, v3, Lcom/jcraft/jsch/jzlib/ZStream;->i:Ljava/lang/String;

    .line 598
    .line 599
    goto/16 :goto_2

    .line 600
    .line 601
    :cond_23
    if-ne v6, v5, :cond_24

    .line 602
    .line 603
    const/4 v2, 0x1

    .line 604
    iput v2, v0, Lcom/jcraft/jsch/jzlib/Inflate;->d:I

    .line 605
    .line 606
    :cond_24
    shr-int/lit8 v2, v7, 0x4

    .line 607
    .line 608
    add-int/2addr v2, v13

    .line 609
    iget v6, v0, Lcom/jcraft/jsch/jzlib/Inflate;->e:I

    .line 610
    .line 611
    if-le v2, v6, :cond_25

    .line 612
    .line 613
    iput v12, v0, Lcom/jcraft/jsch/jzlib/Inflate;->a:I

    .line 614
    .line 615
    const-string v2, "invalid window size"

    .line 616
    .line 617
    iput-object v2, v3, Lcom/jcraft/jsch/jzlib/ZStream;->i:Ljava/lang/String;

    .line 618
    .line 619
    goto/16 :goto_2

    .line 620
    .line 621
    :cond_25
    new-instance v2, Lcom/jcraft/jsch/jzlib/Adler32;

    .line 622
    .line 623
    invoke-direct {v2}, Lcom/jcraft/jsch/jzlib/Adler32;-><init>()V

    .line 624
    .line 625
    .line 626
    iput-object v2, v3, Lcom/jcraft/jsch/jzlib/ZStream;->l:Lcom/jcraft/jsch/jzlib/Checksum;

    .line 627
    .line 628
    and-int/lit8 v2, v14, 0x20

    .line 629
    .line 630
    if-nez v2, :cond_26

    .line 631
    .line 632
    const/4 v6, 0x7

    .line 633
    iput v6, v0, Lcom/jcraft/jsch/jzlib/Inflate;->a:I

    .line 634
    .line 635
    goto/16 :goto_2

    .line 636
    .line 637
    :cond_26
    move/from16 v7, p0

    .line 638
    .line 639
    iput v7, v0, Lcom/jcraft/jsch/jzlib/Inflate;->a:I

    .line 640
    .line 641
    :pswitch_a
    move/from16 v63, v1

    .line 642
    .line 643
    goto/16 :goto_3f

    .line 644
    .line 645
    :catch_8
    move-exception v0

    .line 646
    iget v0, v0, Lcom/jcraft/jsch/jzlib/Inflate$Return;->a:I

    .line 647
    .line 648
    goto/16 :goto_3c

    .line 649
    .line 650
    :pswitch_b
    return v32

    .line 651
    :pswitch_c
    const/16 v33, 0x1

    .line 652
    .line 653
    return v33

    .line 654
    :pswitch_d
    move/from16 v63, v1

    .line 655
    .line 656
    const/16 v19, -0x5

    .line 657
    .line 658
    goto/16 :goto_3a

    .line 659
    .line 660
    :pswitch_e
    move/from16 v63, v1

    .line 661
    .line 662
    const/16 v19, -0x5

    .line 663
    .line 664
    goto/16 :goto_39

    .line 665
    .line 666
    :pswitch_f
    move/from16 v63, v1

    .line 667
    .line 668
    const/16 v19, -0x5

    .line 669
    .line 670
    goto/16 :goto_38

    .line 671
    .line 672
    :pswitch_10
    move/from16 v63, v1

    .line 673
    .line 674
    const/16 v19, -0x5

    .line 675
    .line 676
    goto/16 :goto_37

    .line 677
    .line 678
    :pswitch_11
    iget-object v2, v0, Lcom/jcraft/jsch/jzlib/Inflate;->f:Lcom/jcraft/jsch/jzlib/InfBlocks;

    .line 679
    .line 680
    iget-object v6, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->m:[I

    .line 681
    .line 682
    iget-object v14, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->l:[I

    .line 683
    .line 684
    iget-object v7, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->x:Lcom/jcraft/jsch/jzlib/InfTree;

    .line 685
    .line 686
    iget-object v9, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->f:[I

    .line 687
    .line 688
    iget-object v12, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->n:Lcom/jcraft/jsch/jzlib/InfCodes;

    .line 689
    .line 690
    iget-object v11, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->i:[I

    .line 691
    .line 692
    iget-object v4, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->h:[I

    .line 693
    .line 694
    iget-object v13, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->g:[I

    .line 695
    .line 696
    iget v10, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->t:I

    .line 697
    .line 698
    iget-object v5, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->y:Lcom/jcraft/jsch/jzlib/ZStream;

    .line 699
    .line 700
    move-object/from16 v59, v4

    .line 701
    .line 702
    iget v4, v5, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 703
    .line 704
    move/from16 v43, v4

    .line 705
    .line 706
    iget v4, v5, Lcom/jcraft/jsch/jzlib/ZStream;->c:I

    .line 707
    .line 708
    move/from16 v44, v4

    .line 709
    .line 710
    iget v4, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->q:I

    .line 711
    .line 712
    move/from16 v45, v4

    .line 713
    .line 714
    iget v4, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->p:I

    .line 715
    .line 716
    move/from16 v46, v4

    .line 717
    .line 718
    iget v4, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->v:I

    .line 719
    .line 720
    move-object/from16 v60, v6

    .line 721
    .line 722
    iget v6, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->u:I

    .line 723
    .line 724
    if-ge v4, v6, :cond_27

    .line 725
    .line 726
    sub-int/2addr v6, v4

    .line 727
    const/16 v33, 0x1

    .line 728
    .line 729
    add-int/lit8 v6, v6, -0x1

    .line 730
    .line 731
    goto :goto_8

    .line 732
    :cond_27
    sub-int v6, v10, v4

    .line 733
    .line 734
    :goto_8
    move/from16 v49, v43

    .line 735
    .line 736
    move/from16 v43, v6

    .line 737
    .line 738
    move/from16 v6, v49

    .line 739
    .line 740
    move-object/from16 v50, v9

    .line 741
    .line 742
    move-object/from16 v61, v11

    .line 743
    .line 744
    move-object/from16 v49, v13

    .line 745
    .line 746
    move-object/from16 v62, v14

    .line 747
    .line 748
    move/from16 v11, v45

    .line 749
    .line 750
    move/from16 v13, v46

    .line 751
    .line 752
    move v9, v8

    .line 753
    move v8, v4

    .line 754
    move/from16 v4, v44

    .line 755
    .line 756
    :goto_9
    iget v14, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->a:I

    .line 757
    .line 758
    packed-switch v14, :pswitch_data_1

    .line 759
    .line 760
    .line 761
    iput v11, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->q:I

    .line 762
    .line 763
    iput v13, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->p:I

    .line 764
    .line 765
    iput v4, v5, Lcom/jcraft/jsch/jzlib/ZStream;->c:I

    .line 766
    .line 767
    iget-wide v9, v5, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 768
    .line 769
    iget v4, v5, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 770
    .line 771
    sub-int v4, v6, v4

    .line 772
    .line 773
    int-to-long v11, v4

    .line 774
    add-long/2addr v9, v11

    .line 775
    iput-wide v9, v5, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 776
    .line 777
    iput v6, v5, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 778
    .line 779
    iput v8, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->v:I

    .line 780
    .line 781
    const/4 v4, -0x2

    .line 782
    invoke-virtual {v2, v4}, Lcom/jcraft/jsch/jzlib/InfBlocks;->a(I)I

    .line 783
    .line 784
    .line 785
    move-result v2

    .line 786
    move/from16 v63, v1

    .line 787
    .line 788
    move v8, v2

    .line 789
    move/from16 v14, v32

    .line 790
    .line 791
    :goto_a
    const/16 v19, -0x5

    .line 792
    .line 793
    goto/16 :goto_35

    .line 794
    .line 795
    :pswitch_12
    iput v11, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->q:I

    .line 796
    .line 797
    iput v13, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->p:I

    .line 798
    .line 799
    iput v4, v5, Lcom/jcraft/jsch/jzlib/ZStream;->c:I

    .line 800
    .line 801
    iget-wide v9, v5, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 802
    .line 803
    iget v4, v5, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 804
    .line 805
    sub-int v4, v6, v4

    .line 806
    .line 807
    int-to-long v11, v4

    .line 808
    add-long/2addr v9, v11

    .line 809
    iput-wide v9, v5, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 810
    .line 811
    iput v6, v5, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 812
    .line 813
    iput v8, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->v:I

    .line 814
    .line 815
    move/from16 v4, v32

    .line 816
    .line 817
    invoke-virtual {v2, v4}, Lcom/jcraft/jsch/jzlib/InfBlocks;->a(I)I

    .line 818
    .line 819
    .line 820
    move-result v2

    .line 821
    move/from16 v63, v1

    .line 822
    .line 823
    move v8, v2

    .line 824
    move v14, v4

    .line 825
    goto :goto_a

    .line 826
    :pswitch_13
    move/from16 v63, v1

    .line 827
    .line 828
    goto/16 :goto_22

    .line 829
    .line 830
    :pswitch_14
    move/from16 v63, v1

    .line 831
    .line 832
    move v1, v9

    .line 833
    goto/16 :goto_21

    .line 834
    .line 835
    :pswitch_15
    move/from16 v63, v1

    .line 836
    .line 837
    move-object/from16 v42, v7

    .line 838
    .line 839
    move v1, v9

    .line 840
    move-object/from16 v66, v49

    .line 841
    .line 842
    move-object/from16 v65, v50

    .line 843
    .line 844
    const/16 v57, 0x13

    .line 845
    .line 846
    goto/16 :goto_1d

    .line 847
    .line 848
    :pswitch_16
    move/from16 v63, v1

    .line 849
    .line 850
    move v14, v13

    .line 851
    move-object/from16 v66, v49

    .line 852
    .line 853
    move-object/from16 v65, v50

    .line 854
    .line 855
    const/16 v17, 0x5

    .line 856
    .line 857
    const/16 v57, 0x13

    .line 858
    .line 859
    move v13, v11

    .line 860
    move v11, v9

    .line 861
    goto/16 :goto_15

    .line 862
    .line 863
    :pswitch_17
    move/from16 v63, v1

    .line 864
    .line 865
    move v14, v13

    .line 866
    const/16 v58, 0x4

    .line 867
    .line 868
    move v13, v11

    .line 869
    move v11, v9

    .line 870
    goto/16 :goto_f

    .line 871
    .line 872
    :goto_b
    :pswitch_18
    const/16 v14, 0xe

    .line 873
    .line 874
    if-ge v13, v14, :cond_29

    .line 875
    .line 876
    if-eqz v4, :cond_28

    .line 877
    .line 878
    add-int/lit8 v4, v4, -0x1

    .line 879
    .line 880
    iget-object v9, v5, Lcom/jcraft/jsch/jzlib/ZStream;->a:[B

    .line 881
    .line 882
    add-int/lit8 v14, v6, 0x1

    .line 883
    .line 884
    aget-byte v6, v9, v6

    .line 885
    .line 886
    and-int/lit16 v6, v6, 0xff

    .line 887
    .line 888
    shl-int/2addr v6, v13

    .line 889
    or-int/2addr v11, v6

    .line 890
    add-int/lit8 v13, v13, 0x8

    .line 891
    .line 892
    move v6, v14

    .line 893
    const/4 v9, 0x0

    .line 894
    goto :goto_b

    .line 895
    :cond_28
    iput v11, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->q:I

    .line 896
    .line 897
    iput v13, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->p:I

    .line 898
    .line 899
    iput v4, v5, Lcom/jcraft/jsch/jzlib/ZStream;->c:I

    .line 900
    .line 901
    iget-wide v10, v5, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 902
    .line 903
    iget v4, v5, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 904
    .line 905
    sub-int v4, v6, v4

    .line 906
    .line 907
    int-to-long v12, v4

    .line 908
    add-long/2addr v10, v12

    .line 909
    iput-wide v10, v5, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 910
    .line 911
    iput v6, v5, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 912
    .line 913
    iput v8, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->v:I

    .line 914
    .line 915
    invoke-virtual {v2, v9}, Lcom/jcraft/jsch/jzlib/InfBlocks;->a(I)I

    .line 916
    .line 917
    .line 918
    move-result v2

    .line 919
    move/from16 v63, v1

    .line 920
    .line 921
    move v8, v2

    .line 922
    :goto_c
    const/4 v14, -0x3

    .line 923
    goto/16 :goto_a

    .line 924
    .line 925
    :cond_29
    and-int/lit16 v14, v11, 0x3fff

    .line 926
    .line 927
    iput v14, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->c:I

    .line 928
    .line 929
    move/from16 v43, v9

    .line 930
    .line 931
    and-int/lit8 v9, v11, 0x1f

    .line 932
    .line 933
    move/from16 v44, v14

    .line 934
    .line 935
    const/16 v14, 0x1d

    .line 936
    .line 937
    if-gt v9, v14, :cond_52

    .line 938
    .line 939
    shr-int/lit8 v44, v44, 0x5

    .line 940
    .line 941
    move/from16 v63, v1

    .line 942
    .line 943
    and-int/lit8 v1, v44, 0x1f

    .line 944
    .line 945
    if-le v1, v14, :cond_2a

    .line 946
    .line 947
    const/16 v7, 0x9

    .line 948
    .line 949
    const/16 v19, -0x5

    .line 950
    .line 951
    goto/16 :goto_29

    .line 952
    .line 953
    :cond_2a
    add-int/lit16 v9, v9, 0x102

    .line 954
    .line 955
    add-int/2addr v9, v1

    .line 956
    iget-object v1, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->e:[I

    .line 957
    .line 958
    if-eqz v1, :cond_2c

    .line 959
    .line 960
    array-length v1, v1

    .line 961
    if-ge v1, v9, :cond_2b

    .line 962
    .line 963
    goto :goto_e

    .line 964
    :cond_2b
    const/4 v1, 0x0

    .line 965
    :goto_d
    if-ge v1, v9, :cond_2d

    .line 966
    .line 967
    iget-object v14, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->e:[I

    .line 968
    .line 969
    const/16 v42, 0x0

    .line 970
    .line 971
    aput v42, v14, v1

    .line 972
    .line 973
    add-int/lit8 v1, v1, 0x1

    .line 974
    .line 975
    goto :goto_d

    .line 976
    :cond_2c
    :goto_e
    new-array v1, v9, [I

    .line 977
    .line 978
    iput-object v1, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->e:[I

    .line 979
    .line 980
    :cond_2d
    ushr-int/lit8 v11, v11, 0xe

    .line 981
    .line 982
    add-int/lit8 v13, v13, -0xe

    .line 983
    .line 984
    const/4 v9, 0x0

    .line 985
    iput v9, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->d:I

    .line 986
    .line 987
    const/4 v1, 0x4

    .line 988
    iput v1, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->a:I

    .line 989
    .line 990
    move/from16 v58, v1

    .line 991
    .line 992
    move v14, v13

    .line 993
    move v13, v11

    .line 994
    move/from16 v11, v43

    .line 995
    .line 996
    :goto_f
    iget v1, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->d:I

    .line 997
    .line 998
    iget v9, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->c:I

    .line 999
    .line 1000
    ushr-int/lit8 v9, v9, 0xa

    .line 1001
    .line 1002
    add-int/lit8 v9, v9, 0x4

    .line 1003
    .line 1004
    sget-object v43, Lcom/jcraft/jsch/jzlib/InfBlocks;->A:[I

    .line 1005
    .line 1006
    if-ge v1, v9, :cond_30

    .line 1007
    .line 1008
    :goto_10
    const/4 v1, 0x3

    .line 1009
    if-ge v14, v1, :cond_2f

    .line 1010
    .line 1011
    if-eqz v4, :cond_2e

    .line 1012
    .line 1013
    add-int/lit8 v4, v4, -0x1

    .line 1014
    .line 1015
    iget-object v1, v5, Lcom/jcraft/jsch/jzlib/ZStream;->a:[B

    .line 1016
    .line 1017
    add-int/lit8 v9, v6, 0x1

    .line 1018
    .line 1019
    aget-byte v1, v1, v6

    .line 1020
    .line 1021
    and-int/lit16 v1, v1, 0xff

    .line 1022
    .line 1023
    shl-int/2addr v1, v14

    .line 1024
    or-int/2addr v13, v1

    .line 1025
    add-int/lit8 v14, v14, 0x8

    .line 1026
    .line 1027
    move v6, v9

    .line 1028
    const/4 v11, 0x0

    .line 1029
    goto :goto_10

    .line 1030
    :cond_2e
    iput v13, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->q:I

    .line 1031
    .line 1032
    iput v14, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->p:I

    .line 1033
    .line 1034
    iput v4, v5, Lcom/jcraft/jsch/jzlib/ZStream;->c:I

    .line 1035
    .line 1036
    iget-wide v9, v5, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 1037
    .line 1038
    iget v1, v5, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 1039
    .line 1040
    sub-int v1, v6, v1

    .line 1041
    .line 1042
    int-to-long v12, v1

    .line 1043
    add-long/2addr v9, v12

    .line 1044
    iput-wide v9, v5, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 1045
    .line 1046
    iput v6, v5, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 1047
    .line 1048
    iput v8, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->v:I

    .line 1049
    .line 1050
    invoke-virtual {v2, v11}, Lcom/jcraft/jsch/jzlib/InfBlocks;->a(I)I

    .line 1051
    .line 1052
    .line 1053
    move-result v1

    .line 1054
    :goto_11
    move v8, v1

    .line 1055
    goto/16 :goto_c

    .line 1056
    .line 1057
    :cond_2f
    iget-object v1, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->e:[I

    .line 1058
    .line 1059
    iget v9, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->d:I

    .line 1060
    .line 1061
    move-object/from16 v44, v1

    .line 1062
    .line 1063
    add-int/lit8 v1, v9, 0x1

    .line 1064
    .line 1065
    iput v1, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->d:I

    .line 1066
    .line 1067
    aget v1, v43, v9

    .line 1068
    .line 1069
    and-int/lit8 v9, v13, 0x7

    .line 1070
    .line 1071
    aput v9, v44, v1

    .line 1072
    .line 1073
    ushr-int/lit8 v13, v13, 0x3

    .line 1074
    .line 1075
    add-int/lit8 v14, v14, -0x3

    .line 1076
    .line 1077
    const/16 v58, 0x4

    .line 1078
    .line 1079
    goto :goto_f

    .line 1080
    :cond_30
    :goto_12
    iget v1, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->d:I

    .line 1081
    .line 1082
    const/16 v9, 0x13

    .line 1083
    .line 1084
    if-ge v1, v9, :cond_31

    .line 1085
    .line 1086
    iget-object v9, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->e:[I

    .line 1087
    .line 1088
    move/from16 v44, v1

    .line 1089
    .line 1090
    add-int/lit8 v1, v44, 0x1

    .line 1091
    .line 1092
    iput v1, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->d:I

    .line 1093
    .line 1094
    aget v1, v43, v44

    .line 1095
    .line 1096
    const/16 v42, 0x0

    .line 1097
    .line 1098
    aput v42, v9, v1

    .line 1099
    .line 1100
    goto :goto_12

    .line 1101
    :cond_31
    const/16 v41, 0x7

    .line 1102
    .line 1103
    const/16 v42, 0x0

    .line 1104
    .line 1105
    aput v41, v50, v42

    .line 1106
    .line 1107
    iget-object v1, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->e:[I

    .line 1108
    .line 1109
    iget-object v9, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->r:[I

    .line 1110
    .line 1111
    move-object/from16 v43, v1

    .line 1112
    .line 1113
    const/16 v1, 0x13

    .line 1114
    .line 1115
    invoke-virtual {v7, v1}, Lcom/jcraft/jsch/jzlib/InfTree;->b(I)V

    .line 1116
    .line 1117
    .line 1118
    iget-object v1, v7, Lcom/jcraft/jsch/jzlib/InfTree;->a:[I

    .line 1119
    .line 1120
    aput v42, v1, v42

    .line 1121
    .line 1122
    const/16 v48, 0x0

    .line 1123
    .line 1124
    move-object/from16 v52, v1

    .line 1125
    .line 1126
    iget-object v1, v7, Lcom/jcraft/jsch/jzlib/InfTree;->b:[I

    .line 1127
    .line 1128
    const/16 v44, 0x0

    .line 1129
    .line 1130
    const/16 v45, 0x13

    .line 1131
    .line 1132
    const/16 v46, 0x13

    .line 1133
    .line 1134
    const/16 v47, 0x0

    .line 1135
    .line 1136
    move-object/from16 v53, v1

    .line 1137
    .line 1138
    move-object/from16 v42, v7

    .line 1139
    .line 1140
    move-object/from16 v51, v9

    .line 1141
    .line 1142
    invoke-virtual/range {v42 .. v53}, Lcom/jcraft/jsch/jzlib/InfTree;->a([IIII[I[I[I[I[I[I[I)I

    .line 1143
    .line 1144
    .line 1145
    move-result v1

    .line 1146
    move-object/from16 v66, v49

    .line 1147
    .line 1148
    move-object/from16 v65, v50

    .line 1149
    .line 1150
    const/4 v9, -0x3

    .line 1151
    if-ne v1, v9, :cond_32

    .line 1152
    .line 1153
    const-string v9, "oversubscribed dynamic bit lengths tree"

    .line 1154
    .line 1155
    iput-object v9, v5, Lcom/jcraft/jsch/jzlib/ZStream;->i:Ljava/lang/String;

    .line 1156
    .line 1157
    const/16 v57, 0x13

    .line 1158
    .line 1159
    goto :goto_14

    .line 1160
    :cond_32
    const/4 v9, -0x5

    .line 1161
    if-eq v1, v9, :cond_33

    .line 1162
    .line 1163
    const/4 v9, 0x0

    .line 1164
    aget v42, v65, v9

    .line 1165
    .line 1166
    const/16 v57, 0x13

    .line 1167
    .line 1168
    if-nez v42, :cond_34

    .line 1169
    .line 1170
    goto :goto_13

    .line 1171
    :cond_33
    const/16 v57, 0x13

    .line 1172
    .line 1173
    :goto_13
    const-string v1, "incomplete dynamic bit lengths tree"

    .line 1174
    .line 1175
    iput-object v1, v5, Lcom/jcraft/jsch/jzlib/ZStream;->i:Ljava/lang/String;

    .line 1176
    .line 1177
    const/4 v1, -0x3

    .line 1178
    :cond_34
    :goto_14
    if-eqz v1, :cond_36

    .line 1179
    .line 1180
    const/4 v9, -0x3

    .line 1181
    if-ne v1, v9, :cond_35

    .line 1182
    .line 1183
    const/4 v7, 0x0

    .line 1184
    iput-object v7, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->e:[I

    .line 1185
    .line 1186
    const/16 v7, 0x9

    .line 1187
    .line 1188
    iput v7, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->a:I

    .line 1189
    .line 1190
    :cond_35
    iput v13, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->q:I

    .line 1191
    .line 1192
    iput v14, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->p:I

    .line 1193
    .line 1194
    iput v4, v5, Lcom/jcraft/jsch/jzlib/ZStream;->c:I

    .line 1195
    .line 1196
    iget-wide v9, v5, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 1197
    .line 1198
    iget v4, v5, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 1199
    .line 1200
    sub-int v4, v6, v4

    .line 1201
    .line 1202
    int-to-long v11, v4

    .line 1203
    add-long/2addr v9, v11

    .line 1204
    iput-wide v9, v5, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 1205
    .line 1206
    iput v6, v5, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 1207
    .line 1208
    iput v8, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->v:I

    .line 1209
    .line 1210
    invoke-virtual {v2, v1}, Lcom/jcraft/jsch/jzlib/InfBlocks;->a(I)I

    .line 1211
    .line 1212
    .line 1213
    move-result v1

    .line 1214
    goto/16 :goto_11

    .line 1215
    .line 1216
    :cond_36
    const/4 v9, 0x0

    .line 1217
    iput v9, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->d:I

    .line 1218
    .line 1219
    const/4 v1, 0x5

    .line 1220
    iput v1, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->a:I

    .line 1221
    .line 1222
    move/from16 v17, v1

    .line 1223
    .line 1224
    :goto_15
    iget v1, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->c:I

    .line 1225
    .line 1226
    iget v9, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->d:I

    .line 1227
    .line 1228
    move/from16 v43, v1

    .line 1229
    .line 1230
    and-int/lit8 v1, v43, 0x1f

    .line 1231
    .line 1232
    move/from16 v64, v11

    .line 1233
    .line 1234
    add-int/lit16 v11, v1, 0x102

    .line 1235
    .line 1236
    shr-int/lit8 v43, v43, 0x5

    .line 1237
    .line 1238
    and-int/lit8 v43, v43, 0x1f

    .line 1239
    .line 1240
    add-int v11, v11, v43

    .line 1241
    .line 1242
    const/16 v44, -0x1

    .line 1243
    .line 1244
    if-lt v9, v11, :cond_46

    .line 1245
    .line 1246
    const/4 v9, 0x0

    .line 1247
    aput v44, v66, v9

    .line 1248
    .line 1249
    const/16 v18, 0x9

    .line 1250
    .line 1251
    aput v18, v59, v9

    .line 1252
    .line 1253
    aput v16, v61, v9

    .line 1254
    .line 1255
    add-int/lit16 v1, v1, 0x101

    .line 1256
    .line 1257
    add-int/lit8 v11, v43, 0x1

    .line 1258
    .line 1259
    move/from16 v67, v9

    .line 1260
    .line 1261
    iget-object v9, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->e:[I

    .line 1262
    .line 1263
    move/from16 v45, v1

    .line 1264
    .line 1265
    iget-object v1, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->r:[I

    .line 1266
    .line 1267
    move-object/from16 v51, v1

    .line 1268
    .line 1269
    const/16 v1, 0x120

    .line 1270
    .line 1271
    invoke-virtual {v7, v1}, Lcom/jcraft/jsch/jzlib/InfTree;->b(I)V

    .line 1272
    .line 1273
    .line 1274
    iget-object v1, v7, Lcom/jcraft/jsch/jzlib/InfTree;->a:[I

    .line 1275
    .line 1276
    aput v67, v1, v67

    .line 1277
    .line 1278
    sget-object v48, Lcom/jcraft/jsch/jzlib/InfTree;->j:[I

    .line 1279
    .line 1280
    move-object/from16 v52, v1

    .line 1281
    .line 1282
    iget-object v1, v7, Lcom/jcraft/jsch/jzlib/InfTree;->b:[I

    .line 1283
    .line 1284
    const/16 v44, 0x0

    .line 1285
    .line 1286
    const/16 v46, 0x101

    .line 1287
    .line 1288
    sget-object v47, Lcom/jcraft/jsch/jzlib/InfTree;->i:[I

    .line 1289
    .line 1290
    move-object/from16 v53, v1

    .line 1291
    .line 1292
    move-object/from16 v42, v7

    .line 1293
    .line 1294
    move-object/from16 v43, v9

    .line 1295
    .line 1296
    move-object/from16 v50, v59

    .line 1297
    .line 1298
    move-object/from16 v49, v62

    .line 1299
    .line 1300
    invoke-virtual/range {v42 .. v53}, Lcom/jcraft/jsch/jzlib/InfTree;->a([IIII[I[I[I[I[I[I[I)I

    .line 1301
    .line 1302
    .line 1303
    move-result v1

    .line 1304
    if-nez v1, :cond_3d

    .line 1305
    .line 1306
    aget v42, v59, v67

    .line 1307
    .line 1308
    if-nez v42, :cond_37

    .line 1309
    .line 1310
    move-object/from16 v42, v7

    .line 1311
    .line 1312
    const/4 v7, -0x3

    .line 1313
    const/4 v9, -0x4

    .line 1314
    const/4 v11, -0x5

    .line 1315
    goto :goto_1a

    .line 1316
    :cond_37
    const/16 v9, 0x120

    .line 1317
    .line 1318
    invoke-virtual {v7, v9}, Lcom/jcraft/jsch/jzlib/InfTree;->b(I)V

    .line 1319
    .line 1320
    .line 1321
    iget-object v1, v7, Lcom/jcraft/jsch/jzlib/InfTree;->a:[I

    .line 1322
    .line 1323
    iget-object v9, v7, Lcom/jcraft/jsch/jzlib/InfTree;->b:[I

    .line 1324
    .line 1325
    const/16 v46, 0x0

    .line 1326
    .line 1327
    sget-object v47, Lcom/jcraft/jsch/jzlib/InfTree;->k:[I

    .line 1328
    .line 1329
    sget-object v48, Lcom/jcraft/jsch/jzlib/InfTree;->l:[I

    .line 1330
    .line 1331
    move-object/from16 v52, v1

    .line 1332
    .line 1333
    move-object/from16 v42, v7

    .line 1334
    .line 1335
    move-object/from16 v53, v9

    .line 1336
    .line 1337
    move/from16 v44, v45

    .line 1338
    .line 1339
    move-object/from16 v49, v60

    .line 1340
    .line 1341
    move-object/from16 v50, v61

    .line 1342
    .line 1343
    move/from16 v45, v11

    .line 1344
    .line 1345
    invoke-virtual/range {v42 .. v53}, Lcom/jcraft/jsch/jzlib/InfTree;->a([IIII[I[I[I[I[I[I[I)I

    .line 1346
    .line 1347
    .line 1348
    move-result v1

    .line 1349
    move/from16 v7, v44

    .line 1350
    .line 1351
    if-nez v1, :cond_39

    .line 1352
    .line 1353
    aget v11, v61, v67

    .line 1354
    .line 1355
    const/4 v9, -0x4

    .line 1356
    if-nez v11, :cond_38

    .line 1357
    .line 1358
    const/16 v11, 0x101

    .line 1359
    .line 1360
    if-le v7, v11, :cond_38

    .line 1361
    .line 1362
    :goto_16
    const/4 v7, -0x3

    .line 1363
    goto :goto_18

    .line 1364
    :cond_38
    const/4 v1, 0x0

    .line 1365
    :goto_17
    const/4 v7, -0x3

    .line 1366
    const/4 v11, -0x5

    .line 1367
    goto :goto_1b

    .line 1368
    :cond_39
    const/4 v9, -0x4

    .line 1369
    goto :goto_16

    .line 1370
    :goto_18
    if-ne v1, v7, :cond_3a

    .line 1371
    .line 1372
    const-string v7, "oversubscribed distance tree"

    .line 1373
    .line 1374
    iput-object v7, v5, Lcom/jcraft/jsch/jzlib/ZStream;->i:Ljava/lang/String;

    .line 1375
    .line 1376
    goto :goto_17

    .line 1377
    :cond_3a
    const/4 v11, -0x5

    .line 1378
    if-ne v1, v11, :cond_3c

    .line 1379
    .line 1380
    const-string v1, "incomplete distance tree"

    .line 1381
    .line 1382
    iput-object v1, v5, Lcom/jcraft/jsch/jzlib/ZStream;->i:Ljava/lang/String;

    .line 1383
    .line 1384
    :goto_19
    const/4 v1, -0x3

    .line 1385
    :cond_3b
    const/4 v7, -0x3

    .line 1386
    goto :goto_1b

    .line 1387
    :cond_3c
    if-eq v1, v9, :cond_3b

    .line 1388
    .line 1389
    const-string v1, "empty distance tree with lengths"

    .line 1390
    .line 1391
    iput-object v1, v5, Lcom/jcraft/jsch/jzlib/ZStream;->i:Ljava/lang/String;

    .line 1392
    .line 1393
    goto :goto_19

    .line 1394
    :cond_3d
    move-object/from16 v42, v7

    .line 1395
    .line 1396
    const/4 v9, -0x4

    .line 1397
    const/4 v11, -0x5

    .line 1398
    const/4 v7, -0x3

    .line 1399
    :goto_1a
    if-ne v1, v7, :cond_3e

    .line 1400
    .line 1401
    const-string v9, "oversubscribed literal/length tree"

    .line 1402
    .line 1403
    iput-object v9, v5, Lcom/jcraft/jsch/jzlib/ZStream;->i:Ljava/lang/String;

    .line 1404
    .line 1405
    goto :goto_1b

    .line 1406
    :cond_3e
    if-eq v1, v9, :cond_3f

    .line 1407
    .line 1408
    const-string v1, "incomplete literal/length tree"

    .line 1409
    .line 1410
    iput-object v1, v5, Lcom/jcraft/jsch/jzlib/ZStream;->i:Ljava/lang/String;

    .line 1411
    .line 1412
    move v1, v7

    .line 1413
    :cond_3f
    :goto_1b
    if-eqz v1, :cond_41

    .line 1414
    .line 1415
    if-ne v1, v7, :cond_40

    .line 1416
    .line 1417
    const/4 v7, 0x0

    .line 1418
    iput-object v7, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->e:[I

    .line 1419
    .line 1420
    const/16 v7, 0x9

    .line 1421
    .line 1422
    iput v7, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->a:I

    .line 1423
    .line 1424
    :cond_40
    iput v13, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->q:I

    .line 1425
    .line 1426
    iput v14, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->p:I

    .line 1427
    .line 1428
    iput v4, v5, Lcom/jcraft/jsch/jzlib/ZStream;->c:I

    .line 1429
    .line 1430
    iget-wide v9, v5, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 1431
    .line 1432
    iget v4, v5, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 1433
    .line 1434
    sub-int v4, v6, v4

    .line 1435
    .line 1436
    int-to-long v12, v4

    .line 1437
    add-long/2addr v9, v12

    .line 1438
    iput-wide v9, v5, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 1439
    .line 1440
    iput v6, v5, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 1441
    .line 1442
    iput v8, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->v:I

    .line 1443
    .line 1444
    invoke-virtual {v2, v1}, Lcom/jcraft/jsch/jzlib/InfBlocks;->a(I)I

    .line 1445
    .line 1446
    .line 1447
    move-result v1

    .line 1448
    move v8, v1

    .line 1449
    move/from16 v19, v11

    .line 1450
    .line 1451
    :goto_1c
    const/4 v14, -0x3

    .line 1452
    goto/16 :goto_35

    .line 1453
    .line 1454
    :cond_41
    const/4 v9, 0x0

    .line 1455
    aget v1, v59, v9

    .line 1456
    .line 1457
    aget v7, v61, v9

    .line 1458
    .line 1459
    iget-object v11, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->r:[I

    .line 1460
    .line 1461
    move/from16 v43, v4

    .line 1462
    .line 1463
    aget v4, v62, v9

    .line 1464
    .line 1465
    move/from16 v45, v6

    .line 1466
    .line 1467
    aget v6, v60, v9

    .line 1468
    .line 1469
    iput v9, v12, Lcom/jcraft/jsch/jzlib/InfCodes;->a:I

    .line 1470
    .line 1471
    int-to-byte v1, v1

    .line 1472
    iput-byte v1, v12, Lcom/jcraft/jsch/jzlib/InfCodes;->i:B

    .line 1473
    .line 1474
    int-to-byte v1, v7

    .line 1475
    iput-byte v1, v12, Lcom/jcraft/jsch/jzlib/InfCodes;->j:B

    .line 1476
    .line 1477
    iput-object v11, v12, Lcom/jcraft/jsch/jzlib/InfCodes;->k:[I

    .line 1478
    .line 1479
    iput v4, v12, Lcom/jcraft/jsch/jzlib/InfCodes;->l:I

    .line 1480
    .line 1481
    iput-object v11, v12, Lcom/jcraft/jsch/jzlib/InfCodes;->m:[I

    .line 1482
    .line 1483
    iput v6, v12, Lcom/jcraft/jsch/jzlib/InfCodes;->n:I

    .line 1484
    .line 1485
    const/4 v4, 0x0

    .line 1486
    iput-object v4, v12, Lcom/jcraft/jsch/jzlib/InfCodes;->c:[I

    .line 1487
    .line 1488
    move/from16 v1, v16

    .line 1489
    .line 1490
    iput v1, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->a:I

    .line 1491
    .line 1492
    move v11, v13

    .line 1493
    move v13, v14

    .line 1494
    move/from16 v4, v43

    .line 1495
    .line 1496
    move/from16 v6, v45

    .line 1497
    .line 1498
    move/from16 v1, v64

    .line 1499
    .line 1500
    :goto_1d
    iput v11, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->q:I

    .line 1501
    .line 1502
    iput v13, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->p:I

    .line 1503
    .line 1504
    iput v4, v5, Lcom/jcraft/jsch/jzlib/ZStream;->c:I

    .line 1505
    .line 1506
    iget-wide v13, v5, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 1507
    .line 1508
    iget v4, v5, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 1509
    .line 1510
    sub-int v4, v6, v4

    .line 1511
    .line 1512
    move/from16 v46, v10

    .line 1513
    .line 1514
    int-to-long v9, v4

    .line 1515
    add-long/2addr v13, v9

    .line 1516
    iput-wide v13, v5, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 1517
    .line 1518
    iput v6, v5, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 1519
    .line 1520
    iput v8, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->v:I

    .line 1521
    .line 1522
    invoke-virtual {v12, v1}, Lcom/jcraft/jsch/jzlib/InfCodes;->a(I)I

    .line 1523
    .line 1524
    .line 1525
    move-result v1

    .line 1526
    const/4 v4, 0x1

    .line 1527
    if-eq v1, v4, :cond_42

    .line 1528
    .line 1529
    invoke-virtual {v2, v1}, Lcom/jcraft/jsch/jzlib/InfBlocks;->a(I)I

    .line 1530
    .line 1531
    .line 1532
    move-result v1

    .line 1533
    goto/16 :goto_11

    .line 1534
    .line 1535
    :cond_42
    iget v6, v5, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 1536
    .line 1537
    iget v1, v5, Lcom/jcraft/jsch/jzlib/ZStream;->c:I

    .line 1538
    .line 1539
    iget v11, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->q:I

    .line 1540
    .line 1541
    iget v13, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->p:I

    .line 1542
    .line 1543
    iget v8, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->v:I

    .line 1544
    .line 1545
    iget v7, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->u:I

    .line 1546
    .line 1547
    if-ge v8, v7, :cond_43

    .line 1548
    .line 1549
    sub-int/2addr v7, v8

    .line 1550
    sub-int/2addr v7, v4

    .line 1551
    move/from16 v43, v7

    .line 1552
    .line 1553
    goto :goto_1e

    .line 1554
    :cond_43
    sub-int v10, v46, v8

    .line 1555
    .line 1556
    move/from16 v43, v10

    .line 1557
    .line 1558
    :goto_1e
    iget v4, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->o:I

    .line 1559
    .line 1560
    if-nez v4, :cond_44

    .line 1561
    .line 1562
    const/4 v9, 0x0

    .line 1563
    iput v9, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->a:I

    .line 1564
    .line 1565
    move v4, v1

    .line 1566
    move-object/from16 v7, v42

    .line 1567
    .line 1568
    move/from16 v10, v46

    .line 1569
    .line 1570
    :goto_1f
    move/from16 v1, v63

    .line 1571
    .line 1572
    move-object/from16 v50, v65

    .line 1573
    .line 1574
    move-object/from16 v49, v66

    .line 1575
    .line 1576
    const/4 v9, 0x0

    .line 1577
    :goto_20
    const/16 v16, 0x6

    .line 1578
    .line 1579
    const/16 v32, -0x3

    .line 1580
    .line 1581
    goto/16 :goto_9

    .line 1582
    .line 1583
    :cond_44
    const/4 v10, 0x7

    .line 1584
    iput v10, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->a:I

    .line 1585
    .line 1586
    move v4, v1

    .line 1587
    const/4 v1, 0x0

    .line 1588
    :goto_21
    iput v8, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->v:I

    .line 1589
    .line 1590
    invoke-virtual {v2, v1}, Lcom/jcraft/jsch/jzlib/InfBlocks;->a(I)I

    .line 1591
    .line 1592
    .line 1593
    move-result v1

    .line 1594
    iget v8, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->v:I

    .line 1595
    .line 1596
    iget v7, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->u:I

    .line 1597
    .line 1598
    if-eq v7, v8, :cond_45

    .line 1599
    .line 1600
    iput v11, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->q:I

    .line 1601
    .line 1602
    iput v13, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->p:I

    .line 1603
    .line 1604
    iput v4, v5, Lcom/jcraft/jsch/jzlib/ZStream;->c:I

    .line 1605
    .line 1606
    iget-wide v10, v5, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 1607
    .line 1608
    iget v4, v5, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 1609
    .line 1610
    sub-int v4, v6, v4

    .line 1611
    .line 1612
    int-to-long v12, v4

    .line 1613
    add-long/2addr v10, v12

    .line 1614
    iput-wide v10, v5, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 1615
    .line 1616
    iput v6, v5, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 1617
    .line 1618
    iput v8, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->v:I

    .line 1619
    .line 1620
    invoke-virtual {v2, v1}, Lcom/jcraft/jsch/jzlib/InfBlocks;->a(I)I

    .line 1621
    .line 1622
    .line 1623
    move-result v1

    .line 1624
    goto/16 :goto_11

    .line 1625
    .line 1626
    :cond_45
    const/16 v1, 0x8

    .line 1627
    .line 1628
    iput v1, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->a:I

    .line 1629
    .line 1630
    :goto_22
    iput v11, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->q:I

    .line 1631
    .line 1632
    iput v13, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->p:I

    .line 1633
    .line 1634
    iput v4, v5, Lcom/jcraft/jsch/jzlib/ZStream;->c:I

    .line 1635
    .line 1636
    iget-wide v10, v5, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 1637
    .line 1638
    iget v1, v5, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 1639
    .line 1640
    sub-int v1, v6, v1

    .line 1641
    .line 1642
    int-to-long v12, v1

    .line 1643
    add-long/2addr v10, v12

    .line 1644
    iput-wide v10, v5, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 1645
    .line 1646
    iput v6, v5, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 1647
    .line 1648
    iput v8, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->v:I

    .line 1649
    .line 1650
    const/4 v4, 0x1

    .line 1651
    invoke-virtual {v2, v4}, Lcom/jcraft/jsch/jzlib/InfBlocks;->a(I)I

    .line 1652
    .line 1653
    .line 1654
    move-result v1

    .line 1655
    goto/16 :goto_11

    .line 1656
    .line 1657
    :cond_46
    move/from16 v43, v4

    .line 1658
    .line 1659
    move/from16 v45, v6

    .line 1660
    .line 1661
    move-object/from16 v42, v7

    .line 1662
    .line 1663
    move/from16 v46, v10

    .line 1664
    .line 1665
    const/4 v9, 0x0

    .line 1666
    const/4 v10, 0x7

    .line 1667
    aget v1, v65, v9

    .line 1668
    .line 1669
    move/from16 v11, v64

    .line 1670
    .line 1671
    :goto_23
    if-ge v14, v1, :cond_48

    .line 1672
    .line 1673
    if-eqz v4, :cond_47

    .line 1674
    .line 1675
    add-int/lit8 v4, v4, -0x1

    .line 1676
    .line 1677
    iget-object v7, v5, Lcom/jcraft/jsch/jzlib/ZStream;->a:[B

    .line 1678
    .line 1679
    add-int/lit8 v11, v6, 0x1

    .line 1680
    .line 1681
    aget-byte v6, v7, v6

    .line 1682
    .line 1683
    and-int/lit16 v6, v6, 0xff

    .line 1684
    .line 1685
    shl-int/2addr v6, v14

    .line 1686
    or-int/2addr v13, v6

    .line 1687
    add-int/lit8 v14, v14, 0x8

    .line 1688
    .line 1689
    move v6, v11

    .line 1690
    const/4 v11, 0x0

    .line 1691
    goto :goto_23

    .line 1692
    :cond_47
    iput v13, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->q:I

    .line 1693
    .line 1694
    iput v14, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->p:I

    .line 1695
    .line 1696
    iput v4, v5, Lcom/jcraft/jsch/jzlib/ZStream;->c:I

    .line 1697
    .line 1698
    iget-wide v12, v5, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 1699
    .line 1700
    iget v1, v5, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 1701
    .line 1702
    sub-int v1, v6, v1

    .line 1703
    .line 1704
    int-to-long v9, v1

    .line 1705
    add-long/2addr v12, v9

    .line 1706
    iput-wide v12, v5, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 1707
    .line 1708
    iput v6, v5, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 1709
    .line 1710
    iput v8, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->v:I

    .line 1711
    .line 1712
    invoke-virtual {v2, v11}, Lcom/jcraft/jsch/jzlib/InfBlocks;->a(I)I

    .line 1713
    .line 1714
    .line 1715
    move-result v1

    .line 1716
    goto/16 :goto_11

    .line 1717
    .line 1718
    :cond_48
    const/4 v9, 0x0

    .line 1719
    aget v7, v66, v9

    .line 1720
    .line 1721
    iget-object v9, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->r:[I

    .line 1722
    .line 1723
    sget-object v41, Lcom/jcraft/jsch/jzlib/InfBlocks;->z:[I

    .line 1724
    .line 1725
    aget v1, v41, v1

    .line 1726
    .line 1727
    and-int/2addr v1, v13

    .line 1728
    add-int/2addr v1, v7

    .line 1729
    const/16 v20, 0x3

    .line 1730
    .line 1731
    mul-int/lit8 v1, v1, 0x3

    .line 1732
    .line 1733
    const/16 v33, 0x1

    .line 1734
    .line 1735
    add-int/lit8 v1, v1, 0x1

    .line 1736
    .line 1737
    aget v1, v9, v1

    .line 1738
    .line 1739
    aget v43, v41, v1

    .line 1740
    .line 1741
    and-int v43, v13, v43

    .line 1742
    .line 1743
    add-int v7, v7, v43

    .line 1744
    .line 1745
    mul-int/lit8 v7, v7, 0x3

    .line 1746
    .line 1747
    const/16 v54, 0x2

    .line 1748
    .line 1749
    add-int/lit8 v43, v7, 0x2

    .line 1750
    .line 1751
    aget v9, v9, v43

    .line 1752
    .line 1753
    const/16 v7, 0x10

    .line 1754
    .line 1755
    if-ge v9, v7, :cond_49

    .line 1756
    .line 1757
    ushr-int v7, v13, v1

    .line 1758
    .line 1759
    sub-int/2addr v14, v1

    .line 1760
    iget-object v1, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->e:[I

    .line 1761
    .line 1762
    iget v13, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->d:I

    .line 1763
    .line 1764
    add-int/lit8 v10, v13, 0x1

    .line 1765
    .line 1766
    iput v10, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->d:I

    .line 1767
    .line 1768
    aput v9, v1, v13

    .line 1769
    .line 1770
    move v13, v7

    .line 1771
    goto/16 :goto_27

    .line 1772
    .line 1773
    :cond_49
    const/16 v10, 0x12

    .line 1774
    .line 1775
    if-ne v9, v10, :cond_4a

    .line 1776
    .line 1777
    const/4 v7, 0x7

    .line 1778
    goto :goto_24

    .line 1779
    :cond_4a
    add-int/lit8 v7, v9, -0xe

    .line 1780
    .line 1781
    :goto_24
    if-ne v9, v10, :cond_4b

    .line 1782
    .line 1783
    const/16 v43, 0xb

    .line 1784
    .line 1785
    goto :goto_25

    .line 1786
    :cond_4b
    const/16 v43, 0x3

    .line 1787
    .line 1788
    :goto_25
    add-int v10, v1, v7

    .line 1789
    .line 1790
    if-ge v14, v10, :cond_4d

    .line 1791
    .line 1792
    if-eqz v4, :cond_4c

    .line 1793
    .line 1794
    add-int/lit8 v4, v4, -0x1

    .line 1795
    .line 1796
    iget-object v10, v5, Lcom/jcraft/jsch/jzlib/ZStream;->a:[B

    .line 1797
    .line 1798
    add-int/lit8 v11, v6, 0x1

    .line 1799
    .line 1800
    aget-byte v6, v10, v6

    .line 1801
    .line 1802
    and-int/lit16 v6, v6, 0xff

    .line 1803
    .line 1804
    shl-int/2addr v6, v14

    .line 1805
    or-int/2addr v13, v6

    .line 1806
    add-int/lit8 v14, v14, 0x8

    .line 1807
    .line 1808
    move v6, v11

    .line 1809
    const/4 v11, 0x0

    .line 1810
    goto :goto_25

    .line 1811
    :cond_4c
    iput v13, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->q:I

    .line 1812
    .line 1813
    iput v14, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->p:I

    .line 1814
    .line 1815
    iput v4, v5, Lcom/jcraft/jsch/jzlib/ZStream;->c:I

    .line 1816
    .line 1817
    iget-wide v9, v5, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 1818
    .line 1819
    iget v1, v5, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 1820
    .line 1821
    sub-int v1, v6, v1

    .line 1822
    .line 1823
    int-to-long v12, v1

    .line 1824
    add-long/2addr v9, v12

    .line 1825
    iput-wide v9, v5, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 1826
    .line 1827
    iput v6, v5, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 1828
    .line 1829
    iput v8, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->v:I

    .line 1830
    .line 1831
    invoke-virtual {v2, v11}, Lcom/jcraft/jsch/jzlib/InfBlocks;->a(I)I

    .line 1832
    .line 1833
    .line 1834
    move-result v1

    .line 1835
    goto/16 :goto_11

    .line 1836
    .line 1837
    :cond_4d
    ushr-int v10, v13, v1

    .line 1838
    .line 1839
    sub-int/2addr v14, v1

    .line 1840
    aget v1, v41, v7

    .line 1841
    .line 1842
    and-int/2addr v1, v10

    .line 1843
    add-int v43, v43, v1

    .line 1844
    .line 1845
    ushr-int v1, v10, v7

    .line 1846
    .line 1847
    sub-int/2addr v14, v7

    .line 1848
    iget v7, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->d:I

    .line 1849
    .line 1850
    iget v10, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->c:I

    .line 1851
    .line 1852
    add-int v13, v7, v43

    .line 1853
    .line 1854
    move/from16 v41, v10

    .line 1855
    .line 1856
    and-int/lit8 v10, v41, 0x1f

    .line 1857
    .line 1858
    add-int/lit16 v10, v10, 0x102

    .line 1859
    .line 1860
    const/16 v17, 0x5

    .line 1861
    .line 1862
    shr-int/lit8 v41, v41, 0x5

    .line 1863
    .line 1864
    and-int/lit8 v41, v41, 0x1f

    .line 1865
    .line 1866
    add-int v10, v10, v41

    .line 1867
    .line 1868
    if-gt v13, v10, :cond_4e

    .line 1869
    .line 1870
    const/16 v10, 0x10

    .line 1871
    .line 1872
    if-ne v9, v10, :cond_4f

    .line 1873
    .line 1874
    const/4 v13, 0x1

    .line 1875
    if-ge v7, v13, :cond_4f

    .line 1876
    .line 1877
    :cond_4e
    const/4 v7, 0x0

    .line 1878
    goto :goto_28

    .line 1879
    :cond_4f
    if-ne v9, v10, :cond_50

    .line 1880
    .line 1881
    iget-object v9, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->e:[I

    .line 1882
    .line 1883
    add-int/lit8 v10, v7, -0x1

    .line 1884
    .line 1885
    aget v9, v9, v10

    .line 1886
    .line 1887
    goto :goto_26

    .line 1888
    :cond_50
    const/4 v9, 0x0

    .line 1889
    :goto_26
    iget-object v10, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->e:[I

    .line 1890
    .line 1891
    add-int/lit8 v13, v7, 0x1

    .line 1892
    .line 1893
    aput v9, v10, v7

    .line 1894
    .line 1895
    add-int/lit8 v43, v43, -0x1

    .line 1896
    .line 1897
    if-nez v43, :cond_51

    .line 1898
    .line 1899
    iput v13, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->d:I

    .line 1900
    .line 1901
    move v13, v1

    .line 1902
    :goto_27
    move-object/from16 v7, v42

    .line 1903
    .line 1904
    move/from16 v10, v46

    .line 1905
    .line 1906
    const/16 v16, 0x6

    .line 1907
    .line 1908
    const/16 v17, 0x5

    .line 1909
    .line 1910
    goto/16 :goto_15

    .line 1911
    .line 1912
    :cond_51
    move v7, v13

    .line 1913
    goto :goto_26

    .line 1914
    :goto_28
    iput-object v7, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->e:[I

    .line 1915
    .line 1916
    const/16 v7, 0x9

    .line 1917
    .line 1918
    iput v7, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->a:I

    .line 1919
    .line 1920
    const-string v7, "invalid bit length repeat"

    .line 1921
    .line 1922
    iput-object v7, v5, Lcom/jcraft/jsch/jzlib/ZStream;->i:Ljava/lang/String;

    .line 1923
    .line 1924
    iput v1, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->q:I

    .line 1925
    .line 1926
    iput v14, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->p:I

    .line 1927
    .line 1928
    iput v4, v5, Lcom/jcraft/jsch/jzlib/ZStream;->c:I

    .line 1929
    .line 1930
    iget-wide v9, v5, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 1931
    .line 1932
    iget v1, v5, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 1933
    .line 1934
    sub-int v1, v6, v1

    .line 1935
    .line 1936
    int-to-long v11, v1

    .line 1937
    add-long/2addr v9, v11

    .line 1938
    iput-wide v9, v5, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 1939
    .line 1940
    iput v6, v5, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 1941
    .line 1942
    iput v8, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->v:I

    .line 1943
    .line 1944
    const/4 v7, -0x3

    .line 1945
    invoke-virtual {v2, v7}, Lcom/jcraft/jsch/jzlib/InfBlocks;->a(I)I

    .line 1946
    .line 1947
    .line 1948
    move-result v1

    .line 1949
    move v8, v1

    .line 1950
    move v14, v7

    .line 1951
    goto/16 :goto_a

    .line 1952
    .line 1953
    :cond_52
    move/from16 v63, v1

    .line 1954
    .line 1955
    const/16 v19, -0x5

    .line 1956
    .line 1957
    const/16 v7, 0x9

    .line 1958
    .line 1959
    :goto_29
    iput v7, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->a:I

    .line 1960
    .line 1961
    const-string v1, "too many length or distance symbols"

    .line 1962
    .line 1963
    iput-object v1, v5, Lcom/jcraft/jsch/jzlib/ZStream;->i:Ljava/lang/String;

    .line 1964
    .line 1965
    iput v11, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->q:I

    .line 1966
    .line 1967
    iput v13, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->p:I

    .line 1968
    .line 1969
    iput v4, v5, Lcom/jcraft/jsch/jzlib/ZStream;->c:I

    .line 1970
    .line 1971
    iget-wide v9, v5, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 1972
    .line 1973
    iget v1, v5, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 1974
    .line 1975
    sub-int v1, v6, v1

    .line 1976
    .line 1977
    int-to-long v11, v1

    .line 1978
    add-long/2addr v9, v11

    .line 1979
    iput-wide v9, v5, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 1980
    .line 1981
    iput v6, v5, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 1982
    .line 1983
    iput v8, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->v:I

    .line 1984
    .line 1985
    const/4 v7, -0x3

    .line 1986
    invoke-virtual {v2, v7}, Lcom/jcraft/jsch/jzlib/InfBlocks;->a(I)I

    .line 1987
    .line 1988
    .line 1989
    move-result v1

    .line 1990
    :goto_2a
    move v8, v1

    .line 1991
    move v14, v7

    .line 1992
    goto/16 :goto_35

    .line 1993
    .line 1994
    :pswitch_19
    move/from16 v63, v1

    .line 1995
    .line 1996
    move-object/from16 v42, v7

    .line 1997
    .line 1998
    move/from16 v46, v10

    .line 1999
    .line 2000
    move-object/from16 v66, v49

    .line 2001
    .line 2002
    move-object/from16 v65, v50

    .line 2003
    .line 2004
    const/16 v19, -0x5

    .line 2005
    .line 2006
    const/16 v57, 0x13

    .line 2007
    .line 2008
    if-nez v4, :cond_53

    .line 2009
    .line 2010
    iput v11, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->q:I

    .line 2011
    .line 2012
    iput v13, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->p:I

    .line 2013
    .line 2014
    iput v4, v5, Lcom/jcraft/jsch/jzlib/ZStream;->c:I

    .line 2015
    .line 2016
    iget-wide v10, v5, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 2017
    .line 2018
    iget v1, v5, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 2019
    .line 2020
    sub-int v1, v6, v1

    .line 2021
    .line 2022
    int-to-long v12, v1

    .line 2023
    add-long/2addr v10, v12

    .line 2024
    iput-wide v10, v5, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 2025
    .line 2026
    iput v6, v5, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 2027
    .line 2028
    iput v8, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->v:I

    .line 2029
    .line 2030
    invoke-virtual {v2, v9}, Lcom/jcraft/jsch/jzlib/InfBlocks;->a(I)I

    .line 2031
    .line 2032
    .line 2033
    move-result v1

    .line 2034
    :goto_2b
    move v8, v1

    .line 2035
    goto/16 :goto_1c

    .line 2036
    .line 2037
    :cond_53
    move/from16 v1, v46

    .line 2038
    .line 2039
    if-nez v43, :cond_5a

    .line 2040
    .line 2041
    if-ne v8, v1, :cond_55

    .line 2042
    .line 2043
    iget v7, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->u:I

    .line 2044
    .line 2045
    if-eqz v7, :cond_55

    .line 2046
    .line 2047
    if-lez v7, :cond_54

    .line 2048
    .line 2049
    add-int/lit8 v7, v7, -0x1

    .line 2050
    .line 2051
    move/from16 v43, v7

    .line 2052
    .line 2053
    goto :goto_2c

    .line 2054
    :cond_54
    move/from16 v43, v1

    .line 2055
    .line 2056
    :goto_2c
    const/4 v8, 0x0

    .line 2057
    :cond_55
    if-nez v43, :cond_5a

    .line 2058
    .line 2059
    iput v8, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->v:I

    .line 2060
    .line 2061
    invoke-virtual {v2, v9}, Lcom/jcraft/jsch/jzlib/InfBlocks;->a(I)I

    .line 2062
    .line 2063
    .line 2064
    move-result v7

    .line 2065
    iget v9, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->v:I

    .line 2066
    .line 2067
    iget v8, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->u:I

    .line 2068
    .line 2069
    if-ge v9, v8, :cond_56

    .line 2070
    .line 2071
    sub-int v10, v8, v9

    .line 2072
    .line 2073
    const/16 v33, 0x1

    .line 2074
    .line 2075
    add-int/lit8 v10, v10, -0x1

    .line 2076
    .line 2077
    goto :goto_2d

    .line 2078
    :cond_56
    sub-int v10, v1, v9

    .line 2079
    .line 2080
    :goto_2d
    if-ne v9, v1, :cond_58

    .line 2081
    .line 2082
    if-eqz v8, :cond_58

    .line 2083
    .line 2084
    if-lez v8, :cond_57

    .line 2085
    .line 2086
    add-int/lit8 v8, v8, -0x1

    .line 2087
    .line 2088
    goto :goto_2e

    .line 2089
    :cond_57
    move v8, v1

    .line 2090
    :goto_2e
    move/from16 v43, v8

    .line 2091
    .line 2092
    const/4 v9, 0x0

    .line 2093
    goto :goto_2f

    .line 2094
    :cond_58
    move/from16 v43, v10

    .line 2095
    .line 2096
    :goto_2f
    if-nez v43, :cond_59

    .line 2097
    .line 2098
    iput v11, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->q:I

    .line 2099
    .line 2100
    iput v13, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->p:I

    .line 2101
    .line 2102
    iput v4, v5, Lcom/jcraft/jsch/jzlib/ZStream;->c:I

    .line 2103
    .line 2104
    iget-wide v10, v5, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 2105
    .line 2106
    iget v1, v5, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 2107
    .line 2108
    sub-int v1, v6, v1

    .line 2109
    .line 2110
    int-to-long v12, v1

    .line 2111
    add-long/2addr v10, v12

    .line 2112
    iput-wide v10, v5, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 2113
    .line 2114
    iput v6, v5, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 2115
    .line 2116
    iput v9, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->v:I

    .line 2117
    .line 2118
    invoke-virtual {v2, v7}, Lcom/jcraft/jsch/jzlib/InfBlocks;->a(I)I

    .line 2119
    .line 2120
    .line 2121
    move-result v1

    .line 2122
    goto :goto_2b

    .line 2123
    :cond_59
    move v8, v9

    .line 2124
    :cond_5a
    move/from16 v7, v43

    .line 2125
    .line 2126
    iget v9, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->b:I

    .line 2127
    .line 2128
    if-le v9, v4, :cond_5b

    .line 2129
    .line 2130
    move v9, v4

    .line 2131
    :cond_5b
    if-le v9, v7, :cond_5c

    .line 2132
    .line 2133
    move v9, v7

    .line 2134
    :cond_5c
    iget-object v10, v5, Lcom/jcraft/jsch/jzlib/ZStream;->a:[B

    .line 2135
    .line 2136
    iget-object v14, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->s:[B

    .line 2137
    .line 2138
    invoke-static {v10, v6, v14, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2139
    .line 2140
    .line 2141
    add-int/2addr v6, v9

    .line 2142
    sub-int/2addr v4, v9

    .line 2143
    add-int/2addr v8, v9

    .line 2144
    sub-int v43, v7, v9

    .line 2145
    .line 2146
    iget v7, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->b:I

    .line 2147
    .line 2148
    sub-int/2addr v7, v9

    .line 2149
    iput v7, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->b:I

    .line 2150
    .line 2151
    if-eqz v7, :cond_5d

    .line 2152
    .line 2153
    goto :goto_31

    .line 2154
    :cond_5d
    iget v7, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->o:I

    .line 2155
    .line 2156
    if-eqz v7, :cond_5e

    .line 2157
    .line 2158
    const/4 v9, 0x7

    .line 2159
    goto :goto_30

    .line 2160
    :cond_5e
    const/4 v9, 0x0

    .line 2161
    :goto_30
    iput v9, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->a:I

    .line 2162
    .line 2163
    :goto_31
    move v10, v1

    .line 2164
    move-object/from16 v7, v42

    .line 2165
    .line 2166
    goto/16 :goto_1f

    .line 2167
    .line 2168
    :pswitch_1a
    move/from16 v63, v1

    .line 2169
    .line 2170
    move-object/from16 v42, v7

    .line 2171
    .line 2172
    move v1, v10

    .line 2173
    move-object/from16 v66, v49

    .line 2174
    .line 2175
    move-object/from16 v65, v50

    .line 2176
    .line 2177
    const/16 v19, -0x5

    .line 2178
    .line 2179
    const/16 v57, 0x13

    .line 2180
    .line 2181
    :goto_32
    const/16 v7, 0x20

    .line 2182
    .line 2183
    if-ge v13, v7, :cond_60

    .line 2184
    .line 2185
    if-eqz v4, :cond_5f

    .line 2186
    .line 2187
    add-int/lit8 v4, v4, -0x1

    .line 2188
    .line 2189
    iget-object v7, v5, Lcom/jcraft/jsch/jzlib/ZStream;->a:[B

    .line 2190
    .line 2191
    add-int/lit8 v9, v6, 0x1

    .line 2192
    .line 2193
    aget-byte v6, v7, v6

    .line 2194
    .line 2195
    and-int/lit16 v6, v6, 0xff

    .line 2196
    .line 2197
    shl-int/2addr v6, v13

    .line 2198
    or-int/2addr v11, v6

    .line 2199
    add-int/lit8 v13, v13, 0x8

    .line 2200
    .line 2201
    move v6, v9

    .line 2202
    const/4 v9, 0x0

    .line 2203
    goto :goto_32

    .line 2204
    :cond_5f
    iput v11, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->q:I

    .line 2205
    .line 2206
    iput v13, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->p:I

    .line 2207
    .line 2208
    iput v4, v5, Lcom/jcraft/jsch/jzlib/ZStream;->c:I

    .line 2209
    .line 2210
    iget-wide v10, v5, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 2211
    .line 2212
    iget v1, v5, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 2213
    .line 2214
    sub-int v1, v6, v1

    .line 2215
    .line 2216
    int-to-long v12, v1

    .line 2217
    add-long/2addr v10, v12

    .line 2218
    iput-wide v10, v5, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 2219
    .line 2220
    iput v6, v5, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 2221
    .line 2222
    iput v8, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->v:I

    .line 2223
    .line 2224
    invoke-virtual {v2, v9}, Lcom/jcraft/jsch/jzlib/InfBlocks;->a(I)I

    .line 2225
    .line 2226
    .line 2227
    move-result v1

    .line 2228
    goto/16 :goto_2b

    .line 2229
    .line 2230
    :cond_60
    not-int v7, v11

    .line 2231
    const/16 v55, 0x10

    .line 2232
    .line 2233
    ushr-int/lit8 v7, v7, 0x10

    .line 2234
    .line 2235
    and-int v7, v7, v21

    .line 2236
    .line 2237
    and-int v10, v11, v21

    .line 2238
    .line 2239
    if-eq v7, v10, :cond_61

    .line 2240
    .line 2241
    const/16 v7, 0x9

    .line 2242
    .line 2243
    iput v7, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->a:I

    .line 2244
    .line 2245
    const-string v1, "invalid stored block lengths"

    .line 2246
    .line 2247
    iput-object v1, v5, Lcom/jcraft/jsch/jzlib/ZStream;->i:Ljava/lang/String;

    .line 2248
    .line 2249
    iput v11, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->q:I

    .line 2250
    .line 2251
    iput v13, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->p:I

    .line 2252
    .line 2253
    iput v4, v5, Lcom/jcraft/jsch/jzlib/ZStream;->c:I

    .line 2254
    .line 2255
    iget-wide v9, v5, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 2256
    .line 2257
    iget v1, v5, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 2258
    .line 2259
    sub-int v1, v6, v1

    .line 2260
    .line 2261
    int-to-long v11, v1

    .line 2262
    add-long/2addr v9, v11

    .line 2263
    iput-wide v9, v5, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 2264
    .line 2265
    iput v6, v5, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 2266
    .line 2267
    iput v8, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->v:I

    .line 2268
    .line 2269
    const/4 v7, -0x3

    .line 2270
    invoke-virtual {v2, v7}, Lcom/jcraft/jsch/jzlib/InfBlocks;->a(I)I

    .line 2271
    .line 2272
    .line 2273
    move-result v1

    .line 2274
    goto/16 :goto_2a

    .line 2275
    .line 2276
    :cond_61
    iput v10, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->b:I

    .line 2277
    .line 2278
    if-eqz v10, :cond_62

    .line 2279
    .line 2280
    const/4 v7, 0x2

    .line 2281
    goto :goto_33

    .line 2282
    :cond_62
    iget v7, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->o:I

    .line 2283
    .line 2284
    if-eqz v7, :cond_63

    .line 2285
    .line 2286
    const/4 v7, 0x7

    .line 2287
    goto :goto_33

    .line 2288
    :cond_63
    const/4 v7, 0x0

    .line 2289
    :goto_33
    iput v7, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->a:I

    .line 2290
    .line 2291
    move v10, v1

    .line 2292
    move-object/from16 v7, v42

    .line 2293
    .line 2294
    move/from16 v1, v63

    .line 2295
    .line 2296
    move-object/from16 v50, v65

    .line 2297
    .line 2298
    move-object/from16 v49, v66

    .line 2299
    .line 2300
    const/4 v11, 0x0

    .line 2301
    const/4 v13, 0x0

    .line 2302
    goto/16 :goto_20

    .line 2303
    .line 2304
    :pswitch_1b
    move/from16 v63, v1

    .line 2305
    .line 2306
    move-object/from16 v42, v7

    .line 2307
    .line 2308
    move v1, v10

    .line 2309
    move-object/from16 v66, v49

    .line 2310
    .line 2311
    move-object/from16 v65, v50

    .line 2312
    .line 2313
    const/16 v19, -0x5

    .line 2314
    .line 2315
    const/16 v57, 0x13

    .line 2316
    .line 2317
    move v10, v9

    .line 2318
    :goto_34
    const/4 v7, 0x3

    .line 2319
    if-ge v13, v7, :cond_65

    .line 2320
    .line 2321
    if-eqz v4, :cond_64

    .line 2322
    .line 2323
    add-int/lit8 v4, v4, -0x1

    .line 2324
    .line 2325
    iget-object v7, v5, Lcom/jcraft/jsch/jzlib/ZStream;->a:[B

    .line 2326
    .line 2327
    add-int/lit8 v9, v6, 0x1

    .line 2328
    .line 2329
    aget-byte v6, v7, v6

    .line 2330
    .line 2331
    and-int/lit16 v6, v6, 0xff

    .line 2332
    .line 2333
    shl-int/2addr v6, v13

    .line 2334
    or-int/2addr v11, v6

    .line 2335
    add-int/lit8 v13, v13, 0x8

    .line 2336
    .line 2337
    move v6, v9

    .line 2338
    const/4 v10, 0x0

    .line 2339
    goto :goto_34

    .line 2340
    :cond_64
    iput v11, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->q:I

    .line 2341
    .line 2342
    iput v13, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->p:I

    .line 2343
    .line 2344
    iput v4, v5, Lcom/jcraft/jsch/jzlib/ZStream;->c:I

    .line 2345
    .line 2346
    iget-wide v11, v5, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 2347
    .line 2348
    iget v1, v5, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 2349
    .line 2350
    sub-int v1, v6, v1

    .line 2351
    .line 2352
    int-to-long v13, v1

    .line 2353
    add-long/2addr v11, v13

    .line 2354
    iput-wide v11, v5, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 2355
    .line 2356
    iput v6, v5, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 2357
    .line 2358
    iput v8, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->v:I

    .line 2359
    .line 2360
    invoke-virtual {v2, v10}, Lcom/jcraft/jsch/jzlib/InfBlocks;->a(I)I

    .line 2361
    .line 2362
    .line 2363
    move-result v1

    .line 2364
    goto/16 :goto_2b

    .line 2365
    .line 2366
    :cond_65
    and-int/lit8 v7, v11, 0x7

    .line 2367
    .line 2368
    and-int/lit8 v9, v11, 0x1

    .line 2369
    .line 2370
    iput v9, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->o:I

    .line 2371
    .line 2372
    const/4 v9, 0x1

    .line 2373
    ushr-int/lit8 v14, v7, 0x1

    .line 2374
    .line 2375
    if-eqz v14, :cond_77

    .line 2376
    .line 2377
    if-eq v14, v9, :cond_76

    .line 2378
    .line 2379
    const/4 v7, 0x2

    .line 2380
    if-eq v14, v7, :cond_75

    .line 2381
    .line 2382
    const/4 v9, 0x3

    .line 2383
    if-eq v14, v9, :cond_66

    .line 2384
    .line 2385
    move/from16 v46, v1

    .line 2386
    .line 2387
    const/4 v7, 0x0

    .line 2388
    const/16 v18, 0x9

    .line 2389
    .line 2390
    const/16 v29, 0xb

    .line 2391
    .line 2392
    const/16 v32, 0xc

    .line 2393
    .line 2394
    move/from16 v1, p1

    .line 2395
    .line 2396
    goto/16 :goto_3e

    .line 2397
    .line 2398
    :cond_66
    ushr-int/lit8 v1, v11, 0x3

    .line 2399
    .line 2400
    add-int/lit8 v13, v13, -0x3

    .line 2401
    .line 2402
    const/16 v7, 0x9

    .line 2403
    .line 2404
    iput v7, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->a:I

    .line 2405
    .line 2406
    const-string v7, "invalid block type"

    .line 2407
    .line 2408
    iput-object v7, v5, Lcom/jcraft/jsch/jzlib/ZStream;->i:Ljava/lang/String;

    .line 2409
    .line 2410
    iput v1, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->q:I

    .line 2411
    .line 2412
    iput v13, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->p:I

    .line 2413
    .line 2414
    iput v4, v5, Lcom/jcraft/jsch/jzlib/ZStream;->c:I

    .line 2415
    .line 2416
    iget-wide v9, v5, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 2417
    .line 2418
    iget v1, v5, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 2419
    .line 2420
    sub-int v1, v6, v1

    .line 2421
    .line 2422
    int-to-long v11, v1

    .line 2423
    add-long/2addr v9, v11

    .line 2424
    iput-wide v9, v5, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 2425
    .line 2426
    iput v6, v5, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 2427
    .line 2428
    iput v8, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->v:I

    .line 2429
    .line 2430
    const/4 v14, -0x3

    .line 2431
    invoke-virtual {v2, v14}, Lcom/jcraft/jsch/jzlib/InfBlocks;->a(I)I

    .line 2432
    .line 2433
    .line 2434
    move-result v1

    .line 2435
    move v8, v1

    .line 2436
    :goto_35
    if-ne v8, v14, :cond_67

    .line 2437
    .line 2438
    const/16 v1, 0xd

    .line 2439
    .line 2440
    iput v1, v0, Lcom/jcraft/jsch/jzlib/Inflate;->a:I

    .line 2441
    .line 2442
    move/from16 v1, v63

    .line 2443
    .line 2444
    :goto_36
    const/4 v5, 0x4

    .line 2445
    goto/16 :goto_2

    .line 2446
    .line 2447
    :cond_67
    if-nez v8, :cond_68

    .line 2448
    .line 2449
    move/from16 v8, v63

    .line 2450
    .line 2451
    :cond_68
    const/4 v4, 0x1

    .line 2452
    if-eq v8, v4, :cond_69

    .line 2453
    .line 2454
    return v8

    .line 2455
    :cond_69
    iget-object v1, v3, Lcom/jcraft/jsch/jzlib/ZStream;->l:Lcom/jcraft/jsch/jzlib/Checksum;

    .line 2456
    .line 2457
    invoke-interface {v1}, Lcom/jcraft/jsch/jzlib/Checksum;->getValue()J

    .line 2458
    .line 2459
    .line 2460
    move-result-wide v1

    .line 2461
    iput-wide v1, v0, Lcom/jcraft/jsch/jzlib/Inflate;->b:J

    .line 2462
    .line 2463
    iget-object v1, v0, Lcom/jcraft/jsch/jzlib/Inflate;->f:Lcom/jcraft/jsch/jzlib/InfBlocks;

    .line 2464
    .line 2465
    invoke-virtual {v1}, Lcom/jcraft/jsch/jzlib/InfBlocks;->b()V

    .line 2466
    .line 2467
    .line 2468
    iget v1, v0, Lcom/jcraft/jsch/jzlib/Inflate;->d:I

    .line 2469
    .line 2470
    if-nez v1, :cond_6a

    .line 2471
    .line 2472
    const/16 v1, 0xc

    .line 2473
    .line 2474
    iput v1, v0, Lcom/jcraft/jsch/jzlib/Inflate;->a:I

    .line 2475
    .line 2476
    move/from16 v1, v63

    .line 2477
    .line 2478
    move v8, v1

    .line 2479
    goto :goto_36

    .line 2480
    :cond_6a
    const/16 v1, 0x8

    .line 2481
    .line 2482
    iput v1, v0, Lcom/jcraft/jsch/jzlib/Inflate;->a:I

    .line 2483
    .line 2484
    move/from16 v8, v63

    .line 2485
    .line 2486
    :goto_37
    iget v1, v3, Lcom/jcraft/jsch/jzlib/ZStream;->c:I

    .line 2487
    .line 2488
    if-nez v1, :cond_6b

    .line 2489
    .line 2490
    return v8

    .line 2491
    :cond_6b
    add-int/lit8 v1, v1, -0x1

    .line 2492
    .line 2493
    iput v1, v3, Lcom/jcraft/jsch/jzlib/ZStream;->c:I

    .line 2494
    .line 2495
    iget-wide v1, v3, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 2496
    .line 2497
    add-long v1, v1, v39

    .line 2498
    .line 2499
    iput-wide v1, v3, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 2500
    .line 2501
    iget-object v1, v3, Lcom/jcraft/jsch/jzlib/ZStream;->a:[B

    .line 2502
    .line 2503
    iget v2, v3, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 2504
    .line 2505
    add-int/lit8 v4, v2, 0x1

    .line 2506
    .line 2507
    iput v4, v3, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 2508
    .line 2509
    aget-byte v1, v1, v2

    .line 2510
    .line 2511
    and-int/lit16 v1, v1, 0xff

    .line 2512
    .line 2513
    shl-int/lit8 v1, v1, 0x18

    .line 2514
    .line 2515
    int-to-long v1, v1

    .line 2516
    and-long v1, v1, v26

    .line 2517
    .line 2518
    iput-wide v1, v0, Lcom/jcraft/jsch/jzlib/Inflate;->c:J

    .line 2519
    .line 2520
    const/16 v7, 0x9

    .line 2521
    .line 2522
    iput v7, v0, Lcom/jcraft/jsch/jzlib/Inflate;->a:I

    .line 2523
    .line 2524
    move/from16 v8, v63

    .line 2525
    .line 2526
    :goto_38
    iget v1, v3, Lcom/jcraft/jsch/jzlib/ZStream;->c:I

    .line 2527
    .line 2528
    if-nez v1, :cond_6c

    .line 2529
    .line 2530
    return v8

    .line 2531
    :cond_6c
    add-int/lit8 v1, v1, -0x1

    .line 2532
    .line 2533
    iput v1, v3, Lcom/jcraft/jsch/jzlib/ZStream;->c:I

    .line 2534
    .line 2535
    iget-wide v1, v3, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 2536
    .line 2537
    add-long v1, v1, v39

    .line 2538
    .line 2539
    iput-wide v1, v3, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 2540
    .line 2541
    iget-wide v1, v0, Lcom/jcraft/jsch/jzlib/Inflate;->c:J

    .line 2542
    .line 2543
    iget-object v4, v3, Lcom/jcraft/jsch/jzlib/ZStream;->a:[B

    .line 2544
    .line 2545
    iget v5, v3, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 2546
    .line 2547
    add-int/lit8 v6, v5, 0x1

    .line 2548
    .line 2549
    iput v6, v3, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 2550
    .line 2551
    aget-byte v4, v4, v5

    .line 2552
    .line 2553
    and-int/lit16 v4, v4, 0xff

    .line 2554
    .line 2555
    const/16 v55, 0x10

    .line 2556
    .line 2557
    shl-int/lit8 v4, v4, 0x10

    .line 2558
    .line 2559
    int-to-long v4, v4

    .line 2560
    and-long v4, v4, v36

    .line 2561
    .line 2562
    add-long/2addr v1, v4

    .line 2563
    iput-wide v1, v0, Lcom/jcraft/jsch/jzlib/Inflate;->c:J

    .line 2564
    .line 2565
    move/from16 v9, p1

    .line 2566
    .line 2567
    iput v9, v0, Lcom/jcraft/jsch/jzlib/Inflate;->a:I

    .line 2568
    .line 2569
    move/from16 v8, v63

    .line 2570
    .line 2571
    :goto_39
    iget v1, v3, Lcom/jcraft/jsch/jzlib/ZStream;->c:I

    .line 2572
    .line 2573
    if-nez v1, :cond_6d

    .line 2574
    .line 2575
    return v8

    .line 2576
    :cond_6d
    add-int/lit8 v1, v1, -0x1

    .line 2577
    .line 2578
    iput v1, v3, Lcom/jcraft/jsch/jzlib/ZStream;->c:I

    .line 2579
    .line 2580
    iget-wide v1, v3, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 2581
    .line 2582
    add-long v1, v1, v39

    .line 2583
    .line 2584
    iput-wide v1, v3, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 2585
    .line 2586
    iget-wide v1, v0, Lcom/jcraft/jsch/jzlib/Inflate;->c:J

    .line 2587
    .line 2588
    iget-object v4, v3, Lcom/jcraft/jsch/jzlib/ZStream;->a:[B

    .line 2589
    .line 2590
    iget v5, v3, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 2591
    .line 2592
    add-int/lit8 v6, v5, 0x1

    .line 2593
    .line 2594
    iput v6, v3, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 2595
    .line 2596
    aget-byte v4, v4, v5

    .line 2597
    .line 2598
    and-int/lit16 v4, v4, 0xff

    .line 2599
    .line 2600
    const/16 v56, 0x8

    .line 2601
    .line 2602
    shl-int/lit8 v4, v4, 0x8

    .line 2603
    .line 2604
    int-to-long v4, v4

    .line 2605
    and-long v4, v4, v34

    .line 2606
    .line 2607
    add-long/2addr v1, v4

    .line 2608
    iput-wide v1, v0, Lcom/jcraft/jsch/jzlib/Inflate;->c:J

    .line 2609
    .line 2610
    const/16 v1, 0xb

    .line 2611
    .line 2612
    iput v1, v0, Lcom/jcraft/jsch/jzlib/Inflate;->a:I

    .line 2613
    .line 2614
    move/from16 v8, v63

    .line 2615
    .line 2616
    :goto_3a
    iget v1, v3, Lcom/jcraft/jsch/jzlib/ZStream;->c:I

    .line 2617
    .line 2618
    if-nez v1, :cond_6e

    .line 2619
    .line 2620
    return v8

    .line 2621
    :cond_6e
    add-int/lit8 v1, v1, -0x1

    .line 2622
    .line 2623
    iput v1, v3, Lcom/jcraft/jsch/jzlib/ZStream;->c:I

    .line 2624
    .line 2625
    iget-wide v1, v3, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 2626
    .line 2627
    add-long v1, v1, v39

    .line 2628
    .line 2629
    iput-wide v1, v3, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 2630
    .line 2631
    iget-wide v1, v0, Lcom/jcraft/jsch/jzlib/Inflate;->c:J

    .line 2632
    .line 2633
    iget-object v4, v3, Lcom/jcraft/jsch/jzlib/ZStream;->a:[B

    .line 2634
    .line 2635
    iget v5, v3, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 2636
    .line 2637
    add-int/lit8 v6, v5, 0x1

    .line 2638
    .line 2639
    iput v6, v3, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 2640
    .line 2641
    aget-byte v4, v4, v5

    .line 2642
    .line 2643
    int-to-long v4, v4

    .line 2644
    and-long v4, v4, v24

    .line 2645
    .line 2646
    add-long/2addr v1, v4

    .line 2647
    iput-wide v1, v0, Lcom/jcraft/jsch/jzlib/Inflate;->c:J

    .line 2648
    .line 2649
    iget v4, v0, Lcom/jcraft/jsch/jzlib/Inflate;->h:I

    .line 2650
    .line 2651
    if-eqz v4, :cond_6f

    .line 2652
    .line 2653
    const-wide/32 v4, -0x1000000

    .line 2654
    .line 2655
    .line 2656
    and-long/2addr v4, v1

    .line 2657
    shr-long v4, v4, v38

    .line 2658
    .line 2659
    and-long v6, v1, v36

    .line 2660
    .line 2661
    const/16 v56, 0x8

    .line 2662
    .line 2663
    shr-long v6, v6, v56

    .line 2664
    .line 2665
    or-long/2addr v4, v6

    .line 2666
    and-long v6, v1, v34

    .line 2667
    .line 2668
    shl-long v6, v6, v56

    .line 2669
    .line 2670
    or-long/2addr v4, v6

    .line 2671
    and-long v1, v1, v30

    .line 2672
    .line 2673
    shl-long v1, v1, v38

    .line 2674
    .line 2675
    or-long/2addr v1, v4

    .line 2676
    and-long v1, v1, v22

    .line 2677
    .line 2678
    iput-wide v1, v0, Lcom/jcraft/jsch/jzlib/Inflate;->c:J

    .line 2679
    .line 2680
    :cond_6f
    iget-wide v1, v0, Lcom/jcraft/jsch/jzlib/Inflate;->b:J

    .line 2681
    .line 2682
    long-to-int v1, v1

    .line 2683
    iget-wide v4, v0, Lcom/jcraft/jsch/jzlib/Inflate;->c:J

    .line 2684
    .line 2685
    long-to-int v2, v4

    .line 2686
    if-eq v1, v2, :cond_70

    .line 2687
    .line 2688
    iput-object v15, v3, Lcom/jcraft/jsch/jzlib/ZStream;->i:Ljava/lang/String;

    .line 2689
    .line 2690
    :cond_70
    const/16 v1, 0xf

    .line 2691
    .line 2692
    iput v1, v0, Lcom/jcraft/jsch/jzlib/Inflate;->a:I

    .line 2693
    .line 2694
    move/from16 v8, v63

    .line 2695
    .line 2696
    :goto_3b
    iget v1, v0, Lcom/jcraft/jsch/jzlib/Inflate;->d:I

    .line 2697
    .line 2698
    if-eqz v1, :cond_74

    .line 2699
    .line 2700
    iget v1, v0, Lcom/jcraft/jsch/jzlib/Inflate;->h:I

    .line 2701
    .line 2702
    if-eqz v1, :cond_74

    .line 2703
    .line 2704
    move/from16 v1, v63

    .line 2705
    .line 2706
    const/4 v2, 0x4

    .line 2707
    :try_start_9
    invoke-virtual {v0, v2, v8, v1}, Lcom/jcraft/jsch/jzlib/Inflate;->c(III)I

    .line 2708
    .line 2709
    .line 2710
    move-result v8
    :try_end_9
    .catch Lcom/jcraft/jsch/jzlib/Inflate$Return; {:try_start_9 .. :try_end_9} :catch_9

    .line 2711
    iget-object v2, v3, Lcom/jcraft/jsch/jzlib/ZStream;->i:Ljava/lang/String;

    .line 2712
    .line 2713
    if-eqz v2, :cond_71

    .line 2714
    .line 2715
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2716
    .line 2717
    .line 2718
    move-result v2

    .line 2719
    if-eqz v2, :cond_71

    .line 2720
    .line 2721
    const/16 v2, 0xd

    .line 2722
    .line 2723
    iput v2, v0, Lcom/jcraft/jsch/jzlib/Inflate;->a:I

    .line 2724
    .line 2725
    goto/16 :goto_36

    .line 2726
    .line 2727
    :cond_71
    const/16 v2, 0xd

    .line 2728
    .line 2729
    iget-wide v4, v0, Lcom/jcraft/jsch/jzlib/Inflate;->c:J

    .line 2730
    .line 2731
    iget-wide v6, v3, Lcom/jcraft/jsch/jzlib/ZStream;->h:J

    .line 2732
    .line 2733
    and-long v6, v6, v22

    .line 2734
    .line 2735
    cmp-long v4, v4, v6

    .line 2736
    .line 2737
    if-eqz v4, :cond_72

    .line 2738
    .line 2739
    const-string v4, "incorrect length check"

    .line 2740
    .line 2741
    iput-object v4, v3, Lcom/jcraft/jsch/jzlib/ZStream;->i:Ljava/lang/String;

    .line 2742
    .line 2743
    iput v2, v0, Lcom/jcraft/jsch/jzlib/Inflate;->a:I

    .line 2744
    .line 2745
    goto/16 :goto_36

    .line 2746
    .line 2747
    :cond_72
    const/4 v4, 0x0

    .line 2748
    iput-object v4, v3, Lcom/jcraft/jsch/jzlib/ZStream;->i:Ljava/lang/String;

    .line 2749
    .line 2750
    :cond_73
    const/16 v1, 0xc

    .line 2751
    .line 2752
    goto :goto_3d

    .line 2753
    :catch_9
    move-exception v0

    .line 2754
    iget v0, v0, Lcom/jcraft/jsch/jzlib/Inflate$Return;->a:I

    .line 2755
    .line 2756
    :goto_3c
    return v0

    .line 2757
    :cond_74
    move/from16 v1, v63

    .line 2758
    .line 2759
    iget-object v2, v3, Lcom/jcraft/jsch/jzlib/ZStream;->i:Ljava/lang/String;

    .line 2760
    .line 2761
    if-eqz v2, :cond_73

    .line 2762
    .line 2763
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2764
    .line 2765
    .line 2766
    move-result v2

    .line 2767
    if-eqz v2, :cond_73

    .line 2768
    .line 2769
    const/16 v2, 0xd

    .line 2770
    .line 2771
    iput v2, v0, Lcom/jcraft/jsch/jzlib/Inflate;->a:I

    .line 2772
    .line 2773
    goto/16 :goto_36

    .line 2774
    .line 2775
    :goto_3d
    iput v1, v0, Lcom/jcraft/jsch/jzlib/Inflate;->a:I

    .line 2776
    .line 2777
    const/16 v33, 0x1

    .line 2778
    .line 2779
    return v33

    .line 2780
    :cond_75
    move/from16 v9, p1

    .line 2781
    .line 2782
    const/4 v14, -0x3

    .line 2783
    const/16 v29, 0xb

    .line 2784
    .line 2785
    const/16 v32, 0xc

    .line 2786
    .line 2787
    ushr-int/lit8 v11, v11, 0x3

    .line 2788
    .line 2789
    add-int/lit8 v13, v13, -0x3

    .line 2790
    .line 2791
    const/4 v7, 0x3

    .line 2792
    iput v7, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->a:I

    .line 2793
    .line 2794
    move/from16 v46, v1

    .line 2795
    .line 2796
    move v1, v9

    .line 2797
    const/4 v7, 0x0

    .line 2798
    const/16 v18, 0x9

    .line 2799
    .line 2800
    goto :goto_3e

    .line 2801
    :cond_76
    move/from16 v9, p1

    .line 2802
    .line 2803
    const/4 v14, -0x3

    .line 2804
    const/16 v29, 0xb

    .line 2805
    .line 2806
    const/16 v32, 0xc

    .line 2807
    .line 2808
    iget-object v7, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->j:[[I

    .line 2809
    .line 2810
    iget-object v9, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->k:[[I

    .line 2811
    .line 2812
    move-object/from16 v41, v9

    .line 2813
    .line 2814
    const/4 v9, 0x0

    .line 2815
    const/16 v18, 0x9

    .line 2816
    .line 2817
    aput v18, v59, v9

    .line 2818
    .line 2819
    const/4 v14, 0x5

    .line 2820
    aput v14, v61, v9

    .line 2821
    .line 2822
    sget-object v17, Lcom/jcraft/jsch/jzlib/InfTree;->g:[I

    .line 2823
    .line 2824
    aput-object v17, v7, v9

    .line 2825
    .line 2826
    sget-object v14, Lcom/jcraft/jsch/jzlib/InfTree;->h:[I

    .line 2827
    .line 2828
    aput-object v14, v41, v9

    .line 2829
    .line 2830
    move/from16 v46, v1

    .line 2831
    .line 2832
    aget v1, v59, v9

    .line 2833
    .line 2834
    aget-object v7, v7, v9

    .line 2835
    .line 2836
    iput v9, v12, Lcom/jcraft/jsch/jzlib/InfCodes;->a:I

    .line 2837
    .line 2838
    int-to-byte v1, v1

    .line 2839
    iput-byte v1, v12, Lcom/jcraft/jsch/jzlib/InfCodes;->i:B

    .line 2840
    .line 2841
    const/4 v1, 0x5

    .line 2842
    iput-byte v1, v12, Lcom/jcraft/jsch/jzlib/InfCodes;->j:B

    .line 2843
    .line 2844
    iput-object v7, v12, Lcom/jcraft/jsch/jzlib/InfCodes;->k:[I

    .line 2845
    .line 2846
    iput v9, v12, Lcom/jcraft/jsch/jzlib/InfCodes;->l:I

    .line 2847
    .line 2848
    iput-object v14, v12, Lcom/jcraft/jsch/jzlib/InfCodes;->m:[I

    .line 2849
    .line 2850
    iput v9, v12, Lcom/jcraft/jsch/jzlib/InfCodes;->n:I

    .line 2851
    .line 2852
    const/16 v1, 0xa

    .line 2853
    .line 2854
    const/4 v7, 0x0

    .line 2855
    iput-object v7, v12, Lcom/jcraft/jsch/jzlib/InfCodes;->c:[I

    .line 2856
    .line 2857
    ushr-int/lit8 v11, v11, 0x3

    .line 2858
    .line 2859
    add-int/lit8 v13, v13, -0x3

    .line 2860
    .line 2861
    const/4 v14, 0x6

    .line 2862
    iput v14, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->a:I

    .line 2863
    .line 2864
    goto :goto_3e

    .line 2865
    :cond_77
    move/from16 v46, v1

    .line 2866
    .line 2867
    const/4 v7, 0x0

    .line 2868
    const/16 v18, 0x9

    .line 2869
    .line 2870
    const/16 v29, 0xb

    .line 2871
    .line 2872
    const/16 v32, 0xc

    .line 2873
    .line 2874
    move/from16 v1, p1

    .line 2875
    .line 2876
    ushr-int/lit8 v11, v11, 0x3

    .line 2877
    .line 2878
    add-int/lit8 v13, v13, -0x3

    .line 2879
    .line 2880
    and-int/lit8 v14, v13, 0x7

    .line 2881
    .line 2882
    ushr-int/2addr v11, v14

    .line 2883
    sub-int/2addr v13, v14

    .line 2884
    const/4 v14, 0x1

    .line 2885
    iput v14, v2, Lcom/jcraft/jsch/jzlib/InfBlocks;->a:I

    .line 2886
    .line 2887
    :goto_3e
    move/from16 p1, v1

    .line 2888
    .line 2889
    move v9, v10

    .line 2890
    move-object/from16 v7, v42

    .line 2891
    .line 2892
    move/from16 v10, v46

    .line 2893
    .line 2894
    move/from16 v1, v63

    .line 2895
    .line 2896
    move-object/from16 v50, v65

    .line 2897
    .line 2898
    move-object/from16 v49, v66

    .line 2899
    .line 2900
    goto/16 :goto_20

    .line 2901
    .line 2902
    :pswitch_1c
    move v4, v12

    .line 2903
    iput v4, v0, Lcom/jcraft/jsch/jzlib/Inflate;->a:I

    .line 2904
    .line 2905
    const-string v0, "need dictionary"

    .line 2906
    .line 2907
    iput-object v0, v3, Lcom/jcraft/jsch/jzlib/ZStream;->i:Ljava/lang/String;

    .line 2908
    .line 2909
    const/16 v28, -0x2

    .line 2910
    .line 2911
    return v28

    .line 2912
    :pswitch_1d
    move v1, v8

    .line 2913
    goto/16 :goto_42

    .line 2914
    .line 2915
    :pswitch_1e
    move/from16 v63, v1

    .line 2916
    .line 2917
    goto :goto_41

    .line 2918
    :pswitch_1f
    move/from16 v63, v1

    .line 2919
    .line 2920
    goto :goto_40

    .line 2921
    :goto_3f
    iget v1, v3, Lcom/jcraft/jsch/jzlib/ZStream;->c:I

    .line 2922
    .line 2923
    if-nez v1, :cond_78

    .line 2924
    .line 2925
    return v8

    .line 2926
    :cond_78
    const/16 v33, 0x1

    .line 2927
    .line 2928
    add-int/lit8 v1, v1, -0x1

    .line 2929
    .line 2930
    iput v1, v3, Lcom/jcraft/jsch/jzlib/ZStream;->c:I

    .line 2931
    .line 2932
    iget-wide v1, v3, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 2933
    .line 2934
    add-long v1, v1, v39

    .line 2935
    .line 2936
    iput-wide v1, v3, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 2937
    .line 2938
    iget-object v1, v3, Lcom/jcraft/jsch/jzlib/ZStream;->a:[B

    .line 2939
    .line 2940
    iget v2, v3, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 2941
    .line 2942
    add-int/lit8 v4, v2, 0x1

    .line 2943
    .line 2944
    iput v4, v3, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 2945
    .line 2946
    aget-byte v1, v1, v2

    .line 2947
    .line 2948
    and-int/lit16 v1, v1, 0xff

    .line 2949
    .line 2950
    shl-int/lit8 v1, v1, 0x18

    .line 2951
    .line 2952
    int-to-long v1, v1

    .line 2953
    and-long v1, v1, v26

    .line 2954
    .line 2955
    iput-wide v1, v0, Lcom/jcraft/jsch/jzlib/Inflate;->c:J

    .line 2956
    .line 2957
    const/4 v7, 0x3

    .line 2958
    iput v7, v0, Lcom/jcraft/jsch/jzlib/Inflate;->a:I

    .line 2959
    .line 2960
    move/from16 v8, v63

    .line 2961
    .line 2962
    :goto_40
    iget v1, v3, Lcom/jcraft/jsch/jzlib/ZStream;->c:I

    .line 2963
    .line 2964
    if-nez v1, :cond_79

    .line 2965
    .line 2966
    return v8

    .line 2967
    :cond_79
    const/16 v33, 0x1

    .line 2968
    .line 2969
    add-int/lit8 v1, v1, -0x1

    .line 2970
    .line 2971
    iput v1, v3, Lcom/jcraft/jsch/jzlib/ZStream;->c:I

    .line 2972
    .line 2973
    iget-wide v1, v3, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 2974
    .line 2975
    add-long v1, v1, v39

    .line 2976
    .line 2977
    iput-wide v1, v3, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 2978
    .line 2979
    iget-wide v1, v0, Lcom/jcraft/jsch/jzlib/Inflate;->c:J

    .line 2980
    .line 2981
    iget-object v4, v3, Lcom/jcraft/jsch/jzlib/ZStream;->a:[B

    .line 2982
    .line 2983
    iget v5, v3, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 2984
    .line 2985
    add-int/lit8 v6, v5, 0x1

    .line 2986
    .line 2987
    iput v6, v3, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 2988
    .line 2989
    aget-byte v4, v4, v5

    .line 2990
    .line 2991
    and-int/lit16 v4, v4, 0xff

    .line 2992
    .line 2993
    const/16 v55, 0x10

    .line 2994
    .line 2995
    shl-int/lit8 v4, v4, 0x10

    .line 2996
    .line 2997
    int-to-long v4, v4

    .line 2998
    and-long v4, v4, v36

    .line 2999
    .line 3000
    add-long/2addr v1, v4

    .line 3001
    iput-wide v1, v0, Lcom/jcraft/jsch/jzlib/Inflate;->c:J

    .line 3002
    .line 3003
    const/4 v1, 0x4

    .line 3004
    iput v1, v0, Lcom/jcraft/jsch/jzlib/Inflate;->a:I

    .line 3005
    .line 3006
    move/from16 v8, v63

    .line 3007
    .line 3008
    :goto_41
    iget v1, v3, Lcom/jcraft/jsch/jzlib/ZStream;->c:I

    .line 3009
    .line 3010
    if-nez v1, :cond_7a

    .line 3011
    .line 3012
    return v8

    .line 3013
    :cond_7a
    const/16 v33, 0x1

    .line 3014
    .line 3015
    add-int/lit8 v1, v1, -0x1

    .line 3016
    .line 3017
    iput v1, v3, Lcom/jcraft/jsch/jzlib/ZStream;->c:I

    .line 3018
    .line 3019
    iget-wide v1, v3, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 3020
    .line 3021
    add-long v1, v1, v39

    .line 3022
    .line 3023
    iput-wide v1, v3, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 3024
    .line 3025
    iget-wide v1, v0, Lcom/jcraft/jsch/jzlib/Inflate;->c:J

    .line 3026
    .line 3027
    iget-object v4, v3, Lcom/jcraft/jsch/jzlib/ZStream;->a:[B

    .line 3028
    .line 3029
    iget v5, v3, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 3030
    .line 3031
    add-int/lit8 v6, v5, 0x1

    .line 3032
    .line 3033
    iput v6, v3, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 3034
    .line 3035
    aget-byte v4, v4, v5

    .line 3036
    .line 3037
    and-int/lit16 v4, v4, 0xff

    .line 3038
    .line 3039
    const/16 v56, 0x8

    .line 3040
    .line 3041
    shl-int/lit8 v4, v4, 0x8

    .line 3042
    .line 3043
    int-to-long v4, v4

    .line 3044
    and-long v4, v4, v34

    .line 3045
    .line 3046
    add-long/2addr v1, v4

    .line 3047
    iput-wide v1, v0, Lcom/jcraft/jsch/jzlib/Inflate;->c:J

    .line 3048
    .line 3049
    const/4 v1, 0x5

    .line 3050
    iput v1, v0, Lcom/jcraft/jsch/jzlib/Inflate;->a:I

    .line 3051
    .line 3052
    move/from16 v1, v63

    .line 3053
    .line 3054
    :goto_42
    iget v2, v3, Lcom/jcraft/jsch/jzlib/ZStream;->c:I

    .line 3055
    .line 3056
    if-nez v2, :cond_7b

    .line 3057
    .line 3058
    return v1

    .line 3059
    :cond_7b
    const/16 v33, 0x1

    .line 3060
    .line 3061
    add-int/lit8 v2, v2, -0x1

    .line 3062
    .line 3063
    iput v2, v3, Lcom/jcraft/jsch/jzlib/ZStream;->c:I

    .line 3064
    .line 3065
    iget-wide v1, v3, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 3066
    .line 3067
    add-long v1, v1, v39

    .line 3068
    .line 3069
    iput-wide v1, v3, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 3070
    .line 3071
    iget-wide v1, v0, Lcom/jcraft/jsch/jzlib/Inflate;->c:J

    .line 3072
    .line 3073
    iget-object v4, v3, Lcom/jcraft/jsch/jzlib/ZStream;->a:[B

    .line 3074
    .line 3075
    iget v5, v3, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 3076
    .line 3077
    add-int/lit8 v6, v5, 0x1

    .line 3078
    .line 3079
    iput v6, v3, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 3080
    .line 3081
    aget-byte v4, v4, v5

    .line 3082
    .line 3083
    int-to-long v4, v4

    .line 3084
    and-long v4, v4, v24

    .line 3085
    .line 3086
    add-long/2addr v1, v4

    .line 3087
    iput-wide v1, v0, Lcom/jcraft/jsch/jzlib/Inflate;->c:J

    .line 3088
    .line 3089
    iget-object v3, v3, Lcom/jcraft/jsch/jzlib/ZStream;->l:Lcom/jcraft/jsch/jzlib/Checksum;

    .line 3090
    .line 3091
    invoke-interface {v3, v1, v2}, Lcom/jcraft/jsch/jzlib/Checksum;->reset(J)V

    .line 3092
    .line 3093
    .line 3094
    const/4 v14, 0x6

    .line 3095
    iput v14, v0, Lcom/jcraft/jsch/jzlib/Inflate;->a:I

    .line 3096
    .line 3097
    const/4 v7, 0x2

    .line 3098
    return v7

    .line 3099
    :goto_43
    if-ne v1, v2, :cond_0

    .line 3100
    .line 3101
    iget v0, v0, Lcom/jcraft/jsch/jzlib/Inflate;->a:I

    .line 3102
    .line 3103
    const/16 v14, 0xe

    .line 3104
    .line 3105
    if-ne v0, v14, :cond_0

    .line 3106
    .line 3107
    const/4 v9, 0x0

    .line 3108
    return v9

    .line 3109
    :goto_44
    return v28

    .line 3110
    nop

    .line 3111
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_a
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_9
        :pswitch_8
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
    .end packed-switch

    .line 3112
    .line 3113
    .line 3114
    .line 3115
    .line 3116
    .line 3117
    .line 3118
    .line 3119
    .line 3120
    .line 3121
    .line 3122
    .line 3123
    .line 3124
    .line 3125
    .line 3126
    .line 3127
    .line 3128
    .line 3129
    .line 3130
    .line 3131
    .line 3132
    .line 3133
    .line 3134
    .line 3135
    .line 3136
    .line 3137
    .line 3138
    .line 3139
    .line 3140
    .line 3141
    .line 3142
    .line 3143
    .line 3144
    .line 3145
    .line 3146
    .line 3147
    .line 3148
    .line 3149
    .line 3150
    .line 3151
    .line 3152
    .line 3153
    .line 3154
    .line 3155
    .line 3156
    .line 3157
    .line 3158
    .line 3159
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch
.end method

.method public final d(IZ)I
    .locals 6

    .line 1
    new-instance v0, Lcom/jcraft/jsch/jzlib/Inflate;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/jcraft/jsch/jzlib/Inflate;-><init>(Lcom/jcraft/jsch/jzlib/ZStream;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/jcraft/jsch/jzlib/ZStream;->k:Lcom/jcraft/jsch/jzlib/Inflate;

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    neg-int p1, p1

    .line 11
    :cond_0
    const/4 p2, 0x0

    .line 12
    iput-object p2, p0, Lcom/jcraft/jsch/jzlib/ZStream;->i:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p2, v0, Lcom/jcraft/jsch/jzlib/Inflate;->f:Lcom/jcraft/jsch/jzlib/InfBlocks;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    iput v1, v0, Lcom/jcraft/jsch/jzlib/Inflate;->d:I

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    if-gez p1, :cond_1

    .line 21
    .line 22
    neg-int p1, p1

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    const/high16 v3, 0x40000000    # 2.0f

    .line 25
    .line 26
    and-int/2addr v3, p1

    .line 27
    const/16 v4, 0x30

    .line 28
    .line 29
    const/4 v5, 0x4

    .line 30
    if-eqz v3, :cond_3

    .line 31
    .line 32
    iput v5, v0, Lcom/jcraft/jsch/jzlib/Inflate;->d:I

    .line 33
    .line 34
    const v3, -0x40000001    # -1.9999999f

    .line 35
    .line 36
    .line 37
    and-int/2addr v3, p1

    .line 38
    if-ge v3, v4, :cond_2

    .line 39
    .line 40
    :goto_0
    and-int/lit8 p1, p1, 0xf

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    move p1, v3

    .line 44
    goto :goto_1

    .line 45
    :cond_3
    and-int/lit8 v3, p1, -0x20

    .line 46
    .line 47
    if-eqz v3, :cond_4

    .line 48
    .line 49
    iput v5, v0, Lcom/jcraft/jsch/jzlib/Inflate;->d:I

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_4
    shr-int/lit8 v3, p1, 0x4

    .line 53
    .line 54
    add-int/2addr v3, v2

    .line 55
    iput v3, v0, Lcom/jcraft/jsch/jzlib/Inflate;->d:I

    .line 56
    .line 57
    if-ge p1, v4, :cond_5

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_5
    :goto_1
    const/16 v3, 0x8

    .line 61
    .line 62
    if-lt p1, v3, :cond_7

    .line 63
    .line 64
    const/16 v3, 0xf

    .line 65
    .line 66
    if-le p1, v3, :cond_6

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_6
    iput p1, v0, Lcom/jcraft/jsch/jzlib/Inflate;->e:I

    .line 70
    .line 71
    new-instance v3, Lcom/jcraft/jsch/jzlib/InfBlocks;

    .line 72
    .line 73
    shl-int p1, v2, p1

    .line 74
    .line 75
    invoke-direct {v3, p0, p1}, Lcom/jcraft/jsch/jzlib/InfBlocks;-><init>(Lcom/jcraft/jsch/jzlib/ZStream;I)V

    .line 76
    .line 77
    .line 78
    iput-object v3, v0, Lcom/jcraft/jsch/jzlib/Inflate;->f:Lcom/jcraft/jsch/jzlib/InfBlocks;

    .line 79
    .line 80
    const-wide/16 v4, 0x0

    .line 81
    .line 82
    iput-wide v4, p0, Lcom/jcraft/jsch/jzlib/ZStream;->h:J

    .line 83
    .line 84
    iput-wide v4, p0, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 85
    .line 86
    iput-object p2, p0, Lcom/jcraft/jsch/jzlib/ZStream;->i:Ljava/lang/String;

    .line 87
    .line 88
    const/16 p0, 0xe

    .line 89
    .line 90
    iput p0, v0, Lcom/jcraft/jsch/jzlib/Inflate;->a:I

    .line 91
    .line 92
    const/4 p0, -0x1

    .line 93
    iput p0, v0, Lcom/jcraft/jsch/jzlib/Inflate;->i:I

    .line 94
    .line 95
    invoke-virtual {v3}, Lcom/jcraft/jsch/jzlib/InfBlocks;->b()V

    .line 96
    .line 97
    .line 98
    return v1

    .line 99
    :cond_7
    :goto_2
    const/4 p0, -0x2

    .line 100
    return p0
.end method
