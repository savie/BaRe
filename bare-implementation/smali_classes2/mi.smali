.class public final synthetic Lmi;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lmi;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lmi;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lmi;->c:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    iget v0, p0, Lmi;->a:I

    .line 2
    .line 3
    sget-object v1, Lbe8;->a:Lbe8;

    .line 4
    .line 5
    iget-object v2, p0, Lmi;->c:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object p0, p0, Lmi;->b:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p0, Lli4;

    .line 13
    .line 14
    check-cast v2, Ljava/lang/String;

    .line 15
    .line 16
    check-cast p1, Lcom/jcraft/jsch/ChannelSftp;

    .line 17
    .line 18
    check-cast p2, Lcom/jcraft/jsch/Session;

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    :try_start_0
    invoke-virtual {p0, v2, p1}, Lli4;->x(Ljava/lang/String;Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/SftpATTRS;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    if-nez p2, :cond_0

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_0
    const/16 v0, 0x4000

    .line 34
    .line 35
    invoke-virtual {p2, v0}, Lcom/jcraft/jsch/SftpATTRS;->b(I)Z

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    if-eqz p2, :cond_1

    .line 40
    .line 41
    invoke-virtual {p0, v2, p1}, Lli4;->w(Ljava/lang/String;Lcom/jcraft/jsch/ChannelSftp;)V

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :catch_0
    move-exception v0

    .line 46
    move-object p0, v0

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {p0, v2}, Lli4;->C(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/ChannelSftp;->rm(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v2, p1}, Lli4;->x(Ljava/lang/String;Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/SftpATTRS;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    if-nez p0, :cond_2

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 63
    .line 64
    const-string p1, "Check failed."

    .line 65
    .line 66
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    invoke-static {p0}, Lli4;->z(Ljava/lang/Exception;)Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-eqz p1, :cond_3

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_3
    const-string p1, "JschService"

    .line 78
    .line 79
    const-string p2, "delete"

    .line 80
    .line 81
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    .line 83
    .line 84
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 85
    .line 86
    invoke-static {p0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    const-string p1, "delete: "

    .line 91
    .line 92
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    const/4 v6, 0x4

    .line 97
    const/4 v7, 0x0

    .line 98
    const-string v3, "JschService"

    .line 99
    .line 100
    const/4 v5, 0x0

    .line 101
    invoke-static/range {v2 .. v7}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    :goto_1
    return-object v1

    .line 105
    :pswitch_0
    check-cast p0, Lba2;

    .line 106
    .line 107
    check-cast v2, Lx92;

    .line 108
    .line 109
    check-cast p1, Landroid/view/View;

    .line 110
    .line 111
    check-cast p2, Ljava/lang/Integer;

    .line 112
    .line 113
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 114
    .line 115
    .line 116
    move-result p2

    .line 117
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    iget-object p0, p0, Lba2;->d:Ljava/util/List;

    .line 121
    .line 122
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    check-cast p0, Ld71;

    .line 127
    .line 128
    iget p0, p0, Ld71;->a:I

    .line 129
    .line 130
    const/4 p1, 0x0

    .line 131
    packed-switch p0, :pswitch_data_1

    .line 132
    .line 133
    .line 134
    const-string p2, "No click action for item id: "

    .line 135
    .line 136
    invoke-static {p0, p2}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    move-object v1, p1

    .line 144
    goto :goto_3

    .line 145
    :pswitch_1
    sget p0, Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;->U:I

    .line 146
    .line 147
    invoke-virtual {v2}, Lx92;->l()Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    sget-object p1, Lto3;->LOCAL:Lto3;

    .line 152
    .line 153
    invoke-static {p0, p1}, Lnc8;->k0(Lil0;Lto3;)V

    .line 154
    .line 155
    .line 156
    goto :goto_3

    .line 157
    :pswitch_2
    invoke-virtual {v2}, Lx92;->l()Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    const-class p1, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;

    .line 162
    .line 163
    invoke-static {p0, p1}, Lai8;->q(Landroid/content/Context;Ljava/lang/Class;)V

    .line 164
    .line 165
    .line 166
    goto :goto_3

    .line 167
    :pswitch_3
    invoke-virtual {v2}, Lx92;->l()Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 168
    .line 169
    .line 170
    move-result-object p0

    .line 171
    const-class p1, Lorg/swiftapps/swiftbackup/walls/WallsDashActivity;

    .line 172
    .line 173
    invoke-static {p0, p1}, Lai8;->q(Landroid/content/Context;Ljava/lang/Class;)V

    .line 174
    .line 175
    .line 176
    goto :goto_3

    .line 177
    :pswitch_4
    invoke-virtual {v2}, Lx92;->l()Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 178
    .line 179
    .line 180
    move-result-object p0

    .line 181
    const-class p1, Lorg/swiftapps/swiftbackup/messagescalls/dash/CallsDashActivity;

    .line 182
    .line 183
    invoke-static {p0, p1}, Lai8;->q(Landroid/content/Context;Ljava/lang/Class;)V

    .line 184
    .line 185
    .line 186
    goto :goto_3

    .line 187
    :pswitch_5
    sget p0, Lorg/swiftapps/swiftbackup/messagescalls/dash/MessagesDashActivity;->T:I

    .line 188
    .line 189
    invoke-virtual {v2}, Lx92;->l()Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 190
    .line 191
    .line 192
    move-result-object p0

    .line 193
    const/4 p1, 0x0

    .line 194
    invoke-static {p0, p1}, Lvm4;->A(Lorg/swiftapps/swiftbackup/home/HomeActivity;Z)V

    .line 195
    .line 196
    .line 197
    goto :goto_3

    .line 198
    :pswitch_6
    sget p0, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->q0:I

    .line 199
    .line 200
    invoke-virtual {v2}, Lx92;->l()Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 201
    .line 202
    .line 203
    move-result-object p0

    .line 204
    const-string p2, "last_used_apps_section"

    .line 205
    .line 206
    :try_start_1
    sget-object v0, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 207
    .line 208
    if-eqz v0, :cond_4

    .line 209
    .line 210
    invoke-interface {v0, p2, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    goto :goto_2

    .line 215
    :cond_4
    const-string p2, "prefs"

    .line 216
    .line 217
    invoke-static {p2}, Lpe4;->F(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    throw p1
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 221
    :catch_1
    :goto_2
    if-eqz p1, :cond_5

    .line 222
    .line 223
    invoke-static {p1}, Lbt;->valueOf(Ljava/lang/String;)Lbt;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    if-nez p1, :cond_6

    .line 228
    .line 229
    :cond_5
    sget-object p1, Lbt;->LOCAL:Lbt;

    .line 230
    .line 231
    :cond_6
    invoke-static {p0, p1}, Ly13;->I(Landroid/app/Activity;Lbt;)V

    .line 232
    .line 233
    .line 234
    :goto_3
    return-object v1

    .line 235
    :pswitch_7
    check-cast p0, Lt10;

    .line 236
    .line 237
    iget-object v0, p0, Lt10;->Q:Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;

    .line 238
    .line 239
    check-cast v2, Ljava/util/List;

    .line 240
    .line 241
    check-cast p1, Ln10;

    .line 242
    .line 243
    check-cast p2, Ljava/lang/Integer;

    .line 244
    .line 245
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 246
    .line 247
    .line 248
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 249
    .line 250
    .line 251
    iget-boolean p2, p1, Ln10;->n:Z

    .line 252
    .line 253
    if-eqz p2, :cond_7

    .line 254
    .line 255
    sget-object p2, Lmp6;->a:Lmp6;

    .line 256
    .line 257
    invoke-static {}, Lmp6;->f()Z

    .line 258
    .line 259
    .line 260
    move-result p2

    .line 261
    if-nez p2, :cond_7

    .line 262
    .line 263
    invoke-static {}, Lorg/swiftapps/swiftbackup/common/Const;->O()V

    .line 264
    .line 265
    .line 266
    goto :goto_5

    .line 267
    :cond_7
    iget-object p2, p1, Ln10;->a:Ljava/lang/String;

    .line 268
    .line 269
    const-string v3, "Sync backups"

    .line 270
    .line 271
    invoke-static {p2, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    move-result p2

    .line 275
    if-eqz p2, :cond_8

    .line 276
    .line 277
    sget-object p2, Lorg/swiftapps/swiftbackup/common/V;->INSTANCE:Lorg/swiftapps/swiftbackup/common/V;

    .line 278
    .line 279
    invoke-virtual {p2}, Lorg/swiftapps/swiftbackup/common/V;->getA()Z

    .line 280
    .line 281
    .line 282
    move-result p2

    .line 283
    if-nez p2, :cond_8

    .line 284
    .line 285
    sget p1, Lorg/swiftapps/swiftbackup/premium/PremiumActivity;->V:I

    .line 286
    .line 287
    invoke-static {v0}, Lrs9;->u(Lk28;)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {p0}, Lt10;->j()V

    .line 291
    .line 292
    .line 293
    goto :goto_5

    .line 294
    :cond_8
    iget p2, p1, Ln10;->f:I

    .line 295
    .line 296
    if-lez p2, :cond_a

    .line 297
    .line 298
    sget p2, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;->s0:I

    .line 299
    .line 300
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 304
    .line 305
    .line 306
    invoke-virtual {p1}, Ln10;->c()Z

    .line 307
    .line 308
    .line 309
    move-result p2

    .line 310
    if-eqz p2, :cond_9

    .line 311
    .line 312
    sget-object p2, Lorg/swiftapps/swiftbackup/common/V;->INSTANCE:Lorg/swiftapps/swiftbackup/common/V;

    .line 313
    .line 314
    invoke-virtual {p2}, Lorg/swiftapps/swiftbackup/common/V;->getA()Z

    .line 315
    .line 316
    .line 317
    move-result p2

    .line 318
    if-nez p2, :cond_9

    .line 319
    .line 320
    sget p1, Lorg/swiftapps/swiftbackup/premium/PremiumActivity;->V:I

    .line 321
    .line 322
    invoke-static {v0}, Lrs9;->u(Lk28;)V

    .line 323
    .line 324
    .line 325
    goto :goto_4

    .line 326
    :cond_9
    new-instance p2, Landroid/content/Intent;

    .line 327
    .line 328
    const-class v3, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;

    .line 329
    .line 330
    invoke-direct {p2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 331
    .line 332
    .line 333
    const-string v3, "batch_action_item"

    .line 334
    .line 335
    invoke-virtual {p2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 336
    .line 337
    .line 338
    move-result-object p1

    .line 339
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 340
    .line 341
    .line 342
    new-instance p2, Ljava/util/ArrayList;

    .line 343
    .line 344
    invoke-direct {p2, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 345
    .line 346
    .line 347
    sput-object p2, Lr20;->r:Ljava/util/ArrayList;

    .line 348
    .line 349
    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 350
    .line 351
    .line 352
    :goto_4
    invoke-virtual {p0}, Lt10;->j()V

    .line 353
    .line 354
    .line 355
    :cond_a
    :goto_5
    return-object v1

    .line 356
    :pswitch_8
    check-cast p0, Lji;

    .line 357
    .line 358
    move-object v7, v2

    .line 359
    check-cast v7, Ljava/util/Set;

    .line 360
    .line 361
    move-object v3, p1

    .line 362
    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    .line 363
    .line 364
    check-cast p2, Ljava/lang/Boolean;

    .line 365
    .line 366
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 367
    .line 368
    .line 369
    move-result v5

    .line 370
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 371
    .line 372
    .line 373
    sget-object p1, Ltr;->n0:Lqr;

    .line 374
    .line 375
    invoke-static {p0}, Lqr;->a(Lji;)F

    .line 376
    .line 377
    .line 378
    move-result v6

    .line 379
    const/4 v9, 0x0

    .line 380
    const/16 v10, 0xfe2

    .line 381
    .line 382
    const/4 v4, 0x0

    .line 383
    const/4 v8, 0x0

    .line 384
    invoke-static/range {v3 .. v10}, Lqr;->f(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/a;ZFLjava/util/Set;ZLqt3;I)V

    .line 385
    .line 386
    .line 387
    return-object v1

    .line 388
    nop

    .line 389
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_0
    .end packed-switch

    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
