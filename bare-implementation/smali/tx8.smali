.class public final Ltx8;
.super Luv6;

# interfaces
.implements Lwv2;


# instance fields
.field public final c:Lrx8;

.field public final d:[B

.field public final e:[B

.field public final f:[B

.field public final k:[B

.field public volatile n:Llh0;


# direct methods
.method public constructor <init>(Lvg6;)V
    .locals 11

    .line 1
    iget-object v0, p1, Lvg6;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lrx8;

    .line 4
    .line 5
    iget-object v1, v0, Lrx8;->e:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-direct {p0, v1, v2}, Luv6;-><init>(Ljava/lang/String;Z)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Ltx8;->c:Lrx8;

    .line 12
    .line 13
    iget v1, v0, Lrx8;->f:I

    .line 14
    .line 15
    iget-object v3, p1, Lvg6;->d:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v3, [B

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    array-length v5, v3

    .line 23
    if-ne v5, v1, :cond_0

    .line 24
    .line 25
    iput-object v3, p0, Ltx8;->d:[B

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const-string p0, "size of secretKeySeed needs to be equal size of digest"

    .line 29
    .line 30
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw v4

    .line 34
    :cond_1
    new-array v5, v1, [B

    .line 35
    .line 36
    iput-object v5, p0, Ltx8;->d:[B

    .line 37
    .line 38
    :goto_0
    iget-object v5, p1, Lvg6;->e:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v5, [B

    .line 41
    .line 42
    if-eqz v5, :cond_3

    .line 43
    .line 44
    array-length v6, v5

    .line 45
    if-ne v6, v1, :cond_2

    .line 46
    .line 47
    iput-object v5, p0, Ltx8;->e:[B

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    const-string p0, "size of secretKeyPRF needs to be equal size of digest"

    .line 51
    .line 52
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw v4

    .line 56
    :cond_3
    new-array v5, v1, [B

    .line 57
    .line 58
    iput-object v5, p0, Ltx8;->e:[B

    .line 59
    .line 60
    :goto_1
    iget-object v5, p1, Lvg6;->f:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v5, [B

    .line 63
    .line 64
    if-eqz v5, :cond_5

    .line 65
    .line 66
    array-length v6, v5

    .line 67
    if-ne v6, v1, :cond_4

    .line 68
    .line 69
    iput-object v5, p0, Ltx8;->f:[B

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_4
    const-string p0, "size of publicSeed needs to be equal size of digest"

    .line 73
    .line 74
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw v4

    .line 78
    :cond_5
    new-array v6, v1, [B

    .line 79
    .line 80
    iput-object v6, p0, Ltx8;->f:[B

    .line 81
    .line 82
    :goto_2
    iget-object v6, p1, Lvg6;->g:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v6, [B

    .line 85
    .line 86
    if-eqz v6, :cond_7

    .line 87
    .line 88
    array-length v7, v6

    .line 89
    if-ne v7, v1, :cond_6

    .line 90
    .line 91
    iput-object v6, p0, Ltx8;->k:[B

    .line 92
    .line 93
    goto :goto_3

    .line 94
    :cond_6
    const-string p0, "size of root needs to be equal size of digest"

    .line 95
    .line 96
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    throw v4

    .line 100
    :cond_7
    new-array v1, v1, [B

    .line 101
    .line 102
    iput-object v1, p0, Ltx8;->k:[B

    .line 103
    .line 104
    :goto_3
    iget-object v1, p1, Lvg6;->h:Ljava/lang/Object;

    .line 105
    .line 106
    check-cast v1, Llh0;

    .line 107
    .line 108
    if-eqz v1, :cond_8

    .line 109
    .line 110
    iput-object v1, p0, Ltx8;->n:Llh0;

    .line 111
    .line 112
    goto :goto_5

    .line 113
    :cond_8
    iget v1, p1, Lvg6;->a:I

    .line 114
    .line 115
    iget v6, v0, Lrx8;->b:I

    .line 116
    .line 117
    shl-int v6, v2, v6

    .line 118
    .line 119
    add-int/lit8 v7, v6, -0x2

    .line 120
    .line 121
    if-ge v1, v7, :cond_a

    .line 122
    .line 123
    if-eqz v5, :cond_a

    .line 124
    .line 125
    if-eqz v3, :cond_a

    .line 126
    .line 127
    new-instance v6, Llh0;

    .line 128
    .line 129
    new-instance v7, Ltq5;

    .line 130
    .line 131
    invoke-direct {v7}, Ltq5;-><init>()V

    .line 132
    .line 133
    .line 134
    new-instance v8, Luq5;

    .line 135
    .line 136
    invoke-direct {v8, v7}, Luq5;-><init>(Ltq5;)V

    .line 137
    .line 138
    .line 139
    new-instance v7, Ly8;

    .line 140
    .line 141
    iget-object v9, v0, Lrx8;->g:Lun8;

    .line 142
    .line 143
    invoke-direct {v7, v9}, Ly8;-><init>(Lun8;)V

    .line 144
    .line 145
    .line 146
    iget v9, v0, Lrx8;->b:I

    .line 147
    .line 148
    iget v0, v0, Lrx8;->c:I

    .line 149
    .line 150
    shl-int v10, v2, v9

    .line 151
    .line 152
    sub-int/2addr v10, v2

    .line 153
    invoke-direct {v6, v7, v9, v0, v10}, Llh0;-><init>(Ly8;III)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v6, v5, v3, v8}, Llh0;->a([B[BLuq5;)V

    .line 157
    .line 158
    .line 159
    :goto_4
    iget v0, v6, Llh0;->p:I

    .line 160
    .line 161
    if-ge v0, v1, :cond_9

    .line 162
    .line 163
    invoke-virtual {v6, v5, v3, v8}, Llh0;->b([B[BLuq5;)V

    .line 164
    .line 165
    .line 166
    const/4 v0, 0x0

    .line 167
    iput-boolean v0, v6, Llh0;->q:Z

    .line 168
    .line 169
    goto :goto_4

    .line 170
    :cond_9
    iput-object v6, p0, Ltx8;->n:Llh0;

    .line 171
    .line 172
    goto :goto_5

    .line 173
    :cond_a
    new-instance v3, Llh0;

    .line 174
    .line 175
    sub-int/2addr v6, v2

    .line 176
    new-instance v5, Ly8;

    .line 177
    .line 178
    iget-object v7, v0, Lrx8;->g:Lun8;

    .line 179
    .line 180
    invoke-direct {v5, v7}, Ly8;-><init>(Lun8;)V

    .line 181
    .line 182
    .line 183
    iget v7, v0, Lrx8;->b:I

    .line 184
    .line 185
    iget v0, v0, Lrx8;->c:I

    .line 186
    .line 187
    invoke-direct {v3, v5, v7, v0, v1}, Llh0;-><init>(Ly8;III)V

    .line 188
    .line 189
    .line 190
    iput v6, v3, Llh0;->r:I

    .line 191
    .line 192
    iput v1, v3, Llh0;->p:I

    .line 193
    .line 194
    iput-boolean v2, v3, Llh0;->q:Z

    .line 195
    .line 196
    iput-object v3, p0, Ltx8;->n:Llh0;

    .line 197
    .line 198
    :goto_5
    iget p1, p1, Lvg6;->b:I

    .line 199
    .line 200
    if-ltz p1, :cond_c

    .line 201
    .line 202
    iget-object p0, p0, Ltx8;->n:Llh0;

    .line 203
    .line 204
    iget p0, p0, Llh0;->r:I

    .line 205
    .line 206
    if-ne p1, p0, :cond_b

    .line 207
    .line 208
    goto :goto_6

    .line 209
    :cond_b
    const-string p0, "maxIndex set but not reflected in state"

    .line 210
    .line 211
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    throw v4

    .line 215
    :cond_c
    :goto_6
    return-void
.end method


# virtual methods
.method public final a()[B
    .locals 7

    .line 1
    const-string v0, "error serializing bds state: "

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v1, p0, Ltx8;->c:Lrx8;

    .line 5
    .line 6
    iget v1, v1, Lrx8;->f:I

    .line 7
    .line 8
    add-int/lit8 v2, v1, 0x4

    .line 9
    .line 10
    add-int v3, v2, v1

    .line 11
    .line 12
    add-int v4, v3, v1

    .line 13
    .line 14
    add-int/2addr v1, v4

    .line 15
    new-array v1, v1, [B

    .line 16
    .line 17
    iget-object v5, p0, Ltx8;->n:Llh0;

    .line 18
    .line 19
    iget v5, v5, Llh0;->p:I

    .line 20
    .line 21
    const/4 v6, 0x0

    .line 22
    invoke-static {v1, v5, v6}, Lxx3;->n([BII)V

    .line 23
    .line 24
    .line 25
    iget-object v5, p0, Ltx8;->d:[B

    .line 26
    .line 27
    const/4 v6, 0x4

    .line 28
    invoke-static {v6, v1, v5}, Ljd4;->i(I[B[B)V

    .line 29
    .line 30
    .line 31
    iget-object v5, p0, Ltx8;->e:[B

    .line 32
    .line 33
    invoke-static {v2, v1, v5}, Ljd4;->i(I[B[B)V

    .line 34
    .line 35
    .line 36
    iget-object v2, p0, Ltx8;->f:[B

    .line 37
    .line 38
    invoke-static {v3, v1, v2}, Ljd4;->i(I[B[B)V

    .line 39
    .line 40
    .line 41
    iget-object v2, p0, Ltx8;->k:[B

    .line 42
    .line 43
    invoke-static {v4, v1, v2}, Ljd4;->i(I[B[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    .line 46
    :try_start_1
    iget-object v2, p0, Ltx8;->n:Llh0;

    .line 47
    .line 48
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    .line 49
    .line 50
    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 51
    .line 52
    .line 53
    new-instance v4, Ljava/io/ObjectOutputStream;

    .line 54
    .line 55
    invoke-direct {v4, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->flush()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 65
    .line 66
    .line 67
    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    :try_start_2
    invoke-static {v1, v0}, Lms8;->p([B[B)[B

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    monitor-exit p0

    .line 73
    return-object v0

    .line 74
    :catchall_0
    move-exception v0

    .line 75
    goto :goto_0

    .line 76
    :catch_0
    move-exception v1

    .line 77
    new-instance v2, Ljava/lang/RuntimeException;

    .line 78
    .line 79
    new-instance v3, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    throw v2

    .line 99
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 100
    throw v0
.end method

.method public final getEncoded()[B
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Ltx8;->a()[B

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    monitor-exit p0

    .line 7
    return-object v0

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw v0
.end method
