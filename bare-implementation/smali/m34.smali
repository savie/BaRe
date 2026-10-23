.class public final Lm34;
.super Lh3;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final a(Lun2;Lke;)Lgt0;
    .locals 10

    .line 1
    iget p0, p1, Lun2;->g:I

    .line 2
    .line 3
    const/4 v0, 0x4

    .line 4
    const/4 v1, 0x0

    .line 5
    if-lt p0, v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_a

    .line 8
    .line 9
    :cond_0
    iget-object p0, p1, Lun2;->a:Ljava/lang/CharSequence;

    .line 10
    .line 11
    iget p1, p1, Lun2;->e:I

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/16 v2, 0x23

    .line 18
    .line 19
    invoke-static {v2, p1, v0, p0}, Lzm5;->A(CIILjava/lang/CharSequence;)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    sub-int/2addr v0, p1

    .line 24
    const/4 v3, 0x1

    .line 25
    if-eqz v0, :cond_b

    .line 26
    .line 27
    const/4 v4, 0x6

    .line 28
    if-le v0, v4, :cond_1

    .line 29
    .line 30
    goto/16 :goto_6

    .line 31
    .line 32
    :cond_1
    add-int v4, p1, v0

    .line 33
    .line 34
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    if-lt v4, v5, :cond_2

    .line 39
    .line 40
    new-instance v2, Ln34;

    .line 41
    .line 42
    const-string v4, ""

    .line 43
    .line 44
    invoke-direct {v2, v0, v4}, Ln34;-><init>(ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    goto/16 :goto_7

    .line 48
    .line 49
    :cond_2
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    const/16 v6, 0x9

    .line 54
    .line 55
    const/16 v7, 0x20

    .line 56
    .line 57
    if-eq v5, v7, :cond_3

    .line 58
    .line 59
    if-eq v5, v6, :cond_3

    .line 60
    .line 61
    goto :goto_6

    .line 62
    :cond_3
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    sub-int/2addr v5, v3

    .line 67
    :goto_0
    if-lt v5, v4, :cond_5

    .line 68
    .line 69
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    .line 70
    .line 71
    .line 72
    move-result v8

    .line 73
    if-eq v8, v6, :cond_4

    .line 74
    .line 75
    if-eq v8, v7, :cond_4

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_4
    add-int/lit8 v5, v5, -0x1

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_5
    add-int/lit8 v5, v4, -0x1

    .line 82
    .line 83
    :goto_1
    move v8, v5

    .line 84
    :goto_2
    if-lt v8, v4, :cond_7

    .line 85
    .line 86
    invoke-interface {p0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    .line 87
    .line 88
    .line 89
    move-result v9

    .line 90
    if-eq v9, v2, :cond_6

    .line 91
    .line 92
    goto :goto_3

    .line 93
    :cond_6
    add-int/lit8 v8, v8, -0x1

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_7
    add-int/lit8 v8, v4, -0x1

    .line 97
    .line 98
    :goto_3
    move v2, v8

    .line 99
    :goto_4
    if-lt v2, v4, :cond_9

    .line 100
    .line 101
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 102
    .line 103
    .line 104
    move-result v9

    .line 105
    if-eq v9, v6, :cond_8

    .line 106
    .line 107
    if-eq v9, v7, :cond_8

    .line 108
    .line 109
    goto :goto_5

    .line 110
    :cond_8
    add-int/lit8 v2, v2, -0x1

    .line 111
    .line 112
    goto :goto_4

    .line 113
    :cond_9
    add-int/lit8 v2, v4, -0x1

    .line 114
    .line 115
    :goto_5
    if-eq v2, v8, :cond_a

    .line 116
    .line 117
    new-instance v5, Ln34;

    .line 118
    .line 119
    add-int/2addr v2, v3

    .line 120
    invoke-interface {p0, v4, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    invoke-direct {v5, v0, v2}, Ln34;-><init>(ILjava/lang/String;)V

    .line 129
    .line 130
    .line 131
    move-object v2, v5

    .line 132
    goto :goto_7

    .line 133
    :cond_a
    new-instance v2, Ln34;

    .line 134
    .line 135
    add-int/2addr v5, v3

    .line 136
    invoke-interface {p0, v4, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    invoke-direct {v2, v0, v4}, Ln34;-><init>(ILjava/lang/String;)V

    .line 145
    .line 146
    .line 147
    goto :goto_7

    .line 148
    :cond_b
    :goto_6
    move-object v2, v1

    .line 149
    :goto_7
    const/4 v0, 0x0

    .line 150
    if-eqz v2, :cond_c

    .line 151
    .line 152
    new-array p1, v3, [Lg3;

    .line 153
    .line 154
    aput-object v2, p1, v0

    .line 155
    .line 156
    new-instance p2, Lgt0;

    .line 157
    .line 158
    invoke-direct {p2, p1}, Lgt0;-><init>([Lg3;)V

    .line 159
    .line 160
    .line 161
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 162
    .line 163
    .line 164
    move-result p0

    .line 165
    iput p0, p2, Lgt0;->b:I

    .line 166
    .line 167
    return-object p2

    .line 168
    :cond_c
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 169
    .line 170
    .line 171
    move-result v2

    .line 172
    const/16 v4, 0x2d

    .line 173
    .line 174
    if-eq v2, v4, :cond_e

    .line 175
    .line 176
    const/16 v5, 0x3d

    .line 177
    .line 178
    if-eq v2, v5, :cond_d

    .line 179
    .line 180
    goto :goto_8

    .line 181
    :cond_d
    add-int/lit8 v2, p1, 0x1

    .line 182
    .line 183
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 184
    .line 185
    .line 186
    move-result v6

    .line 187
    invoke-static {v5, v2, v6, p0}, Lzm5;->A(CIILjava/lang/CharSequence;)I

    .line 188
    .line 189
    .line 190
    move-result v2

    .line 191
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 192
    .line 193
    .line 194
    move-result v5

    .line 195
    invoke-static {p0, v2, v5}, Lzm5;->B(Ljava/lang/CharSequence;II)I

    .line 196
    .line 197
    .line 198
    move-result v2

    .line 199
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 200
    .line 201
    .line 202
    move-result v5

    .line 203
    if-lt v2, v5, :cond_e

    .line 204
    .line 205
    move p1, v3

    .line 206
    goto :goto_9

    .line 207
    :cond_e
    add-int/2addr p1, v3

    .line 208
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 209
    .line 210
    .line 211
    move-result v2

    .line 212
    invoke-static {v4, p1, v2, p0}, Lzm5;->A(CIILjava/lang/CharSequence;)I

    .line 213
    .line 214
    .line 215
    move-result p1

    .line 216
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 217
    .line 218
    .line 219
    move-result v2

    .line 220
    invoke-static {p0, p1, v2}, Lzm5;->B(Ljava/lang/CharSequence;II)I

    .line 221
    .line 222
    .line 223
    move-result p1

    .line 224
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 225
    .line 226
    .line 227
    move-result v2

    .line 228
    if-lt p1, v2, :cond_f

    .line 229
    .line 230
    const/4 p1, 0x2

    .line 231
    goto :goto_9

    .line 232
    :cond_f
    :goto_8
    move p1, v0

    .line 233
    :goto_9
    if-lez p1, :cond_10

    .line 234
    .line 235
    invoke-virtual {p2}, Lke;->a()Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    move-result-object p2

    .line 239
    if-eqz p2, :cond_10

    .line 240
    .line 241
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object p2

    .line 245
    new-instance v1, Ln34;

    .line 246
    .line 247
    invoke-direct {v1, p1, p2}, Ln34;-><init>(ILjava/lang/String;)V

    .line 248
    .line 249
    .line 250
    new-array p1, v3, [Lg3;

    .line 251
    .line 252
    aput-object v1, p1, v0

    .line 253
    .line 254
    new-instance p2, Lgt0;

    .line 255
    .line 256
    invoke-direct {p2, p1}, Lgt0;-><init>([Lg3;)V

    .line 257
    .line 258
    .line 259
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 260
    .line 261
    .line 262
    move-result p0

    .line 263
    iput p0, p2, Lgt0;->b:I

    .line 264
    .line 265
    iput-boolean v3, p2, Lgt0;->d:Z

    .line 266
    .line 267
    return-object p2

    .line 268
    :cond_10
    :goto_a
    return-object v1
.end method
