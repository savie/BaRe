.class public final Lgp5;
.super Lcy0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final s:Ll15;


# instance fields
.field public j:I

.field public k:I

.field public l:Ljava/util/EnumSet;

.field public m:[B

.field public n:Lbw8;

.field public o:I

.field public p:I

.field public q:Ljava/lang/String;

.field public r:Lrx7;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lgp5;

    .line 2
    .line 3
    invoke-static {v0}, Lo15;->b(Ljava/lang/Class;)Ll15;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lgp5;->s:Ll15;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final N(Ljw0;)V
    .locals 10

    .line 1
    sget-object v0, Lh51;->a:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {p1, v0, v1}, Low0;->q(Ljava/nio/charset/Charset;I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    iget-object v0, p1, Low0;->b:Lvw2;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lvw2;->e(Low0;)J

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lvw2;->d(Low0;)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    iput v2, p0, Lgp5;->j:I

    .line 18
    .line 19
    const/4 v2, 0x2

    .line 20
    invoke-virtual {p1, v2}, Low0;->t(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Low0;->s()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    iput v3, p0, Lgp5;->k:I

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Lvw2;->e(Low0;)J

    .line 30
    .line 31
    .line 32
    move-result-wide v3

    .line 33
    const-class v5, Llp5;

    .line 34
    .line 35
    invoke-static {v3, v4, v5}, Lsz8;->i0(JLjava/lang/Class;)Ljava/util/EnumSet;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    iput-object v3, p0, Lgp5;->l:Ljava/util/EnumSet;

    .line 40
    .line 41
    new-array v3, v1, [B

    .line 42
    .line 43
    invoke-virtual {p1, v3, v1}, Low0;->o([BI)V

    .line 44
    .line 45
    .line 46
    iput-object v3, p0, Lgp5;->m:[B

    .line 47
    .line 48
    invoke-virtual {p1, v1}, Low0;->t(I)V

    .line 49
    .line 50
    .line 51
    iget-object v3, p0, Lgp5;->l:Ljava/util/EnumSet;

    .line 52
    .line 53
    sget-object v4, Llp5;->f:Llp5;

    .line 54
    .line 55
    invoke-virtual {v3, v4}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-eqz v3, :cond_0

    .line 60
    .line 61
    invoke-virtual {v0, p1}, Lvw2;->d(Low0;)I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    iput v3, p0, Lgp5;->o:I

    .line 66
    .line 67
    invoke-virtual {p1, v2}, Low0;->t(I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Low0;->s()I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    iput v3, p0, Lgp5;->p:I

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {p1, v1}, Low0;->t(I)V

    .line 78
    .line 79
    .line 80
    :goto_0
    iget-object v3, p0, Lgp5;->l:Ljava/util/EnumSet;

    .line 81
    .line 82
    sget-object v4, Llp5;->e:Llp5;

    .line 83
    .line 84
    invoke-virtual {v3, v4}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    const/4 v4, 0x0

    .line 89
    if-eqz v3, :cond_1

    .line 90
    .line 91
    new-instance v3, Lbw8;

    .line 92
    .line 93
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1}, Low0;->n()B

    .line 97
    .line 98
    .line 99
    move-result v5

    .line 100
    int-to-long v5, v5

    .line 101
    const-class v7, Lzv8;

    .line 102
    .line 103
    invoke-static {v5, v6, v7, v4}, Lsz8;->k0(JLjava/lang/Class;Lbp5;)Lsx2;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    check-cast v5, Lzv8;

    .line 108
    .line 109
    iput-object v5, v3, Lbw8;->a:Lzv8;

    .line 110
    .line 111
    invoke-virtual {p1}, Low0;->n()B

    .line 112
    .line 113
    .line 114
    move-result v5

    .line 115
    int-to-long v5, v5

    .line 116
    const-class v7, Law8;

    .line 117
    .line 118
    invoke-static {v5, v6, v7, v4}, Lsz8;->k0(JLjava/lang/Class;Lbp5;)Lsx2;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    check-cast v5, Law8;

    .line 123
    .line 124
    iput-object v5, v3, Lbw8;->b:Law8;

    .line 125
    .line 126
    invoke-virtual {v0, p1}, Lvw2;->d(Low0;)I

    .line 127
    .line 128
    .line 129
    move-result v5

    .line 130
    iput v5, v3, Lbw8;->c:I

    .line 131
    .line 132
    const/4 v5, 0x3

    .line 133
    invoke-virtual {p1, v5}, Low0;->t(I)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1}, Low0;->n()B

    .line 137
    .line 138
    .line 139
    move-result v5

    .line 140
    int-to-long v5, v5

    .line 141
    const-class v7, Lyv8;

    .line 142
    .line 143
    invoke-static {v5, v6, v7, v4}, Lsz8;->k0(JLjava/lang/Class;Lbp5;)Lsx2;

    .line 144
    .line 145
    .line 146
    move-result-object v5

    .line 147
    check-cast v5, Lyv8;

    .line 148
    .line 149
    iput-object v5, v3, Lbw8;->d:Lyv8;

    .line 150
    .line 151
    iput-object v3, p0, Lgp5;->n:Lbw8;

    .line 152
    .line 153
    sget-object v5, Lgp5;->s:Ll15;

    .line 154
    .line 155
    const-string v6, "Windows version = {}"

    .line 156
    .line 157
    invoke-interface {v5, v3, v6}, Ll15;->D(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    goto :goto_1

    .line 161
    :cond_1
    invoke-virtual {p1, v1}, Low0;->t(I)V

    .line 162
    .line 163
    .line 164
    :goto_1
    iget v3, p0, Lgp5;->j:I

    .line 165
    .line 166
    if-lez v3, :cond_2

    .line 167
    .line 168
    iget v5, p0, Lgp5;->k:I

    .line 169
    .line 170
    iput v5, p1, Low0;->c:I

    .line 171
    .line 172
    sget-object v5, Lh51;->c:Ljava/nio/charset/Charset;

    .line 173
    .line 174
    div-int/2addr v3, v2

    .line 175
    invoke-virtual {p1, v5, v3}, Low0;->q(Ljava/nio/charset/Charset;I)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    iput-object v3, p0, Lgp5;->q:Ljava/lang/String;

    .line 180
    .line 181
    :cond_2
    iget v3, p0, Lgp5;->o:I

    .line 182
    .line 183
    if-lez v3, :cond_5

    .line 184
    .line 185
    iget v3, p0, Lgp5;->p:I

    .line 186
    .line 187
    iput v3, p1, Low0;->c:I

    .line 188
    .line 189
    new-instance v3, Lrx7;

    .line 190
    .line 191
    invoke-direct {v3}, Lrx7;-><init>()V

    .line 192
    .line 193
    .line 194
    :goto_2
    invoke-virtual {v0, p1}, Lvw2;->d(Low0;)I

    .line 195
    .line 196
    .line 197
    move-result v5

    .line 198
    int-to-long v6, v5

    .line 199
    const-class v8, Lpe0;

    .line 200
    .line 201
    invoke-static {v6, v7, v8, v4}, Lsz8;->k0(JLjava/lang/Class;Lbp5;)Lsx2;

    .line 202
    .line 203
    .line 204
    move-result-object v6

    .line 205
    check-cast v6, Lpe0;

    .line 206
    .line 207
    if-eqz v6, :cond_4

    .line 208
    .line 209
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 210
    .line 211
    .line 212
    move-result v5

    .line 213
    sget-object v7, Lpe0;->b:Lpe0;

    .line 214
    .line 215
    packed-switch v5, :pswitch_data_0

    .line 216
    .line 217
    .line 218
    const-string p0, "Encountered unhandled AvId: "

    .line 219
    .line 220
    invoke-static {v6, p0}, Ly5;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    return-void

    .line 224
    :pswitch_0
    new-instance v5, Lre0;

    .line 225
    .line 226
    sget-object v6, Lpe0;->p:Lpe0;

    .line 227
    .line 228
    invoke-direct {v5, v6}, Lqe0;-><init>(Lpe0;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v0, p1}, Lvw2;->d(Low0;)I

    .line 232
    .line 233
    .line 234
    move-result v6

    .line 235
    new-array v8, v6, [B

    .line 236
    .line 237
    invoke-virtual {p1, v8, v6}, Low0;->o([BI)V

    .line 238
    .line 239
    .line 240
    iput-object v8, v5, Lqe0;->b:Ljava/lang/Object;

    .line 241
    .line 242
    goto :goto_3

    .line 243
    :pswitch_1
    new-instance v5, Lue0;

    .line 244
    .line 245
    sget-object v6, Lpe0;->k:Lpe0;

    .line 246
    .line 247
    invoke-direct {v5, v6}, Lqe0;-><init>(Lpe0;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {p1}, Low0;->r()V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v0, p1}, Lvw2;->e(Low0;)J

    .line 254
    .line 255
    .line 256
    const/4 v6, 0x4

    .line 257
    invoke-virtual {p1, v6}, Low0;->t(I)V

    .line 258
    .line 259
    .line 260
    new-array v6, v1, [B

    .line 261
    .line 262
    invoke-virtual {p1, v6, v1}, Low0;->o([BI)V

    .line 263
    .line 264
    .line 265
    iput-object v6, v5, Lqe0;->b:Ljava/lang/Object;

    .line 266
    .line 267
    const/16 v6, 0x20

    .line 268
    .line 269
    new-array v8, v6, [B

    .line 270
    .line 271
    invoke-virtual {p1, v8, v6}, Low0;->o([BI)V

    .line 272
    .line 273
    .line 274
    iput-object v8, v5, Lue0;->c:[B

    .line 275
    .line 276
    goto :goto_3

    .line 277
    :pswitch_2
    new-instance v5, Lwe0;

    .line 278
    .line 279
    sget-object v6, Lpe0;->f:Lpe0;

    .line 280
    .line 281
    invoke-direct {v5, v6}, Lqe0;-><init>(Lpe0;)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {p1}, Low0;->r()V

    .line 285
    .line 286
    .line 287
    invoke-static {p1}, Lms8;->H(Low0;)Lga3;

    .line 288
    .line 289
    .line 290
    move-result-object v6

    .line 291
    iput-object v6, v5, Lqe0;->b:Ljava/lang/Object;

    .line 292
    .line 293
    goto :goto_3

    .line 294
    :pswitch_3
    new-instance v5, Lte0;

    .line 295
    .line 296
    sget-object v6, Lpe0;->e:Lpe0;

    .line 297
    .line 298
    invoke-direct {v5, v6}, Lqe0;-><init>(Lpe0;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {p1}, Low0;->r()V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v0, p1}, Lvw2;->e(Low0;)J

    .line 305
    .line 306
    .line 307
    move-result-wide v8

    .line 308
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 309
    .line 310
    .line 311
    move-result-object v6

    .line 312
    iput-object v6, v5, Lqe0;->b:Ljava/lang/Object;

    .line 313
    .line 314
    goto :goto_3

    .line 315
    :pswitch_4
    new-instance v5, Lve0;

    .line 316
    .line 317
    invoke-direct {v5, v6}, Lqe0;-><init>(Lpe0;)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v0, p1}, Lvw2;->d(Low0;)I

    .line 321
    .line 322
    .line 323
    move-result v6

    .line 324
    sget-object v8, Lh51;->c:Ljava/nio/charset/Charset;

    .line 325
    .line 326
    div-int/2addr v6, v2

    .line 327
    invoke-virtual {p1, v8, v6}, Low0;->q(Ljava/nio/charset/Charset;I)Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v6

    .line 331
    iput-object v6, v5, Lqe0;->b:Ljava/lang/Object;

    .line 332
    .line 333
    goto :goto_3

    .line 334
    :pswitch_5
    new-instance v5, Lse0;

    .line 335
    .line 336
    invoke-direct {v5, v7}, Lqe0;-><init>(Lpe0;)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {p1}, Low0;->r()V

    .line 340
    .line 341
    .line 342
    :goto_3
    iget-object v6, v5, Lqe0;->a:Lpe0;

    .line 343
    .line 344
    if-ne v6, v7, :cond_3

    .line 345
    .line 346
    iput-object v3, p0, Lgp5;->r:Lrx7;

    .line 347
    .line 348
    return-void

    .line 349
    :cond_3
    sget-object v7, Lrx7;->b:Ll15;

    .line 350
    .line 351
    const-string v8, "Read TargetInfo {} --> {}"

    .line 352
    .line 353
    iget-object v9, v5, Lqe0;->b:Ljava/lang/Object;

    .line 354
    .line 355
    invoke-interface {v7, v6, v9, v8}, Ll15;->B(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    iget-object v6, v3, Lrx7;->a:Ljava/util/ArrayList;

    .line 359
    .line 360
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    .line 362
    .line 363
    goto/16 :goto_2

    .line 364
    .line 365
    :cond_4
    const-string p0, "Encountered unknown AvId: "

    .line 366
    .line 367
    invoke-static {v5, p0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object p0

    .line 371
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    :cond_5
    return-void

    .line 375
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "NtlmChallenge{\n  targetName=\'"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lgp5;->q:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, "\',\n  negotiateFlags="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lgp5;->l:Ljava/util/EnumSet;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ",\n  serverChallenge="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lgp5;->m:[B

    .line 29
    .line 30
    invoke-static {v1}, Ll73;->y([B)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v1, ",\n  version="

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lgp5;->n:Lbw8;

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v1, ",\n  targetInfo="

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget-object p0, p0, Lgp5;->r:Lrx7;

    .line 53
    .line 54
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string p0, "\n}"

    .line 58
    .line 59
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    return-object p0
.end method
