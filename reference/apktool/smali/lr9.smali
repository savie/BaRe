.class public final Llr9;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lca9;


# static fields
.field public static final g:[B


# instance fields
.field public final a:Lla;

.field public final b:Lmr9;

.field public final c:Lia9;

.field public final d:Lhr9;

.field public final e:I

.field public final f:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    sput-object v0, Llr9;->g:[B

    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>(Lla;Lmr9;Lia9;Lhr9;ILd2a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Llr9;->a:Lla;

    .line 5
    .line 6
    iput-object p2, p0, Llr9;->b:Lmr9;

    .line 7
    .line 8
    iput-object p3, p0, Llr9;->c:Lia9;

    .line 9
    .line 10
    iput-object p4, p0, Llr9;->d:Lhr9;

    .line 11
    .line 12
    iput p5, p0, Llr9;->e:I

    .line 13
    .line 14
    invoke-virtual {p6}, Ld2a;->b()[B

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Llr9;->f:[B

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final zza([B)[B
    .locals 13

    .line 1
    iget-object v0, p0, Llr9;->f:[B

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    iget v2, p0, Llr9;->e:I

    .line 5
    .line 6
    add-int v7, v1, v2

    .line 7
    .line 8
    array-length v1, p1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-lt v1, v7, :cond_5

    .line 11
    .line 12
    invoke-static {v0, p1}, Lau9;->b([B[B)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_4

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    new-array v1, v0, [B

    .line 20
    .line 21
    iget-object v3, p0, Llr9;->f:[B

    .line 22
    .line 23
    array-length v3, v3

    .line 24
    invoke-static {p1, v3, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    iget-object v4, p0, Llr9;->a:Lla;

    .line 29
    .line 30
    iget-object v5, p0, Llr9;->b:Lmr9;

    .line 31
    .line 32
    iget-object v6, p0, Llr9;->c:Lia9;

    .line 33
    .line 34
    iget-object p0, p0, Llr9;->d:Lhr9;

    .line 35
    .line 36
    invoke-interface {v5, v3, v4}, Lmr9;->b([BLla;)[B

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    sget-object v4, Lor9;->a:[B

    .line 41
    .line 42
    invoke-interface {v5}, Lmr9;->zza()[B

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    iget-object v8, v6, Lia9;->b:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    .line 49
    .line 50
    .line 51
    move-result v9

    .line 52
    const/4 v10, 0x2

    .line 53
    const/4 v11, -0x1

    .line 54
    sparse-switch v9, :sswitch_data_0

    .line 55
    .line 56
    .line 57
    :goto_0
    move v0, v11

    .line 58
    goto :goto_1

    .line 59
    :sswitch_0
    const-string v0, "HmacSha512"

    .line 60
    .line 61
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-nez v0, :cond_0

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    move v0, v10

    .line 69
    goto :goto_1

    .line 70
    :sswitch_1
    const-string v0, "HmacSha384"

    .line 71
    .line 72
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-nez v0, :cond_1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_1
    const/4 v0, 0x1

    .line 80
    goto :goto_1

    .line 81
    :sswitch_2
    const-string v9, "HmacSha256"

    .line 82
    .line 83
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v8

    .line 87
    if-nez v8, :cond_2

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_2
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 91
    .line 92
    .line 93
    const-string p0, "Could not determine HPKE KDF ID"

    .line 94
    .line 95
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    return-object v2

    .line 99
    :pswitch_0
    sget-object v0, Lor9;->h:[B

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :pswitch_1
    sget-object v0, Lor9;->g:[B

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :pswitch_2
    sget-object v0, Lor9;->f:[B

    .line 106
    .line 107
    :goto_2
    invoke-interface {p0}, Lhr9;->zzc()[B

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    sget-object v8, Lor9;->n:[B

    .line 112
    .line 113
    filled-new-array {v8, v5, v0, v2}, [[B

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-static {v0}, Lz85;->N([[B)[B

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    sget-object v2, Lor9;->l:[B

    .line 122
    .line 123
    sget-object v5, Lny1;->k:[B

    .line 124
    .line 125
    const-string v8, "psk_id_hash"

    .line 126
    .line 127
    sget-object v9, Lor9;->o:[B

    .line 128
    .line 129
    sget-object v11, Lau9;->a:Ljava/nio/charset/Charset;

    .line 130
    .line 131
    invoke-virtual {v8, v11}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 132
    .line 133
    .line 134
    move-result-object v8

    .line 135
    filled-new-array {v9, v0, v8, v5}, [[B

    .line 136
    .line 137
    .line 138
    move-result-object v8

    .line 139
    invoke-static {v8}, Lz85;->N([[B)[B

    .line 140
    .line 141
    .line 142
    move-result-object v8

    .line 143
    invoke-virtual {v6, v8, v2}, Lia9;->b([B[B)[B

    .line 144
    .line 145
    .line 146
    move-result-object v8

    .line 147
    const-string v12, "info_hash"

    .line 148
    .line 149
    invoke-virtual {v12, v11}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 150
    .line 151
    .line 152
    move-result-object v12

    .line 153
    filled-new-array {v9, v0, v12, v1}, [[B

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    invoke-static {v1}, Lz85;->N([[B)[B

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    invoke-virtual {v6, v1, v2}, Lia9;->b([B[B)[B

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    filled-new-array {v4, v8, v1}, [[B

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    invoke-static {v1}, Lz85;->N([[B)[B

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    const-string v2, "secret"

    .line 174
    .line 175
    invoke-virtual {v2, v11}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    filled-new-array {v9, v0, v2, v5}, [[B

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    invoke-static {v2}, Lz85;->N([[B)[B

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    invoke-virtual {v6, v2, v3}, Lia9;->b([B[B)[B

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    const-string v3, "key"

    .line 192
    .line 193
    invoke-interface {p0}, Lhr9;->zza()I

    .line 194
    .line 195
    .line 196
    move-result v4

    .line 197
    invoke-static {v10, v4}, Lor9;->b(II)[B

    .line 198
    .line 199
    .line 200
    move-result-object v5

    .line 201
    invoke-virtual {v3, v11}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 202
    .line 203
    .line 204
    move-result-object v3

    .line 205
    filled-new-array {v5, v9, v0, v3, v1}, [[B

    .line 206
    .line 207
    .line 208
    move-result-object v3

    .line 209
    invoke-static {v3}, Lz85;->N([[B)[B

    .line 210
    .line 211
    .line 212
    move-result-object v3

    .line 213
    invoke-virtual {v6, v4, v2, v3}, Lia9;->a(I[B[B)[B

    .line 214
    .line 215
    .line 216
    move-result-object v4

    .line 217
    const-string v3, "base_nonce"

    .line 218
    .line 219
    const/16 v5, 0xc

    .line 220
    .line 221
    invoke-static {v10, v5}, Lor9;->b(II)[B

    .line 222
    .line 223
    .line 224
    move-result-object v8

    .line 225
    invoke-virtual {v3, v11}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 226
    .line 227
    .line 228
    move-result-object v3

    .line 229
    filled-new-array {v8, v9, v0, v3, v1}, [[B

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    invoke-static {v0}, Lz85;->N([[B)[B

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    invoke-virtual {v6, v5, v2, v0}, Lia9;->a(I[B[B)[B

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 242
    .line 243
    const/16 v2, 0x60

    .line 244
    .line 245
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    .line 246
    .line 247
    .line 248
    move-result-object v2

    .line 249
    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 250
    .line 251
    .line 252
    move-result-object v2

    .line 253
    new-instance v3, Lny1;

    .line 254
    .line 255
    invoke-direct {v3, v4, v0, v2, p0}, Lny1;-><init>([B[BLjava/math/BigInteger;Lhr9;)V

    .line 256
    .line 257
    .line 258
    sget-object v8, Llr9;->g:[B

    .line 259
    .line 260
    monitor-enter v3

    .line 261
    :try_start_0
    iget-object p0, v3, Lny1;->d:Ljava/lang/Object;

    .line 262
    .line 263
    check-cast p0, Ljava/math/BigInteger;

    .line 264
    .line 265
    iget-object v2, v3, Lny1;->b:Ljava/lang/Object;

    .line 266
    .line 267
    check-cast v2, Lhr9;

    .line 268
    .line 269
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 270
    .line 271
    .line 272
    invoke-static {v5, p0}, Lwx3;->I(ILjava/math/BigInteger;)[B

    .line 273
    .line 274
    .line 275
    move-result-object p0

    .line 276
    invoke-static {v0, p0}, Lz85;->L([B[B)[B

    .line 277
    .line 278
    .line 279
    move-result-object v5

    .line 280
    iget-object p0, v3, Lny1;->d:Ljava/lang/Object;

    .line 281
    .line 282
    check-cast p0, Ljava/math/BigInteger;

    .line 283
    .line 284
    iget-object v0, v3, Lny1;->c:Ljava/lang/Object;

    .line 285
    .line 286
    check-cast v0, Ljava/math/BigInteger;

    .line 287
    .line 288
    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    .line 289
    .line 290
    .line 291
    move-result p0

    .line 292
    if-gez p0, :cond_3

    .line 293
    .line 294
    iget-object p0, v3, Lny1;->d:Ljava/lang/Object;

    .line 295
    .line 296
    check-cast p0, Ljava/math/BigInteger;

    .line 297
    .line 298
    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 299
    .line 300
    .line 301
    move-result-object p0

    .line 302
    iput-object p0, v3, Lny1;->d:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    .line 304
    monitor-exit v3

    .line 305
    iget-object p0, v3, Lny1;->b:Ljava/lang/Object;

    .line 306
    .line 307
    move-object v3, p0

    .line 308
    check-cast v3, Lhr9;

    .line 309
    .line 310
    move-object v6, p1

    .line 311
    invoke-interface/range {v3 .. v8}, Lhr9;->c([B[B[BI[B)[B

    .line 312
    .line 313
    .line 314
    move-result-object p0

    .line 315
    return-object p0

    .line 316
    :catchall_0
    move-exception v0

    .line 317
    move-object p0, v0

    .line 318
    goto :goto_3

    .line 319
    :cond_3
    :try_start_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 320
    .line 321
    const-string p1, "message limit reached"

    .line 322
    .line 323
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    throw p0

    .line 327
    :goto_3
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 328
    throw p0

    .line 329
    :cond_4
    const-string p0, "Invalid ciphertext (output prefix mismatch)"

    .line 330
    .line 331
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    return-object v2

    .line 335
    :cond_5
    const-string p0, "Ciphertext is too short."

    .line 336
    .line 337
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    return-object v2

    .line 341
    :sswitch_data_0
    .sparse-switch
        0x3aaea10e -> :sswitch_2
        0x3aaea52a -> :sswitch_1
        0x3aaeabd1 -> :sswitch_0
    .end sparse-switch

    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
