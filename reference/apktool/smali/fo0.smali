.class public abstract Lfo0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final t:Li53;

.field public static final u:Landroid/view/animation/LinearInterpolator;

.field public static final v:Lyu4;

.field public static final w:Landroid/os/Handler;

.field public static final x:[I

.field public static final y:Ljava/lang/String;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:Landroid/animation/TimeInterpolator;

.field public final e:Landroid/animation/TimeInterpolator;

.field public final f:Landroid/animation/TimeInterpolator;

.field public final g:Landroid/view/ViewGroup;

.field public final h:Landroid/content/Context;

.field public final i:Leo0;

.field public final j:Lcom/google/android/material/snackbar/SnackbarContentLayout;

.field public final k:Lu60;

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:Z

.field public final r:Landroid/view/accessibility/AccessibilityManager;

.field public final s:Lao0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Led;->b:Li53;

    .line 2
    .line 3
    sput-object v0, Lfo0;->t:Li53;

    .line 4
    .line 5
    sget-object v0, Led;->a:Landroid/view/animation/LinearInterpolator;

    .line 6
    .line 7
    sput-object v0, Lfo0;->u:Landroid/view/animation/LinearInterpolator;

    .line 8
    .line 9
    sget-object v0, Led;->d:Lyu4;

    .line 10
    .line 11
    sput-object v0, Lfo0;->v:Lyu4;

    .line 12
    .line 13
    const v0, 0x7f04053e

    .line 14
    .line 15
    .line 16
    filled-new-array {v0}, [I

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Lfo0;->x:[I

    .line 21
    .line 22
    const-class v0, Lfo0;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sput-object v0, Lfo0;->y:Ljava/lang/String;

    .line 29
    .line 30
    new-instance v0, Landroid/os/Handler;

    .line 31
    .line 32
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    new-instance v2, Lyn0;

    .line 37
    .line 38
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 42
    .line 43
    .line 44
    sput-object v0, Lfo0;->w:Landroid/os/Handler;

    .line 45
    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;Lcom/google/android/material/snackbar/SnackbarContentLayout;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lu60;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, p0, v1}, Lu60;-><init>(Ljava/lang/Object;I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lfo0;->k:Lu60;

    .line 11
    .line 12
    new-instance v0, Lao0;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Lao0;-><init>(Lfo0;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lfo0;->s:Lao0;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    if-eqz p3, :cond_4

    .line 21
    .line 22
    if-eqz p4, :cond_3

    .line 23
    .line 24
    iput-object p2, p0, Lfo0;->g:Landroid/view/ViewGroup;

    .line 25
    .line 26
    iput-object p4, p0, Lfo0;->j:Lcom/google/android/material/snackbar/SnackbarContentLayout;

    .line 27
    .line 28
    iput-object p1, p0, Lfo0;->h:Landroid/content/Context;

    .line 29
    .line 30
    sget-object p4, Ljd4;->g:[I

    .line 31
    .line 32
    const-string v0, "Theme.AppCompat"

    .line 33
    .line 34
    invoke-static {p1, p4, v0}, Ljd4;->f(Landroid/content/Context;[ILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 38
    .line 39
    .line 40
    move-result-object p4

    .line 41
    sget-object v0, Lfo0;->x:[I

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const/4 v2, 0x0

    .line 48
    const/4 v3, -0x1

    .line 49
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 54
    .line 55
    .line 56
    if-eq v4, v3, :cond_0

    .line 57
    .line 58
    const v0, 0x7f0d0119

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    const v0, 0x7f0d007e

    .line 63
    .line 64
    .line 65
    :goto_0
    invoke-virtual {p4, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    check-cast p2, Leo0;

    .line 70
    .line 71
    iput-object p2, p0, Lfo0;->i:Leo0;

    .line 72
    .line 73
    invoke-static {p2, p0}, Leo0;->a(Leo0;Lfo0;)V

    .line 74
    .line 75
    .line 76
    instance-of p4, p3, Lcom/google/android/material/snackbar/SnackbarContentLayout;

    .line 77
    .line 78
    if-eqz p4, :cond_2

    .line 79
    .line 80
    move-object p4, p3

    .line 81
    check-cast p4, Lcom/google/android/material/snackbar/SnackbarContentLayout;

    .line 82
    .line 83
    invoke-virtual {p2}, Leo0;->getActionTextColorAlpha()F

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    const/high16 v2, 0x3f800000    # 1.0f

    .line 88
    .line 89
    cmpl-float v2, v0, v2

    .line 90
    .line 91
    if-eqz v2, :cond_1

    .line 92
    .line 93
    iget-object v2, p4, Lcom/google/android/material/snackbar/SnackbarContentLayout;->b:Landroid/widget/Button;

    .line 94
    .line 95
    invoke-virtual {v2}, Landroid/widget/TextView;->getCurrentTextColor()I

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    invoke-virtual {p4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    const v4, 0x7f040158

    .line 104
    .line 105
    .line 106
    invoke-static {p4, v4}, Ljm1;->U(Landroid/view/View;I)Landroid/util/TypedValue;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    invoke-static {v3, v4}, Lz85;->C(Landroid/content/Context;Landroid/util/TypedValue;)I

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    invoke-static {v0, v3, v2}, Lz85;->x(FII)I

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    iget-object v2, p4, Lcom/google/android/material/snackbar/SnackbarContentLayout;->b:Landroid/widget/Button;

    .line 119
    .line 120
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 121
    .line 122
    .line 123
    :cond_1
    invoke-virtual {p2}, Leo0;->getMaxInlineActionWidth()I

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    invoke-virtual {p4, v0}, Lcom/google/android/material/snackbar/SnackbarContentLayout;->setMaxInlineActionWidth(I)V

    .line 128
    .line 129
    .line 130
    :cond_2
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p2, v1}, Landroid/view/View;->setAccessibilityLiveRegion(I)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p2, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p2, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 140
    .line 141
    .line 142
    new-instance p3, Lke;

    .line 143
    .line 144
    invoke-direct {p3, p0, v1}, Lke;-><init>(Ljava/lang/Object;I)V

    .line 145
    .line 146
    .line 147
    sget-object p4, Ldl8;->a:Ljava/util/WeakHashMap;

    .line 148
    .line 149
    invoke-static {p2, p3}, Luk8;->c(Landroid/view/View;Lls5;)V

    .line 150
    .line 151
    .line 152
    new-instance p3, Lzn0;

    .line 153
    .line 154
    invoke-direct {p3, p0}, Lzn0;-><init>(Lfo0;)V

    .line 155
    .line 156
    .line 157
    invoke-static {p2, p3}, Ldl8;->n(Landroid/view/View;Lw5;)V

    .line 158
    .line 159
    .line 160
    const-string p2, "accessibility"

    .line 161
    .line 162
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object p2

    .line 166
    check-cast p2, Landroid/view/accessibility/AccessibilityManager;

    .line 167
    .line 168
    iput-object p2, p0, Lfo0;->r:Landroid/view/accessibility/AccessibilityManager;

    .line 169
    .line 170
    const/16 p2, 0xfa

    .line 171
    .line 172
    const p3, 0x7f040444

    .line 173
    .line 174
    .line 175
    invoke-static {p1, p3, p2}, Lji8;->F(Landroid/content/Context;II)I

    .line 176
    .line 177
    .line 178
    move-result p2

    .line 179
    iput p2, p0, Lfo0;->c:I

    .line 180
    .line 181
    const/16 p2, 0x96

    .line 182
    .line 183
    invoke-static {p1, p3, p2}, Lji8;->F(Landroid/content/Context;II)I

    .line 184
    .line 185
    .line 186
    move-result p2

    .line 187
    iput p2, p0, Lfo0;->a:I

    .line 188
    .line 189
    const p2, 0x7f040447

    .line 190
    .line 191
    .line 192
    const/16 p3, 0x4b

    .line 193
    .line 194
    invoke-static {p1, p2, p3}, Lji8;->F(Landroid/content/Context;II)I

    .line 195
    .line 196
    .line 197
    move-result p2

    .line 198
    iput p2, p0, Lfo0;->b:I

    .line 199
    .line 200
    sget-object p2, Lfo0;->u:Landroid/view/animation/LinearInterpolator;

    .line 201
    .line 202
    const p3, 0x7f040454

    .line 203
    .line 204
    .line 205
    invoke-static {p1, p3, p2}, Lji8;->G(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    .line 206
    .line 207
    .line 208
    move-result-object p2

    .line 209
    iput-object p2, p0, Lfo0;->d:Landroid/animation/TimeInterpolator;

    .line 210
    .line 211
    sget-object p2, Lfo0;->v:Lyu4;

    .line 212
    .line 213
    invoke-static {p1, p3, p2}, Lji8;->G(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    .line 214
    .line 215
    .line 216
    move-result-object p2

    .line 217
    iput-object p2, p0, Lfo0;->f:Landroid/animation/TimeInterpolator;

    .line 218
    .line 219
    sget-object p2, Lfo0;->t:Li53;

    .line 220
    .line 221
    invoke-static {p1, p3, p2}, Lji8;->G(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    iput-object p1, p0, Lfo0;->e:Landroid/animation/TimeInterpolator;

    .line 226
    .line 227
    return-void

    .line 228
    :cond_3
    const-string p0, "Transient bottom bar must have non-null callback"

    .line 229
    .line 230
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    throw v0

    .line 234
    :cond_4
    const-string p0, "Transient bottom bar must have non-null content"

    .line 235
    .line 236
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    throw v0
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    .line 1
    invoke-static {}, Le38;->d()Le38;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object p0, p0, Lfo0;->s:Lao0;

    .line 6
    .line 7
    iget-object v1, v0, Le38;->b:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v1

    .line 10
    :try_start_0
    invoke-virtual {v0, p0}, Le38;->e(Lao0;)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    iget-object p0, v0, Le38;->d:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p0, Lri7;

    .line 19
    .line 20
    invoke-virtual {v0, p0, p1}, Le38;->b(Lri7;I)Z

    .line 21
    .line 22
    .line 23
    goto :goto_1

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_2

    .line 26
    :cond_0
    iget-object v2, v0, Le38;->e:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v2, Lri7;

    .line 29
    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    iget-object v2, v2, Lri7;->a:Ljava/lang/ref/WeakReference;

    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    if-ne v2, p0, :cond_1

    .line 39
    .line 40
    const/4 p0, 0x1

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const/4 p0, 0x0

    .line 43
    :goto_0
    if-eqz p0, :cond_2

    .line 44
    .line 45
    iget-object p0, v0, Le38;->e:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast p0, Lri7;

    .line 48
    .line 49
    invoke-virtual {v0, p0, p1}, Le38;->b(Lri7;I)Z

    .line 50
    .line 51
    .line 52
    :cond_2
    :goto_1
    monitor-exit v1

    .line 53
    return-void

    .line 54
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    throw p0
.end method

.method public final b()Z
    .locals 4

    .line 1
    invoke-static {}, Le38;->d()Le38;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object p0, p0, Lfo0;->s:Lao0;

    .line 6
    .line 7
    iget-object v1, v0, Le38;->b:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v1

    .line 10
    :try_start_0
    invoke-virtual {v0, p0}, Le38;->e(Lao0;)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/4 v3, 0x1

    .line 15
    if-nez v2, :cond_2

    .line 16
    .line 17
    iget-object v0, v0, Le38;->e:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Lri7;

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object v0, v0, Lri7;->a:Ljava/lang/ref/WeakReference;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-ne v0, p0, :cond_0

    .line 31
    .line 32
    move p0, v3

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move p0, v2

    .line 35
    :goto_0
    if-eqz p0, :cond_1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    move v3, v2

    .line 39
    :cond_2
    :goto_1
    monitor-exit v1

    .line 40
    return v3

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    throw p0
.end method

.method public final c()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lfo0;->i:Leo0;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getMandatorySystemGestureInsets()Landroid/graphics/Insets;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, La6;->b(Landroid/graphics/Insets;)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iput v0, p0, Lfo0;->o:I

    .line 24
    .line 25
    invoke-virtual {p0}, Lfo0;->g()V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public final d()V
    .locals 3

    .line 1
    invoke-static {}, Le38;->d()Le38;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lfo0;->s:Lao0;

    .line 6
    .line 7
    iget-object v2, v0, Le38;->b:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v2

    .line 10
    :try_start_0
    invoke-virtual {v0, v1}, Le38;->e(Lao0;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    iput-object v1, v0, Le38;->d:Ljava/lang/Object;

    .line 18
    .line 19
    iget-object v1, v0, Le38;->e:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v1, Lri7;

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0}, Le38;->i()V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    iget-object v0, p0, Lfo0;->i:Leo0;

    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    instance-of v1, v0, Landroid/view/ViewGroup;

    .line 39
    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    check-cast v0, Landroid/view/ViewGroup;

    .line 43
    .line 44
    iget-object p0, p0, Lfo0;->i:Leo0;

    .line 45
    .line 46
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    return-void

    .line 50
    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    throw p0
.end method

.method public final e()V
    .locals 2

    .line 1
    invoke-static {}, Le38;->d()Le38;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object p0, p0, Lfo0;->s:Lao0;

    .line 6
    .line 7
    iget-object v1, v0, Le38;->b:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v1

    .line 10
    :try_start_0
    invoke-virtual {v0, p0}, Le38;->e(Lao0;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    iget-object p0, v0, Le38;->d:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p0, Lri7;

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Le38;->h(Lri7;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    :goto_0
    monitor-exit v1

    .line 27
    return-void

    .line 28
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw p0
.end method

.method public final f()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, Lfo0;->r:Landroid/view/accessibility/AccessibilityManager;

    .line 4
    .line 5
    if-nez v2, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    move v1, v0

    .line 22
    :goto_0
    iget-object v2, p0, Lfo0;->i:Leo0;

    .line 23
    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    new-instance v1, Lbo0;

    .line 27
    .line 28
    invoke-direct {v1, p0, v0}, Lbo0;-><init>(Ljava/lang/Object;I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    if-eqz v1, :cond_3

    .line 40
    .line 41
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 42
    .line 43
    .line 44
    :cond_3
    invoke-virtual {p0}, Lfo0;->e()V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final g()V
    .locals 7

    .line 1
    iget-object v0, p0, Lfo0;->i:Leo0;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    instance-of v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 8
    .line 9
    sget-object v3, Lfo0;->y:Ljava/lang/String;

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    const-string p0, "Unable to update margins because layout params are not MarginLayoutParams"

    .line 14
    .line 15
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-object v2, v0, Leo0;->q:Landroid/graphics/Rect;

    .line 20
    .line 21
    if-nez v2, :cond_1

    .line 22
    .line 23
    const-string p0, "Unable to update margins because original view margins are not set"

    .line 24
    .line 25
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    if-nez v2, :cond_2

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_2
    iget v2, p0, Lfo0;->l:I

    .line 37
    .line 38
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 39
    .line 40
    iget-object v3, v0, Leo0;->q:Landroid/graphics/Rect;

    .line 41
    .line 42
    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 43
    .line 44
    add-int/2addr v4, v2

    .line 45
    iget v2, v3, Landroid/graphics/Rect;->left:I

    .line 46
    .line 47
    iget v5, p0, Lfo0;->m:I

    .line 48
    .line 49
    add-int/2addr v2, v5

    .line 50
    iget v5, v3, Landroid/graphics/Rect;->right:I

    .line 51
    .line 52
    iget v6, p0, Lfo0;->n:I

    .line 53
    .line 54
    add-int/2addr v5, v6

    .line 55
    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 56
    .line 57
    iget v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 58
    .line 59
    if-ne v6, v4, :cond_4

    .line 60
    .line 61
    iget v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 62
    .line 63
    if-ne v6, v2, :cond_4

    .line 64
    .line 65
    iget v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 66
    .line 67
    if-ne v6, v5, :cond_4

    .line 68
    .line 69
    iget v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 70
    .line 71
    if-eq v6, v3, :cond_3

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_3
    const/4 v6, 0x0

    .line 75
    goto :goto_1

    .line 76
    :cond_4
    :goto_0
    const/4 v6, 0x1

    .line 77
    :goto_1
    if-eqz v6, :cond_5

    .line 78
    .line 79
    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 80
    .line 81
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 82
    .line 83
    iput v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 84
    .line 85
    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 86
    .line 87
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 88
    .line 89
    .line 90
    :cond_5
    if-nez v6, :cond_6

    .line 91
    .line 92
    iget v1, p0, Lfo0;->p:I

    .line 93
    .line 94
    iget v2, p0, Lfo0;->o:I

    .line 95
    .line 96
    if-eq v1, v2, :cond_7

    .line 97
    .line 98
    :cond_6
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 99
    .line 100
    const/16 v2, 0x1d

    .line 101
    .line 102
    if-lt v1, v2, :cond_7

    .line 103
    .line 104
    iget v1, p0, Lfo0;->o:I

    .line 105
    .line 106
    if-lez v1, :cond_7

    .line 107
    .line 108
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    instance-of v2, v1, Lhw1;

    .line 113
    .line 114
    if-eqz v2, :cond_7

    .line 115
    .line 116
    check-cast v1, Lhw1;

    .line 117
    .line 118
    iget-object v1, v1, Lhw1;->a:Lew1;

    .line 119
    .line 120
    instance-of v1, v1, Lcom/google/android/material/behavior/SwipeDismissBehavior;

    .line 121
    .line 122
    if-eqz v1, :cond_7

    .line 123
    .line 124
    iget-object p0, p0, Lfo0;->k:Lu60;

    .line 125
    .line 126
    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 130
    .line 131
    .line 132
    :cond_7
    :goto_2
    return-void
.end method
