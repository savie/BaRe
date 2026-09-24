.class public abstract Lxy5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Ljava/util/BitSet;

.field public static final b:Ljava/util/BitSet;

.field public static final c:Ljava/util/BitSet;

.field public static final d:Ljava/util/BitSet;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Ljava/util/BitSet;

    .line 2
    .line 3
    const/16 v1, 0x100

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v2, Ljava/util/BitSet;

    .line 9
    .line 10
    invoke-direct {v2, v1}, Ljava/util/BitSet;-><init>(I)V

    .line 11
    .line 12
    .line 13
    sput-object v2, Lxy5;->a:Ljava/util/BitSet;

    .line 14
    .line 15
    new-instance v3, Ljava/util/BitSet;

    .line 16
    .line 17
    invoke-direct {v3, v1}, Ljava/util/BitSet;-><init>(I)V

    .line 18
    .line 19
    .line 20
    sput-object v3, Lxy5;->b:Ljava/util/BitSet;

    .line 21
    .line 22
    new-instance v3, Ljava/util/BitSet;

    .line 23
    .line 24
    invoke-direct {v3, v1}, Ljava/util/BitSet;-><init>(I)V

    .line 25
    .line 26
    .line 27
    sput-object v3, Lxy5;->c:Ljava/util/BitSet;

    .line 28
    .line 29
    const/16 v3, 0x3a

    .line 30
    .line 31
    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 32
    .line 33
    .line 34
    const/16 v3, 0x2f

    .line 35
    .line 36
    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 37
    .line 38
    .line 39
    const/16 v3, 0x3f

    .line 40
    .line 41
    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 42
    .line 43
    .line 44
    const/16 v3, 0x23

    .line 45
    .line 46
    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 47
    .line 48
    .line 49
    const/16 v4, 0x5b

    .line 50
    .line 51
    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    .line 52
    .line 53
    .line 54
    const/16 v4, 0x5d

    .line 55
    .line 56
    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    .line 57
    .line 58
    .line 59
    const/16 v4, 0x40

    .line 60
    .line 61
    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    .line 62
    .line 63
    .line 64
    const/16 v0, 0x21

    .line 65
    .line 66
    invoke-virtual {v2, v0}, Ljava/util/BitSet;->set(I)V

    .line 67
    .line 68
    .line 69
    const/16 v4, 0x24

    .line 70
    .line 71
    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 72
    .line 73
    .line 74
    const/16 v5, 0x26

    .line 75
    .line 76
    invoke-virtual {v2, v5}, Ljava/util/BitSet;->set(I)V

    .line 77
    .line 78
    .line 79
    const/16 v6, 0x27

    .line 80
    .line 81
    invoke-virtual {v2, v6}, Ljava/util/BitSet;->set(I)V

    .line 82
    .line 83
    .line 84
    const/16 v6, 0x28

    .line 85
    .line 86
    invoke-virtual {v2, v6}, Ljava/util/BitSet;->set(I)V

    .line 87
    .line 88
    .line 89
    const/16 v6, 0x29

    .line 90
    .line 91
    invoke-virtual {v2, v6}, Ljava/util/BitSet;->set(I)V

    .line 92
    .line 93
    .line 94
    const/16 v6, 0x2a

    .line 95
    .line 96
    invoke-virtual {v2, v6}, Ljava/util/BitSet;->set(I)V

    .line 97
    .line 98
    .line 99
    const/16 v6, 0x2b

    .line 100
    .line 101
    invoke-virtual {v2, v6}, Ljava/util/BitSet;->set(I)V

    .line 102
    .line 103
    .line 104
    const/16 v7, 0x2c

    .line 105
    .line 106
    invoke-virtual {v2, v7}, Ljava/util/BitSet;->set(I)V

    .line 107
    .line 108
    .line 109
    const/16 v7, 0x3b

    .line 110
    .line 111
    invoke-virtual {v2, v7}, Ljava/util/BitSet;->set(I)V

    .line 112
    .line 113
    .line 114
    const/16 v7, 0x3d

    .line 115
    .line 116
    invoke-virtual {v2, v7}, Ljava/util/BitSet;->set(I)V

    .line 117
    .line 118
    .line 119
    const/16 v7, 0x61

    .line 120
    .line 121
    :goto_0
    const/16 v8, 0x7a

    .line 122
    .line 123
    if-gt v7, v8, :cond_0

    .line 124
    .line 125
    sget-object v8, Lxy5;->b:Ljava/util/BitSet;

    .line 126
    .line 127
    invoke-virtual {v8, v7}, Ljava/util/BitSet;->set(I)V

    .line 128
    .line 129
    .line 130
    add-int/lit8 v7, v7, 0x1

    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_0
    const/16 v9, 0x41

    .line 134
    .line 135
    :goto_1
    const/16 v10, 0x5a

    .line 136
    .line 137
    if-gt v9, v10, :cond_1

    .line 138
    .line 139
    sget-object v10, Lxy5;->b:Ljava/util/BitSet;

    .line 140
    .line 141
    invoke-virtual {v10, v9}, Ljava/util/BitSet;->set(I)V

    .line 142
    .line 143
    .line 144
    add-int/lit8 v9, v9, 0x1

    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_1
    const/16 v11, 0x30

    .line 148
    .line 149
    :goto_2
    const/16 v12, 0x39

    .line 150
    .line 151
    if-gt v11, v12, :cond_2

    .line 152
    .line 153
    sget-object v12, Lxy5;->b:Ljava/util/BitSet;

    .line 154
    .line 155
    invoke-virtual {v12, v11}, Ljava/util/BitSet;->set(I)V

    .line 156
    .line 157
    .line 158
    add-int/lit8 v11, v11, 0x1

    .line 159
    .line 160
    goto :goto_2

    .line 161
    :cond_2
    sget-object v11, Lxy5;->b:Ljava/util/BitSet;

    .line 162
    .line 163
    const/16 v13, 0x2d

    .line 164
    .line 165
    invoke-virtual {v11, v13}, Ljava/util/BitSet;->set(I)V

    .line 166
    .line 167
    .line 168
    const/16 v14, 0x2e

    .line 169
    .line 170
    invoke-virtual {v11, v14}, Ljava/util/BitSet;->set(I)V

    .line 171
    .line 172
    .line 173
    const/16 v15, 0x5f

    .line 174
    .line 175
    invoke-virtual {v11, v15}, Ljava/util/BitSet;->set(I)V

    .line 176
    .line 177
    .line 178
    const/16 v2, 0x7e

    .line 179
    .line 180
    invoke-virtual {v11, v2}, Ljava/util/BitSet;->set(I)V

    .line 181
    .line 182
    .line 183
    sget-object v7, Lxy5;->c:Ljava/util/BitSet;

    .line 184
    .line 185
    sget-object v9, Lxy5;->a:Ljava/util/BitSet;

    .line 186
    .line 187
    invoke-virtual {v7, v9}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v7, v11}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 191
    .line 192
    .line 193
    new-instance v7, Ljava/util/BitSet;

    .line 194
    .line 195
    invoke-direct {v7, v1}, Ljava/util/BitSet;-><init>(I)V

    .line 196
    .line 197
    .line 198
    sput-object v7, Lxy5;->d:Ljava/util/BitSet;

    .line 199
    .line 200
    const/16 v1, 0x61

    .line 201
    .line 202
    :goto_3
    if-gt v1, v8, :cond_3

    .line 203
    .line 204
    sget-object v7, Lxy5;->d:Ljava/util/BitSet;

    .line 205
    .line 206
    invoke-virtual {v7, v1}, Ljava/util/BitSet;->set(I)V

    .line 207
    .line 208
    .line 209
    add-int/lit8 v1, v1, 0x1

    .line 210
    .line 211
    goto :goto_3

    .line 212
    :cond_3
    const/16 v7, 0x41

    .line 213
    .line 214
    :goto_4
    if-gt v7, v10, :cond_4

    .line 215
    .line 216
    sget-object v1, Lxy5;->d:Ljava/util/BitSet;

    .line 217
    .line 218
    invoke-virtual {v1, v7}, Ljava/util/BitSet;->set(I)V

    .line 219
    .line 220
    .line 221
    add-int/lit8 v7, v7, 0x1

    .line 222
    .line 223
    goto :goto_4

    .line 224
    :cond_4
    const/16 v9, 0x30

    .line 225
    .line 226
    :goto_5
    if-gt v9, v12, :cond_5

    .line 227
    .line 228
    sget-object v1, Lxy5;->d:Ljava/util/BitSet;

    .line 229
    .line 230
    invoke-virtual {v1, v9}, Ljava/util/BitSet;->set(I)V

    .line 231
    .line 232
    .line 233
    add-int/lit8 v9, v9, 0x1

    .line 234
    .line 235
    goto :goto_5

    .line 236
    :cond_5
    sget-object v1, Lxy5;->d:Ljava/util/BitSet;

    .line 237
    .line 238
    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v1, v5}, Ljava/util/BitSet;->set(I)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v1, v6}, Ljava/util/BitSet;->set(I)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v1, v13}, Ljava/util/BitSet;->set(I)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v1, v14}, Ljava/util/BitSet;->set(I)V

    .line 257
    .line 258
    .line 259
    const/16 v0, 0x5e

    .line 260
    .line 261
    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v1, v15}, Ljava/util/BitSet;->set(I)V

    .line 265
    .line 266
    .line 267
    const/16 v0, 0x60

    .line 268
    .line 269
    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 270
    .line 271
    .line 272
    const/16 v0, 0x7c

    .line 273
    .line 274
    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 278
    .line 279
    .line 280
    return-void
.end method

.method public static a(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 8

    .line 1
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return-object p0

    .line 7
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {p0}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    :goto_0
    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_3

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->get()C

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const/16 v3, 0x25

    .line 30
    .line 31
    if-ne v2, v3, :cond_2

    .line 32
    .line 33
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    const/4 v5, 0x2

    .line 38
    if-lt v4, v5, :cond_2

    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->get()C

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->get()C

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    const/16 v5, 0x10

    .line 49
    .line 50
    invoke-static {v2, v5}, Ljava/lang/Character;->digit(CI)I

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    const/4 v7, -0x1

    .line 59
    if-eq v6, v7, :cond_1

    .line 60
    .line 61
    if-eq v5, v7, :cond_1

    .line 62
    .line 63
    shl-int/lit8 v2, v6, 0x4

    .line 64
    .line 65
    add-int/2addr v2, v5

    .line 66
    int-to-byte v2, v2

    .line 67
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 72
    .line 73
    .line 74
    int-to-byte v2, v2

    .line 75
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 76
    .line 77
    .line 78
    int-to-byte v2, v4

    .line 79
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_2
    int-to-byte v2, v2

    .line 84
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_3
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 89
    .line 90
    .line 91
    if-eqz v0, :cond_4

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_4
    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 95
    .line 96
    :goto_1
    invoke-virtual {v0, v1}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    return-object p0
.end method

.method public static b(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;Ljava/util/BitSet;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_2

    .line 4
    :cond_0
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-eqz p2, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 12
    .line 13
    :goto_0
    invoke-virtual {p2, p1}, Ljava/nio/charset/Charset;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    :goto_1
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    if-eqz p2, :cond_3

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    and-int/lit16 v0, p2, 0xff

    .line 28
    .line 29
    invoke-virtual {p3, v0}, Ljava/util/BitSet;->get(I)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    int-to-char p2, v0

    .line 36
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    const-string v1, "%"

    .line 41
    .line 42
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    shr-int/lit8 v0, v0, 0x4

    .line 46
    .line 47
    and-int/lit8 v0, v0, 0xf

    .line 48
    .line 49
    const/16 v1, 0x10

    .line 50
    .line 51
    invoke-static {v0, v1}, Ljava/lang/Character;->forDigit(II)C

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    and-int/lit8 p2, p2, 0xf

    .line 60
    .line 61
    invoke-static {p2, v1}, Ljava/lang/Character;->forDigit(II)C

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    invoke-static {p2}, Ljava/lang/Character;->toUpperCase(C)C

    .line 66
    .line 67
    .line 68
    move-result p2

    .line 69
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_3
    :goto_2
    return-void
.end method
