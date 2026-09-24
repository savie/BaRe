.class public final Lqj2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lorg/swiftapps/swiftbackup/detail/DetailActivity;

.field public final b:Lmk2;

.field public final c:Landroid/widget/TextView;

.field public final d:Landroid/widget/TextView;

.field public final e:Lw00;

.field public final f:Lgm1;

.field public final g:Lzx2;

.field public final h:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

.field public final i:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final j:Ltj2;

.field public final k:Lcom/google/android/material/button/MaterialButton;

.field public final l:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lorg/swiftapps/swiftbackup/detail/DetailActivity;Lej2;Lmk2;)V
    .locals 1

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lqj2;->a:Lorg/swiftapps/swiftbackup/detail/DetailActivity;

    .line 8
    .line 9
    iput-object p3, p0, Lqj2;->b:Lmk2;

    .line 10
    .line 11
    iget-object p1, p2, Lej2;->r:Landroid/widget/TextView;

    .line 12
    .line 13
    iput-object p1, p0, Lqj2;->c:Landroid/widget/TextView;

    .line 14
    .line 15
    iget-object p1, p2, Lej2;->q:Landroid/widget/TextView;

    .line 16
    .line 17
    iput-object p1, p0, Lqj2;->d:Landroid/widget/TextView;

    .line 18
    .line 19
    new-instance p1, Lw00;

    .line 20
    .line 21
    iget-object p3, p2, Lej2;->f:Loe;

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    invoke-direct {p1, p3, v0}, Lw00;-><init>(Loe;B)V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lqj2;->e:Lw00;

    .line 28
    .line 29
    new-instance p1, Lgm1;

    .line 30
    .line 31
    iget-object p3, p2, Lej2;->p:Lcom/google/android/material/tabs/TabLayout;

    .line 32
    .line 33
    invoke-direct {p1, p3}, Lgm1;-><init>(Lcom/google/android/material/tabs/TabLayout;)V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Lqj2;->f:Lgm1;

    .line 37
    .line 38
    iget-object p1, p2, Lej2;->c:Lzx2;

    .line 39
    .line 40
    iput-object p1, p0, Lqj2;->g:Lzx2;

    .line 41
    .line 42
    iget-object p1, p2, Lej2;->k:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 43
    .line 44
    iput-object p1, p0, Lqj2;->h:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 45
    .line 46
    iget-object p1, p2, Lej2;->e:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 47
    .line 48
    iput-object p1, p0, Lqj2;->i:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 49
    .line 50
    iget-object p1, p2, Lej2;->n:Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 51
    .line 52
    invoke-static {p1}, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->a0(Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;)Ltj2;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iput-object p1, p0, Lqj2;->j:Ltj2;

    .line 57
    .line 58
    iget-object p1, p2, Lej2;->b:Lcom/google/android/material/button/MaterialButton;

    .line 59
    .line 60
    iput-object p1, p0, Lqj2;->k:Lcom/google/android/material/button/MaterialButton;

    .line 61
    .line 62
    iget-object p1, p2, Lej2;->d:Landroid/widget/ImageView;

    .line 63
    .line 64
    iput-object p1, p0, Lqj2;->l:Landroid/widget/ImageView;

    .line 65
    .line 66
    return-void
.end method


# virtual methods
.method public final a(Lak2;Ljava/lang/String;)V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    const/16 v1, 0x8

    .line 3
    .line 4
    iget-object v2, p0, Lqj2;->g:Lzx2;

    .line 5
    .line 6
    iget-object v3, p0, Lqj2;->i:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 7
    .line 8
    if-eqz p1, :cond_d

    .line 9
    .line 10
    iget-object p1, p1, Lak2;->b:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    goto/16 :goto_4

    .line 19
    .line 20
    :cond_0
    invoke-static {v3}, Lsz8;->c0(Landroid/view/View;)V

    .line 21
    .line 22
    .line 23
    iget-object v2, v2, Lzx2;->a:Landroid/widget/LinearLayout;

    .line 24
    .line 25
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    const/4 v2, 0x0

    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    move-object v3, v1

    .line 44
    check-cast v3, Lzj2;

    .line 45
    .line 46
    iget-object v3, v3, Lzj2;->a:Liz4;

    .line 47
    .line 48
    invoke-virtual {v3}, Liz4;->getBackupId()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-static {v3, p2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-eqz v3, :cond_1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    move-object v1, v2

    .line 60
    :goto_0
    check-cast v1, Lzj2;

    .line 61
    .line 62
    if-nez v1, :cond_3

    .line 63
    .line 64
    return-void

    .line 65
    :cond_3
    iget-object p1, p0, Lqj2;->d:Landroid/widget/TextView;

    .line 66
    .line 67
    iget-object p2, v1, Lzj2;->o:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    .line 71
    .line 72
    iget-object p1, v1, Lzj2;->a:Liz4;

    .line 73
    .line 74
    invoke-virtual {p1}, Liz4;->getMetadata()Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    if-eqz p1, :cond_4

    .line 79
    .line 80
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getNote()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    :cond_4
    const/4 p1, 0x1

    .line 85
    iget-object p2, p0, Lqj2;->e:Lw00;

    .line 86
    .line 87
    if-eqz v2, :cond_6

    .line 88
    .line 89
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    if-nez v3, :cond_5

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_5
    invoke-virtual {p2, p1}, Lw00;->w(Z)V

    .line 97
    .line 98
    .line 99
    iget-object v0, p2, Lw00;->c:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast v0, Landroid/widget/TextView;

    .line 102
    .line 103
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    .line 105
    .line 106
    iget-object p2, p2, Lw00;->b:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast p2, Loe;

    .line 109
    .line 110
    iget-object p2, p2, Loe;->b:Ljava/lang/Object;

    .line 111
    .line 112
    check-cast p2, Lcom/google/android/material/card/MaterialCardView;

    .line 113
    .line 114
    new-instance v0, Lnq1;

    .line 115
    .line 116
    invoke-direct {v0, p1, p0, v2, v1}, Lnq1;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_6
    :goto_1
    invoke-virtual {p2, v0}, Lw00;->w(Z)V

    .line 124
    .line 125
    .line 126
    :goto_2
    new-instance v4, Ljava/util/ArrayList;

    .line 127
    .line 128
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .line 130
    .line 131
    iget-object p2, v1, Lzj2;->b:Ljava/lang/String;

    .line 132
    .line 133
    const/4 v0, 0x5

    .line 134
    if-eqz p2, :cond_8

    .line 135
    .line 136
    new-instance v2, Luj2;

    .line 137
    .line 138
    sget-object v3, Liu;->APP:Liu;

    .line 139
    .line 140
    invoke-virtual {v3}, Liu;->getIconRes()I

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    iget-boolean v5, v1, Lzj2;->c:Z

    .line 145
    .line 146
    if-eqz v5, :cond_7

    .line 147
    .line 148
    const-string v5, "APKs"

    .line 149
    .line 150
    goto :goto_3

    .line 151
    :cond_7
    const-string v5, "APK"

    .line 152
    .line 153
    :goto_3
    new-instance v6, Ljf;

    .line 154
    .line 155
    invoke-direct {v6, v0, p0, v1}, Ljf;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    invoke-direct {v2, v3, v5, p2, v6}, Luj2;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Lmt3;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    :cond_8
    iget-object p2, v1, Lzj2;->e:Ljava/lang/String;

    .line 165
    .line 166
    iget-object v2, p0, Lqj2;->a:Lorg/swiftapps/swiftbackup/detail/DetailActivity;

    .line 167
    .line 168
    if-eqz p2, :cond_9

    .line 169
    .line 170
    new-instance v3, Luj2;

    .line 171
    .line 172
    sget-object v5, Liu;->DATA:Liu;

    .line 173
    .line 174
    invoke-virtual {v5}, Liu;->getIconRes()I

    .line 175
    .line 176
    .line 177
    move-result v5

    .line 178
    const v6, 0x7f1301d8

    .line 179
    .line 180
    .line 181
    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v6

    .line 185
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 186
    .line 187
    .line 188
    new-instance v7, Lmm;

    .line 189
    .line 190
    const/4 v8, 0x3

    .line 191
    invoke-direct {v7, v8, p0, v1}, Lmm;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 192
    .line 193
    .line 194
    invoke-direct {v3, v5, v6, p2, v7}, Luj2;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Lmt3;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    :cond_9
    iget-object p2, v1, Lzj2;->h:Ljava/lang/String;

    .line 201
    .line 202
    const/4 v3, 0x2

    .line 203
    if-eqz p2, :cond_a

    .line 204
    .line 205
    new-instance v5, Luj2;

    .line 206
    .line 207
    sget-object v6, Liu;->EXTDATA:Liu;

    .line 208
    .line 209
    invoke-virtual {v6}, Liu;->getIconRes()I

    .line 210
    .line 211
    .line 212
    move-result v6

    .line 213
    const v7, 0x7f13022f

    .line 214
    .line 215
    .line 216
    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v7

    .line 220
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 221
    .line 222
    .line 223
    new-instance v8, Ljh;

    .line 224
    .line 225
    invoke-direct {v8, v3, p0, v1}, Ljh;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 226
    .line 227
    .line 228
    invoke-direct {v5, v6, v7, p2, v8}, Luj2;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Lmt3;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    :cond_a
    iget-object p2, v1, Lzj2;->n:Ljava/lang/String;

    .line 235
    .line 236
    if-eqz p2, :cond_b

    .line 237
    .line 238
    new-instance v5, Luj2;

    .line 239
    .line 240
    sget-object v6, Liu;->EXPANSION:Liu;

    .line 241
    .line 242
    invoke-virtual {v6}, Liu;->getIconRes()I

    .line 243
    .line 244
    .line 245
    move-result v6

    .line 246
    const v7, 0x7f13022a

    .line 247
    .line 248
    .line 249
    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v7

    .line 253
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 254
    .line 255
    .line 256
    new-instance v8, Leh2;

    .line 257
    .line 258
    invoke-direct {v8, v3, p0, v1}, Leh2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 259
    .line 260
    .line 261
    invoke-direct {v5, v6, v7, p2, v8}, Luj2;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Lmt3;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    .line 266
    .line 267
    :cond_b
    iget-object p2, v1, Lzj2;->k:Ljava/lang/String;

    .line 268
    .line 269
    if-eqz p2, :cond_c

    .line 270
    .line 271
    new-instance v3, Luj2;

    .line 272
    .line 273
    sget-object v5, Liu;->MEDIA:Liu;

    .line 274
    .line 275
    invoke-virtual {v5}, Liu;->getIconRes()I

    .line 276
    .line 277
    .line 278
    move-result v5

    .line 279
    const v6, 0x7f130346

    .line 280
    .line 281
    .line 282
    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v2

    .line 286
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 287
    .line 288
    .line 289
    new-instance v6, Lnj2;

    .line 290
    .line 291
    invoke-direct {v6, p1, p0, v1}, Lnj2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 292
    .line 293
    .line 294
    invoke-direct {v3, v5, v2, p2, v6}, Luj2;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Lmt3;)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    .line 299
    .line 300
    :cond_c
    new-instance v3, Lfm7;

    .line 301
    .line 302
    const/4 v7, 0x0

    .line 303
    const/16 v8, 0x1e

    .line 304
    .line 305
    const/4 v5, 0x0

    .line 306
    const/4 v6, 0x0

    .line 307
    invoke-direct/range {v3 .. v8}, Lfm7;-><init>(Ljava/util/List;Ljava/util/Set;ZLjava/lang/String;I)V

    .line 308
    .line 309
    .line 310
    iget-object p2, p0, Lqj2;->j:Ltj2;

    .line 311
    .line 312
    invoke-virtual {p2, v3, p1}, Lgm7;->w(Lfm7;Z)V

    .line 313
    .line 314
    .line 315
    new-instance p1, Lfr;

    .line 316
    .line 317
    invoke-direct {p1, v0, p0, v1}, Lfr;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 318
    .line 319
    .line 320
    iget-object p2, p0, Lqj2;->k:Lcom/google/android/material/button/MaterialButton;

    .line 321
    .line 322
    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 323
    .line 324
    .line 325
    new-instance p1, Luf1;

    .line 326
    .line 327
    invoke-direct {p1, v0, p0, v1}, Luf1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 328
    .line 329
    .line 330
    iget-object p0, p0, Lqj2;->l:Landroid/widget/ImageView;

    .line 331
    .line 332
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
    .line 334
    .line 335
    return-void

    .line 336
    :cond_d
    :goto_4
    invoke-static {v3}, Lsz8;->W(Landroid/view/View;)V

    .line 337
    .line 338
    .line 339
    iget-object p0, v2, Lzx2;->a:Landroid/widget/LinearLayout;

    .line 340
    .line 341
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 342
    .line 343
    .line 344
    iget-object p0, v2, Lzx2;->d:Landroid/widget/ImageView;

    .line 345
    .line 346
    const p1, 0x7f08018b

    .line 347
    .line 348
    .line 349
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 350
    .line 351
    .line 352
    iget-object p0, v2, Lzx2;->b:Lcom/google/android/material/button/MaterialButton;

    .line 353
    .line 354
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 355
    .line 356
    .line 357
    iget-object p0, v2, Lzx2;->e:Landroid/widget/TextView;

    .line 358
    .line 359
    const p1, 0x7f1303be

    .line 360
    .line 361
    .line 362
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 363
    .line 364
    .line 365
    return-void
.end method
