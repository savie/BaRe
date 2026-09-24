.class public final Lfs4;
.super Lfm0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lt36;


# instance fields
.field public final p:Lgv7;

.field public final q:Lgv7;

.field public final r:Lgv7;

.field public final t:Lgv7;

.field public final x:Lgv7;

.field public final y:Lgv7;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lfm0;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lmo3;

    .line 5
    .line 6
    const/4 v1, 0x6

    .line 7
    invoke-direct {v0, p0, v1}, Lmo3;-><init>(Ljava/lang/Object;I)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lgv7;

    .line 11
    .line 12
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Lfs4;->p:Lgv7;

    .line 16
    .line 17
    new-instance v0, Lxq4;

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    invoke-direct {v0, p0, v1}, Lxq4;-><init>(Ljava/lang/Object;I)V

    .line 21
    .line 22
    .line 23
    new-instance v1, Lgv7;

    .line 24
    .line 25
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lfs4;->q:Lgv7;

    .line 29
    .line 30
    new-instance v0, Las4;

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-direct {v0, p0, v1}, Las4;-><init>(Ljava/lang/Object;I)V

    .line 34
    .line 35
    .line 36
    new-instance v1, Lgv7;

    .line 37
    .line 38
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 39
    .line 40
    .line 41
    iput-object v1, p0, Lfs4;->r:Lgv7;

    .line 42
    .line 43
    new-instance v0, Lpr4;

    .line 44
    .line 45
    const/4 v1, 0x1

    .line 46
    invoke-direct {v0, p0, v1}, Lpr4;-><init>(Ljava/lang/Object;I)V

    .line 47
    .line 48
    .line 49
    new-instance v1, Lgv7;

    .line 50
    .line 51
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 52
    .line 53
    .line 54
    iput-object v1, p0, Lfs4;->t:Lgv7;

    .line 55
    .line 56
    new-instance v0, Llf;

    .line 57
    .line 58
    const/16 v1, 0x1a

    .line 59
    .line 60
    invoke-direct {v0, p0, v1}, Llf;-><init>(Ljava/lang/Object;I)V

    .line 61
    .line 62
    .line 63
    new-instance v1, Lgv7;

    .line 64
    .line 65
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 66
    .line 67
    .line 68
    iput-object v1, p0, Lfs4;->x:Lgv7;

    .line 69
    .line 70
    new-instance v0, Lej;

    .line 71
    .line 72
    const/16 v1, 0x1a

    .line 73
    .line 74
    invoke-direct {v0, p0, v1}, Lej;-><init>(Ljava/lang/Object;I)V

    .line 75
    .line 76
    .line 77
    new-instance v1, Lgv7;

    .line 78
    .line 79
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 80
    .line 81
    .line 82
    iput-object v1, p0, Lfs4;->y:Lgv7;

    .line 83
    .line 84
    new-instance v0, Lfj;

    .line 85
    .line 86
    const/16 v1, 0x1d

    .line 87
    .line 88
    invoke-direct {v0, p0, v1}, Lfj;-><init>(Ljava/lang/Object;I)V

    .line 89
    .line 90
    .line 91
    new-instance p0, Lgv7;

    .line 92
    .line 93
    invoke-direct {p0, v0}, Lgv7;-><init>(Lbt3;)V

    .line 94
    .line 95
    .line 96
    return-void
.end method


# virtual methods
.method public final d(Landroidx/preference/Preference;)Z
    .locals 12

    .line 1
    iget-object p1, p1, Landroidx/preference/Preference;->t:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p1, :cond_15

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x2

    .line 11
    const-string v3, "editor"

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    sparse-switch v1, :sswitch_data_0

    .line 15
    .line 16
    .line 17
    goto/16 :goto_5

    .line 18
    .line 19
    :sswitch_0
    const-string v1, "extend_data_sync_fgs_timeout_for_schedules"

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-nez p1, :cond_0

    .line 26
    .line 27
    goto/16 :goto_5

    .line 28
    .line 29
    :cond_0
    iget-object p0, p0, Lfs4;->x:Lgv7;

    .line 30
    .line 31
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Lorg/swiftapps/swiftbackup/settings/MSwitchPreference;

    .line 36
    .line 37
    iget-boolean p1, p1, Landroidx/preference/TwoStatePreference;->f0:Z

    .line 38
    .line 39
    sget-object v5, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 40
    .line 41
    if-eqz v5, :cond_1

    .line 42
    .line 43
    invoke-interface {v5, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    check-cast p0, Lorg/swiftapps/swiftbackup/settings/MSwitchPreference;

    .line 55
    .line 56
    iget-boolean p0, p0, Landroidx/preference/TwoStatePreference;->f0:Z

    .line 57
    .line 58
    if-nez p0, :cond_15

    .line 59
    .line 60
    sget-object p0, Lzn4;->a:Lzn4;

    .line 61
    .line 62
    new-instance p0, Lcs4;

    .line 63
    .line 64
    invoke-direct {p0, v2, v4}, Lws7;-><init>(ILjv1;)V

    .line 65
    .line 66
    .line 67
    invoke-static {v4, p0}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 68
    .line 69
    .line 70
    return v0

    .line 71
    :cond_1
    invoke-static {v3}, Lpe4;->F(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw v4

    .line 75
    :sswitch_1
    const-string v1, "scan_orphaned_cloud_files"

    .line 76
    .line 77
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    if-nez p1, :cond_2

    .line 82
    .line 83
    goto/16 :goto_5

    .line 84
    .line 85
    :cond_2
    sget p1, Lorg/swiftapps/swiftbackup/cloud/orphans/CloudOrphanCleanerActivity;->S:I

    .line 86
    .line 87
    invoke-virtual {p0}, Landroidx/fragment/app/o;->requireActivity()Landroidx/fragment/app/u;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    new-instance p1, Landroid/content/Intent;

    .line 92
    .line 93
    const-class v1, Lorg/swiftapps/swiftbackup/cloud/orphans/CloudOrphanCleanerActivity;

    .line 94
    .line 95
    invoke-direct {p1, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 99
    .line 100
    .line 101
    return v0

    .line 102
    :sswitch_2
    const-string v1, "use_test_pdras"

    .line 103
    .line 104
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    if-nez p1, :cond_3

    .line 109
    .line 110
    goto/16 :goto_5

    .line 111
    .line 112
    :cond_3
    iget-object p0, p0, Lfs4;->q:Lgv7;

    .line 113
    .line 114
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    check-cast p0, Lorg/swiftapps/swiftbackup/settings/MSwitchPreference;

    .line 119
    .line 120
    iget-boolean p0, p0, Landroidx/preference/TwoStatePreference;->f0:Z

    .line 121
    .line 122
    sget-object p1, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 123
    .line 124
    if-eqz p1, :cond_4

    .line 125
    .line 126
    invoke-interface {p1, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 131
    .line 132
    .line 133
    return v0

    .line 134
    :cond_4
    invoke-static {v3}, Lpe4;->F(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    throw v4

    .line 138
    :sswitch_3
    const-string v1, "delete_gms_files"

    .line 139
    .line 140
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    if-nez p1, :cond_5

    .line 145
    .line 146
    goto/16 :goto_5

    .line 147
    .line 148
    :cond_5
    sget-object p1, Lzn4;->a:Lzn4;

    .line 149
    .line 150
    new-instance p1, Lzq1;

    .line 151
    .line 152
    const/4 v1, 0x3

    .line 153
    invoke-direct {p1, p0, v4, v1}, Lzq1;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 154
    .line 155
    .line 156
    invoke-static {v4, p1}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 157
    .line 158
    .line 159
    return v0

    .line 160
    :sswitch_4
    const-string p0, "clear_cached_apps_data"

    .line 161
    .line 162
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    return v0

    .line 166
    :sswitch_5
    const-string v1, "app_visibility_diagnostics"

    .line 167
    .line 168
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result p1

    .line 172
    if-nez p1, :cond_6

    .line 173
    .line 174
    goto/16 :goto_5

    .line 175
    .line 176
    :cond_6
    sget p1, Lorg/swiftapps/swiftbackup/settings/appvisibility/AppVisibilityDiagnosticsActivity;->O:I

    .line 177
    .line 178
    invoke-virtual {p0}, Landroidx/fragment/app/o;->requireActivity()Landroidx/fragment/app/u;

    .line 179
    .line 180
    .line 181
    move-result-object p0

    .line 182
    new-instance p1, Landroid/content/Intent;

    .line 183
    .line 184
    const-class v1, Lorg/swiftapps/swiftbackup/settings/appvisibility/AppVisibilityDiagnosticsActivity;

    .line 185
    .line 186
    invoke-direct {p1, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 190
    .line 191
    .line 192
    return v0

    .line 193
    :sswitch_6
    const-string v1, "onedrive_auth_agent"

    .line 194
    .line 195
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result p1

    .line 199
    if-nez p1, :cond_7

    .line 200
    .line 201
    goto/16 :goto_5

    .line 202
    .line 203
    :cond_7
    invoke-static {}, Lbs4;->a()Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    sget-object v1, Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;->BROWSER:Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;

    .line 208
    .line 209
    sget-object v3, Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;->WEBVIEW:Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;

    .line 210
    .line 211
    filled-new-array {v1, v3}, [Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    invoke-static {v1}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    new-instance v3, Ljava/util/ArrayList;

    .line 220
    .line 221
    const/16 v5, 0xa

    .line 222
    .line 223
    invoke-static {v1, v5}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 224
    .line 225
    .line 226
    move-result v6

    .line 227
    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 228
    .line 229
    .line 230
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    move v6, v0

    .line 235
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 236
    .line 237
    .line 238
    move-result v7

    .line 239
    const/4 v8, 0x1

    .line 240
    if-eqz v7, :cond_b

    .line 241
    .line 242
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v7

    .line 246
    add-int/lit8 v9, v6, 0x1

    .line 247
    .line 248
    if-ltz v6, :cond_a

    .line 249
    .line 250
    check-cast v7, Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;

    .line 251
    .line 252
    new-instance v10, Lt80;

    .line 253
    .line 254
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    .line 258
    .line 259
    .line 260
    move-result v11

    .line 261
    if-eqz v11, :cond_9

    .line 262
    .line 263
    if-eq v11, v8, :cond_9

    .line 264
    .line 265
    if-ne v11, v2, :cond_8

    .line 266
    .line 267
    const-string v8, "Browser"

    .line 268
    .line 269
    goto :goto_1

    .line 270
    :cond_8
    invoke-static {}, Lq;->j()V

    .line 271
    .line 272
    .line 273
    return v0

    .line 274
    :cond_9
    const-string v8, "WebView"

    .line 275
    .line 276
    :goto_1
    invoke-direct {v10, v6, v7, v8}, Lt80;-><init>(ILcom/microsoft/identity/common/java/ui/AuthorizationAgent;Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    .line 281
    .line 282
    move v6, v9

    .line 283
    goto :goto_0

    .line 284
    :cond_a
    invoke-static {}, Lfl1;->F0()V

    .line 285
    .line 286
    .line 287
    throw v4

    .line 288
    :cond_b
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 289
    .line 290
    .line 291
    move-result-object v1

    .line 292
    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 293
    .line 294
    .line 295
    move-result v2

    .line 296
    if-eqz v2, :cond_d

    .line 297
    .line 298
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move-result-object v2

    .line 302
    move-object v6, v2

    .line 303
    check-cast v6, Lt80;

    .line 304
    .line 305
    iget-object v6, v6, Lt80;->b:Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;

    .line 306
    .line 307
    if-ne v6, p1, :cond_c

    .line 308
    .line 309
    goto :goto_2

    .line 310
    :cond_d
    move-object v2, v4

    .line 311
    :goto_2
    check-cast v2, Lt80;

    .line 312
    .line 313
    if-eqz v2, :cond_e

    .line 314
    .line 315
    iget p1, v2, Lt80;->a:I

    .line 316
    .line 317
    goto :goto_3

    .line 318
    :cond_e
    invoke-static {v3}, Lel1;->S0(Ljava/util/List;)Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object p1

    .line 322
    check-cast p1, Lt80;

    .line 323
    .line 324
    iget p1, p1, Lt80;->a:I

    .line 325
    .line 326
    :goto_3
    invoke-virtual {p0}, Landroidx/fragment/app/o;->requireActivity()Landroidx/fragment/app/u;

    .line 327
    .line 328
    .line 329
    move-result-object v1

    .line 330
    new-instance v2, Lhv1;

    .line 331
    .line 332
    const v6, 0x7f140160

    .line 333
    .line 334
    .line 335
    invoke-direct {v2, v1, v6}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 336
    .line 337
    .line 338
    new-instance v7, Ls35;

    .line 339
    .line 340
    invoke-direct {v7, v1, v6, v2, v4}, Ls35;-><init>(Lio1;ILhv1;Ljava/lang/Float;)V

    .line 341
    .line 342
    .line 343
    iget-object v1, v7, Lva;->b:Ljava/lang/Object;

    .line 344
    .line 345
    check-cast v1, Lra;

    .line 346
    .line 347
    const-string v2, "OneDrive sign-in agent"

    .line 348
    .line 349
    iput-object v2, v1, Lra;->d:Ljava/lang/CharSequence;

    .line 350
    .line 351
    new-instance v1, Ljava/util/ArrayList;

    .line 352
    .line 353
    invoke-static {v3, v5}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 354
    .line 355
    .line 356
    move-result v2

    .line 357
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 361
    .line 362
    .line 363
    move-result-object v2

    .line 364
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 365
    .line 366
    .line 367
    move-result v5

    .line 368
    if-eqz v5, :cond_f

    .line 369
    .line 370
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 371
    .line 372
    .line 373
    move-result-object v5

    .line 374
    check-cast v5, Lt80;

    .line 375
    .line 376
    iget-object v5, v5, Lt80;->c:Ljava/lang/String;

    .line 377
    .line 378
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    .line 380
    .line 381
    goto :goto_4

    .line 382
    :cond_f
    new-array v2, v0, [Ljava/lang/String;

    .line 383
    .line 384
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object v1

    .line 388
    check-cast v1, [Ljava/lang/CharSequence;

    .line 389
    .line 390
    new-instance v2, Ltb3;

    .line 391
    .line 392
    invoke-direct {v2, v8, v3, p0}, Ltb3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 393
    .line 394
    .line 395
    invoke-virtual {v7, v1, p1, v2}, Lv75;->u([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)V

    .line 396
    .line 397
    .line 398
    const p0, 0x7f1300f1

    .line 399
    .line 400
    .line 401
    invoke-virtual {v7, p0, v4}, Lv75;->q(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 402
    .line 403
    .line 404
    invoke-virtual {v7}, Ls35;->m()Lwa;

    .line 405
    .line 406
    .line 407
    return v0

    .line 408
    :sswitch_7
    const-string v1, "scan_backups"

    .line 409
    .line 410
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 411
    .line 412
    .line 413
    move-result p1

    .line 414
    if-nez p1, :cond_10

    .line 415
    .line 416
    goto :goto_5

    .line 417
    :cond_10
    invoke-virtual {p0}, Lfs4;->q()Lorg/swiftapps/swiftbackup/settings/SettingsDetailActivity;

    .line 418
    .line 419
    .line 420
    move-result-object p1

    .line 421
    if-eqz p1, :cond_15

    .line 422
    .line 423
    invoke-virtual {p1}, Lil0;->G()Lqo0;

    .line 424
    .line 425
    .line 426
    move-result-object p1

    .line 427
    const v1, 0x7f13042e

    .line 428
    .line 429
    .line 430
    invoke-virtual {p1, v1}, Lqo0;->h(I)V

    .line 431
    .line 432
    .line 433
    sget-object v1, Lzn4;->a:Lzn4;

    .line 434
    .line 435
    new-instance v1, Lds4;

    .line 436
    .line 437
    invoke-direct {v1, p0, p1, v4}, Lds4;-><init>(Lfs4;Lqo0;Ljv1;)V

    .line 438
    .line 439
    .line 440
    invoke-static {v4, v1}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 441
    .line 442
    .line 443
    return v0

    .line 444
    :sswitch_8
    const-string v1, "extra_logging"

    .line 445
    .line 446
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 447
    .line 448
    .line 449
    move-result p1

    .line 450
    if-nez p1, :cond_11

    .line 451
    .line 452
    goto :goto_5

    .line 453
    :cond_11
    iget-object p0, p0, Lfs4;->r:Lgv7;

    .line 454
    .line 455
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 456
    .line 457
    .line 458
    move-result-object p0

    .line 459
    check-cast p0, Lorg/swiftapps/swiftbackup/settings/MSwitchPreference;

    .line 460
    .line 461
    iget-boolean p0, p0, Landroidx/preference/TwoStatePreference;->f0:Z

    .line 462
    .line 463
    sget-object p1, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 464
    .line 465
    if-eqz p1, :cond_12

    .line 466
    .line 467
    invoke-interface {p1, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 468
    .line 469
    .line 470
    move-result-object p0

    .line 471
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 472
    .line 473
    .line 474
    return v0

    .line 475
    :cond_12
    invoke-static {v3}, Lpe4;->F(Ljava/lang/String;)V

    .line 476
    .line 477
    .line 478
    throw v4

    .line 479
    :sswitch_9
    const-string v1, "skip_disk_space_checks"

    .line 480
    .line 481
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 482
    .line 483
    .line 484
    move-result p1

    .line 485
    if-nez p1, :cond_13

    .line 486
    .line 487
    goto :goto_5

    .line 488
    :cond_13
    iget-object p0, p0, Lfs4;->t:Lgv7;

    .line 489
    .line 490
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 491
    .line 492
    .line 493
    move-result-object p0

    .line 494
    check-cast p0, Lorg/swiftapps/swiftbackup/settings/MSwitchPreference;

    .line 495
    .line 496
    iget-boolean p0, p0, Landroidx/preference/TwoStatePreference;->f0:Z

    .line 497
    .line 498
    sget-object p1, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 499
    .line 500
    if-eqz p1, :cond_14

    .line 501
    .line 502
    invoke-interface {p1, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 503
    .line 504
    .line 505
    move-result-object p0

    .line 506
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 507
    .line 508
    .line 509
    return v0

    .line 510
    :cond_14
    invoke-static {v3}, Lpe4;->F(Ljava/lang/String;)V

    .line 511
    .line 512
    .line 513
    throw v4

    .line 514
    :cond_15
    :goto_5
    return v0

    .line 515
    :sswitch_data_0
    .sparse-switch
        -0x4598199a -> :sswitch_9
        -0x3bcf09d0 -> :sswitch_8
        -0x39a81cd1 -> :sswitch_7
        -0x1bf617 -> :sswitch_6
        0x3cbdfdd -> :sswitch_5
        0xcb2be2c -> :sswitch_4
        0x23892671 -> :sswitch_3
        0x24648d7b -> :sswitch_2
        0x2736bb57 -> :sswitch_1
        0x2919ada7 -> :sswitch_0
    .end sparse-switch
.end method

.method public final l()V
    .locals 8

    .line 1
    const v0, 0x7f160012

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lc46;->i(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lfm0;->n()Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Landroidx/preference/Preference;

    .line 26
    .line 27
    iput-object p0, v1, Landroidx/preference/Preference;->f:Lt36;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const-string v0, "labs_cloud_settings"

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Lc46;->j(Ljava/lang/String;)Landroidx/preference/Preference;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Landroidx/preference/PreferenceGroup;

    .line 37
    .line 38
    const/4 v1, 0x1

    .line 39
    const/4 v2, 0x0

    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    :try_start_0
    sget-object v3, Ld45;->b:Ld45;

    .line 43
    .line 44
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    invoke-static {}, Ld45;->a()Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    if-eqz v3, :cond_1

    .line 52
    .line 53
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->isAnonymous()Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 58
    .line 59
    .line 60
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    goto :goto_1

    .line 62
    :catch_0
    :cond_1
    move-object v3, v2

    .line 63
    :goto_1
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 64
    .line 65
    invoke-static {v3, v4}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    xor-int/2addr v3, v1

    .line 70
    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->C(Z)V

    .line 71
    .line 72
    .line 73
    :cond_2
    const-string v0, "scan_orphaned_cloud_files"

    .line 74
    .line 75
    invoke-virtual {p0, v0}, Lc46;->j(Ljava/lang/String;)Landroidx/preference/Preference;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    const/4 v3, 0x0

    .line 80
    if-eqz v0, :cond_3

    .line 81
    .line 82
    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->C(Z)V

    .line 83
    .line 84
    .line 85
    :cond_3
    invoke-virtual {p0}, Lfs4;->r()V

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lfs4;->q:Lgv7;

    .line 89
    .line 90
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    check-cast v4, Lorg/swiftapps/swiftbackup/settings/MSwitchPreference;

    .line 95
    .line 96
    sget-object v5, Lorg/swiftapps/swiftbackup/common/V;->INSTANCE:Lorg/swiftapps/swiftbackup/common/V;

    .line 97
    .line 98
    invoke-virtual {v5}, Lorg/swiftapps/swiftbackup/common/V;->getT()Z

    .line 99
    .line 100
    .line 101
    move-result v6

    .line 102
    invoke-virtual {v4, v6}, Landroidx/preference/Preference;->C(Z)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    check-cast v0, Lorg/swiftapps/swiftbackup/settings/MSwitchPreference;

    .line 110
    .line 111
    invoke-virtual {v5}, Lorg/swiftapps/swiftbackup/common/V;->getT()Z

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    const-string v5, "prefs"

    .line 116
    .line 117
    if-eqz v4, :cond_5

    .line 118
    .line 119
    const-string v4, "use_test_pdras"

    .line 120
    .line 121
    :try_start_1
    sget-object v6, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 122
    .line 123
    if-eqz v6, :cond_4

    .line 124
    .line 125
    invoke-interface {v6, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 126
    .line 127
    .line 128
    move-result v4

    .line 129
    goto :goto_2

    .line 130
    :cond_4
    invoke-static {v5}, Lpe4;->F(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    throw v2
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 134
    :catch_1
    move v4, v3

    .line 135
    :goto_2
    if-eqz v4, :cond_5

    .line 136
    .line 137
    move v4, v1

    .line 138
    goto :goto_3

    .line 139
    :cond_5
    move v4, v3

    .line 140
    :goto_3
    invoke-virtual {v0, v4}, Landroidx/preference/TwoStatePreference;->G(Z)V

    .line 141
    .line 142
    .line 143
    iget-object v0, p0, Lfs4;->r:Lgv7;

    .line 144
    .line 145
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    check-cast v0, Lorg/swiftapps/swiftbackup/settings/MSwitchPreference;

    .line 150
    .line 151
    const-string v4, "extra_logging"

    .line 152
    .line 153
    :try_start_2
    sget-object v6, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 154
    .line 155
    if-eqz v6, :cond_6

    .line 156
    .line 157
    invoke-interface {v6, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 158
    .line 159
    .line 160
    move-result v4

    .line 161
    goto :goto_4

    .line 162
    :cond_6
    invoke-static {v5}, Lpe4;->F(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    throw v2
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    .line 166
    :catch_2
    move v4, v3

    .line 167
    :goto_4
    invoke-virtual {v0, v4}, Landroidx/preference/TwoStatePreference;->G(Z)V

    .line 168
    .line 169
    .line 170
    iget-object v0, p0, Lfs4;->t:Lgv7;

    .line 171
    .line 172
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    check-cast v0, Lorg/swiftapps/swiftbackup/settings/MSwitchPreference;

    .line 177
    .line 178
    const-string v4, "skip_disk_space_checks"

    .line 179
    .line 180
    :try_start_3
    sget-object v6, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 181
    .line 182
    if-eqz v6, :cond_7

    .line 183
    .line 184
    invoke-interface {v6, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 185
    .line 186
    .line 187
    move-result v4

    .line 188
    goto :goto_5

    .line 189
    :cond_7
    invoke-static {v5}, Lpe4;->F(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    throw v2
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    .line 193
    :catch_3
    move v4, v3

    .line 194
    :goto_5
    invoke-virtual {v0, v4}, Landroidx/preference/TwoStatePreference;->G(Z)V

    .line 195
    .line 196
    .line 197
    iget-object v0, p0, Lfs4;->x:Lgv7;

    .line 198
    .line 199
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v4

    .line 203
    check-cast v4, Lorg/swiftapps/swiftbackup/settings/MSwitchPreference;

    .line 204
    .line 205
    invoke-static {}, Lb67;->f()Z

    .line 206
    .line 207
    .line 208
    move-result v6

    .line 209
    if-eqz v6, :cond_9

    .line 210
    .line 211
    const-string v6, "extend_data_sync_fgs_timeout_for_schedules"

    .line 212
    .line 213
    :try_start_4
    sget-object v7, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 214
    .line 215
    if-eqz v7, :cond_8

    .line 216
    .line 217
    invoke-interface {v7, v6, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 218
    .line 219
    .line 220
    move-result v2

    .line 221
    goto :goto_6

    .line 222
    :cond_8
    invoke-static {v5}, Lpe4;->F(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    throw v2
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    .line 226
    :catch_4
    move v2, v3

    .line 227
    :goto_6
    if-eqz v2, :cond_9

    .line 228
    .line 229
    goto :goto_7

    .line 230
    :cond_9
    move v1, v3

    .line 231
    :goto_7
    invoke-virtual {v4, v1}, Landroidx/preference/TwoStatePreference;->G(Z)V

    .line 232
    .line 233
    .line 234
    invoke-static {}, Lb67;->f()Z

    .line 235
    .line 236
    .line 237
    move-result v1

    .line 238
    if-eqz v1, :cond_a

    .line 239
    .line 240
    sget-boolean v1, Lmp6;->g:Z

    .line 241
    .line 242
    if-nez v1, :cond_b

    .line 243
    .line 244
    :cond_a
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    check-cast v1, Lorg/swiftapps/swiftbackup/settings/MSwitchPreference;

    .line 249
    .line 250
    invoke-virtual {v1}, Landroidx/preference/Preference;->y()V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    check-cast v0, Lorg/swiftapps/swiftbackup/settings/MSwitchPreference;

    .line 258
    .line 259
    const v1, 0x7f130451

    .line 260
    .line 261
    .line 262
    iget-object v2, v0, Landroidx/preference/Preference;->a:Landroid/content/Context;

    .line 263
    .line 264
    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v1

    .line 268
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->B(Ljava/lang/CharSequence;)V

    .line 269
    .line 270
    .line 271
    :cond_b
    sget-boolean v0, Lmp6;->g:Z

    .line 272
    .line 273
    if-nez v0, :cond_c

    .line 274
    .line 275
    iget-object p0, p0, Lfs4;->y:Lgv7;

    .line 276
    .line 277
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    check-cast v0, Landroidx/preference/Preference;

    .line 282
    .line 283
    invoke-virtual {v0}, Landroidx/preference/Preference;->y()V

    .line 284
    .line 285
    .line 286
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object p0

    .line 290
    check-cast p0, Landroidx/preference/Preference;

    .line 291
    .line 292
    const v0, 0x7f13049e

    .line 293
    .line 294
    .line 295
    iget-object v1, p0, Landroidx/preference/Preference;->a:Landroid/content/Context;

    .line 296
    .line 297
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->B(Ljava/lang/CharSequence;)V

    .line 302
    .line 303
    .line 304
    :cond_c
    return-void
.end method

.method public final q()Lorg/swiftapps/swiftbackup/settings/SettingsDetailActivity;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/o;->getActivity()Landroidx/fragment/app/u;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    instance-of v0, p0, Lorg/swiftapps/swiftbackup/settings/SettingsDetailActivity;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast p0, Lorg/swiftapps/swiftbackup/settings/SettingsDetailActivity;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return-object p0
.end method

.method public final r()V
    .locals 2

    .line 1
    iget-object p0, p0, Lfs4;->p:Lgv7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/preference/Preference;

    .line 8
    .line 9
    invoke-static {}, Lbs4;->a()Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    if-eq v0, v1, :cond_1

    .line 21
    .line 22
    const/4 v1, 0x2

    .line 23
    if-ne v0, v1, :cond_0

    .line 24
    .line 25
    const-string v0, "Browser"

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-static {}, Lq;->j()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    const-string v0, "WebView"

    .line 33
    .line 34
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->B(Ljava/lang/CharSequence;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method
