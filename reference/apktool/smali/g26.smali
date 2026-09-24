.class public final Lg26;
.super Ljava/lang/Object;


# instance fields
.field public a:[S

.field public final b:I

.field public final c:Lai5;


# direct methods
.method public constructor <init>(Lk45;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x100

    .line 5
    .line 6
    new-array v0, v0, [S

    .line 7
    .line 8
    iput-object v0, p0, Lg26;->a:[S

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget v0, p1, Lk45;->d:I

    .line 14
    .line 15
    iput v0, p0, Lg26;->b:I

    .line 16
    .line 17
    iget-object p1, p1, Lk45;->h:Lai5;

    .line 18
    .line 19
    iput-object p1, p0, Lg26;->c:Lai5;

    .line 20
    .line 21
    return-void
.end method

.method public static a(Lg26;Lg26;Lg26;)V
    .locals 19

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :goto_0
    const/16 v3, 0x40

    .line 7
    .line 8
    if-ge v2, v3, :cond_0

    .line 9
    .line 10
    mul-int/lit8 v5, v2, 0x4

    .line 11
    .line 12
    iget-object v3, v0, Lg26;->a:[S

    .line 13
    .line 14
    aget-short v6, v3, v5

    .line 15
    .line 16
    add-int/lit8 v4, v5, 0x1

    .line 17
    .line 18
    aget-short v7, v3, v4

    .line 19
    .line 20
    iget-object v3, v1, Lg26;->a:[S

    .line 21
    .line 22
    aget-short v8, v3, v5

    .line 23
    .line 24
    aget-short v9, v3, v4

    .line 25
    .line 26
    sget-object v3, Lji8;->e:[S

    .line 27
    .line 28
    add-int/lit8 v11, v2, 0x40

    .line 29
    .line 30
    aget-short v10, v3, v11

    .line 31
    .line 32
    move-object/from16 v4, p0

    .line 33
    .line 34
    invoke-static/range {v4 .. v10}, Lji8;->a(Lg26;ISSSSS)V

    .line 35
    .line 36
    .line 37
    add-int/lit8 v13, v5, 0x2

    .line 38
    .line 39
    iget-object v4, v0, Lg26;->a:[S

    .line 40
    .line 41
    aget-short v14, v4, v13

    .line 42
    .line 43
    add-int/lit8 v5, v5, 0x3

    .line 44
    .line 45
    aget-short v15, v4, v5

    .line 46
    .line 47
    iget-object v4, v1, Lg26;->a:[S

    .line 48
    .line 49
    aget-short v16, v4, v13

    .line 50
    .line 51
    aget-short v17, v4, v5

    .line 52
    .line 53
    aget-short v3, v3, v11

    .line 54
    .line 55
    mul-int/lit8 v3, v3, -0x1

    .line 56
    .line 57
    int-to-short v3, v3

    .line 58
    move-object/from16 v12, p0

    .line 59
    .line 60
    move/from16 v18, v3

    .line 61
    .line 62
    invoke-static/range {v12 .. v18}, Lji8;->a(Lg26;ISSSSS)V

    .line 63
    .line 64
    .line 65
    add-int/lit8 v2, v2, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    return-void
.end method


# virtual methods
.method public final b(B[B)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    iget v2, v0, Lg26;->b:I

    .line 6
    .line 7
    mul-int/lit16 v3, v2, 0x100

    .line 8
    .line 9
    const/4 v4, 0x4

    .line 10
    div-int/2addr v3, v4

    .line 11
    new-array v5, v3, [B

    .line 12
    .line 13
    iget-object v6, v0, Lg26;->c:Lai5;

    .line 14
    .line 15
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    array-length v7, v1

    .line 19
    const/4 v8, 0x1

    .line 20
    add-int/2addr v7, v8

    .line 21
    new-array v9, v7, [B

    .line 22
    .line 23
    array-length v10, v1

    .line 24
    const/4 v11, 0x0

    .line 25
    invoke-static {v1, v11, v9, v11, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26
    .line 27
    .line 28
    array-length v1, v1

    .line 29
    aput-byte p1, v9, v1

    .line 30
    .line 31
    iget-object v1, v6, Lai5;->e:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v1, Llr6;

    .line 34
    .line 35
    invoke-virtual {v1, v9, v11, v7}, Lgo4;->update([BII)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v5, v11, v3}, Llr6;->l([BII)V

    .line 39
    .line 40
    .line 41
    const/16 v1, 0x10

    .line 42
    .line 43
    const/16 v3, 0x8

    .line 44
    .line 45
    const/4 v6, 0x3

    .line 46
    if-eq v2, v6, :cond_1

    .line 47
    .line 48
    move v4, v11

    .line 49
    :goto_0
    const/16 v7, 0x20

    .line 50
    .line 51
    if-ge v4, v7, :cond_3

    .line 52
    .line 53
    mul-int/lit8 v7, v4, 0x4

    .line 54
    .line 55
    aget-byte v9, v5, v7

    .line 56
    .line 57
    and-int/lit16 v9, v9, 0xff

    .line 58
    .line 59
    int-to-long v9, v9

    .line 60
    add-int/lit8 v12, v7, 0x1

    .line 61
    .line 62
    aget-byte v12, v5, v12

    .line 63
    .line 64
    and-int/lit16 v12, v12, 0xff

    .line 65
    .line 66
    int-to-long v12, v12

    .line 67
    shl-long/2addr v12, v3

    .line 68
    or-long/2addr v9, v12

    .line 69
    add-int/lit8 v12, v7, 0x2

    .line 70
    .line 71
    aget-byte v12, v5, v12

    .line 72
    .line 73
    and-int/lit16 v12, v12, 0xff

    .line 74
    .line 75
    int-to-long v12, v12

    .line 76
    shl-long/2addr v12, v1

    .line 77
    or-long/2addr v9, v12

    .line 78
    add-int/2addr v7, v6

    .line 79
    aget-byte v7, v5, v7

    .line 80
    .line 81
    and-int/lit16 v7, v7, 0xff

    .line 82
    .line 83
    int-to-long v12, v7

    .line 84
    const/16 v7, 0x18

    .line 85
    .line 86
    shl-long/2addr v12, v7

    .line 87
    or-long/2addr v9, v12

    .line 88
    const-wide/32 v12, 0x55555555

    .line 89
    .line 90
    .line 91
    and-long v14, v9, v12

    .line 92
    .line 93
    shr-long/2addr v9, v8

    .line 94
    and-long/2addr v9, v12

    .line 95
    add-long/2addr v14, v9

    .line 96
    move v7, v11

    .line 97
    :goto_1
    if-ge v7, v3, :cond_0

    .line 98
    .line 99
    mul-int/lit8 v9, v7, 0x4

    .line 100
    .line 101
    shr-long v12, v14, v9

    .line 102
    .line 103
    const-wide/16 v16, 0x3

    .line 104
    .line 105
    and-long v12, v12, v16

    .line 106
    .line 107
    long-to-int v10, v12

    .line 108
    int-to-short v10, v10

    .line 109
    add-int/2addr v9, v2

    .line 110
    shr-long v12, v14, v9

    .line 111
    .line 112
    and-long v12, v12, v16

    .line 113
    .line 114
    long-to-int v9, v12

    .line 115
    int-to-short v9, v9

    .line 116
    mul-int/lit8 v12, v4, 0x8

    .line 117
    .line 118
    add-int/2addr v12, v7

    .line 119
    sub-int/2addr v10, v9

    .line 120
    int-to-short v9, v10

    .line 121
    iget-object v10, v0, Lg26;->a:[S

    .line 122
    .line 123
    aput-short v9, v10, v12

    .line 124
    .line 125
    add-int/lit8 v7, v7, 0x1

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_1
    move v2, v11

    .line 132
    :goto_2
    const/16 v7, 0x40

    .line 133
    .line 134
    if-ge v2, v7, :cond_3

    .line 135
    .line 136
    mul-int/lit8 v7, v2, 0x3

    .line 137
    .line 138
    aget-byte v9, v5, v7

    .line 139
    .line 140
    and-int/lit16 v9, v9, 0xff

    .line 141
    .line 142
    int-to-long v9, v9

    .line 143
    add-int/lit8 v12, v7, 0x1

    .line 144
    .line 145
    aget-byte v12, v5, v12

    .line 146
    .line 147
    and-int/lit16 v12, v12, 0xff

    .line 148
    .line 149
    int-to-long v12, v12

    .line 150
    shl-long/2addr v12, v3

    .line 151
    or-long/2addr v9, v12

    .line 152
    const/4 v12, 0x2

    .line 153
    add-int/2addr v7, v12

    .line 154
    aget-byte v7, v5, v7

    .line 155
    .line 156
    and-int/lit16 v7, v7, 0xff

    .line 157
    .line 158
    int-to-long v13, v7

    .line 159
    shl-long/2addr v13, v1

    .line 160
    or-long/2addr v9, v13

    .line 161
    const-wide/32 v13, 0x249249

    .line 162
    .line 163
    .line 164
    and-long v15, v9, v13

    .line 165
    .line 166
    shr-long v17, v9, v8

    .line 167
    .line 168
    and-long v17, v17, v13

    .line 169
    .line 170
    add-long v15, v15, v17

    .line 171
    .line 172
    shr-long/2addr v9, v12

    .line 173
    and-long/2addr v9, v13

    .line 174
    add-long/2addr v15, v9

    .line 175
    move v7, v11

    .line 176
    :goto_3
    if-ge v7, v4, :cond_2

    .line 177
    .line 178
    mul-int/lit8 v9, v7, 0x6

    .line 179
    .line 180
    shr-long v12, v15, v9

    .line 181
    .line 182
    const-wide/16 v17, 0x7

    .line 183
    .line 184
    and-long v12, v12, v17

    .line 185
    .line 186
    long-to-int v10, v12

    .line 187
    int-to-short v10, v10

    .line 188
    add-int/2addr v9, v6

    .line 189
    shr-long v12, v15, v9

    .line 190
    .line 191
    and-long v12, v12, v17

    .line 192
    .line 193
    long-to-int v9, v12

    .line 194
    int-to-short v9, v9

    .line 195
    mul-int/lit8 v12, v2, 0x4

    .line 196
    .line 197
    add-int/2addr v12, v7

    .line 198
    sub-int/2addr v10, v9

    .line 199
    int-to-short v9, v10

    .line 200
    iget-object v10, v0, Lg26;->a:[S

    .line 201
    .line 202
    aput-short v9, v10, v12

    .line 203
    .line 204
    add-int/lit8 v7, v7, 0x1

    .line 205
    .line 206
    goto :goto_3

    .line 207
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 208
    .line 209
    goto :goto_2

    .line 210
    :cond_3
    return-void
.end method

.method public final c()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    const/16 v1, 0x100

    .line 3
    .line 4
    if-ge v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Lg26;->a:[S

    .line 7
    .line 8
    aget-short v2, v1, v0

    .line 9
    .line 10
    const/16 v3, 0x4ebf

    .line 11
    .line 12
    mul-int/2addr v3, v2

    .line 13
    shr-int/lit8 v3, v3, 0x1a

    .line 14
    .line 15
    int-to-short v3, v3

    .line 16
    mul-int/lit16 v3, v3, 0xd01

    .line 17
    .line 18
    int-to-short v3, v3

    .line 19
    sub-int/2addr v2, v3

    .line 20
    int-to-short v2, v2

    .line 21
    aput-short v2, v1, v0

    .line 22
    .line 23
    add-int/lit8 v0, v0, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "["

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    iget-object v2, p0, Lg26;->a:[S

    .line 10
    .line 11
    array-length v3, v2

    .line 12
    if-ge v1, v3, :cond_1

    .line 13
    .line 14
    aget-short v2, v2, v1

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget-object v2, p0, Lg26;->a:[S

    .line 20
    .line 21
    array-length v2, v2

    .line 22
    add-int/lit8 v2, v2, -0x1

    .line 23
    .line 24
    if-eq v1, v2, :cond_0

    .line 25
    .line 26
    const-string v2, ", "

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const-string p0, "]"

    .line 35
    .line 36
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0
.end method
