.class public final Ltq4;
.super Loe3;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public a:Ljava/io/OutputStream;

.field public final b:Lv40;

.field public c:Laq4;

.field public final d:Ldf6;

.field public e:Lpq4;

.field public final f:J

.field public k:J

.field public n:Z

.field public p:Ljava/io/IOException;

.field public final q:[B


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Leq4;)V
    .locals 11

    .line 1
    sget-object v10, Lv40;->a:Lv40;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    iput-wide v0, p0, Ltq4;->k:J

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Ltq4;->n:Z

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Ltq4;->p:Ljava/io/IOException;

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    new-array v0, v0, [B

    .line 18
    .line 19
    iput-object v0, p0, Ltq4;->q:[B

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    const-wide/16 v0, -0x1

    .line 25
    .line 26
    iput-wide v0, p0, Ltq4;->f:J

    .line 27
    .line 28
    iput-object v10, p0, Ltq4;->b:Lv40;

    .line 29
    .line 30
    iput-object p1, p0, Ltq4;->a:Ljava/io/OutputStream;

    .line 31
    .line 32
    new-instance v0, Ldf6;

    .line 33
    .line 34
    invoke-direct {v0, p1}, Ldf6;-><init>(Ljava/io/OutputStream;)V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Ltq4;->d:Ldf6;

    .line 38
    .line 39
    iget v5, p2, Leq4;->a:I

    .line 40
    .line 41
    iget v1, p2, Leq4;->b:I

    .line 42
    .line 43
    iget v2, p2, Leq4;->c:I

    .line 44
    .line 45
    iget v3, p2, Leq4;->d:I

    .line 46
    .line 47
    iget v4, p2, Leq4;->e:I

    .line 48
    .line 49
    iget v7, p2, Leq4;->f:I

    .line 50
    .line 51
    iget v8, p2, Leq4;->k:I

    .line 52
    .line 53
    iget v9, p2, Leq4;->n:I

    .line 54
    .line 55
    const/4 v6, 0x0

    .line 56
    invoke-static/range {v0 .. v10}, Lpq4;->f(Lbf6;IIIIIIIIILv40;)Lpq4;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iput-object p1, p0, Ltq4;->e:Lpq4;

    .line 61
    .line 62
    iget-object p1, p1, Lpq4;->n:Laq4;

    .line 63
    .line 64
    iput-object p1, p0, Ltq4;->c:Laq4;

    .line 65
    .line 66
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    const-string v0, "Expected uncompressed size ("

    .line 2
    .line 3
    iget-boolean v1, p0, Ltq4;->n:Z

    .line 4
    .line 5
    if-nez v1, :cond_7

    .line 6
    .line 7
    iget-object v1, p0, Ltq4;->p:Ljava/io/IOException;

    .line 8
    .line 9
    if-nez v1, :cond_6

    .line 10
    .line 11
    const-wide/16 v1, -0x1

    .line 12
    .line 13
    iget-wide v3, p0, Ltq4;->f:J

    .line 14
    .line 15
    cmp-long v1, v3, v1

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    :try_start_0
    iget-wide v1, p0, Ltq4;->k:J

    .line 20
    .line 21
    cmp-long v1, v3, v1

    .line 22
    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v1, Lay8;

    .line 27
    .line 28
    new-instance v2, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v0, ") doesn\'t equal the number of bytes written to the stream ("

    .line 37
    .line 38
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-wide v3, p0, Ltq4;->k:J

    .line 42
    .line 43
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v0, ")"

    .line 47
    .line 48
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw v1

    .line 59
    :catch_0
    move-exception v0

    .line 60
    goto :goto_4

    .line 61
    :cond_1
    :goto_0
    iget-object v0, p0, Ltq4;->c:Laq4;

    .line 62
    .line 63
    iget v1, v0, Laq4;->j:I

    .line 64
    .line 65
    const/4 v2, 0x1

    .line 66
    sub-int/2addr v1, v2

    .line 67
    iput v1, v0, Laq4;->h:I

    .line 68
    .line 69
    iput-boolean v2, v0, Laq4;->i:Z

    .line 70
    .line 71
    invoke-virtual {v0}, Laq4;->g()V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Ltq4;->e:Lpq4;

    .line 75
    .line 76
    iget-object v1, v0, Lpq4;->n:Laq4;

    .line 77
    .line 78
    iget v1, v1, Laq4;->g:I

    .line 79
    .line 80
    const/4 v3, -0x1

    .line 81
    if-eq v1, v3, :cond_2

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_2
    invoke-virtual {v0}, Lpq4;->c()Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-nez v1, :cond_3

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_3
    :goto_1
    invoke-virtual {v0}, Lpq4;->d()Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-eqz v1, :cond_4

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_4
    :goto_2
    iget-object v0, p0, Ltq4;->d:Ldf6;

    .line 99
    .line 100
    const/4 v1, 0x0

    .line 101
    :goto_3
    const/4 v3, 0x5

    .line 102
    if-ge v1, v3, :cond_5

    .line 103
    .line 104
    invoke-virtual {v0}, Lbf6;->W()V

    .line 105
    .line 106
    .line 107
    add-int/lit8 v1, v1, 0x1

    .line 108
    .line 109
    goto :goto_3

    .line 110
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .line 112
    .line 113
    iput-boolean v2, p0, Ltq4;->n:Z

    .line 114
    .line 115
    iget-object v0, p0, Ltq4;->e:Lpq4;

    .line 116
    .line 117
    iget-object v1, p0, Ltq4;->b:Lv40;

    .line 118
    .line 119
    iget-object v0, v0, Lpq4;->n:Laq4;

    .line 120
    .line 121
    invoke-virtual {v0, v1}, Laq4;->h(Lv40;)V

    .line 122
    .line 123
    .line 124
    const/4 v0, 0x0

    .line 125
    iput-object v0, p0, Ltq4;->e:Lpq4;

    .line 126
    .line 127
    iput-object v0, p0, Ltq4;->c:Laq4;

    .line 128
    .line 129
    return-void

    .line 130
    :goto_4
    iput-object v0, p0, Ltq4;->p:Ljava/io/IOException;

    .line 131
    .line 132
    throw v0

    .line 133
    :cond_6
    throw v1

    .line 134
    :cond_7
    return-void
.end method

.method public final close()V
    .locals 2

    .line 1
    iget-object v0, p0, Ltq4;->a:Ljava/io/OutputStream;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p0}, Ltq4;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    :catch_0
    :try_start_1
    iget-object v0, p0, Ltq4;->a:Ljava/io/OutputStream;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catch_1
    move-exception v0

    .line 15
    iget-object v1, p0, Ltq4;->p:Ljava/io/IOException;

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    iput-object v0, p0, Ltq4;->p:Ljava/io/IOException;

    .line 20
    .line 21
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Ltq4;->a:Ljava/io/OutputStream;

    .line 23
    .line 24
    :cond_1
    iget-object p0, p0, Ltq4;->p:Ljava/io/IOException;

    .line 25
    .line 26
    if-nez p0, :cond_2

    .line 27
    .line 28
    return-void

    .line 29
    :cond_2
    throw p0
.end method

.method public final flush()V
    .locals 1

    .line 1
    new-instance p0, Lay8;

    .line 2
    .line 3
    const-string v0, "LZMAOutputStream does not support flushing"

    .line 4
    .line 5
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p0
.end method

.method public final write(I)V
    .locals 2

    int-to-byte p1, p1

    .line 110
    iget-object v0, p0, Ltq4;->q:[B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    const/4 p1, 0x1

    .line 111
    invoke-virtual {p0, v0, v1, p1}, Ltq4;->write([BII)V

    return-void
.end method

.method public final write([BII)V
    .locals 6

    .line 1
    if-ltz p2, :cond_8

    .line 2
    .line 3
    if-ltz p3, :cond_8

    .line 4
    .line 5
    add-int v0, p2, p3

    .line 6
    .line 7
    if-ltz v0, :cond_8

    .line 8
    .line 9
    array-length v1, p1

    .line 10
    if-gt v0, v1, :cond_8

    .line 11
    .line 12
    iget-object v0, p0, Ltq4;->p:Ljava/io/IOException;

    .line 13
    .line 14
    if-nez v0, :cond_7

    .line 15
    .line 16
    iget-boolean v0, p0, Ltq4;->n:Z

    .line 17
    .line 18
    if-nez v0, :cond_6

    .line 19
    .line 20
    const-wide/16 v0, -0x1

    .line 21
    .line 22
    iget-wide v2, p0, Ltq4;->f:J

    .line 23
    .line 24
    cmp-long v0, v2, v0

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget-wide v0, p0, Ltq4;->k:J

    .line 29
    .line 30
    sub-long v0, v2, v0

    .line 31
    .line 32
    int-to-long v4, p3

    .line 33
    cmp-long v0, v0, v4

    .line 34
    .line 35
    if-ltz v0, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    new-instance p0, Lay8;

    .line 39
    .line 40
    const-string p1, "Expected uncompressed input size ("

    .line 41
    .line 42
    const-string p2, " bytes) was exceeded"

    .line 43
    .line 44
    invoke-static {p1, p2, v2, v3}, Lfz5;->m(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p0

    .line 52
    :cond_1
    :goto_0
    iget-wide v0, p0, Ltq4;->k:J

    .line 53
    .line 54
    int-to-long v2, p3

    .line 55
    add-long/2addr v0, v2

    .line 56
    iput-wide v0, p0, Ltq4;->k:J

    .line 57
    .line 58
    :cond_2
    :goto_1
    if-lez p3, :cond_5

    .line 59
    .line 60
    :try_start_0
    iget-object v0, p0, Ltq4;->c:Laq4;

    .line 61
    .line 62
    invoke-virtual {v0, p1, p2, p3}, Laq4;->a([BII)I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    add-int/2addr p2, v0

    .line 67
    sub-int/2addr p3, v0

    .line 68
    iget-object v0, p0, Ltq4;->e:Lpq4;

    .line 69
    .line 70
    iget-object v1, v0, Lpq4;->n:Laq4;

    .line 71
    .line 72
    iget v1, v1, Laq4;->g:I

    .line 73
    .line 74
    const/4 v2, -0x1

    .line 75
    if-eq v1, v2, :cond_3

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_3
    invoke-virtual {v0}, Lpq4;->c()Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-nez v1, :cond_4

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_4
    :goto_2
    invoke-virtual {v0}, Lpq4;->d()Z

    .line 86
    .line 87
    .line 88
    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    if-eqz v1, :cond_2

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :catch_0
    move-exception p1

    .line 93
    iput-object p1, p0, Ltq4;->p:Ljava/io/IOException;

    .line 94
    .line 95
    throw p1

    .line 96
    :cond_5
    return-void

    .line 97
    :cond_6
    new-instance p0, Lay8;

    .line 98
    .line 99
    const-string p1, "Stream finished or closed"

    .line 100
    .line 101
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw p0

    .line 105
    :cond_7
    throw v0

    .line 106
    :cond_8
    invoke-static {}, Ll0;->a()V

    .line 107
    .line 108
    .line 109
    return-void
.end method
