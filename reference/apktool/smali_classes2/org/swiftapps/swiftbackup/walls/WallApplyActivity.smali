.class public final Lorg/swiftapps/swiftbackup/walls/WallApplyActivity;
.super Lil0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static O:Lao8;


# instance fields
.field public final K:Ll90;

.field public final L:Lgv7;

.field public final M:I

.field public final N:I


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lil0;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lvf;

    .line 5
    .line 6
    const/16 v1, 0xb

    .line 7
    .line 8
    invoke-direct {v0, p0, v1}, Lvf;-><init>(Lil0;I)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Ll90;

    .line 12
    .line 13
    const-class v2, Lco8;

    .line 14
    .line 15
    invoke-static {v2}, Lph6;->a(Ljava/lang/Class;)Ln81;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    new-instance v3, Lwf;

    .line 20
    .line 21
    const/16 v4, 0xa

    .line 22
    .line 23
    invoke-direct {v3, p0, v4}, Lwf;-><init>(Lil0;I)V

    .line 24
    .line 25
    .line 26
    new-instance v5, Lj51;

    .line 27
    .line 28
    const/4 v6, 0x7

    .line 29
    invoke-direct {v5, p0, v6}, Lj51;-><init>(Lil0;I)V

    .line 30
    .line 31
    .line 32
    invoke-direct {v1, v2, v3, v0, v5}, Ll90;-><init>(Ln81;Lbt3;Lbt3;Lbt3;)V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/walls/WallApplyActivity;->K:Ll90;

    .line 36
    .line 37
    new-instance v0, Lno5;

    .line 38
    .line 39
    invoke-direct {v0, p0, v4}, Lno5;-><init>(Ljava/lang/Object;I)V

    .line 40
    .line 41
    .line 42
    new-instance v1, Lgv7;

    .line 43
    .line 44
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 45
    .line 46
    .line 47
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/walls/WallApplyActivity;->L:Lgv7;

    .line 48
    .line 49
    const v0, 0x7f010044

    .line 50
    .line 51
    .line 52
    iput v0, p0, Lorg/swiftapps/swiftbackup/walls/WallApplyActivity;->M:I

    .line 53
    .line 54
    const v0, 0x7f010045

    .line 55
    .line 56
    .line 57
    iput v0, p0, Lorg/swiftapps/swiftbackup/walls/WallApplyActivity;->N:I

    .line 58
    .line 59
    return-void
.end method


# virtual methods
.method public final bridge synthetic F()Lqo0;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/walls/WallApplyActivity;->O()Lco8;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final N()Lno8;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/walls/WallApplyActivity;->L:Lgv7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lno8;

    .line 8
    .line 9
    return-object p0
.end method

.method public final O()Lco8;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/walls/WallApplyActivity;->K:Ll90;

    .line 2
    .line 3
    invoke-virtual {p0}, Ll90;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lco8;

    .line 8
    .line 9
    return-object p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Lil0;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lorg/swiftapps/swiftbackup/walls/WallApplyActivity;->O:Lao8;

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 9
    .line 10
    invoke-virtual {p0}, Lk28;->r()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/4 v4, 0x4

    .line 15
    const/4 v5, 0x0

    .line 16
    const-string v2, "Wall apply data parcel null"

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-static/range {v0 .. v5}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/walls/WallApplyActivity;->N()Lno8;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v0, v0, Lno8;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Lk28;->setContentView(Landroid/view/View;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const/16 v1, 0x600

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/walls/WallApplyActivity;->N()Lno8;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iget-object v0, v0, Lno8;->b:Lcom/google/android/material/appbar/AppBarLayout;

    .line 53
    .line 54
    const v1, 0x7f0604e6

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    invoke-static {}, Lb67;->f()Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-eqz v1, :cond_1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 76
    .line 77
    .line 78
    :goto_0
    const v0, 0x7f0604d9

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    invoke-static {}, Lb67;->f()Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-eqz v1, :cond_2

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 97
    .line 98
    .line 99
    :goto_1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/walls/WallApplyActivity;->N()Lno8;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    iget-object v0, v0, Lno8;->b:Lcom/google/android/material/appbar/AppBarLayout;

    .line 104
    .line 105
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 113
    .line 114
    invoke-virtual {p0}, Lzm;->getResources()Landroid/content/res/Resources;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    const-string v2, "dimen"

    .line 119
    .line 120
    const-string v3, "android"

    .line 121
    .line 122
    const-string v4, "status_bar_height"

    .line 123
    .line 124
    invoke-virtual {v1, v4, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    const/4 v2, 0x0

    .line 129
    if-lez v1, :cond_3

    .line 130
    .line 131
    invoke-virtual {p0}, Lzm;->getResources()Landroid/content/res/Resources;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    goto :goto_2

    .line 140
    :cond_3
    move v1, v2

    .line 141
    :goto_2
    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/walls/WallApplyActivity;->N()Lno8;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    iget-object v1, v1, Lno8;->b:Lcom/google/android/material/appbar/AppBarLayout;

    .line 149
    .line 150
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/walls/WallApplyActivity;->N()Lno8;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    iget-object v0, v0, Lno8;->e:Landroidx/appcompat/widget/Toolbar;

    .line 158
    .line 159
    invoke-virtual {p0, v0}, Lzm;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0}, Lzm;->getSupportActionBar()Lnc8;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    const/4 v1, 0x1

    .line 167
    if-eqz v0, :cond_4

    .line 168
    .line 169
    invoke-virtual {v0, v1}, Lnc8;->Z(Z)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0, v2}, Lnc8;->b0(Z)V

    .line 173
    .line 174
    .line 175
    :cond_4
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/walls/WallApplyActivity;->N()Lno8;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    iget-object v0, v0, Lno8;->c:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 180
    .line 181
    const/16 v2, 0x8

    .line 182
    .line 183
    invoke-virtual {v0, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setVisibility(I)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/walls/WallApplyActivity;->N()Lno8;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    iget-object v0, v0, Lno8;->c:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 191
    .line 192
    invoke-static {v0}, Lsz8;->a(Landroid/view/View;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/walls/WallApplyActivity;->N()Lno8;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    iget-object v0, v0, Lno8;->c:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 200
    .line 201
    invoke-static {v0, v1}, Lsz8;->e0(Landroid/view/View;Z)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/walls/WallApplyActivity;->N()Lno8;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    iget-object v0, v0, Lno8;->d:Lcom/github/chrisbanes/photoview/PhotoView;

    .line 209
    .line 210
    invoke-virtual {v0, v1}, Lcom/github/chrisbanes/photoview/PhotoView;->setZoomable(Z)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/walls/WallApplyActivity;->N()Lno8;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    iget-object v0, v0, Lno8;->d:Lcom/github/chrisbanes/photoview/PhotoView;

    .line 218
    .line 219
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 220
    .line 221
    invoke-virtual {v0, v2}, Lcom/github/chrisbanes/photoview/PhotoView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/walls/WallApplyActivity;->N()Lno8;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    iget-object v0, v0, Lno8;->d:Lcom/github/chrisbanes/photoview/PhotoView;

    .line 229
    .line 230
    new-instance v2, Landroid/graphics/ColorMatrix;

    .line 231
    .line 232
    invoke-direct {v2}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 233
    .line 234
    .line 235
    const/4 v3, 0x0

    .line 236
    invoke-virtual {v2, v3}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 237
    .line 238
    .line 239
    new-instance v3, Landroid/graphics/ColorMatrixColorFilter;

    .line 240
    .line 241
    invoke-direct {v3, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/walls/WallApplyActivity;->O()Lco8;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    iget-boolean v2, v0, Lco8;->g:Z

    .line 252
    .line 253
    if-eqz v2, :cond_5

    .line 254
    .line 255
    goto :goto_3

    .line 256
    :cond_5
    iput-boolean v1, v0, Lco8;->g:Z

    .line 257
    .line 258
    iget-object v0, v0, Lco8;->i:Lex6;

    .line 259
    .line 260
    new-instance v1, Lq63;

    .line 261
    .line 262
    iget-object v2, p1, Lao8;->a:Lyn8;

    .line 263
    .line 264
    iget-object v2, v2, Lyn8;->a:Lq63;

    .line 265
    .line 266
    invoke-virtual {v2}, Lq63;->v()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v2

    .line 270
    const/4 v3, 0x2

    .line 271
    invoke-direct {v1, v2, v3}, Lq63;-><init>(Ljava/lang/String;I)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v0, v1}, Lex6;->k(Ljava/lang/Object;)V

    .line 275
    .line 276
    .line 277
    :goto_3
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/walls/WallApplyActivity;->O()Lco8;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    iget-object v0, v0, Lco8;->i:Lex6;

    .line 282
    .line 283
    new-instance v1, Lbz;

    .line 284
    .line 285
    const/16 v2, 0x9

    .line 286
    .line 287
    invoke-direct {v1, v2, p0, p1}, Lbz;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 288
    .line 289
    .line 290
    new-instance p1, Ljs;

    .line 291
    .line 292
    const/4 v2, 0x3

    .line 293
    invoke-direct {p1, v2, v1}, Ljs;-><init>(ILmt3;)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v0, p0, p1}, Lzy4;->e(Lfu4;Les5;)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/walls/WallApplyActivity;->O()Lco8;

    .line 300
    .line 301
    .line 302
    move-result-object p1

    .line 303
    iget-object p1, p1, Lco8;->j:Lix6;

    .line 304
    .line 305
    new-instance v0, Lcz;

    .line 306
    .line 307
    const/16 v1, 0x13

    .line 308
    .line 309
    invoke-direct {v0, p0, v1}, Lcz;-><init>(Ljava/lang/Object;I)V

    .line 310
    .line 311
    .line 312
    new-instance v1, Ljs;

    .line 313
    .line 314
    invoke-direct {v1, v2, v0}, Ljs;-><init>(ILmt3;)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {p1, p0, v1}, Lix6;->e(Lfu4;Les5;)V

    .line 318
    .line 319
    .line 320
    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lzm;->getMenuInflater()Landroid/view/MenuInflater;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const v1, 0x7f0f002d

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p0}, Lsz8;->z(Landroid/content/Context;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x0

    .line 19
    move v2, v1

    .line 20
    :goto_0
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-ge v2, v3, :cond_2

    .line 25
    .line 26
    add-int/lit8 v3, v2, 0x1

    .line 27
    .line 28
    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    const v5, 0x7f0a0054

    .line 39
    .line 40
    .line 41
    if-ne v4, v5, :cond_0

    .line 42
    .line 43
    invoke-interface {v2}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    invoke-static {p0}, Lsz8;->r(Landroid/content/Context;)I

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 62
    .line 63
    .line 64
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 65
    .line 66
    .line 67
    invoke-interface {v2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    new-instance v5, Landroid/text/SpannableStringBuilder;

    .line 72
    .line 73
    invoke-direct {v5}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-static {p0}, Lsz8;->r(Landroid/content/Context;)I

    .line 77
    .line 78
    .line 79
    move-result v6

    .line 80
    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    .line 81
    .line 82
    invoke-direct {v7, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    .line 86
    .line 87
    .line 88
    move-result v6

    .line 89
    invoke-virtual {v5, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    const/16 v8, 0x11

    .line 97
    .line 98
    invoke-virtual {v5, v7, v6, v4, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 99
    .line 100
    .line 101
    new-instance v4, Landroid/text/SpannedString;

    .line 102
    .line 103
    invoke-direct {v4, v5}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    .line 104
    .line 105
    .line 106
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_0
    invoke-static {v0}, Lsz8;->h0(I)Landroid/content/res/ColorStateList;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;

    .line 115
    .line 116
    .line 117
    :goto_1
    move v2, v3

    .line 118
    goto :goto_0

    .line 119
    :cond_1
    invoke-static {}, Ll0;->a()V

    .line 120
    .line 121
    .line 122
    return v1

    .line 123
    :cond_2
    invoke-super {p0, p1}, Lil0;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 124
    .line 125
    .line 126
    move-result p0

    .line 127
    return p0
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lorg/swiftapps/swiftbackup/walls/WallApplyActivity;->O:Lao8;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_0

    .line 10
    .line 11
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const v3, 0x7f0a0038

    .line 16
    .line 17
    .line 18
    if-ne v2, v3, :cond_1

    .line 19
    .line 20
    new-instance v0, Landroid/content/Intent;

    .line 21
    .line 22
    const-string v1, "android.intent.action.ATTACH_DATA"

    .line 23
    .line 24
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string v1, "android.intent.category.DEFAULT"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    .line 31
    .line 32
    const/4 v1, 0x1

    .line 33
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/walls/WallApplyActivity;->O()Lco8;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    iget-object v1, v1, Lco8;->i:Lex6;

    .line 41
    .line 42
    invoke-virtual {v1}, Lzy4;->d()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    check-cast v1, Lq63;

    .line 50
    .line 51
    invoke-static {v1}, Lf93;->a(Lq63;)Landroid/net/Uri;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    const-string v2, "image/jpeg"

    .line 56
    .line 57
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    .line 59
    .line 60
    const-string v1, "mimeType"

    .line 61
    .line 62
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    .line 64
    .line 65
    const v1, 0x7f1304f0

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    const/high16 v1, 0x10000000

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_1
    const v3, 0x7f0a0083

    .line 94
    .line 95
    .line 96
    if-ne v2, v3, :cond_2

    .line 97
    .line 98
    sget-object v0, Lzn4;->a:Lzn4;

    .line 99
    .line 100
    new-instance v0, Lmo3;

    .line 101
    .line 102
    const/16 v1, 0x10

    .line 103
    .line 104
    invoke-direct {v0, p0, v1}, Lmo3;-><init>(Ljava/lang/Object;I)V

    .line 105
    .line 106
    .line 107
    invoke-static {v0}, Lzn4;->c(Lbt3;)V

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_2
    const v3, 0x7f0a0054

    .line 112
    .line 113
    .line 114
    if-ne v2, v3, :cond_4

    .line 115
    .line 116
    iget-object v2, v0, Lao8;->a:Lyn8;

    .line 117
    .line 118
    iget-object v2, v2, Lyn8;->a:Lq63;

    .line 119
    .line 120
    invoke-virtual {v2}, Lq63;->v()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    sget-object v3, Lry5;->u:Ljava/lang/String;

    .line 125
    .line 126
    const/4 v3, 0x0

    .line 127
    invoke-static {v1, v3}, Lqy5;->f(ZLzn7;)Lry5;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    iget-object v4, v4, Lry5;->r:Ljava/lang/String;

    .line 132
    .line 133
    invoke-static {v2, v4, v1}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    if-eqz v2, :cond_3

    .line 138
    .line 139
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/common/Const;->d(Lzm;)Z

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    if-nez v2, :cond_3

    .line 144
    .line 145
    :goto_0
    return v1

    .line 146
    :cond_3
    new-instance v1, Lg52;

    .line 147
    .line 148
    const/16 v2, 0xc

    .line 149
    .line 150
    invoke-direct {v1, v2, p0, v0}, Lg52;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    const v0, 0x7f1301e5

    .line 154
    .line 155
    .line 156
    invoke-static {p0, v0, v1, v3}, Lorg/swiftapps/swiftbackup/common/Const;->K(Lio1;ILbt3;Lbk;)V

    .line 157
    .line 158
    .line 159
    :cond_4
    :goto_1
    invoke-super {p0, p1}, Lil0;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 160
    .line 161
    .line 162
    move-result p0

    .line 163
    return p0
.end method

.method public final onPause()V
    .locals 2

    .line 1
    iget v0, p0, Lorg/swiftapps/swiftbackup/walls/WallApplyActivity;->M:I

    .line 2
    .line 3
    iget v1, p0, Lorg/swiftapps/swiftbackup/walls/WallApplyActivity;->N:I

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Landroidx/fragment/app/u;->onPause()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onResume()V
    .locals 2

    .line 1
    iget v0, p0, Lorg/swiftapps/swiftbackup/walls/WallApplyActivity;->M:I

    .line 2
    .line 3
    iget v1, p0, Lorg/swiftapps/swiftbackup/walls/WallApplyActivity;->N:I

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Landroidx/fragment/app/u;->onResume()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final u()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method
