.class public final synthetic Lto5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lto5;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lto5;->b:Ljava/lang/Object;

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
    .locals 11

    .line 1
    iget v0, p0, Lto5;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    sget-object v3, Lbe8;->a:Lbe8;

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    iget-object p0, p0, Lto5;->b:Ljava/lang/Object;

    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    check-cast p0, Lorg/swiftapps/swiftbackup/walls/WallsManageActivity;

    .line 14
    .line 15
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/walls/WallsManageActivity;->R:Lmo8;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v1, v0, Lgm7;->e:Lfm7;

    .line 20
    .line 21
    iget-boolean v1, v1, Lfm7;->c:Z

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Lgm7;->u(Z)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p0, v2}, Lil0;->A(Z)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lil0;->z()V

    .line 33
    .line 34
    .line 35
    :goto_0
    return-object v3

    .line 36
    :cond_1
    const-string p0, "mAdapter"

    .line 37
    .line 38
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw v4

    .line 42
    :pswitch_0
    check-cast p0, Lpw6;

    .line 43
    .line 44
    return-object p0

    .line 45
    :pswitch_1
    check-cast p0, Lorg/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity;

    .line 46
    .line 47
    sget v0, Lorg/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity;->f0:I

    .line 48
    .line 49
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity;->Y:Lgv7;

    .line 50
    .line 51
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    check-cast p0, Loo7;

    .line 56
    .line 57
    iget-object p0, p0, Loo7;->e:Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 58
    .line 59
    return-object p0

    .line 60
    :pswitch_2
    check-cast p0, Ljava/lang/String;

    .line 61
    .line 62
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/model/StorageInfoLocal$a;->b(Ljava/lang/String;)Lorg/swiftapps/swiftbackup/model/StorageInfoLocal$Success;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    return-object p0

    .line 67
    :pswitch_3
    check-cast p0, Lpa7;

    .line 68
    .line 69
    const-string v0, "play_notification_sounds"

    .line 70
    .line 71
    invoke-virtual {p0, v0}, Lc46;->j(Ljava/lang/String;)Landroidx/preference/Preference;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    check-cast p0, Lorg/swiftapps/swiftbackup/settings/MSwitchPreference;

    .line 79
    .line 80
    return-object p0

    .line 81
    :pswitch_4
    check-cast p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;

    .line 82
    .line 83
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->getAppBackupLimits()Ljava/util/List;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-static {}, Lok;->c()Ljava/util/ArrayList;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    new-instance v1, Ljava/util/ArrayList;

    .line 92
    .line 93
    const/16 v2, 0xa

    .line 94
    .line 95
    invoke-static {v0, v2}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    if-eqz v2, :cond_2

    .line 111
    .line 112
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    move-object v4, v2

    .line 117
    check-cast v4, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;

    .line 118
    .line 119
    const/4 v8, 0x1

    .line 120
    const/4 v9, 0x0

    .line 121
    const/4 v5, 0x0

    .line 122
    const/4 v6, 0x0

    .line 123
    const/4 v7, 0x0

    .line 124
    invoke-static/range {v4 .. v9}, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;->copy$default(Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_2
    invoke-static {v1}, Lok;->e(Ljava/util/List;)V

    .line 133
    .line 134
    .line 135
    if-eqz p0, :cond_4

    .line 136
    .line 137
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    if-eqz v0, :cond_3

    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_3
    invoke-static {p0}, Lok;->e(Ljava/util/List;)V

    .line 145
    .line 146
    .line 147
    :cond_4
    :goto_2
    return-object v3

    .line 148
    :pswitch_5
    check-cast p0, Lm37;

    .line 149
    .line 150
    new-instance v0, Lj57;

    .line 151
    .line 152
    invoke-virtual {p0}, Lm37;->i()Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    invoke-direct {v0, v2, p0}, Lj57;-><init>(Lorg/swiftapps/swiftbackup/home/HomeActivity;Lm37;)V

    .line 157
    .line 158
    .line 159
    iput-boolean v1, v0, Lgm7;->k:Z

    .line 160
    .line 161
    return-object v0

    .line 162
    :pswitch_6
    check-cast p0, Lnd6;

    .line 163
    .line 164
    invoke-virtual {p0}, Landroidx/fragment/app/o;->getActivity()Landroidx/fragment/app/u;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    if-eqz v0, :cond_5

    .line 169
    .line 170
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    if-ne v0, v1, :cond_5

    .line 175
    .line 176
    goto :goto_3

    .line 177
    :cond_5
    invoke-virtual {p0}, Lnd6;->i()Lod6;

    .line 178
    .line 179
    .line 180
    move-result-object p0

    .line 181
    sget-object v0, Lzn4;->a:Lzn4;

    .line 182
    .line 183
    new-instance v0, Lvs;

    .line 184
    .line 185
    const/4 v1, 0x3

    .line 186
    invoke-direct {v0, p0, v4, v1}, Lvs;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 187
    .line 188
    .line 189
    invoke-static {v4, v0}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 190
    .line 191
    .line 192
    :goto_3
    return-object v3

    .line 193
    :pswitch_7
    check-cast p0, Lj76;

    .line 194
    .line 195
    iget-object p0, p0, Lj76;->e:Lgv7;

    .line 196
    .line 197
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object p0

    .line 201
    check-cast p0, Lk76;

    .line 202
    .line 203
    iget-object p0, p0, Lk76;->a:Ljava/lang/String;

    .line 204
    .line 205
    return-object p0

    .line 206
    :pswitch_8
    check-cast p0, Lorg/swiftapps/swiftbackup/premium/PremiumActivity;

    .line 207
    .line 208
    sget v0, Lorg/swiftapps/swiftbackup/premium/PremiumActivity;->V:I

    .line 209
    .line 210
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/premium/PremiumActivity;->R()Lc56;

    .line 211
    .line 212
    .line 213
    move-result-object p0

    .line 214
    iget-object p0, p0, Lc56;->k:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 215
    .line 216
    return-object p0

    .line 217
    :pswitch_9
    check-cast p0, Ld26;

    .line 218
    .line 219
    iget-object p0, p0, Ld26;->b:Lbv3;

    .line 220
    .line 221
    invoke-interface {p0}, Lbv3;->c()[Ldo4;

    .line 222
    .line 223
    .line 224
    move-result-object p0

    .line 225
    return-object p0

    .line 226
    :pswitch_a
    check-cast p0, Lorg/swiftapps/swiftbackup/password/PasswordStrategyActivity;

    .line 227
    .line 228
    sget v0, Lorg/swiftapps/swiftbackup/password/PasswordStrategyActivity;->O:I

    .line 229
    .line 230
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 231
    .line 232
    .line 233
    move-result-object p0

    .line 234
    const v0, 0x7f0d0136

    .line 235
    .line 236
    .line 237
    invoke-virtual {p0, v0, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 238
    .line 239
    .line 240
    move-result-object p0

    .line 241
    const v0, 0x7f0a00a9

    .line 242
    .line 243
    .line 244
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    if-eqz v1, :cond_6

    .line 249
    .line 250
    invoke-static {v1}, Lw00;->b(Landroid/view/View;)Lw00;

    .line 251
    .line 252
    .line 253
    move-result-object v7

    .line 254
    move-object v6, p0

    .line 255
    check-cast v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 256
    .line 257
    const v0, 0x7f0a0388

    .line 258
    .line 259
    .line 260
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 261
    .line 262
    .line 263
    move-result-object v1

    .line 264
    if-eqz v1, :cond_6

    .line 265
    .line 266
    invoke-static {v1}, Le38;->a(Landroid/view/View;)Le38;

    .line 267
    .line 268
    .line 269
    move-result-object v8

    .line 270
    const v0, 0x7f0a0389

    .line 271
    .line 272
    .line 273
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 274
    .line 275
    .line 276
    move-result-object v1

    .line 277
    if-eqz v1, :cond_6

    .line 278
    .line 279
    invoke-static {v1}, Le38;->a(Landroid/view/View;)Le38;

    .line 280
    .line 281
    .line 282
    move-result-object v9

    .line 283
    const v0, 0x7f0a042d

    .line 284
    .line 285
    .line 286
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 287
    .line 288
    .line 289
    move-result-object v1

    .line 290
    move-object v10, v1

    .line 291
    check-cast v10, Landroidx/core/widget/NestedScrollView;

    .line 292
    .line 293
    if-eqz v10, :cond_6

    .line 294
    .line 295
    new-instance v5, Lwx5;

    .line 296
    .line 297
    invoke-direct/range {v5 .. v10}, Lwx5;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lw00;Le38;Le38;Landroidx/core/widget/NestedScrollView;)V

    .line 298
    .line 299
    .line 300
    move-object v4, v5

    .line 301
    goto :goto_4

    .line 302
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 303
    .line 304
    .line 305
    move-result-object p0

    .line 306
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object p0

    .line 310
    const-string v0, "Missing required view with ID: "

    .line 311
    .line 312
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object p0

    .line 316
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    :goto_4
    return-object v4

    .line 320
    :pswitch_b
    check-cast p0, Lorg/swiftapps/swiftbackup/notice/NoticeViewActivity;

    .line 321
    .line 322
    sget v0, Lorg/swiftapps/swiftbackup/notice/NoticeViewActivity;->O:I

    .line 323
    .line 324
    new-instance v0, Lf75;

    .line 325
    .line 326
    const/16 v1, 0x3e

    .line 327
    .line 328
    invoke-direct {v0, p0, v1}, Lf75;-><init>(Lk28;I)V

    .line 329
    .line 330
    .line 331
    return-object v0

    .line 332
    nop

    .line 333
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
