.class public final Loi7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljk8;


# instance fields
.field public final a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field public final b:Lw00;

.field public final c:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

.field public final d:Landroid/widget/ScrollView;

.field public final e:Lpi7;

.field public final f:Lm86;


# direct methods
.method public constructor <init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lw00;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Landroid/widget/ScrollView;Lpi7;Lm86;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Loi7;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 5
    .line 6
    iput-object p2, p0, Loi7;->b:Lw00;

    .line 7
    .line 8
    iput-object p3, p0, Loi7;->c:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 9
    .line 10
    iput-object p4, p0, Loi7;->d:Landroid/widget/ScrollView;

    .line 11
    .line 12
    iput-object p5, p0, Loi7;->e:Lpi7;

    .line 13
    .line 14
    iput-object p6, p0, Loi7;->f:Lm86;

    .line 15
    .line 16
    return-void
.end method

.method public static a(Landroid/view/LayoutInflater;)Loi7;
    .locals 30

    .line 1
    const v0, 0x7f0d0179

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x0

    .line 6
    move-object/from16 v3, p0

    .line 7
    .line 8
    invoke-virtual {v3, v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const v1, 0x7f0a00a9

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    const-string v4, "Missing required view with ID: "

    .line 20
    .line 21
    if-eqz v3, :cond_c

    .line 22
    .line 23
    invoke-static {v3}, Lw00;->b(Landroid/view/View;)Lw00;

    .line 24
    .line 25
    .line 26
    move-result-object v7

    .line 27
    const v1, 0x7f0a00f6

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    move-object v8, v3

    .line 35
    check-cast v8, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 36
    .line 37
    if-eqz v8, :cond_c

    .line 38
    .line 39
    const v1, 0x7f0a042d

    .line 40
    .line 41
    .line 42
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    move-object v9, v3

    .line 47
    check-cast v9, Landroid/widget/ScrollView;

    .line 48
    .line 49
    if-eqz v9, :cond_c

    .line 50
    .line 51
    const v1, 0x7f0a045a

    .line 52
    .line 53
    .line 54
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    if-eqz v3, :cond_c

    .line 59
    .line 60
    const v1, 0x7f0a0208

    .line 61
    .line 62
    .line 63
    invoke-static {v3, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    if-eqz v5, :cond_b

    .line 68
    .line 69
    invoke-static {v5}, Lzx2;->a(Landroid/view/View;)Lzx2;

    .line 70
    .line 71
    .line 72
    move-result-object v12

    .line 73
    const v5, 0x7f0a02cd

    .line 74
    .line 75
    .line 76
    invoke-static {v3, v5}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    move-object v13, v6

    .line 81
    check-cast v13, Landroid/widget/ImageView;

    .line 82
    .line 83
    if-eqz v13, :cond_a

    .line 84
    .line 85
    const v6, 0x7f0a0302

    .line 86
    .line 87
    .line 88
    invoke-static {v3, v6}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 89
    .line 90
    .line 91
    move-result-object v10

    .line 92
    move-object v14, v10

    .line 93
    check-cast v14, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 94
    .line 95
    if-eqz v14, :cond_9

    .line 96
    .line 97
    const v6, 0x7f0a03a8

    .line 98
    .line 99
    .line 100
    invoke-static {v3, v6}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 101
    .line 102
    .line 103
    move-result-object v10

    .line 104
    move-object v15, v10

    .line 105
    check-cast v15, Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 106
    .line 107
    if-eqz v15, :cond_9

    .line 108
    .line 109
    const v6, 0x7f0a03bf

    .line 110
    .line 111
    .line 112
    invoke-static {v3, v6}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 113
    .line 114
    .line 115
    move-result-object v10

    .line 116
    move-object/from16 v16, v10

    .line 117
    .line 118
    check-cast v16, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 119
    .line 120
    if-eqz v16, :cond_9

    .line 121
    .line 122
    const v10, 0x7f0a044e

    .line 123
    .line 124
    .line 125
    invoke-static {v3, v10}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 126
    .line 127
    .line 128
    move-result-object v11

    .line 129
    move-object/from16 v17, v11

    .line 130
    .line 131
    check-cast v17, Landroid/widget/RelativeLayout;

    .line 132
    .line 133
    if-eqz v17, :cond_8

    .line 134
    .line 135
    const v11, 0x7f0a04ba

    .line 136
    .line 137
    .line 138
    invoke-static {v3, v11}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 139
    .line 140
    .line 141
    move-result-object v18

    .line 142
    check-cast v18, Landroid/widget/TextView;

    .line 143
    .line 144
    if-eqz v18, :cond_7

    .line 145
    .line 146
    move-object/from16 v20, v2

    .line 147
    .line 148
    const v2, 0x7f0a0597

    .line 149
    .line 150
    .line 151
    invoke-static {v3, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 152
    .line 153
    .line 154
    move-result-object v19

    .line 155
    check-cast v19, Landroid/widget/TextView;

    .line 156
    .line 157
    if-eqz v19, :cond_6

    .line 158
    .line 159
    move/from16 v21, v10

    .line 160
    .line 161
    new-instance v10, Lpi7;

    .line 162
    .line 163
    check-cast v3, Lcom/google/android/material/card/MaterialCardView;

    .line 164
    .line 165
    move v2, v11

    .line 166
    move-object v11, v3

    .line 167
    move v3, v2

    .line 168
    move/from16 v2, v21

    .line 169
    .line 170
    invoke-direct/range {v10 .. v19}, Lpi7;-><init>(Lcom/google/android/material/card/MaterialCardView;Lzx2;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/google/android/material/progressindicator/CircularProgressIndicator;Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 171
    .line 172
    .line 173
    const v11, 0x7f0a045b

    .line 174
    .line 175
    .line 176
    invoke-static {v0, v11}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 177
    .line 178
    .line 179
    move-result-object v12

    .line 180
    if-eqz v12, :cond_5

    .line 181
    .line 182
    invoke-static {v12, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 183
    .line 184
    .line 185
    move-result-object v11

    .line 186
    check-cast v11, Landroid/widget/FrameLayout;

    .line 187
    .line 188
    if-eqz v11, :cond_4

    .line 189
    .line 190
    const v1, 0x7f0a0209

    .line 191
    .line 192
    .line 193
    invoke-static {v12, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 194
    .line 195
    .line 196
    move-result-object v11

    .line 197
    if-eqz v11, :cond_4

    .line 198
    .line 199
    invoke-static {v11}, Lzx2;->a(Landroid/view/View;)Lzx2;

    .line 200
    .line 201
    .line 202
    move-result-object v23

    .line 203
    invoke-static {v12, v5}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    move-object/from16 v24, v1

    .line 208
    .line 209
    check-cast v24, Landroid/widget/ImageView;

    .line 210
    .line 211
    if-eqz v24, :cond_3

    .line 212
    .line 213
    move-object/from16 v22, v12

    .line 214
    .line 215
    check-cast v22, Lcom/google/android/material/card/MaterialCardView;

    .line 216
    .line 217
    invoke-static {v12, v6}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    move-object/from16 v25, v1

    .line 222
    .line 223
    check-cast v25, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 224
    .line 225
    if-eqz v25, :cond_2

    .line 226
    .line 227
    invoke-static {v12, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    move-object/from16 v26, v1

    .line 232
    .line 233
    check-cast v26, Landroid/widget/RelativeLayout;

    .line 234
    .line 235
    if-eqz v26, :cond_1

    .line 236
    .line 237
    invoke-static {v12, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    move-object/from16 v27, v1

    .line 242
    .line 243
    check-cast v27, Landroid/widget/TextView;

    .line 244
    .line 245
    if-eqz v27, :cond_0

    .line 246
    .line 247
    const v1, 0x7f0a0597

    .line 248
    .line 249
    .line 250
    invoke-static {v12, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 251
    .line 252
    .line 253
    move-result-object v2

    .line 254
    move-object/from16 v28, v2

    .line 255
    .line 256
    check-cast v28, Landroid/widget/TextView;

    .line 257
    .line 258
    if-eqz v28, :cond_4

    .line 259
    .line 260
    new-instance v21, Lm86;

    .line 261
    .line 262
    const/16 v29, 0x2

    .line 263
    .line 264
    invoke-direct/range {v21 .. v29}, Lm86;-><init>(Lcom/google/android/material/card/MaterialCardView;Ljava/lang/Object;Landroid/widget/ImageView;Landroid/view/ViewGroup;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;I)V

    .line 265
    .line 266
    .line 267
    new-instance v5, Loi7;

    .line 268
    .line 269
    move-object v6, v0

    .line 270
    check-cast v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 271
    .line 272
    move-object/from16 v11, v21

    .line 273
    .line 274
    invoke-direct/range {v5 .. v11}, Loi7;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lw00;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Landroid/widget/ScrollView;Lpi7;Lm86;)V

    .line 275
    .line 276
    .line 277
    return-object v5

    .line 278
    :cond_0
    move v1, v3

    .line 279
    goto :goto_0

    .line 280
    :cond_1
    move v1, v2

    .line 281
    goto :goto_0

    .line 282
    :cond_2
    move v1, v6

    .line 283
    goto :goto_0

    .line 284
    :cond_3
    move v1, v5

    .line 285
    :cond_4
    :goto_0
    invoke-virtual {v12}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    return-object v20

    .line 301
    :cond_5
    move v1, v11

    .line 302
    goto :goto_3

    .line 303
    :cond_6
    :goto_1
    move v1, v2

    .line 304
    goto :goto_2

    .line 305
    :cond_7
    move-object/from16 v20, v2

    .line 306
    .line 307
    move v0, v11

    .line 308
    move v1, v0

    .line 309
    goto :goto_2

    .line 310
    :cond_8
    move-object/from16 v20, v2

    .line 311
    .line 312
    move v2, v10

    .line 313
    goto :goto_1

    .line 314
    :cond_9
    move-object/from16 v20, v2

    .line 315
    .line 316
    move v1, v6

    .line 317
    goto :goto_2

    .line 318
    :cond_a
    move-object/from16 v20, v2

    .line 319
    .line 320
    move v1, v5

    .line 321
    goto :goto_2

    .line 322
    :cond_b
    move-object/from16 v20, v2

    .line 323
    .line 324
    :goto_2
    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v0

    .line 336
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    return-object v20

    .line 340
    :cond_c
    move-object/from16 v20, v2

    .line 341
    .line 342
    :goto_3
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v0

    .line 350
    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v0

    .line 354
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    return-object v20
.end method


# virtual methods
.method public final getRoot()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Loi7;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 2
    .line 3
    return-object p0
.end method
