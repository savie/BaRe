.class public final Lcr8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public a:Ljava/io/DataInputStream;

.field public b:Lar8;

.field public c:Lc00;

.field public d:[B

.field public e:Lgd5;

.field public volatile f:Z


# direct methods
.method public static b([B)J
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    aget-byte v0, p0, v0

    .line 3
    .line 4
    int-to-long v0, v0

    .line 5
    const/16 v2, 0x38

    .line 6
    .line 7
    shl-long/2addr v0, v2

    .line 8
    const/4 v2, 0x3

    .line 9
    aget-byte v2, p0, v2

    .line 10
    .line 11
    and-int/lit16 v2, v2, 0xff

    .line 12
    .line 13
    int-to-long v2, v2

    .line 14
    const/16 v4, 0x30

    .line 15
    .line 16
    shl-long/2addr v2, v4

    .line 17
    add-long/2addr v0, v2

    .line 18
    const/4 v2, 0x4

    .line 19
    aget-byte v2, p0, v2

    .line 20
    .line 21
    and-int/lit16 v2, v2, 0xff

    .line 22
    .line 23
    int-to-long v2, v2

    .line 24
    const/16 v4, 0x28

    .line 25
    .line 26
    shl-long/2addr v2, v4

    .line 27
    add-long/2addr v0, v2

    .line 28
    const/4 v2, 0x5

    .line 29
    aget-byte v2, p0, v2

    .line 30
    .line 31
    and-int/lit16 v2, v2, 0xff

    .line 32
    .line 33
    int-to-long v2, v2

    .line 34
    const/16 v4, 0x20

    .line 35
    .line 36
    shl-long/2addr v2, v4

    .line 37
    add-long/2addr v0, v2

    .line 38
    const/4 v2, 0x6

    .line 39
    aget-byte v2, p0, v2

    .line 40
    .line 41
    and-int/lit16 v2, v2, 0xff

    .line 42
    .line 43
    int-to-long v2, v2

    .line 44
    const/16 v4, 0x18

    .line 45
    .line 46
    shl-long/2addr v2, v4

    .line 47
    add-long/2addr v0, v2

    .line 48
    const/4 v2, 0x7

    .line 49
    aget-byte v2, p0, v2

    .line 50
    .line 51
    and-int/lit16 v2, v2, 0xff

    .line 52
    .line 53
    shl-int/lit8 v2, v2, 0x10

    .line 54
    .line 55
    int-to-long v2, v2

    .line 56
    add-long/2addr v0, v2

    .line 57
    const/16 v2, 0x8

    .line 58
    .line 59
    aget-byte v3, p0, v2

    .line 60
    .line 61
    and-int/lit16 v3, v3, 0xff

    .line 62
    .line 63
    shl-int/lit8 v2, v3, 0x8

    .line 64
    .line 65
    int-to-long v2, v2

    .line 66
    add-long/2addr v0, v2

    .line 67
    const/16 v2, 0x9

    .line 68
    .line 69
    aget-byte p0, p0, v2

    .line 70
    .line 71
    and-int/lit16 p0, p0, 0xff

    .line 72
    .line 73
    int-to-long v2, p0

    .line 74
    add-long/2addr v0, v2

    .line 75
    return-wide v0
.end method


# virtual methods
.method public final a(ZB[B)V
    .locals 3

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    if-ne p2, v0, :cond_2

    .line 4
    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    array-length p1, p3

    .line 8
    const/16 p2, 0x7d

    .line 9
    .line 10
    if-gt p1, p2, :cond_0

    .line 11
    .line 12
    iget-object p0, p0, Lcr8;->b:Lar8;

    .line 13
    .line 14
    monitor-enter p0

    .line 15
    const/16 p1, 0xa

    .line 16
    .line 17
    :try_start_0
    invoke-virtual {p0, p1, p3}, Lar8;->e(B[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    monitor-exit p0

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    throw p1

    .line 25
    :cond_0
    new-instance p0, Lbr8;

    .line 26
    .line 27
    const-string p1, "PING frame too long"

    .line 28
    .line 29
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p0

    .line 33
    :cond_1
    new-instance p0, Lbr8;

    .line 34
    .line 35
    const-string p1, "PING must not fragment across frames"

    .line 36
    .line 37
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p0

    .line 41
    :cond_2
    iget-object v0, p0, Lcr8;->e:Lgd5;

    .line 42
    .line 43
    if-eqz v0, :cond_4

    .line 44
    .line 45
    if-nez p2, :cond_3

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_3
    new-instance p0, Lbr8;

    .line 49
    .line 50
    const-string p1, "Failed to continue outstanding frame"

    .line 51
    .line 52
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p0

    .line 56
    :cond_4
    :goto_0
    if-nez v0, :cond_6

    .line 57
    .line 58
    if-eqz p2, :cond_5

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_5
    new-instance p0, Lbr8;

    .line 62
    .line 63
    const-string p1, "Received continuing frame, but there\'s nothing to continue"

    .line 64
    .line 65
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw p0

    .line 69
    :cond_6
    :goto_1
    const/4 v1, 0x0

    .line 70
    if-nez v0, :cond_8

    .line 71
    .line 72
    const/4 v0, 0x2

    .line 73
    if-ne p2, v0, :cond_7

    .line 74
    .line 75
    new-instance p2, Leo2;

    .line 76
    .line 77
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 78
    .line 79
    .line 80
    iput v1, p2, Leo2;->a:I

    .line 81
    .line 82
    new-instance v0, Ljava/util/ArrayList;

    .line 83
    .line 84
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .line 86
    .line 87
    iput-object v0, p2, Leo2;->b:Ljava/lang/Object;

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_7
    new-instance p2, Ljd5;

    .line 91
    .line 92
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 93
    .line 94
    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    iput-object v0, p2, Ljd5;->a:Ljava/lang/StringBuilder;

    .line 101
    .line 102
    :goto_2
    iput-object p2, p0, Lcr8;->e:Lgd5;

    .line 103
    .line 104
    :cond_8
    iget-object p2, p0, Lcr8;->e:Lgd5;

    .line 105
    .line 106
    invoke-interface {p2, p3}, Lgd5;->a([B)Z

    .line 107
    .line 108
    .line 109
    move-result p2

    .line 110
    if-eqz p2, :cond_b

    .line 111
    .line 112
    if-eqz p1, :cond_a

    .line 113
    .line 114
    iget-object p1, p0, Lcr8;->e:Lgd5;

    .line 115
    .line 116
    invoke-interface {p1}, Lgd5;->b()Lut1;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    const/4 p2, 0x0

    .line 121
    iput-object p2, p0, Lcr8;->e:Lgd5;

    .line 122
    .line 123
    iget-object p0, p0, Lcr8;->c:Lc00;

    .line 124
    .line 125
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    .line 127
    .line 128
    iget-object p1, p1, Lut1;->a:Ljava/lang/String;

    .line 129
    .line 130
    iget-object p3, p0, Lc00;->c:Ljava/lang/Object;

    .line 131
    .line 132
    check-cast p3, Lnr8;

    .line 133
    .line 134
    iget-object v0, p3, Lnr8;->j:Lu00;

    .line 135
    .line 136
    invoke-virtual {v0}, Lu00;->e()Z

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    if-eqz v0, :cond_9

    .line 141
    .line 142
    iget-object v0, p3, Lnr8;->j:Lu00;

    .line 143
    .line 144
    const-string v2, "ws message: "

    .line 145
    .line 146
    invoke-static {v2, p1}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    new-array v1, v1, [Ljava/lang/Object;

    .line 151
    .line 152
    invoke-virtual {v0, v2, p2, v1}, Lu00;->c(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    :cond_9
    iget-object p2, p3, Lnr8;->i:Ljava/util/concurrent/ScheduledExecutorService;

    .line 156
    .line 157
    new-instance p3, Lv66;

    .line 158
    .line 159
    const/4 v0, 0x1

    .line 160
    invoke-direct {p3, p0, p1, v0}, Lv66;-><init>(Ljava/lang/Object;Ljava/io/Serializable;I)V

    .line 161
    .line 162
    .line 163
    invoke-interface {p2, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 164
    .line 165
    .line 166
    :cond_a
    return-void

    .line 167
    :cond_b
    new-instance p0, Lbr8;

    .line 168
    .line 169
    const-string p1, "Failed to decode frame"

    .line 170
    .line 171
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    throw p0
.end method

.method public final c()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcr8;->b:Lar8;

    .line 2
    .line 3
    iget-object v0, v0, Lar8;->c:Lc00;

    .line 4
    .line 5
    iput-object v0, p0, Lcr8;->c:Lc00;

    .line 6
    .line 7
    :catch_0
    :goto_0
    iget-boolean v0, p0, Lcr8;->f:Z

    .line 8
    .line 9
    if-nez v0, :cond_b

    .line 10
    .line 11
    const/4 v0, 0x3

    .line 12
    const/4 v1, 0x1

    .line 13
    :try_start_0
    iget-object v2, p0, Lcr8;->d:[B

    .line 14
    .line 15
    iget-object v3, p0, Lcr8;->a:Ljava/io/DataInputStream;

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    invoke-virtual {v3, v2, v4, v1}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 19
    .line 20
    .line 21
    iget-object v2, p0, Lcr8;->d:[B

    .line 22
    .line 23
    aget-byte v3, v2, v4

    .line 24
    .line 25
    and-int/lit16 v5, v3, 0x80

    .line 26
    .line 27
    if-eqz v5, :cond_0

    .line 28
    .line 29
    move v5, v1

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    move v5, v4

    .line 32
    :goto_1
    and-int/lit8 v6, v3, 0x70

    .line 33
    .line 34
    if-nez v6, :cond_8

    .line 35
    .line 36
    and-int/lit8 v3, v3, 0xf

    .line 37
    .line 38
    int-to-byte v3, v3

    .line 39
    iget-object v6, p0, Lcr8;->a:Ljava/io/DataInputStream;

    .line 40
    .line 41
    invoke-virtual {v6, v2, v1, v1}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 42
    .line 43
    .line 44
    iget-object v2, p0, Lcr8;->d:[B

    .line 45
    .line 46
    aget-byte v6, v2, v1

    .line 47
    .line 48
    const/16 v7, 0x7e

    .line 49
    .line 50
    const/16 v8, 0x8

    .line 51
    .line 52
    const/4 v9, 0x2

    .line 53
    if-ge v6, v7, :cond_1

    .line 54
    .line 55
    int-to-long v6, v6

    .line 56
    goto :goto_2

    .line 57
    :cond_1
    if-ne v6, v7, :cond_2

    .line 58
    .line 59
    iget-object v6, p0, Lcr8;->a:Ljava/io/DataInputStream;

    .line 60
    .line 61
    invoke-virtual {v6, v2, v9, v9}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 62
    .line 63
    .line 64
    iget-object v2, p0, Lcr8;->d:[B

    .line 65
    .line 66
    aget-byte v6, v2, v9

    .line 67
    .line 68
    and-int/lit16 v6, v6, 0xff

    .line 69
    .line 70
    int-to-long v6, v6

    .line 71
    shl-long/2addr v6, v8

    .line 72
    aget-byte v2, v2, v0

    .line 73
    .line 74
    and-int/lit16 v2, v2, 0xff

    .line 75
    .line 76
    int-to-long v10, v2

    .line 77
    or-long/2addr v6, v10

    .line 78
    goto :goto_2

    .line 79
    :catch_1
    move-exception v2

    .line 80
    goto :goto_4

    .line 81
    :catch_2
    move-exception v2

    .line 82
    goto/16 :goto_5

    .line 83
    .line 84
    :cond_2
    const/16 v7, 0x7f

    .line 85
    .line 86
    if-ne v6, v7, :cond_3

    .line 87
    .line 88
    iget-object v6, p0, Lcr8;->a:Ljava/io/DataInputStream;

    .line 89
    .line 90
    invoke-virtual {v6, v2, v9, v8}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 91
    .line 92
    .line 93
    iget-object v2, p0, Lcr8;->d:[B

    .line 94
    .line 95
    invoke-static {v2}, Lcr8;->b([B)J

    .line 96
    .line 97
    .line 98
    move-result-wide v6

    .line 99
    goto :goto_2

    .line 100
    :cond_3
    const-wide/16 v6, 0x0

    .line 101
    .line 102
    :goto_2
    long-to-int v2, v6

    .line 103
    new-array v6, v2, [B

    .line 104
    .line 105
    iget-object v7, p0, Lcr8;->a:Ljava/io/DataInputStream;

    .line 106
    .line 107
    invoke-virtual {v7, v6, v4, v2}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 108
    .line 109
    .line 110
    if-ne v3, v8, :cond_4

    .line 111
    .line 112
    iget-object v2, p0, Lcr8;->b:Lar8;

    .line 113
    .line 114
    invoke-virtual {v2}, Lar8;->b()V

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_4
    const/16 v2, 0xa

    .line 119
    .line 120
    if-ne v3, v2, :cond_5

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_5
    if-eq v3, v1, :cond_7

    .line 124
    .line 125
    if-eq v3, v9, :cond_7

    .line 126
    .line 127
    const/16 v2, 0x9

    .line 128
    .line 129
    if-eq v3, v2, :cond_7

    .line 130
    .line 131
    if-nez v3, :cond_6

    .line 132
    .line 133
    goto :goto_3

    .line 134
    :cond_6
    new-instance v2, Lbr8;

    .line 135
    .line 136
    new-instance v4, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .line 140
    .line 141
    const-string v5, "Unsupported opcode: "

    .line 142
    .line 143
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    throw v2

    .line 157
    :cond_7
    :goto_3
    invoke-virtual {p0, v5, v3, v6}, Lcr8;->a(ZB[B)V

    .line 158
    .line 159
    .line 160
    goto/16 :goto_0

    .line 161
    .line 162
    :cond_8
    new-instance v2, Lbr8;

    .line 163
    .line 164
    const-string v3, "Invalid frame received"

    .line 165
    .line 166
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    throw v2
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lbr8; {:try_start_0 .. :try_end_0} :catch_1

    .line 170
    :goto_4
    iput-boolean v1, p0, Lcr8;->f:Z

    .line 171
    .line 172
    iget-object v1, p0, Lcr8;->b:Lar8;

    .line 173
    .line 174
    iget-object v3, v1, Lar8;->c:Lc00;

    .line 175
    .line 176
    invoke-virtual {v3, v2}, Lc00;->n(Lbr8;)V

    .line 177
    .line 178
    .line 179
    iget v2, v1, Lar8;->a:I

    .line 180
    .line 181
    if-ne v2, v0, :cond_9

    .line 182
    .line 183
    invoke-virtual {v1}, Lar8;->a()V

    .line 184
    .line 185
    .line 186
    :cond_9
    invoke-virtual {v1}, Lar8;->b()V

    .line 187
    .line 188
    .line 189
    goto/16 :goto_0

    .line 190
    .line 191
    :goto_5
    new-instance v3, Lbr8;

    .line 192
    .line 193
    const-string v4, "IO Error"

    .line 194
    .line 195
    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 196
    .line 197
    .line 198
    iput-boolean v1, p0, Lcr8;->f:Z

    .line 199
    .line 200
    iget-object v1, p0, Lcr8;->b:Lar8;

    .line 201
    .line 202
    iget-object v2, v1, Lar8;->c:Lc00;

    .line 203
    .line 204
    invoke-virtual {v2, v3}, Lc00;->n(Lbr8;)V

    .line 205
    .line 206
    .line 207
    iget v2, v1, Lar8;->a:I

    .line 208
    .line 209
    if-ne v2, v0, :cond_a

    .line 210
    .line 211
    invoke-virtual {v1}, Lar8;->a()V

    .line 212
    .line 213
    .line 214
    :cond_a
    invoke-virtual {v1}, Lar8;->b()V

    .line 215
    .line 216
    .line 217
    goto/16 :goto_0

    .line 218
    .line 219
    :cond_b
    return-void
.end method
