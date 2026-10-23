.class public final Lrj2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lorg/swiftapps/swiftbackup/detail/DetailActivity;

.field public final b:Lij2;

.field public final c:Lmk2;

.field public final d:Landroid/widget/LinearLayout;

.field public final e:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final f:Landroid/widget/TextView;

.field public final g:Ltj2;

.field public final h:Lcom/google/android/material/button/MaterialButton;

.field public final i:Lgv7;

.field public final j:Landroid/view/animation/AlphaAnimation;


# direct methods
.method public constructor <init>(Lorg/swiftapps/swiftbackup/detail/DetailActivity;Lij2;Lmk2;)V
    .locals 0

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lrj2;->a:Lorg/swiftapps/swiftbackup/detail/DetailActivity;

    .line 8
    .line 9
    iput-object p2, p0, Lrj2;->b:Lij2;

    .line 10
    .line 11
    iput-object p3, p0, Lrj2;->c:Lmk2;

    .line 12
    .line 13
    iget-object p1, p2, Lij2;->d:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p1, Landroid/widget/LinearLayout;

    .line 16
    .line 17
    iput-object p1, p0, Lrj2;->d:Landroid/widget/LinearLayout;

    .line 18
    .line 19
    iget-object p1, p2, Lij2;->c:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p1, Lke;

    .line 22
    .line 23
    iget-object p1, p1, Lke;->b:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 26
    .line 27
    iput-object p1, p0, Lrj2;->e:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 28
    .line 29
    iget-object p1, p2, Lij2;->f:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast p1, Landroid/widget/TextView;

    .line 32
    .line 33
    iput-object p1, p0, Lrj2;->f:Landroid/widget/TextView;

    .line 34
    .line 35
    iget-object p1, p2, Lij2;->e:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast p1, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 38
    .line 39
    invoke-static {p1}, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->a0(Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;)Ltj2;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iput-object p1, p0, Lrj2;->g:Ltj2;

    .line 44
    .line 45
    iget-object p1, p2, Lij2;->b:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    .line 48
    .line 49
    iput-object p1, p0, Lrj2;->h:Lcom/google/android/material/button/MaterialButton;

    .line 50
    .line 51
    new-instance p1, Lak;

    .line 52
    .line 53
    const/16 p2, 0xd

    .line 54
    .line 55
    invoke-direct {p1, p0, p2}, Lak;-><init>(Ljava/lang/Object;I)V

    .line 56
    .line 57
    .line 58
    new-instance p2, Lgv7;

    .line 59
    .line 60
    invoke-direct {p2, p1}, Lgv7;-><init>(Lbt3;)V

    .line 61
    .line 62
    .line 63
    iput-object p2, p0, Lrj2;->i:Lgv7;

    .line 64
    .line 65
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    .line 66
    .line 67
    const/high16 p2, 0x3f000000    # 0.5f

    .line 68
    .line 69
    const/high16 p3, 0x3f800000    # 1.0f

    .line 70
    .line 71
    invoke-direct {p1, p2, p3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 72
    .line 73
    .line 74
    const-wide/16 p2, 0x1f4

    .line 75
    .line 76
    invoke-virtual {p1, p2, p3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 77
    .line 78
    .line 79
    const-wide/16 p2, 0x14

    .line 80
    .line 81
    invoke-virtual {p1, p2, p3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 82
    .line 83
    .line 84
    const/4 p2, 0x2

    .line 85
    invoke-virtual {p1, p2}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 86
    .line 87
    .line 88
    const/4 p2, -0x1

    .line 89
    invoke-virtual {p1, p2}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 90
    .line 91
    .line 92
    iput-object p1, p0, Lrj2;->j:Landroid/view/animation/AlphaAnimation;

    .line 93
    .line 94
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lrj2;->i:Lgv7;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Landroid/view/View;

    .line 24
    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    iget-object v2, p0, Lrj2;->j:Landroid/view/animation/AlphaAnimation;

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    return-void
.end method

.method public final b(Lek2;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lrj2;->b:Lij2;

    .line 2
    .line 3
    iget-object v0, v0, Lij2;->a:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Landroid/widget/FrameLayout;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    sget-object v1, Lck2;->a:Lck2;

    .line 11
    .line 12
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/16 v2, 0x8

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    sget-object v1, Lbk2;->a:Lbk2;

    .line 25
    .line 26
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    const/4 v3, 0x1

    .line 31
    iget-object v4, p0, Lrj2;->e:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 32
    .line 33
    iget-object v5, p0, Lrj2;->d:Landroid/widget/LinearLayout;

    .line 34
    .line 35
    const/4 v6, 0x0

    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    invoke-static {v5}, Lsz8;->W(Landroid/view/View;)V

    .line 42
    .line 43
    .line 44
    invoke-static {v4}, Lsz8;->c0(Landroid/view/View;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v3}, Lrj2;->a(Z)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_1
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 52
    .line 53
    .line 54
    invoke-static {v5}, Lsz8;->c0(Landroid/view/View;)V

    .line 55
    .line 56
    .line 57
    invoke-static {v4}, Lsz8;->W(Landroid/view/View;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v6}, Lrj2;->a(Z)V

    .line 61
    .line 62
    .line 63
    check-cast p1, Ldk2;

    .line 64
    .line 65
    new-instance v5, Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .line 69
    .line 70
    iget-object v0, p1, Ldk2;->a:Ljava/lang/String;

    .line 71
    .line 72
    if-eqz v0, :cond_4

    .line 73
    .line 74
    new-instance v1, Luj2;

    .line 75
    .line 76
    sget-object v4, Liu;->APP:Liu;

    .line 77
    .line 78
    invoke-virtual {v4}, Liu;->getIconRes()I

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    iget-boolean v6, p1, Ldk2;->b:Z

    .line 83
    .line 84
    if-nez v6, :cond_3

    .line 85
    .line 86
    iget-boolean v6, p1, Ldk2;->c:Z

    .line 87
    .line 88
    if-eqz v6, :cond_2

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_2
    const-string v6, "APK"

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_3
    :goto_0
    const-string v6, "APKs"

    .line 95
    .line 96
    :goto_1
    new-instance v7, Lox;

    .line 97
    .line 98
    const/16 v8, 0xb

    .line 99
    .line 100
    invoke-direct {v7, p0, v8}, Lox;-><init>(Ljava/lang/Object;I)V

    .line 101
    .line 102
    .line 103
    invoke-direct {v1, v4, v6, v0, v7}, Luj2;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Lmt3;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    :cond_4
    iget-object v0, p1, Ldk2;->d:Ljava/lang/String;

    .line 110
    .line 111
    const/4 v1, 0x7

    .line 112
    iget-object v4, p0, Lrj2;->a:Lorg/swiftapps/swiftbackup/detail/DetailActivity;

    .line 113
    .line 114
    if-eqz v0, :cond_5

    .line 115
    .line 116
    new-instance v6, Luj2;

    .line 117
    .line 118
    sget-object v7, Liu;->DATA:Liu;

    .line 119
    .line 120
    invoke-virtual {v7}, Liu;->getIconRes()I

    .line 121
    .line 122
    .line 123
    move-result v7

    .line 124
    const v8, 0x7f1301d8

    .line 125
    .line 126
    .line 127
    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v8

    .line 131
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    .line 133
    .line 134
    new-instance v9, Lcz;

    .line 135
    .line 136
    invoke-direct {v9, p0, v1}, Lcz;-><init>(Ljava/lang/Object;I)V

    .line 137
    .line 138
    .line 139
    invoke-direct {v6, v7, v8, v0, v9}, Luj2;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Lmt3;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    :cond_5
    iget-object v0, p1, Ldk2;->e:Ljava/lang/String;

    .line 146
    .line 147
    if-eqz v0, :cond_6

    .line 148
    .line 149
    new-instance v6, Luj2;

    .line 150
    .line 151
    sget-object v7, Liu;->EXTDATA:Liu;

    .line 152
    .line 153
    invoke-virtual {v7}, Liu;->getIconRes()I

    .line 154
    .line 155
    .line 156
    move-result v7

    .line 157
    const v8, 0x7f13022f

    .line 158
    .line 159
    .line 160
    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v8

    .line 164
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 165
    .line 166
    .line 167
    new-instance v9, Lu10;

    .line 168
    .line 169
    invoke-direct {v9, p0, v1}, Lu10;-><init>(Ljava/lang/Object;I)V

    .line 170
    .line 171
    .line 172
    invoke-direct {v6, v7, v8, v0, v9}, Luj2;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Lmt3;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    :cond_6
    iget-object v0, p1, Ldk2;->g:Ljava/lang/String;

    .line 179
    .line 180
    if-eqz v0, :cond_7

    .line 181
    .line 182
    new-instance v1, Luj2;

    .line 183
    .line 184
    sget-object v6, Liu;->EXPANSION:Liu;

    .line 185
    .line 186
    invoke-virtual {v6}, Liu;->getIconRes()I

    .line 187
    .line 188
    .line 189
    move-result v6

    .line 190
    const v7, 0x7f13022a

    .line 191
    .line 192
    .line 193
    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v7

    .line 197
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 198
    .line 199
    .line 200
    new-instance v8, Lv10;

    .line 201
    .line 202
    const/16 v9, 0x9

    .line 203
    .line 204
    invoke-direct {v8, p0, v9}, Lv10;-><init>(Ljava/lang/Object;I)V

    .line 205
    .line 206
    .line 207
    invoke-direct {v1, v6, v7, v0, v8}, Luj2;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Lmt3;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    :cond_7
    iget-object v0, p1, Ldk2;->f:Ljava/lang/String;

    .line 214
    .line 215
    if-eqz v0, :cond_8

    .line 216
    .line 217
    new-instance v1, Luj2;

    .line 218
    .line 219
    sget-object v6, Liu;->MEDIA:Liu;

    .line 220
    .line 221
    invoke-virtual {v6}, Liu;->getIconRes()I

    .line 222
    .line 223
    .line 224
    move-result v6

    .line 225
    const v7, 0x7f130346

    .line 226
    .line 227
    .line 228
    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v4

    .line 232
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 233
    .line 234
    .line 235
    new-instance v7, Lpx;

    .line 236
    .line 237
    const/4 v8, 0x6

    .line 238
    invoke-direct {v7, p0, v8}, Lpx;-><init>(Ljava/lang/Object;I)V

    .line 239
    .line 240
    .line 241
    invoke-direct {v1, v6, v4, v0, v7}, Luj2;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Lmt3;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    :cond_8
    new-instance v4, Lfm7;

    .line 248
    .line 249
    const/4 v8, 0x0

    .line 250
    const/16 v9, 0x1e

    .line 251
    .line 252
    const/4 v6, 0x0

    .line 253
    const/4 v7, 0x0

    .line 254
    invoke-direct/range {v4 .. v9}, Lfm7;-><init>(Ljava/util/List;Ljava/util/Set;ZLjava/lang/String;I)V

    .line 255
    .line 256
    .line 257
    iget-object v0, p0, Lrj2;->g:Ltj2;

    .line 258
    .line 259
    invoke-virtual {v0, v4, v3}, Lgm7;->w(Lfm7;Z)V

    .line 260
    .line 261
    .line 262
    iget-object v0, p0, Lrj2;->f:Landroid/widget/TextView;

    .line 263
    .line 264
    iget-object p1, p1, Ldk2;->h:Ljava/lang/String;

    .line 265
    .line 266
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    .line 268
    .line 269
    const p1, 0x7f08019f

    .line 270
    .line 271
    .line 272
    iget-object v0, p0, Lrj2;->h:Lcom/google/android/material/button/MaterialButton;

    .line 273
    .line 274
    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButton;->setIconResource(I)V

    .line 275
    .line 276
    .line 277
    new-instance p1, Les;

    .line 278
    .line 279
    invoke-direct {p1, p0, v2}, Les;-><init>(Ljava/lang/Object;I)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    .line 284
    .line 285
    return-void
.end method
