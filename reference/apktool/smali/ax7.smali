.class public final Lax7;
.super Landroid/text/style/ReplacementSpan;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lex7;

.field public final b:Ljava/util/List;

.field public final c:Ljava/util/ArrayList;

.field public final d:Landroid/text/TextPaint;

.field public final e:Z

.field public final f:Z

.field public final k:Landroid/graphics/Rect;

.field public final n:Landroid/graphics/Paint;

.field public p:I

.field public q:I

.field public r:Lib;


# direct methods
.method public constructor <init>(Lex7;Ljava/util/ArrayList;ZZ)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Rect;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lax7;->k:Landroid/graphics/Rect;

    .line 10
    .line 11
    new-instance v0, Landroid/graphics/Paint;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lax7;->n:Landroid/graphics/Paint;

    .line 18
    .line 19
    iput-object p1, p0, Lax7;->a:Lex7;

    .line 20
    .line 21
    iput-object p2, p0, Lax7;->b:Ljava/util/List;

    .line 22
    .line 23
    new-instance p1, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lax7;->c:Ljava/util/ArrayList;

    .line 33
    .line 34
    new-instance p1, Landroid/text/TextPaint;

    .line 35
    .line 36
    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object p1, p0, Lax7;->d:Landroid/text/TextPaint;

    .line 40
    .line 41
    iput-boolean p3, p0, Lax7;->e:Z

    .line 42
    .line 43
    iput-boolean p4, p0, Lax7;->f:Z

    .line 44
    .line 45
    return-void
.end method


# virtual methods
.method public final a(IILzw7;)V
    .locals 9

    .line 1
    new-instance v0, Lxw7;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, Lxw7;-><init>(Lax7;IILzw7;)V

    .line 4
    .line 5
    .line 6
    iget-object v2, p3, Lzw7;->b:Luj7;

    .line 7
    .line 8
    new-instance v1, Landroid/text/StaticLayout;

    .line 9
    .line 10
    iget p3, p3, Lzw7;->a:I

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    if-eq p3, v3, :cond_1

    .line 14
    .line 15
    const/4 v3, 0x2

    .line 16
    if-eq p3, v3, :cond_0

    .line 17
    .line 18
    sget-object p3, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 19
    .line 20
    :goto_0
    move-object v5, p3

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    sget-object p3, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    sget-object p3, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :goto_1
    const/4 v7, 0x0

    .line 29
    const/4 v8, 0x0

    .line 30
    iget-object v3, p0, Lax7;->d:Landroid/text/TextPaint;

    .line 31
    .line 32
    const/high16 v6, 0x3f800000    # 1.0f

    .line 33
    .line 34
    move v4, p2

    .line 35
    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 36
    .line 37
    .line 38
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    const-class p3, Lm18;

    .line 43
    .line 44
    const/4 v3, 0x0

    .line 45
    invoke-interface {v2, v3, p2, p3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    check-cast p2, [Lm18;

    .line 50
    .line 51
    if-eqz p2, :cond_2

    .line 52
    .line 53
    array-length p3, p2

    .line 54
    move v4, v3

    .line 55
    :goto_2
    if-ge v4, p3, :cond_2

    .line 56
    .line 57
    aget-object v5, p2, v4

    .line 58
    .line 59
    invoke-interface {v2, v5}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    add-int/lit8 v4, v4, 0x1

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_2
    new-instance p2, Lm18;

    .line 66
    .line 67
    invoke-direct {p2, v1}, Lm18;-><init>(Landroid/text/StaticLayout;)V

    .line 68
    .line 69
    .line 70
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 71
    .line 72
    .line 73
    move-result p3

    .line 74
    const/16 v4, 0x12

    .line 75
    .line 76
    invoke-interface {v2, p2, v3, p3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 77
    .line 78
    .line 79
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 80
    .line 81
    .line 82
    move-result p2

    .line 83
    const-class p3, Lv60;

    .line 84
    .line 85
    invoke-interface {v2, v3, p2, p3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    check-cast p2, [Lv60;

    .line 90
    .line 91
    if-eqz p2, :cond_4

    .line 92
    .line 93
    array-length p3, p2

    .line 94
    if-lez p3, :cond_4

    .line 95
    .line 96
    array-length p3, p2

    .line 97
    :goto_3
    if-ge v3, p3, :cond_4

    .line 98
    .line 99
    aget-object v2, p2, v3

    .line 100
    .line 101
    iget-object v2, v2, Lv60;->b:Lp60;

    .line 102
    .line 103
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    if-eqz v4, :cond_3

    .line 108
    .line 109
    goto :goto_4

    .line 110
    :cond_3
    new-instance v4, Lyw7;

    .line 111
    .line 112
    invoke-direct {v4, v0}, Lyw7;-><init>(Lxw7;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2, v4}, Lp60;->c(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 116
    .line 117
    .line 118
    :goto_4
    add-int/lit8 v3, v3, 0x1

    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_4
    iget-object p0, p0, Lax7;->c:Ljava/util/ArrayList;

    .line 122
    .line 123
    invoke-virtual {p0, p1, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 21

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
    move/from16 v3, p3

    .line 8
    .line 9
    move/from16 v4, p5

    .line 10
    .line 11
    move/from16 v5, p6

    .line 12
    .line 13
    move/from16 v6, p8

    .line 14
    .line 15
    move-object/from16 v7, p9

    .line 16
    .line 17
    invoke-static/range {p1 .. p2}, Lzv1;->s(Landroid/graphics/Canvas;Ljava/lang/CharSequence;)I

    .line 18
    .line 19
    .line 20
    move-result v8

    .line 21
    iget v9, v0, Lax7;->p:I

    .line 22
    .line 23
    iget-boolean v12, v0, Lax7;->e:Z

    .line 24
    .line 25
    iget-object v13, v0, Lax7;->c:Ljava/util/ArrayList;

    .line 26
    .line 27
    iget-object v14, v0, Lax7;->a:Lex7;

    .line 28
    .line 29
    if-eq v9, v8, :cond_1

    .line 30
    .line 31
    iput v8, v0, Lax7;->p:I

    .line 32
    .line 33
    instance-of v8, v7, Landroid/text/TextPaint;

    .line 34
    .line 35
    iget-object v9, v0, Lax7;->d:Landroid/text/TextPaint;

    .line 36
    .line 37
    if-eqz v8, :cond_0

    .line 38
    .line 39
    move-object v8, v7

    .line 40
    check-cast v8, Landroid/text/TextPaint;

    .line 41
    .line 42
    invoke-virtual {v9, v8}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {v9, v7}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 47
    .line 48
    .line 49
    :goto_0
    invoke-virtual {v9, v12}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 50
    .line 51
    .line 52
    iget-object v8, v0, Lax7;->b:Ljava/util/List;

    .line 53
    .line 54
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 55
    .line 56
    .line 57
    move-result v9

    .line 58
    const/high16 p7, 0x3f800000    # 1.0f

    .line 59
    .line 60
    iget v10, v14, Lex7;->a:I

    .line 61
    .line 62
    mul-int/lit8 v10, v10, 0x2

    .line 63
    .line 64
    const/high16 v16, 0x3f000000    # 0.5f

    .line 65
    .line 66
    iget v11, v0, Lax7;->p:I

    .line 67
    .line 68
    int-to-float v11, v11

    .line 69
    mul-float v11, v11, p7

    .line 70
    .line 71
    int-to-float v9, v9

    .line 72
    div-float/2addr v11, v9

    .line 73
    add-float v11, v11, v16

    .line 74
    .line 75
    float-to-int v9, v11

    .line 76
    sub-int/2addr v9, v10

    .line 77
    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 78
    .line 79
    .line 80
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 81
    .line 82
    .line 83
    move-result v10

    .line 84
    const/4 v11, 0x0

    .line 85
    :goto_1
    if-ge v11, v10, :cond_2

    .line 86
    .line 87
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v17

    .line 91
    move-object/from16 v15, v17

    .line 92
    .line 93
    check-cast v15, Lzw7;

    .line 94
    .line 95
    invoke-virtual {v0, v11, v9, v15}, Lax7;->a(IILzw7;)V

    .line 96
    .line 97
    .line 98
    add-int/lit8 v11, v11, 0x1

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_1
    const/high16 p7, 0x3f800000    # 1.0f

    .line 102
    .line 103
    const/high16 v16, 0x3f000000    # 0.5f

    .line 104
    .line 105
    :cond_2
    iget v8, v14, Lex7;->a:I

    .line 106
    .line 107
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 108
    .line 109
    .line 110
    move-result v9

    .line 111
    iget v10, v0, Lax7;->p:I

    .line 112
    .line 113
    int-to-float v11, v10

    .line 114
    mul-float v11, v11, p7

    .line 115
    .line 116
    int-to-float v15, v9

    .line 117
    div-float/2addr v11, v15

    .line 118
    add-float v11, v11, v16

    .line 119
    .line 120
    float-to-int v11, v11

    .line 121
    div-int/2addr v10, v9

    .line 122
    sub-int v10, v11, v10

    .line 123
    .line 124
    iget-object v15, v0, Lax7;->n:Landroid/graphics/Paint;

    .line 125
    .line 126
    if-eqz v12, :cond_3

    .line 127
    .line 128
    const/4 v12, 0x0

    .line 129
    invoke-virtual {v15, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 130
    .line 131
    .line 132
    sget-object v12, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 133
    .line 134
    invoke-virtual {v15, v12}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 135
    .line 136
    .line 137
    move/from16 p7, v10

    .line 138
    .line 139
    goto :goto_3

    .line 140
    :cond_3
    iget-boolean v12, v0, Lax7;->f:Z

    .line 141
    .line 142
    if-eqz v12, :cond_5

    .line 143
    .line 144
    iget v12, v14, Lex7;->d:I

    .line 145
    .line 146
    if-nez v12, :cond_4

    .line 147
    .line 148
    invoke-virtual {v15}, Landroid/graphics/Paint;->getColor()I

    .line 149
    .line 150
    .line 151
    move-result v12

    .line 152
    move/from16 p7, v10

    .line 153
    .line 154
    const/16 v10, 0x16

    .line 155
    .line 156
    invoke-static {v12, v10}, Lzh8;->c(II)I

    .line 157
    .line 158
    .line 159
    move-result v12

    .line 160
    goto :goto_2

    .line 161
    :cond_4
    move/from16 p7, v10

    .line 162
    .line 163
    :goto_2
    invoke-virtual {v15, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 164
    .line 165
    .line 166
    sget-object v10, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 167
    .line 168
    invoke-virtual {v15, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 169
    .line 170
    .line 171
    goto :goto_3

    .line 172
    :cond_5
    move/from16 p7, v10

    .line 173
    .line 174
    const/4 v12, 0x0

    .line 175
    invoke-virtual {v15, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 176
    .line 177
    .line 178
    sget-object v10, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 179
    .line 180
    invoke-virtual {v15, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 181
    .line 182
    .line 183
    :goto_3
    invoke-virtual {v15}, Landroid/graphics/Paint;->getColor()I

    .line 184
    .line 185
    .line 186
    move-result v10

    .line 187
    iget-object v12, v0, Lax7;->k:Landroid/graphics/Rect;

    .line 188
    .line 189
    if-eqz v10, :cond_6

    .line 190
    .line 191
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 192
    .line 193
    .line 194
    move-result v10

    .line 195
    move/from16 v17, v11

    .line 196
    .line 197
    :try_start_0
    iget v11, v0, Lax7;->p:I

    .line 198
    .line 199
    move/from16 v19, v8

    .line 200
    .line 201
    sub-int v8, v6, v5

    .line 202
    .line 203
    move-object/from16 v20, v13

    .line 204
    .line 205
    const/4 v13, 0x0

    .line 206
    invoke-virtual {v12, v13, v13, v11, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 207
    .line 208
    .line 209
    int-to-float v8, v5

    .line 210
    invoke-virtual {v1, v4, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v1, v12, v15}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    .line 215
    .line 216
    invoke-virtual {v1, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 217
    .line 218
    .line 219
    goto :goto_4

    .line 220
    :catchall_0
    move-exception v0

    .line 221
    invoke-virtual {v1, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 222
    .line 223
    .line 224
    throw v0

    .line 225
    :cond_6
    move/from16 v19, v8

    .line 226
    .line 227
    move/from16 v17, v11

    .line 228
    .line 229
    move-object/from16 v20, v13

    .line 230
    .line 231
    :goto_4
    invoke-virtual {v15, v7}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 232
    .line 233
    .line 234
    iget v7, v14, Lex7;->b:I

    .line 235
    .line 236
    if-nez v7, :cond_7

    .line 237
    .line 238
    invoke-virtual {v15}, Landroid/graphics/Paint;->getColor()I

    .line 239
    .line 240
    .line 241
    move-result v7

    .line 242
    const/16 v8, 0x4b

    .line 243
    .line 244
    invoke-static {v7, v8}, Lzh8;->c(II)I

    .line 245
    .line 246
    .line 247
    move-result v7

    .line 248
    :cond_7
    invoke-virtual {v15, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 249
    .line 250
    .line 251
    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 252
    .line 253
    invoke-virtual {v15, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 254
    .line 255
    .line 256
    iget v7, v14, Lex7;->c:I

    .line 257
    .line 258
    const/4 v8, -0x1

    .line 259
    if-ne v7, v8, :cond_8

    .line 260
    .line 261
    invoke-virtual {v15}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 262
    .line 263
    .line 264
    move-result v7

    .line 265
    add-float v7, v7, v16

    .line 266
    .line 267
    float-to-int v7, v7

    .line 268
    :cond_8
    if-lez v7, :cond_9

    .line 269
    .line 270
    const/4 v10, 0x1

    .line 271
    goto :goto_5

    .line 272
    :cond_9
    const/4 v10, 0x0

    .line 273
    :goto_5
    sub-int v11, v6, v5

    .line 274
    .line 275
    iget v13, v0, Lax7;->q:I

    .line 276
    .line 277
    sub-int v13, v11, v13

    .line 278
    .line 279
    div-int/lit8 v13, v13, 0x4

    .line 280
    .line 281
    if-eqz v10, :cond_b

    .line 282
    .line 283
    move-object v14, v2

    .line 284
    check-cast v14, Landroid/text/Spanned;

    .line 285
    .line 286
    const-class v8, Lcx7;

    .line 287
    .line 288
    move/from16 v16, v10

    .line 289
    .line 290
    move/from16 v10, p4

    .line 291
    .line 292
    invoke-interface {v14, v3, v10, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object v8

    .line 296
    check-cast v8, [Lcx7;

    .line 297
    .line 298
    if-eqz v8, :cond_a

    .line 299
    .line 300
    array-length v10, v8

    .line 301
    if-lez v10, :cond_a

    .line 302
    .line 303
    const/16 v18, 0x0

    .line 304
    .line 305
    aget-object v8, v8, v18

    .line 306
    .line 307
    instance-of v10, v2, Landroid/text/Spanned;

    .line 308
    .line 309
    if-eqz v10, :cond_a

    .line 310
    .line 311
    check-cast v2, Landroid/text/Spanned;

    .line 312
    .line 313
    invoke-interface {v2, v8}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 314
    .line 315
    .line 316
    move-result v2

    .line 317
    if-ne v2, v3, :cond_a

    .line 318
    .line 319
    float-to-int v2, v4

    .line 320
    iget v3, v0, Lax7;->p:I

    .line 321
    .line 322
    add-int v8, v5, v7

    .line 323
    .line 324
    invoke-virtual {v12, v2, v5, v3, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {v1, v12, v15}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 328
    .line 329
    .line 330
    const/4 v2, 0x1

    .line 331
    goto :goto_6

    .line 332
    :cond_a
    const/4 v2, 0x0

    .line 333
    :goto_6
    float-to-int v3, v4

    .line 334
    sub-int v8, v6, v7

    .line 335
    .line 336
    iget v10, v0, Lax7;->p:I

    .line 337
    .line 338
    invoke-virtual {v12, v3, v8, v10, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {v1, v12, v15}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 342
    .line 343
    .line 344
    goto :goto_7

    .line 345
    :cond_b
    move/from16 v16, v10

    .line 346
    .line 347
    const/4 v2, 0x0

    .line 348
    :goto_7
    div-int/lit8 v3, v7, 0x2

    .line 349
    .line 350
    if-eqz v2, :cond_c

    .line 351
    .line 352
    move v2, v7

    .line 353
    goto :goto_8

    .line 354
    :cond_c
    const/4 v2, 0x0

    .line 355
    :goto_8
    sub-int/2addr v11, v7

    .line 356
    const/4 v6, 0x0

    .line 357
    const/4 v8, 0x0

    .line 358
    :goto_9
    if-ge v6, v9, :cond_10

    .line 359
    .line 360
    move-object/from16 v10, v20

    .line 361
    .line 362
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 363
    .line 364
    .line 365
    move-result-object v14

    .line 366
    check-cast v14, Landroid/text/Layout;

    .line 367
    .line 368
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 369
    .line 370
    .line 371
    move-result v4

    .line 372
    move/from16 v20, v9

    .line 373
    .line 374
    mul-int v9, v6, v17

    .line 375
    .line 376
    int-to-float v9, v9

    .line 377
    add-float v9, p5, v9

    .line 378
    .line 379
    move-object/from16 p2, v10

    .line 380
    .line 381
    int-to-float v10, v5

    .line 382
    :try_start_1
    invoke-virtual {v1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 383
    .line 384
    .line 385
    if-eqz v16, :cond_e

    .line 386
    .line 387
    if-nez v6, :cond_d

    .line 388
    .line 389
    const/4 v9, 0x0

    .line 390
    invoke-virtual {v12, v9, v2, v7, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 391
    .line 392
    .line 393
    goto :goto_a

    .line 394
    :catchall_1
    move-exception v0

    .line 395
    goto :goto_b

    .line 396
    :cond_d
    const/4 v9, 0x0

    .line 397
    neg-int v10, v3

    .line 398
    invoke-virtual {v12, v10, v2, v3, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 399
    .line 400
    .line 401
    :goto_a
    invoke-virtual {v1, v12, v15}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 402
    .line 403
    .line 404
    add-int/lit8 v10, v20, -0x1

    .line 405
    .line 406
    if-ne v6, v10, :cond_e

    .line 407
    .line 408
    sub-int v10, v17, v7

    .line 409
    .line 410
    sub-int v10, v10, p7

    .line 411
    .line 412
    sub-int v9, v17, p7

    .line 413
    .line 414
    invoke-virtual {v12, v10, v2, v9, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 415
    .line 416
    .line 417
    invoke-virtual {v1, v12, v15}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 418
    .line 419
    .line 420
    :cond_e
    move/from16 v9, v19

    .line 421
    .line 422
    int-to-float v10, v9

    .line 423
    move/from16 v19, v2

    .line 424
    .line 425
    add-int v2, v9, v13

    .line 426
    .line 427
    int-to-float v2, v2

    .line 428
    invoke-virtual {v1, v10, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 429
    .line 430
    .line 431
    invoke-virtual {v14, v1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 432
    .line 433
    .line 434
    invoke-virtual {v14}, Landroid/text/Layout;->getHeight()I

    .line 435
    .line 436
    .line 437
    move-result v2

    .line 438
    if-le v2, v8, :cond_f

    .line 439
    .line 440
    invoke-virtual {v14}, Landroid/text/Layout;->getHeight()I

    .line 441
    .line 442
    .line 443
    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 444
    move v8, v2

    .line 445
    :cond_f
    invoke-virtual {v1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 446
    .line 447
    .line 448
    add-int/lit8 v6, v6, 0x1

    .line 449
    .line 450
    move/from16 v4, p5

    .line 451
    .line 452
    move/from16 v2, v19

    .line 453
    .line 454
    move/from16 v19, v9

    .line 455
    .line 456
    move/from16 v9, v20

    .line 457
    .line 458
    move-object/from16 v20, p2

    .line 459
    .line 460
    goto :goto_9

    .line 461
    :goto_b
    invoke-virtual {v1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 462
    .line 463
    .line 464
    throw v0

    .line 465
    :cond_10
    iget v1, v0, Lax7;->q:I

    .line 466
    .line 467
    if-eq v1, v8, :cond_11

    .line 468
    .line 469
    iget-object v0, v0, Lax7;->r:Lib;

    .line 470
    .line 471
    if-eqz v0, :cond_11

    .line 472
    .line 473
    iget-object v1, v0, Lib;->c:Ljava/lang/Object;

    .line 474
    .line 475
    check-cast v1, Landroid/widget/TextView;

    .line 476
    .line 477
    iget-object v0, v0, Lib;->b:Ljava/lang/Object;

    .line 478
    .line 479
    check-cast v0, Lib0;

    .line 480
    .line 481
    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 482
    .line 483
    .line 484
    invoke-virtual {v1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 485
    .line 486
    .line 487
    :cond_11
    return-void
.end method

.method public final getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 0

    .line 1
    iget-object p1, p0, Lax7;->c:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    if-lez p2, :cond_2

    .line 8
    .line 9
    if-eqz p5, :cond_2

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const/4 p2, 0x0

    .line 16
    move p3, p2

    .line 17
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result p4

    .line 21
    if-eqz p4, :cond_1

    .line 22
    .line 23
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p4

    .line 27
    check-cast p4, Landroid/text/Layout;

    .line 28
    .line 29
    invoke-virtual {p4}, Landroid/text/Layout;->getHeight()I

    .line 30
    .line 31
    .line 32
    move-result p4

    .line 33
    if-le p4, p3, :cond_0

    .line 34
    .line 35
    move p3, p4

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    iput p3, p0, Lax7;->q:I

    .line 38
    .line 39
    iget-object p1, p0, Lax7;->a:Lex7;

    .line 40
    .line 41
    iget p1, p1, Lex7;->a:I

    .line 42
    .line 43
    mul-int/lit8 p1, p1, 0x2

    .line 44
    .line 45
    add-int/2addr p1, p3

    .line 46
    neg-int p1, p1

    .line 47
    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 48
    .line 49
    iput p2, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 50
    .line 51
    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 52
    .line 53
    iput p2, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 54
    .line 55
    :cond_2
    iget p0, p0, Lax7;->p:I

    .line 56
    .line 57
    return p0
.end method
