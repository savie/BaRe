.class public final Lza6;
.super Llb6;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lza6;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Ln60;
    .locals 12

    .line 1
    iget p0, p0, Lza6;->a:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->l()Lq1;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-static {p0}, Lj1;->x(Ljava/lang/Object;)Lj1;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    iget-object p0, p0, Lj1;->a:[B

    .line 15
    .line 16
    iget-object p1, p1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->a:Lya;

    .line 17
    .line 18
    iget-object p1, p1, Lya;->a:Lf1;

    .line 19
    .line 20
    sget-object v0, Lfi8;->F:Ljava/util/HashMap;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Lre6;

    .line 27
    .line 28
    new-instance v0, Lte6;

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-direct {v0, v1, p1}, Lei0;-><init>(ZLre6;)V

    .line 32
    .line 33
    .line 34
    iget v2, p1, Lre6;->c:I

    .line 35
    .line 36
    iget v3, p1, Lre6;->b:I

    .line 37
    .line 38
    iget v4, p1, Lre6;->e:I

    .line 39
    .line 40
    iget v5, p1, Lre6;->d:I

    .line 41
    .line 42
    iget v6, p1, Lre6;->k:I

    .line 43
    .line 44
    sget-object v7, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 45
    .line 46
    const/4 v8, 0x2

    .line 47
    const/4 v9, 0x3

    .line 48
    const/4 v10, 0x1

    .line 49
    if-ne v6, v10, :cond_3

    .line 50
    .line 51
    new-array p1, v9, [I

    .line 52
    .line 53
    aput v5, p1, v8

    .line 54
    .line 55
    aput v5, p1, v10

    .line 56
    .line 57
    aput v4, p1, v1

    .line 58
    .line 59
    invoke-static {v7, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    check-cast p1, [[[S

    .line 64
    .line 65
    iput-object p1, v0, Lte6;->c:[[[S

    .line 66
    .line 67
    move p1, v1

    .line 68
    move v2, p1

    .line 69
    :goto_0
    if-ge p1, v5, :cond_5

    .line 70
    .line 71
    move v3, v1

    .line 72
    :goto_1
    if-ge v3, v5, :cond_2

    .line 73
    .line 74
    move v6, v1

    .line 75
    :goto_2
    if-ge v6, v4, :cond_1

    .line 76
    .line 77
    iget-object v7, v0, Lte6;->c:[[[S

    .line 78
    .line 79
    if-le p1, v3, :cond_0

    .line 80
    .line 81
    aget-object v7, v7, v6

    .line 82
    .line 83
    aget-object v7, v7, p1

    .line 84
    .line 85
    aput-short v1, v7, v3

    .line 86
    .line 87
    goto :goto_3

    .line 88
    :cond_0
    aget-object v7, v7, v6

    .line 89
    .line 90
    aget-object v7, v7, p1

    .line 91
    .line 92
    aget-byte v8, p0, v2

    .line 93
    .line 94
    and-int/lit16 v8, v8, 0xff

    .line 95
    .line 96
    int-to-short v8, v8

    .line 97
    aput-short v8, v7, v3

    .line 98
    .line 99
    add-int/lit8 v2, v2, 0x1

    .line 100
    .line 101
    :goto_3
    add-int/lit8 v6, v6, 0x1

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_2
    add-int/lit8 p1, p1, 0x1

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_3
    const/16 v4, 0x20

    .line 111
    .line 112
    invoke-static {p0, v1, v4}, Lms8;->t([BII)[B

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    iput-object v5, v0, Lte6;->d:[B

    .line 117
    .line 118
    iget p1, p1, Lre6;->a:I

    .line 119
    .line 120
    new-array v5, v9, [I

    .line 121
    .line 122
    aput v2, v5, v8

    .line 123
    .line 124
    aput p1, v5, v10

    .line 125
    .line 126
    aput v3, v5, v1

    .line 127
    .line 128
    invoke-static {v7, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    check-cast p1, [[[S

    .line 133
    .line 134
    iput-object p1, v0, Lte6;->e:[[[S

    .line 135
    .line 136
    new-array v5, v9, [I

    .line 137
    .line 138
    aput v3, v5, v8

    .line 139
    .line 140
    aput v3, v5, v10

    .line 141
    .line 142
    aput v3, v5, v1

    .line 143
    .line 144
    invoke-static {v7, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v5

    .line 148
    check-cast v5, [[[S

    .line 149
    .line 150
    iput-object v5, v0, Lte6;->f:[[[S

    .line 151
    .line 152
    new-array v6, v9, [I

    .line 153
    .line 154
    aput v2, v6, v8

    .line 155
    .line 156
    aput v3, v6, v10

    .line 157
    .line 158
    aput v3, v6, v1

    .line 159
    .line 160
    invoke-static {v7, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v6

    .line 164
    check-cast v6, [[[S

    .line 165
    .line 166
    iput-object v6, v0, Lte6;->k:[[[S

    .line 167
    .line 168
    new-array v11, v9, [I

    .line 169
    .line 170
    aput v2, v11, v8

    .line 171
    .line 172
    aput v2, v11, v10

    .line 173
    .line 174
    aput v3, v11, v1

    .line 175
    .line 176
    invoke-static {v7, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v3

    .line 180
    check-cast v3, [[[S

    .line 181
    .line 182
    iput-object v3, v0, Lte6;->n:[[[S

    .line 183
    .line 184
    new-array v9, v9, [I

    .line 185
    .line 186
    aput v2, v9, v8

    .line 187
    .line 188
    aput v2, v9, v10

    .line 189
    .line 190
    aput v2, v9, v1

    .line 191
    .line 192
    invoke-static {v7, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v2

    .line 196
    check-cast v2, [[[S

    .line 197
    .line 198
    iput-object v2, v0, Lte6;->p:[[[S

    .line 199
    .line 200
    invoke-static {p1, p0, v4, v1}, Lx13;->M([[[S[BIZ)I

    .line 201
    .line 202
    .line 203
    move-result p1

    .line 204
    add-int/2addr p1, v4

    .line 205
    invoke-static {v5, p0, p1, v10}, Lx13;->M([[[S[BIZ)I

    .line 206
    .line 207
    .line 208
    move-result v4

    .line 209
    add-int/2addr v4, p1

    .line 210
    invoke-static {v6, p0, v4, v1}, Lx13;->M([[[S[BIZ)I

    .line 211
    .line 212
    .line 213
    move-result p1

    .line 214
    add-int/2addr p1, v4

    .line 215
    invoke-static {v3, p0, p1, v10}, Lx13;->M([[[S[BIZ)I

    .line 216
    .line 217
    .line 218
    move-result v1

    .line 219
    add-int/2addr v1, p1

    .line 220
    invoke-static {v2, p0, v1, v10}, Lx13;->M([[[S[BIZ)I

    .line 221
    .line 222
    .line 223
    move-result p1

    .line 224
    add-int/2addr p1, v1

    .line 225
    array-length p0, p0

    .line 226
    if-ne p1, p0, :cond_4

    .line 227
    .line 228
    goto :goto_4

    .line 229
    :cond_4
    const-string p0, "unparsed data in key encoding"

    .line 230
    .line 231
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    const/4 v0, 0x0

    .line 235
    :cond_5
    :goto_4
    return-object v0

    .line 236
    :pswitch_0
    :try_start_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->l()Lq1;

    .line 237
    .line 238
    .line 239
    move-result-object p0

    .line 240
    invoke-static {p0}, Lvy0;->k(Lb0;)Lvy0;

    .line 241
    .line 242
    .line 243
    move-result-object p0

    .line 244
    iget-object p0, p0, Lvy0;->a:[B

    .line 245
    .line 246
    invoke-static {p0}, Lms8;->k([B)[B

    .line 247
    .line 248
    .line 249
    move-result-object p0

    .line 250
    iget-object v0, p1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->a:Lya;

    .line 251
    .line 252
    iget-object v0, v0, Lya;->a:Lf1;

    .line 253
    .line 254
    sget-object v1, Lfi8;->n:Ljava/util/HashMap;

    .line 255
    .line 256
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    check-cast v0, Lsy0;

    .line 261
    .line 262
    new-instance v1, Lwy0;

    .line 263
    .line 264
    invoke-direct {v1, v0, p0}, Lwy0;-><init>(Lsy0;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    .line 266
    .line 267
    goto :goto_5

    .line 268
    :catch_0
    iget-object p0, p1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->b:Lu;

    .line 269
    .line 270
    invoke-virtual {p0}, Lu;->C()[B

    .line 271
    .line 272
    .line 273
    move-result-object p0

    .line 274
    iget-object p1, p1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->a:Lya;

    .line 275
    .line 276
    iget-object p1, p1, Lya;->a:Lf1;

    .line 277
    .line 278
    sget-object v0, Lfi8;->n:Ljava/util/HashMap;

    .line 279
    .line 280
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object p1

    .line 284
    check-cast p1, Lsy0;

    .line 285
    .line 286
    new-instance v1, Lwy0;

    .line 287
    .line 288
    invoke-direct {v1, p1, p0}, Lwy0;-><init>(Lsy0;[B)V

    .line 289
    .line 290
    .line 291
    :goto_5
    return-object v1

    .line 292
    nop

    .line 293
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
