.class public final synthetic Ljw6;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lkw6;
.implements Lpd7;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/io/Serializable;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/io/Serializable;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ljw6;->a:Ljava/lang/Object;

    .line 2
    .line 3
    iput-object p2, p0, Ljw6;->b:Ljava/io/Serializable;

    .line 4
    .line 5
    iput-object p3, p0, Ljw6;->c:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(Ljava/io/OutputStream;Ljava/io/InputStream;Ljava/io/InputStream;)V
    .locals 3

    .line 1
    iget-object p3, p0, Ljw6;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p3, Ljava/io/File;

    .line 4
    .line 5
    iget-object v0, p0, Ljw6;->b:Ljava/io/Serializable;

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    iget-object p0, p0, Ljw6;->c:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p0, Lkr7;

    .line 12
    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v2, "cat "

    .line 16
    .line 17
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Lkr7;->a:Ljava/lang/String;

    .line 27
    .line 28
    const-string p3, " 2>/dev/null &"

    .line 29
    .line 30
    invoke-static {v1, p0, p3}, Ldj7;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    sget-object p3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 35
    .line 36
    invoke-virtual {p0, p3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    .line 41
    .line 42
    .line 43
    const/16 p0, 0xa

    .line 44
    .line 45
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write(I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 49
    .line 50
    .line 51
    sget-object p0, Lce7;->a:[B

    .line 52
    .line 53
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 57
    .line 58
    .line 59
    sget-object p0, Lwx3;->b:[B

    .line 60
    .line 61
    invoke-virtual {p2, p0}, Ljava/io/InputStream;->read([B)I

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Ljw6;->a:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lmw6;

    .line 6
    .line 7
    iget-object v2, v0, Ljw6;->b:Ljava/io/Serializable;

    .line 8
    .line 9
    check-cast v2, Ljava/util/ArrayList;

    .line 10
    .line 11
    iget-object v0, v0, Ljw6;->c:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Loe0;

    .line 14
    .line 15
    move-object/from16 v3, p1

    .line 16
    .line 17
    check-cast v3, Landroid/database/Cursor;

    .line 18
    .line 19
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    const/4 v5, 0x0

    .line 24
    if-eqz v4, :cond_c

    .line 25
    .line 26
    const/4 v4, 0x0

    .line 27
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    .line 28
    .line 29
    .line 30
    move-result-wide v6

    .line 31
    const/4 v8, 0x7

    .line 32
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    .line 33
    .line 34
    .line 35
    move-result v8

    .line 36
    const/4 v9, 0x1

    .line 37
    if-eqz v8, :cond_0

    .line 38
    .line 39
    move v8, v9

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    move v8, v4

    .line 42
    :goto_1
    new-instance v10, Ljd0;

    .line 43
    .line 44
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 45
    .line 46
    .line 47
    new-instance v11, Ljava/util/HashMap;

    .line 48
    .line 49
    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object v11, v10, Ljd0;->n:Ljava/lang/Object;

    .line 53
    .line 54
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v9

    .line 58
    if-eqz v9, :cond_b

    .line 59
    .line 60
    iput-object v9, v10, Ljd0;->a:Ljava/lang/Object;

    .line 61
    .line 62
    const/4 v5, 0x2

    .line 63
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    .line 64
    .line 65
    .line 66
    move-result-wide v11

    .line 67
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    iput-object v5, v10, Ljd0;->f:Ljava/lang/Object;

    .line 72
    .line 73
    const/4 v5, 0x3

    .line 74
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    .line 75
    .line 76
    .line 77
    move-result-wide v11

    .line 78
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    iput-object v5, v10, Ljd0;->k:Ljava/lang/Object;

    .line 83
    .line 84
    const/4 v5, 0x4

    .line 85
    if-eqz v8, :cond_2

    .line 86
    .line 87
    new-instance v4, Lxv2;

    .line 88
    .line 89
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    if-nez v5, :cond_1

    .line 94
    .line 95
    sget-object v5, Lmw6;->f:Ldw2;

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_1
    new-instance v8, Ldw2;

    .line 99
    .line 100
    invoke-direct {v8, v5}, Ldw2;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    move-object v5, v8

    .line 104
    :goto_2
    const/4 v8, 0x5

    .line 105
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getBlob(I)[B

    .line 106
    .line 107
    .line 108
    move-result-object v8

    .line 109
    invoke-direct {v4, v5, v8}, Lxv2;-><init>(Ldw2;[B)V

    .line 110
    .line 111
    .line 112
    iput-object v4, v10, Ljd0;->e:Ljava/lang/Object;

    .line 113
    .line 114
    move-object/from16 v16, v1

    .line 115
    .line 116
    goto/16 :goto_6

    .line 117
    .line 118
    :cond_2
    new-instance v8, Lxv2;

    .line 119
    .line 120
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    if-nez v5, :cond_3

    .line 125
    .line 126
    sget-object v5, Lmw6;->f:Ldw2;

    .line 127
    .line 128
    goto :goto_3

    .line 129
    :cond_3
    new-instance v9, Ldw2;

    .line 130
    .line 131
    invoke-direct {v9, v5}, Ldw2;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    move-object v5, v9

    .line 135
    :goto_3
    invoke-virtual {v1}, Lmw6;->a()Landroid/database/sqlite/SQLiteDatabase;

    .line 136
    .line 137
    .line 138
    move-result-object v11

    .line 139
    const-string v9, "bytes"

    .line 140
    .line 141
    filled-new-array {v9}, [Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v13

    .line 145
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v9

    .line 149
    filled-new-array {v9}, [Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v15

    .line 153
    const/16 v17, 0x0

    .line 154
    .line 155
    const-string v18, "sequence_num"

    .line 156
    .line 157
    const-string v12, "event_payloads"

    .line 158
    .line 159
    const-string v14, "event_id = ?"

    .line 160
    .line 161
    const/16 v16, 0x0

    .line 162
    .line 163
    invoke-virtual/range {v11 .. v18}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 164
    .line 165
    .line 166
    move-result-object v9

    .line 167
    :try_start_0
    new-instance v11, Ljava/util/ArrayList;

    .line 168
    .line 169
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .line 171
    .line 172
    move v12, v4

    .line 173
    :goto_4
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    .line 174
    .line 175
    .line 176
    move-result v13

    .line 177
    if-eqz v13, :cond_4

    .line 178
    .line 179
    invoke-interface {v9, v4}, Landroid/database/Cursor;->getBlob(I)[B

    .line 180
    .line 181
    .line 182
    move-result-object v13

    .line 183
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    array-length v13, v13

    .line 187
    add-int/2addr v12, v13

    .line 188
    goto :goto_4

    .line 189
    :cond_4
    new-array v12, v12, [B

    .line 190
    .line 191
    move v13, v4

    .line 192
    move v14, v13

    .line 193
    :goto_5
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 194
    .line 195
    .line 196
    move-result v15

    .line 197
    if-ge v13, v15, :cond_5

    .line 198
    .line 199
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v15

    .line 203
    check-cast v15, [B

    .line 204
    .line 205
    move-object/from16 v16, v1

    .line 206
    .line 207
    array-length v1, v15

    .line 208
    invoke-static {v15, v4, v12, v14, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 209
    .line 210
    .line 211
    array-length v1, v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    add-int/2addr v14, v1

    .line 213
    add-int/lit8 v13, v13, 0x1

    .line 214
    .line 215
    move-object/from16 v1, v16

    .line 216
    .line 217
    goto :goto_5

    .line 218
    :cond_5
    move-object/from16 v16, v1

    .line 219
    .line 220
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 221
    .line 222
    .line 223
    invoke-direct {v8, v5, v12}, Lxv2;-><init>(Ldw2;[B)V

    .line 224
    .line 225
    .line 226
    iput-object v8, v10, Ljd0;->e:Ljava/lang/Object;

    .line 227
    .line 228
    :goto_6
    const/4 v1, 0x6

    .line 229
    invoke-interface {v3, v1}, Landroid/database/Cursor;->isNull(I)Z

    .line 230
    .line 231
    .line 232
    move-result v4

    .line 233
    if-nez v4, :cond_6

    .line 234
    .line 235
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    .line 236
    .line 237
    .line 238
    move-result v1

    .line 239
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    iput-object v1, v10, Ljd0;->c:Ljava/lang/Object;

    .line 244
    .line 245
    :cond_6
    const/16 v1, 0x8

    .line 246
    .line 247
    invoke-interface {v3, v1}, Landroid/database/Cursor;->isNull(I)Z

    .line 248
    .line 249
    .line 250
    move-result v4

    .line 251
    if-nez v4, :cond_7

    .line 252
    .line 253
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    .line 254
    .line 255
    .line 256
    move-result v1

    .line 257
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 258
    .line 259
    .line 260
    move-result-object v1

    .line 261
    iput-object v1, v10, Ljd0;->d:Ljava/lang/Object;

    .line 262
    .line 263
    :cond_7
    const/16 v1, 0x9

    .line 264
    .line 265
    invoke-interface {v3, v1}, Landroid/database/Cursor;->isNull(I)Z

    .line 266
    .line 267
    .line 268
    move-result v4

    .line 269
    if-nez v4, :cond_8

    .line 270
    .line 271
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    iput-object v1, v10, Ljd0;->b:Ljava/lang/Object;

    .line 276
    .line 277
    :cond_8
    const/16 v1, 0xa

    .line 278
    .line 279
    invoke-interface {v3, v1}, Landroid/database/Cursor;->isNull(I)Z

    .line 280
    .line 281
    .line 282
    move-result v4

    .line 283
    if-nez v4, :cond_9

    .line 284
    .line 285
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getBlob(I)[B

    .line 286
    .line 287
    .line 288
    move-result-object v1

    .line 289
    iput-object v1, v10, Ljd0;->p:Ljava/lang/Object;

    .line 290
    .line 291
    :cond_9
    const/16 v1, 0xb

    .line 292
    .line 293
    invoke-interface {v3, v1}, Landroid/database/Cursor;->isNull(I)Z

    .line 294
    .line 295
    .line 296
    move-result v4

    .line 297
    if-nez v4, :cond_a

    .line 298
    .line 299
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getBlob(I)[B

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    iput-object v1, v10, Ljd0;->q:Ljava/lang/Object;

    .line 304
    .line 305
    :cond_a
    invoke-virtual {v10}, Ljd0;->b()Lkd0;

    .line 306
    .line 307
    .line 308
    move-result-object v1

    .line 309
    new-instance v4, Lce0;

    .line 310
    .line 311
    invoke-direct {v4, v6, v7, v0, v1}, Lce0;-><init>(JLoe0;Lkd0;)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    .line 316
    .line 317
    move-object/from16 v1, v16

    .line 318
    .line 319
    goto/16 :goto_0

    .line 320
    .line 321
    :catchall_0
    move-exception v0

    .line 322
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 323
    .line 324
    .line 325
    throw v0

    .line 326
    :cond_b
    const-string v0, "Null transportName"

    .line 327
    .line 328
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    :cond_c
    return-object v5
.end method
