.class public final Lnx8;
.super Luv6;

# interfaces
.implements Lwv2;


# instance fields
.field public final c:Lkx8;

.field public final d:[B

.field public final e:[B

.field public final f:[B

.field public final k:[B

.field public volatile n:J

.field public volatile p:Lmh0;


# direct methods
.method public constructor <init>(Lmx8;)V
    .locals 7

    .line 1
    iget-object v1, p1, Lmx8;->a:Lkx8;

    .line 2
    .line 3
    iget-object v0, v1, Lkx8;->b:Lrx8;

    .line 4
    .line 5
    iget-object v2, v0, Lrx8;->e:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    invoke-direct {p0, v2, v3}, Luv6;-><init>(Ljava/lang/String;Z)V

    .line 9
    .line 10
    .line 11
    iput-object v1, p0, Lnx8;->c:Lkx8;

    .line 12
    .line 13
    iget v0, v0, Lrx8;->f:I

    .line 14
    .line 15
    iget-wide v2, p1, Lmx8;->b:J

    .line 16
    .line 17
    iput-wide v2, p0, Lnx8;->n:J

    .line 18
    .line 19
    iget-object v5, p1, Lmx8;->d:[B

    .line 20
    .line 21
    const/4 v6, 0x0

    .line 22
    if-eqz v5, :cond_1

    .line 23
    .line 24
    array-length v2, v5

    .line 25
    if-ne v2, v0, :cond_0

    .line 26
    .line 27
    iput-object v5, p0, Lnx8;->d:[B

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const-string p0, "size of secretKeySeed needs to be equal size of digest"

    .line 31
    .line 32
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw v6

    .line 36
    :cond_1
    new-array v2, v0, [B

    .line 37
    .line 38
    iput-object v2, p0, Lnx8;->d:[B

    .line 39
    .line 40
    :goto_0
    iget-object v2, p1, Lmx8;->e:[B

    .line 41
    .line 42
    if-eqz v2, :cond_3

    .line 43
    .line 44
    array-length v3, v2

    .line 45
    if-ne v3, v0, :cond_2

    .line 46
    .line 47
    iput-object v2, p0, Lnx8;->e:[B

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
    throw v6

    .line 56
    :cond_3
    new-array v2, v0, [B

    .line 57
    .line 58
    iput-object v2, p0, Lnx8;->e:[B

    .line 59
    .line 60
    :goto_1
    iget-object v4, p1, Lmx8;->f:[B

    .line 61
    .line 62
    if-eqz v4, :cond_5

    .line 63
    .line 64
    array-length v2, v4

    .line 65
    if-ne v2, v0, :cond_4

    .line 66
    .line 67
    iput-object v4, p0, Lnx8;->f:[B

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_4
    const-string p0, "size of publicSeed needs to be equal size of digest"

    .line 71
    .line 72
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw v6

    .line 76
    :cond_5
    new-array v2, v0, [B

    .line 77
    .line 78
    iput-object v2, p0, Lnx8;->f:[B

    .line 79
    .line 80
    :goto_2
    iget-object v2, p1, Lmx8;->g:[B

    .line 81
    .line 82
    if-eqz v2, :cond_7

    .line 83
    .line 84
    array-length v3, v2

    .line 85
    if-ne v3, v0, :cond_6

    .line 86
    .line 87
    iput-object v2, p0, Lnx8;->k:[B

    .line 88
    .line 89
    goto :goto_3

    .line 90
    :cond_6
    const-string p0, "size of root needs to be equal size of digest"

    .line 91
    .line 92
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw v6

    .line 96
    :cond_7
    new-array v0, v0, [B

    .line 97
    .line 98
    iput-object v0, p0, Lnx8;->k:[B

    .line 99
    .line 100
    :goto_3
    iget-object v0, p1, Lmx8;->h:Lmh0;

    .line 101
    .line 102
    if-eqz v0, :cond_8

    .line 103
    .line 104
    :goto_4
    iput-object v0, p0, Lnx8;->p:Lmh0;

    .line 105
    .line 106
    goto :goto_5

    .line 107
    :cond_8
    iget-wide v2, p1, Lmx8;->b:J

    .line 108
    .line 109
    iget v0, v1, Lkx8;->c:I

    .line 110
    .line 111
    invoke-static {v0, v2, v3}, Ljd4;->u(IJ)Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-eqz v0, :cond_9

    .line 116
    .line 117
    if-eqz v4, :cond_9

    .line 118
    .line 119
    if-eqz v5, :cond_9

    .line 120
    .line 121
    new-instance v0, Lmh0;

    .line 122
    .line 123
    iget-wide v2, p1, Lmx8;->b:J

    .line 124
    .line 125
    invoke-direct/range {v0 .. v5}, Lmh0;-><init>(Lkx8;J[B[B)V

    .line 126
    .line 127
    .line 128
    goto :goto_4

    .line 129
    :cond_9
    new-instance v0, Lmh0;

    .line 130
    .line 131
    iget-wide v1, p1, Lmx8;->c:J

    .line 132
    .line 133
    const-wide/16 v3, 0x1

    .line 134
    .line 135
    add-long/2addr v1, v3

    .line 136
    invoke-direct {v0, v1, v2}, Lmh0;-><init>(J)V

    .line 137
    .line 138
    .line 139
    goto :goto_4

    .line 140
    :goto_5
    iget-wide v0, p1, Lmx8;->c:J

    .line 141
    .line 142
    const-wide/16 v2, 0x0

    .line 143
    .line 144
    cmp-long p1, v0, v2

    .line 145
    .line 146
    if-ltz p1, :cond_b

    .line 147
    .line 148
    iget-object p0, p0, Lnx8;->p:Lmh0;

    .line 149
    .line 150
    iget-wide p0, p0, Lmh0;->b:J

    .line 151
    .line 152
    cmp-long p0, v0, p0

    .line 153
    .line 154
    if-nez p0, :cond_a

    .line 155
    .line 156
    goto :goto_6

    .line 157
    :cond_a
    const-string p0, "maxIndex set but not reflected in state"

    .line 158
    .line 159
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    throw v6

    .line 163
    :cond_b
    :goto_6
    return-void
.end method


# virtual methods
.method public final a()[B
    .locals 8

    .line 1
    const-string v0, "error serializing bds state: "

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v1, p0, Lnx8;->c:Lkx8;

    .line 5
    .line 6
    iget-object v2, v1, Lkx8;->b:Lrx8;

    .line 7
    .line 8
    iget v2, v2, Lrx8;->f:I

    .line 9
    .line 10
    iget v1, v1, Lkx8;->c:I

    .line 11
    .line 12
    add-int/lit8 v1, v1, 0x7

    .line 13
    .line 14
    div-int/lit8 v1, v1, 0x8

    .line 15
    .line 16
    add-int v3, v1, v2

    .line 17
    .line 18
    add-int v4, v3, v2

    .line 19
    .line 20
    add-int v5, v4, v2

    .line 21
    .line 22
    add-int/2addr v2, v5

    .line 23
    new-array v2, v2, [B

    .line 24
    .line 25
    iget-wide v6, p0, Lnx8;->n:J

    .line 26
    .line 27
    invoke-static {v1, v6, v7}, Ljd4;->J(IJ)[B

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    const/4 v7, 0x0

    .line 32
    invoke-static {v7, v2, v6}, Ljd4;->i(I[B[B)V

    .line 33
    .line 34
    .line 35
    iget-object v6, p0, Lnx8;->d:[B

    .line 36
    .line 37
    invoke-static {v1, v2, v6}, Ljd4;->i(I[B[B)V

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Lnx8;->e:[B

    .line 41
    .line 42
    invoke-static {v3, v2, v1}, Ljd4;->i(I[B[B)V

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Lnx8;->f:[B

    .line 46
    .line 47
    invoke-static {v4, v2, v1}, Ljd4;->i(I[B[B)V

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, Lnx8;->k:[B

    .line 51
    .line 52
    invoke-static {v5, v2, v1}, Ljd4;->i(I[B[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .line 54
    .line 55
    :try_start_1
    iget-object v1, p0, Lnx8;->p:Lmh0;

    .line 56
    .line 57
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    .line 58
    .line 59
    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 60
    .line 61
    .line 62
    new-instance v4, Ljava/io/ObjectOutputStream;

    .line 63
    .line 64
    invoke-direct {v4, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v4, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->flush()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-static {v2, v1}, Lms8;->p([B[B)[B

    .line 78
    .line 79
    .line 80
    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    :try_start_2
    monitor-exit p0

    .line 82
    return-object v0

    .line 83
    :catchall_0
    move-exception v0

    .line 84
    goto :goto_0

    .line 85
    :catch_0
    move-exception v1

    .line 86
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 87
    .line 88
    new-instance v3, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-direct {v2, v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 105
    .line 106
    .line 107
    throw v2

    .line 108
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 109
    throw v0
.end method

.method public final getEncoded()[B
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lnx8;->a()[B

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
