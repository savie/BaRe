.class public final Lwo5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/ArrayList;

.field public final c:Ljava/util/ArrayList;

.field public final d:Ljava/util/ArrayList;

.field public e:Ljava/lang/CharSequence;

.field public f:Ljava/lang/CharSequence;

.field public g:Landroid/app/PendingIntent;

.field public h:Landroidx/core/graphics/drawable/IconCompat;

.field public i:I

.field public final j:Z

.field public k:Lc00;

.field public l:Ljava/lang/CharSequence;

.field public m:I

.field public n:I

.field public o:Z

.field public p:Z

.field public q:Landroid/os/Bundle;

.field public r:I

.field public s:Ljava/lang/String;

.field public final t:Z

.field public final u:Landroid/app/Notification;

.field public final v:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lwo5;->b:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lwo5;->c:Ljava/util/ArrayList;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lwo5;->d:Ljava/util/ArrayList;

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lwo5;->j:Z

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    iput-boolean v1, p0, Lwo5;->p:Z

    .line 30
    .line 31
    iput v1, p0, Lwo5;->r:I

    .line 32
    .line 33
    new-instance v2, Landroid/app/Notification;

    .line 34
    .line 35
    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v2, p0, Lwo5;->u:Landroid/app/Notification;

    .line 39
    .line 40
    iput-object p1, p0, Lwo5;->a:Landroid/content/Context;

    .line 41
    .line 42
    iput-object p2, p0, Lwo5;->s:Ljava/lang/String;

    .line 43
    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 45
    .line 46
    .line 47
    move-result-wide p1

    .line 48
    iput-wide p1, v2, Landroid/app/Notification;->when:J

    .line 49
    .line 50
    const/4 p1, -0x1

    .line 51
    iput p1, v2, Landroid/app/Notification;->audioStreamType:I

    .line 52
    .line 53
    iput v1, p0, Lwo5;->i:I

    .line 54
    .line 55
    new-instance p1, Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .line 59
    .line 60
    iput-object p1, p0, Lwo5;->v:Ljava/util/ArrayList;

    .line 61
    .line 62
    iput-boolean v0, p0, Lwo5;->t:Z

    .line 63
    .line 64
    return-void
.end method

.method public static b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-object p0

    .line 4
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/16 v1, 0x1400

    .line 9
    .line 10
    if-le v0, v1, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    :cond_1
    return-object p0
.end method


# virtual methods
.method public final a()Landroid/app/Notification;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Landroid/os/Bundle;

    .line 4
    .line 5
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 6
    .line 7
    .line 8
    iget-object v2, v0, Lwo5;->s:Ljava/lang/String;

    .line 9
    .line 10
    new-instance v3, Landroid/app/Notification$Builder;

    .line 11
    .line 12
    iget-object v4, v0, Lwo5;->a:Landroid/content/Context;

    .line 13
    .line 14
    invoke-direct {v3, v4, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v2, v0, Lwo5;->u:Landroid/app/Notification;

    .line 18
    .line 19
    iget-wide v5, v2, Landroid/app/Notification;->when:J

    .line 20
    .line 21
    invoke-virtual {v3, v5, v6}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    iget v6, v2, Landroid/app/Notification;->icon:I

    .line 26
    .line 27
    iget v7, v2, Landroid/app/Notification;->iconLevel:I

    .line 28
    .line 29
    invoke-virtual {v5, v6, v7}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    iget-object v6, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 34
    .line 35
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    iget-object v6, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 40
    .line 41
    const/4 v7, 0x0

    .line 42
    invoke-virtual {v5, v6, v7}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    iget-object v6, v2, Landroid/app/Notification;->vibrate:[J

    .line 47
    .line 48
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    iget v6, v2, Landroid/app/Notification;->ledARGB:I

    .line 53
    .line 54
    iget v8, v2, Landroid/app/Notification;->ledOnMS:I

    .line 55
    .line 56
    iget v9, v2, Landroid/app/Notification;->ledOffMS:I

    .line 57
    .line 58
    invoke-virtual {v5, v6, v8, v9}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    iget v6, v2, Landroid/app/Notification;->flags:I

    .line 63
    .line 64
    and-int/lit8 v6, v6, 0x2

    .line 65
    .line 66
    const/4 v8, 0x1

    .line 67
    const/4 v9, 0x0

    .line 68
    if-eqz v6, :cond_0

    .line 69
    .line 70
    move v6, v8

    .line 71
    goto :goto_0

    .line 72
    :cond_0
    move v6, v9

    .line 73
    :goto_0
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    iget v6, v2, Landroid/app/Notification;->flags:I

    .line 78
    .line 79
    and-int/lit8 v6, v6, 0x8

    .line 80
    .line 81
    if-eqz v6, :cond_1

    .line 82
    .line 83
    move v6, v8

    .line 84
    goto :goto_1

    .line 85
    :cond_1
    move v6, v9

    .line 86
    :goto_1
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    iget v6, v2, Landroid/app/Notification;->flags:I

    .line 91
    .line 92
    and-int/lit8 v6, v6, 0x10

    .line 93
    .line 94
    if-eqz v6, :cond_2

    .line 95
    .line 96
    move v6, v8

    .line 97
    goto :goto_2

    .line 98
    :cond_2
    move v6, v9

    .line 99
    :goto_2
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    iget v6, v2, Landroid/app/Notification;->defaults:I

    .line 104
    .line 105
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    iget-object v6, v0, Lwo5;->e:Ljava/lang/CharSequence;

    .line 110
    .line 111
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    iget-object v6, v0, Lwo5;->f:Ljava/lang/CharSequence;

    .line 116
    .line 117
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    invoke-virtual {v5, v7}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    iget-object v6, v0, Lwo5;->g:Landroid/app/PendingIntent;

    .line 126
    .line 127
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    iget-object v6, v2, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 132
    .line 133
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    iget v6, v2, Landroid/app/Notification;->flags:I

    .line 138
    .line 139
    and-int/lit16 v6, v6, 0x80

    .line 140
    .line 141
    if-eqz v6, :cond_3

    .line 142
    .line 143
    goto :goto_3

    .line 144
    :cond_3
    move v8, v9

    .line 145
    :goto_3
    invoke-virtual {v5, v7, v8}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    .line 146
    .line 147
    .line 148
    move-result-object v5

    .line 149
    invoke-virtual {v5, v9}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    .line 150
    .line 151
    .line 152
    move-result-object v5

    .line 153
    iget v6, v0, Lwo5;->m:I

    .line 154
    .line 155
    iget v8, v0, Lwo5;->n:I

    .line 156
    .line 157
    iget-boolean v10, v0, Lwo5;->o:Z

    .line 158
    .line 159
    invoke-virtual {v5, v6, v8, v10}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 160
    .line 161
    .line 162
    iget-object v5, v0, Lwo5;->h:Landroidx/core/graphics/drawable/IconCompat;

    .line 163
    .line 164
    if-nez v5, :cond_4

    .line 165
    .line 166
    move-object v4, v7

    .line 167
    goto :goto_4

    .line 168
    :cond_4
    invoke-virtual {v5, v4}, Landroidx/core/graphics/drawable/IconCompat;->d(Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    :goto_4
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    .line 173
    .line 174
    .line 175
    iget-object v4, v0, Lwo5;->l:Ljava/lang/CharSequence;

    .line 176
    .line 177
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 178
    .line 179
    .line 180
    move-result-object v4

    .line 181
    invoke-virtual {v4, v9}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    .line 182
    .line 183
    .line 184
    move-result-object v4

    .line 185
    iget v5, v0, Lwo5;->i:I

    .line 186
    .line 187
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 188
    .line 189
    .line 190
    iget-object v4, v0, Lwo5;->b:Ljava/util/ArrayList;

    .line 191
    .line 192
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 193
    .line 194
    .line 195
    move-result-object v4

    .line 196
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 197
    .line 198
    .line 199
    move-result v5

    .line 200
    const/16 v6, 0x1d

    .line 201
    .line 202
    const-string v8, "android.support.allowGeneratedReplies"

    .line 203
    .line 204
    const/16 v10, 0x1c

    .line 205
    .line 206
    if-eqz v5, :cond_b

    .line 207
    .line 208
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v5

    .line 212
    check-cast v5, Lvo5;

    .line 213
    .line 214
    iget-object v11, v5, Lvo5;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 215
    .line 216
    if-nez v11, :cond_5

    .line 217
    .line 218
    iget v11, v5, Lvo5;->e:I

    .line 219
    .line 220
    if-eqz v11, :cond_5

    .line 221
    .line 222
    invoke-static {v11}, Landroidx/core/graphics/drawable/IconCompat;->a(I)Landroidx/core/graphics/drawable/IconCompat;

    .line 223
    .line 224
    .line 225
    move-result-object v11

    .line 226
    iput-object v11, v5, Lvo5;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 227
    .line 228
    :cond_5
    iget-object v11, v5, Lvo5;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 229
    .line 230
    iget-boolean v12, v5, Lvo5;->c:Z

    .line 231
    .line 232
    iget-object v13, v5, Lvo5;->a:Landroid/os/Bundle;

    .line 233
    .line 234
    new-instance v14, Landroid/app/Notification$Action$Builder;

    .line 235
    .line 236
    if-eqz v11, :cond_6

    .line 237
    .line 238
    invoke-virtual {v11, v7}, Landroidx/core/graphics/drawable/IconCompat;->d(Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    .line 239
    .line 240
    .line 241
    move-result-object v11

    .line 242
    goto :goto_6

    .line 243
    :cond_6
    move-object v11, v7

    .line 244
    :goto_6
    iget-object v15, v5, Lvo5;->f:Ljava/lang/CharSequence;

    .line 245
    .line 246
    iget-object v7, v5, Lvo5;->g:Landroid/app/PendingIntent;

    .line 247
    .line 248
    invoke-direct {v14, v11, v15, v7}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 249
    .line 250
    .line 251
    if-eqz v13, :cond_7

    .line 252
    .line 253
    new-instance v7, Landroid/os/Bundle;

    .line 254
    .line 255
    invoke-direct {v7, v13}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 256
    .line 257
    .line 258
    goto :goto_7

    .line 259
    :cond_7
    new-instance v7, Landroid/os/Bundle;

    .line 260
    .line 261
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 262
    .line 263
    .line 264
    :goto_7
    invoke-virtual {v7, v8, v12}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v14, v12}, Landroid/app/Notification$Action$Builder;->setAllowGeneratedReplies(Z)Landroid/app/Notification$Action$Builder;

    .line 268
    .line 269
    .line 270
    const-string v8, "android.support.action.semanticAction"

    .line 271
    .line 272
    invoke-virtual {v7, v8, v9}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 273
    .line 274
    .line 275
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 276
    .line 277
    if-lt v8, v10, :cond_8

    .line 278
    .line 279
    invoke-static {v14}, Lcf;->q(Landroid/app/Notification$Action$Builder;)V

    .line 280
    .line 281
    .line 282
    :cond_8
    if-lt v8, v6, :cond_9

    .line 283
    .line 284
    invoke-static {v14}, Ldu;->l(Landroid/app/Notification$Action$Builder;)V

    .line 285
    .line 286
    .line 287
    :cond_9
    const/16 v6, 0x1f

    .line 288
    .line 289
    if-lt v8, v6, :cond_a

    .line 290
    .line 291
    invoke-static {v14}, Lf76;->c(Landroid/app/Notification$Action$Builder;)V

    .line 292
    .line 293
    .line 294
    :cond_a
    const-string v6, "android.support.action.showsUserInterface"

    .line 295
    .line 296
    iget-boolean v5, v5, Lvo5;->d:Z

    .line 297
    .line 298
    invoke-virtual {v7, v6, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v14, v7}, Landroid/app/Notification$Action$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;

    .line 302
    .line 303
    .line 304
    invoke-virtual {v14}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    .line 305
    .line 306
    .line 307
    move-result-object v5

    .line 308
    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 309
    .line 310
    .line 311
    const/4 v7, 0x0

    .line 312
    goto :goto_5

    .line 313
    :cond_b
    iget-object v4, v0, Lwo5;->q:Landroid/os/Bundle;

    .line 314
    .line 315
    if-eqz v4, :cond_c

    .line 316
    .line 317
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 318
    .line 319
    .line 320
    :cond_c
    iget-boolean v4, v0, Lwo5;->j:Z

    .line 321
    .line 322
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 323
    .line 324
    .line 325
    iget-boolean v4, v0, Lwo5;->p:Z

    .line 326
    .line 327
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    .line 328
    .line 329
    .line 330
    const/4 v4, 0x0

    .line 331
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 332
    .line 333
    .line 334
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 335
    .line 336
    .line 337
    invoke-virtual {v3, v9}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    .line 338
    .line 339
    .line 340
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 341
    .line 342
    .line 343
    iget v5, v0, Lwo5;->r:I

    .line 344
    .line 345
    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 346
    .line 347
    .line 348
    invoke-virtual {v3, v9}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    .line 349
    .line 350
    .line 351
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    .line 352
    .line 353
    .line 354
    iget-object v4, v2, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 355
    .line 356
    iget-object v2, v2, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 357
    .line 358
    invoke-virtual {v3, v4, v2}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/app/Notification$Builder;

    .line 359
    .line 360
    .line 361
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 362
    .line 363
    iget-object v4, v0, Lwo5;->v:Ljava/util/ArrayList;

    .line 364
    .line 365
    iget-object v5, v0, Lwo5;->c:Ljava/util/ArrayList;

    .line 366
    .line 367
    if-ge v2, v10, :cond_11

    .line 368
    .line 369
    if-nez v5, :cond_d

    .line 370
    .line 371
    const/4 v2, 0x0

    .line 372
    goto :goto_8

    .line 373
    :cond_d
    new-instance v2, Ljava/util/ArrayList;

    .line 374
    .line 375
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 376
    .line 377
    .line 378
    move-result v7

    .line 379
    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 380
    .line 381
    .line 382
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 383
    .line 384
    .line 385
    move-result-object v7

    .line 386
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 387
    .line 388
    .line 389
    move-result v11

    .line 390
    if-nez v11, :cond_10

    .line 391
    .line 392
    :goto_8
    if-nez v2, :cond_e

    .line 393
    .line 394
    goto :goto_9

    .line 395
    :cond_e
    if-nez v4, :cond_f

    .line 396
    .line 397
    move-object v4, v2

    .line 398
    goto :goto_9

    .line 399
    :cond_f
    new-instance v7, Lp50;

    .line 400
    .line 401
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 402
    .line 403
    .line 404
    move-result v11

    .line 405
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 406
    .line 407
    .line 408
    move-result v12

    .line 409
    add-int/2addr v12, v11

    .line 410
    invoke-direct {v7, v12}, Lp50;-><init>(I)V

    .line 411
    .line 412
    .line 413
    invoke-virtual {v7, v2}, Lp50;->addAll(Ljava/util/Collection;)Z

    .line 414
    .line 415
    .line 416
    invoke-virtual {v7, v4}, Lp50;->addAll(Ljava/util/Collection;)Z

    .line 417
    .line 418
    .line 419
    new-instance v4, Ljava/util/ArrayList;

    .line 420
    .line 421
    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 422
    .line 423
    .line 424
    goto :goto_9

    .line 425
    :cond_10
    invoke-static {v7}, Leq3;->h(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 426
    .line 427
    .line 428
    move-result-object v0

    .line 429
    throw v0

    .line 430
    :cond_11
    :goto_9
    if-eqz v4, :cond_12

    .line 431
    .line 432
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 433
    .line 434
    .line 435
    move-result v2

    .line 436
    if-nez v2, :cond_12

    .line 437
    .line 438
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 439
    .line 440
    .line 441
    move-result-object v2

    .line 442
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 443
    .line 444
    .line 445
    move-result v4

    .line 446
    if-eqz v4, :cond_12

    .line 447
    .line 448
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 449
    .line 450
    .line 451
    move-result-object v4

    .line 452
    check-cast v4, Ljava/lang/String;

    .line 453
    .line 454
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->addPerson(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 455
    .line 456
    .line 457
    goto :goto_a

    .line 458
    :cond_12
    iget-object v2, v0, Lwo5;->d:Ljava/util/ArrayList;

    .line 459
    .line 460
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 461
    .line 462
    .line 463
    move-result v4

    .line 464
    if-lez v4, :cond_1a

    .line 465
    .line 466
    iget-object v4, v0, Lwo5;->q:Landroid/os/Bundle;

    .line 467
    .line 468
    if-nez v4, :cond_13

    .line 469
    .line 470
    new-instance v4, Landroid/os/Bundle;

    .line 471
    .line 472
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 473
    .line 474
    .line 475
    iput-object v4, v0, Lwo5;->q:Landroid/os/Bundle;

    .line 476
    .line 477
    :cond_13
    iget-object v4, v0, Lwo5;->q:Landroid/os/Bundle;

    .line 478
    .line 479
    const-string v7, "android.car.EXTENSIONS"

    .line 480
    .line 481
    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 482
    .line 483
    .line 484
    move-result-object v4

    .line 485
    if-nez v4, :cond_14

    .line 486
    .line 487
    new-instance v4, Landroid/os/Bundle;

    .line 488
    .line 489
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 490
    .line 491
    .line 492
    :cond_14
    new-instance v11, Landroid/os/Bundle;

    .line 493
    .line 494
    invoke-direct {v11, v4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 495
    .line 496
    .line 497
    new-instance v12, Landroid/os/Bundle;

    .line 498
    .line 499
    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 500
    .line 501
    .line 502
    move v13, v9

    .line 503
    :goto_b
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 504
    .line 505
    .line 506
    move-result v14

    .line 507
    if-ge v13, v14, :cond_18

    .line 508
    .line 509
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 510
    .line 511
    .line 512
    move-result-object v14

    .line 513
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 514
    .line 515
    .line 516
    move-result-object v15

    .line 517
    check-cast v15, Lvo5;

    .line 518
    .line 519
    new-instance v6, Landroid/os/Bundle;

    .line 520
    .line 521
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 522
    .line 523
    .line 524
    iget-object v10, v15, Lvo5;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 525
    .line 526
    if-nez v10, :cond_15

    .line 527
    .line 528
    iget v10, v15, Lvo5;->e:I

    .line 529
    .line 530
    if-eqz v10, :cond_15

    .line 531
    .line 532
    invoke-static {v10}, Landroidx/core/graphics/drawable/IconCompat;->a(I)Landroidx/core/graphics/drawable/IconCompat;

    .line 533
    .line 534
    .line 535
    move-result-object v10

    .line 536
    iput-object v10, v15, Lvo5;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 537
    .line 538
    :cond_15
    iget-object v10, v15, Lvo5;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 539
    .line 540
    iget-object v9, v15, Lvo5;->a:Landroid/os/Bundle;

    .line 541
    .line 542
    if-eqz v10, :cond_16

    .line 543
    .line 544
    invoke-virtual {v10}, Landroidx/core/graphics/drawable/IconCompat;->b()I

    .line 545
    .line 546
    .line 547
    move-result v10

    .line 548
    :goto_c
    move-object/from16 v16, v2

    .line 549
    .line 550
    goto :goto_d

    .line 551
    :cond_16
    const/4 v10, 0x0

    .line 552
    goto :goto_c

    .line 553
    :goto_d
    const-string v2, "icon"

    .line 554
    .line 555
    invoke-virtual {v6, v2, v10}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 556
    .line 557
    .line 558
    const-string v2, "title"

    .line 559
    .line 560
    iget-object v10, v15, Lvo5;->f:Ljava/lang/CharSequence;

    .line 561
    .line 562
    invoke-virtual {v6, v2, v10}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 563
    .line 564
    .line 565
    const-string v2, "actionIntent"

    .line 566
    .line 567
    iget-object v10, v15, Lvo5;->g:Landroid/app/PendingIntent;

    .line 568
    .line 569
    invoke-virtual {v6, v2, v10}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 570
    .line 571
    .line 572
    if-eqz v9, :cond_17

    .line 573
    .line 574
    new-instance v2, Landroid/os/Bundle;

    .line 575
    .line 576
    invoke-direct {v2, v9}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 577
    .line 578
    .line 579
    goto :goto_e

    .line 580
    :cond_17
    new-instance v2, Landroid/os/Bundle;

    .line 581
    .line 582
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 583
    .line 584
    .line 585
    :goto_e
    iget-boolean v9, v15, Lvo5;->c:Z

    .line 586
    .line 587
    invoke-virtual {v2, v8, v9}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 588
    .line 589
    .line 590
    const-string v9, "extras"

    .line 591
    .line 592
    invoke-virtual {v6, v9, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 593
    .line 594
    .line 595
    const-string v2, "remoteInputs"

    .line 596
    .line 597
    const/4 v9, 0x0

    .line 598
    invoke-virtual {v6, v2, v9}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 599
    .line 600
    .line 601
    const-string v2, "showsUserInterface"

    .line 602
    .line 603
    iget-boolean v9, v15, Lvo5;->d:Z

    .line 604
    .line 605
    invoke-virtual {v6, v2, v9}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 606
    .line 607
    .line 608
    const-string v2, "semanticAction"

    .line 609
    .line 610
    const/4 v9, 0x0

    .line 611
    invoke-virtual {v6, v2, v9}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 612
    .line 613
    .line 614
    invoke-virtual {v12, v14, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 615
    .line 616
    .line 617
    add-int/lit8 v13, v13, 0x1

    .line 618
    .line 619
    move-object/from16 v2, v16

    .line 620
    .line 621
    const/16 v6, 0x1d

    .line 622
    .line 623
    const/4 v9, 0x0

    .line 624
    const/16 v10, 0x1c

    .line 625
    .line 626
    goto :goto_b

    .line 627
    :cond_18
    const-string v2, "invisible_actions"

    .line 628
    .line 629
    invoke-virtual {v4, v2, v12}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 630
    .line 631
    .line 632
    invoke-virtual {v11, v2, v12}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 633
    .line 634
    .line 635
    iget-object v2, v0, Lwo5;->q:Landroid/os/Bundle;

    .line 636
    .line 637
    if-nez v2, :cond_19

    .line 638
    .line 639
    new-instance v2, Landroid/os/Bundle;

    .line 640
    .line 641
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 642
    .line 643
    .line 644
    iput-object v2, v0, Lwo5;->q:Landroid/os/Bundle;

    .line 645
    .line 646
    :cond_19
    iget-object v2, v0, Lwo5;->q:Landroid/os/Bundle;

    .line 647
    .line 648
    invoke-virtual {v2, v7, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 649
    .line 650
    .line 651
    invoke-virtual {v1, v7, v11}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 652
    .line 653
    .line 654
    :cond_1a
    iget-object v1, v0, Lwo5;->q:Landroid/os/Bundle;

    .line 655
    .line 656
    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 657
    .line 658
    .line 659
    const/4 v4, 0x0

    .line 660
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setRemoteInputHistory([Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 661
    .line 662
    .line 663
    const/4 v9, 0x0

    .line 664
    invoke-virtual {v3, v9}, Landroid/app/Notification$Builder;->setBadgeIconType(I)Landroid/app/Notification$Builder;

    .line 665
    .line 666
    .line 667
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSettingsText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 668
    .line 669
    .line 670
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setShortcutId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 671
    .line 672
    .line 673
    const-wide/16 v1, 0x0

    .line 674
    .line 675
    invoke-virtual {v3, v1, v2}, Landroid/app/Notification$Builder;->setTimeoutAfter(J)Landroid/app/Notification$Builder;

    .line 676
    .line 677
    .line 678
    invoke-virtual {v3, v9}, Landroid/app/Notification$Builder;->setGroupAlertBehavior(I)Landroid/app/Notification$Builder;

    .line 679
    .line 680
    .line 681
    iget-object v1, v0, Lwo5;->s:Ljava/lang/String;

    .line 682
    .line 683
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 684
    .line 685
    .line 686
    move-result v1

    .line 687
    if-nez v1, :cond_1b

    .line 688
    .line 689
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 690
    .line 691
    .line 692
    move-result-object v1

    .line 693
    invoke-virtual {v1, v9}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 694
    .line 695
    .line 696
    move-result-object v1

    .line 697
    invoke-virtual {v1, v9, v9, v9}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    .line 698
    .line 699
    .line 700
    move-result-object v1

    .line 701
    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    .line 702
    .line 703
    .line 704
    :cond_1b
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 705
    .line 706
    const/16 v2, 0x1c

    .line 707
    .line 708
    if-lt v1, v2, :cond_1c

    .line 709
    .line 710
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 711
    .line 712
    .line 713
    move-result-object v2

    .line 714
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 715
    .line 716
    .line 717
    move-result v4

    .line 718
    if-nez v4, :cond_1d

    .line 719
    .line 720
    :cond_1c
    const/16 v2, 0x1d

    .line 721
    .line 722
    goto :goto_f

    .line 723
    :cond_1d
    invoke-static {v2}, Leq3;->h(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 724
    .line 725
    .line 726
    move-result-object v0

    .line 727
    throw v0

    .line 728
    :goto_f
    if-lt v1, v2, :cond_1e

    .line 729
    .line 730
    iget-boolean v2, v0, Lwo5;->t:Z

    .line 731
    .line 732
    invoke-static {v3, v2}, Ldu;->j(Landroid/app/Notification$Builder;Z)V

    .line 733
    .line 734
    .line 735
    invoke-static {v3}, Ldu;->k(Landroid/app/Notification$Builder;)V

    .line 736
    .line 737
    .line 738
    :cond_1e
    const/16 v2, 0x24

    .line 739
    .line 740
    if-lt v1, v2, :cond_1f

    .line 741
    .line 742
    invoke-static {v3}, Lk6;->f(Landroid/app/Notification$Builder;)V

    .line 743
    .line 744
    .line 745
    :cond_1f
    iget-object v1, v0, Lwo5;->k:Lc00;

    .line 746
    .line 747
    if-eqz v1, :cond_20

    .line 748
    .line 749
    new-instance v2, Landroid/app/Notification$BigTextStyle;

    .line 750
    .line 751
    invoke-direct {v2, v3}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    .line 752
    .line 753
    .line 754
    const/4 v4, 0x0

    .line 755
    invoke-virtual {v2, v4}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 756
    .line 757
    .line 758
    move-result-object v2

    .line 759
    iget-object v4, v1, Lc00;->c:Ljava/lang/Object;

    .line 760
    .line 761
    check-cast v4, Ljava/lang/CharSequence;

    .line 762
    .line 763
    invoke-virtual {v2, v4}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 764
    .line 765
    .line 766
    :cond_20
    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 767
    .line 768
    .line 769
    move-result-object v2

    .line 770
    if-eqz v1, :cond_21

    .line 771
    .line 772
    iget-object v0, v0, Lwo5;->k:Lc00;

    .line 773
    .line 774
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 775
    .line 776
    .line 777
    :cond_21
    if-eqz v1, :cond_22

    .line 778
    .line 779
    iget-object v0, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 780
    .line 781
    if-eqz v0, :cond_22

    .line 782
    .line 783
    const-string v1, "androidx.core.app.NotificationCompat$BigTextStyle"

    .line 784
    .line 785
    const-string v3, "androidx.core.app.extra.COMPAT_TEMPLATE"

    .line 786
    .line 787
    invoke-virtual {v0, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    .line 789
    .line 790
    :cond_22
    return-object v2
.end method

.method public final c(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lwo5;->u:Landroid/app/Notification;

    .line 2
    .line 3
    iget v0, p0, Landroid/app/Notification;->flags:I

    .line 4
    .line 5
    or-int/2addr p1, v0

    .line 6
    iput p1, p0, Landroid/app/Notification;->flags:I

    .line 7
    .line 8
    return-void
.end method

.method public final d(Landroid/graphics/Bitmap;)V
    .locals 7

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    goto :goto_1

    .line 5
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    .line 7
    const/16 v1, 0x1b

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-lt v0, v1, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    iget-object v0, p0, Lwo5;->a:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const v1, 0x7f07006a

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const v3, 0x7f070069

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-gt v3, v1, :cond_2

    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-gt v3, v0, :cond_2

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    int-to-double v3, v1

    .line 47
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    int-to-double v5, v1

    .line 56
    div-double/2addr v3, v5

    .line 57
    int-to-double v0, v0

    .line 58
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    int-to-double v5, v5

    .line 67
    div-double/2addr v0, v5

    .line 68
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->min(DD)D

    .line 69
    .line 70
    .line 71
    move-result-wide v0

    .line 72
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    int-to-double v3, v3

    .line 77
    mul-double/2addr v3, v0

    .line 78
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    .line 79
    .line 80
    .line 81
    move-result-wide v3

    .line 82
    double-to-int v3, v3

    .line 83
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    int-to-double v4, v4

    .line 88
    mul-double/2addr v4, v0

    .line 89
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    .line 90
    .line 91
    .line 92
    move-result-wide v0

    .line 93
    double-to-int v0, v0

    .line 94
    invoke-static {p1, v3, v0, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    :goto_0
    sget-object v0, Landroidx/core/graphics/drawable/IconCompat;->k:Landroid/graphics/PorterDuff$Mode;

    .line 99
    .line 100
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    new-instance v0, Landroidx/core/graphics/drawable/IconCompat;

    .line 104
    .line 105
    invoke-direct {v0, v2}, Landroidx/core/graphics/drawable/IconCompat;-><init>(I)V

    .line 106
    .line 107
    .line 108
    iput-object p1, v0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 109
    .line 110
    move-object p1, v0

    .line 111
    :goto_1
    iput-object p1, p0, Lwo5;->h:Landroidx/core/graphics/drawable/IconCompat;

    .line 112
    .line 113
    return-void
.end method

.method public final e(Lc00;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lwo5;->k:Lc00;

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lwo5;->k:Lc00;

    .line 6
    .line 7
    invoke-virtual {p1, p0}, Lc00;->q(Lwo5;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
