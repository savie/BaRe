.class public final Lj57;
.super Lgm7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final l:Lorg/swiftapps/swiftbackup/home/HomeActivity;

.field public final m:Lm37;

.field public n:Lcz;

.field public o:Lu10;

.field public p:Lv10;

.field public q:Lpx;

.field public r:Lzs;

.field public s:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;

.field public t:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;


# direct methods
.method public constructor <init>(Lorg/swiftapps/swiftbackup/home/HomeActivity;Lm37;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lgm7;-><init>(Lfm7;)V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Lj57;->l:Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 6
    .line 7
    iput-object p2, p0, Lj57;->m:Lm37;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final A(ZLorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;Lmt3;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance p1, La47;

    .line 5
    .line 6
    invoke-virtual {p2}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;->getRepeatDays()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-static {p2}, Lel1;->z1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    new-instance v0, Lev;

    .line 15
    .line 16
    const/4 v1, 0x3

    .line 17
    invoke-direct {v0, v1, p3, p0}, Lev;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lj57;->l:Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 21
    .line 22
    invoke-direct {p1, p0, p2, v0}, La47;-><init>(Lorg/swiftapps/swiftbackup/home/HomeActivity;Ljava/util/Set;Lev;)V

    .line 23
    .line 24
    .line 25
    const/4 p2, 0x0

    .line 26
    invoke-virtual {p1, p0, p2}, Lol1;->G(Lzm;Ljava/lang/Integer;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final B(ZLorg/swiftapps/swiftbackup/tasks/model/SyncOption;Lmt3;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance p1, Lhf;

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    invoke-direct {p1, v0, p3, p0}, Lhf;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lj57;->l:Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 11
    .line 12
    invoke-static {p0, p2, p1}, Llg7;->F(Lsa1;Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;Lmt3;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final d(I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lgm7;->m(I)Ljl0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lorg/swiftapps/swiftbackup/home/schedule/data/b;

    .line 6
    .line 7
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/b;->q:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;

    .line 8
    .line 9
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;->getItemType()Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;->getConstant()I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public final h(Lfh6;I)V
    .locals 0

    .line 1
    check-cast p1, Lg57;

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lgm7;->m(I)Ljl0;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/swiftapps/swiftbackup/home/schedule/data/b;

    .line 8
    .line 9
    invoke-virtual {p1, p0}, Lg57;->r(Lorg/swiftapps/swiftbackup/home/schedule/data/b;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final n(I)I
    .locals 0

    .line 1
    const p0, 0x7f0d015f

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final o(Landroid/view/View;I)Lfh6;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-static {}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;->getEntries()Ljx2;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    check-cast v2, Lz3;

    .line 10
    .line 11
    invoke-virtual {v2}, Lz3;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    :cond_0
    move-object v3, v2

    .line 16
    check-cast v3, Lw3;

    .line 17
    .line 18
    invoke-virtual {v3}, Lw3;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    const/4 v5, 0x0

    .line 23
    if-eqz v4, :cond_1

    .line 24
    .line 25
    invoke-virtual {v3}, Lw3;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    move-object v4, v3

    .line 30
    check-cast v4, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;

    .line 31
    .line 32
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;->getConstant()I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    move/from16 v6, p2

    .line 37
    .line 38
    if-ne v4, v6, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    move-object v3, v5

    .line 42
    :goto_0
    check-cast v3, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;

    .line 43
    .line 44
    if-nez v3, :cond_2

    .line 45
    .line 46
    sget-object v3, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;->AppsQuickActions:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;

    .line 47
    .line 48
    :cond_2
    const v2, 0x7f0a0122

    .line 49
    .line 50
    .line 51
    invoke-static {v1, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    move-object v8, v4

    .line 56
    check-cast v8, Lcom/google/android/material/button/MaterialButton;

    .line 57
    .line 58
    const-string v4, "Missing required view with ID: "

    .line 59
    .line 60
    if-eqz v8, :cond_5

    .line 61
    .line 62
    const v2, 0x7f0a0134

    .line 63
    .line 64
    .line 65
    invoke-static {v1, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    move-object v9, v6

    .line 70
    check-cast v9, Lcom/google/android/material/button/MaterialButton;

    .line 71
    .line 72
    if-eqz v9, :cond_5

    .line 73
    .line 74
    const v2, 0x7f0a0147

    .line 75
    .line 76
    .line 77
    invoke-static {v1, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    check-cast v6, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 82
    .line 83
    if-eqz v6, :cond_5

    .line 84
    .line 85
    const v2, 0x7f0a0148

    .line 86
    .line 87
    .line 88
    invoke-static {v1, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    check-cast v6, Lorg/swiftapps/swiftbackup/views/SwiftSegmentLinearLayout;

    .line 93
    .line 94
    if-eqz v6, :cond_5

    .line 95
    .line 96
    const v2, 0x7f0a0149

    .line 97
    .line 98
    .line 99
    invoke-static {v1, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    check-cast v6, Lorg/swiftapps/swiftbackup/views/SwiftSegmentedCardGroup;

    .line 104
    .line 105
    if-eqz v6, :cond_5

    .line 106
    .line 107
    const v2, 0x7f0a0199

    .line 108
    .line 109
    .line 110
    invoke-static {v1, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 111
    .line 112
    .line 113
    move-result-object v6

    .line 114
    check-cast v6, Landroid/widget/LinearLayout;

    .line 115
    .line 116
    if-eqz v6, :cond_5

    .line 117
    .line 118
    const v2, 0x7f0a02ab

    .line 119
    .line 120
    .line 121
    invoke-static {v1, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 122
    .line 123
    .line 124
    move-result-object v6

    .line 125
    move-object v10, v6

    .line 126
    check-cast v10, Landroid/widget/ImageView;

    .line 127
    .line 128
    if-eqz v10, :cond_5

    .line 129
    .line 130
    const v2, 0x7f0a02d3

    .line 131
    .line 132
    .line 133
    invoke-static {v1, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 134
    .line 135
    .line 136
    move-result-object v6

    .line 137
    move-object v11, v6

    .line 138
    check-cast v11, Landroid/widget/ImageView;

    .line 139
    .line 140
    if-eqz v11, :cond_5

    .line 141
    .line 142
    const v2, 0x7f0a02de

    .line 143
    .line 144
    .line 145
    invoke-static {v1, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 146
    .line 147
    .line 148
    move-result-object v6

    .line 149
    if-eqz v6, :cond_5

    .line 150
    .line 151
    const v2, 0x7f0a00bf

    .line 152
    .line 153
    .line 154
    invoke-static {v6, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 155
    .line 156
    .line 157
    move-result-object v7

    .line 158
    if-eqz v7, :cond_4

    .line 159
    .line 160
    const v2, 0x7f0a02b0

    .line 161
    .line 162
    .line 163
    invoke-static {v6, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 164
    .line 165
    .line 166
    move-result-object v12

    .line 167
    check-cast v12, Landroid/widget/ImageView;

    .line 168
    .line 169
    if-eqz v12, :cond_4

    .line 170
    .line 171
    move-object v2, v6

    .line 172
    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 173
    .line 174
    const v13, 0x7f0a058d

    .line 175
    .line 176
    .line 177
    invoke-static {v6, v13}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 178
    .line 179
    .line 180
    move-result-object v14

    .line 181
    check-cast v14, Landroid/widget/TextView;

    .line 182
    .line 183
    if-eqz v14, :cond_3

    .line 184
    .line 185
    new-instance v6, Lkb2;

    .line 186
    .line 187
    invoke-direct {v6, v2, v7, v12, v14}, Lkb2;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    .line 188
    .line 189
    .line 190
    const v2, 0x7f0a040c

    .line 191
    .line 192
    .line 193
    invoke-static {v1, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 194
    .line 195
    .line 196
    move-result-object v7

    .line 197
    move-object v13, v7

    .line 198
    check-cast v13, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 199
    .line 200
    if-eqz v13, :cond_5

    .line 201
    .line 202
    const v2, 0x7f0a041c

    .line 203
    .line 204
    .line 205
    invoke-static {v1, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 206
    .line 207
    .line 208
    move-result-object v7

    .line 209
    check-cast v7, Lcom/google/android/material/button/MaterialSplitButton;

    .line 210
    .line 211
    if-eqz v7, :cond_5

    .line 212
    .line 213
    const v2, 0x7f0a0425

    .line 214
    .line 215
    .line 216
    invoke-static {v1, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 217
    .line 218
    .line 219
    move-result-object v14

    .line 220
    if-eqz v14, :cond_5

    .line 221
    .line 222
    const v2, 0x7f0a0525

    .line 223
    .line 224
    .line 225
    invoke-static {v1, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 226
    .line 227
    .line 228
    move-result-object v7

    .line 229
    move-object v15, v7

    .line 230
    check-cast v15, Landroid/widget/TextView;

    .line 231
    .line 232
    if-eqz v15, :cond_5

    .line 233
    .line 234
    const v2, 0x7f0a0526

    .line 235
    .line 236
    .line 237
    invoke-static {v1, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 238
    .line 239
    .line 240
    move-result-object v7

    .line 241
    move-object/from16 v16, v7

    .line 242
    .line 243
    check-cast v16, Landroid/widget/TextView;

    .line 244
    .line 245
    if-eqz v16, :cond_5

    .line 246
    .line 247
    const v2, 0x7f0a0555

    .line 248
    .line 249
    .line 250
    invoke-static {v1, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 251
    .line 252
    .line 253
    move-result-object v7

    .line 254
    move-object/from16 v17, v7

    .line 255
    .line 256
    check-cast v17, Landroid/widget/TextView;

    .line 257
    .line 258
    if-eqz v17, :cond_5

    .line 259
    .line 260
    move-object v12, v6

    .line 261
    new-instance v6, Lz27;

    .line 262
    .line 263
    move-object v7, v1

    .line 264
    check-cast v7, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 265
    .line 266
    invoke-direct/range {v6 .. v17}, Lz27;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Landroid/widget/ImageView;Landroid/widget/ImageView;Lkb2;Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 267
    .line 268
    .line 269
    sget-object v1, Li57;->a:[I

    .line 270
    .line 271
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 272
    .line 273
    .line 274
    move-result v2

    .line 275
    aget v1, v1, v2

    .line 276
    .line 277
    packed-switch v1, :pswitch_data_0

    .line 278
    .line 279
    .line 280
    invoke-static {}, Lq;->j()V

    .line 281
    .line 282
    .line 283
    return-object v5

    .line 284
    :pswitch_0
    new-instance v1, Lh57;

    .line 285
    .line 286
    invoke-direct {v1, v0, v6}, Lh57;-><init>(Lj57;Lz27;)V

    .line 287
    .line 288
    .line 289
    return-object v1

    .line 290
    :pswitch_1
    new-instance v1, Lh57;

    .line 291
    .line 292
    invoke-direct {v1, v0, v6}, Lh57;-><init>(Lj57;Lz27;)V

    .line 293
    .line 294
    .line 295
    return-object v1

    .line 296
    :pswitch_2
    new-instance v1, Lh57;

    .line 297
    .line 298
    invoke-direct {v1, v0, v6}, Lh57;-><init>(Lj57;Lz27;)V

    .line 299
    .line 300
    .line 301
    return-object v1

    .line 302
    :pswitch_3
    new-instance v1, Lh57;

    .line 303
    .line 304
    invoke-direct {v1, v0, v6}, Lh57;-><init>(Lj57;Lz27;)V

    .line 305
    .line 306
    .line 307
    return-object v1

    .line 308
    :pswitch_4
    new-instance v1, Lh57;

    .line 309
    .line 310
    invoke-direct {v1, v0, v6}, Lh57;-><init>(Lj57;Lz27;)V

    .line 311
    .line 312
    .line 313
    return-object v1

    .line 314
    :pswitch_5
    new-instance v1, Le57;

    .line 315
    .line 316
    invoke-direct {v1, v0, v6}, Le57;-><init>(Lj57;Lz27;)V

    .line 317
    .line 318
    .line 319
    return-object v1

    .line 320
    :pswitch_6
    new-instance v1, Le57;

    .line 321
    .line 322
    invoke-direct {v1, v0, v6}, Le57;-><init>(Lj57;Lz27;)V

    .line 323
    .line 324
    .line 325
    return-object v1

    .line 326
    :pswitch_7
    new-instance v1, Le57;

    .line 327
    .line 328
    invoke-direct {v1, v0, v6}, Le57;-><init>(Lj57;Lz27;)V

    .line 329
    .line 330
    .line 331
    return-object v1

    .line 332
    :cond_3
    move v2, v13

    .line 333
    :cond_4
    invoke-virtual {v6}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v0

    .line 341
    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    return-object v5

    .line 349
    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 350
    .line 351
    .line 352
    move-result-object v0

    .line 353
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v0

    .line 357
    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    return-object v5

    .line 365
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final y(ZLjava/util/List;Lmt3;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const p1, 0x7f130060

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lj57;->l:Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    new-instance v1, Ljava/util/ArrayList;

    .line 17
    .line 18
    const/16 v2, 0xa

    .line 19
    .line 20
    invoke-static {p2, v2}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 25
    .line 26
    .line 27
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Liu;

    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    invoke-static {v1}, Lel1;->z1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    new-instance v1, Lrf;

    .line 56
    .line 57
    const/4 v2, 0x4

    .line 58
    invoke-direct {v1, v2, p3, p0}, Lrf;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    const/4 p0, 0x1

    .line 62
    invoke-static {v0, p1, p2, p0, v1}, Lxx3;->z(Lsa1;Ljava/lang/String;Ljava/util/Set;ZLmt3;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public final z(ZLjava/util/List;Lmt3;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance p1, Ljh;

    .line 5
    .line 6
    const/4 v0, 0x3

    .line 7
    invoke-direct {p1, v0, p3, p0}, Ljh;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lj57;->l:Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    new-instance p3, Ljava/util/ArrayList;

    .line 19
    .line 20
    const/16 v0, 0xa

    .line 21
    .line 22
    invoke-static {p2, v0}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 27
    .line 28
    .line 29
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Lq05;

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    invoke-static {p3}, Lel1;->z1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    new-instance p3, Lox;

    .line 58
    .line 59
    const/16 v0, 0x12

    .line 60
    .line 61
    invoke-direct {p3, p1, v0}, Lox;-><init>(Ljava/lang/Object;I)V

    .line 62
    .line 63
    .line 64
    invoke-static {p0, p2, p3}, Lt05;->a(Lsa1;Ljava/util/Set;Lmt3;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method
