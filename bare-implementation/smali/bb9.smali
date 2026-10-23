.class public abstract Lbb9;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[Lp77;

.field public static final c:Ly53;

.field public static final d:Ly53;

.field public static e:Z = true


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 4

    .line 1
    const-string v0, "decelerate"

    .line 2
    .line 3
    const-string v1, "linear"

    .line 4
    .line 5
    const-string v2, "standard"

    .line 6
    .line 7
    const-string v3, "accelerate"

    .line 8
    .line 9
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Lbb9;->a:[Ljava/lang/String;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    new-array v0, v0, [Lp77;

    .line 17
    .line 18
    sput-object v0, Lbb9;->b:[Lp77;

    .line 19
    .line 20
    new-instance v0, Ly53;

    .line 21
    .line 22
    const-string v1, "is_user_verifying_platform_authenticator_available_for_credential"

    .line 23
    .line 24
    const-wide/16 v2, 0x1

    .line 25
    .line 26
    invoke-direct {v0, v1, v2, v3}, Ly53;-><init>(Ljava/lang/String;J)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lbb9;->c:Ly53;

    .line 30
    .line 31
    new-instance v0, Ly53;

    .line 32
    .line 33
    const-string v1, "is_user_verifying_platform_authenticator_available"

    .line 34
    .line 35
    invoke-direct {v0, v1, v2, v3}, Ly53;-><init>(Ljava/lang/String;J)V

    .line 36
    .line 37
    .line 38
    sput-object v0, Lbb9;->d:Ly53;

    .line 39
    .line 40
    return-void
.end method

.method public static final A(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/16 v1, 0xc8

    .line 9
    .line 10
    if-ge v0, v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, -0x1

    .line 14
    const-string v1, "....."

    .line 15
    .line 16
    if-ne p0, v0, :cond_2

    .line 17
    .line 18
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    add-int/lit8 p0, p0, -0x3c

    .line 23
    .line 24
    if-gtz p0, :cond_1

    .line 25
    .line 26
    :goto_0
    return-object p1

    .line 27
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-interface {p1, p0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    return-object p0

    .line 52
    :cond_2
    add-int/lit8 v0, p0, -0x1e

    .line 53
    .line 54
    add-int/lit8 p0, p0, 0x1e

    .line 55
    .line 56
    const-string v2, ""

    .line 57
    .line 58
    if-gtz v0, :cond_3

    .line 59
    .line 60
    move-object v3, v2

    .line 61
    goto :goto_1

    .line 62
    :cond_3
    move-object v3, v1

    .line 63
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    if-lt p0, v4, :cond_4

    .line 68
    .line 69
    move-object v1, v2

    .line 70
    :cond_4
    invoke-static {v3}, Ldj7;->s(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    if-gez v0, :cond_5

    .line 75
    .line 76
    const/4 v0, 0x0

    .line 77
    :cond_5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    if-le p0, v3, :cond_6

    .line 82
    .line 83
    move p0, v3

    .line 84
    :cond_6
    invoke-interface {p1, v0, p0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    return-object p0
.end method

.method public static B([I[I[I)V
    .locals 30

    .line 1
    const/4 v0, 0x0

    .line 2
    aget v1, p1, v0

    .line 3
    .line 4
    int-to-long v1, v1

    .line 5
    const-wide v3, 0xffffffffL

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    and-long/2addr v1, v3

    .line 11
    const/4 v5, 0x1

    .line 12
    aget v6, p1, v5

    .line 13
    .line 14
    int-to-long v6, v6

    .line 15
    and-long/2addr v6, v3

    .line 16
    const/4 v8, 0x2

    .line 17
    aget v9, p1, v8

    .line 18
    .line 19
    int-to-long v9, v9

    .line 20
    and-long/2addr v9, v3

    .line 21
    const/4 v11, 0x3

    .line 22
    aget v12, p1, v11

    .line 23
    .line 24
    int-to-long v12, v12

    .line 25
    and-long/2addr v12, v3

    .line 26
    const/4 v14, 0x4

    .line 27
    aget v15, p1, v14

    .line 28
    .line 29
    move/from16 v16, v0

    .line 30
    .line 31
    move-wide/from16 v17, v1

    .line 32
    .line 33
    int-to-long v0, v15

    .line 34
    and-long/2addr v0, v3

    .line 35
    const/4 v2, 0x5

    .line 36
    aget v15, p1, v2

    .line 37
    .line 38
    move-wide/from16 v19, v3

    .line 39
    .line 40
    move v4, v2

    .line 41
    int-to-long v2, v15

    .line 42
    and-long v2, v2, v19

    .line 43
    .line 44
    const/4 v15, 0x6

    .line 45
    move/from16 v21, v4

    .line 46
    .line 47
    aget v4, p1, v15

    .line 48
    .line 49
    move/from16 v22, v5

    .line 50
    .line 51
    move-wide/from16 v23, v6

    .line 52
    .line 53
    int-to-long v5, v4

    .line 54
    and-long v4, v5, v19

    .line 55
    .line 56
    aget v6, p0, v16

    .line 57
    .line 58
    int-to-long v6, v6

    .line 59
    and-long v6, v6, v19

    .line 60
    .line 61
    move/from16 v25, v8

    .line 62
    .line 63
    move-wide/from16 v26, v9

    .line 64
    .line 65
    mul-long v8, v6, v17

    .line 66
    .line 67
    long-to-int v10, v8

    .line 68
    aput v10, p2, v16

    .line 69
    .line 70
    const/16 v10, 0x20

    .line 71
    .line 72
    ushr-long/2addr v8, v10

    .line 73
    mul-long v28, v6, v23

    .line 74
    .line 75
    add-long v8, v28, v8

    .line 76
    .line 77
    move/from16 p1, v10

    .line 78
    .line 79
    long-to-int v10, v8

    .line 80
    aput v10, p2, v22

    .line 81
    .line 82
    ushr-long v8, v8, p1

    .line 83
    .line 84
    mul-long v28, v6, v26

    .line 85
    .line 86
    add-long v8, v28, v8

    .line 87
    .line 88
    long-to-int v10, v8

    .line 89
    aput v10, p2, v25

    .line 90
    .line 91
    ushr-long v8, v8, p1

    .line 92
    .line 93
    mul-long v28, v6, v12

    .line 94
    .line 95
    add-long v8, v28, v8

    .line 96
    .line 97
    long-to-int v10, v8

    .line 98
    aput v10, p2, v11

    .line 99
    .line 100
    ushr-long v8, v8, p1

    .line 101
    .line 102
    mul-long v10, v6, v0

    .line 103
    .line 104
    add-long/2addr v10, v8

    .line 105
    long-to-int v8, v10

    .line 106
    aput v8, p2, v14

    .line 107
    .line 108
    ushr-long v8, v10, p1

    .line 109
    .line 110
    mul-long v10, v6, v2

    .line 111
    .line 112
    add-long/2addr v10, v8

    .line 113
    long-to-int v8, v10

    .line 114
    aput v8, p2, v21

    .line 115
    .line 116
    ushr-long v8, v10, p1

    .line 117
    .line 118
    mul-long/2addr v6, v4

    .line 119
    add-long/2addr v6, v8

    .line 120
    long-to-int v8, v6

    .line 121
    aput v8, p2, v15

    .line 122
    .line 123
    ushr-long v6, v6, p1

    .line 124
    .line 125
    long-to-int v6, v6

    .line 126
    const/4 v7, 0x7

    .line 127
    aput v6, p2, v7

    .line 128
    .line 129
    move/from16 v6, v22

    .line 130
    .line 131
    :goto_0
    if-ge v6, v7, :cond_0

    .line 132
    .line 133
    aget v8, p0, v6

    .line 134
    .line 135
    int-to-long v8, v8

    .line 136
    and-long v8, v8, v19

    .line 137
    .line 138
    mul-long v10, v8, v17

    .line 139
    .line 140
    aget v14, p2, v6

    .line 141
    .line 142
    int-to-long v14, v14

    .line 143
    and-long v14, v14, v19

    .line 144
    .line 145
    add-long/2addr v10, v14

    .line 146
    long-to-int v14, v10

    .line 147
    aput v14, p2, v6

    .line 148
    .line 149
    ushr-long v10, v10, p1

    .line 150
    .line 151
    mul-long v14, v8, v23

    .line 152
    .line 153
    add-int/lit8 v16, v6, 0x1

    .line 154
    .line 155
    aget v7, p2, v16

    .line 156
    .line 157
    move-wide/from16 v28, v0

    .line 158
    .line 159
    int-to-long v0, v7

    .line 160
    and-long v0, v0, v19

    .line 161
    .line 162
    add-long/2addr v14, v0

    .line 163
    add-long/2addr v14, v10

    .line 164
    long-to-int v0, v14

    .line 165
    aput v0, p2, v16

    .line 166
    .line 167
    ushr-long v0, v14, p1

    .line 168
    .line 169
    mul-long v10, v8, v26

    .line 170
    .line 171
    add-int/lit8 v7, v6, 0x2

    .line 172
    .line 173
    aget v14, p2, v7

    .line 174
    .line 175
    int-to-long v14, v14

    .line 176
    and-long v14, v14, v19

    .line 177
    .line 178
    add-long/2addr v10, v14

    .line 179
    add-long/2addr v10, v0

    .line 180
    long-to-int v0, v10

    .line 181
    aput v0, p2, v7

    .line 182
    .line 183
    ushr-long v0, v10, p1

    .line 184
    .line 185
    mul-long v10, v8, v12

    .line 186
    .line 187
    add-int/lit8 v7, v6, 0x3

    .line 188
    .line 189
    aget v14, p2, v7

    .line 190
    .line 191
    int-to-long v14, v14

    .line 192
    and-long v14, v14, v19

    .line 193
    .line 194
    add-long/2addr v10, v14

    .line 195
    add-long/2addr v10, v0

    .line 196
    long-to-int v0, v10

    .line 197
    aput v0, p2, v7

    .line 198
    .line 199
    ushr-long v0, v10, p1

    .line 200
    .line 201
    mul-long v10, v8, v28

    .line 202
    .line 203
    add-int/lit8 v7, v6, 0x4

    .line 204
    .line 205
    aget v14, p2, v7

    .line 206
    .line 207
    int-to-long v14, v14

    .line 208
    and-long v14, v14, v19

    .line 209
    .line 210
    add-long/2addr v10, v14

    .line 211
    add-long/2addr v10, v0

    .line 212
    long-to-int v0, v10

    .line 213
    aput v0, p2, v7

    .line 214
    .line 215
    ushr-long v0, v10, p1

    .line 216
    .line 217
    mul-long v10, v8, v2

    .line 218
    .line 219
    add-int/lit8 v7, v6, 0x5

    .line 220
    .line 221
    aget v14, p2, v7

    .line 222
    .line 223
    int-to-long v14, v14

    .line 224
    and-long v14, v14, v19

    .line 225
    .line 226
    add-long/2addr v10, v14

    .line 227
    add-long/2addr v10, v0

    .line 228
    long-to-int v0, v10

    .line 229
    aput v0, p2, v7

    .line 230
    .line 231
    ushr-long v0, v10, p1

    .line 232
    .line 233
    mul-long/2addr v8, v4

    .line 234
    add-int/lit8 v7, v6, 0x6

    .line 235
    .line 236
    aget v10, p2, v7

    .line 237
    .line 238
    int-to-long v10, v10

    .line 239
    and-long v10, v10, v19

    .line 240
    .line 241
    add-long/2addr v8, v10

    .line 242
    add-long/2addr v8, v0

    .line 243
    long-to-int v0, v8

    .line 244
    aput v0, p2, v7

    .line 245
    .line 246
    ushr-long v0, v8, p1

    .line 247
    .line 248
    add-int/lit8 v6, v6, 0x7

    .line 249
    .line 250
    long-to-int v0, v0

    .line 251
    aput v0, p2, v6

    .line 252
    .line 253
    move/from16 v6, v16

    .line 254
    .line 255
    move-wide/from16 v0, v28

    .line 256
    .line 257
    const/4 v7, 0x7

    .line 258
    goto :goto_0

    .line 259
    :cond_0
    return-void
.end method

.method public static C([[S[[S)[[S
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    aget-object v1, p0, v0

    .line 3
    .line 4
    array-length v1, v1

    .line 5
    array-length v2, p1

    .line 6
    if-ne v1, v2, :cond_3

    .line 7
    .line 8
    array-length v1, p0

    .line 9
    aget-object v2, p1, v0

    .line 10
    .line 11
    array-length v2, v2

    .line 12
    const/4 v3, 0x2

    .line 13
    new-array v3, v3, [I

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    aput v2, v3, v4

    .line 17
    .line 18
    aput v1, v3, v0

    .line 19
    .line 20
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 21
    .line 22
    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, [[S

    .line 27
    .line 28
    move v2, v0

    .line 29
    :goto_0
    array-length v3, p0

    .line 30
    if-ge v2, v3, :cond_2

    .line 31
    .line 32
    move v3, v0

    .line 33
    :goto_1
    array-length v4, p1

    .line 34
    if-ge v3, v4, :cond_1

    .line 35
    .line 36
    move v4, v0

    .line 37
    :goto_2
    aget-object v5, p1, v0

    .line 38
    .line 39
    array-length v5, v5

    .line 40
    if-ge v4, v5, :cond_0

    .line 41
    .line 42
    aget-object v5, p0, v2

    .line 43
    .line 44
    aget-short v5, v5, v3

    .line 45
    .line 46
    aget-object v6, p1, v3

    .line 47
    .line 48
    aget-short v6, v6, v4

    .line 49
    .line 50
    sget-object v7, Liu3;->a:[[B

    .line 51
    .line 52
    aget-object v5, v7, v5

    .line 53
    .line 54
    aget-byte v5, v5, v6

    .line 55
    .line 56
    and-int/lit16 v5, v5, 0xff

    .line 57
    .line 58
    int-to-short v5, v5

    .line 59
    aget-object v6, v1, v2

    .line 60
    .line 61
    aget-short v7, v6, v4

    .line 62
    .line 63
    xor-int/2addr v5, v7

    .line 64
    int-to-short v5, v5

    .line 65
    aput-short v5, v6, v4

    .line 66
    .line 67
    add-int/lit8 v4, v4, 0x1

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    return-object v1

    .line 77
    :cond_3
    const-string p0, "Multiplication is not possible!"

    .line 78
    .line 79
    invoke-static {p0}, Lg84;->h(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    const/4 p0, 0x0

    .line 83
    return-object p0
.end method

.method public static E([[S[[[S[[[S)[[[S
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    aget-object v1, p1, v0

    .line 3
    .line 4
    array-length v2, v1

    .line 5
    aget-object v3, p2, v0

    .line 6
    .line 7
    array-length v4, v3

    .line 8
    if-ne v2, v4, :cond_4

    .line 9
    .line 10
    aget-object v1, v1, v0

    .line 11
    .line 12
    array-length v1, v1

    .line 13
    aget-object v2, v3, v0

    .line 14
    .line 15
    array-length v4, v2

    .line 16
    if-ne v1, v4, :cond_4

    .line 17
    .line 18
    array-length v1, p1

    .line 19
    aget-object v4, p0, v0

    .line 20
    .line 21
    array-length v4, v4

    .line 22
    if-ne v1, v4, :cond_4

    .line 23
    .line 24
    array-length v1, p2

    .line 25
    array-length v4, p0

    .line 26
    if-ne v1, v4, :cond_4

    .line 27
    .line 28
    array-length v1, p2

    .line 29
    array-length v3, v3

    .line 30
    array-length v2, v2

    .line 31
    const/4 v4, 0x3

    .line 32
    new-array v4, v4, [I

    .line 33
    .line 34
    const/4 v5, 0x2

    .line 35
    aput v2, v4, v5

    .line 36
    .line 37
    const/4 v2, 0x1

    .line 38
    aput v3, v4, v2

    .line 39
    .line 40
    aput v1, v4, v0

    .line 41
    .line 42
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 43
    .line 44
    invoke-static {v1, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, [[[S

    .line 49
    .line 50
    move v2, v0

    .line 51
    :goto_0
    aget-object v3, p1, v0

    .line 52
    .line 53
    array-length v3, v3

    .line 54
    if-ge v2, v3, :cond_3

    .line 55
    .line 56
    move v3, v0

    .line 57
    :goto_1
    aget-object v4, p1, v0

    .line 58
    .line 59
    aget-object v4, v4, v0

    .line 60
    .line 61
    array-length v4, v4

    .line 62
    if-ge v3, v4, :cond_2

    .line 63
    .line 64
    move v4, v0

    .line 65
    :goto_2
    array-length v5, p0

    .line 66
    if-ge v4, v5, :cond_1

    .line 67
    .line 68
    move v5, v0

    .line 69
    :goto_3
    aget-object v6, p0, v0

    .line 70
    .line 71
    array-length v6, v6

    .line 72
    if-ge v5, v6, :cond_0

    .line 73
    .line 74
    aget-object v6, p0, v4

    .line 75
    .line 76
    aget-short v6, v6, v5

    .line 77
    .line 78
    aget-object v7, p1, v5

    .line 79
    .line 80
    aget-object v7, v7, v2

    .line 81
    .line 82
    aget-short v7, v7, v3

    .line 83
    .line 84
    sget-object v8, Liu3;->a:[[B

    .line 85
    .line 86
    aget-object v6, v8, v6

    .line 87
    .line 88
    aget-byte v6, v6, v7

    .line 89
    .line 90
    and-int/lit16 v6, v6, 0xff

    .line 91
    .line 92
    int-to-short v6, v6

    .line 93
    aget-object v7, v1, v4

    .line 94
    .line 95
    aget-object v7, v7, v2

    .line 96
    .line 97
    aget-short v8, v7, v3

    .line 98
    .line 99
    xor-int/2addr v6, v8

    .line 100
    int-to-short v6, v6

    .line 101
    aput-short v6, v7, v3

    .line 102
    .line 103
    add-int/lit8 v5, v5, 0x1

    .line 104
    .line 105
    goto :goto_3

    .line 106
    :cond_0
    aget-object v5, v1, v4

    .line 107
    .line 108
    aget-object v5, v5, v2

    .line 109
    .line 110
    aget-object v6, p2, v4

    .line 111
    .line 112
    aget-object v6, v6, v2

    .line 113
    .line 114
    aget-short v6, v6, v3

    .line 115
    .line 116
    aget-short v7, v5, v3

    .line 117
    .line 118
    sget-object v8, Liu3;->a:[[B

    .line 119
    .line 120
    xor-int/2addr v6, v7

    .line 121
    int-to-short v6, v6

    .line 122
    aput-short v6, v5, v3

    .line 123
    .line 124
    add-int/lit8 v4, v4, 0x1

    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_3
    return-object v1

    .line 134
    :cond_4
    const-string p0, "Multiplication not possible!"

    .line 135
    .line 136
    invoke-static {p0}, Lg84;->h(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    const/4 p0, 0x0

    .line 140
    return-object p0
.end method

.method public static F(Ljava/lang/String;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    .line 5
    const/4 v0, 0x0

    .line 6
    :try_start_1
    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    .line 14
    new-instance v0, Ljava/lang/RuntimeException;

    .line 15
    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v2, "Expected instanceof GlideModule, but found: "

    .line 19
    .line 20
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw v0

    .line 34
    :catch_0
    move-exception v1

    .line 35
    goto :goto_0

    .line 36
    :catch_1
    move-exception v1

    .line 37
    goto :goto_1

    .line 38
    :catch_2
    move-exception v1

    .line 39
    goto :goto_2

    .line 40
    :catch_3
    move-exception v1

    .line 41
    goto :goto_3

    .line 42
    :goto_0
    invoke-static {p0, v1}, Lbb9;->M(Ljava/lang/Class;Ljava/lang/ReflectiveOperationException;)V

    .line 43
    .line 44
    .line 45
    throw v0

    .line 46
    :goto_1
    invoke-static {p0, v1}, Lbb9;->M(Ljava/lang/Class;Ljava/lang/ReflectiveOperationException;)V

    .line 47
    .line 48
    .line 49
    throw v0

    .line 50
    :goto_2
    invoke-static {p0, v1}, Lbb9;->M(Ljava/lang/Class;Ljava/lang/ReflectiveOperationException;)V

    .line 51
    .line 52
    .line 53
    throw v0

    .line 54
    :goto_3
    invoke-static {p0, v1}, Lbb9;->M(Ljava/lang/Class;Ljava/lang/ReflectiveOperationException;)V

    .line 55
    .line 56
    .line 57
    throw v0

    .line 58
    :catch_4
    move-exception p0

    .line 59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 60
    .line 61
    const-string v1, "Unable to find GlideModule implementation"

    .line 62
    .line 63
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 64
    .line 65
    .line 66
    throw v0
.end method

.method public static G(Landroid/animation/AnimatorSet;Ljava/util/ArrayList;)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    move v4, v3

    .line 9
    :goto_0
    if-ge v4, v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v5

    .line 15
    check-cast v5, Landroid/animation/Animator;

    .line 16
    .line 17
    invoke-virtual {v5}, Landroid/animation/Animator;->getStartDelay()J

    .line 18
    .line 19
    .line 20
    move-result-wide v6

    .line 21
    invoke-virtual {v5}, Landroid/animation/Animator;->getDuration()J

    .line 22
    .line 23
    .line 24
    move-result-wide v8

    .line 25
    add-long/2addr v8, v6

    .line 26
    invoke-static {v1, v2, v8, v9}, Ljava/lang/Math;->max(JJ)J

    .line 27
    .line 28
    .line 29
    move-result-wide v1

    .line 30
    add-int/lit8 v4, v4, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    filled-new-array {v3, v3}, [I

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, p1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public static H([I[I)V
    .locals 51

    .line 1
    const/4 v0, 0x0

    .line 2
    aget v1, p0, v0

    .line 3
    .line 4
    int-to-long v1, v1

    .line 5
    const-wide v3, 0xffffffffL

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    and-long/2addr v1, v3

    .line 11
    const/4 v5, 0x6

    .line 12
    const/16 v6, 0xe

    .line 13
    .line 14
    move v8, v0

    .line 15
    move v7, v5

    .line 16
    :goto_0
    add-int/lit8 v9, v7, -0x1

    .line 17
    .line 18
    aget v7, p0, v7

    .line 19
    .line 20
    int-to-long v10, v7

    .line 21
    and-long/2addr v10, v3

    .line 22
    mul-long/2addr v10, v10

    .line 23
    add-int/lit8 v7, v6, -0x1

    .line 24
    .line 25
    shl-int/lit8 v8, v8, 0x1f

    .line 26
    .line 27
    const/16 v12, 0x21

    .line 28
    .line 29
    ushr-long v13, v10, v12

    .line 30
    .line 31
    long-to-int v13, v13

    .line 32
    or-int/2addr v8, v13

    .line 33
    aput v8, p1, v7

    .line 34
    .line 35
    add-int/lit8 v6, v6, -0x2

    .line 36
    .line 37
    const/4 v7, 0x1

    .line 38
    ushr-long v13, v10, v7

    .line 39
    .line 40
    long-to-int v8, v13

    .line 41
    aput v8, p1, v6

    .line 42
    .line 43
    long-to-int v8, v10

    .line 44
    if-gtz v9, :cond_0

    .line 45
    .line 46
    mul-long v9, v1, v1

    .line 47
    .line 48
    shl-int/lit8 v6, v8, 0x1f

    .line 49
    .line 50
    int-to-long v13, v6

    .line 51
    and-long/2addr v13, v3

    .line 52
    ushr-long v11, v9, v12

    .line 53
    .line 54
    or-long/2addr v11, v13

    .line 55
    long-to-int v6, v9

    .line 56
    aput v6, p1, v0

    .line 57
    .line 58
    const/16 v0, 0x20

    .line 59
    .line 60
    ushr-long v8, v9, v0

    .line 61
    .line 62
    long-to-int v6, v8

    .line 63
    and-int/2addr v6, v7

    .line 64
    aget v8, p0, v7

    .line 65
    .line 66
    int-to-long v8, v8

    .line 67
    and-long v15, v8, v3

    .line 68
    .line 69
    const/4 v8, 0x2

    .line 70
    aget v9, p1, v8

    .line 71
    .line 72
    int-to-long v9, v9

    .line 73
    and-long/2addr v9, v3

    .line 74
    mul-long v13, v15, v1

    .line 75
    .line 76
    add-long/2addr v13, v11

    .line 77
    long-to-int v11, v13

    .line 78
    shl-int/lit8 v12, v11, 0x1

    .line 79
    .line 80
    or-int/2addr v6, v12

    .line 81
    aput v6, p1, v7

    .line 82
    .line 83
    ushr-int/lit8 v6, v11, 0x1f

    .line 84
    .line 85
    ushr-long v11, v13, v0

    .line 86
    .line 87
    add-long/2addr v9, v11

    .line 88
    aget v11, p0, v8

    .line 89
    .line 90
    int-to-long v11, v11

    .line 91
    and-long v19, v11, v3

    .line 92
    .line 93
    const/4 v11, 0x3

    .line 94
    aget v12, p1, v11

    .line 95
    .line 96
    int-to-long v12, v12

    .line 97
    and-long/2addr v12, v3

    .line 98
    const/16 v25, 0x4

    .line 99
    .line 100
    aget v14, p1, v25

    .line 101
    .line 102
    move-wide/from16 v26, v1

    .line 103
    .line 104
    move v2, v0

    .line 105
    int-to-long v0, v14

    .line 106
    and-long/2addr v0, v3

    .line 107
    mul-long v17, v19, v26

    .line 108
    .line 109
    add-long v9, v17, v9

    .line 110
    .line 111
    long-to-int v14, v9

    .line 112
    shl-int/lit8 v17, v14, 0x1

    .line 113
    .line 114
    or-int v6, v17, v6

    .line 115
    .line 116
    aput v6, p1, v8

    .line 117
    .line 118
    ushr-int/lit8 v6, v14, 0x1f

    .line 119
    .line 120
    ushr-long v17, v9, v2

    .line 121
    .line 122
    move-wide/from16 v49, v19

    .line 123
    .line 124
    move-wide/from16 v19, v12

    .line 125
    .line 126
    move-wide/from16 v13, v49

    .line 127
    .line 128
    invoke-static/range {v13 .. v20}, Ldj7;->d(JJJJ)J

    .line 129
    .line 130
    .line 131
    move-result-wide v8

    .line 132
    move-wide/from16 v21, v13

    .line 133
    .line 134
    ushr-long v12, v8, v2

    .line 135
    .line 136
    add-long/2addr v0, v12

    .line 137
    and-long/2addr v8, v3

    .line 138
    aget v10, p0, v11

    .line 139
    .line 140
    int-to-long v12, v10

    .line 141
    and-long v30, v12, v3

    .line 142
    .line 143
    const/4 v10, 0x5

    .line 144
    aget v12, p1, v10

    .line 145
    .line 146
    int-to-long v12, v12

    .line 147
    and-long/2addr v12, v3

    .line 148
    ushr-long v17, v0, v2

    .line 149
    .line 150
    add-long v12, v12, v17

    .line 151
    .line 152
    and-long v19, v0, v3

    .line 153
    .line 154
    aget v0, p1, v5

    .line 155
    .line 156
    int-to-long v0, v0

    .line 157
    and-long/2addr v0, v3

    .line 158
    ushr-long v17, v12, v2

    .line 159
    .line 160
    add-long v0, v0, v17

    .line 161
    .line 162
    and-long v23, v12, v3

    .line 163
    .line 164
    mul-long v12, v30, v26

    .line 165
    .line 166
    add-long/2addr v12, v8

    .line 167
    long-to-int v8, v12

    .line 168
    shl-int/lit8 v9, v8, 0x1

    .line 169
    .line 170
    or-int/2addr v6, v9

    .line 171
    aput v6, p1, v11

    .line 172
    .line 173
    ushr-int/lit8 v6, v8, 0x1f

    .line 174
    .line 175
    ushr-long v17, v12, v2

    .line 176
    .line 177
    move-wide/from16 v13, v30

    .line 178
    .line 179
    invoke-static/range {v13 .. v20}, Ldj7;->d(JJJJ)J

    .line 180
    .line 181
    .line 182
    move-result-wide v8

    .line 183
    move-wide/from16 v19, v21

    .line 184
    .line 185
    ushr-long v21, v8, v2

    .line 186
    .line 187
    move-wide/from16 v17, v30

    .line 188
    .line 189
    invoke-static/range {v17 .. v24}, Ldj7;->d(JJJJ)J

    .line 190
    .line 191
    .line 192
    move-result-wide v11

    .line 193
    move-wide/from16 v21, v19

    .line 194
    .line 195
    and-long/2addr v8, v3

    .line 196
    ushr-long v13, v11, v2

    .line 197
    .line 198
    add-long/2addr v0, v13

    .line 199
    and-long v19, v11, v3

    .line 200
    .line 201
    aget v11, p0, v25

    .line 202
    .line 203
    int-to-long v11, v11

    .line 204
    and-long v34, v11, v3

    .line 205
    .line 206
    const/4 v11, 0x7

    .line 207
    aget v12, p1, v11

    .line 208
    .line 209
    int-to-long v12, v12

    .line 210
    and-long/2addr v12, v3

    .line 211
    ushr-long v17, v0, v2

    .line 212
    .line 213
    add-long v12, v12, v17

    .line 214
    .line 215
    and-long v23, v0, v3

    .line 216
    .line 217
    const/16 v0, 0x8

    .line 218
    .line 219
    aget v1, p1, v0

    .line 220
    .line 221
    move/from16 v40, v0

    .line 222
    .line 223
    int-to-long v0, v1

    .line 224
    and-long/2addr v0, v3

    .line 225
    ushr-long v17, v12, v2

    .line 226
    .line 227
    add-long v0, v0, v17

    .line 228
    .line 229
    and-long v28, v12, v3

    .line 230
    .line 231
    mul-long v12, v34, v26

    .line 232
    .line 233
    add-long/2addr v12, v8

    .line 234
    long-to-int v8, v12

    .line 235
    shl-int/lit8 v9, v8, 0x1

    .line 236
    .line 237
    or-int/2addr v6, v9

    .line 238
    aput v6, p1, v25

    .line 239
    .line 240
    ushr-int/lit8 v6, v8, 0x1f

    .line 241
    .line 242
    ushr-long v17, v12, v2

    .line 243
    .line 244
    move-wide/from16 v13, v34

    .line 245
    .line 246
    invoke-static/range {v13 .. v20}, Ldj7;->d(JJJJ)J

    .line 247
    .line 248
    .line 249
    move-result-wide v8

    .line 250
    move-wide/from16 v19, v21

    .line 251
    .line 252
    ushr-long v21, v8, v2

    .line 253
    .line 254
    move-wide/from16 v17, v34

    .line 255
    .line 256
    invoke-static/range {v17 .. v24}, Ldj7;->d(JJJJ)J

    .line 257
    .line 258
    .line 259
    move-result-wide v12

    .line 260
    move-wide/from16 v21, v19

    .line 261
    .line 262
    and-long/2addr v8, v3

    .line 263
    ushr-long v32, v12, v2

    .line 264
    .line 265
    move-wide/from16 v49, v34

    .line 266
    .line 267
    move-wide/from16 v34, v28

    .line 268
    .line 269
    move-wide/from16 v28, v49

    .line 270
    .line 271
    invoke-static/range {v28 .. v35}, Ldj7;->d(JJJJ)J

    .line 272
    .line 273
    .line 274
    move-result-wide v17

    .line 275
    move-wide/from16 v36, v28

    .line 276
    .line 277
    and-long v19, v12, v3

    .line 278
    .line 279
    ushr-long v12, v17, v2

    .line 280
    .line 281
    add-long/2addr v0, v12

    .line 282
    and-long v23, v17, v3

    .line 283
    .line 284
    aget v12, p0, v10

    .line 285
    .line 286
    int-to-long v12, v12

    .line 287
    and-long v32, v12, v3

    .line 288
    .line 289
    const/16 v12, 0x9

    .line 290
    .line 291
    aget v13, p1, v12

    .line 292
    .line 293
    int-to-long v13, v13

    .line 294
    and-long/2addr v13, v3

    .line 295
    ushr-long v17, v0, v2

    .line 296
    .line 297
    add-long v13, v13, v17

    .line 298
    .line 299
    and-long v34, v0, v3

    .line 300
    .line 301
    const/16 v0, 0xa

    .line 302
    .line 303
    aget v1, p1, v0

    .line 304
    .line 305
    move/from16 v25, v0

    .line 306
    .line 307
    int-to-long v0, v1

    .line 308
    and-long/2addr v0, v3

    .line 309
    ushr-long v17, v13, v2

    .line 310
    .line 311
    add-long v0, v0, v17

    .line 312
    .line 313
    and-long v38, v13, v3

    .line 314
    .line 315
    mul-long v13, v32, v26

    .line 316
    .line 317
    add-long/2addr v13, v8

    .line 318
    long-to-int v8, v13

    .line 319
    shl-int/lit8 v9, v8, 0x1

    .line 320
    .line 321
    or-int/2addr v6, v9

    .line 322
    aput v6, p1, v10

    .line 323
    .line 324
    ushr-int/lit8 v6, v8, 0x1f

    .line 325
    .line 326
    ushr-long v17, v13, v2

    .line 327
    .line 328
    move-wide/from16 v13, v32

    .line 329
    .line 330
    invoke-static/range {v13 .. v20}, Ldj7;->d(JJJJ)J

    .line 331
    .line 332
    .line 333
    move-result-wide v8

    .line 334
    move-wide/from16 v19, v21

    .line 335
    .line 336
    ushr-long v21, v8, v2

    .line 337
    .line 338
    move-wide/from16 v17, v32

    .line 339
    .line 340
    invoke-static/range {v17 .. v24}, Ldj7;->d(JJJJ)J

    .line 341
    .line 342
    .line 343
    move-result-wide v13

    .line 344
    move-wide/from16 v21, v19

    .line 345
    .line 346
    and-long/2addr v8, v3

    .line 347
    ushr-long v32, v13, v2

    .line 348
    .line 349
    move-wide/from16 v28, v17

    .line 350
    .line 351
    invoke-static/range {v28 .. v35}, Ldj7;->d(JJJJ)J

    .line 352
    .line 353
    .line 354
    move-result-wide v17

    .line 355
    move-wide/from16 v32, v28

    .line 356
    .line 357
    and-long v19, v13, v3

    .line 358
    .line 359
    move-wide/from16 v34, v36

    .line 360
    .line 361
    ushr-long v36, v17, v2

    .line 362
    .line 363
    invoke-static/range {v32 .. v39}, Ldj7;->d(JJJJ)J

    .line 364
    .line 365
    .line 366
    move-result-wide v13

    .line 367
    move-wide/from16 v43, v32

    .line 368
    .line 369
    move-wide/from16 v36, v34

    .line 370
    .line 371
    and-long v23, v17, v3

    .line 372
    .line 373
    ushr-long v17, v13, v2

    .line 374
    .line 375
    add-long v0, v0, v17

    .line 376
    .line 377
    and-long v34, v13, v3

    .line 378
    .line 379
    aget v10, p0, v5

    .line 380
    .line 381
    int-to-long v13, v10

    .line 382
    and-long v32, v13, v3

    .line 383
    .line 384
    const/16 v10, 0xb

    .line 385
    .line 386
    aget v13, p1, v10

    .line 387
    .line 388
    int-to-long v13, v13

    .line 389
    and-long/2addr v13, v3

    .line 390
    ushr-long v17, v0, v2

    .line 391
    .line 392
    add-long v13, v13, v17

    .line 393
    .line 394
    and-long v38, v0, v3

    .line 395
    .line 396
    const/16 v0, 0xc

    .line 397
    .line 398
    aget v1, p1, v0

    .line 399
    .line 400
    move/from16 p0, v0

    .line 401
    .line 402
    int-to-long v0, v1

    .line 403
    and-long/2addr v0, v3

    .line 404
    ushr-long v17, v13, v2

    .line 405
    .line 406
    add-long v0, v0, v17

    .line 407
    .line 408
    and-long v47, v13, v3

    .line 409
    .line 410
    mul-long v3, v32, v26

    .line 411
    .line 412
    add-long/2addr v3, v8

    .line 413
    long-to-int v8, v3

    .line 414
    shl-int/lit8 v9, v8, 0x1

    .line 415
    .line 416
    or-int/2addr v6, v9

    .line 417
    aput v6, p1, v5

    .line 418
    .line 419
    ushr-int/lit8 v5, v8, 0x1f

    .line 420
    .line 421
    ushr-long v17, v3, v2

    .line 422
    .line 423
    move-wide/from16 v13, v32

    .line 424
    .line 425
    invoke-static/range {v13 .. v20}, Ldj7;->d(JJJJ)J

    .line 426
    .line 427
    .line 428
    move-result-wide v3

    .line 429
    move-wide/from16 v19, v21

    .line 430
    .line 431
    ushr-long v21, v3, v2

    .line 432
    .line 433
    move-wide/from16 v17, v32

    .line 434
    .line 435
    invoke-static/range {v17 .. v24}, Ldj7;->d(JJJJ)J

    .line 436
    .line 437
    .line 438
    move-result-wide v8

    .line 439
    ushr-long v13, v8, v2

    .line 440
    .line 441
    move-wide/from16 v28, v32

    .line 442
    .line 443
    move-wide/from16 v32, v13

    .line 444
    .line 445
    invoke-static/range {v28 .. v35}, Ldj7;->d(JJJJ)J

    .line 446
    .line 447
    .line 448
    move-result-wide v13

    .line 449
    move-wide/from16 v32, v28

    .line 450
    .line 451
    move-wide/from16 v34, v36

    .line 452
    .line 453
    ushr-long v36, v13, v2

    .line 454
    .line 455
    move v15, v10

    .line 456
    move v6, v11

    .line 457
    invoke-static/range {v32 .. v39}, Ldj7;->d(JJJJ)J

    .line 458
    .line 459
    .line 460
    move-result-wide v10

    .line 461
    ushr-long v45, v10, v2

    .line 462
    .line 463
    move/from16 v17, v6

    .line 464
    .line 465
    move/from16 v16, v7

    .line 466
    .line 467
    move-wide/from16 v41, v32

    .line 468
    .line 469
    invoke-static/range {v41 .. v48}, Ldj7;->d(JJJJ)J

    .line 470
    .line 471
    .line 472
    move-result-wide v6

    .line 473
    ushr-long v18, v6, v2

    .line 474
    .line 475
    add-long v0, v0, v18

    .line 476
    .line 477
    long-to-int v3, v3

    .line 478
    shl-int/lit8 v4, v3, 0x1

    .line 479
    .line 480
    or-int/2addr v4, v5

    .line 481
    aput v4, p1, v17

    .line 482
    .line 483
    ushr-int/lit8 v3, v3, 0x1f

    .line 484
    .line 485
    long-to-int v4, v8

    .line 486
    shl-int/lit8 v5, v4, 0x1

    .line 487
    .line 488
    or-int/2addr v3, v5

    .line 489
    aput v3, p1, v40

    .line 490
    .line 491
    ushr-int/lit8 v3, v4, 0x1f

    .line 492
    .line 493
    long-to-int v4, v13

    .line 494
    shl-int/lit8 v5, v4, 0x1

    .line 495
    .line 496
    or-int/2addr v3, v5

    .line 497
    aput v3, p1, v12

    .line 498
    .line 499
    ushr-int/lit8 v3, v4, 0x1f

    .line 500
    .line 501
    long-to-int v4, v10

    .line 502
    shl-int/lit8 v5, v4, 0x1

    .line 503
    .line 504
    or-int/2addr v3, v5

    .line 505
    aput v3, p1, v25

    .line 506
    .line 507
    ushr-int/lit8 v3, v4, 0x1f

    .line 508
    .line 509
    long-to-int v4, v6

    .line 510
    shl-int/lit8 v5, v4, 0x1

    .line 511
    .line 512
    or-int/2addr v3, v5

    .line 513
    aput v3, p1, v15

    .line 514
    .line 515
    ushr-int/lit8 v3, v4, 0x1f

    .line 516
    .line 517
    long-to-int v4, v0

    .line 518
    shl-int/lit8 v5, v4, 0x1

    .line 519
    .line 520
    or-int/2addr v3, v5

    .line 521
    aput v3, p1, p0

    .line 522
    .line 523
    ushr-int/lit8 v3, v4, 0x1f

    .line 524
    .line 525
    const/16 v4, 0xd

    .line 526
    .line 527
    aget v5, p1, v4

    .line 528
    .line 529
    ushr-long/2addr v0, v2

    .line 530
    long-to-int v0, v0

    .line 531
    add-int/2addr v5, v0

    .line 532
    shl-int/lit8 v0, v5, 0x1

    .line 533
    .line 534
    or-int/2addr v0, v3

    .line 535
    aput v0, p1, v4

    .line 536
    .line 537
    return-void

    .line 538
    :cond_0
    move v7, v9

    .line 539
    goto/16 :goto_0
.end method

.method public static I(Landroid/app/Activity;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/content/Intent;

    .line 5
    .line 6
    const-class v1, Lorg/swiftapps/swiftbackup/settings/SettingsActivity;

    .line 7
    .line 8
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static final J(Lfl4;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_1

    .line 6
    .line 7
    instance-of p1, p0, Lel4;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    instance-of p1, p0, Lkl4;

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Lqj4;->o()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 22
    return-object p0
.end method

.method public static K([II[II[I)V
    .locals 9

    .line 1
    aget v0, p0, p1

    .line 2
    .line 3
    int-to-long v0, v0

    .line 4
    const-wide v2, 0xffffffffL

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    and-long/2addr v0, v2

    .line 10
    aget v4, p2, p3

    .line 11
    .line 12
    int-to-long v4, v4

    .line 13
    and-long/2addr v4, v2

    .line 14
    sub-long/2addr v0, v4

    .line 15
    long-to-int v4, v0

    .line 16
    const/4 v5, 0x0

    .line 17
    aput v4, p4, v5

    .line 18
    .line 19
    const/16 v4, 0x20

    .line 20
    .line 21
    shr-long/2addr v0, v4

    .line 22
    add-int/lit8 v5, p1, 0x1

    .line 23
    .line 24
    aget v5, p0, v5

    .line 25
    .line 26
    int-to-long v5, v5

    .line 27
    and-long/2addr v5, v2

    .line 28
    add-int/lit8 v7, p3, 0x1

    .line 29
    .line 30
    aget v7, p2, v7

    .line 31
    .line 32
    int-to-long v7, v7

    .line 33
    and-long/2addr v7, v2

    .line 34
    sub-long/2addr v5, v7

    .line 35
    add-long/2addr v5, v0

    .line 36
    long-to-int v0, v5

    .line 37
    const/4 v1, 0x1

    .line 38
    aput v0, p4, v1

    .line 39
    .line 40
    shr-long v0, v5, v4

    .line 41
    .line 42
    add-int/lit8 v5, p1, 0x2

    .line 43
    .line 44
    aget v5, p0, v5

    .line 45
    .line 46
    int-to-long v5, v5

    .line 47
    and-long/2addr v5, v2

    .line 48
    add-int/lit8 v7, p3, 0x2

    .line 49
    .line 50
    aget v7, p2, v7

    .line 51
    .line 52
    int-to-long v7, v7

    .line 53
    and-long/2addr v7, v2

    .line 54
    sub-long/2addr v5, v7

    .line 55
    add-long/2addr v5, v0

    .line 56
    long-to-int v0, v5

    .line 57
    const/4 v1, 0x2

    .line 58
    aput v0, p4, v1

    .line 59
    .line 60
    shr-long v0, v5, v4

    .line 61
    .line 62
    add-int/lit8 v5, p1, 0x3

    .line 63
    .line 64
    aget v5, p0, v5

    .line 65
    .line 66
    int-to-long v5, v5

    .line 67
    and-long/2addr v5, v2

    .line 68
    add-int/lit8 v7, p3, 0x3

    .line 69
    .line 70
    aget v7, p2, v7

    .line 71
    .line 72
    int-to-long v7, v7

    .line 73
    and-long/2addr v7, v2

    .line 74
    sub-long/2addr v5, v7

    .line 75
    add-long/2addr v5, v0

    .line 76
    long-to-int v0, v5

    .line 77
    const/4 v1, 0x3

    .line 78
    aput v0, p4, v1

    .line 79
    .line 80
    shr-long v0, v5, v4

    .line 81
    .line 82
    add-int/lit8 v5, p1, 0x4

    .line 83
    .line 84
    aget v5, p0, v5

    .line 85
    .line 86
    int-to-long v5, v5

    .line 87
    and-long/2addr v5, v2

    .line 88
    add-int/lit8 v7, p3, 0x4

    .line 89
    .line 90
    aget v7, p2, v7

    .line 91
    .line 92
    int-to-long v7, v7

    .line 93
    and-long/2addr v7, v2

    .line 94
    sub-long/2addr v5, v7

    .line 95
    add-long/2addr v5, v0

    .line 96
    long-to-int v0, v5

    .line 97
    const/4 v1, 0x4

    .line 98
    aput v0, p4, v1

    .line 99
    .line 100
    shr-long v0, v5, v4

    .line 101
    .line 102
    add-int/lit8 v5, p1, 0x5

    .line 103
    .line 104
    aget v5, p0, v5

    .line 105
    .line 106
    int-to-long v5, v5

    .line 107
    and-long/2addr v5, v2

    .line 108
    add-int/lit8 v7, p3, 0x5

    .line 109
    .line 110
    aget v7, p2, v7

    .line 111
    .line 112
    int-to-long v7, v7

    .line 113
    and-long/2addr v7, v2

    .line 114
    sub-long/2addr v5, v7

    .line 115
    add-long/2addr v5, v0

    .line 116
    long-to-int v0, v5

    .line 117
    const/4 v1, 0x5

    .line 118
    aput v0, p4, v1

    .line 119
    .line 120
    shr-long v0, v5, v4

    .line 121
    .line 122
    const/4 v4, 0x6

    .line 123
    add-int/2addr p1, v4

    .line 124
    aget p0, p0, p1

    .line 125
    .line 126
    int-to-long p0, p0

    .line 127
    and-long/2addr p0, v2

    .line 128
    add-int/2addr p3, v4

    .line 129
    aget p2, p2, p3

    .line 130
    .line 131
    int-to-long p2, p2

    .line 132
    and-long/2addr p2, v2

    .line 133
    sub-long/2addr p0, p2

    .line 134
    add-long/2addr p0, v0

    .line 135
    long-to-int p0, p0

    .line 136
    aput p0, p4, v4

    .line 137
    .line 138
    return-void
.end method

.method public static L(Landroid/view/ViewGroup;Z)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {p0, p1}, Lpl8;->b(Landroid/view/ViewGroup;Z)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    sget-boolean v0, Lbb9;->e:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    :try_start_0
    invoke-static {p0, p1}, Lpl8;->b(Landroid/view/ViewGroup;Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :catch_0
    const/4 p0, 0x0

    .line 20
    sput-boolean p0, Lbb9;->e:Z

    .line 21
    .line 22
    :cond_1
    return-void
.end method

.method public static M(Ljava/lang/Class;Ljava/lang/ReflectiveOperationException;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 2
    .line 3
    const-string v1, "Unable to instantiate GlideModule implementation for "

    .line 4
    .line 5
    invoke-static {p0, v1}, Lfz5;->k(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-direct {v0, p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10
    .line 11
    .line 12
    throw v0
.end method

.method public static final N(Lvr1;Ljava/lang/Number;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Unexpected special floating-point value "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string p1, ". By default, non-finite floating point values are prohibited because they do not conform JSON specification"

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const/4 v0, 0x0

    .line 21
    const/4 v1, 0x2

    .line 22
    invoke-static {p0, p1, v0, v1}, Lvr1;->k(Lvr1;Ljava/lang/String;II)V

    .line 23
    .line 24
    .line 25
    const/4 p0, 0x0

    .line 26
    throw p0
.end method

.method public static O([[S)[[S
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    aget-object v1, p0, v0

    .line 3
    .line 4
    array-length v1, v1

    .line 5
    array-length v2, p0

    .line 6
    const/4 v3, 0x2

    .line 7
    new-array v3, v3, [I

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    aput v2, v3, v4

    .line 11
    .line 12
    aput v1, v3, v0

    .line 13
    .line 14
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 15
    .line 16
    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, [[S

    .line 21
    .line 22
    move v2, v0

    .line 23
    :goto_0
    array-length v3, p0

    .line 24
    if-ge v2, v3, :cond_1

    .line 25
    .line 26
    move v3, v0

    .line 27
    :goto_1
    aget-object v4, p0, v0

    .line 28
    .line 29
    array-length v4, v4

    .line 30
    if-ge v3, v4, :cond_0

    .line 31
    .line 32
    aget-object v4, v1, v3

    .line 33
    .line 34
    aget-object v5, p0, v2

    .line 35
    .line 36
    aget-short v5, v5, v3

    .line 37
    .line 38
    aput-short v5, v4, v2

    .line 39
    .line 40
    add-int/lit8 v3, v3, 0x1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    return-object v1
.end method

.method public static P(I[Ljava/lang/Object;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    if-ge v0, p0, :cond_1

    .line 3
    .line 4
    aget-object v1, p1, v0

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    add-int/lit8 v0, v0, 0x1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    .line 12
    .line 13
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    add-int/lit8 p1, p1, 0x9

    .line 22
    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 26
    .line 27
    .line 28
    const-string p1, "at index "

    .line 29
    .line 30
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p0

    .line 44
    :cond_1
    return-void
.end method

.method public static Q(I)I
    .locals 1

    .line 1
    and-int/lit8 v0, p0, 0x1

    .line 2
    .line 3
    ushr-int/lit8 p0, p0, 0x1

    .line 4
    .line 5
    neg-int v0, v0

    .line 6
    xor-int/2addr p0, v0

    .line 7
    return p0
.end method

.method public static a(F)F
    .locals 4

    .line 1
    const v0, 0x3d25aee6    # 0.04045f

    .line 2
    .line 3
    .line 4
    cmpg-float v0, p0, v0

    .line 5
    .line 6
    if-gtz v0, :cond_0

    .line 7
    .line 8
    const v0, 0x414eb852    # 12.92f

    .line 9
    .line 10
    .line 11
    div-float/2addr p0, v0

    .line 12
    return p0

    .line 13
    :cond_0
    const v0, 0x3d6147ae    # 0.055f

    .line 14
    .line 15
    .line 16
    add-float/2addr p0, v0

    .line 17
    const v0, 0x3f870a3d    # 1.055f

    .line 18
    .line 19
    .line 20
    div-float/2addr p0, v0

    .line 21
    float-to-double v0, p0

    .line 22
    const-wide v2, 0x4003333340000000L    # 2.4000000953674316

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    .line 28
    .line 29
    .line 30
    move-result-wide v0

    .line 31
    double-to-float p0, v0

    .line 32
    return p0
.end method

.method public static final b(Ljava/lang/String;Ljava/lang/Number;)Luj4;
    .locals 3

    .line 1
    new-instance v0, Luj4;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "Unexpected special floating-point value "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string p1, ". By default, non-finite floating point values are prohibited because they do not conform JSON specification. It is possible to deserialize them using \'JsonBuilder.allowSpecialFloatingPointValues = true\'\nCurrent output: "

    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const/4 p1, -0x1

    .line 19
    invoke-static {p1, p0}, Lbb9;->A(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-object v0
.end method

.method public static final c(Lp77;)Luj4;
    .locals 3

    .line 1
    new-instance v0, Luj4;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "Value of type \'"

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {p0}, Lp77;->a()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, "\' can\'t be used in JSON as a key in the map. It should have either primitive or enum kind, but its kind is \'"

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-interface {p0}, Lp77;->e()Lzh8;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string p0, "\'.\nUse \'allowStructuredMapKeys = true\' in \'Json {}\' builder to convert such maps to [key1, value1, key2, value2,...] arrays."

    .line 30
    .line 31
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-object v0
.end method

.method public static final d(ILjava/lang/CharSequence;Ljava/lang/String;)Lnj4;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    const-string p2, "\nJSON input: "

    .line 13
    .line 14
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-static {p0, p1}, Lbb9;->A(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    new-instance p2, Lnj4;

    .line 29
    .line 30
    if-ltz p0, :cond_0

    .line 31
    .line 32
    const-string v0, "Unexpected JSON token at offset "

    .line 33
    .line 34
    const-string v1, ": "

    .line 35
    .line 36
    invoke-static {p0, v0, v1, p1}, Lu48;->k(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    :cond_0
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-object p2
.end method

.method public static e(F)F
    .locals 4

    .line 1
    const v0, 0x3b4d2e1c    # 0.0031308f

    .line 2
    .line 3
    .line 4
    cmpg-float v0, p0, v0

    .line 5
    .line 6
    if-gtz v0, :cond_0

    .line 7
    .line 8
    const v0, 0x414eb852    # 12.92f

    .line 9
    .line 10
    .line 11
    mul-float/2addr p0, v0

    .line 12
    return p0

    .line 13
    :cond_0
    float-to-double v0, p0

    .line 14
    const-wide v2, 0x3fdaaaaaa0000000L    # 0.4166666567325592

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    const-wide v2, 0x3ff0e147a0000000L    # 1.0549999475479126

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    mul-double/2addr v0, v2

    .line 29
    const-wide v2, 0x3fac28f5c0000000L    # 0.054999999701976776

    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    sub-double/2addr v0, v2

    .line 35
    double-to-float p0, v0

    .line 36
    return p0
.end method

.method public static f(IJ)I
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Math;->toIntExact(J)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p0, p1}, Ljava/lang/Math;->addExact(II)I

    .line 6
    .line 7
    .line 8
    move-result p0
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return p0

    .line 10
    :catch_0
    move-exception p0

    .line 11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 12
    .line 13
    const-string p2, "Argument too large or result overflows"

    .line 14
    .line 15
    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    .line 17
    .line 18
    throw p1
.end method

.method public static g([[S[[S)[[S
    .locals 8

    .line 1
    array-length v0, p0

    .line 2
    array-length v1, p1

    .line 3
    if-ne v0, v1, :cond_2

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    aget-object v1, p0, v0

    .line 7
    .line 8
    array-length v2, v1

    .line 9
    aget-object v3, p1, v0

    .line 10
    .line 11
    array-length v3, v3

    .line 12
    if-ne v2, v3, :cond_2

    .line 13
    .line 14
    array-length v2, p0

    .line 15
    array-length v1, v1

    .line 16
    const/4 v3, 0x2

    .line 17
    new-array v3, v3, [I

    .line 18
    .line 19
    const/4 v4, 0x1

    .line 20
    aput v1, v3, v4

    .line 21
    .line 22
    aput v2, v3, v0

    .line 23
    .line 24
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 25
    .line 26
    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, [[S

    .line 31
    .line 32
    move v2, v0

    .line 33
    :goto_0
    array-length v3, p0

    .line 34
    if-ge v2, v3, :cond_1

    .line 35
    .line 36
    move v3, v0

    .line 37
    :goto_1
    aget-object v4, p0, v0

    .line 38
    .line 39
    array-length v4, v4

    .line 40
    if-ge v3, v4, :cond_0

    .line 41
    .line 42
    aget-object v4, v1, v2

    .line 43
    .line 44
    aget-object v5, p0, v2

    .line 45
    .line 46
    aget-short v5, v5, v3

    .line 47
    .line 48
    aget-object v6, p1, v2

    .line 49
    .line 50
    aget-short v6, v6, v3

    .line 51
    .line 52
    sget-object v7, Liu3;->a:[[B

    .line 53
    .line 54
    xor-int/2addr v5, v6

    .line 55
    int-to-short v5, v5

    .line 56
    aput-short v5, v4, v3

    .line 57
    .line 58
    add-int/lit8 v3, v3, 0x1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    return-object v1

    .line 65
    :cond_2
    const-string p0, "Addition is not possible!"

    .line 66
    .line 67
    invoke-static {p0}, Lg84;->h(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    const/4 p0, 0x0

    .line 71
    return-object p0
.end method

.method public static h([[S)[[S
    .locals 2

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    aget-object v1, p0, v1

    .line 4
    .line 5
    array-length v1, v1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    invoke-static {p0}, Lbb9;->O([[S)[[S

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {p0, v0}, Lbb9;->g([[S[[S)[[S

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0

    .line 17
    :cond_0
    const-string p0, "Addition is not possible!"

    .line 18
    .line 19
    invoke-static {p0}, Lg84;->h(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x0

    .line 23
    return-object p0
.end method

.method public static i(III[I[I)I
    .locals 9

    .line 1
    int-to-long v0, p2

    .line 2
    const-wide v2, 0xffffffffL

    .line 3
    .line 4
    .line 5
    .line 6
    .line 7
    and-long/2addr v0, v2

    .line 8
    aget p2, p3, p0

    .line 9
    .line 10
    int-to-long v4, p2

    .line 11
    and-long/2addr v4, v2

    .line 12
    aget p2, p4, p1

    .line 13
    .line 14
    int-to-long v6, p2

    .line 15
    and-long/2addr v6, v2

    .line 16
    add-long/2addr v4, v6

    .line 17
    add-long/2addr v4, v0

    .line 18
    long-to-int p2, v4

    .line 19
    aput p2, p4, p1

    .line 20
    .line 21
    const/16 p2, 0x20

    .line 22
    .line 23
    ushr-long v0, v4, p2

    .line 24
    .line 25
    add-int/lit8 v4, p0, 0x1

    .line 26
    .line 27
    aget v4, p3, v4

    .line 28
    .line 29
    int-to-long v4, v4

    .line 30
    and-long/2addr v4, v2

    .line 31
    add-int/lit8 v6, p1, 0x1

    .line 32
    .line 33
    aget v7, p4, v6

    .line 34
    .line 35
    int-to-long v7, v7

    .line 36
    and-long/2addr v7, v2

    .line 37
    add-long/2addr v4, v7

    .line 38
    add-long/2addr v4, v0

    .line 39
    long-to-int v0, v4

    .line 40
    aput v0, p4, v6

    .line 41
    .line 42
    ushr-long v0, v4, p2

    .line 43
    .line 44
    add-int/lit8 v4, p0, 0x2

    .line 45
    .line 46
    aget v4, p3, v4

    .line 47
    .line 48
    int-to-long v4, v4

    .line 49
    and-long/2addr v4, v2

    .line 50
    add-int/lit8 v6, p1, 0x2

    .line 51
    .line 52
    aget v7, p4, v6

    .line 53
    .line 54
    int-to-long v7, v7

    .line 55
    and-long/2addr v7, v2

    .line 56
    add-long/2addr v4, v7

    .line 57
    add-long/2addr v4, v0

    .line 58
    long-to-int v0, v4

    .line 59
    aput v0, p4, v6

    .line 60
    .line 61
    ushr-long v0, v4, p2

    .line 62
    .line 63
    add-int/lit8 v4, p0, 0x3

    .line 64
    .line 65
    aget v4, p3, v4

    .line 66
    .line 67
    int-to-long v4, v4

    .line 68
    and-long/2addr v4, v2

    .line 69
    add-int/lit8 v6, p1, 0x3

    .line 70
    .line 71
    aget v7, p4, v6

    .line 72
    .line 73
    int-to-long v7, v7

    .line 74
    and-long/2addr v7, v2

    .line 75
    add-long/2addr v4, v7

    .line 76
    add-long/2addr v4, v0

    .line 77
    long-to-int v0, v4

    .line 78
    aput v0, p4, v6

    .line 79
    .line 80
    ushr-long v0, v4, p2

    .line 81
    .line 82
    add-int/lit8 v4, p0, 0x4

    .line 83
    .line 84
    aget v4, p3, v4

    .line 85
    .line 86
    int-to-long v4, v4

    .line 87
    and-long/2addr v4, v2

    .line 88
    add-int/lit8 v6, p1, 0x4

    .line 89
    .line 90
    aget v7, p4, v6

    .line 91
    .line 92
    int-to-long v7, v7

    .line 93
    and-long/2addr v7, v2

    .line 94
    add-long/2addr v4, v7

    .line 95
    add-long/2addr v4, v0

    .line 96
    long-to-int v0, v4

    .line 97
    aput v0, p4, v6

    .line 98
    .line 99
    ushr-long v0, v4, p2

    .line 100
    .line 101
    add-int/lit8 v4, p0, 0x5

    .line 102
    .line 103
    aget v4, p3, v4

    .line 104
    .line 105
    int-to-long v4, v4

    .line 106
    and-long/2addr v4, v2

    .line 107
    add-int/lit8 v6, p1, 0x5

    .line 108
    .line 109
    aget v7, p4, v6

    .line 110
    .line 111
    int-to-long v7, v7

    .line 112
    and-long/2addr v7, v2

    .line 113
    add-long/2addr v4, v7

    .line 114
    add-long/2addr v4, v0

    .line 115
    long-to-int v0, v4

    .line 116
    aput v0, p4, v6

    .line 117
    .line 118
    ushr-long v0, v4, p2

    .line 119
    .line 120
    add-int/lit8 p0, p0, 0x6

    .line 121
    .line 122
    aget p0, p3, p0

    .line 123
    .line 124
    int-to-long v4, p0

    .line 125
    and-long/2addr v4, v2

    .line 126
    add-int/lit8 p1, p1, 0x6

    .line 127
    .line 128
    aget p0, p4, p1

    .line 129
    .line 130
    int-to-long v6, p0

    .line 131
    and-long/2addr v2, v6

    .line 132
    add-long/2addr v4, v2

    .line 133
    add-long/2addr v4, v0

    .line 134
    long-to-int p0, v4

    .line 135
    aput p0, p4, p1

    .line 136
    .line 137
    ushr-long p0, v4, p2

    .line 138
    .line 139
    long-to-int p0, p0

    .line 140
    return p0
.end method

.method public static j([I[I)I
    .locals 11

    .line 1
    const/4 v0, 0x7

    .line 2
    aget v1, p0, v0

    .line 3
    .line 4
    int-to-long v1, v1

    .line 5
    const-wide v3, 0xffffffffL

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    and-long/2addr v1, v3

    .line 11
    const/16 v5, 0xe

    .line 12
    .line 13
    aget v6, p1, v5

    .line 14
    .line 15
    int-to-long v6, v6

    .line 16
    and-long/2addr v6, v3

    .line 17
    add-long/2addr v1, v6

    .line 18
    long-to-int v6, v1

    .line 19
    aput v6, p0, v0

    .line 20
    .line 21
    aput v6, p1, v5

    .line 22
    .line 23
    const/16 v0, 0x20

    .line 24
    .line 25
    ushr-long/2addr v1, v0

    .line 26
    const/16 v5, 0x8

    .line 27
    .line 28
    aget v6, p0, v5

    .line 29
    .line 30
    int-to-long v6, v6

    .line 31
    and-long/2addr v6, v3

    .line 32
    const/16 v8, 0xf

    .line 33
    .line 34
    aget v9, p1, v8

    .line 35
    .line 36
    int-to-long v9, v9

    .line 37
    and-long/2addr v9, v3

    .line 38
    add-long/2addr v6, v9

    .line 39
    add-long/2addr v6, v1

    .line 40
    long-to-int v1, v6

    .line 41
    aput v1, p0, v5

    .line 42
    .line 43
    aput v1, p1, v8

    .line 44
    .line 45
    ushr-long v1, v6, v0

    .line 46
    .line 47
    const/16 v5, 0x9

    .line 48
    .line 49
    aget v6, p0, v5

    .line 50
    .line 51
    int-to-long v6, v6

    .line 52
    and-long/2addr v6, v3

    .line 53
    const/16 v8, 0x10

    .line 54
    .line 55
    aget v9, p1, v8

    .line 56
    .line 57
    int-to-long v9, v9

    .line 58
    and-long/2addr v9, v3

    .line 59
    add-long/2addr v6, v9

    .line 60
    add-long/2addr v6, v1

    .line 61
    long-to-int v1, v6

    .line 62
    aput v1, p0, v5

    .line 63
    .line 64
    aput v1, p1, v8

    .line 65
    .line 66
    ushr-long v1, v6, v0

    .line 67
    .line 68
    const/16 v5, 0xa

    .line 69
    .line 70
    aget v6, p0, v5

    .line 71
    .line 72
    int-to-long v6, v6

    .line 73
    and-long/2addr v6, v3

    .line 74
    const/16 v8, 0x11

    .line 75
    .line 76
    aget v9, p1, v8

    .line 77
    .line 78
    int-to-long v9, v9

    .line 79
    and-long/2addr v9, v3

    .line 80
    add-long/2addr v6, v9

    .line 81
    add-long/2addr v6, v1

    .line 82
    long-to-int v1, v6

    .line 83
    aput v1, p0, v5

    .line 84
    .line 85
    aput v1, p1, v8

    .line 86
    .line 87
    ushr-long v1, v6, v0

    .line 88
    .line 89
    const/16 v5, 0xb

    .line 90
    .line 91
    aget v6, p0, v5

    .line 92
    .line 93
    int-to-long v6, v6

    .line 94
    and-long/2addr v6, v3

    .line 95
    const/16 v8, 0x12

    .line 96
    .line 97
    aget v9, p1, v8

    .line 98
    .line 99
    int-to-long v9, v9

    .line 100
    and-long/2addr v9, v3

    .line 101
    add-long/2addr v6, v9

    .line 102
    add-long/2addr v6, v1

    .line 103
    long-to-int v1, v6

    .line 104
    aput v1, p0, v5

    .line 105
    .line 106
    aput v1, p1, v8

    .line 107
    .line 108
    ushr-long v1, v6, v0

    .line 109
    .line 110
    const/16 v5, 0xc

    .line 111
    .line 112
    aget v6, p0, v5

    .line 113
    .line 114
    int-to-long v6, v6

    .line 115
    and-long/2addr v6, v3

    .line 116
    const/16 v8, 0x13

    .line 117
    .line 118
    aget v9, p1, v8

    .line 119
    .line 120
    int-to-long v9, v9

    .line 121
    and-long/2addr v9, v3

    .line 122
    add-long/2addr v6, v9

    .line 123
    add-long/2addr v6, v1

    .line 124
    long-to-int v1, v6

    .line 125
    aput v1, p0, v5

    .line 126
    .line 127
    aput v1, p1, v8

    .line 128
    .line 129
    ushr-long v1, v6, v0

    .line 130
    .line 131
    const/16 v5, 0xd

    .line 132
    .line 133
    aget v6, p0, v5

    .line 134
    .line 135
    int-to-long v6, v6

    .line 136
    and-long/2addr v6, v3

    .line 137
    const/16 v8, 0x14

    .line 138
    .line 139
    aget v9, p1, v8

    .line 140
    .line 141
    int-to-long v9, v9

    .line 142
    and-long/2addr v3, v9

    .line 143
    add-long/2addr v6, v3

    .line 144
    add-long/2addr v6, v1

    .line 145
    long-to-int v1, v6

    .line 146
    aput v1, p0, v5

    .line 147
    .line 148
    aput v1, p1, v8

    .line 149
    .line 150
    ushr-long p0, v6, v0

    .line 151
    .line 152
    long-to-int p0, p0

    .line 153
    return p0
.end method

.method public static final k(Lqj4;)Lfl4;
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    instance-of v0, p0, Lfl4;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lqj4;->i()Lfl4;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return-object p0
.end method

.method public static final l(Lp77;)Ljava/util/Set;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    instance-of v0, p0, Ljz0;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    check-cast p0, Ljz0;

    .line 9
    .line 10
    invoke-interface {p0}, Ljz0;->b()Ljava/util/Set;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0

    .line 15
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    .line 16
    .line 17
    invoke-interface {p0}, Lp77;->f()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 22
    .line 23
    .line 24
    invoke-interface {p0}, Lp77;->f()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const/4 v2, 0x0

    .line 29
    :goto_0
    if-ge v2, v1, :cond_1

    .line 30
    .line 31
    invoke-interface {p0, v2}, Lp77;->g(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    add-int/lit8 v2, v2, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    return-object v0
.end method

.method public static m(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-static {p1}, Lf6;->n(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static n(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static final o(Lnw6;Ljava/lang/String;)I
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-interface {p0}, Lnw6;->getColumnCount()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    move v2, v1

    .line 10
    :goto_0
    const/4 v3, -0x1

    .line 11
    if-ge v2, v0, :cond_1

    .line 12
    .line 13
    invoke-interface {p0, v2}, Lnw6;->getColumnName(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    if-eqz v4, :cond_0

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    move v2, v3

    .line 28
    :goto_1
    if-ltz v2, :cond_2

    .line 29
    .line 30
    return v2

    .line 31
    :cond_2
    const-string v0, "`"

    .line 32
    .line 33
    const/16 v2, 0x60

    .line 34
    .line 35
    invoke-static {v2, v0, p1}, Lu48;->j(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-interface {p0}, Lnw6;->getColumnCount()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    :goto_2
    if-ge v1, v0, :cond_4

    .line 44
    .line 45
    invoke-interface {p0, v1}, Lnw6;->getColumnName(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_3

    .line 54
    .line 55
    goto :goto_3

    .line 56
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_4
    move v1, v3

    .line 60
    :goto_3
    if-ltz v1, :cond_5

    .line 61
    .line 62
    return v1

    .line 63
    :cond_5
    return v3
.end method

.method public static final p(Ljava/util/List;)[Lp77;
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :cond_1
    if-eqz p0, :cond_3

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    new-array v0, v0, [Lp77;

    .line 14
    .line 15
    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, [Lp77;

    .line 20
    .line 21
    if-nez p0, :cond_2

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_2
    return-object p0

    .line 25
    :cond_3
    :goto_0
    sget-object p0, Lbb9;->b:[Lp77;

    .line 26
    .line 27
    return-object p0
.end method

.method public static q([BI)Lep7;
    .locals 2

    .line 1
    aget-byte v0, p0, p1

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    add-int/lit8 p1, p1, 0x1

    .line 6
    .line 7
    aget-byte p0, p0, p1

    .line 8
    .line 9
    and-int/lit16 p1, p0, 0xff

    .line 10
    .line 11
    const/16 v0, 0x10

    .line 12
    .line 13
    if-ge p1, v0, :cond_0

    .line 14
    .line 15
    new-instance p1, Lep7;

    .line 16
    .line 17
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    const-wide/16 v0, -0x1

    .line 21
    .line 22
    iput-wide v0, p1, Lep7;->b:J

    .line 23
    .line 24
    iput p0, p1, Lep7;->a:I

    .line 25
    .line 26
    return-object p1

    .line 27
    :cond_0
    new-instance p0, Lhf8;

    .line 28
    .line 29
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 30
    .line 31
    .line 32
    throw p0
.end method

.method public static r(Ljava/io/InputStream;)J
    .locals 10

    .line 1
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    const/4 v3, -0x1

    .line 8
    if-eq v0, v3, :cond_4

    .line 9
    .line 10
    and-int/lit8 v4, v0, 0x7f

    .line 11
    .line 12
    int-to-long v4, v4

    .line 13
    const/4 v6, 0x0

    .line 14
    :goto_0
    and-int/lit16 v0, v0, 0x80

    .line 15
    .line 16
    if-eqz v0, :cond_3

    .line 17
    .line 18
    add-int/lit8 v6, v6, 0x1

    .line 19
    .line 20
    const/16 v0, 0x9

    .line 21
    .line 22
    if-ge v6, v0, :cond_2

    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eq v0, v3, :cond_1

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    and-int/lit8 v7, v0, 0x7f

    .line 33
    .line 34
    int-to-long v7, v7

    .line 35
    mul-int/lit8 v9, v6, 0x7

    .line 36
    .line 37
    shl-long/2addr v7, v9

    .line 38
    or-long/2addr v4, v7

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    new-instance p0, Lcy1;

    .line 41
    .line 42
    invoke-direct {p0}, Lcy1;-><init>()V

    .line 43
    .line 44
    .line 45
    throw p0

    .line 46
    :cond_1
    invoke-static {}, Ld6;->d()V

    .line 47
    .line 48
    .line 49
    return-wide v1

    .line 50
    :cond_2
    new-instance p0, Lcy1;

    .line 51
    .line 52
    invoke-direct {p0}, Lcy1;-><init>()V

    .line 53
    .line 54
    .line 55
    throw p0

    .line 56
    :cond_3
    return-wide v4

    .line 57
    :cond_4
    invoke-static {}, Ld6;->d()V

    .line 58
    .line 59
    .line 60
    return-wide v1
.end method

.method public static s([I[I[I)Z
    .locals 7

    .line 1
    const/4 v0, 0x6

    .line 2
    :goto_0
    const/4 v1, 0x7

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x1

    .line 5
    if-ltz v0, :cond_2

    .line 6
    .line 7
    add-int v4, v1, v0

    .line 8
    .line 9
    aget v4, p0, v4

    .line 10
    .line 11
    const/high16 v5, -0x80000000

    .line 12
    .line 13
    xor-int/2addr v4, v5

    .line 14
    aget v6, p1, v0

    .line 15
    .line 16
    xor-int/2addr v5, v6

    .line 17
    if-ge v4, v5, :cond_0

    .line 18
    .line 19
    move v3, v2

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    if-le v4, v5, :cond_1

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    :goto_1
    if-eqz v3, :cond_3

    .line 28
    .line 29
    invoke-static {p0, v1, p1, v2, p2}, Lbb9;->K([II[II[I)V

    .line 30
    .line 31
    .line 32
    return v3

    .line 33
    :cond_3
    invoke-static {p1, v2, p0, v1, p2}, Lbb9;->K([II[II[I)V

    .line 34
    .line 35
    .line 36
    return v3
.end method

.method public static t(FII)I
    .locals 7

    .line 1
    if-ne p1, p2, :cond_0

    .line 2
    .line 3
    return p1

    .line 4
    :cond_0
    shr-int/lit8 v0, p1, 0x18

    .line 5
    .line 6
    and-int/lit16 v0, v0, 0xff

    .line 7
    .line 8
    int-to-float v0, v0

    .line 9
    const/high16 v1, 0x437f0000    # 255.0f

    .line 10
    .line 11
    div-float/2addr v0, v1

    .line 12
    shr-int/lit8 v2, p1, 0x10

    .line 13
    .line 14
    and-int/lit16 v2, v2, 0xff

    .line 15
    .line 16
    int-to-float v2, v2

    .line 17
    div-float/2addr v2, v1

    .line 18
    shr-int/lit8 v3, p1, 0x8

    .line 19
    .line 20
    and-int/lit16 v3, v3, 0xff

    .line 21
    .line 22
    int-to-float v3, v3

    .line 23
    div-float/2addr v3, v1

    .line 24
    and-int/lit16 p1, p1, 0xff

    .line 25
    .line 26
    int-to-float p1, p1

    .line 27
    div-float/2addr p1, v1

    .line 28
    shr-int/lit8 v4, p2, 0x18

    .line 29
    .line 30
    and-int/lit16 v4, v4, 0xff

    .line 31
    .line 32
    int-to-float v4, v4

    .line 33
    div-float/2addr v4, v1

    .line 34
    shr-int/lit8 v5, p2, 0x10

    .line 35
    .line 36
    and-int/lit16 v5, v5, 0xff

    .line 37
    .line 38
    int-to-float v5, v5

    .line 39
    div-float/2addr v5, v1

    .line 40
    shr-int/lit8 v6, p2, 0x8

    .line 41
    .line 42
    and-int/lit16 v6, v6, 0xff

    .line 43
    .line 44
    int-to-float v6, v6

    .line 45
    div-float/2addr v6, v1

    .line 46
    and-int/lit16 p2, p2, 0xff

    .line 47
    .line 48
    int-to-float p2, p2

    .line 49
    div-float/2addr p2, v1

    .line 50
    invoke-static {v2}, Lbb9;->a(F)F

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    invoke-static {v3}, Lbb9;->a(F)F

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    invoke-static {p1}, Lbb9;->a(F)F

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    invoke-static {v5}, Lbb9;->a(F)F

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    invoke-static {v6}, Lbb9;->a(F)F

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    invoke-static {p2}, Lbb9;->a(F)F

    .line 71
    .line 72
    .line 73
    move-result p2

    .line 74
    invoke-static {v4, v0, p0, v0}, Lxs1;->e(FFFF)F

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    invoke-static {v5, v2, p0, v2}, Lxs1;->e(FFFF)F

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    invoke-static {v6, v3, p0, v3}, Lxs1;->e(FFFF)F

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    invoke-static {p2, p1, p0, p1}, Lxs1;->e(FFFF)F

    .line 87
    .line 88
    .line 89
    move-result p0

    .line 90
    mul-float/2addr v0, v1

    .line 91
    invoke-static {v2}, Lbb9;->e(F)F

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    mul-float/2addr p1, v1

    .line 96
    invoke-static {v3}, Lbb9;->e(F)F

    .line 97
    .line 98
    .line 99
    move-result p2

    .line 100
    mul-float/2addr p2, v1

    .line 101
    invoke-static {p0}, Lbb9;->e(F)F

    .line 102
    .line 103
    .line 104
    move-result p0

    .line 105
    mul-float/2addr p0, v1

    .line 106
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    shl-int/lit8 v0, v0, 0x18

    .line 111
    .line 112
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    shl-int/lit8 p1, p1, 0x10

    .line 117
    .line 118
    or-int/2addr p1, v0

    .line 119
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 120
    .line 121
    .line 122
    move-result p2

    .line 123
    shl-int/lit8 p2, p2, 0x8

    .line 124
    .line 125
    or-int/2addr p1, p2

    .line 126
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 127
    .line 128
    .line 129
    move-result p0

    .line 130
    or-int/2addr p0, p1

    .line 131
    return p0
.end method

.method public static final u(Lnw6;Ljava/lang/String;)I
    .locals 8

    .line 1
    invoke-static {p0, p1}, Lbb9;->o(Lnw6;Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    invoke-interface {p0}, Lnw6;->getColumnCount()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    new-instance v1, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 15
    .line 16
    .line 17
    const/4 v7, 0x0

    .line 18
    move v2, v7

    .line 19
    :goto_0
    if-ge v2, v0, :cond_1

    .line 20
    .line 21
    invoke-interface {p0, v2}, Lnw6;->getColumnName(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    add-int/lit8 v2, v2, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v5, 0x0

    .line 32
    const/16 v6, 0x3f

    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    const/4 v3, 0x0

    .line 36
    const/4 v4, 0x0

    .line 37
    invoke-static/range {v1 .. v6}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    const-string v0, "\' does not exist. Available columns: ["

    .line 42
    .line 43
    const/16 v1, 0x5d

    .line 44
    .line 45
    const-string v2, "Column \'"

    .line 46
    .line 47
    invoke-static {v2, p1, v0, p0, v1}, Ld6;->j(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 48
    .line 49
    .line 50
    return v7
.end method

.method public static v(J)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 3
    .line 4
    const/4 v1, 0x7

    .line 5
    shr-long/2addr p0, v1

    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    cmp-long v1, p0, v1

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    return v0
.end method

.method public static final w(Lfl4;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lbb9;->z(Lfl4;Ljava/lang/String;)Ljava/lang/Long;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 8
    .line 9
    .line 10
    move-result-wide p0

    .line 11
    long-to-int p0, p0

    .line 12
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    return-object p0
.end method

.method public static final x(Lvr1;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "Trailing comma before the end of JSON "

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget v0, p0, Lvr1;->b:I

    .line 8
    .line 9
    add-int/lit8 v0, v0, -0x1

    .line 10
    .line 11
    const-string v1, "Trailing commas are non-complaint JSON and not allowed by default. Use \'allowTrailingCommas = true\' in \'Json {}\' builder to support them."

    .line 12
    .line 13
    invoke-virtual {p0, v0, p1, v1}, Lvr1;->j(ILjava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    throw p0
.end method

.method public static y(I[BII)Z
    .locals 4

    .line 1
    new-instance v0, Ljava/util/zip/CRC32;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1, p0, p2}, Ljava/util/zip/CRC32;->update([BII)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    const/4 p0, 0x0

    .line 14
    move p2, p0

    .line 15
    :goto_0
    const/4 v2, 0x4

    .line 16
    if-ge p2, v2, :cond_1

    .line 17
    .line 18
    mul-int/lit8 v2, p2, 0x8

    .line 19
    .line 20
    ushr-long v2, v0, v2

    .line 21
    .line 22
    long-to-int v2, v2

    .line 23
    int-to-byte v2, v2

    .line 24
    add-int v3, p3, p2

    .line 25
    .line 26
    aget-byte v3, p1, v3

    .line 27
    .line 28
    if-eq v2, v3, :cond_0

    .line 29
    .line 30
    return p0

    .line 31
    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 p0, 0x1

    .line 35
    return p0
.end method

.method public static final z(Lfl4;Ljava/lang/String;)Ljava/lang/Long;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 p1, 0x0

    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    goto :goto_2

    .line 9
    :cond_0
    instance-of v0, p0, Lel4;

    .line 10
    .line 11
    if-nez v0, :cond_3

    .line 12
    .line 13
    instance-of v0, p0, Lkl4;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    goto :goto_2

    .line 18
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lqj4;->l()J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 23
    .line 24
    .line 25
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception v0

    .line 28
    new-instance v1, Lbn6;

    .line 29
    .line 30
    invoke-direct {v1, v0}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 31
    .line 32
    .line 33
    move-object v0, v1

    .line 34
    :goto_0
    nop

    .line 35
    instance-of v1, v0, Lbn6;

    .line 36
    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    move-object p1, v0

    .line 41
    :goto_1
    check-cast p1, Ljava/lang/Long;

    .line 42
    .line 43
    if-nez p1, :cond_3

    .line 44
    .line 45
    invoke-virtual {p0}, Lqj4;->o()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    invoke-static {p0}, Luq7;->Y(Ljava/lang/String;)Ljava/lang/Long;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    :cond_3
    :goto_2
    return-object p1
.end method


# virtual methods
.method public abstract D()Ljava/lang/Object;
.end method
