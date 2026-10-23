.class public final synthetic Lh7;
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
    iput p2, p0, Lh7;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lh7;->b:Ljava/lang/Object;

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
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lh7;->a:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    const/4 v4, 0x0

    .line 8
    iget-object v0, v0, Lh7;->b:Ljava/lang/Object;

    .line 9
    .line 10
    packed-switch v1, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    check-cast v0, Lcom/ferfalk/simplesearchview/SimpleSearchView;

    .line 14
    .line 15
    iget-object v1, v0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->a:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {v1}, Ltu0;->x(Landroid/content/Context;)Landroid/app/Activity;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v2, Landroid/content/Intent;

    .line 25
    .line 26
    const-string v4, "android.speech.action.RECOGNIZE_SPEECH"

    .line 27
    .line 28
    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v4, v0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->p:Ljava/lang/String;

    .line 32
    .line 33
    if-eqz v4, :cond_1

    .line 34
    .line 35
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-eqz v4, :cond_1

    .line 40
    .line 41
    const-string v4, "android.speech.extra.PROMPT"

    .line 42
    .line 43
    iget-object v0, v0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->p:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    .line 47
    .line 48
    :cond_1
    const-string v0, "android.speech.extra.LANGUAGE_MODEL"

    .line 49
    .line 50
    const-string v4, "web_search"

    .line 51
    .line 52
    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    .line 54
    .line 55
    const-string v0, "android.speech.extra.MAX_RESULTS"

    .line 56
    .line 57
    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 58
    .line 59
    .line 60
    const/16 v0, 0x2df

    .line 61
    .line 62
    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 63
    .line 64
    .line 65
    :goto_0
    return-void

    .line 66
    :pswitch_0
    check-cast v0, Lm37;

    .line 67
    .line 68
    invoke-virtual {v0}, Lm37;->p()Lq47;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    iget-object v1, v1, Lq47;->f:Lex6;

    .line 73
    .line 74
    invoke-virtual {v1}, Lzy4;->d()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    instance-of v3, v1, Lm47;

    .line 79
    .line 80
    if-eqz v3, :cond_2

    .line 81
    .line 82
    move-object v4, v1

    .line 83
    check-cast v4, Lm47;

    .line 84
    .line 85
    :cond_2
    if-eqz v4, :cond_3

    .line 86
    .line 87
    iget-object v1, v4, Lm47;->c:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_3
    new-instance v3, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;

    .line 91
    .line 92
    const/16 v17, 0x1fff

    .line 93
    .line 94
    const/16 v18, 0x0

    .line 95
    .line 96
    const/4 v4, 0x0

    .line 97
    const/4 v5, 0x0

    .line 98
    const/4 v6, 0x0

    .line 99
    const/4 v7, 0x0

    .line 100
    const/4 v8, 0x0

    .line 101
    const/4 v9, 0x0

    .line 102
    const/4 v10, 0x0

    .line 103
    const/4 v11, 0x0

    .line 104
    const/4 v12, 0x0

    .line 105
    const/4 v13, 0x0

    .line 106
    const/4 v14, 0x0

    .line 107
    const/4 v15, 0x0

    .line 108
    const/16 v16, 0x0

    .line 109
    .line 110
    invoke-direct/range {v3 .. v18}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;-><init>(IIILjava/lang/Integer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 111
    .line 112
    .line 113
    move-object v1, v3

    .line 114
    :goto_1
    new-instance v3, Ly27;

    .line 115
    .line 116
    invoke-virtual {v0}, Lm37;->i()Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    new-instance v5, Lhj;

    .line 121
    .line 122
    const/16 v6, 0x18

    .line 123
    .line 124
    invoke-direct {v5, v0, v6}, Lhj;-><init>(Ljava/lang/Object;I)V

    .line 125
    .line 126
    .line 127
    invoke-direct {v3, v4, v1, v5}, Ly27;-><init>(Lorg/swiftapps/swiftbackup/home/HomeActivity;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;Lhj;)V

    .line 128
    .line 129
    .line 130
    new-instance v0, Lv75;

    .line 131
    .line 132
    invoke-direct {v0, v4, v2}, Lv75;-><init>(Landroid/content/ContextWrapper;I)V

    .line 133
    .line 134
    .line 135
    iget-object v1, v3, Ly27;->d:Lgh2;

    .line 136
    .line 137
    iget-object v1, v1, Lgh2;->b:Landroid/widget/LinearLayout;

    .line 138
    .line 139
    iget-object v2, v0, Lva;->b:Ljava/lang/Object;

    .line 140
    .line 141
    check-cast v2, Lra;

    .line 142
    .line 143
    iput-object v1, v2, Lra;->s:Landroid/view/View;

    .line 144
    .line 145
    invoke-virtual {v0}, Lva;->m()Lwa;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    iput-object v0, v3, Ly27;->c:Lwa;

    .line 150
    .line 151
    return-void

    .line 152
    :pswitch_1
    check-cast v0, Ly27;

    .line 153
    .line 154
    iget-object v1, v0, Ly27;->b:Lhj;

    .line 155
    .line 156
    iget-object v2, v0, Ly27;->f:Lw27;

    .line 157
    .line 158
    invoke-virtual {v2}, Lgm7;->l()Ljava/util/List;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    invoke-static {v2}, Lel1;->S0(Ljava/util/List;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    invoke-virtual {v1, v2}, Lhj;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    iget-object v0, v0, Ly27;->c:Lwa;

    .line 170
    .line 171
    if-eqz v0, :cond_4

    .line 172
    .line 173
    invoke-virtual {v0}, Lho;->dismiss()V

    .line 174
    .line 175
    .line 176
    :cond_4
    return-void

    .line 177
    :pswitch_2
    check-cast v0, Ldd6;

    .line 178
    .line 179
    iget-object v0, v0, Ldd6;->o:Lbt3;

    .line 180
    .line 181
    if-eqz v0, :cond_5

    .line 182
    .line 183
    invoke-interface {v0}, Lbt3;->invoke()Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    :cond_5
    return-void

    .line 187
    :pswitch_3
    check-cast v0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;

    .line 188
    .line 189
    sget v1, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;->Z:I

    .line 190
    .line 191
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;->R()Lzr4;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    sget-object v1, Lsv2;->a:Lsv2;

    .line 196
    .line 197
    iput-object v1, v0, Lzr4;->h:Ljava/util/Set;

    .line 198
    .line 199
    sget-object v1, Llr4;->e:Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsData;

    .line 200
    .line 201
    invoke-virtual {v0, v1}, Lzr4;->k(Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsData;)V

    .line 202
    .line 203
    .line 204
    return-void

    .line 205
    :pswitch_4
    check-cast v0, Lln3;

    .line 206
    .line 207
    iget-object v1, v0, Lln3;->Z:Lq63;

    .line 208
    .line 209
    if-eqz v1, :cond_6

    .line 210
    .line 211
    iget-object v1, v0, Lln3;->Y:Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;

    .line 212
    .line 213
    sget-object v2, Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;->FULL_RESTORE:Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;

    .line 214
    .line 215
    if-ne v1, v2, :cond_6

    .line 216
    .line 217
    iget-object v1, v0, Lln3;->Q:Lil0;

    .line 218
    .line 219
    new-instance v2, Lhv1;

    .line 220
    .line 221
    const v3, 0x7f140160

    .line 222
    .line 223
    .line 224
    invoke-direct {v2, v1, v3}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 228
    .line 229
    .line 230
    new-instance v5, Ls35;

    .line 231
    .line 232
    invoke-direct {v5, v1, v3, v2, v4}, Ls35;-><init>(Lio1;ILhv1;Ljava/lang/Float;)V

    .line 233
    .line 234
    .line 235
    const v1, 0x7f130463

    .line 236
    .line 237
    .line 238
    invoke-virtual {v5, v1}, Lv75;->v(I)V

    .line 239
    .line 240
    .line 241
    const v1, 0x7f130272

    .line 242
    .line 243
    .line 244
    invoke-virtual {v5, v1}, Lv75;->n(I)V

    .line 245
    .line 246
    .line 247
    new-instance v1, Lub1;

    .line 248
    .line 249
    const/4 v2, 0x2

    .line 250
    invoke-direct {v1, v0, v2}, Lub1;-><init>(Ljava/lang/Object;I)V

    .line 251
    .line 252
    .line 253
    const v0, 0x7f1301bc

    .line 254
    .line 255
    .line 256
    invoke-virtual {v5, v0, v1}, Lv75;->s(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 257
    .line 258
    .line 259
    const v0, 0x7f1300f1

    .line 260
    .line 261
    .line 262
    invoke-virtual {v5, v0, v4}, Lv75;->q(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v5}, Ls35;->m()Lwa;

    .line 266
    .line 267
    .line 268
    goto :goto_2

    .line 269
    :cond_6
    invoke-virtual {v0}, Lln3;->k()V

    .line 270
    .line 271
    .line 272
    :goto_2
    return-void

    .line 273
    :pswitch_5
    move-object v1, v0

    .line 274
    check-cast v1, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;

    .line 275
    .line 276
    iget-object v0, v1, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;->V:Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 277
    .line 278
    if-eqz v0, :cond_7

    .line 279
    .line 280
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getSourceFolder()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    new-instance v2, Landroid/content/Intent;

    .line 285
    .line 286
    const-string v3, "android.intent.action.VIEW"

    .line 287
    .line 288
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    const/high16 v3, 0x14000000

    .line 292
    .line 293
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 294
    .line 295
    .line 296
    new-instance v3, Ljava/io/File;

    .line 297
    .line 298
    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 302
    .line 303
    .line 304
    move-result-object v3

    .line 305
    const-string v4, "resource/folder"

    .line 306
    .line 307
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    .line 309
    .line 310
    :try_start_0
    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    .line 312
    .line 313
    goto :goto_3

    .line 314
    :catch_0
    move-exception v0

    .line 315
    move-object v8, v0

    .line 316
    sget-object v5, Lvr6;->INSTANCE:Lvr6;

    .line 317
    .line 318
    invoke-virtual {v1}, Lk28;->r()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v6

    .line 322
    const/16 v10, 0x8

    .line 323
    .line 324
    const/4 v11, 0x0

    .line 325
    const-string v7, "Error opening folder"

    .line 326
    .line 327
    const/4 v9, 0x0

    .line 328
    invoke-static/range {v5 .. v11}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 329
    .line 330
    .line 331
    goto :goto_3

    .line 332
    :catch_1
    const-class v2, Landroid/content/ClipboardManager;

    .line 333
    .line 334
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 335
    .line 336
    .line 337
    move-result-object v2

    .line 338
    check-cast v2, Landroid/content/ClipboardManager;

    .line 339
    .line 340
    const-string v3, "folder_path"

    .line 341
    .line 342
    invoke-static {v3, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    invoke-virtual {v2, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 347
    .line 348
    .line 349
    const v0, 0x7f1303c6

    .line 350
    .line 351
    .line 352
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 357
    .line 358
    .line 359
    sget-object v2, Lzn4;->a:Lzn4;

    .line 360
    .line 361
    new-instance v2, Ll30;

    .line 362
    .line 363
    const/16 v3, 0xf

    .line 364
    .line 365
    invoke-direct {v2, v3, v1, v0}, Ll30;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 366
    .line 367
    .line 368
    invoke-static {v2}, Lzn4;->e(Lbt3;)V

    .line 369
    .line 370
    .line 371
    :goto_3
    return-void

    .line 372
    :cond_7
    const-string v0, "folderItem"

    .line 373
    .line 374
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    throw v4

    .line 378
    :pswitch_6
    check-cast v0, Lsc3;

    .line 379
    .line 380
    invoke-virtual {v0, v3}, Lsc3;->m(Z)V

    .line 381
    .line 382
    .line 383
    return-void

    .line 384
    :pswitch_7
    check-cast v0, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;

    .line 385
    .line 386
    sget v1, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->P0:I

    .line 387
    .line 388
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->i0()Landroid/widget/AutoCompleteTextView;

    .line 389
    .line 390
    .line 391
    move-result-object v0

    .line 392
    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    .line 393
    .line 394
    .line 395
    return-void

    .line 396
    :pswitch_8
    check-cast v0, Lorg/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsActivity;

    .line 397
    .line 398
    sget v1, Lorg/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsActivity;->Z:I

    .line 399
    .line 400
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsActivity;->V()Lhf1;

    .line 401
    .line 402
    .line 403
    move-result-object v0

    .line 404
    invoke-virtual {v0, v2}, Lhf1;->o(Z)V

    .line 405
    .line 406
    .line 407
    return-void

    .line 408
    :pswitch_9
    check-cast v0, Ltk0;

    .line 409
    .line 410
    iget-object v0, v0, Ltk0;->e:Lorg/swiftapps/swiftbackup/settings/SettingsDetailActivity;

    .line 411
    .line 412
    const-string v1, "https://swiftapps.org/faq#pc"

    .line 413
    .line 414
    invoke-static {v0, v1}, Lorg/swiftapps/swiftbackup/common/Const;->B(Landroid/content/Context;Ljava/lang/String;)Z

    .line 415
    .line 416
    .line 417
    return-void

    .line 418
    :pswitch_a
    check-cast v0, Ljj0;

    .line 419
    .line 420
    iget-object v0, v0, Ljj0;->e:Lbt3;

    .line 421
    .line 422
    invoke-interface {v0}, Lbt3;->invoke()Ljava/lang/Object;

    .line 423
    .line 424
    .line 425
    return-void

    .line 426
    :pswitch_b
    check-cast v0, Luy;

    .line 427
    .line 428
    sget-object v1, Lxy;->Left:Lxy;

    .line 429
    .line 430
    sget-object v2, Luy$a;->Primary:Luy$a;

    .line 431
    .line 432
    invoke-virtual {v0, v1, v2}, Luy;->m(Lxy;Luy$a;)V

    .line 433
    .line 434
    .line 435
    return-void

    .line 436
    :pswitch_c
    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 437
    .line 438
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    .line 439
    .line 440
    .line 441
    move-result-object v0

    .line 442
    if-eqz v0, :cond_8

    .line 443
    .line 444
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 445
    .line 446
    .line 447
    :cond_8
    return-void

    .line 448
    :pswitch_d
    check-cast v0, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;

    .line 449
    .line 450
    sget v1, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->Q:I

    .line 451
    .line 452
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 453
    .line 454
    .line 455
    return-void

    .line 456
    :pswitch_e
    check-cast v0, Lo7;

    .line 457
    .line 458
    sget v1, Lorg/swiftapps/swiftbackup/premium/PremiumActivity;->V:I

    .line 459
    .line 460
    invoke-virtual {v0}, Lo7;->i()Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 461
    .line 462
    .line 463
    move-result-object v0

    .line 464
    invoke-static {v0}, Lrs9;->u(Lk28;)V

    .line 465
    .line 466
    .line 467
    return-void

    .line 468
    nop

    :pswitch_data_0
    .packed-switch 0x0
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
