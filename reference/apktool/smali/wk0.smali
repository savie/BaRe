.class public final Lwk0;
.super Landroid/graphics/drawable/Drawable;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lz08;


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;

.field public final b:Lc95;

.field public final c:La18;

.field public final d:Landroid/graphics/Rect;

.field public final e:Lyk0;

.field public f:F

.field public k:F

.field public final n:I

.field public p:F

.field public q:F

.field public r:F

.field public t:Ljava/lang/ref/WeakReference;

.field public x:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lxk0;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lwk0;->a:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    sget-object v1, Ljd4;->h:[I

    .line 12
    .line 13
    const-string v2, "Theme.MaterialComponents"

    .line 14
    .line 15
    invoke-static {p1, v1, v2}, Ljd4;->f(Landroid/content/Context;[ILjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    new-instance v1, Landroid/graphics/Rect;

    .line 19
    .line 20
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lwk0;->d:Landroid/graphics/Rect;

    .line 24
    .line 25
    new-instance v1, La18;

    .line 26
    .line 27
    invoke-direct {v1, p0}, La18;-><init>(Lz08;)V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lwk0;->c:La18;

    .line 31
    .line 32
    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    .line 33
    .line 34
    iget-object v3, v1, La18;->a:Landroid/text/TextPaint;

    .line 35
    .line 36
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 37
    .line 38
    .line 39
    new-instance v2, Lyk0;

    .line 40
    .line 41
    invoke-direct {v2, p1, p2}, Lyk0;-><init>(Landroid/content/Context;Lxk0;)V

    .line 42
    .line 43
    .line 44
    iput-object v2, p0, Lwk0;->e:Lyk0;

    .line 45
    .line 46
    new-instance p2, Lc95;

    .line 47
    .line 48
    invoke-virtual {p0}, Lwk0;->g()Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    iget-object v2, v2, Lyk0;->b:Lxk0;

    .line 53
    .line 54
    if-eqz v4, :cond_0

    .line 55
    .line 56
    iget-object v4, v2, Lxk0;->k:Ljava/lang/Integer;

    .line 57
    .line 58
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    goto :goto_0

    .line 63
    :cond_0
    iget-object v4, v2, Lxk0;->e:Ljava/lang/Integer;

    .line 64
    .line 65
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    :goto_0
    invoke-virtual {p0}, Lwk0;->g()Z

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    if-eqz v5, :cond_1

    .line 74
    .line 75
    iget-object v5, v2, Lxk0;->n:Ljava/lang/Integer;

    .line 76
    .line 77
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    goto :goto_1

    .line 82
    :cond_1
    iget-object v5, v2, Lxk0;->f:Ljava/lang/Integer;

    .line 83
    .line 84
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    :goto_1
    invoke-static {p1, v4, v5}, Ltb7;->g(Landroid/content/Context;II)Lsb7;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {p1}, Lsb7;->a()Ltb7;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-direct {p2, p1}, Lc95;-><init>(Ltb7;)V

    .line 97
    .line 98
    .line 99
    iput-object p2, p0, Lwk0;->b:Lc95;

    .line 100
    .line 101
    invoke-virtual {p0}, Lwk0;->i()V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    check-cast p1, Landroid/content/Context;

    .line 109
    .line 110
    if-nez p1, :cond_2

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_2
    new-instance v0, Lu08;

    .line 114
    .line 115
    iget-object v4, v2, Lxk0;->d:Ljava/lang/Integer;

    .line 116
    .line 117
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    invoke-direct {v0, p1, v4}, Lu08;-><init>(Landroid/content/Context;I)V

    .line 122
    .line 123
    .line 124
    iget-object v4, v1, La18;->g:Lu08;

    .line 125
    .line 126
    if-ne v4, v0, :cond_3

    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_3
    invoke-virtual {v1, v0, p1}, La18;->c(Lu08;Landroid/content/Context;)V

    .line 130
    .line 131
    .line 132
    iget-object p1, v2, Lxk0;->c:Ljava/lang/Integer;

    .line 133
    .line 134
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 135
    .line 136
    .line 137
    move-result p1

    .line 138
    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0}, Lwk0;->k()V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 148
    .line 149
    .line 150
    :goto_2
    iget p1, v2, Lxk0;->t:I

    .line 151
    .line 152
    const/4 v0, -0x2

    .line 153
    const/4 v4, 0x1

    .line 154
    if-eq p1, v0, :cond_4

    .line 155
    .line 156
    int-to-double v5, p1

    .line 157
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 158
    .line 159
    sub-double/2addr v5, v7

    .line 160
    const-wide/high16 v7, 0x4024000000000000L    # 10.0

    .line 161
    .line 162
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 163
    .line 164
    .line 165
    move-result-wide v5

    .line 166
    double-to-int p1, v5

    .line 167
    sub-int/2addr p1, v4

    .line 168
    iput p1, p0, Lwk0;->n:I

    .line 169
    .line 170
    goto :goto_3

    .line 171
    :cond_4
    iget p1, v2, Lxk0;->x:I

    .line 172
    .line 173
    iput p1, p0, Lwk0;->n:I

    .line 174
    .line 175
    :goto_3
    iput-boolean v4, v1, La18;->e:Z

    .line 176
    .line 177
    invoke-virtual {p0}, Lwk0;->k()V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 181
    .line 182
    .line 183
    iput-boolean v4, v1, La18;->e:Z

    .line 184
    .line 185
    invoke-virtual {p0}, Lwk0;->i()V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p0}, Lwk0;->k()V

    .line 189
    .line 190
    .line 191
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p0}, Lwk0;->getAlpha()I

    .line 195
    .line 196
    .line 197
    move-result p1

    .line 198
    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 202
    .line 203
    .line 204
    iget-object p1, v2, Lxk0;->b:Ljava/lang/Integer;

    .line 205
    .line 206
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 207
    .line 208
    .line 209
    move-result p1

    .line 210
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    iget-object v0, p2, Lc95;->b:La95;

    .line 215
    .line 216
    iget-object v0, v0, La95;->c:Landroid/content/res/ColorStateList;

    .line 217
    .line 218
    if-eq v0, p1, :cond_5

    .line 219
    .line 220
    invoke-virtual {p2, p1}, Lc95;->t(Landroid/content/res/ColorStateList;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 224
    .line 225
    .line 226
    :cond_5
    iget-object p1, v2, Lxk0;->c:Ljava/lang/Integer;

    .line 227
    .line 228
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 229
    .line 230
    .line 231
    move-result p1

    .line 232
    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 236
    .line 237
    .line 238
    iget-object p1, p0, Lwk0;->t:Ljava/lang/ref/WeakReference;

    .line 239
    .line 240
    if-eqz p1, :cond_7

    .line 241
    .line 242
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    if-eqz p1, :cond_7

    .line 247
    .line 248
    iget-object p1, p0, Lwk0;->t:Ljava/lang/ref/WeakReference;

    .line 249
    .line 250
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object p1

    .line 254
    check-cast p1, Landroid/view/View;

    .line 255
    .line 256
    iget-object p2, p0, Lwk0;->x:Ljava/lang/ref/WeakReference;

    .line 257
    .line 258
    if-eqz p2, :cond_6

    .line 259
    .line 260
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object p2

    .line 264
    check-cast p2, Landroid/widget/FrameLayout;

    .line 265
    .line 266
    goto :goto_4

    .line 267
    :cond_6
    const/4 p2, 0x0

    .line 268
    :goto_4
    invoke-virtual {p0, p1, p2}, Lwk0;->j(Landroid/view/View;Landroid/widget/FrameLayout;)V

    .line 269
    .line 270
    .line 271
    :cond_7
    invoke-virtual {p0}, Lwk0;->k()V

    .line 272
    .line 273
    .line 274
    iget-object p1, v2, Lxk0;->L:Ljava/lang/Boolean;

    .line 275
    .line 276
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 277
    .line 278
    .line 279
    move-result p1

    .line 280
    const/4 p2, 0x0

    .line 281
    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 282
    .line 283
    .line 284
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final b(Landroid/view/View;Landroid/view/View;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lwk0;->e()Landroid/widget/FrameLayout;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    move v7, v0

    .line 21
    move-object v0, p1

    .line 22
    move p1, v7

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move p1, v1

    .line 25
    move v2, p1

    .line 26
    :goto_0
    instance-of v3, v0, Landroid/view/View;

    .line 27
    .line 28
    if-eqz v3, :cond_2

    .line 29
    .line 30
    if-eq v0, p2, :cond_2

    .line 31
    .line 32
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    instance-of v5, v4, Landroid/view/ViewGroup;

    .line 37
    .line 38
    if-eqz v5, :cond_2

    .line 39
    .line 40
    check-cast v4, Landroid/view/ViewGroup;

    .line 41
    .line 42
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getClipChildren()Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-eqz v4, :cond_1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    move-object v3, v0

    .line 50
    check-cast v3, Landroid/view/View;

    .line 51
    .line 52
    invoke-virtual {v3}, Landroid/view/View;->getY()F

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    add-float/2addr p1, v4

    .line 57
    invoke-virtual {v3}, Landroid/view/View;->getX()F

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    add-float/2addr v2, v3

    .line 62
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    goto :goto_0

    .line 67
    :cond_2
    :goto_1
    if-nez v3, :cond_3

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_3
    iget p2, p0, Lwk0;->k:F

    .line 71
    .line 72
    iget v3, p0, Lwk0;->r:F

    .line 73
    .line 74
    sub-float/2addr p2, v3

    .line 75
    add-float/2addr p2, p1

    .line 76
    iget v3, p0, Lwk0;->f:F

    .line 77
    .line 78
    iget v4, p0, Lwk0;->q:F

    .line 79
    .line 80
    sub-float/2addr v3, v4

    .line 81
    add-float/2addr v3, v2

    .line 82
    check-cast v0, Landroid/view/View;

    .line 83
    .line 84
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    int-to-float v4, v4

    .line 89
    iget v5, p0, Lwk0;->k:F

    .line 90
    .line 91
    iget v6, p0, Lwk0;->r:F

    .line 92
    .line 93
    add-float/2addr v5, v6

    .line 94
    sub-float/2addr v5, v4

    .line 95
    add-float/2addr v5, p1

    .line 96
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    int-to-float p1, p1

    .line 101
    iget v0, p0, Lwk0;->f:F

    .line 102
    .line 103
    iget v4, p0, Lwk0;->q:F

    .line 104
    .line 105
    add-float/2addr v0, v4

    .line 106
    sub-float/2addr v0, p1

    .line 107
    add-float/2addr v0, v2

    .line 108
    cmpg-float p1, p2, v1

    .line 109
    .line 110
    if-gez p1, :cond_4

    .line 111
    .line 112
    iget p1, p0, Lwk0;->k:F

    .line 113
    .line 114
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 115
    .line 116
    .line 117
    move-result p2

    .line 118
    add-float/2addr p2, p1

    .line 119
    iput p2, p0, Lwk0;->k:F

    .line 120
    .line 121
    :cond_4
    cmpg-float p1, v3, v1

    .line 122
    .line 123
    if-gez p1, :cond_5

    .line 124
    .line 125
    iget p1, p0, Lwk0;->f:F

    .line 126
    .line 127
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 128
    .line 129
    .line 130
    move-result p2

    .line 131
    add-float/2addr p2, p1

    .line 132
    iput p2, p0, Lwk0;->f:F

    .line 133
    .line 134
    :cond_5
    cmpl-float p1, v5, v1

    .line 135
    .line 136
    if-lez p1, :cond_6

    .line 137
    .line 138
    iget p1, p0, Lwk0;->k:F

    .line 139
    .line 140
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 141
    .line 142
    .line 143
    move-result p2

    .line 144
    sub-float/2addr p1, p2

    .line 145
    iput p1, p0, Lwk0;->k:F

    .line 146
    .line 147
    :cond_6
    cmpl-float p1, v0, v1

    .line 148
    .line 149
    if-lez p1, :cond_7

    .line 150
    .line 151
    iget p1, p0, Lwk0;->f:F

    .line 152
    .line 153
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 154
    .line 155
    .line 156
    move-result p2

    .line 157
    sub-float/2addr p1, p2

    .line 158
    iput p1, p0, Lwk0;->f:F

    .line 159
    .line 160
    :cond_7
    :goto_2
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lwk0;->e:Lyk0;

    .line 2
    .line 3
    iget-object v1, v0, Lyk0;->b:Lxk0;

    .line 4
    .line 5
    iget-object v0, v0, Lyk0;->b:Lxk0;

    .line 6
    .line 7
    iget-object v2, v1, Lxk0;->q:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v3, p0, Lwk0;->a:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    const/4 v4, -0x2

    .line 12
    if-eqz v2, :cond_3

    .line 13
    .line 14
    iget p0, v1, Lxk0;->t:I

    .line 15
    .line 16
    if-ne p0, v4, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    if-eqz v2, :cond_2

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-le v0, p0, :cond_2

    .line 26
    .line 27
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Landroid/content/Context;

    .line 32
    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    add-int/lit8 p0, p0, -0x1

    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    invoke-virtual {v2, v1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    const v1, 0x7f130308

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-string v1, "\u2026"

    .line 51
    .line 52
    filled-new-array {p0, v1}, [Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    return-object p0

    .line 61
    :cond_2
    :goto_0
    return-object v2

    .line 62
    :cond_3
    invoke-virtual {p0}, Lwk0;->h()Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_7

    .line 67
    .line 68
    iget v1, p0, Lwk0;->n:I

    .line 69
    .line 70
    if-eq v1, v4, :cond_6

    .line 71
    .line 72
    invoke-virtual {p0}, Lwk0;->f()I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-gt v2, v1, :cond_4

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_4
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    check-cast p0, Landroid/content/Context;

    .line 84
    .line 85
    if-nez p0, :cond_5

    .line 86
    .line 87
    :goto_1
    const-string p0, ""

    .line 88
    .line 89
    return-object p0

    .line 90
    :cond_5
    iget-object v0, v0, Lxk0;->y:Ljava/util/Locale;

    .line 91
    .line 92
    const v2, 0x7f130365

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    const-string v2, "+"

    .line 104
    .line 105
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    return-object p0

    .line 114
    :cond_6
    :goto_2
    iget-object v0, v0, Lxk0;->y:Ljava/util/Locale;

    .line 115
    .line 116
    invoke-static {v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {p0}, Lwk0;->f()I

    .line 121
    .line 122
    .line 123
    move-result p0

    .line 124
    int-to-long v1, p0

    .line 125
    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    return-object p0

    .line 130
    :cond_7
    const/4 p0, 0x0

    .line 131
    return-object p0
.end method

.method public final d()Ljava/lang/CharSequence;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    iget-object v0, p0, Lwk0;->e:Lyk0;

    .line 9
    .line 10
    iget-object v1, v0, Lyk0;->b:Lxk0;

    .line 11
    .line 12
    iget-object v2, v1, Lxk0;->q:Ljava/lang/String;

    .line 13
    .line 14
    if-eqz v2, :cond_2

    .line 15
    .line 16
    iget-object p0, v1, Lxk0;->G:Ljava/lang/CharSequence;

    .line 17
    .line 18
    if-eqz p0, :cond_1

    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_1
    iget-object p0, v0, Lyk0;->b:Lxk0;

    .line 22
    .line 23
    iget-object p0, p0, Lxk0;->q:Ljava/lang/String;

    .line 24
    .line 25
    return-object p0

    .line 26
    :cond_2
    invoke-virtual {p0}, Lwk0;->h()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    iget-object v0, v0, Lyk0;->b:Lxk0;

    .line 31
    .line 32
    if-eqz v1, :cond_7

    .line 33
    .line 34
    iget v1, v0, Lxk0;->I:I

    .line 35
    .line 36
    if-eqz v1, :cond_6

    .line 37
    .line 38
    iget-object v1, p0, Lwk0;->a:Ljava/lang/ref/WeakReference;

    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Landroid/content/Context;

    .line 45
    .line 46
    if-nez v1, :cond_3

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_3
    const/4 v2, -0x2

    .line 50
    iget v3, p0, Lwk0;->n:I

    .line 51
    .line 52
    if-eq v3, v2, :cond_5

    .line 53
    .line 54
    invoke-virtual {p0}, Lwk0;->f()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-gt v2, v3, :cond_4

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_4
    iget p0, v0, Lxk0;->J:I

    .line 62
    .line 63
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    return-object p0

    .line 76
    :cond_5
    :goto_0
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    iget v0, v0, Lxk0;->I:I

    .line 81
    .line 82
    invoke-virtual {p0}, Lwk0;->f()I

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    invoke-virtual {p0}, Lwk0;->f()I

    .line 87
    .line 88
    .line 89
    move-result p0

    .line 90
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    invoke-virtual {v1, v0, v2, p0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    return-object p0

    .line 103
    :cond_6
    :goto_1
    const/4 p0, 0x0

    .line 104
    return-object p0

    .line 105
    :cond_7
    iget-object p0, v0, Lxk0;->H:Ljava/lang/CharSequence;

    .line 106
    .line 107
    return-object p0
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_2

    .line 10
    .line 11
    invoke-virtual {p0}, Lwk0;->getAlpha()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    goto :goto_2

    .line 24
    :cond_0
    iget-object v0, p0, Lwk0;->b:Lc95;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lc95;->draw(Landroid/graphics/Canvas;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lwk0;->g()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    invoke-virtual {p0}, Lwk0;->c()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    new-instance v1, Landroid/graphics/Rect;

    .line 42
    .line 43
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 44
    .line 45
    .line 46
    iget-object v2, p0, Lwk0;->c:La18;

    .line 47
    .line 48
    iget-object v3, v2, La18;->a:Landroid/text/TextPaint;

    .line 49
    .line 50
    const/4 v4, 0x0

    .line 51
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    invoke-virtual {v3, v0, v4, v5, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 56
    .line 57
    .line 58
    iget v3, p0, Lwk0;->k:F

    .line 59
    .line 60
    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterY()F

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    sub-float/2addr v3, v4

    .line 65
    iget p0, p0, Lwk0;->f:F

    .line 66
    .line 67
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 68
    .line 69
    if-gtz v1, :cond_1

    .line 70
    .line 71
    float-to-int v1, v3

    .line 72
    :goto_0
    int-to-float v1, v1

    .line 73
    goto :goto_1

    .line 74
    :cond_1
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    goto :goto_0

    .line 79
    :goto_1
    iget-object v2, v2, La18;->a:Landroid/text/TextPaint;

    .line 80
    .line 81
    invoke-virtual {p1, v0, p0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 82
    .line 83
    .line 84
    :cond_2
    :goto_2
    return-void
.end method

.method public final e()Landroid/widget/FrameLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lwk0;->x:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroid/widget/FrameLayout;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return-object p0
.end method

.method public final f()I
    .locals 1

    .line 1
    iget-object p0, p0, Lwk0;->e:Lyk0;

    .line 2
    .line 3
    iget-object p0, p0, Lyk0;->b:Lxk0;

    .line 4
    .line 5
    iget p0, p0, Lxk0;->r:I

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    if-eq p0, v0, :cond_0

    .line 9
    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public final g()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lwk0;->e:Lyk0;

    .line 2
    .line 3
    iget-object v0, v0, Lyk0;->b:Lxk0;

    .line 4
    .line 5
    iget-object v0, v0, Lxk0;->q:Ljava/lang/String;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lwk0;->h()Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    if-eqz p0, :cond_1

    .line 15
    .line 16
    :goto_0
    const/4 p0, 0x1

    .line 17
    return p0

    .line 18
    :cond_1
    const/4 p0, 0x0

    .line 19
    return p0
.end method

.method public final getAlpha()I
    .locals 0

    .line 1
    iget-object p0, p0, Lwk0;->e:Lyk0;

    .line 2
    .line 3
    iget-object p0, p0, Lyk0;->b:Lxk0;

    .line 4
    .line 5
    iget p0, p0, Lxk0;->p:I

    .line 6
    .line 7
    return p0
.end method

.method public final getIntrinsicHeight()I
    .locals 0

    .line 1
    iget-object p0, p0, Lwk0;->d:Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getIntrinsicWidth()I
    .locals 0

    .line 1
    iget-object p0, p0, Lwk0;->d:Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getOpacity()I
    .locals 0

    .line 1
    const/4 p0, -0x3

    .line 2
    return p0
.end method

.method public final h()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lwk0;->e:Lyk0;

    .line 2
    .line 3
    iget-object p0, p0, Lyk0;->b:Lxk0;

    .line 4
    .line 5
    iget-object v0, p0, Lxk0;->q:Ljava/lang/String;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget p0, p0, Lxk0;->r:I

    .line 11
    .line 12
    const/4 v0, -0x1

    .line 13
    if-eq p0, v0, :cond_1

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    return p0

    .line 17
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 18
    return p0
.end method

.method public final i()V
    .locals 4

    .line 1
    iget-object v0, p0, Lwk0;->a:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/content/Context;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p0}, Lwk0;->g()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iget-object v2, p0, Lwk0;->e:Lyk0;

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    iget-object v1, v2, Lyk0;->b:Lxk0;

    .line 21
    .line 22
    iget-object v1, v1, Lxk0;->k:Ljava/lang/Integer;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iget-object v1, v2, Lyk0;->b:Lxk0;

    .line 30
    .line 31
    iget-object v1, v1, Lxk0;->e:Ljava/lang/Integer;

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    :goto_0
    invoke-virtual {p0}, Lwk0;->g()Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_2

    .line 42
    .line 43
    iget-object v2, v2, Lyk0;->b:Lxk0;

    .line 44
    .line 45
    iget-object v2, v2, Lxk0;->n:Ljava/lang/Integer;

    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    goto :goto_1

    .line 52
    :cond_2
    iget-object v2, v2, Lyk0;->b:Lxk0;

    .line 53
    .line 54
    iget-object v2, v2, Lxk0;->f:Ljava/lang/Integer;

    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    :goto_1
    invoke-static {v0, v1, v2}, Ltb7;->g(Landroid/content/Context;II)Lsb7;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0}, Lsb7;->a()Ltb7;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iget-object v1, p0, Lwk0;->b:Lc95;

    .line 69
    .line 70
    invoke-virtual {v1, v0}, Lc95;->setShapeAppearanceModel(Ltb7;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public final isStateful()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final j(Landroid/view/View;Landroid/widget/FrameLayout;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lwk0;->t:Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 9
    .line 10
    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lwk0;->x:Ljava/lang/ref/WeakReference;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Landroid/view/ViewGroup;

    .line 20
    .line 21
    const/4 p2, 0x0

    .line 22
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lwk0;->k()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final k()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lwk0;->a:Ljava/lang/ref/WeakReference;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    check-cast v2, Landroid/content/Context;

    .line 10
    .line 11
    iget-object v3, v0, Lwk0;->t:Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    check-cast v3, Landroid/view/View;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-object v3, v4

    .line 24
    :goto_0
    if-eqz v2, :cond_1b

    .line 25
    .line 26
    if-nez v3, :cond_1

    .line 27
    .line 28
    goto/16 :goto_13

    .line 29
    .line 30
    :cond_1
    new-instance v2, Landroid/graphics/Rect;

    .line 31
    .line 32
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 33
    .line 34
    .line 35
    iget-object v5, v0, Lwk0;->d:Landroid/graphics/Rect;

    .line 36
    .line 37
    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 38
    .line 39
    .line 40
    new-instance v6, Landroid/graphics/Rect;

    .line 41
    .line 42
    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3, v6}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 46
    .line 47
    .line 48
    iget-object v7, v0, Lwk0;->x:Ljava/lang/ref/WeakReference;

    .line 49
    .line 50
    if-eqz v7, :cond_2

    .line 51
    .line 52
    invoke-virtual {v7}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v7

    .line 56
    check-cast v7, Landroid/view/ViewGroup;

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    move-object v7, v4

    .line 60
    :goto_1
    if-eqz v7, :cond_3

    .line 61
    .line 62
    invoke-virtual {v7, v3, v6}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 63
    .line 64
    .line 65
    :cond_3
    invoke-virtual {v0}, Lwk0;->g()Z

    .line 66
    .line 67
    .line 68
    move-result v7

    .line 69
    iget-object v8, v0, Lwk0;->e:Lyk0;

    .line 70
    .line 71
    if-eqz v7, :cond_4

    .line 72
    .line 73
    iget v7, v8, Lyk0;->d:F

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_4
    iget v7, v8, Lyk0;->c:F

    .line 77
    .line 78
    :goto_2
    iput v7, v0, Lwk0;->p:F

    .line 79
    .line 80
    const/high16 v9, -0x40800000    # -1.0f

    .line 81
    .line 82
    cmpl-float v10, v7, v9

    .line 83
    .line 84
    const/high16 v11, 0x40000000    # 2.0f

    .line 85
    .line 86
    if-eqz v10, :cond_5

    .line 87
    .line 88
    iput v7, v0, Lwk0;->q:F

    .line 89
    .line 90
    iput v7, v0, Lwk0;->r:F

    .line 91
    .line 92
    goto :goto_7

    .line 93
    :cond_5
    invoke-virtual {v0}, Lwk0;->g()Z

    .line 94
    .line 95
    .line 96
    move-result v7

    .line 97
    if-eqz v7, :cond_6

    .line 98
    .line 99
    iget v7, v8, Lyk0;->g:F

    .line 100
    .line 101
    :goto_3
    div-float/2addr v7, v11

    .line 102
    goto :goto_4

    .line 103
    :cond_6
    iget v7, v8, Lyk0;->e:F

    .line 104
    .line 105
    goto :goto_3

    .line 106
    :goto_4
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    .line 107
    .line 108
    .line 109
    move-result v7

    .line 110
    int-to-float v7, v7

    .line 111
    iput v7, v0, Lwk0;->q:F

    .line 112
    .line 113
    invoke-virtual {v0}, Lwk0;->g()Z

    .line 114
    .line 115
    .line 116
    move-result v7

    .line 117
    if-eqz v7, :cond_7

    .line 118
    .line 119
    iget v7, v8, Lyk0;->h:F

    .line 120
    .line 121
    :goto_5
    div-float/2addr v7, v11

    .line 122
    goto :goto_6

    .line 123
    :cond_7
    iget v7, v8, Lyk0;->f:F

    .line 124
    .line 125
    goto :goto_5

    .line 126
    :goto_6
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    .line 127
    .line 128
    .line 129
    move-result v7

    .line 130
    int-to-float v7, v7

    .line 131
    iput v7, v0, Lwk0;->r:F

    .line 132
    .line 133
    :goto_7
    invoke-virtual {v0}, Lwk0;->g()Z

    .line 134
    .line 135
    .line 136
    move-result v7

    .line 137
    if-eqz v7, :cond_9

    .line 138
    .line 139
    invoke-virtual {v0}, Lwk0;->c()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v7

    .line 143
    iget v10, v0, Lwk0;->q:F

    .line 144
    .line 145
    iget-object v12, v0, Lwk0;->c:La18;

    .line 146
    .line 147
    invoke-virtual {v12, v7}, La18;->a(Ljava/lang/String;)F

    .line 148
    .line 149
    .line 150
    move-result v13

    .line 151
    div-float/2addr v13, v11

    .line 152
    iget-object v14, v8, Lyk0;->b:Lxk0;

    .line 153
    .line 154
    iget-object v14, v14, Lxk0;->M:Ljava/lang/Integer;

    .line 155
    .line 156
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    .line 157
    .line 158
    .line 159
    move-result v14

    .line 160
    int-to-float v14, v14

    .line 161
    add-float/2addr v13, v14

    .line 162
    invoke-static {v10, v13}, Ljava/lang/Math;->max(FF)F

    .line 163
    .line 164
    .line 165
    move-result v10

    .line 166
    iput v10, v0, Lwk0;->q:F

    .line 167
    .line 168
    iget v10, v0, Lwk0;->r:F

    .line 169
    .line 170
    iget-boolean v13, v12, La18;->e:Z

    .line 171
    .line 172
    if-nez v13, :cond_8

    .line 173
    .line 174
    goto :goto_8

    .line 175
    :cond_8
    invoke-virtual {v12, v7}, La18;->b(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    :goto_8
    iget v7, v12, La18;->d:F

    .line 179
    .line 180
    div-float/2addr v7, v11

    .line 181
    iget-object v12, v8, Lyk0;->b:Lxk0;

    .line 182
    .line 183
    iget-object v12, v12, Lxk0;->N:Ljava/lang/Integer;

    .line 184
    .line 185
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 186
    .line 187
    .line 188
    move-result v12

    .line 189
    int-to-float v12, v12

    .line 190
    add-float/2addr v7, v12

    .line 191
    invoke-static {v10, v7}, Ljava/lang/Math;->max(FF)F

    .line 192
    .line 193
    .line 194
    move-result v7

    .line 195
    iput v7, v0, Lwk0;->r:F

    .line 196
    .line 197
    iget v10, v0, Lwk0;->q:F

    .line 198
    .line 199
    invoke-static {v10, v7}, Ljava/lang/Math;->max(FF)F

    .line 200
    .line 201
    .line 202
    move-result v7

    .line 203
    iput v7, v0, Lwk0;->q:F

    .line 204
    .line 205
    :cond_9
    iget-object v7, v8, Lyk0;->b:Lxk0;

    .line 206
    .line 207
    iget-object v10, v8, Lyk0;->b:Lxk0;

    .line 208
    .line 209
    iget v12, v8, Lyk0;->k:I

    .line 210
    .line 211
    iget-object v13, v7, Lxk0;->P:Ljava/lang/Integer;

    .line 212
    .line 213
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 214
    .line 215
    .line 216
    move-result v13

    .line 217
    invoke-virtual {v0}, Lwk0;->g()Z

    .line 218
    .line 219
    .line 220
    move-result v14

    .line 221
    if-eqz v14, :cond_a

    .line 222
    .line 223
    iget-object v13, v7, Lxk0;->R:Ljava/lang/Integer;

    .line 224
    .line 225
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 226
    .line 227
    .line 228
    move-result v13

    .line 229
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    check-cast v1, Landroid/content/Context;

    .line 234
    .line 235
    if-eqz v1, :cond_a

    .line 236
    .line 237
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 246
    .line 247
    const/high16 v14, 0x3f800000    # 1.0f

    .line 248
    .line 249
    sub-float/2addr v1, v14

    .line 250
    const/4 v15, 0x0

    .line 251
    move/from16 v16, v9

    .line 252
    .line 253
    const v9, 0x3e99999a    # 0.3f

    .line 254
    .line 255
    .line 256
    invoke-static {v15, v14, v9, v14, v1}, Led;->b(FFFFF)F

    .line 257
    .line 258
    .line 259
    move-result v1

    .line 260
    iget-object v9, v7, Lxk0;->U:Ljava/lang/Integer;

    .line 261
    .line 262
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 263
    .line 264
    .line 265
    move-result v9

    .line 266
    sub-int v9, v13, v9

    .line 267
    .line 268
    invoke-static {v1, v13, v9}, Led;->c(FII)I

    .line 269
    .line 270
    .line 271
    move-result v13

    .line 272
    goto :goto_9

    .line 273
    :cond_a
    move/from16 v16, v9

    .line 274
    .line 275
    :goto_9
    if-nez v12, :cond_b

    .line 276
    .line 277
    iget v1, v0, Lwk0;->r:F

    .line 278
    .line 279
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 280
    .line 281
    .line 282
    move-result v1

    .line 283
    sub-int/2addr v13, v1

    .line 284
    :cond_b
    iget-object v1, v7, Lxk0;->T:Ljava/lang/Integer;

    .line 285
    .line 286
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 287
    .line 288
    .line 289
    move-result v1

    .line 290
    add-int/2addr v1, v13

    .line 291
    iget-object v9, v10, Lxk0;->K:Ljava/lang/Integer;

    .line 292
    .line 293
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 294
    .line 295
    .line 296
    move-result v9

    .line 297
    const v13, 0x800053

    .line 298
    .line 299
    .line 300
    if-eq v9, v13, :cond_c

    .line 301
    .line 302
    const v14, 0x800055

    .line 303
    .line 304
    .line 305
    if-eq v9, v14, :cond_c

    .line 306
    .line 307
    iget v9, v6, Landroid/graphics/Rect;->top:I

    .line 308
    .line 309
    add-int/2addr v9, v1

    .line 310
    int-to-float v1, v9

    .line 311
    iput v1, v0, Lwk0;->k:F

    .line 312
    .line 313
    goto :goto_a

    .line 314
    :cond_c
    iget v9, v6, Landroid/graphics/Rect;->bottom:I

    .line 315
    .line 316
    sub-int/2addr v9, v1

    .line 317
    int-to-float v1, v9

    .line 318
    iput v1, v0, Lwk0;->k:F

    .line 319
    .line 320
    :goto_a
    invoke-virtual {v0}, Lwk0;->g()Z

    .line 321
    .line 322
    .line 323
    move-result v1

    .line 324
    if-eqz v1, :cond_d

    .line 325
    .line 326
    iget-object v1, v7, Lxk0;->Q:Ljava/lang/Integer;

    .line 327
    .line 328
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 329
    .line 330
    .line 331
    move-result v1

    .line 332
    goto :goto_b

    .line 333
    :cond_d
    iget-object v1, v10, Lxk0;->O:Ljava/lang/Integer;

    .line 334
    .line 335
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 336
    .line 337
    .line 338
    move-result v1

    .line 339
    :goto_b
    const/4 v9, 0x1

    .line 340
    if-ne v12, v9, :cond_f

    .line 341
    .line 342
    invoke-virtual {v0}, Lwk0;->g()Z

    .line 343
    .line 344
    .line 345
    move-result v9

    .line 346
    if-eqz v9, :cond_e

    .line 347
    .line 348
    iget v9, v8, Lyk0;->j:I

    .line 349
    .line 350
    goto :goto_c

    .line 351
    :cond_e
    iget v9, v8, Lyk0;->i:I

    .line 352
    .line 353
    :goto_c
    add-int/2addr v1, v9

    .line 354
    :cond_f
    iget-object v9, v7, Lxk0;->S:Ljava/lang/Integer;

    .line 355
    .line 356
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 357
    .line 358
    .line 359
    move-result v9

    .line 360
    add-int/2addr v9, v1

    .line 361
    iget-object v1, v10, Lxk0;->K:Ljava/lang/Integer;

    .line 362
    .line 363
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 364
    .line 365
    .line 366
    move-result v1

    .line 367
    const v10, 0x800033

    .line 368
    .line 369
    .line 370
    if-eq v1, v10, :cond_13

    .line 371
    .line 372
    if-eq v1, v13, :cond_13

    .line 373
    .line 374
    iget v1, v8, Lyk0;->l:I

    .line 375
    .line 376
    if-nez v1, :cond_11

    .line 377
    .line 378
    invoke-virtual {v3}, Landroid/view/View;->getLayoutDirection()I

    .line 379
    .line 380
    .line 381
    move-result v1

    .line 382
    if-nez v1, :cond_10

    .line 383
    .line 384
    iget v1, v6, Landroid/graphics/Rect;->right:I

    .line 385
    .line 386
    int-to-float v1, v1

    .line 387
    iget v6, v0, Lwk0;->q:F

    .line 388
    .line 389
    add-float/2addr v1, v6

    .line 390
    int-to-float v6, v9

    .line 391
    :goto_d
    sub-float/2addr v1, v6

    .line 392
    goto :goto_e

    .line 393
    :cond_10
    iget v1, v6, Landroid/graphics/Rect;->left:I

    .line 394
    .line 395
    int-to-float v1, v1

    .line 396
    iget v6, v0, Lwk0;->q:F

    .line 397
    .line 398
    sub-float/2addr v1, v6

    .line 399
    int-to-float v6, v9

    .line 400
    add-float/2addr v1, v6

    .line 401
    goto :goto_e

    .line 402
    :cond_11
    invoke-virtual {v3}, Landroid/view/View;->getLayoutDirection()I

    .line 403
    .line 404
    .line 405
    move-result v1

    .line 406
    if-nez v1, :cond_12

    .line 407
    .line 408
    iget v1, v6, Landroid/graphics/Rect;->right:I

    .line 409
    .line 410
    int-to-float v1, v1

    .line 411
    iget v6, v0, Lwk0;->q:F

    .line 412
    .line 413
    sub-float/2addr v1, v6

    .line 414
    iget v6, v0, Lwk0;->r:F

    .line 415
    .line 416
    mul-float/2addr v6, v11

    .line 417
    int-to-float v8, v9

    .line 418
    sub-float/2addr v6, v8

    .line 419
    add-float/2addr v1, v6

    .line 420
    goto :goto_e

    .line 421
    :cond_12
    iget v1, v6, Landroid/graphics/Rect;->left:I

    .line 422
    .line 423
    int-to-float v1, v1

    .line 424
    iget v6, v0, Lwk0;->q:F

    .line 425
    .line 426
    add-float/2addr v1, v6

    .line 427
    iget v6, v0, Lwk0;->r:F

    .line 428
    .line 429
    mul-float/2addr v6, v11

    .line 430
    int-to-float v8, v9

    .line 431
    sub-float/2addr v6, v8

    .line 432
    goto :goto_d

    .line 433
    :goto_e
    iput v1, v0, Lwk0;->f:F

    .line 434
    .line 435
    goto :goto_11

    .line 436
    :cond_13
    iget v1, v8, Lyk0;->l:I

    .line 437
    .line 438
    if-nez v1, :cond_15

    .line 439
    .line 440
    invoke-virtual {v3}, Landroid/view/View;->getLayoutDirection()I

    .line 441
    .line 442
    .line 443
    move-result v1

    .line 444
    if-nez v1, :cond_14

    .line 445
    .line 446
    iget v1, v6, Landroid/graphics/Rect;->left:I

    .line 447
    .line 448
    int-to-float v1, v1

    .line 449
    iget v6, v0, Lwk0;->q:F

    .line 450
    .line 451
    add-float/2addr v1, v6

    .line 452
    iget v6, v0, Lwk0;->r:F

    .line 453
    .line 454
    mul-float/2addr v6, v11

    .line 455
    int-to-float v8, v9

    .line 456
    sub-float/2addr v6, v8

    .line 457
    :goto_f
    sub-float/2addr v1, v6

    .line 458
    goto :goto_10

    .line 459
    :cond_14
    iget v1, v6, Landroid/graphics/Rect;->right:I

    .line 460
    .line 461
    int-to-float v1, v1

    .line 462
    iget v6, v0, Lwk0;->q:F

    .line 463
    .line 464
    sub-float/2addr v1, v6

    .line 465
    iget v6, v0, Lwk0;->r:F

    .line 466
    .line 467
    mul-float/2addr v6, v11

    .line 468
    int-to-float v8, v9

    .line 469
    sub-float/2addr v6, v8

    .line 470
    add-float/2addr v1, v6

    .line 471
    goto :goto_10

    .line 472
    :cond_15
    invoke-virtual {v3}, Landroid/view/View;->getLayoutDirection()I

    .line 473
    .line 474
    .line 475
    move-result v1

    .line 476
    if-nez v1, :cond_16

    .line 477
    .line 478
    iget v1, v6, Landroid/graphics/Rect;->left:I

    .line 479
    .line 480
    int-to-float v1, v1

    .line 481
    iget v6, v0, Lwk0;->q:F

    .line 482
    .line 483
    sub-float/2addr v1, v6

    .line 484
    int-to-float v6, v9

    .line 485
    add-float/2addr v1, v6

    .line 486
    goto :goto_10

    .line 487
    :cond_16
    iget v1, v6, Landroid/graphics/Rect;->right:I

    .line 488
    .line 489
    int-to-float v1, v1

    .line 490
    iget v6, v0, Lwk0;->q:F

    .line 491
    .line 492
    add-float/2addr v1, v6

    .line 493
    int-to-float v6, v9

    .line 494
    goto :goto_f

    .line 495
    :goto_10
    iput v1, v0, Lwk0;->f:F

    .line 496
    .line 497
    :goto_11
    iget-object v1, v7, Lxk0;->V:Ljava/lang/Boolean;

    .line 498
    .line 499
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 500
    .line 501
    .line 502
    move-result v1

    .line 503
    if-eqz v1, :cond_18

    .line 504
    .line 505
    invoke-virtual {v0}, Lwk0;->e()Landroid/widget/FrameLayout;

    .line 506
    .line 507
    .line 508
    move-result-object v1

    .line 509
    if-nez v1, :cond_17

    .line 510
    .line 511
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 512
    .line 513
    .line 514
    move-result-object v1

    .line 515
    :cond_17
    instance-of v4, v1, Landroid/view/View;

    .line 516
    .line 517
    if-eqz v4, :cond_19

    .line 518
    .line 519
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 520
    .line 521
    .line 522
    move-result-object v4

    .line 523
    instance-of v4, v4, Landroid/view/View;

    .line 524
    .line 525
    if-eqz v4, :cond_19

    .line 526
    .line 527
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 528
    .line 529
    .line 530
    move-result-object v1

    .line 531
    check-cast v1, Landroid/view/View;

    .line 532
    .line 533
    invoke-virtual {v0, v3, v1}, Lwk0;->b(Landroid/view/View;Landroid/view/View;)V

    .line 534
    .line 535
    .line 536
    goto :goto_12

    .line 537
    :cond_18
    invoke-virtual {v0, v3, v4}, Lwk0;->b(Landroid/view/View;Landroid/view/View;)V

    .line 538
    .line 539
    .line 540
    :cond_19
    :goto_12
    iget v1, v0, Lwk0;->f:F

    .line 541
    .line 542
    iget v3, v0, Lwk0;->k:F

    .line 543
    .line 544
    iget v4, v0, Lwk0;->q:F

    .line 545
    .line 546
    iget v6, v0, Lwk0;->r:F

    .line 547
    .line 548
    sub-float v7, v1, v4

    .line 549
    .line 550
    float-to-int v7, v7

    .line 551
    sub-float v8, v3, v6

    .line 552
    .line 553
    float-to-int v8, v8

    .line 554
    add-float/2addr v1, v4

    .line 555
    float-to-int v1, v1

    .line 556
    add-float/2addr v3, v6

    .line 557
    float-to-int v3, v3

    .line 558
    invoke-virtual {v5, v7, v8, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 559
    .line 560
    .line 561
    iget v1, v0, Lwk0;->p:F

    .line 562
    .line 563
    cmpl-float v3, v1, v16

    .line 564
    .line 565
    iget-object v0, v0, Lwk0;->b:Lc95;

    .line 566
    .line 567
    if-eqz v3, :cond_1a

    .line 568
    .line 569
    iget-object v3, v0, Lc95;->b:La95;

    .line 570
    .line 571
    iget-object v3, v3, La95;->a:Lrb7;

    .line 572
    .line 573
    invoke-interface {v3, v1}, Lrb7;->a(F)Ltb7;

    .line 574
    .line 575
    .line 576
    move-result-object v1

    .line 577
    invoke-virtual {v0, v1}, Lc95;->setShapeAppearanceModel(Ltb7;)V

    .line 578
    .line 579
    .line 580
    :cond_1a
    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 581
    .line 582
    .line 583
    move-result v1

    .line 584
    if-nez v1, :cond_1b

    .line 585
    .line 586
    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 587
    .line 588
    .line 589
    :cond_1b
    :goto_13
    return-void
.end method

.method public final onStateChange([I)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final setAlpha(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lwk0;->e:Lyk0;

    .line 2
    .line 3
    iget-object v1, v0, Lyk0;->a:Lxk0;

    .line 4
    .line 5
    iput p1, v1, Lxk0;->p:I

    .line 6
    .line 7
    iget-object v0, v0, Lyk0;->b:Lxk0;

    .line 8
    .line 9
    iput p1, v0, Lxk0;->p:I

    .line 10
    .line 11
    iget-object p1, p0, Lwk0;->c:La18;

    .line 12
    .line 13
    iget-object p1, p1, La18;->a:Landroid/text/TextPaint;

    .line 14
    .line 15
    invoke-virtual {p0}, Lwk0;->getAlpha()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 1
    return-void
.end method
