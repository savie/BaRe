.class public final Lln3;
.super Lu35;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final synthetic b0:I


# instance fields
.field public final Q:Lil0;

.field public final R:Ljava/lang/String;

.field public final S:Z

.field public final T:Lmt3;

.field public final U:Lgv7;

.field public final V:Lgv7;

.field public final W:Lgv7;

.field public final X:Lgv7;

.field public Y:Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;

.field public Z:Lq63;

.field public a0:Lqt3;


# direct methods
.method public constructor <init>(Lil0;Ljava/lang/String;ZLmt3;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const v2, 0x7f0d00b5

    .line 9
    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const v4, 0x7f0a00e2

    .line 17
    .line 18
    .line 19
    invoke-static {v2, v4}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    move-object v8, v5

    .line 24
    check-cast v8, Lcom/google/android/material/button/MaterialButton;

    .line 25
    .line 26
    const-string v5, "Missing required view with ID: "

    .line 27
    .line 28
    if-eqz v8, :cond_4

    .line 29
    .line 30
    move-object v7, v2

    .line 31
    check-cast v7, Landroidx/core/widget/NestedScrollView;

    .line 32
    .line 33
    const v4, 0x7f0a03c5

    .line 34
    .line 35
    .line 36
    invoke-static {v2, v4}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    if-eqz v6, :cond_4

    .line 41
    .line 42
    const v4, 0x7f0a011a

    .line 43
    .line 44
    .line 45
    invoke-static {v6, v4}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v9

    .line 49
    move-object v12, v9

    .line 50
    check-cast v12, Landroid/widget/ImageButton;

    .line 51
    .line 52
    if-eqz v12, :cond_3

    .line 53
    .line 54
    move-object v11, v6

    .line 55
    check-cast v11, Lcom/google/android/material/card/MaterialCardView;

    .line 56
    .line 57
    const v4, 0x7f0a0570

    .line 58
    .line 59
    .line 60
    invoke-static {v6, v4}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v9

    .line 64
    move-object v14, v9

    .line 65
    check-cast v14, Landroid/widget/TextView;

    .line 66
    .line 67
    if-eqz v14, :cond_3

    .line 68
    .line 69
    const v4, 0x7f0a05ba

    .line 70
    .line 71
    .line 72
    invoke-static {v6, v4}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 73
    .line 74
    .line 75
    move-result-object v9

    .line 76
    move-object v15, v9

    .line 77
    check-cast v15, Landroid/widget/TextView;

    .line 78
    .line 79
    if-eqz v15, :cond_3

    .line 80
    .line 81
    new-instance v9, Lfp1;

    .line 82
    .line 83
    move-object v13, v11

    .line 84
    move-object v10, v9

    .line 85
    invoke-direct/range {v10 .. v15}, Lfp1;-><init>(Lcom/google/android/material/card/MaterialCardView;Landroid/widget/ImageButton;Lcom/google/android/material/card/MaterialCardView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 86
    .line 87
    .line 88
    const v4, 0x7f0a0489

    .line 89
    .line 90
    .line 91
    invoke-static {v2, v4}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    if-eqz v6, :cond_4

    .line 96
    .line 97
    invoke-static {v6}, Lcp1;->e(Landroid/view/View;)Lcp1;

    .line 98
    .line 99
    .line 100
    move-result-object v10

    .line 101
    const v4, 0x7f0a048a

    .line 102
    .line 103
    .line 104
    invoke-static {v2, v4}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 105
    .line 106
    .line 107
    move-result-object v6

    .line 108
    if-eqz v6, :cond_4

    .line 109
    .line 110
    invoke-static {v6}, Lcp1;->e(Landroid/view/View;)Lcp1;

    .line 111
    .line 112
    .line 113
    move-result-object v11

    .line 114
    const v4, 0x7f0a048b

    .line 115
    .line 116
    .line 117
    invoke-static {v2, v4}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 118
    .line 119
    .line 120
    move-result-object v6

    .line 121
    if-eqz v6, :cond_4

    .line 122
    .line 123
    invoke-static {v6}, Lcp1;->e(Landroid/view/View;)Lcp1;

    .line 124
    .line 125
    .line 126
    move-result-object v12

    .line 127
    const v4, 0x7f0a0585

    .line 128
    .line 129
    .line 130
    invoke-static {v2, v4}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 131
    .line 132
    .line 133
    move-result-object v6

    .line 134
    move-object v13, v6

    .line 135
    check-cast v13, Landroid/widget/TextView;

    .line 136
    .line 137
    if-eqz v13, :cond_4

    .line 138
    .line 139
    new-instance v6, Lmn3;

    .line 140
    .line 141
    invoke-direct/range {v6 .. v13}, Lmn3;-><init>(Landroidx/core/widget/NestedScrollView;Lcom/google/android/material/button/MaterialButton;Lfp1;Lcp1;Lcp1;Lcp1;Landroid/widget/TextView;)V

    .line 142
    .line 143
    .line 144
    const/16 v2, 0xc

    .line 145
    .line 146
    invoke-direct {v0, v1, v6, v2}, Lu35;-><init>(Lk28;Ljk8;I)V

    .line 147
    .line 148
    .line 149
    iput-object v1, v0, Lln3;->Q:Lil0;

    .line 150
    .line 151
    move-object/from16 v1, p2

    .line 152
    .line 153
    iput-object v1, v0, Lln3;->R:Ljava/lang/String;

    .line 154
    .line 155
    move/from16 v1, p3

    .line 156
    .line 157
    iput-boolean v1, v0, Lln3;->S:Z

    .line 158
    .line 159
    move-object/from16 v1, p4

    .line 160
    .line 161
    iput-object v1, v0, Lln3;->T:Lmt3;

    .line 162
    .line 163
    new-instance v1, Ldk;

    .line 164
    .line 165
    const/16 v2, 0x1b

    .line 166
    .line 167
    invoke-direct {v1, v0, v2}, Ldk;-><init>(Ljava/lang/Object;I)V

    .line 168
    .line 169
    .line 170
    new-instance v2, Lgv7;

    .line 171
    .line 172
    invoke-direct {v2, v1}, Lgv7;-><init>(Lbt3;)V

    .line 173
    .line 174
    .line 175
    iput-object v2, v0, Lln3;->U:Lgv7;

    .line 176
    .line 177
    new-instance v1, Lkn3;

    .line 178
    .line 179
    const/4 v2, 0x0

    .line 180
    invoke-direct {v1, v0, v2}, Lkn3;-><init>(Ljava/lang/Object;I)V

    .line 181
    .line 182
    .line 183
    new-instance v2, Lgv7;

    .line 184
    .line 185
    invoke-direct {v2, v1}, Lgv7;-><init>(Lbt3;)V

    .line 186
    .line 187
    .line 188
    iput-object v2, v0, Lln3;->V:Lgv7;

    .line 189
    .line 190
    new-instance v1, Lah;

    .line 191
    .line 192
    const/16 v2, 0x1c

    .line 193
    .line 194
    invoke-direct {v1, v0, v2}, Lah;-><init>(Ljava/lang/Object;I)V

    .line 195
    .line 196
    .line 197
    new-instance v2, Lgv7;

    .line 198
    .line 199
    invoke-direct {v2, v1}, Lgv7;-><init>(Lbt3;)V

    .line 200
    .line 201
    .line 202
    iput-object v2, v0, Lln3;->W:Lgv7;

    .line 203
    .line 204
    new-instance v1, Lbh;

    .line 205
    .line 206
    const/16 v2, 0x1a

    .line 207
    .line 208
    invoke-direct {v1, v0, v2}, Lbh;-><init>(Ljava/lang/Object;I)V

    .line 209
    .line 210
    .line 211
    new-instance v2, Lgv7;

    .line 212
    .line 213
    invoke-direct {v2, v1}, Lgv7;-><init>(Lbt3;)V

    .line 214
    .line 215
    .line 216
    iput-object v2, v0, Lln3;->X:Lgv7;

    .line 217
    .line 218
    invoke-static {}, Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;->getEntries()Ljx2;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    check-cast v1, Lz3;

    .line 223
    .line 224
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 225
    .line 226
    .line 227
    new-instance v2, Lw3;

    .line 228
    .line 229
    invoke-direct {v2, v1}, Lw3;-><init>(Lz3;)V

    .line 230
    .line 231
    .line 232
    :cond_0
    invoke-virtual {v2}, Lw3;->hasNext()Z

    .line 233
    .line 234
    .line 235
    move-result v1

    .line 236
    if-eqz v1, :cond_1

    .line 237
    .line 238
    invoke-virtual {v2}, Lw3;->next()Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    move-object v4, v1

    .line 243
    check-cast v4, Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;

    .line 244
    .line 245
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;->isCheckedInExpansion()Z

    .line 246
    .line 247
    .line 248
    move-result v4

    .line 249
    if-eqz v4, :cond_0

    .line 250
    .line 251
    move-object v3, v1

    .line 252
    :cond_1
    check-cast v3, Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;

    .line 253
    .line 254
    if-nez v3, :cond_2

    .line 255
    .line 256
    sget-object v1, Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;->Companion:Ltn3;

    .line 257
    .line 258
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 259
    .line 260
    .line 261
    sget-object v3, Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;->MISSING_ONLY:Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;

    .line 262
    .line 263
    :cond_2
    iput-object v3, v0, Lln3;->Y:Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;

    .line 264
    .line 265
    return-void

    .line 266
    :cond_3
    invoke-virtual {v6}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    throw v3

    .line 282
    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    throw v3
.end method


# virtual methods
.method public final j(Lao3;Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;)V
    .locals 7

    .line 1
    invoke-virtual {p2}, Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;->getTitleStringRes()I

    .line 2
    .line 3
    .line 4
    move-result v1

    .line 5
    invoke-virtual {p2}, Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;->getDescriptionStringRes()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    iget-object v0, p0, Lln3;->Y:Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;

    .line 10
    .line 11
    if-ne v0, p2, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    :goto_0
    move v3, v0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    goto :goto_0

    .line 18
    :goto_1
    new-instance v6, Lrm;

    .line 19
    .line 20
    const/4 v0, 0x7

    .line 21
    invoke-direct {v6, v0, p0, p2}, Lrm;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    const/4 v5, 0x0

    .line 25
    const/4 v4, 0x0

    .line 26
    move-object v0, p1

    .line 27
    invoke-virtual/range {v0 .. v6}, Lao3;->a(IIZZZLbt3;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final k()V
    .locals 4

    .line 1
    invoke-static {}, Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;->getEntries()Ljx2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;

    .line 20
    .line 21
    iget-object v2, p0, Lln3;->Y:Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;

    .line 22
    .line 23
    if-ne v1, v2, :cond_0

    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    const/4 v2, 0x0

    .line 28
    :goto_1
    invoke-virtual {v1, v2}, Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;->setCheckedInExpansion(Z)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget-object v0, p0, Lln3;->a0:Lqt3;

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    iget-object v2, p0, Lln3;->Y:Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;

    .line 38
    .line 39
    iget-object v3, p0, Lln3;->Z:Lq63;

    .line 40
    .line 41
    if-eqz v3, :cond_2

    .line 42
    .line 43
    invoke-virtual {v3}, Lq63;->v()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    :cond_2
    invoke-interface {v0, v2, v1}, Lqt3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lu35;->dismiss()V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_3
    const-string p0, "onConfirm"

    .line 55
    .line 56
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw v1
.end method

.method public final l()V
    .locals 12

    .line 1
    iget-object v0, p0, Lln3;->U:Lgv7;

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
    sget-object v1, Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;->MISSING_ONLY:Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;

    .line 10
    .line 11
    invoke-virtual {p0, v0, v1}, Lln3;->j(Lao3;Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lln3;->V:Lgv7;

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
    sget-object v1, Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;->OVERWRITE:Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;

    .line 23
    .line 24
    invoke-virtual {p0, v0, v1}, Lln3;->j(Lao3;Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lln3;->W:Lgv7;

    .line 28
    .line 29
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lao3;

    .line 34
    .line 35
    sget-object v1, Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;->FULL_RESTORE:Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;

    .line 36
    .line 37
    invoke-virtual {p0, v0, v1}, Lln3;->j(Lao3;Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lu35;->K:Ljk8;

    .line 41
    .line 42
    check-cast v0, Lmn3;

    .line 43
    .line 44
    iget-object v1, v0, Lmn3;->k:Landroid/widget/TextView;

    .line 45
    .line 46
    const/16 v2, 0x8

    .line 47
    .line 48
    const/4 v3, 0x0

    .line 49
    iget-boolean v4, p0, Lln3;->S:Z

    .line 50
    .line 51
    if-eqz v4, :cond_0

    .line 52
    .line 53
    move v5, v3

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    move v5, v2

    .line 56
    :goto_0
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 57
    .line 58
    .line 59
    iget-object v1, v0, Lmn3;->c:Lfp1;

    .line 60
    .line 61
    iget-object v1, v1, Lfp1;->a:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v1, Lcom/google/android/material/card/MaterialCardView;

    .line 64
    .line 65
    if-eqz v4, :cond_1

    .line 66
    .line 67
    move v2, v3

    .line 68
    :cond_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 69
    .line 70
    .line 71
    if-eqz v4, :cond_d

    .line 72
    .line 73
    iget-object v1, p0, Lln3;->Z:Lq63;

    .line 74
    .line 75
    if-eqz v1, :cond_2

    .line 76
    .line 77
    const/4 v2, 0x1

    .line 78
    goto :goto_1

    .line 79
    :cond_2
    move v2, v3

    .line 80
    :goto_1
    if-eqz v1, :cond_3

    .line 81
    .line 82
    invoke-virtual {v1}, Lq63;->v()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    goto :goto_2

    .line 87
    :cond_3
    iget-object v1, p0, Lln3;->R:Ljava/lang/String;

    .line 88
    .line 89
    :goto_2
    if-eqz v2, :cond_4

    .line 90
    .line 91
    const v4, 0x7f130273

    .line 92
    .line 93
    .line 94
    goto :goto_3

    .line 95
    :cond_4
    const v4, 0x7f130275

    .line 96
    .line 97
    .line 98
    :goto_3
    if-eqz v2, :cond_5

    .line 99
    .line 100
    const v5, 0x7f0801aa

    .line 101
    .line 102
    .line 103
    goto :goto_4

    .line 104
    :cond_5
    const v5, 0x7f080135

    .line 105
    .line 106
    .line 107
    :goto_4
    if-eqz v2, :cond_6

    .line 108
    .line 109
    const v6, 0x7f130452

    .line 110
    .line 111
    .line 112
    goto :goto_5

    .line 113
    :cond_6
    const v6, 0x7f1304dc

    .line 114
    .line 115
    .line 116
    :goto_5
    iget-object v0, v0, Lmn3;->c:Lfp1;

    .line 117
    .line 118
    iget-object v7, v0, Lfp1;->a:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast v7, Lcom/google/android/material/card/MaterialCardView;

    .line 121
    .line 122
    iget-object v8, p0, Lln3;->Q:Lil0;

    .line 123
    .line 124
    invoke-virtual {v8}, Lk28;->v()Z

    .line 125
    .line 126
    .line 127
    move-result v8

    .line 128
    if-eqz v8, :cond_7

    .line 129
    .line 130
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 131
    .line 132
    .line 133
    move-result-object v8

    .line 134
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 135
    .line 136
    .line 137
    const-string v9, "#FBC02D"

    .line 138
    .line 139
    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    move-result v9

    .line 143
    invoke-static {v8, v9}, Lio4;->c(Landroid/content/Context;I)I

    .line 144
    .line 145
    .line 146
    move-result v9

    .line 147
    invoke-static {v8, v9}, Lz85;->p(Landroid/content/Context;I)Lvl1;

    .line 148
    .line 149
    .line 150
    move-result-object v8

    .line 151
    iget v8, v8, Lvl1;->a:I

    .line 152
    .line 153
    goto :goto_6

    .line 154
    :cond_7
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 155
    .line 156
    .line 157
    move-result-object v8

    .line 158
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 159
    .line 160
    .line 161
    const v9, 0x7f06049b

    .line 162
    .line 163
    .line 164
    invoke-virtual {v8, v9}, Landroid/content/Context;->getColor(I)I

    .line 165
    .line 166
    .line 167
    move-result v9

    .line 168
    invoke-static {v8, v9}, Lio4;->c(Landroid/content/Context;I)I

    .line 169
    .line 170
    .line 171
    move-result v8

    .line 172
    :goto_6
    iget-object v9, v0, Lfp1;->c:Ljava/lang/Object;

    .line 173
    .line 174
    check-cast v9, Lcom/google/android/material/card/MaterialCardView;

    .line 175
    .line 176
    iget-object v10, v0, Lfp1;->e:Ljava/lang/Object;

    .line 177
    .line 178
    check-cast v10, Landroid/widget/TextView;

    .line 179
    .line 180
    if-eqz v2, :cond_8

    .line 181
    .line 182
    const/16 v3, 0xa

    .line 183
    .line 184
    invoke-static {v8, v3}, Lsz8;->U(II)I

    .line 185
    .line 186
    .line 187
    move-result v3

    .line 188
    :cond_8
    invoke-virtual {v9, v3}, Lcom/google/android/material/card/MaterialCardView;->setCardBackgroundColor(I)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 196
    .line 197
    .line 198
    move-result-object v3

    .line 199
    const v11, 0x7f07005d

    .line 200
    .line 201
    .line 202
    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getDimension(I)F

    .line 203
    .line 204
    .line 205
    move-result v3

    .line 206
    invoke-static {v3}, Ltu0;->v(F)I

    .line 207
    .line 208
    .line 209
    move-result v3

    .line 210
    invoke-virtual {v9, v3}, Lcom/google/android/material/card/MaterialCardView;->setStrokeWidth(I)V

    .line 211
    .line 212
    .line 213
    if-eqz v2, :cond_9

    .line 214
    .line 215
    move v3, v8

    .line 216
    goto :goto_7

    .line 217
    :cond_9
    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 218
    .line 219
    .line 220
    move-result-object v3

    .line 221
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 222
    .line 223
    .line 224
    const v11, 0x7f0400f3

    .line 225
    .line 226
    .line 227
    invoke-static {v3, v11}, Lsz8;->y(Landroid/content/Context;I)I

    .line 228
    .line 229
    .line 230
    move-result v11

    .line 231
    invoke-virtual {v3, v11}, Landroid/content/Context;->getColor(I)I

    .line 232
    .line 233
    .line 234
    move-result v3

    .line 235
    :goto_7
    invoke-virtual {v9, v3}, Lcom/google/android/material/card/MaterialCardView;->setStrokeColor(I)V

    .line 236
    .line 237
    .line 238
    new-instance v3, Lfr;

    .line 239
    .line 240
    const/4 v11, 0x6

    .line 241
    invoke-direct {v3, v11, p0, v1}, Lfr;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v9, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    .line 246
    .line 247
    if-eqz v2, :cond_a

    .line 248
    .line 249
    move v3, v8

    .line 250
    goto :goto_8

    .line 251
    :cond_a
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 252
    .line 253
    .line 254
    move-result-object v3

    .line 255
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 256
    .line 257
    .line 258
    invoke-static {v3}, Lsz8;->z(Landroid/content/Context;)I

    .line 259
    .line 260
    .line 261
    move-result v3

    .line 262
    :goto_8
    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setText(I)V

    .line 266
    .line 267
    .line 268
    iget-object v3, v0, Lfp1;->d:Ljava/lang/Object;

    .line 269
    .line 270
    check-cast v3, Landroid/widget/TextView;

    .line 271
    .line 272
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    .line 274
    .line 275
    iget-object v0, v0, Lfp1;->b:Ljava/lang/Object;

    .line 276
    .line 277
    check-cast v0, Landroid/widget/ImageButton;

    .line 278
    .line 279
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 283
    .line 284
    .line 285
    move-result-object v3

    .line 286
    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v3

    .line 290
    invoke-virtual {v0, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 291
    .line 292
    .line 293
    if-eqz v2, :cond_b

    .line 294
    .line 295
    goto :goto_9

    .line 296
    :cond_b
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 297
    .line 298
    .line 299
    move-result-object v3

    .line 300
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 301
    .line 302
    .line 303
    invoke-static {v3}, Lsz8;->A(Landroid/content/Context;)I

    .line 304
    .line 305
    .line 306
    move-result v8

    .line 307
    :goto_9
    invoke-static {v8}, Lsz8;->h0(I)Landroid/content/res/ColorStateList;

    .line 308
    .line 309
    .line 310
    move-result-object v3

    .line 311
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 312
    .line 313
    .line 314
    new-instance v3, Ljn3;

    .line 315
    .line 316
    invoke-direct {v3, v2, p0, v1}, Ljn3;-><init>(ZLln3;Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    .line 321
    .line 322
    iget-object p0, p0, Lln3;->X:Lgv7;

    .line 323
    .line 324
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object p0

    .line 328
    check-cast p0, Lcom/google/android/material/button/MaterialButton;

    .line 329
    .line 330
    if-eqz v2, :cond_c

    .line 331
    .line 332
    const v0, 0x7f13027d

    .line 333
    .line 334
    .line 335
    goto :goto_a

    .line 336
    :cond_c
    const v0, 0x7f13045a

    .line 337
    .line 338
    .line 339
    :goto_a
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    .line 340
    .line 341
    .line 342
    :cond_d
    return-void
.end method
