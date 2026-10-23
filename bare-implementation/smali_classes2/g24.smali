.class public final Lg24;
.super Laq4;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final l:Lx24;

.field public final m:[I

.field public final n:Lnn1;

.field public final o:I

.field public final p:I

.field public q:I

.field public r:I


# direct methods
.method public constructor <init>(IIIIILv40;)V
    .locals 6

    .line 1
    move-object v0, p0

    .line 2
    move v1, p1

    .line 3
    move v2, p2

    .line 4
    move v3, p3

    .line 5
    move v4, p4

    .line 6
    move-object v5, p6

    .line 7
    invoke-direct/range {v0 .. v5}, Laq4;-><init>(IIIILv40;)V

    .line 8
    .line 9
    .line 10
    const/4 p0, -0x1

    .line 11
    iput p0, v0, Lg24;->q:I

    .line 12
    .line 13
    new-instance p0, Lx24;

    .line 14
    .line 15
    invoke-direct {p0, v1, v5}, Lx24;-><init>(ILv40;)V

    .line 16
    .line 17
    .line 18
    iput-object p0, v0, Lg24;->l:Lx24;

    .line 19
    .line 20
    add-int/lit8 p1, v1, 0x1

    .line 21
    .line 22
    iput p1, v0, Lg24;->p:I

    .line 23
    .line 24
    const/4 p0, 0x0

    .line 25
    invoke-virtual {v5, p1, p0}, Lv40;->b(IZ)[I

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    iput-object p0, v0, Lg24;->m:[I

    .line 30
    .line 31
    iput p1, v0, Lg24;->r:I

    .line 32
    .line 33
    new-instance p0, Lnn1;

    .line 34
    .line 35
    add-int/lit8 p4, v4, -0x1

    .line 36
    .line 37
    invoke-direct {p0, p4}, Lnn1;-><init>(I)V

    .line 38
    .line 39
    .line 40
    iput-object p0, v0, Lg24;->n:Lnn1;

    .line 41
    .line 42
    if-lez p5, :cond_0

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    div-int/lit8 p4, v4, 0x4

    .line 46
    .line 47
    add-int/lit8 p5, p4, 0x4

    .line 48
    .line 49
    :goto_0
    iput p5, v0, Lg24;->o:I

    .line 50
    .line 51
    return-void
.end method


# virtual methods
.method public final d()Lnn1;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lg24;->n:Lnn1;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput v2, v1, Lnn1;->a:I

    .line 7
    .line 8
    iget-object v3, v1, Lnn1;->c:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v3, [I

    .line 11
    .line 12
    iget-object v4, v1, Lnn1;->b:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v4, [I

    .line 15
    .line 16
    invoke-virtual {v0}, Lg24;->j()I

    .line 17
    .line 18
    .line 19
    move-result v5

    .line 20
    iget v6, v0, Laq4;->c:I

    .line 21
    .line 22
    iget v7, v0, Laq4;->d:I

    .line 23
    .line 24
    if-ge v5, v6, :cond_1

    .line 25
    .line 26
    if-nez v5, :cond_0

    .line 27
    .line 28
    goto/16 :goto_7

    .line 29
    .line 30
    :cond_0
    if-le v7, v5, :cond_2

    .line 31
    .line 32
    move v7, v5

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    move v5, v6

    .line 35
    :cond_2
    :goto_0
    iget v6, v0, Laq4;->g:I

    .line 36
    .line 37
    iget-object v8, v0, Lg24;->l:Lx24;

    .line 38
    .line 39
    iget-object v9, v0, Laq4;->e:[B

    .line 40
    .line 41
    invoke-virtual {v8, v9, v6}, Lx24;->a([BI)V

    .line 42
    .line 43
    .line 44
    iget v6, v0, Lg24;->r:I

    .line 45
    .line 46
    iget-object v10, v8, Lx24;->b:[I

    .line 47
    .line 48
    iget v11, v8, Lx24;->f:I

    .line 49
    .line 50
    aget v10, v10, v11

    .line 51
    .line 52
    sub-int v10, v6, v10

    .line 53
    .line 54
    iget-object v11, v8, Lx24;->c:[I

    .line 55
    .line 56
    iget v12, v8, Lx24;->g:I

    .line 57
    .line 58
    aget v11, v11, v12

    .line 59
    .line 60
    sub-int v11, v6, v11

    .line 61
    .line 62
    iget-object v12, v8, Lx24;->d:[I

    .line 63
    .line 64
    iget v13, v8, Lx24;->h:I

    .line 65
    .line 66
    aget v12, v12, v13

    .line 67
    .line 68
    invoke-virtual {v8, v6}, Lx24;->b(I)V

    .line 69
    .line 70
    .line 71
    iget v6, v0, Lg24;->q:I

    .line 72
    .line 73
    iget-object v8, v0, Lg24;->m:[I

    .line 74
    .line 75
    aput v12, v8, v6

    .line 76
    .line 77
    iget v6, v0, Lg24;->p:I

    .line 78
    .line 79
    const/4 v13, 0x1

    .line 80
    if-ge v10, v6, :cond_3

    .line 81
    .line 82
    iget v14, v0, Laq4;->g:I

    .line 83
    .line 84
    sub-int v15, v14, v10

    .line 85
    .line 86
    aget-byte v15, v9, v15

    .line 87
    .line 88
    aget-byte v14, v9, v14

    .line 89
    .line 90
    if-ne v15, v14, :cond_3

    .line 91
    .line 92
    const/4 v14, 0x2

    .line 93
    aput v14, v4, v2

    .line 94
    .line 95
    add-int/lit8 v15, v10, -0x1

    .line 96
    .line 97
    aput v15, v3, v2

    .line 98
    .line 99
    iput v13, v1, Lnn1;->a:I

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_3
    move v14, v2

    .line 103
    :goto_1
    const/4 v15, 0x3

    .line 104
    if-eq v10, v11, :cond_4

    .line 105
    .line 106
    if-ge v11, v6, :cond_4

    .line 107
    .line 108
    iget v2, v0, Laq4;->g:I

    .line 109
    .line 110
    sub-int v16, v2, v11

    .line 111
    .line 112
    move/from16 v17, v13

    .line 113
    .line 114
    aget-byte v13, v9, v16

    .line 115
    .line 116
    aget-byte v2, v9, v2

    .line 117
    .line 118
    if-ne v13, v2, :cond_5

    .line 119
    .line 120
    iget v2, v1, Lnn1;->a:I

    .line 121
    .line 122
    add-int/lit8 v10, v2, 0x1

    .line 123
    .line 124
    iput v10, v1, Lnn1;->a:I

    .line 125
    .line 126
    add-int/lit8 v10, v11, -0x1

    .line 127
    .line 128
    aput v10, v3, v2

    .line 129
    .line 130
    move v10, v11

    .line 131
    move v14, v15

    .line 132
    goto :goto_2

    .line 133
    :cond_4
    move/from16 v17, v13

    .line 134
    .line 135
    :cond_5
    :goto_2
    iget v2, v1, Lnn1;->a:I

    .line 136
    .line 137
    if-lez v2, :cond_6

    .line 138
    .line 139
    iget v2, v0, Laq4;->g:I

    .line 140
    .line 141
    invoke-static {v9, v2, v10, v14, v5}, Lrs9;->g([BIIII)I

    .line 142
    .line 143
    .line 144
    move-result v14

    .line 145
    iget v2, v1, Lnn1;->a:I

    .line 146
    .line 147
    add-int/lit8 v2, v2, -0x1

    .line 148
    .line 149
    aput v14, v4, v2

    .line 150
    .line 151
    if-lt v14, v7, :cond_6

    .line 152
    .line 153
    goto :goto_7

    .line 154
    :cond_6
    if-ge v14, v15, :cond_7

    .line 155
    .line 156
    goto :goto_3

    .line 157
    :cond_7
    move v15, v14

    .line 158
    :goto_3
    iget v2, v0, Lg24;->o:I

    .line 159
    .line 160
    :goto_4
    iget v10, v0, Lg24;->r:I

    .line 161
    .line 162
    sub-int/2addr v10, v12

    .line 163
    add-int/lit8 v11, v2, -0x1

    .line 164
    .line 165
    if-eqz v2, :cond_d

    .line 166
    .line 167
    if-lt v10, v6, :cond_8

    .line 168
    .line 169
    goto :goto_7

    .line 170
    :cond_8
    iget v2, v0, Lg24;->q:I

    .line 171
    .line 172
    sub-int v12, v2, v10

    .line 173
    .line 174
    if-le v10, v2, :cond_9

    .line 175
    .line 176
    move v2, v6

    .line 177
    goto :goto_5

    .line 178
    :cond_9
    const/4 v2, 0x0

    .line 179
    :goto_5
    add-int/2addr v12, v2

    .line 180
    aget v12, v8, v12

    .line 181
    .line 182
    iget v2, v0, Laq4;->g:I

    .line 183
    .line 184
    add-int v13, v2, v15

    .line 185
    .line 186
    sub-int v14, v13, v10

    .line 187
    .line 188
    aget-byte v14, v9, v14

    .line 189
    .line 190
    aget-byte v13, v9, v13

    .line 191
    .line 192
    if-ne v14, v13, :cond_b

    .line 193
    .line 194
    sub-int v13, v2, v10

    .line 195
    .line 196
    aget-byte v13, v9, v13

    .line 197
    .line 198
    aget-byte v14, v9, v2

    .line 199
    .line 200
    if-ne v13, v14, :cond_b

    .line 201
    .line 202
    move/from16 v13, v17

    .line 203
    .line 204
    invoke-static {v9, v2, v10, v13, v5}, Lrs9;->g([BIIII)I

    .line 205
    .line 206
    .line 207
    move-result v2

    .line 208
    if-le v2, v15, :cond_c

    .line 209
    .line 210
    iget v14, v1, Lnn1;->a:I

    .line 211
    .line 212
    aput v2, v4, v14

    .line 213
    .line 214
    add-int/lit8 v10, v10, -0x1

    .line 215
    .line 216
    aput v10, v3, v14

    .line 217
    .line 218
    add-int/2addr v14, v13

    .line 219
    iput v14, v1, Lnn1;->a:I

    .line 220
    .line 221
    if-lt v2, v7, :cond_a

    .line 222
    .line 223
    goto :goto_7

    .line 224
    :cond_a
    move v15, v2

    .line 225
    goto :goto_6

    .line 226
    :cond_b
    move/from16 v13, v17

    .line 227
    .line 228
    :cond_c
    :goto_6
    move v2, v11

    .line 229
    move/from16 v17, v13

    .line 230
    .line 231
    goto :goto_4

    .line 232
    :cond_d
    :goto_7
    return-object v1
.end method

.method public final h(Lv40;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lg24;->m:[I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lv40;->d([I)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lg24;->l:Lx24;

    .line 7
    .line 8
    iget-object v1, v0, Lx24;->d:[I

    .line 9
    .line 10
    invoke-virtual {p1, v1}, Lv40;->d([I)V

    .line 11
    .line 12
    .line 13
    iget-object v1, v0, Lx24;->c:[I

    .line 14
    .line 15
    invoke-virtual {p1, v1}, Lv40;->d([I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, v0, Lx24;->b:[I

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Lv40;->d([I)V

    .line 21
    .line 22
    .line 23
    iget-object p0, p0, Laq4;->e:[B

    .line 24
    .line 25
    invoke-virtual {p1, p0}, Lv40;->c([B)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final i(I)V
    .locals 4

    .line 1
    :goto_0
    add-int/lit8 v0, p1, -0x1

    .line 2
    .line 3
    if-lez p1, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Lg24;->j()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Laq4;->e:[B

    .line 12
    .line 13
    iget v1, p0, Laq4;->g:I

    .line 14
    .line 15
    iget-object v2, p0, Lg24;->l:Lx24;

    .line 16
    .line 17
    invoke-virtual {v2, p1, v1}, Lx24;->a([BI)V

    .line 18
    .line 19
    .line 20
    iget p1, p0, Lg24;->q:I

    .line 21
    .line 22
    iget-object v1, v2, Lx24;->d:[I

    .line 23
    .line 24
    iget v3, v2, Lx24;->h:I

    .line 25
    .line 26
    aget v1, v1, v3

    .line 27
    .line 28
    iget-object v3, p0, Lg24;->m:[I

    .line 29
    .line 30
    aput v1, v3, p1

    .line 31
    .line 32
    iget p1, p0, Lg24;->r:I

    .line 33
    .line 34
    invoke-virtual {v2, p1}, Lx24;->b(I)V

    .line 35
    .line 36
    .line 37
    :cond_0
    move p1, v0

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    return-void
.end method

.method public final j()I
    .locals 6

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, v0}, Laq4;->e(I)I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget v1, p0, Lg24;->r:I

    .line 9
    .line 10
    add-int/lit8 v1, v1, 0x1

    .line 11
    .line 12
    iput v1, p0, Lg24;->r:I

    .line 13
    .line 14
    const v2, 0x7fffffff

    .line 15
    .line 16
    .line 17
    iget v3, p0, Lg24;->p:I

    .line 18
    .line 19
    if-ne v1, v2, :cond_0

    .line 20
    .line 21
    sub-int/2addr v2, v3

    .line 22
    iget-object v1, p0, Lg24;->l:Lx24;

    .line 23
    .line 24
    iget-object v4, v1, Lx24;->b:[I

    .line 25
    .line 26
    const/16 v5, 0x400

    .line 27
    .line 28
    invoke-static {v5, v2, v4}, Laq4;->f(II[I)V

    .line 29
    .line 30
    .line 31
    iget-object v4, v1, Lx24;->c:[I

    .line 32
    .line 33
    const/high16 v5, 0x10000

    .line 34
    .line 35
    invoke-static {v5, v2, v4}, Laq4;->f(II[I)V

    .line 36
    .line 37
    .line 38
    iget-object v4, v1, Lx24;->d:[I

    .line 39
    .line 40
    iget v1, v1, Lx24;->e:I

    .line 41
    .line 42
    invoke-static {v1, v2, v4}, Laq4;->f(II[I)V

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Lg24;->m:[I

    .line 46
    .line 47
    invoke-static {v3, v2, v1}, Laq4;->f(II[I)V

    .line 48
    .line 49
    .line 50
    iget v1, p0, Lg24;->r:I

    .line 51
    .line 52
    sub-int/2addr v1, v2

    .line 53
    iput v1, p0, Lg24;->r:I

    .line 54
    .line 55
    :cond_0
    iget v1, p0, Lg24;->q:I

    .line 56
    .line 57
    add-int/lit8 v1, v1, 0x1

    .line 58
    .line 59
    iput v1, p0, Lg24;->q:I

    .line 60
    .line 61
    if-ne v1, v3, :cond_1

    .line 62
    .line 63
    const/4 v1, 0x0

    .line 64
    iput v1, p0, Lg24;->q:I

    .line 65
    .line 66
    :cond_1
    return v0
.end method
