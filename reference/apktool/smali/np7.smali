.class public final Lnp7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lni4;

.field public final b:Low8;

.field public final c:Lvr1;

.field public d:I

.field public final e:Ldj4;

.field public final f:Lsj4;


# direct methods
.method public constructor <init>(Lni4;Low8;Lvr1;Lp77;)V
    .locals 0

    .line 1
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lnp7;->a:Lni4;

    .line 8
    .line 9
    iput-object p2, p0, Lnp7;->b:Low8;

    .line 10
    .line 11
    iput-object p3, p0, Lnp7;->c:Lvr1;

    .line 12
    .line 13
    const/4 p2, -0x1

    .line 14
    iput p2, p0, Lnp7;->d:I

    .line 15
    .line 16
    iget-object p1, p1, Lni4;->a:Ldj4;

    .line 17
    .line 18
    iput-object p1, p0, Lnp7;->e:Ldj4;

    .line 19
    .line 20
    iget-boolean p1, p1, Ldj4;->a:Z

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance p1, Lsj4;

    .line 27
    .line 28
    invoke-direct {p1, p4}, Lsj4;-><init>(Lp77;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    iput-object p1, p0, Lnp7;->f:Lsj4;

    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public final a(Lp77;)Lnp7;
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lnp7;->a:Lni4;

    .line 5
    .line 6
    invoke-static {v0, p1}, Lwx3;->B(Lni4;Lp77;)Low8;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iget-object v2, p0, Lnp7;->c:Lvr1;

    .line 11
    .line 12
    iget-object v3, v2, Lvr1;->c:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v3, Ljl4;

    .line 15
    .line 16
    iget v4, v3, Ljl4;->c:I

    .line 17
    .line 18
    const/4 v5, 0x1

    .line 19
    add-int/2addr v4, v5

    .line 20
    iput v4, v3, Ljl4;->c:I

    .line 21
    .line 22
    iget-object v6, v3, Ljl4;->b:[Ljava/lang/Object;

    .line 23
    .line 24
    array-length v7, v6

    .line 25
    if-ne v4, v7, :cond_0

    .line 26
    .line 27
    mul-int/lit8 v7, v4, 0x2

    .line 28
    .line 29
    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    iput-object v6, v3, Ljl4;->b:[Ljava/lang/Object;

    .line 34
    .line 35
    iget-object v6, v3, Ljl4;->d:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v6, [I

    .line 38
    .line 39
    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([II)[I

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    iput-object v6, v3, Ljl4;->d:Ljava/lang/Object;

    .line 44
    .line 45
    :cond_0
    iget-object v3, v3, Ljl4;->b:[Ljava/lang/Object;

    .line 46
    .line 47
    aput-object p1, v3, v4

    .line 48
    .line 49
    iget-char v3, v1, Low8;->a:C

    .line 50
    .line 51
    invoke-virtual {v2, v3}, Lvr1;->f(C)V

    .line 52
    .line 53
    .line 54
    iget-object v3, v2, Lvr1;->f:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v3, Ljava/lang/String;

    .line 57
    .line 58
    iget v4, v2, Lvr1;->b:I

    .line 59
    .line 60
    :goto_0
    invoke-virtual {v2, v4}, Lvr1;->t(I)I

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    const/4 v6, -0x1

    .line 65
    const/16 v7, 0xa

    .line 66
    .line 67
    if-eq v4, v6, :cond_2

    .line 68
    .line 69
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    .line 70
    .line 71
    .line 72
    move-result v6

    .line 73
    const/16 v8, 0x9

    .line 74
    .line 75
    if-eq v6, v8, :cond_1

    .line 76
    .line 77
    if-eq v6, v7, :cond_1

    .line 78
    .line 79
    const/16 v7, 0xd

    .line 80
    .line 81
    if-eq v6, v7, :cond_1

    .line 82
    .line 83
    const/16 v7, 0x20

    .line 84
    .line 85
    if-eq v6, v7, :cond_1

    .line 86
    .line 87
    iput v4, v2, Lvr1;->b:I

    .line 88
    .line 89
    invoke-static {v6}, Lz85;->b(C)B

    .line 90
    .line 91
    .line 92
    move-result v7

    .line 93
    goto :goto_1

    .line 94
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_2
    iput v4, v2, Lvr1;->b:I

    .line 98
    .line 99
    :goto_1
    const/4 v3, 0x4

    .line 100
    if-eq v7, v3, :cond_5

    .line 101
    .line 102
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    if-eq v3, v5, :cond_4

    .line 107
    .line 108
    const/4 v4, 0x2

    .line 109
    if-eq v3, v4, :cond_4

    .line 110
    .line 111
    const/4 v4, 0x3

    .line 112
    if-eq v3, v4, :cond_4

    .line 113
    .line 114
    iget-object v3, p0, Lnp7;->b:Low8;

    .line 115
    .line 116
    if-ne v3, v1, :cond_3

    .line 117
    .line 118
    iget-object v3, v0, Lni4;->a:Ldj4;

    .line 119
    .line 120
    iget-boolean v3, v3, Ldj4;->a:Z

    .line 121
    .line 122
    if-eqz v3, :cond_3

    .line 123
    .line 124
    return-object p0

    .line 125
    :cond_3
    new-instance p0, Lnp7;

    .line 126
    .line 127
    invoke-direct {p0, v0, v1, v2, p1}, Lnp7;-><init>(Lni4;Low8;Lvr1;Lp77;)V

    .line 128
    .line 129
    .line 130
    return-object p0

    .line 131
    :cond_4
    new-instance p0, Lnp7;

    .line 132
    .line 133
    invoke-direct {p0, v0, v1, v2, p1}, Lnp7;-><init>(Lni4;Low8;Lvr1;Lp77;)V

    .line 134
    .line 135
    .line 136
    return-object p0

    .line 137
    :cond_5
    const/4 p0, 0x0

    .line 138
    const/4 p1, 0x6

    .line 139
    const-string v0, "Unexpected leading comma"

    .line 140
    .line 141
    invoke-static {v2, v0, p0, p1}, Lvr1;->k(Lvr1;Ljava/lang/String;II)V

    .line 142
    .line 143
    .line 144
    const/4 p0, 0x0

    .line 145
    throw p0
.end method

.method public final b(Lp77;)I
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lnp7;->a:Lni4;

    .line 4
    .line 5
    iget-object v2, v1, Lni4;->a:Ldj4;

    .line 6
    .line 7
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object v3, v0, Lnp7;->b:Low8;

    .line 11
    .line 12
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    const-string v5, "object"

    .line 17
    .line 18
    const/4 v6, 0x6

    .line 19
    const/4 v7, 0x0

    .line 20
    const/16 v8, 0x3a

    .line 21
    .line 22
    const/4 v9, 0x0

    .line 23
    const/4 v10, 0x1

    .line 24
    const/4 v11, -0x1

    .line 25
    iget-object v12, v0, Lnp7;->c:Lvr1;

    .line 26
    .line 27
    if-eqz v4, :cond_e

    .line 28
    .line 29
    const/4 v1, 0x2

    .line 30
    if-eq v4, v1, :cond_4

    .line 31
    .line 32
    invoke-virtual {v12}, Lvr1;->v()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-virtual {v12}, Lvr1;->b()Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-eqz v4, :cond_2

    .line 41
    .line 42
    iget v2, v0, Lnp7;->d:I

    .line 43
    .line 44
    if-eq v2, v11, :cond_1

    .line 45
    .line 46
    if-eqz v1, :cond_0

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const-string v0, "Expected end of the array or comma"

    .line 50
    .line 51
    invoke-static {v12, v0, v9, v6}, Lvr1;->k(Lvr1;Ljava/lang/String;II)V

    .line 52
    .line 53
    .line 54
    throw v7

    .line 55
    :cond_1
    :goto_0
    add-int/lit8 v11, v2, 0x1

    .line 56
    .line 57
    iput v11, v0, Lnp7;->d:I

    .line 58
    .line 59
    goto/16 :goto_6

    .line 60
    .line 61
    :cond_2
    if-nez v1, :cond_3

    .line 62
    .line 63
    goto/16 :goto_6

    .line 64
    .line 65
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    const-string v0, "array"

    .line 69
    .line 70
    invoke-static {v12, v0}, Lbb9;->x(Lvr1;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw v7

    .line 74
    :cond_4
    iget v1, v0, Lnp7;->d:I

    .line 75
    .line 76
    rem-int/lit8 v4, v1, 0x2

    .line 77
    .line 78
    if-eqz v4, :cond_5

    .line 79
    .line 80
    move v4, v10

    .line 81
    goto :goto_1

    .line 82
    :cond_5
    move v4, v9

    .line 83
    :goto_1
    if-eqz v4, :cond_6

    .line 84
    .line 85
    if-eq v1, v11, :cond_7

    .line 86
    .line 87
    invoke-virtual {v12}, Lvr1;->v()Z

    .line 88
    .line 89
    .line 90
    move-result v9

    .line 91
    goto :goto_2

    .line 92
    :cond_6
    invoke-virtual {v12, v8}, Lvr1;->f(C)V

    .line 93
    .line 94
    .line 95
    :cond_7
    :goto_2
    invoke-virtual {v12}, Lvr1;->b()Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-eqz v1, :cond_c

    .line 100
    .line 101
    if-eqz v4, :cond_b

    .line 102
    .line 103
    iget v1, v0, Lnp7;->d:I

    .line 104
    .line 105
    iget v2, v12, Lvr1;->b:I

    .line 106
    .line 107
    const/4 v4, 0x4

    .line 108
    if-ne v1, v11, :cond_9

    .line 109
    .line 110
    if-nez v9, :cond_8

    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_8
    const-string v0, "Unexpected leading comma"

    .line 114
    .line 115
    invoke-static {v12, v0, v2, v4}, Lvr1;->k(Lvr1;Ljava/lang/String;II)V

    .line 116
    .line 117
    .line 118
    throw v7

    .line 119
    :cond_9
    if-eqz v9, :cond_a

    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_a
    const-string v0, "Expected comma after the key-value pair"

    .line 123
    .line 124
    invoke-static {v12, v0, v2, v4}, Lvr1;->k(Lvr1;Ljava/lang/String;II)V

    .line 125
    .line 126
    .line 127
    throw v7

    .line 128
    :cond_b
    :goto_3
    iget v1, v0, Lnp7;->d:I

    .line 129
    .line 130
    add-int/lit8 v11, v1, 0x1

    .line 131
    .line 132
    iput v11, v0, Lnp7;->d:I

    .line 133
    .line 134
    goto/16 :goto_6

    .line 135
    .line 136
    :cond_c
    if-nez v9, :cond_d

    .line 137
    .line 138
    goto/16 :goto_6

    .line 139
    .line 140
    :cond_d
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    invoke-static {v12, v5}, Lbb9;->x(Lvr1;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    throw v7

    .line 147
    :cond_e
    invoke-virtual {v12}, Lvr1;->v()Z

    .line 148
    .line 149
    .line 150
    move-result v4

    .line 151
    invoke-virtual {v12}, Lvr1;->b()Z

    .line 152
    .line 153
    .line 154
    move-result v13

    .line 155
    const/16 v14, 0x40

    .line 156
    .line 157
    const-wide/16 v15, 0x1

    .line 158
    .line 159
    move-object/from16 v17, v7

    .line 160
    .line 161
    iget-object v7, v0, Lnp7;->f:Lsj4;

    .line 162
    .line 163
    if-eqz v13, :cond_11

    .line 164
    .line 165
    iget-object v0, v0, Lnp7;->e:Ldj4;

    .line 166
    .line 167
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v12}, Lvr1;->e()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-virtual {v12, v8}, Lvr1;->f(C)V

    .line 175
    .line 176
    .line 177
    move-object/from16 v2, p1

    .line 178
    .line 179
    invoke-static {v2, v1, v0}, Lvm4;->n(Lp77;Lni4;Ljava/lang/String;)I

    .line 180
    .line 181
    .line 182
    move-result v11

    .line 183
    const/4 v1, -0x3

    .line 184
    if-eq v11, v1, :cond_10

    .line 185
    .line 186
    if-eqz v7, :cond_16

    .line 187
    .line 188
    iget-object v0, v7, Lsj4;->a:Lst2;

    .line 189
    .line 190
    if-ge v11, v14, :cond_f

    .line 191
    .line 192
    iget-wide v1, v0, Lst2;->c:J

    .line 193
    .line 194
    shl-long v4, v15, v11

    .line 195
    .line 196
    or-long/2addr v1, v4

    .line 197
    iput-wide v1, v0, Lst2;->c:J

    .line 198
    .line 199
    goto/16 :goto_6

    .line 200
    .line 201
    :cond_f
    ushr-int/lit8 v1, v11, 0x6

    .line 202
    .line 203
    sub-int/2addr v1, v10

    .line 204
    and-int/lit8 v2, v11, 0x3f

    .line 205
    .line 206
    iget-object v0, v0, Lst2;->d:[J

    .line 207
    .line 208
    aget-wide v4, v0, v1

    .line 209
    .line 210
    shl-long v6, v15, v2

    .line 211
    .line 212
    or-long/2addr v4, v6

    .line 213
    aput-wide v4, v0, v1

    .line 214
    .line 215
    goto/16 :goto_6

    .line 216
    .line 217
    :cond_10
    iget v1, v12, Lvr1;->b:I

    .line 218
    .line 219
    iget-object v2, v12, Lvr1;->f:Ljava/lang/Object;

    .line 220
    .line 221
    check-cast v2, Ljava/lang/String;

    .line 222
    .line 223
    invoke-virtual {v2, v9, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    invoke-static {v6, v1, v0}, Lnq7;->l0(ILjava/lang/CharSequence;Ljava/lang/String;)I

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    const-string v2, "Encountered an unknown key \'"

    .line 236
    .line 237
    const/16 v3, 0x27

    .line 238
    .line 239
    invoke-static {v3, v2, v0}, Lu48;->j(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    const-string v2, "Use \'ignoreUnknownKeys = true\' in \'Json {}\' builder to ignore unknown keys."

    .line 244
    .line 245
    invoke-virtual {v12, v1, v0, v2}, Lvr1;->j(ILjava/lang/String;Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    throw v17

    .line 249
    :cond_11
    if-nez v4, :cond_18

    .line 250
    .line 251
    if-eqz v7, :cond_16

    .line 252
    .line 253
    iget-object v0, v7, Lsj4;->a:Lst2;

    .line 254
    .line 255
    iget-object v1, v0, Lst2;->b:Lrj4;

    .line 256
    .line 257
    iget-object v2, v0, Lst2;->a:Lp77;

    .line 258
    .line 259
    invoke-interface {v2}, Lp77;->f()I

    .line 260
    .line 261
    .line 262
    move-result v4

    .line 263
    :cond_12
    iget-wide v5, v0, Lst2;->c:J

    .line 264
    .line 265
    const-wide/16 v7, -0x1

    .line 266
    .line 267
    cmp-long v10, v5, v7

    .line 268
    .line 269
    if-eqz v10, :cond_13

    .line 270
    .line 271
    not-long v5, v5

    .line 272
    invoke-static {v5, v6}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    .line 273
    .line 274
    .line 275
    move-result v5

    .line 276
    iget-wide v6, v0, Lst2;->c:J

    .line 277
    .line 278
    shl-long v17, v15, v5

    .line 279
    .line 280
    or-long v6, v6, v17

    .line 281
    .line 282
    iput-wide v6, v0, Lst2;->c:J

    .line 283
    .line 284
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 285
    .line 286
    .line 287
    move-result-object v6

    .line 288
    invoke-virtual {v1, v2, v6}, Lrj4;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object v6

    .line 292
    check-cast v6, Ljava/lang/Boolean;

    .line 293
    .line 294
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 295
    .line 296
    .line 297
    move-result v6

    .line 298
    if-eqz v6, :cond_12

    .line 299
    .line 300
    move v11, v5

    .line 301
    goto :goto_6

    .line 302
    :cond_13
    if-le v4, v14, :cond_16

    .line 303
    .line 304
    iget-object v0, v0, Lst2;->d:[J

    .line 305
    .line 306
    array-length v4, v0

    .line 307
    :goto_4
    if-ge v9, v4, :cond_16

    .line 308
    .line 309
    add-int/lit8 v5, v9, 0x1

    .line 310
    .line 311
    mul-int/lit8 v6, v5, 0x40

    .line 312
    .line 313
    aget-wide v13, v0, v9

    .line 314
    .line 315
    :goto_5
    cmp-long v10, v13, v7

    .line 316
    .line 317
    if-eqz v10, :cond_15

    .line 318
    .line 319
    not-long v7, v13

    .line 320
    invoke-static {v7, v8}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    .line 321
    .line 322
    .line 323
    move-result v7

    .line 324
    shl-long v17, v15, v7

    .line 325
    .line 326
    or-long v13, v13, v17

    .line 327
    .line 328
    add-int/2addr v7, v6

    .line 329
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 330
    .line 331
    .line 332
    move-result-object v8

    .line 333
    invoke-virtual {v1, v2, v8}, Lrj4;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    move-result-object v8

    .line 337
    check-cast v8, Ljava/lang/Boolean;

    .line 338
    .line 339
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 340
    .line 341
    .line 342
    move-result v8

    .line 343
    if-eqz v8, :cond_14

    .line 344
    .line 345
    aput-wide v13, v0, v9

    .line 346
    .line 347
    move v11, v7

    .line 348
    goto :goto_6

    .line 349
    :cond_14
    const-wide/16 v7, -0x1

    .line 350
    .line 351
    goto :goto_5

    .line 352
    :cond_15
    aput-wide v13, v0, v9

    .line 353
    .line 354
    move v9, v5

    .line 355
    const-wide/16 v7, -0x1

    .line 356
    .line 357
    goto :goto_4

    .line 358
    :cond_16
    :goto_6
    sget-object v0, Low8;->e:Low8;

    .line 359
    .line 360
    if-eq v3, v0, :cond_17

    .line 361
    .line 362
    iget-object v0, v12, Lvr1;->c:Ljava/lang/Object;

    .line 363
    .line 364
    check-cast v0, Ljl4;

    .line 365
    .line 366
    iget-object v1, v0, Ljl4;->d:Ljava/lang/Object;

    .line 367
    .line 368
    check-cast v1, [I

    .line 369
    .line 370
    iget v0, v0, Ljl4;->c:I

    .line 371
    .line 372
    aput v11, v1, v0

    .line 373
    .line 374
    :cond_17
    return v11

    .line 375
    :cond_18
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 376
    .line 377
    .line 378
    invoke-static {v12, v5}, Lbb9;->x(Lvr1;Ljava/lang/String;)V

    .line 379
    .line 380
    .line 381
    throw v17
.end method

.method public final c()I
    .locals 5

    .line 1
    iget-object p0, p0, Lnp7;->c:Lvr1;

    .line 2
    .line 3
    invoke-virtual {p0}, Lvr1;->g()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    long-to-int v2, v0

    .line 8
    int-to-long v3, v2

    .line 9
    cmp-long v3, v0, v3

    .line 10
    .line 11
    if-nez v3, :cond_0

    .line 12
    .line 13
    return v2

    .line 14
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v3, "Failed to parse int for input \'"

    .line 17
    .line 18
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const/16 v0, 0x27

    .line 25
    .line 26
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const/4 v1, 0x0

    .line 34
    const/4 v2, 0x6

    .line 35
    invoke-static {p0, v0, v1, v2}, Lvr1;->k(Lvr1;Ljava/lang/String;II)V

    .line 36
    .line 37
    .line 38
    const/4 p0, 0x0

    .line 39
    throw p0
.end method

.method public final d(Lp77;I)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lnp7;->c()I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public final e()J
    .locals 2

    .line 1
    iget-object p0, p0, Lnp7;->c:Lvr1;

    .line 2
    .line 3
    invoke-virtual {p0}, Lvr1;->g()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final f(Lp77;I)J
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lnp7;->e()J

    .line 5
    .line 6
    .line 7
    move-result-wide p0

    .line 8
    return-wide p0
.end method

.method public final g()Z
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lnp7;->f:Lsj4;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    iget-boolean v1, v1, Lsj4;->b:Z

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v1, v0

    .line 10
    :goto_0
    if-nez v1, :cond_6

    .line 11
    .line 12
    iget-object p0, p0, Lnp7;->c:Lvr1;

    .line 13
    .line 14
    invoke-virtual {p0}, Lvr1;->u()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-virtual {p0, v1}, Lvr1;->t(I)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    iget-object v2, p0, Lvr1;->f:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v2, Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    sub-int/2addr v3, v1

    .line 31
    const/4 v4, 0x1

    .line 32
    const/4 v5, 0x4

    .line 33
    if-lt v3, v5, :cond_5

    .line 34
    .line 35
    const/4 v6, -0x1

    .line 36
    if-ne v1, v6, :cond_1

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_1
    move v6, v0

    .line 40
    :goto_1
    if-ge v6, v5, :cond_3

    .line 41
    .line 42
    const-string v7, "null"

    .line 43
    .line 44
    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    .line 45
    .line 46
    .line 47
    move-result v7

    .line 48
    add-int v8, v1, v6

    .line 49
    .line 50
    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    .line 51
    .line 52
    .line 53
    move-result v8

    .line 54
    if-eq v7, v8, :cond_2

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_3
    if-le v3, v5, :cond_4

    .line 61
    .line 62
    add-int/lit8 v3, v1, 0x4

    .line 63
    .line 64
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    invoke-static {v2}, Lz85;->b(C)B

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-nez v2, :cond_4

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_4
    add-int/2addr v1, v5

    .line 76
    iput v1, p0, Lvr1;->b:I

    .line 77
    .line 78
    move p0, v4

    .line 79
    goto :goto_3

    .line 80
    :cond_5
    :goto_2
    move p0, v0

    .line 81
    :goto_3
    if-nez p0, :cond_6

    .line 82
    .line 83
    return v4

    .line 84
    :cond_6
    return v0
.end method

.method public final h(Lp77;ILdo4;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-interface {p3}, Ldo4;->d()Lp77;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-interface {p1}, Lp77;->c()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-nez p1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Lnp7;->g()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    return-object p0

    .line 26
    :cond_1
    :goto_0
    invoke-virtual {p0, p3}, Lnp7;->j(Ldo4;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0
.end method

.method public final i(Lp77;ILdo4;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object p4, p0, Lnp7;->c:Lvr1;

    .line 2
    .line 3
    iget-object p4, p4, Lvr1;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p4, Ljl4;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lnp7;->b:Low8;

    .line 14
    .line 15
    sget-object v0, Low8;->e:Low8;

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    if-ne p1, v0, :cond_0

    .line 19
    .line 20
    and-int/lit8 p1, p2, 0x1

    .line 21
    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    move p1, v1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p1, 0x0

    .line 27
    :goto_0
    const/4 p2, -0x2

    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    iget-object v0, p4, Ljl4;->d:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v0, [I

    .line 33
    .line 34
    iget v2, p4, Ljl4;->c:I

    .line 35
    .line 36
    aget v0, v0, v2

    .line 37
    .line 38
    if-ne v0, p2, :cond_1

    .line 39
    .line 40
    iget-object v0, p4, Ljl4;->b:[Ljava/lang/Object;

    .line 41
    .line 42
    sget-object v3, Lge;->e:Lge;

    .line 43
    .line 44
    aput-object v3, v0, v2

    .line 45
    .line 46
    :cond_1
    invoke-virtual {p0, p3}, Lnp7;->j(Ldo4;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    if-eqz p1, :cond_3

    .line 51
    .line 52
    iget-object p1, p4, Ljl4;->d:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast p1, [I

    .line 55
    .line 56
    iget p3, p4, Ljl4;->c:I

    .line 57
    .line 58
    aget p1, p1, p3

    .line 59
    .line 60
    if-eq p1, p2, :cond_2

    .line 61
    .line 62
    add-int/2addr p3, v1

    .line 63
    iput p3, p4, Ljl4;->c:I

    .line 64
    .line 65
    iget-object p1, p4, Ljl4;->b:[Ljava/lang/Object;

    .line 66
    .line 67
    array-length v0, p1

    .line 68
    if-ne p3, v0, :cond_2

    .line 69
    .line 70
    mul-int/lit8 p3, p3, 0x2

    .line 71
    .line 72
    invoke-static {p1, p3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    iput-object p1, p4, Ljl4;->b:[Ljava/lang/Object;

    .line 77
    .line 78
    iget-object p1, p4, Ljl4;->d:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast p1, [I

    .line 81
    .line 82
    invoke-static {p1, p3}, Ljava/util/Arrays;->copyOf([II)[I

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    iput-object p1, p4, Ljl4;->d:Ljava/lang/Object;

    .line 87
    .line 88
    :cond_2
    iget-object p1, p4, Ljl4;->b:[Ljava/lang/Object;

    .line 89
    .line 90
    iget p3, p4, Ljl4;->c:I

    .line 91
    .line 92
    aput-object p0, p1, p3

    .line 93
    .line 94
    iget-object p1, p4, Ljl4;->d:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast p1, [I

    .line 97
    .line 98
    aput p2, p1, p3

    .line 99
    .line 100
    :cond_3
    return-object p0
.end method

.method public final j(Ldo4;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-interface {p1, p0}, Ldo4;->a(Lnp7;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p0
    :try_end_0
    .catch Lug5; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    return-object p0

    .line 9
    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    const-string v1, "at path"

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-static {v0, v1, v2}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    throw p1

    .line 27
    :cond_0
    new-instance v0, Lug5;

    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iget-object p0, p0, Lnp7;->c:Lvr1;

    .line 34
    .line 35
    iget-object p0, p0, Lvr1;->c:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast p0, Ljl4;

    .line 38
    .line 39
    invoke-virtual {p0}, Ljl4;->a()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    new-instance v2, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v1, " at path: "

    .line 52
    .line 53
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    iget-object v1, p1, Lug5;->a:Ljava/util/List;

    .line 64
    .line 65
    invoke-direct {v0, v1, p0, p1}, Lug5;-><init>(Ljava/util/List;Ljava/lang/String;Lug5;)V

    .line 66
    .line 67
    .line 68
    throw v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lnp7;->e:Ldj4;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lnp7;->c:Lvr1;

    .line 7
    .line 8
    invoke-virtual {p0}, Lvr1;->h()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public final l(Lp77;I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lnp7;->k()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method public final m(Lp77;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lnp7;->a:Lni4;

    .line 5
    .line 6
    iget-object p1, p1, Lni4;->a:Ldj4;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lnp7;->c:Lvr1;

    .line 12
    .line 13
    invoke-virtual {v0}, Lvr1;->v()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_2

    .line 18
    .line 19
    iget-object p0, p0, Lnp7;->b:Low8;

    .line 20
    .line 21
    iget-char p0, p0, Low8;->b:C

    .line 22
    .line 23
    invoke-virtual {v0, p0}, Lvr1;->f(C)V

    .line 24
    .line 25
    .line 26
    iget-object p0, v0, Lvr1;->c:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p0, Ljl4;

    .line 29
    .line 30
    iget p1, p0, Ljl4;->c:I

    .line 31
    .line 32
    iget-object v0, p0, Ljl4;->d:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v0, [I

    .line 35
    .line 36
    aget v1, v0, p1

    .line 37
    .line 38
    const/4 v2, -0x2

    .line 39
    const/4 v3, -0x1

    .line 40
    if-ne v1, v2, :cond_0

    .line 41
    .line 42
    aput v3, v0, p1

    .line 43
    .line 44
    add-int/2addr p1, v3

    .line 45
    iput p1, p0, Ljl4;->c:I

    .line 46
    .line 47
    :cond_0
    iget p1, p0, Ljl4;->c:I

    .line 48
    .line 49
    if-eq p1, v3, :cond_1

    .line 50
    .line 51
    add-int/2addr p1, v3

    .line 52
    iput p1, p0, Ljl4;->c:I

    .line 53
    .line 54
    :cond_1
    return-void

    .line 55
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    const-string p0, ""

    .line 59
    .line 60
    invoke-static {v0, p0}, Lbb9;->x(Lvr1;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const/4 p0, 0x0

    .line 64
    throw p0
.end method
