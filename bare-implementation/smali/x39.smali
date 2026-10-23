.class public final Lx39;
.super Landroid/content/BroadcastReceiver;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public a:Z

.field public final b:Z

.field public final synthetic c:Lc49;


# direct methods
.method public constructor <init>(Lc49;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lx39;->c:Lc49;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-boolean p2, p0, Lx39;->b:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;Landroid/content/IntentFilter;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lx39;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 9
    .line 10
    const/16 v1, 0x21

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    if-lt v0, v1, :cond_2

    .line 14
    .line 15
    iget-boolean v0, p0, Lx39;->b:Z

    .line 16
    .line 17
    if-eq v2, v0, :cond_1

    .line 18
    .line 19
    const/4 v0, 0x4

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 v0, 0x2

    .line 22
    :goto_0
    invoke-virtual {p1, p0, p2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    goto :goto_1

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    goto :goto_2

    .line 28
    :cond_2
    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    :goto_1
    iput-boolean v2, p0, Lx39;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    .line 33
    monitor-exit p0

    .line 34
    return-void

    .line 35
    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 36
    throw p1
.end method

.method public final b(Landroid/os/Bundle;Lyq0;ILwo9;JZ)V
    .locals 2

    .line 1
    const-string v0, "FAILURE_LOGGING_PAYLOAD"

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    .line 4
    .line 5
    .line 6
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object p0, p0, Lx39;->c:Lc49;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    :try_start_1
    iget-object p0, p0, Lc49;->c:Lbe9;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {p1}, Ldo9;->t([B)Ldo9;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p0, Ll39;

    .line 22
    .line 23
    invoke-virtual {p0, p1, p5, p6, p7}, Ll39;->r(Ldo9;JZ)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    iget-object p0, p0, Lc49;->c:Lbe9;

    .line 28
    .line 29
    const/16 p1, 0x17

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    invoke-static {p1, p3, p2, v0, p4}, Lzd9;->b(IILyq0;Ljava/lang/String;Lwo9;)Ldo9;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p0, Ll39;

    .line 37
    .line 38
    invoke-virtual {p0, p1, p5, p6, p7}, Ll39;->r(Ldo9;JZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :catchall_0
    const-string p0, "BillingBroadcastManager"

    .line 43
    .line 44
    const-string p1, "Failed parsing Api failure."

    .line 45
    .line 46
    invoke-static {p0, p1}, Lta9;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18

    .line 1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const v2, -0x58756162

    .line 10
    .line 11
    .line 12
    sget-object v3, Lwo9;->d:Lwo9;

    .line 13
    .line 14
    sget-object v4, Lwo9;->c:Lwo9;

    .line 15
    .line 16
    sget-object v5, Lwo9;->e:Lwo9;

    .line 17
    .line 18
    if-eq v1, v2, :cond_2

    .line 19
    .line 20
    const v2, -0x141f9074

    .line 21
    .line 22
    .line 23
    if-eq v1, v2, :cond_1

    .line 24
    .line 25
    const v2, 0x14937179

    .line 26
    .line 27
    .line 28
    if-eq v1, v2, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const-string v1, "com.android.vending.billing.ALTERNATIVE_BILLING"

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_3

    .line 38
    .line 39
    move-object v10, v5

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const-string v1, "com.android.vending.billing.LOCAL_BROADCAST_PURCHASES_UPDATED"

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    move-object v10, v3

    .line 50
    goto :goto_1

    .line 51
    :cond_2
    const-string v1, "com.android.vending.billing.PURCHASES_UPDATED"

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_3

    .line 58
    .line 59
    move-object v10, v4

    .line 60
    goto :goto_1

    .line 61
    :cond_3
    :goto_0
    sget-object v0, Lwo9;->b:Lwo9;

    .line 62
    .line 63
    move-object v10, v0

    .line 64
    :goto_1
    invoke-virtual {v10, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    const/4 v1, 0x2

    .line 69
    if-nez v0, :cond_4

    .line 70
    .line 71
    invoke-virtual {v10, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_5

    .line 76
    .line 77
    :cond_4
    move v9, v1

    .line 78
    goto :goto_3

    .line 79
    :cond_5
    invoke-virtual {v10, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_6

    .line 84
    .line 85
    const/16 v0, 0x20

    .line 86
    .line 87
    :goto_2
    move v9, v0

    .line 88
    goto :goto_3

    .line 89
    :cond_6
    const/4 v0, 0x1

    .line 90
    goto :goto_2

    .line 91
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 92
    .line 93
    .line 94
    move-result-object v7

    .line 95
    const/4 v0, 0x0

    .line 96
    move-object/from16 v6, p0

    .line 97
    .line 98
    iget-object v2, v6, Lx39;->c:Lc49;

    .line 99
    .line 100
    const-string v14, "BillingBroadcastManager"

    .line 101
    .line 102
    if-nez v7, :cond_7

    .line 103
    .line 104
    const-string v1, "Bundle is null."

    .line 105
    .line 106
    invoke-static {v14, v1}, Lta9;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    iget-object v1, v2, Lc49;->c:Lbe9;

    .line 110
    .line 111
    sget-object v3, Lle9;->h:Lyq0;

    .line 112
    .line 113
    const/16 v4, 0xb

    .line 114
    .line 115
    invoke-static {v4, v9, v3, v0, v10}, Lzd9;->b(IILyq0;Ljava/lang/String;Lwo9;)Ldo9;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    check-cast v1, Ll39;

    .line 120
    .line 121
    invoke-virtual {v1, v4}, Ll39;->p(Ldo9;)V

    .line 122
    .line 123
    .line 124
    iget-object v1, v2, Lc49;->b:Lc6;

    .line 125
    .line 126
    if-eqz v1, :cond_f

    .line 127
    .line 128
    invoke-static {v3, v0}, Lc6;->o(Lyq0;Ljava/util/List;)V

    .line 129
    .line 130
    .line 131
    return-void

    .line 132
    :cond_7
    const/4 v8, 0x0

    .line 133
    if-ne v9, v1, :cond_b

    .line 134
    .line 135
    sget v1, Lta9;->a:I

    .line 136
    .line 137
    invoke-static {}, Lyq0;->a()Lxq0;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 142
    .line 143
    .line 144
    move-result-object v11

    .line 145
    invoke-static {v11, v14}, Lta9;->a(Landroid/os/Bundle;Ljava/lang/String;)I

    .line 146
    .line 147
    .line 148
    move-result v11

    .line 149
    iput v11, v1, Lxq0;->a:I

    .line 150
    .line 151
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 152
    .line 153
    .line 154
    move-result-object v11

    .line 155
    if-nez v11, :cond_8

    .line 156
    .line 157
    const-string v11, "Unexpected null bundle received!"

    .line 158
    .line 159
    invoke-static {v14, v11}, Lta9;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    :goto_4
    move v11, v8

    .line 163
    goto :goto_5

    .line 164
    :cond_8
    const-string v12, "SUB_RESPONSE_CODE"

    .line 165
    .line 166
    invoke-virtual {v11, v12}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v11

    .line 170
    if-nez v11, :cond_9

    .line 171
    .line 172
    const-string v11, "getOnPurchasesUpdatedSubResponseCodeFromBundle() got null response code, assuming OK"

    .line 173
    .line 174
    invoke-static {v14, v11}, Lta9;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    goto :goto_4

    .line 178
    :cond_9
    instance-of v12, v11, Ljava/lang/Integer;

    .line 179
    .line 180
    if-eqz v12, :cond_a

    .line 181
    .line 182
    check-cast v11, Ljava/lang/Integer;

    .line 183
    .line 184
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 185
    .line 186
    .line 187
    move-result v11

    .line 188
    goto :goto_5

    .line 189
    :cond_a
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 190
    .line 191
    .line 192
    move-result-object v11

    .line 193
    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v11

    .line 197
    const-string v12, "Unexpected type for bundle sub response code: "

    .line 198
    .line 199
    invoke-virtual {v12, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v11

    .line 203
    invoke-static {v14, v11}, Lta9;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    goto :goto_4

    .line 207
    :goto_5
    iput v11, v1, Lxq0;->b:I

    .line 208
    .line 209
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 210
    .line 211
    .line 212
    move-result-object v11

    .line 213
    invoke-static {v11, v14}, Lta9;->f(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v11

    .line 217
    iput-object v11, v1, Lxq0;->c:Ljava/lang/String;

    .line 218
    .line 219
    invoke-virtual {v1}, Lxq0;->a()Lyq0;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    goto :goto_6

    .line 224
    :cond_b
    move-object/from16 v1, p2

    .line 225
    .line 226
    invoke-static {v1, v14}, Lta9;->e(Landroid/content/Intent;Ljava/lang/String;)Lyq0;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    :goto_6
    const-string v11, "billingClientTransactionId"

    .line 231
    .line 232
    const-wide/16 v12, 0x0

    .line 233
    .line 234
    invoke-virtual {v7, v11, v12, v13}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    .line 235
    .line 236
    .line 237
    move-result-wide v15

    .line 238
    const-string v11, "wasServiceAutoReconnected"

    .line 239
    .line 240
    invoke-virtual {v7, v11, v8}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 241
    .line 242
    .line 243
    move-result v11

    .line 244
    invoke-virtual {v10, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    move-result v4

    .line 248
    if-nez v4, :cond_c

    .line 249
    .line 250
    invoke-virtual {v10, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    move-result v3

    .line 254
    if-eqz v3, :cond_d

    .line 255
    .line 256
    :cond_c
    move v5, v11

    .line 257
    move-wide v3, v15

    .line 258
    goto :goto_7

    .line 259
    :cond_d
    invoke-virtual {v10, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    move-result v3

    .line 263
    if-eqz v3, :cond_f

    .line 264
    .line 265
    iget v3, v1, Lyq0;->a:I

    .line 266
    .line 267
    if-eqz v3, :cond_e

    .line 268
    .line 269
    move-object v8, v1

    .line 270
    move v13, v11

    .line 271
    move-wide v11, v15

    .line 272
    invoke-virtual/range {v6 .. v13}, Lx39;->b(Landroid/os/Bundle;Lyq0;ILwo9;JZ)V

    .line 273
    .line 274
    .line 275
    iget-object v0, v2, Lc49;->b:Lc6;

    .line 276
    .line 277
    sget-object v2, Lma9;->b:Lga9;

    .line 278
    .line 279
    sget-object v2, Lmb9;->e:Lmb9;

    .line 280
    .line 281
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 282
    .line 283
    .line 284
    invoke-static {v1, v2}, Lc6;->o(Lyq0;Ljava/util/List;)V

    .line 285
    .line 286
    .line 287
    return-void

    .line 288
    :cond_e
    move v5, v11

    .line 289
    move-wide v3, v15

    .line 290
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 291
    .line 292
    .line 293
    const-string v1, "No valid alternative billing listener is registered."

    .line 294
    .line 295
    invoke-static {v14, v1}, Lta9;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    iget-object v1, v2, Lc49;->c:Lbe9;

    .line 299
    .line 300
    sget-object v6, Lle9;->h:Lyq0;

    .line 301
    .line 302
    const/16 v7, 0x8d

    .line 303
    .line 304
    invoke-static {v7, v9, v6, v0, v10}, Lzd9;->b(IILyq0;Ljava/lang/String;Lwo9;)Ldo9;

    .line 305
    .line 306
    .line 307
    move-result-object v0

    .line 308
    check-cast v1, Ll39;

    .line 309
    .line 310
    invoke-virtual {v1, v0, v3, v4, v5}, Ll39;->r(Ldo9;JZ)V

    .line 311
    .line 312
    .line 313
    iget-object v0, v2, Lc49;->b:Lc6;

    .line 314
    .line 315
    sget-object v1, Lma9;->b:Lga9;

    .line 316
    .line 317
    sget-object v1, Lmb9;->e:Lmb9;

    .line 318
    .line 319
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 320
    .line 321
    .line 322
    invoke-static {v6, v1}, Lc6;->o(Lyq0;Ljava/util/List;)V

    .line 323
    .line 324
    .line 325
    :cond_f
    return-void

    .line 326
    :goto_7
    const-string v6, "INAPP_PURCHASE_DATA_LIST"

    .line 327
    .line 328
    invoke-virtual {v7, v6}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 329
    .line 330
    .line 331
    move-result-object v6

    .line 332
    const-string v11, "INAPP_DATA_SIGNATURE_LIST"

    .line 333
    .line 334
    invoke-virtual {v7, v11}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 335
    .line 336
    .line 337
    move-result-object v11

    .line 338
    new-instance v14, Ljava/util/ArrayList;

    .line 339
    .line 340
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 341
    .line 342
    .line 343
    const-string v15, "BillingHelper"

    .line 344
    .line 345
    if-eqz v6, :cond_10

    .line 346
    .line 347
    if-nez v11, :cond_11

    .line 348
    .line 349
    :cond_10
    move-wide/from16 v16, v12

    .line 350
    .line 351
    goto :goto_9

    .line 352
    :cond_11
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 353
    .line 354
    .line 355
    move-result v0

    .line 356
    new-instance v8, Ljava/lang/StringBuilder;

    .line 357
    .line 358
    move-wide/from16 v16, v12

    .line 359
    .line 360
    const-string v12, "Found purchase list of "

    .line 361
    .line 362
    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    const-string v0, " items"

    .line 369
    .line 370
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    .line 372
    .line 373
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v0

    .line 377
    invoke-static {v15, v0}, Lta9;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    const/4 v8, 0x0

    .line 381
    :goto_8
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 382
    .line 383
    .line 384
    move-result v0

    .line 385
    if-ge v8, v0, :cond_14

    .line 386
    .line 387
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 388
    .line 389
    .line 390
    move-result v0

    .line 391
    if-ge v8, v0, :cond_14

    .line 392
    .line 393
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    move-result-object v0

    .line 397
    check-cast v0, Ljava/lang/String;

    .line 398
    .line 399
    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 400
    .line 401
    .line 402
    move-result-object v12

    .line 403
    check-cast v12, Ljava/lang/String;

    .line 404
    .line 405
    invoke-static {v0, v12}, Lta9;->j(Ljava/lang/String;Ljava/lang/String;)Lcom/android/billingclient/api/Purchase;

    .line 406
    .line 407
    .line 408
    move-result-object v0

    .line 409
    if-eqz v0, :cond_12

    .line 410
    .line 411
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 412
    .line 413
    .line 414
    :cond_12
    add-int/lit8 v8, v8, 0x1

    .line 415
    .line 416
    goto :goto_8

    .line 417
    :goto_9
    const-string v6, "INAPP_PURCHASE_DATA"

    .line 418
    .line 419
    invoke-virtual {v7, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object v6

    .line 423
    const-string v8, "INAPP_DATA_SIGNATURE"

    .line 424
    .line 425
    invoke-virtual {v7, v8}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object v8

    .line 429
    invoke-static {v6, v8}, Lta9;->j(Ljava/lang/String;Ljava/lang/String;)Lcom/android/billingclient/api/Purchase;

    .line 430
    .line 431
    .line 432
    move-result-object v6

    .line 433
    if-nez v6, :cond_13

    .line 434
    .line 435
    const-string v6, "Couldn\'t find single purchase data as well."

    .line 436
    .line 437
    invoke-static {v15, v6}, Lta9;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    .line 439
    .line 440
    move-object v14, v0

    .line 441
    goto :goto_a

    .line 442
    :cond_13
    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 443
    .line 444
    .line 445
    :cond_14
    :goto_a
    iget v0, v1, Lyq0;->a:I

    .line 446
    .line 447
    if-nez v0, :cond_16

    .line 448
    .line 449
    iget-object v0, v2, Lc49;->c:Lbe9;

    .line 450
    .line 451
    invoke-static {v9, v10}, Lzd9;->c(ILwo9;)Lno9;

    .line 452
    .line 453
    .line 454
    move-result-object v6

    .line 455
    check-cast v0, Ll39;

    .line 456
    .line 457
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 458
    .line 459
    .line 460
    :try_start_0
    invoke-virtual {v6}, Lxi9;->l()Lri9;

    .line 461
    .line 462
    .line 463
    move-result-object v7

    .line 464
    check-cast v7, Lho9;

    .line 465
    .line 466
    invoke-virtual {v6}, Lno9;->r()Lvp9;

    .line 467
    .line 468
    .line 469
    move-result-object v6

    .line 470
    invoke-virtual {v6}, Lxi9;->l()Lri9;

    .line 471
    .line 472
    .line 473
    move-result-object v6

    .line 474
    check-cast v6, Lop9;

    .line 475
    .line 476
    invoke-virtual {v6}, Lri9;->b()V

    .line 477
    .line 478
    .line 479
    iget-object v8, v6, Lri9;->b:Lxi9;

    .line 480
    .line 481
    check-cast v8, Lvp9;

    .line 482
    .line 483
    invoke-static {v8, v5}, Lvp9;->q(Lvp9;Z)V

    .line 484
    .line 485
    .line 486
    invoke-virtual {v7}, Lri9;->b()V

    .line 487
    .line 488
    .line 489
    iget-object v5, v7, Lri9;->b:Lxi9;

    .line 490
    .line 491
    check-cast v5, Lno9;

    .line 492
    .line 493
    invoke-virtual {v6}, Lri9;->a()Lxi9;

    .line 494
    .line 495
    .line 496
    move-result-object v6

    .line 497
    check-cast v6, Lvp9;

    .line 498
    .line 499
    invoke-static {v5, v6}, Lno9;->t(Lno9;Lvp9;)V

    .line 500
    .line 501
    .line 502
    invoke-virtual {v7}, Lri9;->a()Lxi9;

    .line 503
    .line 504
    .line 505
    move-result-object v5

    .line 506
    check-cast v5, Lno9;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 507
    .line 508
    cmp-long v6, v3, v16

    .line 509
    .line 510
    iget-object v7, v0, Ll39;->b:Ljava/lang/Object;

    .line 511
    .line 512
    check-cast v7, Lhp9;

    .line 513
    .line 514
    if-nez v6, :cond_15

    .line 515
    .line 516
    goto :goto_b

    .line 517
    :cond_15
    :try_start_1
    invoke-virtual {v7}, Lxi9;->l()Lri9;

    .line 518
    .line 519
    .line 520
    move-result-object v6

    .line 521
    check-cast v6, Lfp9;

    .line 522
    .line 523
    invoke-virtual {v6}, Lri9;->b()V

    .line 524
    .line 525
    .line 526
    iget-object v7, v6, Lri9;->b:Lxi9;

    .line 527
    .line 528
    check-cast v7, Lhp9;

    .line 529
    .line 530
    invoke-static {v7, v3, v4}, Lhp9;->E(Lhp9;J)V

    .line 531
    .line 532
    .line 533
    invoke-virtual {v6}, Lri9;->a()Lxi9;

    .line 534
    .line 535
    .line 536
    move-result-object v3

    .line 537
    move-object v7, v3

    .line 538
    check-cast v7, Lhp9;

    .line 539
    .line 540
    :goto_b
    invoke-virtual {v0, v5, v7}, Ll39;->x(Lno9;Lhp9;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 541
    .line 542
    .line 543
    goto :goto_c

    .line 544
    :catchall_0
    move-exception v0

    .line 545
    const-string v3, "BillingLogger"

    .line 546
    .line 547
    const-string v4, "Unable to log."

    .line 548
    .line 549
    invoke-static {v3, v4, v0}, Lta9;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 550
    .line 551
    .line 552
    :goto_c
    move-object v8, v1

    .line 553
    goto :goto_d

    .line 554
    :cond_16
    move-object/from16 v6, p0

    .line 555
    .line 556
    move-object v8, v1

    .line 557
    move-wide v11, v3

    .line 558
    move v13, v5

    .line 559
    invoke-virtual/range {v6 .. v13}, Lx39;->b(Landroid/os/Bundle;Lyq0;ILwo9;JZ)V

    .line 560
    .line 561
    .line 562
    :goto_d
    iget-object v0, v2, Lc49;->b:Lc6;

    .line 563
    .line 564
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 565
    .line 566
    .line 567
    invoke-static {v8, v14}, Lc6;->o(Lyq0;Ljava/util/List;)V

    .line 568
    .line 569
    .line 570
    return-void
.end method
