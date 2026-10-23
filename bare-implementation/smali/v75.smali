.class public Lv75;
.super Lva;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final c:Lc95;

.field public final d:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/ContextWrapper;I)V
    .locals 12

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f0403e5

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Ljm1;->P(Landroid/content/res/Resources$Theme;I)Landroid/util/TypedValue;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v2, 0x0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    move v0, v2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget v0, v0, Landroid/util/TypedValue;->data:I

    .line 18
    .line 19
    :goto_0
    const/4 v3, 0x0

    .line 20
    const v4, 0x7f040030

    .line 21
    .line 22
    .line 23
    const v5, 0x7f14019a

    .line 24
    .line 25
    .line 26
    invoke-static {p1, v3, v4, v5}, Lzm5;->J(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    new-instance v7, Lhv1;

    .line 34
    .line 35
    invoke-direct {v7, v6, v0}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 36
    .line 37
    .line 38
    move-object v6, v7

    .line 39
    :goto_1
    if-nez p2, :cond_3

    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-static {p1, v1}, Ljm1;->P(Landroid/content/res/Resources$Theme;I)Landroid/util/TypedValue;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    if-nez p1, :cond_2

    .line 50
    .line 51
    move p2, v2

    .line 52
    goto :goto_2

    .line 53
    :cond_2
    iget p1, p1, Landroid/util/TypedValue;->data:I

    .line 54
    .line 55
    move p2, p1

    .line 56
    :cond_3
    :goto_2
    invoke-direct {p0, v6, p2}, Lva;-><init>(Landroid/content/Context;I)V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lva;->b:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast p1, Lra;

    .line 62
    .line 63
    iget-object v6, p1, Lra;->a:Landroid/view/ContextThemeWrapper;

    .line 64
    .line 65
    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    new-array v11, v2, [I

    .line 70
    .line 71
    const/4 v7, 0x0

    .line 72
    const v9, 0x7f040030

    .line 73
    .line 74
    .line 75
    const v10, 0x7f14019a

    .line 76
    .line 77
    .line 78
    invoke-static {v6, v7, v9, v10}, Ljd4;->d(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 79
    .line 80
    .line 81
    sget-object v8, Ltd6;->t:[I

    .line 82
    .line 83
    invoke-static/range {v6 .. v11}, Ljd4;->e(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    const v1, 0x7f0703bc

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    const/4 v1, 0x2

    .line 102
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    const v7, 0x7f0703bd

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    const/4 v7, 0x3

    .line 118
    invoke-virtual {p2, v7, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 123
    .line 124
    .line 125
    move-result-object v7

    .line 126
    const v9, 0x7f0703bb

    .line 127
    .line 128
    .line 129
    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 130
    .line 131
    .line 132
    move-result v7

    .line 133
    const/4 v9, 0x1

    .line 134
    invoke-virtual {p2, v9, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 135
    .line 136
    .line 137
    move-result v7

    .line 138
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 139
    .line 140
    .line 141
    move-result-object v10

    .line 142
    const v11, 0x7f0703ba

    .line 143
    .line 144
    .line 145
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 146
    .line 147
    .line 148
    move-result v10

    .line 149
    invoke-virtual {p2, v2, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 150
    .line 151
    .line 152
    move-result v2

    .line 153
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 157
    .line 158
    .line 159
    move-result-object p2

    .line 160
    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 161
    .line 162
    .line 163
    move-result-object p2

    .line 164
    invoke-virtual {p2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 165
    .line 166
    .line 167
    move-result p2

    .line 168
    if-ne p2, v9, :cond_4

    .line 169
    .line 170
    move v10, v7

    .line 171
    goto :goto_3

    .line 172
    :cond_4
    move v10, v0

    .line 173
    :goto_3
    if-ne p2, v9, :cond_5

    .line 174
    .line 175
    goto :goto_4

    .line 176
    :cond_5
    move v0, v7

    .line 177
    :goto_4
    new-instance p2, Landroid/graphics/Rect;

    .line 178
    .line 179
    invoke-direct {p2, v10, v1, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 180
    .line 181
    .line 182
    iput-object p2, p0, Lv75;->d:Landroid/graphics/Rect;

    .line 183
    .line 184
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 185
    .line 186
    .line 187
    move-result-object p2

    .line 188
    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object p2

    .line 192
    const v0, 0x7f040158

    .line 193
    .line 194
    .line 195
    invoke-static {v0, v6, p2}, Ljm1;->T(ILandroid/content/Context;Ljava/lang/String;)Landroid/util/TypedValue;

    .line 196
    .line 197
    .line 198
    move-result-object p2

    .line 199
    invoke-static {v6, p2}, Lz85;->C(Landroid/content/Context;Landroid/util/TypedValue;)I

    .line 200
    .line 201
    .line 202
    move-result p2

    .line 203
    invoke-virtual {v6, v3, v8, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    const/4 v1, 0x4

    .line 208
    invoke-virtual {v0, v1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 209
    .line 210
    .line 211
    move-result p2

    .line 212
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 213
    .line 214
    .line 215
    new-instance v0, Lc95;

    .line 216
    .line 217
    invoke-direct {v0, v6, v3, v4, v5}, Lc95;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v0, v6}, Lc95;->p(Landroid/content/Context;)V

    .line 221
    .line 222
    .line 223
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 224
    .line 225
    .line 226
    move-result-object p2

    .line 227
    invoke-virtual {v0, p2}, Lc95;->t(Landroid/content/res/ColorStateList;)V

    .line 228
    .line 229
    .line 230
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 231
    .line 232
    const/16 v1, 0x1c

    .line 233
    .line 234
    if-lt p2, v1, :cond_6

    .line 235
    .line 236
    new-instance p2, Landroid/util/TypedValue;

    .line 237
    .line 238
    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 239
    .line 240
    .line 241
    const v1, 0x1010571

    .line 242
    .line 243
    .line 244
    invoke-virtual {p1, v1, p2, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 245
    .line 246
    .line 247
    iget-object p1, p0, Lva;->b:Ljava/lang/Object;

    .line 248
    .line 249
    check-cast p1, Lra;

    .line 250
    .line 251
    iget-object p1, p1, Lra;->a:Landroid/view/ContextThemeWrapper;

    .line 252
    .line 253
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 254
    .line 255
    .line 256
    move-result-object p1

    .line 257
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    invoke-virtual {p2, p1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    .line 262
    .line 263
    .line 264
    move-result p1

    .line 265
    iget p2, p2, Landroid/util/TypedValue;->type:I

    .line 266
    .line 267
    const/4 v1, 0x5

    .line 268
    if-ne p2, v1, :cond_6

    .line 269
    .line 270
    const/4 p2, 0x0

    .line 271
    cmpl-float p2, p1, p2

    .line 272
    .line 273
    if-ltz p2, :cond_6

    .line 274
    .line 275
    iget-object p2, v0, Lc95;->b:La95;

    .line 276
    .line 277
    iget-object p2, p2, La95;->a:Lrb7;

    .line 278
    .line 279
    invoke-interface {p2, p1}, Lrb7;->a(F)Ltb7;

    .line 280
    .line 281
    .line 282
    move-result-object p1

    .line 283
    invoke-virtual {v0, p1}, Lc95;->setShapeAppearanceModel(Ltb7;)V

    .line 284
    .line 285
    .line 286
    :cond_6
    iput-object v0, p0, Lv75;->c:Lc95;

    .line 287
    .line 288
    return-void
.end method


# virtual methods
.method public final c()Lwa;
    .locals 9

    .line 1
    invoke-super {p0}, Lva;->c()Lwa;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget-object v4, p0, Lv75;->c:Lc95;

    .line 14
    .line 15
    if-eqz v4, :cond_0

    .line 16
    .line 17
    invoke-virtual {v2}, Landroid/view/View;->getElevation()F

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    invoke-virtual {v4, v3}, Lc95;->s(F)V

    .line 22
    .line 23
    .line 24
    :cond_0
    new-instance v3, Landroid/graphics/drawable/InsetDrawable;

    .line 25
    .line 26
    iget-object p0, p0, Lv75;->d:Landroid/graphics/Rect;

    .line 27
    .line 28
    iget v5, p0, Landroid/graphics/Rect;->left:I

    .line 29
    .line 30
    iget v6, p0, Landroid/graphics/Rect;->top:I

    .line 31
    .line 32
    iget v7, p0, Landroid/graphics/Rect;->right:I

    .line 33
    .line 34
    iget v8, p0, Landroid/graphics/Rect;->bottom:I

    .line 35
    .line 36
    invoke-direct/range {v3 .. v8}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 40
    .line 41
    .line 42
    new-instance v1, Luc4;

    .line 43
    .line 44
    invoke-direct {v1, v0, p0}, Luc4;-><init>(Lwa;Landroid/graphics/Rect;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 48
    .line 49
    .line 50
    return-object v0
.end method

.method public final d(I)Lva;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final f(ILandroid/content/DialogInterface$OnClickListener;)Lva;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final h(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lva;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final i(ILandroid/content/DialogInterface$OnClickListener;)Lva;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final j(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-super {p0, p1, p1}, Lva;->j(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final l(I)Lva;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final n(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lva;->d(I)Lva;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final o([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lva;->e([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final p()V
    .locals 2

    .line 1
    const-string v0, "Cancel"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-super {p0, v0, v1}, Lva;->h(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lva;

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final q(ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lva;->f(ILandroid/content/DialogInterface$OnClickListener;)Lva;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final r(ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lva;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lra;

    .line 4
    .line 5
    iget-object v0, p0, Lra;->a:Landroid/view/ContextThemeWrapper;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lra;->k:Ljava/lang/CharSequence;

    .line 12
    .line 13
    iput-object p2, p0, Lra;->l:Landroid/content/DialogInterface$OnClickListener;

    .line 14
    .line 15
    return-void
.end method

.method public final s(ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lva;->i(ILandroid/content/DialogInterface$OnClickListener;)Lva;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final t(Ljava/lang/String;Lkb1;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lva;->j(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final u([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lva;->k([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final v(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lva;->l(I)Lva;

    .line 2
    .line 3
    .line 4
    return-void
.end method
