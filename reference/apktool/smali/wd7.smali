.class public Lwd7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/io/DataInput;
.implements Ljava/io/DataOutput;
.implements Ljava/io/Closeable;


# instance fields
.field public final a:Lkr7;

.field public final b:Z

.field public c:Z

.field public d:J


# direct methods
.method public constructor <init>(Lkr7;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/io/FileNotFoundException;

    .line 5
    .line 6
    const-string v1, "No such file or directory"

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lwd7;->a:Lkr7;

    .line 12
    .line 13
    const-string v1, "[ -d @@ ]"

    .line 14
    .line 15
    invoke-virtual {p1, v1}, Lkr7;->b(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_7

    .line 20
    .line 21
    const-wide/16 v1, 0x0

    .line 22
    .line 23
    iput-wide v1, p0, Lwd7;->d:J

    .line 24
    .line 25
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    const/4 v2, 0x1

    .line 30
    const/4 v3, -0x1

    .line 31
    sparse-switch v1, :sswitch_data_0

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :sswitch_0
    const-string v1, "rw"

    .line 36
    .line 37
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    if-nez p2, :cond_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const/4 v3, 0x2

    .line 45
    goto :goto_0

    .line 46
    :sswitch_1
    const-string v1, "w"

    .line 47
    .line 48
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    if-nez p2, :cond_1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    move v3, v2

    .line 56
    goto :goto_0

    .line 57
    :sswitch_2
    const-string v1, "r"

    .line 58
    .line 59
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result p2

    .line 63
    if-nez p2, :cond_2

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    const/4 v3, 0x0

    .line 67
    :goto_0
    const-string p2, "[ -e @@ ]"

    .line 68
    .line 69
    packed-switch v3, :pswitch_data_0

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :pswitch_0
    invoke-virtual {p1, p2}, Lkr7;->b(Ljava/lang/String;)Z

    .line 74
    .line 75
    .line 76
    move-result p0

    .line 77
    if-nez p0, :cond_4

    .line 78
    .line 79
    const-string p0, "[ ! -e @@ ] && echo -n > @@"

    .line 80
    .line 81
    invoke-virtual {p1, p0}, Lkr7;->b(Ljava/lang/String;)Z

    .line 82
    .line 83
    .line 84
    move-result p0

    .line 85
    if-eqz p0, :cond_3

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_3
    throw v0

    .line 89
    :pswitch_1
    const-string p0, "echo -n > @@"

    .line 90
    .line 91
    invoke-virtual {p1, p0}, Lkr7;->b(Ljava/lang/String;)Z

    .line 92
    .line 93
    .line 94
    move-result p0

    .line 95
    if-eqz p0, :cond_5

    .line 96
    .line 97
    :cond_4
    :goto_1
    return-void

    .line 98
    :cond_5
    throw v0

    .line 99
    :pswitch_2
    invoke-virtual {p1, p2}, Lkr7;->b(Ljava/lang/String;)Z

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    if-eqz p1, :cond_6

    .line 104
    .line 105
    iput-boolean v2, p0, Lwd7;->b:Z

    .line 106
    .line 107
    return-void

    .line 108
    :cond_6
    throw v0

    .line 109
    :cond_7
    throw v0

    .line 110
    nop

    .line 111
    :sswitch_data_0
    .sparse-switch
        0x72 -> :sswitch_2
        0x77 -> :sswitch_1
        0xe45 -> :sswitch_0
    .end sparse-switch

    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a([BIIII)I
    .locals 12

    .line 1
    iget-boolean v0, p0, Lwd7;->c:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    const/4 v0, 0x1

    .line 8
    new-array v9, v0, [I

    .line 9
    .line 10
    mul-int v8, p3, p5

    .line 11
    .line 12
    iget-object v2, p0, Lwd7;->a:Lkr7;

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    sget v2, Lcom/topjohnwu/superuser/Shell;->UNKNOWN:I

    .line 18
    .line 19
    invoke-static {}, Lk55;->j()Lzd7;

    .line 20
    .line 21
    .line 22
    move-result-object v11

    .line 23
    new-instance v2, Lvd7;

    .line 24
    .line 25
    move-object v3, p0

    .line 26
    move-object v10, p1

    .line 27
    move v4, p2

    .line 28
    move v7, p3

    .line 29
    move/from16 v6, p4

    .line 30
    .line 31
    move/from16 v5, p5

    .line 32
    .line 33
    invoke-direct/range {v2 .. v10}, Lvd7;-><init>(Lwd7;IIIII[I[B)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v11, v2}, Lzd7;->execTask(Lpd7;)V

    .line 37
    .line 38
    .line 39
    aget p1, v9, v1

    .line 40
    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    if-eq p1, v8, :cond_1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    return p1

    .line 47
    :cond_2
    :goto_0
    iput-boolean v0, p0, Lwd7;->c:Z

    .line 48
    .line 49
    return p1
.end method

.method public b()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "conv=notrunc"

    .line 2
    .line 3
    return-object p0
.end method

.method public final close()V
    .locals 0

    .line 1
    return-void
.end method

.method public g()J
    .locals 2

    .line 1
    iget-object p0, p0, Lwd7;->a:Lkr7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lkr7;->length()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final read([BII)I
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v6, p1

    .line 4
    .line 5
    move/from16 v7, p2

    .line 6
    .line 7
    move/from16 v8, p3

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-ltz v7, :cond_e

    .line 11
    .line 12
    if-ltz v8, :cond_e

    .line 13
    .line 14
    add-int v2, v7, v8

    .line 15
    .line 16
    array-length v3, v6

    .line 17
    if-gt v2, v3, :cond_e

    .line 18
    .line 19
    if-nez v8, :cond_0

    .line 20
    .line 21
    return v1

    .line 22
    :cond_0
    iget-boolean v2, v0, Lwd7;->c:Z

    .line 23
    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    goto/16 :goto_7

    .line 27
    .line 28
    :cond_1
    iget-wide v2, v0, Lwd7;->d:J

    .line 29
    .line 30
    int-to-long v4, v8

    .line 31
    const-wide/16 v9, 0x0

    .line 32
    .line 33
    cmp-long v11, v2, v9

    .line 34
    .line 35
    const/4 v12, 0x1

    .line 36
    if-nez v11, :cond_2

    .line 37
    .line 38
    move-wide v2, v4

    .line 39
    goto :goto_4

    .line 40
    :cond_2
    cmp-long v11, v4, v9

    .line 41
    .line 42
    if-nez v11, :cond_3

    .line 43
    .line 44
    goto :goto_4

    .line 45
    :cond_3
    move v11, v1

    .line 46
    move-wide v13, v4

    .line 47
    :goto_0
    or-long v15, v2, v13

    .line 48
    .line 49
    const-wide/16 v17, 0x1

    .line 50
    .line 51
    and-long v15, v15, v17

    .line 52
    .line 53
    cmp-long v1, v15, v9

    .line 54
    .line 55
    if-nez v1, :cond_4

    .line 56
    .line 57
    shr-long/2addr v2, v12

    .line 58
    shr-long/2addr v13, v12

    .line 59
    add-int/lit8 v11, v11, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_4
    :goto_1
    and-long v15, v2, v17

    .line 63
    .line 64
    cmp-long v1, v15, v9

    .line 65
    .line 66
    if-nez v1, :cond_5

    .line 67
    .line 68
    shr-long/2addr v2, v12

    .line 69
    goto :goto_1

    .line 70
    :cond_5
    :goto_2
    and-long v15, v13, v17

    .line 71
    .line 72
    cmp-long v1, v15, v9

    .line 73
    .line 74
    if-nez v1, :cond_6

    .line 75
    .line 76
    shr-long/2addr v13, v12

    .line 77
    goto :goto_2

    .line 78
    :cond_6
    cmp-long v1, v2, v13

    .line 79
    .line 80
    if-lez v1, :cond_7

    .line 81
    .line 82
    goto :goto_3

    .line 83
    :cond_7
    move-wide/from16 v19, v13

    .line 84
    .line 85
    move-wide v13, v2

    .line 86
    move-wide/from16 v2, v19

    .line 87
    .line 88
    :goto_3
    sub-long v1, v2, v13

    .line 89
    .line 90
    cmp-long v3, v1, v9

    .line 91
    .line 92
    if-nez v3, :cond_d

    .line 93
    .line 94
    shl-long v2, v13, v11

    .line 95
    .line 96
    :goto_4
    long-to-int v1, v2

    .line 97
    const/16 v2, 0x200

    .line 98
    .line 99
    if-ge v1, v2, :cond_b

    .line 100
    .line 101
    if-ge v8, v2, :cond_8

    .line 102
    .line 103
    goto :goto_5

    .line 104
    :cond_8
    iget-wide v1, v0, Lwd7;->d:J

    .line 105
    .line 106
    const-wide/16 v9, 0x1000

    .line 107
    .line 108
    div-long v13, v1, v9

    .line 109
    .line 110
    add-long/2addr v1, v4

    .line 111
    const-wide/16 v3, 0xfff

    .line 112
    .line 113
    add-long/2addr v1, v3

    .line 114
    div-long/2addr v1, v9

    .line 115
    sub-long/2addr v1, v13

    .line 116
    long-to-int v3, v1

    .line 117
    mul-int/lit16 v1, v3, 0x1000

    .line 118
    .line 119
    new-array v1, v1, [B

    .line 120
    .line 121
    mul-long/2addr v9, v13

    .line 122
    const/4 v2, 0x0

    .line 123
    long-to-int v4, v13

    .line 124
    const/16 v5, 0x1000

    .line 125
    .line 126
    invoke-virtual/range {v0 .. v5}, Lwd7;->a([BIIII)I

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    if-lez v2, :cond_a

    .line 131
    .line 132
    int-to-long v2, v2

    .line 133
    add-long/2addr v2, v9

    .line 134
    iget-wide v4, v0, Lwd7;->d:J

    .line 135
    .line 136
    sub-long/2addr v2, v4

    .line 137
    long-to-int v2, v2

    .line 138
    if-ge v2, v8, :cond_9

    .line 139
    .line 140
    iput-boolean v12, v0, Lwd7;->c:Z

    .line 141
    .line 142
    :cond_9
    invoke-static {v2, v8}, Ljava/lang/Math;->min(II)I

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    iget-wide v3, v0, Lwd7;->d:J

    .line 147
    .line 148
    sub-long/2addr v3, v9

    .line 149
    long-to-int v3, v3

    .line 150
    invoke-static {v1, v3, v6, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 151
    .line 152
    .line 153
    move v1, v2

    .line 154
    goto :goto_6

    .line 155
    :cond_a
    move v1, v8

    .line 156
    goto :goto_6

    .line 157
    :cond_b
    :goto_5
    div-int v3, v8, v1

    .line 158
    .line 159
    iget-wide v4, v0, Lwd7;->d:J

    .line 160
    .line 161
    int-to-long v8, v1

    .line 162
    div-long/2addr v4, v8

    .line 163
    long-to-int v4, v4

    .line 164
    move v5, v1

    .line 165
    move-object v1, v6

    .line 166
    move v2, v7

    .line 167
    invoke-virtual/range {v0 .. v5}, Lwd7;->a([BIIII)I

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    :goto_6
    iget-wide v2, v0, Lwd7;->d:J

    .line 172
    .line 173
    int-to-long v4, v1

    .line 174
    add-long/2addr v2, v4

    .line 175
    iput-wide v2, v0, Lwd7;->d:J

    .line 176
    .line 177
    if-nez v1, :cond_c

    .line 178
    .line 179
    :goto_7
    const/4 v0, -0x1

    .line 180
    return v0

    .line 181
    :cond_c
    return v1

    .line 182
    :cond_d
    move-wide v6, v13

    .line 183
    move-wide v13, v1

    .line 184
    move-wide v2, v6

    .line 185
    move-object/from16 v6, p1

    .line 186
    .line 187
    move/from16 v7, p2

    .line 188
    .line 189
    goto :goto_2

    .line 190
    :cond_e
    invoke-static {}, Ll0;->a()V

    .line 191
    .line 192
    .line 193
    return v1
.end method

.method public final readBoolean()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lwd7;->readByte()B

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    return p0
.end method

.method public final readByte()B
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [B

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-virtual {p0, v1, v2, v0}, Lwd7;->readFully([BII)V

    .line 6
    .line 7
    .line 8
    aget-byte p0, v1, v2

    .line 9
    .line 10
    return p0
.end method

.method public final readChar()C
    .locals 0

    .line 1
    invoke-virtual {p0}, Lwd7;->readUnsignedShort()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    int-to-char p0, p0

    .line 6
    return p0
.end method

.method public final readDouble()D
    .locals 2

    .line 1
    invoke-virtual {p0}, Lwd7;->readLong()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public final readFloat()F
    .locals 0

    .line 1
    invoke-virtual {p0}, Lwd7;->readInt()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final readFully([B)V
    .locals 2

    const/4 v0, 0x0

    .line 12
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lwd7;->readFully([BII)V

    return-void
.end method

.method public final readFully([BII)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lwd7;->read([BII)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-ne p0, p3, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {}, Ld6;->d()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final readInt()I
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v1, v0, [B

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-virtual {p0, v1, v2, v0}, Lwd7;->readFully([BII)V

    .line 6
    .line 7
    .line 8
    aget-byte p0, v1, v2

    .line 9
    .line 10
    shl-int/lit8 p0, p0, 0x18

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    aget-byte v0, v1, v0

    .line 14
    .line 15
    shl-int/lit8 v0, v0, 0x10

    .line 16
    .line 17
    add-int/2addr p0, v0

    .line 18
    const/4 v0, 0x2

    .line 19
    aget-byte v0, v1, v0

    .line 20
    .line 21
    shl-int/lit8 v0, v0, 0x8

    .line 22
    .line 23
    add-int/2addr p0, v0

    .line 24
    const/4 v0, 0x3

    .line 25
    aget-byte v0, v1, v0

    .line 26
    .line 27
    add-int/2addr p0, v0

    .line 28
    return p0
.end method

.method public final readLine()Ljava/lang/String;
    .locals 14

    .line 1
    new-instance v0, Lby0;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    :goto_0
    iget-wide v3, p0, Lwd7;->d:J

    .line 9
    .line 10
    const-wide/16 v5, 0x200

    .line 11
    .line 12
    div-long/2addr v3, v5

    .line 13
    const/16 v7, 0x200

    .line 14
    .line 15
    new-array v9, v7, [B

    .line 16
    .line 17
    long-to-int v12, v3

    .line 18
    const/16 v13, 0x200

    .line 19
    .line 20
    const/4 v10, 0x0

    .line 21
    const/4 v11, 0x1

    .line 22
    move-object v8, p0

    .line 23
    invoke-virtual/range {v8 .. v13}, Lwd7;->a([BIIII)I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    const/16 v7, 0xa

    .line 28
    .line 29
    if-nez p0, :cond_0

    .line 30
    .line 31
    goto :goto_3

    .line 32
    :cond_0
    iget-wide v10, v8, Lwd7;->d:J

    .line 33
    .line 34
    mul-long/2addr v3, v5

    .line 35
    sub-long/2addr v10, v3

    .line 36
    long-to-int v3, v10

    .line 37
    :goto_1
    if-ge v3, p0, :cond_2

    .line 38
    .line 39
    aget-byte v4, v9, v3

    .line 40
    .line 41
    invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write(I)V

    .line 42
    .line 43
    .line 44
    if-ne v4, v7, :cond_1

    .line 45
    .line 46
    add-int/lit8 v3, v3, 0x1

    .line 47
    .line 48
    const/4 v2, 0x1

    .line 49
    goto :goto_2

    .line 50
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    :goto_2
    iget-boolean v4, v8, Lwd7;->c:Z

    .line 54
    .line 55
    if-eqz v4, :cond_3

    .line 56
    .line 57
    if-eq v3, p0, :cond_3

    .line 58
    .line 59
    iput-boolean v1, v8, Lwd7;->c:Z

    .line 60
    .line 61
    :cond_3
    iget-boolean p0, v8, Lwd7;->c:Z

    .line 62
    .line 63
    if-nez p0, :cond_5

    .line 64
    .line 65
    if-eqz v2, :cond_4

    .line 66
    .line 67
    goto :goto_3

    .line 68
    :cond_4
    move-object p0, v8

    .line 69
    goto :goto_0

    .line 70
    :cond_5
    :goto_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    .line 71
    .line 72
    .line 73
    move-result p0

    .line 74
    if-nez p0, :cond_6

    .line 75
    .line 76
    const/4 p0, 0x0

    .line 77
    return-object p0

    .line 78
    :cond_6
    iget-wide v2, v8, Lwd7;->d:J

    .line 79
    .line 80
    int-to-long v4, p0

    .line 81
    add-long/2addr v2, v4

    .line 82
    iput-wide v2, v8, Lwd7;->d:J

    .line 83
    .line 84
    invoke-virtual {v0}, Lby0;->a()[B

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    add-int/lit8 v2, p0, -0x1

    .line 89
    .line 90
    aget-byte v2, v0, v2

    .line 91
    .line 92
    if-ne v2, v7, :cond_8

    .line 93
    .line 94
    add-int/lit8 v2, p0, -0x1

    .line 95
    .line 96
    if-lez v2, :cond_7

    .line 97
    .line 98
    add-int/lit8 p0, p0, -0x2

    .line 99
    .line 100
    aget-byte v3, v0, p0

    .line 101
    .line 102
    const/16 v4, 0xd

    .line 103
    .line 104
    if-ne v3, v4, :cond_7

    .line 105
    .line 106
    goto :goto_4

    .line 107
    :cond_7
    move p0, v2

    .line 108
    :cond_8
    :goto_4
    new-instance v2, Ljava/lang/String;

    .line 109
    .line 110
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 111
    .line 112
    invoke-direct {v2, v0, v1, p0, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 113
    .line 114
    .line 115
    return-object v2
.end method

.method public final readLong()J
    .locals 6

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    new-array v1, v0, [B

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {p0, v1, v2, v0}, Lwd7;->readFully([BII)V

    .line 7
    .line 8
    .line 9
    aget-byte p0, v1, v2

    .line 10
    .line 11
    int-to-long v2, p0

    .line 12
    const/16 p0, 0x38

    .line 13
    .line 14
    shl-long/2addr v2, p0

    .line 15
    const/4 p0, 0x1

    .line 16
    aget-byte p0, v1, p0

    .line 17
    .line 18
    and-int/lit16 p0, p0, 0xff

    .line 19
    .line 20
    int-to-long v4, p0

    .line 21
    const/16 p0, 0x30

    .line 22
    .line 23
    shl-long/2addr v4, p0

    .line 24
    add-long/2addr v2, v4

    .line 25
    const/4 p0, 0x2

    .line 26
    aget-byte p0, v1, p0

    .line 27
    .line 28
    and-int/lit16 p0, p0, 0xff

    .line 29
    .line 30
    int-to-long v4, p0

    .line 31
    const/16 p0, 0x28

    .line 32
    .line 33
    shl-long/2addr v4, p0

    .line 34
    add-long/2addr v2, v4

    .line 35
    const/4 p0, 0x3

    .line 36
    aget-byte p0, v1, p0

    .line 37
    .line 38
    and-int/lit16 p0, p0, 0xff

    .line 39
    .line 40
    int-to-long v4, p0

    .line 41
    const/16 p0, 0x20

    .line 42
    .line 43
    shl-long/2addr v4, p0

    .line 44
    add-long/2addr v2, v4

    .line 45
    const/4 p0, 0x4

    .line 46
    aget-byte p0, v1, p0

    .line 47
    .line 48
    and-int/lit16 p0, p0, 0xff

    .line 49
    .line 50
    int-to-long v4, p0

    .line 51
    const/16 p0, 0x18

    .line 52
    .line 53
    shl-long/2addr v4, p0

    .line 54
    add-long/2addr v2, v4

    .line 55
    const/4 p0, 0x5

    .line 56
    aget-byte p0, v1, p0

    .line 57
    .line 58
    and-int/lit16 p0, p0, 0xff

    .line 59
    .line 60
    shl-int/lit8 p0, p0, 0x10

    .line 61
    .line 62
    int-to-long v4, p0

    .line 63
    add-long/2addr v2, v4

    .line 64
    const/4 p0, 0x6

    .line 65
    aget-byte p0, v1, p0

    .line 66
    .line 67
    and-int/lit16 p0, p0, 0xff

    .line 68
    .line 69
    shl-int/2addr p0, v0

    .line 70
    int-to-long v4, p0

    .line 71
    add-long/2addr v2, v4

    .line 72
    const/4 p0, 0x7

    .line 73
    aget-byte p0, v1, p0

    .line 74
    .line 75
    and-int/lit16 p0, p0, 0xff

    .line 76
    .line 77
    int-to-long v0, p0

    .line 78
    add-long/2addr v2, v0

    .line 79
    return-wide v2
.end method

.method public final readShort()S
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [B

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-virtual {p0, v1, v2, v0}, Lwd7;->readFully([BII)V

    .line 6
    .line 7
    .line 8
    aget-byte p0, v1, v2

    .line 9
    .line 10
    shl-int/lit8 p0, p0, 0x8

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    aget-byte v0, v1, v0

    .line 14
    .line 15
    add-int/2addr p0, v0

    .line 16
    int-to-short p0, p0

    .line 17
    return p0
.end method

.method public final readUTF()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lwd7;->readUnsignedShort()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v1, v0, 0x2

    .line 6
    .line 7
    new-array v1, v1, [B

    .line 8
    .line 9
    ushr-int/lit8 v2, v0, 0x8

    .line 10
    .line 11
    int-to-byte v2, v2

    .line 12
    const/4 v3, 0x0

    .line 13
    aput-byte v2, v1, v3

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    int-to-byte v3, v0

    .line 17
    aput-byte v3, v1, v2

    .line 18
    .line 19
    const/4 v2, 0x2

    .line 20
    invoke-virtual {p0, v1, v2, v0}, Lwd7;->readFully([BII)V

    .line 21
    .line 22
    .line 23
    new-instance p0, Ljava/io/DataInputStream;

    .line 24
    .line 25
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 26
    .line 27
    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0
.end method

.method public final readUnsignedByte()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lwd7;->readByte()B

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    and-int/lit16 p0, p0, 0xff

    .line 6
    .line 7
    return p0
.end method

.method public final readUnsignedShort()I
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [B

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-virtual {p0, v1, v2, v0}, Lwd7;->readFully([BII)V

    .line 6
    .line 7
    .line 8
    aget-byte p0, v1, v2

    .line 9
    .line 10
    shl-int/lit8 p0, p0, 0x8

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    aget-byte v0, v1, v0

    .line 14
    .line 15
    add-int/2addr p0, v0

    .line 16
    return p0
.end method

.method public final skipBytes(I)I
    .locals 8

    .line 1
    if-gtz p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_0
    iget-wide v0, p0, Lwd7;->d:J

    .line 6
    .line 7
    invoke-virtual {p0}, Lwd7;->g()J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    iget-wide v4, p0, Lwd7;->d:J

    .line 12
    .line 13
    int-to-long v6, p1

    .line 14
    add-long/2addr v4, v6

    .line 15
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    .line 16
    .line 17
    .line 18
    move-result-wide v2

    .line 19
    iput-wide v2, p0, Lwd7;->d:J

    .line 20
    .line 21
    sub-long/2addr v2, v0

    .line 22
    long-to-int p0, v2

    .line 23
    return p0
.end method

.method public final write(I)V
    .locals 3

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v0, 0x1

    .line 96
    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    .line 97
    invoke-interface {p0, v1, v2, v0}, Ljava/io/DataOutput;->write([BII)V

    return-void
.end method

.method public final write([B)V
    .locals 2

    const/4 v0, 0x0

    .line 95
    array-length v1, p1

    invoke-interface {p0, p1, v0, v1}, Ljava/io/DataOutput;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 6

    .line 1
    if-ltz p2, :cond_2

    .line 2
    .line 3
    if-ltz p3, :cond_2

    .line 4
    .line 5
    add-int v0, p2, p3

    .line 6
    .line 7
    array-length v1, p1

    .line 8
    if-gt v0, v1, :cond_2

    .line 9
    .line 10
    iget-boolean v0, p0, Lwd7;->b:Z

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    iget-wide v0, p0, Lwd7;->d:J

    .line 15
    .line 16
    const-wide/16 v2, 0x0

    .line 17
    .line 18
    cmp-long v2, v0, v2

    .line 19
    .line 20
    iget-object v3, p0, Lwd7;->a:Lkr7;

    .line 21
    .line 22
    if-lez v2, :cond_0

    .line 23
    .line 24
    const-wide/16 v4, 0x200

    .line 25
    .line 26
    cmp-long v2, v0, v4

    .line 27
    .line 28
    if-gez v2, :cond_0

    .line 29
    .line 30
    const/16 v2, 0x200

    .line 31
    .line 32
    if-le p3, v2, :cond_0

    .line 33
    .line 34
    long-to-int v0, v0

    .line 35
    sub-int/2addr v2, v0

    .line 36
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    sget v0, Lcom/topjohnwu/superuser/Shell;->UNKNOWN:I

    .line 40
    .line 41
    invoke-static {}, Lk55;->j()Lzd7;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    new-instance v1, Lud7;

    .line 46
    .line 47
    invoke-direct {v1, p0, v2, p1, p2}, Lud7;-><init>(Lwd7;I[BI)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Lzd7;->execTask(Lpd7;)V

    .line 51
    .line 52
    .line 53
    iget-wide v0, p0, Lwd7;->d:J

    .line 54
    .line 55
    int-to-long v4, v2

    .line 56
    add-long/2addr v0, v4

    .line 57
    iput-wide v0, p0, Lwd7;->d:J

    .line 58
    .line 59
    sub-int/2addr p3, v2

    .line 60
    add-int/2addr p2, v2

    .line 61
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    sget v0, Lcom/topjohnwu/superuser/Shell;->UNKNOWN:I

    .line 65
    .line 66
    invoke-static {}, Lk55;->j()Lzd7;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    new-instance v1, Lud7;

    .line 71
    .line 72
    invoke-direct {v1, p0, p3, p1, p2}, Lud7;-><init>(Lwd7;I[BI)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1}, Lzd7;->execTask(Lpd7;)V

    .line 76
    .line 77
    .line 78
    iget-wide p1, p0, Lwd7;->d:J

    .line 79
    .line 80
    int-to-long v0, p3

    .line 81
    add-long/2addr p1, v0

    .line 82
    iput-wide p1, p0, Lwd7;->d:J

    .line 83
    .line 84
    return-void

    .line 85
    :cond_1
    const-string p0, "File is opened as read-only"

    .line 86
    .line 87
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :cond_2
    invoke-static {}, Ll0;->a()V

    .line 92
    .line 93
    .line 94
    return-void
.end method

.method public writeBoolean(Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lwd7;->write(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public writeByte(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lwd7;->write(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final writeBytes(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lby0;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/io/DataOutputStream;

    .line 7
    .line 8
    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p0}, Lby0;->g(Lwd7;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public writeChar(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lwd7;->writeShort(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final writeChars(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lby0;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/io/DataOutputStream;

    .line 7
    .line 8
    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeChars(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p0}, Lby0;->g(Lwd7;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final writeDouble(D)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 2
    .line 3
    .line 4
    move-result-wide p1

    .line 5
    invoke-virtual {p0, p1, p2}, Lwd7;->writeLong(J)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final writeFloat(F)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0, p1}, Lwd7;->writeInt(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final writeInt(I)V
    .locals 6

    .line 1
    ushr-int/lit8 v0, p1, 0x18

    .line 2
    .line 3
    int-to-byte v0, v0

    .line 4
    ushr-int/lit8 v1, p1, 0x10

    .line 5
    .line 6
    int-to-byte v1, v1

    .line 7
    ushr-int/lit8 v2, p1, 0x8

    .line 8
    .line 9
    int-to-byte v2, v2

    .line 10
    int-to-byte p1, p1

    .line 11
    const/4 v3, 0x4

    .line 12
    new-array v4, v3, [B

    .line 13
    .line 14
    const/4 v5, 0x0

    .line 15
    aput-byte v0, v4, v5

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    aput-byte v1, v4, v0

    .line 19
    .line 20
    const/4 v0, 0x2

    .line 21
    aput-byte v2, v4, v0

    .line 22
    .line 23
    const/4 v0, 0x3

    .line 24
    aput-byte p1, v4, v0

    .line 25
    .line 26
    invoke-interface {p0, v4, v5, v3}, Ljava/io/DataOutput;->write([BII)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final writeLong(J)V
    .locals 9

    .line 1
    const/16 v0, 0x38

    .line 2
    .line 3
    ushr-long v0, p1, v0

    .line 4
    .line 5
    long-to-int v0, v0

    .line 6
    int-to-byte v0, v0

    .line 7
    const/16 v1, 0x30

    .line 8
    .line 9
    ushr-long v1, p1, v1

    .line 10
    .line 11
    long-to-int v1, v1

    .line 12
    int-to-byte v1, v1

    .line 13
    const/16 v2, 0x28

    .line 14
    .line 15
    ushr-long v2, p1, v2

    .line 16
    .line 17
    long-to-int v2, v2

    .line 18
    int-to-byte v2, v2

    .line 19
    const/16 v3, 0x20

    .line 20
    .line 21
    ushr-long v3, p1, v3

    .line 22
    .line 23
    long-to-int v3, v3

    .line 24
    int-to-byte v3, v3

    .line 25
    const/16 v4, 0x18

    .line 26
    .line 27
    ushr-long v4, p1, v4

    .line 28
    .line 29
    long-to-int v4, v4

    .line 30
    int-to-byte v4, v4

    .line 31
    const/16 v5, 0x10

    .line 32
    .line 33
    ushr-long v5, p1, v5

    .line 34
    .line 35
    long-to-int v5, v5

    .line 36
    int-to-byte v5, v5

    .line 37
    const/16 v6, 0x8

    .line 38
    .line 39
    ushr-long v7, p1, v6

    .line 40
    .line 41
    long-to-int v7, v7

    .line 42
    int-to-byte v7, v7

    .line 43
    long-to-int p1, p1

    .line 44
    int-to-byte p1, p1

    .line 45
    new-array p2, v6, [B

    .line 46
    .line 47
    const/4 v8, 0x0

    .line 48
    aput-byte v0, p2, v8

    .line 49
    .line 50
    const/4 v0, 0x1

    .line 51
    aput-byte v1, p2, v0

    .line 52
    .line 53
    const/4 v0, 0x2

    .line 54
    aput-byte v2, p2, v0

    .line 55
    .line 56
    const/4 v0, 0x3

    .line 57
    aput-byte v3, p2, v0

    .line 58
    .line 59
    const/4 v0, 0x4

    .line 60
    aput-byte v4, p2, v0

    .line 61
    .line 62
    const/4 v0, 0x5

    .line 63
    aput-byte v5, p2, v0

    .line 64
    .line 65
    const/4 v0, 0x6

    .line 66
    aput-byte v7, p2, v0

    .line 67
    .line 68
    const/4 v0, 0x7

    .line 69
    aput-byte p1, p2, v0

    .line 70
    .line 71
    invoke-interface {p0, p2, v8, v6}, Ljava/io/DataOutput;->write([BII)V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public final writeShort(I)V
    .locals 4

    .line 1
    ushr-int/lit8 v0, p1, 0x8

    .line 2
    .line 3
    int-to-byte v0, v0

    .line 4
    int-to-byte p1, p1

    .line 5
    const/4 v1, 0x2

    .line 6
    new-array v2, v1, [B

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    aput-byte v0, v2, v3

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    aput-byte p1, v2, v0

    .line 13
    .line 14
    invoke-interface {p0, v2, v3, v1}, Ljava/io/DataOutput;->write([BII)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final writeUTF(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lby0;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/io/DataOutputStream;

    .line 7
    .line 8
    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p0}, Lby0;->g(Lwd7;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
