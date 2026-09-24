.class public final synthetic Lcl3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcl3;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lcl3;->b:Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcl3;->a:I

    .line 4
    .line 5
    iget-object v0, v0, Lcl3;->b:Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;

    .line 6
    .line 7
    packed-switch v1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    sget v1, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;->Z:I

    .line 11
    .line 12
    new-instance v1, Lkl3;

    .line 13
    .line 14
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;->W()Lil3;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    iget-object v2, v2, Lil3;->c:Ljl3;

    .line 19
    .line 20
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;->X()Ldm3;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-direct {v1, v0, v2, v3}, Lkl3;-><init>(Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;Ljl3;Ldm3;)V

    .line 25
    .line 26
    .line 27
    return-object v1

    .line 28
    :pswitch_0
    sget v1, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;->Z:I

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const v1, 0x7f0d00ac

    .line 35
    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    const/4 v3, 0x0

    .line 39
    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const v1, 0x7f0a00a9

    .line 44
    .line 45
    .line 46
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    const-string v4, "Missing required view with ID: "

    .line 51
    .line 52
    if-eqz v2, :cond_1

    .line 53
    .line 54
    invoke-static {v2}, Lw00;->b(Landroid/view/View;)Lw00;

    .line 55
    .line 56
    .line 57
    move-result-object v7

    .line 58
    const v1, 0x7f0a023e

    .line 59
    .line 60
    .line 61
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    if-eqz v2, :cond_1

    .line 66
    .line 67
    invoke-static {v2}, Ljl3;->a(Landroid/view/View;)Ljl3;

    .line 68
    .line 69
    .line 70
    move-result-object v8

    .line 71
    const v1, 0x7f0a023f

    .line 72
    .line 73
    .line 74
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    if-eqz v2, :cond_1

    .line 79
    .line 80
    invoke-static {v2}, Ljl3;->a(Landroid/view/View;)Ljl3;

    .line 81
    .line 82
    .line 83
    move-result-object v9

    .line 84
    const v1, 0x7f0a0241

    .line 85
    .line 86
    .line 87
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    if-eqz v2, :cond_1

    .line 92
    .line 93
    const v1, 0x7f0a00eb

    .line 94
    .line 95
    .line 96
    invoke-static {v2, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    move-object v12, v5

    .line 101
    check-cast v12, Lcom/google/android/material/button/MaterialButton;

    .line 102
    .line 103
    if-eqz v12, :cond_0

    .line 104
    .line 105
    const v1, 0x7f0a00f8

    .line 106
    .line 107
    .line 108
    invoke-static {v2, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    move-object v13, v5

    .line 113
    check-cast v13, Lcom/google/android/material/button/MaterialButton;

    .line 114
    .line 115
    if-eqz v13, :cond_0

    .line 116
    .line 117
    const v1, 0x7f0a0113

    .line 118
    .line 119
    .line 120
    invoke-static {v2, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    move-object v14, v5

    .line 125
    check-cast v14, Lcom/google/android/material/button/MaterialButton;

    .line 126
    .line 127
    if-eqz v14, :cond_0

    .line 128
    .line 129
    const v1, 0x7f0a0139

    .line 130
    .line 131
    .line 132
    invoke-static {v2, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    move-object v15, v5

    .line 137
    check-cast v15, Landroid/widget/LinearLayout;

    .line 138
    .line 139
    if-eqz v15, :cond_0

    .line 140
    .line 141
    const v1, 0x7f0a018d

    .line 142
    .line 143
    .line 144
    invoke-static {v2, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 145
    .line 146
    .line 147
    move-result-object v5

    .line 148
    move-object/from16 v16, v5

    .line 149
    .line 150
    check-cast v16, Landroid/widget/LinearLayout;

    .line 151
    .line 152
    if-eqz v16, :cond_0

    .line 153
    .line 154
    const v1, 0x7f0a018e

    .line 155
    .line 156
    .line 157
    invoke-static {v2, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 158
    .line 159
    .line 160
    move-result-object v5

    .line 161
    move-object/from16 v17, v5

    .line 162
    .line 163
    check-cast v17, Lcom/google/android/material/card/MaterialCardView;

    .line 164
    .line 165
    if-eqz v17, :cond_0

    .line 166
    .line 167
    move-object v11, v2

    .line 168
    check-cast v11, Lcom/google/android/material/card/MaterialCardView;

    .line 169
    .line 170
    const v1, 0x7f0a01e0

    .line 171
    .line 172
    .line 173
    invoke-static {v2, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 174
    .line 175
    .line 176
    move-result-object v5

    .line 177
    if-eqz v5, :cond_0

    .line 178
    .line 179
    const v1, 0x7f0a02b7

    .line 180
    .line 181
    .line 182
    invoke-static {v2, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 183
    .line 184
    .line 185
    move-result-object v5

    .line 186
    check-cast v5, Landroid/widget/ImageView;

    .line 187
    .line 188
    if-eqz v5, :cond_0

    .line 189
    .line 190
    const v1, 0x7f0a02fb

    .line 191
    .line 192
    .line 193
    invoke-static {v2, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 194
    .line 195
    .line 196
    move-result-object v5

    .line 197
    move-object/from16 v18, v5

    .line 198
    .line 199
    check-cast v18, Landroid/widget/FrameLayout;

    .line 200
    .line 201
    if-eqz v18, :cond_0

    .line 202
    .line 203
    const v1, 0x7f0a0302

    .line 204
    .line 205
    .line 206
    invoke-static {v2, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 207
    .line 208
    .line 209
    move-result-object v5

    .line 210
    move-object/from16 v19, v5

    .line 211
    .line 212
    check-cast v19, Landroid/widget/LinearLayout;

    .line 213
    .line 214
    if-eqz v19, :cond_0

    .line 215
    .line 216
    const v1, 0x7f0a0537

    .line 217
    .line 218
    .line 219
    invoke-static {v2, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 220
    .line 221
    .line 222
    move-result-object v5

    .line 223
    move-object/from16 v20, v5

    .line 224
    .line 225
    check-cast v20, Landroid/widget/TextView;

    .line 226
    .line 227
    if-eqz v20, :cond_0

    .line 228
    .line 229
    const v1, 0x7f0a0547

    .line 230
    .line 231
    .line 232
    invoke-static {v2, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 233
    .line 234
    .line 235
    move-result-object v5

    .line 236
    move-object/from16 v21, v5

    .line 237
    .line 238
    check-cast v21, Landroid/widget/TextView;

    .line 239
    .line 240
    if-eqz v21, :cond_0

    .line 241
    .line 242
    const v1, 0x7f0a0548

    .line 243
    .line 244
    .line 245
    invoke-static {v2, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 246
    .line 247
    .line 248
    move-result-object v5

    .line 249
    check-cast v5, Landroid/widget/TextView;

    .line 250
    .line 251
    if-eqz v5, :cond_0

    .line 252
    .line 253
    const v1, 0x7f0a0549

    .line 254
    .line 255
    .line 256
    invoke-static {v2, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 257
    .line 258
    .line 259
    move-result-object v5

    .line 260
    move-object/from16 v22, v5

    .line 261
    .line 262
    check-cast v22, Landroid/widget/TextView;

    .line 263
    .line 264
    if-eqz v22, :cond_0

    .line 265
    .line 266
    const v1, 0x7f0a0559

    .line 267
    .line 268
    .line 269
    invoke-static {v2, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 270
    .line 271
    .line 272
    move-result-object v5

    .line 273
    check-cast v5, Landroid/widget/TextView;

    .line 274
    .line 275
    if-eqz v5, :cond_0

    .line 276
    .line 277
    const v1, 0x7f0a055a

    .line 278
    .line 279
    .line 280
    invoke-static {v2, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 281
    .line 282
    .line 283
    move-result-object v5

    .line 284
    move-object/from16 v23, v5

    .line 285
    .line 286
    check-cast v23, Landroid/widget/TextView;

    .line 287
    .line 288
    if-eqz v23, :cond_0

    .line 289
    .line 290
    new-instance v10, Lnl3;

    .line 291
    .line 292
    invoke-direct/range {v10 .. v23}, Lnl3;-><init>(Lcom/google/android/material/card/MaterialCardView;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/google/android/material/card/MaterialCardView;Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 293
    .line 294
    .line 295
    const v1, 0x7f0a042d

    .line 296
    .line 297
    .line 298
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 299
    .line 300
    .line 301
    move-result-object v2

    .line 302
    move-object v11, v2

    .line 303
    check-cast v11, Landroidx/core/widget/NestedScrollView;

    .line 304
    .line 305
    if-eqz v11, :cond_1

    .line 306
    .line 307
    new-instance v5, Lil3;

    .line 308
    .line 309
    move-object v6, v0

    .line 310
    check-cast v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 311
    .line 312
    invoke-direct/range {v5 .. v11}, Lil3;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lw00;Ljl3;Ljl3;Lnl3;Landroidx/core/widget/NestedScrollView;)V

    .line 313
    .line 314
    .line 315
    move-object v3, v5

    .line 316
    goto :goto_0

    .line 317
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    goto :goto_0

    .line 333
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

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
    :goto_0
    return-object v3

    .line 349
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
