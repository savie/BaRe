.class public final Lz1;
.super Ljava/lang/Object;


# instance fields
.field public final synthetic a:I

.field public final b:I

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;IILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p3, p0, Lz1;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lz1;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iput p2, p0, Lz1;->b:I

    .line 6
    .line 7
    iput-object p4, p0, Lz1;->d:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public a(I)Lb0;
    .locals 13

    .line 1
    iget-object v0, p0, Lz1;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [[B

    .line 4
    .line 5
    iget-object v1, p0, Lz1;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lou4;

    .line 8
    .line 9
    instance-of v2, v1, Lhb4;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    move-object v2, v1

    .line 15
    check-cast v2, Lhb4;

    .line 16
    .line 17
    iput-boolean v3, v2, Lhb4;->f:Z

    .line 18
    .line 19
    invoke-virtual {v2}, Lhb4;->b()Z

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-static {v1, p1}, Lo0;->n(Ljava/io/InputStream;I)I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const/4 v4, 0x1

    .line 27
    const/16 v5, 0x8

    .line 28
    .line 29
    const/16 v6, 0x11

    .line 30
    .line 31
    const/16 v7, 0x10

    .line 32
    .line 33
    const/4 v8, 0x4

    .line 34
    const/4 v9, 0x3

    .line 35
    if-eq v2, v9, :cond_2

    .line 36
    .line 37
    if-eq v2, v8, :cond_2

    .line 38
    .line 39
    if-eq v2, v7, :cond_2

    .line 40
    .line 41
    if-eq v2, v6, :cond_2

    .line 42
    .line 43
    if-ne v2, v5, :cond_1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    move v10, v3

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    :goto_0
    move v10, v4

    .line 49
    :goto_1
    iget p0, p0, Lz1;->b:I

    .line 50
    .line 51
    invoke-static {v1, p0, v10}, Lo0;->j(Ljava/io/InputStream;IZ)I

    .line 52
    .line 53
    .line 54
    move-result v10

    .line 55
    const/4 v11, 0x0

    .line 56
    if-gez v10, :cond_a

    .line 57
    .line 58
    and-int/lit8 v4, p1, 0x20

    .line 59
    .line 60
    if-eqz v4, :cond_9

    .line 61
    .line 62
    new-instance v4, Lhb4;

    .line 63
    .line 64
    invoke-direct {v4, v1, p0}, Lhb4;-><init>(Ljava/io/InputStream;I)V

    .line 65
    .line 66
    .line 67
    new-instance v1, Lz1;

    .line 68
    .line 69
    invoke-direct {v1, v4, p0, v3, v0}, Lz1;-><init>(Ljava/lang/Object;IILjava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    and-int/lit16 p0, p1, 0xc0

    .line 73
    .line 74
    if-eqz p0, :cond_3

    .line 75
    .line 76
    new-instance p1, Lci0;

    .line 77
    .line 78
    invoke-direct {p1, p0, v2, v1}, Lci0;-><init>(IILz1;)V

    .line 79
    .line 80
    .line 81
    return-object p1

    .line 82
    :cond_3
    if-eq v2, v9, :cond_8

    .line 83
    .line 84
    if-eq v2, v8, :cond_7

    .line 85
    .line 86
    if-eq v2, v5, :cond_6

    .line 87
    .line 88
    if-eq v2, v7, :cond_5

    .line 89
    .line 90
    if-ne v2, v6, :cond_4

    .line 91
    .line 92
    new-instance p0, Lai0;

    .line 93
    .line 94
    invoke-direct {p0, v3}, Lai0;-><init>(I)V

    .line 95
    .line 96
    .line 97
    iput-object v1, p0, Lai0;->b:Lz1;

    .line 98
    .line 99
    return-object p0

    .line 100
    :cond_4
    const-string p0, "unknown BER object encountered: 0x"

    .line 101
    .line 102
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-static {p1, p0}, Ll0;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    return-object v11

    .line 110
    :cond_5
    new-instance p0, Lyh0;

    .line 111
    .line 112
    invoke-direct {p0, v3}, Lyh0;-><init>(I)V

    .line 113
    .line 114
    .line 115
    iput-object v1, p0, Lyh0;->b:Lz1;

    .line 116
    .line 117
    return-object p0

    .line 118
    :cond_6
    new-instance p0, Li82;

    .line 119
    .line 120
    invoke-direct {p0, v1}, Li82;-><init>(Lz1;)V

    .line 121
    .line 122
    .line 123
    return-object p0

    .line 124
    :cond_7
    new-instance p0, Lwh0;

    .line 125
    .line 126
    invoke-direct {p0, v1}, Lwh0;-><init>(Lz1;)V

    .line 127
    .line 128
    .line 129
    return-object p0

    .line 130
    :cond_8
    new-instance p0, Lth0;

    .line 131
    .line 132
    invoke-direct {p0, v1}, Lth0;-><init>(Lz1;)V

    .line 133
    .line 134
    .line 135
    return-object p0

    .line 136
    :cond_9
    const-string p0, "indefinite-length primitive encoding encountered"

    .line 137
    .line 138
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    return-object v11

    .line 142
    :cond_a
    new-instance v12, Lmg2;

    .line 143
    .line 144
    invoke-direct {v12, v1, v10, p0}, Lmg2;-><init>(Ljava/io/InputStream;II)V

    .line 145
    .line 146
    .line 147
    and-int/lit16 p0, p1, 0xe0

    .line 148
    .line 149
    if-nez p0, :cond_10

    .line 150
    .line 151
    if-eq v2, v9, :cond_f

    .line 152
    .line 153
    if-eq v2, v8, :cond_e

    .line 154
    .line 155
    if-eq v2, v5, :cond_d

    .line 156
    .line 157
    if-eq v2, v7, :cond_c

    .line 158
    .line 159
    if-eq v2, v6, :cond_b

    .line 160
    .line 161
    :try_start_0
    invoke-static {v2, v12, v0}, Lo0;->b(ILmg2;[[B)Lq1;

    .line 162
    .line 163
    .line 164
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    return-object p0

    .line 166
    :catch_0
    move-exception p0

    .line 167
    new-instance p1, Li0;

    .line 168
    .line 169
    const-string v0, "corrupted stream detected"

    .line 170
    .line 171
    invoke-direct {p1, p0, v0}, Li0;-><init>(Ljava/lang/RuntimeException;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    throw p1

    .line 175
    :cond_b
    new-instance p0, Li0;

    .line 176
    .line 177
    const-string p1, "sequences must use constructed encoding (see X.690 8.9.1/8.10.1)"

    .line 178
    .line 179
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    throw p0

    .line 183
    :cond_c
    new-instance p0, Li0;

    .line 184
    .line 185
    const-string p1, "sets must use constructed encoding (see X.690 8.11.1/8.12.1)"

    .line 186
    .line 187
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    throw p0

    .line 191
    :cond_d
    new-instance p0, Li0;

    .line 192
    .line 193
    const-string p1, "externals must use constructed encoding (see X.690 8.18)"

    .line 194
    .line 195
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    throw p0

    .line 199
    :cond_e
    new-instance p0, Lq82;

    .line 200
    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    .line 203
    .line 204
    iput-object v12, p0, Lq82;->a:Lmg2;

    .line 205
    .line 206
    return-object p0

    .line 207
    :cond_f
    new-instance p0, Le92;

    .line 208
    .line 209
    invoke-direct {p0, v12}, Le92;-><init>(Lmg2;)V

    .line 210
    .line 211
    .line 212
    return-object p0

    .line 213
    :cond_10
    new-instance p0, Lz1;

    .line 214
    .line 215
    iget v1, v12, Lou4;->b:I

    .line 216
    .line 217
    invoke-direct {p0, v12, v1, v3, v0}, Lz1;-><init>(Ljava/lang/Object;IILjava/lang/Object;)V

    .line 218
    .line 219
    .line 220
    and-int/lit16 v0, p1, 0xc0

    .line 221
    .line 222
    if-eqz v0, :cond_12

    .line 223
    .line 224
    and-int/lit8 p1, p1, 0x20

    .line 225
    .line 226
    if-eqz p1, :cond_11

    .line 227
    .line 228
    move v3, v4

    .line 229
    :cond_11
    new-instance p1, Lj92;

    .line 230
    .line 231
    invoke-direct {p1, v0, v2, v3, p0}, Lj92;-><init>(IIZLz1;)V

    .line 232
    .line 233
    .line 234
    return-object p1

    .line 235
    :cond_12
    if-eq v2, v9, :cond_17

    .line 236
    .line 237
    if-eq v2, v8, :cond_16

    .line 238
    .line 239
    if-eq v2, v5, :cond_15

    .line 240
    .line 241
    if-eq v2, v7, :cond_14

    .line 242
    .line 243
    if-ne v2, v6, :cond_13

    .line 244
    .line 245
    new-instance p1, Lai0;

    .line 246
    .line 247
    invoke-direct {p1, v4}, Lai0;-><init>(I)V

    .line 248
    .line 249
    .line 250
    iput-object p0, p1, Lai0;->b:Lz1;

    .line 251
    .line 252
    return-object p1

    .line 253
    :cond_13
    const-string p0, "unknown DL object encountered: 0x"

    .line 254
    .line 255
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object p1

    .line 259
    invoke-static {p1, p0}, Ll0;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    return-object v11

    .line 263
    :cond_14
    new-instance p1, Lyh0;

    .line 264
    .line 265
    invoke-direct {p1, v4}, Lyh0;-><init>(I)V

    .line 266
    .line 267
    .line 268
    iput-object p0, p1, Lyh0;->b:Lz1;

    .line 269
    .line 270
    return-object p1

    .line 271
    :cond_15
    new-instance p1, Li82;

    .line 272
    .line 273
    invoke-direct {p1, p0}, Li82;-><init>(Lz1;)V

    .line 274
    .line 275
    .line 276
    return-object p1

    .line 277
    :cond_16
    new-instance p1, Lwh0;

    .line 278
    .line 279
    invoke-direct {p1, p0}, Lwh0;-><init>(Lz1;)V

    .line 280
    .line 281
    .line 282
    return-object p1

    .line 283
    :cond_17
    new-instance p1, Lth0;

    .line 284
    .line 285
    invoke-direct {p1, p0}, Lth0;-><init>(Lz1;)V

    .line 286
    .line 287
    .line 288
    return-object p1
.end method

.method public b(II)Lbi0;
    .locals 9

    .line 1
    invoke-virtual {p0}, Lz1;->c()Lc0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget v0, p0, Lc0;->b:I

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    new-instance v2, Lbi0;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p0, v0}, Lc0;->b(I)Lb0;

    .line 14
    .line 15
    .line 16
    move-result-object v6

    .line 17
    const/4 v7, 0x0

    .line 18
    const/4 v3, 0x3

    .line 19
    move v4, p1

    .line 20
    move v5, p2

    .line 21
    invoke-direct/range {v2 .. v7}, Lbi0;-><init>(IIILb0;I)V

    .line 22
    .line 23
    .line 24
    return-object v2

    .line 25
    :cond_0
    move v4, p1

    .line 26
    move v5, p2

    .line 27
    new-instance v3, Lbi0;

    .line 28
    .line 29
    sget-object p1, Luh0;->a:Lxh0;

    .line 30
    .line 31
    if-ge v0, v1, :cond_1

    .line 32
    .line 33
    sget-object p0, Luh0;->a:Lxh0;

    .line 34
    .line 35
    move-object v7, p0

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    new-instance p1, Lxh0;

    .line 38
    .line 39
    invoke-direct {p1, p0}, Lv1;-><init>(Lc0;)V

    .line 40
    .line 41
    .line 42
    move-object v7, p1

    .line 43
    :goto_0
    const/4 v8, 0x0

    .line 44
    move v6, v5

    .line 45
    move v5, v4

    .line 46
    const/4 v4, 0x4

    .line 47
    invoke-direct/range {v3 .. v8}, Lbi0;-><init>(IIILb0;I)V

    .line 48
    .line 49
    .line 50
    return-object v3
.end method

.method public c()Lc0;
    .locals 4

    .line 1
    iget-object v0, p0, Lz1;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lou4;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-gez v1, :cond_0

    .line 10
    .line 11
    new-instance p0, Lc0;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, v0}, Lc0;-><init>(I)V

    .line 15
    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    new-instance v2, Lc0;

    .line 19
    .line 20
    invoke-direct {v2}, Lc0;-><init>()V

    .line 21
    .line 22
    .line 23
    :cond_1
    invoke-virtual {p0, v1}, Lz1;->a(I)Lb0;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    instance-of v3, v1, Lcb4;

    .line 28
    .line 29
    if-eqz v3, :cond_2

    .line 30
    .line 31
    check-cast v1, Lcb4;

    .line 32
    .line 33
    invoke-interface {v1}, Lcb4;->g()Lq1;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    :goto_0
    invoke-virtual {v2, v1}, Lc0;->a(Lb0;)V

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    invoke-interface {v1}, Lb0;->d()Lq1;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    goto :goto_0

    .line 46
    :goto_1
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-gez v1, :cond_1

    .line 51
    .line 52
    return-object v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    iget v0, p0, Lz1;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0

    .line 11
    :pswitch_0
    if-ne p1, p0, :cond_0

    .line 12
    .line 13
    goto :goto_2

    .line 14
    :cond_0
    iget-object v0, p0, Lz1;->c:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Ljava/lang/Class;

    .line 17
    .line 18
    invoke-static {v0, p1}, Lu81;->n(Ljava/lang/Class;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    goto :goto_3

    .line 26
    :cond_1
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iget v2, p0, Lz1;->b:I

    .line 31
    .line 32
    if-eq v0, v2, :cond_2

    .line 33
    .line 34
    goto :goto_3

    .line 35
    :cond_2
    move v0, v1

    .line 36
    :goto_0
    if-ge v0, v2, :cond_5

    .line 37
    .line 38
    iget-object v3, p0, Lz1;->d:Ljava/lang/Object;

    .line 39
    .line 40
    invoke-static {v3, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    if-ne v3, v4, :cond_3

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_3
    if-eqz v3, :cond_4

    .line 52
    .line 53
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-nez v3, :cond_4

    .line 58
    .line 59
    goto :goto_3

    .line 60
    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_5
    :goto_2
    const/4 v1, 0x1

    .line 64
    :goto_3
    return v1

    .line 65
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
