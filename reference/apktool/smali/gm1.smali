.class public final Lgm1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljk8;
.implements Ln59;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public final f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/material/card/MaterialCardView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lgm1;->a:Ljava/lang/Object;

    .line 25
    iput-object p2, p0, Lgm1;->b:Ljava/lang/Object;

    .line 26
    iput-object p3, p0, Lgm1;->c:Ljava/lang/Object;

    .line 27
    iput-object p4, p0, Lgm1;->d:Ljava/lang/Object;

    .line 28
    iput-object p5, p0, Lgm1;->e:Ljava/lang/Object;

    .line 29
    iput-object p6, p0, Lgm1;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/tabs/TabLayout;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lgm1;->a:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lgm1;->b:Ljava/lang/Object;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout;->getTabSelectedIndicator()Landroid/graphics/drawable/Drawable;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lgm1;->f:Ljava/lang/Object;

    .line 20
    .line 21
    return-void
.end method

.method public constructor <init>(Lke;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lyf1;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lgm1;->a:Ljava/lang/Object;

    iput-object p3, p0, Lgm1;->b:Ljava/lang/Object;

    iput-object p4, p0, Lgm1;->c:Ljava/lang/Object;

    iput-object p5, p0, Lgm1;->d:Ljava/lang/Object;

    iput-object p6, p0, Lgm1;->e:Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lgm1;->f:Ljava/lang/Object;

    return-void
.end method

.method public static a(Landroid/view/View;)Lgm1;
    .locals 9

    .line 1
    const v0, 0x7f0a01a2

    .line 2
    .line 3
    .line 4
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    check-cast v1, Landroid/widget/FrameLayout;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    const v0, 0x7f0a02ae

    .line 13
    .line 14
    .line 15
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    move-object v4, v1

    .line 20
    check-cast v4, Landroid/widget/ImageView;

    .line 21
    .line 22
    if-eqz v4, :cond_0

    .line 23
    .line 24
    const v0, 0x7f0a02b7

    .line 25
    .line 26
    .line 27
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    move-object v5, v1

    .line 32
    check-cast v5, Landroid/widget/ImageView;

    .line 33
    .line 34
    if-eqz v5, :cond_0

    .line 35
    .line 36
    const v0, 0x7f0a0414

    .line 37
    .line 38
    .line 39
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    move-object v6, v1

    .line 44
    check-cast v6, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 45
    .line 46
    if-eqz v6, :cond_0

    .line 47
    .line 48
    const v0, 0x7f0a054b

    .line 49
    .line 50
    .line 51
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    move-object v7, v1

    .line 56
    check-cast v7, Landroid/widget/TextView;

    .line 57
    .line 58
    if-eqz v7, :cond_0

    .line 59
    .line 60
    const v0, 0x7f0a05c8

    .line 61
    .line 62
    .line 63
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    move-object v8, v1

    .line 68
    check-cast v8, Landroid/widget/TextView;

    .line 69
    .line 70
    if-eqz v8, :cond_0

    .line 71
    .line 72
    new-instance v2, Lgm1;

    .line 73
    .line 74
    move-object v3, p0

    .line 75
    check-cast v3, Lcom/google/android/material/card/MaterialCardView;

    .line 76
    .line 77
    invoke-direct/range {v2 .. v8}, Lgm1;-><init>(Lcom/google/android/material/card/MaterialCardView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 78
    .line 79
    .line 80
    return-object v2

    .line 81
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    const-string v0, "Missing required view with ID: "

    .line 90
    .line 91
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    const/4 p0, 0x0

    .line 99
    return-object p0
.end method


# virtual methods
.method public b(Ljava/util/ArrayList;Lmt3;Lqt3;Lbt3;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lgm1;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->j()V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lgm1;->d:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Lhk2;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iget-object v2, v0, Lcom/google/android/material/tabs/TabLayout;->g0:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-static {p1}, Lel1;->Q0(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    const/4 v3, 0x1

    .line 32
    const/4 v4, 0x0

    .line 33
    const/4 v5, 0x0

    .line 34
    if-eqz v2, :cond_6

    .line 35
    .line 36
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Lgk2;

    .line 41
    .line 42
    iget-object v6, p0, Lgm1;->b:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v6, Landroid/content/Context;

    .line 45
    .line 46
    const v7, 0x7f0d008f

    .line 47
    .line 48
    .line 49
    invoke-static {v6, v7, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    const v6, 0x7f0a02c3

    .line 54
    .line 55
    .line 56
    invoke-static {v5, v6}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v7

    .line 60
    check-cast v7, Landroid/widget/ImageView;

    .line 61
    .line 62
    if-eqz v7, :cond_5

    .line 63
    .line 64
    const v6, 0x7f0a05ac

    .line 65
    .line 66
    .line 67
    invoke-static {v5, v6}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object v8

    .line 71
    check-cast v8, Landroid/widget/TextView;

    .line 72
    .line 73
    if-eqz v8, :cond_5

    .line 74
    .line 75
    const v6, 0x7f0a05ba

    .line 76
    .line 77
    .line 78
    invoke-static {v5, v6}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object v9

    .line 82
    check-cast v9, Landroid/widget/TextView;

    .line 83
    .line 84
    if-eqz v9, :cond_5

    .line 85
    .line 86
    check-cast v5, Landroid/widget/LinearLayout;

    .line 87
    .line 88
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    const-string v10, "#FBC02D"

    .line 96
    .line 97
    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    move-result v10

    .line 101
    invoke-static {v6, v10}, Lio4;->c(Landroid/content/Context;I)I

    .line 102
    .line 103
    .line 104
    move-result v10

    .line 105
    invoke-static {v6, v10}, Lz85;->p(Landroid/content/Context;I)Lvl1;

    .line 106
    .line 107
    .line 108
    move-result-object v6

    .line 109
    iget v10, v6, Lvl1;->b:I

    .line 110
    .line 111
    invoke-static {v10}, Lsz8;->h0(I)Landroid/content/res/ColorStateList;

    .line 112
    .line 113
    .line 114
    move-result-object v10

    .line 115
    invoke-virtual {v7, v10}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 116
    .line 117
    .line 118
    iget v6, v6, Lvl1;->c:I

    .line 119
    .line 120
    invoke-static {v6}, Lsz8;->h0(I)Landroid/content/res/ColorStateList;

    .line 121
    .line 122
    .line 123
    move-result-object v6

    .line 124
    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 125
    .line 126
    .line 127
    iget-object v6, v2, Lgk2;->a:Ljava/lang/String;

    .line 128
    .line 129
    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    .line 131
    .line 132
    iget-object v6, v2, Lgk2;->b:Ljava/lang/String;

    .line 133
    .line 134
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    .line 136
    .line 137
    iget-boolean v6, v2, Lgk2;->c:Z

    .line 138
    .line 139
    if-eqz v6, :cond_1

    .line 140
    .line 141
    move v6, v4

    .line 142
    goto :goto_1

    .line 143
    :cond_1
    const/16 v6, 0x8

    .line 144
    .line 145
    :goto_1
    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->h()Lcw7;

    .line 149
    .line 150
    .line 151
    move-result-object v6

    .line 152
    iput-object v5, v6, Lcw7;->d:Landroid/view/View;

    .line 153
    .line 154
    iget-object v5, v6, Lcw7;->f:Lfw7;

    .line 155
    .line 156
    if-eqz v5, :cond_4

    .line 157
    .line 158
    invoke-virtual {v5}, Lfw7;->e()V

    .line 159
    .line 160
    .line 161
    iget-object v7, v5, Lfw7;->a:Lcw7;

    .line 162
    .line 163
    if-eqz v7, :cond_3

    .line 164
    .line 165
    iget-object v8, v7, Lcw7;->e:Lcom/google/android/material/tabs/TabLayout;

    .line 166
    .line 167
    if-eqz v8, :cond_2

    .line 168
    .line 169
    invoke-virtual {v8}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    .line 170
    .line 171
    .line 172
    move-result v8

    .line 173
    const/4 v9, -0x1

    .line 174
    if-eq v8, v9, :cond_3

    .line 175
    .line 176
    iget v7, v7, Lcw7;->c:I

    .line 177
    .line 178
    if-ne v8, v7, :cond_3

    .line 179
    .line 180
    goto :goto_2

    .line 181
    :cond_2
    const-string p0, "Tab not attached to a TabLayout"

    .line 182
    .line 183
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    return-void

    .line 187
    :cond_3
    move v3, v4

    .line 188
    :goto_2
    invoke-virtual {v5, v3}, Lfw7;->setSelected(Z)V

    .line 189
    .line 190
    .line 191
    :cond_4
    iget-object v2, v2, Lgk2;->d:Ljava/lang/String;

    .line 192
    .line 193
    iput-object v2, v6, Lcw7;->a:Ljava/lang/String;

    .line 194
    .line 195
    invoke-virtual {v0, v6, v4}, Lcom/google/android/material/tabs/TabLayout;->b(Lcw7;Z)V

    .line 196
    .line 197
    .line 198
    goto/16 :goto_0

    .line 199
    .line 200
    :cond_5
    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 201
    .line 202
    .line 203
    move-result-object p0

    .line 204
    invoke-virtual {p0, v6}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object p0

    .line 208
    const-string p1, "Missing required view with ID: "

    .line 209
    .line 210
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object p0

    .line 214
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    return-void

    .line 218
    :cond_6
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    .line 219
    .line 220
    .line 221
    move-result v1

    .line 222
    if-gt v1, v3, :cond_7

    .line 223
    .line 224
    invoke-virtual {v0, v5}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 225
    .line 226
    .line 227
    goto :goto_3

    .line 228
    :cond_7
    iget-object v1, p0, Lgm1;->f:Ljava/lang/Object;

    .line 229
    .line 230
    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 231
    .line 232
    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 233
    .line 234
    .line 235
    :goto_3
    new-instance v1, Lhk2;

    .line 236
    .line 237
    invoke-direct {v1, p1, p3, p0, p2}, Lhk2;-><init>(Ljava/util/ArrayList;Lqt3;Lgm1;Lmt3;)V

    .line 238
    .line 239
    .line 240
    iput-object v1, p0, Lgm1;->d:Ljava/lang/Object;

    .line 241
    .line 242
    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->a(Lxv7;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    .line 246
    .line 247
    .line 248
    move-result p2

    .line 249
    if-lez p2, :cond_17

    .line 250
    .line 251
    iget-object p2, p0, Lgm1;->c:Ljava/lang/Object;

    .line 252
    .line 253
    check-cast p2, Ljava/util/ArrayList;

    .line 254
    .line 255
    if-eqz p2, :cond_8

    .line 256
    .line 257
    new-instance p3, Ljava/util/ArrayList;

    .line 258
    .line 259
    const/16 p4, 0xa

    .line 260
    .line 261
    invoke-static {p2, p4}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 262
    .line 263
    .line 264
    move-result p4

    .line 265
    invoke-direct {p3, p4}, Ljava/util/ArrayList;-><init>(I)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 269
    .line 270
    .line 271
    move-result-object p2

    .line 272
    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 273
    .line 274
    .line 275
    move-result p4

    .line 276
    if-eqz p4, :cond_9

    .line 277
    .line 278
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object p4

    .line 282
    check-cast p4, Lgk2;

    .line 283
    .line 284
    iget-object p4, p4, Lgk2;->d:Ljava/lang/String;

    .line 285
    .line 286
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    .line 288
    .line 289
    goto :goto_4

    .line 290
    :cond_8
    move-object p3, v5

    .line 291
    :cond_9
    if-nez p3, :cond_a

    .line 292
    .line 293
    sget-object p3, Lov2;->a:Lov2;

    .line 294
    .line 295
    :cond_a
    new-instance p2, Ljava/util/ArrayList;

    .line 296
    .line 297
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 298
    .line 299
    .line 300
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 301
    .line 302
    .line 303
    move-result-object p4

    .line 304
    :cond_b
    :goto_5
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    .line 305
    .line 306
    .line 307
    move-result v1

    .line 308
    if-eqz v1, :cond_d

    .line 309
    .line 310
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object v1

    .line 314
    check-cast v1, Lgk2;

    .line 315
    .line 316
    if-eqz v1, :cond_c

    .line 317
    .line 318
    iget-object v1, v1, Lgk2;->d:Ljava/lang/String;

    .line 319
    .line 320
    goto :goto_6

    .line 321
    :cond_c
    move-object v1, v5

    .line 322
    :goto_6
    if-eqz v1, :cond_b

    .line 323
    .line 324
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    .line 326
    .line 327
    goto :goto_5

    .line 328
    :cond_d
    invoke-virtual {p3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 329
    .line 330
    .line 331
    move-result p2

    .line 332
    const-string p3, "Required value was null."

    .line 333
    .line 334
    if-nez p2, :cond_f

    .line 335
    .line 336
    invoke-virtual {v0, v4}, Lcom/google/android/material/tabs/TabLayout;->g(I)Lcw7;

    .line 337
    .line 338
    .line 339
    move-result-object p2

    .line 340
    if-eqz p2, :cond_e

    .line 341
    .line 342
    goto :goto_b

    .line 343
    :cond_e
    invoke-static {p3}, Lc6;->f(Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    return-void

    .line 347
    :cond_f
    iget-object p2, p0, Lgm1;->e:Ljava/lang/Object;

    .line 348
    .line 349
    check-cast p2, Ljava/lang/String;

    .line 350
    .line 351
    if-eqz p2, :cond_14

    .line 352
    .line 353
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    .line 354
    .line 355
    .line 356
    move-result p4

    .line 357
    if-nez p4, :cond_11

    .line 358
    .line 359
    :cond_10
    move-object v2, v5

    .line 360
    goto :goto_9

    .line 361
    :cond_11
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    .line 362
    .line 363
    .line 364
    move-result p4

    .line 365
    move v1, v4

    .line 366
    :goto_7
    if-ge v1, p4, :cond_10

    .line 367
    .line 368
    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->g(I)Lcw7;

    .line 369
    .line 370
    .line 371
    move-result-object v2

    .line 372
    if-eqz v2, :cond_12

    .line 373
    .line 374
    iget-object v6, v2, Lcw7;->a:Ljava/lang/String;

    .line 375
    .line 376
    goto :goto_8

    .line 377
    :cond_12
    move-object v6, v5

    .line 378
    :goto_8
    invoke-static {v6, p2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 379
    .line 380
    .line 381
    move-result v6

    .line 382
    if-eqz v6, :cond_13

    .line 383
    .line 384
    goto :goto_9

    .line 385
    :cond_13
    add-int/lit8 v1, v1, 0x1

    .line 386
    .line 387
    goto :goto_7

    .line 388
    :goto_9
    move-object p2, v2

    .line 389
    goto :goto_a

    .line 390
    :cond_14
    move-object p2, v5

    .line 391
    :goto_a
    if-nez p2, :cond_16

    .line 392
    .line 393
    invoke-virtual {v0, v4}, Lcom/google/android/material/tabs/TabLayout;->g(I)Lcw7;

    .line 394
    .line 395
    .line 396
    move-result-object p2

    .line 397
    if-eqz p2, :cond_15

    .line 398
    .line 399
    goto :goto_b

    .line 400
    :cond_15
    invoke-static {p3}, Lc6;->f(Ljava/lang/String;)V

    .line 401
    .line 402
    .line 403
    return-void

    .line 404
    :cond_16
    :goto_b
    invoke-virtual {v0, v5, v3}, Lcom/google/android/material/tabs/TabLayout;->k(Lcw7;Z)V

    .line 405
    .line 406
    .line 407
    invoke-virtual {v0, p2, v3}, Lcom/google/android/material/tabs/TabLayout;->k(Lcw7;Z)V

    .line 408
    .line 409
    .line 410
    goto :goto_c

    .line 411
    :cond_17
    invoke-interface {p4}, Lbt3;->invoke()Ljava/lang/Object;

    .line 412
    .line 413
    .line 414
    :goto_c
    invoke-static {p1}, Lel1;->Q0(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 415
    .line 416
    .line 417
    move-result-object p1

    .line 418
    iput-object p1, p0, Lgm1;->c:Ljava/lang/Object;

    .line 419
    .line 420
    return-void
.end method

.method public getRoot()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lgm1;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/google/android/material/card/MaterialCardView;

    .line 4
    .line 5
    return-object p0
.end method

.method public h(Lf59;)V
    .locals 5

    .line 1
    check-cast p1, Lb69;

    .line 2
    .line 3
    new-instance v0, Lt54;

    .line 4
    .line 5
    iget-object v1, p0, Lgm1;->a:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ljava/lang/String;

    .line 8
    .line 9
    iget-object v2, p0, Lgm1;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, Ljava/lang/String;

    .line 12
    .line 13
    iget-object v3, p0, Lgm1;->c:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v3, Ljava/lang/String;

    .line 16
    .line 17
    iget-object v4, p0, Lgm1;->d:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v4, Ljava/lang/String;

    .line 20
    .line 21
    iget-object p1, p1, Lb69;->b:Ljava/lang/String;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-static {v1}, Lly8;->e(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iput-object v1, v0, Lt54;->a:Ljava/lang/Object;

    .line 30
    .line 31
    invoke-static {v2}, Lly8;->e(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iput-object v2, v0, Lt54;->b:Ljava/lang/Object;

    .line 35
    .line 36
    iput-object v3, v0, Lt54;->c:Ljava/lang/Object;

    .line 37
    .line 38
    iput-object v4, v0, Lt54;->d:Ljava/lang/Object;

    .line 39
    .line 40
    iput-object p1, v0, Lt54;->e:Ljava/lang/Object;

    .line 41
    .line 42
    iget-object p1, p0, Lgm1;->f:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast p1, Lke;

    .line 45
    .line 46
    iget-object v1, p0, Lgm1;->e:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v1, Lyf1;

    .line 49
    .line 50
    iget-object v2, p1, Lke;->b:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v2, Lg59;

    .line 53
    .line 54
    new-instance v3, Lgd;

    .line 55
    .line 56
    invoke-direct {v3, p1, v1, p0}, Lgd;-><init>(Lke;Lyf1;Lgm1;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    iget-object p0, v2, Lg59;->a:Ld59;

    .line 63
    .line 64
    iget-object p1, v2, Lg59;->f:Ljava/lang/String;

    .line 65
    .line 66
    const-string v1, "/signupNewUser"

    .line 67
    .line 68
    invoke-virtual {p0, v1, p1}, Lao;->r(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    new-instance v1, Lg69;

    .line 73
    .line 74
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 75
    .line 76
    .line 77
    iget-object p0, p0, Lao;->b:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast p0, Lxt1;

    .line 80
    .line 81
    invoke-static {p1, v0, v3, v1, p0}, Lms8;->U(Ljava/lang/String;Le59;Ln59;Lf59;Lxt1;)V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public zza(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lzv1;->t(Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p0, p0, Lgm1;->e:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lyf1;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lyf1;->a(Lcom/google/android/gms/common/api/Status;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
