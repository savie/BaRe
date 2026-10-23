.class public final Lqp4;
.super Lop4;


# static fields
.field public static final t:Lpp4;

.field public static final x:[Lpp4;


# instance fields
.field public final b:[B

.field public final c:Lup4;

.field public final d:Llp4;

.field public final e:I

.field public final f:[B

.field public final k:Ljava/util/WeakHashMap;

.field public final n:I

.field public final p:Lhl2;

.field public q:I

.field public r:Lrp4;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lpp4;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lpp4;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lqp4;->t:Lpp4;

    .line 8
    .line 9
    const/16 v2, 0x81

    .line 10
    .line 11
    new-array v2, v2, [Lpp4;

    .line 12
    .line 13
    sput-object v2, Lqp4;->x:[Lpp4;

    .line 14
    .line 15
    aput-object v0, v2, v1

    .line 16
    .line 17
    const/4 v0, 0x2

    .line 18
    :goto_0
    sget-object v1, Lqp4;->x:[Lpp4;

    .line 19
    .line 20
    array-length v2, v1

    .line 21
    if-ge v0, v2, :cond_0

    .line 22
    .line 23
    new-instance v2, Lpp4;

    .line 24
    .line 25
    invoke-direct {v2, v0}, Lpp4;-><init>(I)V

    .line 26
    .line 27
    .line 28
    aput-object v2, v1, v0

    .line 29
    .line 30
    add-int/lit8 v0, v0, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    return-void
.end method

.method public constructor <init>(Lup4;Llp4;I[BI[B)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Ln60;-><init>(Z)V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Lqp4;->c:Lup4;

    .line 6
    .line 7
    iput-object p2, p0, Lqp4;->d:Llp4;

    .line 8
    .line 9
    iput p3, p0, Lqp4;->q:I

    .line 10
    .line 11
    invoke-static {p4}, Lms8;->k([B)[B

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    iput-object p2, p0, Lqp4;->b:[B

    .line 16
    .line 17
    iput p5, p0, Lqp4;->e:I

    .line 18
    .line 19
    invoke-static {p6}, Lms8;->k([B)[B

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    iput-object p2, p0, Lqp4;->f:[B

    .line 24
    .line 25
    iget p2, p1, Lup4;->c:I

    .line 26
    .line 27
    add-int/2addr p2, v0

    .line 28
    shl-int p2, v0, p2

    .line 29
    .line 30
    iput p2, p0, Lqp4;->n:I

    .line 31
    .line 32
    new-instance p2, Ljava/util/WeakHashMap;

    .line 33
    .line 34
    invoke-direct {p2}, Ljava/util/WeakHashMap;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object p2, p0, Lqp4;->k:Ljava/util/WeakHashMap;

    .line 38
    .line 39
    iget-object p2, p1, Lup4;->d:Lf1;

    .line 40
    .line 41
    iget p1, p1, Lup4;->b:I

    .line 42
    .line 43
    invoke-static {p1, p2}, Lxh8;->f(ILf1;)Lhl2;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iput-object p1, p0, Lqp4;->p:Lhl2;

    .line 48
    .line 49
    return-void
.end method

.method public static e(Ljava/lang/Object;)Lqp4;
    .locals 9

    .line 1
    instance-of v0, p0, Lqp4;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lqp4;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    instance-of v0, p0, Ljava/io/DataInputStream;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_4

    .line 12
    .line 13
    check-cast p0, Ljava/io/DataInputStream;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_3

    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    sget-object v2, Lup4;->e:Ltp4;

    .line 26
    .line 27
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    move-object v3, v0

    .line 36
    check-cast v3, Lup4;

    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    sget-object v2, Llp4;->g:Lkp4;

    .line 43
    .line 44
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    move-object v4, v0

    .line 53
    check-cast v4, Llp4;

    .line 54
    .line 55
    const/16 v0, 0x10

    .line 56
    .line 57
    new-array v6, v0, [B

    .line 58
    .line 59
    invoke-virtual {p0, v6}, Ljava/io/DataInputStream;->readFully([B)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    .line 67
    .line 68
    .line 69
    move-result v7

    .line 70
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-ltz v0, :cond_2

    .line 75
    .line 76
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-gt v0, v1, :cond_1

    .line 81
    .line 82
    new-array v8, v0, [B

    .line 83
    .line 84
    invoke-virtual {p0, v8}, Ljava/io/DataInputStream;->readFully([B)V

    .line 85
    .line 86
    .line 87
    new-instance v2, Lqp4;

    .line 88
    .line 89
    invoke-direct/range {v2 .. v8}, Lqp4;-><init>(Lup4;Llp4;I[BI[B)V

    .line 90
    .line 91
    .line 92
    return-object v2

    .line 93
    :cond_1
    new-instance v0, Ljava/io/IOException;

    .line 94
    .line 95
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    .line 96
    .line 97
    .line 98
    move-result p0

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    const-string v2, "secret length exceeded "

    .line 102
    .line 103
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    throw v0

    .line 117
    :cond_2
    const-string p0, "secret length less than zero"

    .line 118
    .line 119
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    return-object v1

    .line 123
    :cond_3
    const-string p0, "expected version 0 lms private key"

    .line 124
    .line 125
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    return-object v1

    .line 129
    :cond_4
    instance-of v0, p0, [B

    .line 130
    .line 131
    if-eqz v0, :cond_6

    .line 132
    .line 133
    :try_start_0
    new-instance v2, Ljava/io/DataInputStream;

    .line 134
    .line 135
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 136
    .line 137
    check-cast p0, [B

    .line 138
    .line 139
    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 140
    .line 141
    .line 142
    invoke-direct {v2, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 143
    .line 144
    .line 145
    :try_start_1
    invoke-static {v2}, Lqp4;->e(Ljava/lang/Object;)Lqp4;

    .line 146
    .line 147
    .line 148
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 150
    .line 151
    .line 152
    return-object p0

    .line 153
    :catchall_0
    move-exception v0

    .line 154
    move-object p0, v0

    .line 155
    move-object v1, v2

    .line 156
    goto :goto_0

    .line 157
    :catchall_1
    move-exception v0

    .line 158
    move-object p0, v0

    .line 159
    :goto_0
    if-eqz v1, :cond_5

    .line 160
    .line 161
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 162
    .line 163
    .line 164
    :cond_5
    throw p0

    .line 165
    :cond_6
    instance-of v0, p0, Ljava/io/InputStream;

    .line 166
    .line 167
    if-eqz v0, :cond_7

    .line 168
    .line 169
    check-cast p0, Ljava/io/InputStream;

    .line 170
    .line 171
    invoke-static {p0}, Liz1;->v(Ljava/io/InputStream;)[B

    .line 172
    .line 173
    .line 174
    move-result-object p0

    .line 175
    invoke-static {p0}, Lqp4;->e(Ljava/lang/Object;)Lqp4;

    .line 176
    .line 177
    .line 178
    move-result-object p0

    .line 179
    return-object p0

    .line 180
    :cond_7
    const-string v0, "cannot parse "

    .line 181
    .line 182
    invoke-static {p0, v0}, Lg84;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    return-object v1
.end method


# virtual methods
.method public final a(I)[B
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lqp4;->c:Lup4;

    .line 6
    .line 7
    iget v2, v2, Lup4;->c:I

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    shl-int v2, v3, v2

    .line 11
    .line 12
    iget-object v4, v0, Lqp4;->b:[B

    .line 13
    .line 14
    const/4 v5, 0x0

    .line 15
    iget-object v6, v0, Lqp4;->p:Lhl2;

    .line 16
    .line 17
    if-lt v1, v2, :cond_5

    .line 18
    .line 19
    invoke-static {v4}, Lms8;->k([B)[B

    .line 20
    .line 21
    .line 22
    move-result-object v7

    .line 23
    array-length v8, v7

    .line 24
    invoke-interface {v6, v7, v5, v8}, Lhl2;->update([BII)V

    .line 25
    .line 26
    .line 27
    invoke-static {v1, v6}, Lnc8;->q0(ILhl2;)V

    .line 28
    .line 29
    .line 30
    const/16 v7, -0x7e

    .line 31
    .line 32
    invoke-interface {v6, v7}, Lhl2;->a(B)V

    .line 33
    .line 34
    .line 35
    invoke-interface {v6, v7}, Lhl2;->a(B)V

    .line 36
    .line 37
    .line 38
    invoke-static {v4}, Lms8;->k([B)[B

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    sub-int/2addr v1, v2

    .line 43
    iget-object v2, v0, Lqp4;->f:[B

    .line 44
    .line 45
    invoke-static {v2}, Lms8;->k([B)[B

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    iget-object v0, v0, Lqp4;->d:Llp4;

    .line 50
    .line 51
    invoke-static {v0}, Lxh8;->o(Llp4;)Lhl2;

    .line 52
    .line 53
    .line 54
    move-result-object v7

    .line 55
    iget-object v8, v0, Llp4;->f:Lf1;

    .line 56
    .line 57
    iget v9, v0, Llp4;->b:I

    .line 58
    .line 59
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    .line 60
    .line 61
    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 62
    .line 63
    .line 64
    :try_start_0
    invoke-virtual {v10, v4}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 65
    .line 66
    .line 67
    ushr-int/lit8 v12, v1, 0x18

    .line 68
    .line 69
    int-to-byte v12, v12

    .line 70
    invoke-virtual {v10, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 71
    .line 72
    .line 73
    ushr-int/lit8 v13, v1, 0x10

    .line 74
    .line 75
    int-to-byte v13, v13

    .line 76
    invoke-virtual {v10, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 77
    .line 78
    .line 79
    ushr-int/lit8 v14, v1, 0x8

    .line 80
    .line 81
    int-to-byte v14, v14

    .line 82
    invoke-virtual {v10, v14}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 83
    .line 84
    .line 85
    int-to-byte v15, v1

    .line 86
    invoke-virtual {v10, v15}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 87
    .line 88
    .line 89
    move/from16 v16, v3

    .line 90
    .line 91
    const/16 v3, -0x80

    .line 92
    .line 93
    invoke-virtual {v10, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v10, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 97
    .line 98
    .line 99
    :goto_0
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->size()I

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    const/16 p0, 0x0

    .line 104
    .line 105
    const/16 v11, 0x16

    .line 106
    .line 107
    if-ge v3, v11, :cond_0

    .line 108
    .line 109
    invoke-virtual {v10, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_0
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    array-length v10, v3

    .line 118
    invoke-interface {v7, v3, v5, v10}, Lhl2;->update([BII)V

    .line 119
    .line 120
    .line 121
    invoke-static {v9, v8}, Lxh8;->f(ILf1;)Lhl2;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    .line 126
    .line 127
    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 128
    .line 129
    .line 130
    :try_start_1
    invoke-virtual {v10, v4}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 131
    .line 132
    .line 133
    invoke-virtual {v10, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v10, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v10, v14}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v10, v15}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 143
    .line 144
    .line 145
    invoke-interface {v3}, Lhl2;->c()I

    .line 146
    .line 147
    .line 148
    move-result v12

    .line 149
    const/16 v13, 0x17

    .line 150
    .line 151
    add-int/2addr v12, v13

    .line 152
    :goto_1
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->size()I

    .line 153
    .line 154
    .line 155
    move-result v14

    .line 156
    if-ge v14, v12, :cond_1

    .line 157
    .line 158
    invoke-virtual {v10, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 159
    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_1
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 163
    .line 164
    .line 165
    move-result-object v10

    .line 166
    new-instance v12, Li67;

    .line 167
    .line 168
    invoke-static {v9, v8}, Lxh8;->f(ILf1;)Lhl2;

    .line 169
    .line 170
    .line 171
    move-result-object v8

    .line 172
    invoke-direct {v12, v4, v2, v8}, Li67;-><init>([B[BLhl2;)V

    .line 173
    .line 174
    .line 175
    iput v1, v12, Li67;->d:I

    .line 176
    .line 177
    iput v5, v12, Li67;->e:I

    .line 178
    .line 179
    iget v1, v0, Llp4;->d:I

    .line 180
    .line 181
    iget v0, v0, Llp4;->c:I

    .line 182
    .line 183
    shl-int v0, v16, v0

    .line 184
    .line 185
    add-int/lit8 v0, v0, -0x1

    .line 186
    .line 187
    move v2, v5

    .line 188
    :goto_2
    if-ge v2, v1, :cond_4

    .line 189
    .line 190
    add-int/lit8 v4, v1, -0x1

    .line 191
    .line 192
    if-ge v2, v4, :cond_2

    .line 193
    .line 194
    move/from16 v4, v16

    .line 195
    .line 196
    goto :goto_3

    .line 197
    :cond_2
    move v4, v5

    .line 198
    :goto_3
    invoke-virtual {v12, v13, v4, v10}, Li67;->a(IZ[B)V

    .line 199
    .line 200
    .line 201
    int-to-short v4, v2

    .line 202
    ushr-int/lit8 v8, v4, 0x8

    .line 203
    .line 204
    int-to-byte v8, v8

    .line 205
    const/16 v14, 0x14

    .line 206
    .line 207
    aput-byte v8, v10, v14

    .line 208
    .line 209
    const/16 v8, 0x15

    .line 210
    .line 211
    int-to-byte v4, v4

    .line 212
    aput-byte v4, v10, v8

    .line 213
    .line 214
    move v4, v5

    .line 215
    :goto_4
    if-ge v4, v0, :cond_3

    .line 216
    .line 217
    int-to-byte v8, v4

    .line 218
    aput-byte v8, v10, v11

    .line 219
    .line 220
    array-length v8, v10

    .line 221
    invoke-interface {v3, v10, v5, v8}, Lhl2;->update([BII)V

    .line 222
    .line 223
    .line 224
    invoke-interface {v3, v10, v13}, Lhl2;->doFinal([BI)I

    .line 225
    .line 226
    .line 227
    add-int/lit8 v4, v4, 0x1

    .line 228
    .line 229
    goto :goto_4

    .line 230
    :cond_3
    invoke-interface {v7, v10, v13, v9}, Lhl2;->update([BII)V

    .line 231
    .line 232
    .line 233
    add-int/lit8 v2, v2, 0x1

    .line 234
    .line 235
    goto :goto_2

    .line 236
    :cond_4
    invoke-interface {v7}, Lhl2;->c()I

    .line 237
    .line 238
    .line 239
    move-result v0

    .line 240
    new-array v1, v0, [B

    .line 241
    .line 242
    invoke-interface {v7, v1, v5}, Lhl2;->doFinal([BI)I

    .line 243
    .line 244
    .line 245
    invoke-interface {v6, v1, v5, v0}, Lhl2;->update([BII)V

    .line 246
    .line 247
    .line 248
    invoke-interface {v6}, Lhl2;->c()I

    .line 249
    .line 250
    .line 251
    move-result v0

    .line 252
    new-array v0, v0, [B

    .line 253
    .line 254
    invoke-interface {v6, v0, v5}, Lhl2;->doFinal([BI)I

    .line 255
    .line 256
    .line 257
    return-object v0

    .line 258
    :catch_0
    move-exception v0

    .line 259
    :goto_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    invoke-static {v1, v0}, Le6;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 264
    .line 265
    .line 266
    return-object p0

    .line 267
    :catch_1
    move-exception v0

    .line 268
    const/16 p0, 0x0

    .line 269
    .line 270
    goto :goto_5

    .line 271
    :cond_5
    move/from16 v16, v3

    .line 272
    .line 273
    mul-int/lit8 v2, v1, 0x2

    .line 274
    .line 275
    invoke-virtual {v0, v2}, Lqp4;->b(I)[B

    .line 276
    .line 277
    .line 278
    move-result-object v3

    .line 279
    add-int/lit8 v2, v2, 0x1

    .line 280
    .line 281
    invoke-virtual {v0, v2}, Lqp4;->b(I)[B

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    invoke-static {v4}, Lms8;->k([B)[B

    .line 286
    .line 287
    .line 288
    move-result-object v2

    .line 289
    array-length v4, v2

    .line 290
    invoke-interface {v6, v2, v5, v4}, Lhl2;->update([BII)V

    .line 291
    .line 292
    .line 293
    invoke-static {v1, v6}, Lnc8;->q0(ILhl2;)V

    .line 294
    .line 295
    .line 296
    const/16 v1, -0x7d

    .line 297
    .line 298
    invoke-interface {v6, v1}, Lhl2;->a(B)V

    .line 299
    .line 300
    .line 301
    invoke-interface {v6, v1}, Lhl2;->a(B)V

    .line 302
    .line 303
    .line 304
    array-length v1, v3

    .line 305
    invoke-interface {v6, v3, v5, v1}, Lhl2;->update([BII)V

    .line 306
    .line 307
    .line 308
    array-length v1, v0

    .line 309
    invoke-interface {v6, v0, v5, v1}, Lhl2;->update([BII)V

    .line 310
    .line 311
    .line 312
    invoke-interface {v6}, Lhl2;->c()I

    .line 313
    .line 314
    .line 315
    move-result v0

    .line 316
    new-array v0, v0, [B

    .line 317
    .line 318
    invoke-interface {v6, v0, v5}, Lhl2;->doFinal([BI)I

    .line 319
    .line 320
    .line 321
    return-object v0
.end method

.method public final b(I)[B
    .locals 1

    .line 1
    iget v0, p0, Lqp4;->n:I

    .line 2
    .line 3
    if-ge p1, v0, :cond_1

    .line 4
    .line 5
    const/16 v0, 0x81

    .line 6
    .line 7
    if-ge p1, v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lqp4;->x:[Lpp4;

    .line 10
    .line 11
    aget-object p1, v0, p1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance v0, Lpp4;

    .line 15
    .line 16
    invoke-direct {v0, p1}, Lpp4;-><init>(I)V

    .line 17
    .line 18
    .line 19
    move-object p1, v0

    .line 20
    :goto_0
    invoke-virtual {p0, p1}, Lqp4;->c(Lpp4;)[B

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    :cond_1
    invoke-virtual {p0, p1}, Lqp4;->a(I)[B

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method

.method public final c(Lpp4;)[B
    .locals 2

    .line 1
    iget-object v0, p0, Lqp4;->k:Ljava/util/WeakHashMap;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lqp4;->k:Ljava/util/WeakHashMap;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, [B

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    monitor-exit v0

    .line 15
    return-object v1

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget v1, p1, Lpp4;->a:I

    .line 19
    .line 20
    invoke-virtual {p0, v1}, Lqp4;->a(I)[B

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iget-object p0, p0, Lqp4;->k:Ljava/util/WeakHashMap;

    .line 25
    .line 26
    invoke-virtual {p0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    monitor-exit v0

    .line 30
    return-object v1

    .line 31
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw p0
.end method

.method public final declared-synchronized d()I
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lqp4;->q:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_a

    .line 7
    .line 8
    const-class v2, Lqp4;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    if-eq v2, v3, :cond_1

    .line 15
    .line 16
    goto :goto_2

    .line 17
    :cond_1
    check-cast p1, Lqp4;

    .line 18
    .line 19
    iget v2, p0, Lqp4;->q:I

    .line 20
    .line 21
    iget v3, p1, Lqp4;->q:I

    .line 22
    .line 23
    if-eq v2, v3, :cond_2

    .line 24
    .line 25
    return v1

    .line 26
    :cond_2
    iget v2, p0, Lqp4;->e:I

    .line 27
    .line 28
    iget v3, p1, Lqp4;->e:I

    .line 29
    .line 30
    if-eq v2, v3, :cond_3

    .line 31
    .line 32
    return v1

    .line 33
    :cond_3
    iget-object v2, p0, Lqp4;->b:[B

    .line 34
    .line 35
    iget-object v3, p1, Lqp4;->b:[B

    .line 36
    .line 37
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-nez v2, :cond_4

    .line 42
    .line 43
    return v1

    .line 44
    :cond_4
    iget-object v2, p1, Lqp4;->c:Lup4;

    .line 45
    .line 46
    iget-object v3, p0, Lqp4;->c:Lup4;

    .line 47
    .line 48
    if-eqz v3, :cond_5

    .line 49
    .line 50
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-nez v2, :cond_6

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_5
    if-eqz v2, :cond_6

    .line 58
    .line 59
    :goto_0
    return v1

    .line 60
    :cond_6
    iget-object v2, p1, Lqp4;->d:Llp4;

    .line 61
    .line 62
    iget-object v3, p0, Lqp4;->d:Llp4;

    .line 63
    .line 64
    if-eqz v3, :cond_7

    .line 65
    .line 66
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-nez v2, :cond_8

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_7
    if-eqz v2, :cond_8

    .line 74
    .line 75
    :goto_1
    return v1

    .line 76
    :cond_8
    iget-object p0, p0, Lqp4;->f:[B

    .line 77
    .line 78
    iget-object p1, p1, Lqp4;->f:[B

    .line 79
    .line 80
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 81
    .line 82
    .line 83
    move-result p0

    .line 84
    if-nez p0, :cond_9

    .line 85
    .line 86
    return v1

    .line 87
    :cond_9
    return v0

    .line 88
    :cond_a
    :goto_2
    return v1
.end method

.method public final f()Lrp4;
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lqp4;->r:Lrp4;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lrp4;

    .line 7
    .line 8
    iget-object v1, p0, Lqp4;->c:Lup4;

    .line 9
    .line 10
    iget-object v2, p0, Lqp4;->d:Llp4;

    .line 11
    .line 12
    sget-object v3, Lqp4;->t:Lpp4;

    .line 13
    .line 14
    invoke-virtual {p0, v3}, Lqp4;->c(Lpp4;)[B

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    iget-object v4, p0, Lqp4;->b:[B

    .line 19
    .line 20
    invoke-direct {v0, v1, v2, v3, v4}, Lrp4;-><init>(Lup4;Llp4;[B[B)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lqp4;->r:Lrp4;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception v0

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    :goto_0
    iget-object v0, p0, Lqp4;->r:Lrp4;

    .line 29
    .line 30
    monitor-exit p0

    .line 31
    return-object v0

    .line 32
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw v0
.end method

.method public final getEncoded()[B
    .locals 2

    .line 1
    new-instance v0, Lty3;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, v1}, Lty3;-><init>(I)V

    .line 5
    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Lty3;->g(I)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lqp4;->c:Lup4;

    .line 12
    .line 13
    iget v1, v1, Lup4;->a:I

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lty3;->g(I)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lqp4;->d:Llp4;

    .line 19
    .line 20
    iget v1, v1, Llp4;->a:I

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lty3;->g(I)V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lqp4;->b:[B

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lty3;->b([B)V

    .line 28
    .line 29
    .line 30
    iget v1, p0, Lqp4;->q:I

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lty3;->g(I)V

    .line 33
    .line 34
    .line 35
    iget v1, p0, Lqp4;->e:I

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lty3;->g(I)V

    .line 38
    .line 39
    .line 40
    iget-object p0, p0, Lqp4;->f:[B

    .line 41
    .line 42
    array-length v1, p0

    .line 43
    invoke-virtual {v0, v1}, Lty3;->g(I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p0}, Lty3;->b([B)V

    .line 47
    .line 48
    .line 49
    iget-object p0, v0, Lty3;->a:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast p0, Ljava/io/ByteArrayOutputStream;

    .line 52
    .line 53
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    return-object p0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lqp4;->q:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x1f

    .line 4
    .line 5
    iget-object v1, p0, Lqp4;->b:[B

    .line 6
    .line 7
    invoke-static {v1}, Lms8;->x([B)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    add-int/2addr v1, v0

    .line 12
    mul-int/lit8 v1, v1, 0x1f

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iget-object v2, p0, Lqp4;->c:Lup4;

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v2, v0

    .line 25
    :goto_0
    add-int/2addr v1, v2

    .line 26
    mul-int/lit8 v1, v1, 0x1f

    .line 27
    .line 28
    iget-object v2, p0, Lqp4;->d:Llp4;

    .line 29
    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    :cond_1
    add-int/2addr v1, v0

    .line 37
    mul-int/lit8 v1, v1, 0x1f

    .line 38
    .line 39
    iget v0, p0, Lqp4;->e:I

    .line 40
    .line 41
    add-int/2addr v1, v0

    .line 42
    mul-int/lit8 v1, v1, 0x1f

    .line 43
    .line 44
    iget-object p0, p0, Lqp4;->f:[B

    .line 45
    .line 46
    invoke-static {p0}, Lms8;->x([B)I

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    add-int/2addr p0, v1

    .line 51
    return p0
.end method
