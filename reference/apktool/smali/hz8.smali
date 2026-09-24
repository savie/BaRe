.class public final Lhz8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final L:[B

.field public static final M:J


# instance fields
.field public final G:Ljava/nio/ByteBuffer;

.field public H:J

.field public I:J

.field public J:J

.field public K:J

.field public final a:Ljava/util/LinkedList;

.field public final b:Ljava/util/HashMap;

.field public final c:Lxm5;

.field public final d:Ljava/nio/channels/SeekableByteChannel;

.field public final e:Z

.field public volatile f:Z

.field public final k:Z

.field public final n:[B

.field public final p:[B

.field public final q:[B

.field public final r:[B

.field public final t:Ljava/nio/ByteBuffer;

.field public final x:Ljava/nio/ByteBuffer;

.field public final y:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    sget-object v0, Ljava/nio/file/StandardOpenOption;->READ:Ljava/nio/file/StandardOpenOption;

    .line 7
    .line 8
    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    new-array v0, v0, [B

    .line 13
    .line 14
    sput-object v0, Lhz8;->L:[B

    .line 15
    .line 16
    sget-object v0, Lty8;->c:[B

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    const/4 v2, 0x4

    .line 20
    invoke-static {v0, v1, v2}, Lwx3;->j([BII)J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    sput-wide v0, Lhz8;->M:J

    .line 25
    .line 26
    new-instance v0, Lzy8;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    new-instance v1, Laz8;

    .line 36
    .line 37
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-interface {v0, v1}, Ljava/util/Comparator;->thenComparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/FileChannel;Ljava/lang/String;Ljava/nio/charset/Charset;ZZ)V
    .locals 7

    .line 1
    const-string v0, "Error reading Zip content from "

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/LinkedList;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v1, p0, Lhz8;->a:Ljava/util/LinkedList;

    .line 12
    .line 13
    new-instance v2, Ljava/util/HashMap;

    .line 14
    .line 15
    const/16 v3, 0x1fd

    .line 16
    .line 17
    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 18
    .line 19
    .line 20
    iput-object v2, p0, Lhz8;->b:Ljava/util/HashMap;

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    iput-boolean v2, p0, Lhz8;->f:Z

    .line 24
    .line 25
    const/16 v3, 0x8

    .line 26
    .line 27
    new-array v3, v3, [B

    .line 28
    .line 29
    iput-object v3, p0, Lhz8;->n:[B

    .line 30
    .line 31
    const/4 v4, 0x4

    .line 32
    new-array v4, v4, [B

    .line 33
    .line 34
    iput-object v4, p0, Lhz8;->p:[B

    .line 35
    .line 36
    const/16 v5, 0x2a

    .line 37
    .line 38
    new-array v5, v5, [B

    .line 39
    .line 40
    iput-object v5, p0, Lhz8;->q:[B

    .line 41
    .line 42
    const/4 v6, 0x2

    .line 43
    new-array v6, v6, [B

    .line 44
    .line 45
    iput-object v6, p0, Lhz8;->r:[B

    .line 46
    .line 47
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    iput-object v3, p0, Lhz8;->t:Ljava/nio/ByteBuffer;

    .line 52
    .line 53
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    iput-object v3, p0, Lhz8;->x:Ljava/nio/ByteBuffer;

    .line 58
    .line 59
    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    iput-object v3, p0, Lhz8;->y:Ljava/nio/ByteBuffer;

    .line 64
    .line 65
    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    iput-object v3, p0, Lhz8;->G:Ljava/nio/ByteBuffer;

    .line 70
    .line 71
    const/4 v3, 0x0

    .line 72
    iput-boolean v3, p0, Lhz8;->k:Z

    .line 73
    .line 74
    sget-object v3, Ldz8;->y:Ljava/nio/charset/Charset;

    .line 75
    .line 76
    sget v3, Lg51;->a:I

    .line 77
    .line 78
    sget-object v3, Lwy8;->a:Lxm5;

    .line 79
    .line 80
    new-instance v3, Lxm5;

    .line 81
    .line 82
    if-nez p3, :cond_0

    .line 83
    .line 84
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 85
    .line 86
    .line 87
    move-result-object p3

    .line 88
    :cond_0
    invoke-direct {v3, p3}, Lxm5;-><init>(Ljava/nio/charset/Charset;)V

    .line 89
    .line 90
    .line 91
    iput-object v3, p0, Lhz8;->c:Lxm5;

    .line 92
    .line 93
    iput-boolean p4, p0, Lhz8;->e:Z

    .line 94
    .line 95
    iput-object p1, p0, Lhz8;->d:Ljava/nio/channels/SeekableByteChannel;

    .line 96
    .line 97
    :try_start_0
    invoke-virtual {p0}, Lhz8;->b()Ljava/util/HashMap;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {p0, p1}, Lhz8;->g(Ljava/util/HashMap;)V

    .line 102
    .line 103
    .line 104
    new-instance p1, Ly00;

    .line 105
    .line 106
    const/16 p3, 0x9

    .line 107
    .line 108
    invoke-direct {p1, p0, p3}, Ly00;-><init>(Ljava/lang/Object;I)V

    .line 109
    .line 110
    .line 111
    invoke-interface {v1, p1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    .line 113
    .line 114
    const/4 p1, 0x0

    .line 115
    iput-boolean p1, p0, Lhz8;->f:Z

    .line 116
    .line 117
    return-void

    .line 118
    :catchall_0
    move-exception p1

    .line 119
    goto :goto_0

    .line 120
    :catch_0
    move-exception p1

    .line 121
    :try_start_1
    new-instance p3, Ljava/io/IOException;

    .line 122
    .line 123
    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p2

    .line 127
    invoke-direct {p3, p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 128
    .line 129
    .line 130
    throw p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    :goto_0
    iput-boolean v2, p0, Lhz8;->f:Z

    .line 132
    .line 133
    if-eqz p5, :cond_1

    .line 134
    .line 135
    iget-object p0, p0, Lhz8;->d:Ljava/nio/channels/SeekableByteChannel;

    .line 136
    .line 137
    invoke-static {p0}, Ln84;->b(Ljava/io/Closeable;)V

    .line 138
    .line 139
    .line 140
    :cond_1
    throw p1
.end method


# virtual methods
.method public final a(Lez8;)Ljava/io/InputStream;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    sget v2, Lpz8;->b:I

    .line 6
    .line 7
    iget-object v2, v1, Lez8;->p:Lvu3;

    .line 8
    .line 9
    iget-boolean v2, v2, Lvu3;->c:Z

    .line 10
    .line 11
    if-nez v2, :cond_e

    .line 12
    .line 13
    iget v2, v1, Lez8;->a:I

    .line 14
    .line 15
    const/16 v3, 0x9

    .line 16
    .line 17
    const/16 v4, 0x8

    .line 18
    .line 19
    const/4 v5, 0x6

    .line 20
    const/4 v6, 0x1

    .line 21
    if-eqz v2, :cond_3

    .line 22
    .line 23
    sget-object v7, Lmz8;->b:Ljava/util/Map;

    .line 24
    .line 25
    if-eq v2, v6, :cond_3

    .line 26
    .line 27
    if-eq v2, v5, :cond_3

    .line 28
    .line 29
    if-eq v2, v4, :cond_3

    .line 30
    .line 31
    if-eq v2, v3, :cond_3

    .line 32
    .line 33
    const/16 v7, 0xc

    .line 34
    .line 35
    if-eq v2, v7, :cond_3

    .line 36
    .line 37
    const/16 v7, 0x5d

    .line 38
    .line 39
    if-eq v2, v7, :cond_3

    .line 40
    .line 41
    const/16 v7, 0x14

    .line 42
    .line 43
    if-ne v2, v7, :cond_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const/16 v7, 0x5f

    .line 47
    .line 48
    if-ne v2, v7, :cond_1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    sget-object v0, Lmz8;->b:Ljava/util/Map;

    .line 52
    .line 53
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Lmz8;

    .line 62
    .line 63
    if-nez v0, :cond_2

    .line 64
    .line 65
    new-instance v0, Llf8;

    .line 66
    .line 67
    sget-object v2, Lkf8;->c:Lkf8;

    .line 68
    .line 69
    invoke-direct {v0, v2, v1}, Llf8;-><init>(Lkf8;Lez8;)V

    .line 70
    .line 71
    .line 72
    throw v0

    .line 73
    :cond_2
    new-instance v2, Llf8;

    .line 74
    .line 75
    invoke-direct {v2, v0, v1}, Llf8;-><init>(Lmz8;Lez8;)V

    .line 76
    .line 77
    .line 78
    throw v2

    .line 79
    :cond_3
    :goto_0
    new-instance v2, Ljava/io/BufferedInputStream;

    .line 80
    .line 81
    iget-wide v7, v1, Lez8;->r:J

    .line 82
    .line 83
    const-wide/16 v9, -0x1

    .line 84
    .line 85
    cmp-long v11, v7, v9

    .line 86
    .line 87
    if-nez v11, :cond_4

    .line 88
    .line 89
    invoke-virtual/range {p0 .. p1}, Lhz8;->h(Lez8;)[I

    .line 90
    .line 91
    .line 92
    iget-wide v7, v1, Lez8;->r:J

    .line 93
    .line 94
    :cond_4
    move-wide v12, v7

    .line 95
    cmp-long v7, v12, v9

    .line 96
    .line 97
    const/4 v8, 0x0

    .line 98
    if-nez v7, :cond_5

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_5
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    .line 102
    .line 103
    .line 104
    move-result-wide v14

    .line 105
    const-wide/16 v9, 0x0

    .line 106
    .line 107
    cmp-long v7, v12, v9

    .line 108
    .line 109
    if-ltz v7, :cond_d

    .line 110
    .line 111
    cmp-long v7, v14, v9

    .line 112
    .line 113
    if-ltz v7, :cond_d

    .line 114
    .line 115
    add-long v9, v12, v14

    .line 116
    .line 117
    cmp-long v7, v9, v12

    .line 118
    .line 119
    if-ltz v7, :cond_d

    .line 120
    .line 121
    iget-object v7, v0, Lhz8;->d:Ljava/nio/channels/SeekableByteChannel;

    .line 122
    .line 123
    instance-of v8, v7, Ljava/nio/channels/FileChannel;

    .line 124
    .line 125
    if-eqz v8, :cond_6

    .line 126
    .line 127
    new-instance v11, Lcz8;

    .line 128
    .line 129
    move-object/from16 v16, v7

    .line 130
    .line 131
    check-cast v16, Ljava/nio/channels/FileChannel;

    .line 132
    .line 133
    invoke-direct/range {v11 .. v16}, Lcz8;-><init>(JJLjava/nio/channels/FileChannel;)V

    .line 134
    .line 135
    .line 136
    :goto_1
    move-object v8, v11

    .line 137
    goto :goto_2

    .line 138
    :cond_6
    new-instance v11, Lxu0;

    .line 139
    .line 140
    iget-object v7, v0, Lhz8;->d:Ljava/nio/channels/SeekableByteChannel;

    .line 141
    .line 142
    move-object/from16 v16, v7

    .line 143
    .line 144
    invoke-direct/range {v11 .. v16}, Lxu0;-><init>(JJLjava/nio/channels/SeekableByteChannel;)V

    .line 145
    .line 146
    .line 147
    goto :goto_1

    .line 148
    :goto_2
    invoke-direct {v2, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 149
    .line 150
    .line 151
    iget v7, v1, Lez8;->a:I

    .line 152
    .line 153
    sget-object v8, Lmz8;->b:Ljava/util/Map;

    .line 154
    .line 155
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 156
    .line 157
    .line 158
    move-result-object v7

    .line 159
    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v7

    .line 163
    check-cast v7, Lmz8;

    .line 164
    .line 165
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    .line 166
    .line 167
    .line 168
    move-result v7

    .line 169
    if-eqz v7, :cond_c

    .line 170
    .line 171
    if-eq v7, v6, :cond_b

    .line 172
    .line 173
    if-eq v7, v5, :cond_a

    .line 174
    .line 175
    const/16 v5, 0xb

    .line 176
    .line 177
    if-eq v7, v5, :cond_9

    .line 178
    .line 179
    if-eq v7, v4, :cond_8

    .line 180
    .line 181
    if-eq v7, v3, :cond_7

    .line 182
    .line 183
    packed-switch v7, :pswitch_data_0

    .line 184
    .line 185
    .line 186
    new-instance v0, Llf8;

    .line 187
    .line 188
    iget v2, v1, Lez8;->a:I

    .line 189
    .line 190
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 191
    .line 192
    .line 193
    move-result-object v2

    .line 194
    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    check-cast v2, Lmz8;

    .line 199
    .line 200
    invoke-direct {v0, v2, v1}, Llf8;-><init>(Lmz8;Lez8;)V

    .line 201
    .line 202
    .line 203
    throw v0

    .line 204
    :pswitch_0
    new-instance v0, Lyx8;

    .line 205
    .line 206
    new-instance v1, Lxx8;

    .line 207
    .line 208
    invoke-direct {v1}, Ll5;-><init>()V

    .line 209
    .line 210
    .line 211
    const/4 v3, -0x1

    .line 212
    iput v3, v1, Lxx8;->t:I

    .line 213
    .line 214
    new-instance v3, Ly4;

    .line 215
    .line 216
    invoke-direct {v3, v2}, Ly4;-><init>(Ljava/io/InputStream;)V

    .line 217
    .line 218
    .line 219
    iput-object v3, v1, Ll5;->k:Ly4;

    .line 220
    .line 221
    invoke-direct {v0, v1}, Lyx8;-><init>(Lxx8;)V

    .line 222
    .line 223
    .line 224
    return-object v0

    .line 225
    :pswitch_1
    new-instance v0, Lrz8;

    .line 226
    .line 227
    invoke-direct {v0, v2}, Lrz8;-><init>(Ljava/io/BufferedInputStream;)V

    .line 228
    .line 229
    .line 230
    return-object v0

    .line 231
    :cond_7
    new-instance v0, Lng2;

    .line 232
    .line 233
    invoke-direct {v0, v2}, Lng2;-><init>(Ljava/io/InputStream;)V

    .line 234
    .line 235
    .line 236
    return-object v0

    .line 237
    :cond_8
    new-instance v1, Ljava/util/zip/Inflater;

    .line 238
    .line 239
    invoke-direct {v1, v6}, Ljava/util/zip/Inflater;-><init>(Z)V

    .line 240
    .line 241
    .line 242
    new-instance v3, Lbz8;

    .line 243
    .line 244
    new-instance v4, Ljava/io/SequenceInputStream;

    .line 245
    .line 246
    new-instance v5, Ljava/io/ByteArrayInputStream;

    .line 247
    .line 248
    sget-object v6, Lhz8;->L:[B

    .line 249
    .line 250
    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 251
    .line 252
    .line 253
    invoke-direct {v4, v2, v5}, Ljava/io/SequenceInputStream;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;)V

    .line 254
    .line 255
    .line 256
    invoke-direct {v3, v0, v4, v1, v1}, Lbz8;-><init>(Lhz8;Ljava/io/SequenceInputStream;Ljava/util/zip/Inflater;Ljava/util/zip/Inflater;)V

    .line 257
    .line 258
    .line 259
    return-object v3

    .line 260
    :cond_9
    new-instance v0, Luj0;

    .line 261
    .line 262
    invoke-direct {v0, v2}, Luj0;-><init>(Ljava/io/InputStream;)V

    .line 263
    .line 264
    .line 265
    return-object v0

    .line 266
    :cond_a
    :try_start_0
    new-instance v0, Lm03;

    .line 267
    .line 268
    iget-object v1, v1, Lez8;->p:Lvu3;

    .line 269
    .line 270
    iget v3, v1, Lvu3;->e:I

    .line 271
    .line 272
    iget v1, v1, Lvu3;->f:I

    .line 273
    .line 274
    invoke-direct {v0, v3, v1, v2}, Lm03;-><init>(IILjava/io/BufferedInputStream;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    .line 276
    .line 277
    return-object v0

    .line 278
    :catch_0
    move-exception v0

    .line 279
    new-instance v1, Ljava/io/IOException;

    .line 280
    .line 281
    const-string v2, "bad IMPLODE data"

    .line 282
    .line 283
    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 284
    .line 285
    .line 286
    throw v1

    .line 287
    :cond_b
    new-instance v0, Lff8;

    .line 288
    .line 289
    invoke-direct {v0, v2}, Lff8;-><init>(Ljava/io/BufferedInputStream;)V

    .line 290
    .line 291
    .line 292
    return-object v0

    .line 293
    :cond_c
    new-instance v0, Lgz8;

    .line 294
    .line 295
    invoke-direct {v0, v2}, Lwu0;-><init>(Ljava/io/BufferedInputStream;)V

    .line 296
    .line 297
    .line 298
    return-object v0

    .line 299
    :cond_d
    const-string v0, "Corrupted archive, stream boundaries are out of range"

    .line 300
    .line 301
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    return-object v8

    .line 305
    :cond_e
    new-instance v0, Llf8;

    .line 306
    .line 307
    sget-object v2, Lkf8;->b:Lkf8;

    .line 308
    .line 309
    invoke-direct {v0, v2, v1}, Llf8;-><init>(Lkf8;Lez8;)V

    .line 310
    .line 311
    .line 312
    throw v0

    .line 313
    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b()Ljava/util/HashMap;
    .locals 35

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 6
    .line 7
    .line 8
    sget-object v2, Lty8;->d:[B

    .line 9
    .line 10
    const/4 v3, 0x4

    .line 11
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    iget-object v5, v0, Lhz8;->d:Ljava/nio/channels/SeekableByteChannel;

    .line 16
    .line 17
    invoke-interface {v5}, Ljava/nio/channels/SeekableByteChannel;->size()J

    .line 18
    .line 19
    .line 20
    move-result-wide v6

    .line 21
    const-wide/16 v8, 0x16

    .line 22
    .line 23
    sub-long/2addr v6, v8

    .line 24
    invoke-interface {v5}, Ljava/nio/channels/SeekableByteChannel;->size()J

    .line 25
    .line 26
    .line 27
    move-result-wide v8

    .line 28
    const-wide/32 v10, 0x10015

    .line 29
    .line 30
    .line 31
    sub-long/2addr v8, v10

    .line 32
    const-wide/16 v10, 0x0

    .line 33
    .line 34
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->max(JJ)J

    .line 35
    .line 36
    .line 37
    move-result-wide v8

    .line 38
    cmp-long v12, v6, v10

    .line 39
    .line 40
    const/4 v14, 0x2

    .line 41
    const/4 v15, 0x0

    .line 42
    const/16 v16, 0x3

    .line 43
    .line 44
    if-ltz v12, :cond_1

    .line 45
    .line 46
    :goto_0
    cmp-long v12, v6, v8

    .line 47
    .line 48
    if-ltz v12, :cond_1

    .line 49
    .line 50
    invoke-interface {v5, v6, v7}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 51
    .line 52
    .line 53
    :try_start_0
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 54
    .line 55
    .line 56
    invoke-static {v5, v4}, Ly13;->w(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    .line 62
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    .line 63
    .line 64
    .line 65
    move-result v12

    .line 66
    const/16 v17, 0x1

    .line 67
    .line 68
    aget-byte v13, v2, v15

    .line 69
    .line 70
    if-ne v12, v13, :cond_0

    .line 71
    .line 72
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    .line 73
    .line 74
    .line 75
    move-result v12

    .line 76
    aget-byte v13, v2, v17

    .line 77
    .line 78
    if-ne v12, v13, :cond_0

    .line 79
    .line 80
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    .line 81
    .line 82
    .line 83
    move-result v12

    .line 84
    aget-byte v13, v2, v14

    .line 85
    .line 86
    if-ne v12, v13, :cond_0

    .line 87
    .line 88
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    .line 89
    .line 90
    .line 91
    move-result v12

    .line 92
    aget-byte v13, v2, v16

    .line 93
    .line 94
    if-ne v12, v13, :cond_0

    .line 95
    .line 96
    move/from16 v2, v17

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_0
    const-wide/16 v12, 0x1

    .line 100
    .line 101
    sub-long/2addr v6, v12

    .line 102
    goto :goto_0

    .line 103
    :goto_1
    move v2, v15

    .line 104
    goto :goto_2

    .line 105
    :catch_0
    :cond_1
    const/16 v17, 0x1

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :goto_2
    if-eqz v2, :cond_2

    .line 109
    .line 110
    invoke-interface {v5, v6, v7}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 111
    .line 112
    .line 113
    :cond_2
    if-eqz v2, :cond_3e

    .line 114
    .line 115
    invoke-interface {v5}, Ljava/nio/channels/SeekableByteChannel;->position()J

    .line 116
    .line 117
    .line 118
    move-result-wide v6

    .line 119
    const-wide/16 v8, 0x14

    .line 120
    .line 121
    cmp-long v2, v6, v8

    .line 122
    .line 123
    if-lez v2, :cond_4

    .line 124
    .line 125
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    invoke-interface {v5}, Ljava/nio/channels/SeekableByteChannel;->position()J

    .line 130
    .line 131
    .line 132
    move-result-wide v12

    .line 133
    sub-long/2addr v12, v8

    .line 134
    invoke-interface {v5, v12, v13}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 138
    .line 139
    .line 140
    invoke-static {v5, v2}, Ly13;->w(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 144
    .line 145
    .line 146
    sget-object v4, Lty8;->f:[B

    .line 147
    .line 148
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 149
    .line 150
    .line 151
    move-result-object v4

    .line 152
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    if-nez v2, :cond_3

    .line 157
    .line 158
    invoke-interface {v5, v6, v7}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 159
    .line 160
    .line 161
    goto :goto_3

    .line 162
    :cond_3
    invoke-interface {v5}, Ljava/nio/channels/SeekableByteChannel;->position()J

    .line 163
    .line 164
    .line 165
    move-result-wide v6

    .line 166
    const-wide/16 v8, 0x4

    .line 167
    .line 168
    sub-long/2addr v6, v8

    .line 169
    invoke-interface {v5, v6, v7}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 170
    .line 171
    .line 172
    goto :goto_3

    .line 173
    :cond_4
    move v2, v15

    .line 174
    :goto_3
    const/16 v6, 0x10

    .line 175
    .line 176
    const/16 v7, 0xc

    .line 177
    .line 178
    const/16 v8, 0x8

    .line 179
    .line 180
    const/4 v9, 0x6

    .line 181
    iget-boolean v12, v0, Lhz8;->k:Z

    .line 182
    .line 183
    iget-object v13, v0, Lhz8;->x:Ljava/nio/ByteBuffer;

    .line 184
    .line 185
    iget-object v4, v0, Lhz8;->p:[B

    .line 186
    .line 187
    if-nez v2, :cond_6

    .line 188
    .line 189
    invoke-interface {v5}, Ljava/nio/channels/SeekableByteChannel;->position()J

    .line 190
    .line 191
    .line 192
    move-result-wide v19

    .line 193
    if-eqz v12, :cond_5

    .line 194
    .line 195
    invoke-virtual {v0, v9}, Lhz8;->j(I)V

    .line 196
    .line 197
    .line 198
    iget-object v2, v0, Lhz8;->G:Ljava/nio/ByteBuffer;

    .line 199
    .line 200
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 201
    .line 202
    .line 203
    invoke-static {v5, v2}, Ly13;->w(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V

    .line 204
    .line 205
    .line 206
    iget-object v2, v0, Lhz8;->r:[B

    .line 207
    .line 208
    invoke-static {v2, v15, v14}, Lwx3;->j([BII)J

    .line 209
    .line 210
    .line 211
    move-result-wide v9

    .line 212
    long-to-int v2, v9

    .line 213
    int-to-long v9, v2

    .line 214
    iput-wide v9, v0, Lhz8;->H:J

    .line 215
    .line 216
    invoke-virtual {v0, v8}, Lhz8;->j(I)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 220
    .line 221
    .line 222
    invoke-static {v5, v13}, Ly13;->w(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V

    .line 223
    .line 224
    .line 225
    invoke-static {v4, v15, v3}, Lwx3;->j([BII)J

    .line 226
    .line 227
    .line 228
    move-result-wide v9

    .line 229
    iput-wide v9, v0, Lhz8;->I:J

    .line 230
    .line 231
    move-object v2, v5

    .line 232
    check-cast v2, Loz8;

    .line 233
    .line 234
    move/from16 v23, v12

    .line 235
    .line 236
    iget-wide v11, v0, Lhz8;->H:J

    .line 237
    .line 238
    invoke-virtual {v2, v11, v12, v9, v10}, Loz8;->a(JJ)V

    .line 239
    .line 240
    .line 241
    move/from16 v25, v8

    .line 242
    .line 243
    goto/16 :goto_5

    .line 244
    .line 245
    :cond_5
    move/from16 v23, v12

    .line 246
    .line 247
    invoke-virtual {v0, v7}, Lhz8;->j(I)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 251
    .line 252
    .line 253
    invoke-static {v5, v13}, Ly13;->w(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V

    .line 254
    .line 255
    .line 256
    invoke-static {v4, v15, v3}, Lwx3;->j([BII)J

    .line 257
    .line 258
    .line 259
    move-result-wide v9

    .line 260
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 261
    .line 262
    .line 263
    invoke-static {v5, v13}, Ly13;->w(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V

    .line 264
    .line 265
    .line 266
    const-wide/16 v11, 0x0

    .line 267
    .line 268
    iput-wide v11, v0, Lhz8;->H:J

    .line 269
    .line 270
    move/from16 v25, v8

    .line 271
    .line 272
    invoke-static {v4, v15, v3}, Lwx3;->j([BII)J

    .line 273
    .line 274
    .line 275
    move-result-wide v7

    .line 276
    iput-wide v7, v0, Lhz8;->I:J

    .line 277
    .line 278
    sub-long v19, v19, v9

    .line 279
    .line 280
    sub-long v7, v19, v7

    .line 281
    .line 282
    invoke-static {v7, v8, v11, v12}, Ljava/lang/Long;->max(JJ)J

    .line 283
    .line 284
    .line 285
    move-result-wide v7

    .line 286
    iput-wide v7, v0, Lhz8;->K:J

    .line 287
    .line 288
    iget-wide v9, v0, Lhz8;->I:J

    .line 289
    .line 290
    add-long/2addr v9, v7

    .line 291
    invoke-interface {v5, v9, v10}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 292
    .line 293
    .line 294
    goto/16 :goto_5

    .line 295
    .line 296
    :cond_6
    move/from16 v25, v8

    .line 297
    .line 298
    move/from16 v23, v12

    .line 299
    .line 300
    invoke-virtual {v0, v3}, Lhz8;->j(I)V

    .line 301
    .line 302
    .line 303
    iget-object v7, v0, Lhz8;->n:[B

    .line 304
    .line 305
    iget-object v8, v0, Lhz8;->t:Ljava/nio/ByteBuffer;

    .line 306
    .line 307
    if-eqz v23, :cond_7

    .line 308
    .line 309
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 310
    .line 311
    .line 312
    invoke-static {v5, v13}, Ly13;->w(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V

    .line 313
    .line 314
    .line 315
    invoke-static {v4, v15, v3}, Lwx3;->j([BII)J

    .line 316
    .line 317
    .line 318
    move-result-wide v9

    .line 319
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 320
    .line 321
    .line 322
    invoke-static {v5, v8}, Ly13;->w(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V

    .line 323
    .line 324
    .line 325
    invoke-static {v7, v15}, Luy8;->b([BI)J

    .line 326
    .line 327
    .line 328
    move-result-wide v11

    .line 329
    move-object v2, v5

    .line 330
    check-cast v2, Loz8;

    .line 331
    .line 332
    invoke-virtual {v2, v9, v10, v11, v12}, Loz8;->a(JJ)V

    .line 333
    .line 334
    .line 335
    goto :goto_4

    .line 336
    :cond_7
    invoke-virtual {v0, v3}, Lhz8;->j(I)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 340
    .line 341
    .line 342
    invoke-static {v5, v8}, Ly13;->w(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V

    .line 343
    .line 344
    .line 345
    invoke-static {v7, v15}, Luy8;->b([BI)J

    .line 346
    .line 347
    .line 348
    move-result-wide v9

    .line 349
    invoke-interface {v5, v9, v10}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 350
    .line 351
    .line 352
    :goto_4
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 353
    .line 354
    .line 355
    invoke-static {v5, v13}, Ly13;->w(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V

    .line 356
    .line 357
    .line 358
    sget-object v2, Lty8;->e:[B

    .line 359
    .line 360
    invoke-static {v4, v2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 361
    .line 362
    .line 363
    move-result v2

    .line 364
    if-eqz v2, :cond_3d

    .line 365
    .line 366
    if-eqz v23, :cond_8

    .line 367
    .line 368
    invoke-virtual {v0, v6}, Lhz8;->j(I)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 372
    .line 373
    .line 374
    invoke-static {v5, v13}, Ly13;->w(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V

    .line 375
    .line 376
    .line 377
    invoke-static {v4, v15, v3}, Lwx3;->j([BII)J

    .line 378
    .line 379
    .line 380
    move-result-wide v9

    .line 381
    iput-wide v9, v0, Lhz8;->H:J

    .line 382
    .line 383
    const/16 v2, 0x18

    .line 384
    .line 385
    invoke-virtual {v0, v2}, Lhz8;->j(I)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 389
    .line 390
    .line 391
    invoke-static {v5, v8}, Ly13;->w(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V

    .line 392
    .line 393
    .line 394
    invoke-static {v7, v15}, Luy8;->b([BI)J

    .line 395
    .line 396
    .line 397
    move-result-wide v7

    .line 398
    iput-wide v7, v0, Lhz8;->I:J

    .line 399
    .line 400
    move-object v2, v5

    .line 401
    check-cast v2, Loz8;

    .line 402
    .line 403
    iget-wide v9, v0, Lhz8;->H:J

    .line 404
    .line 405
    invoke-virtual {v2, v9, v10, v7, v8}, Loz8;->a(JJ)V

    .line 406
    .line 407
    .line 408
    goto :goto_5

    .line 409
    :cond_8
    const/16 v2, 0x2c

    .line 410
    .line 411
    invoke-virtual {v0, v2}, Lhz8;->j(I)V

    .line 412
    .line 413
    .line 414
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 415
    .line 416
    .line 417
    invoke-static {v5, v8}, Ly13;->w(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V

    .line 418
    .line 419
    .line 420
    const-wide/16 v11, 0x0

    .line 421
    .line 422
    iput-wide v11, v0, Lhz8;->H:J

    .line 423
    .line 424
    invoke-static {v7, v15}, Luy8;->b([BI)J

    .line 425
    .line 426
    .line 427
    move-result-wide v7

    .line 428
    iput-wide v7, v0, Lhz8;->I:J

    .line 429
    .line 430
    invoke-interface {v5, v7, v8}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 431
    .line 432
    .line 433
    :goto_5
    invoke-interface {v5}, Ljava/nio/channels/SeekableByteChannel;->position()J

    .line 434
    .line 435
    .line 436
    move-result-wide v7

    .line 437
    iput-wide v7, v0, Lhz8;->J:J

    .line 438
    .line 439
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 440
    .line 441
    .line 442
    invoke-static {v5, v13}, Ly13;->w(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V

    .line 443
    .line 444
    .line 445
    invoke-static {v4, v15, v3}, Lwx3;->j([BII)J

    .line 446
    .line 447
    .line 448
    move-result-wide v7

    .line 449
    sget-wide v9, Lhz8;->M:J

    .line 450
    .line 451
    cmp-long v2, v7, v9

    .line 452
    .line 453
    if-eqz v2, :cond_a

    .line 454
    .line 455
    const/4 v2, 0x0

    .line 456
    iget-wide v11, v0, Lhz8;->K:J

    .line 457
    .line 458
    invoke-interface {v5, v11, v12}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 459
    .line 460
    .line 461
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 462
    .line 463
    .line 464
    invoke-static {v5, v13}, Ly13;->w(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V

    .line 465
    .line 466
    .line 467
    sget-object v11, Lty8;->b:[B

    .line 468
    .line 469
    invoke-static {v4, v11}, Ljava/util/Arrays;->equals([B[B)Z

    .line 470
    .line 471
    .line 472
    move-result v11

    .line 473
    if-nez v11, :cond_9

    .line 474
    .line 475
    goto :goto_6

    .line 476
    :cond_9
    const-string v0, "Central directory is empty, can\'t expand corrupt archive."

    .line 477
    .line 478
    invoke-static {v0}, Ly5;->m(Ljava/lang/String;)V

    .line 479
    .line 480
    .line 481
    return-object v2

    .line 482
    :cond_a
    const/4 v2, 0x0

    .line 483
    :goto_6
    cmp-long v7, v7, v9

    .line 484
    .line 485
    if-nez v7, :cond_3c

    .line 486
    .line 487
    iget-object v7, v0, Lhz8;->y:Ljava/nio/ByteBuffer;

    .line 488
    .line 489
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 490
    .line 491
    .line 492
    invoke-static {v5, v7}, Ly13;->w(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V

    .line 493
    .line 494
    .line 495
    new-instance v7, Lez8;

    .line 496
    .line 497
    const-string v8, ""

    .line 498
    .line 499
    invoke-direct {v7, v8}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 500
    .line 501
    .line 502
    const/4 v11, -0x1

    .line 503
    iput v11, v7, Lez8;->a:I

    .line 504
    .line 505
    const-wide/16 v11, -0x1

    .line 506
    .line 507
    iput-wide v11, v7, Lez8;->b:J

    .line 508
    .line 509
    iput v15, v7, Lez8;->d:I

    .line 510
    .line 511
    move-object/from16 v20, v2

    .line 512
    .line 513
    new-instance v2, Lvu3;

    .line 514
    .line 515
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 516
    .line 517
    .line 518
    iput-object v2, v7, Lez8;->p:Lvu3;

    .line 519
    .line 520
    iput-wide v11, v7, Lez8;->q:J

    .line 521
    .line 522
    iput-wide v11, v7, Lez8;->r:J

    .line 523
    .line 524
    iput-wide v11, v7, Lez8;->y:J

    .line 525
    .line 526
    invoke-virtual {v7, v8}, Lez8;->m(Ljava/lang/String;)V

    .line 527
    .line 528
    .line 529
    iget-object v2, v0, Lhz8;->q:[B

    .line 530
    .line 531
    invoke-static {v2, v15, v14}, Lwx3;->j([BII)J

    .line 532
    .line 533
    .line 534
    move-result-wide v11

    .line 535
    long-to-int v8, v11

    .line 536
    shr-int/lit8 v8, v8, 0x8

    .line 537
    .line 538
    and-int/lit8 v8, v8, 0xf

    .line 539
    .line 540
    iput v8, v7, Lez8;->d:I

    .line 541
    .line 542
    invoke-static {v2, v14, v14}, Lwx3;->j([BII)J

    .line 543
    .line 544
    .line 545
    invoke-static {v2, v3, v14}, Lwx3;->j([BII)J

    .line 546
    .line 547
    .line 548
    move-result-wide v11

    .line 549
    long-to-int v8, v11

    .line 550
    new-instance v11, Lvu3;

    .line 551
    .line 552
    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 553
    .line 554
    .line 555
    and-int/lit8 v12, v8, 0x8

    .line 556
    .line 557
    if-eqz v12, :cond_b

    .line 558
    .line 559
    move/from16 v12, v17

    .line 560
    .line 561
    goto :goto_7

    .line 562
    :cond_b
    move v12, v15

    .line 563
    :goto_7
    iput-boolean v12, v11, Lvu3;->b:Z

    .line 564
    .line 565
    and-int/lit16 v12, v8, 0x800

    .line 566
    .line 567
    if-eqz v12, :cond_c

    .line 568
    .line 569
    move/from16 v12, v17

    .line 570
    .line 571
    goto :goto_8

    .line 572
    :cond_c
    move v12, v15

    .line 573
    :goto_8
    iput-boolean v12, v11, Lvu3;->a:Z

    .line 574
    .line 575
    and-int/lit8 v26, v8, 0x40

    .line 576
    .line 577
    if-eqz v26, :cond_d

    .line 578
    .line 579
    move/from16 v15, v17

    .line 580
    .line 581
    :cond_d
    iput-boolean v15, v11, Lvu3;->d:Z

    .line 582
    .line 583
    if-eqz v15, :cond_e

    .line 584
    .line 585
    move/from16 v15, v17

    .line 586
    .line 587
    iput-boolean v15, v11, Lvu3;->c:Z

    .line 588
    .line 589
    goto :goto_9

    .line 590
    :cond_e
    move/from16 v15, v17

    .line 591
    .line 592
    :goto_9
    and-int/lit8 v17, v8, 0x1

    .line 593
    .line 594
    if-eqz v17, :cond_f

    .line 595
    .line 596
    goto :goto_a

    .line 597
    :cond_f
    const/4 v15, 0x0

    .line 598
    :goto_a
    iput-boolean v15, v11, Lvu3;->c:Z

    .line 599
    .line 600
    and-int/lit8 v15, v8, 0x2

    .line 601
    .line 602
    if-eqz v15, :cond_10

    .line 603
    .line 604
    const/16 v15, 0x2000

    .line 605
    .line 606
    goto :goto_b

    .line 607
    :cond_10
    const/16 v15, 0x1000

    .line 608
    .line 609
    :goto_b
    iput v15, v11, Lvu3;->e:I

    .line 610
    .line 611
    and-int/lit8 v8, v8, 0x4

    .line 612
    .line 613
    if-eqz v8, :cond_11

    .line 614
    .line 615
    move/from16 v8, v16

    .line 616
    .line 617
    goto :goto_c

    .line 618
    :cond_11
    move v8, v14

    .line 619
    :goto_c
    iput v8, v11, Lvu3;->f:I

    .line 620
    .line 621
    if-eqz v12, :cond_12

    .line 622
    .line 623
    sget-object v8, Lwy8;->a:Lxm5;

    .line 624
    .line 625
    goto :goto_d

    .line 626
    :cond_12
    iget-object v8, v0, Lhz8;->c:Lxm5;

    .line 627
    .line 628
    :goto_d
    iput-object v11, v7, Lez8;->p:Lvu3;

    .line 629
    .line 630
    invoke-static {v2, v3, v14}, Lwx3;->j([BII)J

    .line 631
    .line 632
    .line 633
    move-object/from16 v24, v4

    .line 634
    .line 635
    const/4 v11, 0x6

    .line 636
    invoke-static {v2, v11, v14}, Lwx3;->j([BII)J

    .line 637
    .line 638
    .line 639
    move-result-wide v3

    .line 640
    long-to-int v3, v3

    .line 641
    invoke-virtual {v7, v3}, Lez8;->setMethod(I)V

    .line 642
    .line 643
    .line 644
    move/from16 v3, v25

    .line 645
    .line 646
    const/4 v15, 0x4

    .line 647
    invoke-static {v2, v3, v15}, Lwx3;->j([BII)J

    .line 648
    .line 649
    .line 650
    move-result-wide v27

    .line 651
    invoke-static/range {v27 .. v28}, Lpz8;->b(J)J

    .line 652
    .line 653
    .line 654
    move-result-wide v3

    .line 655
    invoke-virtual {v7, v3, v4}, Lez8;->setTime(J)V

    .line 656
    .line 657
    .line 658
    move v4, v12

    .line 659
    const/16 v3, 0xc

    .line 660
    .line 661
    invoke-static {v2, v3, v15}, Lwx3;->j([BII)J

    .line 662
    .line 663
    .line 664
    move-result-wide v11

    .line 665
    invoke-virtual {v7, v11, v12}, Ljava/util/zip/ZipEntry;->setCrc(J)V

    .line 666
    .line 667
    .line 668
    invoke-static {v2, v6, v15}, Lwx3;->j([BII)J

    .line 669
    .line 670
    .line 671
    move-result-wide v11

    .line 672
    const-wide/16 v21, 0x0

    .line 673
    .line 674
    cmp-long v27, v11, v21

    .line 675
    .line 676
    const-string v28, "broken archive, entry with negative compressed size"

    .line 677
    .line 678
    if-ltz v27, :cond_3b

    .line 679
    .line 680
    invoke-virtual {v7, v11, v12}, Ljava/util/zip/ZipEntry;->setCompressedSize(J)V

    .line 681
    .line 682
    .line 683
    const/16 v11, 0x14

    .line 684
    .line 685
    invoke-static {v2, v11, v15}, Lwx3;->j([BII)J

    .line 686
    .line 687
    .line 688
    move-result-wide v11

    .line 689
    cmp-long v27, v11, v21

    .line 690
    .line 691
    const-string v29, "broken archive, entry with negative size"

    .line 692
    .line 693
    if-ltz v27, :cond_3a

    .line 694
    .line 695
    invoke-virtual {v7, v11, v12}, Lez8;->setSize(J)V

    .line 696
    .line 697
    .line 698
    move/from16 v18, v4

    .line 699
    .line 700
    const/16 v11, 0x18

    .line 701
    .line 702
    invoke-static {v2, v11, v14}, Lwx3;->j([BII)J

    .line 703
    .line 704
    .line 705
    move-result-wide v3

    .line 706
    long-to-int v3, v3

    .line 707
    if-ltz v3, :cond_39

    .line 708
    .line 709
    const/16 v4, 0x1a

    .line 710
    .line 711
    invoke-static {v2, v4, v14}, Lwx3;->j([BII)J

    .line 712
    .line 713
    .line 714
    move-result-wide v11

    .line 715
    long-to-int v4, v11

    .line 716
    if-ltz v4, :cond_38

    .line 717
    .line 718
    const/16 v11, 0x1c

    .line 719
    .line 720
    invoke-static {v2, v11, v14}, Lwx3;->j([BII)J

    .line 721
    .line 722
    .line 723
    move-result-wide v11

    .line 724
    long-to-int v11, v11

    .line 725
    if-ltz v11, :cond_37

    .line 726
    .line 727
    const/16 v12, 0x1e

    .line 728
    .line 729
    move-object/from16 v30, v7

    .line 730
    .line 731
    invoke-static {v2, v12, v14}, Lwx3;->j([BII)J

    .line 732
    .line 733
    .line 734
    move-result-wide v6

    .line 735
    long-to-int v6, v6

    .line 736
    int-to-long v6, v6

    .line 737
    move-object/from16 v12, v30

    .line 738
    .line 739
    iput-wide v6, v12, Lez8;->t:J

    .line 740
    .line 741
    const/16 v6, 0x20

    .line 742
    .line 743
    invoke-static {v2, v6, v14}, Lwx3;->j([BII)J

    .line 744
    .line 745
    .line 746
    move-result-wide v6

    .line 747
    long-to-int v6, v6

    .line 748
    iput v6, v12, Lez8;->c:I

    .line 749
    .line 750
    const/16 v6, 0x22

    .line 751
    .line 752
    const/4 v15, 0x4

    .line 753
    invoke-static {v2, v6, v15}, Lwx3;->j([BII)J

    .line 754
    .line 755
    .line 756
    move-result-wide v6

    .line 757
    iput-wide v6, v12, Lez8;->e:J

    .line 758
    .line 759
    invoke-static {v5, v3}, Ly13;->y(Ljava/nio/channels/ReadableByteChannel;I)[B

    .line 760
    .line 761
    .line 762
    move-result-object v6

    .line 763
    array-length v7, v6

    .line 764
    if-lt v7, v3, :cond_36

    .line 765
    .line 766
    invoke-virtual {v8, v6}, Lxm5;->a([B)Ljava/lang/String;

    .line 767
    .line 768
    .line 769
    move-result-object v3

    .line 770
    invoke-virtual {v12, v3}, Lez8;->m(Ljava/lang/String;)V

    .line 771
    .line 772
    .line 773
    const/16 v3, 0x26

    .line 774
    .line 775
    invoke-static {v2, v3, v15}, Lwx3;->j([BII)J

    .line 776
    .line 777
    .line 778
    move-result-wide v2

    .line 779
    iget-wide v14, v0, Lhz8;->K:J

    .line 780
    .line 781
    add-long/2addr v2, v14

    .line 782
    iput-wide v2, v12, Lez8;->q:J

    .line 783
    .line 784
    iget-object v2, v0, Lhz8;->a:Ljava/util/LinkedList;

    .line 785
    .line 786
    invoke-virtual {v2, v12}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 787
    .line 788
    .line 789
    invoke-static {v5, v4}, Ly13;->y(Ljava/nio/channels/ReadableByteChannel;I)[B

    .line 790
    .line 791
    .line 792
    move-result-object v2

    .line 793
    array-length v3, v2

    .line 794
    if-lt v3, v4, :cond_35

    .line 795
    .line 796
    :try_start_1
    sget-object v3, Lsy8;->b:Lqy8;

    .line 797
    .line 798
    const/4 v4, 0x0

    .line 799
    invoke-static {v2, v4, v3}, Lv13;->b([BZLsy8;)[Lyy8;

    .line 800
    .line 801
    .line 802
    move-result-object v2

    .line 803
    invoke-virtual {v12, v2, v4}, Lez8;->i([Lyy8;Z)V
    :try_end_1
    .catch Ljava/util/zip/ZipException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 804
    .line 805
    .line 806
    sget-object v2, Lpy8;->f:Lnz8;

    .line 807
    .line 808
    invoke-virtual {v12, v2}, Lez8;->d(Lnz8;)Lyy8;

    .line 809
    .line 810
    .line 811
    move-result-object v2

    .line 812
    if-eqz v2, :cond_14

    .line 813
    .line 814
    instance-of v3, v2, Lpy8;

    .line 815
    .line 816
    if-eqz v3, :cond_13

    .line 817
    .line 818
    goto :goto_e

    .line 819
    :cond_13
    new-instance v0, Ljava/util/zip/ZipException;

    .line 820
    .line 821
    const-string v1, "archive contains unparseable zip64 extra field"

    .line 822
    .line 823
    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    .line 824
    .line 825
    .line 826
    throw v0

    .line 827
    :cond_14
    :goto_e
    check-cast v2, Lpy8;

    .line 828
    .line 829
    if-eqz v2, :cond_2a

    .line 830
    .line 831
    iget-wide v3, v12, Lez8;->b:J

    .line 832
    .line 833
    const-wide v14, 0xffffffffL

    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    cmp-long v3, v3, v14

    .line 839
    .line 840
    if-nez v3, :cond_15

    .line 841
    .line 842
    const/4 v4, 0x1

    .line 843
    goto :goto_f

    .line 844
    :cond_15
    const/4 v4, 0x0

    .line 845
    :goto_f
    invoke-virtual {v12}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    .line 846
    .line 847
    .line 848
    move-result-wide v31

    .line 849
    cmp-long v3, v31, v14

    .line 850
    .line 851
    if-nez v3, :cond_16

    .line 852
    .line 853
    const/4 v3, 0x1

    .line 854
    :goto_10
    move-wide/from16 v31, v14

    .line 855
    .line 856
    goto :goto_11

    .line 857
    :cond_16
    const/4 v3, 0x0

    .line 858
    goto :goto_10

    .line 859
    :goto_11
    iget-wide v14, v12, Lez8;->q:J

    .line 860
    .line 861
    cmp-long v14, v14, v31

    .line 862
    .line 863
    if-nez v14, :cond_17

    .line 864
    .line 865
    const/4 v14, 0x1

    .line 866
    :goto_12
    move-object v15, v8

    .line 867
    goto :goto_13

    .line 868
    :cond_17
    const/4 v14, 0x0

    .line 869
    goto :goto_12

    .line 870
    :goto_13
    iget-wide v7, v12, Lez8;->t:J

    .line 871
    .line 872
    const-wide/32 v32, 0xffff

    .line 873
    .line 874
    .line 875
    cmp-long v7, v7, v32

    .line 876
    .line 877
    if-nez v7, :cond_18

    .line 878
    .line 879
    const/4 v7, 0x1

    .line 880
    goto :goto_14

    .line 881
    :cond_18
    const/4 v7, 0x0

    .line 882
    :goto_14
    iget-object v8, v2, Lpy8;->e:[B

    .line 883
    .line 884
    if-eqz v8, :cond_21

    .line 885
    .line 886
    if-eqz v4, :cond_19

    .line 887
    .line 888
    const/16 v32, 0x8

    .line 889
    .line 890
    goto :goto_15

    .line 891
    :cond_19
    const/16 v32, 0x0

    .line 892
    .line 893
    :goto_15
    if-eqz v3, :cond_1a

    .line 894
    .line 895
    const/16 v33, 0x8

    .line 896
    .line 897
    goto :goto_16

    .line 898
    :cond_1a
    const/16 v33, 0x0

    .line 899
    .line 900
    :goto_16
    add-int v32, v32, v33

    .line 901
    .line 902
    if-eqz v14, :cond_1b

    .line 903
    .line 904
    const/16 v33, 0x8

    .line 905
    .line 906
    goto :goto_17

    .line 907
    :cond_1b
    const/16 v33, 0x0

    .line 908
    .line 909
    :goto_17
    add-int v32, v32, v33

    .line 910
    .line 911
    if-eqz v7, :cond_1c

    .line 912
    .line 913
    const/16 v33, 0x4

    .line 914
    .line 915
    :goto_18
    move/from16 v34, v3

    .line 916
    .line 917
    goto :goto_19

    .line 918
    :cond_1c
    const/16 v33, 0x0

    .line 919
    .line 920
    goto :goto_18

    .line 921
    :goto_19
    add-int v3, v32, v33

    .line 922
    .line 923
    array-length v8, v8

    .line 924
    if-lt v8, v3, :cond_20

    .line 925
    .line 926
    if-eqz v4, :cond_1d

    .line 927
    .line 928
    new-instance v3, Luy8;

    .line 929
    .line 930
    iget-object v8, v2, Lpy8;->e:[B

    .line 931
    .line 932
    move/from16 v32, v4

    .line 933
    .line 934
    const/4 v4, 0x0

    .line 935
    invoke-direct {v3, v8, v4}, Luy8;-><init>([BI)V

    .line 936
    .line 937
    .line 938
    iput-object v3, v2, Lpy8;->a:Luy8;

    .line 939
    .line 940
    const/16 v4, 0x8

    .line 941
    .line 942
    goto :goto_1a

    .line 943
    :cond_1d
    move/from16 v32, v4

    .line 944
    .line 945
    const/4 v4, 0x0

    .line 946
    :goto_1a
    if-eqz v34, :cond_1e

    .line 947
    .line 948
    new-instance v3, Luy8;

    .line 949
    .line 950
    iget-object v8, v2, Lpy8;->e:[B

    .line 951
    .line 952
    invoke-direct {v3, v8, v4}, Luy8;-><init>([BI)V

    .line 953
    .line 954
    .line 955
    iput-object v3, v2, Lpy8;->b:Luy8;

    .line 956
    .line 957
    add-int/lit8 v4, v4, 0x8

    .line 958
    .line 959
    :cond_1e
    if-eqz v14, :cond_1f

    .line 960
    .line 961
    new-instance v3, Luy8;

    .line 962
    .line 963
    iget-object v8, v2, Lpy8;->e:[B

    .line 964
    .line 965
    invoke-direct {v3, v8, v4}, Luy8;-><init>([BI)V

    .line 966
    .line 967
    .line 968
    iput-object v3, v2, Lpy8;->c:Luy8;

    .line 969
    .line 970
    add-int/lit8 v4, v4, 0x8

    .line 971
    .line 972
    :cond_1f
    if-eqz v7, :cond_22

    .line 973
    .line 974
    new-instance v3, Llz8;

    .line 975
    .line 976
    iget-object v8, v2, Lpy8;->e:[B

    .line 977
    .line 978
    invoke-direct {v3, v8, v4}, Llz8;-><init>([BI)V

    .line 979
    .line 980
    .line 981
    iput-object v3, v2, Lpy8;->d:Llz8;

    .line 982
    .line 983
    goto :goto_1b

    .line 984
    :cond_20
    new-instance v0, Ljava/util/zip/ZipException;

    .line 985
    .line 986
    const-string v1, "Central directory zip64 extended information extra field\'s length doesn\'t match central directory data.  Expected length "

    .line 987
    .line 988
    const-string v4, " but is "

    .line 989
    .line 990
    invoke-static {v3, v1, v4}, Ldj7;->r(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 991
    .line 992
    .line 993
    move-result-object v1

    .line 994
    iget-object v2, v2, Lpy8;->e:[B

    .line 995
    .line 996
    array-length v2, v2

    .line 997
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 998
    .line 999
    .line 1000
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1001
    .line 1002
    .line 1003
    move-result-object v1

    .line 1004
    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    .line 1005
    .line 1006
    .line 1007
    throw v0

    .line 1008
    :cond_21
    move/from16 v34, v3

    .line 1009
    .line 1010
    move/from16 v32, v4

    .line 1011
    .line 1012
    :cond_22
    :goto_1b
    if-eqz v32, :cond_25

    .line 1013
    .line 1014
    iget-object v3, v2, Lpy8;->a:Luy8;

    .line 1015
    .line 1016
    iget-wide v3, v3, Luy8;->a:J

    .line 1017
    .line 1018
    const-wide/16 v21, 0x0

    .line 1019
    .line 1020
    cmp-long v8, v3, v21

    .line 1021
    .line 1022
    if-ltz v8, :cond_24

    .line 1023
    .line 1024
    invoke-virtual {v12, v3, v4}, Lez8;->setSize(J)V

    .line 1025
    .line 1026
    .line 1027
    :cond_23
    move v4, v7

    .line 1028
    goto :goto_1c

    .line 1029
    :cond_24
    invoke-static/range {v29 .. v29}, Ly5;->m(Ljava/lang/String;)V

    .line 1030
    .line 1031
    .line 1032
    return-object v20

    .line 1033
    :cond_25
    if-eqz v34, :cond_23

    .line 1034
    .line 1035
    new-instance v3, Luy8;

    .line 1036
    .line 1037
    move v4, v7

    .line 1038
    iget-wide v7, v12, Lez8;->b:J

    .line 1039
    .line 1040
    invoke-direct {v3, v7, v8}, Luy8;-><init>(J)V

    .line 1041
    .line 1042
    .line 1043
    iput-object v3, v2, Lpy8;->a:Luy8;

    .line 1044
    .line 1045
    :goto_1c
    if-eqz v34, :cond_27

    .line 1046
    .line 1047
    iget-object v3, v2, Lpy8;->b:Luy8;

    .line 1048
    .line 1049
    iget-wide v7, v3, Luy8;->a:J

    .line 1050
    .line 1051
    const-wide/16 v21, 0x0

    .line 1052
    .line 1053
    cmp-long v3, v7, v21

    .line 1054
    .line 1055
    if-ltz v3, :cond_26

    .line 1056
    .line 1057
    invoke-virtual {v12, v7, v8}, Ljava/util/zip/ZipEntry;->setCompressedSize(J)V

    .line 1058
    .line 1059
    .line 1060
    goto :goto_1d

    .line 1061
    :cond_26
    invoke-static/range {v28 .. v28}, Ly5;->m(Ljava/lang/String;)V

    .line 1062
    .line 1063
    .line 1064
    return-object v20

    .line 1065
    :cond_27
    if-eqz v32, :cond_28

    .line 1066
    .line 1067
    new-instance v3, Luy8;

    .line 1068
    .line 1069
    invoke-virtual {v12}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    .line 1070
    .line 1071
    .line 1072
    move-result-wide v7

    .line 1073
    invoke-direct {v3, v7, v8}, Luy8;-><init>(J)V

    .line 1074
    .line 1075
    .line 1076
    iput-object v3, v2, Lpy8;->b:Luy8;

    .line 1077
    .line 1078
    :cond_28
    :goto_1d
    if-eqz v14, :cond_29

    .line 1079
    .line 1080
    iget-object v3, v2, Lpy8;->c:Luy8;

    .line 1081
    .line 1082
    iget-wide v7, v3, Luy8;->a:J

    .line 1083
    .line 1084
    iput-wide v7, v12, Lez8;->q:J

    .line 1085
    .line 1086
    :cond_29
    if-eqz v4, :cond_2b

    .line 1087
    .line 1088
    iget-object v2, v2, Lpy8;->d:Llz8;

    .line 1089
    .line 1090
    iget-wide v2, v2, Llz8;->a:J

    .line 1091
    .line 1092
    iput-wide v2, v12, Lez8;->t:J

    .line 1093
    .line 1094
    goto :goto_1e

    .line 1095
    :cond_2a
    move-object v15, v8

    .line 1096
    :cond_2b
    :goto_1e
    iget-wide v2, v12, Lez8;->t:J

    .line 1097
    .line 1098
    const-wide/16 v21, 0x0

    .line 1099
    .line 1100
    cmp-long v4, v2, v21

    .line 1101
    .line 1102
    if-ltz v4, :cond_34

    .line 1103
    .line 1104
    iget-wide v7, v12, Lez8;->q:J

    .line 1105
    .line 1106
    cmp-long v4, v7, v21

    .line 1107
    .line 1108
    if-ltz v4, :cond_33

    .line 1109
    .line 1110
    const-string v4, " starts after central directory"

    .line 1111
    .line 1112
    const-string v14, "local file header for "

    .line 1113
    .line 1114
    if-eqz v23, :cond_2e

    .line 1115
    .line 1116
    move-wide/from16 v28, v2

    .line 1117
    .line 1118
    iget-wide v2, v0, Lhz8;->H:J

    .line 1119
    .line 1120
    cmp-long v2, v28, v2

    .line 1121
    .line 1122
    if-gtz v2, :cond_2d

    .line 1123
    .line 1124
    if-nez v2, :cond_2f

    .line 1125
    .line 1126
    iget-wide v2, v0, Lhz8;->I:J

    .line 1127
    .line 1128
    cmp-long v2, v7, v2

    .line 1129
    .line 1130
    if-gtz v2, :cond_2c

    .line 1131
    .line 1132
    goto :goto_1f

    .line 1133
    :cond_2c
    invoke-virtual {v12}, Lez8;->getName()Ljava/lang/String;

    .line 1134
    .line 1135
    .line 1136
    move-result-object v0

    .line 1137
    invoke-static {v0, v4, v14}, Lz5;->i(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 1138
    .line 1139
    .line 1140
    return-object v20

    .line 1141
    :cond_2d
    invoke-virtual {v12}, Lez8;->getName()Ljava/lang/String;

    .line 1142
    .line 1143
    .line 1144
    move-result-object v0

    .line 1145
    const-string v1, " starts on a later disk than central directory"

    .line 1146
    .line 1147
    invoke-static {v0, v1, v14}, Lz5;->i(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 1148
    .line 1149
    .line 1150
    return-object v20

    .line 1151
    :cond_2e
    iget-wide v2, v0, Lhz8;->J:J

    .line 1152
    .line 1153
    cmp-long v2, v7, v2

    .line 1154
    .line 1155
    if-gtz v2, :cond_32

    .line 1156
    .line 1157
    :cond_2f
    :goto_1f
    invoke-static {v5, v11}, Ly13;->y(Ljava/nio/channels/ReadableByteChannel;I)[B

    .line 1158
    .line 1159
    .line 1160
    move-result-object v2

    .line 1161
    array-length v3, v2

    .line 1162
    if-lt v3, v11, :cond_31

    .line 1163
    .line 1164
    invoke-virtual {v15, v2}, Lxm5;->a([B)Ljava/lang/String;

    .line 1165
    .line 1166
    .line 1167
    move-result-object v3

    .line 1168
    invoke-virtual {v12, v3}, Ljava/util/zip/ZipEntry;->setComment(Ljava/lang/String;)V

    .line 1169
    .line 1170
    .line 1171
    if-nez v18, :cond_30

    .line 1172
    .line 1173
    iget-boolean v3, v0, Lhz8;->e:Z

    .line 1174
    .line 1175
    if-eqz v3, :cond_30

    .line 1176
    .line 1177
    new-instance v3, Lfz8;

    .line 1178
    .line 1179
    invoke-direct {v3, v6, v2}, Lfz8;-><init>([B[B)V

    .line 1180
    .line 1181
    .line 1182
    invoke-virtual {v1, v12, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1183
    .line 1184
    .line 1185
    :cond_30
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1186
    .line 1187
    .line 1188
    invoke-static {v5, v13}, Ly13;->w(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V

    .line 1189
    .line 1190
    .line 1191
    move-object/from16 v2, v24

    .line 1192
    .line 1193
    const/4 v4, 0x0

    .line 1194
    const/4 v15, 0x4

    .line 1195
    invoke-static {v2, v4, v15}, Lwx3;->j([BII)J

    .line 1196
    .line 1197
    .line 1198
    move-result-wide v7

    .line 1199
    move v3, v15

    .line 1200
    const/16 v6, 0x10

    .line 1201
    .line 1202
    const/4 v14, 0x2

    .line 1203
    const/16 v17, 0x1

    .line 1204
    .line 1205
    const/16 v25, 0x8

    .line 1206
    .line 1207
    move v15, v4

    .line 1208
    move-object v4, v2

    .line 1209
    move-object/from16 v2, v20

    .line 1210
    .line 1211
    goto/16 :goto_6

    .line 1212
    .line 1213
    :cond_31
    invoke-static {}, Ld6;->d()V

    .line 1214
    .line 1215
    .line 1216
    return-object v20

    .line 1217
    :cond_32
    invoke-virtual {v12}, Lez8;->getName()Ljava/lang/String;

    .line 1218
    .line 1219
    .line 1220
    move-result-object v0

    .line 1221
    invoke-static {v0, v4, v14}, Lz5;->i(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 1222
    .line 1223
    .line 1224
    return-object v20

    .line 1225
    :cond_33
    const-string v0, "broken archive, entry with negative local file header offset"

    .line 1226
    .line 1227
    invoke-static {v0}, Ly5;->m(Ljava/lang/String;)V

    .line 1228
    .line 1229
    .line 1230
    return-object v20

    .line 1231
    :cond_34
    const-string v0, "broken archive, entry with negative disk number"

    .line 1232
    .line 1233
    invoke-static {v0}, Ly5;->m(Ljava/lang/String;)V

    .line 1234
    .line 1235
    .line 1236
    return-object v20

    .line 1237
    :catch_1
    move-exception v0

    .line 1238
    goto :goto_20

    .line 1239
    :catch_2
    move-exception v0

    .line 1240
    goto :goto_21

    .line 1241
    :goto_20
    :try_start_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 1242
    .line 1243
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1244
    .line 1245
    .line 1246
    move-result-object v2

    .line 1247
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1248
    .line 1249
    .line 1250
    throw v1
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1251
    :goto_21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1252
    .line 1253
    const-string v2, "Invalid extra data in entry "

    .line 1254
    .line 1255
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1256
    .line 1257
    .line 1258
    invoke-virtual {v12}, Lez8;->getName()Ljava/lang/String;

    .line 1259
    .line 1260
    .line 1261
    move-result-object v2

    .line 1262
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1263
    .line 1264
    .line 1265
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1266
    .line 1267
    .line 1268
    move-result-object v1

    .line 1269
    new-instance v2, Ljava/util/zip/ZipException;

    .line 1270
    .line 1271
    invoke-direct {v2, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    .line 1272
    .line 1273
    .line 1274
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1275
    .line 1276
    .line 1277
    move-result-object v0

    .line 1278
    check-cast v0, Ljava/util/zip/ZipException;

    .line 1279
    .line 1280
    throw v0

    .line 1281
    :cond_35
    invoke-static {}, Ld6;->d()V

    .line 1282
    .line 1283
    .line 1284
    return-object v20

    .line 1285
    :cond_36
    invoke-static {}, Ld6;->d()V

    .line 1286
    .line 1287
    .line 1288
    return-object v20

    .line 1289
    :cond_37
    const-string v0, "broken archive, entry with negative commentLen"

    .line 1290
    .line 1291
    invoke-static {v0}, Ly5;->m(Ljava/lang/String;)V

    .line 1292
    .line 1293
    .line 1294
    return-object v20

    .line 1295
    :cond_38
    const-string v0, "broken archive, entry with negative extraLen"

    .line 1296
    .line 1297
    invoke-static {v0}, Ly5;->m(Ljava/lang/String;)V

    .line 1298
    .line 1299
    .line 1300
    return-object v20

    .line 1301
    :cond_39
    const-string v0, "broken archive, entry with negative fileNameLen"

    .line 1302
    .line 1303
    invoke-static {v0}, Ly5;->m(Ljava/lang/String;)V

    .line 1304
    .line 1305
    .line 1306
    return-object v20

    .line 1307
    :cond_3a
    invoke-static/range {v29 .. v29}, Ly5;->m(Ljava/lang/String;)V

    .line 1308
    .line 1309
    .line 1310
    return-object v20

    .line 1311
    :cond_3b
    invoke-static/range {v28 .. v28}, Ly5;->m(Ljava/lang/String;)V

    .line 1312
    .line 1313
    .line 1314
    return-object v20

    .line 1315
    :cond_3c
    return-object v1

    .line 1316
    :cond_3d
    new-instance v0, Ljava/util/zip/ZipException;

    .line 1317
    .line 1318
    const-string v1, "Archive\'s ZIP64 end of central directory locator is corrupt."

    .line 1319
    .line 1320
    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    .line 1321
    .line 1322
    .line 1323
    throw v0

    .line 1324
    :cond_3e
    new-instance v0, Ljava/util/zip/ZipException;

    .line 1325
    .line 1326
    const-string v1, "Archive is not a ZIP archive"

    .line 1327
    .line 1328
    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    .line 1329
    .line 1330
    .line 1331
    throw v0
.end method

.method public final close()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lhz8;->f:Z

    .line 3
    .line 4
    iget-object p0, p0, Lhz8;->d:Ljava/nio/channels/SeekableByteChannel;

    .line 5
    .line 6
    invoke-interface {p0}, Ljava/nio/channels/Channel;->close()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final finalize()V
    .locals 1

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lhz8;->f:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lhz8;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catchall_0
    move-exception v0

    .line 10
    goto :goto_1

    .line 11
    :cond_0
    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :goto_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 16
    .line 17
    .line 18
    throw v0
.end method

.method public final g(Ljava/util/HashMap;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lhz8;->a:Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_5

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lez8;

    .line 18
    .line 19
    invoke-virtual {p0, v1}, Lhz8;->h(Lez8;)[I

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const/4 v3, 0x0

    .line 24
    aget v3, v2, v3

    .line 25
    .line 26
    const/4 v4, 0x1

    .line 27
    aget v2, v2, v4

    .line 28
    .line 29
    invoke-virtual {p0, v3}, Lhz8;->j(I)V

    .line 30
    .line 31
    .line 32
    iget-object v3, p0, Lhz8;->d:Ljava/nio/channels/SeekableByteChannel;

    .line 33
    .line 34
    invoke-static {v3, v2}, Ly13;->y(Ljava/nio/channels/ReadableByteChannel;I)[B

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    array-length v4, v3

    .line 39
    if-lt v4, v2, :cond_4

    .line 40
    .line 41
    :try_start_0
    invoke-virtual {v1, v3}, Lez8;->setExtra([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_0

    .line 49
    .line 50
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    check-cast v2, Lfz8;

    .line 55
    .line 56
    iget-object v3, v2, Lfz8;->a:[B

    .line 57
    .line 58
    iget-object v2, v2, Lfz8;->b:[B

    .line 59
    .line 60
    sget v4, Lpz8;->b:I

    .line 61
    .line 62
    sget-object v4, Lzd8;->d:Lnz8;

    .line 63
    .line 64
    invoke-virtual {v1, v4}, Lez8;->d(Lnz8;)Lyy8;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    instance-of v5, v4, Lzd8;

    .line 69
    .line 70
    const/4 v6, 0x0

    .line 71
    if-eqz v5, :cond_1

    .line 72
    .line 73
    check-cast v4, Lzd8;

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_1
    move-object v4, v6

    .line 77
    :goto_1
    invoke-static {v4, v3}, Lpz8;->c(Lm5;[B)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    if-eqz v3, :cond_2

    .line 82
    .line 83
    invoke-virtual {v1, v3}, Lez8;->m(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    :cond_2
    array-length v3, v2

    .line 87
    if-lez v3, :cond_0

    .line 88
    .line 89
    sget-object v3, Lyd8;->d:Lnz8;

    .line 90
    .line 91
    invoke-virtual {v1, v3}, Lez8;->d(Lnz8;)Lyy8;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    instance-of v4, v3, Lyd8;

    .line 96
    .line 97
    if-eqz v4, :cond_3

    .line 98
    .line 99
    move-object v6, v3

    .line 100
    check-cast v6, Lyd8;

    .line 101
    .line 102
    :cond_3
    invoke-static {v6, v2}, Lpz8;->c(Lm5;[B)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    if-eqz v2, :cond_0

    .line 107
    .line 108
    invoke-virtual {v1, v2}, Ljava/util/zip/ZipEntry;->setComment(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :catch_0
    move-exception p0

    .line 113
    new-instance p1, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    const-string v0, "Invalid extra data in entry "

    .line 116
    .line 117
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1}, Lez8;->getName()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    sget v0, Lpz8;->b:I

    .line 132
    .line 133
    new-instance v0, Ljava/util/zip/ZipException;

    .line 134
    .line 135
    invoke-direct {v0, p1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    check-cast p0, Ljava/util/zip/ZipException;

    .line 143
    .line 144
    throw p0

    .line 145
    :cond_4
    invoke-static {}, Ld6;->d()V

    .line 146
    .line 147
    .line 148
    :cond_5
    return-void
.end method

.method public final h(Lez8;)[I
    .locals 8

    .line 1
    iget-wide v0, p1, Lez8;->q:J

    .line 2
    .line 3
    const-wide/16 v2, 0x1a

    .line 4
    .line 5
    iget-boolean v4, p0, Lhz8;->k:Z

    .line 6
    .line 7
    iget-object v5, p0, Lhz8;->d:Ljava/nio/channels/SeekableByteChannel;

    .line 8
    .line 9
    if-eqz v4, :cond_0

    .line 10
    .line 11
    move-object v4, v5

    .line 12
    check-cast v4, Loz8;

    .line 13
    .line 14
    iget-wide v6, p1, Lez8;->t:J

    .line 15
    .line 16
    add-long/2addr v0, v2

    .line 17
    invoke-virtual {v4, v6, v7, v0, v1}, Loz8;->a(JJ)V

    .line 18
    .line 19
    .line 20
    invoke-interface {v5}, Ljava/nio/channels/SeekableByteChannel;->position()J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    sub-long/2addr v0, v2

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    add-long/2addr v2, v0

    .line 27
    invoke-interface {v5, v2, v3}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 28
    .line 29
    .line 30
    :goto_0
    iget-object v2, p0, Lhz8;->x:Ljava/nio/ByteBuffer;

    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 33
    .line 34
    .line 35
    invoke-static {v5, v2}, Ly13;->w(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 39
    .line 40
    .line 41
    iget-object v3, p0, Lhz8;->r:[B

    .line 42
    .line 43
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 44
    .line 45
    .line 46
    const/4 v4, 0x0

    .line 47
    const/4 v5, 0x2

    .line 48
    invoke-static {v3, v4, v5}, Lwx3;->j([BII)J

    .line 49
    .line 50
    .line 51
    move-result-wide v6

    .line 52
    long-to-int v6, v6

    .line 53
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 54
    .line 55
    .line 56
    invoke-static {v3, v4, v5}, Lwx3;->j([BII)J

    .line 57
    .line 58
    .line 59
    move-result-wide v2

    .line 60
    long-to-int v2, v2

    .line 61
    const-wide/16 v3, 0x1e

    .line 62
    .line 63
    add-long/2addr v0, v3

    .line 64
    int-to-long v3, v6

    .line 65
    add-long/2addr v0, v3

    .line 66
    int-to-long v3, v2

    .line 67
    add-long/2addr v0, v3

    .line 68
    iput-wide v0, p1, Lez8;->r:J

    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    .line 71
    .line 72
    .line 73
    move-result-wide v3

    .line 74
    add-long/2addr v3, v0

    .line 75
    iget-wide v0, p0, Lhz8;->J:J

    .line 76
    .line 77
    cmp-long p0, v3, v0

    .line 78
    .line 79
    if-gtz p0, :cond_1

    .line 80
    .line 81
    filled-new-array {v6, v2}, [I

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    return-object p0

    .line 86
    :cond_1
    invoke-virtual {p1}, Lez8;->getName()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    const-string p1, " overlaps with central directory."

    .line 91
    .line 92
    const-string v0, "data for "

    .line 93
    .line 94
    invoke-static {p0, p1, v0}, Lz5;->i(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    const/4 p0, 0x0

    .line 98
    return-object p0
.end method

.method public final j(I)V
    .locals 4

    .line 1
    iget-object p0, p0, Lhz8;->d:Ljava/nio/channels/SeekableByteChannel;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/nio/channels/SeekableByteChannel;->position()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    int-to-long v2, p1

    .line 8
    add-long/2addr v0, v2

    .line 9
    invoke-interface {p0}, Ljava/nio/channels/SeekableByteChannel;->size()J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    cmp-long p1, v0, v2

    .line 14
    .line 15
    if-gtz p1, :cond_0

    .line 16
    .line 17
    invoke-interface {p0, v0, v1}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    invoke-static {}, Ld6;->d()V

    .line 22
    .line 23
    .line 24
    return-void
.end method
