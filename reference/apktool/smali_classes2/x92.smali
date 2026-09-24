.class public final Lx92;
.super Lnd6;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnd6<",
        "Ly92;",
        ">;"
    }
.end annotation


# instance fields
.field public final d:Ll90;

.field public e:Z

.field public f:Z

.field public final k:Lgv7;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lnd6;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lt92;

    .line 5
    .line 6
    const-string v4, "getCtx()Lorg/swiftapps/swiftbackup/home/HomeActivity;"

    .line 7
    .line 8
    const/4 v5, 0x0

    .line 9
    const-class v2, Lx92;

    .line 10
    .line 11
    const-string v3, "ctx"

    .line 12
    .line 13
    move-object v1, p0

    .line 14
    invoke-direct/range {v0 .. v5}, Ld96;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    new-instance p0, Lt30;

    .line 18
    .line 19
    const/4 v2, 0x2

    .line 20
    invoke-direct {p0, v0, v2}, Lt30;-><init>(Ljava/lang/Object;I)V

    .line 21
    .line 22
    .line 23
    sget-object v0, Lys4;->c:Lys4;

    .line 24
    .line 25
    invoke-static {v0, p0}, Ljd4;->x(Lys4;Lbt3;)Los4;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const-class v0, Lfa2;

    .line 30
    .line 31
    invoke-static {v0}, Lph6;->a(Ljava/lang/Class;)Ln81;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    new-instance v2, Lu30;

    .line 36
    .line 37
    const/4 v3, 0x1

    .line 38
    invoke-direct {v2, p0, v3}, Lu30;-><init>(Ljava/lang/Object;I)V

    .line 39
    .line 40
    .line 41
    new-instance v4, Lv30;

    .line 42
    .line 43
    invoke-direct {v4, p0, v3}, Lv30;-><init>(Ljava/lang/Object;I)V

    .line 44
    .line 45
    .line 46
    new-instance v5, Lv92;

    .line 47
    .line 48
    invoke-direct {v5, v1, p0}, Lv92;-><init>(Lx92;Los4;)V

    .line 49
    .line 50
    .line 51
    new-instance p0, Ll90;

    .line 52
    .line 53
    invoke-direct {p0, v0, v2, v5, v4}, Ll90;-><init>(Ln81;Lbt3;Lbt3;Lbt3;)V

    .line 54
    .line 55
    .line 56
    iput-object p0, v1, Lx92;->d:Ll90;

    .line 57
    .line 58
    iput-boolean v3, v1, Lx92;->e:Z

    .line 59
    .line 60
    iput-boolean v3, v1, Lx92;->f:Z

    .line 61
    .line 62
    new-instance p0, Lah;

    .line 63
    .line 64
    const/16 v0, 0x16

    .line 65
    .line 66
    invoke-direct {p0, v1, v0}, Lah;-><init>(Ljava/lang/Object;I)V

    .line 67
    .line 68
    .line 69
    new-instance v0, Lgv7;

    .line 70
    .line 71
    invoke-direct {v0, p0}, Lgv7;-><init>(Lbt3;)V

    .line 72
    .line 73
    .line 74
    iput-object v0, v1, Lx92;->k:Lgv7;

    .line 75
    .line 76
    return-void
.end method


# virtual methods
.method public final l()Lorg/swiftapps/swiftbackup/home/HomeActivity;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/o;->getActivity()Landroidx/fragment/app/u;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    check-cast p0, Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 9
    .line 10
    return-object p0
.end method

.method public final m()Lfa2;
    .locals 0

    .line 1
    iget-object p0, p0, Lx92;->d:Ll90;

    .line 2
    .line 3
    invoke-virtual {p0}, Ll90;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lfa2;

    .line 8
    .line 9
    return-object p0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 19

    .line 1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const v0, 0x7f0d0073

    .line 5
    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    move-object/from16 v2, p1

    .line 9
    .line 10
    move-object/from16 v3, p2

    .line 11
    .line 12
    invoke-virtual {v2, v0, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const v1, 0x7f0a01bc

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const/4 v3, 0x0

    .line 24
    const-string v4, "Missing required view with ID: "

    .line 25
    .line 26
    if-eqz v2, :cond_2

    .line 27
    .line 28
    invoke-static {v2}, Lxc6;->a(Landroid/view/View;)Lxc6;

    .line 29
    .line 30
    .line 31
    move-result-object v7

    .line 32
    const v1, 0x7f0a01c0

    .line 33
    .line 34
    .line 35
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    if-eqz v2, :cond_2

    .line 40
    .line 41
    invoke-static {v2}, Lxc6;->a(Landroid/view/View;)Lxc6;

    .line 42
    .line 43
    .line 44
    move-result-object v8

    .line 45
    const v1, 0x7f0a01c1

    .line 46
    .line 47
    .line 48
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    if-eqz v2, :cond_2

    .line 53
    .line 54
    invoke-static {v2}, Lxc6;->a(Landroid/view/View;)Lxc6;

    .line 55
    .line 56
    .line 57
    move-result-object v9

    .line 58
    const v1, 0x7f0a01c2

    .line 59
    .line 60
    .line 61
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    if-eqz v2, :cond_2

    .line 66
    .line 67
    invoke-static {v2}, Lxc6;->a(Landroid/view/View;)Lxc6;

    .line 68
    .line 69
    .line 70
    move-result-object v10

    .line 71
    const v1, 0x7f0a01c3

    .line 72
    .line 73
    .line 74
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    if-eqz v2, :cond_2

    .line 79
    .line 80
    const v1, 0x7f0a02c5

    .line 81
    .line 82
    .line 83
    invoke-static {v2, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    move-object v13, v5

    .line 88
    check-cast v13, Landroid/widget/ImageView;

    .line 89
    .line 90
    if-eqz v13, :cond_1

    .line 91
    .line 92
    const v1, 0x7f0a03da

    .line 93
    .line 94
    .line 95
    invoke-static {v2, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 100
    .line 101
    if-eqz v5, :cond_1

    .line 102
    .line 103
    const v1, 0x7f0a03e3

    .line 104
    .line 105
    .line 106
    invoke-static {v2, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    move-object v14, v5

    .line 111
    check-cast v14, Landroidx/recyclerview/widget/RecyclerView;

    .line 112
    .line 113
    if-eqz v14, :cond_1

    .line 114
    .line 115
    const v1, 0x7f0a03e4

    .line 116
    .line 117
    .line 118
    invoke-static {v2, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    move-object v15, v5

    .line 123
    check-cast v15, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 124
    .line 125
    if-eqz v15, :cond_1

    .line 126
    .line 127
    const v1, 0x7f0a0487

    .line 128
    .line 129
    .line 130
    invoke-static {v2, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    if-eqz v5, :cond_1

    .line 135
    .line 136
    invoke-static {v5}, Lca2;->a(Landroid/view/View;)Lca2;

    .line 137
    .line 138
    .line 139
    move-result-object v16

    .line 140
    const v1, 0x7f0a0492

    .line 141
    .line 142
    .line 143
    invoke-static {v2, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 144
    .line 145
    .line 146
    move-result-object v5

    .line 147
    check-cast v5, Landroid/widget/LinearLayout;

    .line 148
    .line 149
    if-eqz v5, :cond_1

    .line 150
    .line 151
    const v1, 0x7f0a0500

    .line 152
    .line 153
    .line 154
    invoke-static {v2, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 155
    .line 156
    .line 157
    move-result-object v5

    .line 158
    move-object/from16 v17, v5

    .line 159
    .line 160
    check-cast v17, Landroid/widget/TextView;

    .line 161
    .line 162
    if-eqz v17, :cond_1

    .line 163
    .line 164
    const v1, 0x7f0a0501

    .line 165
    .line 166
    .line 167
    invoke-static {v2, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 168
    .line 169
    .line 170
    move-result-object v5

    .line 171
    move-object/from16 v18, v5

    .line 172
    .line 173
    check-cast v18, Landroid/widget/TextView;

    .line 174
    .line 175
    if-eqz v18, :cond_1

    .line 176
    .line 177
    const v1, 0x7f0a058c

    .line 178
    .line 179
    .line 180
    invoke-static {v2, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 181
    .line 182
    .line 183
    move-result-object v5

    .line 184
    check-cast v5, Landroid/widget/TextView;

    .line 185
    .line 186
    if-eqz v5, :cond_1

    .line 187
    .line 188
    new-instance v11, Lpp0;

    .line 189
    .line 190
    move-object v12, v2

    .line 191
    check-cast v12, Lorg/swiftapps/swiftbackup/views/SwiftSegmentedCardGroup;

    .line 192
    .line 193
    invoke-direct/range {v11 .. v18}, Lpp0;-><init>(Lorg/swiftapps/swiftbackup/views/SwiftSegmentedCardGroup;Landroid/widget/ImageView;Landroidx/recyclerview/widget/RecyclerView;Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;Lca2;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 194
    .line 195
    .line 196
    move-object v6, v0

    .line 197
    check-cast v6, Landroidx/core/widget/NestedScrollView;

    .line 198
    .line 199
    const v1, 0x7f0a01c5

    .line 200
    .line 201
    .line 202
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    if-eqz v2, :cond_2

    .line 207
    .line 208
    move-object v1, v2

    .line 209
    check-cast v1, Lcom/google/android/material/card/MaterialCardView;

    .line 210
    .line 211
    const v5, 0x7f0a02b7

    .line 212
    .line 213
    .line 214
    invoke-static {v2, v5}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 215
    .line 216
    .line 217
    move-result-object v12

    .line 218
    check-cast v12, Landroid/widget/ImageView;

    .line 219
    .line 220
    if-eqz v12, :cond_0

    .line 221
    .line 222
    const v5, 0x7f0a05ac

    .line 223
    .line 224
    .line 225
    invoke-static {v2, v5}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 226
    .line 227
    .line 228
    move-result-object v12

    .line 229
    check-cast v12, Landroid/widget/TextView;

    .line 230
    .line 231
    if-eqz v12, :cond_0

    .line 232
    .line 233
    new-instance v12, Lfu;

    .line 234
    .line 235
    invoke-direct {v12, v1}, Lfu;-><init>(Ljava/lang/Object;)V

    .line 236
    .line 237
    .line 238
    const v1, 0x7f0a0233

    .line 239
    .line 240
    .line 241
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 242
    .line 243
    .line 244
    move-result-object v2

    .line 245
    if-eqz v2, :cond_2

    .line 246
    .line 247
    invoke-static {v2}, Luf3;->a(Landroid/view/View;)Luf3;

    .line 248
    .line 249
    .line 250
    move-result-object v13

    .line 251
    const v1, 0x7f0a0409

    .line 252
    .line 253
    .line 254
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 255
    .line 256
    .line 257
    move-result-object v2

    .line 258
    move-object v14, v2

    .line 259
    check-cast v14, Landroidx/recyclerview/widget/RecyclerView;

    .line 260
    .line 261
    if-eqz v14, :cond_2

    .line 262
    .line 263
    new-instance v5, Ly92;

    .line 264
    .line 265
    invoke-direct/range {v5 .. v14}, Ly92;-><init>(Landroidx/core/widget/NestedScrollView;Lxc6;Lxc6;Lxc6;Lxc6;Lpp0;Lfu;Luf3;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 266
    .line 267
    .line 268
    move-object/from16 v0, p0

    .line 269
    .line 270
    iput-object v5, v0, Lrl0;->b:Ljk8;

    .line 271
    .line 272
    invoke-virtual {v5}, Ly92;->getRoot()Landroid/view/View;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 277
    .line 278
    .line 279
    return-object v0

    .line 280
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    return-object v3

    .line 296
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v0

    .line 308
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    return-object v3

    .line 312
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    return-object v3
.end method

.method public final onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/o;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/o;->isAdded()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lx92;->m()Lfa2;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sget-object v1, Lzn4;->a:Lzn4;

    .line 15
    .line 16
    new-instance v1, Lej;

    .line 17
    .line 18
    const/16 v2, 0x11

    .line 19
    .line 20
    invoke-direct {v1, v0, v2}, Lej;-><init>(Ljava/lang/Object;I)V

    .line 21
    .line 22
    .line 23
    invoke-static {v1}, Lzn4;->c(Lbt3;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lx92;->m()Lfa2;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lfa2;->c()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lx92;->l()Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/HomeActivity;->Z()Lw44;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    iget-object p0, p0, Lw44;->c:Lx44;

    .line 42
    .line 43
    iget-object p0, p0, Lx44;->a:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p0, Lcom/google/android/material/appbar/AppBarLayout;

    .line 46
    .line 47
    const v0, 0x7f0a01c4

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setLiftOnScrollTargetViewId(I)V

    .line 51
    .line 52
    .line 53
    :cond_0
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 15

    .line 1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-super/range {p0 .. p2}, Lnd6;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lrl0;->b:Ljk8;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    check-cast v1, Ly92;

    .line 13
    .line 14
    iget-object v1, v1, Ly92;->n:Luf3;

    .line 15
    .line 16
    const v2, 0x7f13024f

    .line 17
    .line 18
    .line 19
    :try_start_0
    invoke-virtual {p0, v2}, Landroidx/fragment/app/o;->getString(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    iget-object v3, v1, Luf3;->b:Landroid/widget/TextView;

    .line 27
    .line 28
    const-string v4, "\n"

    .line 29
    .line 30
    invoke-static {v2, v4, v2}, Lnq7;->C0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    :catch_0
    iget-object v1, v1, Luf3;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 38
    .line 39
    new-instance v2, Les;

    .line 40
    .line 41
    const/4 v8, 0x6

    .line 42
    invoke-direct {v2, p0, v8}, Les;-><init>(Ljava/lang/Object;I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    .line 47
    .line 48
    sget-object v1, Lg00;->a:Lg00;

    .line 49
    .line 50
    invoke-static {}, Lg00;->x()Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    const/4 v9, 0x0

    .line 55
    if-eqz v1, :cond_0

    .line 56
    .line 57
    iget-object v1, p0, Lrl0;->b:Ljk8;

    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    check-cast v1, Ly92;

    .line 63
    .line 64
    iget-object v1, v1, Ly92;->k:Lfu;

    .line 65
    .line 66
    iget-object v1, v1, Lfu;->a:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast v1, Lcom/google/android/material/card/MaterialCardView;

    .line 69
    .line 70
    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 71
    .line 72
    .line 73
    :cond_0
    sget-object v10, Lzc6;->y:Lgv7;

    .line 74
    .line 75
    invoke-virtual {v10}, Lgv7;->getValue()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    check-cast v1, Ljava/lang/Boolean;

    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    invoke-static {v1}, Lyc6;->e(Z)Ljava/util/ArrayList;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    iget-object v2, p0, Lrl0;->b:Ljk8;

    .line 90
    .line 91
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    check-cast v2, Ly92;

    .line 95
    .line 96
    iget-object v2, v2, Ly92;->e:Lxc6;

    .line 97
    .line 98
    const/4 v6, 0x0

    .line 99
    const/16 v7, 0x70

    .line 100
    .line 101
    const v3, 0x7f13043f

    .line 102
    .line 103
    .line 104
    const v4, 0x7f08017c

    .line 105
    .line 106
    .line 107
    const/4 v5, 0x0

    .line 108
    move-object v0, p0

    .line 109
    invoke-static/range {v0 .. v7}, Lnd6;->j(Lnd6;Ljava/util/List;Lxc6;IIZLbh;I)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v10}, Lgv7;->getValue()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    check-cast v1, Ljava/lang/Boolean;

    .line 117
    .line 118
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    invoke-static {v1}, Lyc6;->c(Z)Ljava/util/ArrayList;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    iget-object v2, p0, Lrl0;->b:Ljk8;

    .line 127
    .line 128
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    check-cast v2, Ly92;

    .line 132
    .line 133
    iget-object v2, v2, Ly92;->c:Lxc6;

    .line 134
    .line 135
    const v3, 0x7f13043d

    .line 136
    .line 137
    .line 138
    const v4, 0x7f0800f9

    .line 139
    .line 140
    .line 141
    invoke-static/range {v0 .. v7}, Lnd6;->j(Lnd6;Ljava/util/List;Lxc6;IIZLbh;I)V

    .line 142
    .line 143
    .line 144
    invoke-static {}, Lyc6;->d()Ljava/util/List;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    iget-object v2, p0, Lrl0;->b:Ljk8;

    .line 149
    .line 150
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 151
    .line 152
    .line 153
    check-cast v2, Ly92;

    .line 154
    .line 155
    iget-object v2, v2, Ly92;->d:Lxc6;

    .line 156
    .line 157
    const v3, 0x7f13043e

    .line 158
    .line 159
    .line 160
    const v4, 0x7f08014b

    .line 161
    .line 162
    .line 163
    invoke-static/range {v0 .. v7}, Lnd6;->j(Lnd6;Ljava/util/List;Lxc6;IIZLbh;I)V

    .line 164
    .line 165
    .line 166
    iget-object v1, p0, Lrl0;->b:Ljk8;

    .line 167
    .line 168
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 169
    .line 170
    .line 171
    check-cast v1, Ly92;

    .line 172
    .line 173
    iget-object v1, v1, Ly92;->p:Landroidx/recyclerview/widget/RecyclerView;

    .line 174
    .line 175
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 176
    .line 177
    invoke-virtual {p0}, Landroidx/fragment/app/o;->getContext()Landroid/content/Context;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/a;)V

    .line 185
    .line 186
    .line 187
    iget-object v1, p0, Lrl0;->b:Ljk8;

    .line 188
    .line 189
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 190
    .line 191
    .line 192
    check-cast v1, Ly92;

    .line 193
    .line 194
    iget-object v1, v1, Ly92;->p:Landroidx/recyclerview/widget/RecyclerView;

    .line 195
    .line 196
    iget-object v2, p0, Lx92;->k:Lgv7;

    .line 197
    .line 198
    invoke-virtual {v2}, Lgv7;->getValue()Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    check-cast v2, Lqo5;

    .line 203
    .line 204
    new-instance v3, Ljf;

    .line 205
    .line 206
    const/4 v4, 0x4

    .line 207
    invoke-direct {v3, v4, v2, p0}, Ljf;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 208
    .line 209
    .line 210
    iput-object v3, v2, Lqo5;->n:Lmt3;

    .line 211
    .line 212
    new-instance v3, Lnu;

    .line 213
    .line 214
    invoke-direct {v3, v4}, Lnu;-><init>(I)V

    .line 215
    .line 216
    .line 217
    iput-object v3, v2, Lqo5;->o:Lnu;

    .line 218
    .line 219
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lhg6;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {p0}, Lx92;->m()Lfa2;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    iget-object v2, v1, Lfa2;->f:Lex6;

    .line 227
    .line 228
    invoke-static {}, Lg00;->r()Landroid/content/pm/PackageManager;

    .line 229
    .line 230
    .line 231
    move-result-object v3

    .line 232
    const-string v5, "android.hardware.telephony"

    .line 233
    .line 234
    invoke-virtual {v3, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 235
    .line 236
    .line 237
    move-result v3

    .line 238
    const/4 v5, 0x1

    .line 239
    const/4 v6, 0x0

    .line 240
    :try_start_1
    sget-object v7, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 241
    .line 242
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 243
    .line 244
    .line 245
    move-result-object v7

    .line 246
    invoke-static {v7}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    .line 247
    .line 248
    .line 249
    move-result-object v7

    .line 250
    if-eqz v7, :cond_1

    .line 251
    .line 252
    invoke-virtual {v7}, Landroid/app/WallpaperManager;->isWallpaperSupported()Z

    .line 253
    .line 254
    .line 255
    move-result v7

    .line 256
    if-eqz v7, :cond_1

    .line 257
    .line 258
    move v7, v5

    .line 259
    goto :goto_0

    .line 260
    :cond_1
    move v7, v9

    .line 261
    :goto_0
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 262
    .line 263
    .line 264
    move-result-object v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 265
    goto :goto_1

    .line 266
    :catch_1
    move-object v7, v6

    .line 267
    :goto_1
    if-eqz v7, :cond_2

    .line 268
    .line 269
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 270
    .line 271
    .line 272
    move-result v7

    .line 273
    goto :goto_2

    .line 274
    :cond_2
    move v7, v9

    .line 275
    :goto_2
    new-instance v10, Ljava/util/ArrayList;

    .line 276
    .line 277
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 278
    .line 279
    .line 280
    sget-object v11, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 281
    .line 282
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 283
    .line 284
    .line 285
    move-result-object v11

    .line 286
    const v12, 0x7f130079

    .line 287
    .line 288
    .line 289
    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v11

    .line 293
    new-instance v12, Ld71;

    .line 294
    .line 295
    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    .line 296
    .line 297
    .line 298
    iput v5, v12, Ld71;->a:I

    .line 299
    .line 300
    const-string v13, ""

    .line 301
    .line 302
    if-nez v11, :cond_3

    .line 303
    .line 304
    move-object v11, v13

    .line 305
    :cond_3
    iput-object v11, v12, Ld71;->b:Ljava/lang/String;

    .line 306
    .line 307
    const v11, 0x7f0800bf

    .line 308
    .line 309
    .line 310
    iput v11, v12, Ld71;->c:I

    .line 311
    .line 312
    const v11, 0x7f06002a

    .line 313
    .line 314
    .line 315
    iput v11, v12, Ld71;->d:I

    .line 316
    .line 317
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    .line 319
    .line 320
    const/4 v11, 0x2

    .line 321
    if-eqz v3, :cond_5

    .line 322
    .line 323
    const v12, 0x7f130348

    .line 324
    .line 325
    .line 326
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 327
    .line 328
    .line 329
    move-result-object v14

    .line 330
    invoke-virtual {v14, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v12

    .line 334
    new-instance v14, Ld71;

    .line 335
    .line 336
    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    .line 337
    .line 338
    .line 339
    iput v11, v14, Ld71;->a:I

    .line 340
    .line 341
    if-nez v12, :cond_4

    .line 342
    .line 343
    move-object v12, v13

    .line 344
    :cond_4
    iput-object v12, v14, Ld71;->b:Ljava/lang/String;

    .line 345
    .line 346
    const v12, 0x7f08017c

    .line 347
    .line 348
    .line 349
    iput v12, v14, Ld71;->c:I

    .line 350
    .line 351
    const v12, 0x7f06045b

    .line 352
    .line 353
    .line 354
    iput v12, v14, Ld71;->d:I

    .line 355
    .line 356
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    .line 358
    .line 359
    :cond_5
    const/4 v12, 0x3

    .line 360
    if-eqz v3, :cond_7

    .line 361
    .line 362
    const v3, 0x7f1300e3

    .line 363
    .line 364
    .line 365
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 366
    .line 367
    .line 368
    move-result-object v14

    .line 369
    invoke-virtual {v14, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v3

    .line 373
    new-instance v14, Ld71;

    .line 374
    .line 375
    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    .line 376
    .line 377
    .line 378
    iput v12, v14, Ld71;->a:I

    .line 379
    .line 380
    if-nez v3, :cond_6

    .line 381
    .line 382
    move-object v3, v13

    .line 383
    :cond_6
    iput-object v3, v14, Ld71;->b:Ljava/lang/String;

    .line 384
    .line 385
    const v3, 0x7f0800f9

    .line 386
    .line 387
    .line 388
    iput v3, v14, Ld71;->c:I

    .line 389
    .line 390
    const v3, 0x7f06006c

    .line 391
    .line 392
    .line 393
    iput v3, v14, Ld71;->d:I

    .line 394
    .line 395
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    .line 397
    .line 398
    :cond_7
    const v3, 0x7f130281

    .line 399
    .line 400
    .line 401
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 402
    .line 403
    .line 404
    move-result-object v14

    .line 405
    invoke-virtual {v14, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v3

    .line 409
    new-instance v14, Ld71;

    .line 410
    .line 411
    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    .line 412
    .line 413
    .line 414
    iput v8, v14, Ld71;->a:I

    .line 415
    .line 416
    if-nez v3, :cond_8

    .line 417
    .line 418
    move-object v3, v13

    .line 419
    :cond_8
    iput-object v3, v14, Ld71;->b:Ljava/lang/String;

    .line 420
    .line 421
    const v3, 0x7f08014b

    .line 422
    .line 423
    .line 424
    iput v3, v14, Ld71;->c:I

    .line 425
    .line 426
    const v3, 0x7f0600d1

    .line 427
    .line 428
    .line 429
    iput v3, v14, Ld71;->d:I

    .line 430
    .line 431
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    .line 433
    .line 434
    if-eqz v7, :cond_a

    .line 435
    .line 436
    const v3, 0x7f1305a3

    .line 437
    .line 438
    .line 439
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 440
    .line 441
    .line 442
    move-result-object v7

    .line 443
    invoke-virtual {v7, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object v3

    .line 447
    new-instance v7, Ld71;

    .line 448
    .line 449
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 450
    .line 451
    .line 452
    iput v4, v7, Ld71;->a:I

    .line 453
    .line 454
    if-nez v3, :cond_9

    .line 455
    .line 456
    move-object v3, v13

    .line 457
    :cond_9
    iput-object v3, v7, Ld71;->b:Ljava/lang/String;

    .line 458
    .line 459
    const v3, 0x7f080196

    .line 460
    .line 461
    .line 462
    iput v3, v7, Ld71;->c:I

    .line 463
    .line 464
    const v3, 0x7f0604da

    .line 465
    .line 466
    .line 467
    iput v3, v7, Ld71;->d:I

    .line 468
    .line 469
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 470
    .line 471
    .line 472
    :cond_a
    const v3, 0x7f1305b0

    .line 473
    .line 474
    .line 475
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 476
    .line 477
    .line 478
    move-result-object v4

    .line 479
    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 480
    .line 481
    .line 482
    move-result-object v3

    .line 483
    new-instance v4, Ld71;

    .line 484
    .line 485
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 486
    .line 487
    .line 488
    const/4 v7, 0x5

    .line 489
    iput v7, v4, Ld71;->a:I

    .line 490
    .line 491
    if-nez v3, :cond_b

    .line 492
    .line 493
    goto :goto_3

    .line 494
    :cond_b
    move-object v13, v3

    .line 495
    :goto_3
    iput-object v13, v4, Ld71;->b:Ljava/lang/String;

    .line 496
    .line 497
    const v3, 0x7f080212

    .line 498
    .line 499
    .line 500
    iput v3, v4, Ld71;->c:I

    .line 501
    .line 502
    const v3, 0x7f0604ef

    .line 503
    .line 504
    .line 505
    iput v3, v4, Ld71;->d:I

    .line 506
    .line 507
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 508
    .line 509
    .line 510
    invoke-virtual {v2, v10}, Lex6;->k(Ljava/lang/Object;)V

    .line 511
    .line 512
    .line 513
    invoke-virtual {v1}, Lfa2;->c()V

    .line 514
    .line 515
    .line 516
    sget-object v2, Lorg/swiftapps/swiftbackup/model/StorageInfoLocal;->Companion:Lorg/swiftapps/swiftbackup/model/StorageInfoLocal$a;

    .line 517
    .line 518
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/model/StorageInfoLocal$a;->getSavedStorageInfo()Lorg/swiftapps/swiftbackup/model/StorageInfoLocal$Success;

    .line 519
    .line 520
    .line 521
    move-result-object v2

    .line 522
    iget-object v3, v1, Lfa2;->c:Lex6;

    .line 523
    .line 524
    if-eqz v2, :cond_c

    .line 525
    .line 526
    invoke-virtual {v3, v2}, Lex6;->k(Ljava/lang/Object;)V

    .line 527
    .line 528
    .line 529
    goto :goto_4

    .line 530
    :cond_c
    sget-object v2, Lorg/swiftapps/swiftbackup/model/StorageInfoLocal$c;->INSTANCE:Lorg/swiftapps/swiftbackup/model/StorageInfoLocal$c;

    .line 531
    .line 532
    invoke-virtual {v3, v2}, Lex6;->k(Ljava/lang/Object;)V

    .line 533
    .line 534
    .line 535
    :goto_4
    sget-object v2, Lzn4;->a:Lzn4;

    .line 536
    .line 537
    new-instance v2, Llj;

    .line 538
    .line 539
    invoke-direct {v2, v1, v6, v11}, Llj;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 540
    .line 541
    .line 542
    invoke-static {v6, v2}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 543
    .line 544
    .line 545
    invoke-virtual {p0}, Lx92;->l()Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 546
    .line 547
    .line 548
    move-result-object v1

    .line 549
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/home/HomeActivity;->a0()Lc64;

    .line 550
    .line 551
    .line 552
    move-result-object v1

    .line 553
    iget-object v1, v1, Lc64;->j:Lgv7;

    .line 554
    .line 555
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 556
    .line 557
    .line 558
    move-result-object v1

    .line 559
    check-cast v1, Lex6;

    .line 560
    .line 561
    invoke-virtual {p0}, Landroidx/fragment/app/o;->getViewLifecycleOwner()Landroidx/fragment/app/f0;

    .line 562
    .line 563
    .line 564
    move-result-object v2

    .line 565
    new-instance v3, Ls92;

    .line 566
    .line 567
    invoke-direct {v3, p0, v9}, Ls92;-><init>(Lx92;I)V

    .line 568
    .line 569
    .line 570
    new-instance v4, Ls30;

    .line 571
    .line 572
    invoke-direct {v4, v12, v3}, Ls30;-><init>(ILmt3;)V

    .line 573
    .line 574
    .line 575
    invoke-virtual {v1, v2, v4}, Lzy4;->e(Lfu4;Les5;)V

    .line 576
    .line 577
    .line 578
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->a()Lorg/swiftapps/swiftbackup/SwiftApp;

    .line 579
    .line 580
    .line 581
    move-result-object v1

    .line 582
    iget-object v1, v1, Lorg/swiftapps/swiftbackup/SwiftApp;->a:Lex6;

    .line 583
    .line 584
    invoke-virtual {p0}, Landroidx/fragment/app/o;->getViewLifecycleOwner()Landroidx/fragment/app/f0;

    .line 585
    .line 586
    .line 587
    move-result-object v2

    .line 588
    new-instance v3, Lhj;

    .line 589
    .line 590
    const/16 v4, 0xd

    .line 591
    .line 592
    invoke-direct {v3, p0, v4}, Lhj;-><init>(Ljava/lang/Object;I)V

    .line 593
    .line 594
    .line 595
    new-instance v4, Ls30;

    .line 596
    .line 597
    invoke-direct {v4, v12, v3}, Ls30;-><init>(ILmt3;)V

    .line 598
    .line 599
    .line 600
    invoke-virtual {v1, v2, v4}, Lzy4;->e(Lfu4;Les5;)V

    .line 601
    .line 602
    .line 603
    invoke-virtual {p0}, Lx92;->m()Lfa2;

    .line 604
    .line 605
    .line 606
    move-result-object v1

    .line 607
    iget-object v1, v1, Lfa2;->c:Lex6;

    .line 608
    .line 609
    invoke-virtual {v1}, Lzy4;->d()Ljava/lang/Object;

    .line 610
    .line 611
    .line 612
    move-result-object v1

    .line 613
    if-nez v1, :cond_d

    .line 614
    .line 615
    move v1, v5

    .line 616
    goto :goto_5

    .line 617
    :cond_d
    move v1, v9

    .line 618
    :goto_5
    iput-boolean v1, p0, Lx92;->e:Z

    .line 619
    .line 620
    invoke-virtual {p0}, Lx92;->m()Lfa2;

    .line 621
    .line 622
    .line 623
    move-result-object v1

    .line 624
    iget-object v1, v1, Lfa2;->c:Lex6;

    .line 625
    .line 626
    invoke-virtual {p0}, Landroidx/fragment/app/o;->getViewLifecycleOwner()Landroidx/fragment/app/f0;

    .line 627
    .line 628
    .line 629
    move-result-object v2

    .line 630
    new-instance v3, Lw92;

    .line 631
    .line 632
    invoke-direct {v3, p0, v9}, Lw92;-><init>(Ljava/lang/Object;I)V

    .line 633
    .line 634
    .line 635
    invoke-virtual {v1, v2, v3}, Lzy4;->e(Lfu4;Les5;)V

    .line 636
    .line 637
    .line 638
    invoke-virtual {p0}, Lx92;->m()Lfa2;

    .line 639
    .line 640
    .line 641
    move-result-object v1

    .line 642
    iget-object v1, v1, Lfa2;->d:Lex6;

    .line 643
    .line 644
    invoke-virtual {v1}, Lzy4;->d()Ljava/lang/Object;

    .line 645
    .line 646
    .line 647
    move-result-object v1

    .line 648
    if-nez v1, :cond_e

    .line 649
    .line 650
    move v9, v5

    .line 651
    :cond_e
    iput-boolean v9, p0, Lx92;->f:Z

    .line 652
    .line 653
    invoke-virtual {p0}, Lx92;->m()Lfa2;

    .line 654
    .line 655
    .line 656
    move-result-object v1

    .line 657
    iget-object v1, v1, Lfa2;->d:Lex6;

    .line 658
    .line 659
    invoke-virtual {p0}, Landroidx/fragment/app/o;->getViewLifecycleOwner()Landroidx/fragment/app/f0;

    .line 660
    .line 661
    .line 662
    move-result-object v2

    .line 663
    new-instance v3, Lqv5;

    .line 664
    .line 665
    invoke-direct {v3, p0, v11}, Lqv5;-><init>(Ljava/lang/Object;I)V

    .line 666
    .line 667
    .line 668
    invoke-virtual {v1, v2, v3}, Lzy4;->e(Lfu4;Les5;)V

    .line 669
    .line 670
    .line 671
    invoke-virtual {p0}, Lx92;->m()Lfa2;

    .line 672
    .line 673
    .line 674
    move-result-object v1

    .line 675
    iget-object v1, v1, Lfa2;->e:Lix6;

    .line 676
    .line 677
    invoke-virtual {p0}, Landroidx/fragment/app/o;->getViewLifecycleOwner()Landroidx/fragment/app/f0;

    .line 678
    .line 679
    .line 680
    move-result-object v2

    .line 681
    new-instance v3, Lox;

    .line 682
    .line 683
    const/16 v4, 0xa

    .line 684
    .line 685
    invoke-direct {v3, p0, v4}, Lox;-><init>(Ljava/lang/Object;I)V

    .line 686
    .line 687
    .line 688
    new-instance v4, Ls30;

    .line 689
    .line 690
    invoke-direct {v4, v12, v3}, Ls30;-><init>(ILmt3;)V

    .line 691
    .line 692
    .line 693
    invoke-virtual {v1, v2, v4}, Lix6;->e(Lfu4;Les5;)V

    .line 694
    .line 695
    .line 696
    invoke-virtual {p0}, Lx92;->m()Lfa2;

    .line 697
    .line 698
    .line 699
    move-result-object v1

    .line 700
    iget-object v1, v1, Lfa2;->f:Lex6;

    .line 701
    .line 702
    invoke-virtual {p0}, Landroidx/fragment/app/o;->getViewLifecycleOwner()Landroidx/fragment/app/f0;

    .line 703
    .line 704
    .line 705
    move-result-object v2

    .line 706
    new-instance v3, Lcz;

    .line 707
    .line 708
    invoke-direct {v3, p0, v8}, Lcz;-><init>(Ljava/lang/Object;I)V

    .line 709
    .line 710
    .line 711
    new-instance v4, Ls30;

    .line 712
    .line 713
    invoke-direct {v4, v12, v3}, Ls30;-><init>(ILmt3;)V

    .line 714
    .line 715
    .line 716
    invoke-virtual {v1, v2, v4}, Lzy4;->e(Lfu4;Les5;)V

    .line 717
    .line 718
    .line 719
    invoke-virtual {p0}, Lx92;->m()Lfa2;

    .line 720
    .line 721
    .line 722
    move-result-object v1

    .line 723
    iget-object v1, v1, Lfa2;->g:Lex6;

    .line 724
    .line 725
    invoke-virtual {p0}, Landroidx/fragment/app/o;->getViewLifecycleOwner()Landroidx/fragment/app/f0;

    .line 726
    .line 727
    .line 728
    move-result-object v2

    .line 729
    new-instance v3, Lu10;

    .line 730
    .line 731
    invoke-direct {v3, p0, v8}, Lu10;-><init>(Ljava/lang/Object;I)V

    .line 732
    .line 733
    .line 734
    new-instance v4, Ls30;

    .line 735
    .line 736
    invoke-direct {v4, v12, v3}, Ls30;-><init>(ILmt3;)V

    .line 737
    .line 738
    .line 739
    invoke-virtual {v1, v2, v4}, Lzy4;->e(Lfu4;Les5;)V

    .line 740
    .line 741
    .line 742
    invoke-virtual {p0}, Lx92;->m()Lfa2;

    .line 743
    .line 744
    .line 745
    move-result-object v1

    .line 746
    iget-object v1, v1, Lfa2;->h:Lix6;

    .line 747
    .line 748
    invoke-virtual {p0}, Landroidx/fragment/app/o;->getViewLifecycleOwner()Landroidx/fragment/app/f0;

    .line 749
    .line 750
    .line 751
    move-result-object v2

    .line 752
    new-instance v3, Ls92;

    .line 753
    .line 754
    invoke-direct {v3, p0, v5}, Ls92;-><init>(Lx92;I)V

    .line 755
    .line 756
    .line 757
    new-instance v4, Ls30;

    .line 758
    .line 759
    invoke-direct {v4, v12, v3}, Ls30;-><init>(ILmt3;)V

    .line 760
    .line 761
    .line 762
    invoke-virtual {v1, v2, v4}, Lix6;->e(Lfu4;Les5;)V

    .line 763
    .line 764
    .line 765
    sget-object v1, Lso5;->a:Lso5;

    .line 766
    .line 767
    invoke-virtual {v1}, Lso5;->a()V

    .line 768
    .line 769
    .line 770
    sget-object v1, Lso5;->d:Lex6;

    .line 771
    .line 772
    invoke-virtual {p0}, Landroidx/fragment/app/o;->getViewLifecycleOwner()Landroidx/fragment/app/f0;

    .line 773
    .line 774
    .line 775
    move-result-object v2

    .line 776
    new-instance v3, Lpx;

    .line 777
    .line 778
    invoke-direct {v3, p0, v7}, Lpx;-><init>(Ljava/lang/Object;I)V

    .line 779
    .line 780
    .line 781
    new-instance v0, Ls30;

    .line 782
    .line 783
    invoke-direct {v0, v12, v3}, Ls30;-><init>(ILmt3;)V

    .line 784
    .line 785
    .line 786
    invoke-virtual {v1, v2, v0}, Lzy4;->e(Lfu4;Les5;)V

    .line 787
    .line 788
    .line 789
    return-void
.end method
