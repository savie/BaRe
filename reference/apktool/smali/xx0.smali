.class public final Lxx0;
.super Lh58;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final e(Ljava/lang/Object;Lfk4;Lc87;)V
    .locals 8

    .line 1
    check-cast p1, Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    .line 14
    .line 15
    .line 16
    move-result-object p3

    .line 17
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    add-int/2addr v0, p0

    .line 22
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    sub-int/2addr p1, p0

    .line 27
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    sget-object p0, Lcl0;->a:Lbl0;

    .line 31
    .line 32
    invoke-virtual {p2, p0, p3, v0, p1}, Lfk4;->j(Lbl0;[BII)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    new-instance p1, Lpx0;

    .line 41
    .line 42
    invoke-direct {p1, p0}, Lpx0;-><init>(Ljava/nio/ByteBuffer;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    sget-object p3, Lcl0;->a:Lbl0;

    .line 53
    .line 54
    check-cast p2, Lpw8;

    .line 55
    .line 56
    iget-char v0, p2, Lpw8;->H:C

    .line 57
    .line 58
    iget-object v1, p2, Lcv3;->c:Lc84;

    .line 59
    .line 60
    const-string v2, "Too few bytes available: missing "

    .line 61
    .line 62
    const-string v3, "write a binary value"

    .line 63
    .line 64
    invoke-virtual {p2, v3}, Lpw8;->l0(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget v3, p2, Lpw8;->K:I

    .line 68
    .line 69
    iget v4, p2, Lpw8;->L:I

    .line 70
    .line 71
    if-lt v3, v4, :cond_1

    .line 72
    .line 73
    invoke-virtual {p2}, Lpw8;->u0()V

    .line 74
    .line 75
    .line 76
    :cond_1
    iget-object v3, p2, Lpw8;->I:[C

    .line 77
    .line 78
    iget v5, p2, Lpw8;->K:I

    .line 79
    .line 80
    add-int/lit8 v6, v5, 0x1

    .line 81
    .line 82
    iput v6, p2, Lpw8;->K:I

    .line 83
    .line 84
    aput-char v0, v3, v5

    .line 85
    .line 86
    iget-object v3, v1, Lc84;->e:[B

    .line 87
    .line 88
    if-nez v3, :cond_8

    .line 89
    .line 90
    iget-object v3, v1, Lc84;->b:Lqw0;

    .line 91
    .line 92
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    sget-object v5, Lqw0;->c:[I

    .line 96
    .line 97
    const/4 v6, 0x3

    .line 98
    aget v5, v5, v6

    .line 99
    .line 100
    if-lez v5, :cond_2

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_2
    const/4 v5, 0x0

    .line 104
    :goto_0
    iget-object v3, v3, Lqw0;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 105
    .line 106
    const/4 v7, 0x0

    .line 107
    invoke-virtual {v3, v6, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    check-cast v3, [B

    .line 112
    .line 113
    if-eqz v3, :cond_3

    .line 114
    .line 115
    array-length v6, v3

    .line 116
    if-ge v6, v5, :cond_4

    .line 117
    .line 118
    :cond_3
    new-array v3, v5, [B

    .line 119
    .line 120
    :cond_4
    iput-object v3, v1, Lc84;->e:[B

    .line 121
    .line 122
    if-gez p0, :cond_5

    .line 123
    .line 124
    :try_start_0
    invoke-virtual {p2, p3, p1, v3}, Lpw8;->y0(Lbl0;Lpx0;[B)I

    .line 125
    .line 126
    .line 127
    goto :goto_1

    .line 128
    :catchall_0
    move-exception p0

    .line 129
    goto :goto_2

    .line 130
    :cond_5
    invoke-virtual {p2, p3, p1, v3, p0}, Lpw8;->z0(Lbl0;Lpx0;[BI)I

    .line 131
    .line 132
    .line 133
    move-result p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    if-gtz p3, :cond_7

    .line 135
    .line 136
    :goto_1
    invoke-virtual {v1, v3}, Lc84;->a([B)V

    .line 137
    .line 138
    .line 139
    iget p0, p2, Lpw8;->K:I

    .line 140
    .line 141
    if-lt p0, v4, :cond_6

    .line 142
    .line 143
    invoke-virtual {p2}, Lpw8;->u0()V

    .line 144
    .line 145
    .line 146
    :cond_6
    iget-object p0, p2, Lpw8;->I:[C

    .line 147
    .line 148
    iget p3, p2, Lpw8;->K:I

    .line 149
    .line 150
    add-int/lit8 v1, p3, 0x1

    .line 151
    .line 152
    iput v1, p2, Lpw8;->K:I

    .line 153
    .line 154
    aput-char v0, p0, p3

    .line 155
    .line 156
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 157
    .line 158
    .line 159
    return-void

    .line 160
    :cond_7
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    const-string p3, " bytes (out of "

    .line 169
    .line 170
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    const-string p0, ")"

    .line 177
    .line 178
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p0

    .line 185
    invoke-virtual {p2, p0}, Lfk4;->a(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    :goto_2
    invoke-virtual {v1, v3}, Lc84;->a([B)V

    .line 190
    .line 191
    .line 192
    throw p0

    .line 193
    :cond_8
    const-string p0, "Trying to call same allocXxx() method second time"

    .line 194
    .line 195
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    return-void
.end method
