.class public final Lm03;
.super Ljava/io/InputStream;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Ljava/io/BufferedInputStream;

.field public b:Lhr0;

.field public final c:I

.field public final d:I

.field public final e:I

.field public f:Lkm5;

.field public k:Lkm5;

.field public n:Lkm5;

.field public final p:Lk71;


# direct methods
.method public constructor <init>(IILjava/io/BufferedInputStream;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lk71;

    .line 5
    .line 6
    invoke-direct {v0}, Lk71;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lm03;->p:Lk71;

    .line 10
    .line 11
    const/16 v0, 0x1000

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-eq p1, v0, :cond_1

    .line 15
    .line 16
    const/16 v0, 0x2000

    .line 17
    .line 18
    if-ne p1, v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const-string p0, "The dictionary size must be 4096 or 8192"

    .line 22
    .line 23
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw v1

    .line 27
    :cond_1
    :goto_0
    const/4 v0, 0x2

    .line 28
    if-eq p2, v0, :cond_3

    .line 29
    .line 30
    const/4 v0, 0x3

    .line 31
    if-ne p2, v0, :cond_2

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_2
    const-string p0, "The number of trees must be 2 or 3"

    .line 35
    .line 36
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw v1

    .line 40
    :cond_3
    :goto_1
    iput p1, p0, Lm03;->c:I

    .line 41
    .line 42
    iput p2, p0, Lm03;->d:I

    .line 43
    .line 44
    iput p2, p0, Lm03;->e:I

    .line 45
    .line 46
    iput-object p3, p0, Lm03;->a:Ljava/io/BufferedInputStream;

    .line 47
    .line 48
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    .line 1
    iget-object v0, p0, Lm03;->b:Lhr0;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-static {}, Lwu0;->b()Lvu0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lha1;

    .line 10
    .line 11
    iget-object v2, p0, Lm03;->a:Ljava/io/BufferedInputStream;

    .line 12
    .line 13
    invoke-direct {v1, v2}, Lka6;-><init>(Ljava/io/InputStream;)V

    .line 14
    .line 15
    .line 16
    new-instance v3, Ly4;

    .line 17
    .line 18
    invoke-direct {v3, v1}, Ly4;-><init>(Ljava/io/InputStream;)V

    .line 19
    .line 20
    .line 21
    iput-object v3, v0, Ll5;->k:Ly4;

    .line 22
    .line 23
    new-instance v1, Lwu0;

    .line 24
    .line 25
    invoke-direct {v1, v0}, Lwu0;-><init>(Lvu0;)V

    .line 26
    .line 27
    .line 28
    :try_start_0
    iget v0, p0, Lm03;->d:I

    .line 29
    .line 30
    const/4 v3, 0x3

    .line 31
    if-ne v0, v3, :cond_0

    .line 32
    .line 33
    const/16 v0, 0x100

    .line 34
    .line 35
    invoke-static {v1, v0}, Lkm5;->k(Lwu0;I)Lkm5;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iput-object v0, p0, Lm03;->f:Lkm5;

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    :goto_0
    const/16 v0, 0x40

    .line 45
    .line 46
    invoke-static {v1, v0}, Lkm5;->k(Lwu0;I)Lkm5;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    iput-object v3, p0, Lm03;->k:Lkm5;

    .line 51
    .line 52
    invoke-static {v1, v0}, Lkm5;->k(Lwu0;I)Lkm5;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iput-object v0, p0, Lm03;->n:Lkm5;

    .line 57
    .line 58
    invoke-virtual {v1}, Lwu0;->g()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Lwu0;->close()V

    .line 62
    .line 63
    .line 64
    new-instance v0, Lhr0;

    .line 65
    .line 66
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 67
    .line 68
    invoke-direct {v0, v2, v1}, Lgr0;-><init>(Ljava/io/InputStream;Ljava/nio/ByteOrder;)V

    .line 69
    .line 70
    .line 71
    iput-object v0, p0, Lm03;->b:Lhr0;

    .line 72
    .line 73
    goto :goto_3

    .line 74
    :goto_1
    :try_start_1
    invoke-virtual {v1}, Lwu0;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 75
    .line 76
    .line 77
    goto :goto_2

    .line 78
    :catchall_1
    move-exception v0

    .line 79
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 80
    .line 81
    .line 82
    :goto_2
    throw p0

    .line 83
    :cond_1
    :goto_3
    iget-object v0, p0, Lm03;->b:Lhr0;

    .line 84
    .line 85
    const/4 v1, 0x1

    .line 86
    invoke-virtual {v0, v1}, Lgr0;->a(I)J

    .line 87
    .line 88
    .line 89
    move-result-wide v2

    .line 90
    long-to-int v0, v2

    .line 91
    const/4 v2, -0x1

    .line 92
    if-ne v0, v2, :cond_2

    .line 93
    .line 94
    goto/16 :goto_7

    .line 95
    .line 96
    :cond_2
    const v3, 0x8000

    .line 97
    .line 98
    .line 99
    iget-object v4, p0, Lm03;->p:Lk71;

    .line 100
    .line 101
    const/16 v5, 0x8

    .line 102
    .line 103
    if-ne v0, v1, :cond_5

    .line 104
    .line 105
    iget-object v0, p0, Lm03;->f:Lkm5;

    .line 106
    .line 107
    iget-object p0, p0, Lm03;->b:Lhr0;

    .line 108
    .line 109
    if-eqz v0, :cond_3

    .line 110
    .line 111
    invoke-virtual {v0, p0}, Lkm5;->s(Lhr0;)I

    .line 112
    .line 113
    .line 114
    move-result p0

    .line 115
    goto :goto_4

    .line 116
    :cond_3
    invoke-virtual {p0, v5}, Lgr0;->a(I)J

    .line 117
    .line 118
    .line 119
    move-result-wide v5

    .line 120
    long-to-int p0, v5

    .line 121
    :goto_4
    if-ne p0, v2, :cond_4

    .line 122
    .line 123
    goto :goto_7

    .line 124
    :cond_4
    iget-object v0, v4, Lk71;->a:[B

    .line 125
    .line 126
    iget v2, v4, Lk71;->c:I

    .line 127
    .line 128
    int-to-byte p0, p0

    .line 129
    aput-byte p0, v0, v2

    .line 130
    .line 131
    add-int/2addr v2, v1

    .line 132
    rem-int/2addr v2, v3

    .line 133
    iput v2, v4, Lk71;->c:I

    .line 134
    .line 135
    return-void

    .line 136
    :cond_5
    iget v0, p0, Lm03;->c:I

    .line 137
    .line 138
    const/16 v6, 0x1000

    .line 139
    .line 140
    if-ne v0, v6, :cond_6

    .line 141
    .line 142
    const/4 v0, 0x6

    .line 143
    goto :goto_5

    .line 144
    :cond_6
    const/4 v0, 0x7

    .line 145
    :goto_5
    iget-object v6, p0, Lm03;->b:Lhr0;

    .line 146
    .line 147
    invoke-virtual {v6, v0}, Lhr0;->g(I)J

    .line 148
    .line 149
    .line 150
    move-result-wide v6

    .line 151
    long-to-int v6, v6

    .line 152
    iget-object v7, p0, Lm03;->n:Lkm5;

    .line 153
    .line 154
    iget-object v8, p0, Lm03;->b:Lhr0;

    .line 155
    .line 156
    invoke-virtual {v7, v8}, Lkm5;->s(Lhr0;)I

    .line 157
    .line 158
    .line 159
    move-result v7

    .line 160
    if-ne v7, v2, :cond_7

    .line 161
    .line 162
    if-gtz v6, :cond_7

    .line 163
    .line 164
    goto :goto_7

    .line 165
    :cond_7
    shl-int v0, v7, v0

    .line 166
    .line 167
    or-int/2addr v0, v6

    .line 168
    iget-object v2, p0, Lm03;->k:Lkm5;

    .line 169
    .line 170
    iget-object v6, p0, Lm03;->b:Lhr0;

    .line 171
    .line 172
    invoke-virtual {v2, v6}, Lkm5;->s(Lhr0;)I

    .line 173
    .line 174
    .line 175
    move-result v2

    .line 176
    const/16 v6, 0x3f

    .line 177
    .line 178
    if-ne v2, v6, :cond_9

    .line 179
    .line 180
    iget-object v6, p0, Lm03;->b:Lhr0;

    .line 181
    .line 182
    invoke-virtual {v6, v5}, Lhr0;->g(I)J

    .line 183
    .line 184
    .line 185
    move-result-wide v5

    .line 186
    const-wide/16 v7, -0x1

    .line 187
    .line 188
    cmp-long v7, v5, v7

    .line 189
    .line 190
    if-nez v7, :cond_8

    .line 191
    .line 192
    goto :goto_7

    .line 193
    :cond_8
    invoke-static {v2, v5, v6}, Lbb9;->f(IJ)I

    .line 194
    .line 195
    .line 196
    move-result v2

    .line 197
    :cond_9
    iget p0, p0, Lm03;->e:I

    .line 198
    .line 199
    add-int/2addr v2, p0

    .line 200
    add-int/2addr v0, v1

    .line 201
    iget p0, v4, Lk71;->c:I

    .line 202
    .line 203
    sub-int/2addr p0, v0

    .line 204
    add-int/2addr v2, p0

    .line 205
    :goto_6
    if-ge p0, v2, :cond_a

    .line 206
    .line 207
    iget-object v0, v4, Lk71;->a:[B

    .line 208
    .line 209
    iget v5, v4, Lk71;->c:I

    .line 210
    .line 211
    add-int v6, p0, v3

    .line 212
    .line 213
    rem-int/2addr v6, v3

    .line 214
    aget-byte v6, v0, v6

    .line 215
    .line 216
    aput-byte v6, v0, v5

    .line 217
    .line 218
    add-int/2addr v5, v1

    .line 219
    rem-int/2addr v5, v3

    .line 220
    iput v5, v4, Lk71;->c:I

    .line 221
    .line 222
    add-int/lit8 p0, p0, 0x1

    .line 223
    .line 224
    goto :goto_6

    .line 225
    :cond_a
    :goto_7
    return-void
.end method

.method public final close()V
    .locals 0

    .line 1
    iget-object p0, p0, Lm03;->a:Ljava/io/BufferedInputStream;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final read()I
    .locals 3

    .line 1
    iget-object v0, p0, Lm03;->p:Lk71;

    .line 2
    .line 3
    iget v1, v0, Lk71;->b:I

    .line 4
    .line 5
    iget v2, v0, Lk71;->c:I

    .line 6
    .line 7
    if-eq v1, v2, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lm03;->a()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    :goto_0
    iget p0, v0, Lk71;->b:I

    .line 14
    .line 15
    iget v1, v0, Lk71;->c:I

    .line 16
    .line 17
    if-eq p0, v1, :cond_1

    .line 18
    .line 19
    iget-object v1, v0, Lk71;->a:[B

    .line 20
    .line 21
    aget-byte v1, v1, p0

    .line 22
    .line 23
    add-int/lit8 p0, p0, 0x1

    .line 24
    .line 25
    const v2, 0x8000

    .line 26
    .line 27
    .line 28
    rem-int/2addr p0, v2

    .line 29
    iput p0, v0, Lk71;->b:I

    .line 30
    .line 31
    and-int/lit16 p0, v1, 0xff

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    const/4 p0, -0x1

    .line 35
    :goto_1
    return p0

    .line 36
    :catch_0
    move-exception p0

    .line 37
    new-instance v0, Ljava/io/IOException;

    .line 38
    .line 39
    const-string v1, "bad IMPLODE stream"

    .line 40
    .line 41
    invoke-direct {v0, v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    .line 43
    .line 44
    throw v0
.end method
