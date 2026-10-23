.class public final Lux0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lql6;


# static fields
.field public static final f:Lge;

.field public static final g:Ltx0;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/ArrayList;

.field public final c:Ltx0;

.field public final d:Lge;

.field public final e:Lot9;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lge;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lux0;->f:Lge;

    .line 7
    .line 8
    new-instance v0, Ltx0;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, v1}, Ltx0;-><init>(I)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lux0;->g:Ltx0;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Lnr0;Lm35;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lux0;->a:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p2, p0, Lux0;->b:Ljava/util/ArrayList;

    .line 11
    .line 12
    sget-object p1, Lux0;->f:Lge;

    .line 13
    .line 14
    iput-object p1, p0, Lux0;->d:Lge;

    .line 15
    .line 16
    new-instance p1, Lot9;

    .line 17
    .line 18
    const/4 p2, 0x0

    .line 19
    invoke-direct {p1, p3, p4, p2}, Lot9;-><init>(Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lux0;->e:Lot9;

    .line 23
    .line 24
    sget-object p1, Lux0;->g:Ltx0;

    .line 25
    .line 26
    iput-object p1, p0, Lux0;->c:Ltx0;

    .line 27
    .line 28
    return-void
.end method

.method public static d(Lnx3;II)I
    .locals 5

    .line 1
    iget v0, p0, Lnx3;->g:I

    .line 2
    .line 3
    div-int/2addr v0, p2

    .line 4
    iget v1, p0, Lnx3;->f:I

    .line 5
    .line 6
    div-int/2addr v1, p1

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    :goto_0
    const/4 v1, 0x1

    .line 20
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v2, 0x2

    .line 25
    const-string v3, "BufferGifDecoder"

    .line 26
    .line 27
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    if-le v0, v1, :cond_1

    .line 34
    .line 35
    const-string v1, "Downsampling GIF, sampleSize: "

    .line 36
    .line 37
    const-string v2, ", target dimens: ["

    .line 38
    .line 39
    const-string v4, "x"

    .line 40
    .line 41
    invoke-static {v1, v0, v2, v4, p1}, Lxs1;->n(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string p2, "], actual dimens: ["

    .line 49
    .line 50
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    iget p2, p0, Lnx3;->f:I

    .line 54
    .line 55
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget p0, p0, Lnx3;->g:I

    .line 62
    .line 63
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string p0, "]"

    .line 67
    .line 68
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-static {v3, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    :cond_1
    return v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lou5;)Z
    .locals 1

    .line 1
    check-cast p1, Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    sget-object v0, Lpx3;->b:Liu5;

    .line 4
    .line 5
    invoke-virtual {p2, v0}, Lou5;->c(Liu5;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    check-cast p2, Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    if-nez p2, :cond_0

    .line 16
    .line 17
    iget-object p0, p0, Lux0;->b:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-static {p0, p1}, Lpe4;->t(Ljava/util/List;Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    sget-object p1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->GIF:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 24
    .line 25
    if-ne p0, p1, :cond_0

    .line 26
    .line 27
    const/4 p0, 0x1

    .line 28
    return p0

    .line 29
    :cond_0
    const/4 p0, 0x0

    .line 30
    return p0
.end method

.method public final b(Ljava/lang/Object;IILou5;)Lll6;
    .locals 7

    .line 1
    move-object v2, p1

    .line 2
    check-cast v2, Ljava/nio/ByteBuffer;

    .line 3
    .line 4
    iget-object p1, p0, Lux0;->c:Ltx0;

    .line 5
    .line 6
    monitor-enter p1

    .line 7
    :try_start_0
    iget-object v0, p1, Ltx0;->a:Ljava/util/ArrayDeque;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lox3;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    new-instance v0, Lox3;

    .line 18
    .line 19
    invoke-direct {v0}, Lox3;-><init>()V

    .line 20
    .line 21
    .line 22
    :cond_0
    move-object v5, v0

    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception v0

    .line 25
    move-object p0, v0

    .line 26
    goto :goto_1

    .line 27
    :goto_0
    const/4 v0, 0x0

    .line 28
    iput-object v0, v5, Lox3;->b:Ljava/nio/ByteBuffer;

    .line 29
    .line 30
    iget-object v0, v5, Lox3;->a:[B

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 34
    .line 35
    .line 36
    new-instance v0, Lnx3;

    .line 37
    .line 38
    invoke-direct {v0}, Lnx3;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object v0, v5, Lox3;->c:Lnx3;

    .line 42
    .line 43
    iput v1, v5, Lox3;->d:I

    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iput-object v0, v5, Lox3;->b:Ljava/nio/ByteBuffer;

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 52
    .line 53
    .line 54
    iget-object v0, v5, Lox3;->b:Ljava/nio/ByteBuffer;

    .line 55
    .line 56
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .line 60
    .line 61
    monitor-exit p1

    .line 62
    move-object v1, p0

    .line 63
    move v3, p2

    .line 64
    move v4, p3

    .line 65
    move-object v6, p4

    .line 66
    :try_start_1
    invoke-virtual/range {v1 .. v6}, Lux0;->c(Ljava/nio/ByteBuffer;IILox3;Lou5;)Lgx3;

    .line 67
    .line 68
    .line 69
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 70
    iget-object p1, v1, Lux0;->c:Ltx0;

    .line 71
    .line 72
    invoke-virtual {p1, v5}, Ltx0;->a(Lox3;)V

    .line 73
    .line 74
    .line 75
    return-object p0

    .line 76
    :catchall_1
    move-exception v0

    .line 77
    move-object p0, v0

    .line 78
    iget-object p1, v1, Lux0;->c:Ltx0;

    .line 79
    .line 80
    invoke-virtual {p1, v5}, Ltx0;->a(Lox3;)V

    .line 81
    .line 82
    .line 83
    throw p0

    .line 84
    :goto_1
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 85
    throw p0
.end method

.method public final c(Ljava/nio/ByteBuffer;IILox3;Lou5;)Lgx3;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "Decoded GIF from stream in "

    .line 4
    .line 5
    const-string v2, "BufferGifDecoder"

    .line 6
    .line 7
    sget v3, Lg15;->b:I

    .line 8
    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 10
    .line 11
    .line 12
    move-result-wide v3

    .line 13
    const/4 v5, 0x2

    .line 14
    :try_start_0
    invoke-virtual/range {p4 .. p4}, Lox3;->b()Lnx3;

    .line 15
    .line 16
    .line 17
    move-result-object v6

    .line 18
    iget v7, v6, Lnx3;->c:I

    .line 19
    .line 20
    const/4 v8, 0x0

    .line 21
    if-lez v7, :cond_6

    .line 22
    .line 23
    iget v7, v6, Lnx3;->b:I

    .line 24
    .line 25
    if-eqz v7, :cond_0

    .line 26
    .line 27
    goto/16 :goto_5

    .line 28
    .line 29
    :cond_0
    sget-object v7, Lpx3;->a:Liu5;

    .line 30
    .line 31
    move-object/from16 v9, p5

    .line 32
    .line 33
    invoke-virtual {v9, v7}, Lou5;->c(Liu5;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v7

    .line 37
    sget-object v9, Lpd2;->b:Lpd2;

    .line 38
    .line 39
    if-ne v7, v9, :cond_1

    .line 40
    .line 41
    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 42
    .line 43
    :goto_0
    move/from16 v15, p3

    .line 44
    .line 45
    move-object v10, v7

    .line 46
    move/from16 v7, p2

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :catchall_0
    move-exception v0

    .line 50
    goto/16 :goto_6

    .line 51
    .line 52
    :cond_1
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :goto_1
    invoke-static {v6, v7, v15}, Lux0;->d(Lnx3;II)I

    .line 56
    .line 57
    .line 58
    move-result v9

    .line 59
    iget-object v11, v0, Lux0;->d:Lge;

    .line 60
    .line 61
    iget-object v12, v0, Lux0;->e:Lot9;

    .line 62
    .line 63
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    new-instance v11, Lgl7;

    .line 67
    .line 68
    move-object/from16 v13, p1

    .line 69
    .line 70
    invoke-direct {v11, v12, v6, v13, v9}, Lgl7;-><init>(Lot9;Lnx3;Ljava/nio/ByteBuffer;I)V

    .line 71
    .line 72
    .line 73
    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 74
    .line 75
    if-eq v10, v12, :cond_2

    .line 76
    .line 77
    sget-object v14, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 78
    .line 79
    if-ne v10, v14, :cond_3

    .line 80
    .line 81
    :cond_2
    move-object v6, v11

    .line 82
    goto :goto_2

    .line 83
    :cond_3
    const-string v9, "Unsupported format: "

    .line 84
    .line 85
    move-object v13, v11

    .line 86
    const-string v11, ", must be one of "

    .line 87
    .line 88
    move-object v6, v13

    .line 89
    const-string v13, " or "

    .line 90
    .line 91
    invoke-static/range {v9 .. v14}, Lc6;->g(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    goto :goto_3

    .line 95
    :goto_2
    iput-object v10, v6, Lgl7;->t:Landroid/graphics/Bitmap$Config;

    .line 96
    .line 97
    :goto_3
    iget v9, v6, Lgl7;->k:I

    .line 98
    .line 99
    add-int/lit8 v9, v9, 0x1

    .line 100
    .line 101
    iget-object v10, v6, Lgl7;->l:Lnx3;

    .line 102
    .line 103
    iget v10, v10, Lnx3;->c:I

    .line 104
    .line 105
    rem-int/2addr v9, v10

    .line 106
    iput v9, v6, Lgl7;->k:I

    .line 107
    .line 108
    invoke-virtual {v6}, Lgl7;->b()Landroid/graphics/Bitmap;

    .line 109
    .line 110
    .line 111
    move-result-object v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    if-nez v16, :cond_4

    .line 113
    .line 114
    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-eqz v0, :cond_7

    .line 119
    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    :goto_4
    invoke-static {v3, v4}, Lg15;->a(J)D

    .line 126
    .line 127
    .line 128
    move-result-wide v3

    .line 129
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .line 138
    .line 139
    return-object v8

    .line 140
    :cond_4
    :try_start_1
    new-instance v8, Lfx3;

    .line 141
    .line 142
    iget-object v0, v0, Lux0;->a:Landroid/content/Context;

    .line 143
    .line 144
    new-instance v9, Lex3;

    .line 145
    .line 146
    new-instance v11, Llx3;

    .line 147
    .line 148
    invoke-static {v0}, Lcom/bumptech/glide/a;->a(Landroid/content/Context;)Lcom/bumptech/glide/a;

    .line 149
    .line 150
    .line 151
    move-result-object v12

    .line 152
    move-object v13, v6

    .line 153
    move v14, v7

    .line 154
    invoke-direct/range {v11 .. v16}, Llx3;-><init>(Lcom/bumptech/glide/a;Lgl7;IILandroid/graphics/Bitmap;)V

    .line 155
    .line 156
    .line 157
    invoke-direct {v9, v11}, Lex3;-><init>(Llx3;)V

    .line 158
    .line 159
    .line 160
    invoke-direct {v8, v9}, Lfx3;-><init>(Lex3;)V

    .line 161
    .line 162
    .line 163
    new-instance v0, Lgx3;

    .line 164
    .line 165
    invoke-direct {v0, v8}, Lxo2;-><init>(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 166
    .line 167
    .line 168
    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 169
    .line 170
    .line 171
    move-result v5

    .line 172
    if-eqz v5, :cond_5

    .line 173
    .line 174
    new-instance v5, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    invoke-static {v3, v4}, Lg15;->a(J)D

    .line 180
    .line 181
    .line 182
    move-result-wide v3

    .line 183
    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    .line 192
    .line 193
    :cond_5
    return-object v0

    .line 194
    :cond_6
    :goto_5
    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 195
    .line 196
    .line 197
    move-result v0

    .line 198
    if-eqz v0, :cond_7

    .line 199
    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    .line 201
    .line 202
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    goto :goto_4

    .line 206
    :cond_7
    return-object v8

    .line 207
    :goto_6
    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 208
    .line 209
    .line 210
    move-result v5

    .line 211
    if-eqz v5, :cond_8

    .line 212
    .line 213
    new-instance v5, Ljava/lang/StringBuilder;

    .line 214
    .line 215
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    invoke-static {v3, v4}, Lg15;->a(J)D

    .line 219
    .line 220
    .line 221
    move-result-wide v3

    .line 222
    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    .line 231
    .line 232
    :cond_8
    throw v0
.end method
