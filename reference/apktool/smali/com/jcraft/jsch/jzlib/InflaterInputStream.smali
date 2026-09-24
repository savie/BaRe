.class final Lcom/jcraft/jsch/jzlib/InflaterInputStream;
.super Ljava/io/FilterInputStream;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lcom/jcraft/jsch/jzlib/Inflater;

.field public final b:[B

.field public c:Z

.field public d:Z

.field public final e:Z

.field public final f:Z

.field public final k:[B

.field public final n:[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, v0}, Lcom/jcraft/jsch/jzlib/InflaterInputStream;-><init>(Ljava/io/InputStream;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/jcraft/jsch/jzlib/Inflater;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x200

    const/4 v1, 0x1

    .line 49
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/jcraft/jsch/jzlib/InflaterInputStream;-><init>(Ljava/io/InputStream;Lcom/jcraft/jsch/jzlib/Inflater;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/jcraft/jsch/jzlib/Inflater;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 50
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/jcraft/jsch/jzlib/InflaterInputStream;-><init>(Ljava/io/InputStream;Lcom/jcraft/jsch/jzlib/Inflater;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/jcraft/jsch/jzlib/Inflater;IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->c:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->d:Z

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    iput-boolean v1, p0, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->e:Z

    .line 11
    .line 12
    iput-boolean v0, p0, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->f:Z

    .line 13
    .line 14
    new-array v0, v1, [B

    .line 15
    .line 16
    iput-object v0, p0, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->k:[B

    .line 17
    .line 18
    const/16 v0, 0x200

    .line 19
    .line 20
    new-array v0, v0, [B

    .line 21
    .line 22
    iput-object v0, p0, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->n:[B

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    if-eqz p2, :cond_1

    .line 28
    .line 29
    if-lez p3, :cond_0

    .line 30
    .line 31
    iput-object p2, p0, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->a:Lcom/jcraft/jsch/jzlib/Inflater;

    .line 32
    .line 33
    new-array p1, p3, [B

    .line 34
    .line 35
    iput-object p1, p0, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->b:[B

    .line 36
    .line 37
    iput-boolean p4, p0, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->e:Z

    .line 38
    .line 39
    return-void

    .line 40
    :cond_0
    const-string p0, "buffer size must be greater than 0"

    .line 41
    .line 42
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw v0

    .line 46
    :cond_1
    throw v0
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    new-instance v0, Lcom/jcraft/jsch/jzlib/Inflater;

    invoke-direct {v0, p2}, Lcom/jcraft/jsch/jzlib/Inflater;-><init>(Z)V

    invoke-direct {p0, p1, v0}, Lcom/jcraft/jsch/jzlib/InflaterInputStream;-><init>(Ljava/io/InputStream;Lcom/jcraft/jsch/jzlib/Inflater;)V

    const/4 p1, 0x1

    .line 48
    iput-boolean p1, p0, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->f:Z

    return-void
.end method


# virtual methods
.method public final available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean p0, p0, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->d:Z

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_1
    const-string p0, "Stream closed"

    .line 14
    .line 15
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    return p0
.end method

.method public final close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->f:Z

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->a:Lcom/jcraft/jsch/jzlib/Inflater;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/jcraft/jsch/jzlib/ZStream;->k:Lcom/jcraft/jsch/jzlib/Inflate;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, v0, Lcom/jcraft/jsch/jzlib/Inflate;->f:Lcom/jcraft/jsch/jzlib/InfBlocks;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/jcraft/jsch/jzlib/InfBlocks;->b()V

    .line 21
    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    iput-object v1, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->s:[B

    .line 25
    .line 26
    iput-object v1, v0, Lcom/jcraft/jsch/jzlib/InfBlocks;->r:[I

    .line 27
    .line 28
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->e:Z

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 35
    .line 36
    .line 37
    :cond_2
    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->c:Z

    .line 39
    .line 40
    :cond_3
    return-void
.end method

.method public final declared-synchronized mark(I)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    monitor-exit p0

    .line 3
    return-void
.end method

.method public final markSupported()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 168
    iget-boolean v0, p0, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->c:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 169
    iget-object v2, p0, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->k:[B

    invoke-virtual {p0, v2, v1, v0}, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->read([BII)I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    aget-byte p0, v2, v1

    and-int/lit16 p0, p0, 0xff

    return p0

    .line 170
    :cond_1
    const-string p0, "Stream closed"

    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    return v1
.end method

.method public final read([BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->c:Z

    .line 2
    .line 3
    const-string v1, "Stream closed"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v0, :cond_e

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    if-ltz p2, :cond_d

    .line 12
    .line 13
    if-ltz p3, :cond_d

    .line 14
    .line 15
    array-length v0, p1

    .line 16
    sub-int/2addr v0, p2

    .line 17
    if-gt p3, v0, :cond_d

    .line 18
    .line 19
    if-nez p3, :cond_0

    .line 20
    .line 21
    return v2

    .line 22
    :cond_0
    iget-boolean v0, p0, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->d:Z

    .line 23
    .line 24
    const/4 v3, -0x1

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    goto/16 :goto_4

    .line 28
    .line 29
    :cond_1
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->a:Lcom/jcraft/jsch/jzlib/Inflater;

    .line 30
    .line 31
    iput-object p1, v0, Lcom/jcraft/jsch/jzlib/ZStream;->e:[B

    .line 32
    .line 33
    iput p2, v0, Lcom/jcraft/jsch/jzlib/ZStream;->f:I

    .line 34
    .line 35
    iput p3, v0, Lcom/jcraft/jsch/jzlib/ZStream;->g:I

    .line 36
    .line 37
    move p1, v2

    .line 38
    :goto_0
    iget-boolean p3, p0, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->d:Z

    .line 39
    .line 40
    if-nez p3, :cond_c

    .line 41
    .line 42
    iget-object p3, p0, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->a:Lcom/jcraft/jsch/jzlib/Inflater;

    .line 43
    .line 44
    iget p3, p3, Lcom/jcraft/jsch/jzlib/ZStream;->c:I

    .line 45
    .line 46
    const/4 v0, 0x1

    .line 47
    if-nez p3, :cond_7

    .line 48
    .line 49
    iget-boolean p3, p0, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->c:Z

    .line 50
    .line 51
    if-nez p3, :cond_6

    .line 52
    .line 53
    iget-object p3, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 54
    .line 55
    iget-object v4, p0, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->b:[B

    .line 56
    .line 57
    array-length v5, v4

    .line 58
    invoke-virtual {p3, v4, v2, v5}, Ljava/io/InputStream;->read([BII)I

    .line 59
    .line 60
    .line 61
    move-result p3

    .line 62
    if-ne p3, v3, :cond_5

    .line 63
    .line 64
    iget-object p3, p0, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->a:Lcom/jcraft/jsch/jzlib/Inflater;

    .line 65
    .line 66
    iget-object p3, p3, Lcom/jcraft/jsch/jzlib/ZStream;->k:Lcom/jcraft/jsch/jzlib/Inflate;

    .line 67
    .line 68
    iget v4, p3, Lcom/jcraft/jsch/jzlib/Inflate;->d:I

    .line 69
    .line 70
    if-nez v4, :cond_3

    .line 71
    .line 72
    iget v4, p3, Lcom/jcraft/jsch/jzlib/Inflate;->a:I

    .line 73
    .line 74
    const/16 v5, 0xc

    .line 75
    .line 76
    if-ne v4, v5, :cond_2

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_2
    iget-object p3, p0, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->b:[B

    .line 80
    .line 81
    aput-byte v2, p3, v2

    .line 82
    .line 83
    move p3, v0

    .line 84
    goto :goto_2

    .line 85
    :cond_3
    :goto_1
    iget-wide p0, p3, Lcom/jcraft/jsch/jzlib/Inflate;->b:J

    .line 86
    .line 87
    const-wide/16 p2, -0x1

    .line 88
    .line 89
    cmp-long p0, p0, p2

    .line 90
    .line 91
    if-eqz p0, :cond_4

    .line 92
    .line 93
    const-string p0, "footer is not found"

    .line 94
    .line 95
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    return v2

    .line 99
    :cond_4
    new-instance p0, Ljava/io/EOFException;

    .line 100
    .line 101
    const-string p1, "Unexpected end of ZLIB input stream"

    .line 102
    .line 103
    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw p0

    .line 107
    :cond_5
    :goto_2
    iget-object v4, p0, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->a:Lcom/jcraft/jsch/jzlib/Inflater;

    .line 108
    .line 109
    iget-object v5, p0, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->b:[B

    .line 110
    .line 111
    invoke-virtual {v4, v5, v2, p3}, Lcom/jcraft/jsch/jzlib/ZStream;->b([BII)V

    .line 112
    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_6
    invoke-static {v1}, Ly5;->m(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    return v2

    .line 119
    :cond_7
    :goto_3
    iget-object p3, p0, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->a:Lcom/jcraft/jsch/jzlib/Inflater;

    .line 120
    .line 121
    invoke-virtual {p3, v2}, Lcom/jcraft/jsch/jzlib/Inflater;->c(I)I

    .line 122
    .line 123
    .line 124
    move-result p3

    .line 125
    iget-object v4, p0, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->a:Lcom/jcraft/jsch/jzlib/Inflater;

    .line 126
    .line 127
    iget v5, v4, Lcom/jcraft/jsch/jzlib/ZStream;->f:I

    .line 128
    .line 129
    sub-int p2, v5, p2

    .line 130
    .line 131
    add-int/2addr p1, p2

    .line 132
    const/4 p2, -0x3

    .line 133
    if-eq p3, p2, :cond_b

    .line 134
    .line 135
    const/4 p2, 0x2

    .line 136
    if-eq p3, v0, :cond_8

    .line 137
    .line 138
    if-eq p3, p2, :cond_8

    .line 139
    .line 140
    goto :goto_5

    .line 141
    :cond_8
    iput-boolean v0, p0, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->d:Z

    .line 142
    .line 143
    if-ne p3, p2, :cond_9

    .line 144
    .line 145
    :goto_4
    return v3

    .line 146
    :cond_9
    :goto_5
    iget p2, v4, Lcom/jcraft/jsch/jzlib/ZStream;->g:I

    .line 147
    .line 148
    if-nez p2, :cond_a

    .line 149
    .line 150
    return p1

    .line 151
    :cond_a
    move p2, v5

    .line 152
    goto :goto_0

    .line 153
    :cond_b
    iget-object p0, v4, Lcom/jcraft/jsch/jzlib/ZStream;->i:Ljava/lang/String;

    .line 154
    .line 155
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    return v2

    .line 159
    :cond_c
    return p1

    .line 160
    :cond_d
    invoke-static {}, Ll0;->a()V

    .line 161
    .line 162
    .line 163
    return v2

    .line 164
    :cond_e
    invoke-static {v1}, Ly5;->m(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    return v2
.end method

.method public final declared-synchronized reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/io/IOException;

    .line 3
    .line 4
    const-string v1, "mark/reset not supported"

    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    throw v0

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    throw v0
.end method

.method public final skip(J)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-ltz v2, :cond_4

    .line 6
    .line 7
    iget-boolean v2, p0, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->c:Z

    .line 8
    .line 9
    if-nez v2, :cond_3

    .line 10
    .line 11
    const-wide/32 v0, 0x7fffffff

    .line 12
    .line 13
    .line 14
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 15
    .line 16
    .line 17
    move-result-wide p1

    .line 18
    long-to-int p1, p1

    .line 19
    const/4 p2, 0x0

    .line 20
    move v0, p2

    .line 21
    :goto_0
    if-ge v0, p1, :cond_2

    .line 22
    .line 23
    sub-int v1, p1, v0

    .line 24
    .line 25
    iget-object v2, p0, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->n:[B

    .line 26
    .line 27
    array-length v3, v2

    .line 28
    if-le v1, v3, :cond_0

    .line 29
    .line 30
    array-length v1, v2

    .line 31
    :cond_0
    invoke-virtual {p0, v2, p2, v1}, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->read([BII)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    const/4 v2, -0x1

    .line 36
    if-ne v1, v2, :cond_1

    .line 37
    .line 38
    const/4 p1, 0x1

    .line 39
    iput-boolean p1, p0, Lcom/jcraft/jsch/jzlib/InflaterInputStream;->d:Z

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    add-int/2addr v0, v1

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    :goto_1
    int-to-long p0, v0

    .line 45
    return-wide p0

    .line 46
    :cond_3
    const-string p0, "Stream closed"

    .line 47
    .line 48
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-wide v0

    .line 52
    :cond_4
    const-string p0, "negative skip length"

    .line 53
    .line 54
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-wide v0
.end method
