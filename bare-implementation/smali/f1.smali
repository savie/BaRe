.class public final Lf1;
.super Lq1;


# static fields
.field public static final c:Ljava/util/concurrent/ConcurrentHashMap;


# instance fields
.field public final a:[B

.field public b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lb1;

    .line 2
    .line 3
    const-class v1, Lf1;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v2, v1}, Lb1;-><init>(ILjava/lang/Class;)V

    .line 7
    .line 8
    .line 9
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lf1;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 14

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/16 v1, 0x4001

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-gt v0, v1, :cond_d

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x3

    .line 18
    if-lt v0, v1, :cond_c

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    const/16 v4, 0x2e

    .line 26
    .line 27
    if-ne v3, v4, :cond_c

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    const/16 v6, 0x30

    .line 35
    .line 36
    if-lt v5, v6, :cond_c

    .line 37
    .line 38
    const/16 v6, 0x32

    .line 39
    .line 40
    if-gt v5, v6, :cond_c

    .line 41
    .line 42
    const/4 v7, 0x2

    .line 43
    invoke-static {v7, p1}, Ls1;->B(ILjava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result v8

    .line 47
    if-eqz v8, :cond_c

    .line 48
    .line 49
    if-ne v5, v6, :cond_0

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    if-eq v5, v1, :cond_3

    .line 57
    .line 58
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-ne v1, v4, :cond_1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    const/4 v5, 0x4

    .line 70
    if-eq v1, v5, :cond_2

    .line 71
    .line 72
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-ne v1, v4, :cond_c

    .line 77
    .line 78
    :cond_2
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    const/16 v5, 0x34

    .line 83
    .line 84
    if-ge v1, v5, :cond_c

    .line 85
    .line 86
    :cond_3
    :goto_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 87
    .line 88
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->indexOf(II)I

    .line 92
    .line 93
    .line 94
    move-result v5

    .line 95
    const/4 v6, -0x1

    .line 96
    if-ne v5, v6, :cond_4

    .line 97
    .line 98
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    move v5, v6

    .line 103
    goto :goto_1

    .line 104
    :cond_4
    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    add-int/2addr v5, v0

    .line 109
    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    mul-int/lit8 v3, v3, 0x28

    .line 114
    .line 115
    if-ne v5, v6, :cond_5

    .line 116
    .line 117
    move-object v0, v2

    .line 118
    goto :goto_2

    .line 119
    :cond_5
    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->indexOf(II)I

    .line 120
    .line 121
    .line 122
    move-result v7

    .line 123
    if-ne v7, v6, :cond_6

    .line 124
    .line 125
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    move v5, v6

    .line 130
    goto :goto_2

    .line 131
    :cond_6
    invoke-virtual {p1, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v5

    .line 135
    add-int/2addr v0, v7

    .line 136
    move-object v13, v5

    .line 137
    move v5, v0

    .line 138
    move-object v0, v13

    .line 139
    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 140
    .line 141
    .line 142
    move-result v7

    .line 143
    const/16 v8, 0x12

    .line 144
    .line 145
    if-gt v7, v8, :cond_7

    .line 146
    .line 147
    int-to-long v9, v3

    .line 148
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 149
    .line 150
    .line 151
    move-result-wide v11

    .line 152
    add-long/2addr v11, v9

    .line 153
    invoke-static {v1, v11, v12}, Ls1;->C(Ljava/io/ByteArrayOutputStream;J)V

    .line 154
    .line 155
    .line 156
    goto :goto_3

    .line 157
    :cond_7
    new-instance v7, Ljava/math/BigInteger;

    .line 158
    .line 159
    invoke-direct {v7, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    int-to-long v9, v3

    .line 163
    invoke-static {v9, v10}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-virtual {v7, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-static {v1, v0}, Ls1;->E(Ljava/io/ByteArrayOutputStream;Ljava/math/BigInteger;)V

    .line 172
    .line 173
    .line 174
    :goto_3
    if-eq v5, v6, :cond_b

    .line 175
    .line 176
    if-ne v5, v6, :cond_8

    .line 177
    .line 178
    move-object v0, v2

    .line 179
    goto :goto_4

    .line 180
    :cond_8
    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->indexOf(II)I

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    if-ne v0, v6, :cond_9

    .line 185
    .line 186
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    move v5, v6

    .line 191
    goto :goto_4

    .line 192
    :cond_9
    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    add-int/lit8 v0, v0, 0x1

    .line 197
    .line 198
    move v5, v0

    .line 199
    move-object v0, v3

    .line 200
    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 201
    .line 202
    .line 203
    move-result v3

    .line 204
    if-gt v3, v8, :cond_a

    .line 205
    .line 206
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 207
    .line 208
    .line 209
    move-result-wide v9

    .line 210
    invoke-static {v1, v9, v10}, Ls1;->C(Ljava/io/ByteArrayOutputStream;J)V

    .line 211
    .line 212
    .line 213
    goto :goto_3

    .line 214
    :cond_a
    new-instance v3, Ljava/math/BigInteger;

    .line 215
    .line 216
    invoke-direct {v3, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    invoke-static {v1, v3}, Ls1;->E(Ljava/io/ByteArrayOutputStream;Ljava/math/BigInteger;)V

    .line 220
    .line 221
    .line 222
    goto :goto_3

    .line 223
    :cond_b
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    array-length v1, v0

    .line 228
    invoke-static {v1}, Lf1;->y(I)V

    .line 229
    .line 230
    .line 231
    iput-object v0, p0, Lf1;->a:[B

    .line 232
    .line 233
    iput-object p1, p0, Lf1;->b:Ljava/lang/String;

    .line 234
    .line 235
    return-void

    .line 236
    :cond_c
    const-string p0, "string "

    .line 237
    .line 238
    const-string v0, " not a valid OID"

    .line 239
    .line 240
    invoke-static {p0, p1, v0}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object p0

    .line 244
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    throw v2

    .line 248
    :cond_d
    const-string p0, "exceeded OID contents length limit"

    .line 249
    .line 250
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    throw v2
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 0

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    iput-object p2, p0, Lf1;->a:[B

    iput-object p1, p0, Lf1;->b:Ljava/lang/String;

    return-void
.end method

.method public static B([BZ)Lf1;
    .locals 2

    .line 1
    array-length v0, p0

    .line 2
    invoke-static {v0}, Lf1;->y(I)V

    .line 3
    .line 4
    .line 5
    new-instance v0, Lc1;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lc1;-><init>([B)V

    .line 8
    .line 9
    .line 10
    sget-object v1, Lf1;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lf1;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    return-object v0

    .line 21
    :cond_0
    invoke-static {p0}, Ls1;->y([B)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v1, 0x0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    new-instance v0, Lf1;

    .line 29
    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    invoke-static {p0}, Lms8;->k([B)[B

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    :cond_1
    invoke-direct {v0, v1, p0}, Lf1;-><init>(Ljava/lang/String;[B)V

    .line 37
    .line 38
    .line 39
    return-object v0

    .line 40
    :cond_2
    const-string p0, "invalid OID contents"

    .line 41
    .line 42
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-object v1
.end method

.method public static H([B)Ljava/lang/String;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    const/4 v5, 0x1

    .line 10
    const/4 v6, 0x0

    .line 11
    move-object v10, v4

    .line 12
    move v7, v6

    .line 13
    const-wide/16 v8, 0x0

    .line 14
    .line 15
    :goto_0
    array-length v11, v0

    .line 16
    if-eq v7, v11, :cond_8

    .line 17
    .line 18
    aget-byte v11, v0, v7

    .line 19
    .line 20
    const-wide v12, 0xffffffffffff80L

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    cmp-long v12, v8, v12

    .line 26
    .line 27
    const/4 v13, 0x7

    .line 28
    const/16 v14, 0x2e

    .line 29
    .line 30
    const/16 v15, 0x32

    .line 31
    .line 32
    const-wide/16 v16, 0x50

    .line 33
    .line 34
    if-gtz v12, :cond_4

    .line 35
    .line 36
    and-int/lit8 v12, v11, 0x7f

    .line 37
    .line 38
    int-to-long v2, v12

    .line 39
    add-long/2addr v8, v2

    .line 40
    and-int/lit16 v2, v11, 0x80

    .line 41
    .line 42
    if-nez v2, :cond_3

    .line 43
    .line 44
    if-eqz v5, :cond_2

    .line 45
    .line 46
    const-wide/16 v2, 0x28

    .line 47
    .line 48
    cmp-long v5, v8, v2

    .line 49
    .line 50
    if-gez v5, :cond_0

    .line 51
    .line 52
    const/16 v2, 0x30

    .line 53
    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_0
    cmp-long v5, v8, v16

    .line 59
    .line 60
    if-gez v5, :cond_1

    .line 61
    .line 62
    const/16 v5, 0x31

    .line 63
    .line 64
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    sub-long/2addr v8, v2

    .line 68
    goto :goto_1

    .line 69
    :cond_1
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    sub-long v8, v8, v16

    .line 73
    .line 74
    :goto_1
    move v5, v6

    .line 75
    :cond_2
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    :goto_2
    const-wide/16 v8, 0x0

    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_3
    shl-long/2addr v8, v13

    .line 85
    goto :goto_3

    .line 86
    :cond_4
    if-nez v10, :cond_5

    .line 87
    .line 88
    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 89
    .line 90
    .line 91
    move-result-object v10

    .line 92
    :cond_5
    and-int/lit8 v2, v11, 0x7f

    .line 93
    .line 94
    int-to-long v2, v2

    .line 95
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-virtual {v10, v2}, Ljava/math/BigInteger;->or(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    and-int/lit16 v3, v11, 0x80

    .line 104
    .line 105
    if-nez v3, :cond_7

    .line 106
    .line 107
    if-eqz v5, :cond_6

    .line 108
    .line 109
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-static/range {v16 .. v17}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    move v5, v6

    .line 121
    :cond_6
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    move-object v10, v4

    .line 128
    goto :goto_2

    .line 129
    :cond_7
    invoke-virtual {v2, v13}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    .line 130
    .line 131
    .line 132
    move-result-object v10

    .line 133
    :goto_3
    add-int/lit8 v7, v7, 0x1

    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    return-object v0
.end method

.method public static y(I)V
    .locals 1

    .line 1
    const/16 v0, 0x1000

    .line 2
    .line 3
    if-gt p0, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string p0, "exceeded OID contents length limit"

    .line 7
    .line 8
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final declared-synchronized C()Ljava/lang/String;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lf1;->b:Ljava/lang/String;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lf1;->a:[B

    .line 7
    .line 8
    invoke-static {v0}, Lf1;->H([B)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lf1;->b:Ljava/lang/String;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    :goto_0
    iget-object v0, p0, Lf1;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    monitor-exit p0

    .line 20
    return-object v0

    .line 21
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    throw v0
.end method

.method public final E()Lf1;
    .locals 3

    .line 1
    new-instance v0, Lc1;

    .line 2
    .line 3
    iget-object v1, p0, Lf1;->a:[B

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lc1;-><init>([B)V

    .line 6
    .line 7
    .line 8
    sget-object v1, Lf1;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    check-cast v2, Lf1;

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    monitor-enter v1

    .line 19
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-nez v2, :cond_0

    .line 24
    .line 25
    invoke-virtual {v1, v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    :goto_0
    monitor-exit v1

    .line 29
    return-object p0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    check-cast p0, Lf1;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    throw p0

    .line 41
    :cond_1
    return-object v2
.end method

.method public final F(Lf1;)Z
    .locals 5

    .line 1
    iget-object p1, p1, Lf1;->a:[B

    .line 2
    .line 3
    array-length v0, p1

    .line 4
    iget-object p0, p0, Lf1;->a:[B

    .line 5
    .line 6
    array-length v1, p0

    .line 7
    const/4 v2, 0x0

    .line 8
    if-le v1, v0, :cond_2

    .line 9
    .line 10
    move v1, v2

    .line 11
    :goto_0
    if-ge v1, v0, :cond_1

    .line 12
    .line 13
    aget-byte v3, p0, v1

    .line 14
    .line 15
    aget-byte v4, p1, v1

    .line 16
    .line 17
    if-eq v3, v4, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 p0, 0x1

    .line 24
    return p0

    .line 25
    :cond_2
    :goto_1
    return v2
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lf1;->a:[B

    .line 2
    .line 3
    invoke-static {p0}, Lms8;->x([B)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final k(Lq1;)Z
    .locals 1

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    return p0

    .line 5
    :cond_0
    instance-of v0, p1, Lf1;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_1
    check-cast p1, Lf1;

    .line 12
    .line 13
    iget-object p0, p0, Lf1;->a:[B

    .line 14
    .line 15
    iget-object p1, p1, Lf1;->a:[B

    .line 16
    .line 17
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public final l(Lm1;Z)V
    .locals 1

    .line 1
    const/4 v0, 0x6

    .line 2
    iget-object p0, p0, Lf1;->a:[B

    .line 3
    .line 4
    invoke-virtual {p1, v0, p2, p0}, Lm1;->k(IZ[B)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final o()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final p(Z)I
    .locals 0

    .line 1
    iget-object p0, p0, Lf1;->a:[B

    .line 2
    .line 3
    array-length p0, p0

    .line 4
    invoke-static {p0, p1}, Lm1;->d(IZ)I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lf1;->C()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final x(Ljava/lang/String;)Lf1;
    .locals 7

    .line 1
    sget-object v0, Ls1;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x3fff

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-gt v0, v1, :cond_7

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-static {v0, p1}, Ls1;->B(ILjava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_6

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/4 v3, 0x2

    .line 24
    iget-object v4, p0, Lf1;->a:[B

    .line 25
    .line 26
    if-gt v1, v3, :cond_1

    .line 27
    .line 28
    array-length v1, v4

    .line 29
    const/4 v2, 0x1

    .line 30
    add-int/2addr v1, v2

    .line 31
    invoke-static {v1}, Lf1;->y(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    add-int/lit8 v1, v1, -0x30

    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    if-ne v5, v3, :cond_0

    .line 45
    .line 46
    mul-int/lit8 v1, v1, 0xa

    .line 47
    .line 48
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    add-int/lit8 v2, v2, -0x30

    .line 53
    .line 54
    add-int/2addr v1, v2

    .line 55
    :cond_0
    int-to-byte v1, v1

    .line 56
    array-length v2, v4

    .line 57
    add-int/lit8 v3, v2, 0x1

    .line 58
    .line 59
    new-array v3, v3, [B

    .line 60
    .line 61
    invoke-static {v4, v0, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    .line 63
    .line 64
    aput-byte v1, v3, v2

    .line 65
    .line 66
    goto :goto_3

    .line 67
    :cond_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 68
    .line 69
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 70
    .line 71
    .line 72
    :goto_0
    const/4 v3, -0x1

    .line 73
    if-eq v0, v3, :cond_5

    .line 74
    .line 75
    if-ne v0, v3, :cond_2

    .line 76
    .line 77
    move v3, v0

    .line 78
    move-object v0, v2

    .line 79
    goto :goto_1

    .line 80
    :cond_2
    const/16 v5, 0x2e

    .line 81
    .line 82
    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->indexOf(II)I

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    if-ne v5, v3, :cond_3

    .line 87
    .line 88
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    goto :goto_1

    .line 93
    :cond_3
    invoke-virtual {p1, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    add-int/lit8 v5, v5, 0x1

    .line 98
    .line 99
    move v3, v5

    .line 100
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 101
    .line 102
    .line 103
    move-result v5

    .line 104
    const/16 v6, 0x12

    .line 105
    .line 106
    if-gt v5, v6, :cond_4

    .line 107
    .line 108
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 109
    .line 110
    .line 111
    move-result-wide v5

    .line 112
    invoke-static {v1, v5, v6}, Ls1;->C(Ljava/io/ByteArrayOutputStream;J)V

    .line 113
    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_4
    new-instance v5, Ljava/math/BigInteger;

    .line 117
    .line 118
    invoke-direct {v5, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-static {v1, v5}, Ls1;->E(Ljava/io/ByteArrayOutputStream;Ljava/math/BigInteger;)V

    .line 122
    .line 123
    .line 124
    :goto_2
    move v0, v3

    .line 125
    goto :goto_0

    .line 126
    :cond_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    array-length v1, v4

    .line 131
    array-length v2, v0

    .line 132
    add-int/2addr v1, v2

    .line 133
    invoke-static {v1}, Lf1;->y(I)V

    .line 134
    .line 135
    .line 136
    invoke-static {v4, v0}, Lms8;->p([B[B)[B

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    :goto_3
    invoke-virtual {p0}, Lf1;->C()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    const-string v0, "."

    .line 145
    .line 146
    invoke-static {p0, v0, p1}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    new-instance p1, Lf1;

    .line 151
    .line 152
    invoke-direct {p1, p0, v3}, Lf1;-><init>(Ljava/lang/String;[B)V

    .line 153
    .line 154
    .line 155
    return-object p1

    .line 156
    :cond_6
    const-string p0, "string "

    .line 157
    .line 158
    const-string v0, " not a valid relative OID"

    .line 159
    .line 160
    invoke-static {p0, p1, v0}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    :goto_4
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    return-object v2

    .line 168
    :cond_7
    const-string p0, "exceeded relative OID contents length limit"

    .line 169
    .line 170
    goto :goto_4
.end method
