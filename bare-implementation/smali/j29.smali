.class public final Lj29;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lj29;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lj29;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lj29;->b:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget v0, p0, Lj29;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lj29;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lhs1;

    .line 11
    .line 12
    iget-object p0, p0, Lj29;->c:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p0, Lw86;

    .line 15
    .line 16
    iget-object v3, p0, Lw86;->b:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v3, Lne;

    .line 19
    .line 20
    iget-object v4, p0, Lw86;->f:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v4, Lpz3;

    .line 23
    .line 24
    iget-object v4, v4, Lpz3;->j:Ljava/util/concurrent/ConcurrentHashMap;

    .line 25
    .line 26
    iget-object v5, p0, Lw86;->c:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v5, Ldf;

    .line 29
    .line 30
    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    check-cast v4, Lg19;

    .line 35
    .line 36
    if-nez v4, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {v0}, Lhs1;->n()Z

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-eqz v5, :cond_2

    .line 44
    .line 45
    iput-boolean v1, p0, Lw86;->a:Z

    .line 46
    .line 47
    invoke-interface {v3}, Lne;->j()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    iget-boolean v0, p0, Lw86;->a:Z

    .line 54
    .line 55
    if-eqz v0, :cond_3

    .line 56
    .line 57
    iget-object v0, p0, Lw86;->d:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v0, Ln74;

    .line 60
    .line 61
    if-eqz v0, :cond_3

    .line 62
    .line 63
    iget-object p0, p0, Lw86;->e:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast p0, Ljava/util/Set;

    .line 66
    .line 67
    invoke-interface {v3, v0, p0}, Lne;->k(Ln74;Ljava/util/Set;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    :try_start_0
    invoke-interface {v3}, Lne;->a()Ljava/util/Set;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-interface {v3, v2, p0}, Lne;->k(Ln74;Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :catch_0
    move-exception p0

    .line 80
    const-string v0, "GoogleApiManager"

    .line 81
    .line 82
    const-string v1, "Failed to get service from broker. "

    .line 83
    .line 84
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    .line 86
    .line 87
    const-string p0, "Failed to get service from broker."

    .line 88
    .line 89
    invoke-interface {v3, p0}, Lne;->b(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    new-instance p0, Lhs1;

    .line 93
    .line 94
    const/16 v0, 0xa

    .line 95
    .line 96
    invoke-direct {p0, v0, v2, v2}, Lhs1;-><init>(ILandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v4, p0, v2}, Lg19;->o(Lhs1;Ljava/lang/RuntimeException;)V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_2
    invoke-virtual {v4, v0, v2}, Lg19;->o(Lhs1;Ljava/lang/RuntimeException;)V

    .line 104
    .line 105
    .line 106
    :cond_3
    :goto_0
    return-void

    .line 107
    :pswitch_0
    iget-object v0, p0, Lj29;->c:Ljava/lang/Object;

    .line 108
    .line 109
    check-cast v0, La19;

    .line 110
    .line 111
    iget-boolean v0, v0, La19;->a:Z

    .line 112
    .line 113
    if-nez v0, :cond_4

    .line 114
    .line 115
    goto/16 :goto_5

    .line 116
    .line 117
    :cond_4
    iget-object v0, p0, Lj29;->b:Ljava/lang/Object;

    .line 118
    .line 119
    check-cast v0, Lg29;

    .line 120
    .line 121
    iget-object v0, v0, Lg29;->b:Lhs1;

    .line 122
    .line 123
    iget v3, v0, Lhs1;->b:I

    .line 124
    .line 125
    const/4 v4, 0x0

    .line 126
    if-eqz v3, :cond_5

    .line 127
    .line 128
    iget-object v3, v0, Lhs1;->c:Landroid/app/PendingIntent;

    .line 129
    .line 130
    if-eqz v3, :cond_5

    .line 131
    .line 132
    move v3, v1

    .line 133
    goto :goto_1

    .line 134
    :cond_5
    move v3, v4

    .line 135
    :goto_1
    iget-object v5, p0, Lj29;->c:Ljava/lang/Object;

    .line 136
    .line 137
    check-cast v5, La19;

    .line 138
    .line 139
    if-eqz v3, :cond_6

    .line 140
    .line 141
    iget-object v2, v5, Lvt4;->mLifecycleFragment:Lbu4;

    .line 142
    .line 143
    invoke-virtual {v5}, Lvt4;->getActivity()Landroid/app/Activity;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    iget-object v0, v0, Lhs1;->c:Landroid/app/PendingIntent;

    .line 148
    .line 149
    invoke-static {v0}, Lly8;->h(Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    iget-object p0, p0, Lj29;->b:Ljava/lang/Object;

    .line 153
    .line 154
    check-cast p0, Lg29;

    .line 155
    .line 156
    iget p0, p0, Lg29;->a:I

    .line 157
    .line 158
    sget v5, Lcom/google/android/gms/common/api/GoogleApiActivity;->b:I

    .line 159
    .line 160
    const-class v5, Lcom/google/android/gms/common/api/GoogleApiActivity;

    .line 161
    .line 162
    new-instance v6, Landroid/content/Intent;

    .line 163
    .line 164
    invoke-direct {v6, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 165
    .line 166
    .line 167
    const-string v3, "pending_intent"

    .line 168
    .line 169
    invoke-virtual {v6, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 170
    .line 171
    .line 172
    const-string v0, "failing_client_id"

    .line 173
    .line 174
    invoke-virtual {v6, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 175
    .line 176
    .line 177
    const-string p0, "notify_manager"

    .line 178
    .line 179
    invoke-virtual {v6, p0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 180
    .line 181
    .line 182
    invoke-interface {v2, v6, v1}, Lbu4;->startActivityForResult(Landroid/content/Intent;I)V

    .line 183
    .line 184
    .line 185
    goto/16 :goto_5

    .line 186
    .line 187
    :cond_6
    invoke-virtual {v5}, Lvt4;->getActivity()Landroid/app/Activity;

    .line 188
    .line 189
    .line 190
    move-result-object v3

    .line 191
    iget v6, v0, Lhs1;->b:I

    .line 192
    .line 193
    iget-object v5, v5, La19;->d:Llz3;

    .line 194
    .line 195
    invoke-virtual {v5, v6, v3, v2}, Lmz3;->a(ILandroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    .line 197
    .line 198
    move-result-object v3

    .line 199
    if-eqz v3, :cond_7

    .line 200
    .line 201
    iget-object v1, p0, Lj29;->c:Ljava/lang/Object;

    .line 202
    .line 203
    check-cast v1, La19;

    .line 204
    .line 205
    invoke-virtual {v1}, Lvt4;->getActivity()Landroid/app/Activity;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    iget-object v3, v1, Lvt4;->mLifecycleFragment:Lbu4;

    .line 210
    .line 211
    iget v0, v0, Lhs1;->b:I

    .line 212
    .line 213
    iget-object p0, p0, Lj29;->c:Ljava/lang/Object;

    .line 214
    .line 215
    check-cast p0, La19;

    .line 216
    .line 217
    iget-object v1, v1, La19;->d:Llz3;

    .line 218
    .line 219
    invoke-virtual {v1, v2, v3, v0, p0}, Llz3;->h(Landroid/app/Activity;Lbu4;ILandroid/content/DialogInterface$OnCancelListener;)V

    .line 220
    .line 221
    .line 222
    goto/16 :goto_5

    .line 223
    .line 224
    :cond_7
    iget v3, v0, Lhs1;->b:I

    .line 225
    .line 226
    iget-object v5, p0, Lj29;->c:Ljava/lang/Object;

    .line 227
    .line 228
    check-cast v5, La19;

    .line 229
    .line 230
    const/16 v6, 0x12

    .line 231
    .line 232
    if-ne v3, v6, :cond_c

    .line 233
    .line 234
    iget-object v0, v5, La19;->d:Llz3;

    .line 235
    .line 236
    invoke-virtual {v5}, Lvt4;->getActivity()Landroid/app/Activity;

    .line 237
    .line 238
    .line 239
    move-result-object v3

    .line 240
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 241
    .line 242
    .line 243
    new-instance v0, Landroid/widget/ProgressBar;

    .line 244
    .line 245
    const v7, 0x101007a

    .line 246
    .line 247
    .line 248
    invoke-direct {v0, v3, v2, v7}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 255
    .line 256
    .line 257
    new-instance v1, Landroid/app/AlertDialog$Builder;

    .line 258
    .line 259
    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 263
    .line 264
    .line 265
    invoke-static {v3, v6}, Ll19;->b(Landroid/content/Context;I)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 270
    .line 271
    .line 272
    const-string v0, ""

    .line 273
    .line 274
    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    const-string v1, "GooglePlayServicesUpdatingDialog"

    .line 282
    .line 283
    invoke-static {v3, v0, v1, v5}, Llz3;->f(Landroid/app/Activity;Landroid/app/AlertDialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    .line 284
    .line 285
    .line 286
    iget-object v1, p0, Lj29;->c:Ljava/lang/Object;

    .line 287
    .line 288
    check-cast v1, La19;

    .line 289
    .line 290
    invoke-virtual {v1}, Lvt4;->getActivity()Landroid/app/Activity;

    .line 291
    .line 292
    .line 293
    move-result-object v3

    .line 294
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 295
    .line 296
    .line 297
    move-result-object v3

    .line 298
    new-instance v5, Lc00;

    .line 299
    .line 300
    const/16 v6, 0xf

    .line 301
    .line 302
    invoke-direct {v5, p0, v0, v6, v4}, Lc00;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    .line 303
    .line 304
    .line 305
    iget-object v1, v1, La19;->d:Llz3;

    .line 306
    .line 307
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 308
    .line 309
    .line 310
    new-instance v1, Landroid/content/IntentFilter;

    .line 311
    .line 312
    const-string v6, "android.intent.action.PACKAGE_ADDED"

    .line 313
    .line 314
    invoke-direct {v1, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    const-string v6, "package"

    .line 318
    .line 319
    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    new-instance v6, Lj19;

    .line 323
    .line 324
    invoke-direct {v6, v5}, Lj19;-><init>(Lc00;)V

    .line 325
    .line 326
    .line 327
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 328
    .line 329
    const/16 v7, 0x21

    .line 330
    .line 331
    if-lt v5, v7, :cond_9

    .line 332
    .line 333
    if-lt v5, v7, :cond_8

    .line 334
    .line 335
    const/4 v4, 0x2

    .line 336
    :cond_8
    invoke-virtual {v3, v6, v1, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 337
    .line 338
    .line 339
    goto :goto_2

    .line 340
    :cond_9
    invoke-virtual {v3, v6, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 341
    .line 342
    .line 343
    :goto_2
    iput-object v3, v6, Lj19;->a:Landroid/content/Context;

    .line 344
    .line 345
    invoke-static {v3}, Lu04;->b(Landroid/content/Context;)Z

    .line 346
    .line 347
    .line 348
    move-result v1

    .line 349
    if-nez v1, :cond_d

    .line 350
    .line 351
    iget-object p0, p0, Lj29;->c:Ljava/lang/Object;

    .line 352
    .line 353
    check-cast p0, La19;

    .line 354
    .line 355
    iget-object v1, p0, La19;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 356
    .line 357
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 358
    .line 359
    .line 360
    iget-object p0, p0, La19;->f:Lpz3;

    .line 361
    .line 362
    iget-object p0, p0, Lpz3;->n:Ln29;

    .line 363
    .line 364
    const/4 v1, 0x3

    .line 365
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 366
    .line 367
    .line 368
    move-result-object v1

    .line 369
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 370
    .line 371
    .line 372
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 373
    .line 374
    .line 375
    move-result p0

    .line 376
    if-eqz p0, :cond_a

    .line 377
    .line 378
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 379
    .line 380
    .line 381
    :cond_a
    monitor-enter v6

    .line 382
    :try_start_1
    iget-object p0, v6, Lj19;->a:Landroid/content/Context;

    .line 383
    .line 384
    if-eqz p0, :cond_b

    .line 385
    .line 386
    invoke-virtual {p0, v6}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 387
    .line 388
    .line 389
    goto :goto_3

    .line 390
    :catchall_0
    move-exception p0

    .line 391
    goto :goto_4

    .line 392
    :cond_b
    :goto_3
    iput-object v2, v6, Lj19;->a:Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 393
    .line 394
    monitor-exit v6

    .line 395
    goto :goto_5

    .line 396
    :goto_4
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 397
    throw p0

    .line 398
    :cond_c
    iget-object p0, p0, Lj29;->b:Ljava/lang/Object;

    .line 399
    .line 400
    check-cast p0, Lg29;

    .line 401
    .line 402
    iget p0, p0, Lg29;->a:I

    .line 403
    .line 404
    iget-object v1, v5, La19;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 405
    .line 406
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 407
    .line 408
    .line 409
    iget-object v1, v5, La19;->f:Lpz3;

    .line 410
    .line 411
    invoke-virtual {v1, v0, p0}, Lpz3;->h(Lhs1;I)V

    .line 412
    .line 413
    .line 414
    :cond_d
    :goto_5
    return-void

    .line 415
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
