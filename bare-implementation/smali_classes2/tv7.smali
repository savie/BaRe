.class public abstract Ltv7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Lgv7;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lb7;

    .line 2
    .line 3
    const/16 v1, 0x1c

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lb7;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lgv7;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 11
    .line 12
    .line 13
    sput-object v1, Ltv7;->a:Lgv7;

    .line 14
    .line 15
    return-void
.end method

.method public static a()Lsv7;
    .locals 19

    .line 1
    invoke-static {}, Lai8;->b()V

    .line 2
    .line 3
    .line 4
    const-string v0, "getSystemWallsSdk24: Couldn\'t get built-in wall! Drawable="

    .line 5
    .line 6
    const-string v1, "getSystemWallsSdk24: lock screen descriptor: "

    .line 7
    .line 8
    const-string v2, "getSystemWallsSdk24: home screen descriptor: "

    .line 9
    .line 10
    new-instance v3, Lq63;

    .line 11
    .line 12
    sget-object v4, Lry5;->u:Ljava/lang/String;

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    const/4 v5, 0x0

    .line 16
    invoke-static {v4, v5}, Lqy5;->f(ZLzn7;)Lry5;

    .line 17
    .line 18
    .line 19
    move-result-object v6

    .line 20
    iget-object v6, v6, Lry5;->p:Ljava/lang/String;

    .line 21
    .line 22
    const-string v7, "home_wall.wal"

    .line 23
    .line 24
    invoke-static {v6, v7}, Leq3;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v6

    .line 28
    const/4 v7, 0x2

    .line 29
    invoke-direct {v3, v6, v7}, Lq63;-><init>(Ljava/lang/String;I)V

    .line 30
    .line 31
    .line 32
    new-instance v6, Lq63;

    .line 33
    .line 34
    invoke-static {v4, v5}, Lqy5;->f(ZLzn7;)Lry5;

    .line 35
    .line 36
    .line 37
    move-result-object v8

    .line 38
    iget-object v8, v8, Lry5;->p:Ljava/lang/String;

    .line 39
    .line 40
    const-string v9, "lock_wall.wal"

    .line 41
    .line 42
    invoke-static {v8, v9}, Leq3;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v8

    .line 46
    invoke-direct {v6, v8, v7}, Lq63;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    new-instance v8, Lov;

    .line 50
    .line 51
    const/16 v9, 0xf

    .line 52
    .line 53
    invoke-direct {v8, v9}, Lov;-><init>(I)V

    .line 54
    .line 55
    .line 56
    const-string v9, "SystemWallsHelper"

    .line 57
    .line 58
    const/16 v10, 0xe

    .line 59
    .line 60
    invoke-static {v9, v5, v4, v8, v10}, Lio4;->j(Ljava/lang/String;Ljava/lang/String;ZLbt3;I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    check-cast v8, Landroid/os/ParcelFileDescriptor;

    .line 65
    .line 66
    if-nez v8, :cond_0

    .line 67
    .line 68
    new-instance v8, Lqm;

    .line 69
    .line 70
    const/16 v11, 0x13

    .line 71
    .line 72
    invoke-direct {v8, v11}, Lqm;-><init>(I)V

    .line 73
    .line 74
    .line 75
    invoke-static {v9, v5, v4, v8, v10}, Lio4;->j(Ljava/lang/String;Ljava/lang/String;ZLbt3;I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v8

    .line 79
    check-cast v8, Landroid/os/ParcelFileDescriptor;

    .line 80
    .line 81
    :cond_0
    new-instance v11, Lpu;

    .line 82
    .line 83
    invoke-direct {v11, v10}, Lpu;-><init>(I)V

    .line 84
    .line 85
    .line 86
    invoke-static {v9, v5, v4, v11, v10}, Lio4;->j(Ljava/lang/String;Ljava/lang/String;ZLbt3;I)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v11

    .line 90
    check-cast v11, Landroid/os/ParcelFileDescriptor;

    .line 91
    .line 92
    if-nez v11, :cond_1

    .line 93
    .line 94
    new-instance v11, Lsm;

    .line 95
    .line 96
    invoke-direct {v11, v10}, Lsm;-><init>(I)V

    .line 97
    .line 98
    .line 99
    invoke-static {v9, v5, v4, v11, v10}, Lio4;->j(Ljava/lang/String;Ljava/lang/String;ZLbt3;I)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v10

    .line 103
    move-object v11, v10

    .line 104
    check-cast v11, Landroid/os/ParcelFileDescriptor;

    .line 105
    .line 106
    :cond_1
    new-array v10, v7, [Ljava/io/Closeable;

    .line 107
    .line 108
    aput-object v8, v10, v4

    .line 109
    .line 110
    const/4 v12, 0x1

    .line 111
    aput-object v11, v10, v12

    .line 112
    .line 113
    if-eqz v8, :cond_2

    .line 114
    .line 115
    move v13, v12

    .line 116
    goto :goto_0

    .line 117
    :cond_2
    move v13, v4

    .line 118
    :goto_0
    :try_start_0
    new-instance v14, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    invoke-direct {v14, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    if-eqz v11, :cond_3

    .line 134
    .line 135
    move v2, v12

    .line 136
    goto :goto_1

    .line 137
    :cond_3
    move v2, v4

    .line 138
    :goto_1
    new-instance v13, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {v13, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    .line 152
    .line 153
    if-eqz v8, :cond_4

    .line 154
    .line 155
    invoke-static {v8, v3}, Ltv7;->c(Landroid/os/ParcelFileDescriptor;Lq63;)V

    .line 156
    .line 157
    .line 158
    goto/16 :goto_4

    .line 159
    .line 160
    :catch_0
    move-exception v0

    .line 161
    goto/16 :goto_7

    .line 162
    .line 163
    :cond_4
    sget-object v13, Lvr6;->INSTANCE:Lvr6;

    .line 164
    .line 165
    const-string v14, "SystemWallsHelper"

    .line 166
    .line 167
    const-string v15, "getSystemWallsSdk24: Home wall not found, Getting built-in wall"

    .line 168
    .line 169
    const/16 v17, 0x4

    .line 170
    .line 171
    const/16 v18, 0x0

    .line 172
    .line 173
    const/16 v16, 0x0

    .line 174
    .line 175
    invoke-static/range {v13 .. v18}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    sget-object v1, Ltv7;->a:Lgv7;

    .line 179
    .line 180
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    check-cast v1, Landroid/app/WallpaperManager;

    .line 185
    .line 186
    invoke-virtual {v1, v12}, Landroid/app/WallpaperManager;->getBuiltInDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 191
    .line 192
    if-eqz v1, :cond_5

    .line 193
    .line 194
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    goto :goto_2

    .line 199
    :cond_5
    move-object v2, v5

    .line 200
    :goto_2
    if-eqz v2, :cond_6

    .line 201
    .line 202
    invoke-virtual {v3, v12}, Lq63;->F(Z)Ljava/io/OutputStream;

    .line 203
    .line 204
    .line 205
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 206
    :try_start_1
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 211
    .line 212
    .line 213
    invoke-static {v0, v2}, Lai8;->a(Landroid/graphics/Bitmap;Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 214
    .line 215
    .line 216
    :try_start_2
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 217
    .line 218
    .line 219
    goto :goto_4

    .line 220
    :catchall_0
    move-exception v0

    .line 221
    move-object v1, v0

    .line 222
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 223
    :catchall_1
    move-exception v0

    .line 224
    :try_start_4
    invoke-static {v2, v1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 225
    .line 226
    .line 227
    throw v0

    .line 228
    :cond_6
    move-object v12, v13

    .line 229
    const-string v13, "SystemWallsHelper"

    .line 230
    .line 231
    if-eqz v1, :cond_7

    .line 232
    .line 233
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    goto :goto_3

    .line 238
    :cond_7
    move-object v2, v5

    .line 239
    :goto_3
    new-instance v8, Ljava/lang/StringBuilder;

    .line 240
    .line 241
    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    const-string v0, ", bitmap="

    .line 248
    .line 249
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v14

    .line 259
    const/16 v16, 0x4

    .line 260
    .line 261
    const/16 v17, 0x0

    .line 262
    .line 263
    const/4 v15, 0x0

    .line 264
    invoke-static/range {v12 .. v17}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 265
    .line 266
    .line 267
    :goto_4
    invoke-virtual {v3}, Lq63;->j()Z

    .line 268
    .line 269
    .line 270
    move-result v0

    .line 271
    if-eqz v0, :cond_8

    .line 272
    .line 273
    new-instance v0, Lrv7;

    .line 274
    .line 275
    invoke-direct {v0, v3}, Lrv7;-><init>(Lq63;)V

    .line 276
    .line 277
    .line 278
    goto :goto_5

    .line 279
    :cond_8
    move-object v0, v5

    .line 280
    :goto_5
    if-eqz v11, :cond_9

    .line 281
    .line 282
    invoke-static {v11, v6}, Ltv7;->c(Landroid/os/ParcelFileDescriptor;Lq63;)V

    .line 283
    .line 284
    .line 285
    new-instance v5, Lrv7;

    .line 286
    .line 287
    invoke-direct {v5, v6}, Lrv7;-><init>(Lq63;)V

    .line 288
    .line 289
    .line 290
    goto :goto_6

    .line 291
    :cond_9
    invoke-virtual {v3}, Lq63;->j()Z

    .line 292
    .line 293
    .line 294
    move-result v1

    .line 295
    if-eqz v1, :cond_a

    .line 296
    .line 297
    new-instance v5, Lrv7;

    .line 298
    .line 299
    invoke-direct {v5, v3}, Lrv7;-><init>(Lq63;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 300
    .line 301
    .line 302
    :cond_a
    :goto_6
    if-ge v4, v7, :cond_c

    .line 303
    .line 304
    aget-object v1, v10, v4

    .line 305
    .line 306
    if-eqz v1, :cond_b

    .line 307
    .line 308
    :try_start_5
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 309
    .line 310
    .line 311
    :catch_1
    :cond_b
    add-int/lit8 v4, v4, 0x1

    .line 312
    .line 313
    goto :goto_6

    .line 314
    :cond_c
    new-instance v1, Lsv7;

    .line 315
    .line 316
    invoke-direct {v1, v0, v5}, Lsv7;-><init>(Lrv7;Lrv7;)V

    .line 317
    .line 318
    .line 319
    return-object v1

    .line 320
    :catchall_2
    move-exception v0

    .line 321
    goto :goto_8

    .line 322
    :goto_7
    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 323
    :goto_8
    if-ge v4, v7, :cond_e

    .line 324
    .line 325
    aget-object v1, v10, v4

    .line 326
    .line 327
    if-eqz v1, :cond_d

    .line 328
    .line 329
    :try_start_7
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 330
    .line 331
    .line 332
    :catch_2
    :cond_d
    add-int/lit8 v4, v4, 0x1

    .line 333
    .line 334
    goto :goto_8

    .line 335
    :cond_e
    throw v0
.end method

.method public static b(I)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lg00;->a:Lg00;

    .line 2
    .line 3
    invoke-static {}, Lg00;->i()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "/data/system/users/"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x2

    .line 14
    if-ne p0, v1, :cond_0

    .line 15
    .line 16
    const-string p0, "/wallpaper_lock"

    .line 17
    .line 18
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :cond_0
    const-string p0, "/wallpaper"

    .line 24
    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method

.method public static c(Landroid/os/ParcelFileDescriptor;Lq63;)V
    .locals 7

    .line 1
    const-string v0, "writeDescriptorToFile: Copying new file = "

    .line 2
    .line 3
    invoke-virtual {p1}, Lq63;->j()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const-string v2, "SystemWallsHelper"

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Lq63;->A()J

    .line 12
    .line 13
    .line 14
    move-result-wide v3

    .line 15
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    .line 16
    .line 17
    .line 18
    move-result-wide v5

    .line 19
    cmp-long v1, v3, v5

    .line 20
    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {p1}, Lq63;->p()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    const-string p1, "writeDescriptorToFile: File exists, not copying = "

    .line 28
    .line 29
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lq63;->p()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    .line 49
    .line 50
    invoke-direct {v1, p0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 51
    .line 52
    .line 53
    const/4 v0, 0x1

    .line 54
    invoke-virtual {p1, v0}, Lq63;->F(Z)Ljava/io/OutputStream;

    .line 55
    .line 56
    .line 57
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 58
    const/high16 v0, 0x40000

    .line 59
    .line 60
    :try_start_1
    invoke-static {v1, p1, v0}, Lcy0;->j(Ljava/io/InputStream;Ljava/io/OutputStream;I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 61
    .line 62
    .line 63
    :try_start_2
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 64
    .line 65
    .line 66
    :try_start_3
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 67
    .line 68
    .line 69
    :try_start_4
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :catchall_0
    move-exception v0

    .line 74
    move-object p1, v0

    .line 75
    goto :goto_0

    .line 76
    :catchall_1
    move-exception v0

    .line 77
    move-object v2, v0

    .line 78
    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 79
    :catchall_2
    move-exception v0

    .line 80
    :try_start_6
    invoke-static {p1, v2}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 81
    .line 82
    .line 83
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 84
    :goto_0
    :try_start_7
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 85
    :catchall_3
    move-exception v0

    .line 86
    :try_start_8
    invoke-static {v1, p1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 87
    .line 88
    .line 89
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 90
    :catchall_4
    move-exception v0

    .line 91
    move-object p1, v0

    .line 92
    :try_start_9
    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 93
    :catchall_5
    move-exception v0

    .line 94
    :try_start_a
    invoke-static {p0, p1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 95
    .line 96
    .line 97
    throw v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    .line 98
    :catch_0
    move-exception v0

    .line 99
    move-object p0, v0

    .line 100
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 101
    .line 102
    invoke-static {p0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    const-string p1, "writeDescriptorToFile: "

    .line 107
    .line 108
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    const/4 v4, 0x4

    .line 113
    const/4 v5, 0x0

    .line 114
    const-string v1, "SystemWallsHelper"

    .line 115
    .line 116
    const/4 v3, 0x0

    .line 117
    invoke-static/range {v0 .. v5}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    return-void
.end method
