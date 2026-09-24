.class public final Lcom/google/android/recaptcha/internal/zzgp;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/google/android/recaptcha/internal/zzgx;


# static fields
.field public static final zza:Lcom/google/android/recaptcha/internal/zzgp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/recaptcha/internal/zzgp;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/recaptcha/internal/zzgp;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/recaptcha/internal/zzgp;->zza:Lcom/google/android/recaptcha/internal/zzgp;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final varargs zza(ILcom/google/android/recaptcha/internal/zzgd;[Lcom/google/android/recaptcha/internal/zzue;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/recaptcha/internal/zzce;
        }
    .end annotation

    .line 1
    array-length p0, p3

    .line 2
    const/4 v0, 0x4

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne p0, v2, :cond_15

    .line 6
    .line 7
    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzgd;->zzc()Lcom/google/android/recaptcha/internal/zzge;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const/4 v3, 0x0

    .line 12
    aget-object p3, p3, v3

    .line 13
    .line 14
    invoke-virtual {p0, p3}, Lcom/google/android/recaptcha/internal/zzge;->zza(Lcom/google/android/recaptcha/internal/zzue;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {p0}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result p3

    .line 22
    if-eq v2, p3, :cond_0

    .line 23
    .line 24
    move-object p0, v1

    .line 25
    :cond_0
    const/4 p3, 0x5

    .line 26
    if-eqz p0, :cond_14

    .line 27
    .line 28
    instance-of v4, p0, [I

    .line 29
    .line 30
    const-string v5, ","

    .line 31
    .line 32
    const-string v6, "["

    .line 33
    .line 34
    const-string v7, "]"

    .line 35
    .line 36
    if-eqz v4, :cond_3

    .line 37
    .line 38
    check-cast p0, [I

    .line 39
    .line 40
    new-instance p3, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 46
    .line 47
    .line 48
    array-length v0, p0

    .line 49
    move v1, v3

    .line 50
    :goto_0
    if-ge v3, v0, :cond_2

    .line 51
    .line 52
    aget v4, p0, v3

    .line 53
    .line 54
    add-int/2addr v1, v2

    .line 55
    if-le v1, v2, :cond_1

    .line 56
    .line 57
    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 58
    .line 59
    .line 60
    :cond_1
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 65
    .line 66
    .line 67
    add-int/lit8 v3, v3, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    goto/16 :goto_6

    .line 78
    .line 79
    :cond_3
    instance-of v4, p0, [B

    .line 80
    .line 81
    if-eqz v4, :cond_4

    .line 82
    .line 83
    new-instance p3, Ljava/lang/String;

    .line 84
    .line 85
    check-cast p0, [B

    .line 86
    .line 87
    sget-object v0, Lf51;->a:Ljava/nio/charset/Charset;

    .line 88
    .line 89
    invoke-direct {p3, p0, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 90
    .line 91
    .line 92
    :goto_1
    move-object p0, p3

    .line 93
    goto/16 :goto_6

    .line 94
    .line 95
    :cond_4
    instance-of v4, p0, [J

    .line 96
    .line 97
    if-eqz v4, :cond_7

    .line 98
    .line 99
    check-cast p0, [J

    .line 100
    .line 101
    new-instance p3, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 107
    .line 108
    .line 109
    array-length v0, p0

    .line 110
    move v1, v3

    .line 111
    :goto_2
    if-ge v3, v0, :cond_6

    .line 112
    .line 113
    aget-wide v8, p0, v3

    .line 114
    .line 115
    add-int/2addr v1, v2

    .line 116
    if-le v1, v2, :cond_5

    .line 117
    .line 118
    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 119
    .line 120
    .line 121
    :cond_5
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 126
    .line 127
    .line 128
    add-int/lit8 v3, v3, 0x1

    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_6
    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    goto/16 :goto_6

    .line 139
    .line 140
    :cond_7
    instance-of v4, p0, [S

    .line 141
    .line 142
    if-eqz v4, :cond_a

    .line 143
    .line 144
    check-cast p0, [S

    .line 145
    .line 146
    new-instance p3, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 152
    .line 153
    .line 154
    array-length v0, p0

    .line 155
    move v1, v3

    .line 156
    :goto_3
    if-ge v3, v0, :cond_9

    .line 157
    .line 158
    aget-short v4, p0, v3

    .line 159
    .line 160
    add-int/2addr v1, v2

    .line 161
    if-le v1, v2, :cond_8

    .line 162
    .line 163
    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 164
    .line 165
    .line 166
    :cond_8
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v4

    .line 170
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 171
    .line 172
    .line 173
    add-int/lit8 v3, v3, 0x1

    .line 174
    .line 175
    goto :goto_3

    .line 176
    :cond_9
    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 177
    .line 178
    .line 179
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p0

    .line 183
    goto/16 :goto_6

    .line 184
    .line 185
    :cond_a
    instance-of v4, p0, [F

    .line 186
    .line 187
    if-eqz v4, :cond_d

    .line 188
    .line 189
    check-cast p0, [F

    .line 190
    .line 191
    new-instance p3, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 197
    .line 198
    .line 199
    array-length v0, p0

    .line 200
    move v1, v3

    .line 201
    :goto_4
    if-ge v3, v0, :cond_c

    .line 202
    .line 203
    aget v4, p0, v3

    .line 204
    .line 205
    add-int/2addr v1, v2

    .line 206
    if-le v1, v2, :cond_b

    .line 207
    .line 208
    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 209
    .line 210
    .line 211
    :cond_b
    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v4

    .line 215
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 216
    .line 217
    .line 218
    add-int/lit8 v3, v3, 0x1

    .line 219
    .line 220
    goto :goto_4

    .line 221
    :cond_c
    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 222
    .line 223
    .line 224
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object p0

    .line 228
    goto :goto_6

    .line 229
    :cond_d
    instance-of v4, p0, [D

    .line 230
    .line 231
    if-eqz v4, :cond_10

    .line 232
    .line 233
    check-cast p0, [D

    .line 234
    .line 235
    new-instance p3, Ljava/lang/StringBuilder;

    .line 236
    .line 237
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 238
    .line 239
    .line 240
    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 241
    .line 242
    .line 243
    array-length v0, p0

    .line 244
    move v1, v3

    .line 245
    :goto_5
    if-ge v3, v0, :cond_f

    .line 246
    .line 247
    aget-wide v8, p0, v3

    .line 248
    .line 249
    add-int/2addr v1, v2

    .line 250
    if-le v1, v2, :cond_e

    .line 251
    .line 252
    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 253
    .line 254
    .line 255
    :cond_e
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v4

    .line 259
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 260
    .line 261
    .line 262
    add-int/lit8 v3, v3, 0x1

    .line 263
    .line 264
    goto :goto_5

    .line 265
    :cond_f
    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 266
    .line 267
    .line 268
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object p0

    .line 272
    goto :goto_6

    .line 273
    :cond_10
    instance-of v2, p0, [C

    .line 274
    .line 275
    if-eqz v2, :cond_11

    .line 276
    .line 277
    new-instance p3, Ljava/lang/String;

    .line 278
    .line 279
    check-cast p0, [C

    .line 280
    .line 281
    invoke-direct {p3, p0}, Ljava/lang/String;-><init>([C)V

    .line 282
    .line 283
    .line 284
    goto/16 :goto_1

    .line 285
    .line 286
    :cond_11
    instance-of v2, p0, [Ljava/lang/Object;

    .line 287
    .line 288
    if-eqz v2, :cond_12

    .line 289
    .line 290
    check-cast p0, [Ljava/lang/Object;

    .line 291
    .line 292
    const/16 p3, 0x38

    .line 293
    .line 294
    invoke-static {p3, v5, p0}, Lx50;->s0(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object p0

    .line 298
    goto :goto_6

    .line 299
    :cond_12
    instance-of v2, p0, Ljava/util/Collection;

    .line 300
    .line 301
    if-eqz v2, :cond_13

    .line 302
    .line 303
    move-object v3, p0

    .line 304
    check-cast v3, Ljava/lang/Iterable;

    .line 305
    .line 306
    const/4 v7, 0x0

    .line 307
    const/16 v8, 0x38

    .line 308
    .line 309
    const-string v4, ","

    .line 310
    .line 311
    const-string v5, "["

    .line 312
    .line 313
    const-string v6, "]"

    .line 314
    .line 315
    invoke-static/range {v3 .. v8}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object p0

    .line 319
    :goto_6
    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzgd;->zzc()Lcom/google/android/recaptcha/internal/zzge;

    .line 320
    .line 321
    .line 322
    move-result-object p2

    .line 323
    invoke-virtual {p2, p1, p0}, Lcom/google/android/recaptcha/internal/zzge;->zze(ILjava/lang/Object;)V

    .line 324
    .line 325
    .line 326
    return-void

    .line 327
    :cond_13
    invoke-static {v0, p3, v1}, Lg84;->d(IILjava/lang/Throwable;)V

    .line 328
    .line 329
    .line 330
    return-void

    .line 331
    :cond_14
    invoke-static {v0, p3, v1}, Lg84;->d(IILjava/lang/Throwable;)V

    .line 332
    .line 333
    .line 334
    return-void

    .line 335
    :cond_15
    const/4 p0, 0x3

    .line 336
    invoke-static {v0, p0, v1}, Lg84;->d(IILjava/lang/Throwable;)V

    .line 337
    .line 338
    .line 339
    return-void
.end method
