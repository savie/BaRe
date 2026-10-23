.class public final Lorg/swiftapps/swiftbackup/cloud/orphans/CloudOrphanCleanerActivity;
.super Lsa1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final synthetic S:I


# instance fields
.field public final P:Ll90;

.field public final Q:Lgv7;

.field public final R:Lgv7;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lsa1;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lls;

    .line 5
    .line 6
    const/4 v1, 0x5

    .line 7
    invoke-direct {v0, p0, v1}, Lls;-><init>(Lil0;I)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Ll90;

    .line 11
    .line 12
    const-class v2, Lorg/swiftapps/swiftbackup/cloud/orphans/a;

    .line 13
    .line 14
    invoke-static {v2}, Lph6;->a(Ljava/lang/Class;)Ln81;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    new-instance v3, Lms;

    .line 19
    .line 20
    const/4 v4, 0x6

    .line 21
    invoke-direct {v3, p0, v4}, Lms;-><init>(Lil0;I)V

    .line 22
    .line 23
    .line 24
    new-instance v5, Lns;

    .line 25
    .line 26
    invoke-direct {v5, p0, v4}, Lns;-><init>(Lil0;I)V

    .line 27
    .line 28
    .line 29
    invoke-direct {v1, v2, v3, v0, v5}, Ll90;-><init>(Ln81;Lbt3;Lbt3;Lbt3;)V

    .line 30
    .line 31
    .line 32
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/CloudOrphanCleanerActivity;->P:Ll90;

    .line 33
    .line 34
    new-instance v0, Lbk;

    .line 35
    .line 36
    const/16 v1, 0xb

    .line 37
    .line 38
    invoke-direct {v0, p0, v1}, Lbk;-><init>(Ljava/lang/Object;I)V

    .line 39
    .line 40
    .line 41
    new-instance v1, Lgv7;

    .line 42
    .line 43
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 44
    .line 45
    .line 46
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/CloudOrphanCleanerActivity;->Q:Lgv7;

    .line 47
    .line 48
    new-instance v0, Ldk;

    .line 49
    .line 50
    const/16 v1, 0xf

    .line 51
    .line 52
    invoke-direct {v0, p0, v1}, Ldk;-><init>(Ljava/lang/Object;I)V

    .line 53
    .line 54
    .line 55
    new-instance v1, Lgv7;

    .line 56
    .line 57
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 58
    .line 59
    .line 60
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/CloudOrphanCleanerActivity;->R:Lgv7;

    .line 61
    .line 62
    return-void
.end method


# virtual methods
.method public final bridge synthetic F()Lqo0;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/orphans/CloudOrphanCleanerActivity;->V()Lorg/swiftapps/swiftbackup/cloud/orphans/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final U()Lph1;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/CloudOrphanCleanerActivity;->Q:Lgv7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lph1;

    .line 8
    .line 9
    return-object p0
.end method

.method public final V()Lorg/swiftapps/swiftbackup/cloud/orphans/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/CloudOrphanCleanerActivity;->P:Ll90;

    .line 2
    .line 3
    invoke-virtual {p0}, Ll90;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/swiftapps/swiftbackup/cloud/orphans/a;

    .line 8
    .line 9
    return-object p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 1
    invoke-super/range {p0 .. p1}, Lsa1;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/orphans/CloudOrphanCleanerActivity;->U()Lph1;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v0, v0, Lph1;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lk28;->setContentView(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/orphans/CloudOrphanCleanerActivity;->U()Lph1;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v0, v0, Lph1;->c:Lw00;

    .line 18
    .line 19
    iget-object v0, v0, Lw00;->c:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Lix0;

    .line 22
    .line 23
    iget-object v0, v0, Lix0;->c:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Lzm;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lzm;->getSupportActionBar()Lnc8;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const/4 v1, 0x1

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lnc8;->Z(Z)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lnc8;->a0()V

    .line 41
    .line 42
    .line 43
    const v3, 0x7f13016e

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v3}, Lnc8;->e0(I)V

    .line 47
    .line 48
    .line 49
    :cond_0
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/orphans/CloudOrphanCleanerActivity;->U()Lph1;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget-object v0, v0, Lph1;->b:Landroid/widget/LinearLayout;

    .line 54
    .line 55
    const/4 v3, 0x7

    .line 56
    invoke-static {v0, v3}, Lsz8;->b(Landroid/view/View;I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/orphans/CloudOrphanCleanerActivity;->U()Lph1;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iget-object v0, v0, Lph1;->b:Landroid/widget/LinearLayout;

    .line 64
    .line 65
    invoke-virtual {p0}, Lk28;->p()I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/orphans/CloudOrphanCleanerActivity;->U()Lph1;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    iget-object v0, v0, Lph1;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 77
    .line 78
    new-instance v3, Lorg/swiftapps/swiftbackup/views/PreCachingLinearLayoutManager;

    .line 79
    .line 80
    invoke-direct {v3, p0}, Lorg/swiftapps/swiftbackup/views/PreCachingLinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/a;)V

    .line 84
    .line 85
    .line 86
    iget-object v3, p0, Lorg/swiftapps/swiftbackup/cloud/orphans/CloudOrphanCleanerActivity;->R:Lgv7;

    .line 87
    .line 88
    invoke-virtual {v3}, Lgv7;->getValue()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    check-cast v4, Lmh1;

    .line 93
    .line 94
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lhg6;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Lng6;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    instance-of v4, v0, Lcf2;

    .line 102
    .line 103
    if-eqz v4, :cond_1

    .line 104
    .line 105
    check-cast v0, Lcf2;

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_1
    const/4 v0, 0x0

    .line 109
    :goto_0
    if-eqz v0, :cond_2

    .line 110
    .line 111
    const/4 v4, 0x0

    .line 112
    iput-boolean v4, v0, Lcf2;->g:Z

    .line 113
    .line 114
    :cond_2
    invoke-virtual {v3}, Lgv7;->getValue()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    check-cast v0, Lmh1;

    .line 119
    .line 120
    new-instance v3, Lb30;

    .line 121
    .line 122
    invoke-direct {v3, p0, v1}, Lb30;-><init>(Ljava/lang/Object;I)V

    .line 123
    .line 124
    .line 125
    iput-object v3, v0, Lgm7;->j:Lqt3;

    .line 126
    .line 127
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/orphans/CloudOrphanCleanerActivity;->U()Lph1;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    iget-object v0, v0, Lph1;->k:Lcom/google/android/material/button/MaterialButton;

    .line 132
    .line 133
    new-instance v3, Li00;

    .line 134
    .line 135
    const/4 v4, 0x4

    .line 136
    invoke-direct {v3, p0, v4}, Li00;-><init>(Ljava/lang/Object;I)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/orphans/CloudOrphanCleanerActivity;->U()Lph1;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    iget-object v0, v0, Lph1;->f:Lcom/google/android/material/button/MaterialButton;

    .line 147
    .line 148
    new-instance v3, Les;

    .line 149
    .line 150
    invoke-direct {v3, p0, v4}, Les;-><init>(Ljava/lang/Object;I)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/orphans/CloudOrphanCleanerActivity;->U()Lph1;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    iget-object v0, v0, Lph1;->e:Lcom/google/android/material/button/MaterialButton;

    .line 161
    .line 162
    new-instance v3, Lxd1;

    .line 163
    .line 164
    invoke-direct {v3, p0, v1}, Lxd1;-><init>(Ljava/lang/Object;I)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/orphans/CloudOrphanCleanerActivity;->U()Lph1;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    iget-object v0, v0, Lph1;->d:Lcom/google/android/material/button/MaterialButton;

    .line 175
    .line 176
    new-instance v1, Lgs;

    .line 177
    .line 178
    const/4 v8, 0x2

    .line 179
    invoke-direct {v1, p0, v8}, Lgs;-><init>(Ljava/lang/Object;I)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/orphans/CloudOrphanCleanerActivity;->V()Lorg/swiftapps/swiftbackup/cloud/orphans/a;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    iget-object v9, v0, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->e:Lex6;

    .line 190
    .line 191
    new-instance v0, Lnh1;

    .line 192
    .line 193
    const/4 v6, 0x0

    .line 194
    const/4 v7, 0x0

    .line 195
    const/4 v1, 0x1

    .line 196
    const-class v3, Lorg/swiftapps/swiftbackup/cloud/orphans/CloudOrphanCleanerActivity;

    .line 197
    .line 198
    const-string v4, "renderState"

    .line 199
    .line 200
    const-string v5, "renderState(Lorg/swiftapps/swiftbackup/cloud/orphans/CloudOrphanCleanerVM$State;)V"

    .line 201
    .line 202
    move-object v2, p0

    .line 203
    invoke-direct/range {v0 .. v7}, Lnh1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 204
    .line 205
    .line 206
    new-instance v1, Lwb1;

    .line 207
    .line 208
    invoke-direct {v1, v8, v0}, Lwb1;-><init>(ILmt3;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v9, p0, v1}, Lzy4;->e(Lfu4;Les5;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/orphans/CloudOrphanCleanerActivity;->V()Lorg/swiftapps/swiftbackup/cloud/orphans/a;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    iget-object v9, v0, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->f:Lix6;

    .line 219
    .line 220
    new-instance v0, Loh1;

    .line 221
    .line 222
    const/4 v1, 0x1

    .line 223
    const-class v3, Lorg/swiftapps/swiftbackup/cloud/orphans/CloudOrphanCleanerActivity;

    .line 224
    .line 225
    const-string v4, "handleEvent"

    .line 226
    .line 227
    const-string v5, "handleEvent(Lorg/swiftapps/swiftbackup/cloud/orphans/CloudOrphanCleanerVM$Event;)V"

    .line 228
    .line 229
    invoke-direct/range {v0 .. v7}, Loh1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 230
    .line 231
    .line 232
    new-instance v1, Lwb1;

    .line 233
    .line 234
    invoke-direct {v1, v8, v0}, Lwb1;-><init>(ILmt3;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v9, p0, v1}, Lix6;->e(Lfu4;Les5;)V

    .line 238
    .line 239
    .line 240
    sget-object v0, Ltb1;->e:Lix6;

    .line 241
    .line 242
    new-instance v1, Lc7;

    .line 243
    .line 244
    const/16 v3, 0xa

    .line 245
    .line 246
    invoke-direct {v1, p0, v3}, Lc7;-><init>(Ljava/lang/Object;I)V

    .line 247
    .line 248
    .line 249
    new-instance v3, Lwb1;

    .line 250
    .line 251
    invoke-direct {v3, v8, v1}, Lwb1;-><init>(ILmt3;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v0, p0, v3}, Lix6;->e(Lfu4;Les5;)V

    .line 255
    .line 256
    .line 257
    sget-object v0, Ltb1;->c:Lgj5;

    .line 258
    .line 259
    new-instance v1, Ld7;

    .line 260
    .line 261
    const/16 v3, 0x8

    .line 262
    .line 263
    invoke-direct {v1, p0, v3}, Ld7;-><init>(Ljava/lang/Object;I)V

    .line 264
    .line 265
    .line 266
    new-instance v3, Lwb1;

    .line 267
    .line 268
    invoke-direct {v3, v8, v1}, Lwb1;-><init>(ILmt3;)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v0, p0, v3}, Lzy4;->e(Lfu4;Les5;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/orphans/CloudOrphanCleanerActivity;->V()Lorg/swiftapps/swiftbackup/cloud/orphans/a;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    iget-object v1, v0, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->g:Lorg/swiftapps/swiftbackup/cloud/orphans/b;

    .line 279
    .line 280
    if-eqz v1, :cond_3

    .line 281
    .line 282
    iget-object v0, v0, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->e:Lex6;

    .line 283
    .line 284
    invoke-virtual {v0, v1}, Lex6;->k(Ljava/lang/Object;)V

    .line 285
    .line 286
    .line 287
    return-void

    .line 288
    :cond_3
    invoke-static {}, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->o()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v1

    .line 292
    invoke-static {v1}, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->n(Ljava/lang/String;)Lorg/swiftapps/swiftbackup/cloud/orphans/b;

    .line 293
    .line 294
    .line 295
    move-result-object v1

    .line 296
    invoke-virtual {v0, v1}, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->t(Lorg/swiftapps/swiftbackup/cloud/orphans/b;)V

    .line 297
    .line 298
    .line 299
    return-void
.end method
