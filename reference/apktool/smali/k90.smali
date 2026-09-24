.class public final Lk90;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Le59;


# instance fields
.field public a:Z

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 352
    sget-object v0, Lwj;->c:Lwj;

    invoke-direct {p0, p1, v0}, Lk90;-><init>(Landroid/content/Context;Lwj;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lwj;)V
    .locals 13

    .line 1
    iget-object v0, p2, Lwj;->a:Lbw0;

    .line 2
    .line 3
    sget-object v1, Lcw0;->a:Landroid/content/Intent;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    sget-object v3, Lcw0;->a:Landroid/content/Intent;

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    const/4 v6, 0x0

    .line 22
    if-eqz v5, :cond_0

    .line 23
    .line 24
    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 25
    .line 26
    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move-object v5, v6

    .line 30
    :goto_0
    const v7, 0x20040

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v3, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    :catch_0
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v7

    .line 45
    if-eqz v7, :cond_8

    .line 46
    .line 47
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 52
    .line 53
    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 54
    .line 55
    if-eqz v8, :cond_1

    .line 56
    .line 57
    const-string v9, "android.intent.action.VIEW"

    .line 58
    .line 59
    invoke-virtual {v8, v9}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    move-result v8

    .line 63
    if-eqz v8, :cond_1

    .line 64
    .line 65
    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 66
    .line 67
    const-string v9, "android.intent.category.BROWSABLE"

    .line 68
    .line 69
    invoke-virtual {v8, v9}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    .line 70
    .line 71
    .line 72
    move-result v8

    .line 73
    if-eqz v8, :cond_1

    .line 74
    .line 75
    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 76
    .line 77
    invoke-virtual {v8}, Landroid/content/IntentFilter;->schemesIterator()Ljava/util/Iterator;

    .line 78
    .line 79
    .line 80
    move-result-object v8

    .line 81
    if-nez v8, :cond_2

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_2
    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 85
    .line 86
    invoke-virtual {v8}, Landroid/content/IntentFilter;->authoritiesIterator()Ljava/util/Iterator;

    .line 87
    .line 88
    .line 89
    move-result-object v8

    .line 90
    if-eqz v8, :cond_3

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_3
    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 94
    .line 95
    invoke-virtual {v8}, Landroid/content/IntentFilter;->schemesIterator()Ljava/util/Iterator;

    .line 96
    .line 97
    .line 98
    move-result-object v8

    .line 99
    move v9, v4

    .line 100
    move v10, v9

    .line 101
    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 102
    .line 103
    .line 104
    move-result v11

    .line 105
    if-eqz v11, :cond_1

    .line 106
    .line 107
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v11

    .line 111
    check-cast v11, Ljava/lang/String;

    .line 112
    .line 113
    const-string v12, "http"

    .line 114
    .line 115
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v12

    .line 119
    or-int/2addr v9, v12

    .line 120
    const-string v12, "https"

    .line 121
    .line 122
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v11

    .line 126
    or-int/2addr v10, v11

    .line 127
    if-eqz v9, :cond_4

    .line 128
    .line 129
    if-eqz v10, :cond_4

    .line 130
    .line 131
    :try_start_0
    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 132
    .line 133
    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 134
    .line 135
    const/16 v9, 0x40

    .line 136
    .line 137
    invoke-virtual {v1, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 138
    .line 139
    .line 140
    move-result-object v8

    .line 141
    iget-object v9, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 142
    .line 143
    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 144
    .line 145
    new-instance v10, Landroid/content/Intent;

    .line 146
    .line 147
    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 148
    .line 149
    .line 150
    const-string v11, "android.support.customtabs.action.CustomTabsService"

    .line 151
    .line 152
    invoke-virtual {v10, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v10, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1, v10, v4}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 159
    .line 160
    .line 161
    move-result-object v9

    .line 162
    if-eqz v9, :cond_6

    .line 163
    .line 164
    new-instance v9, Law0;

    .line 165
    .line 166
    const/4 v10, 0x1

    .line 167
    invoke-direct {v9, v8, v10}, Law0;-><init>(Landroid/content/pm/PackageInfo;Z)V

    .line 168
    .line 169
    .line 170
    iget-object v11, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 171
    .line 172
    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 173
    .line 174
    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v11

    .line 178
    if-eqz v11, :cond_5

    .line 179
    .line 180
    invoke-virtual {v2, v4, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    goto :goto_2

    .line 184
    :cond_5
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    :cond_6
    move v10, v4

    .line 188
    :goto_2
    new-instance v9, Law0;

    .line 189
    .line 190
    invoke-direct {v9, v8, v4}, Law0;-><init>(Landroid/content/pm/PackageInfo;Z)V

    .line 191
    .line 192
    .line 193
    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 194
    .line 195
    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 196
    .line 197
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    move-result v7

    .line 201
    if-eqz v7, :cond_7

    .line 202
    .line 203
    invoke-virtual {v2, v10, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 204
    .line 205
    .line 206
    goto/16 :goto_1

    .line 207
    .line 208
    :cond_7
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    .line 210
    .line 211
    goto/16 :goto_1

    .line 212
    .line 213
    :cond_8
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    move-object v2, v6

    .line 218
    :cond_9
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 219
    .line 220
    .line 221
    move-result v3

    .line 222
    if-eqz v3, :cond_c

    .line 223
    .line 224
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v3

    .line 228
    check-cast v3, Law0;

    .line 229
    .line 230
    invoke-interface {v0, v3}, Lbw0;->h(Law0;)Z

    .line 231
    .line 232
    .line 233
    move-result v5

    .line 234
    if-nez v5, :cond_a

    .line 235
    .line 236
    goto :goto_3

    .line 237
    :cond_a
    iget-object v5, v3, Law0;->d:Ljava/lang/Boolean;

    .line 238
    .line 239
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 240
    .line 241
    .line 242
    move-result v5

    .line 243
    if-eqz v5, :cond_b

    .line 244
    .line 245
    move-object v2, v3

    .line 246
    goto :goto_4

    .line 247
    :cond_b
    if-nez v2, :cond_9

    .line 248
    .line 249
    move-object v2, v3

    .line 250
    goto :goto_3

    .line 251
    :cond_c
    :goto_4
    new-instance v0, Le38;

    .line 252
    .line 253
    invoke-direct {v0, p1}, Le38;-><init>(Landroid/content/Context;)V

    .line 254
    .line 255
    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    .line 258
    .line 259
    iput-boolean v4, p0, Lk90;->a:Z

    .line 260
    .line 261
    iput-object p1, p0, Lk90;->b:Ljava/lang/Object;

    .line 262
    .line 263
    iput-object p2, p0, Lk90;->c:Ljava/lang/Object;

    .line 264
    .line 265
    iput-object v0, p0, Lk90;->d:Ljava/lang/Object;

    .line 266
    .line 267
    iput-object v2, p0, Lk90;->e:Ljava/lang/Object;

    .line 268
    .line 269
    if-eqz v2, :cond_10

    .line 270
    .line 271
    iget-object p0, v2, Law0;->d:Ljava/lang/Boolean;

    .line 272
    .line 273
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 274
    .line 275
    .line 276
    move-result p0

    .line 277
    if-eqz p0, :cond_10

    .line 278
    .line 279
    iget-object p0, v2, Law0;->a:Ljava/lang/String;

    .line 280
    .line 281
    monitor-enter v0

    .line 282
    :try_start_1
    iget-object p1, v0, Le38;->e:Ljava/lang/Object;

    .line 283
    .line 284
    check-cast p1, Lc72;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 285
    .line 286
    if-eqz p1, :cond_d

    .line 287
    .line 288
    monitor-exit v0

    .line 289
    goto :goto_7

    .line 290
    :cond_d
    :try_start_2
    new-instance p1, Lc72;

    .line 291
    .line 292
    invoke-direct {p1, v0}, Lc72;-><init>(Le38;)V

    .line 293
    .line 294
    .line 295
    iput-object p1, v0, Le38;->e:Ljava/lang/Object;

    .line 296
    .line 297
    iget-object p1, v0, Le38;->b:Ljava/lang/Object;

    .line 298
    .line 299
    check-cast p1, Ljava/lang/ref/WeakReference;

    .line 300
    .line 301
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object p1

    .line 305
    check-cast p1, Landroid/content/Context;

    .line 306
    .line 307
    if-eqz p1, :cond_e

    .line 308
    .line 309
    iget-object p2, v0, Le38;->e:Ljava/lang/Object;

    .line 310
    .line 311
    check-cast p2, Lc72;

    .line 312
    .line 313
    invoke-static {p1, p0, p2}, Li72;->a(Landroid/content/Context;Ljava/lang/String;Lj72;)Z

    .line 314
    .line 315
    .line 316
    move-result p0

    .line 317
    if-nez p0, :cond_f

    .line 318
    .line 319
    goto :goto_5

    .line 320
    :catchall_0
    move-exception p0

    .line 321
    goto :goto_6

    .line 322
    :cond_e
    :goto_5
    const-string p0, "Unable to bind custom tabs service"

    .line 323
    .line 324
    new-array p1, v4, [Ljava/lang/Object;

    .line 325
    .line 326
    invoke-static {}, Lj15;->e()Lj15;

    .line 327
    .line 328
    .line 329
    move-result-object p2

    .line 330
    const/4 v1, 0x4

    .line 331
    invoke-virtual {p2, v1, v6, p0, p1}, Lj15;->f(ILjava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 332
    .line 333
    .line 334
    iget-object p0, v0, Le38;->d:Ljava/lang/Object;

    .line 335
    .line 336
    check-cast p0, Ljava/util/concurrent/CountDownLatch;

    .line 337
    .line 338
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 339
    .line 340
    .line 341
    :cond_f
    monitor-exit v0

    .line 342
    goto :goto_7

    .line 343
    :goto_6
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 344
    throw p0

    .line 345
    :cond_10
    :goto_7
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 347
    invoke-static {p1}, Lly8;->e(Ljava/lang/String;)V

    iput-object p1, p0, Lk90;->b:Ljava/lang/Object;

    .line 348
    invoke-static {p2}, Lly8;->e(Ljava/lang/String;)V

    iput-object p2, p0, Lk90;->c:Ljava/lang/Object;

    .line 349
    iput-object p3, p0, Lk90;->d:Ljava/lang/Object;

    .line 350
    iput-object p4, p0, Lk90;->e:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 351
    iput-boolean p1, p0, Lk90;->a:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lk90;->a:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lk90;->d:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Le38;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, v0, Le38;->e:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v1, Lc72;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    monitor-exit v0

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    :try_start_1
    iget-object v1, v0, Le38;->b:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Landroid/content/Context;

    .line 28
    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    iget-object v2, v0, Le38;->e:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v2, Lc72;

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto :goto_2

    .line 41
    :cond_2
    :goto_0
    iget-object v1, v0, Le38;->c:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 44
    .line 45
    const/4 v2, 0x0

    .line 46
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    const-string v1, "CustomTabsService is disconnected"

    .line 50
    .line 51
    const/4 v2, 0x0

    .line 52
    new-array v2, v2, [Ljava/lang/Object;

    .line 53
    .line 54
    invoke-static {v1, v2}, Lj15;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    .line 56
    .line 57
    monitor-exit v0

    .line 58
    :goto_1
    const/4 v0, 0x1

    .line 59
    iput-boolean v0, p0, Lk90;->a:Z

    .line 60
    .line 61
    return-void

    .line 62
    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 63
    throw p0
.end method

.method public b(Le90;)Landroid/content/Intent;
    .locals 10

    .line 1
    iget-boolean v0, p0, Lk90;->a:Z

    .line 2
    .line 3
    const-string v1, "Service has been disposed and rendered inoperable"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v0, :cond_7

    .line 7
    .line 8
    iget-object v0, p0, Lk90;->d:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Le38;

    .line 11
    .line 12
    new-instance v3, Lh72;

    .line 13
    .line 14
    iget-object v4, v0, Le38;->d:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v4, Ljava/util/concurrent/CountDownLatch;

    .line 17
    .line 18
    const/4 v5, 0x0

    .line 19
    :try_start_0
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 20
    .line 21
    const-wide/16 v7, 0x1

    .line 22
    .line 23
    invoke-virtual {v4, v7, v8, v6}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catch_0
    new-array v6, v5, [Ljava/lang/Object;

    .line 28
    .line 29
    invoke-static {}, Lj15;->e()Lj15;

    .line 30
    .line 31
    .line 32
    move-result-object v7

    .line 33
    const/4 v8, 0x4

    .line 34
    const-string v9, "Interrupted while waiting for browser connection"

    .line 35
    .line 36
    invoke-virtual {v7, v8, v2, v9, v6}, Lj15;->f(ILjava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 40
    .line 41
    .line 42
    :goto_0
    iget-object v0, v0, Le38;->c:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Li72;

    .line 51
    .line 52
    if-nez v0, :cond_0

    .line 53
    .line 54
    :goto_1
    move-object v0, v2

    .line 55
    goto :goto_2

    .line 56
    :cond_0
    invoke-virtual {v0}, Li72;->b()Lka;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    if-nez v0, :cond_1

    .line 61
    .line 62
    new-array v0, v5, [Ljava/lang/Object;

    .line 63
    .line 64
    invoke-static {}, Lj15;->e()Lj15;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    const/4 v5, 0x5

    .line 69
    const-string v6, "Failed to create custom tabs session through custom tabs client"

    .line 70
    .line 71
    invoke-virtual {v4, v5, v2, v6, v0}, Lj15;->f(ILjava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_1
    :goto_2
    invoke-direct {v3, v0}, Lh72;-><init>(Lka;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3}, Lh72;->a()Lix0;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    iget-boolean v3, p0, Lk90;->a:Z

    .line 83
    .line 84
    if-nez v3, :cond_6

    .line 85
    .line 86
    iget-object v1, p0, Lk90;->e:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast v1, Law0;

    .line 89
    .line 90
    if-eqz v1, :cond_5

    .line 91
    .line 92
    iget-object v3, v1, Law0;->d:Ljava/lang/Boolean;

    .line 93
    .line 94
    iget-object v4, p1, Le90;->a:Ll90;

    .line 95
    .line 96
    iget-object v4, v4, Ll90;->b:Ljava/lang/Object;

    .line 97
    .line 98
    check-cast v4, Landroid/net/Uri;

    .line 99
    .line 100
    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    iget-object v5, p1, Le90;->h:Landroid/net/Uri;

    .line 105
    .line 106
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    const-string v6, "redirect_uri"

    .line 111
    .line 112
    invoke-virtual {v4, v6, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    const-string v5, "client_id"

    .line 117
    .line 118
    iget-object v6, p1, Le90;->b:Ljava/lang/String;

    .line 119
    .line 120
    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    const-string v5, "response_type"

    .line 125
    .line 126
    iget-object v6, p1, Le90;->g:Ljava/lang/String;

    .line 127
    .line 128
    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    const-string v5, "display"

    .line 133
    .line 134
    iget-object v6, p1, Le90;->c:Ljava/lang/String;

    .line 135
    .line 136
    invoke-static {v4, v5, v6}, Lpe4;->c(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    const-string v5, "login_hint"

    .line 140
    .line 141
    iget-object v6, p1, Le90;->d:Ljava/lang/String;

    .line 142
    .line 143
    invoke-static {v4, v5, v6}, Lpe4;->c(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    const-string v5, "prompt"

    .line 147
    .line 148
    iget-object v6, p1, Le90;->e:Ljava/lang/String;

    .line 149
    .line 150
    invoke-static {v4, v5, v6}, Lpe4;->c(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    const-string v5, "ui_locales"

    .line 154
    .line 155
    iget-object v6, p1, Le90;->f:Ljava/lang/String;

    .line 156
    .line 157
    invoke-static {v4, v5, v6}, Lpe4;->c(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    const-string v5, "state"

    .line 161
    .line 162
    iget-object v6, p1, Le90;->j:Ljava/lang/String;

    .line 163
    .line 164
    invoke-static {v4, v5, v6}, Lpe4;->c(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    const-string v5, "nonce"

    .line 168
    .line 169
    iget-object v6, p1, Le90;->k:Ljava/lang/String;

    .line 170
    .line 171
    invoke-static {v4, v5, v6}, Lpe4;->c(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 172
    .line 173
    .line 174
    const-string v5, "scope"

    .line 175
    .line 176
    iget-object v6, p1, Le90;->i:Ljava/lang/String;

    .line 177
    .line 178
    invoke-static {v4, v5, v6}, Lpe4;->c(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 179
    .line 180
    .line 181
    const-string v5, "response_mode"

    .line 182
    .line 183
    iget-object v6, p1, Le90;->o:Ljava/lang/String;

    .line 184
    .line 185
    invoke-static {v4, v5, v6}, Lpe4;->c(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 186
    .line 187
    .line 188
    iget-object v5, p1, Le90;->l:Ljava/lang/String;

    .line 189
    .line 190
    if-eqz v5, :cond_2

    .line 191
    .line 192
    const-string v5, "code_challenge"

    .line 193
    .line 194
    iget-object v6, p1, Le90;->m:Ljava/lang/String;

    .line 195
    .line 196
    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 197
    .line 198
    .line 199
    move-result-object v5

    .line 200
    const-string v6, "code_challenge_method"

    .line 201
    .line 202
    iget-object v7, p1, Le90;->n:Ljava/lang/String;

    .line 203
    .line 204
    invoke-virtual {v5, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 205
    .line 206
    .line 207
    :cond_2
    const-string v5, "claims"

    .line 208
    .line 209
    iget-object v6, p1, Le90;->p:Lorg/json/JSONObject;

    .line 210
    .line 211
    invoke-static {v4, v5, v6}, Lpe4;->c(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 212
    .line 213
    .line 214
    const-string v5, "claims_locales"

    .line 215
    .line 216
    iget-object v6, p1, Le90;->q:Ljava/lang/String;

    .line 217
    .line 218
    invoke-static {v4, v5, v6}, Lpe4;->c(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 219
    .line 220
    .line 221
    iget-object v5, p1, Le90;->r:Ljava/util/Map;

    .line 222
    .line 223
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 224
    .line 225
    .line 226
    move-result-object v5

    .line 227
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 228
    .line 229
    .line 230
    move-result-object v5

    .line 231
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 232
    .line 233
    .line 234
    move-result v6

    .line 235
    if-eqz v6, :cond_3

    .line 236
    .line 237
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v6

    .line 241
    check-cast v6, Ljava/util/Map$Entry;

    .line 242
    .line 243
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v7

    .line 247
    check-cast v7, Ljava/lang/String;

    .line 248
    .line 249
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v6

    .line 253
    check-cast v6, Ljava/lang/String;

    .line 254
    .line 255
    invoke-virtual {v4, v7, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 256
    .line 257
    .line 258
    goto :goto_3

    .line 259
    :cond_3
    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 260
    .line 261
    .line 262
    move-result-object v4

    .line 263
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 264
    .line 265
    .line 266
    move-result v5

    .line 267
    if-eqz v5, :cond_4

    .line 268
    .line 269
    iget-object v0, v0, Lix0;->b:Ljava/lang/Object;

    .line 270
    .line 271
    check-cast v0, Landroid/content/Intent;

    .line 272
    .line 273
    goto :goto_4

    .line 274
    :cond_4
    new-instance v0, Landroid/content/Intent;

    .line 275
    .line 276
    const-string v5, "android.intent.action.VIEW"

    .line 277
    .line 278
    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    :goto_4
    iget-object v1, v1, Law0;->a:Ljava/lang/String;

    .line 282
    .line 283
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 284
    .line 285
    .line 286
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v1

    .line 293
    invoke-virtual {v3}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v3

    .line 297
    filled-new-array {v1, v3}, [Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object v1

    .line 301
    const-string v3, "Using %s as browser for auth, custom tab = %s"

    .line 302
    .line 303
    invoke-static {v3, v1}, Lj15;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 304
    .line 305
    .line 306
    iget-object p0, p0, Lk90;->b:Ljava/lang/Object;

    .line 307
    .line 308
    check-cast p0, Landroid/content/Context;

    .line 309
    .line 310
    sget v1, Lnet/openid/appauth/AuthorizationManagementActivity;->f:I

    .line 311
    .line 312
    new-instance v1, Landroid/content/Intent;

    .line 313
    .line 314
    const-class v3, Lnet/openid/appauth/AuthorizationManagementActivity;

    .line 315
    .line 316
    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 317
    .line 318
    .line 319
    const-string p0, "authIntent"

    .line 320
    .line 321
    invoke-virtual {v1, p0, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 322
    .line 323
    .line 324
    const-string p0, "authRequest"

    .line 325
    .line 326
    invoke-virtual {p1}, Le90;->a()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object p1

    .line 330
    invoke-virtual {v1, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 331
    .line 332
    .line 333
    const-string p0, "authRequestType"

    .line 334
    .line 335
    const-string p1, "authorization"

    .line 336
    .line 337
    invoke-virtual {v1, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 338
    .line 339
    .line 340
    const-string p0, "completeIntent"

    .line 341
    .line 342
    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 343
    .line 344
    .line 345
    const-string p0, "cancelIntent"

    .line 346
    .line 347
    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 348
    .line 349
    .line 350
    return-object v1

    .line 351
    :cond_5
    new-instance p0, Landroid/content/ActivityNotFoundException;

    .line 352
    .line 353
    invoke-direct {p0}, Landroid/content/ActivityNotFoundException;-><init>()V

    .line 354
    .line 355
    .line 356
    throw p0

    .line 357
    :cond_6
    invoke-static {v1}, Ll0;->e(Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    return-object v2

    .line 361
    :cond_7
    invoke-static {v1}, Ll0;->e(Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    return-object v2
.end method

.method public c(Ll58;Lt91;Lj90;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lk90;->a:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p1, Ll58;->a:Ll90;

    .line 6
    .line 7
    iget-object v0, v0, Ll90;->c:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Landroid/net/Uri;

    .line 10
    .line 11
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "Initiating code exchange request to %s"

    .line 16
    .line 17
    invoke-static {v1, v0}, Lj15;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    new-instance v0, Li90;

    .line 21
    .line 22
    iget-object p0, p0, Lk90;->c:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p0, Lwj;

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    iget-boolean p0, p0, Lwj;->b:Z

    .line 30
    .line 31
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-direct {v0, p1, p2, p3, p0}, Li90;-><init>(Ll58;Lt91;Lj90;Ljava/lang/Boolean;)V

    .line 36
    .line 37
    .line 38
    const/4 p0, 0x0

    .line 39
    new-array p0, p0, [Ljava/lang/Void;

    .line 40
    .line 41
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_0
    const-string p0, "Service has been disposed and rendered inoperable"

    .line 46
    .line 47
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public zza()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lk90;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v1, Ljava/lang/String;

    .line 9
    .line 10
    const-string v2, "email"

    .line 11
    .line 12
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lk90;->c:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v1, Ljava/lang/String;

    .line 18
    .line 19
    const-string v2, "password"

    .line 20
    .line 21
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    .line 23
    .line 24
    const-string v1, "returnSecureToken"

    .line 25
    .line 26
    iget-boolean v2, p0, Lk90;->a:Z

    .line 27
    .line 28
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lk90;->d:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v1, Ljava/lang/String;

    .line 34
    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    const-string v2, "tenantId"

    .line 38
    .line 39
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
    .line 41
    .line 42
    :cond_0
    iget-object p0, p0, Lk90;->e:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast p0, Ljava/lang/String;

    .line 45
    .line 46
    if-eqz p0, :cond_1

    .line 47
    .line 48
    const-string v1, "captchaResponse"

    .line 49
    .line 50
    invoke-static {v0, v1, p0}, Lyc9;->E0(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    const-string p0, "clientType"

    .line 55
    .line 56
    const-string v1, "CLIENT_TYPE_ANDROID"

    .line 57
    .line 58
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    .line 60
    .line 61
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    return-object p0
.end method
