.class public Lhx5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:[B

.field public final b:Ljava/io/RandomAccessFile;

.field public final c:Ljava/io/InputStream;

.field public final d:J

.field public final e:J

.field public f:I

.field public final g:Ljava/util/HashMap;

.field public h:J

.field public i:I

.field public j:[B

.field public k:Z


# direct methods
.method public varargs constructor <init>(Ljava/io/InputStream;Ljava/lang/Long;JI[Ly51$a;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lrg5;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x4000

    .line 5
    .line 6
    new-array v0, v0, [B

    .line 7
    .line 8
    iput-object v0, p0, Lhx5;->a:[B

    .line 9
    .line 10
    const-wide/16 v0, 0x0

    .line 11
    .line 12
    iput-wide v0, p0, Lhx5;->h:J

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    iput v2, p0, Lhx5;->i:I

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    iput-object v2, p0, Lhx5;->j:[B

    .line 19
    .line 20
    const-string v3, "stream must not be null"

    .line 21
    .line 22
    invoke-static {p1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lhx5;->c:Ljava/io/InputStream;

    .line 26
    .line 27
    const/4 p1, -0x1

    .line 28
    if-ne p5, p1, :cond_0

    .line 29
    .line 30
    const-wide/16 v0, -0x1

    .line 31
    .line 32
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 38
    .line 39
    .line 40
    move-result-wide v3

    .line 41
    cmp-long v0, v3, v0

    .line 42
    .line 43
    if-ltz v0, :cond_2

    .line 44
    .line 45
    :goto_0
    if-nez p5, :cond_1

    .line 46
    .line 47
    move p5, p1

    .line 48
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 49
    .line 50
    .line 51
    move-result-wide p1

    .line 52
    iput-wide p1, p0, Lhx5;->d:J

    .line 53
    .line 54
    iput-wide p3, p0, Lhx5;->e:J

    .line 55
    .line 56
    iput p5, p0, Lhx5;->f:I

    .line 57
    .line 58
    invoke-static {p6}, Ly51;->d([Ly51$a;)Ljava/util/HashMap;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    iput-object p1, p0, Lhx5;->g:Ljava/util/HashMap;

    .line 63
    .line 64
    return-void

    .line 65
    :cond_2
    const-string p0, "object size must be provided for part count"

    .line 66
    .line 67
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw v2
.end method

.method public varargs constructor <init>(Ljava/io/RandomAccessFile;JJI[Ly51$a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lrg5;
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x4000

    .line 72
    new-array v0, v0, [B

    iput-object v0, p0, Lhx5;->a:[B

    const-wide/16 v0, 0x0

    .line 73
    iput-wide v0, p0, Lhx5;->h:J

    const/4 v2, 0x0

    .line 74
    iput v2, p0, Lhx5;->i:I

    const/4 v2, 0x0

    .line 75
    iput-object v2, p0, Lhx5;->j:[B

    .line 76
    const-string v3, "file must not be null"

    invoke-static {p1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lhx5;->b:Ljava/io/RandomAccessFile;

    cmp-long p1, p2, v0

    if-ltz p1, :cond_2

    if-ltz p6, :cond_1

    if-nez p6, :cond_0

    const/4 p6, -0x1

    .line 77
    :cond_0
    iput-wide p2, p0, Lhx5;->d:J

    .line 78
    iput-wide p4, p0, Lhx5;->e:J

    .line 79
    iput p6, p0, Lhx5;->f:I

    .line 80
    invoke-static {p7}, Ly51;->d([Ly51$a;)Ljava/util/HashMap;

    move-result-object p1

    iput-object p1, p0, Lhx5;->g:Ljava/util/HashMap;

    return-void

    .line 81
    :cond_1
    const-string p0, "part count must be provided"

    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    throw v2

    .line 82
    :cond_2
    const-string p0, "valid object size must be provided"

    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public final a(Lox0;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    if-eqz v1, :cond_14

    .line 6
    .line 7
    iget-wide v2, v1, Lox0;->a:J

    .line 8
    .line 9
    iget-boolean v4, v0, Lhx5;->k:Z

    .line 10
    .line 11
    if-nez v4, :cond_13

    .line 12
    .line 13
    iget v4, v0, Lhx5;->i:I

    .line 14
    .line 15
    iget v5, v0, Lhx5;->f:I

    .line 16
    .line 17
    if-eq v4, v5, :cond_12

    .line 18
    .line 19
    iget-wide v6, v0, Lhx5;->d:J

    .line 20
    .line 21
    const/4 v8, 0x1

    .line 22
    if-ne v5, v8, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    sub-int/2addr v5, v8

    .line 26
    if-ne v4, v5, :cond_1

    .line 27
    .line 28
    iget-wide v4, v0, Lhx5;->h:J

    .line 29
    .line 30
    sub-long/2addr v6, v4

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget-wide v6, v0, Lhx5;->e:J

    .line 33
    .line 34
    :goto_0
    cmp-long v4, v2, v6

    .line 35
    .line 36
    if-ltz v4, :cond_11

    .line 37
    .line 38
    iget-object v2, v0, Lhx5;->g:Ljava/util/HashMap;

    .line 39
    .line 40
    if-eqz v2, :cond_2

    .line 41
    .line 42
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-eqz v4, :cond_2

    .line 55
    .line 56
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    check-cast v4, Ljava/util/Map$Entry;

    .line 61
    .line 62
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    check-cast v4, Lz51;

    .line 67
    .line 68
    invoke-interface {v4}, Lz51;->reset()V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_2
    iget-object v3, v0, Lhx5;->j:[B

    .line 73
    .line 74
    const/4 v4, 0x0

    .line 75
    const/4 v5, 0x0

    .line 76
    if-eqz v3, :cond_4

    .line 77
    .line 78
    :try_start_0
    array-length v9, v3

    .line 79
    invoke-virtual {v1, v3, v5, v9}, Lox0;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .line 81
    .line 82
    if-eqz v2, :cond_3

    .line 83
    .line 84
    iget-object v3, v0, Lhx5;->j:[B

    .line 85
    .line 86
    array-length v9, v3

    .line 87
    invoke-static {v2, v3, v9}, Ly51;->f(Ljava/util/Map;[BI)V

    .line 88
    .line 89
    .line 90
    :cond_3
    iput-object v4, v0, Lhx5;->j:[B

    .line 91
    .line 92
    const-wide/16 v9, 0x1

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :catch_0
    move-exception v0

    .line 96
    new-instance v1, Lrg5;

    .line 97
    .line 98
    invoke-direct {v1, v0}, Lrg5;-><init>(Ljava/lang/Throwable;)V

    .line 99
    .line 100
    .line 101
    throw v1

    .line 102
    :cond_4
    const-wide/16 v9, 0x0

    .line 103
    .line 104
    :goto_2
    cmp-long v3, v9, v6

    .line 105
    .line 106
    iget-object v11, v0, Lhx5;->c:Ljava/io/InputStream;

    .line 107
    .line 108
    iget-object v12, v0, Lhx5;->b:Ljava/io/RandomAccessFile;

    .line 109
    .line 110
    if-gez v3, :cond_a

    .line 111
    .line 112
    sub-long v13, v6, v9

    .line 113
    .line 114
    iget-object v3, v0, Lhx5;->a:[B

    .line 115
    .line 116
    array-length v15, v3

    .line 117
    move/from16 v16, v8

    .line 118
    .line 119
    move-wide/from16 v17, v9

    .line 120
    .line 121
    int-to-long v8, v15

    .line 122
    invoke-static {v13, v14, v8, v9}, Ljava/lang/Math;->min(JJ)J

    .line 123
    .line 124
    .line 125
    move-result-wide v8

    .line 126
    long-to-int v8, v8

    .line 127
    if-eqz v12, :cond_5

    .line 128
    .line 129
    :try_start_1
    invoke-virtual {v12, v3, v5, v8}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 130
    .line 131
    .line 132
    move-result v8

    .line 133
    goto :goto_3

    .line 134
    :cond_5
    invoke-virtual {v11, v3, v5, v8}, Ljava/io/InputStream;->read([BII)I

    .line 135
    .line 136
    .line 137
    move-result v8
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 138
    :goto_3
    if-gez v8, :cond_6

    .line 139
    .line 140
    move/from16 v9, v16

    .line 141
    .line 142
    goto :goto_4

    .line 143
    :cond_6
    move v9, v5

    .line 144
    :goto_4
    iput-boolean v9, v0, Lhx5;->k:Z

    .line 145
    .line 146
    if-eqz v9, :cond_8

    .line 147
    .line 148
    iget v1, v0, Lhx5;->f:I

    .line 149
    .line 150
    if-gez v1, :cond_7

    .line 151
    .line 152
    goto :goto_5

    .line 153
    :cond_7
    new-instance v0, Lrg5;

    .line 154
    .line 155
    const-string v1, "unexpected EOF"

    .line 156
    .line 157
    invoke-direct {v0, v1}, Lrg5;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    throw v0

    .line 161
    :cond_8
    :try_start_2
    invoke-virtual {v1, v3, v5, v8}, Lox0;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 162
    .line 163
    .line 164
    if-eqz v2, :cond_9

    .line 165
    .line 166
    invoke-static {v2, v3, v8}, Ly51;->f(Ljava/util/Map;[BI)V

    .line 167
    .line 168
    .line 169
    :cond_9
    int-to-long v8, v8

    .line 170
    add-long v9, v17, v8

    .line 171
    .line 172
    move/from16 v8, v16

    .line 173
    .line 174
    goto :goto_2

    .line 175
    :catch_1
    move-exception v0

    .line 176
    new-instance v1, Lrg5;

    .line 177
    .line 178
    invoke-direct {v1, v0}, Lrg5;-><init>(Ljava/lang/Throwable;)V

    .line 179
    .line 180
    .line 181
    throw v1

    .line 182
    :catch_2
    move-exception v0

    .line 183
    new-instance v1, Lrg5;

    .line 184
    .line 185
    invoke-direct {v1, v0}, Lrg5;-><init>(Ljava/lang/Throwable;)V

    .line 186
    .line 187
    .line 188
    throw v1

    .line 189
    :cond_a
    move/from16 v16, v8

    .line 190
    .line 191
    move-wide/from16 v17, v9

    .line 192
    .line 193
    :goto_5
    iget-wide v1, v0, Lhx5;->h:J

    .line 194
    .line 195
    add-long v1, v1, v17

    .line 196
    .line 197
    iput-wide v1, v0, Lhx5;->h:J

    .line 198
    .line 199
    iget v1, v0, Lhx5;->i:I

    .line 200
    .line 201
    add-int/lit8 v1, v1, 0x1

    .line 202
    .line 203
    iput v1, v0, Lhx5;->i:I

    .line 204
    .line 205
    iget-boolean v1, v0, Lhx5;->k:Z

    .line 206
    .line 207
    if-eqz v1, :cond_b

    .line 208
    .line 209
    goto :goto_9

    .line 210
    :cond_b
    move/from16 v1, v16

    .line 211
    .line 212
    new-array v2, v1, [B

    .line 213
    .line 214
    aput-byte v5, v2, v5

    .line 215
    .line 216
    iput-object v2, v0, Lhx5;->j:[B

    .line 217
    .line 218
    :goto_6
    iget-object v2, v0, Lhx5;->j:[B

    .line 219
    .line 220
    if-eqz v12, :cond_c

    .line 221
    .line 222
    :try_start_3
    invoke-virtual {v12, v2}, Ljava/io/RandomAccessFile;->read([B)I

    .line 223
    .line 224
    .line 225
    move-result v2

    .line 226
    goto :goto_7

    .line 227
    :cond_c
    invoke-virtual {v11, v2}, Ljava/io/InputStream;->read([B)I

    .line 228
    .line 229
    .line 230
    move-result v2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 231
    :goto_7
    if-nez v2, :cond_d

    .line 232
    .line 233
    goto :goto_6

    .line 234
    :cond_d
    if-gez v2, :cond_e

    .line 235
    .line 236
    move v8, v1

    .line 237
    goto :goto_8

    .line 238
    :cond_e
    move v8, v5

    .line 239
    :goto_8
    iput-boolean v8, v0, Lhx5;->k:Z

    .line 240
    .line 241
    if-eqz v8, :cond_f

    .line 242
    .line 243
    iput-object v4, v0, Lhx5;->j:[B

    .line 244
    .line 245
    :cond_f
    :goto_9
    iget-boolean v1, v0, Lhx5;->k:Z

    .line 246
    .line 247
    if-eqz v1, :cond_10

    .line 248
    .line 249
    iget v1, v0, Lhx5;->f:I

    .line 250
    .line 251
    if-gez v1, :cond_10

    .line 252
    .line 253
    iget v1, v0, Lhx5;->i:I

    .line 254
    .line 255
    iput v1, v0, Lhx5;->f:I

    .line 256
    .line 257
    :cond_10
    return-void

    .line 258
    :catch_3
    move-exception v0

    .line 259
    new-instance v1, Lrg5;

    .line 260
    .line 261
    invoke-direct {v1, v0}, Lrg5;-><init>(Ljava/lang/Throwable;)V

    .line 262
    .line 263
    .line 264
    throw v1

    .line 265
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 266
    .line 267
    const-string v1, "insufficient buffer size "

    .line 268
    .line 269
    const-string v4, " for data size "

    .line 270
    .line 271
    invoke-static {v1, v4, v2, v3}, Ldj7;->t(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v1

    .line 282
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    throw v0

    .line 286
    :cond_12
    new-instance v0, Lrg5;

    .line 287
    .line 288
    const-string v1, "data fully read"

    .line 289
    .line 290
    invoke-direct {v0, v1}, Lrg5;-><init>(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    throw v0

    .line 294
    :cond_13
    new-instance v0, Lrg5;

    .line 295
    .line 296
    const-string v1, "EOF reached"

    .line 297
    .line 298
    invoke-direct {v0, v1}, Lrg5;-><init>(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    throw v0

    .line 302
    :cond_14
    const-string v0, "valid buffer must be provided"

    .line 303
    .line 304
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    return-void
.end method
