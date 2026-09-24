.class public final Lp85;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lcom/google/android/material/button/MaterialButton;

.field public b:Lrb7;

.field public c:Lhk7;

.field public d:Lgb;

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:Landroid/graphics/PorterDuff$Mode;

.field public l:Landroid/content/res/ColorStateList;

.field public m:Landroid/content/res/ColorStateList;

.field public n:Landroid/content/res/ColorStateList;

.field public o:Lc95;

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:Landroid/graphics/drawable/RippleDrawable;

.field public v:I


# direct methods
.method public constructor <init>(Lcom/google/android/material/button/MaterialButton;Lrb7;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lp85;->p:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lp85;->q:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lp85;->r:Z

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lp85;->t:Z

    .line 13
    .line 14
    iput-object p1, p0, Lp85;->a:Lcom/google/android/material/button/MaterialButton;

    .line 15
    .line 16
    iput-object p2, p0, Lp85;->b:Lrb7;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final a(Z)Lc95;
    .locals 1

    .line 1
    iget-object v0, p0, Lp85;->u:Landroid/graphics/drawable/RippleDrawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lez v0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lp85;->u:Landroid/graphics/drawable/RippleDrawable;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Landroid/graphics/drawable/InsetDrawable;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Landroid/graphics/drawable/LayerDrawable;

    .line 25
    .line 26
    xor-int/lit8 p1, p1, 0x1

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    check-cast p0, Lc95;

    .line 33
    .line 34
    return-object p0

    .line 35
    :cond_0
    const/4 p0, 0x0

    .line 36
    return-object p0
.end method

.method public final b(IIII)V
    .locals 10

    .line 1
    iget-object v0, p0, Lp85;->a:Lcom/google/android/material/button/MaterialButton;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getPaddingEnd()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    iget v5, p0, Lp85;->e:I

    .line 20
    .line 21
    iget v6, p0, Lp85;->g:I

    .line 22
    .line 23
    iget v7, p0, Lp85;->f:I

    .line 24
    .line 25
    iget v8, p0, Lp85;->h:I

    .line 26
    .line 27
    iput p1, p0, Lp85;->e:I

    .line 28
    .line 29
    iput p2, p0, Lp85;->g:I

    .line 30
    .line 31
    iput p3, p0, Lp85;->f:I

    .line 32
    .line 33
    iput p4, p0, Lp85;->h:I

    .line 34
    .line 35
    iget-boolean v9, p0, Lp85;->q:Z

    .line 36
    .line 37
    if-nez v9, :cond_0

    .line 38
    .line 39
    invoke-virtual {p0}, Lp85;->c()V

    .line 40
    .line 41
    .line 42
    :cond_0
    add-int/2addr v1, p1

    .line 43
    sub-int/2addr v1, v5

    .line 44
    add-int/2addr v2, p2

    .line 45
    sub-int/2addr v2, v6

    .line 46
    add-int/2addr v3, p3

    .line 47
    sub-int/2addr v3, v7

    .line 48
    add-int/2addr v4, p4

    .line 49
    sub-int/2addr v4, v8

    .line 50
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public final c()V
    .locals 13

    .line 1
    new-instance v0, Lc95;

    .line 2
    .line 3
    iget-object v1, p0, Lp85;->b:Lrb7;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lc95;-><init>(Lrb7;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lp85;->c:Lhk7;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lc95;->r(Lhk7;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v1, p0, Lp85;->d:Lgb;

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    iput-object v1, v0, Lc95;->W:Lgb;

    .line 20
    .line 21
    :cond_1
    iget-object v1, p0, Lp85;->a:Lcom/google/android/material/button/MaterialButton;

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v0, v2}, Lc95;->p(Landroid/content/Context;)V

    .line 28
    .line 29
    .line 30
    iget-object v3, p0, Lp85;->l:Landroid/content/res/ColorStateList;

    .line 31
    .line 32
    invoke-virtual {v0, v3}, Lc95;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 33
    .line 34
    .line 35
    iget-object v3, p0, Lp85;->k:Landroid/graphics/PorterDuff$Mode;

    .line 36
    .line 37
    if-eqz v3, :cond_2

    .line 38
    .line 39
    invoke-virtual {v0, v3}, Lc95;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 40
    .line 41
    .line 42
    :cond_2
    iget v3, p0, Lp85;->j:I

    .line 43
    .line 44
    int-to-float v3, v3

    .line 45
    iget-object v4, p0, Lp85;->m:Landroid/content/res/ColorStateList;

    .line 46
    .line 47
    invoke-virtual {v0, v3}, Lc95;->A(F)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v4}, Lc95;->y(Landroid/content/res/ColorStateList;)V

    .line 51
    .line 52
    .line 53
    new-instance v3, Lc95;

    .line 54
    .line 55
    iget-object v4, p0, Lp85;->b:Lrb7;

    .line 56
    .line 57
    invoke-direct {v3, v4}, Lc95;-><init>(Lrb7;)V

    .line 58
    .line 59
    .line 60
    iget-object v4, p0, Lp85;->c:Lhk7;

    .line 61
    .line 62
    if-eqz v4, :cond_3

    .line 63
    .line 64
    invoke-virtual {v3, v4}, Lc95;->r(Lhk7;)V

    .line 65
    .line 66
    .line 67
    :cond_3
    const/4 v4, 0x0

    .line 68
    invoke-virtual {v3, v4}, Lc95;->setTint(I)V

    .line 69
    .line 70
    .line 71
    iget v5, p0, Lp85;->j:I

    .line 72
    .line 73
    int-to-float v5, v5

    .line 74
    iget-boolean v6, p0, Lp85;->p:Z

    .line 75
    .line 76
    if-eqz v6, :cond_4

    .line 77
    .line 78
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    const v7, 0x7f040158

    .line 83
    .line 84
    .line 85
    invoke-static {v1, v7}, Ljm1;->U(Landroid/view/View;I)Landroid/util/TypedValue;

    .line 86
    .line 87
    .line 88
    move-result-object v7

    .line 89
    invoke-static {v6, v7}, Lz85;->C(Landroid/content/Context;Landroid/util/TypedValue;)I

    .line 90
    .line 91
    .line 92
    move-result v6

    .line 93
    goto :goto_0

    .line 94
    :cond_4
    move v6, v4

    .line 95
    :goto_0
    invoke-virtual {v3, v5}, Lc95;->A(F)V

    .line 96
    .line 97
    .line 98
    invoke-static {v6}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    invoke-virtual {v3, v5}, Lc95;->y(Landroid/content/res/ColorStateList;)V

    .line 103
    .line 104
    .line 105
    new-instance v5, Lc95;

    .line 106
    .line 107
    iget-object v6, p0, Lp85;->b:Lrb7;

    .line 108
    .line 109
    invoke-direct {v5, v6}, Lc95;-><init>(Lrb7;)V

    .line 110
    .line 111
    .line 112
    iput-object v5, p0, Lp85;->o:Lc95;

    .line 113
    .line 114
    iget-object v6, p0, Lp85;->c:Lhk7;

    .line 115
    .line 116
    if-eqz v6, :cond_5

    .line 117
    .line 118
    invoke-virtual {v5, v6}, Lc95;->r(Lhk7;)V

    .line 119
    .line 120
    .line 121
    :cond_5
    iget-object v5, p0, Lp85;->o:Lc95;

    .line 122
    .line 123
    const/4 v6, -0x1

    .line 124
    invoke-virtual {v5, v6}, Lc95;->setTint(I)V

    .line 125
    .line 126
    .line 127
    new-instance v5, Landroid/graphics/drawable/RippleDrawable;

    .line 128
    .line 129
    iget-object v6, p0, Lp85;->n:Landroid/content/res/ColorStateList;

    .line 130
    .line 131
    invoke-static {v6}, Lxn6;->c(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    .line 132
    .line 133
    .line 134
    move-result-object v6

    .line 135
    new-instance v8, Landroid/graphics/drawable/LayerDrawable;

    .line 136
    .line 137
    const/4 v7, 0x2

    .line 138
    new-array v7, v7, [Landroid/graphics/drawable/Drawable;

    .line 139
    .line 140
    aput-object v3, v7, v4

    .line 141
    .line 142
    const/4 v3, 0x1

    .line 143
    aput-object v0, v7, v3

    .line 144
    .line 145
    invoke-direct {v8, v7}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 146
    .line 147
    .line 148
    new-instance v7, Landroid/graphics/drawable/InsetDrawable;

    .line 149
    .line 150
    iget v9, p0, Lp85;->e:I

    .line 151
    .line 152
    iget v10, p0, Lp85;->g:I

    .line 153
    .line 154
    iget v11, p0, Lp85;->f:I

    .line 155
    .line 156
    iget v12, p0, Lp85;->h:I

    .line 157
    .line 158
    invoke-direct/range {v7 .. v12}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 159
    .line 160
    .line 161
    iget-object v0, p0, Lp85;->o:Lc95;

    .line 162
    .line 163
    invoke-direct {v5, v6, v7, v0}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 164
    .line 165
    .line 166
    iput-object v5, p0, Lp85;->u:Landroid/graphics/drawable/RippleDrawable;

    .line 167
    .line 168
    const/4 v0, 0x0

    .line 169
    invoke-static {v2, v5, v0}, Lcom/google/android/material/focus/FocusRingDrawable;->f(Landroid/content/Context;Landroid/graphics/drawable/LayerDrawable;Lc95;)Lcom/google/android/material/focus/FocusRingDrawable;

    .line 170
    .line 171
    .line 172
    iget-object v0, p0, Lp85;->u:Landroid/graphics/drawable/RippleDrawable;

    .line 173
    .line 174
    invoke-virtual {v1, v0}, Lcom/google/android/material/button/MaterialButton;->setInternalBackground(Landroid/graphics/drawable/Drawable;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {p0, v4}, Lp85;->a(Z)Lc95;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    if-eqz v0, :cond_6

    .line 182
    .line 183
    iget p0, p0, Lp85;->v:I

    .line 184
    .line 185
    int-to-float p0, p0

    .line 186
    invoke-virtual {v0, p0}, Lc95;->s(F)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v1}, Landroid/view/View;->getDrawableState()[I

    .line 190
    .line 191
    .line 192
    move-result-object p0

    .line 193
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 194
    .line 195
    .line 196
    :cond_6
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 197
    .line 198
    .line 199
    move-result-object p0

    .line 200
    invoke-static {p0}, Lcom/google/android/material/focus/FocusRingDrawable;->c(Landroid/graphics/drawable/Drawable;)Lcom/google/android/material/focus/FocusRingDrawable;

    .line 201
    .line 202
    .line 203
    move-result-object p0

    .line 204
    if-eqz p0, :cond_7

    .line 205
    .line 206
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 207
    .line 208
    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 209
    .line 210
    .line 211
    iput-object v1, p0, Lcom/google/android/material/focus/FocusRingDrawable;->n:Ljava/lang/ref/WeakReference;

    .line 212
    .line 213
    :cond_7
    return-void
.end method

.method public final d()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lp85;->a(Z)Lc95;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lp85;->b:Lrb7;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lc95;->x(Lrb7;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lp85;->c:Lhk7;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lc95;->r(Lhk7;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    const/4 v0, 0x1

    .line 21
    invoke-virtual {p0, v0}, Lp85;->a(Z)Lc95;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object v1, p0, Lp85;->b:Lrb7;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lc95;->x(Lrb7;)V

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lp85;->c:Lhk7;

    .line 33
    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lc95;->r(Lhk7;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    iget-object v0, p0, Lp85;->u:Landroid/graphics/drawable/RippleDrawable;

    .line 40
    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    const v1, 0x102002e

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    instance-of v1, v0, Ltc7;

    .line 51
    .line 52
    if-eqz v1, :cond_2

    .line 53
    .line 54
    check-cast v0, Ltc7;

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    const/4 v0, 0x0

    .line 58
    :goto_0
    if-eqz v0, :cond_4

    .line 59
    .line 60
    instance-of v1, v0, Lc95;

    .line 61
    .line 62
    iget-object v2, p0, Lp85;->b:Lrb7;

    .line 63
    .line 64
    if-eqz v1, :cond_3

    .line 65
    .line 66
    check-cast v0, Lc95;

    .line 67
    .line 68
    invoke-virtual {v0, v2}, Lc95;->x(Lrb7;)V

    .line 69
    .line 70
    .line 71
    iget-object p0, p0, Lp85;->c:Lhk7;

    .line 72
    .line 73
    if-eqz p0, :cond_4

    .line 74
    .line 75
    invoke-virtual {v0, p0}, Lc95;->r(Lhk7;)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :cond_3
    invoke-interface {v2}, Lrb7;->d()Ltb7;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-interface {v0, p0}, Ltc7;->setShapeAppearanceModel(Ltb7;)V

    .line 84
    .line 85
    .line 86
    :cond_4
    return-void
.end method

.method public final e()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lp85;->a(Z)Lc95;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-virtual {p0, v2}, Lp85;->a(Z)Lc95;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    iget v3, p0, Lp85;->j:I

    .line 14
    .line 15
    int-to-float v3, v3

    .line 16
    iget-object v4, p0, Lp85;->m:Landroid/content/res/ColorStateList;

    .line 17
    .line 18
    invoke-virtual {v1, v3}, Lc95;->A(F)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v4}, Lc95;->y(Landroid/content/res/ColorStateList;)V

    .line 22
    .line 23
    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    iget v1, p0, Lp85;->j:I

    .line 27
    .line 28
    int-to-float v1, v1

    .line 29
    iget-boolean v3, p0, Lp85;->p:Z

    .line 30
    .line 31
    if-eqz v3, :cond_0

    .line 32
    .line 33
    iget-object p0, p0, Lp85;->a:Lcom/google/android/material/button/MaterialButton;

    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const v3, 0x7f040158

    .line 40
    .line 41
    .line 42
    invoke-static {p0, v3}, Ljm1;->U(Landroid/view/View;I)Landroid/util/TypedValue;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-static {v0, p0}, Lz85;->C(Landroid/content/Context;Landroid/util/TypedValue;)I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    :cond_0
    invoke-virtual {v2, v1}, Lc95;->A(F)V

    .line 51
    .line 52
    .line 53
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {v2, p0}, Lc95;->y(Landroid/content/res/ColorStateList;)V

    .line 58
    .line 59
    .line 60
    :cond_1
    return-void
.end method
