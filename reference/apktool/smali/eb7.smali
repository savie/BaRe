.class public final Leb7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final q:[B


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Ljava/nio/channels/SeekableByteChannel;

.field public final c:Lg40;

.field public d:I

.field public e:I

.field public f:Ljava/io/InputStream;

.field public k:[B

.field public final n:Ljava/util/ArrayList;

.field public final p:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x6

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v0, Leb7;->q:[B

    .line 8
    .line 9
    return-void

    .line 10
    nop

    .line 11
    :array_0
    .array-data 1
        0x37t
        0x7at
        -0x44t
        -0x51t
        0x27t
        0x1ct
    .end array-data
.end method

.method public constructor <init>(Ljava/nio/channels/FileChannel;Ljava/lang/String;[BZI)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Leb7;->d:I

    .line 6
    .line 7
    iput v0, p0, Leb7;->e:I

    .line 8
    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Leb7;->n:Ljava/util/ArrayList;

    .line 15
    .line 16
    iput-object p1, p0, Leb7;->b:Ljava/nio/channels/SeekableByteChannel;

    .line 17
    .line 18
    iput-object p2, p0, Leb7;->a:Ljava/lang/String;

    .line 19
    .line 20
    iput p5, p0, Leb7;->p:I

    .line 21
    .line 22
    :try_start_0
    invoke-virtual {p0, p3}, Leb7;->r([B)Lg40;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Leb7;->c:Lg40;

    .line 27
    .line 28
    if-eqz p3, :cond_0

    .line 29
    .line 30
    array-length p1, p3

    .line 31
    invoke-static {p3, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Leb7;->k:[B

    .line 36
    .line 37
    return-void

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 p1, 0x0

    .line 41
    iput-object p1, p0, Leb7;->k:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    return-void

    .line 44
    :goto_0
    if-eqz p4, :cond_1

    .line 45
    .line 46
    iget-object p0, p0, Leb7;->b:Ljava/nio/channels/SeekableByteChannel;

    .line 47
    .line 48
    invoke-interface {p0}, Ljava/nio/channels/Channel;->close()V

    .line 49
    .line 50
    .line 51
    :cond_1
    throw p1
.end method

.method public static D(JLjava/nio/ByteBuffer;)J
    .locals 4

    .line 1
    const-wide/16 v0, 0x1

    .line 2
    .line 3
    cmp-long v0, p0, v0

    .line 4
    .line 5
    if-gez v0, :cond_0

    .line 6
    .line 7
    const-wide/16 p0, 0x0

    .line 8
    .line 9
    return-wide p0

    .line 10
    :cond_0
    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    int-to-long v1, v1

    .line 19
    cmp-long v3, v1, p0

    .line 20
    .line 21
    if-gez v3, :cond_1

    .line 22
    .line 23
    move-wide p0, v1

    .line 24
    :cond_1
    long-to-int v1, p0

    .line 25
    add-int/2addr v0, v1

    .line 26
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 27
    .line 28
    .line 29
    return-wide p0
.end method

.method public static a(JLjava/lang/String;)I
    .locals 2

    .line 1
    const-wide/32 v0, 0x7fffffff

    .line 2
    .line 3
    .line 4
    cmp-long v0, p0, v0

    .line 5
    .line 6
    if-gtz v0, :cond_0

    .line 7
    .line 8
    const-wide/16 v0, 0x0

    .line 9
    .line 10
    cmp-long v0, p0, v0

    .line 11
    .line 12
    if-ltz v0, :cond_0

    .line 13
    .line 14
    long-to-int p0, p0

    .line 15
    return p0

    .line 16
    :cond_0
    new-instance v0, Ljava/io/IOException;

    .line 17
    .line 18
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    filled-new-array {p2, p0}, [Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const-string p1, "Cannot handle % %,d"

    .line 27
    .line 28
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw v0
.end method

.method public static b()Ldb7;
    .locals 2

    .line 1
    new-instance v0, Ldb7;

    .line 2
    .line 3
    invoke-direct {v0}, Ll5;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "unknown archive"

    .line 7
    .line 8
    iput-object v1, v0, Ldb7;->x:Ljava/lang/String;

    .line 9
    .line 10
    const v1, 0x7fffffff

    .line 11
    .line 12
    .line 13
    iput v1, v0, Ldb7;->G:I

    .line 14
    .line 15
    return-object v0
.end method

.method public static g(Ljava/nio/ByteBuffer;I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-lt p0, p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    .line 9
    .line 10
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const-string p1, "remaining %,d < expectRemaining %,d"

    .line 23
    .line 24
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-direct {v0, p0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw v0
.end method

.method public static h(Ljava/util/LinkedHashMap;I)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Lab7;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static m(Ljava/nio/ByteBuffer;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    and-int/lit16 p0, p0, 0xff

    .line 12
    .line 13
    return p0

    .line 14
    :cond_0
    invoke-static {}, Ld6;->d()V

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    return p0
.end method

.method public static n(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;
    .locals 2

    .line 1
    invoke-static {p0}, Leb7;->m(Ljava/nio/ByteBuffer;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    new-instance p0, Ljava/util/BitSet;

    .line 8
    .line 9
    invoke-direct {p0, p1}, Ljava/util/BitSet;-><init>(I)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-ge v0, p1, :cond_0

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-virtual {p0, v0, v1}, Ljava/util/BitSet;->set(IZ)V

    .line 17
    .line 18
    .line 19
    add-int/lit8 v0, v0, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-object p0

    .line 23
    :cond_1
    invoke-static {p0, p1}, Leb7;->q(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method

.method public static q(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/BitSet;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/util/BitSet;-><init>(I)V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    move v3, v2

    .line 9
    move v4, v3

    .line 10
    :goto_0
    if-ge v2, p1, :cond_2

    .line 11
    .line 12
    if-nez v3, :cond_0

    .line 13
    .line 14
    invoke-static {p0}, Leb7;->m(Ljava/nio/ByteBuffer;)I

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    const/16 v3, 0x80

    .line 19
    .line 20
    :cond_0
    and-int v5, v4, v3

    .line 21
    .line 22
    if-eqz v5, :cond_1

    .line 23
    .line 24
    const/4 v5, 0x1

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    move v5, v1

    .line 27
    :goto_1
    invoke-virtual {v0, v2, v5}, Ljava/util/BitSet;->set(IZ)V

    .line 28
    .line 29
    .line 30
    ushr-int/lit8 v3, v3, 0x1

    .line 31
    .line 32
    add-int/lit8 v2, v2, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    return-object v0
.end method

.method public static u(Ljava/nio/ByteBuffer;Lg40;)V
    .locals 33

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-static {v0}, Leb7;->m(Ljava/nio/ByteBuffer;)I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x6

    .line 10
    const/16 v4, 0x9

    .line 11
    .line 12
    const/4 v5, 0x4

    .line 13
    const-wide v6, 0xffffffffL

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    const/16 v8, 0xa

    .line 19
    .line 20
    if-ne v2, v3, :cond_5

    .line 21
    .line 22
    invoke-static {v0}, Leb7;->v(Ljava/nio/ByteBuffer;)J

    .line 23
    .line 24
    .line 25
    move-result-wide v2

    .line 26
    iput-wide v2, v1, Lg40;->a:J

    .line 27
    .line 28
    invoke-static {v0}, Leb7;->v(Ljava/nio/ByteBuffer;)J

    .line 29
    .line 30
    .line 31
    move-result-wide v2

    .line 32
    long-to-int v2, v2

    .line 33
    invoke-static {v0}, Leb7;->m(Ljava/nio/ByteBuffer;)I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-ne v3, v4, :cond_1

    .line 38
    .line 39
    new-array v3, v2, [J

    .line 40
    .line 41
    iput-object v3, v1, Lg40;->b:[J

    .line 42
    .line 43
    const/4 v3, 0x0

    .line 44
    :goto_0
    iget-object v10, v1, Lg40;->b:[J

    .line 45
    .line 46
    array-length v11, v10

    .line 47
    if-ge v3, v11, :cond_0

    .line 48
    .line 49
    invoke-static {v0}, Leb7;->v(Ljava/nio/ByteBuffer;)J

    .line 50
    .line 51
    .line 52
    move-result-wide v11

    .line 53
    aput-wide v11, v10, v3

    .line 54
    .line 55
    add-int/lit8 v3, v3, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    invoke-static {v0}, Leb7;->m(Ljava/nio/ByteBuffer;)I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    :cond_1
    if-ne v3, v8, :cond_4

    .line 63
    .line 64
    invoke-static {v0, v2}, Leb7;->n(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    iput-object v3, v1, Lg40;->c:Ljava/util/BitSet;

    .line 69
    .line 70
    new-array v3, v2, [J

    .line 71
    .line 72
    iput-object v3, v1, Lg40;->d:[J

    .line 73
    .line 74
    const/4 v3, 0x0

    .line 75
    :goto_1
    if-ge v3, v2, :cond_3

    .line 76
    .line 77
    iget-object v10, v1, Lg40;->c:Ljava/util/BitSet;

    .line 78
    .line 79
    invoke-virtual {v10, v3}, Ljava/util/BitSet;->get(I)Z

    .line 80
    .line 81
    .line 82
    move-result v10

    .line 83
    if-eqz v10, :cond_2

    .line 84
    .line 85
    iget-object v10, v1, Lg40;->d:[J

    .line 86
    .line 87
    invoke-static {v0, v5}, Leb7;->g(Ljava/nio/ByteBuffer;I)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 91
    .line 92
    .line 93
    move-result v11

    .line 94
    int-to-long v11, v11

    .line 95
    and-long/2addr v11, v6

    .line 96
    aput-wide v11, v10, v3

    .line 97
    .line 98
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_3
    invoke-static {v0}, Leb7;->m(Ljava/nio/ByteBuffer;)I

    .line 102
    .line 103
    .line 104
    :cond_4
    invoke-static {v0}, Leb7;->m(Ljava/nio/ByteBuffer;)I

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    :cond_5
    const/4 v3, 0x7

    .line 109
    if-ne v2, v3, :cond_1a

    .line 110
    .line 111
    invoke-static {v0}, Leb7;->m(Ljava/nio/ByteBuffer;)I

    .line 112
    .line 113
    .line 114
    invoke-static {v0}, Leb7;->v(Ljava/nio/ByteBuffer;)J

    .line 115
    .line 116
    .line 117
    move-result-wide v2

    .line 118
    long-to-int v2, v2

    .line 119
    new-array v3, v2, [Lhj3;

    .line 120
    .line 121
    iput-object v3, v1, Lg40;->e:[Lhj3;

    .line 122
    .line 123
    invoke-static {v0}, Leb7;->m(Ljava/nio/ByteBuffer;)I

    .line 124
    .line 125
    .line 126
    const/4 v13, 0x0

    .line 127
    :goto_2
    if-ge v13, v2, :cond_14

    .line 128
    .line 129
    new-instance v14, Lhj3;

    .line 130
    .line 131
    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    .line 132
    .line 133
    .line 134
    move-wide v15, v6

    .line 135
    invoke-static {v0}, Leb7;->v(Ljava/nio/ByteBuffer;)J

    .line 136
    .line 137
    .line 138
    move-result-wide v6

    .line 139
    long-to-int v6, v6

    .line 140
    new-array v7, v6, [Lkk1;

    .line 141
    .line 142
    const-wide/16 v4, 0x0

    .line 143
    .line 144
    const/4 v10, 0x0

    .line 145
    const-wide/16 v11, 0x0

    .line 146
    .line 147
    :goto_3
    const-wide/16 v18, 0x1

    .line 148
    .line 149
    if-ge v10, v6, :cond_c

    .line 150
    .line 151
    move-wide/from16 v20, v15

    .line 152
    .line 153
    invoke-static {v0}, Leb7;->m(Ljava/nio/ByteBuffer;)I

    .line 154
    .line 155
    .line 156
    move-result v15

    .line 157
    const/16 v16, 0x0

    .line 158
    .line 159
    and-int/lit8 v9, v15, 0xf

    .line 160
    .line 161
    and-int/lit8 v22, v15, 0x10

    .line 162
    .line 163
    if-nez v22, :cond_6

    .line 164
    .line 165
    const/16 v22, 0x1

    .line 166
    .line 167
    goto :goto_4

    .line 168
    :cond_6
    move/from16 v22, v16

    .line 169
    .line 170
    :goto_4
    and-int/lit8 v23, v15, 0x20

    .line 171
    .line 172
    if-eqz v23, :cond_7

    .line 173
    .line 174
    const/16 v23, 0x1

    .line 175
    .line 176
    goto :goto_5

    .line 177
    :cond_7
    move/from16 v23, v16

    .line 178
    .line 179
    :goto_5
    and-int/lit16 v15, v15, 0x80

    .line 180
    .line 181
    if-eqz v15, :cond_8

    .line 182
    .line 183
    const/4 v15, 0x1

    .line 184
    goto :goto_6

    .line 185
    :cond_8
    move/from16 v15, v16

    .line 186
    .line 187
    :goto_6
    new-array v8, v9, [B

    .line 188
    .line 189
    invoke-static {v0, v9}, Leb7;->g(Ljava/nio/ByteBuffer;I)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 193
    .line 194
    .line 195
    if-eqz v22, :cond_9

    .line 196
    .line 197
    move-wide/from16 v26, v18

    .line 198
    .line 199
    move-wide/from16 v28, v26

    .line 200
    .line 201
    goto :goto_7

    .line 202
    :cond_9
    invoke-static {v0}, Leb7;->v(Ljava/nio/ByteBuffer;)J

    .line 203
    .line 204
    .line 205
    move-result-wide v18

    .line 206
    invoke-static {v0}, Leb7;->v(Ljava/nio/ByteBuffer;)J

    .line 207
    .line 208
    .line 209
    move-result-wide v24

    .line 210
    move-wide/from16 v26, v18

    .line 211
    .line 212
    move-wide/from16 v28, v24

    .line 213
    .line 214
    :goto_7
    add-long v4, v4, v26

    .line 215
    .line 216
    add-long v11, v11, v28

    .line 217
    .line 218
    move-object v9, v3

    .line 219
    move-wide/from16 v18, v4

    .line 220
    .line 221
    if-eqz v23, :cond_a

    .line 222
    .line 223
    invoke-static {v0}, Leb7;->v(Ljava/nio/ByteBuffer;)J

    .line 224
    .line 225
    .line 226
    move-result-wide v3

    .line 227
    long-to-int v3, v3

    .line 228
    new-array v4, v3, [B

    .line 229
    .line 230
    invoke-static {v0, v3}, Leb7;->g(Ljava/nio/ByteBuffer;I)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 234
    .line 235
    .line 236
    :goto_8
    move-object/from16 v30, v4

    .line 237
    .line 238
    goto :goto_9

    .line 239
    :cond_a
    const/4 v4, 0x0

    .line 240
    goto :goto_8

    .line 241
    :goto_9
    if-nez v15, :cond_b

    .line 242
    .line 243
    new-instance v24, Lkk1;

    .line 244
    .line 245
    move-object/from16 v25, v8

    .line 246
    .line 247
    invoke-direct/range {v24 .. v30}, Lkk1;-><init>([BJJ[B)V

    .line 248
    .line 249
    .line 250
    aput-object v24, v7, v10

    .line 251
    .line 252
    add-int/lit8 v10, v10, 0x1

    .line 253
    .line 254
    move-object v3, v9

    .line 255
    move-wide/from16 v4, v18

    .line 256
    .line 257
    move-wide/from16 v15, v20

    .line 258
    .line 259
    const/16 v8, 0xa

    .line 260
    .line 261
    goto :goto_3

    .line 262
    :cond_b
    const-string v0, "Alternative methods are unsupported, please report. The reference implementation doesn\'t support them either."

    .line 263
    .line 264
    invoke-static {v0}, Ly5;->m(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    return-void

    .line 268
    :cond_c
    move-object v9, v3

    .line 269
    move-wide/from16 v20, v15

    .line 270
    .line 271
    const/16 v16, 0x0

    .line 272
    .line 273
    iput-object v7, v14, Lhj3;->a:[Lkk1;

    .line 274
    .line 275
    iput-wide v4, v14, Lhj3;->b:J

    .line 276
    .line 277
    iput-wide v11, v14, Lhj3;->c:J

    .line 278
    .line 279
    sub-long v11, v11, v18

    .line 280
    .line 281
    long-to-int v3, v11

    .line 282
    new-array v6, v3, [Lcr0;

    .line 283
    .line 284
    move/from16 v7, v16

    .line 285
    .line 286
    :goto_a
    if-ge v7, v3, :cond_d

    .line 287
    .line 288
    new-instance v8, Lcr0;

    .line 289
    .line 290
    move-object v15, v9

    .line 291
    invoke-static {v0}, Leb7;->v(Ljava/nio/ByteBuffer;)J

    .line 292
    .line 293
    .line 294
    move-result-wide v9

    .line 295
    move-wide/from16 v22, v11

    .line 296
    .line 297
    invoke-static {v0}, Leb7;->v(Ljava/nio/ByteBuffer;)J

    .line 298
    .line 299
    .line 300
    move-result-wide v11

    .line 301
    invoke-direct {v8, v9, v10, v11, v12}, Lcr0;-><init>(JJ)V

    .line 302
    .line 303
    .line 304
    aput-object v8, v6, v7

    .line 305
    .line 306
    add-int/lit8 v7, v7, 0x1

    .line 307
    .line 308
    move-object v9, v15

    .line 309
    move-wide/from16 v11, v22

    .line 310
    .line 311
    goto :goto_a

    .line 312
    :cond_d
    move-object v15, v9

    .line 313
    move-wide/from16 v22, v11

    .line 314
    .line 315
    iput-object v6, v14, Lhj3;->d:[Lcr0;

    .line 316
    .line 317
    sub-long v6, v4, v22

    .line 318
    .line 319
    long-to-int v3, v6

    .line 320
    new-array v8, v3, [J

    .line 321
    .line 322
    cmp-long v6, v6, v18

    .line 323
    .line 324
    if-nez v6, :cond_12

    .line 325
    .line 326
    move/from16 v3, v16

    .line 327
    .line 328
    :goto_b
    long-to-int v6, v4

    .line 329
    if-ge v3, v6, :cond_11

    .line 330
    .line 331
    iget-object v6, v14, Lhj3;->d:[Lcr0;

    .line 332
    .line 333
    if-eqz v6, :cond_f

    .line 334
    .line 335
    move/from16 v6, v16

    .line 336
    .line 337
    :goto_c
    iget-object v7, v14, Lhj3;->d:[Lcr0;

    .line 338
    .line 339
    array-length v9, v7

    .line 340
    if-ge v6, v9, :cond_f

    .line 341
    .line 342
    aget-object v7, v7, v6

    .line 343
    .line 344
    iget-wide v9, v7, Lcr0;->a:J

    .line 345
    .line 346
    int-to-long v11, v3

    .line 347
    cmp-long v7, v9, v11

    .line 348
    .line 349
    if-nez v7, :cond_e

    .line 350
    .line 351
    goto :goto_d

    .line 352
    :cond_e
    add-int/lit8 v6, v6, 0x1

    .line 353
    .line 354
    goto :goto_c

    .line 355
    :cond_f
    const/4 v6, -0x1

    .line 356
    :goto_d
    if-gez v6, :cond_10

    .line 357
    .line 358
    goto :goto_e

    .line 359
    :cond_10
    add-int/lit8 v3, v3, 0x1

    .line 360
    .line 361
    goto :goto_b

    .line 362
    :cond_11
    :goto_e
    int-to-long v3, v3

    .line 363
    aput-wide v3, v8, v16

    .line 364
    .line 365
    goto :goto_10

    .line 366
    :cond_12
    move/from16 v4, v16

    .line 367
    .line 368
    :goto_f
    if-ge v4, v3, :cond_13

    .line 369
    .line 370
    invoke-static {v0}, Leb7;->v(Ljava/nio/ByteBuffer;)J

    .line 371
    .line 372
    .line 373
    move-result-wide v5

    .line 374
    aput-wide v5, v8, v4

    .line 375
    .line 376
    add-int/lit8 v4, v4, 0x1

    .line 377
    .line 378
    goto :goto_f

    .line 379
    :cond_13
    :goto_10
    iput-object v8, v14, Lhj3;->e:[J

    .line 380
    .line 381
    aput-object v14, v15, v13

    .line 382
    .line 383
    add-int/lit8 v13, v13, 0x1

    .line 384
    .line 385
    move-object v3, v15

    .line 386
    move-wide/from16 v6, v20

    .line 387
    .line 388
    const/16 v4, 0x9

    .line 389
    .line 390
    const/4 v5, 0x4

    .line 391
    const/16 v8, 0xa

    .line 392
    .line 393
    goto/16 :goto_2

    .line 394
    .line 395
    :cond_14
    move-object v15, v3

    .line 396
    move-wide/from16 v20, v6

    .line 397
    .line 398
    const/16 v16, 0x0

    .line 399
    .line 400
    invoke-static {v0}, Leb7;->m(Ljava/nio/ByteBuffer;)I

    .line 401
    .line 402
    .line 403
    move/from16 v3, v16

    .line 404
    .line 405
    :goto_11
    if-ge v3, v2, :cond_16

    .line 406
    .line 407
    aget-object v4, v15, v3

    .line 408
    .line 409
    const-string v5, "totalOutputStreams"

    .line 410
    .line 411
    iget-wide v6, v4, Lhj3;->c:J

    .line 412
    .line 413
    invoke-static {v6, v7, v5}, Leb7;->a(JLjava/lang/String;)I

    .line 414
    .line 415
    .line 416
    iget-wide v5, v4, Lhj3;->c:J

    .line 417
    .line 418
    long-to-int v5, v5

    .line 419
    new-array v5, v5, [J

    .line 420
    .line 421
    iput-object v5, v4, Lhj3;->f:[J

    .line 422
    .line 423
    move/from16 v5, v16

    .line 424
    .line 425
    :goto_12
    int-to-long v6, v5

    .line 426
    iget-wide v8, v4, Lhj3;->c:J

    .line 427
    .line 428
    cmp-long v6, v6, v8

    .line 429
    .line 430
    if-gez v6, :cond_15

    .line 431
    .line 432
    iget-object v6, v4, Lhj3;->f:[J

    .line 433
    .line 434
    invoke-static {v0}, Leb7;->v(Ljava/nio/ByteBuffer;)J

    .line 435
    .line 436
    .line 437
    move-result-wide v7

    .line 438
    aput-wide v7, v6, v5

    .line 439
    .line 440
    add-int/lit8 v5, v5, 0x1

    .line 441
    .line 442
    goto :goto_12

    .line 443
    :cond_15
    add-int/lit8 v3, v3, 0x1

    .line 444
    .line 445
    goto :goto_11

    .line 446
    :cond_16
    invoke-static {v0}, Leb7;->m(Ljava/nio/ByteBuffer;)I

    .line 447
    .line 448
    .line 449
    move-result v3

    .line 450
    const/16 v4, 0xa

    .line 451
    .line 452
    if-ne v3, v4, :cond_19

    .line 453
    .line 454
    invoke-static {v0, v2}, Leb7;->n(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    .line 455
    .line 456
    .line 457
    move-result-object v3

    .line 458
    move/from16 v4, v16

    .line 459
    .line 460
    :goto_13
    if-ge v4, v2, :cond_18

    .line 461
    .line 462
    invoke-virtual {v3, v4}, Ljava/util/BitSet;->get(I)Z

    .line 463
    .line 464
    .line 465
    move-result v5

    .line 466
    if-eqz v5, :cond_17

    .line 467
    .line 468
    aget-object v5, v15, v4

    .line 469
    .line 470
    const/4 v6, 0x1

    .line 471
    iput-boolean v6, v5, Lhj3;->g:Z

    .line 472
    .line 473
    const/4 v6, 0x4

    .line 474
    invoke-static {v0, v6}, Leb7;->g(Ljava/nio/ByteBuffer;I)V

    .line 475
    .line 476
    .line 477
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 478
    .line 479
    .line 480
    move-result v6

    .line 481
    int-to-long v6, v6

    .line 482
    and-long v6, v6, v20

    .line 483
    .line 484
    iput-wide v6, v5, Lhj3;->h:J

    .line 485
    .line 486
    move/from16 v6, v16

    .line 487
    .line 488
    goto :goto_14

    .line 489
    :cond_17
    aget-object v5, v15, v4

    .line 490
    .line 491
    move/from16 v6, v16

    .line 492
    .line 493
    iput-boolean v6, v5, Lhj3;->g:Z

    .line 494
    .line 495
    :goto_14
    add-int/lit8 v4, v4, 0x1

    .line 496
    .line 497
    move/from16 v16, v6

    .line 498
    .line 499
    goto :goto_13

    .line 500
    :cond_18
    move/from16 v6, v16

    .line 501
    .line 502
    invoke-static {v0}, Leb7;->m(Ljava/nio/ByteBuffer;)I

    .line 503
    .line 504
    .line 505
    goto :goto_15

    .line 506
    :cond_19
    move/from16 v6, v16

    .line 507
    .line 508
    :goto_15
    invoke-static {v0}, Leb7;->m(Ljava/nio/ByteBuffer;)I

    .line 509
    .line 510
    .line 511
    move-result v2

    .line 512
    goto :goto_16

    .line 513
    :cond_1a
    move-wide/from16 v20, v6

    .line 514
    .line 515
    const/4 v6, 0x0

    .line 516
    sget-object v3, Lhj3;->j:[Lhj3;

    .line 517
    .line 518
    iput-object v3, v1, Lg40;->e:[Lhj3;

    .line 519
    .line 520
    :goto_16
    const/16 v3, 0x8

    .line 521
    .line 522
    if-ne v2, v3, :cond_2d

    .line 523
    .line 524
    iget-object v2, v1, Lg40;->e:[Lhj3;

    .line 525
    .line 526
    array-length v3, v2

    .line 527
    move v4, v6

    .line 528
    :goto_17
    if-ge v4, v3, :cond_1b

    .line 529
    .line 530
    aget-object v5, v2, v4

    .line 531
    .line 532
    const/4 v7, 0x1

    .line 533
    iput v7, v5, Lhj3;->i:I

    .line 534
    .line 535
    add-int/lit8 v4, v4, 0x1

    .line 536
    .line 537
    goto :goto_17

    .line 538
    :cond_1b
    iget-object v2, v1, Lg40;->e:[Lhj3;

    .line 539
    .line 540
    array-length v2, v2

    .line 541
    int-to-long v2, v2

    .line 542
    invoke-static {v0}, Leb7;->m(Ljava/nio/ByteBuffer;)I

    .line 543
    .line 544
    .line 545
    move-result v4

    .line 546
    const/16 v5, 0xd

    .line 547
    .line 548
    if-ne v4, v5, :cond_1d

    .line 549
    .line 550
    iget-object v2, v1, Lg40;->e:[Lhj3;

    .line 551
    .line 552
    array-length v3, v2

    .line 553
    move v7, v6

    .line 554
    const-wide/16 v4, 0x0

    .line 555
    .line 556
    :goto_18
    if-ge v7, v3, :cond_1c

    .line 557
    .line 558
    aget-object v8, v2, v7

    .line 559
    .line 560
    invoke-static {v0}, Leb7;->v(Ljava/nio/ByteBuffer;)J

    .line 561
    .line 562
    .line 563
    move-result-wide v9

    .line 564
    long-to-int v11, v9

    .line 565
    iput v11, v8, Lhj3;->i:I

    .line 566
    .line 567
    add-long/2addr v4, v9

    .line 568
    add-int/lit8 v7, v7, 0x1

    .line 569
    .line 570
    goto :goto_18

    .line 571
    :cond_1c
    invoke-static {v0}, Leb7;->m(Ljava/nio/ByteBuffer;)I

    .line 572
    .line 573
    .line 574
    move-result v2

    .line 575
    move-wide/from16 v31, v4

    .line 576
    .line 577
    move v4, v2

    .line 578
    move-wide/from16 v2, v31

    .line 579
    .line 580
    :cond_1d
    long-to-int v2, v2

    .line 581
    new-instance v3, Ll22;

    .line 582
    .line 583
    invoke-direct {v3, v2}, Ll22;-><init>(I)V

    .line 584
    .line 585
    .line 586
    iget-object v2, v3, Ll22;->d:Ljava/lang/Object;

    .line 587
    .line 588
    check-cast v2, [J

    .line 589
    .line 590
    iget-object v5, v3, Ll22;->c:Ljava/lang/Object;

    .line 591
    .line 592
    check-cast v5, Ljava/util/BitSet;

    .line 593
    .line 594
    iget-object v7, v3, Ll22;->b:Ljava/lang/Object;

    .line 595
    .line 596
    check-cast v7, [J

    .line 597
    .line 598
    iget-object v8, v1, Lg40;->e:[Lhj3;

    .line 599
    .line 600
    array-length v9, v8

    .line 601
    move v10, v6

    .line 602
    move v12, v10

    .line 603
    :goto_19
    if-ge v10, v9, :cond_22

    .line 604
    .line 605
    aget-object v13, v8, v10

    .line 606
    .line 607
    iget v11, v13, Lhj3;->i:I

    .line 608
    .line 609
    if-nez v11, :cond_1e

    .line 610
    .line 611
    goto :goto_1b

    .line 612
    :cond_1e
    const/16 v11, 0x9

    .line 613
    .line 614
    if-ne v4, v11, :cond_1f

    .line 615
    .line 616
    move v14, v6

    .line 617
    const-wide/16 v15, 0x0

    .line 618
    .line 619
    :goto_1a
    iget v6, v13, Lhj3;->i:I

    .line 620
    .line 621
    const/16 v17, 0x1

    .line 622
    .line 623
    add-int/lit8 v6, v6, -0x1

    .line 624
    .line 625
    if-ge v14, v6, :cond_20

    .line 626
    .line 627
    invoke-static {v0}, Leb7;->v(Ljava/nio/ByteBuffer;)J

    .line 628
    .line 629
    .line 630
    move-result-wide v18

    .line 631
    add-int/lit8 v6, v12, 0x1

    .line 632
    .line 633
    aput-wide v18, v7, v12

    .line 634
    .line 635
    add-long v15, v15, v18

    .line 636
    .line 637
    add-int/lit8 v14, v14, 0x1

    .line 638
    .line 639
    move v12, v6

    .line 640
    goto :goto_1a

    .line 641
    :cond_1f
    const-wide/16 v15, 0x0

    .line 642
    .line 643
    :cond_20
    invoke-virtual {v13}, Lhj3;->b()J

    .line 644
    .line 645
    .line 646
    move-result-wide v18

    .line 647
    cmp-long v6, v15, v18

    .line 648
    .line 649
    if-gtz v6, :cond_21

    .line 650
    .line 651
    add-int/lit8 v6, v12, 0x1

    .line 652
    .line 653
    invoke-virtual {v13}, Lhj3;->b()J

    .line 654
    .line 655
    .line 656
    move-result-wide v13

    .line 657
    sub-long/2addr v13, v15

    .line 658
    aput-wide v13, v7, v12

    .line 659
    .line 660
    move v12, v6

    .line 661
    :goto_1b
    add-int/lit8 v10, v10, 0x1

    .line 662
    .line 663
    const/4 v6, 0x0

    .line 664
    goto :goto_19

    .line 665
    :cond_21
    const-string v0, "sum of unpack sizes of folder exceeds total unpack size"

    .line 666
    .line 667
    invoke-static {v0}, Ly5;->m(Ljava/lang/String;)V

    .line 668
    .line 669
    .line 670
    return-void

    .line 671
    :cond_22
    const/16 v11, 0x9

    .line 672
    .line 673
    if-ne v4, v11, :cond_23

    .line 674
    .line 675
    invoke-static {v0}, Leb7;->m(Ljava/nio/ByteBuffer;)I

    .line 676
    .line 677
    .line 678
    move-result v4

    .line 679
    :cond_23
    iget-object v6, v1, Lg40;->e:[Lhj3;

    .line 680
    .line 681
    array-length v7, v6

    .line 682
    const/4 v8, 0x0

    .line 683
    const/4 v9, 0x0

    .line 684
    :goto_1c
    if-ge v8, v7, :cond_26

    .line 685
    .line 686
    aget-object v10, v6, v8

    .line 687
    .line 688
    iget v11, v10, Lhj3;->i:I

    .line 689
    .line 690
    const/4 v12, 0x1

    .line 691
    if-ne v11, v12, :cond_24

    .line 692
    .line 693
    iget-boolean v10, v10, Lhj3;->g:Z

    .line 694
    .line 695
    if-nez v10, :cond_25

    .line 696
    .line 697
    :cond_24
    add-int/2addr v9, v11

    .line 698
    :cond_25
    add-int/lit8 v8, v8, 0x1

    .line 699
    .line 700
    goto :goto_1c

    .line 701
    :cond_26
    const/16 v8, 0xa

    .line 702
    .line 703
    if-ne v4, v8, :cond_2c

    .line 704
    .line 705
    invoke-static {v0, v9}, Leb7;->n(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    .line 706
    .line 707
    .line 708
    move-result-object v4

    .line 709
    new-array v6, v9, [J

    .line 710
    .line 711
    const/4 v7, 0x0

    .line 712
    :goto_1d
    if-ge v7, v9, :cond_28

    .line 713
    .line 714
    invoke-virtual {v4, v7}, Ljava/util/BitSet;->get(I)Z

    .line 715
    .line 716
    .line 717
    move-result v8

    .line 718
    if-eqz v8, :cond_27

    .line 719
    .line 720
    const/4 v8, 0x4

    .line 721
    invoke-static {v0, v8}, Leb7;->g(Ljava/nio/ByteBuffer;I)V

    .line 722
    .line 723
    .line 724
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 725
    .line 726
    .line 727
    move-result v10

    .line 728
    int-to-long v10, v10

    .line 729
    and-long v10, v10, v20

    .line 730
    .line 731
    aput-wide v10, v6, v7

    .line 732
    .line 733
    goto :goto_1e

    .line 734
    :cond_27
    const/4 v8, 0x4

    .line 735
    :goto_1e
    add-int/lit8 v7, v7, 0x1

    .line 736
    .line 737
    goto :goto_1d

    .line 738
    :cond_28
    iget-object v7, v1, Lg40;->e:[Lhj3;

    .line 739
    .line 740
    array-length v8, v7

    .line 741
    const/4 v9, 0x0

    .line 742
    const/4 v10, 0x0

    .line 743
    const/4 v11, 0x0

    .line 744
    :goto_1f
    if-ge v9, v8, :cond_2b

    .line 745
    .line 746
    aget-object v12, v7, v9

    .line 747
    .line 748
    iget v13, v12, Lhj3;->i:I

    .line 749
    .line 750
    const/4 v14, 0x1

    .line 751
    if-ne v13, v14, :cond_29

    .line 752
    .line 753
    iget-boolean v13, v12, Lhj3;->g:Z

    .line 754
    .line 755
    if-eqz v13, :cond_29

    .line 756
    .line 757
    invoke-virtual {v5, v10, v14}, Ljava/util/BitSet;->set(IZ)V

    .line 758
    .line 759
    .line 760
    iget-wide v12, v12, Lhj3;->h:J

    .line 761
    .line 762
    aput-wide v12, v2, v10

    .line 763
    .line 764
    add-int/lit8 v10, v10, 0x1

    .line 765
    .line 766
    goto :goto_21

    .line 767
    :cond_29
    const/4 v13, 0x0

    .line 768
    :goto_20
    iget v15, v12, Lhj3;->i:I

    .line 769
    .line 770
    if-ge v13, v15, :cond_2a

    .line 771
    .line 772
    invoke-virtual {v4, v11}, Ljava/util/BitSet;->get(I)Z

    .line 773
    .line 774
    .line 775
    move-result v15

    .line 776
    invoke-virtual {v5, v10, v15}, Ljava/util/BitSet;->set(IZ)V

    .line 777
    .line 778
    .line 779
    aget-wide v15, v6, v11

    .line 780
    .line 781
    aput-wide v15, v2, v10

    .line 782
    .line 783
    add-int/lit8 v10, v10, 0x1

    .line 784
    .line 785
    add-int/lit8 v11, v11, 0x1

    .line 786
    .line 787
    add-int/lit8 v13, v13, 0x1

    .line 788
    .line 789
    goto :goto_20

    .line 790
    :cond_2a
    :goto_21
    add-int/lit8 v9, v9, 0x1

    .line 791
    .line 792
    goto :goto_1f

    .line 793
    :cond_2b
    invoke-static {v0}, Leb7;->m(Ljava/nio/ByteBuffer;)I

    .line 794
    .line 795
    .line 796
    :cond_2c
    iput-object v3, v1, Lg40;->f:Ll22;

    .line 797
    .line 798
    invoke-static {v0}, Leb7;->m(Ljava/nio/ByteBuffer;)I

    .line 799
    .line 800
    .line 801
    :cond_2d
    return-void
.end method

.method public static v(Ljava/nio/ByteBuffer;)J
    .locals 11

    .line 1
    invoke-static {p0}, Leb7;->m(Ljava/nio/ByteBuffer;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-long v0, v0

    .line 6
    const/16 v2, 0x80

    .line 7
    .line 8
    const-wide/16 v3, 0x0

    .line 9
    .line 10
    const/4 v5, 0x0

    .line 11
    move-wide v6, v3

    .line 12
    :goto_0
    const/16 v8, 0x8

    .line 13
    .line 14
    if-ge v5, v8, :cond_1

    .line 15
    .line 16
    int-to-long v9, v2

    .line 17
    and-long/2addr v9, v0

    .line 18
    cmp-long v9, v9, v3

    .line 19
    .line 20
    if-nez v9, :cond_0

    .line 21
    .line 22
    add-int/lit8 v2, v2, -0x1

    .line 23
    .line 24
    int-to-long v2, v2

    .line 25
    and-long/2addr v0, v2

    .line 26
    mul-int/2addr v5, v8

    .line 27
    shl-long/2addr v0, v5

    .line 28
    or-long/2addr v0, v6

    .line 29
    return-wide v0

    .line 30
    :cond_0
    invoke-static {p0}, Leb7;->m(Ljava/nio/ByteBuffer;)I

    .line 31
    .line 32
    .line 33
    move-result v8

    .line 34
    int-to-long v8, v8

    .line 35
    mul-int/lit8 v10, v5, 0x8

    .line 36
    .line 37
    shl-long/2addr v8, v10

    .line 38
    or-long/2addr v6, v8

    .line 39
    ushr-int/lit8 v2, v2, 0x1

    .line 40
    .line 41
    add-int/lit8 v5, v5, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    return-wide v6
.end method


# virtual methods
.method public final A(Ljava/nio/ByteBuffer;Lcb7;)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    invoke-static {v1}, Leb7;->m(Ljava/nio/ByteBuffer;)I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    const/4 v4, 0x6

    .line 12
    const/16 v5, 0x9

    .line 13
    .line 14
    const/16 v6, 0xa

    .line 15
    .line 16
    const-wide/16 v8, 0x0

    .line 17
    .line 18
    if-ne v3, v4, :cond_7

    .line 19
    .line 20
    invoke-static {v1}, Leb7;->v(Ljava/nio/ByteBuffer;)J

    .line 21
    .line 22
    .line 23
    move-result-wide v3

    .line 24
    cmp-long v10, v3, v8

    .line 25
    .line 26
    const-string v11, ") is out of range"

    .line 27
    .line 28
    if-ltz v10, :cond_6

    .line 29
    .line 30
    const-wide/16 v12, 0x20

    .line 31
    .line 32
    add-long/2addr v12, v3

    .line 33
    iget-object v10, v0, Leb7;->b:Ljava/nio/channels/SeekableByteChannel;

    .line 34
    .line 35
    invoke-interface {v10}, Ljava/nio/channels/SeekableByteChannel;->size()J

    .line 36
    .line 37
    .line 38
    move-result-wide v14

    .line 39
    cmp-long v10, v12, v14

    .line 40
    .line 41
    if-gtz v10, :cond_6

    .line 42
    .line 43
    cmp-long v10, v12, v8

    .line 44
    .line 45
    if-ltz v10, :cond_6

    .line 46
    .line 47
    invoke-static {v1}, Leb7;->v(Ljava/nio/ByteBuffer;)J

    .line 48
    .line 49
    .line 50
    move-result-wide v14

    .line 51
    const-string v10, "numPackStreams"

    .line 52
    .line 53
    invoke-static {v14, v15, v10}, Leb7;->a(JLjava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result v10

    .line 57
    iput v10, v2, Lcb7;->a:I

    .line 58
    .line 59
    invoke-static {v1}, Leb7;->m(Ljava/nio/ByteBuffer;)I

    .line 60
    .line 61
    .line 62
    move-result v10

    .line 63
    if-ne v10, v5, :cond_2

    .line 64
    .line 65
    move-wide v14, v8

    .line 66
    move-wide/from16 v16, v14

    .line 67
    .line 68
    const/4 v10, 0x0

    .line 69
    :goto_0
    iget v8, v2, Lcb7;->a:I

    .line 70
    .line 71
    if-ge v10, v8, :cond_1

    .line 72
    .line 73
    invoke-static {v1}, Leb7;->v(Ljava/nio/ByteBuffer;)J

    .line 74
    .line 75
    .line 76
    move-result-wide v8

    .line 77
    add-long/2addr v14, v8

    .line 78
    add-long v18, v12, v14

    .line 79
    .line 80
    cmp-long v20, v8, v16

    .line 81
    .line 82
    if-ltz v20, :cond_0

    .line 83
    .line 84
    iget-object v5, v0, Leb7;->b:Ljava/nio/channels/SeekableByteChannel;

    .line 85
    .line 86
    invoke-interface {v5}, Ljava/nio/channels/SeekableByteChannel;->size()J

    .line 87
    .line 88
    .line 89
    move-result-wide v21

    .line 90
    cmp-long v5, v18, v21

    .line 91
    .line 92
    if-gtz v5, :cond_0

    .line 93
    .line 94
    cmp-long v5, v18, v3

    .line 95
    .line 96
    if-ltz v5, :cond_0

    .line 97
    .line 98
    add-int/lit8 v10, v10, 0x1

    .line 99
    .line 100
    const/16 v5, 0x9

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_0
    const-string v0, "packSize ("

    .line 104
    .line 105
    invoke-static {v0, v11, v8, v9}, Lfz5;->m(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-static {v0}, Ly5;->m(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    return-void

    .line 113
    :cond_1
    invoke-static {v1}, Leb7;->m(Ljava/nio/ByteBuffer;)I

    .line 114
    .line 115
    .line 116
    move-result v10

    .line 117
    goto :goto_1

    .line 118
    :cond_2
    move-wide/from16 v16, v8

    .line 119
    .line 120
    :goto_1
    if-ne v10, v6, :cond_4

    .line 121
    .line 122
    iget v0, v2, Lcb7;->a:I

    .line 123
    .line 124
    invoke-static {v1, v0}, Leb7;->n(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    mul-int/lit8 v0, v0, 0x4

    .line 133
    .line 134
    int-to-long v3, v0

    .line 135
    invoke-static {v3, v4, v1}, Leb7;->D(JLjava/nio/ByteBuffer;)J

    .line 136
    .line 137
    .line 138
    move-result-wide v8

    .line 139
    cmp-long v0, v8, v3

    .line 140
    .line 141
    if-ltz v0, :cond_3

    .line 142
    .line 143
    invoke-static {v1}, Leb7;->m(Ljava/nio/ByteBuffer;)I

    .line 144
    .line 145
    .line 146
    move-result v10

    .line 147
    goto :goto_2

    .line 148
    :cond_3
    const-string v0, "invalid number of CRCs in PackInfo"

    .line 149
    .line 150
    invoke-static {v0}, Ly5;->m(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    return-void

    .line 154
    :cond_4
    :goto_2
    if-nez v10, :cond_5

    .line 155
    .line 156
    invoke-static {v1}, Leb7;->m(Ljava/nio/ByteBuffer;)I

    .line 157
    .line 158
    .line 159
    move-result v3

    .line 160
    goto :goto_3

    .line 161
    :cond_5
    const-string v0, "Badly terminated PackInfo ("

    .line 162
    .line 163
    const-string v1, ")"

    .line 164
    .line 165
    invoke-static {v10, v0, v1}, Lxs1;->h(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-static {v0}, Ly5;->m(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    return-void

    .line 173
    :cond_6
    const-string v0, "packPos ("

    .line 174
    .line 175
    invoke-static {v0, v11, v3, v4}, Lfz5;->m(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    invoke-static {v0}, Ly5;->m(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    return-void

    .line 183
    :cond_7
    move-wide/from16 v16, v8

    .line 184
    .line 185
    :goto_3
    const/4 v0, 0x7

    .line 186
    const-string v4, "negative unpackSize"

    .line 187
    .line 188
    if-ne v3, v0, :cond_24

    .line 189
    .line 190
    invoke-static {v1}, Leb7;->m(Ljava/nio/ByteBuffer;)I

    .line 191
    .line 192
    .line 193
    move-result v0

    .line 194
    const/16 v3, 0xb

    .line 195
    .line 196
    if-ne v0, v3, :cond_23

    .line 197
    .line 198
    invoke-static {v1}, Leb7;->v(Ljava/nio/ByteBuffer;)J

    .line 199
    .line 200
    .line 201
    move-result-wide v8

    .line 202
    const-string v0, "numFolders"

    .line 203
    .line 204
    invoke-static {v8, v9, v0}, Leb7;->a(JLjava/lang/String;)I

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    iput v0, v2, Lcb7;->f:I

    .line 209
    .line 210
    invoke-static {v1}, Leb7;->m(Ljava/nio/ByteBuffer;)I

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    if-nez v0, :cond_22

    .line 215
    .line 216
    new-instance v0, Ljava/util/LinkedList;

    .line 217
    .line 218
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 219
    .line 220
    .line 221
    const/4 v3, 0x0

    .line 222
    :goto_4
    iget v8, v2, Lcb7;->f:I

    .line 223
    .line 224
    if-ge v3, v8, :cond_19

    .line 225
    .line 226
    const-string v8, "numCoders"

    .line 227
    .line 228
    invoke-static {v1}, Leb7;->v(Ljava/nio/ByteBuffer;)J

    .line 229
    .line 230
    .line 231
    move-result-wide v9

    .line 232
    invoke-static {v9, v10, v8}, Leb7;->a(JLjava/lang/String;)I

    .line 233
    .line 234
    .line 235
    move-result v8

    .line 236
    if-eqz v8, :cond_18

    .line 237
    .line 238
    int-to-long v9, v8

    .line 239
    iget-wide v11, v2, Lcb7;->b:J

    .line 240
    .line 241
    add-long/2addr v11, v9

    .line 242
    iput-wide v11, v2, Lcb7;->b:J

    .line 243
    .line 244
    move-wide/from16 v10, v16

    .line 245
    .line 246
    move-wide v12, v10

    .line 247
    const/4 v9, 0x0

    .line 248
    :goto_5
    if-ge v9, v8, :cond_e

    .line 249
    .line 250
    const-wide/16 v18, 0x1

    .line 251
    .line 252
    invoke-static {v1}, Leb7;->m(Ljava/nio/ByteBuffer;)I

    .line 253
    .line 254
    .line 255
    move-result v14

    .line 256
    and-int/lit8 v15, v14, 0xf

    .line 257
    .line 258
    new-array v6, v15, [B

    .line 259
    .line 260
    invoke-static {v1, v15}, Leb7;->g(Ljava/nio/ByteBuffer;I)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 264
    .line 265
    .line 266
    and-int/lit8 v6, v14, 0x10

    .line 267
    .line 268
    if-nez v6, :cond_8

    .line 269
    .line 270
    const/4 v6, 0x1

    .line 271
    goto :goto_6

    .line 272
    :cond_8
    const/4 v6, 0x0

    .line 273
    :goto_6
    and-int/lit8 v15, v14, 0x20

    .line 274
    .line 275
    if-eqz v15, :cond_9

    .line 276
    .line 277
    const/4 v15, 0x1

    .line 278
    goto :goto_7

    .line 279
    :cond_9
    const/4 v15, 0x0

    .line 280
    :goto_7
    and-int/lit16 v14, v14, 0x80

    .line 281
    .line 282
    if-nez v14, :cond_d

    .line 283
    .line 284
    if-eqz v6, :cond_a

    .line 285
    .line 286
    add-long v10, v10, v18

    .line 287
    .line 288
    add-long v12, v12, v18

    .line 289
    .line 290
    move/from16 p0, v8

    .line 291
    .line 292
    goto :goto_8

    .line 293
    :cond_a
    const-string v6, "numInStreams"

    .line 294
    .line 295
    move/from16 p0, v8

    .line 296
    .line 297
    invoke-static {v1}, Leb7;->v(Ljava/nio/ByteBuffer;)J

    .line 298
    .line 299
    .line 300
    move-result-wide v7

    .line 301
    invoke-static {v7, v8, v6}, Leb7;->a(JLjava/lang/String;)I

    .line 302
    .line 303
    .line 304
    move-result v6

    .line 305
    int-to-long v6, v6

    .line 306
    add-long/2addr v10, v6

    .line 307
    const-string v6, "numOutStreams"

    .line 308
    .line 309
    invoke-static {v1}, Leb7;->v(Ljava/nio/ByteBuffer;)J

    .line 310
    .line 311
    .line 312
    move-result-wide v7

    .line 313
    invoke-static {v7, v8, v6}, Leb7;->a(JLjava/lang/String;)I

    .line 314
    .line 315
    .line 316
    move-result v6

    .line 317
    int-to-long v6, v6

    .line 318
    add-long/2addr v12, v6

    .line 319
    :goto_8
    if-eqz v15, :cond_c

    .line 320
    .line 321
    const-string v6, "propertiesSize"

    .line 322
    .line 323
    invoke-static {v1}, Leb7;->v(Ljava/nio/ByteBuffer;)J

    .line 324
    .line 325
    .line 326
    move-result-wide v7

    .line 327
    invoke-static {v7, v8, v6}, Leb7;->a(JLjava/lang/String;)I

    .line 328
    .line 329
    .line 330
    move-result v6

    .line 331
    int-to-long v6, v6

    .line 332
    invoke-static {v6, v7, v1}, Leb7;->D(JLjava/nio/ByteBuffer;)J

    .line 333
    .line 334
    .line 335
    move-result-wide v18

    .line 336
    cmp-long v6, v18, v6

    .line 337
    .line 338
    if-ltz v6, :cond_b

    .line 339
    .line 340
    goto :goto_9

    .line 341
    :cond_b
    const-string v0, "invalid propertiesSize in folder"

    .line 342
    .line 343
    invoke-static {v0}, Ly5;->m(Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    return-void

    .line 347
    :cond_c
    :goto_9
    add-int/lit8 v9, v9, 0x1

    .line 348
    .line 349
    move/from16 v8, p0

    .line 350
    .line 351
    const/16 v6, 0xa

    .line 352
    .line 353
    goto :goto_5

    .line 354
    :cond_d
    const-string v0, "Alternative methods are unsupported, please report. The reference implementation doesn\'t support them either."

    .line 355
    .line 356
    invoke-static {v0}, Ly5;->m(Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    return-void

    .line 360
    :cond_e
    const-wide/16 v18, 0x1

    .line 361
    .line 362
    const-string v6, "totalInStreams"

    .line 363
    .line 364
    invoke-static {v10, v11, v6}, Leb7;->a(JLjava/lang/String;)I

    .line 365
    .line 366
    .line 367
    const-string v6, "totalOutStreams"

    .line 368
    .line 369
    invoke-static {v12, v13, v6}, Leb7;->a(JLjava/lang/String;)I

    .line 370
    .line 371
    .line 372
    iget-wide v6, v2, Lcb7;->c:J

    .line 373
    .line 374
    add-long/2addr v6, v12

    .line 375
    iput-wide v6, v2, Lcb7;->c:J

    .line 376
    .line 377
    iget-wide v6, v2, Lcb7;->d:J

    .line 378
    .line 379
    add-long/2addr v6, v10

    .line 380
    iput-wide v6, v2, Lcb7;->d:J

    .line 381
    .line 382
    cmp-long v6, v12, v16

    .line 383
    .line 384
    if-eqz v6, :cond_17

    .line 385
    .line 386
    const-string v6, "numBindPairs"

    .line 387
    .line 388
    sub-long v7, v12, v18

    .line 389
    .line 390
    invoke-static {v7, v8, v6}, Leb7;->a(JLjava/lang/String;)I

    .line 391
    .line 392
    .line 393
    move-result v6

    .line 394
    int-to-long v7, v6

    .line 395
    cmp-long v9, v10, v7

    .line 396
    .line 397
    if-ltz v9, :cond_16

    .line 398
    .line 399
    new-instance v9, Ljava/util/BitSet;

    .line 400
    .line 401
    long-to-int v15, v10

    .line 402
    invoke-direct {v9, v15}, Ljava/util/BitSet;-><init>(I)V

    .line 403
    .line 404
    .line 405
    const/4 v15, 0x0

    .line 406
    :goto_a
    if-ge v15, v6, :cond_11

    .line 407
    .line 408
    const-string v14, "inIndex"

    .line 409
    .line 410
    move/from16 v19, v6

    .line 411
    .line 412
    invoke-static {v1}, Leb7;->v(Ljava/nio/ByteBuffer;)J

    .line 413
    .line 414
    .line 415
    move-result-wide v5

    .line 416
    invoke-static {v5, v6, v14}, Leb7;->a(JLjava/lang/String;)I

    .line 417
    .line 418
    .line 419
    move-result v5

    .line 420
    move v14, v3

    .line 421
    move-object v6, v4

    .line 422
    int-to-long v3, v5

    .line 423
    cmp-long v3, v10, v3

    .line 424
    .line 425
    if-lez v3, :cond_10

    .line 426
    .line 427
    invoke-virtual {v9, v5}, Ljava/util/BitSet;->set(I)V

    .line 428
    .line 429
    .line 430
    const-string v3, "outIndex"

    .line 431
    .line 432
    invoke-static {v1}, Leb7;->v(Ljava/nio/ByteBuffer;)J

    .line 433
    .line 434
    .line 435
    move-result-wide v4

    .line 436
    invoke-static {v4, v5, v3}, Leb7;->a(JLjava/lang/String;)I

    .line 437
    .line 438
    .line 439
    move-result v3

    .line 440
    int-to-long v3, v3

    .line 441
    cmp-long v3, v12, v3

    .line 442
    .line 443
    if-lez v3, :cond_f

    .line 444
    .line 445
    add-int/lit8 v15, v15, 0x1

    .line 446
    .line 447
    move-object v4, v6

    .line 448
    move v3, v14

    .line 449
    move/from16 v6, v19

    .line 450
    .line 451
    goto :goto_a

    .line 452
    :cond_f
    const-string v0, "outIndex is bigger than number of outStreams"

    .line 453
    .line 454
    invoke-static {v0}, Ly5;->m(Ljava/lang/String;)V

    .line 455
    .line 456
    .line 457
    return-void

    .line 458
    :cond_10
    const-string v0, "inIndex is bigger than number of inStreams"

    .line 459
    .line 460
    invoke-static {v0}, Ly5;->m(Ljava/lang/String;)V

    .line 461
    .line 462
    .line 463
    return-void

    .line 464
    :cond_11
    move v14, v3

    .line 465
    move-object v6, v4

    .line 466
    const-string v3, "numPackedStreams"

    .line 467
    .line 468
    sub-long v4, v10, v7

    .line 469
    .line 470
    invoke-static {v4, v5, v3}, Leb7;->a(JLjava/lang/String;)I

    .line 471
    .line 472
    .line 473
    move-result v3

    .line 474
    const/4 v4, 0x1

    .line 475
    if-ne v3, v4, :cond_13

    .line 476
    .line 477
    const/4 v4, 0x0

    .line 478
    invoke-virtual {v9, v4}, Ljava/util/BitSet;->nextClearBit(I)I

    .line 479
    .line 480
    .line 481
    move-result v3

    .line 482
    const/4 v5, -0x1

    .line 483
    if-eq v3, v5, :cond_12

    .line 484
    .line 485
    goto :goto_c

    .line 486
    :cond_12
    const-string v0, "Couldn\'t find stream\'s bind pair index"

    .line 487
    .line 488
    invoke-static {v0}, Ly5;->m(Ljava/lang/String;)V

    .line 489
    .line 490
    .line 491
    return-void

    .line 492
    :cond_13
    const/4 v4, 0x0

    .line 493
    move v5, v4

    .line 494
    :goto_b
    if-ge v5, v3, :cond_15

    .line 495
    .line 496
    const-string v7, "packedStreamIndex"

    .line 497
    .line 498
    invoke-static {v1}, Leb7;->v(Ljava/nio/ByteBuffer;)J

    .line 499
    .line 500
    .line 501
    move-result-wide v8

    .line 502
    invoke-static {v8, v9, v7}, Leb7;->a(JLjava/lang/String;)I

    .line 503
    .line 504
    .line 505
    move-result v7

    .line 506
    int-to-long v7, v7

    .line 507
    cmp-long v7, v7, v10

    .line 508
    .line 509
    if-gez v7, :cond_14

    .line 510
    .line 511
    add-int/lit8 v5, v5, 0x1

    .line 512
    .line 513
    goto :goto_b

    .line 514
    :cond_14
    const-string v0, "packedStreamIndex is bigger than number of totalInStreams"

    .line 515
    .line 516
    invoke-static {v0}, Ly5;->m(Ljava/lang/String;)V

    .line 517
    .line 518
    .line 519
    return-void

    .line 520
    :cond_15
    :goto_c
    long-to-int v3, v12

    .line 521
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 522
    .line 523
    .line 524
    move-result-object v3

    .line 525
    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 526
    .line 527
    .line 528
    add-int/lit8 v3, v14, 0x1

    .line 529
    .line 530
    move-object v4, v6

    .line 531
    const/16 v6, 0xa

    .line 532
    .line 533
    goto/16 :goto_4

    .line 534
    .line 535
    :cond_16
    const-string v0, "Total input streams can\'t be less than the number of bind pairs"

    .line 536
    .line 537
    invoke-static {v0}, Ly5;->m(Ljava/lang/String;)V

    .line 538
    .line 539
    .line 540
    return-void

    .line 541
    :cond_17
    const-string v0, "Total output streams can\'t be 0"

    .line 542
    .line 543
    invoke-static {v0}, Ly5;->m(Ljava/lang/String;)V

    .line 544
    .line 545
    .line 546
    return-void

    .line 547
    :cond_18
    const-string v0, "Folder without coders"

    .line 548
    .line 549
    invoke-static {v0}, Ly5;->m(Ljava/lang/String;)V

    .line 550
    .line 551
    .line 552
    return-void

    .line 553
    :cond_19
    move-object v6, v4

    .line 554
    const/4 v4, 0x0

    .line 555
    iget-wide v9, v2, Lcb7;->c:J

    .line 556
    .line 557
    int-to-long v7, v8

    .line 558
    sub-long/2addr v9, v7

    .line 559
    iget-wide v7, v2, Lcb7;->d:J

    .line 560
    .line 561
    sub-long/2addr v7, v9

    .line 562
    iget v3, v2, Lcb7;->a:I

    .line 563
    .line 564
    int-to-long v9, v3

    .line 565
    cmp-long v3, v7, v9

    .line 566
    .line 567
    if-ltz v3, :cond_21

    .line 568
    .line 569
    invoke-static {v1}, Leb7;->m(Ljava/nio/ByteBuffer;)I

    .line 570
    .line 571
    .line 572
    move-result v3

    .line 573
    const/16 v5, 0xc

    .line 574
    .line 575
    if-ne v3, v5, :cond_20

    .line 576
    .line 577
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 578
    .line 579
    .line 580
    move-result-object v0

    .line 581
    :cond_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 582
    .line 583
    .line 584
    move-result v3

    .line 585
    if-eqz v3, :cond_1c

    .line 586
    .line 587
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 588
    .line 589
    .line 590
    move-result-object v3

    .line 591
    check-cast v3, Ljava/lang/Integer;

    .line 592
    .line 593
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 594
    .line 595
    .line 596
    move-result v3

    .line 597
    move v5, v4

    .line 598
    :goto_d
    if-ge v5, v3, :cond_1a

    .line 599
    .line 600
    invoke-static {v1}, Leb7;->v(Ljava/nio/ByteBuffer;)J

    .line 601
    .line 602
    .line 603
    move-result-wide v7

    .line 604
    cmp-long v7, v7, v16

    .line 605
    .line 606
    if-ltz v7, :cond_1b

    .line 607
    .line 608
    add-int/lit8 v5, v5, 0x1

    .line 609
    .line 610
    goto :goto_d

    .line 611
    :cond_1b
    invoke-static {v6}, Lc6;->f(Ljava/lang/String;)V

    .line 612
    .line 613
    .line 614
    return-void

    .line 615
    :cond_1c
    invoke-static {v1}, Leb7;->m(Ljava/nio/ByteBuffer;)I

    .line 616
    .line 617
    .line 618
    move-result v0

    .line 619
    const/16 v3, 0xa

    .line 620
    .line 621
    if-ne v0, v3, :cond_1e

    .line 622
    .line 623
    iget v0, v2, Lcb7;->f:I

    .line 624
    .line 625
    invoke-static {v1, v0}, Leb7;->n(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    .line 626
    .line 627
    .line 628
    move-result-object v0

    .line 629
    iput-object v0, v2, Lcb7;->g:Ljava/util/BitSet;

    .line 630
    .line 631
    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    .line 632
    .line 633
    .line 634
    move-result v0

    .line 635
    mul-int/lit8 v0, v0, 0x4

    .line 636
    .line 637
    int-to-long v7, v0

    .line 638
    invoke-static {v7, v8, v1}, Leb7;->D(JLjava/nio/ByteBuffer;)J

    .line 639
    .line 640
    .line 641
    move-result-wide v9

    .line 642
    cmp-long v0, v9, v7

    .line 643
    .line 644
    if-ltz v0, :cond_1d

    .line 645
    .line 646
    invoke-static {v1}, Leb7;->m(Ljava/nio/ByteBuffer;)I

    .line 647
    .line 648
    .line 649
    move-result v0

    .line 650
    goto :goto_e

    .line 651
    :cond_1d
    const-string v0, "invalid number of CRCs in UnpackInfo"

    .line 652
    .line 653
    invoke-static {v0}, Ly5;->m(Ljava/lang/String;)V

    .line 654
    .line 655
    .line 656
    return-void

    .line 657
    :cond_1e
    :goto_e
    if-nez v0, :cond_1f

    .line 658
    .line 659
    invoke-static {v1}, Leb7;->m(Ljava/nio/ByteBuffer;)I

    .line 660
    .line 661
    .line 662
    move-result v3

    .line 663
    goto :goto_f

    .line 664
    :cond_1f
    const-string v0, "Badly terminated UnpackInfo"

    .line 665
    .line 666
    invoke-static {v0}, Ly5;->m(Ljava/lang/String;)V

    .line 667
    .line 668
    .line 669
    return-void

    .line 670
    :cond_20
    const-string v0, "Expected kCodersUnpackSize, got "

    .line 671
    .line 672
    invoke-static {v3, v0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 673
    .line 674
    .line 675
    move-result-object v0

    .line 676
    invoke-static {v0}, Ly5;->m(Ljava/lang/String;)V

    .line 677
    .line 678
    .line 679
    return-void

    .line 680
    :cond_21
    const-string v0, "archive doesn\'t contain enough packed streams"

    .line 681
    .line 682
    invoke-static {v0}, Ly5;->m(Ljava/lang/String;)V

    .line 683
    .line 684
    .line 685
    return-void

    .line 686
    :cond_22
    const-string v0, "External unsupported"

    .line 687
    .line 688
    invoke-static {v0}, Ly5;->m(Ljava/lang/String;)V

    .line 689
    .line 690
    .line 691
    return-void

    .line 692
    :cond_23
    const-string v1, "Expected kFolder, got "

    .line 693
    .line 694
    invoke-static {v0, v1}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 695
    .line 696
    .line 697
    move-result-object v0

    .line 698
    invoke-static {v0}, Ly5;->m(Ljava/lang/String;)V

    .line 699
    .line 700
    .line 701
    return-void

    .line 702
    :cond_24
    move-object v6, v4

    .line 703
    const/4 v4, 0x0

    .line 704
    :goto_f
    const/16 v0, 0x8

    .line 705
    .line 706
    if-ne v3, v0, :cond_34

    .line 707
    .line 708
    invoke-static {v1}, Leb7;->m(Ljava/nio/ByteBuffer;)I

    .line 709
    .line 710
    .line 711
    move-result v0

    .line 712
    new-instance v3, Ljava/util/LinkedList;

    .line 713
    .line 714
    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 715
    .line 716
    .line 717
    const/16 v5, 0xd

    .line 718
    .line 719
    if-ne v0, v5, :cond_26

    .line 720
    .line 721
    move v0, v4

    .line 722
    :goto_10
    iget v5, v2, Lcb7;->f:I

    .line 723
    .line 724
    if-ge v0, v5, :cond_25

    .line 725
    .line 726
    const-string v5, "numStreams"

    .line 727
    .line 728
    invoke-static {v1}, Leb7;->v(Ljava/nio/ByteBuffer;)J

    .line 729
    .line 730
    .line 731
    move-result-wide v7

    .line 732
    invoke-static {v7, v8, v5}, Leb7;->a(JLjava/lang/String;)I

    .line 733
    .line 734
    .line 735
    move-result v5

    .line 736
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 737
    .line 738
    .line 739
    move-result-object v5

    .line 740
    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 741
    .line 742
    .line 743
    add-int/lit8 v0, v0, 0x1

    .line 744
    .line 745
    goto :goto_10

    .line 746
    :cond_25
    invoke-interface {v3}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 747
    .line 748
    .line 749
    move-result-object v0

    .line 750
    new-instance v5, Lza7;

    .line 751
    .line 752
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 753
    .line 754
    .line 755
    invoke-interface {v0, v5}, Ljava/util/stream/Stream;->mapToLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/LongStream;

    .line 756
    .line 757
    .line 758
    move-result-object v0

    .line 759
    invoke-interface {v0}, Ljava/util/stream/LongStream;->sum()J

    .line 760
    .line 761
    .line 762
    move-result-wide v7

    .line 763
    iput-wide v7, v2, Lcb7;->e:J

    .line 764
    .line 765
    invoke-static {v1}, Leb7;->m(Ljava/nio/ByteBuffer;)I

    .line 766
    .line 767
    .line 768
    move-result v0

    .line 769
    goto :goto_11

    .line 770
    :cond_26
    iget v5, v2, Lcb7;->f:I

    .line 771
    .line 772
    int-to-long v7, v5

    .line 773
    iput-wide v7, v2, Lcb7;->e:J

    .line 774
    .line 775
    :goto_11
    const-string v5, "totalUnpackStreams"

    .line 776
    .line 777
    iget-wide v7, v2, Lcb7;->e:J

    .line 778
    .line 779
    invoke-static {v7, v8, v5}, Leb7;->a(JLjava/lang/String;)I

    .line 780
    .line 781
    .line 782
    const/16 v5, 0x9

    .line 783
    .line 784
    if-ne v0, v5, :cond_2b

    .line 785
    .line 786
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 787
    .line 788
    .line 789
    move-result-object v0

    .line 790
    :cond_27
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 791
    .line 792
    .line 793
    move-result v5

    .line 794
    if-eqz v5, :cond_2a

    .line 795
    .line 796
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 797
    .line 798
    .line 799
    move-result-object v5

    .line 800
    check-cast v5, Ljava/lang/Integer;

    .line 801
    .line 802
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 803
    .line 804
    .line 805
    move-result v5

    .line 806
    if-nez v5, :cond_28

    .line 807
    .line 808
    goto :goto_12

    .line 809
    :cond_28
    move v7, v4

    .line 810
    :goto_13
    add-int/lit8 v8, v5, -0x1

    .line 811
    .line 812
    if-ge v7, v8, :cond_27

    .line 813
    .line 814
    invoke-static {v1}, Leb7;->v(Ljava/nio/ByteBuffer;)J

    .line 815
    .line 816
    .line 817
    move-result-wide v8

    .line 818
    cmp-long v8, v8, v16

    .line 819
    .line 820
    if-ltz v8, :cond_29

    .line 821
    .line 822
    add-int/lit8 v7, v7, 0x1

    .line 823
    .line 824
    goto :goto_13

    .line 825
    :cond_29
    invoke-static {v6}, Ly5;->m(Ljava/lang/String;)V

    .line 826
    .line 827
    .line 828
    return-void

    .line 829
    :cond_2a
    invoke-static {v1}, Leb7;->m(Ljava/nio/ByteBuffer;)I

    .line 830
    .line 831
    .line 832
    move-result v0

    .line 833
    :cond_2b
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 834
    .line 835
    .line 836
    move-result v5

    .line 837
    if-eqz v5, :cond_2d

    .line 838
    .line 839
    iget-object v3, v2, Lcb7;->g:Ljava/util/BitSet;

    .line 840
    .line 841
    iget v2, v2, Lcb7;->f:I

    .line 842
    .line 843
    if-nez v3, :cond_2c

    .line 844
    .line 845
    goto :goto_14

    .line 846
    :cond_2c
    invoke-virtual {v3}, Ljava/util/BitSet;->cardinality()I

    .line 847
    .line 848
    .line 849
    move-result v3

    .line 850
    sub-int/2addr v2, v3

    .line 851
    :goto_14
    const/16 v3, 0xa

    .line 852
    .line 853
    goto :goto_17

    .line 854
    :cond_2d
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 855
    .line 856
    .line 857
    move-result-object v3

    .line 858
    move v7, v4

    .line 859
    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 860
    .line 861
    .line 862
    move-result v5

    .line 863
    if-eqz v5, :cond_30

    .line 864
    .line 865
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 866
    .line 867
    .line 868
    move-result-object v5

    .line 869
    check-cast v5, Ljava/lang/Integer;

    .line 870
    .line 871
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 872
    .line 873
    .line 874
    move-result v5

    .line 875
    const/4 v6, 0x1

    .line 876
    if-ne v5, v6, :cond_2f

    .line 877
    .line 878
    iget-object v8, v2, Lcb7;->g:Ljava/util/BitSet;

    .line 879
    .line 880
    if-eqz v8, :cond_2f

    .line 881
    .line 882
    add-int/lit8 v9, v4, 0x1

    .line 883
    .line 884
    invoke-virtual {v8, v4}, Ljava/util/BitSet;->get(I)Z

    .line 885
    .line 886
    .line 887
    move-result v4

    .line 888
    if-nez v4, :cond_2e

    .line 889
    .line 890
    move v4, v9

    .line 891
    goto :goto_16

    .line 892
    :cond_2e
    move v4, v9

    .line 893
    goto :goto_15

    .line 894
    :cond_2f
    :goto_16
    add-int/2addr v7, v5

    .line 895
    goto :goto_15

    .line 896
    :cond_30
    move v2, v7

    .line 897
    goto :goto_14

    .line 898
    :goto_17
    if-ne v0, v3, :cond_32

    .line 899
    .line 900
    const-string v0, "numDigests"

    .line 901
    .line 902
    int-to-long v3, v2

    .line 903
    invoke-static {v3, v4, v0}, Leb7;->a(JLjava/lang/String;)I

    .line 904
    .line 905
    .line 906
    invoke-static {v1, v2}, Leb7;->n(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    .line 907
    .line 908
    .line 909
    move-result-object v0

    .line 910
    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    .line 911
    .line 912
    .line 913
    move-result v0

    .line 914
    mul-int/lit8 v0, v0, 0x4

    .line 915
    .line 916
    int-to-long v2, v0

    .line 917
    invoke-static {v2, v3, v1}, Leb7;->D(JLjava/nio/ByteBuffer;)J

    .line 918
    .line 919
    .line 920
    move-result-wide v4

    .line 921
    cmp-long v0, v4, v2

    .line 922
    .line 923
    if-ltz v0, :cond_31

    .line 924
    .line 925
    invoke-static {v1}, Leb7;->m(Ljava/nio/ByteBuffer;)I

    .line 926
    .line 927
    .line 928
    move-result v0

    .line 929
    goto :goto_18

    .line 930
    :cond_31
    const-string v0, "invalid number of missing CRCs in SubStreamInfo"

    .line 931
    .line 932
    invoke-static {v0}, Ly5;->m(Ljava/lang/String;)V

    .line 933
    .line 934
    .line 935
    return-void

    .line 936
    :cond_32
    :goto_18
    if-nez v0, :cond_33

    .line 937
    .line 938
    invoke-static {v1}, Leb7;->m(Ljava/nio/ByteBuffer;)I

    .line 939
    .line 940
    .line 941
    move-result v3

    .line 942
    goto :goto_19

    .line 943
    :cond_33
    const-string v0, "Badly terminated SubStreamsInfo"

    .line 944
    .line 945
    invoke-static {v0}, Ly5;->m(Ljava/lang/String;)V

    .line 946
    .line 947
    .line 948
    return-void

    .line 949
    :cond_34
    :goto_19
    if-nez v3, :cond_35

    .line 950
    .line 951
    return-void

    .line 952
    :cond_35
    const-string v0, "Badly terminated StreamsInfo"

    .line 953
    .line 954
    invoke-static {v0}, Ly5;->m(Ljava/lang/String;)V

    .line 955
    .line 956
    .line 957
    return-void
.end method

.method public final close()V
    .locals 4

    .line 1
    iget-object v0, p0, Leb7;->b:Ljava/nio/channels/SeekableByteChannel;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    :try_start_0
    invoke-interface {v0}, Ljava/nio/channels/Channel;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    iput-object v2, p0, Leb7;->b:Ljava/nio/channels/SeekableByteChannel;

    .line 11
    .line 12
    iget-object v0, p0, Leb7;->k:[B

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iput-object v2, p0, Leb7;->k:[B

    .line 20
    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    iput-object v2, p0, Leb7;->b:Ljava/nio/channels/SeekableByteChannel;

    .line 24
    .line 25
    iget-object v3, p0, Leb7;->k:[B

    .line 26
    .line 27
    if-eqz v3, :cond_1

    .line 28
    .line 29
    invoke-static {v3, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 30
    .line 31
    .line 32
    :cond_1
    iput-object v2, p0, Leb7;->k:[B

    .line 33
    .line 34
    throw v0

    .line 35
    :cond_2
    return-void
.end method

.method public final j(Lwa7;)Ljava/io/InputStream;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Leb7;->n:Ljava/util/ArrayList;

    .line 6
    .line 7
    iget-object v3, v0, Leb7;->c:Lg40;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    move v5, v4

    .line 11
    :goto_0
    iget-object v6, v3, Lg40;->g:[Lwa7;

    .line 12
    .line 13
    array-length v7, v6

    .line 14
    if-ge v5, v7, :cond_1

    .line 15
    .line 16
    aget-object v7, v6, v5

    .line 17
    .line 18
    if-ne v1, v7, :cond_0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 v5, -0x1

    .line 25
    :goto_1
    if-ltz v5, :cond_17

    .line 26
    .line 27
    iget-object v1, v3, Lg40;->h:Ll40;

    .line 28
    .line 29
    if-eqz v1, :cond_16

    .line 30
    .line 31
    iget-object v1, v1, Ll40;->e:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v1, [I

    .line 34
    .line 35
    aget v1, v1, v5

    .line 36
    .line 37
    const-wide/16 v8, 0x0

    .line 38
    .line 39
    const/4 v12, 0x1

    .line 40
    if-gez v1, :cond_2

    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 43
    .line 44
    .line 45
    move/from16 p1, v12

    .line 46
    .line 47
    const/16 v16, 0x0

    .line 48
    .line 49
    goto/16 :goto_7

    .line 50
    .line 51
    :cond_2
    aget-object v13, v6, v5

    .line 52
    .line 53
    iget v14, v0, Leb7;->e:I

    .line 54
    .line 55
    if-ne v14, v1, :cond_5

    .line 56
    .line 57
    if-lez v5, :cond_3

    .line 58
    .line 59
    add-int/lit8 v14, v5, -0x1

    .line 60
    .line 61
    aget-object v6, v6, v14

    .line 62
    .line 63
    iget-object v6, v6, Lwa7;->r:Ljava/util/List;

    .line 64
    .line 65
    invoke-virtual {v13, v6}, Lwa7;->a(Ljava/lang/Iterable;)V

    .line 66
    .line 67
    .line 68
    :cond_3
    iget-object v6, v13, Lwa7;->r:Ljava/util/List;

    .line 69
    .line 70
    if-nez v6, :cond_4

    .line 71
    .line 72
    iget-object v6, v3, Lg40;->h:Ll40;

    .line 73
    .line 74
    iget-object v6, v6, Ll40;->d:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v6, [I

    .line 77
    .line 78
    aget v6, v6, v1

    .line 79
    .line 80
    iget-object v14, v3, Lg40;->g:[Lwa7;

    .line 81
    .line 82
    aget-object v6, v14, v6

    .line 83
    .line 84
    iget-object v6, v6, Lwa7;->r:Ljava/util/List;

    .line 85
    .line 86
    invoke-virtual {v13, v6}, Lwa7;->a(Ljava/lang/Iterable;)V

    .line 87
    .line 88
    .line 89
    :cond_4
    move v6, v12

    .line 90
    goto :goto_2

    .line 91
    :cond_5
    iput v1, v0, Leb7;->e:I

    .line 92
    .line 93
    invoke-virtual {v0, v1, v13}, Leb7;->z(ILwa7;)V

    .line 94
    .line 95
    .line 96
    move v6, v4

    .line 97
    :goto_2
    iget-object v14, v3, Lg40;->g:[Lwa7;

    .line 98
    .line 99
    aget-object v14, v14, v5

    .line 100
    .line 101
    iget v15, v0, Leb7;->d:I

    .line 102
    .line 103
    if-ne v15, v5, :cond_a

    .line 104
    .line 105
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 106
    .line 107
    .line 108
    move-result v15

    .line 109
    if-nez v15, :cond_8

    .line 110
    .line 111
    invoke-static {v2, v12}, Ldj7;->e(Ljava/util/ArrayList;I)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v15

    .line 115
    check-cast v15, Ljava/io/InputStream;

    .line 116
    .line 117
    const/16 v16, 0x0

    .line 118
    .line 119
    instance-of v7, v15, Lc61;

    .line 120
    .line 121
    if-eqz v7, :cond_6

    .line 122
    .line 123
    move-object v7, v15

    .line 124
    check-cast v7, Lc61;

    .line 125
    .line 126
    move/from16 p1, v12

    .line 127
    .line 128
    move-object/from16 v17, v13

    .line 129
    .line 130
    iget-wide v12, v7, Lc61;->e:J

    .line 131
    .line 132
    monitor-enter v7

    .line 133
    const-wide/16 v18, -0x1

    .line 134
    .line 135
    :try_start_0
    iget-wide v10, v7, Lc61;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    .line 137
    monitor-exit v7

    .line 138
    sub-long/2addr v12, v10

    .line 139
    iget-object v7, v3, Lg40;->g:[Lwa7;

    .line 140
    .line 141
    iget v10, v0, Leb7;->d:I

    .line 142
    .line 143
    aget-object v7, v7, v10

    .line 144
    .line 145
    iget-wide v10, v7, Lwa7;->p:J

    .line 146
    .line 147
    cmp-long v7, v12, v10

    .line 148
    .line 149
    if-eqz v7, :cond_9

    .line 150
    .line 151
    goto :goto_4

    .line 152
    :catchall_0
    move-exception v0

    .line 153
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    throw v0

    .line 155
    :cond_6
    move/from16 p1, v12

    .line 156
    .line 157
    move-object/from16 v17, v13

    .line 158
    .line 159
    const-wide/16 v18, -0x1

    .line 160
    .line 161
    instance-of v7, v15, Lwu0;

    .line 162
    .line 163
    if-eqz v7, :cond_9

    .line 164
    .line 165
    check-cast v15, Lwu0;

    .line 166
    .line 167
    iget-wide v10, v15, Lwu0;->e:J

    .line 168
    .line 169
    cmp-long v7, v10, v18

    .line 170
    .line 171
    if-nez v7, :cond_7

    .line 172
    .line 173
    const-wide v10, 0x7fffffffffffffffL

    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    goto :goto_3

    .line 179
    :cond_7
    invoke-virtual {v15}, Lwu0;->g()J

    .line 180
    .line 181
    .line 182
    move-result-wide v12

    .line 183
    sub-long/2addr v10, v12

    .line 184
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    .line 185
    .line 186
    .line 187
    move-result-wide v10

    .line 188
    :goto_3
    iget-object v7, v3, Lg40;->g:[Lwa7;

    .line 189
    .line 190
    iget v12, v0, Leb7;->d:I

    .line 191
    .line 192
    aget-object v7, v7, v12

    .line 193
    .line 194
    iget-wide v12, v7, Lwa7;->p:J

    .line 195
    .line 196
    cmp-long v7, v10, v12

    .line 197
    .line 198
    if-eqz v7, :cond_9

    .line 199
    .line 200
    goto :goto_4

    .line 201
    :cond_8
    move/from16 p1, v12

    .line 202
    .line 203
    move-object/from16 v17, v13

    .line 204
    .line 205
    const/16 v16, 0x0

    .line 206
    .line 207
    const-wide/16 v18, -0x1

    .line 208
    .line 209
    :cond_9
    move v1, v4

    .line 210
    goto/16 :goto_6

    .line 211
    .line 212
    :cond_a
    move/from16 p1, v12

    .line 213
    .line 214
    move-object/from16 v17, v13

    .line 215
    .line 216
    const/16 v16, 0x0

    .line 217
    .line 218
    const-wide/16 v18, -0x1

    .line 219
    .line 220
    :goto_4
    iget-object v7, v3, Lg40;->h:Ll40;

    .line 221
    .line 222
    iget-object v7, v7, Ll40;->d:Ljava/lang/Object;

    .line 223
    .line 224
    check-cast v7, [I

    .line 225
    .line 226
    iget v10, v0, Leb7;->e:I

    .line 227
    .line 228
    aget v7, v7, v10

    .line 229
    .line 230
    if-eqz v6, :cond_c

    .line 231
    .line 232
    iget v6, v0, Leb7;->d:I

    .line 233
    .line 234
    if-ge v6, v5, :cond_b

    .line 235
    .line 236
    add-int/lit8 v7, v6, 0x1

    .line 237
    .line 238
    goto :goto_5

    .line 239
    :cond_b
    invoke-virtual {v0, v1, v14}, Leb7;->z(ILwa7;)V

    .line 240
    .line 241
    .line 242
    :cond_c
    :goto_5
    if-ge v7, v5, :cond_e

    .line 243
    .line 244
    iget-object v1, v3, Lg40;->g:[Lwa7;

    .line 245
    .line 246
    aget-object v1, v1, v7

    .line 247
    .line 248
    invoke-static {}, Lwu0;->b()Lvu0;

    .line 249
    .line 250
    .line 251
    move-result-object v6

    .line 252
    iget-object v10, v0, Leb7;->f:Ljava/io/InputStream;

    .line 253
    .line 254
    invoke-virtual {v6, v10}, Ll5;->J(Ljava/io/InputStream;)V

    .line 255
    .line 256
    .line 257
    iget-wide v10, v1, Lwa7;->p:J

    .line 258
    .line 259
    invoke-virtual {v6, v10, v11}, Lvu0;->K(J)V

    .line 260
    .line 261
    .line 262
    iput-boolean v4, v6, Lvu0;->y:Z

    .line 263
    .line 264
    new-instance v10, Lwu0;

    .line 265
    .line 266
    invoke-direct {v10, v6}, Lwu0;-><init>(Lvu0;)V

    .line 267
    .line 268
    .line 269
    iget-boolean v6, v1, Lwa7;->m:Z

    .line 270
    .line 271
    if-eqz v6, :cond_d

    .line 272
    .line 273
    sget v6, Lc61;->f:I

    .line 274
    .line 275
    new-instance v6, Lb61;

    .line 276
    .line 277
    invoke-direct {v6}, Ll5;-><init>()V

    .line 278
    .line 279
    .line 280
    move-wide/from16 v11, v18

    .line 281
    .line 282
    iput-wide v11, v6, Lb61;->x:J

    .line 283
    .line 284
    new-instance v11, Ljava/util/zip/CRC32;

    .line 285
    .line 286
    invoke-direct {v11}, Ljava/util/zip/CRC32;-><init>()V

    .line 287
    .line 288
    .line 289
    iput-object v11, v6, Lb61;->t:Ljava/util/zip/CRC32;

    .line 290
    .line 291
    new-instance v11, Ly4;

    .line 292
    .line 293
    invoke-direct {v11, v10}, Ly4;-><init>(Ljava/io/InputStream;)V

    .line 294
    .line 295
    .line 296
    iput-object v11, v6, Ll5;->k:Ly4;

    .line 297
    .line 298
    iget-wide v10, v1, Lwa7;->p:J

    .line 299
    .line 300
    iput-wide v10, v6, Lb61;->x:J

    .line 301
    .line 302
    iget-wide v10, v1, Lwa7;->n:J

    .line 303
    .line 304
    iput-wide v10, v6, Lb61;->y:J

    .line 305
    .line 306
    new-instance v10, Lc61;

    .line 307
    .line 308
    invoke-direct {v10, v6}, Lc61;-><init>(Lb61;)V

    .line 309
    .line 310
    .line 311
    :cond_d
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    .line 313
    .line 314
    iget-object v6, v14, Lwa7;->r:Ljava/util/List;

    .line 315
    .line 316
    invoke-virtual {v1, v6}, Lwa7;->a(Ljava/lang/Iterable;)V

    .line 317
    .line 318
    .line 319
    add-int/lit8 v7, v7, 0x1

    .line 320
    .line 321
    const-wide/16 v18, -0x1

    .line 322
    .line 323
    goto :goto_5

    .line 324
    :cond_e
    move/from16 v1, p1

    .line 325
    .line 326
    :goto_6
    iget v6, v0, Leb7;->d:I

    .line 327
    .line 328
    if-ne v6, v5, :cond_f

    .line 329
    .line 330
    if-nez v1, :cond_f

    .line 331
    .line 332
    goto :goto_7

    .line 333
    :cond_f
    invoke-static {}, Lwu0;->b()Lvu0;

    .line 334
    .line 335
    .line 336
    move-result-object v1

    .line 337
    iget-object v6, v0, Leb7;->f:Ljava/io/InputStream;

    .line 338
    .line 339
    invoke-virtual {v1, v6}, Ll5;->J(Ljava/io/InputStream;)V

    .line 340
    .line 341
    .line 342
    move-object/from16 v6, v17

    .line 343
    .line 344
    iget-wide v10, v6, Lwa7;->p:J

    .line 345
    .line 346
    invoke-virtual {v1, v10, v11}, Lvu0;->K(J)V

    .line 347
    .line 348
    .line 349
    iput-boolean v4, v1, Lvu0;->y:Z

    .line 350
    .line 351
    new-instance v7, Lwu0;

    .line 352
    .line 353
    invoke-direct {v7, v1}, Lwu0;-><init>(Lvu0;)V

    .line 354
    .line 355
    .line 356
    iget-boolean v1, v6, Lwa7;->m:Z

    .line 357
    .line 358
    if-eqz v1, :cond_10

    .line 359
    .line 360
    sget v1, Lc61;->f:I

    .line 361
    .line 362
    new-instance v1, Lb61;

    .line 363
    .line 364
    invoke-direct {v1}, Ll5;-><init>()V

    .line 365
    .line 366
    .line 367
    const-wide/16 v11, -0x1

    .line 368
    .line 369
    iput-wide v11, v1, Lb61;->x:J

    .line 370
    .line 371
    new-instance v10, Ljava/util/zip/CRC32;

    .line 372
    .line 373
    invoke-direct {v10}, Ljava/util/zip/CRC32;-><init>()V

    .line 374
    .line 375
    .line 376
    iput-object v10, v1, Lb61;->t:Ljava/util/zip/CRC32;

    .line 377
    .line 378
    new-instance v10, Ly4;

    .line 379
    .line 380
    invoke-direct {v10, v7}, Ly4;-><init>(Ljava/io/InputStream;)V

    .line 381
    .line 382
    .line 383
    iput-object v10, v1, Ll5;->k:Ly4;

    .line 384
    .line 385
    iget-wide v6, v6, Lwa7;->n:J

    .line 386
    .line 387
    iput-wide v6, v1, Lb61;->y:J

    .line 388
    .line 389
    new-instance v7, Lc61;

    .line 390
    .line 391
    invoke-direct {v7, v1}, Lc61;-><init>(Lb61;)V

    .line 392
    .line 393
    .line 394
    :cond_10
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    .line 396
    .line 397
    :goto_7
    iput v5, v0, Leb7;->d:I

    .line 398
    .line 399
    iget-object v1, v3, Lg40;->h:Ll40;

    .line 400
    .line 401
    iget-object v1, v1, Ll40;->e:Ljava/lang/Object;

    .line 402
    .line 403
    check-cast v1, [I

    .line 404
    .line 405
    aget v1, v1, v5

    .line 406
    .line 407
    iput v1, v0, Leb7;->e:I

    .line 408
    .line 409
    iget-object v0, v3, Lg40;->g:[Lwa7;

    .line 410
    .line 411
    aget-object v0, v0, v5

    .line 412
    .line 413
    iget-wide v0, v0, Lwa7;->p:J

    .line 414
    .line 415
    cmp-long v0, v0, v8

    .line 416
    .line 417
    if-nez v0, :cond_11

    .line 418
    .line 419
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 420
    .line 421
    sget-object v1, Lwx3;->a:[B

    .line 422
    .line 423
    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 424
    .line 425
    .line 426
    return-object v0

    .line 427
    :cond_11
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 428
    .line 429
    .line 430
    move-result v0

    .line 431
    if-nez v0, :cond_15

    .line 432
    .line 433
    :goto_8
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 434
    .line 435
    .line 436
    move-result v0

    .line 437
    move/from16 v1, p1

    .line 438
    .line 439
    if-le v0, v1, :cond_14

    .line 440
    .line 441
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 442
    .line 443
    .line 444
    move-result-object v0

    .line 445
    move-object v3, v0

    .line 446
    check-cast v3, Ljava/io/InputStream;

    .line 447
    .line 448
    :try_start_2
    new-instance v0, Li13;

    .line 449
    .line 450
    const/4 v5, 0x2

    .line 451
    invoke-direct {v0, v5}, Li13;-><init>(I)V

    .line 452
    .line 453
    .line 454
    const-wide v5, 0x7fffffffffffffffL

    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    invoke-static {v3, v5, v6, v0}, Ln84;->d(Ljava/io/InputStream;JLjava/util/function/Supplier;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 460
    .line 461
    .line 462
    if-eqz v3, :cond_12

    .line 463
    .line 464
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 465
    .line 466
    .line 467
    :cond_12
    move/from16 p1, v1

    .line 468
    .line 469
    goto :goto_8

    .line 470
    :catchall_1
    move-exception v0

    .line 471
    move-object v1, v0

    .line 472
    if-eqz v3, :cond_13

    .line 473
    .line 474
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 475
    .line 476
    .line 477
    goto :goto_9

    .line 478
    :catchall_2
    move-exception v0

    .line 479
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 480
    .line 481
    .line 482
    :cond_13
    :goto_9
    throw v1

    .line 483
    :cond_14
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 484
    .line 485
    .line 486
    move-result-object v0

    .line 487
    check-cast v0, Ljava/io/InputStream;

    .line 488
    .line 489
    return-object v0

    .line 490
    :cond_15
    const-string v0, "No current 7z entry (call getNextEntry() first)."

    .line 491
    .line 492
    invoke-static {v0}, Ll0;->e(Ljava/lang/String;)V

    .line 493
    .line 494
    .line 495
    return-object v16

    .line 496
    :cond_16
    const/16 v16, 0x0

    .line 497
    .line 498
    const-string v0, "Archive doesn\'t contain stream information to read entries"

    .line 499
    .line 500
    invoke-static {v0}, Ly5;->m(Ljava/lang/String;)V

    .line 501
    .line 502
    .line 503
    return-object v16

    .line 504
    :cond_17
    const/16 v16, 0x0

    .line 505
    .line 506
    const-string v2, "Can not find "

    .line 507
    .line 508
    iget-object v1, v1, Lwa7;->a:Ljava/lang/String;

    .line 509
    .line 510
    const-string v3, " in "

    .line 511
    .line 512
    iget-object v0, v0, Leb7;->a:Ljava/lang/String;

    .line 513
    .line 514
    invoke-static {v2, v1, v3, v0}, Ld6;->i(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 515
    .line 516
    .line 517
    return-object v16
.end method

.method public final r([B)Lg40;
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/16 v1, 0xc

    .line 4
    .line 5
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 16
    .line 17
    .line 18
    iget-object v2, v0, Leb7;->b:Ljava/nio/channels/SeekableByteChannel;

    .line 19
    .line 20
    invoke-static {v2, v1}, Ly13;->w(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 24
    .line 25
    .line 26
    const/4 v2, 0x6

    .line 27
    new-array v2, v2, [B

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 30
    .line 31
    .line 32
    sget-object v3, Leb7;->q:[B

    .line 33
    .line 34
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    const/4 v3, 0x0

    .line 39
    if-eqz v2, :cond_4e

    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-nez v2, :cond_4d

    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    int-to-long v1, v1

    .line 56
    const-wide v4, 0xffffffffL

    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    and-long/2addr v1, v4

    .line 62
    const-wide/16 v6, 0x0

    .line 63
    .line 64
    cmp-long v8, v1, v6

    .line 65
    .line 66
    if-nez v8, :cond_2

    .line 67
    .line 68
    iget-object v8, v0, Leb7;->b:Ljava/nio/channels/SeekableByteChannel;

    .line 69
    .line 70
    invoke-interface {v8}, Ljava/nio/channels/SeekableByteChannel;->position()J

    .line 71
    .line 72
    .line 73
    move-result-wide v8

    .line 74
    const/16 v10, 0x14

    .line 75
    .line 76
    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 77
    .line 78
    .line 79
    move-result-object v10

    .line 80
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 81
    .line 82
    .line 83
    iget-object v11, v0, Leb7;->b:Ljava/nio/channels/SeekableByteChannel;

    .line 84
    .line 85
    invoke-static {v11, v10}, Ly13;->w(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 89
    .line 90
    .line 91
    iget-object v11, v0, Leb7;->b:Ljava/nio/channels/SeekableByteChannel;

    .line 92
    .line 93
    invoke-interface {v11, v8, v9}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 94
    .line 95
    .line 96
    :cond_0
    invoke-virtual {v10}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 97
    .line 98
    .line 99
    move-result v8

    .line 100
    if-eqz v8, :cond_1

    .line 101
    .line 102
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->get()B

    .line 103
    .line 104
    .line 105
    move-result v8

    .line 106
    if-eqz v8, :cond_0

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_1
    const-string v0, "archive seems to be invalid.\nYou may want to retry and enable the tryToRecoverBrokenArchives if the archive could be a multi volume archive that has been closed prematurely."

    .line 110
    .line 111
    invoke-static {v0}, Ly5;->m(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    return-object v3

    .line 115
    :cond_2
    :goto_0
    new-instance v8, Ljava/io/DataInputStream;

    .line 116
    .line 117
    sget v9, Lc61;->f:I

    .line 118
    .line 119
    new-instance v9, Lb61;

    .line 120
    .line 121
    invoke-direct {v9}, Ll5;-><init>()V

    .line 122
    .line 123
    .line 124
    const-wide/16 v10, -0x1

    .line 125
    .line 126
    iput-wide v10, v9, Lb61;->x:J

    .line 127
    .line 128
    new-instance v12, Ljava/util/zip/CRC32;

    .line 129
    .line 130
    invoke-direct {v12}, Ljava/util/zip/CRC32;-><init>()V

    .line 131
    .line 132
    .line 133
    iput-object v12, v9, Lb61;->t:Ljava/util/zip/CRC32;

    .line 134
    .line 135
    new-instance v12, Lyu0;

    .line 136
    .line 137
    iget-object v13, v0, Leb7;->b:Ljava/nio/channels/SeekableByteChannel;

    .line 138
    .line 139
    const-wide/16 v14, 0x14

    .line 140
    .line 141
    invoke-direct {v12, v13, v14, v15}, Lyu0;-><init>(Ljava/nio/channels/SeekableByteChannel;J)V

    .line 142
    .line 143
    .line 144
    new-instance v13, Ly4;

    .line 145
    .line 146
    invoke-direct {v13, v12}, Ly4;-><init>(Ljava/io/InputStream;)V

    .line 147
    .line 148
    .line 149
    iput-object v13, v9, Ll5;->k:Ly4;

    .line 150
    .line 151
    iput-wide v14, v9, Lb61;->x:J

    .line 152
    .line 153
    iput-wide v1, v9, Lb61;->y:J

    .line 154
    .line 155
    new-instance v1, Lc61;

    .line 156
    .line 157
    invoke-direct {v1, v9}, Lc61;-><init>(Lb61;)V

    .line 158
    .line 159
    .line 160
    invoke-direct {v8, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 161
    .line 162
    .line 163
    :try_start_0
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readLong()J

    .line 164
    .line 165
    .line 166
    move-result-wide v1

    .line 167
    invoke-static {v1, v2}, Ljava/lang/Long;->reverseBytes(J)J

    .line 168
    .line 169
    .line 170
    move-result-wide v13

    .line 171
    cmp-long v1, v13, v6

    .line 172
    .line 173
    if-ltz v1, :cond_4c

    .line 174
    .line 175
    const-wide/16 v1, 0x20

    .line 176
    .line 177
    add-long v15, v13, v1

    .line 178
    .line 179
    iget-object v9, v0, Leb7;->b:Ljava/nio/channels/SeekableByteChannel;

    .line 180
    .line 181
    invoke-interface {v9}, Ljava/nio/channels/SeekableByteChannel;->size()J

    .line 182
    .line 183
    .line 184
    move-result-wide v17

    .line 185
    cmp-long v9, v15, v17

    .line 186
    .line 187
    if-gtz v9, :cond_4c

    .line 188
    .line 189
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readLong()J

    .line 190
    .line 191
    .line 192
    move-result-wide v15

    .line 193
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->reverseBytes(J)J

    .line 194
    .line 195
    .line 196
    move-result-wide v15

    .line 197
    add-long v17, v13, v15

    .line 198
    .line 199
    cmp-long v9, v17, v13

    .line 200
    .line 201
    if-ltz v9, :cond_4b

    .line 202
    .line 203
    add-long v17, v17, v1

    .line 204
    .line 205
    iget-object v9, v0, Leb7;->b:Ljava/nio/channels/SeekableByteChannel;

    .line 206
    .line 207
    invoke-interface {v9}, Ljava/nio/channels/SeekableByteChannel;->size()J

    .line 208
    .line 209
    .line 210
    move-result-wide v19

    .line 211
    cmp-long v9, v17, v19

    .line 212
    .line 213
    if-gtz v9, :cond_4b

    .line 214
    .line 215
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    .line 216
    .line 217
    .line 218
    move-result v9

    .line 219
    invoke-static {v9}, Ljava/lang/Integer;->reverseBytes(I)I

    .line 220
    .line 221
    .line 222
    move-result v9

    .line 223
    move-wide/from16 v19, v1

    .line 224
    .line 225
    int-to-long v1, v9

    .line 226
    and-long v17, v1, v4

    .line 227
    .line 228
    new-instance v12, Lxl7;

    .line 229
    .line 230
    invoke-direct/range {v12 .. v18}, Lxl7;-><init>(JJJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    .line 232
    .line 233
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 234
    .line 235
    .line 236
    iget-wide v1, v12, Lxl7;->b:J

    .line 237
    .line 238
    const-string v4, "nextHeaderSize"

    .line 239
    .line 240
    invoke-static {v1, v2, v4}, Leb7;->a(JLjava/lang/String;)I

    .line 241
    .line 242
    .line 243
    long-to-int v1, v1

    .line 244
    iget-object v2, v0, Leb7;->b:Ljava/nio/channels/SeekableByteChannel;

    .line 245
    .line 246
    iget-wide v4, v12, Lxl7;->a:J

    .line 247
    .line 248
    add-long v4, v4, v19

    .line 249
    .line 250
    invoke-interface {v2, v4, v5}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 251
    .line 252
    .line 253
    iget-object v2, v0, Leb7;->b:Ljava/nio/channels/SeekableByteChannel;

    .line 254
    .line 255
    invoke-interface {v2}, Ljava/nio/channels/SeekableByteChannel;->position()J

    .line 256
    .line 257
    .line 258
    move-result-wide v4

    .line 259
    new-instance v2, Ljava/util/zip/CheckedInputStream;

    .line 260
    .line 261
    iget-object v8, v0, Leb7;->b:Ljava/nio/channels/SeekableByteChannel;

    .line 262
    .line 263
    invoke-static {v8}, Ljava/nio/channels/Channels;->newInputStream(Ljava/nio/channels/ReadableByteChannel;)Ljava/io/InputStream;

    .line 264
    .line 265
    .line 266
    move-result-object v8

    .line 267
    new-instance v9, Ljava/util/zip/CRC32;

    .line 268
    .line 269
    invoke-direct {v9}, Ljava/util/zip/CRC32;-><init>()V

    .line 270
    .line 271
    .line 272
    invoke-direct {v2, v8, v9}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V

    .line 273
    .line 274
    .line 275
    int-to-long v8, v1

    .line 276
    invoke-virtual {v2, v8, v9}, Ljava/util/zip/CheckedInputStream;->skip(J)J

    .line 277
    .line 278
    .line 279
    move-result-wide v13

    .line 280
    cmp-long v8, v13, v8

    .line 281
    .line 282
    if-nez v8, :cond_4a

    .line 283
    .line 284
    invoke-virtual {v2}, Ljava/util/zip/CheckedInputStream;->getChecksum()Ljava/util/zip/Checksum;

    .line 285
    .line 286
    .line 287
    move-result-object v2

    .line 288
    invoke-interface {v2}, Ljava/util/zip/Checksum;->getValue()J

    .line 289
    .line 290
    .line 291
    move-result-wide v8

    .line 292
    iget-wide v12, v12, Lxl7;->c:J

    .line 293
    .line 294
    cmp-long v2, v12, v8

    .line 295
    .line 296
    if-nez v2, :cond_49

    .line 297
    .line 298
    iget-object v2, v0, Leb7;->b:Ljava/nio/channels/SeekableByteChannel;

    .line 299
    .line 300
    invoke-interface {v2, v4, v5}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 301
    .line 302
    .line 303
    new-instance v2, Lg40;

    .line 304
    .line 305
    invoke-direct {v2}, Lg40;-><init>()V

    .line 306
    .line 307
    .line 308
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 309
    .line 310
    .line 311
    move-result-object v1

    .line 312
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 313
    .line 314
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 315
    .line 316
    .line 317
    move-result-object v1

    .line 318
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 319
    .line 320
    .line 321
    iget-object v4, v0, Leb7;->b:Ljava/nio/channels/SeekableByteChannel;

    .line 322
    .line 323
    invoke-static {v4, v1}, Ly13;->w(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 327
    .line 328
    .line 329
    invoke-static {v1}, Leb7;->m(Ljava/nio/ByteBuffer;)I

    .line 330
    .line 331
    .line 332
    move-result v4

    .line 333
    const/16 v5, 0x17

    .line 334
    .line 335
    iget v8, v0, Leb7;->p:I

    .line 336
    .line 337
    const/4 v9, 0x0

    .line 338
    if-ne v4, v5, :cond_b

    .line 339
    .line 340
    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    .line 341
    .line 342
    .line 343
    move-result v4

    .line 344
    new-instance v5, Lcb7;

    .line 345
    .line 346
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 347
    .line 348
    .line 349
    invoke-virtual {v0, v1, v5}, Leb7;->A(Ljava/nio/ByteBuffer;Lcb7;)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v5, v8}, Lcb7;->a(I)V

    .line 353
    .line 354
    .line 355
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 356
    .line 357
    .line 358
    invoke-static {v1, v2}, Leb7;->u(Ljava/nio/ByteBuffer;Lg40;)V

    .line 359
    .line 360
    .line 361
    iget-object v1, v2, Lg40;->e:[Lhj3;

    .line 362
    .line 363
    invoke-static {v1}, Lod2;->o(Ljava/lang/Object;)Z

    .line 364
    .line 365
    .line 366
    move-result v1

    .line 367
    if-nez v1, :cond_a

    .line 368
    .line 369
    iget-object v1, v2, Lg40;->b:[J

    .line 370
    .line 371
    invoke-static {v1}, Lod2;->o(Ljava/lang/Object;)Z

    .line 372
    .line 373
    .line 374
    move-result v1

    .line 375
    if-nez v1, :cond_9

    .line 376
    .line 377
    iget-object v1, v2, Lg40;->e:[Lhj3;

    .line 378
    .line 379
    aget-object v1, v1, v9

    .line 380
    .line 381
    iget-wide v4, v2, Lg40;->a:J

    .line 382
    .line 383
    add-long v4, v4, v19

    .line 384
    .line 385
    iget-object v14, v0, Leb7;->b:Ljava/nio/channels/SeekableByteChannel;

    .line 386
    .line 387
    invoke-interface {v14, v4, v5}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 388
    .line 389
    .line 390
    new-instance v4, Lyu0;

    .line 391
    .line 392
    iget-object v5, v0, Leb7;->b:Ljava/nio/channels/SeekableByteChannel;

    .line 393
    .line 394
    iget-object v2, v2, Lg40;->b:[J

    .line 395
    .line 396
    aget-wide v14, v2, v9

    .line 397
    .line 398
    invoke-direct {v4, v5, v14, v15}, Lyu0;-><init>(Ljava/nio/channels/SeekableByteChannel;J)V

    .line 399
    .line 400
    .line 401
    invoke-virtual {v1}, Lhj3;->a()Ljava/util/List;

    .line 402
    .line 403
    .line 404
    move-result-object v2

    .line 405
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 406
    .line 407
    .line 408
    move-result-object v2

    .line 409
    move-object v15, v4

    .line 410
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 411
    .line 412
    .line 413
    move-result v4

    .line 414
    if-eqz v4, :cond_6

    .line 415
    .line 416
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 417
    .line 418
    .line 419
    move-result-object v4

    .line 420
    check-cast v4, Lkk1;

    .line 421
    .line 422
    const-wide/16 v21, 0x1

    .line 423
    .line 424
    iget-wide v12, v4, Lkk1;->b:J

    .line 425
    .line 426
    cmp-long v5, v12, v21

    .line 427
    .line 428
    if-nez v5, :cond_5

    .line 429
    .line 430
    iget-wide v12, v4, Lkk1;->c:J

    .line 431
    .line 432
    cmp-long v5, v12, v21

    .line 433
    .line 434
    if-nez v5, :cond_5

    .line 435
    .line 436
    iget-object v5, v1, Lhj3;->a:[Lkk1;

    .line 437
    .line 438
    if-eqz v5, :cond_4

    .line 439
    .line 440
    move v5, v9

    .line 441
    :goto_2
    iget-object v12, v1, Lhj3;->a:[Lkk1;

    .line 442
    .line 443
    array-length v13, v12

    .line 444
    if-ge v5, v13, :cond_4

    .line 445
    .line 446
    aget-object v12, v12, v5

    .line 447
    .line 448
    if-ne v12, v4, :cond_3

    .line 449
    .line 450
    iget-object v12, v1, Lhj3;->f:[J

    .line 451
    .line 452
    aget-wide v13, v12, v5

    .line 453
    .line 454
    move-wide/from16 v16, v13

    .line 455
    .line 456
    goto :goto_3

    .line 457
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 458
    .line 459
    goto :goto_2

    .line 460
    :cond_4
    move-wide/from16 v16, v6

    .line 461
    .line 462
    :goto_3
    iget v5, v0, Leb7;->p:I

    .line 463
    .line 464
    iget-object v14, v0, Leb7;->a:Ljava/lang/String;

    .line 465
    .line 466
    move-object/from16 v19, p1

    .line 467
    .line 468
    move-object/from16 v18, v4

    .line 469
    .line 470
    move/from16 v20, v5

    .line 471
    .line 472
    invoke-static/range {v14 .. v20}, Ltk1;->a(Ljava/lang/String;Ljava/io/InputStream;JLkk1;[BI)Ljava/io/InputStream;

    .line 473
    .line 474
    .line 475
    move-result-object v15

    .line 476
    goto :goto_1

    .line 477
    :cond_5
    const-string v0, "Multi input/output stream coders are not yet supported"

    .line 478
    .line 479
    invoke-static {v0}, Ly5;->m(Ljava/lang/String;)V

    .line 480
    .line 481
    .line 482
    goto/16 :goto_26

    .line 483
    .line 484
    :cond_6
    const-wide/16 v21, 0x1

    .line 485
    .line 486
    iget-boolean v2, v1, Lhj3;->g:Z

    .line 487
    .line 488
    if-eqz v2, :cond_7

    .line 489
    .line 490
    sget v2, Lc61;->f:I

    .line 491
    .line 492
    new-instance v2, Lb61;

    .line 493
    .line 494
    invoke-direct {v2}, Ll5;-><init>()V

    .line 495
    .line 496
    .line 497
    iput-wide v10, v2, Lb61;->x:J

    .line 498
    .line 499
    new-instance v4, Ljava/util/zip/CRC32;

    .line 500
    .line 501
    invoke-direct {v4}, Ljava/util/zip/CRC32;-><init>()V

    .line 502
    .line 503
    .line 504
    iput-object v4, v2, Lb61;->t:Ljava/util/zip/CRC32;

    .line 505
    .line 506
    invoke-virtual {v2, v15}, Ll5;->J(Ljava/io/InputStream;)V

    .line 507
    .line 508
    .line 509
    invoke-virtual {v1}, Lhj3;->b()J

    .line 510
    .line 511
    .line 512
    move-result-wide v4

    .line 513
    iput-wide v4, v2, Lb61;->x:J

    .line 514
    .line 515
    iget-wide v4, v1, Lhj3;->h:J

    .line 516
    .line 517
    iput-wide v4, v2, Lb61;->y:J

    .line 518
    .line 519
    new-instance v15, Lc61;

    .line 520
    .line 521
    invoke-direct {v15, v2}, Lc61;-><init>(Lb61;)V

    .line 522
    .line 523
    .line 524
    :cond_7
    const-string v2, "unpackSize"

    .line 525
    .line 526
    invoke-virtual {v1}, Lhj3;->b()J

    .line 527
    .line 528
    .line 529
    move-result-wide v4

    .line 530
    invoke-static {v4, v5, v2}, Leb7;->a(JLjava/lang/String;)I

    .line 531
    .line 532
    .line 533
    move-result v1

    .line 534
    invoke-static {v15, v1}, Ly13;->x(Ljava/io/InputStream;I)[B

    .line 535
    .line 536
    .line 537
    move-result-object v2

    .line 538
    array-length v4, v2

    .line 539
    if-lt v4, v1, :cond_8

    .line 540
    .line 541
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    .line 542
    .line 543
    .line 544
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 545
    .line 546
    .line 547
    move-result-object v1

    .line 548
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 549
    .line 550
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 551
    .line 552
    .line 553
    move-result-object v1

    .line 554
    new-instance v2, Lg40;

    .line 555
    .line 556
    invoke-direct {v2}, Lg40;-><init>()V

    .line 557
    .line 558
    .line 559
    invoke-static {v1}, Leb7;->m(Ljava/nio/ByteBuffer;)I

    .line 560
    .line 561
    .line 562
    move-result v4

    .line 563
    goto :goto_4

    .line 564
    :cond_8
    const-string v0, "premature end of stream"

    .line 565
    .line 566
    invoke-static {v0}, Ly5;->m(Ljava/lang/String;)V

    .line 567
    .line 568
    .line 569
    goto/16 :goto_26

    .line 570
    .line 571
    :cond_9
    const-string v0, "no packed streams, can\'t read encoded header"

    .line 572
    .line 573
    invoke-static {v0}, Ly5;->m(Ljava/lang/String;)V

    .line 574
    .line 575
    .line 576
    goto/16 :goto_26

    .line 577
    .line 578
    :cond_a
    const-string v0, "no folders, can\'t read encoded header"

    .line 579
    .line 580
    invoke-static {v0}, Ly5;->m(Ljava/lang/String;)V

    .line 581
    .line 582
    .line 583
    goto/16 :goto_26

    .line 584
    .line 585
    :cond_b
    const-wide/16 v21, 0x1

    .line 586
    .line 587
    :goto_4
    const/4 v5, 0x1

    .line 588
    if-ne v4, v5, :cond_48

    .line 589
    .line 590
    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    .line 591
    .line 592
    .line 593
    move-result v4

    .line 594
    new-instance v10, Lcb7;

    .line 595
    .line 596
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 597
    .line 598
    .line 599
    invoke-static {v1}, Leb7;->m(Ljava/nio/ByteBuffer;)I

    .line 600
    .line 601
    .line 602
    move-result v11

    .line 603
    const/4 v12, 0x2

    .line 604
    if-ne v11, v12, :cond_e

    .line 605
    .line 606
    invoke-static {v1}, Leb7;->v(Ljava/nio/ByteBuffer;)J

    .line 607
    .line 608
    .line 609
    move-result-wide v13

    .line 610
    :goto_5
    cmp-long v11, v13, v6

    .line 611
    .line 612
    if-eqz v11, :cond_d

    .line 613
    .line 614
    const-string v11, "propertySize"

    .line 615
    .line 616
    invoke-static {v1}, Leb7;->v(Ljava/nio/ByteBuffer;)J

    .line 617
    .line 618
    .line 619
    move-result-wide v13

    .line 620
    invoke-static {v13, v14, v11}, Leb7;->a(JLjava/lang/String;)I

    .line 621
    .line 622
    .line 623
    move-result v11

    .line 624
    int-to-long v13, v11

    .line 625
    invoke-static {v13, v14, v1}, Leb7;->D(JLjava/nio/ByteBuffer;)J

    .line 626
    .line 627
    .line 628
    move-result-wide v15

    .line 629
    cmp-long v11, v15, v13

    .line 630
    .line 631
    if-ltz v11, :cond_c

    .line 632
    .line 633
    invoke-static {v1}, Leb7;->v(Ljava/nio/ByteBuffer;)J

    .line 634
    .line 635
    .line 636
    move-result-wide v13

    .line 637
    goto :goto_5

    .line 638
    :cond_c
    const-string v0, "invalid property size"

    .line 639
    .line 640
    invoke-static {v0}, Ly5;->m(Ljava/lang/String;)V

    .line 641
    .line 642
    .line 643
    goto/16 :goto_26

    .line 644
    .line 645
    :cond_d
    invoke-static {v1}, Leb7;->m(Ljava/nio/ByteBuffer;)I

    .line 646
    .line 647
    .line 648
    move-result v11

    .line 649
    :cond_e
    const-string v13, "Additional streams unsupported"

    .line 650
    .line 651
    const/4 v14, 0x3

    .line 652
    if-eq v11, v14, :cond_47

    .line 653
    .line 654
    const/4 v15, 0x4

    .line 655
    if-ne v11, v15, :cond_f

    .line 656
    .line 657
    invoke-virtual {v0, v1, v10}, Leb7;->A(Ljava/nio/ByteBuffer;Lcb7;)V

    .line 658
    .line 659
    .line 660
    invoke-static {v1}, Leb7;->m(Ljava/nio/ByteBuffer;)I

    .line 661
    .line 662
    .line 663
    move-result v11

    .line 664
    :cond_f
    const/4 v0, -0x1

    .line 665
    const/16 p0, 0x8

    .line 666
    .line 667
    const/4 v3, 0x5

    .line 668
    if-ne v11, v3, :cond_22

    .line 669
    .line 670
    const-string v11, "numFiles"

    .line 671
    .line 672
    move-wide/from16 v17, v6

    .line 673
    .line 674
    invoke-static {v1}, Leb7;->v(Ljava/nio/ByteBuffer;)J

    .line 675
    .line 676
    .line 677
    move-result-wide v5

    .line 678
    invoke-static {v5, v6, v11}, Leb7;->a(JLjava/lang/String;)I

    .line 679
    .line 680
    .line 681
    move-result v5

    .line 682
    iput v5, v10, Lcb7;->h:I

    .line 683
    .line 684
    move v5, v0

    .line 685
    :goto_6
    invoke-static {v1}, Leb7;->m(Ljava/nio/ByteBuffer;)I

    .line 686
    .line 687
    .line 688
    move-result v6

    .line 689
    if-nez v6, :cond_10

    .line 690
    .line 691
    iget v6, v10, Lcb7;->h:I

    .line 692
    .line 693
    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    .line 694
    .line 695
    .line 696
    move-result v5

    .line 697
    sub-int/2addr v6, v5

    .line 698
    iput v6, v10, Lcb7;->i:I

    .line 699
    .line 700
    invoke-static {v1}, Leb7;->m(Ljava/nio/ByteBuffer;)I

    .line 701
    .line 702
    .line 703
    move-result v11

    .line 704
    :goto_7
    move/from16 v19, v15

    .line 705
    .line 706
    goto/16 :goto_a

    .line 707
    .line 708
    :cond_10
    move/from16 v19, v15

    .line 709
    .line 710
    invoke-static {v1}, Leb7;->v(Ljava/nio/ByteBuffer;)J

    .line 711
    .line 712
    .line 713
    move-result-wide v14

    .line 714
    const-string v11, "Not implemented"

    .line 715
    .line 716
    packed-switch v6, :pswitch_data_0

    .line 717
    .line 718
    .line 719
    :pswitch_0
    invoke-static {v14, v15, v1}, Leb7;->D(JLjava/nio/ByteBuffer;)J

    .line 720
    .line 721
    .line 722
    move-result-wide v23

    .line 723
    cmp-long v11, v23, v14

    .line 724
    .line 725
    if-ltz v11, :cond_11

    .line 726
    .line 727
    goto/16 :goto_9

    .line 728
    .line 729
    :cond_11
    const-string v0, "Incomplete property of type "

    .line 730
    .line 731
    invoke-static {v6, v0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 732
    .line 733
    .line 734
    move-result-object v0

    .line 735
    invoke-static {v0}, Ly5;->m(Ljava/lang/String;)V

    .line 736
    .line 737
    .line 738
    goto/16 :goto_25

    .line 739
    .line 740
    :pswitch_1
    invoke-static {v14, v15, v1}, Leb7;->D(JLjava/nio/ByteBuffer;)J

    .line 741
    .line 742
    .line 743
    move-result-wide v23

    .line 744
    cmp-long v6, v23, v14

    .line 745
    .line 746
    if-ltz v6, :cond_12

    .line 747
    .line 748
    goto/16 :goto_9

    .line 749
    .line 750
    :cond_12
    const-string v0, "Incomplete kDummy property"

    .line 751
    .line 752
    invoke-static {v0}, Ly5;->m(Ljava/lang/String;)V

    .line 753
    .line 754
    .line 755
    goto/16 :goto_25

    .line 756
    .line 757
    :pswitch_2
    const-string v0, "kStartPos is unsupported, please report"

    .line 758
    .line 759
    invoke-static {v0}, Ly5;->m(Ljava/lang/String;)V

    .line 760
    .line 761
    .line 762
    goto/16 :goto_25

    .line 763
    .line 764
    :pswitch_3
    iget v6, v10, Lcb7;->h:I

    .line 765
    .line 766
    invoke-static {v1, v6}, Leb7;->n(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    .line 767
    .line 768
    .line 769
    move-result-object v6

    .line 770
    invoke-virtual {v6}, Ljava/util/BitSet;->cardinality()I

    .line 771
    .line 772
    .line 773
    move-result v6

    .line 774
    invoke-static {v1}, Leb7;->m(Ljava/nio/ByteBuffer;)I

    .line 775
    .line 776
    .line 777
    move-result v14

    .line 778
    if-nez v14, :cond_14

    .line 779
    .line 780
    mul-int/lit8 v6, v6, 0x4

    .line 781
    .line 782
    int-to-long v14, v6

    .line 783
    invoke-static {v14, v15, v1}, Leb7;->D(JLjava/nio/ByteBuffer;)J

    .line 784
    .line 785
    .line 786
    move-result-wide v23

    .line 787
    cmp-long v6, v23, v14

    .line 788
    .line 789
    if-ltz v6, :cond_13

    .line 790
    .line 791
    goto/16 :goto_9

    .line 792
    .line 793
    :cond_13
    const-string v0, "invalid windows attributes size"

    .line 794
    .line 795
    invoke-static {v0}, Ly5;->m(Ljava/lang/String;)V

    .line 796
    .line 797
    .line 798
    goto/16 :goto_25

    .line 799
    .line 800
    :cond_14
    invoke-static {v11}, Ly5;->m(Ljava/lang/String;)V

    .line 801
    .line 802
    .line 803
    goto/16 :goto_25

    .line 804
    .line 805
    :pswitch_4
    iget v6, v10, Lcb7;->h:I

    .line 806
    .line 807
    invoke-static {v1, v6}, Leb7;->n(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    .line 808
    .line 809
    .line 810
    move-result-object v6

    .line 811
    invoke-virtual {v6}, Ljava/util/BitSet;->cardinality()I

    .line 812
    .line 813
    .line 814
    move-result v6

    .line 815
    invoke-static {v1}, Leb7;->m(Ljava/nio/ByteBuffer;)I

    .line 816
    .line 817
    .line 818
    move-result v14

    .line 819
    if-nez v14, :cond_16

    .line 820
    .line 821
    mul-int/lit8 v6, v6, 0x8

    .line 822
    .line 823
    int-to-long v14, v6

    .line 824
    invoke-static {v14, v15, v1}, Leb7;->D(JLjava/nio/ByteBuffer;)J

    .line 825
    .line 826
    .line 827
    move-result-wide v23

    .line 828
    cmp-long v6, v23, v14

    .line 829
    .line 830
    if-ltz v6, :cond_15

    .line 831
    .line 832
    goto/16 :goto_9

    .line 833
    .line 834
    :cond_15
    const-string v0, "invalid modification dates size"

    .line 835
    .line 836
    invoke-static {v0}, Ly5;->m(Ljava/lang/String;)V

    .line 837
    .line 838
    .line 839
    goto/16 :goto_25

    .line 840
    .line 841
    :cond_16
    invoke-static {v11}, Ly5;->m(Ljava/lang/String;)V

    .line 842
    .line 843
    .line 844
    goto/16 :goto_25

    .line 845
    .line 846
    :pswitch_5
    iget v6, v10, Lcb7;->h:I

    .line 847
    .line 848
    invoke-static {v1, v6}, Leb7;->n(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    .line 849
    .line 850
    .line 851
    move-result-object v6

    .line 852
    invoke-virtual {v6}, Ljava/util/BitSet;->cardinality()I

    .line 853
    .line 854
    .line 855
    move-result v6

    .line 856
    invoke-static {v1}, Leb7;->m(Ljava/nio/ByteBuffer;)I

    .line 857
    .line 858
    .line 859
    move-result v14

    .line 860
    if-nez v14, :cond_18

    .line 861
    .line 862
    mul-int/lit8 v6, v6, 0x8

    .line 863
    .line 864
    int-to-long v14, v6

    .line 865
    invoke-static {v14, v15, v1}, Leb7;->D(JLjava/nio/ByteBuffer;)J

    .line 866
    .line 867
    .line 868
    move-result-wide v23

    .line 869
    cmp-long v6, v23, v14

    .line 870
    .line 871
    if-ltz v6, :cond_17

    .line 872
    .line 873
    goto/16 :goto_9

    .line 874
    .line 875
    :cond_17
    const-string v0, "invalid access dates size"

    .line 876
    .line 877
    invoke-static {v0}, Ly5;->m(Ljava/lang/String;)V

    .line 878
    .line 879
    .line 880
    goto/16 :goto_25

    .line 881
    .line 882
    :cond_18
    invoke-static {v11}, Ly5;->m(Ljava/lang/String;)V

    .line 883
    .line 884
    .line 885
    goto/16 :goto_25

    .line 886
    .line 887
    :pswitch_6
    iget v6, v10, Lcb7;->h:I

    .line 888
    .line 889
    invoke-static {v1, v6}, Leb7;->n(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    .line 890
    .line 891
    .line 892
    move-result-object v6

    .line 893
    invoke-virtual {v6}, Ljava/util/BitSet;->cardinality()I

    .line 894
    .line 895
    .line 896
    move-result v6

    .line 897
    invoke-static {v1}, Leb7;->m(Ljava/nio/ByteBuffer;)I

    .line 898
    .line 899
    .line 900
    move-result v14

    .line 901
    if-nez v14, :cond_1a

    .line 902
    .line 903
    mul-int/lit8 v6, v6, 0x8

    .line 904
    .line 905
    int-to-long v14, v6

    .line 906
    invoke-static {v14, v15, v1}, Leb7;->D(JLjava/nio/ByteBuffer;)J

    .line 907
    .line 908
    .line 909
    move-result-wide v23

    .line 910
    cmp-long v6, v23, v14

    .line 911
    .line 912
    if-ltz v6, :cond_19

    .line 913
    .line 914
    goto/16 :goto_9

    .line 915
    .line 916
    :cond_19
    const-string v0, "invalid creation dates size"

    .line 917
    .line 918
    invoke-static {v0}, Ly5;->m(Ljava/lang/String;)V

    .line 919
    .line 920
    .line 921
    goto/16 :goto_25

    .line 922
    .line 923
    :cond_1a
    invoke-static {v11}, Ly5;->m(Ljava/lang/String;)V

    .line 924
    .line 925
    .line 926
    goto/16 :goto_25

    .line 927
    .line 928
    :pswitch_7
    invoke-static {v1}, Leb7;->m(Ljava/nio/ByteBuffer;)I

    .line 929
    .line 930
    .line 931
    move-result v6

    .line 932
    if-nez v6, :cond_1f

    .line 933
    .line 934
    const-string v6, "file names length"

    .line 935
    .line 936
    sub-long v14, v14, v21

    .line 937
    .line 938
    invoke-static {v14, v15, v6}, Leb7;->a(JLjava/lang/String;)I

    .line 939
    .line 940
    .line 941
    move-result v6

    .line 942
    and-int/lit8 v11, v6, 0x1

    .line 943
    .line 944
    if-nez v11, :cond_1e

    .line 945
    .line 946
    move v11, v9

    .line 947
    move v14, v11

    .line 948
    :goto_8
    if-ge v11, v6, :cond_1c

    .line 949
    .line 950
    invoke-static {v1, v12}, Leb7;->g(Ljava/nio/ByteBuffer;I)V

    .line 951
    .line 952
    .line 953
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getChar()C

    .line 954
    .line 955
    .line 956
    move-result v15

    .line 957
    if-nez v15, :cond_1b

    .line 958
    .line 959
    add-int/lit8 v14, v14, 0x1

    .line 960
    .line 961
    :cond_1b
    add-int/lit8 v11, v11, 0x2

    .line 962
    .line 963
    goto :goto_8

    .line 964
    :cond_1c
    iget v6, v10, Lcb7;->h:I

    .line 965
    .line 966
    if-ne v14, v6, :cond_1d

    .line 967
    .line 968
    goto :goto_9

    .line 969
    :cond_1d
    const-string v0, "Invalid number of file names ("

    .line 970
    .line 971
    const-string v1, " instead of "

    .line 972
    .line 973
    invoke-static {v14, v0, v1}, Ldj7;->r(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 974
    .line 975
    .line 976
    move-result-object v0

    .line 977
    iget v1, v10, Lcb7;->h:I

    .line 978
    .line 979
    const-string v2, ")"

    .line 980
    .line 981
    invoke-static {v0, v1, v2}, Lxs1;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 982
    .line 983
    .line 984
    move-result-object v0

    .line 985
    invoke-static {v0}, Ly5;->m(Ljava/lang/String;)V

    .line 986
    .line 987
    .line 988
    goto/16 :goto_25

    .line 989
    .line 990
    :cond_1e
    const-string v0, "File names length invalid"

    .line 991
    .line 992
    invoke-static {v0}, Ly5;->m(Ljava/lang/String;)V

    .line 993
    .line 994
    .line 995
    goto/16 :goto_25

    .line 996
    .line 997
    :cond_1f
    invoke-static {v11}, Ly5;->m(Ljava/lang/String;)V

    .line 998
    .line 999
    .line 1000
    goto/16 :goto_25

    .line 1001
    .line 1002
    :pswitch_8
    if-eq v5, v0, :cond_20

    .line 1003
    .line 1004
    invoke-static {v1, v5}, Leb7;->q(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    .line 1005
    .line 1006
    .line 1007
    goto :goto_9

    .line 1008
    :cond_20
    const-string v0, "Header format error: kEmptyStream must appear before kAnti"

    .line 1009
    .line 1010
    invoke-static {v0}, Ly5;->m(Ljava/lang/String;)V

    .line 1011
    .line 1012
    .line 1013
    goto/16 :goto_25

    .line 1014
    .line 1015
    :pswitch_9
    if-eq v5, v0, :cond_21

    .line 1016
    .line 1017
    invoke-static {v1, v5}, Leb7;->q(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    .line 1018
    .line 1019
    .line 1020
    goto :goto_9

    .line 1021
    :cond_21
    const-string v0, "Header format error: kEmptyStream must appear before kEmptyFile"

    .line 1022
    .line 1023
    invoke-static {v0}, Ly5;->m(Ljava/lang/String;)V

    .line 1024
    .line 1025
    .line 1026
    goto/16 :goto_25

    .line 1027
    .line 1028
    :pswitch_a
    iget v5, v10, Lcb7;->h:I

    .line 1029
    .line 1030
    invoke-static {v1, v5}, Leb7;->q(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    .line 1031
    .line 1032
    .line 1033
    move-result-object v5

    .line 1034
    invoke-virtual {v5}, Ljava/util/BitSet;->cardinality()I

    .line 1035
    .line 1036
    .line 1037
    move-result v5

    .line 1038
    :goto_9
    move/from16 v15, v19

    .line 1039
    .line 1040
    const/4 v14, 0x3

    .line 1041
    goto/16 :goto_6

    .line 1042
    .line 1043
    :cond_22
    move-wide/from16 v17, v6

    .line 1044
    .line 1045
    goto/16 :goto_7

    .line 1046
    .line 1047
    :goto_a
    if-nez v11, :cond_46

    .line 1048
    .line 1049
    invoke-virtual {v10, v8}, Lcb7;->a(I)V

    .line 1050
    .line 1051
    .line 1052
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1053
    .line 1054
    .line 1055
    invoke-static {v1}, Leb7;->m(Ljava/nio/ByteBuffer;)I

    .line 1056
    .line 1057
    .line 1058
    move-result v4

    .line 1059
    if-ne v4, v12, :cond_24

    .line 1060
    .line 1061
    invoke-static {v1}, Leb7;->v(Ljava/nio/ByteBuffer;)J

    .line 1062
    .line 1063
    .line 1064
    move-result-wide v4

    .line 1065
    :goto_b
    cmp-long v4, v4, v17

    .line 1066
    .line 1067
    if-eqz v4, :cond_23

    .line 1068
    .line 1069
    invoke-static {v1}, Leb7;->v(Ljava/nio/ByteBuffer;)J

    .line 1070
    .line 1071
    .line 1072
    move-result-wide v4

    .line 1073
    long-to-int v4, v4

    .line 1074
    new-array v5, v4, [B

    .line 1075
    .line 1076
    invoke-static {v1, v4}, Leb7;->g(Ljava/nio/ByteBuffer;I)V

    .line 1077
    .line 1078
    .line 1079
    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1080
    .line 1081
    .line 1082
    invoke-static {v1}, Leb7;->v(Ljava/nio/ByteBuffer;)J

    .line 1083
    .line 1084
    .line 1085
    move-result-wide v4

    .line 1086
    goto :goto_b

    .line 1087
    :cond_23
    invoke-static {v1}, Leb7;->m(Ljava/nio/ByteBuffer;)I

    .line 1088
    .line 1089
    .line 1090
    move-result v4

    .line 1091
    :cond_24
    const/4 v7, 0x3

    .line 1092
    if-eq v4, v7, :cond_45

    .line 1093
    .line 1094
    move/from16 v5, v19

    .line 1095
    .line 1096
    if-ne v4, v5, :cond_25

    .line 1097
    .line 1098
    invoke-static {v1, v2}, Leb7;->u(Ljava/nio/ByteBuffer;Lg40;)V

    .line 1099
    .line 1100
    .line 1101
    invoke-static {v1}, Leb7;->m(Ljava/nio/ByteBuffer;)I

    .line 1102
    .line 1103
    .line 1104
    move-result v4

    .line 1105
    :cond_25
    if-ne v4, v3, :cond_3a

    .line 1106
    .line 1107
    invoke-static {v1}, Leb7;->v(Ljava/nio/ByteBuffer;)J

    .line 1108
    .line 1109
    .line 1110
    move-result-wide v3

    .line 1111
    long-to-int v3, v3

    .line 1112
    new-instance v4, Ljava/util/LinkedHashMap;

    .line 1113
    .line 1114
    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1115
    .line 1116
    .line 1117
    const/4 v5, 0x0

    .line 1118
    const/4 v6, 0x0

    .line 1119
    const/4 v7, 0x0

    .line 1120
    :goto_c
    invoke-static {v1}, Leb7;->m(Ljava/nio/ByteBuffer;)I

    .line 1121
    .line 1122
    .line 1123
    move-result v8

    .line 1124
    if-nez v8, :cond_3b

    .line 1125
    .line 1126
    move v8, v9

    .line 1127
    move v10, v8

    .line 1128
    move v11, v10

    .line 1129
    :goto_d
    if-ge v8, v3, :cond_2f

    .line 1130
    .line 1131
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1132
    .line 1133
    .line 1134
    move-result-object v12

    .line 1135
    invoke-virtual {v4, v12}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1136
    .line 1137
    .line 1138
    move-result-object v12

    .line 1139
    check-cast v12, Lwa7;

    .line 1140
    .line 1141
    if-nez v12, :cond_26

    .line 1142
    .line 1143
    move/from16 v20, v0

    .line 1144
    .line 1145
    move-object v15, v1

    .line 1146
    :goto_e
    move-wide/from16 v0, v17

    .line 1147
    .line 1148
    goto/16 :goto_14

    .line 1149
    .line 1150
    :cond_26
    if-eqz v5, :cond_28

    .line 1151
    .line 1152
    invoke-virtual {v5, v8}, Ljava/util/BitSet;->get(I)Z

    .line 1153
    .line 1154
    .line 1155
    move-result v13

    .line 1156
    if-nez v13, :cond_27

    .line 1157
    .line 1158
    goto :goto_f

    .line 1159
    :cond_27
    move v13, v9

    .line 1160
    goto :goto_10

    .line 1161
    :cond_28
    :goto_f
    const/4 v13, 0x1

    .line 1162
    :goto_10
    iput-boolean v13, v12, Lwa7;->b:Z

    .line 1163
    .line 1164
    if-eqz v13, :cond_2b

    .line 1165
    .line 1166
    iget-object v13, v2, Lg40;->f:Ll22;

    .line 1167
    .line 1168
    if-eqz v13, :cond_2a

    .line 1169
    .line 1170
    iput-boolean v9, v12, Lwa7;->c:Z

    .line 1171
    .line 1172
    iput-boolean v9, v12, Lwa7;->d:Z

    .line 1173
    .line 1174
    iget-object v13, v13, Ll22;->c:Ljava/lang/Object;

    .line 1175
    .line 1176
    check-cast v13, Ljava/util/BitSet;

    .line 1177
    .line 1178
    invoke-virtual {v13, v11}, Ljava/util/BitSet;->get(I)Z

    .line 1179
    .line 1180
    .line 1181
    move-result v13

    .line 1182
    iput-boolean v13, v12, Lwa7;->m:Z

    .line 1183
    .line 1184
    iget-object v13, v2, Lg40;->f:Ll22;

    .line 1185
    .line 1186
    iget-object v14, v13, Ll22;->d:Ljava/lang/Object;

    .line 1187
    .line 1188
    check-cast v14, [J

    .line 1189
    .line 1190
    move/from16 v20, v0

    .line 1191
    .line 1192
    move-object v15, v1

    .line 1193
    aget-wide v0, v14, v11

    .line 1194
    .line 1195
    iput-wide v0, v12, Lwa7;->n:J

    .line 1196
    .line 1197
    iget-object v0, v13, Ll22;->b:Ljava/lang/Object;

    .line 1198
    .line 1199
    check-cast v0, [J

    .line 1200
    .line 1201
    aget-wide v13, v0, v11

    .line 1202
    .line 1203
    iput-wide v13, v12, Lwa7;->p:J

    .line 1204
    .line 1205
    cmp-long v0, v13, v17

    .line 1206
    .line 1207
    if-ltz v0, :cond_29

    .line 1208
    .line 1209
    add-int/lit8 v11, v11, 0x1

    .line 1210
    .line 1211
    goto :goto_e

    .line 1212
    :cond_29
    const-string v0, "broken archive, entry with negative size"

    .line 1213
    .line 1214
    invoke-static {v0}, Ly5;->m(Ljava/lang/String;)V

    .line 1215
    .line 1216
    .line 1217
    goto/16 :goto_25

    .line 1218
    .line 1219
    :cond_2a
    const-string v0, "Archive contains file with streams but no subStreamsInfo"

    .line 1220
    .line 1221
    invoke-static {v0}, Ly5;->m(Ljava/lang/String;)V

    .line 1222
    .line 1223
    .line 1224
    goto/16 :goto_25

    .line 1225
    .line 1226
    :cond_2b
    move/from16 v20, v0

    .line 1227
    .line 1228
    move-object v15, v1

    .line 1229
    if-eqz v6, :cond_2d

    .line 1230
    .line 1231
    invoke-virtual {v6, v10}, Ljava/util/BitSet;->get(I)Z

    .line 1232
    .line 1233
    .line 1234
    move-result v0

    .line 1235
    if-nez v0, :cond_2c

    .line 1236
    .line 1237
    goto :goto_11

    .line 1238
    :cond_2c
    move v0, v9

    .line 1239
    goto :goto_12

    .line 1240
    :cond_2d
    :goto_11
    const/4 v0, 0x1

    .line 1241
    :goto_12
    iput-boolean v0, v12, Lwa7;->c:Z

    .line 1242
    .line 1243
    if-eqz v7, :cond_2e

    .line 1244
    .line 1245
    invoke-virtual {v7, v10}, Ljava/util/BitSet;->get(I)Z

    .line 1246
    .line 1247
    .line 1248
    move-result v0

    .line 1249
    if-eqz v0, :cond_2e

    .line 1250
    .line 1251
    const/4 v0, 0x1

    .line 1252
    goto :goto_13

    .line 1253
    :cond_2e
    move v0, v9

    .line 1254
    :goto_13
    iput-boolean v0, v12, Lwa7;->d:Z

    .line 1255
    .line 1256
    iput-boolean v9, v12, Lwa7;->m:Z

    .line 1257
    .line 1258
    move-wide/from16 v0, v17

    .line 1259
    .line 1260
    iput-wide v0, v12, Lwa7;->p:J

    .line 1261
    .line 1262
    add-int/lit8 v10, v10, 0x1

    .line 1263
    .line 1264
    :goto_14
    add-int/lit8 v8, v8, 0x1

    .line 1265
    .line 1266
    move-wide/from16 v17, v0

    .line 1267
    .line 1268
    move-object v1, v15

    .line 1269
    move/from16 v0, v20

    .line 1270
    .line 1271
    goto/16 :goto_d

    .line 1272
    .line 1273
    :cond_2f
    move/from16 v20, v0

    .line 1274
    .line 1275
    move-object v15, v1

    .line 1276
    move-wide/from16 v0, v17

    .line 1277
    .line 1278
    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 1279
    .line 1280
    .line 1281
    move-result-object v3

    .line 1282
    invoke-interface {v3}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 1283
    .line 1284
    .line 1285
    move-result-object v3

    .line 1286
    new-instance v4, Lcu5;

    .line 1287
    .line 1288
    const/4 v10, 0x1

    .line 1289
    invoke-direct {v4, v10}, Lcu5;-><init>(I)V

    .line 1290
    .line 1291
    .line 1292
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 1293
    .line 1294
    .line 1295
    move-result-object v3

    .line 1296
    new-instance v4, Lt64;

    .line 1297
    .line 1298
    invoke-direct {v4, v10}, Lt64;-><init>(I)V

    .line 1299
    .line 1300
    .line 1301
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    .line 1302
    .line 1303
    .line 1304
    move-result-object v3

    .line 1305
    check-cast v3, [Lwa7;

    .line 1306
    .line 1307
    iput-object v3, v2, Lg40;->g:[Lwa7;

    .line 1308
    .line 1309
    iget-object v3, v2, Lg40;->e:[Lhj3;

    .line 1310
    .line 1311
    invoke-static {v3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    .line 1312
    .line 1313
    .line 1314
    move-result v3

    .line 1315
    new-array v4, v3, [I

    .line 1316
    .line 1317
    move v5, v9

    .line 1318
    move v6, v5

    .line 1319
    :goto_15
    if-ge v5, v3, :cond_30

    .line 1320
    .line 1321
    aput v6, v4, v5

    .line 1322
    .line 1323
    iget-object v7, v2, Lg40;->e:[Lhj3;

    .line 1324
    .line 1325
    aget-object v7, v7, v5

    .line 1326
    .line 1327
    iget-object v7, v7, Lhj3;->e:[J

    .line 1328
    .line 1329
    array-length v7, v7

    .line 1330
    add-int/2addr v6, v7

    .line 1331
    add-int/lit8 v5, v5, 0x1

    .line 1332
    .line 1333
    goto :goto_15

    .line 1334
    :cond_30
    iget-object v5, v2, Lg40;->b:[J

    .line 1335
    .line 1336
    array-length v5, v5

    .line 1337
    new-array v6, v5, [J

    .line 1338
    .line 1339
    move v7, v9

    .line 1340
    :goto_16
    if-ge v7, v5, :cond_31

    .line 1341
    .line 1342
    aput-wide v0, v6, v7

    .line 1343
    .line 1344
    iget-object v8, v2, Lg40;->b:[J

    .line 1345
    .line 1346
    aget-wide v10, v8, v7

    .line 1347
    .line 1348
    add-long/2addr v0, v10

    .line 1349
    add-int/lit8 v7, v7, 0x1

    .line 1350
    .line 1351
    goto :goto_16

    .line 1352
    :cond_31
    new-array v0, v3, [I

    .line 1353
    .line 1354
    iget-object v1, v2, Lg40;->g:[Lwa7;

    .line 1355
    .line 1356
    array-length v1, v1

    .line 1357
    new-array v1, v1, [I

    .line 1358
    .line 1359
    move v3, v9

    .line 1360
    move v5, v3

    .line 1361
    move v7, v5

    .line 1362
    :goto_17
    iget-object v8, v2, Lg40;->g:[Lwa7;

    .line 1363
    .line 1364
    array-length v10, v8

    .line 1365
    if-ge v3, v10, :cond_39

    .line 1366
    .line 1367
    aget-object v8, v8, v3

    .line 1368
    .line 1369
    iget-boolean v8, v8, Lwa7;->b:Z

    .line 1370
    .line 1371
    if-nez v8, :cond_32

    .line 1372
    .line 1373
    if-nez v5, :cond_32

    .line 1374
    .line 1375
    aput v20, v1, v3

    .line 1376
    .line 1377
    goto :goto_1b

    .line 1378
    :cond_32
    if-nez v5, :cond_36

    .line 1379
    .line 1380
    :goto_18
    iget-object v8, v2, Lg40;->e:[Lhj3;

    .line 1381
    .line 1382
    array-length v10, v8

    .line 1383
    if-ge v7, v10, :cond_34

    .line 1384
    .line 1385
    aput v3, v0, v7

    .line 1386
    .line 1387
    aget-object v10, v8, v7

    .line 1388
    .line 1389
    iget v10, v10, Lhj3;->i:I

    .line 1390
    .line 1391
    if-lez v10, :cond_33

    .line 1392
    .line 1393
    goto :goto_19

    .line 1394
    :cond_33
    add-int/lit8 v7, v7, 0x1

    .line 1395
    .line 1396
    goto :goto_18

    .line 1397
    :cond_34
    :goto_19
    array-length v8, v8

    .line 1398
    if-ge v7, v8, :cond_35

    .line 1399
    .line 1400
    goto :goto_1a

    .line 1401
    :cond_35
    const-string v0, "Too few folders in archive"

    .line 1402
    .line 1403
    invoke-static {v0}, Ly5;->m(Ljava/lang/String;)V

    .line 1404
    .line 1405
    .line 1406
    goto/16 :goto_25

    .line 1407
    .line 1408
    :cond_36
    :goto_1a
    aput v7, v1, v3

    .line 1409
    .line 1410
    iget-object v8, v2, Lg40;->g:[Lwa7;

    .line 1411
    .line 1412
    aget-object v8, v8, v3

    .line 1413
    .line 1414
    iget-boolean v8, v8, Lwa7;->b:Z

    .line 1415
    .line 1416
    if-nez v8, :cond_37

    .line 1417
    .line 1418
    goto :goto_1b

    .line 1419
    :cond_37
    add-int/lit8 v5, v5, 0x1

    .line 1420
    .line 1421
    iget-object v8, v2, Lg40;->e:[Lhj3;

    .line 1422
    .line 1423
    aget-object v8, v8, v7

    .line 1424
    .line 1425
    iget v8, v8, Lhj3;->i:I

    .line 1426
    .line 1427
    if-lt v5, v8, :cond_38

    .line 1428
    .line 1429
    add-int/lit8 v7, v7, 0x1

    .line 1430
    .line 1431
    move v5, v9

    .line 1432
    :cond_38
    :goto_1b
    add-int/lit8 v3, v3, 0x1

    .line 1433
    .line 1434
    goto :goto_17

    .line 1435
    :cond_39
    new-instance v3, Ll40;

    .line 1436
    .line 1437
    invoke-direct {v3, v4, v6, v0, v1}, Ll40;-><init>([I[J[I[I)V

    .line 1438
    .line 1439
    .line 1440
    iput-object v3, v2, Lg40;->h:Ll40;

    .line 1441
    .line 1442
    invoke-static {v15}, Leb7;->m(Ljava/nio/ByteBuffer;)I

    .line 1443
    .line 1444
    .line 1445
    :cond_3a
    const/4 v0, 0x0

    .line 1446
    goto/16 :goto_24

    .line 1447
    .line 1448
    :cond_3b
    move/from16 v20, v0

    .line 1449
    .line 1450
    move-object v15, v1

    .line 1451
    move-wide/from16 v0, v17

    .line 1452
    .line 1453
    const/4 v10, 0x1

    .line 1454
    invoke-static {v15}, Leb7;->v(Ljava/nio/ByteBuffer;)J

    .line 1455
    .line 1456
    .line 1457
    move-result-wide v11

    .line 1458
    const/16 v13, 0x19

    .line 1459
    .line 1460
    if-eq v8, v13, :cond_43

    .line 1461
    .line 1462
    packed-switch v8, :pswitch_data_1

    .line 1463
    .line 1464
    .line 1465
    invoke-static {v11, v12, v15}, Leb7;->D(JLjava/nio/ByteBuffer;)J

    .line 1466
    .line 1467
    .line 1468
    goto/16 :goto_23

    .line 1469
    .line 1470
    :pswitch_b
    invoke-static {v15, v3}, Leb7;->n(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    .line 1471
    .line 1472
    .line 1473
    move-result-object v8

    .line 1474
    invoke-static {v15}, Leb7;->m(Ljava/nio/ByteBuffer;)I

    .line 1475
    .line 1476
    .line 1477
    move v11, v9

    .line 1478
    :goto_1c
    if-ge v11, v3, :cond_44

    .line 1479
    .line 1480
    invoke-static {v4, v11}, Leb7;->h(Ljava/util/LinkedHashMap;I)V

    .line 1481
    .line 1482
    .line 1483
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1484
    .line 1485
    .line 1486
    move-result-object v12

    .line 1487
    invoke-virtual {v4, v12}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1488
    .line 1489
    .line 1490
    move-result-object v12

    .line 1491
    check-cast v12, Lwa7;

    .line 1492
    .line 1493
    invoke-virtual {v8, v11}, Ljava/util/BitSet;->get(I)Z

    .line 1494
    .line 1495
    .line 1496
    move-result v13

    .line 1497
    iput-boolean v13, v12, Lwa7;->k:Z

    .line 1498
    .line 1499
    if-eqz v13, :cond_3c

    .line 1500
    .line 1501
    const/4 v13, 0x4

    .line 1502
    invoke-static {v15, v13}, Leb7;->g(Ljava/nio/ByteBuffer;I)V

    .line 1503
    .line 1504
    .line 1505
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->getInt()I

    .line 1506
    .line 1507
    .line 1508
    move-result v14

    .line 1509
    iput v14, v12, Lwa7;->l:I

    .line 1510
    .line 1511
    goto :goto_1d

    .line 1512
    :cond_3c
    const/4 v13, 0x4

    .line 1513
    :goto_1d
    add-int/lit8 v11, v11, 0x1

    .line 1514
    .line 1515
    goto :goto_1c

    .line 1516
    :pswitch_c
    const/4 v13, 0x4

    .line 1517
    invoke-static {v15, v3}, Leb7;->n(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    .line 1518
    .line 1519
    .line 1520
    move-result-object v8

    .line 1521
    invoke-static {v15}, Leb7;->m(Ljava/nio/ByteBuffer;)I

    .line 1522
    .line 1523
    .line 1524
    move v11, v9

    .line 1525
    :goto_1e
    if-ge v11, v3, :cond_44

    .line 1526
    .line 1527
    invoke-static {v4, v11}, Leb7;->h(Ljava/util/LinkedHashMap;I)V

    .line 1528
    .line 1529
    .line 1530
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1531
    .line 1532
    .line 1533
    move-result-object v12

    .line 1534
    invoke-virtual {v4, v12}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1535
    .line 1536
    .line 1537
    move-result-object v12

    .line 1538
    check-cast v12, Lwa7;

    .line 1539
    .line 1540
    invoke-virtual {v8, v11}, Ljava/util/BitSet;->get(I)Z

    .line 1541
    .line 1542
    .line 1543
    move-result v14

    .line 1544
    iput-boolean v14, v12, Lwa7;->f:Z

    .line 1545
    .line 1546
    if-eqz v14, :cond_3d

    .line 1547
    .line 1548
    move/from16 v14, p0

    .line 1549
    .line 1550
    invoke-static {v15, v14}, Leb7;->g(Ljava/nio/ByteBuffer;I)V

    .line 1551
    .line 1552
    .line 1553
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->getLong()J

    .line 1554
    .line 1555
    .line 1556
    move-result-wide v17

    .line 1557
    invoke-static/range {v17 .. v18}, Lha3;->a(J)Ljava/nio/file/attribute/FileTime;

    .line 1558
    .line 1559
    .line 1560
    move-result-object v14

    .line 1561
    iput-object v14, v12, Lwa7;->i:Ljava/nio/file/attribute/FileTime;

    .line 1562
    .line 1563
    :cond_3d
    add-int/lit8 v11, v11, 0x1

    .line 1564
    .line 1565
    const/16 p0, 0x8

    .line 1566
    .line 1567
    goto :goto_1e

    .line 1568
    :pswitch_d
    const/4 v13, 0x4

    .line 1569
    invoke-static {v15, v3}, Leb7;->n(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    .line 1570
    .line 1571
    .line 1572
    move-result-object v8

    .line 1573
    invoke-static {v15}, Leb7;->m(Ljava/nio/ByteBuffer;)I

    .line 1574
    .line 1575
    .line 1576
    move v11, v9

    .line 1577
    :goto_1f
    if-ge v11, v3, :cond_44

    .line 1578
    .line 1579
    invoke-static {v4, v11}, Leb7;->h(Ljava/util/LinkedHashMap;I)V

    .line 1580
    .line 1581
    .line 1582
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1583
    .line 1584
    .line 1585
    move-result-object v12

    .line 1586
    invoke-virtual {v4, v12}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1587
    .line 1588
    .line 1589
    move-result-object v12

    .line 1590
    check-cast v12, Lwa7;

    .line 1591
    .line 1592
    invoke-virtual {v8, v11}, Ljava/util/BitSet;->get(I)Z

    .line 1593
    .line 1594
    .line 1595
    move-result v14

    .line 1596
    iput-boolean v14, v12, Lwa7;->g:Z

    .line 1597
    .line 1598
    if-eqz v14, :cond_3e

    .line 1599
    .line 1600
    const/16 v14, 0x8

    .line 1601
    .line 1602
    invoke-static {v15, v14}, Leb7;->g(Ljava/nio/ByteBuffer;I)V

    .line 1603
    .line 1604
    .line 1605
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->getLong()J

    .line 1606
    .line 1607
    .line 1608
    move-result-wide v17

    .line 1609
    invoke-static/range {v17 .. v18}, Lha3;->a(J)Ljava/nio/file/attribute/FileTime;

    .line 1610
    .line 1611
    .line 1612
    move-result-object v14

    .line 1613
    iput-object v14, v12, Lwa7;->j:Ljava/nio/file/attribute/FileTime;

    .line 1614
    .line 1615
    :cond_3e
    add-int/lit8 v11, v11, 0x1

    .line 1616
    .line 1617
    goto :goto_1f

    .line 1618
    :pswitch_e
    const/4 v13, 0x4

    .line 1619
    invoke-static {v15, v3}, Leb7;->n(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    .line 1620
    .line 1621
    .line 1622
    move-result-object v8

    .line 1623
    invoke-static {v15}, Leb7;->m(Ljava/nio/ByteBuffer;)I

    .line 1624
    .line 1625
    .line 1626
    move v11, v9

    .line 1627
    :goto_20
    if-ge v11, v3, :cond_44

    .line 1628
    .line 1629
    invoke-static {v4, v11}, Leb7;->h(Ljava/util/LinkedHashMap;I)V

    .line 1630
    .line 1631
    .line 1632
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1633
    .line 1634
    .line 1635
    move-result-object v12

    .line 1636
    invoke-virtual {v4, v12}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1637
    .line 1638
    .line 1639
    move-result-object v12

    .line 1640
    check-cast v12, Lwa7;

    .line 1641
    .line 1642
    invoke-virtual {v8, v11}, Ljava/util/BitSet;->get(I)Z

    .line 1643
    .line 1644
    .line 1645
    move-result v14

    .line 1646
    iput-boolean v14, v12, Lwa7;->e:Z

    .line 1647
    .line 1648
    if-eqz v14, :cond_3f

    .line 1649
    .line 1650
    const/16 v14, 0x8

    .line 1651
    .line 1652
    invoke-static {v15, v14}, Leb7;->g(Ljava/nio/ByteBuffer;I)V

    .line 1653
    .line 1654
    .line 1655
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->getLong()J

    .line 1656
    .line 1657
    .line 1658
    move-result-wide v17

    .line 1659
    invoke-static/range {v17 .. v18}, Lha3;->a(J)Ljava/nio/file/attribute/FileTime;

    .line 1660
    .line 1661
    .line 1662
    move-result-object v0

    .line 1663
    iput-object v0, v12, Lwa7;->h:Ljava/nio/file/attribute/FileTime;

    .line 1664
    .line 1665
    goto :goto_21

    .line 1666
    :cond_3f
    const/16 v14, 0x8

    .line 1667
    .line 1668
    :goto_21
    add-int/lit8 v11, v11, 0x1

    .line 1669
    .line 1670
    const-wide/16 v0, 0x0

    .line 1671
    .line 1672
    goto :goto_20

    .line 1673
    :pswitch_f
    const/4 v13, 0x4

    .line 1674
    move/from16 v14, p0

    .line 1675
    .line 1676
    invoke-static {v15}, Leb7;->m(Ljava/nio/ByteBuffer;)I

    .line 1677
    .line 1678
    .line 1679
    sub-long v11, v11, v21

    .line 1680
    .line 1681
    long-to-int v0, v11

    .line 1682
    new-array v1, v0, [B

    .line 1683
    .line 1684
    invoke-static {v15, v0}, Leb7;->g(Ljava/nio/ByteBuffer;I)V

    .line 1685
    .line 1686
    .line 1687
    invoke-virtual {v15, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1688
    .line 1689
    .line 1690
    move v8, v9

    .line 1691
    move v11, v8

    .line 1692
    move v12, v11

    .line 1693
    :goto_22
    if-ge v8, v0, :cond_41

    .line 1694
    .line 1695
    aget-byte v17, v1, v8

    .line 1696
    .line 1697
    if-nez v17, :cond_40

    .line 1698
    .line 1699
    add-int/lit8 v17, v8, 0x1

    .line 1700
    .line 1701
    aget-byte v17, v1, v17

    .line 1702
    .line 1703
    if-nez v17, :cond_40

    .line 1704
    .line 1705
    invoke-static {v4, v12}, Leb7;->h(Ljava/util/LinkedHashMap;I)V

    .line 1706
    .line 1707
    .line 1708
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1709
    .line 1710
    .line 1711
    move-result-object v9

    .line 1712
    invoke-virtual {v4, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1713
    .line 1714
    .line 1715
    move-result-object v9

    .line 1716
    check-cast v9, Lwa7;

    .line 1717
    .line 1718
    new-instance v10, Ljava/lang/String;

    .line 1719
    .line 1720
    sub-int v13, v8, v11

    .line 1721
    .line 1722
    sget-object v14, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    .line 1723
    .line 1724
    invoke-direct {v10, v1, v11, v13, v14}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 1725
    .line 1726
    .line 1727
    iput-object v10, v9, Lwa7;->a:Ljava/lang/String;

    .line 1728
    .line 1729
    add-int/lit8 v11, v8, 0x2

    .line 1730
    .line 1731
    add-int/lit8 v12, v12, 0x1

    .line 1732
    .line 1733
    :cond_40
    add-int/lit8 v8, v8, 0x2

    .line 1734
    .line 1735
    const/4 v9, 0x0

    .line 1736
    const/4 v10, 0x1

    .line 1737
    const/4 v13, 0x4

    .line 1738
    const/16 v14, 0x8

    .line 1739
    .line 1740
    goto :goto_22

    .line 1741
    :cond_41
    if-ne v11, v0, :cond_42

    .line 1742
    .line 1743
    if-ne v12, v3, :cond_42

    .line 1744
    .line 1745
    goto :goto_23

    .line 1746
    :cond_42
    const-string v0, "Error parsing file names"

    .line 1747
    .line 1748
    invoke-static {v0}, Ly5;->m(Ljava/lang/String;)V

    .line 1749
    .line 1750
    .line 1751
    goto :goto_25

    .line 1752
    :pswitch_10
    new-instance v0, Lya7;

    .line 1753
    .line 1754
    invoke-direct {v0, v2}, Lya7;-><init>(Lg40;)V

    .line 1755
    .line 1756
    .line 1757
    invoke-static {v5, v0}, Lh40;->a(Ljava/util/BitSet;Ljava/util/function/Supplier;)V

    .line 1758
    .line 1759
    .line 1760
    invoke-virtual {v5}, Ljava/util/BitSet;->cardinality()I

    .line 1761
    .line 1762
    .line 1763
    move-result v0

    .line 1764
    invoke-static {v15, v0}, Leb7;->q(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    .line 1765
    .line 1766
    .line 1767
    move-result-object v0

    .line 1768
    move-object v7, v0

    .line 1769
    goto :goto_23

    .line 1770
    :pswitch_11
    new-instance v0, Lxa7;

    .line 1771
    .line 1772
    invoke-direct {v0, v2}, Lxa7;-><init>(Lg40;)V

    .line 1773
    .line 1774
    .line 1775
    invoke-static {v5, v0}, Lh40;->a(Ljava/util/BitSet;Ljava/util/function/Supplier;)V

    .line 1776
    .line 1777
    .line 1778
    invoke-virtual {v5}, Ljava/util/BitSet;->cardinality()I

    .line 1779
    .line 1780
    .line 1781
    move-result v0

    .line 1782
    invoke-static {v15, v0}, Leb7;->q(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    .line 1783
    .line 1784
    .line 1785
    move-result-object v0

    .line 1786
    move-object v6, v0

    .line 1787
    goto :goto_23

    .line 1788
    :pswitch_12
    invoke-static {v15, v3}, Leb7;->q(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    .line 1789
    .line 1790
    .line 1791
    move-result-object v0

    .line 1792
    move-object v5, v0

    .line 1793
    goto :goto_23

    .line 1794
    :cond_43
    invoke-static {v11, v12, v15}, Leb7;->D(JLjava/nio/ByteBuffer;)J

    .line 1795
    .line 1796
    .line 1797
    :cond_44
    :goto_23
    move-object v1, v15

    .line 1798
    move/from16 v0, v20

    .line 1799
    .line 1800
    const/16 p0, 0x8

    .line 1801
    .line 1802
    const/4 v9, 0x0

    .line 1803
    const-wide/16 v17, 0x0

    .line 1804
    .line 1805
    goto/16 :goto_c

    .line 1806
    .line 1807
    :goto_24
    iput-object v0, v2, Lg40;->f:Ll22;

    .line 1808
    .line 1809
    move-object v3, v2

    .line 1810
    goto :goto_26

    .line 1811
    :cond_45
    invoke-static {v13}, Ly5;->m(Ljava/lang/String;)V

    .line 1812
    .line 1813
    .line 1814
    goto :goto_25

    .line 1815
    :cond_46
    const-string v0, "Badly terminated header, found "

    .line 1816
    .line 1817
    invoke-static {v11, v0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 1818
    .line 1819
    .line 1820
    move-result-object v0

    .line 1821
    invoke-static {v0}, Ly5;->m(Ljava/lang/String;)V

    .line 1822
    .line 1823
    .line 1824
    goto :goto_25

    .line 1825
    :cond_47
    invoke-static {v13}, Ly5;->m(Ljava/lang/String;)V

    .line 1826
    .line 1827
    .line 1828
    goto :goto_25

    .line 1829
    :cond_48
    const-string v0, "Broken or unsupported archive: no Header"

    .line 1830
    .line 1831
    invoke-static {v0}, Ly5;->m(Ljava/lang/String;)V

    .line 1832
    .line 1833
    .line 1834
    goto :goto_25

    .line 1835
    :cond_49
    const-string v0, "NextHeader CRC-32 mismatch"

    .line 1836
    .line 1837
    invoke-static {v0}, Ly5;->m(Ljava/lang/String;)V

    .line 1838
    .line 1839
    .line 1840
    :goto_25
    const/4 v3, 0x0

    .line 1841
    goto :goto_26

    .line 1842
    :cond_4a
    const-string v0, "Problem computing NextHeader CRC-32"

    .line 1843
    .line 1844
    invoke-static {v0}, Ly5;->m(Ljava/lang/String;)V

    .line 1845
    .line 1846
    .line 1847
    goto :goto_25

    .line 1848
    :goto_26
    return-object v3

    .line 1849
    :catchall_0
    move-exception v0

    .line 1850
    move-object v1, v0

    .line 1851
    goto :goto_27

    .line 1852
    :cond_4b
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    .line 1853
    .line 1854
    const-string v1, "nextHeaderSize is out of bounds"

    .line 1855
    .line 1856
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 1857
    .line 1858
    .line 1859
    throw v0

    .line 1860
    :cond_4c
    new-instance v0, Ljava/io/IOException;

    .line 1861
    .line 1862
    const-string v1, "nextHeaderOffset is out of bounds"

    .line 1863
    .line 1864
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 1865
    .line 1866
    .line 1867
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1868
    :goto_27
    :try_start_2
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1869
    .line 1870
    .line 1871
    goto :goto_28

    .line 1872
    :catchall_1
    move-exception v0

    .line 1873
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 1874
    .line 1875
    .line 1876
    :goto_28
    throw v1

    .line 1877
    :cond_4d
    new-instance v0, Ljava/io/IOException;

    .line 1878
    .line 1879
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 1880
    .line 1881
    .line 1882
    move-result-object v1

    .line 1883
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 1884
    .line 1885
    .line 1886
    move-result-object v2

    .line 1887
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    .line 1888
    .line 1889
    .line 1890
    move-result-object v1

    .line 1891
    const-string v2, "Unsupported 7z version (%d,%d)"

    .line 1892
    .line 1893
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1894
    .line 1895
    .line 1896
    move-result-object v1

    .line 1897
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 1898
    .line 1899
    .line 1900
    throw v0

    .line 1901
    :cond_4e
    const-string v0, "Bad 7z signature"

    .line 1902
    .line 1903
    invoke-static {v0}, Ly5;->m(Ljava/lang/String;)V

    .line 1904
    .line 1905
    .line 1906
    const/16 v16, 0x0

    .line 1907
    .line 1908
    return-object v16

    .line 1909
    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 1910
    .line 1911
    .line 1912
    .line 1913
    .line 1914
    .line 1915
    .line 1916
    .line 1917
    .line 1918
    .line 1919
    .line 1920
    .line 1921
    .line 1922
    .line 1923
    .line 1924
    .line 1925
    .line 1926
    .line 1927
    .line 1928
    .line 1929
    .line 1930
    .line 1931
    .line 1932
    .line 1933
    .line 1934
    .line 1935
    .line 1936
    .line 1937
    :pswitch_data_1
    .packed-switch 0xe
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Leb7;->c:Lg40;

    .line 2
    .line 3
    invoke-virtual {p0}, Lg40;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final z(ILwa7;)V
    .locals 12

    .line 1
    iget-object v0, p0, Leb7;->n:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Leb7;->f:Ljava/io/InputStream;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Leb7;->f:Ljava/io/InputStream;

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Leb7;->c:Lg40;

    .line 17
    .line 18
    iget-object v2, v0, Lg40;->e:[Lhj3;

    .line 19
    .line 20
    aget-object v2, v2, p1

    .line 21
    .line 22
    iget-object v3, v0, Lg40;->h:Ll40;

    .line 23
    .line 24
    iget-object v4, v3, Ll40;->b:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v4, [I

    .line 27
    .line 28
    aget p1, v4, p1

    .line 29
    .line 30
    const-wide/16 v4, 0x20

    .line 31
    .line 32
    iget-wide v6, v0, Lg40;->a:J

    .line 33
    .line 34
    add-long/2addr v6, v4

    .line 35
    iget-object v3, v3, Ll40;->c:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v3, [J

    .line 38
    .line 39
    aget-wide v4, v3, p1

    .line 40
    .line 41
    add-long/2addr v6, v4

    .line 42
    iget-object v3, p0, Leb7;->b:Ljava/nio/channels/SeekableByteChannel;

    .line 43
    .line 44
    invoke-interface {v3, v6, v7}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 45
    .line 46
    .line 47
    new-instance v3, Lbb7;

    .line 48
    .line 49
    new-instance v4, Ljava/io/BufferedInputStream;

    .line 50
    .line 51
    new-instance v5, Lyu0;

    .line 52
    .line 53
    iget-object v6, p0, Leb7;->b:Ljava/nio/channels/SeekableByteChannel;

    .line 54
    .line 55
    iget-object v0, v0, Lg40;->b:[J

    .line 56
    .line 57
    aget-wide v7, v0, p1

    .line 58
    .line 59
    invoke-direct {v5, v6, v7, v8}, Lyu0;-><init>(Ljava/nio/channels/SeekableByteChannel;J)V

    .line 60
    .line 61
    .line 62
    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 63
    .line 64
    .line 65
    invoke-direct {v3, p0, v4}, Lbb7;-><init>(Leb7;Ljava/io/BufferedInputStream;)V

    .line 66
    .line 67
    .line 68
    new-instance p1, Ljava/util/LinkedList;

    .line 69
    .line 70
    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2}, Lhj3;->a()Ljava/util/List;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    move-object v5, v3

    .line 82
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    if-eqz v3, :cond_6

    .line 87
    .line 88
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    move-object v8, v3

    .line 93
    check-cast v8, Lkk1;

    .line 94
    .line 95
    iget-wide v3, v8, Lkk1;->b:J

    .line 96
    .line 97
    const-wide/16 v6, 0x1

    .line 98
    .line 99
    cmp-long v3, v3, v6

    .line 100
    .line 101
    if-nez v3, :cond_5

    .line 102
    .line 103
    iget-wide v3, v8, Lkk1;->c:J

    .line 104
    .line 105
    cmp-long v3, v3, v6

    .line 106
    .line 107
    if-nez v3, :cond_5

    .line 108
    .line 109
    iget-object v3, v8, Lkk1;->a:[B

    .line 110
    .line 111
    const-class v4, Lfb7;

    .line 112
    .line 113
    invoke-virtual {v4}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    check-cast v4, [Lfb7;

    .line 118
    .line 119
    array-length v6, v4

    .line 120
    const/4 v7, 0x0

    .line 121
    move v9, v7

    .line 122
    :goto_1
    if-ge v9, v6, :cond_2

    .line 123
    .line 124
    aget-object v10, v4, v9

    .line 125
    .line 126
    iget-object v11, v10, Lfb7;->a:[B

    .line 127
    .line 128
    invoke-static {v11, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 129
    .line 130
    .line 131
    move-result v11

    .line 132
    if-eqz v11, :cond_1

    .line 133
    .line 134
    move-object v3, v10

    .line 135
    goto :goto_2

    .line 136
    :cond_1
    add-int/lit8 v9, v9, 0x1

    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_2
    move-object v3, v1

    .line 140
    :goto_2
    iget-object v4, v2, Lhj3;->a:[Lkk1;

    .line 141
    .line 142
    if-eqz v4, :cond_4

    .line 143
    .line 144
    :goto_3
    iget-object v4, v2, Lhj3;->a:[Lkk1;

    .line 145
    .line 146
    array-length v6, v4

    .line 147
    if-ge v7, v6, :cond_4

    .line 148
    .line 149
    aget-object v4, v4, v7

    .line 150
    .line 151
    if-ne v4, v8, :cond_3

    .line 152
    .line 153
    iget-object v4, v2, Lhj3;->f:[J

    .line 154
    .line 155
    aget-wide v6, v4, v7

    .line 156
    .line 157
    goto :goto_4

    .line 158
    :cond_3
    add-int/lit8 v7, v7, 0x1

    .line 159
    .line 160
    goto :goto_3

    .line 161
    :cond_4
    const-wide/16 v6, 0x0

    .line 162
    .line 163
    :goto_4
    iget-object v9, p0, Leb7;->k:[B

    .line 164
    .line 165
    iget v10, p0, Leb7;->p:I

    .line 166
    .line 167
    iget-object v4, p0, Leb7;->a:Ljava/lang/String;

    .line 168
    .line 169
    invoke-static/range {v4 .. v10}, Ltk1;->a(Ljava/lang/String;Ljava/io/InputStream;JLkk1;[BI)Ljava/io/InputStream;

    .line 170
    .line 171
    .line 172
    move-result-object v5

    .line 173
    new-instance v4, Lgb7;

    .line 174
    .line 175
    sget-object v6, Ltk1;->a:Llk1;

    .line 176
    .line 177
    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v6

    .line 181
    check-cast v6, Lj3;

    .line 182
    .line 183
    invoke-virtual {v6, v8}, Lj3;->d(Lkk1;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v6

    .line 187
    invoke-direct {v4, v3, v6}, Lgb7;-><init>(Lfb7;Ljava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p1, v4}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    goto :goto_0

    .line 194
    :cond_5
    const-string p0, "Multi input/output stream coders are not yet supported"

    .line 195
    .line 196
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    return-void

    .line 200
    :cond_6
    invoke-virtual {p2, p1}, Lwa7;->a(Ljava/lang/Iterable;)V

    .line 201
    .line 202
    .line 203
    iget-boolean p1, v2, Lhj3;->g:Z

    .line 204
    .line 205
    if-eqz p1, :cond_7

    .line 206
    .line 207
    sget p1, Lc61;->f:I

    .line 208
    .line 209
    new-instance p1, Lb61;

    .line 210
    .line 211
    invoke-direct {p1}, Ll5;-><init>()V

    .line 212
    .line 213
    .line 214
    const-wide/16 v0, -0x1

    .line 215
    .line 216
    iput-wide v0, p1, Lb61;->x:J

    .line 217
    .line 218
    new-instance p2, Ljava/util/zip/CRC32;

    .line 219
    .line 220
    invoke-direct {p2}, Ljava/util/zip/CRC32;-><init>()V

    .line 221
    .line 222
    .line 223
    iput-object p2, p1, Lb61;->t:Ljava/util/zip/CRC32;

    .line 224
    .line 225
    invoke-virtual {p1, v5}, Ll5;->J(Ljava/io/InputStream;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v2}, Lhj3;->b()J

    .line 229
    .line 230
    .line 231
    move-result-wide v0

    .line 232
    iput-wide v0, p1, Lb61;->x:J

    .line 233
    .line 234
    iget-wide v0, v2, Lhj3;->h:J

    .line 235
    .line 236
    iput-wide v0, p1, Lb61;->y:J

    .line 237
    .line 238
    new-instance v5, Lc61;

    .line 239
    .line 240
    invoke-direct {v5, p1}, Lc61;-><init>(Lb61;)V

    .line 241
    .line 242
    .line 243
    :cond_7
    iput-object v5, p0, Leb7;->f:Ljava/io/InputStream;

    .line 244
    .line 245
    return-void
.end method
