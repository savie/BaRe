.class public final Lrj3;
.super Lu35;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final Q:Lil0;

.field public final R:I

.field public final S:Z

.field public final T:Lgv7;

.field public final U:Lgv7;

.field public final V:Lgv7;

.field public final W:Lgv7;

.field public final X:Lgv7;

.field public final Y:Loi0;

.field public Z:Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;

.field public a0:Ljava/util/List;

.field public b0:Lqt3;


# direct methods
.method public constructor <init>(Lil0;ZLorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;I)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    and-int/lit8 v2, p4, 0x2

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    const v2, 0x7f13008f

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const v2, 0x7f1304bb

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-static {}, Lq05;->getEntries()Ljx2;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    new-instance v4, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    check-cast v3, Lz3;

    .line 26
    .line 27
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    new-instance v5, Lw3;

    .line 31
    .line 32
    invoke-direct {v5, v3}, Lw3;-><init>(Lz3;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    :goto_1
    invoke-virtual {v5}, Lw3;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_2

    .line 40
    .line 41
    invoke-virtual {v5}, Lw3;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    move-object v6, v3

    .line 46
    check-cast v6, Lq05;

    .line 47
    .line 48
    const/4 v7, 0x6

    .line 49
    invoke-virtual {v6, v7}, Lq05;->isCheckedInExpansion(I)Z

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    if-eqz v6, :cond_1

    .line 54
    .line 55
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    const/4 v5, 0x0

    .line 64
    if-nez v3, :cond_3

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_3
    move-object v4, v5

    .line 68
    :goto_2
    if-nez v4, :cond_4

    .line 69
    .line 70
    sget-object v3, Lq05;->DEVICE:Lq05;

    .line 71
    .line 72
    invoke-static {v3}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    :cond_4
    and-int/lit8 v3, p4, 0x10

    .line 77
    .line 78
    if-eqz v3, :cond_7

    .line 79
    .line 80
    invoke-static {}, Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;->getEntries()Ljx2;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    check-cast v3, Lz3;

    .line 85
    .line 86
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    new-instance v6, Lw3;

    .line 90
    .line 91
    invoke-direct {v6, v3}, Lw3;-><init>(Lz3;)V

    .line 92
    .line 93
    .line 94
    :cond_5
    invoke-virtual {v6}, Lw3;->hasNext()Z

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    if-eqz v3, :cond_6

    .line 99
    .line 100
    invoke-virtual {v6}, Lw3;->next()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    move-object v7, v3

    .line 105
    check-cast v7, Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;

    .line 106
    .line 107
    invoke-virtual {v7}, Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;->isCheckedInExpansion()Z

    .line 108
    .line 109
    .line 110
    move-result v7

    .line 111
    if-eqz v7, :cond_5

    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_6
    move-object v3, v5

    .line 115
    :goto_3
    check-cast v3, Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;

    .line 116
    .line 117
    if-nez v3, :cond_8

    .line 118
    .line 119
    sget-object v3, Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;->Single:Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;

    .line 120
    .line 121
    goto :goto_4

    .line 122
    :cond_7
    move-object/from16 v3, p3

    .line 123
    .line 124
    :cond_8
    :goto_4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    const v6, 0x7f0d00a9

    .line 131
    .line 132
    .line 133
    invoke-static {v1, v6, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 134
    .line 135
    .line 136
    move-result-object v6

    .line 137
    const v7, 0x7f0a00e2

    .line 138
    .line 139
    .line 140
    invoke-static {v6, v7}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 141
    .line 142
    .line 143
    move-result-object v8

    .line 144
    move-object v11, v8

    .line 145
    check-cast v11, Lcom/google/android/material/button/MaterialButton;

    .line 146
    .line 147
    if-eqz v11, :cond_9

    .line 148
    .line 149
    move-object v10, v6

    .line 150
    check-cast v10, Landroidx/core/widget/NestedScrollView;

    .line 151
    .line 152
    const v7, 0x7f0a02fe

    .line 153
    .line 154
    .line 155
    invoke-static {v6, v7}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 156
    .line 157
    .line 158
    move-result-object v8

    .line 159
    move-object v12, v8

    .line 160
    check-cast v12, Landroid/widget/LinearLayout;

    .line 161
    .line 162
    if-eqz v12, :cond_9

    .line 163
    .line 164
    const v7, 0x7f0a0405

    .line 165
    .line 166
    .line 167
    invoke-static {v6, v7}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 168
    .line 169
    .line 170
    move-result-object v8

    .line 171
    move-object v13, v8

    .line 172
    check-cast v13, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 173
    .line 174
    if-eqz v13, :cond_9

    .line 175
    .line 176
    const v7, 0x7f0a0488

    .line 177
    .line 178
    .line 179
    invoke-static {v6, v7}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 180
    .line 181
    .line 182
    move-result-object v8

    .line 183
    if-eqz v8, :cond_9

    .line 184
    .line 185
    invoke-static {v8}, Lcp1;->e(Landroid/view/View;)Lcp1;

    .line 186
    .line 187
    .line 188
    move-result-object v14

    .line 189
    const v7, 0x7f0a048c

    .line 190
    .line 191
    .line 192
    invoke-static {v6, v7}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 193
    .line 194
    .line 195
    move-result-object v8

    .line 196
    if-eqz v8, :cond_9

    .line 197
    .line 198
    invoke-static {v8}, Lcp1;->e(Landroid/view/View;)Lcp1;

    .line 199
    .line 200
    .line 201
    move-result-object v15

    .line 202
    new-instance v9, Lsj3;

    .line 203
    .line 204
    invoke-direct/range {v9 .. v15}, Lsj3;-><init>(Landroidx/core/widget/NestedScrollView;Lcom/google/android/material/button/MaterialButton;Landroid/widget/LinearLayout;Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;Lcp1;Lcp1;)V

    .line 205
    .line 206
    .line 207
    const/16 v5, 0xc

    .line 208
    .line 209
    invoke-direct {v0, v1, v9, v5}, Lu35;-><init>(Lk28;Ljk8;I)V

    .line 210
    .line 211
    .line 212
    iput-object v1, v0, Lrj3;->Q:Lil0;

    .line 213
    .line 214
    iput v2, v0, Lrj3;->R:I

    .line 215
    .line 216
    move/from16 v1, p2

    .line 217
    .line 218
    iput-boolean v1, v0, Lrj3;->S:Z

    .line 219
    .line 220
    new-instance v1, Lck;

    .line 221
    .line 222
    const/16 v2, 0x12

    .line 223
    .line 224
    invoke-direct {v1, v0, v2}, Lck;-><init>(Ljava/lang/Object;I)V

    .line 225
    .line 226
    .line 227
    new-instance v2, Lgv7;

    .line 228
    .line 229
    invoke-direct {v2, v1}, Lgv7;-><init>(Lbt3;)V

    .line 230
    .line 231
    .line 232
    iput-object v2, v0, Lrj3;->T:Lgv7;

    .line 233
    .line 234
    new-instance v1, Ldk;

    .line 235
    .line 236
    const/16 v2, 0x17

    .line 237
    .line 238
    invoke-direct {v1, v0, v2}, Ldk;-><init>(Ljava/lang/Object;I)V

    .line 239
    .line 240
    .line 241
    new-instance v2, Lgv7;

    .line 242
    .line 243
    invoke-direct {v2, v1}, Lgv7;-><init>(Lbt3;)V

    .line 244
    .line 245
    .line 246
    iput-object v2, v0, Lrj3;->U:Lgv7;

    .line 247
    .line 248
    new-instance v1, Lek;

    .line 249
    .line 250
    const/16 v2, 0x19

    .line 251
    .line 252
    invoke-direct {v1, v0, v2}, Lek;-><init>(Ljava/lang/Object;I)V

    .line 253
    .line 254
    .line 255
    new-instance v2, Lgv7;

    .line 256
    .line 257
    invoke-direct {v2, v1}, Lgv7;-><init>(Lbt3;)V

    .line 258
    .line 259
    .line 260
    iput-object v2, v0, Lrj3;->V:Lgv7;

    .line 261
    .line 262
    new-instance v1, Lah;

    .line 263
    .line 264
    const/16 v2, 0x1a

    .line 265
    .line 266
    invoke-direct {v1, v0, v2}, Lah;-><init>(Ljava/lang/Object;I)V

    .line 267
    .line 268
    .line 269
    new-instance v2, Lgv7;

    .line 270
    .line 271
    invoke-direct {v2, v1}, Lgv7;-><init>(Lbt3;)V

    .line 272
    .line 273
    .line 274
    iput-object v2, v0, Lrj3;->W:Lgv7;

    .line 275
    .line 276
    new-instance v1, Lbh;

    .line 277
    .line 278
    const/16 v2, 0x16

    .line 279
    .line 280
    invoke-direct {v1, v0, v2}, Lbh;-><init>(Ljava/lang/Object;I)V

    .line 281
    .line 282
    .line 283
    new-instance v2, Lgv7;

    .line 284
    .line 285
    invoke-direct {v2, v1}, Lgv7;-><init>(Lbt3;)V

    .line 286
    .line 287
    .line 288
    iput-object v2, v0, Lrj3;->X:Lgv7;

    .line 289
    .line 290
    new-instance v1, Loi0;

    .line 291
    .line 292
    new-instance v2, Ljava/util/ArrayList;

    .line 293
    .line 294
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 295
    .line 296
    .line 297
    invoke-direct {v1, v2}, Loi0;-><init>(Ljava/util/ArrayList;)V

    .line 298
    .line 299
    .line 300
    iput-object v1, v0, Lrj3;->Y:Loi0;

    .line 301
    .line 302
    iput-object v3, v0, Lrj3;->Z:Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;

    .line 303
    .line 304
    iput-object v4, v0, Lrj3;->a0:Ljava/util/List;

    .line 305
    .line 306
    return-void

    .line 307
    :cond_9
    invoke-virtual {v6}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    const-string v1, "Missing required view with ID: "

    .line 316
    .line 317
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    throw v5
.end method


# virtual methods
.method public final j(Lao3;Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;)V
    .locals 10

    .line 1
    invoke-virtual {p2}, Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;->isPremium()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lorg/swiftapps/swiftbackup/common/V;->INSTANCE:Lorg/swiftapps/swiftbackup/common/V;

    .line 10
    .line 11
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/common/V;->getA()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    move v8, v2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v8, v1

    .line 20
    :goto_0
    invoke-virtual {p2}, Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;->getTitleStringRes()I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    invoke-virtual {p2}, Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;->getDescriptionStringRes()I

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    iget-object v0, p0, Lrj3;->Z:Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;

    .line 29
    .line 30
    if-ne v0, p2, :cond_1

    .line 31
    .line 32
    move v6, v2

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    move v6, v1

    .line 35
    :goto_1
    invoke-virtual {p2}, Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;->isPremium()Z

    .line 36
    .line 37
    .line 38
    move-result v7

    .line 39
    new-instance v9, Lqj3;

    .line 40
    .line 41
    invoke-direct {v9, v8, p0, p2}, Lqj3;-><init>(ZLrj3;Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;)V

    .line 42
    .line 43
    .line 44
    move-object v3, p1

    .line 45
    invoke-virtual/range {v3 .. v9}, Lao3;->a(IIZZZLbt3;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final k(Lqt3;)V
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iput-object v1, v0, Lrj3;->b0:Lqt3;

    .line 6
    .line 7
    iget-object v1, v0, Lrj3;->V:Lgv7;

    .line 8
    .line 9
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Landroid/widget/LinearLayout;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    iget-boolean v3, v0, Lrj3;->S:Z

    .line 17
    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    move v4, v2

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/16 v4, 0x8

    .line 23
    .line 24
    :goto_0
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    if-eqz v3, :cond_a

    .line 29
    .line 30
    iget-object v4, v0, Lrj3;->W:Lgv7;

    .line 31
    .line 32
    invoke-virtual {v4}, Lgv7;->getValue()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    check-cast v4, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 37
    .line 38
    new-instance v5, Lorg/swiftapps/swiftbackup/views/PreCachingGridLayoutManager;

    .line 39
    .line 40
    const/4 v6, 0x2

    .line 41
    iget-object v7, v0, Lrj3;->Q:Lil0;

    .line 42
    .line 43
    invoke-direct {v5, v7, v6}, Lorg/swiftapps/swiftbackup/views/PreCachingGridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/a;)V

    .line 47
    .line 48
    .line 49
    const/4 v5, 0x0

    .line 50
    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Lng6;)V

    .line 51
    .line 52
    .line 53
    iget-object v6, v0, Lrj3;->Y:Loi0;

    .line 54
    .line 55
    invoke-virtual {v4, v6}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lhg6;)V

    .line 56
    .line 57
    .line 58
    sget-object v4, Lorg/swiftapps/swiftbackup/common/V;->INSTANCE:Lorg/swiftapps/swiftbackup/common/V;

    .line 59
    .line 60
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/common/V;->getA()Z

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    if-nez v4, :cond_4

    .line 65
    .line 66
    iget-object v8, v0, Lrj3;->a0:Ljava/util/List;

    .line 67
    .line 68
    new-instance v9, Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 74
    .line 75
    .line 76
    move-result-object v8

    .line 77
    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    .line 79
    .line 80
    move-result v10

    .line 81
    if-eqz v10, :cond_2

    .line 82
    .line 83
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v10

    .line 87
    move-object v11, v10

    .line 88
    check-cast v11, Lq05;

    .line 89
    .line 90
    sget-object v12, Lq05;->CLOUD:Lq05;

    .line 91
    .line 92
    if-eq v11, v12, :cond_1

    .line 93
    .line 94
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_2
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    .line 99
    .line 100
    .line 101
    move-result v8

    .line 102
    if-eqz v8, :cond_3

    .line 103
    .line 104
    sget-object v8, Lq05;->DEVICE:Lq05;

    .line 105
    .line 106
    invoke-static {v8}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 107
    .line 108
    .line 109
    move-result-object v9

    .line 110
    :cond_3
    iput-object v9, v0, Lrj3;->a0:Ljava/util/List;

    .line 111
    .line 112
    :cond_4
    new-instance v8, Ljava/util/ArrayList;

    .line 113
    .line 114
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .line 116
    .line 117
    new-instance v9, Lli0;

    .line 118
    .line 119
    sget-object v10, Lq05;->DEVICE:Lq05;

    .line 120
    .line 121
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v11

    .line 125
    const v12, 0x7f1301fa

    .line 126
    .line 127
    .line 128
    invoke-virtual {v7, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v12

    .line 132
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    .line 134
    .line 135
    const v13, 0x7f080129

    .line 136
    .line 137
    .line 138
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 139
    .line 140
    .line 141
    move-result-object v13

    .line 142
    iget-object v14, v0, Lrj3;->a0:Ljava/util/List;

    .line 143
    .line 144
    invoke-interface {v14, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v15

    .line 148
    const/16 v16, 0x0

    .line 149
    .line 150
    const/16 v17, 0xd4

    .line 151
    .line 152
    move-object v14, v10

    .line 153
    move-object v10, v11

    .line 154
    move-object v11, v12

    .line 155
    const/4 v12, 0x0

    .line 156
    move-object/from16 v18, v14

    .line 157
    .line 158
    const/4 v14, 0x0

    .line 159
    invoke-direct/range {v9 .. v17}, Lli0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;ZLao;I)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    sget-object v9, Lq05;->CLOUD:Lq05;

    .line 166
    .line 167
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v20

    .line 171
    const v10, 0x7f130106

    .line 172
    .line 173
    .line 174
    invoke-virtual {v7, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v21

    .line 178
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 179
    .line 180
    .line 181
    if-nez v4, :cond_5

    .line 182
    .line 183
    const v7, 0x7f080146

    .line 184
    .line 185
    .line 186
    goto :goto_2

    .line 187
    :cond_5
    const v7, 0x7f080114

    .line 188
    .line 189
    .line 190
    :goto_2
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 191
    .line 192
    .line 193
    move-result-object v23

    .line 194
    const v7, 0x7f0604a5

    .line 195
    .line 196
    .line 197
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 198
    .line 199
    .line 200
    move-result-object v7

    .line 201
    if-nez v4, :cond_6

    .line 202
    .line 203
    move-object/from16 v24, v7

    .line 204
    .line 205
    goto :goto_3

    .line 206
    :cond_6
    move-object/from16 v24, v5

    .line 207
    .line 208
    :goto_3
    if-eqz v4, :cond_7

    .line 209
    .line 210
    iget-object v7, v0, Lrj3;->a0:Ljava/util/List;

    .line 211
    .line 212
    invoke-interface {v7, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result v7

    .line 216
    if-eqz v7, :cond_7

    .line 217
    .line 218
    move/from16 v25, v1

    .line 219
    .line 220
    goto :goto_4

    .line 221
    :cond_7
    move/from16 v25, v2

    .line 222
    .line 223
    :goto_4
    if-nez v4, :cond_8

    .line 224
    .line 225
    new-instance v4, Lii0;

    .line 226
    .line 227
    new-instance v7, Llf;

    .line 228
    .line 229
    const/16 v9, 0x14

    .line 230
    .line 231
    invoke-direct {v7, v0, v9}, Llf;-><init>(Ljava/lang/Object;I)V

    .line 232
    .line 233
    .line 234
    invoke-direct {v4, v5, v7, v1}, Lii0;-><init>(Ljava/lang/String;Lbt3;I)V

    .line 235
    .line 236
    .line 237
    :goto_5
    move-object/from16 v26, v4

    .line 238
    .line 239
    goto :goto_6

    .line 240
    :cond_8
    sget-object v4, Lki0;->c:Lki0;

    .line 241
    .line 242
    goto :goto_5

    .line 243
    :goto_6
    new-instance v19, Lli0;

    .line 244
    .line 245
    const/16 v22, 0x0

    .line 246
    .line 247
    const/16 v27, 0x84

    .line 248
    .line 249
    invoke-direct/range {v19 .. v27}, Lli0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;ZLao;I)V

    .line 250
    .line 251
    .line 252
    move-object/from16 v4, v19

    .line 253
    .line 254
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    iget-object v4, v0, Lrj3;->a0:Ljava/util/List;

    .line 258
    .line 259
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 260
    .line 261
    .line 262
    move-result v4

    .line 263
    if-eqz v4, :cond_9

    .line 264
    .line 265
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v4

    .line 269
    check-cast v4, Lli0;

    .line 270
    .line 271
    iput-boolean v1, v4, Lli0;->f:Z

    .line 272
    .line 273
    invoke-static/range {v18 .. v18}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 274
    .line 275
    .line 276
    move-result-object v4

    .line 277
    iput-object v4, v0, Lrj3;->a0:Ljava/util/List;

    .line 278
    .line 279
    :cond_9
    invoke-static {v6, v8}, Lr35;->m(Lr35;Ljava/util/List;)V

    .line 280
    .line 281
    .line 282
    new-instance v4, Lhb;

    .line 283
    .line 284
    const/4 v5, 0x3

    .line 285
    invoke-direct {v4, v0, v5}, Lhb;-><init>(Ljava/lang/Object;I)V

    .line 286
    .line 287
    .line 288
    iput-object v4, v6, Loi0;->g:Lat5;

    .line 289
    .line 290
    :cond_a
    iget-object v4, v0, Lrj3;->Z:Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;

    .line 291
    .line 292
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;->isPremium()Z

    .line 293
    .line 294
    .line 295
    move-result v4

    .line 296
    if-eqz v4, :cond_b

    .line 297
    .line 298
    sget-object v4, Lorg/swiftapps/swiftbackup/common/V;->INSTANCE:Lorg/swiftapps/swiftbackup/common/V;

    .line 299
    .line 300
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/common/V;->getA()Z

    .line 301
    .line 302
    .line 303
    move-result v4

    .line 304
    if-nez v4, :cond_b

    .line 305
    .line 306
    sget-object v4, Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;->Companion:Lfk3;

    .line 307
    .line 308
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 309
    .line 310
    .line 311
    sget-object v4, Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;->Single:Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;

    .line 312
    .line 313
    iput-object v4, v0, Lrj3;->Z:Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;

    .line 314
    .line 315
    :cond_b
    invoke-virtual {v0}, Lrj3;->l()V

    .line 316
    .line 317
    .line 318
    iget-object v4, v0, Lrj3;->X:Lgv7;

    .line 319
    .line 320
    invoke-virtual {v4}, Lgv7;->getValue()Ljava/lang/Object;

    .line 321
    .line 322
    .line 323
    move-result-object v5

    .line 324
    check-cast v5, Lcom/google/android/material/button/MaterialButton;

    .line 325
    .line 326
    if-eqz v3, :cond_c

    .line 327
    .line 328
    iget-object v3, v0, Lrj3;->a0:Ljava/util/List;

    .line 329
    .line 330
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 331
    .line 332
    .line 333
    move-result v3

    .line 334
    if-nez v3, :cond_d

    .line 335
    .line 336
    :cond_c
    move v2, v1

    .line 337
    :cond_d
    invoke-virtual {v5, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 338
    .line 339
    .line 340
    invoke-virtual {v4}, Lgv7;->getValue()Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    move-result-object v1

    .line 344
    check-cast v1, Lcom/google/android/material/button/MaterialButton;

    .line 345
    .line 346
    iget v2, v0, Lrj3;->R:I

    .line 347
    .line 348
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 349
    .line 350
    .line 351
    new-instance v2, Lxd1;

    .line 352
    .line 353
    const/4 v3, 0x5

    .line 354
    invoke-direct {v2, v0, v3}, Lxd1;-><init>(Ljava/lang/Object;I)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {v0}, Lu35;->show()V

    .line 361
    .line 362
    .line 363
    return-void
.end method

.method public final l()V
    .locals 2

    .line 1
    iget-object v0, p0, Lrj3;->T:Lgv7;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lao3;

    .line 8
    .line 9
    sget-object v1, Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;->Single:Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;

    .line 10
    .line 11
    invoke-virtual {p0, v0, v1}, Lrj3;->j(Lao3;Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lrj3;->U:Lgv7;

    .line 15
    .line 16
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lao3;

    .line 21
    .line 22
    sget-object v1, Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;->Incremental:Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;

    .line 23
    .line 24
    invoke-virtual {p0, v0, v1}, Lrj3;->j(Lao3;Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method
