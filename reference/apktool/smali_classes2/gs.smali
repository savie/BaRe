.class public final synthetic Lgs;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lgs;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lgs;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    iget p1, p0, Lgs;->a:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lgs;->b:Ljava/lang/Object;

    .line 7
    .line 8
    packed-switch p1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast p0, Luo8;

    .line 12
    .line 13
    sget p1, Lorg/swiftapps/swiftbackup/walls/WallsManageActivity;->S:I

    .line 14
    .line 15
    iget-object p0, p0, Luo8;->a:Lorg/swiftapps/swiftbackup/walls/WallsDashActivity;

    .line 16
    .line 17
    invoke-static {p0, v0}, Lk55;->E(Lil0;Z)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_0
    check-cast p0, Lorg/swiftapps/swiftbackup/walls/WallsDashActivity;

    .line 22
    .line 23
    sget p1, Lorg/swiftapps/swiftbackup/walls/WallsDashActivity;->W:I

    .line 24
    .line 25
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/walls/WallsDashActivity;->Y()Lpp8;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    sget-object v0, Lzn4;->a:Lzn4;

    .line 30
    .line 31
    new-instance v0, Llb2;

    .line 32
    .line 33
    const/4 v1, 0x3

    .line 34
    invoke-direct {v0, p1, v2, v1}, Llb2;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 35
    .line 36
    .line 37
    invoke-static {v2, v0}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/walls/WallsDashActivity;->Y()Lpp8;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {p0}, Lpp8;->k()V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :pswitch_1
    check-cast p0, Ln97;

    .line 49
    .line 50
    iget-object p1, p0, Ln97;->f:Lcz;

    .line 51
    .line 52
    sget-object v0, Lm97;->SET_LABELS:Lm97;

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Lcz;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v1}, Lol1;->j(Z)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :pswitch_2
    check-cast p0, Lm37;

    .line 62
    .line 63
    invoke-virtual {p0}, Lm37;->l()Lorg/swiftapps/swiftbackup/views/SwiftBackupMaterialSwitch;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-virtual {p0}, Landroid/view/View;->callOnClick()Z

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :pswitch_3
    check-cast p0, Ldd6;

    .line 72
    .line 73
    sget-object p1, Lmp6;->a:Lmp6;

    .line 74
    .line 75
    invoke-static {}, Lmp6;->f()Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    iget-object p0, p0, Ldd6;->l:Lsa1;

    .line 80
    .line 81
    if-eqz p1, :cond_0

    .line 82
    .line 83
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    const p1, 0x7f1302b0

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    const/16 v0, 0xa

    .line 97
    .line 98
    invoke-static {p0, v2, p1, v0}, Lb05;->l(Lio1;Ljava/lang/String;Ljava/lang/String;I)Ls35;

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_0
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/common/Const;->N(Lil0;)V

    .line 103
    .line 104
    .line 105
    :goto_0
    return-void

    .line 106
    :pswitch_4
    check-cast p0, Lorg/swiftapps/swiftbackup/messagescalls/dash/MessagesDashActivity;

    .line 107
    .line 108
    sget p1, Lorg/swiftapps/swiftbackup/messagescalls/dash/MessagesDashActivity;->T:I

    .line 109
    .line 110
    const-class p1, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;

    .line 111
    .line 112
    invoke-static {p0, p1}, Lai8;->q(Landroid/content/Context;Ljava/lang/Class;)V

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    :pswitch_5
    check-cast p0, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;

    .line 117
    .line 118
    sget-object p1, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X:Landroid/view/animation/PathInterpolator;

    .line 119
    .line 120
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->U()V

    .line 121
    .line 122
    .line 123
    return-void

    .line 124
    :pswitch_6
    check-cast p0, La14;

    .line 125
    .line 126
    iget-object p1, p0, La14;->n:Lqt3;

    .line 127
    .line 128
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 129
    .line 130
    invoke-interface {p1, v1, v1}, Lqt3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0, v0}, Lol1;->j(Z)V

    .line 134
    .line 135
    .line 136
    return-void

    .line 137
    :pswitch_7
    check-cast p0, Lpj2;

    .line 138
    .line 139
    iget-object p0, p0, Lpj2;->b:Lmk2;

    .line 140
    .line 141
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 142
    .line 143
    .line 144
    sget-object p1, Lzn4;->a:Lzn4;

    .line 145
    .line 146
    new-instance p1, Lqj;

    .line 147
    .line 148
    invoke-direct {p1, p0, v2, v1}, Lqj;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 149
    .line 150
    .line 151
    invoke-static {v2, p1}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 152
    .line 153
    .line 154
    return-void

    .line 155
    :pswitch_8
    check-cast p0, Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity;

    .line 156
    .line 157
    sget p1, Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity;->V:I

    .line 158
    .line 159
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity;->U()Lkq1;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    iget-object p1, p1, Lkq1;->k:Landroidx/recyclerview/widget/RecyclerView;

    .line 164
    .line 165
    new-instance v1, Lhq1;

    .line 166
    .line 167
    invoke-direct {v1, p0, v0}, Lhq1;-><init>(Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity;I)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1, v1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 171
    .line 172
    .line 173
    return-void

    .line 174
    :pswitch_9
    check-cast p0, Lorg/swiftapps/swiftbackup/cloud/orphans/CloudOrphanCleanerActivity;

    .line 175
    .line 176
    sget p1, Lorg/swiftapps/swiftbackup/cloud/orphans/CloudOrphanCleanerActivity;->S:I

    .line 177
    .line 178
    new-instance p1, Lfj;

    .line 179
    .line 180
    const/16 v0, 0x10

    .line 181
    .line 182
    invoke-direct {p1, p0, v0}, Lfj;-><init>(Ljava/lang/Object;I)V

    .line 183
    .line 184
    .line 185
    invoke-static {p0, v2, p1, v1}, Lsa1;->R(Lsa1;Ldd1;Lbt3;I)V

    .line 186
    .line 187
    .line 188
    return-void

    .line 189
    :pswitch_a
    check-cast p0, Lorg/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsActivity;

    .line 190
    .line 191
    sget p1, Lorg/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsActivity;->Z:I

    .line 192
    .line 193
    const p1, 0x7f130426

    .line 194
    .line 195
    .line 196
    invoke-virtual {p0, p1}, Lil0;->M(I)V

    .line 197
    .line 198
    .line 199
    iget-object p1, p0, Lorg/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsActivity;->X:Ljava/lang/String;

    .line 200
    .line 201
    if-eqz p1, :cond_1

    .line 202
    .line 203
    invoke-static {p1}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 204
    .line 205
    .line 206
    move-result v0

    .line 207
    if-nez v0, :cond_1

    .line 208
    .line 209
    goto :goto_1

    .line 210
    :cond_1
    move-object p1, v2

    .line 211
    :goto_1
    sget-object v0, Lzn4;->a:Lzn4;

    .line 212
    .line 213
    new-instance v0, Ls10;

    .line 214
    .line 215
    invoke-direct {v0, p1, p0, v2, v1}, Ls10;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljv1;I)V

    .line 216
    .line 217
    .line 218
    invoke-static {v2, v0}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 219
    .line 220
    .line 221
    return-void

    .line 222
    :pswitch_b
    check-cast p0, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;

    .line 223
    .line 224
    sget p1, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->q0:I

    .line 225
    .line 226
    iget-boolean p1, p0, Ldt;->Y:Z

    .line 227
    .line 228
    if-eqz p1, :cond_2

    .line 229
    .line 230
    goto :goto_2

    .line 231
    :cond_2
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->l0()Lws;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    iget-object p1, p1, Lgm7;->e:Lfm7;

    .line 236
    .line 237
    iget-object p1, p1, Lfm7;->a:Ljava/util/List;

    .line 238
    .line 239
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 240
    .line 241
    .line 242
    move-result p1

    .line 243
    if-nez p1, :cond_3

    .line 244
    .line 245
    iget-object p1, p0, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->o0:Lgv7;

    .line 246
    .line 247
    invoke-virtual {p1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object p1

    .line 251
    check-cast p1, Lt10;

    .line 252
    .line 253
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->l0()Lws;

    .line 254
    .line 255
    .line 256
    move-result-object p0

    .line 257
    iget-object p0, p0, Lgm7;->e:Lfm7;

    .line 258
    .line 259
    iget-object p0, p0, Lfm7;->a:Ljava/util/List;

    .line 260
    .line 261
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 262
    .line 263
    .line 264
    iget-object v3, p1, Lt10;->S:Lgv7;

    .line 265
    .line 266
    iget-object v4, p1, Lt10;->R:Lgv7;

    .line 267
    .line 268
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v4}, Lgv7;->getValue()Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v5

    .line 275
    check-cast v5, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 276
    .line 277
    invoke-virtual {v5, v1}, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;->setLinearLayoutManager(I)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v4}, Lgv7;->getValue()Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v4

    .line 284
    check-cast v4, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 285
    .line 286
    invoke-virtual {v3}, Lgv7;->getValue()Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object v5

    .line 290
    check-cast v5, Lr10;

    .line 291
    .line 292
    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lhg6;)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v3}, Lgv7;->getValue()Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object v3

    .line 299
    check-cast v3, Lr10;

    .line 300
    .line 301
    new-instance v4, Lmi;

    .line 302
    .line 303
    invoke-direct {v4, v1, p1, p0}, Lmi;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 304
    .line 305
    .line 306
    iput-object v4, v3, Lgm7;->j:Lqt3;

    .line 307
    .line 308
    sget-object v1, Lzn4;->a:Lzn4;

    .line 309
    .line 310
    new-instance v1, Ls10;

    .line 311
    .line 312
    invoke-direct {v1, p1, p0, v2, v0}, Ls10;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljv1;I)V

    .line 313
    .line 314
    .line 315
    invoke-static {v2, v1}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 316
    .line 317
    .line 318
    goto :goto_2

    .line 319
    :cond_3
    invoke-static {}, Lorg/swiftapps/swiftbackup/common/Const;->L()V

    .line 320
    .line 321
    .line 322
    :goto_2
    return-void

    .line 323
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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
