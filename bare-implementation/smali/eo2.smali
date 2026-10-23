.class public final Leo2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lgd5;


# instance fields
.field public a:I

.field public b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Llw4;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Leo2;->b:Ljava/lang/Object;

    .line 5
    .line 6
    iput p2, p0, Leo2;->a:I

    .line 7
    .line 8
    return-void
.end method

.method public static g(JJJ)J
    .locals 2

    .line 1
    invoke-static {p2, p3, p4, p5}, Lho6;->G(JJ)J

    .line 2
    .line 3
    .line 4
    move-result-wide p2

    .line 5
    mul-long v0, p0, p4

    .line 6
    .line 7
    invoke-static {p0, p1, p4, p5}, Lho6;->G(JJ)J

    .line 8
    .line 9
    .line 10
    move-result-wide p0

    .line 11
    const/4 p4, 0x1

    .line 12
    ushr-long p4, v0, p4

    .line 13
    .line 14
    add-long/2addr p4, p2

    .line 15
    const/16 p2, 0x3f

    .line 16
    .line 17
    ushr-long v0, p4, p2

    .line 18
    .line 19
    add-long/2addr p0, v0

    .line 20
    const-wide v0, 0x7fffffffffffffffL

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    and-long p3, p4, v0

    .line 26
    .line 27
    add-long/2addr p3, v0

    .line 28
    ushr-long p2, p3, p2

    .line 29
    .line 30
    or-long/2addr p0, p2

    .line 31
    return-wide p0
.end method


# virtual methods
.method public a([B)Z
    .locals 1

    .line 1
    iget-object v0, p0, Leo2;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    iget v0, p0, Leo2;->a:I

    .line 9
    .line 10
    array-length p1, p1

    .line 11
    add-int/2addr v0, p1

    .line 12
    iput v0, p0, Leo2;->a:I

    .line 13
    .line 14
    const/4 p0, 0x1

    .line 15
    return p0
.end method

.method public b()Lut1;
    .locals 6

    .line 1
    iget-object v0, p0, Leo2;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    iget p0, p0, Leo2;->a:I

    .line 6
    .line 7
    new-array p0, p0, [B

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    move v2, v1

    .line 11
    move v3, v2

    .line 12
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    if-ge v2, v4, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    check-cast v4, [B

    .line 23
    .line 24
    array-length v5, v4

    .line 25
    invoke-static {v4, v1, p0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26
    .line 27
    .line 28
    array-length v4, v4

    .line 29
    add-int/2addr v3, v4

    .line 30
    add-int/lit8 v2, v2, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    new-instance p0, Lut1;

    .line 34
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    .line 37
    .line 38
    return-object p0
.end method

.method public c(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Leo2;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [B

    .line 4
    .line 5
    iget v1, p0, Leo2;->a:I

    .line 6
    .line 7
    add-int/lit8 v1, v1, 0x1

    .line 8
    .line 9
    iput v1, p0, Leo2;->a:I

    .line 10
    .line 11
    int-to-byte p0, p1

    .line 12
    aput-byte p0, v0, v1

    .line 13
    .line 14
    return-void
.end method

.method public d(I)V
    .locals 4

    .line 1
    add-int/lit8 p1, p1, 0x1

    .line 2
    .line 3
    int-to-long v0, p1

    .line 4
    const/16 p1, 0x1c

    .line 5
    .line 6
    shl-long/2addr v0, p1

    .line 7
    const-wide v2, 0x2af31dc4611873cL    # 9.53972865917246E-296

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1, v2, v3}, Lho6;->G(JJ)J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    const/16 p1, 0x14

    .line 17
    .line 18
    ushr-long/2addr v0, p1

    .line 19
    long-to-int p1, v0

    .line 20
    add-int/lit8 p1, p1, -0x1

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    :goto_0
    const/16 v1, 0x8

    .line 24
    .line 25
    if-ge v0, v1, :cond_0

    .line 26
    .line 27
    mul-int/lit8 p1, p1, 0xa

    .line 28
    .line 29
    ushr-int/lit8 v1, p1, 0x1c

    .line 30
    .line 31
    invoke-virtual {p0, v1}, Leo2;->e(I)V

    .line 32
    .line 33
    .line 34
    const v1, 0xfffffff

    .line 35
    .line 36
    .line 37
    and-int/2addr p1, v1

    .line 38
    add-int/lit8 v0, v0, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    return-void
.end method

.method public e(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Leo2;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [B

    .line 4
    .line 5
    iget v1, p0, Leo2;->a:I

    .line 6
    .line 7
    add-int/lit8 v1, v1, 0x1

    .line 8
    .line 9
    iput v1, p0, Leo2;->a:I

    .line 10
    .line 11
    add-int/lit8 p1, p1, 0x30

    .line 12
    .line 13
    int-to-byte p0, p1

    .line 14
    aput-byte p0, v0, v1

    .line 15
    .line 16
    return-void
.end method

.method public f(I)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Leo2;->d(I)V

    .line 4
    .line 5
    .line 6
    :cond_0
    :goto_0
    iget-object p1, p0, Leo2;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p1, [B

    .line 9
    .line 10
    iget v0, p0, Leo2;->a:I

    .line 11
    .line 12
    aget-byte p1, p1, v0

    .line 13
    .line 14
    const/16 v1, 0x30

    .line 15
    .line 16
    if-ne p1, v1, :cond_1

    .line 17
    .line 18
    add-int/lit8 v0, v0, -0x1

    .line 19
    .line 20
    iput v0, p0, Leo2;->a:I

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/16 v1, 0x2e

    .line 24
    .line 25
    if-ne p1, v1, :cond_2

    .line 26
    .line 27
    add-int/lit8 v0, v0, 0x1

    .line 28
    .line 29
    iput v0, p0, Leo2;->a:I

    .line 30
    .line 31
    :cond_2
    return-void
.end method

.method public h(IJ)V
    .locals 9

    .line 1
    invoke-static {p2, p3}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    rsub-int/lit8 v0, v0, 0x40

    .line 6
    .line 7
    int-to-long v0, v0

    .line 8
    const-wide v2, 0x9a209a84fbL

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    mul-long/2addr v0, v2

    .line 14
    const/16 v2, 0x29

    .line 15
    .line 16
    shr-long/2addr v0, v2

    .line 17
    long-to-int v0, v0

    .line 18
    sget-object v1, Lho6;->b:[J

    .line 19
    .line 20
    aget-wide v2, v1, v0

    .line 21
    .line 22
    cmp-long v2, p2, v2

    .line 23
    .line 24
    if-ltz v2, :cond_0

    .line 25
    .line 26
    add-int/lit8 v0, v0, 0x1

    .line 27
    .line 28
    :cond_0
    rsub-int/lit8 v2, v0, 0x11

    .line 29
    .line 30
    aget-wide v2, v1, v2

    .line 31
    .line 32
    mul-long/2addr p2, v2

    .line 33
    add-int/2addr p1, v0

    .line 34
    const-wide v0, 0x2af31dc4611873cL    # 9.53972865917246E-296

    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    invoke-static {p2, p3, v0, v1}, Lho6;->G(JJ)J

    .line 40
    .line 41
    .line 42
    move-result-wide v2

    .line 43
    const/16 v4, 0x14

    .line 44
    .line 45
    ushr-long/2addr v2, v4

    .line 46
    const-wide/32 v5, 0x5f5e100

    .line 47
    .line 48
    .line 49
    mul-long/2addr v5, v2

    .line 50
    sub-long/2addr p2, v5

    .line 51
    long-to-int p2, p2

    .line 52
    const-wide/32 v5, 0x55e63b89

    .line 53
    .line 54
    .line 55
    mul-long/2addr v5, v2

    .line 56
    const/16 p3, 0x39

    .line 57
    .line 58
    ushr-long/2addr v5, p3

    .line 59
    long-to-int p3, v5

    .line 60
    const v5, 0x5f5e100

    .line 61
    .line 62
    .line 63
    mul-int/2addr v5, p3

    .line 64
    int-to-long v5, v5

    .line 65
    sub-long/2addr v2, v5

    .line 66
    long-to-int v2, v2

    .line 67
    const/16 v3, 0xa

    .line 68
    .line 69
    const/16 v5, 0x2e

    .line 70
    .line 71
    const/4 v6, 0x1

    .line 72
    if-lez p1, :cond_3

    .line 73
    .line 74
    const/4 v7, 0x7

    .line 75
    if-gt p1, v7, :cond_3

    .line 76
    .line 77
    invoke-virtual {p0, p3}, Leo2;->e(I)V

    .line 78
    .line 79
    .line 80
    add-int/2addr v2, v6

    .line 81
    int-to-long v7, v2

    .line 82
    const/16 p3, 0x1c

    .line 83
    .line 84
    shl-long/2addr v7, p3

    .line 85
    invoke-static {v7, v8, v0, v1}, Lho6;->G(JJ)J

    .line 86
    .line 87
    .line 88
    move-result-wide v0

    .line 89
    ushr-long/2addr v0, v4

    .line 90
    long-to-int p3, v0

    .line 91
    sub-int/2addr p3, v6

    .line 92
    :goto_0
    const v0, 0xfffffff

    .line 93
    .line 94
    .line 95
    if-ge v6, p1, :cond_1

    .line 96
    .line 97
    mul-int/lit8 p3, p3, 0xa

    .line 98
    .line 99
    ushr-int/lit8 v1, p3, 0x1c

    .line 100
    .line 101
    invoke-virtual {p0, v1}, Leo2;->e(I)V

    .line 102
    .line 103
    .line 104
    and-int/2addr p3, v0

    .line 105
    add-int/lit8 v6, v6, 0x1

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_1
    invoke-virtual {p0, v5}, Leo2;->c(I)V

    .line 109
    .line 110
    .line 111
    :goto_1
    const/16 p1, 0x8

    .line 112
    .line 113
    if-gt v6, p1, :cond_2

    .line 114
    .line 115
    mul-int/2addr p3, v3

    .line 116
    ushr-int/lit8 p1, p3, 0x1c

    .line 117
    .line 118
    invoke-virtual {p0, p1}, Leo2;->e(I)V

    .line 119
    .line 120
    .line 121
    and-int/2addr p3, v0

    .line 122
    add-int/lit8 v6, v6, 0x1

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_2
    invoke-virtual {p0, p2}, Leo2;->f(I)V

    .line 126
    .line 127
    .line 128
    return-void

    .line 129
    :cond_3
    const/4 v0, -0x3

    .line 130
    if-ge v0, p1, :cond_5

    .line 131
    .line 132
    if-gtz p1, :cond_5

    .line 133
    .line 134
    const/4 v0, 0x0

    .line 135
    invoke-virtual {p0, v0}, Leo2;->e(I)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0, v5}, Leo2;->c(I)V

    .line 139
    .line 140
    .line 141
    :goto_2
    if-gez p1, :cond_4

    .line 142
    .line 143
    invoke-virtual {p0, v0}, Leo2;->e(I)V

    .line 144
    .line 145
    .line 146
    add-int/lit8 p1, p1, 0x1

    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_4
    invoke-virtual {p0, p3}, Leo2;->e(I)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0, v2}, Leo2;->d(I)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0, p2}, Leo2;->f(I)V

    .line 156
    .line 157
    .line 158
    return-void

    .line 159
    :cond_5
    invoke-virtual {p0, p3}, Leo2;->e(I)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0, v5}, Leo2;->c(I)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0, v2}, Leo2;->d(I)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p0, p2}, Leo2;->f(I)V

    .line 169
    .line 170
    .line 171
    sub-int/2addr p1, v6

    .line 172
    const/16 p2, 0x45

    .line 173
    .line 174
    invoke-virtual {p0, p2}, Leo2;->c(I)V

    .line 175
    .line 176
    .line 177
    if-gez p1, :cond_6

    .line 178
    .line 179
    const/16 p2, 0x2d

    .line 180
    .line 181
    invoke-virtual {p0, p2}, Leo2;->c(I)V

    .line 182
    .line 183
    .line 184
    neg-int p1, p1

    .line 185
    :cond_6
    if-ge p1, v3, :cond_7

    .line 186
    .line 187
    invoke-virtual {p0, p1}, Leo2;->e(I)V

    .line 188
    .line 189
    .line 190
    return-void

    .line 191
    :cond_7
    const/16 p2, 0x64

    .line 192
    .line 193
    if-lt p1, p2, :cond_8

    .line 194
    .line 195
    mul-int/lit16 p3, p1, 0x51f

    .line 196
    .line 197
    ushr-int/lit8 p3, p3, 0x11

    .line 198
    .line 199
    invoke-virtual {p0, p3}, Leo2;->e(I)V

    .line 200
    .line 201
    .line 202
    mul-int/2addr p3, p2

    .line 203
    sub-int/2addr p1, p3

    .line 204
    :cond_8
    mul-int/lit8 p2, p1, 0x67

    .line 205
    .line 206
    ushr-int/2addr p2, v3

    .line 207
    invoke-virtual {p0, p2}, Leo2;->e(I)V

    .line 208
    .line 209
    .line 210
    mul-int/2addr p2, v3

    .line 211
    sub-int/2addr p1, p2

    .line 212
    invoke-virtual {p0, p1}, Leo2;->e(I)V

    .line 213
    .line 214
    .line 215
    return-void
.end method

.method public i(JII)V
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p1

    .line 4
    .line 5
    move/from16 v3, p3

    .line 6
    .line 7
    long-to-int v4, v1

    .line 8
    const/4 v5, 0x1

    .line 9
    and-int/2addr v4, v5

    .line 10
    const/4 v6, 0x2

    .line 11
    shl-long v7, v1, v6

    .line 12
    .line 13
    const-wide/16 v9, 0x2

    .line 14
    .line 15
    add-long v11, v7, v9

    .line 16
    .line 17
    const-wide/high16 v13, 0x10000000000000L

    .line 18
    .line 19
    cmp-long v1, v1, v13

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    move v1, v5

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v1, 0x0

    .line 26
    :goto_0
    const/16 v13, -0x432

    .line 27
    .line 28
    if-ne v3, v13, :cond_1

    .line 29
    .line 30
    move v13, v5

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    const/4 v13, 0x0

    .line 33
    :goto_1
    or-int/2addr v1, v13

    .line 34
    const/16 v13, 0x29

    .line 35
    .line 36
    const-wide v14, 0x9a209a84fbL

    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    const-wide/16 v16, 0x1

    .line 42
    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    sub-long v9, v7, v9

    .line 46
    .line 47
    move v1, v5

    .line 48
    move/from16 v18, v6

    .line 49
    .line 50
    int-to-long v5, v3

    .line 51
    mul-long/2addr v5, v14

    .line 52
    :goto_2
    shr-long/2addr v5, v13

    .line 53
    long-to-int v5, v5

    .line 54
    goto :goto_3

    .line 55
    :cond_2
    move v1, v5

    .line 56
    move/from16 v18, v6

    .line 57
    .line 58
    sub-long v9, v7, v16

    .line 59
    .line 60
    int-to-long v5, v3

    .line 61
    mul-long/2addr v5, v14

    .line 62
    const-wide v14, -0x3ff7f85779L

    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    add-long/2addr v5, v14

    .line 68
    goto :goto_2

    .line 69
    :goto_3
    neg-int v6, v5

    .line 70
    int-to-long v13, v6

    .line 71
    const-wide v19, 0xd49a784bcdL

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    mul-long v13, v13, v19

    .line 77
    .line 78
    const/16 v6, 0x26

    .line 79
    .line 80
    shr-long/2addr v13, v6

    .line 81
    long-to-int v6, v13

    .line 82
    add-int/2addr v6, v3

    .line 83
    add-int/lit8 v6, v6, 0x2

    .line 84
    .line 85
    sget-object v3, Lho6;->c:[J

    .line 86
    .line 87
    add-int/lit16 v13, v5, 0x144

    .line 88
    .line 89
    shl-int/2addr v13, v1

    .line 90
    aget-wide v19, v3, v13

    .line 91
    .line 92
    or-int/2addr v13, v1

    .line 93
    aget-wide v21, v3, v13

    .line 94
    .line 95
    shl-long v23, v7, v6

    .line 96
    .line 97
    invoke-static/range {v19 .. v24}, Leo2;->g(JJJ)J

    .line 98
    .line 99
    .line 100
    move-result-wide v7

    .line 101
    shl-long v23, v9, v6

    .line 102
    .line 103
    invoke-static/range {v19 .. v24}, Leo2;->g(JJJ)J

    .line 104
    .line 105
    .line 106
    move-result-wide v9

    .line 107
    shl-long v23, v11, v6

    .line 108
    .line 109
    invoke-static/range {v19 .. v24}, Leo2;->g(JJJ)J

    .line 110
    .line 111
    .line 112
    move-result-wide v11

    .line 113
    shr-long v13, v7, v18

    .line 114
    .line 115
    const-wide/16 v19, 0x64

    .line 116
    .line 117
    cmp-long v3, v13, v19

    .line 118
    .line 119
    move/from16 p2, v1

    .line 120
    .line 121
    if-ltz v3, :cond_6

    .line 122
    .line 123
    const-wide v1, 0x19999999999999a0L

    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    invoke-static {v13, v14, v1, v2}, Lho6;->G(JJ)J

    .line 129
    .line 130
    .line 131
    move-result-wide v1

    .line 132
    const-wide/16 v19, 0xa

    .line 133
    .line 134
    mul-long v1, v1, v19

    .line 135
    .line 136
    add-long v19, v1, v19

    .line 137
    .line 138
    move-wide/from16 v21, v1

    .line 139
    .line 140
    int-to-long v1, v4

    .line 141
    add-long v23, v9, v1

    .line 142
    .line 143
    shl-long v25, v21, v18

    .line 144
    .line 145
    cmp-long v3, v23, v25

    .line 146
    .line 147
    if-gtz v3, :cond_3

    .line 148
    .line 149
    move/from16 v3, p2

    .line 150
    .line 151
    goto :goto_4

    .line 152
    :cond_3
    const/4 v3, 0x0

    .line 153
    :goto_4
    shl-long v23, v19, v18

    .line 154
    .line 155
    add-long v23, v23, v1

    .line 156
    .line 157
    cmp-long v1, v23, v11

    .line 158
    .line 159
    if-gtz v1, :cond_4

    .line 160
    .line 161
    move/from16 v1, p2

    .line 162
    .line 163
    goto :goto_5

    .line 164
    :cond_4
    const/4 v1, 0x0

    .line 165
    :goto_5
    if-eq v3, v1, :cond_6

    .line 166
    .line 167
    if-eqz v3, :cond_5

    .line 168
    .line 169
    move-wide/from16 v1, v21

    .line 170
    .line 171
    goto :goto_6

    .line 172
    :cond_5
    move-wide/from16 v1, v19

    .line 173
    .line 174
    :goto_6
    invoke-virtual {v0, v5, v1, v2}, Leo2;->h(IJ)V

    .line 175
    .line 176
    .line 177
    return-void

    .line 178
    :cond_6
    add-long v1, v13, v16

    .line 179
    .line 180
    int-to-long v3, v4

    .line 181
    add-long/2addr v9, v3

    .line 182
    shl-long v19, v13, v18

    .line 183
    .line 184
    cmp-long v6, v9, v19

    .line 185
    .line 186
    if-gtz v6, :cond_7

    .line 187
    .line 188
    move/from16 v6, p2

    .line 189
    .line 190
    goto :goto_7

    .line 191
    :cond_7
    const/4 v6, 0x0

    .line 192
    :goto_7
    shl-long v9, v1, v18

    .line 193
    .line 194
    add-long/2addr v9, v3

    .line 195
    cmp-long v3, v9, v11

    .line 196
    .line 197
    if-gtz v3, :cond_8

    .line 198
    .line 199
    move/from16 v3, p2

    .line 200
    .line 201
    goto :goto_8

    .line 202
    :cond_8
    const/4 v3, 0x0

    .line 203
    :goto_8
    if-eq v6, v3, :cond_a

    .line 204
    .line 205
    if-eqz v6, :cond_9

    .line 206
    .line 207
    goto :goto_9

    .line 208
    :cond_9
    move-wide v13, v1

    .line 209
    :goto_9
    add-int v5, v5, p4

    .line 210
    .line 211
    invoke-virtual {v0, v5, v13, v14}, Leo2;->h(IJ)V

    .line 212
    .line 213
    .line 214
    return-void

    .line 215
    :cond_a
    add-long v3, v13, v1

    .line 216
    .line 217
    shl-long v3, v3, p2

    .line 218
    .line 219
    sub-long/2addr v7, v3

    .line 220
    const-wide/16 v3, 0x0

    .line 221
    .line 222
    cmp-long v6, v7, v3

    .line 223
    .line 224
    if-ltz v6, :cond_c

    .line 225
    .line 226
    if-nez v6, :cond_b

    .line 227
    .line 228
    and-long v6, v13, v16

    .line 229
    .line 230
    cmp-long v3, v6, v3

    .line 231
    .line 232
    if-nez v3, :cond_b

    .line 233
    .line 234
    goto :goto_a

    .line 235
    :cond_b
    move-wide v13, v1

    .line 236
    :cond_c
    :goto_a
    add-int v5, v5, p4

    .line 237
    .line 238
    invoke-virtual {v0, v5, v13, v14}, Leo2;->h(IJ)V

    .line 239
    .line 240
    .line 241
    return-void
.end method
