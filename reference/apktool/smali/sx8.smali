.class public final Lsx8;
.super Ly0;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:[B

.field public final d:[B

.field public final e:[B

.field public final f:[B

.field public final k:I

.field public final n:[B


# direct methods
.method public constructor <init>(I[B[B[B[B[B)V
    .locals 1

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 240
    iput v0, p0, Lsx8;->a:I

    iput p1, p0, Lsx8;->b:I

    invoke-static {p2}, Lms8;->k([B)[B

    move-result-object p1

    iput-object p1, p0, Lsx8;->c:[B

    invoke-static {p3}, Lms8;->k([B)[B

    move-result-object p1

    iput-object p1, p0, Lsx8;->d:[B

    invoke-static {p4}, Lms8;->k([B)[B

    move-result-object p1

    iput-object p1, p0, Lsx8;->e:[B

    invoke-static {p5}, Lms8;->k([B)[B

    move-result-object p1

    iput-object p1, p0, Lsx8;->f:[B

    invoke-static {p6}, Lms8;->k([B)[B

    move-result-object p1

    iput-object p1, p0, Lsx8;->n:[B

    const/4 p1, -0x1

    iput p1, p0, Lsx8;->k:I

    return-void
.end method

.method public constructor <init>(I[B[B[B[B[BI)V
    .locals 1

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 238
    iput v0, p0, Lsx8;->a:I

    iput p1, p0, Lsx8;->b:I

    invoke-static {p2}, Lms8;->k([B)[B

    move-result-object p1

    iput-object p1, p0, Lsx8;->c:[B

    invoke-static {p3}, Lms8;->k([B)[B

    move-result-object p1

    iput-object p1, p0, Lsx8;->d:[B

    invoke-static {p4}, Lms8;->k([B)[B

    move-result-object p1

    iput-object p1, p0, Lsx8;->e:[B

    invoke-static {p5}, Lms8;->k([B)[B

    move-result-object p1

    iput-object p1, p0, Lsx8;->f:[B

    invoke-static {p6}, Lms8;->k([B)[B

    move-result-object p1

    iput-object p1, p0, Lsx8;->n:[B

    iput p7, p0, Lsx8;->k:I

    return-void
.end method

.method public constructor <init>(Lv1;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, v0}, Lv1;->C(I)Lb0;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Lt0;->x(Ljava/lang/Object;)Lt0;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1, v0}, Lt0;->y(I)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x0

    .line 18
    const/4 v4, 0x1

    .line 19
    if-nez v2, :cond_1

    .line 20
    .line 21
    invoke-virtual {v1, v4}, Lt0;->y(I)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const-string p0, "unknown version of sequence"

    .line 29
    .line 30
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw v3

    .line 34
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lt0;->C()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    iput v1, p0, Lsx8;->a:I

    .line 39
    .line 40
    invoke-virtual {p1}, Lv1;->size()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    const/4 v2, 0x3

    .line 45
    const/4 v5, 0x2

    .line 46
    if-eq v1, v5, :cond_3

    .line 47
    .line 48
    invoke-virtual {p1}, Lv1;->size()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-ne v1, v2, :cond_2

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    const-string p0, "key sequence wrong size"

    .line 56
    .line 57
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw v3

    .line 61
    :cond_3
    :goto_1
    invoke-virtual {p1, v4}, Lv1;->C(I)Lb0;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-static {v1}, Lv1;->B(Ljava/lang/Object;)Lv1;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v1, v0}, Lv1;->C(I)Lb0;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    invoke-static {v6}, Lt0;->x(Ljava/lang/Object;)Lt0;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    invoke-virtual {v6}, Lt0;->C()I

    .line 78
    .line 79
    .line 80
    move-result v6

    .line 81
    iput v6, p0, Lsx8;->b:I

    .line 82
    .line 83
    invoke-virtual {v1, v4}, Lv1;->C(I)Lb0;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    invoke-static {v6}, Lj1;->x(Ljava/lang/Object;)Lj1;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    iget-object v6, v6, Lj1;->a:[B

    .line 92
    .line 93
    invoke-static {v6}, Lms8;->k([B)[B

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    iput-object v6, p0, Lsx8;->c:[B

    .line 98
    .line 99
    invoke-virtual {v1, v5}, Lv1;->C(I)Lb0;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    invoke-static {v6}, Lj1;->x(Ljava/lang/Object;)Lj1;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    iget-object v6, v6, Lj1;->a:[B

    .line 108
    .line 109
    invoke-static {v6}, Lms8;->k([B)[B

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    iput-object v6, p0, Lsx8;->d:[B

    .line 114
    .line 115
    invoke-virtual {v1, v2}, Lv1;->C(I)Lb0;

    .line 116
    .line 117
    .line 118
    move-result-object v6

    .line 119
    invoke-static {v6}, Lj1;->x(Ljava/lang/Object;)Lj1;

    .line 120
    .line 121
    .line 122
    move-result-object v6

    .line 123
    iget-object v6, v6, Lj1;->a:[B

    .line 124
    .line 125
    invoke-static {v6}, Lms8;->k([B)[B

    .line 126
    .line 127
    .line 128
    move-result-object v6

    .line 129
    iput-object v6, p0, Lsx8;->e:[B

    .line 130
    .line 131
    const/4 v6, 0x4

    .line 132
    invoke-virtual {v1, v6}, Lv1;->C(I)Lb0;

    .line 133
    .line 134
    .line 135
    move-result-object v6

    .line 136
    invoke-static {v6}, Lj1;->x(Ljava/lang/Object;)Lj1;

    .line 137
    .line 138
    .line 139
    move-result-object v6

    .line 140
    iget-object v6, v6, Lj1;->a:[B

    .line 141
    .line 142
    invoke-static {v6}, Lms8;->k([B)[B

    .line 143
    .line 144
    .line 145
    move-result-object v6

    .line 146
    iput-object v6, p0, Lsx8;->f:[B

    .line 147
    .line 148
    invoke-virtual {v1}, Lv1;->size()I

    .line 149
    .line 150
    .line 151
    move-result v6

    .line 152
    const/4 v7, 0x6

    .line 153
    const/4 v8, 0x5

    .line 154
    if-ne v6, v7, :cond_5

    .line 155
    .line 156
    invoke-virtual {v1, v8}, Lv1;->C(I)Lb0;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-static {v1}, Lq2;->x(Ljava/lang/Object;)Lq2;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    iget v6, v1, Lq2;->c:I

    .line 165
    .line 166
    if-nez v6, :cond_4

    .line 167
    .line 168
    sget-object v6, Lt0;->c:Lq0;

    .line 169
    .line 170
    invoke-virtual {v6, v1, v0}, Lol1;->r(Lq2;Z)Lq1;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    check-cast v0, Lt0;

    .line 175
    .line 176
    invoke-virtual {v0}, Lt0;->C()I

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    :goto_2
    iput v0, p0, Lsx8;->k:I

    .line 181
    .line 182
    goto :goto_3

    .line 183
    :cond_4
    const-string p0, "unknown tag in XMSSPrivateKey"

    .line 184
    .line 185
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    throw v3

    .line 189
    :cond_5
    invoke-virtual {v1}, Lv1;->size()I

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    if-ne v0, v8, :cond_7

    .line 194
    .line 195
    const/4 v0, -0x1

    .line 196
    goto :goto_2

    .line 197
    :goto_3
    invoke-virtual {p1}, Lv1;->size()I

    .line 198
    .line 199
    .line 200
    move-result v0

    .line 201
    if-ne v0, v2, :cond_6

    .line 202
    .line 203
    invoke-virtual {p1, v5}, Lv1;->C(I)Lb0;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    invoke-static {p1}, Lq2;->x(Ljava/lang/Object;)Lq2;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    sget-object v0, Lj1;->b:Lk0;

    .line 212
    .line 213
    invoke-virtual {v0, p1, v4}, Lol1;->r(Lq2;Z)Lq1;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    check-cast p1, Lj1;

    .line 218
    .line 219
    iget-object p1, p1, Lj1;->a:[B

    .line 220
    .line 221
    invoke-static {p1}, Lms8;->k([B)[B

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    iput-object p1, p0, Lsx8;->n:[B

    .line 226
    .line 227
    return-void

    .line 228
    :cond_6
    iput-object v3, p0, Lsx8;->n:[B

    .line 229
    .line 230
    return-void

    .line 231
    :cond_7
    const-string p0, "keySeq should be 5 or 6 in length"

    .line 232
    .line 233
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    throw v3
.end method


# virtual methods
.method public final d()Lq1;
    .locals 8

    .line 1
    new-instance v0, Lc0;

    .line 2
    .line 3
    invoke-direct {v0}, Lc0;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lsx8;->k:I

    .line 7
    .line 8
    new-instance v2, Lt0;

    .line 9
    .line 10
    if-ltz v1, :cond_0

    .line 11
    .line 12
    const-wide/16 v3, 0x1

    .line 13
    .line 14
    invoke-direct {v2, v3, v4}, Lt0;-><init>(J)V

    .line 15
    .line 16
    .line 17
    :goto_0
    invoke-virtual {v0, v2}, Lc0;->a(Lb0;)V

    .line 18
    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    const-wide/16 v3, 0x0

    .line 22
    .line 23
    invoke-direct {v2, v3, v4}, Lt0;-><init>(J)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :goto_1
    new-instance v2, Lc0;

    .line 28
    .line 29
    invoke-direct {v2}, Lc0;-><init>()V

    .line 30
    .line 31
    .line 32
    new-instance v3, Lt0;

    .line 33
    .line 34
    iget v4, p0, Lsx8;->b:I

    .line 35
    .line 36
    int-to-long v4, v4

    .line 37
    invoke-direct {v3, v4, v5}, Lt0;-><init>(J)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v3}, Lc0;->a(Lb0;)V

    .line 41
    .line 42
    .line 43
    new-instance v3, Lp82;

    .line 44
    .line 45
    iget-object v4, p0, Lsx8;->c:[B

    .line 46
    .line 47
    invoke-direct {v3, v4}, Lj1;-><init>([B)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, v3}, Lc0;->a(Lb0;)V

    .line 51
    .line 52
    .line 53
    new-instance v3, Lp82;

    .line 54
    .line 55
    iget-object v4, p0, Lsx8;->d:[B

    .line 56
    .line 57
    invoke-direct {v3, v4}, Lj1;-><init>([B)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, v3}, Lc0;->a(Lb0;)V

    .line 61
    .line 62
    .line 63
    new-instance v3, Lp82;

    .line 64
    .line 65
    iget-object v4, p0, Lsx8;->e:[B

    .line 66
    .line 67
    invoke-direct {v3, v4}, Lj1;-><init>([B)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2, v3}, Lc0;->a(Lb0;)V

    .line 71
    .line 72
    .line 73
    new-instance v3, Lp82;

    .line 74
    .line 75
    iget-object v4, p0, Lsx8;->f:[B

    .line 76
    .line 77
    invoke-direct {v3, v4}, Lj1;-><init>([B)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, v3}, Lc0;->a(Lb0;)V

    .line 81
    .line 82
    .line 83
    const/4 v3, 0x0

    .line 84
    if-ltz v1, :cond_1

    .line 85
    .line 86
    new-instance v4, Lw82;

    .line 87
    .line 88
    new-instance v5, Lt0;

    .line 89
    .line 90
    int-to-long v6, v1

    .line 91
    invoke-direct {v5, v6, v7}, Lt0;-><init>(J)V

    .line 92
    .line 93
    .line 94
    invoke-direct {v4, v3, v3, v5}, Lq2;-><init>(ZILb0;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2, v4}, Lc0;->a(Lb0;)V

    .line 98
    .line 99
    .line 100
    :cond_1
    new-instance v1, Lt82;

    .line 101
    .line 102
    invoke-direct {v1, v2}, Lv1;-><init>(Lc0;)V

    .line 103
    .line 104
    .line 105
    const/4 v2, -0x1

    .line 106
    iput v2, v1, Lt82;->c:I

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Lc0;->a(Lb0;)V

    .line 109
    .line 110
    .line 111
    new-instance v1, Lw82;

    .line 112
    .line 113
    new-instance v4, Lp82;

    .line 114
    .line 115
    iget-object p0, p0, Lsx8;->n:[B

    .line 116
    .line 117
    invoke-direct {v4, p0}, Lj1;-><init>([B)V

    .line 118
    .line 119
    .line 120
    const/4 p0, 0x1

    .line 121
    invoke-direct {v1, p0, v3, v4}, Lq2;-><init>(ZILb0;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v1}, Lc0;->a(Lb0;)V

    .line 125
    .line 126
    .line 127
    new-instance p0, Lt82;

    .line 128
    .line 129
    invoke-direct {p0, v0}, Lv1;-><init>(Lc0;)V

    .line 130
    .line 131
    .line 132
    iput v2, p0, Lt82;->c:I

    .line 133
    .line 134
    return-object p0
.end method
