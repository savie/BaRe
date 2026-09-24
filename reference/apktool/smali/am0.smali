.class public abstract Lam0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lrp2;
.implements Lul0;
.implements Lqo4;


# instance fields
.field public final a:Landroid/graphics/Path;

.field public final b:Landroid/graphics/Matrix;

.field public final c:Lvp4;

.field public final d:Lvp4;

.field public final e:Lvp4;

.field public final f:Lvp4;

.field public final g:Lvp4;

.field public final h:Landroid/graphics/RectF;

.field public final i:Landroid/graphics/RectF;

.field public final j:Landroid/graphics/RectF;

.field public final k:Landroid/graphics/RectF;

.field public final l:Landroid/graphics/Matrix;

.field public final m:Lc35;

.field public final n:Ljs4;

.field public final o:Lvq;

.field public final p:Lxh3;

.field public q:Lam0;

.field public r:Lam0;

.field public s:Ljava/util/List;

.field public final t:Ljava/util/ArrayList;

.field public final u:Lk98;

.field public v:Z

.field public w:Z

.field public x:Lvp4;

.field public y:F

.field public z:Landroid/graphics/BlurMaskFilter;


# direct methods
.method public constructor <init>(Lc35;Ljs4;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Path;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lam0;->a:Landroid/graphics/Path;

    .line 10
    .line 11
    new-instance v0, Landroid/graphics/Matrix;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lam0;->b:Landroid/graphics/Matrix;

    .line 17
    .line 18
    new-instance v0, Lvp4;

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-direct {v0, v1, v2}, Lvp4;-><init>(II)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lam0;->c:Lvp4;

    .line 26
    .line 27
    new-instance v0, Lvp4;

    .line 28
    .line 29
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    .line 30
    .line 31
    invoke-direct {v0, v3}, Lvp4;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lam0;->d:Lvp4;

    .line 35
    .line 36
    new-instance v0, Lvp4;

    .line 37
    .line 38
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    .line 39
    .line 40
    invoke-direct {v0, v4}, Lvp4;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Lam0;->e:Lvp4;

    .line 44
    .line 45
    new-instance v0, Lvp4;

    .line 46
    .line 47
    invoke-direct {v0, v1, v2}, Lvp4;-><init>(II)V

    .line 48
    .line 49
    .line 50
    iput-object v0, p0, Lam0;->f:Lvp4;

    .line 51
    .line 52
    new-instance v5, Lvp4;

    .line 53
    .line 54
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    .line 55
    .line 56
    invoke-direct {v5}, Lvp4;-><init>()V

    .line 57
    .line 58
    .line 59
    new-instance v7, Landroid/graphics/PorterDuffXfermode;

    .line 60
    .line 61
    invoke-direct {v7, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 65
    .line 66
    .line 67
    iput-object v5, p0, Lam0;->g:Lvp4;

    .line 68
    .line 69
    new-instance v5, Landroid/graphics/RectF;

    .line 70
    .line 71
    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    .line 72
    .line 73
    .line 74
    iput-object v5, p0, Lam0;->h:Landroid/graphics/RectF;

    .line 75
    .line 76
    new-instance v5, Landroid/graphics/RectF;

    .line 77
    .line 78
    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    .line 79
    .line 80
    .line 81
    iput-object v5, p0, Lam0;->i:Landroid/graphics/RectF;

    .line 82
    .line 83
    new-instance v5, Landroid/graphics/RectF;

    .line 84
    .line 85
    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    .line 86
    .line 87
    .line 88
    iput-object v5, p0, Lam0;->j:Landroid/graphics/RectF;

    .line 89
    .line 90
    new-instance v5, Landroid/graphics/RectF;

    .line 91
    .line 92
    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    .line 93
    .line 94
    .line 95
    iput-object v5, p0, Lam0;->k:Landroid/graphics/RectF;

    .line 96
    .line 97
    new-instance v5, Landroid/graphics/Matrix;

    .line 98
    .line 99
    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 100
    .line 101
    .line 102
    iput-object v5, p0, Lam0;->l:Landroid/graphics/Matrix;

    .line 103
    .line 104
    new-instance v5, Ljava/util/ArrayList;

    .line 105
    .line 106
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .line 108
    .line 109
    iput-object v5, p0, Lam0;->t:Ljava/util/ArrayList;

    .line 110
    .line 111
    iput-boolean v1, p0, Lam0;->v:Z

    .line 112
    .line 113
    const/4 v5, 0x0

    .line 114
    iput v5, p0, Lam0;->y:F

    .line 115
    .line 116
    iput-object p1, p0, Lam0;->m:Lc35;

    .line 117
    .line 118
    iput-object p2, p0, Lam0;->n:Ljs4;

    .line 119
    .line 120
    iget-object p1, p2, Ljs4;->c:Ljava/lang/String;

    .line 121
    .line 122
    iget-object v5, p2, Ljs4;->h:Ljava/util/List;

    .line 123
    .line 124
    const-string v6, "#draw"

    .line 125
    .line 126
    invoke-virtual {p1, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    iget p1, p2, Ljs4;->u:I

    .line 130
    .line 131
    const/4 v6, 0x3

    .line 132
    if-ne p1, v6, :cond_0

    .line 133
    .line 134
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    .line 135
    .line 136
    invoke-direct {p1, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 140
    .line 141
    .line 142
    goto :goto_0

    .line 143
    :cond_0
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    .line 144
    .line 145
    invoke-direct {p1, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 149
    .line 150
    .line 151
    :goto_0
    iget-object p1, p2, Ljs4;->i:Lmc;

    .line 152
    .line 153
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 154
    .line 155
    .line 156
    new-instance p2, Lk98;

    .line 157
    .line 158
    invoke-direct {p2, p1}, Lk98;-><init>(Lmc;)V

    .line 159
    .line 160
    .line 161
    iput-object p2, p0, Lam0;->u:Lk98;

    .line 162
    .line 163
    invoke-virtual {p2, p0}, Lk98;->b(Lul0;)V

    .line 164
    .line 165
    .line 166
    if-eqz v5, :cond_2

    .line 167
    .line 168
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 169
    .line 170
    .line 171
    move-result p1

    .line 172
    if-nez p1, :cond_2

    .line 173
    .line 174
    new-instance p1, Lvq;

    .line 175
    .line 176
    invoke-direct {p1, v5}, Lvq;-><init>(Ljava/util/List;)V

    .line 177
    .line 178
    .line 179
    iput-object p1, p0, Lam0;->o:Lvq;

    .line 180
    .line 181
    iget-object p1, p1, Lvq;->b:Ljava/lang/Object;

    .line 182
    .line 183
    check-cast p1, Ljava/util/ArrayList;

    .line 184
    .line 185
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 190
    .line 191
    .line 192
    move-result p2

    .line 193
    if-eqz p2, :cond_1

    .line 194
    .line 195
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object p2

    .line 199
    check-cast p2, Lyl0;

    .line 200
    .line 201
    invoke-virtual {p2, p0}, Lyl0;->a(Lul0;)V

    .line 202
    .line 203
    .line 204
    goto :goto_1

    .line 205
    :cond_1
    iget-object p1, p0, Lam0;->o:Lvq;

    .line 206
    .line 207
    iget-object p1, p1, Lvq;->c:Ljava/lang/Object;

    .line 208
    .line 209
    check-cast p1, Ljava/util/ArrayList;

    .line 210
    .line 211
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 216
    .line 217
    .line 218
    move-result p2

    .line 219
    if-eqz p2, :cond_2

    .line 220
    .line 221
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object p2

    .line 225
    check-cast p2, Lyl0;

    .line 226
    .line 227
    invoke-virtual {p0, p2}, Lam0;->g(Lyl0;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {p2, p0}, Lyl0;->a(Lul0;)V

    .line 231
    .line 232
    .line 233
    goto :goto_2

    .line 234
    :cond_2
    iget-object p1, p0, Lam0;->n:Ljs4;

    .line 235
    .line 236
    iget-object p2, p1, Ljs4;->t:Ljava/util/List;

    .line 237
    .line 238
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 239
    .line 240
    .line 241
    move-result p2

    .line 242
    if-nez p2, :cond_5

    .line 243
    .line 244
    new-instance p2, Lxh3;

    .line 245
    .line 246
    iget-object p1, p1, Ljs4;->t:Ljava/util/List;

    .line 247
    .line 248
    invoke-direct {p2, p1}, Lyl0;-><init>(Ljava/util/List;)V

    .line 249
    .line 250
    .line 251
    iput-object p2, p0, Lam0;->p:Lxh3;

    .line 252
    .line 253
    iput-boolean v1, p2, Lyl0;->b:Z

    .line 254
    .line 255
    new-instance p1, Lzl0;

    .line 256
    .line 257
    invoke-direct {p1, p0}, Lzl0;-><init>(Lam0;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {p2, p1}, Lyl0;->a(Lul0;)V

    .line 261
    .line 262
    .line 263
    iget-object p1, p0, Lam0;->p:Lxh3;

    .line 264
    .line 265
    invoke-virtual {p1}, Lyl0;->f()Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object p1

    .line 269
    check-cast p1, Ljava/lang/Float;

    .line 270
    .line 271
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 272
    .line 273
    .line 274
    move-result p1

    .line 275
    const/high16 p2, 0x3f800000    # 1.0f

    .line 276
    .line 277
    cmpl-float p1, p1, p2

    .line 278
    .line 279
    if-nez p1, :cond_3

    .line 280
    .line 281
    goto :goto_3

    .line 282
    :cond_3
    move v1, v2

    .line 283
    :goto_3
    iget-boolean p1, p0, Lam0;->v:Z

    .line 284
    .line 285
    if-eq v1, p1, :cond_4

    .line 286
    .line 287
    iput-boolean v1, p0, Lam0;->v:Z

    .line 288
    .line 289
    iget-object p1, p0, Lam0;->m:Lc35;

    .line 290
    .line 291
    invoke-virtual {p1}, Lc35;->invalidateSelf()V

    .line 292
    .line 293
    .line 294
    :cond_4
    iget-object p1, p0, Lam0;->p:Lxh3;

    .line 295
    .line 296
    invoke-virtual {p0, p1}, Lam0;->g(Lyl0;)V

    .line 297
    .line 298
    .line 299
    return-void

    .line 300
    :cond_5
    iget-boolean p1, p0, Lam0;->v:Z

    .line 301
    .line 302
    if-eq v1, p1, :cond_6

    .line 303
    .line 304
    iput-boolean v1, p0, Lam0;->v:Z

    .line 305
    .line 306
    iget-object p0, p0, Lam0;->m:Lc35;

    .line 307
    .line 308
    invoke-virtual {p0}, Lc35;->invalidateSelf()V

    .line 309
    .line 310
    .line 311
    :cond_6
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 0

    .line 1
    iget-object p0, p0, Lam0;->m:Lc35;

    .line 2
    .line 3
    invoke-virtual {p0}, Lc35;->invalidateSelf()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final c(Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final d(Lpo4;ILjava/util/ArrayList;Lpo4;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lam0;->q:Lam0;

    .line 2
    .line 3
    iget-object v1, p0, Lam0;->n:Ljs4;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, v0, Lam0;->n:Ljs4;

    .line 8
    .line 9
    iget-object v0, v0, Ljs4;->c:Ljava/lang/String;

    .line 10
    .line 11
    new-instance v2, Lpo4;

    .line 12
    .line 13
    invoke-direct {v2, p4}, Lpo4;-><init>(Lpo4;)V

    .line 14
    .line 15
    .line 16
    iget-object v3, v2, Lpo4;->a:Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lam0;->q:Lam0;

    .line 22
    .line 23
    iget-object v0, v0, Lam0;->n:Ljs4;

    .line 24
    .line 25
    iget-object v0, v0, Ljs4;->c:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {p1, p2, v0}, Lpo4;->a(ILjava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    iget-object v0, p0, Lam0;->q:Lam0;

    .line 34
    .line 35
    new-instance v3, Lpo4;

    .line 36
    .line 37
    invoke-direct {v3, v2}, Lpo4;-><init>(Lpo4;)V

    .line 38
    .line 39
    .line 40
    iput-object v0, v3, Lpo4;->b:Lqo4;

    .line 41
    .line 42
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    :cond_0
    iget-object v0, v1, Ljs4;->c:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {p1, p2, v0}, Lpo4;->d(ILjava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    iget-object v0, p0, Lam0;->q:Lam0;

    .line 54
    .line 55
    iget-object v0, v0, Lam0;->n:Ljs4;

    .line 56
    .line 57
    iget-object v0, v0, Ljs4;->c:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {p1, p2, v0}, Lpo4;->b(ILjava/lang/String;)I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    add-int/2addr v0, p2

    .line 64
    iget-object v3, p0, Lam0;->q:Lam0;

    .line 65
    .line 66
    invoke-virtual {v3, p1, v0, p3, v2}, Lam0;->q(Lpo4;ILjava/util/ArrayList;Lpo4;)V

    .line 67
    .line 68
    .line 69
    :cond_1
    iget-object v0, v1, Ljs4;->c:Ljava/lang/String;

    .line 70
    .line 71
    iget-object v1, v1, Ljs4;->c:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {p1, p2, v0}, Lpo4;->c(ILjava/lang/String;)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-nez v0, :cond_2

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    const-string v0, "__container"

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-nez v0, :cond_4

    .line 87
    .line 88
    new-instance v0, Lpo4;

    .line 89
    .line 90
    invoke-direct {v0, p4}, Lpo4;-><init>(Lpo4;)V

    .line 91
    .line 92
    .line 93
    iget-object p4, v0, Lpo4;->a:Ljava/util/List;

    .line 94
    .line 95
    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, p2, v1}, Lpo4;->a(ILjava/lang/String;)Z

    .line 99
    .line 100
    .line 101
    move-result p4

    .line 102
    if-eqz p4, :cond_3

    .line 103
    .line 104
    new-instance p4, Lpo4;

    .line 105
    .line 106
    invoke-direct {p4, v0}, Lpo4;-><init>(Lpo4;)V

    .line 107
    .line 108
    .line 109
    iput-object p0, p4, Lpo4;->b:Lqo4;

    .line 110
    .line 111
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    :cond_3
    move-object p4, v0

    .line 115
    :cond_4
    invoke-virtual {p1, p2, v1}, Lpo4;->d(ILjava/lang/String;)Z

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-eqz v0, :cond_5

    .line 120
    .line 121
    invoke-virtual {p1, p2, v1}, Lpo4;->b(ILjava/lang/String;)I

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    add-int/2addr v0, p2

    .line 126
    invoke-virtual {p0, p1, v0, p3, p4}, Lam0;->q(Lpo4;ILjava/util/ArrayList;Lpo4;)V

    .line 127
    .line 128
    .line 129
    :cond_5
    :goto_0
    return-void
.end method

.method public e(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lam0;->h:Landroid/graphics/RectF;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lam0;->i()V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lam0;->l:Landroid/graphics/Matrix;

    .line 11
    .line 12
    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 13
    .line 14
    .line 15
    if-eqz p3, :cond_1

    .line 16
    .line 17
    iget-object p2, p0, Lam0;->s:Ljava/util/List;

    .line 18
    .line 19
    if-eqz p2, :cond_0

    .line 20
    .line 21
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    add-int/lit8 p2, p2, -0x1

    .line 26
    .line 27
    :goto_0
    if-ltz p2, :cond_1

    .line 28
    .line 29
    iget-object p3, p0, Lam0;->s:Ljava/util/List;

    .line 30
    .line 31
    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p3

    .line 35
    check-cast p3, Lam0;

    .line 36
    .line 37
    iget-object p3, p3, Lam0;->u:Lk98;

    .line 38
    .line 39
    invoke-virtual {p3}, Lk98;->e()Landroid/graphics/Matrix;

    .line 40
    .line 41
    .line 42
    move-result-object p3

    .line 43
    invoke-virtual {p1, p3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 44
    .line 45
    .line 46
    add-int/lit8 p2, p2, -0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    iget-object p2, p0, Lam0;->r:Lam0;

    .line 50
    .line 51
    if-eqz p2, :cond_1

    .line 52
    .line 53
    iget-object p2, p2, Lam0;->u:Lk98;

    .line 54
    .line 55
    invoke-virtual {p2}, Lk98;->e()Landroid/graphics/Matrix;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 60
    .line 61
    .line 62
    :cond_1
    iget-object p0, p0, Lam0;->u:Lk98;

    .line 63
    .line 64
    invoke-virtual {p0}, Lk98;->e()Landroid/graphics/Matrix;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {p1, p0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public f(Lcd;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lam0;->u:Lk98;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lk98;->c(Lcd;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final g(Lyl0;)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object p0, p0, Lam0;->t:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final h(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 20

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
    iget-boolean v3, v0, Lam0;->v:Z

    .line 8
    .line 9
    if-eqz v3, :cond_20

    .line 10
    .line 11
    iget-object v3, v0, Lam0;->n:Ljs4;

    .line 12
    .line 13
    iget-boolean v4, v3, Ljs4;->v:Z

    .line 14
    .line 15
    if-eqz v4, :cond_0

    .line 16
    .line 17
    goto/16 :goto_10

    .line 18
    .line 19
    :cond_0
    invoke-virtual {v0}, Lam0;->i()V

    .line 20
    .line 21
    .line 22
    iget-object v4, v0, Lam0;->b:Landroid/graphics/Matrix;

    .line 23
    .line 24
    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v4, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 28
    .line 29
    .line 30
    iget-object v5, v0, Lam0;->s:Ljava/util/List;

    .line 31
    .line 32
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    const/4 v6, 0x1

    .line 37
    sub-int/2addr v5, v6

    .line 38
    :goto_0
    if-ltz v5, :cond_1

    .line 39
    .line 40
    iget-object v7, v0, Lam0;->s:Ljava/util/List;

    .line 41
    .line 42
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v7

    .line 46
    check-cast v7, Lam0;

    .line 47
    .line 48
    iget-object v7, v7, Lam0;->u:Lk98;

    .line 49
    .line 50
    invoke-virtual {v7}, Lk98;->e()Landroid/graphics/Matrix;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    invoke-virtual {v4, v7}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 55
    .line 56
    .line 57
    add-int/lit8 v5, v5, -0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    invoke-static {}, Lzv1;->d()V

    .line 61
    .line 62
    .line 63
    iget-object v5, v0, Lam0;->u:Lk98;

    .line 64
    .line 65
    iget-object v7, v5, Lk98;->j:Lyl0;

    .line 66
    .line 67
    if-nez v7, :cond_2

    .line 68
    .line 69
    const/16 v7, 0x64

    .line 70
    .line 71
    :goto_1
    move/from16 v8, p3

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_2
    invoke-virtual {v7}, Lyl0;->f()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v7

    .line 78
    check-cast v7, Ljava/lang/Integer;

    .line 79
    .line 80
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 81
    .line 82
    .line 83
    move-result v7

    .line 84
    goto :goto_1

    .line 85
    :goto_2
    int-to-float v8, v8

    .line 86
    const/high16 v9, 0x437f0000    # 255.0f

    .line 87
    .line 88
    div-float/2addr v8, v9

    .line 89
    int-to-float v7, v7

    .line 90
    mul-float/2addr v8, v7

    .line 91
    const/high16 v7, 0x42c80000    # 100.0f

    .line 92
    .line 93
    div-float/2addr v8, v7

    .line 94
    mul-float/2addr v8, v9

    .line 95
    float-to-int v7, v8

    .line 96
    iget-object v8, v0, Lam0;->q:Lam0;

    .line 97
    .line 98
    if-eqz v8, :cond_3

    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_3
    invoke-virtual {v0}, Lam0;->n()Z

    .line 102
    .line 103
    .line 104
    move-result v8

    .line 105
    if-nez v8, :cond_4

    .line 106
    .line 107
    invoke-virtual {v5}, Lk98;->e()Landroid/graphics/Matrix;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-virtual {v4, v2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v1, v4, v7}, Lam0;->k(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 115
    .line 116
    .line 117
    invoke-static {}, Lzv1;->d()V

    .line 118
    .line 119
    .line 120
    invoke-static {}, Lzv1;->d()V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0}, Lam0;->o()V

    .line 124
    .line 125
    .line 126
    return-void

    .line 127
    :cond_4
    :goto_3
    iget-object v8, v0, Lam0;->h:Landroid/graphics/RectF;

    .line 128
    .line 129
    const/4 v9, 0x0

    .line 130
    invoke-virtual {v0, v8, v4, v9}, Lam0;->e(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 131
    .line 132
    .line 133
    iget-object v10, v0, Lam0;->q:Lam0;

    .line 134
    .line 135
    const/4 v11, 0x3

    .line 136
    const/4 v12, 0x0

    .line 137
    if-eqz v10, :cond_6

    .line 138
    .line 139
    iget v3, v3, Ljs4;->u:I

    .line 140
    .line 141
    if-ne v3, v11, :cond_5

    .line 142
    .line 143
    goto :goto_4

    .line 144
    :cond_5
    iget-object v3, v0, Lam0;->j:Landroid/graphics/RectF;

    .line 145
    .line 146
    invoke-virtual {v3, v12, v12, v12, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 147
    .line 148
    .line 149
    iget-object v10, v0, Lam0;->q:Lam0;

    .line 150
    .line 151
    invoke-virtual {v10, v3, v2, v6}, Lam0;->e(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v8, v3}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    .line 155
    .line 156
    .line 157
    move-result v3

    .line 158
    if-nez v3, :cond_6

    .line 159
    .line 160
    invoke-virtual {v8, v12, v12, v12, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 161
    .line 162
    .line 163
    :cond_6
    :goto_4
    invoke-virtual {v5}, Lk98;->e()Landroid/graphics/Matrix;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    invoke-virtual {v4, v3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 168
    .line 169
    .line 170
    iget-object v3, v0, Lam0;->i:Landroid/graphics/RectF;

    .line 171
    .line 172
    invoke-virtual {v3, v12, v12, v12, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0}, Lam0;->n()Z

    .line 176
    .line 177
    .line 178
    move-result v5

    .line 179
    const/4 v10, 0x2

    .line 180
    iget-object v13, v0, Lam0;->o:Lvq;

    .line 181
    .line 182
    iget-object v14, v0, Lam0;->a:Landroid/graphics/Path;

    .line 183
    .line 184
    if-nez v5, :cond_7

    .line 185
    .line 186
    move v3, v12

    .line 187
    goto/16 :goto_9

    .line 188
    .line 189
    :cond_7
    iget-object v5, v13, Lvq;->d:Ljava/lang/Object;

    .line 190
    .line 191
    check-cast v5, Ljava/util/List;

    .line 192
    .line 193
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 194
    .line 195
    .line 196
    move-result v5

    .line 197
    move v15, v9

    .line 198
    :goto_5
    if-ge v15, v5, :cond_d

    .line 199
    .line 200
    iget-object v12, v13, Lvq;->d:Ljava/lang/Object;

    .line 201
    .line 202
    check-cast v12, Ljava/util/List;

    .line 203
    .line 204
    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v12

    .line 208
    check-cast v12, Lq75;

    .line 209
    .line 210
    iget-object v9, v13, Lvq;->b:Ljava/lang/Object;

    .line 211
    .line 212
    check-cast v9, Ljava/util/ArrayList;

    .line 213
    .line 214
    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v9

    .line 218
    check-cast v9, Lyl0;

    .line 219
    .line 220
    invoke-virtual {v9}, Lyl0;->f()Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v9

    .line 224
    check-cast v9, Landroid/graphics/Path;

    .line 225
    .line 226
    if-nez v9, :cond_8

    .line 227
    .line 228
    goto :goto_8

    .line 229
    :cond_8
    invoke-virtual {v14, v9}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v14, v4}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 233
    .line 234
    .line 235
    iget v9, v12, Lq75;->a:I

    .line 236
    .line 237
    invoke-static {v9}, Ldj7;->A(I)I

    .line 238
    .line 239
    .line 240
    move-result v9

    .line 241
    if-eqz v9, :cond_a

    .line 242
    .line 243
    if-eq v9, v6, :cond_9

    .line 244
    .line 245
    if-eq v9, v10, :cond_a

    .line 246
    .line 247
    if-eq v9, v11, :cond_9

    .line 248
    .line 249
    goto :goto_7

    .line 250
    :cond_9
    :goto_6
    const/4 v3, 0x0

    .line 251
    goto :goto_9

    .line 252
    :cond_a
    iget-boolean v9, v12, Lq75;->d:Z

    .line 253
    .line 254
    if-eqz v9, :cond_b

    .line 255
    .line 256
    goto :goto_6

    .line 257
    :cond_b
    :goto_7
    iget-object v9, v0, Lam0;->k:Landroid/graphics/RectF;

    .line 258
    .line 259
    const/4 v12, 0x0

    .line 260
    invoke-virtual {v14, v9, v12}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 261
    .line 262
    .line 263
    if-nez v15, :cond_c

    .line 264
    .line 265
    invoke-virtual {v3, v9}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 266
    .line 267
    .line 268
    goto :goto_8

    .line 269
    :cond_c
    iget v12, v3, Landroid/graphics/RectF;->left:F

    .line 270
    .line 271
    iget v11, v9, Landroid/graphics/RectF;->left:F

    .line 272
    .line 273
    invoke-static {v12, v11}, Ljava/lang/Math;->min(FF)F

    .line 274
    .line 275
    .line 276
    move-result v11

    .line 277
    iget v12, v3, Landroid/graphics/RectF;->top:F

    .line 278
    .line 279
    iget v10, v9, Landroid/graphics/RectF;->top:F

    .line 280
    .line 281
    invoke-static {v12, v10}, Ljava/lang/Math;->min(FF)F

    .line 282
    .line 283
    .line 284
    move-result v10

    .line 285
    iget v12, v3, Landroid/graphics/RectF;->right:F

    .line 286
    .line 287
    iget v6, v9, Landroid/graphics/RectF;->right:F

    .line 288
    .line 289
    invoke-static {v12, v6}, Ljava/lang/Math;->max(FF)F

    .line 290
    .line 291
    .line 292
    move-result v6

    .line 293
    iget v12, v3, Landroid/graphics/RectF;->bottom:F

    .line 294
    .line 295
    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    .line 296
    .line 297
    invoke-static {v12, v9}, Ljava/lang/Math;->max(FF)F

    .line 298
    .line 299
    .line 300
    move-result v9

    .line 301
    invoke-virtual {v3, v11, v10, v6, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 302
    .line 303
    .line 304
    :goto_8
    add-int/lit8 v15, v15, 0x1

    .line 305
    .line 306
    const/4 v6, 0x1

    .line 307
    const/4 v9, 0x0

    .line 308
    const/4 v10, 0x2

    .line 309
    const/4 v11, 0x3

    .line 310
    const/4 v12, 0x0

    .line 311
    goto :goto_5

    .line 312
    :cond_d
    invoke-virtual {v8, v3}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    .line 313
    .line 314
    .line 315
    move-result v3

    .line 316
    if-nez v3, :cond_9

    .line 317
    .line 318
    const/4 v3, 0x0

    .line 319
    invoke-virtual {v8, v3, v3, v3, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 320
    .line 321
    .line 322
    :goto_9
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    .line 323
    .line 324
    .line 325
    move-result v5

    .line 326
    int-to-float v5, v5

    .line 327
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    .line 328
    .line 329
    .line 330
    move-result v6

    .line 331
    int-to-float v6, v6

    .line 332
    invoke-virtual {v8, v3, v3, v5, v6}, Landroid/graphics/RectF;->intersect(FFFF)Z

    .line 333
    .line 334
    .line 335
    move-result v5

    .line 336
    if-nez v5, :cond_e

    .line 337
    .line 338
    invoke-virtual {v8, v3, v3, v3, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 339
    .line 340
    .line 341
    :cond_e
    invoke-static {}, Lzv1;->d()V

    .line 342
    .line 343
    .line 344
    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    .line 345
    .line 346
    .line 347
    move-result v3

    .line 348
    const/high16 v5, 0x3f800000    # 1.0f

    .line 349
    .line 350
    cmpl-float v3, v3, v5

    .line 351
    .line 352
    if-ltz v3, :cond_1e

    .line 353
    .line 354
    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    .line 355
    .line 356
    .line 357
    move-result v3

    .line 358
    cmpl-float v3, v3, v5

    .line 359
    .line 360
    if-ltz v3, :cond_1e

    .line 361
    .line 362
    iget-object v3, v0, Lam0;->c:Lvp4;

    .line 363
    .line 364
    const/16 v5, 0xff

    .line 365
    .line 366
    invoke-virtual {v3, v5}, Lvp4;->setAlpha(I)V

    .line 367
    .line 368
    .line 369
    sget-object v6, Lmi8;->a:Ldi8;

    .line 370
    .line 371
    invoke-virtual {v1, v8, v3}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    .line 372
    .line 373
    .line 374
    invoke-static {}, Lzv1;->d()V

    .line 375
    .line 376
    .line 377
    invoke-static {}, Lzv1;->d()V

    .line 378
    .line 379
    .line 380
    invoke-virtual/range {p0 .. p1}, Lam0;->j(Landroid/graphics/Canvas;)V

    .line 381
    .line 382
    .line 383
    invoke-virtual {v0, v1, v4, v7}, Lam0;->k(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 384
    .line 385
    .line 386
    invoke-static {}, Lzv1;->d()V

    .line 387
    .line 388
    .line 389
    invoke-virtual {v0}, Lam0;->n()Z

    .line 390
    .line 391
    .line 392
    move-result v6

    .line 393
    if-eqz v6, :cond_1c

    .line 394
    .line 395
    iget-object v6, v0, Lam0;->d:Lvp4;

    .line 396
    .line 397
    invoke-virtual {v1, v8, v6}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    .line 398
    .line 399
    .line 400
    invoke-static {}, Lzv1;->d()V

    .line 401
    .line 402
    .line 403
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 404
    .line 405
    const/16 v10, 0x1c

    .line 406
    .line 407
    if-ge v9, v10, :cond_f

    .line 408
    .line 409
    invoke-virtual/range {p0 .. p1}, Lam0;->j(Landroid/graphics/Canvas;)V

    .line 410
    .line 411
    .line 412
    :cond_f
    invoke-static {}, Lzv1;->d()V

    .line 413
    .line 414
    .line 415
    const/4 v9, 0x0

    .line 416
    :goto_a
    iget-object v10, v13, Lvq;->d:Ljava/lang/Object;

    .line 417
    .line 418
    check-cast v10, Ljava/util/List;

    .line 419
    .line 420
    iget-object v11, v13, Lvq;->b:Ljava/lang/Object;

    .line 421
    .line 422
    check-cast v11, Ljava/util/ArrayList;

    .line 423
    .line 424
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 425
    .line 426
    .line 427
    move-result v12

    .line 428
    if-ge v9, v12, :cond_1b

    .line 429
    .line 430
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 431
    .line 432
    .line 433
    move-result-object v12

    .line 434
    check-cast v12, Lq75;

    .line 435
    .line 436
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 437
    .line 438
    .line 439
    move-result-object v15

    .line 440
    check-cast v15, Lyl0;

    .line 441
    .line 442
    iget-object v5, v13, Lvq;->c:Ljava/lang/Object;

    .line 443
    .line 444
    check-cast v5, Ljava/util/ArrayList;

    .line 445
    .line 446
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 447
    .line 448
    .line 449
    move-result-object v5

    .line 450
    check-cast v5, Lyl0;

    .line 451
    .line 452
    move-object/from16 v16, v5

    .line 453
    .line 454
    iget v5, v12, Lq75;->a:I

    .line 455
    .line 456
    iget-boolean v12, v12, Lq75;->d:Z

    .line 457
    .line 458
    invoke-static {v5}, Ldj7;->A(I)I

    .line 459
    .line 460
    .line 461
    move-result v5

    .line 462
    move/from16 v17, v9

    .line 463
    .line 464
    iget-object v9, v0, Lam0;->e:Lvp4;

    .line 465
    .line 466
    const v18, 0x40233333    # 2.55f

    .line 467
    .line 468
    .line 469
    if-eqz v5, :cond_19

    .line 470
    .line 471
    move-object/from16 v19, v11

    .line 472
    .line 473
    const/4 v11, 0x1

    .line 474
    if-eq v5, v11, :cond_16

    .line 475
    .line 476
    const/4 v11, 0x2

    .line 477
    if-eq v5, v11, :cond_14

    .line 478
    .line 479
    const/4 v11, 0x3

    .line 480
    if-eq v5, v11, :cond_10

    .line 481
    .line 482
    :goto_b
    const/16 v5, 0xff

    .line 483
    .line 484
    goto/16 :goto_f

    .line 485
    .line 486
    :cond_10
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->isEmpty()Z

    .line 487
    .line 488
    .line 489
    move-result v5

    .line 490
    if-eqz v5, :cond_11

    .line 491
    .line 492
    goto :goto_d

    .line 493
    :cond_11
    const/4 v5, 0x0

    .line 494
    :goto_c
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 495
    .line 496
    .line 497
    move-result v9

    .line 498
    if-ge v5, v9, :cond_13

    .line 499
    .line 500
    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 501
    .line 502
    .line 503
    move-result-object v9

    .line 504
    check-cast v9, Lq75;

    .line 505
    .line 506
    iget v9, v9, Lq75;->a:I

    .line 507
    .line 508
    const/4 v12, 0x4

    .line 509
    if-eq v9, v12, :cond_12

    .line 510
    .line 511
    :goto_d
    goto :goto_b

    .line 512
    :cond_12
    add-int/lit8 v5, v5, 0x1

    .line 513
    .line 514
    goto :goto_c

    .line 515
    :cond_13
    const/16 v5, 0xff

    .line 516
    .line 517
    invoke-virtual {v3, v5}, Lvp4;->setAlpha(I)V

    .line 518
    .line 519
    .line 520
    invoke-virtual {v1, v8, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 521
    .line 522
    .line 523
    goto :goto_b

    .line 524
    :cond_14
    const/4 v11, 0x3

    .line 525
    if-eqz v12, :cond_15

    .line 526
    .line 527
    invoke-virtual {v1, v8, v6}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    .line 528
    .line 529
    .line 530
    invoke-static {}, Lzv1;->d()V

    .line 531
    .line 532
    .line 533
    invoke-virtual {v1, v8, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 534
    .line 535
    .line 536
    invoke-virtual/range {v16 .. v16}, Lyl0;->f()Ljava/lang/Object;

    .line 537
    .line 538
    .line 539
    move-result-object v5

    .line 540
    check-cast v5, Ljava/lang/Integer;

    .line 541
    .line 542
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 543
    .line 544
    .line 545
    move-result v5

    .line 546
    int-to-float v5, v5

    .line 547
    mul-float v5, v5, v18

    .line 548
    .line 549
    float-to-int v5, v5

    .line 550
    invoke-virtual {v9, v5}, Lvp4;->setAlpha(I)V

    .line 551
    .line 552
    .line 553
    invoke-virtual {v15}, Lyl0;->f()Ljava/lang/Object;

    .line 554
    .line 555
    .line 556
    move-result-object v5

    .line 557
    check-cast v5, Landroid/graphics/Path;

    .line 558
    .line 559
    invoke-virtual {v14, v5}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 560
    .line 561
    .line 562
    invoke-virtual {v14, v4}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 563
    .line 564
    .line 565
    invoke-virtual {v1, v14, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 566
    .line 567
    .line 568
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 569
    .line 570
    .line 571
    goto :goto_b

    .line 572
    :cond_15
    invoke-virtual {v1, v8, v6}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    .line 573
    .line 574
    .line 575
    invoke-static {}, Lzv1;->d()V

    .line 576
    .line 577
    .line 578
    invoke-virtual {v15}, Lyl0;->f()Ljava/lang/Object;

    .line 579
    .line 580
    .line 581
    move-result-object v5

    .line 582
    check-cast v5, Landroid/graphics/Path;

    .line 583
    .line 584
    invoke-virtual {v14, v5}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 585
    .line 586
    .line 587
    invoke-virtual {v14, v4}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 588
    .line 589
    .line 590
    invoke-virtual/range {v16 .. v16}, Lyl0;->f()Ljava/lang/Object;

    .line 591
    .line 592
    .line 593
    move-result-object v5

    .line 594
    check-cast v5, Ljava/lang/Integer;

    .line 595
    .line 596
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 597
    .line 598
    .line 599
    move-result v5

    .line 600
    int-to-float v5, v5

    .line 601
    mul-float v5, v5, v18

    .line 602
    .line 603
    float-to-int v5, v5

    .line 604
    invoke-virtual {v3, v5}, Lvp4;->setAlpha(I)V

    .line 605
    .line 606
    .line 607
    invoke-virtual {v1, v14, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 608
    .line 609
    .line 610
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 611
    .line 612
    .line 613
    goto/16 :goto_b

    .line 614
    .line 615
    :cond_16
    const/4 v11, 0x3

    .line 616
    if-nez v17, :cond_17

    .line 617
    .line 618
    const/high16 v5, -0x1000000

    .line 619
    .line 620
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 621
    .line 622
    .line 623
    const/16 v5, 0xff

    .line 624
    .line 625
    invoke-virtual {v3, v5}, Lvp4;->setAlpha(I)V

    .line 626
    .line 627
    .line 628
    invoke-virtual {v1, v8, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 629
    .line 630
    .line 631
    goto :goto_e

    .line 632
    :cond_17
    const/16 v5, 0xff

    .line 633
    .line 634
    :goto_e
    if-eqz v12, :cond_18

    .line 635
    .line 636
    invoke-virtual {v1, v8, v9}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    .line 637
    .line 638
    .line 639
    invoke-static {}, Lzv1;->d()V

    .line 640
    .line 641
    .line 642
    invoke-virtual {v1, v8, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 643
    .line 644
    .line 645
    invoke-virtual/range {v16 .. v16}, Lyl0;->f()Ljava/lang/Object;

    .line 646
    .line 647
    .line 648
    move-result-object v10

    .line 649
    check-cast v10, Ljava/lang/Integer;

    .line 650
    .line 651
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 652
    .line 653
    .line 654
    move-result v10

    .line 655
    int-to-float v10, v10

    .line 656
    mul-float v10, v10, v18

    .line 657
    .line 658
    float-to-int v10, v10

    .line 659
    invoke-virtual {v9, v10}, Lvp4;->setAlpha(I)V

    .line 660
    .line 661
    .line 662
    invoke-virtual {v15}, Lyl0;->f()Ljava/lang/Object;

    .line 663
    .line 664
    .line 665
    move-result-object v10

    .line 666
    check-cast v10, Landroid/graphics/Path;

    .line 667
    .line 668
    invoke-virtual {v14, v10}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 669
    .line 670
    .line 671
    invoke-virtual {v14, v4}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 672
    .line 673
    .line 674
    invoke-virtual {v1, v14, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 675
    .line 676
    .line 677
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 678
    .line 679
    .line 680
    goto :goto_f

    .line 681
    :cond_18
    invoke-virtual {v15}, Lyl0;->f()Ljava/lang/Object;

    .line 682
    .line 683
    .line 684
    move-result-object v10

    .line 685
    check-cast v10, Landroid/graphics/Path;

    .line 686
    .line 687
    invoke-virtual {v14, v10}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 688
    .line 689
    .line 690
    invoke-virtual {v14, v4}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 691
    .line 692
    .line 693
    invoke-virtual {v1, v14, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 694
    .line 695
    .line 696
    goto :goto_f

    .line 697
    :cond_19
    const/16 v5, 0xff

    .line 698
    .line 699
    const/4 v11, 0x3

    .line 700
    if-eqz v12, :cond_1a

    .line 701
    .line 702
    invoke-virtual {v1, v8, v3}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    .line 703
    .line 704
    .line 705
    invoke-static {}, Lzv1;->d()V

    .line 706
    .line 707
    .line 708
    invoke-virtual {v1, v8, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 709
    .line 710
    .line 711
    invoke-virtual {v15}, Lyl0;->f()Ljava/lang/Object;

    .line 712
    .line 713
    .line 714
    move-result-object v10

    .line 715
    check-cast v10, Landroid/graphics/Path;

    .line 716
    .line 717
    invoke-virtual {v14, v10}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 718
    .line 719
    .line 720
    invoke-virtual {v14, v4}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 721
    .line 722
    .line 723
    invoke-virtual/range {v16 .. v16}, Lyl0;->f()Ljava/lang/Object;

    .line 724
    .line 725
    .line 726
    move-result-object v10

    .line 727
    check-cast v10, Ljava/lang/Integer;

    .line 728
    .line 729
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 730
    .line 731
    .line 732
    move-result v10

    .line 733
    int-to-float v10, v10

    .line 734
    mul-float v10, v10, v18

    .line 735
    .line 736
    float-to-int v10, v10

    .line 737
    invoke-virtual {v3, v10}, Lvp4;->setAlpha(I)V

    .line 738
    .line 739
    .line 740
    invoke-virtual {v1, v14, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 741
    .line 742
    .line 743
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 744
    .line 745
    .line 746
    goto :goto_f

    .line 747
    :cond_1a
    invoke-virtual {v15}, Lyl0;->f()Ljava/lang/Object;

    .line 748
    .line 749
    .line 750
    move-result-object v9

    .line 751
    check-cast v9, Landroid/graphics/Path;

    .line 752
    .line 753
    invoke-virtual {v14, v9}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 754
    .line 755
    .line 756
    invoke-virtual {v14, v4}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 757
    .line 758
    .line 759
    invoke-virtual/range {v16 .. v16}, Lyl0;->f()Ljava/lang/Object;

    .line 760
    .line 761
    .line 762
    move-result-object v9

    .line 763
    check-cast v9, Ljava/lang/Integer;

    .line 764
    .line 765
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 766
    .line 767
    .line 768
    move-result v9

    .line 769
    int-to-float v9, v9

    .line 770
    mul-float v9, v9, v18

    .line 771
    .line 772
    float-to-int v9, v9

    .line 773
    invoke-virtual {v3, v9}, Lvp4;->setAlpha(I)V

    .line 774
    .line 775
    .line 776
    invoke-virtual {v1, v14, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 777
    .line 778
    .line 779
    :goto_f
    add-int/lit8 v9, v17, 0x1

    .line 780
    .line 781
    goto/16 :goto_a

    .line 782
    .line 783
    :cond_1b
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 784
    .line 785
    .line 786
    invoke-static {}, Lzv1;->d()V

    .line 787
    .line 788
    .line 789
    :cond_1c
    iget-object v3, v0, Lam0;->q:Lam0;

    .line 790
    .line 791
    if-eqz v3, :cond_1d

    .line 792
    .line 793
    iget-object v3, v0, Lam0;->f:Lvp4;

    .line 794
    .line 795
    invoke-virtual {v1, v8, v3}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    .line 796
    .line 797
    .line 798
    invoke-static {}, Lzv1;->d()V

    .line 799
    .line 800
    .line 801
    invoke-static {}, Lzv1;->d()V

    .line 802
    .line 803
    .line 804
    invoke-virtual/range {p0 .. p1}, Lam0;->j(Landroid/graphics/Canvas;)V

    .line 805
    .line 806
    .line 807
    iget-object v3, v0, Lam0;->q:Lam0;

    .line 808
    .line 809
    invoke-virtual {v3, v1, v2, v7}, Lam0;->h(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 810
    .line 811
    .line 812
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 813
    .line 814
    .line 815
    invoke-static {}, Lzv1;->d()V

    .line 816
    .line 817
    .line 818
    invoke-static {}, Lzv1;->d()V

    .line 819
    .line 820
    .line 821
    :cond_1d
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 822
    .line 823
    .line 824
    invoke-static {}, Lzv1;->d()V

    .line 825
    .line 826
    .line 827
    :cond_1e
    iget-boolean v2, v0, Lam0;->w:Z

    .line 828
    .line 829
    if-eqz v2, :cond_1f

    .line 830
    .line 831
    iget-object v2, v0, Lam0;->x:Lvp4;

    .line 832
    .line 833
    if-eqz v2, :cond_1f

    .line 834
    .line 835
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 836
    .line 837
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 838
    .line 839
    .line 840
    iget-object v2, v0, Lam0;->x:Lvp4;

    .line 841
    .line 842
    const v3, -0x3d7fd

    .line 843
    .line 844
    .line 845
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 846
    .line 847
    .line 848
    iget-object v2, v0, Lam0;->x:Lvp4;

    .line 849
    .line 850
    const/high16 v3, 0x40800000    # 4.0f

    .line 851
    .line 852
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 853
    .line 854
    .line 855
    iget-object v2, v0, Lam0;->x:Lvp4;

    .line 856
    .line 857
    invoke-virtual {v1, v8, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 858
    .line 859
    .line 860
    iget-object v2, v0, Lam0;->x:Lvp4;

    .line 861
    .line 862
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 863
    .line 864
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 865
    .line 866
    .line 867
    iget-object v2, v0, Lam0;->x:Lvp4;

    .line 868
    .line 869
    const v3, 0x50ebebeb

    .line 870
    .line 871
    .line 872
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 873
    .line 874
    .line 875
    iget-object v2, v0, Lam0;->x:Lvp4;

    .line 876
    .line 877
    invoke-virtual {v1, v8, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 878
    .line 879
    .line 880
    :cond_1f
    invoke-static {}, Lzv1;->d()V

    .line 881
    .line 882
    .line 883
    invoke-virtual {v0}, Lam0;->o()V

    .line 884
    .line 885
    .line 886
    return-void

    .line 887
    :cond_20
    :goto_10
    invoke-static {}, Lzv1;->d()V

    .line 888
    .line 889
    .line 890
    return-void
.end method

.method public final i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lam0;->s:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    iget-object v0, p0, Lam0;->r:Lam0;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 11
    .line 12
    iput-object v0, p0, Lam0;->s:Ljava/util/List;

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lam0;->s:Ljava/util/List;

    .line 21
    .line 22
    iget-object v0, p0, Lam0;->r:Lam0;

    .line 23
    .line 24
    :goto_0
    if-eqz v0, :cond_2

    .line 25
    .line 26
    iget-object v1, p0, Lam0;->s:Ljava/util/List;

    .line 27
    .line 28
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    iget-object v0, v0, Lam0;->r:Lam0;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    :goto_1
    return-void
.end method

.method public final j(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lam0;->h:Landroid/graphics/RectF;

    .line 2
    .line 3
    iget v1, v0, Landroid/graphics/RectF;->left:F

    .line 4
    .line 5
    const/high16 v2, 0x3f800000    # 1.0f

    .line 6
    .line 7
    sub-float v4, v1, v2

    .line 8
    .line 9
    iget v1, v0, Landroid/graphics/RectF;->top:F

    .line 10
    .line 11
    sub-float v5, v1, v2

    .line 12
    .line 13
    iget v1, v0, Landroid/graphics/RectF;->right:F

    .line 14
    .line 15
    add-float v6, v1, v2

    .line 16
    .line 17
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    .line 18
    .line 19
    add-float v7, v0, v2

    .line 20
    .line 21
    iget-object v8, p0, Lam0;->g:Lvp4;

    .line 22
    .line 23
    move-object v3, p1

    .line 24
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 25
    .line 26
    .line 27
    invoke-static {}, Lzv1;->d()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public abstract k(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
.end method

.method public l()Lz28;
    .locals 0

    .line 1
    iget-object p0, p0, Lam0;->n:Ljs4;

    .line 2
    .line 3
    iget-object p0, p0, Ljs4;->w:Lz28;

    .line 4
    .line 5
    return-object p0
.end method

.method public m()Lnz4;
    .locals 0

    .line 1
    iget-object p0, p0, Lam0;->n:Ljs4;

    .line 2
    .line 3
    iget-object p0, p0, Ljs4;->x:Lnz4;

    .line 4
    .line 5
    return-object p0
.end method

.method public final n()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lam0;->o:Lvq;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lvq;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    return p0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    return p0
.end method

.method public final o()V
    .locals 4

    .line 1
    iget-object v0, p0, Lam0;->m:Lc35;

    .line 2
    .line 3
    iget-object v0, v0, Lc35;->b:Le25;

    .line 4
    .line 5
    iget-object v0, v0, Le25;->a:Laz5;

    .line 6
    .line 7
    iget-object p0, p0, Lam0;->n:Ljs4;

    .line 8
    .line 9
    iget-object p0, p0, Ljs4;->c:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v1, v0, Laz5;->c:Ljava/util/HashMap;

    .line 12
    .line 13
    iget-boolean v2, v0, Laz5;->a:Z

    .line 14
    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lp95;

    .line 23
    .line 24
    if-nez v2, :cond_1

    .line 25
    .line 26
    new-instance v2, Lp95;

    .line 27
    .line 28
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    :cond_1
    iget v1, v2, Lp95;->a:I

    .line 35
    .line 36
    add-int/lit8 v1, v1, 0x1

    .line 37
    .line 38
    iput v1, v2, Lp95;->a:I

    .line 39
    .line 40
    const v3, 0x7fffffff

    .line 41
    .line 42
    .line 43
    if-ne v1, v3, :cond_2

    .line 44
    .line 45
    div-int/lit8 v1, v1, 0x2

    .line 46
    .line 47
    iput v1, v2, Lp95;->a:I

    .line 48
    .line 49
    :cond_2
    const-string v1, "__container"

    .line 50
    .line 51
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    if-eqz p0, :cond_4

    .line 56
    .line 57
    iget-object p0, v0, Laz5;->b:Lp50;

    .line 58
    .line 59
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    new-instance v0, Lo50;

    .line 63
    .line 64
    invoke-direct {v0, p0}, Lo50;-><init>(Lp50;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Lob4;->hasNext()Z

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    if-nez p0, :cond_3

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_3
    invoke-virtual {v0}, Lob4;->next()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    invoke-static {}, Le6;->d()V

    .line 82
    .line 83
    .line 84
    :cond_4
    :goto_0
    return-void
.end method

.method public final p(Lyl0;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lam0;->t:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public q(Lpo4;ILjava/util/ArrayList;Lpo4;)V
    .locals 0

    .line 1
    return-void
.end method

.method public r(Z)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lam0;->x:Lvp4;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lvp4;

    .line 8
    .line 9
    invoke-direct {v0}, Lvp4;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lam0;->x:Lvp4;

    .line 13
    .line 14
    :cond_0
    iput-boolean p1, p0, Lam0;->w:Z

    .line 15
    .line 16
    return-void
.end method

.method public s(F)V
    .locals 4

    .line 1
    iget-object v0, p0, Lam0;->u:Lk98;

    .line 2
    .line 3
    iget-object v1, v0, Lk98;->j:Lyl0;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v1, p1}, Lyl0;->j(F)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v1, v0, Lk98;->m:Lyl0;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    invoke-virtual {v1, p1}, Lyl0;->j(F)V

    .line 15
    .line 16
    .line 17
    :cond_1
    iget-object v1, v0, Lk98;->n:Lyl0;

    .line 18
    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    invoke-virtual {v1, p1}, Lyl0;->j(F)V

    .line 22
    .line 23
    .line 24
    :cond_2
    iget-object v1, v0, Lk98;->f:Lyl0;

    .line 25
    .line 26
    if-eqz v1, :cond_3

    .line 27
    .line 28
    invoke-virtual {v1, p1}, Lyl0;->j(F)V

    .line 29
    .line 30
    .line 31
    :cond_3
    iget-object v1, v0, Lk98;->g:Lyl0;

    .line 32
    .line 33
    if-eqz v1, :cond_4

    .line 34
    .line 35
    invoke-virtual {v1, p1}, Lyl0;->j(F)V

    .line 36
    .line 37
    .line 38
    :cond_4
    iget-object v1, v0, Lk98;->h:Lyl0;

    .line 39
    .line 40
    if-eqz v1, :cond_5

    .line 41
    .line 42
    invoke-virtual {v1, p1}, Lyl0;->j(F)V

    .line 43
    .line 44
    .line 45
    :cond_5
    iget-object v1, v0, Lk98;->i:Lyl0;

    .line 46
    .line 47
    if-eqz v1, :cond_6

    .line 48
    .line 49
    invoke-virtual {v1, p1}, Lyl0;->j(F)V

    .line 50
    .line 51
    .line 52
    :cond_6
    iget-object v1, v0, Lk98;->k:Lxh3;

    .line 53
    .line 54
    if-eqz v1, :cond_7

    .line 55
    .line 56
    invoke-virtual {v1, p1}, Lyl0;->j(F)V

    .line 57
    .line 58
    .line 59
    :cond_7
    iget-object v0, v0, Lk98;->l:Lxh3;

    .line 60
    .line 61
    if-eqz v0, :cond_8

    .line 62
    .line 63
    invoke-virtual {v0, p1}, Lyl0;->j(F)V

    .line 64
    .line 65
    .line 66
    :cond_8
    const/4 v0, 0x0

    .line 67
    iget-object v1, p0, Lam0;->o:Lvq;

    .line 68
    .line 69
    if-eqz v1, :cond_9

    .line 70
    .line 71
    iget-object v1, v1, Lvq;->b:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v1, Ljava/util/ArrayList;

    .line 74
    .line 75
    move v2, v0

    .line 76
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    if-ge v2, v3, :cond_9

    .line 81
    .line 82
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    check-cast v3, Lyl0;

    .line 87
    .line 88
    invoke-virtual {v3, p1}, Lyl0;->j(F)V

    .line 89
    .line 90
    .line 91
    add-int/lit8 v2, v2, 0x1

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_9
    iget-object v1, p0, Lam0;->p:Lxh3;

    .line 95
    .line 96
    if-eqz v1, :cond_a

    .line 97
    .line 98
    invoke-virtual {v1, p1}, Lyl0;->j(F)V

    .line 99
    .line 100
    .line 101
    :cond_a
    iget-object v1, p0, Lam0;->q:Lam0;

    .line 102
    .line 103
    if-eqz v1, :cond_b

    .line 104
    .line 105
    invoke-virtual {v1, p1}, Lam0;->s(F)V

    .line 106
    .line 107
    .line 108
    :cond_b
    :goto_1
    iget-object v1, p0, Lam0;->t:Ljava/util/ArrayList;

    .line 109
    .line 110
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    if-ge v0, v2, :cond_c

    .line 115
    .line 116
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    check-cast v1, Lyl0;

    .line 121
    .line 122
    invoke-virtual {v1, p1}, Lyl0;->j(F)V

    .line 123
    .line 124
    .line 125
    add-int/lit8 v0, v0, 0x1

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_c
    return-void
.end method
