.class public final Lorg/swiftapps/swiftbackup/tasks/TaskService;
.super Landroid/app/IntentService;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static volatile b:Lgz7;

.field public static volatile c:Z

.field public static volatile d:Z

.field public static final e:Lgv7;


# instance fields
.field public volatile a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lgz7;->WAITING:Lgz7;

    .line 2
    .line 3
    sput-object v0, Lorg/swiftapps/swiftbackup/tasks/TaskService;->b:Lgz7;

    .line 4
    .line 5
    new-instance v0, Lzk;

    .line 6
    .line 7
    const/16 v1, 0x12

    .line 8
    .line 9
    invoke-direct {v0, v1}, Lzk;-><init>(I)V

    .line 10
    .line 11
    .line 12
    new-instance v1, Lgv7;

    .line 13
    .line 14
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lorg/swiftapps/swiftbackup/tasks/TaskService;->e:Lgv7;

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "TaskService"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljc2;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/tasks/TaskService;->a:Ljava/lang/String;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/tasks/TaskService;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    monitor-exit p0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    sget-object p0, Lkc2;->a:Lkc2;

    .line 11
    .line 12
    invoke-static {v0, p1}, Lkc2;->c(Ljava/lang/String;Ljc2;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    monitor-exit p0

    .line 18
    throw p1
.end method

.method public final b(ILjava/lang/String;)V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lorg/swiftapps/swiftbackup/tasks/TaskService;->d:Z

    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 8
    .line 9
    .line 10
    sget-object v1, Lvr6;->INSTANCE:Lvr6;

    .line 11
    .line 12
    const-string v0, "Foreground service timeout, cancelling tasks: startId="

    .line 13
    .line 14
    const-string v2, ", fgsType="

    .line 15
    .line 16
    invoke-static {p1, v0, v2, p2}, Lu48;->k(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    const/4 v5, 0x4

    .line 21
    const/4 v6, 0x0

    .line 22
    const-string v2, "TaskService"

    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    invoke-static/range {v1 .. v6}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    sget-object p1, Lhy7;->a:Lhy7;

    .line 29
    .line 30
    sget-object p1, Lhy7;->e:Ljy7;

    .line 31
    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    invoke-virtual {p1}, Ljy7;->b()V

    .line 35
    .line 36
    .line 37
    :cond_0
    sget-object p1, Lgz7;->CANCELLED:Lgz7;

    .line 38
    .line 39
    invoke-static {p1}, Lez7;->b(Lgz7;)V

    .line 40
    .line 41
    .line 42
    sget-object p1, Lzn4;->a:Lzn4;

    .line 43
    .line 44
    new-instance p1, Lpu;

    .line 45
    .line 46
    const/16 p2, 0xf

    .line 47
    .line 48
    invoke-direct {p1, p2}, Lpu;-><init>(I)V

    .line 49
    .line 50
    .line 51
    invoke-static {p1}, Lzn4;->c(Lbt3;)V

    .line 52
    .line 53
    .line 54
    invoke-static {}, Lhy7;->f()Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-eqz p1, :cond_1

    .line 59
    .line 60
    invoke-static {}, Lo37;->d()V

    .line 61
    .line 62
    .line 63
    :cond_1
    new-instance p1, Lqj;

    .line 64
    .line 65
    const/4 p2, 0x3

    .line 66
    const/4 v0, 0x0

    .line 67
    invoke-direct {p1, p0, v0, p2}, Lqj;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 68
    .line 69
    .line 70
    invoke-static {v0, p1}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .line 1
    const-string v0, "TaskService"

    .line 2
    .line 3
    const-string v1, "onDestroy() called"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onHandleIntent(Landroid/content/Intent;)V
    .locals 25

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v2, "TaskService finished"

    .line 4
    .line 5
    const-string v0, "TaskService"

    .line 6
    .line 7
    const-string v3, "Blocked by dataSync FGS quota: "

    .line 8
    .line 9
    sget-object v4, Lvr6;->INSTANCE:Lvr6;

    .line 10
    .line 11
    const/4 v8, 0x4

    .line 12
    const/4 v9, 0x0

    .line 13
    const-string v5, "TaskService"

    .line 14
    .line 15
    const-string v6, "Started"

    .line 16
    .line 17
    const/4 v7, 0x0

    .line 18
    invoke-static/range {v4 .. v9}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    sget-object v5, Lgz7;->RUNNING:Lgz7;

    .line 22
    .line 23
    invoke-static {v5}, Lez7;->b(Lgz7;)V

    .line 24
    .line 25
    .line 26
    const/4 v10, 0x0

    .line 27
    sput-boolean v10, Lorg/swiftapps/swiftbackup/tasks/TaskService;->c:Z

    .line 28
    .line 29
    sput-boolean v10, Lorg/swiftapps/swiftbackup/tasks/TaskService;->d:Z

    .line 30
    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 32
    .line 33
    .line 34
    move-result-wide v11

    .line 35
    const/4 v13, 0x0

    .line 36
    iput-object v13, v1, Lorg/swiftapps/swiftbackup/tasks/TaskService;->a:Ljava/lang/String;

    .line 37
    .line 38
    sget-object v14, Ljc2;->ERROR:Ljc2;

    .line 39
    .line 40
    const/4 v15, 0x1

    .line 41
    :try_start_0
    sget-object v5, Lhy7;->a:Lhy7;

    .line 42
    .line 43
    sget-object v16, Lhy7;->e:Ljy7;

    .line 44
    .line 45
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    invoke-virtual/range {v16 .. v16}, Ljy7;->a()Landroid/app/Notification;

    .line 49
    .line 50
    .line 51
    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 52
    const/16 v6, 0x13

    .line 53
    .line 54
    :try_start_1
    invoke-static {}, Lb67;->b()Z

    .line 55
    .line 56
    .line 57
    move-result v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 58
    const/16 v8, 0xc

    .line 59
    .line 60
    if-eqz v7, :cond_0

    .line 61
    .line 62
    const/4 v7, -0x1

    .line 63
    :try_start_2
    invoke-virtual {v1, v8, v5, v7}, Landroid/app/IntentService;->startForeground(ILandroid/app/Notification;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :catchall_0
    move-exception v0

    .line 68
    move v3, v10

    .line 69
    move-object v4, v13

    .line 70
    goto/16 :goto_e

    .line 71
    .line 72
    :catch_0
    move-exception v0

    .line 73
    move v13, v6

    .line 74
    goto/16 :goto_c

    .line 75
    .line 76
    :cond_0
    :try_start_3
    invoke-virtual {v1, v8, v5}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 77
    .line 78
    .line 79
    :goto_0
    :try_start_4
    sget-object v3, Lkc2;->a:Lkc2;

    .line 80
    .line 81
    invoke-static {}, Lhy7;->f()Z

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    sget-boolean v7, Lhy7;->f:Z

    .line 86
    .line 87
    sget-object v8, Lhy7;->g:Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {v3, v0, v8, v5, v7}, Lkc2;->h(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    iput-object v3, v1, Lorg/swiftapps/swiftbackup/tasks/TaskService;->a:Ljava/lang/String;

    .line 94
    .line 95
    sget-object v3, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 96
    .line 97
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    const-string v5, "power"

    .line 102
    .line 103
    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    check-cast v3, Landroid/os/PowerManager;

    .line 111
    .line 112
    invoke-virtual {v3, v15, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    const-wide/32 v7, 0x1b7740

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3, v7, v8}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 120
    .line 121
    .line 122
    :try_start_5
    sget-object v0, Lzn4;->a:Lzn4;

    .line 123
    .line 124
    new-instance v0, Lfz7;

    .line 125
    .line 126
    const/4 v5, 0x2

    .line 127
    invoke-direct {v0, v5, v13}, Lws7;-><init>(ILjv1;)V

    .line 128
    .line 129
    .line 130
    invoke-static {v13, v0}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 131
    .line 132
    .line 133
    new-instance v7, Lorg/swiftapps/swiftbackup/tasks/NotificationTaskCancelReceiver;

    .line 134
    .line 135
    invoke-direct {v7}, Lorg/swiftapps/swiftbackup/tasks/NotificationTaskCancelReceiver;-><init>()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 136
    .line 137
    .line 138
    :try_start_6
    new-instance v0, Landroid/content/IntentFilter;

    .line 139
    .line 140
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 141
    .line 142
    .line 143
    invoke-static {v7, v0}, Lorg/swiftapps/swiftbackup/common/Const;->C(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 144
    .line 145
    .line 146
    :try_start_7
    invoke-static {}, Lhy7;->g()V

    .line 147
    .line 148
    .line 149
    invoke-static {v7}, Lorg/swiftapps/swiftbackup/common/Const;->S(Landroid/content/BroadcastReceiver;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 150
    .line 151
    .line 152
    :try_start_8
    sget-object v0, Lorg/swiftapps/swiftbackup/tasks/TaskService;->b:Lgz7;

    .line 153
    .line 154
    invoke-virtual {v0}, Lgz7;->isCancelled()Z

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    if-nez v0, :cond_4

    .line 159
    .line 160
    move v0, v5

    .line 161
    const-string v5, "TaskService"

    .line 162
    .line 163
    move v8, v6

    .line 164
    const-string v6, "Complete"
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 165
    .line 166
    move v9, v8

    .line 167
    const/4 v8, 0x4

    .line 168
    move/from16 v17, v9

    .line 169
    .line 170
    const/4 v9, 0x0

    .line 171
    move-object/from16 v18, v7

    .line 172
    .line 173
    const/4 v7, 0x0

    .line 174
    move/from16 v13, v17

    .line 175
    .line 176
    :try_start_9
    invoke-static/range {v4 .. v9}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    sget-object v5, Lgz7;->COMPLETE:Lgz7;

    .line 180
    .line 181
    invoke-static {v5}, Lez7;->b(Lgz7;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual/range {v16 .. v16}, Ljy7;->d()V

    .line 185
    .line 186
    .line 187
    invoke-static {}, Lhy7;->c()Lorg/swiftapps/swiftbackup/tasks/TaskManager$ErrorSummary;

    .line 188
    .line 189
    .line 190
    move-result-object v5

    .line 191
    invoke-virtual {v5}, Lorg/swiftapps/swiftbackup/tasks/TaskManager$ErrorSummary;->hasErrors()Z

    .line 192
    .line 193
    .line 194
    move-result v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 195
    if-eqz v6, :cond_1

    .line 196
    .line 197
    :try_start_a
    invoke-virtual {v5}, Lorg/swiftapps/swiftbackup/tasks/TaskManager$ErrorSummary;->hasErrors()Z

    .line 198
    .line 199
    .line 200
    move-result v7

    .line 201
    if-eqz v7, :cond_1

    .line 202
    .line 203
    new-instance v7, Lq63;

    .line 204
    .line 205
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 206
    .line 207
    .line 208
    move-result-object v8

    .line 209
    invoke-virtual {v8}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 210
    .line 211
    .line 212
    move-result-object v8

    .line 213
    const-string v9, "TaskErrors.txt"

    .line 214
    .line 215
    invoke-direct {v7, v8, v9, v0}, Lq63;-><init>(Ljava/io/File;Ljava/lang/String;I)V

    .line 216
    .line 217
    .line 218
    invoke-static {v5, v7, v10}, Lw14;->g(Ljava/lang/Object;Lq63;Z)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 219
    .line 220
    .line 221
    goto :goto_3

    .line 222
    :catch_1
    move-exception v0

    .line 223
    :try_start_b
    sget-object v19, Lvr6;->INSTANCE:Lvr6;

    .line 224
    .line 225
    const-string v20, "TaskManager"

    .line 226
    .line 227
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v21

    .line 235
    const/16 v23, 0x4

    .line 236
    .line 237
    const/16 v24, 0x0

    .line 238
    .line 239
    const/16 v22, 0x0

    .line 240
    .line 241
    invoke-static/range {v19 .. v24}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 242
    .line 243
    .line 244
    goto :goto_3

    .line 245
    :goto_1
    move-object v4, v3

    .line 246
    move v3, v10

    .line 247
    :goto_2
    move-object/from16 v13, v18

    .line 248
    .line 249
    goto/16 :goto_e

    .line 250
    .line 251
    :cond_1
    :goto_3
    if-nez v6, :cond_3

    .line 252
    .line 253
    sget-object v0, Lhy7;->d:Ljava/lang/String;

    .line 254
    .line 255
    if-eqz v0, :cond_3

    .line 256
    .line 257
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 258
    .line 259
    .line 260
    move-result v5

    .line 261
    if-lez v5, :cond_2

    .line 262
    .line 263
    goto :goto_4

    .line 264
    :cond_2
    const/4 v0, 0x0

    .line 265
    :goto_4
    if-eqz v0, :cond_3

    .line 266
    .line 267
    invoke-static {}, Lorg/swiftapps/swiftbackup/common/NotificationHelper;->d()Landroid/app/NotificationManager;

    .line 268
    .line 269
    .line 270
    move-result-object v5

    .line 271
    invoke-virtual {v5}, Landroid/app/NotificationManager;->cancelAll()V

    .line 272
    .line 273
    .line 274
    invoke-static {v0, v10}, Lo37;->c(Ljava/lang/String;Z)V

    .line 275
    .line 276
    .line 277
    goto :goto_5

    .line 278
    :catchall_1
    move-exception v0

    .line 279
    goto :goto_1

    .line 280
    :cond_3
    :goto_5
    sget-object v0, Ljc2;->COMPLETED:Ljc2;

    .line 281
    .line 282
    :goto_6
    move-object v14, v0

    .line 283
    goto :goto_8

    .line 284
    :catchall_2
    move-exception v0

    .line 285
    move-object/from16 v18, v7

    .line 286
    .line 287
    goto :goto_1

    .line 288
    :cond_4
    move v13, v6

    .line 289
    move-object/from16 v18, v7

    .line 290
    .line 291
    const-string v5, "TaskService"

    .line 292
    .line 293
    const-string v6, "Cancelled"

    .line 294
    .line 295
    const/4 v8, 0x4

    .line 296
    const/4 v9, 0x0

    .line 297
    const/4 v7, 0x0

    .line 298
    invoke-static/range {v4 .. v9}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 299
    .line 300
    .line 301
    sget-object v0, Lgz7;->CANCEL_COMPLETE:Lgz7;

    .line 302
    .line 303
    invoke-static {v0}, Lez7;->b(Lgz7;)V

    .line 304
    .line 305
    .line 306
    sget-boolean v0, Lorg/swiftapps/swiftbackup/tasks/TaskService;->d:Z

    .line 307
    .line 308
    if-eqz v0, :cond_5

    .line 309
    .line 310
    invoke-virtual/range {v16 .. v16}, Ljy7;->b()V

    .line 311
    .line 312
    .line 313
    goto :goto_7

    .line 314
    :cond_5
    invoke-static {}, Lorg/swiftapps/swiftbackup/common/NotificationHelper;->d()Landroid/app/NotificationManager;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 319
    .line 320
    .line 321
    :goto_7
    sget-boolean v0, Lorg/swiftapps/swiftbackup/tasks/TaskService;->d:Z

    .line 322
    .line 323
    if-eqz v0, :cond_6

    .line 324
    .line 325
    sget-object v0, Ljc2;->TIMEOUT:Ljc2;

    .line 326
    .line 327
    goto :goto_6

    .line 328
    :cond_6
    sget-object v0, Ljc2;->CANCELLED:Ljc2;

    .line 329
    .line 330
    goto :goto_6

    .line 331
    :goto_8
    new-instance v0, Lfo8;

    .line 332
    .line 333
    invoke-direct {v0, v13}, Lfo8;-><init>(I)V

    .line 334
    .line 335
    .line 336
    invoke-static {}, Lny2;->b()Lny2;

    .line 337
    .line 338
    .line 339
    move-result-object v5

    .line 340
    invoke-virtual {v5, v0}, Lny2;->e(Ljava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 341
    .line 342
    .line 343
    sget-boolean v0, Lorg/swiftapps/swiftbackup/tasks/TaskService;->d:Z

    .line 344
    .line 345
    if-eqz v0, :cond_7

    .line 346
    .line 347
    sget-object v14, Ljc2;->TIMEOUT:Ljc2;

    .line 348
    .line 349
    :cond_7
    invoke-virtual {v1, v14}, Lorg/swiftapps/swiftbackup/tasks/TaskService;->a(Ljc2;)V

    .line 350
    .line 351
    .line 352
    invoke-static {v2}, Lqc2;->g(Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 356
    .line 357
    .line 358
    move-result-wide v0

    .line 359
    invoke-static {v11, v12, v0, v1}, Lorg/swiftapps/swiftbackup/common/Const;->u(JJ)Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v6

    .line 363
    const/4 v8, 0x4

    .line 364
    const/4 v9, 0x0

    .line 365
    const-string v5, "TaskService"

    .line 366
    .line 367
    const/4 v7, 0x0

    .line 368
    invoke-static/range {v4 .. v9}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    .line 372
    .line 373
    .line 374
    move-result v0

    .line 375
    if-ne v0, v15, :cond_8

    .line 376
    .line 377
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 378
    .line 379
    .line 380
    :cond_8
    return-void

    .line 381
    :catchall_3
    move-exception v0

    .line 382
    move-object/from16 v18, v7

    .line 383
    .line 384
    move-object v4, v3

    .line 385
    move v3, v10

    .line 386
    move v10, v15

    .line 387
    goto/16 :goto_2

    .line 388
    .line 389
    :catchall_4
    move-exception v0

    .line 390
    move-object v4, v3

    .line 391
    move v3, v10

    .line 392
    :goto_9
    const/4 v13, 0x0

    .line 393
    goto/16 :goto_e

    .line 394
    .line 395
    :goto_a
    move v3, v10

    .line 396
    :goto_b
    const/4 v4, 0x0

    .line 397
    goto :goto_9

    .line 398
    :catchall_5
    move-exception v0

    .line 399
    goto :goto_a

    .line 400
    :goto_c
    :try_start_c
    invoke-static {v0}, Lez7;->a(Ljava/lang/Exception;)Z

    .line 401
    .line 402
    .line 403
    move-result v4

    .line 404
    if-eqz v4, :cond_b

    .line 405
    .line 406
    invoke-static {v0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v0

    .line 410
    sget-object v4, Lvr6;->INSTANCE:Lvr6;

    .line 411
    .line 412
    const-string v5, "TaskService"

    .line 413
    .line 414
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v6

    .line 418
    const/4 v8, 0x4

    .line 419
    const/4 v9, 0x0

    .line 420
    const/4 v7, 0x0

    .line 421
    invoke-static/range {v4 .. v9}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 422
    .line 423
    .line 424
    invoke-virtual/range {v16 .. v16}, Ljy7;->b()V

    .line 425
    .line 426
    .line 427
    sget-object v3, Lgz7;->CANCEL_COMPLETE:Lgz7;

    .line 428
    .line 429
    invoke-static {v3}, Lez7;->b(Lgz7;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 430
    .line 431
    .line 432
    :try_start_d
    sget-object v17, Lkc2;->a:Lkc2;

    .line 433
    .line 434
    const-string v18, "TaskService"

    .line 435
    .line 436
    sget-object v3, Lhy7;->a:Lhy7;

    .line 437
    .line 438
    invoke-static {}, Lhy7;->f()Z

    .line 439
    .line 440
    .line 441
    move-result v21

    .line 442
    sget-boolean v22, Lhy7;->f:Z

    .line 443
    .line 444
    sget-object v19, Lhy7;->g:Ljava/lang/String;

    .line 445
    .line 446
    move-object/from16 v20, v0

    .line 447
    .line 448
    invoke-virtual/range {v17 .. v22}, Lkc2;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 449
    .line 450
    .line 451
    invoke-static {}, Lhy7;->f()Z

    .line 452
    .line 453
    .line 454
    move-result v0

    .line 455
    if-eqz v0, :cond_9

    .line 456
    .line 457
    invoke-static {}, Lo37;->d()V

    .line 458
    .line 459
    .line 460
    goto :goto_d

    .line 461
    :catchall_6
    move-exception v0

    .line 462
    move v3, v15

    .line 463
    goto :goto_b

    .line 464
    :cond_9
    :goto_d
    const-string v0, "TaskService startForeground blocked"

    .line 465
    .line 466
    sget-object v3, Lqc2;->a:Lqc2;

    .line 467
    .line 468
    invoke-virtual {v3, v0, v10}, Lqc2;->h(Ljava/lang/String;Z)V

    .line 469
    .line 470
    .line 471
    new-instance v0, Lfo8;

    .line 472
    .line 473
    invoke-direct {v0, v13}, Lfo8;-><init>(I)V

    .line 474
    .line 475
    .line 476
    invoke-static {}, Lny2;->b()Lny2;

    .line 477
    .line 478
    .line 479
    move-result-object v3

    .line 480
    invoke-virtual {v3, v0}, Lny2;->e(Ljava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 481
    .line 482
    .line 483
    sget-boolean v0, Lorg/swiftapps/swiftbackup/tasks/TaskService;->d:Z

    .line 484
    .line 485
    if-eqz v0, :cond_a

    .line 486
    .line 487
    sget-object v14, Ljc2;->TIMEOUT:Ljc2;

    .line 488
    .line 489
    :cond_a
    invoke-virtual {v1, v14}, Lorg/swiftapps/swiftbackup/tasks/TaskService;->a(Ljc2;)V

    .line 490
    .line 491
    .line 492
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 493
    .line 494
    .line 495
    move-result-wide v0

    .line 496
    invoke-static {v11, v12, v0, v1}, Lorg/swiftapps/swiftbackup/common/Const;->u(JJ)Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object v6

    .line 500
    const/4 v8, 0x4

    .line 501
    const/4 v9, 0x0

    .line 502
    const-string v5, "TaskService"

    .line 503
    .line 504
    const/4 v7, 0x0

    .line 505
    invoke-static/range {v4 .. v9}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 506
    .line 507
    .line 508
    return-void

    .line 509
    :cond_b
    :try_start_e
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 510
    :goto_e
    if-eqz v10, :cond_c

    .line 511
    .line 512
    if-eqz v13, :cond_c

    .line 513
    .line 514
    invoke-static {v13}, Lorg/swiftapps/swiftbackup/common/Const;->S(Landroid/content/BroadcastReceiver;)V

    .line 515
    .line 516
    .line 517
    :cond_c
    sget-boolean v5, Lorg/swiftapps/swiftbackup/tasks/TaskService;->d:Z

    .line 518
    .line 519
    if-eqz v5, :cond_d

    .line 520
    .line 521
    sget-object v14, Ljc2;->TIMEOUT:Ljc2;

    .line 522
    .line 523
    :cond_d
    invoke-virtual {v1, v14}, Lorg/swiftapps/swiftbackup/tasks/TaskService;->a(Ljc2;)V

    .line 524
    .line 525
    .line 526
    if-nez v3, :cond_e

    .line 527
    .line 528
    invoke-static {v2}, Lqc2;->g(Ljava/lang/String;)V

    .line 529
    .line 530
    .line 531
    :cond_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 532
    .line 533
    .line 534
    move-result-wide v1

    .line 535
    invoke-static {v11, v12, v1, v2}, Lorg/swiftapps/swiftbackup/common/Const;->u(JJ)Ljava/lang/String;

    .line 536
    .line 537
    .line 538
    move-result-object v7

    .line 539
    sget-object v5, Lvr6;->INSTANCE:Lvr6;

    .line 540
    .line 541
    const/4 v9, 0x4

    .line 542
    const/4 v10, 0x0

    .line 543
    const-string v6, "TaskService"

    .line 544
    .line 545
    const/4 v8, 0x0

    .line 546
    invoke-static/range {v5 .. v10}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 547
    .line 548
    .line 549
    if-eqz v4, :cond_f

    .line 550
    .line 551
    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    .line 552
    .line 553
    .line 554
    move-result v1

    .line 555
    if-ne v1, v15, :cond_f

    .line 556
    .line 557
    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 558
    .line 559
    .line 560
    :cond_f
    throw v0
.end method

.method public final onTimeout(I)V
    .locals 1

    .line 9
    const-string v0, "shortService"

    invoke-virtual {p0, p1, v0}, Lorg/swiftapps/swiftbackup/tasks/TaskService;->b(ILjava/lang/String;)V

    return-void
.end method

.method public final onTimeout(II)V
    .locals 0

    .line 1
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p0, p1, p2}, Lorg/swiftapps/swiftbackup/tasks/TaskService;->b(ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
