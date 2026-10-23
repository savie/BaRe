.class public abstract Ltb1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static a:Ltb1;

.field public static final b:Lgj5;

.field public static final c:Lgj5;

.field public static final d:Lgj5;

.field public static final e:Lix6;

.field public static f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lgj5;

    .line 2
    .line 3
    invoke-direct {v0}, Lzy4;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ltb1;->b:Lgj5;

    .line 7
    .line 8
    new-instance v0, Lgj5;

    .line 9
    .line 10
    invoke-direct {v0}, Lzy4;-><init>()V

    .line 11
    .line 12
    .line 13
    sget-object v1, Lrb1;->LOADING:Lrb1;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lzy4;->k(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    sput-object v0, Ltb1;->c:Lgj5;

    .line 19
    .line 20
    new-instance v0, Lgj5;

    .line 21
    .line 22
    invoke-direct {v0}, Lzy4;-><init>()V

    .line 23
    .line 24
    .line 25
    sput-object v0, Ltb1;->d:Lgj5;

    .line 26
    .line 27
    new-instance v0, Lix6;

    .line 28
    .line 29
    invoke-direct {v0}, Lix6;-><init>()V

    .line 30
    .line 31
    .line 32
    sput-object v0, Ltb1;->e:Lix6;

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Z)Lorg/swiftapps/swiftbackup/cloud/model/CloudResult;
    .locals 9

    .line 1
    const-string v0, "checkAccessSync: "

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    invoke-static {}, Lai8;->b()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Ltb1;->h()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "checkAccessSync()"

    .line 12
    .line 13
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lqb1;->d()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/4 v2, 0x0

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    sget-object p1, Ltb1;->c:Lgj5;

    .line 24
    .line 25
    sget-object v0, Lrb1;->DRIVE_NOT_CONNECTED:Lrb1;

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Lzy4;->i(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    invoke-static {}, Lqb1;->a()V

    .line 31
    .line 32
    .line 33
    new-instance p1, Loi1;

    .line 34
    .line 35
    new-instance v0, Ljava/lang/Exception;

    .line 36
    .line 37
    const-string v1, "authorizationComplete=false"

    .line 38
    .line 39
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-direct {p1, v0, v2}, Loi1;-><init>(Ljava/lang/Exception;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    .line 45
    monitor-exit p0

    .line 46
    return-object p1

    .line 47
    :catchall_0
    move-exception v0

    .line 48
    move-object p1, v0

    .line 49
    goto/16 :goto_7

    .line 50
    .line 51
    :cond_0
    const/4 v1, 0x1

    .line 52
    :try_start_1
    sput-boolean v1, Ltb1;->f:Z

    .line 53
    .line 54
    if-eqz p1, :cond_1

    .line 55
    .line 56
    sget-object p1, Ltb1;->c:Lgj5;

    .line 57
    .line 58
    sget-object v3, Lrb1;->LOADING:Lrb1;

    .line 59
    .line 60
    invoke-virtual {p1, v3}, Lzy4;->i(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    :cond_1
    invoke-static {}, Lqb1;->c()Ltb1;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p1}, Ltb1;->n()Lorg/swiftapps/swiftbackup/cloud/model/CloudResult;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-static {}, Lqb1;->l()Ldd1;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    if-nez v3, :cond_2

    .line 76
    .line 77
    new-instance p1, Loi1;

    .line 78
    .line 79
    new-instance v3, Ljava/lang/Exception;

    .line 80
    .line 81
    const-string v4, "Saved cloud type is null"

    .line 82
    .line 83
    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-direct {p1, v3, v2}, Loi1;-><init>(Ljava/lang/Exception;Z)V

    .line 87
    .line 88
    .line 89
    :cond_2
    sget-object v3, Ltb1;->b:Lgj5;

    .line 90
    .line 91
    invoke-virtual {v3, p1}, Lzy4;->i(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    instance-of v3, p1, Lsi1;

    .line 95
    .line 96
    if-eqz v3, :cond_3

    .line 97
    .line 98
    sget-object v0, Ltb1;->c:Lgj5;

    .line 99
    .line 100
    sget-object v1, Lrb1;->DRIVE_CONNECTED:Lrb1;

    .line 101
    .line 102
    invoke-virtual {v0, v1}, Lzy4;->i(Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    sget-object v0, Ltb1;->d:Lgj5;

    .line 106
    .line 107
    sget-object v1, Lfo7;->Companion:Lfo7$a;

    .line 108
    .line 109
    move-object v3, p1

    .line 110
    check-cast v3, Lsi1;

    .line 111
    .line 112
    iget-object v3, v3, Lsi1;->a:Lni1;

    .line 113
    .line 114
    invoke-virtual {v1, v3}, Lfo7$a;->create(Lni1;)Lfo7;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-virtual {v0, v1}, Lzy4;->i(Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    goto/16 :goto_6

    .line 122
    .line 123
    :cond_3
    sget-object v3, Lqi1;->a:Lqi1;

    .line 124
    .line 125
    invoke-static {p1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v3

    .line 129
    if-eqz v3, :cond_4

    .line 130
    .line 131
    sget-object v0, Ltb1;->c:Lgj5;

    .line 132
    .line 133
    sget-object v1, Lrb1;->NETWORK_ERROR:Lrb1;

    .line 134
    .line 135
    invoke-virtual {v0, v1}, Lzy4;->i(Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    goto/16 :goto_6

    .line 139
    .line 140
    :cond_4
    instance-of v3, p1, Loi1;

    .line 141
    .line 142
    if-eqz v3, :cond_f

    .line 143
    .line 144
    move-object v0, p1

    .line 145
    check-cast v0, Loi1;

    .line 146
    .line 147
    iget-boolean v0, v0, Loi1;->b:Z

    .line 148
    .line 149
    if-eqz v0, :cond_e

    .line 150
    .line 151
    move-object v0, p1

    .line 152
    check-cast v0, Loi1;

    .line 153
    .line 154
    iget-object v0, v0, Loi1;->a:Ljava/lang/Exception;

    .line 155
    .line 156
    instance-of v3, v0, Lcom/google/android/gms/auth/UserRecoverableAuthException;

    .line 157
    .line 158
    const/4 v4, 0x0

    .line 159
    if-eqz v3, :cond_5

    .line 160
    .line 161
    check-cast v0, Lcom/google/android/gms/auth/UserRecoverableAuthException;

    .line 162
    .line 163
    goto :goto_0

    .line 164
    :cond_5
    move-object v0, v4

    .line 165
    :goto_0
    if-eqz v0, :cond_b

    .line 166
    .line 167
    const-string v3, "Auth"

    .line 168
    .line 169
    iget-object v5, v0, Lcom/google/android/gms/auth/UserRecoverableAuthException;->a:Landroid/content/Intent;

    .line 170
    .line 171
    if-nez v5, :cond_9

    .line 172
    .line 173
    iget v0, v0, Lcom/google/android/gms/auth/UserRecoverableAuthException;->b:I

    .line 174
    .line 175
    invoke-static {v0}, Ldj7;->A(I)I

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    if-eqz v0, :cond_8

    .line 180
    .line 181
    if-eq v0, v1, :cond_7

    .line 182
    .line 183
    const/4 v1, 0x2

    .line 184
    if-eq v0, v1, :cond_6

    .line 185
    .line 186
    goto :goto_1

    .line 187
    :cond_6
    const-string v0, "this instantiation of UserRecoverableAuthException doesn\'t support an Intent."

    .line 188
    .line 189
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    .line 191
    .line 192
    goto :goto_1

    .line 193
    :cond_7
    const-string v0, "This shouldn\'t happen. Gms API throwing this exception should support the recovery Intent."

    .line 194
    .line 195
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    .line 197
    .line 198
    goto :goto_1

    .line 199
    :cond_8
    const-string v0, "Make sure that an intent was provided to class instantiation."

    .line 200
    .line 201
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    .line 203
    .line 204
    :goto_1
    move-object v0, v4

    .line 205
    goto :goto_2

    .line 206
    :cond_9
    new-instance v0, Landroid/content/Intent;

    .line 207
    .line 208
    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 209
    .line 210
    .line 211
    :goto_2
    if-nez v0, :cond_a

    .line 212
    .line 213
    goto :goto_3

    .line 214
    :cond_a
    move-object v4, v0

    .line 215
    goto :goto_5

    .line 216
    :cond_b
    :goto_3
    move-object v0, p1

    .line 217
    check-cast v0, Loi1;

    .line 218
    .line 219
    iget-object v0, v0, Loi1;->a:Ljava/lang/Exception;

    .line 220
    .line 221
    instance-of v1, v0, Lt04;

    .line 222
    .line 223
    if-eqz v1, :cond_c

    .line 224
    .line 225
    check-cast v0, Lt04;

    .line 226
    .line 227
    goto :goto_4

    .line 228
    :cond_c
    move-object v0, v4

    .line 229
    :goto_4
    if-eqz v0, :cond_d

    .line 230
    .line 231
    new-instance v4, Landroid/content/Intent;

    .line 232
    .line 233
    iget-object v0, v0, Lt04;->a:Landroid/content/Intent;

    .line 234
    .line 235
    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 236
    .line 237
    .line 238
    :cond_d
    :goto_5
    if-eqz v4, :cond_e

    .line 239
    .line 240
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 241
    .line 242
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    invoke-static {v0, v4}, Lai8;->p(Landroid/content/Context;Landroid/content/Intent;)V

    .line 247
    .line 248
    .line 249
    :cond_e
    sget-object v0, Ltb1;->c:Lgj5;

    .line 250
    .line 251
    sget-object v1, Lrb1;->DRIVE_NOT_CONNECTED:Lrb1;

    .line 252
    .line 253
    invoke-virtual {v0, v1}, Lzy4;->i(Ljava/lang/Object;)V

    .line 254
    .line 255
    .line 256
    goto :goto_6

    .line 257
    :cond_f
    sget-object v1, Lpi1;->a:Lpi1;

    .line 258
    .line 259
    invoke-static {p1, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    move-result v1

    .line 263
    if-eqz v1, :cond_10

    .line 264
    .line 265
    sget-object v0, Ltb1;->c:Lgj5;

    .line 266
    .line 267
    sget-object v1, Lrb1;->DRIVE_NOT_CONNECTED:Lrb1;

    .line 268
    .line 269
    invoke-virtual {v0, v1}, Lzy4;->i(Ljava/lang/Object;)V

    .line 270
    .line 271
    .line 272
    goto :goto_6

    .line 273
    :cond_10
    instance-of v1, p1, Lti1;

    .line 274
    .line 275
    if-eqz v1, :cond_11

    .line 276
    .line 277
    sget-object v0, Ltb1;->c:Lgj5;

    .line 278
    .line 279
    sget-object v1, Lrb1;->TEMP_CONNECTION_ERROR:Lrb1;

    .line 280
    .line 281
    invoke-virtual {v0, v1}, Lzy4;->i(Ljava/lang/Object;)V

    .line 282
    .line 283
    .line 284
    goto :goto_6

    .line 285
    :cond_11
    instance-of v1, p1, Lri1;

    .line 286
    .line 287
    if-eqz v1, :cond_12

    .line 288
    .line 289
    sget-object v3, Lvr6;->INSTANCE:Lvr6;

    .line 290
    .line 291
    invoke-virtual {p0}, Ltb1;->h()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v4

    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    .line 296
    .line 297
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v5

    .line 307
    const/4 v7, 0x4

    .line 308
    const/4 v8, 0x0

    .line 309
    const/4 v6, 0x0

    .line 310
    invoke-static/range {v3 .. v8}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 311
    .line 312
    .line 313
    sget-object v0, Ltb1;->c:Lgj5;

    .line 314
    .line 315
    sget-object v1, Lrb1;->DRIVE_NOT_CONNECTED:Lrb1;

    .line 316
    .line 317
    invoke-virtual {v0, v1}, Lzy4;->i(Ljava/lang/Object;)V

    .line 318
    .line 319
    .line 320
    :goto_6
    sput-boolean v2, Ltb1;->f:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 321
    .line 322
    monitor-exit p0

    .line 323
    return-object p1

    .line 324
    :cond_12
    :try_start_2
    new-instance p1, Lmn5;

    .line 325
    .line 326
    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    .line 327
    .line 328
    .line 329
    throw p1

    .line 330
    :goto_7
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 331
    throw p1
.end method

.method public abstract b(Lzv1;)Lxh2;
.end method

.method public abstract c(Lfo2;)Lno2;
.end method

.method public abstract d(Lrf8;)Lag8;
.end method

.method public abstract e(Ljava/lang/String;)Z
.end method

.method public abstract f()Lui1;
.end method

.method public abstract g()Ldd1;
.end method

.method public abstract h()Ljava/lang/String;
.end method

.method public final i()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ltb1;->g()Ldd1;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ldd1;->getMainCloudFolderName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public abstract j()Lui1;
.end method

.method public abstract k()Lui1;
.end method

.method public abstract l()Lui1;
.end method

.method public abstract m()Ljm1;
.end method

.method public abstract n()Lorg/swiftapps/swiftbackup/cloud/model/CloudResult;
.end method
