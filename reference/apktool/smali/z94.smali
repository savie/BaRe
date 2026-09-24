.class public final Lz94;
.super Lam0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final A:Lvp4;

.field public final B:Landroid/graphics/Rect;

.field public final C:Landroid/graphics/Rect;

.field public D:Lxi8;

.field public E:Lxi8;


# direct methods
.method public constructor <init>(Lc35;Ljs4;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lam0;-><init>(Lc35;Ljs4;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lvp4;

    .line 5
    .line 6
    const/4 p2, 0x3

    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-direct {p1, p2, v0}, Lvp4;-><init>(II)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lz94;->A:Lvp4;

    .line 12
    .line 13
    new-instance p1, Landroid/graphics/Rect;

    .line 14
    .line 15
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lz94;->B:Landroid/graphics/Rect;

    .line 19
    .line 20
    new-instance p1, Landroid/graphics/Rect;

    .line 21
    .line 22
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lz94;->C:Landroid/graphics/Rect;

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final e(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Lam0;->e(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lz94;->t()Landroid/graphics/Bitmap;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 11
    .line 12
    .line 13
    move-result p3

    .line 14
    int-to-float p3, p3

    .line 15
    invoke-static {}, Lmi8;->c()F

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    mul-float/2addr v0, p3

    .line 20
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    int-to-float p2, p2

    .line 25
    invoke-static {}, Lmi8;->c()F

    .line 26
    .line 27
    .line 28
    move-result p3

    .line 29
    mul-float/2addr p3, p2

    .line 30
    const/4 p2, 0x0

    .line 31
    invoke-virtual {p1, p2, p2, v0, p3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 32
    .line 33
    .line 34
    iget-object p0, p0, Lam0;->l:Landroid/graphics/Matrix;

    .line 35
    .line 36
    invoke-virtual {p0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method

.method public final f(Lcd;Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lam0;->f(Lcd;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lf35;->F:Landroid/graphics/ColorFilter;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-ne p2, v0, :cond_0

    .line 8
    .line 9
    new-instance p2, Lxi8;

    .line 10
    .line 11
    invoke-direct {p2, p1, v1}, Lxi8;-><init>(Lcd;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iput-object p2, p0, Lz94;->D:Lxi8;

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    sget-object v0, Lf35;->I:Landroid/graphics/Bitmap;

    .line 18
    .line 19
    if-ne p2, v0, :cond_1

    .line 20
    .line 21
    new-instance p2, Lxi8;

    .line 22
    .line 23
    invoke-direct {p2, p1, v1}, Lxi8;-><init>(Lcd;Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iput-object p2, p0, Lz94;->E:Lxi8;

    .line 27
    .line 28
    :cond_1
    return-void
.end method

.method public final k(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lz94;->t()Landroid/graphics/Bitmap;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-static {}, Lmi8;->c()F

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    iget-object v2, p0, Lz94;->A:Lvp4;

    .line 19
    .line 20
    invoke-virtual {v2, p3}, Lvp4;->setAlpha(I)V

    .line 21
    .line 22
    .line 23
    iget-object p3, p0, Lz94;->D:Lxi8;

    .line 24
    .line 25
    if-eqz p3, :cond_1

    .line 26
    .line 27
    invoke-virtual {p3}, Lxi8;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p3

    .line 31
    check-cast p3, Landroid/graphics/ColorFilter;

    .line 32
    .line 33
    invoke-virtual {v2, p3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 47
    .line 48
    .line 49
    move-result p3

    .line 50
    iget-object v3, p0, Lz94;->B:Landroid/graphics/Rect;

    .line 51
    .line 52
    const/4 v4, 0x0

    .line 53
    invoke-virtual {v3, v4, v4, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    int-to-float p2, p2

    .line 61
    mul-float/2addr p2, v1

    .line 62
    float-to-int p2, p2

    .line 63
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 64
    .line 65
    .line 66
    move-result p3

    .line 67
    int-to-float p3, p3

    .line 68
    mul-float/2addr p3, v1

    .line 69
    float-to-int p3, p3

    .line 70
    iget-object p0, p0, Lz94;->C:Landroid/graphics/Rect;

    .line 71
    .line 72
    invoke-virtual {p0, v4, v4, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v0, v3, p0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 79
    .line 80
    .line 81
    :cond_2
    :goto_0
    return-void
.end method

.method public final t()Landroid/graphics/Bitmap;
    .locals 9

    .line 1
    iget-object v0, p0, Lz94;->E:Lxi8;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lxi8;->f()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/graphics/Bitmap;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    iget-object v0, p0, Lam0;->n:Ljs4;

    .line 15
    .line 16
    iget-object v0, v0, Ljs4;->g:Ljava/lang/String;

    .line 17
    .line 18
    iget-object p0, p0, Lam0;->m:Lc35;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const/4 v2, 0x0

    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    move-object v1, v2

    .line 28
    goto :goto_2

    .line 29
    :cond_1
    iget-object v1, p0, Lc35;->p:Lu94;

    .line 30
    .line 31
    if-eqz v1, :cond_6

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    if-nez v3, :cond_3

    .line 38
    .line 39
    :cond_2
    move-object v3, v2

    .line 40
    goto :goto_0

    .line 41
    :cond_3
    instance-of v4, v3, Landroid/view/View;

    .line 42
    .line 43
    if-eqz v4, :cond_2

    .line 44
    .line 45
    check-cast v3, Landroid/view/View;

    .line 46
    .line 47
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    :goto_0
    iget-object v1, v1, Lu94;->a:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v1, Landroid/content/Context;

    .line 54
    .line 55
    if-nez v3, :cond_4

    .line 56
    .line 57
    if-eqz v1, :cond_6

    .line 58
    .line 59
    :cond_4
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_5

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_5
    iput-object v2, p0, Lc35;->p:Lu94;

    .line 67
    .line 68
    :cond_6
    :goto_1
    iget-object v1, p0, Lc35;->p:Lu94;

    .line 69
    .line 70
    if-nez v1, :cond_7

    .line 71
    .line 72
    new-instance v1, Lu94;

    .line 73
    .line 74
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    iget-object v4, p0, Lc35;->q:Ljava/lang/String;

    .line 79
    .line 80
    iget-object v5, p0, Lc35;->b:Le25;

    .line 81
    .line 82
    iget-object v5, v5, Le25;->d:Ljava/util/HashMap;

    .line 83
    .line 84
    invoke-direct {v1, v3, v4, v5}, Lu94;-><init>(Landroid/graphics/drawable/Drawable$Callback;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 85
    .line 86
    .line 87
    iput-object v1, p0, Lc35;->p:Lu94;

    .line 88
    .line 89
    :cond_7
    iget-object v1, p0, Lc35;->p:Lu94;

    .line 90
    .line 91
    :goto_2
    if-eqz v1, :cond_d

    .line 92
    .line 93
    iget-object p0, v1, Lu94;->b:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast p0, Ljava/lang/String;

    .line 96
    .line 97
    iget-object v3, v1, Lu94;->c:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast v3, Ljava/util/Map;

    .line 100
    .line 101
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    check-cast v3, Ld35;

    .line 106
    .line 107
    if-nez v3, :cond_8

    .line 108
    .line 109
    goto/16 :goto_6

    .line 110
    .line 111
    :cond_8
    iget-object v4, v3, Ld35;->d:Landroid/graphics/Bitmap;

    .line 112
    .line 113
    if-eqz v4, :cond_9

    .line 114
    .line 115
    return-object v4

    .line 116
    :cond_9
    iget-object v4, v3, Ld35;->c:Ljava/lang/String;

    .line 117
    .line 118
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    .line 119
    .line 120
    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 121
    .line 122
    .line 123
    const/4 v6, 0x1

    .line 124
    iput-boolean v6, v5, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 125
    .line 126
    const/16 v7, 0xa0

    .line 127
    .line 128
    iput v7, v5, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 129
    .line 130
    const-string v7, "data:"

    .line 131
    .line 132
    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 133
    .line 134
    .line 135
    move-result v7

    .line 136
    if-eqz v7, :cond_a

    .line 137
    .line 138
    const-string v7, "base64,"

    .line 139
    .line 140
    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 141
    .line 142
    .line 143
    move-result v7

    .line 144
    if-lez v7, :cond_a

    .line 145
    .line 146
    const/16 p0, 0x2c

    .line 147
    .line 148
    :try_start_0
    invoke-virtual {v4, p0}, Ljava/lang/String;->indexOf(I)I

    .line 149
    .line 150
    .line 151
    move-result p0

    .line 152
    add-int/2addr p0, v6

    .line 153
    invoke-virtual {v4, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    const/4 v3, 0x0

    .line 158
    invoke-static {p0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 159
    .line 160
    .line 161
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    array-length v2, p0

    .line 163
    invoke-static {p0, v3, v2, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 164
    .line 165
    .line 166
    move-result-object p0

    .line 167
    sget-object v3, Lu94;->d:Ljava/lang/Object;

    .line 168
    .line 169
    monitor-enter v3

    .line 170
    :try_start_1
    iget-object v1, v1, Lu94;->c:Ljava/lang/Object;

    .line 171
    .line 172
    check-cast v1, Ljava/util/Map;

    .line 173
    .line 174
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    check-cast v0, Ld35;

    .line 179
    .line 180
    iput-object p0, v0, Ld35;->d:Landroid/graphics/Bitmap;

    .line 181
    .line 182
    monitor-exit v3

    .line 183
    return-object p0

    .line 184
    :catchall_0
    move-exception p0

    .line 185
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    throw p0

    .line 187
    :catch_0
    move-exception p0

    .line 188
    const-string v0, "data URL did not have correct base64 format."

    .line 189
    .line 190
    invoke-static {v0, p0}, Lm15;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 191
    .line 192
    .line 193
    goto/16 :goto_6

    .line 194
    .line 195
    :cond_a
    :try_start_2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 196
    .line 197
    .line 198
    move-result v7

    .line 199
    if-nez v7, :cond_c

    .line 200
    .line 201
    iget-object v7, v1, Lu94;->a:Ljava/lang/Object;

    .line 202
    .line 203
    check-cast v7, Landroid/content/Context;

    .line 204
    .line 205
    invoke-virtual {v7}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 206
    .line 207
    .line 208
    move-result-object v7

    .line 209
    new-instance v8, Ljava/lang/StringBuilder;

    .line 210
    .line 211
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object p0

    .line 224
    invoke-virtual {v7, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 225
    .line 226
    .line 227
    move-result-object p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 228
    :try_start_3
    invoke-static {p0, v2, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 229
    .line 230
    .line 231
    move-result-object p0
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    .line 232
    iget v2, v3, Ld35;->a:I

    .line 233
    .line 234
    iget v3, v3, Ld35;->b:I

    .line 235
    .line 236
    sget-object v4, Lmi8;->a:Ldi8;

    .line 237
    .line 238
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 239
    .line 240
    .line 241
    move-result v4

    .line 242
    if-ne v4, v2, :cond_b

    .line 243
    .line 244
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 245
    .line 246
    .line 247
    move-result v4

    .line 248
    if-ne v4, v3, :cond_b

    .line 249
    .line 250
    goto :goto_3

    .line 251
    :cond_b
    invoke-static {p0, v2, v3, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 256
    .line 257
    .line 258
    move-object p0, v2

    .line 259
    :goto_3
    sget-object v3, Lu94;->d:Ljava/lang/Object;

    .line 260
    .line 261
    monitor-enter v3

    .line 262
    :try_start_4
    iget-object v1, v1, Lu94;->c:Ljava/lang/Object;

    .line 263
    .line 264
    check-cast v1, Ljava/util/Map;

    .line 265
    .line 266
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    check-cast v0, Ld35;

    .line 271
    .line 272
    iput-object p0, v0, Ld35;->d:Landroid/graphics/Bitmap;

    .line 273
    .line 274
    monitor-exit v3

    .line 275
    return-object p0

    .line 276
    :catchall_1
    move-exception p0

    .line 277
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 278
    throw p0

    .line 279
    :catch_1
    move-exception p0

    .line 280
    const-string v0, "Unable to decode image."

    .line 281
    .line 282
    invoke-static {v0, p0}, Lm15;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 283
    .line 284
    .line 285
    goto :goto_6

    .line 286
    :catch_2
    move-exception p0

    .line 287
    goto :goto_4

    .line 288
    :cond_c
    :try_start_5
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 289
    .line 290
    const-string v0, "You must set an images folder before loading an image. Set it with LottieComposition#setImagesFolder or LottieDrawable#setImagesFolder"

    .line 291
    .line 292
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    throw p0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 296
    :goto_4
    const-string v0, "Unable to open asset."

    .line 297
    .line 298
    invoke-static {v0, p0}, Lm15;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 299
    .line 300
    .line 301
    goto :goto_6

    .line 302
    :cond_d
    iget-object p0, p0, Lc35;->b:Le25;

    .line 303
    .line 304
    if-nez p0, :cond_e

    .line 305
    .line 306
    move-object p0, v2

    .line 307
    goto :goto_5

    .line 308
    :cond_e
    iget-object p0, p0, Le25;->d:Ljava/util/HashMap;

    .line 309
    .line 310
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object p0

    .line 314
    check-cast p0, Ld35;

    .line 315
    .line 316
    :goto_5
    if-eqz p0, :cond_f

    .line 317
    .line 318
    iget-object p0, p0, Ld35;->d:Landroid/graphics/Bitmap;

    .line 319
    .line 320
    return-object p0

    .line 321
    :cond_f
    :goto_6
    return-object v2
.end method
