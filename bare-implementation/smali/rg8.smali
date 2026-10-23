.class public final Lrg8;
.super Lsg8;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lai7;


# static fields
.field public static final n:Ll15;


# instance fields
.field public final d:Landroid/hardware/usb/UsbDeviceConnection;

.field public final e:Landroid/hardware/usb/UsbEndpoint;

.field public final f:Landroid/hardware/usb/UsbEndpoint;

.field public k:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lrg8;

    .line 2
    .line 3
    invoke-static {v0}, Lo15;->b(Ljava/lang/Class;)Ll15;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lrg8;->n:Ll15;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbInterface;Landroid/hardware/usb/UsbEndpoint;Landroid/hardware/usb/UsbEndpoint;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lsg8;-><init>(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbInterface;)V

    .line 2
    .line 3
    .line 4
    const/4 p2, 0x0

    .line 5
    iput-byte p2, p0, Lrg8;->k:B

    .line 6
    .line 7
    iput-object p1, p0, Lrg8;->d:Landroid/hardware/usb/UsbDeviceConnection;

    .line 8
    .line 9
    iput-object p3, p0, Lrg8;->f:Landroid/hardware/usb/UsbEndpoint;

    .line 10
    .line 11
    iput-object p4, p0, Lrg8;->e:Landroid/hardware/usb/UsbEndpoint;

    .line 12
    .line 13
    const/16 p1, 0x62

    .line 14
    .line 15
    new-array p2, p2, [B

    .line 16
    .line 17
    invoke-virtual {p0, p1, p2}, Lrg8;->a(B[B)[B

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final I([B)[B
    .locals 1

    .line 1
    const/16 v0, 0x6f

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lrg8;->a(B[B)[B

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final a(B[B)[B
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    array-length v2, v1

    .line 6
    iget-byte v3, v0, Lrg8;->k:B

    .line 7
    .line 8
    add-int/lit8 v4, v3, 0x1

    .line 9
    .line 10
    int-to-byte v4, v4

    .line 11
    iput-byte v4, v0, Lrg8;->k:B

    .line 12
    .line 13
    array-length v4, v1

    .line 14
    const/16 v5, 0xa

    .line 15
    .line 16
    add-int/2addr v4, v5

    .line 17
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 22
    .line 23
    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 28
    .line 29
    .line 30
    move-result-object v7

    .line 31
    invoke-virtual {v7, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    move/from16 v7, p1

    .line 36
    .line 37
    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    const/4 v6, 0x0

    .line 46
    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    sget-object v3, Lqg8;->g:[B

    .line 55
    .line 56
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    .line 73
    .line 74
    .line 75
    move-result-object v9

    .line 76
    move v1, v6

    .line 77
    move v10, v1

    .line 78
    :goto_0
    array-length v2, v9

    .line 79
    const/4 v3, 0x5

    .line 80
    sget-object v4, Lrg8;->n:Ll15;

    .line 81
    .line 82
    if-lt v10, v2, :cond_0

    .line 83
    .line 84
    iget-object v2, v0, Lrg8;->e:Landroid/hardware/usb/UsbEndpoint;

    .line 85
    .line 86
    invoke-virtual {v2}, Landroid/hardware/usb/UsbEndpoint;->getMaxPacketSize()I

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    if-ne v1, v2, :cond_2

    .line 91
    .line 92
    :cond_0
    array-length v1, v9

    .line 93
    sub-int v11, v1, v10

    .line 94
    .line 95
    const/16 v12, 0x3e8

    .line 96
    .line 97
    iget-object v7, v0, Lrg8;->d:Landroid/hardware/usb/UsbDeviceConnection;

    .line 98
    .line 99
    iget-object v8, v0, Lrg8;->e:Landroid/hardware/usb/UsbEndpoint;

    .line 100
    .line 101
    invoke-virtual/range {v7 .. v12}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BIII)I

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-lez v1, :cond_1

    .line 106
    .line 107
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-static {v9, v10, v1}, Lx13;->f([BII)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v7

    .line 115
    const-string v8, "{} bytes sent over ccid: {}"

    .line 116
    .line 117
    invoke-static {v3, v4, v8, v2, v7}, Lms8;->B(ILl15;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    add-int/2addr v10, v1

    .line 121
    goto :goto_0

    .line 122
    :cond_1
    if-ltz v1, :cond_11

    .line 123
    .line 124
    :cond_2
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 125
    .line 126
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 127
    .line 128
    .line 129
    iget-object v2, v0, Lrg8;->f:Landroid/hardware/usb/UsbEndpoint;

    .line 130
    .line 131
    invoke-virtual {v2}, Landroid/hardware/usb/UsbEndpoint;->getMaxPacketSize()I

    .line 132
    .line 133
    .line 134
    move-result v7

    .line 135
    new-array v8, v7, [B

    .line 136
    .line 137
    move v10, v6

    .line 138
    move v12, v10

    .line 139
    const/4 v11, 0x0

    .line 140
    :goto_1
    iget-object v13, v0, Lrg8;->d:Landroid/hardware/usb/UsbDeviceConnection;

    .line 141
    .line 142
    const/16 v14, 0x3e8

    .line 143
    .line 144
    invoke-virtual {v13, v2, v8, v7, v14}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    .line 145
    .line 146
    .line 147
    move-result v13

    .line 148
    if-lez v13, :cond_b

    .line 149
    .line 150
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 151
    .line 152
    .line 153
    move-result-object v14

    .line 154
    invoke-static {v8, v6, v13}, Lx13;->f([BII)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v15

    .line 158
    const/16 p1, 0x0

    .line 159
    .line 160
    const-string v9, "{} bytes received: {}"

    .line 161
    .line 162
    invoke-static {v3, v4, v9, v14, v15}, Lms8;->B(ILl15;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    if-eqz v10, :cond_3

    .line 166
    .line 167
    invoke-virtual {v1, v8, v6, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 168
    .line 169
    .line 170
    goto/16 :goto_4

    .line 171
    .line 172
    :cond_3
    new-instance v11, Lqg8;

    .line 173
    .line 174
    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 175
    .line 176
    .line 177
    if-le v7, v5, :cond_4

    .line 178
    .line 179
    invoke-static {v8, v6, v5}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    .line 180
    .line 181
    .line 182
    move-result-object v9

    .line 183
    sget-object v12, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 184
    .line 185
    invoke-virtual {v9, v12}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 186
    .line 187
    .line 188
    move-result-object v9

    .line 189
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->get()B

    .line 190
    .line 191
    .line 192
    move-result v12

    .line 193
    iput-byte v12, v11, Lqg8;->a:B

    .line 194
    .line 195
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getInt()I

    .line 196
    .line 197
    .line 198
    move-result v12

    .line 199
    iput v12, v11, Lqg8;->b:I

    .line 200
    .line 201
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->get()B

    .line 202
    .line 203
    .line 204
    move-result v12

    .line 205
    iput-byte v12, v11, Lqg8;->c:B

    .line 206
    .line 207
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->get()B

    .line 208
    .line 209
    .line 210
    move-result v12

    .line 211
    iput-byte v12, v11, Lqg8;->d:B

    .line 212
    .line 213
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->get()B

    .line 214
    .line 215
    .line 216
    move-result v12

    .line 217
    iput-byte v12, v11, Lqg8;->e:B

    .line 218
    .line 219
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->get()B

    .line 220
    .line 221
    .line 222
    move-result v12

    .line 223
    iput-byte v12, v11, Lqg8;->f:B

    .line 224
    .line 225
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->get()B

    .line 226
    .line 227
    .line 228
    :cond_4
    iget-byte v9, v11, Lqg8;->e:B

    .line 229
    .line 230
    and-int/lit8 v12, v9, -0x80

    .line 231
    .line 232
    const/16 v14, -0x80

    .line 233
    .line 234
    const/4 v15, 0x1

    .line 235
    if-ne v12, v14, :cond_5

    .line 236
    .line 237
    move v12, v15

    .line 238
    goto :goto_2

    .line 239
    :cond_5
    move v12, v6

    .line 240
    :goto_2
    iget-byte v3, v0, Lrg8;->k:B

    .line 241
    .line 242
    sub-int/2addr v3, v15

    .line 243
    int-to-byte v3, v3

    .line 244
    iget-byte v15, v11, Lqg8;->a:B

    .line 245
    .line 246
    if-eq v15, v14, :cond_6

    .line 247
    .line 248
    goto :goto_3

    .line 249
    :cond_6
    iget-byte v14, v11, Lqg8;->c:B

    .line 250
    .line 251
    if-eqz v14, :cond_7

    .line 252
    .line 253
    goto :goto_3

    .line 254
    :cond_7
    iget-byte v14, v11, Lqg8;->d:B

    .line 255
    .line 256
    if-eq v14, v3, :cond_8

    .line 257
    .line 258
    goto :goto_3

    .line 259
    :cond_8
    if-nez v9, :cond_9

    .line 260
    .line 261
    invoke-virtual {v1, v8, v6, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 262
    .line 263
    .line 264
    const/4 v10, 0x1

    .line 265
    goto :goto_4

    .line 266
    :cond_9
    :goto_3
    iget-byte v3, v11, Lqg8;->f:B

    .line 267
    .line 268
    if-eqz v3, :cond_c

    .line 269
    .line 270
    if-eqz v12, :cond_a

    .line 271
    .line 272
    goto :goto_4

    .line 273
    :cond_a
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 274
    .line 275
    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    const-string v2, "0x%02X"

    .line 284
    .line 285
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v1

    .line 289
    iget-byte v3, v11, Lqg8;->f:B

    .line 290
    .line 291
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 292
    .line 293
    .line 294
    move-result-object v3

    .line 295
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object v3

    .line 299
    invoke-static {v0, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    const/4 v2, 0x4

    .line 304
    const-string v3, "Invalid response from card reader bStatus={} and bError={}"

    .line 305
    .line 306
    invoke-static {v2, v4, v3, v1, v0}, Lms8;->B(ILl15;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 307
    .line 308
    .line 309
    const-string v0, "Invalid response from card reader"

    .line 310
    .line 311
    invoke-static {v0}, Ly5;->m(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    return-object p1

    .line 315
    :cond_b
    const/16 p1, 0x0

    .line 316
    .line 317
    if-ltz v13, :cond_10

    .line 318
    .line 319
    :cond_c
    :goto_4
    if-lez v13, :cond_d

    .line 320
    .line 321
    if-eq v13, v7, :cond_f

    .line 322
    .line 323
    :cond_d
    if-nez v12, :cond_f

    .line 324
    .line 325
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    if-eqz v11, :cond_e

    .line 330
    .line 331
    array-length v1, v0

    .line 332
    if-lt v1, v5, :cond_e

    .line 333
    .line 334
    array-length v1, v0

    .line 335
    sub-int/2addr v1, v5

    .line 336
    iget v2, v11, Lqg8;->b:I

    .line 337
    .line 338
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 339
    .line 340
    .line 341
    move-result v1

    .line 342
    add-int/2addr v1, v5

    .line 343
    invoke-static {v0, v5, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 344
    .line 345
    .line 346
    move-result-object v0

    .line 347
    return-object v0

    .line 348
    :cond_e
    const-string v0, "Response is invalid"

    .line 349
    .line 350
    invoke-static {v0}, Ly5;->m(Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    return-object p1

    .line 354
    :cond_f
    const/4 v3, 0x5

    .line 355
    goto/16 :goto_1

    .line 356
    .line 357
    :cond_10
    const-string v0, "Failed to read response"

    .line 358
    .line 359
    invoke-static {v0}, Ly5;->m(Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    return-object p1

    .line 363
    :cond_11
    new-instance v0, Ljava/io/IOException;

    .line 364
    .line 365
    array-length v1, v9

    .line 366
    sub-int/2addr v1, v10

    .line 367
    new-instance v2, Ljava/lang/StringBuilder;

    .line 368
    .line 369
    const-string v3, "Failed to send "

    .line 370
    .line 371
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    .line 377
    const-string v1, " bytes"

    .line 378
    .line 379
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v1

    .line 386
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 387
    .line 388
    .line 389
    throw v0
.end method

.method public final e0()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final l()I
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method
