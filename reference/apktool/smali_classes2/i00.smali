.class public final synthetic Li00;
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
    iput p2, p0, Li00;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Li00;->b:Ljava/lang/Object;

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
    .locals 5

    .line 1
    iget v0, p0, Li00;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    iget-object p0, p0, Li00;->b:Ljava/lang/Object;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast p0, Las8;

    .line 12
    .line 13
    iget-object p0, p0, Las8;->b:Liu8;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    sget-object p1, Lzn4;->a:Lzn4;

    .line 19
    .line 20
    new-instance p1, Luv;

    .line 21
    .line 22
    const/4 v0, 0x2

    .line 23
    invoke-direct {p1, p0, v3, v0}, Luv;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 24
    .line 25
    .line 26
    invoke-static {v3, p1}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_0
    check-cast p0, Lorg/swiftapps/swiftbackup/password/UserPasswordActivity;

    .line 31
    .line 32
    sget p1, Lorg/swiftapps/swiftbackup/password/UserPasswordActivity;->O:I

    .line 33
    .line 34
    sget-object p1, Lorg/swiftapps/swiftbackup/common/V;->INSTANCE:Lorg/swiftapps/swiftbackup/common/V;

    .line 35
    .line 36
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/common/V;->getZ()Landroid/content/SharedPreferences;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const-string v1, "saved_user_password"

    .line 45
    .line 46
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 51
    .line 52
    .line 53
    sget-object v0, Lux5;->STANDARD_PASSWORD:Lux5;

    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    invoke-static {}, Lux5;->getEntries()Ljx2;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Lkx2;

    .line 63
    .line 64
    invoke-virtual {v1, v0}, Lkx2;->indexOf(Ljava/lang/Object;)I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/common/V;->getZ()Landroid/content/SharedPreferences;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    const-string v1, "saved_password_mode"

    .line 77
    .line 78
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :pswitch_1
    check-cast p0, Lv38;

    .line 90
    .line 91
    const v0, 0x7f0a0446

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    check-cast p1, Ljava/lang/Integer;

    .line 99
    .line 100
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    invoke-virtual {p0, p1}, Lv38;->f(I)V

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :pswitch_2
    check-cast p0, Lm37;

    .line 109
    .line 110
    sget-object p1, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->p:Ljava/lang/String;

    .line 111
    .line 112
    invoke-virtual {p0}, Lm37;->i()Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    sget-object p1, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService$RunMode$Schedules;->INSTANCE:Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService$RunMode$Schedules;

    .line 117
    .line 118
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    const v0, 0x7f130426

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0, v0}, Lil0;->M(I)V

    .line 125
    .line 126
    .line 127
    new-instance v0, Lcz;

    .line 128
    .line 129
    const/16 v1, 0x11

    .line 130
    .line 131
    invoke-direct {v0, p0, v1}, Lcz;-><init>(Ljava/lang/Object;I)V

    .line 132
    .line 133
    .line 134
    invoke-static {v2, p1, v0}, Lorg/swiftapps/swiftbackup/home/schedule/a;->b(ZLorg/swiftapps/swiftbackup/home/schedule/ScheduleService$RunMode;Lmt3;)V

    .line 135
    .line 136
    .line 137
    return-void

    .line 138
    :pswitch_3
    check-cast p0, Lorg/swiftapps/swiftbackup/tasks/PreconditionsActivity;

    .line 139
    .line 140
    sget p1, Lorg/swiftapps/swiftbackup/tasks/PreconditionsActivity;->P:I

    .line 141
    .line 142
    invoke-virtual {p0}, Lil0;->z()V

    .line 143
    .line 144
    .line 145
    return-void

    .line 146
    :pswitch_4
    check-cast p0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;

    .line 147
    .line 148
    sget p1, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;->Z:I

    .line 149
    .line 150
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;->R()Lzr4;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    sget-object p1, Lsv2;->a:Lsv2;

    .line 155
    .line 156
    iput-object p1, p0, Lzr4;->h:Ljava/util/Set;

    .line 157
    .line 158
    sget-object p1, Llr4;->e:Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsData;

    .line 159
    .line 160
    invoke-virtual {p0, p1}, Lzr4;->k(Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsData;)V

    .line 161
    .line 162
    .line 163
    return-void

    .line 164
    :pswitch_5
    check-cast p0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelEditActivity;

    .line 165
    .line 166
    sget p1, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelEditActivity;->U:I

    .line 167
    .line 168
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 169
    .line 170
    .line 171
    return-void

    .line 172
    :pswitch_6
    check-cast p0, Lorg/swiftapps/swiftbackup/intro/IntroActivity;

    .line 173
    .line 174
    sget p1, Lorg/swiftapps/swiftbackup/intro/IntroActivity;->V:I

    .line 175
    .line 176
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/intro/IntroActivity;->P()Lqi7;

    .line 177
    .line 178
    .line 179
    move-result-object p0

    .line 180
    const/4 p1, 0x3

    .line 181
    invoke-virtual {p0, p1}, Lfo0;->a(I)V

    .line 182
    .line 183
    .line 184
    return-void

    .line 185
    :pswitch_7
    check-cast p0, Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 186
    .line 187
    sget-object p1, Lorg/swiftapps/swiftbackup/home/HomeActivity;->b0:Ljava/util/Map;

    .line 188
    .line 189
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/HomeActivity;->Y()Lol5;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    invoke-virtual {v0}, Lol5;->getSelectedItemId()I

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 206
    .line 207
    .line 208
    check-cast p1, Ljava/lang/Number;

    .line 209
    .line 210
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 211
    .line 212
    .line 213
    move-result p1

    .line 214
    invoke-virtual {p0, p1}, Lorg/swiftapps/swiftbackup/home/HomeActivity;->b0(I)V

    .line 215
    .line 216
    .line 217
    return-void

    .line 218
    :pswitch_8
    check-cast p0, Lkp3;

    .line 219
    .line 220
    invoke-virtual {p0}, Lkp3;->i()Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    iget-object p0, p0, Lkp3;->e:Lcp3;

    .line 225
    .line 226
    iget-object p0, p0, Lgm7;->e:Lfm7;

    .line 227
    .line 228
    iget-object p0, p0, Lfm7;->a:Ljava/util/List;

    .line 229
    .line 230
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 231
    .line 232
    .line 233
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 234
    .line 235
    .line 236
    move-result v0

    .line 237
    if-eqz v0, :cond_0

    .line 238
    .line 239
    invoke-static {}, Lorg/swiftapps/swiftbackup/common/Const;->L()V

    .line 240
    .line 241
    .line 242
    goto :goto_0

    .line 243
    :cond_0
    new-instance v0, Lqk3;

    .line 244
    .line 245
    invoke-direct {v0, p1}, Lqk3;-><init>(Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;)V

    .line 246
    .line 247
    .line 248
    iget-object p1, v0, Lqk3;->R:Lgv7;

    .line 249
    .line 250
    invoke-virtual {p1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    check-cast v1, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 255
    .line 256
    invoke-virtual {v1, v2}, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;->setLinearLayoutManager(I)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {p1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object p1

    .line 263
    check-cast p1, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 264
    .line 265
    iget-object v1, v0, Lqk3;->S:Lgv7;

    .line 266
    .line 267
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v4

    .line 271
    check-cast v4, Lok3;

    .line 272
    .line 273
    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lhg6;)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object p1

    .line 280
    check-cast p1, Lok3;

    .line 281
    .line 282
    new-instance v1, Llj2;

    .line 283
    .line 284
    invoke-direct {v1, v2, v0, p0}, Llj2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 285
    .line 286
    .line 287
    iput-object v1, p1, Lgm7;->j:Lqt3;

    .line 288
    .line 289
    sget-object p1, Lzn4;->a:Lzn4;

    .line 290
    .line 291
    new-instance p1, Lpk3;

    .line 292
    .line 293
    invoke-direct {p1, v0, p0, v3}, Lpk3;-><init>(Lqk3;Ljava/util/List;Ljv1;)V

    .line 294
    .line 295
    .line 296
    invoke-static {v3, p1}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 297
    .line 298
    .line 299
    :goto_0
    return-void

    .line 300
    :pswitch_9
    check-cast p0, Lsr1;

    .line 301
    .line 302
    invoke-virtual {p0, v1}, Lol1;->j(Z)V

    .line 303
    .line 304
    .line 305
    return-void

    .line 306
    :pswitch_a
    check-cast p0, Lorg/swiftapps/swiftbackup/appconfigs/list/ConfigListActivity;

    .line 307
    .line 308
    sget p1, Lorg/swiftapps/swiftbackup/appconfigs/list/ConfigListActivity;->R:I

    .line 309
    .line 310
    sget-object p1, Lbr1;->e:Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigsData;

    .line 311
    .line 312
    if-eqz p1, :cond_1

    .line 313
    .line 314
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigsData;->getSize()Ljava/lang/Integer;

    .line 315
    .line 316
    .line 317
    move-result-object p1

    .line 318
    goto :goto_1

    .line 319
    :cond_1
    move-object p1, v3

    .line 320
    :goto_1
    if-eqz p1, :cond_2

    .line 321
    .line 322
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 323
    .line 324
    .line 325
    move-result v1

    .line 326
    :cond_2
    const/16 p1, 0x14

    .line 327
    .line 328
    if-lt v1, p1, :cond_3

    .line 329
    .line 330
    const p1, 0x7f130342

    .line 331
    .line 332
    .line 333
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object p1

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    .line 338
    .line 339
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    .line 344
    .line 345
    const-string p1, " (20/20)"

    .line 346
    .line 347
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object p1

    .line 354
    const/16 v0, 0xa

    .line 355
    .line 356
    invoke-static {p0, v3, p1, v0}, Lb05;->l(Lio1;Ljava/lang/String;Ljava/lang/String;I)Ls35;

    .line 357
    .line 358
    .line 359
    goto :goto_2

    .line 360
    :cond_3
    sget-object p1, Lmp6;->a:Lmp6;

    .line 361
    .line 362
    invoke-static {}, Lmp6;->f()Z

    .line 363
    .line 364
    .line 365
    move-result p1

    .line 366
    if-nez p1, :cond_4

    .line 367
    .line 368
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/common/Const;->N(Lil0;)V

    .line 369
    .line 370
    .line 371
    goto :goto_2

    .line 372
    :cond_4
    new-instance p1, Landroid/content/Intent;

    .line 373
    .line 374
    const-class v0, Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity;

    .line 375
    .line 376
    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 380
    .line 381
    .line 382
    :goto_2
    return-void

    .line 383
    :pswitch_b
    check-cast p0, Lorg/swiftapps/swiftbackup/cloud/orphans/CloudOrphanCleanerActivity;

    .line 384
    .line 385
    sget p1, Lorg/swiftapps/swiftbackup/cloud/orphans/CloudOrphanCleanerActivity;->S:I

    .line 386
    .line 387
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/orphans/CloudOrphanCleanerActivity;->V()Lorg/swiftapps/swiftbackup/cloud/orphans/a;

    .line 388
    .line 389
    .line 390
    move-result-object p0

    .line 391
    new-instance p1, Lhc1;

    .line 392
    .line 393
    invoke-direct {p1, v2}, Lhc1;-><init>(I)V

    .line 394
    .line 395
    .line 396
    invoke-virtual {p0, p1}, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->s(Lmt3;)Lorg/swiftapps/swiftbackup/cloud/orphans/b;

    .line 397
    .line 398
    .line 399
    return-void

    .line 400
    :pswitch_c
    check-cast p0, Lorg/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsActivity;

    .line 401
    .line 402
    sget p1, Lorg/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsActivity;->Z:I

    .line 403
    .line 404
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsActivity;->V()Lhf1;

    .line 405
    .line 406
    .line 407
    move-result-object p0

    .line 408
    iget-object p1, p0, Lhf1;->h:Lef1;

    .line 409
    .line 410
    if-nez p1, :cond_5

    .line 411
    .line 412
    goto :goto_3

    .line 413
    :cond_5
    iget-boolean p1, p1, Lef1;->i:Z

    .line 414
    .line 415
    if-eqz p1, :cond_6

    .line 416
    .line 417
    goto :goto_3

    .line 418
    :cond_6
    new-instance p1, Lnk;

    .line 419
    .line 420
    const/4 v0, 0x4

    .line 421
    invoke-direct {p1, v0}, Lnk;-><init>(I)V

    .line 422
    .line 423
    .line 424
    invoke-virtual {p0, p1}, Lhf1;->p(Lmt3;)Lef1;

    .line 425
    .line 426
    .line 427
    :goto_3
    return-void

    .line 428
    :pswitch_d
    check-cast p0, Lorg/swiftapps/swiftbackup/messagescalls/dash/CallsDashActivity;

    .line 429
    .line 430
    sget p1, Lorg/swiftapps/swiftbackup/messagescalls/dash/CallsDashActivity;->T:I

    .line 431
    .line 432
    const-class p1, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;

    .line 433
    .line 434
    invoke-static {p0, p1}, Lai8;->q(Landroid/content/Context;Ljava/lang/Class;)V

    .line 435
    .line 436
    .line 437
    return-void

    .line 438
    :pswitch_e
    check-cast p0, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;

    .line 439
    .line 440
    sget p1, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;->s0:I

    .line 441
    .line 442
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;->i0()Landroidx/recyclerview/widget/RecyclerView;

    .line 443
    .line 444
    .line 445
    move-result-object p0

    .line 446
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->i0(I)V

    .line 447
    .line 448
    .line 449
    return-void

    .line 450
    :pswitch_f
    check-cast p0, Lorg/swiftapps/swiftbackup/settings/appvisibility/AppVisibilityDiagnosticsActivity;

    .line 451
    .line 452
    sget p1, Lorg/swiftapps/swiftbackup/settings/appvisibility/AppVisibilityDiagnosticsActivity;->O:I

    .line 453
    .line 454
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/settings/appvisibility/AppVisibilityDiagnosticsActivity;->O()Lq00;

    .line 455
    .line 456
    .line 457
    move-result-object p1

    .line 458
    iget-object p1, p1, Lq00;->f:Ln00;

    .line 459
    .line 460
    iget-object p1, p1, Ln00;->a:Lv00;

    .line 461
    .line 462
    if-nez p1, :cond_7

    .line 463
    .line 464
    goto :goto_4

    .line 465
    :cond_7
    invoke-static {p1}, Llg7;->b(Lv00;)Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    move-result-object p1

    .line 469
    const-class v0, Landroid/content/ClipboardManager;

    .line 470
    .line 471
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 472
    .line 473
    .line 474
    move-result-object v0

    .line 475
    check-cast v0, Landroid/content/ClipboardManager;

    .line 476
    .line 477
    const-string v1, "App visibility diagnostics"

    .line 478
    .line 479
    invoke-static {v1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    .line 480
    .line 481
    .line 482
    move-result-object p1

    .line 483
    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 484
    .line 485
    .line 486
    const p1, 0x7f1301c0

    .line 487
    .line 488
    .line 489
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 490
    .line 491
    .line 492
    move-result-object p1

    .line 493
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 494
    .line 495
    .line 496
    sget-object v0, Lzn4;->a:Lzn4;

    .line 497
    .line 498
    new-instance v0, Lcv;

    .line 499
    .line 500
    const/16 v1, 0xe

    .line 501
    .line 502
    invoke-direct {v0, v1, p0, p1}, Lcv;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 503
    .line 504
    .line 505
    invoke-static {v0}, Lzn4;->e(Lbt3;)V

    .line 506
    .line 507
    .line 508
    :goto_4
    return-void

    .line 509
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
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
