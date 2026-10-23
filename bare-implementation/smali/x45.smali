.class public final Lx45;
.super Ljava/io/InputStream;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lwd7;

.field public final b:[B

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public k:I

.field public n:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lkr7;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lkr7;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lx45;->c:I

    .line 11
    .line 12
    iput p1, p0, Lx45;->d:I

    .line 13
    .line 14
    const/4 v1, -0x1

    .line 15
    iput v1, p0, Lx45;->e:I

    .line 16
    .line 17
    iput p1, p0, Lx45;->f:I

    .line 18
    .line 19
    const-string p1, "[ -b @@ ]"

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Lkr7;->b(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    const-string v1, "r"

    .line 26
    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    new-instance p1, Ltd7;

    .line 30
    .line 31
    invoke-direct {p1, v0, v1}, Ltd7;-><init>(Lkr7;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    new-instance p1, Lwd7;

    .line 36
    .line 37
    invoke-direct {p1, v0, v1}, Lwd7;-><init>(Lkr7;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :goto_0
    iput-object p1, p0, Lx45;->a:Lwd7;

    .line 41
    .line 42
    const/high16 p1, 0x400000

    .line 43
    .line 44
    new-array p1, p1, [B

    .line 45
    .line 46
    iput-object p1, p0, Lx45;->b:[B

    .line 47
    .line 48
    return-void
.end method


# virtual methods
.method public final declared-synchronized a([BII)I
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    move v1, v0

    .line 4
    :goto_0
    if-ge v1, p2, :cond_9

    .line 5
    .line 6
    :try_start_0
    iget v2, p0, Lx45;->d:I

    .line 7
    .line 8
    if-gez v2, :cond_2

    .line 9
    .line 10
    not-int v2, v2

    .line 11
    iget v3, p0, Lx45;->f:I

    .line 12
    .line 13
    sub-int/2addr v3, v2

    .line 14
    sub-int v4, p2, v1

    .line 15
    .line 16
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    iget-object v4, p0, Lx45;->n:[B

    .line 23
    .line 24
    add-int v5, p3, v1

    .line 25
    .line 26
    invoke-static {v4, v2, p1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    goto/16 :goto_3

    .line 32
    .line 33
    :cond_0
    :goto_1
    add-int/2addr v1, v3

    .line 34
    add-int/2addr v2, v3

    .line 35
    iget v3, p0, Lx45;->f:I

    .line 36
    .line 37
    if-ne v2, v3, :cond_1

    .line 38
    .line 39
    iput v0, p0, Lx45;->d:I

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    not-int v2, v2

    .line 43
    iput v2, p0, Lx45;->d:I

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    iget v3, p0, Lx45;->c:I

    .line 47
    .line 48
    if-lt v2, v3, :cond_7

    .line 49
    .line 50
    iget v2, p0, Lx45;->e:I

    .line 51
    .line 52
    const/4 v4, -0x1

    .line 53
    if-ltz v2, :cond_5

    .line 54
    .line 55
    sub-int/2addr v3, v2

    .line 56
    iget v2, p0, Lx45;->k:I

    .line 57
    .line 58
    iget v5, p0, Lx45;->f:I

    .line 59
    .line 60
    sub-int v5, v2, v5

    .line 61
    .line 62
    if-ge v5, v3, :cond_3

    .line 63
    .line 64
    const/4 v2, 0x0

    .line 65
    iput-object v2, p0, Lx45;->n:[B

    .line 66
    .line 67
    iput v0, p0, Lx45;->f:I

    .line 68
    .line 69
    iput v4, p0, Lx45;->e:I

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_3
    iget-object v5, p0, Lx45;->n:[B

    .line 73
    .line 74
    if-nez v5, :cond_4

    .line 75
    .line 76
    new-array v2, v2, [B

    .line 77
    .line 78
    iput-object v2, p0, Lx45;->n:[B

    .line 79
    .line 80
    iput v0, p0, Lx45;->f:I

    .line 81
    .line 82
    :cond_4
    :goto_2
    iget-object v2, p0, Lx45;->n:[B

    .line 83
    .line 84
    if-eqz v2, :cond_5

    .line 85
    .line 86
    iget-object v5, p0, Lx45;->b:[B

    .line 87
    .line 88
    iget v6, p0, Lx45;->e:I

    .line 89
    .line 90
    iget v7, p0, Lx45;->f:I

    .line 91
    .line 92
    invoke-static {v5, v6, v2, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    .line 94
    .line 95
    iget v2, p0, Lx45;->f:I

    .line 96
    .line 97
    add-int/2addr v2, v3

    .line 98
    iput v2, p0, Lx45;->f:I

    .line 99
    .line 100
    iput v0, p0, Lx45;->e:I

    .line 101
    .line 102
    :cond_5
    iput v0, p0, Lx45;->d:I

    .line 103
    .line 104
    iget-object v2, p0, Lx45;->a:Lwd7;

    .line 105
    .line 106
    iget-object v3, p0, Lx45;->b:[B

    .line 107
    .line 108
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    array-length v5, v3

    .line 112
    invoke-virtual {v2, v3, v0, v5}, Lwd7;->read([BII)I

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    iput v2, p0, Lx45;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    .line 118
    if-gez v2, :cond_7

    .line 119
    .line 120
    if-nez v1, :cond_6

    .line 121
    .line 122
    move v1, v4

    .line 123
    :cond_6
    monitor-exit p0

    .line 124
    return v1

    .line 125
    :cond_7
    :try_start_1
    iget v2, p0, Lx45;->c:I

    .line 126
    .line 127
    iget v3, p0, Lx45;->d:I

    .line 128
    .line 129
    sub-int/2addr v2, v3

    .line 130
    sub-int v3, p2, v1

    .line 131
    .line 132
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    if-eqz p1, :cond_8

    .line 137
    .line 138
    iget-object v3, p0, Lx45;->b:[B

    .line 139
    .line 140
    iget v4, p0, Lx45;->d:I

    .line 141
    .line 142
    add-int v5, p3, v1

    .line 143
    .line 144
    invoke-static {v3, v4, p1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 145
    .line 146
    .line 147
    :cond_8
    add-int/2addr v1, v2

    .line 148
    iget v3, p0, Lx45;->d:I

    .line 149
    .line 150
    add-int/2addr v3, v2

    .line 151
    iput v3, p0, Lx45;->d:I

    .line 152
    .line 153
    goto/16 :goto_0

    .line 154
    .line 155
    :goto_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    throw p1

    .line 157
    :cond_9
    monitor-exit p0

    .line 158
    return v1
.end method

.method public final declared-synchronized available()I
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lx45;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    if-gez v0, :cond_0

    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return v1

    .line 9
    :cond_0
    :try_start_1
    iget v2, p0, Lx45;->d:I

    .line 10
    .line 11
    if-lt v2, v0, :cond_2

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    const/4 v2, 0x1

    .line 15
    invoke-virtual {p0, v0, v2, v1}, Lx45;->a([BII)I

    .line 16
    .line 17
    .line 18
    iget v0, p0, Lx45;->c:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    .line 20
    if-gez v0, :cond_1

    .line 21
    .line 22
    monitor-exit p0

    .line 23
    return v1

    .line 24
    :cond_1
    :try_start_2
    iget v0, p0, Lx45;->d:I

    .line 25
    .line 26
    sub-int/2addr v0, v2

    .line 27
    iput v0, p0, Lx45;->d:I

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception v0

    .line 31
    goto :goto_1

    .line 32
    :cond_2
    :goto_0
    iget v0, p0, Lx45;->d:I

    .line 33
    .line 34
    if-gez v0, :cond_3

    .line 35
    .line 36
    iget v1, p0, Lx45;->f:I

    .line 37
    .line 38
    not-int v0, v0

    .line 39
    sub-int/2addr v1, v0

    .line 40
    iget v0, p0, Lx45;->c:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 41
    .line 42
    add-int/2addr v1, v0

    .line 43
    monitor-exit p0

    .line 44
    return v1

    .line 45
    :cond_3
    :try_start_3
    iget v1, p0, Lx45;->c:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 46
    .line 47
    sub-int/2addr v1, v0

    .line 48
    monitor-exit p0

    .line 49
    return v1

    .line 50
    :goto_1
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 51
    throw v0
.end method

.method public final declared-synchronized mark(I)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lx45;->d:I

    .line 3
    .line 4
    iput v0, p0, Lx45;->e:I

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput v1, p0, Lx45;->f:I

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    iput-object v2, p0, Lx45;->n:[B

    .line 11
    .line 12
    iget v2, p0, Lx45;->c:I

    .line 13
    .line 14
    sub-int/2addr v2, v0

    .line 15
    if-gt p1, v2, :cond_0

    .line 16
    .line 17
    iput v1, p0, Lx45;->k:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    sub-int/2addr p1, v2

    .line 23
    iget-object v0, p0, Lx45;->b:[B

    .line 24
    .line 25
    array-length v1, v0

    .line 26
    div-int/2addr p1, v1

    .line 27
    array-length v0, v0

    .line 28
    mul-int/2addr p1, v0

    .line 29
    add-int/2addr p1, v2

    .line 30
    iput p1, p0, Lx45;->k:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    :goto_0
    monitor-exit p0

    .line 33
    return-void

    .line 34
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    throw p1
.end method

.method public final markSupported()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final read()I
    .locals 3

    const/4 v0, 0x1

    .line 27
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 28
    invoke-virtual {p0, v1, v2, v0}, Lx45;->read([BII)I

    move-result p0

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 29
    :cond_0
    aget-byte p0, v1, v2

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public final read([B)I
    .locals 2

    const/4 v0, 0x0

    .line 26
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lx45;->read([BII)I

    move-result p0

    return p0
.end method

.method public final read([BII)I
    .locals 2

    .line 1
    if-ltz p2, :cond_1

    .line 2
    .line 3
    if-ltz p3, :cond_1

    .line 4
    .line 5
    add-int v0, p2, p3

    .line 6
    .line 7
    array-length v1, p1

    .line 8
    if-gt v0, v1, :cond_1

    .line 9
    .line 10
    iget v0, p0, Lx45;->c:I

    .line 11
    .line 12
    if-gez v0, :cond_0

    .line 13
    .line 14
    const/4 p0, -0x1

    .line 15
    return p0

    .line 16
    :cond_0
    invoke-virtual {p0, p1, p3, p2}, Lx45;->a([BII)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    return p0

    .line 21
    :cond_1
    invoke-static {}, Ll0;->a()V

    .line 22
    .line 23
    .line 24
    const/4 p0, 0x0

    .line 25
    return p0
.end method

.method public final declared-synchronized reset()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lx45;->e:I

    .line 3
    .line 4
    if-ltz v0, :cond_1

    .line 5
    .line 6
    iget-object v1, p0, Lx45;->n:[B

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, -0x1

    .line 12
    :goto_0
    iput v0, p0, Lx45;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    monitor-exit p0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    .line 19
    .line 20
    const-string v1, "Resetting to invalid mark"

    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw v0

    .line 26
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    throw v0
.end method

.method public final skip(J)J
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-gez v2, :cond_0

    .line 6
    .line 7
    return-wide v0

    .line 8
    :cond_0
    long-to-int p1, p1

    .line 9
    const/4 p2, 0x0

    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, p2, p1, v0}, Lx45;->a([BII)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    int-to-long p0, p0

    .line 20
    return-wide p0
.end method
