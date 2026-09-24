.class public final synthetic Lf7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lf7;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lf7;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Lf7;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "mAdapter"

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    sget-object v4, Lbe8;->a:Lbe8;

    .line 8
    .line 9
    iget-object p0, p0, Lf7;->b:Ljava/lang/Object;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast p0, Lorg/swiftapps/swiftbackup/walls/WallsManageActivity;

    .line 15
    .line 16
    check-cast p1, Ljava/lang/Boolean;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    check-cast p2, Ljava/lang/Boolean;

    .line 22
    .line 23
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/walls/WallsManageActivity;->R:Lmo8;

    .line 30
    .line 31
    if-eqz p0, :cond_0

    .line 32
    .line 33
    invoke-virtual {p0, v1}, Lgm7;->u(Z)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-static {v2}, Lpe4;->F(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw v3

    .line 41
    :cond_1
    sget p1, Lorg/swiftapps/swiftbackup/walls/WallsManageActivity;->S:I

    .line 42
    .line 43
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/walls/WallsManageActivity;->X()Ltp8;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iget-boolean p1, p1, Ltp8;->h:Z

    .line 48
    .line 49
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/walls/WallsManageActivity;->R:Lmo8;

    .line 50
    .line 51
    if-eqz p2, :cond_2

    .line 52
    .line 53
    iget-object p2, p2, Lgm7;->e:Lfm7;

    .line 54
    .line 55
    iget-boolean p2, p2, Lfm7;->c:Z

    .line 56
    .line 57
    invoke-virtual {p0, p1, p2}, Lorg/swiftapps/swiftbackup/walls/WallsManageActivity;->Z(ZZ)V

    .line 58
    .line 59
    .line 60
    :goto_0
    return-object v4

    .line 61
    :cond_2
    invoke-static {v2}, Lpe4;->F(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw v3

    .line 65
    :pswitch_0
    check-cast p0, La47;

    .line 66
    .line 67
    check-cast p1, Ljava/lang/Boolean;

    .line 68
    .line 69
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    check-cast p2, Ljava/lang/Boolean;

    .line 73
    .line 74
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    iget-object p0, p0, La47;->p:Lcom/google/android/material/button/MaterialButton;

    .line 79
    .line 80
    xor-int/lit8 p1, p1, 0x1

    .line 81
    .line 82
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    if-eqz p1, :cond_3

    .line 90
    .line 91
    const/high16 p1, 0x3f800000    # 1.0f

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_3
    const/high16 p1, 0x3f000000    # 0.5f

    .line 95
    .line 96
    :goto_1
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 97
    .line 98
    .line 99
    return-object v4

    .line 100
    :pswitch_1
    check-cast p0, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleLabelsSelectActivity;

    .line 101
    .line 102
    check-cast p1, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;

    .line 103
    .line 104
    check-cast p2, Ljava/lang/Integer;

    .line 105
    .line 106
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    sget p2, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleLabelsSelectActivity;->X:I

    .line 110
    .line 111
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleLabelsSelectActivity;->O()Lv37;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->getId()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-virtual {p0, p1, v1}, Lv37;->j(Ljava/lang/String;Z)V

    .line 123
    .line 124
    .line 125
    return-object v4

    .line 126
    :pswitch_2
    check-cast p0, Lw27;

    .line 127
    .line 128
    check-cast p1, Lx27;

    .line 129
    .line 130
    check-cast p2, Ljava/lang/Integer;

    .line 131
    .line 132
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    .line 137
    .line 138
    iget-object p1, p1, Lx27;->a:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData$a;

    .line 139
    .line 140
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    invoke-static {p1}, Lsz8;->Y(Ljava/lang/Object;)Ljava/util/Set;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    invoke-virtual {p0, p1}, Lgm7;->t(Ljava/util/Set;)V

    .line 149
    .line 150
    .line 151
    return-object v4

    .line 152
    :pswitch_3
    check-cast p0, Lwj3;

    .line 153
    .line 154
    check-cast p1, Ljava/lang/Long;

    .line 155
    .line 156
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 157
    .line 158
    .line 159
    move-result-wide v0

    .line 160
    check-cast p2, Ljava/lang/Long;

    .line 161
    .line 162
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 163
    .line 164
    .line 165
    move-result-wide p1

    .line 166
    invoke-static {v0, v1, p1, p2}, Lorg/swiftapps/swiftbackup/common/Const;->r(JJ)I

    .line 167
    .line 168
    .line 169
    move-result p1

    .line 170
    iget-object p0, p0, Lwj3;->c:Lmt3;

    .line 171
    .line 172
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    invoke-interface {p0, p1}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    return-object v4

    .line 180
    :pswitch_4
    check-cast p0, Lorg/swiftapps/swiftbackup/messagescalls/dash/CallsDashActivity;

    .line 181
    .line 182
    check-cast p1, Lrz0;

    .line 183
    .line 184
    check-cast p2, Ljava/lang/Integer;

    .line 185
    .line 186
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 187
    .line 188
    .line 189
    sget p2, Lorg/swiftapps/swiftbackup/messagescalls/dash/CallsDashActivity;->T:I

    .line 190
    .line 191
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 192
    .line 193
    .line 194
    invoke-virtual {p0, p1}, Lx01;->V(Lrz0;)V

    .line 195
    .line 196
    .line 197
    return-object v4

    .line 198
    :pswitch_5
    check-cast p0, Lorg/swiftapps/swiftbackup/appslist/ui/listconfig/AppsConfigRunActivity;

    .line 199
    .line 200
    check-cast p1, Ljava/lang/Boolean;

    .line 201
    .line 202
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 203
    .line 204
    .line 205
    move-result p1

    .line 206
    check-cast p2, Ljava/lang/Boolean;

    .line 207
    .line 208
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 209
    .line 210
    .line 211
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/appslist/ui/listconfig/AppsConfigRunActivity;->j0:Lf30;

    .line 212
    .line 213
    if-eqz p2, :cond_4

    .line 214
    .line 215
    invoke-virtual {p2}, Lf30;->y()V

    .line 216
    .line 217
    .line 218
    invoke-virtual {p0, p1}, Lorg/swiftapps/swiftbackup/appslist/ui/listconfig/AppsConfigRunActivity;->j0(Z)V

    .line 219
    .line 220
    .line 221
    return-object v4

    .line 222
    :cond_4
    invoke-static {v2}, Lpe4;->F(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    throw v3

    .line 226
    :pswitch_6
    check-cast p0, Lo7;

    .line 227
    .line 228
    check-cast p1, Lq7;

    .line 229
    .line 230
    check-cast p2, Ljava/lang/Integer;

    .line 231
    .line 232
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 233
    .line 234
    .line 235
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 236
    .line 237
    .line 238
    iget p1, p1, Lq7;->a:I

    .line 239
    .line 240
    packed-switch p1, :pswitch_data_1

    .line 241
    .line 242
    .line 243
    goto/16 :goto_2

    .line 244
    .line 245
    :pswitch_7
    invoke-virtual {p0}, Lo7;->i()Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 246
    .line 247
    .line 248
    move-result-object p0

    .line 249
    const-class p1, Lorg/swiftapps/swiftbackup/contributor/ContributorRegActivity;

    .line 250
    .line 251
    invoke-static {p0, p1}, Lai8;->q(Landroid/content/Context;Ljava/lang/Class;)V

    .line 252
    .line 253
    .line 254
    goto/16 :goto_2

    .line 255
    .line 256
    :pswitch_8
    new-instance p1, Landroid/content/Intent;

    .line 257
    .line 258
    const-string p2, "android.intent.action.SEND"

    .line 259
    .line 260
    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    const-string p2, "text/plain"

    .line 264
    .line 265
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 266
    .line 267
    .line 268
    const p2, 0x7f1304fa

    .line 269
    .line 270
    .line 271
    invoke-virtual {p0, p2}, Landroidx/fragment/app/o;->getString(I)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object p2

    .line 275
    const-string v0, "android.intent.extra.SUBJECT"

    .line 276
    .line 277
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    .line 279
    .line 280
    const p2, 0x7f1304f9

    .line 281
    .line 282
    .line 283
    invoke-virtual {p0, p2}, Landroidx/fragment/app/o;->getString(I)Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object p2

    .line 287
    const-string v0, "android.intent.extra.TEXT"

    .line 288
    .line 289
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 290
    .line 291
    .line 292
    const p2, 0x7f1304f8

    .line 293
    .line 294
    .line 295
    invoke-virtual {p0, p2}, Landroidx/fragment/app/o;->getString(I)Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object p2

    .line 299
    invoke-static {p1, p2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 300
    .line 301
    .line 302
    move-result-object p1

    .line 303
    invoke-virtual {p0, p1}, Landroidx/fragment/app/o;->startActivity(Landroid/content/Intent;)V

    .line 304
    .line 305
    .line 306
    goto :goto_2

    .line 307
    :pswitch_9
    invoke-virtual {p0}, Lo7;->i()Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 308
    .line 309
    .line 310
    move-result-object p0

    .line 311
    const-string p1, "https://www.swiftapps.org/help"

    .line 312
    .line 313
    invoke-static {p0, p1}, Lorg/swiftapps/swiftbackup/common/Const;->B(Landroid/content/Context;Ljava/lang/String;)Z

    .line 314
    .line 315
    .line 316
    goto :goto_2

    .line 317
    :pswitch_a
    sget p1, Lorg/swiftapps/swiftbackup/settings/SettingsDetailActivity;->R:I

    .line 318
    .line 319
    invoke-virtual {p0}, Lo7;->i()Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 320
    .line 321
    .line 322
    move-result-object p1

    .line 323
    const p2, 0x7f1301bb

    .line 324
    .line 325
    .line 326
    invoke-virtual {p0, p2}, Landroidx/fragment/app/o;->getString(I)Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object p0

    .line 330
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 331
    .line 332
    .line 333
    const/4 p2, 0x5

    .line 334
    invoke-static {p1, p2, p0}, Ljb9;->g0(Landroid/app/Activity;ILjava/lang/String;)V

    .line 335
    .line 336
    .line 337
    goto :goto_2

    .line 338
    :pswitch_b
    sget p1, Lorg/swiftapps/swiftbackup/settings/SettingsDetailActivity;->R:I

    .line 339
    .line 340
    invoke-virtual {p0}, Lo7;->i()Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 341
    .line 342
    .line 343
    move-result-object p1

    .line 344
    const p2, 0x7f13001b

    .line 345
    .line 346
    .line 347
    invoke-virtual {p0, p2}, Landroidx/fragment/app/o;->getString(I)Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object p0

    .line 351
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 352
    .line 353
    .line 354
    const/4 p2, 0x6

    .line 355
    invoke-static {p1, p2, p0}, Ljb9;->g0(Landroid/app/Activity;ILjava/lang/String;)V

    .line 356
    .line 357
    .line 358
    goto :goto_2

    .line 359
    :pswitch_c
    invoke-virtual {p0}, Lo7;->i()Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 360
    .line 361
    .line 362
    move-result-object p0

    .line 363
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object p1

    .line 367
    invoke-static {p0, p1}, Lai8;->l(Landroid/content/Context;Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    goto :goto_2

    .line 371
    :pswitch_d
    invoke-virtual {p0}, Lo7;->i()Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 372
    .line 373
    .line 374
    move-result-object p0

    .line 375
    const-class p1, Lorg/swiftapps/swiftbackup/locale/LocaleActivity;

    .line 376
    .line 377
    invoke-static {p0, p1}, Lai8;->q(Landroid/content/Context;Ljava/lang/Class;)V

    .line 378
    .line 379
    .line 380
    goto :goto_2

    .line 381
    :pswitch_e
    invoke-virtual {p0}, Lo7;->i()Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 382
    .line 383
    .line 384
    move-result-object p0

    .line 385
    const-class p1, Lorg/swiftapps/swiftbackup/slog/SLogActivity;

    .line 386
    .line 387
    invoke-static {p0, p1}, Lai8;->q(Landroid/content/Context;Ljava/lang/Class;)V

    .line 388
    .line 389
    .line 390
    goto :goto_2

    .line 391
    :pswitch_f
    sget p1, Lorg/swiftapps/swiftbackup/settings/SettingsActivity;->Z:I

    .line 392
    .line 393
    invoke-virtual {p0}, Lo7;->i()Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 394
    .line 395
    .line 396
    move-result-object p0

    .line 397
    invoke-static {p0}, Lbb9;->I(Landroid/app/Activity;)V

    .line 398
    .line 399
    .line 400
    :goto_2
    return-object v4

    .line 401
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method
