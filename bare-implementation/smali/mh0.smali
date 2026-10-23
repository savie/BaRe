.class public final Lmh0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final a:Ljava/util/TreeMap;

.field public final transient b:J


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lmh0;->a:Ljava/util/TreeMap;

    iput-wide p1, p0, Lmh0;->b:J

    return-void
.end method

.method public constructor <init>(Lkx8;J[B[B)V
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    move-object/from16 v3, p5

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v4, Ljava/util/TreeMap;

    .line 13
    .line 14
    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v4, v0, Lmh0;->a:Ljava/util/TreeMap;

    .line 18
    .line 19
    iget v4, v1, Lkx8;->c:I

    .line 20
    .line 21
    const-wide/16 v5, 0x1

    .line 22
    .line 23
    shl-long v7, v5, v4

    .line 24
    .line 25
    sub-long/2addr v7, v5

    .line 26
    iput-wide v7, v0, Lmh0;->b:J

    .line 27
    .line 28
    const-wide/16 v9, 0x0

    .line 29
    .line 30
    :goto_0
    cmp-long v4, v9, p2

    .line 31
    .line 32
    if-gez v4, :cond_9

    .line 33
    .line 34
    const/4 v4, 0x0

    .line 35
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v11

    .line 39
    iget-object v12, v0, Lmh0;->a:Ljava/util/TreeMap;

    .line 40
    .line 41
    iget-object v13, v1, Lkx8;->b:Lrx8;

    .line 42
    .line 43
    iget v14, v13, Lrx8;->b:I

    .line 44
    .line 45
    move-wide v15, v5

    .line 46
    move v6, v4

    .line 47
    shr-long v4, v9, v14

    .line 48
    .line 49
    shl-long v17, v15, v14

    .line 50
    .line 51
    sub-long v17, v17, v15

    .line 52
    .line 53
    move v8, v6

    .line 54
    const-wide/16 v19, 0x0

    .line 55
    .line 56
    and-long v6, v9, v17

    .line 57
    .line 58
    long-to-int v6, v6

    .line 59
    new-instance v7, Ltq5;

    .line 60
    .line 61
    invoke-direct {v7}, Ltq5;-><init>()V

    .line 62
    .line 63
    .line 64
    iput-wide v4, v7, Lgx8;->b:J

    .line 65
    .line 66
    iput v6, v7, Ltq5;->e:I

    .line 67
    .line 68
    move/from16 v21, v8

    .line 69
    .line 70
    new-instance v8, Luq5;

    .line 71
    .line 72
    invoke-direct {v8, v7}, Luq5;-><init>(Ltq5;)V

    .line 73
    .line 74
    .line 75
    const/16 v22, 0x1

    .line 76
    .line 77
    shl-int v7, v22, v14

    .line 78
    .line 79
    move-wide/from16 v23, v15

    .line 80
    .line 81
    add-int/lit8 v15, v7, -0x1

    .line 82
    .line 83
    if-ge v6, v15, :cond_2

    .line 84
    .line 85
    invoke-virtual {v12, v11}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v16

    .line 89
    check-cast v16, Llh0;

    .line 90
    .line 91
    if-eqz v16, :cond_0

    .line 92
    .line 93
    if-nez v6, :cond_1

    .line 94
    .line 95
    :cond_0
    new-instance v6, Llh0;

    .line 96
    .line 97
    invoke-direct {v6, v13, v2, v3, v8}, Llh0;-><init>(Lrx8;[B[BLuq5;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v12, v11, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    :cond_1
    iget-object v6, v0, Lmh0;->a:Ljava/util/TreeMap;

    .line 104
    .line 105
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    .line 107
    .line 108
    move-result-object v11

    .line 109
    move-wide/from16 v25, v4

    .line 110
    .line 111
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    invoke-virtual {v6, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    check-cast v4, Llh0;

    .line 120
    .line 121
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    .line 123
    .line 124
    new-instance v5, Llh0;

    .line 125
    .line 126
    invoke-direct {v5, v4, v2, v3, v8}, Llh0;-><init>(Llh0;[B[BLuq5;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v6, v11, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    check-cast v4, Llh0;

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_2
    move-wide/from16 v25, v4

    .line 137
    .line 138
    :goto_1
    move/from16 v6, v22

    .line 139
    .line 140
    move-wide/from16 v4, v25

    .line 141
    .line 142
    :goto_2
    iget v8, v1, Lkx8;->d:I

    .line 143
    .line 144
    if-ge v6, v8, :cond_8

    .line 145
    .line 146
    move-wide/from16 v21, v4

    .line 147
    .line 148
    and-long v4, v21, v17

    .line 149
    .line 150
    long-to-int v4, v4

    .line 151
    move-wide/from16 v25, v9

    .line 152
    .line 153
    shr-long v8, v21, v14

    .line 154
    .line 155
    new-instance v5, Ltq5;

    .line 156
    .line 157
    invoke-direct {v5}, Ltq5;-><init>()V

    .line 158
    .line 159
    .line 160
    iput v6, v5, Lgx8;->c:I

    .line 161
    .line 162
    iput-wide v8, v5, Lgx8;->b:J

    .line 163
    .line 164
    iput v4, v5, Ltq5;->e:I

    .line 165
    .line 166
    new-instance v10, Luq5;

    .line 167
    .line 168
    invoke-direct {v10, v5}, Luq5;-><init>(Ltq5;)V

    .line 169
    .line 170
    .line 171
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 172
    .line 173
    .line 174
    move-result-object v5

    .line 175
    invoke-virtual {v12, v5}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v5

    .line 179
    if-eqz v5, :cond_4

    .line 180
    .line 181
    cmp-long v5, v25, v19

    .line 182
    .line 183
    move-wide/from16 v21, v8

    .line 184
    .line 185
    if-nez v5, :cond_3

    .line 186
    .line 187
    goto :goto_4

    .line 188
    :cond_3
    int-to-double v8, v7

    .line 189
    add-int/lit8 v5, v6, 0x1

    .line 190
    .line 191
    int-to-double v0, v5

    .line 192
    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->pow(DD)D

    .line 193
    .line 194
    .line 195
    move-result-wide v0

    .line 196
    double-to-long v0, v0

    .line 197
    rem-long v0, v25, v0

    .line 198
    .line 199
    cmp-long v0, v0, v19

    .line 200
    .line 201
    if-nez v0, :cond_5

    .line 202
    .line 203
    goto :goto_3

    .line 204
    :cond_4
    move-wide/from16 v21, v8

    .line 205
    .line 206
    :goto_3
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    new-instance v1, Llh0;

    .line 211
    .line 212
    invoke-direct {v1, v13, v2, v3, v10}, Llh0;-><init>(Lrx8;[B[BLuq5;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v12, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    :cond_5
    :goto_4
    if-ge v4, v15, :cond_7

    .line 219
    .line 220
    cmp-long v0, v25, v19

    .line 221
    .line 222
    if-nez v0, :cond_6

    .line 223
    .line 224
    goto :goto_5

    .line 225
    :cond_6
    add-long v0, v25, v23

    .line 226
    .line 227
    int-to-double v4, v7

    .line 228
    int-to-double v8, v6

    .line 229
    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    .line 230
    .line 231
    .line 232
    move-result-wide v4

    .line 233
    double-to-long v4, v4

    .line 234
    rem-long/2addr v0, v4

    .line 235
    cmp-long v0, v0, v19

    .line 236
    .line 237
    if-nez v0, :cond_7

    .line 238
    .line 239
    move-object/from16 v0, p0

    .line 240
    .line 241
    iget-object v1, v0, Lmh0;->a:Ljava/util/TreeMap;

    .line 242
    .line 243
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 244
    .line 245
    .line 246
    move-result-object v4

    .line 247
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 248
    .line 249
    .line 250
    move-result-object v5

    .line 251
    invoke-virtual {v1, v5}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v5

    .line 255
    check-cast v5, Llh0;

    .line 256
    .line 257
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 258
    .line 259
    .line 260
    new-instance v8, Llh0;

    .line 261
    .line 262
    invoke-direct {v8, v5, v2, v3, v10}, Llh0;-><init>(Llh0;[B[BLuq5;)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v1, v4, v8}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v1

    .line 269
    check-cast v1, Llh0;

    .line 270
    .line 271
    goto :goto_6

    .line 272
    :cond_7
    :goto_5
    move-object/from16 v0, p0

    .line 273
    .line 274
    :goto_6
    add-int/lit8 v6, v6, 0x1

    .line 275
    .line 276
    move-object/from16 v1, p1

    .line 277
    .line 278
    move-wide/from16 v4, v21

    .line 279
    .line 280
    move-wide/from16 v9, v25

    .line 281
    .line 282
    goto/16 :goto_2

    .line 283
    .line 284
    :cond_8
    move-wide/from16 v25, v9

    .line 285
    .line 286
    add-long v9, v25, v23

    .line 287
    .line 288
    move-object/from16 v1, p1

    .line 289
    .line 290
    move-wide/from16 v5, v23

    .line 291
    .line 292
    goto/16 :goto_0

    .line 293
    .line 294
    :cond_9
    return-void
.end method

.method public constructor <init>(Lmh0;J)V
    .locals 5

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lmh0;->a:Ljava/util/TreeMap;

    iget-object v0, p1, Lmh0;->a:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v2, p0, Lmh0;->a:Ljava/util/TreeMap;

    new-instance v3, Llh0;

    iget-object v4, p1, Lmh0;->a:Ljava/util/TreeMap;

    invoke-virtual {v4, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Llh0;

    invoke-direct {v3, v4}, Llh0;-><init>(Llh0;)V

    invoke-virtual {v2, v1, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-wide p2, p0, Lmh0;->b:J

    return-void
.end method


# virtual methods
.method public final a(Lf1;)Lmh0;
    .locals 5

    .line 1
    new-instance v0, Lmh0;

    .line 2
    .line 3
    iget-wide v1, p0, Lmh0;->b:J

    .line 4
    .line 5
    invoke-direct {v0, v1, v2}, Lmh0;-><init>(J)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lmh0;->a:Ljava/util/TreeMap;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Ljava/lang/Integer;

    .line 29
    .line 30
    invoke-virtual {p0, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Llh0;

    .line 35
    .line 36
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    new-instance v4, Llh0;

    .line 40
    .line 41
    invoke-direct {v4, v3, p1}, Llh0;-><init>(Llh0;Lf1;)V

    .line 42
    .line 43
    .line 44
    iget-object v3, v0, Lmh0;->a:Ljava/util/TreeMap;

    .line 45
    .line 46
    invoke-virtual {v3, v2, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    return-object v0
.end method
