.class public final Lgh7;
.super Ljava/io/InputStream;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public a:Lwu0;

.field public final b:Lv40;

.field public final c:I

.field public final d:Lep7;

.field public final e:Ls51;

.field public final f:Z

.field public k:Lzs0;

.field public final n:Lpb4;

.field public p:Z

.field public q:Ljava/io/IOException;

.field public final r:[B


# direct methods
.method public constructor <init>(Lwu0;ILv40;)V
    .locals 5

    .line 1
    const/16 v0, 0xc

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    new-instance v1, Ljava/io/DataInputStream;

    .line 6
    .line 7
    invoke-direct {v1, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    iput-object v1, p0, Lgh7;->k:Lzs0;

    .line 18
    .line 19
    new-instance v2, Lpb4;

    .line 20
    .line 21
    invoke-direct {v2}, Lpb4;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v2, p0, Lgh7;->n:Lpb4;

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    iput-boolean v2, p0, Lgh7;->p:Z

    .line 28
    .line 29
    iput-object v1, p0, Lgh7;->q:Ljava/io/IOException;

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    new-array v4, v3, [B

    .line 33
    .line 34
    iput-object v4, p0, Lgh7;->r:[B

    .line 35
    .line 36
    iput-object p3, p0, Lgh7;->b:Lv40;

    .line 37
    .line 38
    iput-object p1, p0, Lgh7;->a:Lwu0;

    .line 39
    .line 40
    iput p2, p0, Lgh7;->c:I

    .line 41
    .line 42
    iput-boolean v3, p0, Lgh7;->f:Z

    .line 43
    .line 44
    move p1, v2

    .line 45
    :goto_0
    sget-object p2, Lji8;->f:[B

    .line 46
    .line 47
    const/4 p3, 0x6

    .line 48
    if-ge p1, p3, :cond_1

    .line 49
    .line 50
    aget-byte p3, v0, p1

    .line 51
    .line 52
    aget-byte p2, p2, p1

    .line 53
    .line 54
    if-ne p3, p2, :cond_0

    .line 55
    .line 56
    add-int/lit8 p1, p1, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    new-instance p0, Lzx8;

    .line 60
    .line 61
    const-string p1, "Input is not in the XZ format"

    .line 62
    .line 63
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw p0

    .line 67
    :cond_1
    const/4 p1, 0x2

    .line 68
    const/16 p2, 0x8

    .line 69
    .line 70
    invoke-static {p3, v0, p1, p2}, Lbb9;->y(I[BII)Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-eqz p1, :cond_6

    .line 75
    .line 76
    :try_start_0
    invoke-static {v0, p3}, Lbb9;->q([BI)Lep7;

    .line 77
    .line 78
    .line 79
    move-result-object p1
    :try_end_0
    .catch Lhf8; {:try_start_0 .. :try_end_0} :catch_1

    .line 80
    iput-object p1, p0, Lgh7;->d:Lep7;

    .line 81
    .line 82
    iget p1, p1, Lep7;->a:I

    .line 83
    .line 84
    if-eqz p1, :cond_5

    .line 85
    .line 86
    if-eq p1, v3, :cond_4

    .line 87
    .line 88
    const/4 p3, 0x4

    .line 89
    if-eq p1, p3, :cond_3

    .line 90
    .line 91
    const/16 p2, 0xa

    .line 92
    .line 93
    if-ne p1, p2, :cond_2

    .line 94
    .line 95
    :try_start_1
    new-instance p2, Lgr6;

    .line 96
    .line 97
    invoke-direct {p2}, Lgr6;-><init>()V
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :catch_0
    :cond_2
    const-string p0, "Unsupported Check ID "

    .line 102
    .line 103
    invoke-static {p1, p0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    invoke-static {p0}, Ly5;->h(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    throw v1

    .line 111
    :cond_3
    new-instance p1, Lcz0;

    .line 112
    .line 113
    invoke-direct {p1}, Ls51;-><init>()V

    .line 114
    .line 115
    .line 116
    const-wide/16 v0, -0x1

    .line 117
    .line 118
    iput-wide v0, p1, Lcz0;->d:J

    .line 119
    .line 120
    iput p2, p1, Ls51;->b:I

    .line 121
    .line 122
    const-string p2, "CRC64"

    .line 123
    .line 124
    iput-object p2, p1, Ls51;->c:Ljava/lang/String;

    .line 125
    .line 126
    move-object p2, p1

    .line 127
    goto :goto_1

    .line 128
    :cond_4
    new-instance p2, Lbz0;

    .line 129
    .line 130
    invoke-direct {p2}, Lbz0;-><init>()V

    .line 131
    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_5
    new-instance p2, Ldo5;

    .line 135
    .line 136
    invoke-direct {p2}, Ls51;-><init>()V

    .line 137
    .line 138
    .line 139
    iput v2, p2, Ls51;->b:I

    .line 140
    .line 141
    const-string p1, "None"

    .line 142
    .line 143
    iput-object p1, p2, Ls51;->c:Ljava/lang/String;

    .line 144
    .line 145
    :goto_1
    iput-object p2, p0, Lgh7;->e:Ls51;

    .line 146
    .line 147
    return-void

    .line 148
    :catch_1
    const-string p0, "Unsupported options in XZ Stream Header"

    .line 149
    .line 150
    invoke-static {p0}, Ly5;->h(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    throw v1

    .line 154
    :cond_6
    new-instance p0, Lcy1;

    .line 155
    .line 156
    const-string p1, "XZ Stream Header is corrupt"

    .line 157
    .line 158
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    throw p0
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lgh7;->a:Lwu0;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lgh7;->k:Lzs0;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Lzs0;->close()V

    .line 11
    .line 12
    .line 13
    iput-object v1, p0, Lgh7;->k:Lzs0;

    .line 14
    .line 15
    :cond_0
    if-eqz p1, :cond_1

    .line 16
    .line 17
    :try_start_0
    iget-object p1, p0, Lgh7;->a:Lwu0;

    .line 18
    .line 19
    invoke-virtual {p1}, Lwu0;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    iput-object v1, p0, Lgh7;->a:Lwu0;

    .line 25
    .line 26
    throw p1

    .line 27
    :cond_1
    :goto_0
    iput-object v1, p0, Lgh7;->a:Lwu0;

    .line 28
    .line 29
    :cond_2
    return-void
.end method

.method public final available()I
    .locals 1

    .line 1
    iget-object v0, p0, Lgh7;->a:Lwu0;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lgh7;->q:Ljava/io/IOException;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object p0, p0, Lgh7;->k:Lzs0;

    .line 10
    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    return p0

    .line 15
    :cond_0
    iget-object p0, p0, Lzs0;->c:Ljava/io/InputStream;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0

    .line 22
    :cond_1
    throw v0

    .line 23
    :cond_2
    new-instance p0, Lay8;

    .line 24
    .line 25
    const-string v0, "Stream closed"

    .line 26
    .line 27
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p0
.end method

.method public final b()V
    .locals 9

    .line 1
    const/16 v0, 0xc

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    new-instance v1, Ljava/io/DataInputStream;

    .line 6
    .line 7
    iget-object v2, p0, Lgh7;->a:Lwu0;

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 13
    .line 14
    .line 15
    const/16 v1, 0xa

    .line 16
    .line 17
    aget-byte v1, v0, v1

    .line 18
    .line 19
    sget-object v2, Lji8;->k:[B

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    aget-byte v4, v2, v3

    .line 23
    .line 24
    const-string v5, "XZ Stream Footer is corrupt"

    .line 25
    .line 26
    if-ne v1, v4, :cond_3

    .line 27
    .line 28
    const/16 v1, 0xb

    .line 29
    .line 30
    aget-byte v1, v0, v1

    .line 31
    .line 32
    const/4 v4, 0x1

    .line 33
    aget-byte v2, v2, v4

    .line 34
    .line 35
    if-ne v1, v2, :cond_3

    .line 36
    .line 37
    const/4 v1, 0x6

    .line 38
    const/4 v2, 0x4

    .line 39
    invoke-static {v2, v0, v1, v3}, Lbb9;->y(I[BII)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    const/16 v1, 0x8

    .line 46
    .line 47
    :try_start_0
    invoke-static {v0, v1}, Lbb9;->q([BI)Lep7;

    .line 48
    .line 49
    .line 50
    move-result-object v1
    :try_end_0
    .catch Lhf8; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    const-wide/16 v5, 0x0

    .line 52
    .line 53
    iput-wide v5, v1, Lep7;->b:J

    .line 54
    .line 55
    :goto_0
    iget-wide v5, v1, Lep7;->b:J

    .line 56
    .line 57
    if-ge v3, v2, :cond_0

    .line 58
    .line 59
    add-int/lit8 v7, v3, 0x4

    .line 60
    .line 61
    aget-byte v7, v0, v7

    .line 62
    .line 63
    and-int/lit16 v7, v7, 0xff

    .line 64
    .line 65
    mul-int/lit8 v8, v3, 0x8

    .line 66
    .line 67
    shl-int/2addr v7, v8

    .line 68
    int-to-long v7, v7

    .line 69
    or-long/2addr v5, v7

    .line 70
    iput-wide v5, v1, Lep7;->b:J

    .line 71
    .line 72
    add-int/lit8 v3, v3, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_0
    const-wide/16 v2, 0x1

    .line 76
    .line 77
    add-long/2addr v5, v2

    .line 78
    const-wide/16 v2, 0x4

    .line 79
    .line 80
    mul-long/2addr v5, v2

    .line 81
    iput-wide v5, v1, Lep7;->b:J

    .line 82
    .line 83
    iget-object v0, p0, Lgh7;->d:Lep7;

    .line 84
    .line 85
    iget v0, v0, Lep7;->a:I

    .line 86
    .line 87
    iget v2, v1, Lep7;->a:I

    .line 88
    .line 89
    if-ne v0, v2, :cond_1

    .line 90
    .line 91
    iget-object p0, p0, Lgh7;->n:Lpb4;

    .line 92
    .line 93
    iget-wide v2, p0, Lpb4;->e:J

    .line 94
    .line 95
    invoke-static {v2, v3}, Lbb9;->v(J)I

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    add-int/2addr v0, v4

    .line 100
    int-to-long v2, v0

    .line 101
    iget-wide v4, p0, Lpb4;->d:J

    .line 102
    .line 103
    add-long/2addr v2, v4

    .line 104
    const-wide/16 v4, 0x7

    .line 105
    .line 106
    add-long/2addr v2, v4

    .line 107
    const-wide/16 v4, -0x4

    .line 108
    .line 109
    and-long/2addr v2, v4

    .line 110
    iget-wide v0, v1, Lep7;->b:J

    .line 111
    .line 112
    cmp-long p0, v2, v0

    .line 113
    .line 114
    if-nez p0, :cond_1

    .line 115
    .line 116
    return-void

    .line 117
    :cond_1
    new-instance p0, Lcy1;

    .line 118
    .line 119
    const-string v0, "XZ Stream Footer does not match Stream Header"

    .line 120
    .line 121
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw p0

    .line 125
    :catch_0
    const-string p0, "Unsupported options in XZ Stream Footer"

    .line 126
    .line 127
    invoke-static {p0}, Ly5;->h(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    return-void

    .line 131
    :cond_2
    new-instance p0, Lcy1;

    .line 132
    .line 133
    invoke-direct {p0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    throw p0

    .line 137
    :cond_3
    new-instance p0, Lcy1;

    .line 138
    .line 139
    invoke-direct {p0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    throw p0
.end method

.method public final close()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lgh7;->a(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final read()I
    .locals 3

    const/4 v0, 0x1

    .line 134
    iget-object v1, p0, Lgh7;->r:[B

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lgh7;->read([BII)I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    aget-byte p0, v1, v2

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public final read([BII)I
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    if-ltz p2, :cond_a

    .line 3
    .line 4
    if-ltz p3, :cond_a

    .line 5
    .line 6
    add-int v1, p2, p3

    .line 7
    .line 8
    if-ltz v1, :cond_a

    .line 9
    .line 10
    array-length v2, p1

    .line 11
    if-gt v1, v2, :cond_a

    .line 12
    .line 13
    if-nez p3, :cond_0

    .line 14
    .line 15
    return v0

    .line 16
    :cond_0
    iget-object v1, p0, Lgh7;->a:Lwu0;

    .line 17
    .line 18
    if-eqz v1, :cond_9

    .line 19
    .line 20
    iget-object v1, p0, Lgh7;->q:Ljava/io/IOException;

    .line 21
    .line 22
    if-nez v1, :cond_8

    .line 23
    .line 24
    iget-boolean v1, p0, Lgh7;->p:Z

    .line 25
    .line 26
    const/4 v2, -0x1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    return v2

    .line 30
    :cond_1
    move v1, v0

    .line 31
    :cond_2
    :goto_0
    if-lez p3, :cond_7

    .line 32
    .line 33
    :try_start_0
    iget-object v0, p0, Lgh7;->k:Lzs0;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    iget-object v3, p0, Lgh7;->n:Lpb4;

    .line 36
    .line 37
    if-nez v0, :cond_4

    .line 38
    .line 39
    :try_start_1
    new-instance v4, Lzs0;

    .line 40
    .line 41
    iget-object v5, p0, Lgh7;->a:Lwu0;

    .line 42
    .line 43
    iget-object v6, p0, Lgh7;->e:Ls51;

    .line 44
    .line 45
    iget-boolean v7, p0, Lgh7;->f:Z

    .line 46
    .line 47
    iget v8, p0, Lgh7;->c:I

    .line 48
    .line 49
    iget-object v9, p0, Lgh7;->b:Lv40;

    .line 50
    .line 51
    invoke-direct/range {v4 .. v9}, Lzs0;-><init>(Lwu0;Ls51;ZILv40;)V

    .line 52
    .line 53
    .line 54
    iput-object v4, p0, Lgh7;->k:Lzs0;
    :try_end_1
    .catch Lqb4; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :catch_0
    move-exception v0

    .line 58
    move-object p1, v0

    .line 59
    goto :goto_2

    .line 60
    :catch_1
    :try_start_2
    iget-object p1, p0, Lgh7;->a:Lwu0;

    .line 61
    .line 62
    invoke-virtual {v3, p1}, Lpb4;->b(Lwu0;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Lgh7;->b()V

    .line 66
    .line 67
    .line 68
    const/4 p1, 0x1

    .line 69
    iput-boolean p1, p0, Lgh7;->p:Z

    .line 70
    .line 71
    if-lez v1, :cond_3

    .line 72
    .line 73
    move v2, v1

    .line 74
    :cond_3
    return v2

    .line 75
    :cond_4
    :goto_1
    iget-object v0, p0, Lgh7;->k:Lzs0;

    .line 76
    .line 77
    invoke-virtual {v0, p1, p2, p3}, Lzs0;->read([BII)I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-lez v0, :cond_5

    .line 82
    .line 83
    add-int/2addr v1, v0

    .line 84
    add-int/2addr p2, v0

    .line 85
    sub-int/2addr p3, v0

    .line 86
    goto :goto_0

    .line 87
    :cond_5
    if-ne v0, v2, :cond_2

    .line 88
    .line 89
    iget-object v0, p0, Lgh7;->k:Lzs0;

    .line 90
    .line 91
    iget v4, v0, Lzs0;->p:I

    .line 92
    .line 93
    int-to-long v4, v4

    .line 94
    iget-object v6, v0, Lzs0;->b:Lhy1;

    .line 95
    .line 96
    iget-wide v6, v6, Lhy1;->a:J

    .line 97
    .line 98
    add-long/2addr v4, v6

    .line 99
    iget-object v6, v0, Lzs0;->d:Ls51;

    .line 100
    .line 101
    iget v6, v6, Ls51;->b:I

    .line 102
    .line 103
    int-to-long v6, v6

    .line 104
    add-long/2addr v4, v6

    .line 105
    iget-wide v6, v0, Lzs0;->q:J

    .line 106
    .line 107
    invoke-virtual {v3, v4, v5, v6, v7}, Lpb4;->a(JJ)V

    .line 108
    .line 109
    .line 110
    const/4 v0, 0x0

    .line 111
    iput-object v0, p0, Lgh7;->k:Lzs0;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :goto_2
    iput-object p1, p0, Lgh7;->q:Ljava/io/IOException;

    .line 115
    .line 116
    if-eqz v1, :cond_6

    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_6
    throw p1

    .line 120
    :cond_7
    :goto_3
    return v1

    .line 121
    :cond_8
    throw v1

    .line 122
    :cond_9
    new-instance p0, Lay8;

    .line 123
    .line 124
    const-string p1, "Stream closed"

    .line 125
    .line 126
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    throw p0

    .line 130
    :cond_a
    invoke-static {}, Ll0;->a()V

    .line 131
    .line 132
    .line 133
    return v0
.end method
