.class public final Llb7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final a:Ljava/nio/channels/FileChannel;

.field public final b:Ljava/util/ArrayList;

.field public c:I

.field public final d:Ljava/util/zip/CRC32;

.field public final e:Ljava/util/zip/CRC32;

.field public f:J

.field public k:Z

.field public n:Ljb7;

.field public p:[Liy1;

.field public q:Ljava/util/List;

.field public final r:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Ljava/nio/channels/FileChannel;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Llb7;->b:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/zip/CRC32;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Llb7;->d:Ljava/util/zip/CRC32;

    .line 17
    .line 18
    new-instance v0, Ljava/util/zip/CRC32;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Llb7;->e:Ljava/util/zip/CRC32;

    .line 24
    .line 25
    new-instance v0, Lgb7;

    .line 26
    .line 27
    sget-object v1, Lfb7;->d:Lfb7;

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-direct {v0, v1, v2}, Lgb7;-><init>(Lfb7;Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p0, Llb7;->q:Ljava/util/List;

    .line 38
    .line 39
    new-instance v0, Ljava/util/HashMap;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Llb7;->r:Ljava/util/HashMap;

    .line 45
    .line 46
    iput-object p1, p0, Llb7;->a:Ljava/nio/channels/FileChannel;

    .line 47
    .line 48
    const-wide/16 v0, 0x20

    .line 49
    .line 50
    invoke-interface {p1, v0, v1}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public static j(Ljava/io/DataOutputStream;Ljava/util/BitSet;I)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x7

    .line 3
    move v2, v0

    .line 4
    move v4, v2

    .line 5
    move v3, v1

    .line 6
    :goto_0
    if-ge v2, p2, :cond_1

    .line 7
    .line 8
    invoke-virtual {p1, v2}, Ljava/util/BitSet;->get(I)Z

    .line 9
    .line 10
    .line 11
    move-result v5

    .line 12
    shl-int/2addr v5, v3

    .line 13
    or-int/2addr v4, v5

    .line 14
    add-int/lit8 v3, v3, -0x1

    .line 15
    .line 16
    if-gez v3, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0, v4}, Ljava/io/DataOutputStream;->write(I)V

    .line 19
    .line 20
    .line 21
    move v4, v0

    .line 22
    move v3, v1

    .line 23
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    if-eq v3, v1, :cond_2

    .line 27
    .line 28
    invoke-virtual {p0, v4}, Ljava/io/DataOutputStream;->write(I)V

    .line 29
    .line 30
    .line 31
    :cond_2
    return-void
.end method

.method public static m(Ljava/io/DataOutput;J)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/16 v1, 0x80

    .line 3
    .line 4
    move v2, v1

    .line 5
    move v1, v0

    .line 6
    :goto_0
    const/16 v3, 0x8

    .line 7
    .line 8
    if-ge v0, v3, :cond_1

    .line 9
    .line 10
    add-int/lit8 v4, v0, 0x1

    .line 11
    .line 12
    mul-int/lit8 v5, v4, 0x7

    .line 13
    .line 14
    const-wide/16 v6, 0x1

    .line 15
    .line 16
    shl-long v5, v6, v5

    .line 17
    .line 18
    cmp-long v5, p1, v5

    .line 19
    .line 20
    if-gez v5, :cond_0

    .line 21
    .line 22
    int-to-long v1, v1

    .line 23
    mul-int/lit8 v4, v0, 0x8

    .line 24
    .line 25
    ushr-long v4, p1, v4

    .line 26
    .line 27
    or-long/2addr v1, v4

    .line 28
    long-to-int v1, v1

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    or-int/2addr v1, v2

    .line 31
    ushr-int/lit8 v2, v2, 0x1

    .line 32
    .line 33
    move v0, v4

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    :goto_1
    invoke-interface {p0, v1}, Ljava/io/DataOutput;->write(I)V

    .line 36
    .line 37
    .line 38
    :goto_2
    if-lez v0, :cond_2

    .line 39
    .line 40
    const-wide/16 v1, 0xff

    .line 41
    .line 42
    and-long/2addr v1, p1

    .line 43
    long-to-int v1, v1

    .line 44
    invoke-interface {p0, v1}, Ljava/io/DataOutput;->write(I)V

    .line 45
    .line 46
    .line 47
    ushr-long/2addr p1, v3

    .line 48
    add-int/lit8 v0, v0, -0x1

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_2
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 10

    .line 1
    iget-object v0, p0, Llb7;->e:Ljava/util/zip/CRC32;

    .line 2
    .line 3
    iget-object v1, p0, Llb7;->d:Ljava/util/zip/CRC32;

    .line 4
    .line 5
    iget-object v2, p0, Llb7;->n:Ljb7;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    invoke-virtual {v2}, Lla6;->flush()V

    .line 10
    .line 11
    .line 12
    iget-object v2, p0, Llb7;->n:Ljb7;

    .line 13
    .line 14
    invoke-virtual {v2}, Lla6;->close()V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v2, p0, Llb7;->b:Ljava/util/ArrayList;

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    invoke-static {v2, v3}, Ldj7;->e(Ljava/util/ArrayList;I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lwa7;

    .line 25
    .line 26
    iget-wide v4, p0, Llb7;->f:J

    .line 27
    .line 28
    const-wide/16 v6, 0x0

    .line 29
    .line 30
    cmp-long v4, v4, v6

    .line 31
    .line 32
    if-lez v4, :cond_1

    .line 33
    .line 34
    iput-boolean v3, v2, Lwa7;->b:Z

    .line 35
    .line 36
    iget v4, p0, Llb7;->c:I

    .line 37
    .line 38
    add-int/2addr v4, v3

    .line 39
    iput v4, p0, Llb7;->c:I

    .line 40
    .line 41
    iget-object v4, p0, Llb7;->n:Ljb7;

    .line 42
    .line 43
    monitor-enter v4

    .line 44
    :try_start_0
    iget-wide v8, v4, Liy1;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    monitor-exit v4

    .line 47
    iput-wide v8, v2, Lwa7;->p:J

    .line 48
    .line 49
    iget-wide v4, p0, Llb7;->f:J

    .line 50
    .line 51
    iput-wide v4, v2, Lwa7;->q:J

    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    .line 54
    .line 55
    .line 56
    move-result-wide v4

    .line 57
    iput-wide v4, v2, Lwa7;->n:J

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    .line 60
    .line 61
    .line 62
    move-result-wide v4

    .line 63
    iput-wide v4, v2, Lwa7;->o:J

    .line 64
    .line 65
    iput-boolean v3, v2, Lwa7;->m:Z

    .line 66
    .line 67
    iget-object v3, p0, Llb7;->p:[Liy1;

    .line 68
    .line 69
    if-eqz v3, :cond_2

    .line 70
    .line 71
    array-length v3, v3

    .line 72
    new-array v3, v3, [J

    .line 73
    .line 74
    new-instance v4, Lib7;

    .line 75
    .line 76
    invoke-direct {v4, p0}, Lib7;-><init>(Llb7;)V

    .line 77
    .line 78
    .line 79
    invoke-static {v3, v4}, Ljava/util/Arrays;->setAll([JLjava/util/function/IntToLongFunction;)V

    .line 80
    .line 81
    .line 82
    iget-object v4, p0, Llb7;->r:Ljava/util/HashMap;

    .line 83
    .line 84
    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :catchall_0
    move-exception p0

    .line 89
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    throw p0

    .line 91
    :cond_1
    const/4 v3, 0x0

    .line 92
    iput-boolean v3, v2, Lwa7;->b:Z

    .line 93
    .line 94
    iput-wide v6, v2, Lwa7;->p:J

    .line 95
    .line 96
    iput-wide v6, v2, Lwa7;->q:J

    .line 97
    .line 98
    iput-boolean v3, v2, Lwa7;->m:Z

    .line 99
    .line 100
    :cond_2
    :goto_0
    const/4 v2, 0x0

    .line 101
    iput-object v2, p0, Llb7;->n:Ljb7;

    .line 102
    .line 103
    iput-object v2, p0, Llb7;->p:[Liy1;

    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/util/zip/CRC32;->reset()V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    .line 109
    .line 110
    .line 111
    iput-wide v6, p0, Llb7;->f:J

    .line 112
    .line 113
    return-void
.end method

.method public final b()V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-boolean v1, v0, Llb7;->k:Z

    .line 4
    .line 5
    if-nez v1, :cond_38

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, v0, Llb7;->k:Z

    .line 9
    .line 10
    iget-object v2, v0, Llb7;->a:Ljava/nio/channels/FileChannel;

    .line 11
    .line 12
    invoke-interface {v2}, Ljava/nio/channels/SeekableByteChannel;->position()J

    .line 13
    .line 14
    .line 15
    move-result-wide v3

    .line 16
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    .line 17
    .line 18
    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 19
    .line 20
    .line 21
    new-instance v6, Ljava/io/DataOutputStream;

    .line 22
    .line 23
    invoke-direct {v6, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v6, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 27
    .line 28
    .line 29
    const/4 v7, 0x4

    .line 30
    invoke-virtual {v6, v7}, Ljava/io/DataOutputStream;->write(I)V

    .line 31
    .line 32
    .line 33
    iget v7, v0, Llb7;->c:I

    .line 34
    .line 35
    const-wide/16 v11, 0x0

    .line 36
    .line 37
    const/4 v13, 0x0

    .line 38
    iget-object v14, v0, Llb7;->b:Ljava/util/ArrayList;

    .line 39
    .line 40
    if-lez v7, :cond_f

    .line 41
    .line 42
    const/4 v7, 0x6

    .line 43
    invoke-virtual {v6, v7}, Ljava/io/DataOutputStream;->write(I)V

    .line 44
    .line 45
    .line 46
    invoke-static {v6, v11, v12}, Llb7;->m(Ljava/io/DataOutput;J)V

    .line 47
    .line 48
    .line 49
    iget v7, v0, Llb7;->c:I

    .line 50
    .line 51
    const-wide v15, 0xffffffffL

    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    int-to-long v9, v7

    .line 57
    and-long/2addr v9, v15

    .line 58
    invoke-static {v6, v9, v10}, Llb7;->m(Ljava/io/DataOutput;J)V

    .line 59
    .line 60
    .line 61
    const/16 v7, 0x9

    .line 62
    .line 63
    invoke-virtual {v6, v7}, Ljava/io/DataOutputStream;->write(I)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 67
    .line 68
    .line 69
    move-result-object v7

    .line 70
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    .line 72
    .line 73
    move-result v9

    .line 74
    if-eqz v9, :cond_1

    .line 75
    .line 76
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v9

    .line 80
    check-cast v9, Lwa7;

    .line 81
    .line 82
    iget-boolean v10, v9, Lwa7;->b:Z

    .line 83
    .line 84
    if-eqz v10, :cond_0

    .line 85
    .line 86
    iget-wide v9, v9, Lwa7;->q:J

    .line 87
    .line 88
    invoke-static {v6, v9, v10}, Llb7;->m(Ljava/io/DataOutput;J)V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_1
    const/16 v7, 0xa

    .line 93
    .line 94
    invoke-virtual {v6, v7}, Ljava/io/DataOutputStream;->write(I)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v6, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 101
    .line 102
    .line 103
    move-result-object v9

    .line 104
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 105
    .line 106
    .line 107
    move-result v10

    .line 108
    if-eqz v10, :cond_3

    .line 109
    .line 110
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v10

    .line 114
    check-cast v10, Lwa7;

    .line 115
    .line 116
    move-wide/from16 v17, v15

    .line 117
    .line 118
    iget-boolean v15, v10, Lwa7;->b:Z

    .line 119
    .line 120
    if-eqz v15, :cond_2

    .line 121
    .line 122
    iget-wide v11, v10, Lwa7;->o:J

    .line 123
    .line 124
    long-to-int v10, v11

    .line 125
    invoke-static {v10}, Ljava/lang/Integer;->reverseBytes(I)I

    .line 126
    .line 127
    .line 128
    move-result v10

    .line 129
    invoke-virtual {v6, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 130
    .line 131
    .line 132
    :cond_2
    move-wide/from16 v15, v17

    .line 133
    .line 134
    const-wide/16 v11, 0x0

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_3
    move-wide/from16 v17, v15

    .line 138
    .line 139
    invoke-virtual {v6, v13}, Ljava/io/DataOutputStream;->write(I)V

    .line 140
    .line 141
    .line 142
    const/4 v9, 0x7

    .line 143
    invoke-virtual {v6, v9}, Ljava/io/DataOutputStream;->write(I)V

    .line 144
    .line 145
    .line 146
    const/16 v9, 0xb

    .line 147
    .line 148
    invoke-virtual {v6, v9}, Ljava/io/DataOutputStream;->write(I)V

    .line 149
    .line 150
    .line 151
    iget v9, v0, Llb7;->c:I

    .line 152
    .line 153
    int-to-long v9, v9

    .line 154
    invoke-static {v6, v9, v10}, Llb7;->m(Ljava/io/DataOutput;J)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v6, v13}, Ljava/io/DataOutputStream;->write(I)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 161
    .line 162
    .line 163
    move-result-object v9

    .line 164
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 165
    .line 166
    .line 167
    move-result v10

    .line 168
    if-eqz v10, :cond_9

    .line 169
    .line 170
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v10

    .line 174
    check-cast v10, Lwa7;

    .line 175
    .line 176
    iget-boolean v11, v10, Lwa7;->b:Z

    .line 177
    .line 178
    if-eqz v11, :cond_7

    .line 179
    .line 180
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    .line 181
    .line 182
    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0, v10}, Llb7;->g(Lwa7;)Ljava/lang/Iterable;

    .line 186
    .line 187
    .line 188
    move-result-object v10

    .line 189
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 190
    .line 191
    .line 192
    move-result-object v10

    .line 193
    move v12, v13

    .line 194
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 195
    .line 196
    .line 197
    move-result v19

    .line 198
    if-eqz v19, :cond_6

    .line 199
    .line 200
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v19

    .line 204
    move-object/from16 v15, v19

    .line 205
    .line 206
    check-cast v15, Lgb7;

    .line 207
    .line 208
    add-int/lit8 v12, v12, 0x1

    .line 209
    .line 210
    iget-object v13, v15, Lgb7;->a:Lfb7;

    .line 211
    .line 212
    iget-object v13, v13, Lfb7;->a:[B

    .line 213
    .line 214
    array-length v1, v13

    .line 215
    invoke-static {v13, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    iget-object v13, v15, Lgb7;->a:Lfb7;

    .line 220
    .line 221
    sget-object v7, Ltk1;->a:Llk1;

    .line 222
    .line 223
    invoke-virtual {v7, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v7

    .line 227
    check-cast v7, Lj3;

    .line 228
    .line 229
    iget-object v13, v15, Lgb7;->b:Ljava/lang/Object;

    .line 230
    .line 231
    invoke-virtual {v7, v13}, Lj3;->c(Ljava/lang/Object;)[B

    .line 232
    .line 233
    .line 234
    move-result-object v7

    .line 235
    array-length v13, v1

    .line 236
    array-length v15, v7

    .line 237
    if-lez v15, :cond_4

    .line 238
    .line 239
    or-int/lit8 v13, v13, 0x20

    .line 240
    .line 241
    :cond_4
    invoke-virtual {v11, v13}, Ljava/io/OutputStream;->write(I)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v11, v1}, Ljava/io/OutputStream;->write([B)V

    .line 245
    .line 246
    .line 247
    array-length v1, v7

    .line 248
    if-lez v1, :cond_5

    .line 249
    .line 250
    array-length v1, v7

    .line 251
    invoke-virtual {v11, v1}, Ljava/io/OutputStream;->write(I)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v11, v7}, Ljava/io/OutputStream;->write([B)V

    .line 255
    .line 256
    .line 257
    :cond_5
    const/4 v1, 0x1

    .line 258
    const/16 v7, 0xa

    .line 259
    .line 260
    const/4 v13, 0x0

    .line 261
    goto :goto_3

    .line 262
    :cond_6
    move-object v7, v9

    .line 263
    int-to-long v8, v12

    .line 264
    invoke-static {v6, v8, v9}, Llb7;->m(Ljava/io/DataOutput;J)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 268
    .line 269
    .line 270
    move-result-object v8

    .line 271
    invoke-interface {v6, v8}, Ljava/io/DataOutput;->write([B)V

    .line 272
    .line 273
    .line 274
    const-wide/16 v8, 0x0

    .line 275
    .line 276
    :goto_4
    add-int/lit8 v10, v12, -0x1

    .line 277
    .line 278
    int-to-long v10, v10

    .line 279
    cmp-long v10, v8, v10

    .line 280
    .line 281
    if-gez v10, :cond_8

    .line 282
    .line 283
    const-wide/16 v10, 0x1

    .line 284
    .line 285
    add-long/2addr v10, v8

    .line 286
    invoke-static {v6, v10, v11}, Llb7;->m(Ljava/io/DataOutput;J)V

    .line 287
    .line 288
    .line 289
    invoke-static {v6, v8, v9}, Llb7;->m(Ljava/io/DataOutput;J)V

    .line 290
    .line 291
    .line 292
    move-wide v8, v10

    .line 293
    goto :goto_4

    .line 294
    :cond_7
    move-object v7, v9

    .line 295
    :cond_8
    move-object v9, v7

    .line 296
    const/4 v1, 0x1

    .line 297
    const/16 v7, 0xa

    .line 298
    .line 299
    const/4 v13, 0x0

    .line 300
    goto/16 :goto_2

    .line 301
    .line 302
    :cond_9
    const/16 v1, 0xc

    .line 303
    .line 304
    invoke-virtual {v6, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 308
    .line 309
    .line 310
    move-result-object v7

    .line 311
    :cond_a
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 312
    .line 313
    .line 314
    move-result v8

    .line 315
    if-eqz v8, :cond_c

    .line 316
    .line 317
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v8

    .line 321
    check-cast v8, Lwa7;

    .line 322
    .line 323
    iget-boolean v9, v8, Lwa7;->b:Z

    .line 324
    .line 325
    if-eqz v9, :cond_a

    .line 326
    .line 327
    iget-object v9, v0, Llb7;->r:Ljava/util/HashMap;

    .line 328
    .line 329
    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    move-result-object v9

    .line 333
    check-cast v9, [J

    .line 334
    .line 335
    if-eqz v9, :cond_b

    .line 336
    .line 337
    array-length v10, v9

    .line 338
    const/4 v11, 0x0

    .line 339
    :goto_6
    if-ge v11, v10, :cond_b

    .line 340
    .line 341
    aget-wide v12, v9, v11

    .line 342
    .line 343
    invoke-static {v6, v12, v13}, Llb7;->m(Ljava/io/DataOutput;J)V

    .line 344
    .line 345
    .line 346
    add-int/lit8 v11, v11, 0x1

    .line 347
    .line 348
    goto :goto_6

    .line 349
    :cond_b
    iget-wide v8, v8, Lwa7;->p:J

    .line 350
    .line 351
    invoke-static {v6, v8, v9}, Llb7;->m(Ljava/io/DataOutput;J)V

    .line 352
    .line 353
    .line 354
    goto :goto_5

    .line 355
    :cond_c
    const/16 v8, 0xa

    .line 356
    .line 357
    invoke-virtual {v6, v8}, Ljava/io/DataOutputStream;->write(I)V

    .line 358
    .line 359
    .line 360
    const/4 v0, 0x1

    .line 361
    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 365
    .line 366
    .line 367
    move-result-object v0

    .line 368
    :cond_d
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 369
    .line 370
    .line 371
    move-result v7

    .line 372
    if-eqz v7, :cond_e

    .line 373
    .line 374
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    move-result-object v7

    .line 378
    check-cast v7, Lwa7;

    .line 379
    .line 380
    iget-boolean v8, v7, Lwa7;->b:Z

    .line 381
    .line 382
    if-eqz v8, :cond_d

    .line 383
    .line 384
    iget-wide v7, v7, Lwa7;->n:J

    .line 385
    .line 386
    long-to-int v7, v7

    .line 387
    invoke-static {v7}, Ljava/lang/Integer;->reverseBytes(I)I

    .line 388
    .line 389
    .line 390
    move-result v7

    .line 391
    invoke-virtual {v6, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 392
    .line 393
    .line 394
    goto :goto_7

    .line 395
    :cond_e
    const/4 v7, 0x0

    .line 396
    invoke-virtual {v6, v7}, Ljava/io/DataOutputStream;->write(I)V

    .line 397
    .line 398
    .line 399
    goto :goto_8

    .line 400
    :cond_f
    move v7, v13

    .line 401
    const-wide v17, 0xffffffffL

    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    :goto_8
    const/16 v0, 0x8

    .line 407
    .line 408
    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 409
    .line 410
    .line 411
    invoke-virtual {v6, v7}, Ljava/io/DataOutputStream;->write(I)V

    .line 412
    .line 413
    .line 414
    invoke-virtual {v6, v7}, Ljava/io/DataOutputStream;->write(I)V

    .line 415
    .line 416
    .line 417
    const/4 v7, 0x5

    .line 418
    invoke-virtual {v6, v7}, Ljava/io/DataOutputStream;->write(I)V

    .line 419
    .line 420
    .line 421
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 422
    .line 423
    .line 424
    move-result v7

    .line 425
    int-to-long v7, v7

    .line 426
    invoke-static {v6, v7, v8}, Llb7;->m(Ljava/io/DataOutput;J)V

    .line 427
    .line 428
    .line 429
    invoke-interface {v14}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 430
    .line 431
    .line 432
    move-result-object v7

    .line 433
    new-instance v8, Lhb7;

    .line 434
    .line 435
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 436
    .line 437
    .line 438
    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 439
    .line 440
    .line 441
    move-result v7

    .line 442
    if-eqz v7, :cond_11

    .line 443
    .line 444
    const/16 v7, 0xe

    .line 445
    .line 446
    invoke-virtual {v6, v7}, Ljava/io/DataOutputStream;->write(I)V

    .line 447
    .line 448
    .line 449
    new-instance v7, Ljava/util/BitSet;

    .line 450
    .line 451
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 452
    .line 453
    .line 454
    move-result v8

    .line 455
    invoke-direct {v7, v8}, Ljava/util/BitSet;-><init>(I)V

    .line 456
    .line 457
    .line 458
    const/4 v8, 0x0

    .line 459
    :goto_9
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 460
    .line 461
    .line 462
    move-result v9

    .line 463
    if-ge v8, v9, :cond_10

    .line 464
    .line 465
    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 466
    .line 467
    .line 468
    move-result-object v9

    .line 469
    check-cast v9, Lwa7;

    .line 470
    .line 471
    iget-boolean v9, v9, Lwa7;->b:Z

    .line 472
    .line 473
    const/16 v19, 0x1

    .line 474
    .line 475
    xor-int/lit8 v9, v9, 0x1

    .line 476
    .line 477
    invoke-virtual {v7, v8, v9}, Ljava/util/BitSet;->set(IZ)V

    .line 478
    .line 479
    .line 480
    add-int/lit8 v8, v8, 0x1

    .line 481
    .line 482
    goto :goto_9

    .line 483
    :cond_10
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    .line 484
    .line 485
    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 486
    .line 487
    .line 488
    new-instance v9, Ljava/io/DataOutputStream;

    .line 489
    .line 490
    invoke-direct {v9, v8}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 491
    .line 492
    .line 493
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 494
    .line 495
    .line 496
    move-result v10

    .line 497
    invoke-static {v9, v7, v10}, Llb7;->j(Ljava/io/DataOutputStream;Ljava/util/BitSet;I)V

    .line 498
    .line 499
    .line 500
    invoke-virtual {v9}, Ljava/io/DataOutputStream;->flush()V

    .line 501
    .line 502
    .line 503
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 504
    .line 505
    .line 506
    move-result-object v7

    .line 507
    array-length v8, v7

    .line 508
    int-to-long v8, v8

    .line 509
    invoke-static {v6, v8, v9}, Llb7;->m(Ljava/io/DataOutput;J)V

    .line 510
    .line 511
    .line 512
    invoke-interface {v6, v7}, Ljava/io/DataOutput;->write([B)V

    .line 513
    .line 514
    .line 515
    :cond_11
    new-instance v7, Ljava/util/BitSet;

    .line 516
    .line 517
    const/4 v8, 0x0

    .line 518
    invoke-direct {v7, v8}, Ljava/util/BitSet;-><init>(I)V

    .line 519
    .line 520
    .line 521
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 522
    .line 523
    .line 524
    move-result-object v8

    .line 525
    const/4 v9, 0x0

    .line 526
    const/4 v10, 0x0

    .line 527
    :cond_12
    :goto_a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 528
    .line 529
    .line 530
    move-result v11

    .line 531
    if-eqz v11, :cond_13

    .line 532
    .line 533
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 534
    .line 535
    .line 536
    move-result-object v11

    .line 537
    check-cast v11, Lwa7;

    .line 538
    .line 539
    iget-boolean v12, v11, Lwa7;->b:Z

    .line 540
    .line 541
    if-nez v12, :cond_12

    .line 542
    .line 543
    iget-boolean v11, v11, Lwa7;->c:Z

    .line 544
    .line 545
    add-int/lit8 v12, v10, 0x1

    .line 546
    .line 547
    const/16 v19, 0x1

    .line 548
    .line 549
    xor-int/lit8 v11, v11, 0x1

    .line 550
    .line 551
    invoke-virtual {v7, v10, v11}, Ljava/util/BitSet;->set(IZ)V

    .line 552
    .line 553
    .line 554
    or-int/2addr v9, v11

    .line 555
    move v10, v12

    .line 556
    goto :goto_a

    .line 557
    :cond_13
    if-eqz v9, :cond_14

    .line 558
    .line 559
    const/16 v8, 0xf

    .line 560
    .line 561
    invoke-virtual {v6, v8}, Ljava/io/DataOutputStream;->write(I)V

    .line 562
    .line 563
    .line 564
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    .line 565
    .line 566
    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 567
    .line 568
    .line 569
    new-instance v9, Ljava/io/DataOutputStream;

    .line 570
    .line 571
    invoke-direct {v9, v8}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 572
    .line 573
    .line 574
    invoke-static {v9, v7, v10}, Llb7;->j(Ljava/io/DataOutputStream;Ljava/util/BitSet;I)V

    .line 575
    .line 576
    .line 577
    invoke-virtual {v9}, Ljava/io/DataOutputStream;->flush()V

    .line 578
    .line 579
    .line 580
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 581
    .line 582
    .line 583
    move-result-object v7

    .line 584
    array-length v8, v7

    .line 585
    int-to-long v8, v8

    .line 586
    invoke-static {v6, v8, v9}, Llb7;->m(Ljava/io/DataOutput;J)V

    .line 587
    .line 588
    .line 589
    invoke-interface {v6, v7}, Ljava/io/DataOutput;->write([B)V

    .line 590
    .line 591
    .line 592
    :cond_14
    new-instance v7, Ljava/util/BitSet;

    .line 593
    .line 594
    const/4 v8, 0x0

    .line 595
    invoke-direct {v7, v8}, Ljava/util/BitSet;-><init>(I)V

    .line 596
    .line 597
    .line 598
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 599
    .line 600
    .line 601
    move-result-object v8

    .line 602
    const/4 v9, 0x0

    .line 603
    const/4 v10, 0x0

    .line 604
    :cond_15
    :goto_b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 605
    .line 606
    .line 607
    move-result v11

    .line 608
    if-eqz v11, :cond_16

    .line 609
    .line 610
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 611
    .line 612
    .line 613
    move-result-object v11

    .line 614
    check-cast v11, Lwa7;

    .line 615
    .line 616
    iget-boolean v12, v11, Lwa7;->b:Z

    .line 617
    .line 618
    if-nez v12, :cond_15

    .line 619
    .line 620
    iget-boolean v11, v11, Lwa7;->d:Z

    .line 621
    .line 622
    add-int/lit8 v12, v10, 0x1

    .line 623
    .line 624
    invoke-virtual {v7, v10, v11}, Ljava/util/BitSet;->set(IZ)V

    .line 625
    .line 626
    .line 627
    or-int/2addr v9, v11

    .line 628
    move v10, v12

    .line 629
    goto :goto_b

    .line 630
    :cond_16
    if-eqz v9, :cond_17

    .line 631
    .line 632
    const/16 v8, 0x10

    .line 633
    .line 634
    invoke-virtual {v6, v8}, Ljava/io/DataOutputStream;->write(I)V

    .line 635
    .line 636
    .line 637
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    .line 638
    .line 639
    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 640
    .line 641
    .line 642
    new-instance v9, Ljava/io/DataOutputStream;

    .line 643
    .line 644
    invoke-direct {v9, v8}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 645
    .line 646
    .line 647
    invoke-static {v9, v7, v10}, Llb7;->j(Ljava/io/DataOutputStream;Ljava/util/BitSet;I)V

    .line 648
    .line 649
    .line 650
    invoke-virtual {v9}, Ljava/io/DataOutputStream;->flush()V

    .line 651
    .line 652
    .line 653
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 654
    .line 655
    .line 656
    move-result-object v7

    .line 657
    array-length v8, v7

    .line 658
    int-to-long v8, v8

    .line 659
    invoke-static {v6, v8, v9}, Llb7;->m(Ljava/io/DataOutput;J)V

    .line 660
    .line 661
    .line 662
    invoke-interface {v6, v7}, Ljava/io/DataOutput;->write([B)V

    .line 663
    .line 664
    .line 665
    :cond_17
    const/16 v7, 0x11

    .line 666
    .line 667
    invoke-virtual {v6, v7}, Ljava/io/DataOutputStream;->write(I)V

    .line 668
    .line 669
    .line 670
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    .line 671
    .line 672
    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 673
    .line 674
    .line 675
    new-instance v8, Ljava/io/DataOutputStream;

    .line 676
    .line 677
    invoke-direct {v8, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 678
    .line 679
    .line 680
    const/4 v9, 0x0

    .line 681
    invoke-virtual {v8, v9}, Ljava/io/DataOutputStream;->write(I)V

    .line 682
    .line 683
    .line 684
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 685
    .line 686
    .line 687
    move-result-object v10

    .line 688
    :goto_c
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 689
    .line 690
    .line 691
    move-result v11

    .line 692
    if-eqz v11, :cond_18

    .line 693
    .line 694
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 695
    .line 696
    .line 697
    move-result-object v11

    .line 698
    check-cast v11, Lwa7;

    .line 699
    .line 700
    iget-object v11, v11, Lwa7;->a:Ljava/lang/String;

    .line 701
    .line 702
    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    .line 703
    .line 704
    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 705
    .line 706
    .line 707
    move-result-object v11

    .line 708
    invoke-virtual {v8, v11}, Ljava/io/OutputStream;->write([B)V

    .line 709
    .line 710
    .line 711
    invoke-virtual {v8, v9}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 712
    .line 713
    .line 714
    goto :goto_c

    .line 715
    :cond_18
    invoke-virtual {v8}, Ljava/io/DataOutputStream;->flush()V

    .line 716
    .line 717
    .line 718
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 719
    .line 720
    .line 721
    move-result-object v7

    .line 722
    array-length v8, v7

    .line 723
    int-to-long v8, v8

    .line 724
    invoke-static {v6, v8, v9}, Llb7;->m(Ljava/io/DataOutput;J)V

    .line 725
    .line 726
    .line 727
    invoke-interface {v6, v7}, Ljava/io/DataOutput;->write([B)V

    .line 728
    .line 729
    .line 730
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 731
    .line 732
    .line 733
    move-result-object v7

    .line 734
    const/4 v8, 0x0

    .line 735
    :cond_19
    :goto_d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 736
    .line 737
    .line 738
    move-result v9

    .line 739
    if-eqz v9, :cond_1a

    .line 740
    .line 741
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 742
    .line 743
    .line 744
    move-result-object v9

    .line 745
    check-cast v9, Lwa7;

    .line 746
    .line 747
    iget-boolean v9, v9, Lwa7;->e:Z

    .line 748
    .line 749
    if-eqz v9, :cond_19

    .line 750
    .line 751
    add-int/lit8 v8, v8, 0x1

    .line 752
    .line 753
    goto :goto_d

    .line 754
    :cond_1a
    const-string v7, "The entry doesn\'t have this timestamp"

    .line 755
    .line 756
    if-lez v8, :cond_20

    .line 757
    .line 758
    const/16 v9, 0x12

    .line 759
    .line 760
    invoke-virtual {v6, v9}, Ljava/io/DataOutputStream;->write(I)V

    .line 761
    .line 762
    .line 763
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    .line 764
    .line 765
    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 766
    .line 767
    .line 768
    new-instance v10, Ljava/io/DataOutputStream;

    .line 769
    .line 770
    invoke-direct {v10, v9}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 771
    .line 772
    .line 773
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 774
    .line 775
    .line 776
    move-result v11

    .line 777
    if-eq v8, v11, :cond_1c

    .line 778
    .line 779
    const/4 v8, 0x0

    .line 780
    invoke-virtual {v10, v8}, Ljava/io/DataOutputStream;->write(I)V

    .line 781
    .line 782
    .line 783
    new-instance v8, Ljava/util/BitSet;

    .line 784
    .line 785
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 786
    .line 787
    .line 788
    move-result v11

    .line 789
    invoke-direct {v8, v11}, Ljava/util/BitSet;-><init>(I)V

    .line 790
    .line 791
    .line 792
    const/4 v11, 0x0

    .line 793
    :goto_e
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 794
    .line 795
    .line 796
    move-result v12

    .line 797
    if-ge v11, v12, :cond_1b

    .line 798
    .line 799
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 800
    .line 801
    .line 802
    move-result-object v12

    .line 803
    check-cast v12, Lwa7;

    .line 804
    .line 805
    iget-boolean v12, v12, Lwa7;->e:Z

    .line 806
    .line 807
    invoke-virtual {v8, v11, v12}, Ljava/util/BitSet;->set(IZ)V

    .line 808
    .line 809
    .line 810
    add-int/lit8 v11, v11, 0x1

    .line 811
    .line 812
    goto :goto_e

    .line 813
    :cond_1b
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 814
    .line 815
    .line 816
    move-result v11

    .line 817
    invoke-static {v10, v8, v11}, Llb7;->j(Ljava/io/DataOutputStream;Ljava/util/BitSet;I)V

    .line 818
    .line 819
    .line 820
    :goto_f
    const/4 v8, 0x0

    .line 821
    goto :goto_10

    .line 822
    :cond_1c
    const/4 v8, 0x1

    .line 823
    invoke-virtual {v10, v8}, Ljava/io/DataOutputStream;->write(I)V

    .line 824
    .line 825
    .line 826
    goto :goto_f

    .line 827
    :goto_10
    invoke-virtual {v10, v8}, Ljava/io/DataOutputStream;->write(I)V

    .line 828
    .line 829
    .line 830
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 831
    .line 832
    .line 833
    move-result-object v8

    .line 834
    :cond_1d
    :goto_11
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 835
    .line 836
    .line 837
    move-result v11

    .line 838
    if-eqz v11, :cond_1f

    .line 839
    .line 840
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 841
    .line 842
    .line 843
    move-result-object v11

    .line 844
    check-cast v11, Lwa7;

    .line 845
    .line 846
    iget-boolean v12, v11, Lwa7;->e:Z

    .line 847
    .line 848
    if-eqz v12, :cond_1d

    .line 849
    .line 850
    if-eqz v12, :cond_1e

    .line 851
    .line 852
    iget-object v11, v11, Lwa7;->h:Ljava/nio/file/attribute/FileTime;

    .line 853
    .line 854
    invoke-static {v11}, Lha3;->b(Ljava/nio/file/attribute/FileTime;)J

    .line 855
    .line 856
    .line 857
    move-result-wide v11

    .line 858
    invoke-static {v11, v12}, Ljava/lang/Long;->reverseBytes(J)J

    .line 859
    .line 860
    .line 861
    move-result-wide v11

    .line 862
    invoke-virtual {v10, v11, v12}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 863
    .line 864
    .line 865
    goto :goto_11

    .line 866
    :cond_1e
    invoke-static {v7}, Lg84;->j(Ljava/lang/String;)V

    .line 867
    .line 868
    .line 869
    return-void

    .line 870
    :cond_1f
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->flush()V

    .line 871
    .line 872
    .line 873
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 874
    .line 875
    .line 876
    move-result-object v8

    .line 877
    array-length v9, v8

    .line 878
    int-to-long v9, v9

    .line 879
    invoke-static {v6, v9, v10}, Llb7;->m(Ljava/io/DataOutput;J)V

    .line 880
    .line 881
    .line 882
    invoke-interface {v6, v8}, Ljava/io/DataOutput;->write([B)V

    .line 883
    .line 884
    .line 885
    :cond_20
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 886
    .line 887
    .line 888
    move-result-object v8

    .line 889
    const/4 v9, 0x0

    .line 890
    :cond_21
    :goto_12
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 891
    .line 892
    .line 893
    move-result v10

    .line 894
    if-eqz v10, :cond_22

    .line 895
    .line 896
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 897
    .line 898
    .line 899
    move-result-object v10

    .line 900
    check-cast v10, Lwa7;

    .line 901
    .line 902
    iget-boolean v10, v10, Lwa7;->g:Z

    .line 903
    .line 904
    if-eqz v10, :cond_21

    .line 905
    .line 906
    add-int/lit8 v9, v9, 0x1

    .line 907
    .line 908
    goto :goto_12

    .line 909
    :cond_22
    if-lez v9, :cond_28

    .line 910
    .line 911
    const/16 v8, 0x13

    .line 912
    .line 913
    invoke-virtual {v6, v8}, Ljava/io/DataOutputStream;->write(I)V

    .line 914
    .line 915
    .line 916
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    .line 917
    .line 918
    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 919
    .line 920
    .line 921
    new-instance v10, Ljava/io/DataOutputStream;

    .line 922
    .line 923
    invoke-direct {v10, v8}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 924
    .line 925
    .line 926
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 927
    .line 928
    .line 929
    move-result v11

    .line 930
    if-eq v9, v11, :cond_24

    .line 931
    .line 932
    const/4 v9, 0x0

    .line 933
    invoke-virtual {v10, v9}, Ljava/io/DataOutputStream;->write(I)V

    .line 934
    .line 935
    .line 936
    new-instance v9, Ljava/util/BitSet;

    .line 937
    .line 938
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 939
    .line 940
    .line 941
    move-result v11

    .line 942
    invoke-direct {v9, v11}, Ljava/util/BitSet;-><init>(I)V

    .line 943
    .line 944
    .line 945
    const/4 v11, 0x0

    .line 946
    :goto_13
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 947
    .line 948
    .line 949
    move-result v12

    .line 950
    if-ge v11, v12, :cond_23

    .line 951
    .line 952
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 953
    .line 954
    .line 955
    move-result-object v12

    .line 956
    check-cast v12, Lwa7;

    .line 957
    .line 958
    iget-boolean v12, v12, Lwa7;->g:Z

    .line 959
    .line 960
    invoke-virtual {v9, v11, v12}, Ljava/util/BitSet;->set(IZ)V

    .line 961
    .line 962
    .line 963
    add-int/lit8 v11, v11, 0x1

    .line 964
    .line 965
    goto :goto_13

    .line 966
    :cond_23
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 967
    .line 968
    .line 969
    move-result v11

    .line 970
    invoke-static {v10, v9, v11}, Llb7;->j(Ljava/io/DataOutputStream;Ljava/util/BitSet;I)V

    .line 971
    .line 972
    .line 973
    :goto_14
    const/4 v9, 0x0

    .line 974
    goto :goto_15

    .line 975
    :cond_24
    const/4 v9, 0x1

    .line 976
    invoke-virtual {v10, v9}, Ljava/io/DataOutputStream;->write(I)V

    .line 977
    .line 978
    .line 979
    goto :goto_14

    .line 980
    :goto_15
    invoke-virtual {v10, v9}, Ljava/io/DataOutputStream;->write(I)V

    .line 981
    .line 982
    .line 983
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 984
    .line 985
    .line 986
    move-result-object v9

    .line 987
    :cond_25
    :goto_16
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 988
    .line 989
    .line 990
    move-result v11

    .line 991
    if-eqz v11, :cond_27

    .line 992
    .line 993
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 994
    .line 995
    .line 996
    move-result-object v11

    .line 997
    check-cast v11, Lwa7;

    .line 998
    .line 999
    iget-boolean v12, v11, Lwa7;->g:Z

    .line 1000
    .line 1001
    if-eqz v12, :cond_25

    .line 1002
    .line 1003
    if-eqz v12, :cond_26

    .line 1004
    .line 1005
    iget-object v11, v11, Lwa7;->j:Ljava/nio/file/attribute/FileTime;

    .line 1006
    .line 1007
    invoke-static {v11}, Lha3;->b(Ljava/nio/file/attribute/FileTime;)J

    .line 1008
    .line 1009
    .line 1010
    move-result-wide v11

    .line 1011
    invoke-static {v11, v12}, Ljava/lang/Long;->reverseBytes(J)J

    .line 1012
    .line 1013
    .line 1014
    move-result-wide v11

    .line 1015
    invoke-virtual {v10, v11, v12}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1016
    .line 1017
    .line 1018
    goto :goto_16

    .line 1019
    :cond_26
    invoke-static {v7}, Lg84;->j(Ljava/lang/String;)V

    .line 1020
    .line 1021
    .line 1022
    return-void

    .line 1023
    :cond_27
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->flush()V

    .line 1024
    .line 1025
    .line 1026
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 1027
    .line 1028
    .line 1029
    move-result-object v8

    .line 1030
    array-length v9, v8

    .line 1031
    int-to-long v9, v9

    .line 1032
    invoke-static {v6, v9, v10}, Llb7;->m(Ljava/io/DataOutput;J)V

    .line 1033
    .line 1034
    .line 1035
    invoke-interface {v6, v8}, Ljava/io/DataOutput;->write([B)V

    .line 1036
    .line 1037
    .line 1038
    :cond_28
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1039
    .line 1040
    .line 1041
    move-result-object v8

    .line 1042
    const/4 v9, 0x0

    .line 1043
    :cond_29
    :goto_17
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 1044
    .line 1045
    .line 1046
    move-result v10

    .line 1047
    if-eqz v10, :cond_2a

    .line 1048
    .line 1049
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1050
    .line 1051
    .line 1052
    move-result-object v10

    .line 1053
    check-cast v10, Lwa7;

    .line 1054
    .line 1055
    iget-boolean v10, v10, Lwa7;->f:Z

    .line 1056
    .line 1057
    if-eqz v10, :cond_29

    .line 1058
    .line 1059
    add-int/lit8 v9, v9, 0x1

    .line 1060
    .line 1061
    goto :goto_17

    .line 1062
    :cond_2a
    const/16 v8, 0x14

    .line 1063
    .line 1064
    if-lez v9, :cond_30

    .line 1065
    .line 1066
    invoke-virtual {v6, v8}, Ljava/io/DataOutputStream;->write(I)V

    .line 1067
    .line 1068
    .line 1069
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    .line 1070
    .line 1071
    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1072
    .line 1073
    .line 1074
    new-instance v11, Ljava/io/DataOutputStream;

    .line 1075
    .line 1076
    invoke-direct {v11, v10}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1077
    .line 1078
    .line 1079
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 1080
    .line 1081
    .line 1082
    move-result v12

    .line 1083
    if-eq v9, v12, :cond_2c

    .line 1084
    .line 1085
    const/4 v9, 0x0

    .line 1086
    invoke-virtual {v11, v9}, Ljava/io/DataOutputStream;->write(I)V

    .line 1087
    .line 1088
    .line 1089
    new-instance v9, Ljava/util/BitSet;

    .line 1090
    .line 1091
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 1092
    .line 1093
    .line 1094
    move-result v12

    .line 1095
    invoke-direct {v9, v12}, Ljava/util/BitSet;-><init>(I)V

    .line 1096
    .line 1097
    .line 1098
    const/4 v12, 0x0

    .line 1099
    :goto_18
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 1100
    .line 1101
    .line 1102
    move-result v13

    .line 1103
    if-ge v12, v13, :cond_2b

    .line 1104
    .line 1105
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1106
    .line 1107
    .line 1108
    move-result-object v13

    .line 1109
    check-cast v13, Lwa7;

    .line 1110
    .line 1111
    iget-boolean v13, v13, Lwa7;->f:Z

    .line 1112
    .line 1113
    invoke-virtual {v9, v12, v13}, Ljava/util/BitSet;->set(IZ)V

    .line 1114
    .line 1115
    .line 1116
    add-int/lit8 v12, v12, 0x1

    .line 1117
    .line 1118
    goto :goto_18

    .line 1119
    :cond_2b
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 1120
    .line 1121
    .line 1122
    move-result v12

    .line 1123
    invoke-static {v11, v9, v12}, Llb7;->j(Ljava/io/DataOutputStream;Ljava/util/BitSet;I)V

    .line 1124
    .line 1125
    .line 1126
    :goto_19
    const/4 v9, 0x0

    .line 1127
    goto :goto_1a

    .line 1128
    :cond_2c
    const/4 v9, 0x1

    .line 1129
    invoke-virtual {v11, v9}, Ljava/io/DataOutputStream;->write(I)V

    .line 1130
    .line 1131
    .line 1132
    goto :goto_19

    .line 1133
    :goto_1a
    invoke-virtual {v11, v9}, Ljava/io/DataOutputStream;->write(I)V

    .line 1134
    .line 1135
    .line 1136
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1137
    .line 1138
    .line 1139
    move-result-object v9

    .line 1140
    :cond_2d
    :goto_1b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 1141
    .line 1142
    .line 1143
    move-result v12

    .line 1144
    if-eqz v12, :cond_2f

    .line 1145
    .line 1146
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1147
    .line 1148
    .line 1149
    move-result-object v12

    .line 1150
    check-cast v12, Lwa7;

    .line 1151
    .line 1152
    iget-boolean v13, v12, Lwa7;->f:Z

    .line 1153
    .line 1154
    if-eqz v13, :cond_2d

    .line 1155
    .line 1156
    if-eqz v13, :cond_2e

    .line 1157
    .line 1158
    iget-object v12, v12, Lwa7;->i:Ljava/nio/file/attribute/FileTime;

    .line 1159
    .line 1160
    invoke-static {v12}, Lha3;->b(Ljava/nio/file/attribute/FileTime;)J

    .line 1161
    .line 1162
    .line 1163
    move-result-wide v12

    .line 1164
    invoke-static {v12, v13}, Ljava/lang/Long;->reverseBytes(J)J

    .line 1165
    .line 1166
    .line 1167
    move-result-wide v12

    .line 1168
    invoke-virtual {v11, v12, v13}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1169
    .line 1170
    .line 1171
    goto :goto_1b

    .line 1172
    :cond_2e
    invoke-static {v7}, Lg84;->j(Ljava/lang/String;)V

    .line 1173
    .line 1174
    .line 1175
    return-void

    .line 1176
    :cond_2f
    invoke-virtual {v11}, Ljava/io/DataOutputStream;->flush()V

    .line 1177
    .line 1178
    .line 1179
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 1180
    .line 1181
    .line 1182
    move-result-object v7

    .line 1183
    array-length v9, v7

    .line 1184
    int-to-long v9, v9

    .line 1185
    invoke-static {v6, v9, v10}, Llb7;->m(Ljava/io/DataOutput;J)V

    .line 1186
    .line 1187
    .line 1188
    invoke-interface {v6, v7}, Ljava/io/DataOutput;->write([B)V

    .line 1189
    .line 1190
    .line 1191
    :cond_30
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1192
    .line 1193
    .line 1194
    move-result-object v7

    .line 1195
    const/4 v9, 0x0

    .line 1196
    :cond_31
    :goto_1c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 1197
    .line 1198
    .line 1199
    move-result v10

    .line 1200
    if-eqz v10, :cond_32

    .line 1201
    .line 1202
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1203
    .line 1204
    .line 1205
    move-result-object v10

    .line 1206
    check-cast v10, Lwa7;

    .line 1207
    .line 1208
    iget-boolean v10, v10, Lwa7;->k:Z

    .line 1209
    .line 1210
    if-eqz v10, :cond_31

    .line 1211
    .line 1212
    add-int/lit8 v9, v9, 0x1

    .line 1213
    .line 1214
    goto :goto_1c

    .line 1215
    :cond_32
    if-lez v9, :cond_37

    .line 1216
    .line 1217
    const/16 v7, 0x15

    .line 1218
    .line 1219
    invoke-virtual {v6, v7}, Ljava/io/DataOutputStream;->write(I)V

    .line 1220
    .line 1221
    .line 1222
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    .line 1223
    .line 1224
    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1225
    .line 1226
    .line 1227
    new-instance v10, Ljava/io/DataOutputStream;

    .line 1228
    .line 1229
    invoke-direct {v10, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1230
    .line 1231
    .line 1232
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 1233
    .line 1234
    .line 1235
    move-result v11

    .line 1236
    if-eq v9, v11, :cond_34

    .line 1237
    .line 1238
    const/4 v9, 0x0

    .line 1239
    invoke-virtual {v10, v9}, Ljava/io/DataOutputStream;->write(I)V

    .line 1240
    .line 1241
    .line 1242
    new-instance v9, Ljava/util/BitSet;

    .line 1243
    .line 1244
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 1245
    .line 1246
    .line 1247
    move-result v11

    .line 1248
    invoke-direct {v9, v11}, Ljava/util/BitSet;-><init>(I)V

    .line 1249
    .line 1250
    .line 1251
    const/4 v11, 0x0

    .line 1252
    :goto_1d
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 1253
    .line 1254
    .line 1255
    move-result v12

    .line 1256
    if-ge v11, v12, :cond_33

    .line 1257
    .line 1258
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1259
    .line 1260
    .line 1261
    move-result-object v12

    .line 1262
    check-cast v12, Lwa7;

    .line 1263
    .line 1264
    iget-boolean v12, v12, Lwa7;->k:Z

    .line 1265
    .line 1266
    invoke-virtual {v9, v11, v12}, Ljava/util/BitSet;->set(IZ)V

    .line 1267
    .line 1268
    .line 1269
    add-int/lit8 v11, v11, 0x1

    .line 1270
    .line 1271
    goto :goto_1d

    .line 1272
    :cond_33
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 1273
    .line 1274
    .line 1275
    move-result v11

    .line 1276
    invoke-static {v10, v9, v11}, Llb7;->j(Ljava/io/DataOutputStream;Ljava/util/BitSet;I)V

    .line 1277
    .line 1278
    .line 1279
    :goto_1e
    const/4 v9, 0x0

    .line 1280
    goto :goto_1f

    .line 1281
    :cond_34
    const/4 v9, 0x1

    .line 1282
    invoke-virtual {v10, v9}, Ljava/io/DataOutputStream;->write(I)V

    .line 1283
    .line 1284
    .line 1285
    goto :goto_1e

    .line 1286
    :goto_1f
    invoke-virtual {v10, v9}, Ljava/io/DataOutputStream;->write(I)V

    .line 1287
    .line 1288
    .line 1289
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1290
    .line 1291
    .line 1292
    move-result-object v9

    .line 1293
    :cond_35
    :goto_20
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 1294
    .line 1295
    .line 1296
    move-result v11

    .line 1297
    if-eqz v11, :cond_36

    .line 1298
    .line 1299
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1300
    .line 1301
    .line 1302
    move-result-object v11

    .line 1303
    check-cast v11, Lwa7;

    .line 1304
    .line 1305
    iget-boolean v12, v11, Lwa7;->k:Z

    .line 1306
    .line 1307
    if-eqz v12, :cond_35

    .line 1308
    .line 1309
    iget v11, v11, Lwa7;->l:I

    .line 1310
    .line 1311
    invoke-static {v11}, Ljava/lang/Integer;->reverseBytes(I)I

    .line 1312
    .line 1313
    .line 1314
    move-result v11

    .line 1315
    invoke-virtual {v10, v11}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1316
    .line 1317
    .line 1318
    goto :goto_20

    .line 1319
    :cond_36
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->flush()V

    .line 1320
    .line 1321
    .line 1322
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 1323
    .line 1324
    .line 1325
    move-result-object v7

    .line 1326
    array-length v9, v7

    .line 1327
    int-to-long v9, v9

    .line 1328
    invoke-static {v6, v9, v10}, Llb7;->m(Ljava/io/DataOutput;J)V

    .line 1329
    .line 1330
    .line 1331
    invoke-interface {v6, v7}, Ljava/io/DataOutput;->write([B)V

    .line 1332
    .line 1333
    .line 1334
    :cond_37
    const/4 v9, 0x0

    .line 1335
    invoke-virtual {v6, v9}, Ljava/io/DataOutputStream;->write(I)V

    .line 1336
    .line 1337
    .line 1338
    invoke-virtual {v6, v9}, Ljava/io/DataOutputStream;->write(I)V

    .line 1339
    .line 1340
    .line 1341
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->flush()V

    .line 1342
    .line 1343
    .line 1344
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 1345
    .line 1346
    .line 1347
    move-result-object v5

    .line 1348
    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 1349
    .line 1350
    .line 1351
    move-result-object v6

    .line 1352
    invoke-interface {v2, v6}, Ljava/nio/channels/SeekableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 1353
    .line 1354
    .line 1355
    new-instance v6, Ljava/util/zip/CRC32;

    .line 1356
    .line 1357
    invoke-direct {v6}, Ljava/util/zip/CRC32;-><init>()V

    .line 1358
    .line 1359
    .line 1360
    invoke-virtual {v6, v5}, Ljava/util/zip/CRC32;->update([B)V

    .line 1361
    .line 1362
    .line 1363
    const/16 v7, 0x20

    .line 1364
    .line 1365
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 1366
    .line 1367
    .line 1368
    move-result-object v7

    .line 1369
    sget-object v9, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 1370
    .line 1371
    invoke-virtual {v7, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1372
    .line 1373
    .line 1374
    move-result-object v7

    .line 1375
    const-wide/16 v9, 0x0

    .line 1376
    .line 1377
    invoke-interface {v2, v9, v10}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 1378
    .line 1379
    .line 1380
    sget-object v9, Leb7;->q:[B

    .line 1381
    .line 1382
    invoke-virtual {v7, v9}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1383
    .line 1384
    .line 1385
    const/4 v9, 0x0

    .line 1386
    invoke-virtual {v7, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1387
    .line 1388
    .line 1389
    move-result-object v10

    .line 1390
    const/4 v11, 0x2

    .line 1391
    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1392
    .line 1393
    .line 1394
    invoke-virtual {v7, v9}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1395
    .line 1396
    .line 1397
    const-wide/16 v9, 0x20

    .line 1398
    .line 1399
    sub-long/2addr v3, v9

    .line 1400
    invoke-virtual {v7, v3, v4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 1401
    .line 1402
    .line 1403
    move-result-object v3

    .line 1404
    array-length v4, v5

    .line 1405
    int-to-long v4, v4

    .line 1406
    and-long v4, v4, v17

    .line 1407
    .line 1408
    invoke-virtual {v3, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 1409
    .line 1410
    .line 1411
    move-result-object v3

    .line 1412
    invoke-virtual {v6}, Ljava/util/zip/CRC32;->getValue()J

    .line 1413
    .line 1414
    .line 1415
    move-result-wide v4

    .line 1416
    long-to-int v4, v4

    .line 1417
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1418
    .line 1419
    .line 1420
    invoke-virtual {v6}, Ljava/util/zip/CRC32;->reset()V

    .line 1421
    .line 1422
    .line 1423
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    .line 1424
    .line 1425
    .line 1426
    move-result-object v3

    .line 1427
    const/16 v1, 0xc

    .line 1428
    .line 1429
    invoke-virtual {v6, v3, v1, v8}, Ljava/util/zip/CRC32;->update([BII)V

    .line 1430
    .line 1431
    .line 1432
    invoke-virtual {v6}, Ljava/util/zip/CRC32;->getValue()J

    .line 1433
    .line 1434
    .line 1435
    move-result-wide v3

    .line 1436
    long-to-int v1, v3

    .line 1437
    invoke-virtual {v7, v0, v1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 1438
    .line 1439
    .line 1440
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1441
    .line 1442
    .line 1443
    invoke-interface {v2, v7}, Ljava/nio/channels/SeekableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 1444
    .line 1445
    .line 1446
    return-void

    .line 1447
    :cond_38
    const-string v0, "This archive has already been finished"

    .line 1448
    .line 1449
    invoke-static {v0}, Ly5;->m(Ljava/lang/String;)V

    .line 1450
    .line 1451
    .line 1452
    return-void
.end method

.method public final close()V
    .locals 2

    .line 1
    iget-object v0, p0, Llb7;->a:Ljava/nio/channels/FileChannel;

    .line 2
    .line 3
    :try_start_0
    iget-boolean v1, p0, Llb7;->k:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Llb7;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    goto :goto_1

    .line 13
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/nio/channels/Channel;->close()V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :goto_1
    invoke-interface {v0}, Ljava/nio/channels/Channel;->close()V

    .line 18
    .line 19
    .line 20
    throw p0
.end method

.method public final g(Lwa7;)Ljava/lang/Iterable;
    .locals 0

    .line 1
    iget-object p1, p1, Lwa7;->r:Ljava/util/List;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Llb7;->q:Ljava/util/List;

    .line 6
    .line 7
    :cond_0
    return-object p1
.end method

.method public final h([BI)V
    .locals 7

    .line 1
    if-lez p2, :cond_6

    .line 2
    .line 3
    iget-object v0, p0, Llb7;->n:Ljb7;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_5

    .line 7
    .line 8
    iget-object v0, p0, Llb7;->b:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-nez v2, :cond_4

    .line 15
    .line 16
    new-instance v2, Lkb7;

    .line 17
    .line 18
    invoke-direct {v2, p0}, Lkb7;-><init>(Llb7;)V

    .line 19
    .line 20
    .line 21
    new-instance v3, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    const/4 v4, 0x1

    .line 27
    invoke-static {v0, v4}, Ldj7;->e(Ljava/util/ArrayList;I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lwa7;

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Llb7;->g(Lwa7;)Ljava/lang/Iterable;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    if-eqz v5, :cond_2

    .line 46
    .line 47
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    check-cast v5, Lgb7;

    .line 52
    .line 53
    if-nez v4, :cond_0

    .line 54
    .line 55
    new-instance v4, Liy1;

    .line 56
    .line 57
    invoke-direct {v4, v2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-object v2, v4

    .line 64
    :cond_0
    iget-object v4, v5, Lgb7;->a:Lfb7;

    .line 65
    .line 66
    iget-object v5, v5, Lgb7;->b:Ljava/lang/Object;

    .line 67
    .line 68
    sget-object v6, Ltk1;->a:Llk1;

    .line 69
    .line 70
    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    check-cast v6, Lj3;

    .line 75
    .line 76
    if-eqz v6, :cond_1

    .line 77
    .line 78
    invoke-virtual {v6, v5, v2}, Lj3;->b(Ljava/lang/Object;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    move v4, v1

    .line 83
    goto :goto_0

    .line 84
    :cond_1
    const-string p0, "Unsupported compression method "

    .line 85
    .line 86
    invoke-static {v4, p0}, Lc6;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-nez v0, :cond_3

    .line 95
    .line 96
    new-array v0, v1, [Liy1;

    .line 97
    .line 98
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    check-cast v0, [Liy1;

    .line 103
    .line 104
    iput-object v0, p0, Llb7;->p:[Liy1;

    .line 105
    .line 106
    :cond_3
    new-instance v0, Ljb7;

    .line 107
    .line 108
    invoke-direct {v0, p0, v2}, Ljb7;-><init>(Llb7;Ljava/io/OutputStream;)V

    .line 109
    .line 110
    .line 111
    iput-object v0, p0, Llb7;->n:Ljb7;

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_4
    const-string p0, "No current 7z entry"

    .line 115
    .line 116
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    :cond_5
    :goto_1
    iget-object p0, p0, Llb7;->n:Ljb7;

    .line 121
    .line 122
    invoke-virtual {p0, p1, v1, p2}, Ljb7;->write([BII)V

    .line 123
    .line 124
    .line 125
    :cond_6
    return-void
.end method
