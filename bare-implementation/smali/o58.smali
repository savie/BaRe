.class public final Lo58;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final r:[C

.field public static final s:[I


# instance fields
.field public final a:Le51;

.field public final b:Lzw5;

.field public c:Le88;

.field public d:Lqb6;

.field public e:Z

.field public f:Ljava/lang/String;

.field public final g:Ljava/lang/StringBuilder;

.field public final h:Ljava/lang/StringBuilder;

.field public i:Lc58;

.field public final j:Lb58;

.field public final k:La58;

.field public final l:Lw48;

.field public final m:Ly48;

.field public final n:Lx48;

.field public o:Ljava/lang/String;

.field public final p:[I

.field public final q:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x7

    .line 2
    new-array v0, v0, [C

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v0, Lo58;->r:[C

    .line 8
    .line 9
    const/16 v1, 0x20

    .line 10
    .line 11
    new-array v1, v1, [I

    .line 12
    .line 13
    fill-array-data v1, :array_1

    .line 14
    .line 15
    .line 16
    sput-object v1, Lo58;->s:[I

    .line 17
    .line 18
    invoke-static {v0}, Ljava/util/Arrays;->sort([C)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    nop

    .line 23
    :array_0
    .array-data 2
        0x9s
        0xas
        0xds
        0xcs
        0x20s
        0x3cs
        0x26s
    .end array-data

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    nop

    .line 35
    :array_1
    .array-data 4
        0x20ac
        0x81
        0x201a
        0x192
        0x201e
        0x2026
        0x2020
        0x2021
        0x2c6
        0x2030
        0x160
        0x2039
        0x152
        0x8d
        0x17d
        0x8f
        0x90
        0x2018
        0x2019
        0x201c
        0x201d
        0x2022
        0x2013
        0x2014
        0x2dc
        0x2122
        0x161
        0x203a
        0x153
        0x9d
        0x17e
        0x178
    .end array-data
.end method

.method public constructor <init>(Le51;Lzw5;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Le88;->a:Lz58;

    .line 5
    .line 6
    iput-object v0, p0, Lo58;->c:Le88;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lo58;->e:Z

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lo58;->f:Ljava/lang/String;

    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const/16 v1, 0x400

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lo58;->g:Ljava/lang/StringBuilder;

    .line 22
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lo58;->h:Ljava/lang/StringBuilder;

    .line 29
    .line 30
    new-instance v0, Lb58;

    .line 31
    .line 32
    const/4 v1, 0x2

    .line 33
    invoke-direct {v0, v1}, Lc58;-><init>(I)V

    .line 34
    .line 35
    .line 36
    new-instance v2, Lb80;

    .line 37
    .line 38
    invoke-direct {v2}, Lb80;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object v2, v0, Lc58;->k:Lb80;

    .line 42
    .line 43
    iput-object v0, p0, Lo58;->j:Lb58;

    .line 44
    .line 45
    new-instance v0, La58;

    .line 46
    .line 47
    const/4 v2, 0x3

    .line 48
    invoke-direct {v0, v2}, Lc58;-><init>(I)V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lo58;->k:La58;

    .line 52
    .line 53
    new-instance v0, Lw48;

    .line 54
    .line 55
    const/4 v2, 0x5

    .line 56
    invoke-direct {v0, v2}, Lqb6;-><init>(I)V

    .line 57
    .line 58
    .line 59
    iput-object v0, p0, Lo58;->l:Lw48;

    .line 60
    .line 61
    new-instance v0, Ly48;

    .line 62
    .line 63
    invoke-direct {v0}, Ly48;-><init>()V

    .line 64
    .line 65
    .line 66
    iput-object v0, p0, Lo58;->m:Ly48;

    .line 67
    .line 68
    new-instance v0, Lx48;

    .line 69
    .line 70
    invoke-direct {v0}, Lx48;-><init>()V

    .line 71
    .line 72
    .line 73
    iput-object v0, p0, Lo58;->n:Lx48;

    .line 74
    .line 75
    const/4 v0, 0x1

    .line 76
    new-array v0, v0, [I

    .line 77
    .line 78
    iput-object v0, p0, Lo58;->p:[I

    .line 79
    .line 80
    new-array v0, v1, [I

    .line 81
    .line 82
    iput-object v0, p0, Lo58;->q:[I

    .line 83
    .line 84
    iput-object p1, p0, Lo58;->a:Le51;

    .line 85
    .line 86
    iput-object p2, p0, Lo58;->b:Lzw5;

    .line 87
    .line 88
    return-void
.end method


# virtual methods
.method public final a(Le88;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo58;->a:Le51;

    .line 2
    .line 3
    invoke-virtual {v0}, Le51;->a()V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lo58;->c:Le88;

    .line 7
    .line 8
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lo58;->b:Lzw5;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-gez v1, :cond_0

    .line 8
    .line 9
    new-instance v1, Le74;

    .line 10
    .line 11
    iget-object p0, p0, Lo58;->a:Le51;

    .line 12
    .line 13
    iget v2, p0, Le51;->f:I

    .line 14
    .line 15
    iget p0, p0, Le51;->e:I

    .line 16
    .line 17
    add-int/2addr v2, p0

    .line 18
    const-string p0, "Invalid character reference: %s"

    .line 19
    .line 20
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-direct {v1, v2, p0, p1}, Le74;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public final c(Ljava/lang/Character;Z)[I
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lo58;->a:Le51;

    .line 4
    .line 5
    invoke-virtual {v1}, Le51;->j()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    iget-object v3, v1, Le51;->h:[Ljava/lang/String;

    .line 10
    .line 11
    iget-object v4, v1, Le51;->a:[C

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    :goto_0
    const/16 v16, 0x0

    .line 16
    .line 17
    goto/16 :goto_f

    .line 18
    .line 19
    :cond_0
    if-eqz p1, :cond_1

    .line 20
    .line 21
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Character;->charValue()C

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-virtual {v1}, Le51;->i()C

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    if-ne v2, v6, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {v1}, Le51;->b()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Le51;->j()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-nez v2, :cond_2

    .line 40
    .line 41
    iget v2, v1, Le51;->e:I

    .line 42
    .line 43
    aget-char v2, v4, v2

    .line 44
    .line 45
    sget-object v6, Lo58;->r:[C

    .line 46
    .line 47
    invoke-static {v6, v2}, Ljava/util/Arrays;->binarySearch([CC)I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-ltz v2, :cond_2

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    iget v2, v1, Le51;->e:I

    .line 55
    .line 56
    iput v2, v1, Le51;->g:I

    .line 57
    .line 58
    const-string v2, "#"

    .line 59
    .line 60
    invoke-virtual {v1, v2}, Le51;->k(Ljava/lang/String;)Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    const-string v6, "missing semicolon"

    .line 65
    .line 66
    const-string v7, ";"

    .line 67
    .line 68
    const/16 v8, 0x61

    .line 69
    .line 70
    const/16 v9, 0x41

    .line 71
    .line 72
    const/16 v10, 0x39

    .line 73
    .line 74
    const/16 v11, 0x30

    .line 75
    .line 76
    iget-object v13, v0, Lo58;->p:[I

    .line 77
    .line 78
    if-eqz v2, :cond_12

    .line 79
    .line 80
    const-string v2, "X"

    .line 81
    .line 82
    invoke-virtual {v1, v2}, Le51;->l(Ljava/lang/String;)Z

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    if-eqz v2, :cond_9

    .line 87
    .line 88
    invoke-virtual {v1}, Le51;->b()V

    .line 89
    .line 90
    .line 91
    iget v14, v1, Le51;->e:I

    .line 92
    .line 93
    :goto_1
    iget v15, v1, Le51;->e:I

    .line 94
    .line 95
    const/16 v16, 0x0

    .line 96
    .line 97
    iget v5, v1, Le51;->c:I

    .line 98
    .line 99
    if-ge v15, v5, :cond_7

    .line 100
    .line 101
    aget-char v5, v4, v15

    .line 102
    .line 103
    if-lt v5, v11, :cond_4

    .line 104
    .line 105
    if-le v5, v10, :cond_3

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_3
    const/16 p1, 0x0

    .line 109
    .line 110
    goto :goto_3

    .line 111
    :cond_4
    :goto_2
    const/16 p1, 0x0

    .line 112
    .line 113
    if-lt v5, v9, :cond_5

    .line 114
    .line 115
    const/16 v12, 0x46

    .line 116
    .line 117
    if-le v5, v12, :cond_6

    .line 118
    .line 119
    :cond_5
    if-lt v5, v8, :cond_8

    .line 120
    .line 121
    const/16 v12, 0x66

    .line 122
    .line 123
    if-gt v5, v12, :cond_8

    .line 124
    .line 125
    :cond_6
    :goto_3
    add-int/lit8 v15, v15, 0x1

    .line 126
    .line 127
    iput v15, v1, Le51;->e:I

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_7
    const/16 p1, 0x0

    .line 131
    .line 132
    :cond_8
    sub-int/2addr v15, v14

    .line 133
    invoke-static {v4, v3, v14, v15}, Le51;->c([C[Ljava/lang/String;II)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    goto :goto_5

    .line 138
    :cond_9
    const/16 p1, 0x0

    .line 139
    .line 140
    const/16 v16, 0x0

    .line 141
    .line 142
    invoke-virtual {v1}, Le51;->b()V

    .line 143
    .line 144
    .line 145
    iget v5, v1, Le51;->e:I

    .line 146
    .line 147
    :goto_4
    iget v8, v1, Le51;->e:I

    .line 148
    .line 149
    iget v9, v1, Le51;->c:I

    .line 150
    .line 151
    if-ge v8, v9, :cond_a

    .line 152
    .line 153
    aget-char v9, v4, v8

    .line 154
    .line 155
    if-lt v9, v11, :cond_a

    .line 156
    .line 157
    if-gt v9, v10, :cond_a

    .line 158
    .line 159
    add-int/lit8 v8, v8, 0x1

    .line 160
    .line 161
    iput v8, v1, Le51;->e:I

    .line 162
    .line 163
    goto :goto_4

    .line 164
    :cond_a
    sub-int/2addr v8, v5

    .line 165
    invoke-static {v4, v3, v5, v8}, Le51;->c([C[Ljava/lang/String;II)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    :goto_5
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 170
    .line 171
    .line 172
    move-result v4

    .line 173
    if-nez v4, :cond_b

    .line 174
    .line 175
    const-string v2, "numeric reference with no numerals"

    .line 176
    .line 177
    invoke-virtual {v0, v2}, Lo58;->b(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    iget v0, v1, Le51;->g:I

    .line 181
    .line 182
    iput v0, v1, Le51;->e:I

    .line 183
    .line 184
    return-object v16

    .line 185
    :cond_b
    invoke-virtual {v1, v7}, Le51;->k(Ljava/lang/String;)Z

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    if-nez v1, :cond_c

    .line 190
    .line 191
    invoke-virtual {v0, v6}, Lo58;->b(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    :cond_c
    if-eqz v2, :cond_d

    .line 195
    .line 196
    const/16 v1, 0x10

    .line 197
    .line 198
    goto :goto_6

    .line 199
    :cond_d
    const/16 v1, 0xa

    .line 200
    .line 201
    :goto_6
    const/4 v2, -0x1

    .line 202
    :try_start_0
    invoke-static {v3, v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 207
    .line 208
    .line 209
    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    goto :goto_7

    .line 211
    :catch_0
    move v1, v2

    .line 212
    :goto_7
    if-eq v1, v2, :cond_11

    .line 213
    .line 214
    const v2, 0xd800

    .line 215
    .line 216
    .line 217
    if-lt v1, v2, :cond_e

    .line 218
    .line 219
    const v2, 0xdfff

    .line 220
    .line 221
    .line 222
    if-le v1, v2, :cond_11

    .line 223
    .line 224
    :cond_e
    const v2, 0x10ffff

    .line 225
    .line 226
    .line 227
    if-le v1, v2, :cond_f

    .line 228
    .line 229
    goto :goto_8

    .line 230
    :cond_f
    const/16 v2, 0x80

    .line 231
    .line 232
    if-lt v1, v2, :cond_10

    .line 233
    .line 234
    const/16 v2, 0xa0

    .line 235
    .line 236
    if-ge v1, v2, :cond_10

    .line 237
    .line 238
    const-string v2, "character is not a valid unicode code point"

    .line 239
    .line 240
    invoke-virtual {v0, v2}, Lo58;->b(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    add-int/lit8 v1, v1, -0x80

    .line 244
    .line 245
    sget-object v0, Lo58;->s:[I

    .line 246
    .line 247
    aget v1, v0, v1

    .line 248
    .line 249
    :cond_10
    aput v1, v13, p1

    .line 250
    .line 251
    return-object v13

    .line 252
    :cond_11
    :goto_8
    const-string v1, "character outside of valid range"

    .line 253
    .line 254
    invoke-virtual {v0, v1}, Lo58;->b(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    const v0, 0xfffd

    .line 258
    .line 259
    .line 260
    aput v0, v13, p1

    .line 261
    .line 262
    return-object v13

    .line 263
    :cond_12
    const/16 p1, 0x0

    .line 264
    .line 265
    const/16 v16, 0x0

    .line 266
    .line 267
    invoke-virtual {v1}, Le51;->b()V

    .line 268
    .line 269
    .line 270
    iget v2, v1, Le51;->e:I

    .line 271
    .line 272
    :goto_9
    iget v5, v1, Le51;->e:I

    .line 273
    .line 274
    iget v12, v1, Le51;->c:I

    .line 275
    .line 276
    const/4 v14, 0x1

    .line 277
    if-ge v5, v12, :cond_16

    .line 278
    .line 279
    aget-char v5, v4, v5

    .line 280
    .line 281
    if-lt v5, v9, :cond_13

    .line 282
    .line 283
    const/16 v12, 0x5a

    .line 284
    .line 285
    if-le v5, v12, :cond_15

    .line 286
    .line 287
    :cond_13
    if-lt v5, v8, :cond_14

    .line 288
    .line 289
    const/16 v12, 0x7a

    .line 290
    .line 291
    if-le v5, v12, :cond_15

    .line 292
    .line 293
    :cond_14
    invoke-static {v5}, Ljava/lang/Character;->isLetter(C)Z

    .line 294
    .line 295
    .line 296
    move-result v5

    .line 297
    if-eqz v5, :cond_16

    .line 298
    .line 299
    :cond_15
    iget v5, v1, Le51;->e:I

    .line 300
    .line 301
    add-int/2addr v5, v14

    .line 302
    iput v5, v1, Le51;->e:I

    .line 303
    .line 304
    goto :goto_9

    .line 305
    :cond_16
    :goto_a
    iget v5, v1, Le51;->e:I

    .line 306
    .line 307
    iget v8, v1, Le51;->c:I

    .line 308
    .line 309
    if-lt v5, v8, :cond_17

    .line 310
    .line 311
    goto :goto_b

    .line 312
    :cond_17
    aget-char v8, v4, v5

    .line 313
    .line 314
    if-lt v8, v11, :cond_18

    .line 315
    .line 316
    if-gt v8, v10, :cond_18

    .line 317
    .line 318
    add-int/lit8 v5, v5, 0x1

    .line 319
    .line 320
    iput v5, v1, Le51;->e:I

    .line 321
    .line 322
    goto :goto_a

    .line 323
    :cond_18
    :goto_b
    sub-int/2addr v5, v2

    .line 324
    invoke-static {v4, v3, v2, v5}, Le51;->c([C[Ljava/lang/String;II)Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v2

    .line 328
    const/16 v3, 0x3b

    .line 329
    .line 330
    invoke-virtual {v1, v3}, Le51;->m(C)Z

    .line 331
    .line 332
    .line 333
    move-result v3

    .line 334
    sget-object v5, Lhm1;->a:Ljava/util/Map;

    .line 335
    .line 336
    invoke-interface {v5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 337
    .line 338
    .line 339
    move-result v8

    .line 340
    if-eqz v8, :cond_22

    .line 341
    .line 342
    if-eqz v3, :cond_22

    .line 343
    .line 344
    if-eqz p2, :cond_1c

    .line 345
    .line 346
    invoke-virtual {v1}, Le51;->o()Z

    .line 347
    .line 348
    .line 349
    move-result v3

    .line 350
    if-nez v3, :cond_1b

    .line 351
    .line 352
    invoke-virtual {v1}, Le51;->j()Z

    .line 353
    .line 354
    .line 355
    move-result v3

    .line 356
    if-eqz v3, :cond_19

    .line 357
    .line 358
    goto :goto_c

    .line 359
    :cond_19
    iget v3, v1, Le51;->e:I

    .line 360
    .line 361
    aget-char v3, v4, v3

    .line 362
    .line 363
    if-lt v3, v11, :cond_1a

    .line 364
    .line 365
    if-gt v3, v10, :cond_1a

    .line 366
    .line 367
    goto :goto_d

    .line 368
    :cond_1a
    :goto_c
    const/4 v3, 0x3

    .line 369
    new-array v3, v3, [C

    .line 370
    .line 371
    fill-array-data v3, :array_0

    .line 372
    .line 373
    .line 374
    invoke-virtual {v1, v3}, Le51;->n([C)Z

    .line 375
    .line 376
    .line 377
    move-result v3

    .line 378
    if-eqz v3, :cond_1c

    .line 379
    .line 380
    :cond_1b
    :goto_d
    iget v0, v1, Le51;->g:I

    .line 381
    .line 382
    iput v0, v1, Le51;->e:I

    .line 383
    .line 384
    return-object v16

    .line 385
    :cond_1c
    invoke-virtual {v1, v7}, Le51;->k(Ljava/lang/String;)Z

    .line 386
    .line 387
    .line 388
    move-result v1

    .line 389
    if-nez v1, :cond_1d

    .line 390
    .line 391
    invoke-virtual {v0, v6}, Lo58;->b(Ljava/lang/String;)V

    .line 392
    .line 393
    .line 394
    :cond_1d
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    .line 396
    .line 397
    move-result-object v1

    .line 398
    check-cast v1, Ljava/lang/String;

    .line 399
    .line 400
    iget-object v0, v0, Lo58;->q:[I

    .line 401
    .line 402
    if-eqz v1, :cond_1f

    .line 403
    .line 404
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 405
    .line 406
    .line 407
    move-result v3

    .line 408
    if-ne v3, v14, :cond_1e

    .line 409
    .line 410
    move/from16 v4, p1

    .line 411
    .line 412
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    .line 413
    .line 414
    .line 415
    move-result v1

    .line 416
    aput v1, v0, v4

    .line 417
    .line 418
    goto :goto_e

    .line 419
    :cond_1e
    move/from16 v4, p1

    .line 420
    .line 421
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    .line 422
    .line 423
    .line 424
    move-result v5

    .line 425
    aput v5, v0, v4

    .line 426
    .line 427
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    .line 428
    .line 429
    .line 430
    move-result v1

    .line 431
    aput v1, v0, v14

    .line 432
    .line 433
    goto :goto_e

    .line 434
    :cond_1f
    move/from16 v4, p1

    .line 435
    .line 436
    move v3, v4

    .line 437
    :goto_e
    if-ne v3, v14, :cond_20

    .line 438
    .line 439
    aget v0, v0, v4

    .line 440
    .line 441
    aput v0, v13, v4

    .line 442
    .line 443
    return-object v13

    .line 444
    :cond_20
    const/4 v1, 0x2

    .line 445
    if-ne v3, v1, :cond_21

    .line 446
    .line 447
    return-object v0

    .line 448
    :cond_21
    const-string v0, "Unexpected characters returned for "

    .line 449
    .line 450
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object v0

    .line 454
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 455
    .line 456
    .line 457
    return-object v16

    .line 458
    :cond_22
    iget v4, v1, Le51;->g:I

    .line 459
    .line 460
    iput v4, v1, Le51;->e:I

    .line 461
    .line 462
    if-eqz v3, :cond_23

    .line 463
    .line 464
    new-instance v1, Ljava/lang/StringBuilder;

    .line 465
    .line 466
    const-string v3, "invalid named referenece \'"

    .line 467
    .line 468
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 469
    .line 470
    .line 471
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    .line 473
    .line 474
    const-string v2, "\'"

    .line 475
    .line 476
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    .line 478
    .line 479
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 480
    .line 481
    .line 482
    move-result-object v1

    .line 483
    invoke-virtual {v0, v1}, Lo58;->b(Ljava/lang/String;)V

    .line 484
    .line 485
    .line 486
    :cond_23
    :goto_f
    return-object v16

    .line 487
    :array_0
    .array-data 2
        0x3ds
        0x2ds
        0x5fs
    .end array-data
.end method

.method public final d(Z)Lc58;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lo58;->j:Lb58;

    .line 4
    .line 5
    invoke-virtual {p1}, Lb58;->p()Lc58;

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lo58;->k:La58;

    .line 10
    .line 11
    invoke-virtual {p1}, Lc58;->p()Lc58;

    .line 12
    .line 13
    .line 14
    :goto_0
    iput-object p1, p0, Lo58;->i:Lc58;

    .line 15
    .line 16
    return-object p1
.end method

.method public final e()V
    .locals 0

    .line 1
    iget-object p0, p0, Lo58;->h:Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-static {p0}, Lqb6;->g(Ljava/lang/StringBuilder;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final f(C)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lo58;->h(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final g(Lqb6;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lo58;->e:Z

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iput-object p1, p0, Lo58;->d:Lqb6;

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lo58;->e:Z

    .line 9
    .line 10
    iget v0, p1, Lqb6;->a:I

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    check-cast p1, Lb58;

    .line 16
    .line 17
    iget-object p1, p1, Lc58;->c:Ljava/lang/String;

    .line 18
    .line 19
    iput-object p1, p0, Lo58;->o:Ljava/lang/String;

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    const/4 v1, 0x3

    .line 23
    if-ne v0, v1, :cond_1

    .line 24
    .line 25
    check-cast p1, La58;

    .line 26
    .line 27
    iget-object p1, p1, Lc58;->k:Lb80;

    .line 28
    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    iget-object p1, p0, Lo58;->b:Lzw5;

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-gez v0, :cond_1

    .line 38
    .line 39
    new-instance v0, Le74;

    .line 40
    .line 41
    iget-object p0, p0, Lo58;->a:Le51;

    .line 42
    .line 43
    iget v1, p0, Le51;->f:I

    .line 44
    .line 45
    iget p0, p0, Le51;->e:I

    .line 46
    .line 47
    add-int/2addr v1, p0

    .line 48
    invoke-direct {v0}, Le74;-><init>()V

    .line 49
    .line 50
    .line 51
    iput v1, v0, Le74;->b:I

    .line 52
    .line 53
    const-string p0, "Attributes incorrectly present on end tag"

    .line 54
    .line 55
    iput-object p0, v0, Le74;->c:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {p1, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    :cond_1
    return-void

    .line 61
    :cond_2
    const-string p0, "There is an unread token pending!"

    .line 62
    .line 63
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public final h(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lo58;->f:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lo58;->f:Ljava/lang/String;

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lo58;->g:Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    iget-object p0, p0, Lo58;->f:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final i()V
    .locals 1

    .line 1
    iget-object v0, p0, Lo58;->n:Lx48;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lo58;->g(Lqb6;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final j()V
    .locals 1

    .line 1
    iget-object v0, p0, Lo58;->m:Ly48;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lo58;->g(Lqb6;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final k()V
    .locals 2

    .line 1
    iget-object v0, p0, Lo58;->i:Lc58;

    .line 2
    .line 3
    iget-object v1, v0, Lc58;->e:Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lc58;->o()V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lo58;->i:Lc58;

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lo58;->g(Lqb6;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final l(Le88;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lo58;->b:Lzw5;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-gez v1, :cond_0

    .line 8
    .line 9
    new-instance v1, Le74;

    .line 10
    .line 11
    iget-object p0, p0, Lo58;->a:Le51;

    .line 12
    .line 13
    iget v2, p0, Le51;->f:I

    .line 14
    .line 15
    iget p0, p0, Le51;->e:I

    .line 16
    .line 17
    add-int/2addr v2, p0

    .line 18
    const-string p0, "Unexpectedly reached end of file (EOF) in input state [%s]"

    .line 19
    .line 20
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-direct {v1, v2, p0, p1}, Le74;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public final m(Le88;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lo58;->b:Lzw5;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-gez v1, :cond_0

    .line 8
    .line 9
    new-instance v1, Le74;

    .line 10
    .line 11
    iget-object p0, p0, Lo58;->a:Le51;

    .line 12
    .line 13
    iget v2, p0, Le51;->f:I

    .line 14
    .line 15
    iget v3, p0, Le51;->e:I

    .line 16
    .line 17
    add-int/2addr v2, v3

    .line 18
    invoke-virtual {p0}, Le51;->i()C

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    const-string p1, "Unexpected character \'%s\' in input state [%s]"

    .line 31
    .line 32
    invoke-direct {v1, v2, p1, p0}, Le74;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method

.method public final n()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lo58;->o:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lo58;->i:Lc58;

    .line 6
    .line 7
    invoke-virtual {v0}, Lc58;->n()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object p0, p0, Lo58;->o:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    const/4 p0, 0x1

    .line 20
    return p0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    return p0
.end method
