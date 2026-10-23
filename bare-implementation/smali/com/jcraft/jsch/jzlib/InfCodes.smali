.class final Lcom/jcraft/jsch/jzlib/InfCodes;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final q:[I


# instance fields
.field public a:I

.field public b:I

.field public c:[I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:B

.field public j:B

.field public k:[I

.field public l:I

.field public m:[I

.field public n:I

.field public final o:Lcom/jcraft/jsch/jzlib/ZStream;

.field public final p:Lcom/jcraft/jsch/jzlib/InfBlocks;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x11

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/jcraft/jsch/jzlib/InfCodes;->q:[I

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 4
        0x0
        0x1
        0x3
        0x7
        0xf
        0x1f
        0x3f
        0x7f
        0xff
        0x1ff
        0x3ff
        0x7ff
        0xfff
        0x1fff
        0x3fff
        0x7fff
        0xffff
    .end array-data
.end method

.method public constructor <init>(Lcom/jcraft/jsch/jzlib/ZStream;Lcom/jcraft/jsch/jzlib/InfBlocks;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/jcraft/jsch/jzlib/InfCodes;->d:I

    .line 6
    .line 7
    iput-object p1, p0, Lcom/jcraft/jsch/jzlib/InfCodes;->o:Lcom/jcraft/jsch/jzlib/ZStream;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/jcraft/jsch/jzlib/InfCodes;->p:Lcom/jcraft/jsch/jzlib/InfBlocks;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/jcraft/jsch/jzlib/InfCodes;->o:Lcom/jcraft/jsch/jzlib/ZStream;

    .line 4
    .line 5
    iget v2, v1, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 6
    .line 7
    iget v3, v1, Lcom/jcraft/jsch/jzlib/ZStream;->c:I

    .line 8
    .line 9
    iget-object v4, v0, Lcom/jcraft/jsch/jzlib/InfCodes;->p:Lcom/jcraft/jsch/jzlib/InfBlocks;

    .line 10
    .line 11
    iget v5, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->q:I

    .line 12
    .line 13
    iget v6, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->p:I

    .line 14
    .line 15
    iget v7, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->v:I

    .line 16
    .line 17
    iget v8, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->u:I

    .line 18
    .line 19
    const/4 v9, 0x1

    .line 20
    if-ge v7, v8, :cond_0

    .line 21
    .line 22
    sub-int/2addr v8, v7

    .line 23
    sub-int/2addr v8, v9

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget v8, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->t:I

    .line 26
    .line 27
    sub-int/2addr v8, v7

    .line 28
    :goto_0
    move v10, v8

    .line 29
    move v8, v7

    .line 30
    move v7, v6

    .line 31
    move v6, v5

    .line 32
    move v5, v3

    .line 33
    move v3, v2

    .line 34
    move/from16 v2, p1

    .line 35
    .line 36
    :goto_1
    iget v11, v0, Lcom/jcraft/jsch/jzlib/InfCodes;->a:I

    .line 37
    .line 38
    const-string v12, "invalid literal/length code"

    .line 39
    .line 40
    const-string v13, "invalid distance code"

    .line 41
    .line 42
    const/4 v15, 0x7

    .line 43
    const/4 v14, -0x3

    .line 44
    sget-object v16, Lcom/jcraft/jsch/jzlib/InfCodes;->q:[I

    .line 45
    .line 46
    const/4 v9, 0x0

    .line 47
    packed-switch v11, :pswitch_data_0

    .line 48
    .line 49
    .line 50
    iput v6, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->q:I

    .line 51
    .line 52
    iput v7, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->p:I

    .line 53
    .line 54
    iput v5, v1, Lcom/jcraft/jsch/jzlib/ZStream;->c:I

    .line 55
    .line 56
    iget-wide v5, v1, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 57
    .line 58
    iget v0, v1, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 59
    .line 60
    sub-int v0, v3, v0

    .line 61
    .line 62
    int-to-long v9, v0

    .line 63
    add-long/2addr v5, v9

    .line 64
    iput-wide v5, v1, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 65
    .line 66
    iput v3, v1, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 67
    .line 68
    iput v8, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->v:I

    .line 69
    .line 70
    const/4 v0, -0x2

    .line 71
    invoke-virtual {v4, v0}, Lcom/jcraft/jsch/jzlib/InfBlocks;->a(I)I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    return v0

    .line 76
    :pswitch_0
    iput v6, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->q:I

    .line 77
    .line 78
    iput v7, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->p:I

    .line 79
    .line 80
    iput v5, v1, Lcom/jcraft/jsch/jzlib/ZStream;->c:I

    .line 81
    .line 82
    iget-wide v5, v1, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 83
    .line 84
    iget v0, v1, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 85
    .line 86
    sub-int v0, v3, v0

    .line 87
    .line 88
    int-to-long v9, v0

    .line 89
    add-long/2addr v5, v9

    .line 90
    iput-wide v5, v1, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 91
    .line 92
    iput v3, v1, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 93
    .line 94
    iput v8, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->v:I

    .line 95
    .line 96
    invoke-virtual {v4, v14}, Lcom/jcraft/jsch/jzlib/InfBlocks;->a(I)I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    return v0

    .line 101
    :pswitch_1
    if-le v7, v15, :cond_1

    .line 102
    .line 103
    add-int/lit8 v7, v7, -0x8

    .line 104
    .line 105
    add-int/lit8 v5, v5, 0x1

    .line 106
    .line 107
    add-int/lit8 v3, v3, -0x1

    .line 108
    .line 109
    :cond_1
    iput v8, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->v:I

    .line 110
    .line 111
    invoke-virtual {v4, v2}, Lcom/jcraft/jsch/jzlib/InfBlocks;->a(I)I

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    iget v8, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->v:I

    .line 116
    .line 117
    iget v9, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->u:I

    .line 118
    .line 119
    if-ge v8, v9, :cond_2

    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_2
    iget v10, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->t:I

    .line 123
    .line 124
    :goto_2
    if-eq v9, v8, :cond_3

    .line 125
    .line 126
    iput v6, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->q:I

    .line 127
    .line 128
    iput v7, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->p:I

    .line 129
    .line 130
    iput v5, v1, Lcom/jcraft/jsch/jzlib/ZStream;->c:I

    .line 131
    .line 132
    iget-wide v5, v1, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 133
    .line 134
    iget v0, v1, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 135
    .line 136
    sub-int v0, v3, v0

    .line 137
    .line 138
    int-to-long v9, v0

    .line 139
    add-long/2addr v5, v9

    .line 140
    iput-wide v5, v1, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 141
    .line 142
    iput v3, v1, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 143
    .line 144
    iput v8, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->v:I

    .line 145
    .line 146
    invoke-virtual {v4, v2}, Lcom/jcraft/jsch/jzlib/InfBlocks;->a(I)I

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    return v0

    .line 151
    :cond_3
    const/16 v2, 0x8

    .line 152
    .line 153
    iput v2, v0, Lcom/jcraft/jsch/jzlib/InfCodes;->a:I

    .line 154
    .line 155
    :pswitch_2
    iput v6, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->q:I

    .line 156
    .line 157
    iput v7, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->p:I

    .line 158
    .line 159
    iput v5, v1, Lcom/jcraft/jsch/jzlib/ZStream;->c:I

    .line 160
    .line 161
    iget-wide v5, v1, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 162
    .line 163
    iget v0, v1, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 164
    .line 165
    sub-int v0, v3, v0

    .line 166
    .line 167
    int-to-long v9, v0

    .line 168
    add-long/2addr v5, v9

    .line 169
    iput-wide v5, v1, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 170
    .line 171
    iput v3, v1, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 172
    .line 173
    iput v8, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->v:I

    .line 174
    .line 175
    const/4 v0, 0x1

    .line 176
    invoke-virtual {v4, v0}, Lcom/jcraft/jsch/jzlib/InfBlocks;->a(I)I

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    return v0

    .line 181
    :pswitch_3
    if-nez v10, :cond_9

    .line 182
    .line 183
    iget v11, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->t:I

    .line 184
    .line 185
    if-ne v8, v11, :cond_5

    .line 186
    .line 187
    iget v12, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->u:I

    .line 188
    .line 189
    if-eqz v12, :cond_5

    .line 190
    .line 191
    if-lez v12, :cond_4

    .line 192
    .line 193
    add-int/lit8 v12, v12, -0x1

    .line 194
    .line 195
    move v10, v12

    .line 196
    goto :goto_3

    .line 197
    :cond_4
    move v10, v11

    .line 198
    :goto_3
    move v8, v9

    .line 199
    :cond_5
    if-nez v10, :cond_9

    .line 200
    .line 201
    iput v8, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->v:I

    .line 202
    .line 203
    invoke-virtual {v4, v2}, Lcom/jcraft/jsch/jzlib/InfBlocks;->a(I)I

    .line 204
    .line 205
    .line 206
    move-result v2

    .line 207
    iget v8, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->v:I

    .line 208
    .line 209
    iget v10, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->u:I

    .line 210
    .line 211
    if-ge v8, v10, :cond_6

    .line 212
    .line 213
    sub-int v11, v10, v8

    .line 214
    .line 215
    const/16 v17, 0x1

    .line 216
    .line 217
    add-int/lit8 v11, v11, -0x1

    .line 218
    .line 219
    goto :goto_4

    .line 220
    :cond_6
    iget v11, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->t:I

    .line 221
    .line 222
    sub-int/2addr v11, v8

    .line 223
    :goto_4
    iget v12, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->t:I

    .line 224
    .line 225
    if-ne v8, v12, :cond_8

    .line 226
    .line 227
    if-eqz v10, :cond_8

    .line 228
    .line 229
    if-lez v10, :cond_7

    .line 230
    .line 231
    add-int/lit8 v12, v10, -0x1

    .line 232
    .line 233
    :cond_7
    move v8, v9

    .line 234
    move v10, v12

    .line 235
    goto :goto_5

    .line 236
    :cond_8
    move v10, v11

    .line 237
    :goto_5
    if-nez v10, :cond_9

    .line 238
    .line 239
    iput v6, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->q:I

    .line 240
    .line 241
    iput v7, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->p:I

    .line 242
    .line 243
    iput v5, v1, Lcom/jcraft/jsch/jzlib/ZStream;->c:I

    .line 244
    .line 245
    iget-wide v5, v1, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 246
    .line 247
    iget v0, v1, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 248
    .line 249
    sub-int v0, v3, v0

    .line 250
    .line 251
    int-to-long v9, v0

    .line 252
    add-long/2addr v5, v9

    .line 253
    iput-wide v5, v1, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 254
    .line 255
    iput v3, v1, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 256
    .line 257
    iput v8, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->v:I

    .line 258
    .line 259
    invoke-virtual {v4, v2}, Lcom/jcraft/jsch/jzlib/InfBlocks;->a(I)I

    .line 260
    .line 261
    .line 262
    move-result v0

    .line 263
    return v0

    .line 264
    :cond_9
    iget-object v2, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->s:[B

    .line 265
    .line 266
    add-int/lit8 v11, v8, 0x1

    .line 267
    .line 268
    iget v12, v0, Lcom/jcraft/jsch/jzlib/InfCodes;->f:I

    .line 269
    .line 270
    int-to-byte v12, v12

    .line 271
    aput-byte v12, v2, v8

    .line 272
    .line 273
    add-int/lit8 v10, v10, -0x1

    .line 274
    .line 275
    iput v9, v0, Lcom/jcraft/jsch/jzlib/InfCodes;->a:I

    .line 276
    .line 277
    move v2, v9

    .line 278
    move v8, v11

    .line 279
    :goto_6
    const/4 v9, 0x1

    .line 280
    goto/16 :goto_1

    .line 281
    .line 282
    :pswitch_4
    iget v11, v0, Lcom/jcraft/jsch/jzlib/InfCodes;->g:I

    .line 283
    .line 284
    :goto_7
    if-ge v7, v11, :cond_b

    .line 285
    .line 286
    if-eqz v5, :cond_a

    .line 287
    .line 288
    add-int/lit8 v5, v5, -0x1

    .line 289
    .line 290
    iget-object v2, v1, Lcom/jcraft/jsch/jzlib/ZStream;->a:[B

    .line 291
    .line 292
    add-int/lit8 v12, v3, 0x1

    .line 293
    .line 294
    aget-byte v2, v2, v3

    .line 295
    .line 296
    and-int/lit16 v2, v2, 0xff

    .line 297
    .line 298
    shl-int/2addr v2, v7

    .line 299
    or-int/2addr v6, v2

    .line 300
    add-int/lit8 v7, v7, 0x8

    .line 301
    .line 302
    move v2, v9

    .line 303
    move v3, v12

    .line 304
    goto :goto_7

    .line 305
    :cond_a
    iput v6, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->q:I

    .line 306
    .line 307
    iput v7, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->p:I

    .line 308
    .line 309
    iput v5, v1, Lcom/jcraft/jsch/jzlib/ZStream;->c:I

    .line 310
    .line 311
    iget-wide v5, v1, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 312
    .line 313
    iget v0, v1, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 314
    .line 315
    sub-int v0, v3, v0

    .line 316
    .line 317
    int-to-long v9, v0

    .line 318
    add-long/2addr v5, v9

    .line 319
    iput-wide v5, v1, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 320
    .line 321
    iput v3, v1, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 322
    .line 323
    iput v8, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->v:I

    .line 324
    .line 325
    invoke-virtual {v4, v2}, Lcom/jcraft/jsch/jzlib/InfBlocks;->a(I)I

    .line 326
    .line 327
    .line 328
    move-result v0

    .line 329
    return v0

    .line 330
    :cond_b
    iget v12, v0, Lcom/jcraft/jsch/jzlib/InfCodes;->h:I

    .line 331
    .line 332
    aget v13, v16, v11

    .line 333
    .line 334
    and-int/2addr v13, v6

    .line 335
    add-int/2addr v12, v13

    .line 336
    iput v12, v0, Lcom/jcraft/jsch/jzlib/InfCodes;->h:I

    .line 337
    .line 338
    shr-int/2addr v6, v11

    .line 339
    sub-int/2addr v7, v11

    .line 340
    const/4 v11, 0x5

    .line 341
    iput v11, v0, Lcom/jcraft/jsch/jzlib/InfCodes;->a:I

    .line 342
    .line 343
    :pswitch_5
    iget v11, v0, Lcom/jcraft/jsch/jzlib/InfCodes;->h:I

    .line 344
    .line 345
    sub-int v11, v8, v11

    .line 346
    .line 347
    :goto_8
    if-gez v11, :cond_c

    .line 348
    .line 349
    iget v12, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->t:I

    .line 350
    .line 351
    add-int/2addr v11, v12

    .line 352
    goto :goto_8

    .line 353
    :cond_c
    :goto_9
    iget v12, v0, Lcom/jcraft/jsch/jzlib/InfCodes;->b:I

    .line 354
    .line 355
    if-eqz v12, :cond_14

    .line 356
    .line 357
    if-nez v10, :cond_12

    .line 358
    .line 359
    iget v12, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->t:I

    .line 360
    .line 361
    if-ne v8, v12, :cond_e

    .line 362
    .line 363
    iget v13, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->u:I

    .line 364
    .line 365
    if-eqz v13, :cond_e

    .line 366
    .line 367
    if-lez v13, :cond_d

    .line 368
    .line 369
    add-int/lit8 v13, v13, -0x1

    .line 370
    .line 371
    move v10, v13

    .line 372
    goto :goto_a

    .line 373
    :cond_d
    move v10, v12

    .line 374
    :goto_a
    move v8, v9

    .line 375
    :cond_e
    if-nez v10, :cond_12

    .line 376
    .line 377
    iput v8, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->v:I

    .line 378
    .line 379
    invoke-virtual {v4, v2}, Lcom/jcraft/jsch/jzlib/InfBlocks;->a(I)I

    .line 380
    .line 381
    .line 382
    move-result v2

    .line 383
    iget v8, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->v:I

    .line 384
    .line 385
    iget v10, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->u:I

    .line 386
    .line 387
    if-ge v8, v10, :cond_f

    .line 388
    .line 389
    sub-int v12, v10, v8

    .line 390
    .line 391
    const/16 v17, 0x1

    .line 392
    .line 393
    add-int/lit8 v12, v12, -0x1

    .line 394
    .line 395
    goto :goto_b

    .line 396
    :cond_f
    iget v12, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->t:I

    .line 397
    .line 398
    sub-int/2addr v12, v8

    .line 399
    :goto_b
    iget v13, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->t:I

    .line 400
    .line 401
    if-ne v8, v13, :cond_11

    .line 402
    .line 403
    if-eqz v10, :cond_11

    .line 404
    .line 405
    if-lez v10, :cond_10

    .line 406
    .line 407
    add-int/lit8 v13, v10, -0x1

    .line 408
    .line 409
    :cond_10
    move v8, v9

    .line 410
    move v10, v13

    .line 411
    goto :goto_c

    .line 412
    :cond_11
    move v10, v12

    .line 413
    :goto_c
    if-nez v10, :cond_12

    .line 414
    .line 415
    iput v6, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->q:I

    .line 416
    .line 417
    iput v7, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->p:I

    .line 418
    .line 419
    iput v5, v1, Lcom/jcraft/jsch/jzlib/ZStream;->c:I

    .line 420
    .line 421
    iget-wide v5, v1, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 422
    .line 423
    iget v0, v1, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 424
    .line 425
    sub-int v0, v3, v0

    .line 426
    .line 427
    int-to-long v9, v0

    .line 428
    add-long/2addr v5, v9

    .line 429
    iput-wide v5, v1, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 430
    .line 431
    iput v3, v1, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 432
    .line 433
    iput v8, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->v:I

    .line 434
    .line 435
    invoke-virtual {v4, v2}, Lcom/jcraft/jsch/jzlib/InfBlocks;->a(I)I

    .line 436
    .line 437
    .line 438
    move-result v0

    .line 439
    return v0

    .line 440
    :cond_12
    iget-object v12, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->s:[B

    .line 441
    .line 442
    add-int/lit8 v13, v8, 0x1

    .line 443
    .line 444
    add-int/lit8 v14, v11, 0x1

    .line 445
    .line 446
    aget-byte v11, v12, v11

    .line 447
    .line 448
    aput-byte v11, v12, v8

    .line 449
    .line 450
    add-int/lit8 v10, v10, -0x1

    .line 451
    .line 452
    iget v8, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->t:I

    .line 453
    .line 454
    if-ne v14, v8, :cond_13

    .line 455
    .line 456
    move v11, v9

    .line 457
    goto :goto_d

    .line 458
    :cond_13
    move v11, v14

    .line 459
    :goto_d
    iget v8, v0, Lcom/jcraft/jsch/jzlib/InfCodes;->b:I

    .line 460
    .line 461
    const/16 v17, 0x1

    .line 462
    .line 463
    add-int/lit8 v8, v8, -0x1

    .line 464
    .line 465
    iput v8, v0, Lcom/jcraft/jsch/jzlib/InfCodes;->b:I

    .line 466
    .line 467
    move v8, v13

    .line 468
    goto :goto_9

    .line 469
    :cond_14
    iput v9, v0, Lcom/jcraft/jsch/jzlib/InfCodes;->a:I

    .line 470
    .line 471
    goto/16 :goto_6

    .line 472
    .line 473
    :pswitch_6
    iget v11, v0, Lcom/jcraft/jsch/jzlib/InfCodes;->g:I

    .line 474
    .line 475
    :goto_e
    if-ge v7, v11, :cond_16

    .line 476
    .line 477
    if-eqz v5, :cond_15

    .line 478
    .line 479
    add-int/lit8 v5, v5, -0x1

    .line 480
    .line 481
    iget-object v2, v1, Lcom/jcraft/jsch/jzlib/ZStream;->a:[B

    .line 482
    .line 483
    add-int/lit8 v12, v3, 0x1

    .line 484
    .line 485
    aget-byte v2, v2, v3

    .line 486
    .line 487
    and-int/lit16 v2, v2, 0xff

    .line 488
    .line 489
    shl-int/2addr v2, v7

    .line 490
    or-int/2addr v6, v2

    .line 491
    add-int/lit8 v7, v7, 0x8

    .line 492
    .line 493
    move v2, v9

    .line 494
    move v3, v12

    .line 495
    goto :goto_e

    .line 496
    :cond_15
    iput v6, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->q:I

    .line 497
    .line 498
    iput v7, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->p:I

    .line 499
    .line 500
    iput v5, v1, Lcom/jcraft/jsch/jzlib/ZStream;->c:I

    .line 501
    .line 502
    iget-wide v5, v1, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 503
    .line 504
    iget v0, v1, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 505
    .line 506
    sub-int v0, v3, v0

    .line 507
    .line 508
    int-to-long v9, v0

    .line 509
    add-long/2addr v5, v9

    .line 510
    iput-wide v5, v1, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 511
    .line 512
    iput v3, v1, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 513
    .line 514
    iput v8, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->v:I

    .line 515
    .line 516
    invoke-virtual {v4, v2}, Lcom/jcraft/jsch/jzlib/InfBlocks;->a(I)I

    .line 517
    .line 518
    .line 519
    move-result v0

    .line 520
    return v0

    .line 521
    :cond_16
    iget v12, v0, Lcom/jcraft/jsch/jzlib/InfCodes;->b:I

    .line 522
    .line 523
    aget v15, v16, v11

    .line 524
    .line 525
    and-int/2addr v15, v6

    .line 526
    add-int/2addr v12, v15

    .line 527
    iput v12, v0, Lcom/jcraft/jsch/jzlib/InfCodes;->b:I

    .line 528
    .line 529
    shr-int/2addr v6, v11

    .line 530
    sub-int/2addr v7, v11

    .line 531
    iget-byte v11, v0, Lcom/jcraft/jsch/jzlib/InfCodes;->j:B

    .line 532
    .line 533
    iput v11, v0, Lcom/jcraft/jsch/jzlib/InfCodes;->e:I

    .line 534
    .line 535
    iget-object v11, v0, Lcom/jcraft/jsch/jzlib/InfCodes;->m:[I

    .line 536
    .line 537
    iput-object v11, v0, Lcom/jcraft/jsch/jzlib/InfCodes;->c:[I

    .line 538
    .line 539
    iget v11, v0, Lcom/jcraft/jsch/jzlib/InfCodes;->n:I

    .line 540
    .line 541
    iput v11, v0, Lcom/jcraft/jsch/jzlib/InfCodes;->d:I

    .line 542
    .line 543
    const/4 v11, 0x3

    .line 544
    iput v11, v0, Lcom/jcraft/jsch/jzlib/InfCodes;->a:I

    .line 545
    .line 546
    :pswitch_7
    iget v11, v0, Lcom/jcraft/jsch/jzlib/InfCodes;->e:I

    .line 547
    .line 548
    :goto_f
    if-ge v7, v11, :cond_18

    .line 549
    .line 550
    if-eqz v5, :cond_17

    .line 551
    .line 552
    add-int/lit8 v5, v5, -0x1

    .line 553
    .line 554
    iget-object v2, v1, Lcom/jcraft/jsch/jzlib/ZStream;->a:[B

    .line 555
    .line 556
    add-int/lit8 v12, v3, 0x1

    .line 557
    .line 558
    aget-byte v2, v2, v3

    .line 559
    .line 560
    and-int/lit16 v2, v2, 0xff

    .line 561
    .line 562
    shl-int/2addr v2, v7

    .line 563
    or-int/2addr v6, v2

    .line 564
    add-int/lit8 v7, v7, 0x8

    .line 565
    .line 566
    move v2, v9

    .line 567
    move v3, v12

    .line 568
    goto :goto_f

    .line 569
    :cond_17
    iput v6, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->q:I

    .line 570
    .line 571
    iput v7, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->p:I

    .line 572
    .line 573
    iput v5, v1, Lcom/jcraft/jsch/jzlib/ZStream;->c:I

    .line 574
    .line 575
    iget-wide v5, v1, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 576
    .line 577
    iget v0, v1, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 578
    .line 579
    sub-int v0, v3, v0

    .line 580
    .line 581
    int-to-long v9, v0

    .line 582
    add-long/2addr v5, v9

    .line 583
    iput-wide v5, v1, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 584
    .line 585
    iput v3, v1, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 586
    .line 587
    iput v8, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->v:I

    .line 588
    .line 589
    invoke-virtual {v4, v2}, Lcom/jcraft/jsch/jzlib/InfBlocks;->a(I)I

    .line 590
    .line 591
    .line 592
    move-result v0

    .line 593
    return v0

    .line 594
    :cond_18
    iget v9, v0, Lcom/jcraft/jsch/jzlib/InfCodes;->d:I

    .line 595
    .line 596
    aget v11, v16, v11

    .line 597
    .line 598
    and-int/2addr v11, v6

    .line 599
    add-int/2addr v9, v11

    .line 600
    const/16 v18, 0x3

    .line 601
    .line 602
    mul-int/lit8 v9, v9, 0x3

    .line 603
    .line 604
    iget-object v11, v0, Lcom/jcraft/jsch/jzlib/InfCodes;->c:[I

    .line 605
    .line 606
    add-int/lit8 v12, v9, 0x1

    .line 607
    .line 608
    aget v12, v11, v12

    .line 609
    .line 610
    shr-int/2addr v6, v12

    .line 611
    sub-int/2addr v7, v12

    .line 612
    aget v12, v11, v9

    .line 613
    .line 614
    and-int/lit8 v15, v12, 0x10

    .line 615
    .line 616
    if-eqz v15, :cond_19

    .line 617
    .line 618
    and-int/lit8 v12, v12, 0xf

    .line 619
    .line 620
    iput v12, v0, Lcom/jcraft/jsch/jzlib/InfCodes;->g:I

    .line 621
    .line 622
    add-int/lit8 v9, v9, 0x2

    .line 623
    .line 624
    aget v9, v11, v9

    .line 625
    .line 626
    iput v9, v0, Lcom/jcraft/jsch/jzlib/InfCodes;->h:I

    .line 627
    .line 628
    const/4 v9, 0x4

    .line 629
    iput v9, v0, Lcom/jcraft/jsch/jzlib/InfCodes;->a:I

    .line 630
    .line 631
    goto/16 :goto_6

    .line 632
    .line 633
    :cond_19
    and-int/lit8 v15, v12, 0x40

    .line 634
    .line 635
    if-nez v15, :cond_1a

    .line 636
    .line 637
    iput v12, v0, Lcom/jcraft/jsch/jzlib/InfCodes;->e:I

    .line 638
    .line 639
    div-int/lit8 v12, v9, 0x3

    .line 640
    .line 641
    add-int/lit8 v9, v9, 0x2

    .line 642
    .line 643
    aget v9, v11, v9

    .line 644
    .line 645
    add-int/2addr v12, v9

    .line 646
    iput v12, v0, Lcom/jcraft/jsch/jzlib/InfCodes;->d:I

    .line 647
    .line 648
    goto/16 :goto_6

    .line 649
    .line 650
    :cond_1a
    const/16 v2, 0x9

    .line 651
    .line 652
    iput v2, v0, Lcom/jcraft/jsch/jzlib/InfCodes;->a:I

    .line 653
    .line 654
    iput-object v13, v1, Lcom/jcraft/jsch/jzlib/ZStream;->i:Ljava/lang/String;

    .line 655
    .line 656
    iput v6, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->q:I

    .line 657
    .line 658
    iput v7, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->p:I

    .line 659
    .line 660
    iput v5, v1, Lcom/jcraft/jsch/jzlib/ZStream;->c:I

    .line 661
    .line 662
    iget-wide v5, v1, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 663
    .line 664
    iget v0, v1, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 665
    .line 666
    sub-int v0, v3, v0

    .line 667
    .line 668
    int-to-long v9, v0

    .line 669
    add-long/2addr v5, v9

    .line 670
    iput-wide v5, v1, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 671
    .line 672
    iput v3, v1, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 673
    .line 674
    iput v8, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->v:I

    .line 675
    .line 676
    invoke-virtual {v4, v14}, Lcom/jcraft/jsch/jzlib/InfBlocks;->a(I)I

    .line 677
    .line 678
    .line 679
    move-result v0

    .line 680
    return v0

    .line 681
    :pswitch_8
    const/4 v9, 0x1

    .line 682
    goto/16 :goto_24

    .line 683
    .line 684
    :pswitch_9
    const/16 v11, 0x102

    .line 685
    .line 686
    if-lt v10, v11, :cond_37

    .line 687
    .line 688
    const/16 v9, 0xa

    .line 689
    .line 690
    if-lt v5, v9, :cond_37

    .line 691
    .line 692
    iput v6, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->q:I

    .line 693
    .line 694
    iput v7, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->p:I

    .line 695
    .line 696
    iput v5, v1, Lcom/jcraft/jsch/jzlib/ZStream;->c:I

    .line 697
    .line 698
    iget-wide v14, v1, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 699
    .line 700
    iget v2, v1, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 701
    .line 702
    sub-int v2, v3, v2

    .line 703
    .line 704
    int-to-long v9, v2

    .line 705
    add-long/2addr v14, v9

    .line 706
    iput-wide v14, v1, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 707
    .line 708
    iput v3, v1, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 709
    .line 710
    iput v8, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->v:I

    .line 711
    .line 712
    iget-byte v2, v0, Lcom/jcraft/jsch/jzlib/InfCodes;->i:B

    .line 713
    .line 714
    iget-byte v9, v0, Lcom/jcraft/jsch/jzlib/InfCodes;->j:B

    .line 715
    .line 716
    iget-object v10, v0, Lcom/jcraft/jsch/jzlib/InfCodes;->k:[I

    .line 717
    .line 718
    iget v14, v0, Lcom/jcraft/jsch/jzlib/InfCodes;->l:I

    .line 719
    .line 720
    iget-object v15, v0, Lcom/jcraft/jsch/jzlib/InfCodes;->m:[I

    .line 721
    .line 722
    iget v11, v0, Lcom/jcraft/jsch/jzlib/InfCodes;->n:I

    .line 723
    .line 724
    move/from16 v20, v2

    .line 725
    .line 726
    iget v2, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->t:I

    .line 727
    .line 728
    move/from16 v21, v2

    .line 729
    .line 730
    iget v2, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->u:I

    .line 731
    .line 732
    if-ge v8, v2, :cond_1b

    .line 733
    .line 734
    sub-int/2addr v2, v8

    .line 735
    const/16 v17, 0x1

    .line 736
    .line 737
    add-int/lit8 v2, v2, -0x1

    .line 738
    .line 739
    goto :goto_10

    .line 740
    :cond_1b
    sub-int v2, v21, v8

    .line 741
    .line 742
    :goto_10
    aget v20, v16, v20

    .line 743
    .line 744
    aget v9, v16, v9

    .line 745
    .line 746
    move/from16 v22, v2

    .line 747
    .line 748
    :goto_11
    const/16 v2, 0x14

    .line 749
    .line 750
    if-ge v7, v2, :cond_1c

    .line 751
    .line 752
    add-int/lit8 v5, v5, -0x1

    .line 753
    .line 754
    iget-object v2, v1, Lcom/jcraft/jsch/jzlib/ZStream;->a:[B

    .line 755
    .line 756
    add-int/lit8 v23, v3, 0x1

    .line 757
    .line 758
    aget-byte v2, v2, v3

    .line 759
    .line 760
    and-int/lit16 v2, v2, 0xff

    .line 761
    .line 762
    shl-int/2addr v2, v7

    .line 763
    or-int/2addr v6, v2

    .line 764
    add-int/lit8 v7, v7, 0x8

    .line 765
    .line 766
    move/from16 v3, v23

    .line 767
    .line 768
    goto :goto_11

    .line 769
    :cond_1c
    and-int v2, v6, v20

    .line 770
    .line 771
    add-int v23, v14, v2

    .line 772
    .line 773
    const/16 v18, 0x3

    .line 774
    .line 775
    mul-int/lit8 v23, v23, 0x3

    .line 776
    .line 777
    aget v24, v10, v23

    .line 778
    .line 779
    if-nez v24, :cond_1d

    .line 780
    .line 781
    add-int/lit8 v2, v23, 0x1

    .line 782
    .line 783
    aget v2, v10, v2

    .line 784
    .line 785
    shr-int/2addr v6, v2

    .line 786
    sub-int/2addr v7, v2

    .line 787
    iget-object v2, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->s:[B

    .line 788
    .line 789
    add-int/lit8 v24, v8, 0x1

    .line 790
    .line 791
    add-int/lit8 v23, v23, 0x2

    .line 792
    .line 793
    move-object/from16 v25, v2

    .line 794
    .line 795
    aget v2, v10, v23

    .line 796
    .line 797
    int-to-byte v2, v2

    .line 798
    aput-byte v2, v25, v8

    .line 799
    .line 800
    :goto_12
    add-int/lit8 v22, v22, -0x1

    .line 801
    .line 802
    move/from16 v19, v3

    .line 803
    .line 804
    move/from16 v2, v22

    .line 805
    .line 806
    move/from16 v8, v24

    .line 807
    .line 808
    :goto_13
    const/16 v3, 0x102

    .line 809
    .line 810
    goto/16 :goto_1f

    .line 811
    .line 812
    :cond_1d
    :goto_14
    add-int/lit8 v25, v23, 0x1

    .line 813
    .line 814
    aget v25, v10, v25

    .line 815
    .line 816
    shr-int v6, v6, v25

    .line 817
    .line 818
    sub-int v7, v7, v25

    .line 819
    .line 820
    and-int/lit8 v25, v24, 0x10

    .line 821
    .line 822
    if-eqz v25, :cond_2b

    .line 823
    .line 824
    and-int/lit8 v2, v24, 0xf

    .line 825
    .line 826
    add-int/lit8 v23, v23, 0x2

    .line 827
    .line 828
    aget v23, v10, v23

    .line 829
    .line 830
    aget v24, v16, v2

    .line 831
    .line 832
    and-int v24, v6, v24

    .line 833
    .line 834
    move/from16 v25, v2

    .line 835
    .line 836
    add-int v2, v23, v24

    .line 837
    .line 838
    shr-int v6, v6, v25

    .line 839
    .line 840
    sub-int v7, v7, v25

    .line 841
    .line 842
    move/from16 v23, v3

    .line 843
    .line 844
    :goto_15
    const/16 v3, 0xf

    .line 845
    .line 846
    if-ge v7, v3, :cond_1e

    .line 847
    .line 848
    add-int/lit8 v5, v5, -0x1

    .line 849
    .line 850
    iget-object v3, v1, Lcom/jcraft/jsch/jzlib/ZStream;->a:[B

    .line 851
    .line 852
    add-int/lit8 v24, v23, 0x1

    .line 853
    .line 854
    aget-byte v3, v3, v23

    .line 855
    .line 856
    and-int/lit16 v3, v3, 0xff

    .line 857
    .line 858
    shl-int/2addr v3, v7

    .line 859
    or-int/2addr v6, v3

    .line 860
    add-int/lit8 v7, v7, 0x8

    .line 861
    .line 862
    move/from16 v23, v24

    .line 863
    .line 864
    goto :goto_15

    .line 865
    :cond_1e
    and-int v3, v6, v9

    .line 866
    .line 867
    add-int v24, v11, v3

    .line 868
    .line 869
    const/16 v18, 0x3

    .line 870
    .line 871
    mul-int/lit8 v24, v24, 0x3

    .line 872
    .line 873
    aget v25, v15, v24

    .line 874
    .line 875
    :goto_16
    add-int/lit8 v26, v24, 0x1

    .line 876
    .line 877
    aget v26, v15, v26

    .line 878
    .line 879
    shr-int v6, v6, v26

    .line 880
    .line 881
    sub-int v7, v7, v26

    .line 882
    .line 883
    and-int/lit8 v26, v25, 0x10

    .line 884
    .line 885
    if-eqz v26, :cond_28

    .line 886
    .line 887
    and-int/lit8 v3, v25, 0xf

    .line 888
    .line 889
    move/from16 v26, v5

    .line 890
    .line 891
    :goto_17
    move/from16 v27, v23

    .line 892
    .line 893
    if-ge v7, v3, :cond_1f

    .line 894
    .line 895
    add-int/lit8 v26, v26, -0x1

    .line 896
    .line 897
    iget-object v5, v1, Lcom/jcraft/jsch/jzlib/ZStream;->a:[B

    .line 898
    .line 899
    add-int/lit8 v23, v27, 0x1

    .line 900
    .line 901
    aget-byte v5, v5, v27

    .line 902
    .line 903
    and-int/lit16 v5, v5, 0xff

    .line 904
    .line 905
    shl-int/2addr v5, v7

    .line 906
    or-int/2addr v6, v5

    .line 907
    add-int/lit8 v7, v7, 0x8

    .line 908
    .line 909
    goto :goto_17

    .line 910
    :cond_1f
    add-int/lit8 v24, v24, 0x2

    .line 911
    .line 912
    aget v5, v15, v24

    .line 913
    .line 914
    aget v23, v16, v3

    .line 915
    .line 916
    and-int v23, v6, v23

    .line 917
    .line 918
    add-int v5, v5, v23

    .line 919
    .line 920
    shr-int v28, v6, v3

    .line 921
    .line 922
    sub-int v29, v7, v3

    .line 923
    .line 924
    sub-int v30, v22, v2

    .line 925
    .line 926
    if-lt v8, v5, :cond_21

    .line 927
    .line 928
    sub-int v3, v8, v5

    .line 929
    .line 930
    sub-int v5, v8, v3

    .line 931
    .line 932
    if-lez v5, :cond_20

    .line 933
    .line 934
    const/4 v6, 0x2

    .line 935
    if-le v6, v5, :cond_20

    .line 936
    .line 937
    iget-object v5, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->s:[B

    .line 938
    .line 939
    add-int/lit8 v6, v8, 0x1

    .line 940
    .line 941
    add-int/lit8 v7, v3, 0x1

    .line 942
    .line 943
    aget-byte v22, v5, v3

    .line 944
    .line 945
    aput-byte v22, v5, v8

    .line 946
    .line 947
    add-int/lit8 v8, v8, 0x2

    .line 948
    .line 949
    add-int/lit8 v3, v3, 0x2

    .line 950
    .line 951
    aget-byte v7, v5, v7

    .line 952
    .line 953
    aput-byte v7, v5, v6

    .line 954
    .line 955
    :goto_18
    add-int/lit8 v2, v2, -0x2

    .line 956
    .line 957
    goto :goto_1b

    .line 958
    :cond_20
    iget-object v5, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->s:[B

    .line 959
    .line 960
    const/4 v6, 0x2

    .line 961
    invoke-static {v5, v3, v5, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 962
    .line 963
    .line 964
    add-int/lit8 v8, v8, 0x2

    .line 965
    .line 966
    add-int/lit8 v3, v3, 0x2

    .line 967
    .line 968
    goto :goto_18

    .line 969
    :cond_21
    sub-int v3, v8, v5

    .line 970
    .line 971
    :cond_22
    add-int v3, v3, v21

    .line 972
    .line 973
    if-ltz v3, :cond_22

    .line 974
    .line 975
    sub-int v5, v21, v3

    .line 976
    .line 977
    if-le v2, v5, :cond_25

    .line 978
    .line 979
    sub-int/2addr v2, v5

    .line 980
    sub-int v6, v8, v3

    .line 981
    .line 982
    if-lez v6, :cond_24

    .line 983
    .line 984
    if-le v5, v6, :cond_24

    .line 985
    .line 986
    :goto_19
    iget-object v6, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->s:[B

    .line 987
    .line 988
    add-int/lit8 v7, v8, 0x1

    .line 989
    .line 990
    add-int/lit8 v22, v3, 0x1

    .line 991
    .line 992
    aget-byte v3, v6, v3

    .line 993
    .line 994
    aput-byte v3, v6, v8

    .line 995
    .line 996
    add-int/lit8 v5, v5, -0x1

    .line 997
    .line 998
    move v8, v7

    .line 999
    if-nez v5, :cond_23

    .line 1000
    .line 1001
    goto :goto_1a

    .line 1002
    :cond_23
    move/from16 v3, v22

    .line 1003
    .line 1004
    goto :goto_19

    .line 1005
    :cond_24
    iget-object v6, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->s:[B

    .line 1006
    .line 1007
    invoke-static {v6, v3, v6, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1008
    .line 1009
    .line 1010
    add-int/2addr v8, v5

    .line 1011
    :goto_1a
    const/4 v3, 0x0

    .line 1012
    :cond_25
    :goto_1b
    sub-int v5, v8, v3

    .line 1013
    .line 1014
    if-lez v5, :cond_27

    .line 1015
    .line 1016
    if-le v2, v5, :cond_27

    .line 1017
    .line 1018
    :goto_1c
    iget-object v5, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->s:[B

    .line 1019
    .line 1020
    add-int/lit8 v6, v8, 0x1

    .line 1021
    .line 1022
    add-int/lit8 v7, v3, 0x1

    .line 1023
    .line 1024
    aget-byte v3, v5, v3

    .line 1025
    .line 1026
    aput-byte v3, v5, v8

    .line 1027
    .line 1028
    add-int/lit8 v2, v2, -0x1

    .line 1029
    .line 1030
    move v8, v6

    .line 1031
    if-nez v2, :cond_26

    .line 1032
    .line 1033
    :goto_1d
    move/from16 v5, v26

    .line 1034
    .line 1035
    move/from16 v19, v27

    .line 1036
    .line 1037
    move/from16 v6, v28

    .line 1038
    .line 1039
    move/from16 v7, v29

    .line 1040
    .line 1041
    move/from16 v2, v30

    .line 1042
    .line 1043
    goto/16 :goto_13

    .line 1044
    .line 1045
    :cond_26
    move v3, v7

    .line 1046
    goto :goto_1c

    .line 1047
    :cond_27
    iget-object v5, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->s:[B

    .line 1048
    .line 1049
    invoke-static {v5, v3, v5, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1050
    .line 1051
    .line 1052
    add-int/2addr v8, v2

    .line 1053
    goto :goto_1d

    .line 1054
    :cond_28
    and-int/lit8 v26, v25, 0x40

    .line 1055
    .line 1056
    if-nez v26, :cond_29

    .line 1057
    .line 1058
    add-int/lit8 v24, v24, 0x2

    .line 1059
    .line 1060
    aget v24, v15, v24

    .line 1061
    .line 1062
    add-int v3, v3, v24

    .line 1063
    .line 1064
    aget v24, v16, v25

    .line 1065
    .line 1066
    and-int v24, v6, v24

    .line 1067
    .line 1068
    add-int v3, v3, v24

    .line 1069
    .line 1070
    add-int v24, v11, v3

    .line 1071
    .line 1072
    const/16 v18, 0x3

    .line 1073
    .line 1074
    mul-int/lit8 v24, v24, 0x3

    .line 1075
    .line 1076
    aget v25, v15, v24

    .line 1077
    .line 1078
    goto/16 :goto_16

    .line 1079
    .line 1080
    :cond_29
    iput-object v13, v1, Lcom/jcraft/jsch/jzlib/ZStream;->i:Ljava/lang/String;

    .line 1081
    .line 1082
    iget v2, v1, Lcom/jcraft/jsch/jzlib/ZStream;->c:I

    .line 1083
    .line 1084
    sub-int/2addr v2, v5

    .line 1085
    shr-int/lit8 v3, v7, 0x3

    .line 1086
    .line 1087
    if-ge v3, v2, :cond_2a

    .line 1088
    .line 1089
    move v2, v3

    .line 1090
    :cond_2a
    add-int/2addr v5, v2

    .line 1091
    sub-int v3, v23, v2

    .line 1092
    .line 1093
    const/16 v18, 0x3

    .line 1094
    .line 1095
    shl-int/lit8 v2, v2, 0x3

    .line 1096
    .line 1097
    sub-int/2addr v7, v2

    .line 1098
    iput v6, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->q:I

    .line 1099
    .line 1100
    iput v7, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->p:I

    .line 1101
    .line 1102
    iput v5, v1, Lcom/jcraft/jsch/jzlib/ZStream;->c:I

    .line 1103
    .line 1104
    iget-wide v5, v1, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 1105
    .line 1106
    iget v2, v1, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 1107
    .line 1108
    sub-int v2, v3, v2

    .line 1109
    .line 1110
    int-to-long v9, v2

    .line 1111
    add-long/2addr v5, v9

    .line 1112
    iput-wide v5, v1, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 1113
    .line 1114
    iput v3, v1, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 1115
    .line 1116
    iput v8, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->v:I

    .line 1117
    .line 1118
    :goto_1e
    const/4 v2, -0x3

    .line 1119
    goto/16 :goto_21

    .line 1120
    .line 1121
    :cond_2b
    and-int/lit8 v25, v24, 0x40

    .line 1122
    .line 1123
    if-nez v25, :cond_30

    .line 1124
    .line 1125
    add-int/lit8 v23, v23, 0x2

    .line 1126
    .line 1127
    aget v23, v10, v23

    .line 1128
    .line 1129
    add-int v2, v2, v23

    .line 1130
    .line 1131
    aget v23, v16, v24

    .line 1132
    .line 1133
    and-int v23, v6, v23

    .line 1134
    .line 1135
    add-int v2, v2, v23

    .line 1136
    .line 1137
    add-int v23, v14, v2

    .line 1138
    .line 1139
    const/16 v18, 0x3

    .line 1140
    .line 1141
    mul-int/lit8 v23, v23, 0x3

    .line 1142
    .line 1143
    aget v24, v10, v23

    .line 1144
    .line 1145
    if-nez v24, :cond_2f

    .line 1146
    .line 1147
    add-int/lit8 v2, v23, 0x1

    .line 1148
    .line 1149
    aget v2, v10, v2

    .line 1150
    .line 1151
    shr-int/2addr v6, v2

    .line 1152
    sub-int/2addr v7, v2

    .line 1153
    iget-object v2, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->s:[B

    .line 1154
    .line 1155
    add-int/lit8 v24, v8, 0x1

    .line 1156
    .line 1157
    add-int/lit8 v23, v23, 0x2

    .line 1158
    .line 1159
    move-object/from16 v25, v2

    .line 1160
    .line 1161
    aget v2, v10, v23

    .line 1162
    .line 1163
    int-to-byte v2, v2

    .line 1164
    aput-byte v2, v25, v8

    .line 1165
    .line 1166
    goto/16 :goto_12

    .line 1167
    .line 1168
    :goto_1f
    if-lt v2, v3, :cond_2d

    .line 1169
    .line 1170
    const/16 v3, 0xa

    .line 1171
    .line 1172
    if-ge v5, v3, :cond_2c

    .line 1173
    .line 1174
    goto :goto_20

    .line 1175
    :cond_2c
    move/from16 v22, v2

    .line 1176
    .line 1177
    move/from16 v3, v19

    .line 1178
    .line 1179
    goto/16 :goto_11

    .line 1180
    .line 1181
    :cond_2d
    :goto_20
    iget v2, v1, Lcom/jcraft/jsch/jzlib/ZStream;->c:I

    .line 1182
    .line 1183
    sub-int/2addr v2, v5

    .line 1184
    shr-int/lit8 v3, v7, 0x3

    .line 1185
    .line 1186
    if-ge v3, v2, :cond_2e

    .line 1187
    .line 1188
    move v2, v3

    .line 1189
    :cond_2e
    add-int/2addr v5, v2

    .line 1190
    sub-int v3, v19, v2

    .line 1191
    .line 1192
    const/16 v18, 0x3

    .line 1193
    .line 1194
    shl-int/lit8 v2, v2, 0x3

    .line 1195
    .line 1196
    sub-int/2addr v7, v2

    .line 1197
    iput v6, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->q:I

    .line 1198
    .line 1199
    iput v7, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->p:I

    .line 1200
    .line 1201
    iput v5, v1, Lcom/jcraft/jsch/jzlib/ZStream;->c:I

    .line 1202
    .line 1203
    iget-wide v5, v1, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 1204
    .line 1205
    iget v2, v1, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 1206
    .line 1207
    sub-int v2, v3, v2

    .line 1208
    .line 1209
    int-to-long v9, v2

    .line 1210
    add-long/2addr v5, v9

    .line 1211
    iput-wide v5, v1, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 1212
    .line 1213
    iput v3, v1, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 1214
    .line 1215
    iput v8, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->v:I

    .line 1216
    .line 1217
    const/4 v2, 0x0

    .line 1218
    goto :goto_21

    .line 1219
    :cond_2f
    move/from16 v19, v3

    .line 1220
    .line 1221
    goto/16 :goto_14

    .line 1222
    .line 1223
    :cond_30
    move/from16 v19, v3

    .line 1224
    .line 1225
    and-int/lit8 v2, v24, 0x20

    .line 1226
    .line 1227
    if-eqz v2, :cond_32

    .line 1228
    .line 1229
    iget v2, v1, Lcom/jcraft/jsch/jzlib/ZStream;->c:I

    .line 1230
    .line 1231
    sub-int/2addr v2, v5

    .line 1232
    shr-int/lit8 v3, v7, 0x3

    .line 1233
    .line 1234
    if-ge v3, v2, :cond_31

    .line 1235
    .line 1236
    move v2, v3

    .line 1237
    :cond_31
    add-int/2addr v5, v2

    .line 1238
    sub-int v3, v19, v2

    .line 1239
    .line 1240
    const/16 v18, 0x3

    .line 1241
    .line 1242
    shl-int/lit8 v2, v2, 0x3

    .line 1243
    .line 1244
    sub-int/2addr v7, v2

    .line 1245
    iput v6, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->q:I

    .line 1246
    .line 1247
    iput v7, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->p:I

    .line 1248
    .line 1249
    iput v5, v1, Lcom/jcraft/jsch/jzlib/ZStream;->c:I

    .line 1250
    .line 1251
    iget-wide v5, v1, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 1252
    .line 1253
    iget v2, v1, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 1254
    .line 1255
    sub-int v2, v3, v2

    .line 1256
    .line 1257
    int-to-long v9, v2

    .line 1258
    add-long/2addr v5, v9

    .line 1259
    iput-wide v5, v1, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 1260
    .line 1261
    iput v3, v1, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 1262
    .line 1263
    iput v8, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->v:I

    .line 1264
    .line 1265
    const/4 v2, 0x1

    .line 1266
    goto :goto_21

    .line 1267
    :cond_32
    iput-object v12, v1, Lcom/jcraft/jsch/jzlib/ZStream;->i:Ljava/lang/String;

    .line 1268
    .line 1269
    iget v2, v1, Lcom/jcraft/jsch/jzlib/ZStream;->c:I

    .line 1270
    .line 1271
    sub-int/2addr v2, v5

    .line 1272
    shr-int/lit8 v3, v7, 0x3

    .line 1273
    .line 1274
    if-ge v3, v2, :cond_33

    .line 1275
    .line 1276
    move v2, v3

    .line 1277
    :cond_33
    add-int/2addr v5, v2

    .line 1278
    sub-int v3, v19, v2

    .line 1279
    .line 1280
    const/16 v18, 0x3

    .line 1281
    .line 1282
    shl-int/lit8 v2, v2, 0x3

    .line 1283
    .line 1284
    sub-int/2addr v7, v2

    .line 1285
    iput v6, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->q:I

    .line 1286
    .line 1287
    iput v7, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->p:I

    .line 1288
    .line 1289
    iput v5, v1, Lcom/jcraft/jsch/jzlib/ZStream;->c:I

    .line 1290
    .line 1291
    iget-wide v5, v1, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 1292
    .line 1293
    iget v2, v1, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 1294
    .line 1295
    sub-int v2, v3, v2

    .line 1296
    .line 1297
    int-to-long v9, v2

    .line 1298
    add-long/2addr v5, v9

    .line 1299
    iput-wide v5, v1, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 1300
    .line 1301
    iput v3, v1, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 1302
    .line 1303
    iput v8, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->v:I

    .line 1304
    .line 1305
    goto/16 :goto_1e

    .line 1306
    .line 1307
    :goto_21
    iget v3, v1, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 1308
    .line 1309
    iget v5, v1, Lcom/jcraft/jsch/jzlib/ZStream;->c:I

    .line 1310
    .line 1311
    iget v6, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->q:I

    .line 1312
    .line 1313
    iget v7, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->p:I

    .line 1314
    .line 1315
    iget v8, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->v:I

    .line 1316
    .line 1317
    iget v9, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->u:I

    .line 1318
    .line 1319
    if-ge v8, v9, :cond_34

    .line 1320
    .line 1321
    sub-int/2addr v9, v8

    .line 1322
    const/4 v10, 0x1

    .line 1323
    sub-int/2addr v9, v10

    .line 1324
    goto :goto_22

    .line 1325
    :cond_34
    const/4 v10, 0x1

    .line 1326
    iget v9, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->t:I

    .line 1327
    .line 1328
    sub-int/2addr v9, v8

    .line 1329
    :goto_22
    if-eqz v2, :cond_36

    .line 1330
    .line 1331
    if-ne v2, v10, :cond_35

    .line 1332
    .line 1333
    const/4 v14, 0x7

    .line 1334
    goto :goto_23

    .line 1335
    :cond_35
    const/16 v14, 0x9

    .line 1336
    .line 1337
    :goto_23
    iput v14, v0, Lcom/jcraft/jsch/jzlib/InfCodes;->a:I

    .line 1338
    .line 1339
    move v10, v9

    .line 1340
    goto/16 :goto_6

    .line 1341
    .line 1342
    :cond_36
    move v10, v9

    .line 1343
    :cond_37
    iget-byte v9, v0, Lcom/jcraft/jsch/jzlib/InfCodes;->i:B

    .line 1344
    .line 1345
    iput v9, v0, Lcom/jcraft/jsch/jzlib/InfCodes;->e:I

    .line 1346
    .line 1347
    iget-object v9, v0, Lcom/jcraft/jsch/jzlib/InfCodes;->k:[I

    .line 1348
    .line 1349
    iput-object v9, v0, Lcom/jcraft/jsch/jzlib/InfCodes;->c:[I

    .line 1350
    .line 1351
    iget v9, v0, Lcom/jcraft/jsch/jzlib/InfCodes;->l:I

    .line 1352
    .line 1353
    iput v9, v0, Lcom/jcraft/jsch/jzlib/InfCodes;->d:I

    .line 1354
    .line 1355
    const/4 v9, 0x1

    .line 1356
    iput v9, v0, Lcom/jcraft/jsch/jzlib/InfCodes;->a:I

    .line 1357
    .line 1358
    :goto_24
    iget v11, v0, Lcom/jcraft/jsch/jzlib/InfCodes;->e:I

    .line 1359
    .line 1360
    :goto_25
    if-ge v7, v11, :cond_39

    .line 1361
    .line 1362
    if-eqz v5, :cond_38

    .line 1363
    .line 1364
    add-int/lit8 v5, v5, -0x1

    .line 1365
    .line 1366
    iget-object v2, v1, Lcom/jcraft/jsch/jzlib/ZStream;->a:[B

    .line 1367
    .line 1368
    add-int/lit8 v13, v3, 0x1

    .line 1369
    .line 1370
    aget-byte v2, v2, v3

    .line 1371
    .line 1372
    and-int/lit16 v2, v2, 0xff

    .line 1373
    .line 1374
    shl-int/2addr v2, v7

    .line 1375
    or-int/2addr v6, v2

    .line 1376
    add-int/lit8 v7, v7, 0x8

    .line 1377
    .line 1378
    move v3, v13

    .line 1379
    const/4 v2, 0x0

    .line 1380
    goto :goto_25

    .line 1381
    :cond_38
    iput v6, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->q:I

    .line 1382
    .line 1383
    iput v7, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->p:I

    .line 1384
    .line 1385
    iput v5, v1, Lcom/jcraft/jsch/jzlib/ZStream;->c:I

    .line 1386
    .line 1387
    iget-wide v5, v1, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 1388
    .line 1389
    iget v0, v1, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 1390
    .line 1391
    sub-int v0, v3, v0

    .line 1392
    .line 1393
    int-to-long v9, v0

    .line 1394
    add-long/2addr v5, v9

    .line 1395
    iput-wide v5, v1, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 1396
    .line 1397
    iput v3, v1, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 1398
    .line 1399
    iput v8, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->v:I

    .line 1400
    .line 1401
    invoke-virtual {v4, v2}, Lcom/jcraft/jsch/jzlib/InfBlocks;->a(I)I

    .line 1402
    .line 1403
    .line 1404
    move-result v0

    .line 1405
    return v0

    .line 1406
    :cond_39
    iget v13, v0, Lcom/jcraft/jsch/jzlib/InfCodes;->d:I

    .line 1407
    .line 1408
    aget v11, v16, v11

    .line 1409
    .line 1410
    and-int/2addr v11, v6

    .line 1411
    add-int/2addr v13, v11

    .line 1412
    const/16 v18, 0x3

    .line 1413
    .line 1414
    mul-int/lit8 v13, v13, 0x3

    .line 1415
    .line 1416
    iget-object v11, v0, Lcom/jcraft/jsch/jzlib/InfCodes;->c:[I

    .line 1417
    .line 1418
    add-int/lit8 v14, v13, 0x1

    .line 1419
    .line 1420
    aget v14, v11, v14

    .line 1421
    .line 1422
    ushr-int/2addr v6, v14

    .line 1423
    sub-int/2addr v7, v14

    .line 1424
    aget v14, v11, v13

    .line 1425
    .line 1426
    if-nez v14, :cond_3a

    .line 1427
    .line 1428
    add-int/lit8 v13, v13, 0x2

    .line 1429
    .line 1430
    aget v11, v11, v13

    .line 1431
    .line 1432
    iput v11, v0, Lcom/jcraft/jsch/jzlib/InfCodes;->f:I

    .line 1433
    .line 1434
    const/4 v11, 0x6

    .line 1435
    iput v11, v0, Lcom/jcraft/jsch/jzlib/InfCodes;->a:I

    .line 1436
    .line 1437
    goto/16 :goto_1

    .line 1438
    .line 1439
    :cond_3a
    and-int/lit8 v15, v14, 0x10

    .line 1440
    .line 1441
    if-eqz v15, :cond_3b

    .line 1442
    .line 1443
    and-int/lit8 v12, v14, 0xf

    .line 1444
    .line 1445
    iput v12, v0, Lcom/jcraft/jsch/jzlib/InfCodes;->g:I

    .line 1446
    .line 1447
    add-int/lit8 v13, v13, 0x2

    .line 1448
    .line 1449
    aget v11, v11, v13

    .line 1450
    .line 1451
    iput v11, v0, Lcom/jcraft/jsch/jzlib/InfCodes;->b:I

    .line 1452
    .line 1453
    const/4 v11, 0x2

    .line 1454
    iput v11, v0, Lcom/jcraft/jsch/jzlib/InfCodes;->a:I

    .line 1455
    .line 1456
    goto/16 :goto_1

    .line 1457
    .line 1458
    :cond_3b
    and-int/lit8 v15, v14, 0x40

    .line 1459
    .line 1460
    if-nez v15, :cond_3c

    .line 1461
    .line 1462
    iput v14, v0, Lcom/jcraft/jsch/jzlib/InfCodes;->e:I

    .line 1463
    .line 1464
    div-int/lit8 v12, v13, 0x3

    .line 1465
    .line 1466
    add-int/lit8 v13, v13, 0x2

    .line 1467
    .line 1468
    aget v11, v11, v13

    .line 1469
    .line 1470
    add-int/2addr v12, v11

    .line 1471
    iput v12, v0, Lcom/jcraft/jsch/jzlib/InfCodes;->d:I

    .line 1472
    .line 1473
    goto/16 :goto_1

    .line 1474
    .line 1475
    :cond_3c
    and-int/lit8 v11, v14, 0x20

    .line 1476
    .line 1477
    if-eqz v11, :cond_3d

    .line 1478
    .line 1479
    const/4 v11, 0x7

    .line 1480
    iput v11, v0, Lcom/jcraft/jsch/jzlib/InfCodes;->a:I

    .line 1481
    .line 1482
    goto/16 :goto_1

    .line 1483
    .line 1484
    :cond_3d
    const/16 v2, 0x9

    .line 1485
    .line 1486
    iput v2, v0, Lcom/jcraft/jsch/jzlib/InfCodes;->a:I

    .line 1487
    .line 1488
    iput-object v12, v1, Lcom/jcraft/jsch/jzlib/ZStream;->i:Ljava/lang/String;

    .line 1489
    .line 1490
    iput v6, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->q:I

    .line 1491
    .line 1492
    iput v7, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->p:I

    .line 1493
    .line 1494
    iput v5, v1, Lcom/jcraft/jsch/jzlib/ZStream;->c:I

    .line 1495
    .line 1496
    iget-wide v5, v1, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 1497
    .line 1498
    iget v0, v1, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 1499
    .line 1500
    sub-int v0, v3, v0

    .line 1501
    .line 1502
    int-to-long v9, v0

    .line 1503
    add-long/2addr v5, v9

    .line 1504
    iput-wide v5, v1, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 1505
    .line 1506
    iput v3, v1, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 1507
    .line 1508
    iput v8, v4, Lcom/jcraft/jsch/jzlib/InfBlocks;->v:I

    .line 1509
    .line 1510
    const/4 v0, -0x3

    .line 1511
    invoke-virtual {v4, v0}, Lcom/jcraft/jsch/jzlib/InfBlocks;->a(I)I

    .line 1512
    .line 1513
    .line 1514
    move-result v0

    .line 1515
    return v0

    .line 1516
    nop

    .line 1517
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_6
        :pswitch_7
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
