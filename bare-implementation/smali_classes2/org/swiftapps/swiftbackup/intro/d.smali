.class public final Lorg/swiftapps/swiftbackup/intro/d;
.super Lqo0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/swiftapps/swiftbackup/intro/d$a;,
        Lorg/swiftapps/swiftbackup/intro/d$b;
    }
.end annotation


# instance fields
.field public e:Lbl7;

.field public final f:Lex6;

.field public final g:Lex6;

.field public final h:Lex6;

.field public final i:Lex6;

.field public final j:Lix6;

.field public final k:Lex6;

.field public final l:Lix6;

.field public final m:Lix6;

.field public final n:Lex6;

.field public final o:Lqf4;

.field public final p:Lnf4;


# direct methods
.method public constructor <init>()V
    .locals 21

    .line 1
    move-object/from16 v2, p0

    .line 2
    .line 3
    invoke-direct {v2}, Lqo0;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lex6;

    .line 7
    .line 8
    invoke-direct {v0}, Lzy4;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, v2, Lorg/swiftapps/swiftbackup/intro/d;->f:Lex6;

    .line 12
    .line 13
    new-instance v0, Lex6;

    .line 14
    .line 15
    invoke-direct {v0}, Lzy4;-><init>()V

    .line 16
    .line 17
    .line 18
    sget-object v1, Ldz5;->a:Ldz5;

    .line 19
    .line 20
    invoke-static {}, Ldz5;->n()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Lex6;->k(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, v2, Lorg/swiftapps/swiftbackup/intro/d;->g:Lex6;

    .line 32
    .line 33
    new-instance v0, Lex6;

    .line 34
    .line 35
    invoke-direct {v0}, Lzy4;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string v1, "android.permission.POST_NOTIFICATIONS"

    .line 39
    .line 40
    invoke-static {v1}, Ldz5;->h(Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Lex6;->k(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    iput-object v0, v2, Lorg/swiftapps/swiftbackup/intro/d;->h:Lex6;

    .line 52
    .line 53
    new-instance v0, Lex6;

    .line 54
    .line 55
    invoke-direct {v0}, Lzy4;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-static {}, Ldz5;->k()Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v0, v1}, Lex6;->k(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    iput-object v0, v2, Lorg/swiftapps/swiftbackup/intro/d;->i:Lex6;

    .line 70
    .line 71
    new-instance v0, Lix6;

    .line 72
    .line 73
    invoke-direct {v0}, Lix6;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-static {}, Lorg/swiftapps/swiftbackup/intro/d;->j()Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v0, v1}, Lix6;->k(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    iput-object v0, v2, Lorg/swiftapps/swiftbackup/intro/d;->j:Lix6;

    .line 88
    .line 89
    new-instance v0, Lex6;

    .line 90
    .line 91
    invoke-direct {v0}, Lzy4;-><init>()V

    .line 92
    .line 93
    .line 94
    sget-object v1, Lorg/swiftapps/swiftbackup/intro/d$a;->IDLE:Lorg/swiftapps/swiftbackup/intro/d$a;

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Lex6;->k(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    iput-object v0, v2, Lorg/swiftapps/swiftbackup/intro/d;->k:Lex6;

    .line 100
    .line 101
    new-instance v0, Lix6;

    .line 102
    .line 103
    invoke-direct {v0}, Lix6;-><init>()V

    .line 104
    .line 105
    .line 106
    iput-object v0, v2, Lorg/swiftapps/swiftbackup/intro/d;->l:Lix6;

    .line 107
    .line 108
    new-instance v0, Lix6;

    .line 109
    .line 110
    invoke-direct {v0}, Lix6;-><init>()V

    .line 111
    .line 112
    .line 113
    iput-object v0, v2, Lorg/swiftapps/swiftbackup/intro/d;->m:Lix6;

    .line 114
    .line 115
    new-instance v0, Lex6;

    .line 116
    .line 117
    invoke-direct {v0}, Lzy4;-><init>()V

    .line 118
    .line 119
    .line 120
    iput-object v0, v2, Lorg/swiftapps/swiftbackup/intro/d;->n:Lex6;

    .line 121
    .line 122
    new-instance v8, Lqf4;

    .line 123
    .line 124
    new-instance v9, Lnu;

    .line 125
    .line 126
    const/4 v0, 0x6

    .line 127
    invoke-direct {v9, v0}, Lnu;-><init>(I)V

    .line 128
    .line 129
    .line 130
    new-instance v3, Lx11;

    .line 131
    .line 132
    sget-object v12, Lzn4;->a:Lzn4;

    .line 133
    .line 134
    const/16 v16, 0x0

    .line 135
    .line 136
    const/16 v17, 0x3

    .line 137
    .line 138
    const/4 v11, 0x1

    .line 139
    const-class v13, Lzn4;

    .line 140
    .line 141
    const-string v14, "onMain"

    .line 142
    .line 143
    const-string v15, "onMain(Lkotlin/jvm/functions/Function0;)V"

    .line 144
    .line 145
    move-object v10, v3

    .line 146
    invoke-direct/range {v10 .. v17}, Lx11;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 147
    .line 148
    .line 149
    new-instance v4, Lqg1;

    .line 150
    .line 151
    const/16 v19, 0x0

    .line 152
    .line 153
    const/16 v20, 0x2

    .line 154
    .line 155
    const/4 v14, 0x0

    .line 156
    sget-object v15, Lzn7;->q:Lyn7;

    .line 157
    .line 158
    const-class v16, Lyn7;

    .line 159
    .line 160
    const-string v17, "getPreferredStorageTypeForIntro"

    .line 161
    .line 162
    const-string v18, "getPreferredStorageTypeForIntro$app()Lorg/swiftapps/swiftbackup/settings/Storage;"

    .line 163
    .line 164
    move-object v13, v4

    .line 165
    invoke-direct/range {v13 .. v20}, Lqg1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 166
    .line 167
    .line 168
    new-instance v11, Lou;

    .line 169
    .line 170
    const/16 v0, 0xa

    .line 171
    .line 172
    invoke-direct {v11, v0}, Lou;-><init>(I)V

    .line 173
    .line 174
    .line 175
    new-instance v14, Ld7;

    .line 176
    .line 177
    const/16 v0, 0xf

    .line 178
    .line 179
    invoke-direct {v14, v2, v0}, Ld7;-><init>(Ljava/lang/Object;I)V

    .line 180
    .line 181
    .line 182
    new-instance v0, Loh1;

    .line 183
    .line 184
    const/4 v6, 0x0

    .line 185
    const/4 v7, 0x4

    .line 186
    const/4 v1, 0x1

    .line 187
    const-class v3, Lorg/swiftapps/swiftbackup/intro/d;

    .line 188
    .line 189
    const-string v4, "onStorageSetupFailure"

    .line 190
    .line 191
    const-string v5, "onStorageSetupFailure(Lorg/swiftapps/swiftbackup/intro/IntroStorageSetupCoordinator$Failure;)V"

    .line 192
    .line 193
    invoke-direct/range {v0 .. v7}, Loh1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 194
    .line 195
    .line 196
    move-object v7, v0

    .line 197
    move-object v0, v2

    .line 198
    move-object v1, v8

    .line 199
    move-object v2, v9

    .line 200
    move-object v3, v10

    .line 201
    move-object v5, v11

    .line 202
    move-object v4, v13

    .line 203
    move-object v6, v14

    .line 204
    invoke-direct/range {v1 .. v7}, Lqf4;-><init>(Lnu;Lx11;Lqg1;Lou;Ld7;Loh1;)V

    .line 205
    .line 206
    .line 207
    iput-object v1, v0, Lorg/swiftapps/swiftbackup/intro/d;->o:Lqf4;

    .line 208
    .line 209
    new-instance v8, Lnf4;

    .line 210
    .line 211
    new-instance v9, Ldq;

    .line 212
    .line 213
    const/16 v1, 0x8

    .line 214
    .line 215
    invoke-direct {v9, v1}, Ldq;-><init>(I)V

    .line 216
    .line 217
    .line 218
    new-instance v4, Lhl0;

    .line 219
    .line 220
    const/16 v16, 0x0

    .line 221
    .line 222
    const/16 v17, 0x3

    .line 223
    .line 224
    const/4 v11, 0x1

    .line 225
    const-class v13, Lzn4;

    .line 226
    .line 227
    const-string v14, "onMain"

    .line 228
    .line 229
    const-string v15, "onMain(Lkotlin/jvm/functions/Function0;)V"

    .line 230
    .line 231
    move-object v10, v4

    .line 232
    invoke-direct/range {v10 .. v17}, Lhl0;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 233
    .line 234
    .line 235
    new-instance v11, Lsm;

    .line 236
    .line 237
    const/16 v1, 0x9

    .line 238
    .line 239
    invoke-direct {v11, v1}, Lsm;-><init>(I)V

    .line 240
    .line 241
    .line 242
    new-instance v6, Lk00;

    .line 243
    .line 244
    move-object v0, v6

    .line 245
    const/4 v6, 0x0

    .line 246
    const/4 v7, 0x2

    .line 247
    const/4 v1, 0x1

    .line 248
    const-class v3, Lorg/swiftapps/swiftbackup/intro/d;

    .line 249
    .line 250
    const-string v4, "onRootPermissionStateChanged"

    .line 251
    .line 252
    const-string v5, "onRootPermissionStateChanged(Lorg/swiftapps/swiftbackup/intro/IntroRootPermissionCoordinator$State;)V"

    .line 253
    .line 254
    move-object/from16 v2, p0

    .line 255
    .line 256
    invoke-direct/range {v0 .. v7}, Lk00;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 257
    .line 258
    .line 259
    move-object v12, v0

    .line 260
    new-instance v13, Lak;

    .line 261
    .line 262
    const/16 v0, 0x16

    .line 263
    .line 264
    invoke-direct {v13, v2, v0}, Lak;-><init>(Ljava/lang/Object;I)V

    .line 265
    .line 266
    .line 267
    new-instance v0, Li54;

    .line 268
    .line 269
    const/4 v7, 0x1

    .line 270
    const/4 v1, 0x0

    .line 271
    const-class v3, Lorg/swiftapps/swiftbackup/intro/d;

    .line 272
    .line 273
    const-string v4, "grantPermissionsWithRootOrShizuku"

    .line 274
    .line 275
    const-string v5, "grantPermissionsWithRootOrShizuku()V"

    .line 276
    .line 277
    invoke-direct/range {v0 .. v7}, Li54;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 278
    .line 279
    .line 280
    move-object v3, v8

    .line 281
    move-object v8, v0

    .line 282
    move-object v0, v2

    .line 283
    move-object v2, v3

    .line 284
    move-object v3, v9

    .line 285
    move-object v4, v10

    .line 286
    move-object v5, v11

    .line 287
    move-object v6, v12

    .line 288
    move-object v7, v13

    .line 289
    invoke-direct/range {v2 .. v8}, Lnf4;-><init>(Ldq;Lhl0;Lsm;Lk00;Lak;Li54;)V

    .line 290
    .line 291
    .line 292
    iput-object v2, v0, Lorg/swiftapps/swiftbackup/intro/d;->p:Lnf4;

    .line 293
    .line 294
    return-void
.end method

.method public static j()Z
    .locals 1

    .line 1
    sget-object v0, Ld45;->b:Ld45;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ld45;->a()Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    sget-object v0, Ldz5;->a:Ldz5;

    .line 13
    .line 14
    invoke-static {}, Ldz5;->n()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    const-string v0, "android.permission.POST_NOTIFICATIONS"

    .line 21
    .line 22
    invoke-static {v0}, Ldz5;->h(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    invoke-static {}, Ldz5;->k()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    const/4 v0, 0x1

    .line 35
    return v0

    .line 36
    :cond_0
    const/4 v0, 0x0

    .line 37
    return v0
.end method


# virtual methods
.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/intro/d;->o:Lqf4;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    :try_start_0
    iput-boolean v1, v0, Lqf4;->h:Z

    .line 6
    .line 7
    sget-object v2, Lpf4;->IDLE:Lpf4;

    .line 8
    .line 9
    iput-object v2, v0, Lqf4;->g:Lpf4;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    .line 11
    monitor-exit v0

    .line 12
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/intro/d;->p:Lnf4;

    .line 13
    .line 14
    monitor-enter v2

    .line 15
    :try_start_1
    iput-boolean v1, v2, Lnf4;->h:Z

    .line 16
    .line 17
    sget-object v0, Lmf4;->IDLE:Lmf4;

    .line 18
    .line 19
    iput-object v0, v2, Lnf4;->g:Lmf4;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    .line 21
    monitor-exit v2

    .line 22
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/intro/d;->e:Lbl7;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lci4;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/intro/d;->e:Lbl7;

    .line 31
    .line 32
    invoke-super {p0}, La55;->b()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    throw p0

    .line 39
    :catchall_1
    move-exception p0

    .line 40
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 41
    throw p0
.end method

.method public final k(Z)V
    .locals 2

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/intro/d;->p:Lnf4;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-boolean v0, p0, Lnf4;->h:Z

    .line 5
    .line 6
    if-nez v0, :cond_2

    .line 7
    .line 8
    iget-object v0, p0, Lnf4;->g:Lmf4;

    .line 9
    .line 10
    sget-object v1, Lmf4;->AWAITING_SHIZUKU:Lmf4;

    .line 11
    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    if-eqz p1, :cond_1

    .line 16
    .line 17
    sget-object p1, Lmf4;->GRANTING_PERMISSIONS:Lmf4;

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lnf4;->a(Lmf4;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lnf4;->f:Li54;

    .line 23
    .line 24
    invoke-virtual {p1}, Li54;->invoke()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    goto :goto_2

    .line 30
    :cond_1
    sget-object p1, Lmf4;->IDLE:Lmf4;

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Lnf4;->a(Lmf4;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    :goto_0
    monitor-exit p0

    .line 36
    return-void

    .line 37
    :cond_2
    :goto_1
    monitor-exit p0

    .line 38
    return-void

    .line 39
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    throw p1
.end method

.method public final l(Lkv1;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const-string v2, "Restored Blacklist data: "

    .line 6
    .line 7
    const-string v3, "Restored Favorite apps: "

    .line 8
    .line 9
    const-string v4, "Restored Schedules: "

    .line 10
    .line 11
    const-string v5, "Restored Configs: "

    .line 12
    .line 13
    const-string v6, "Restored App Labels: "

    .line 14
    .line 15
    instance-of v7, v0, Luf4;

    .line 16
    .line 17
    if-eqz v7, :cond_0

    .line 18
    .line 19
    move-object v7, v0

    .line 20
    check-cast v7, Luf4;

    .line 21
    .line 22
    iget v8, v7, Luf4;->c:I

    .line 23
    .line 24
    const/high16 v9, -0x80000000

    .line 25
    .line 26
    and-int v10, v8, v9

    .line 27
    .line 28
    if-eqz v10, :cond_0

    .line 29
    .line 30
    sub-int/2addr v8, v9

    .line 31
    iput v8, v7, Luf4;->c:I

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    new-instance v7, Luf4;

    .line 35
    .line 36
    invoke-direct {v7, v1, v0}, Luf4;-><init>(Lorg/swiftapps/swiftbackup/intro/d;Lkv1;)V

    .line 37
    .line 38
    .line 39
    :goto_0
    iget-object v0, v7, Luf4;->a:Ljava/lang/Object;

    .line 40
    .line 41
    iget v8, v7, Luf4;->c:I

    .line 42
    .line 43
    const/4 v9, 0x0

    .line 44
    const/4 v10, 0x1

    .line 45
    if-eqz v8, :cond_2

    .line 46
    .line 47
    if-ne v8, v10, :cond_1

    .line 48
    .line 49
    :try_start_0
    invoke-static {v0}, Llg7;->H(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :catchall_0
    move-exception v0

    .line 54
    goto/16 :goto_8

    .line 55
    .line 56
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 57
    .line 58
    invoke-static {v0}, Ll0;->e(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return-object v9

    .line 62
    :cond_2
    invoke-static {v0}, Llg7;->H(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    :try_start_1
    sget-object v0, Ld45;->b:Ld45;

    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    invoke-static {}, Ld45;->a()Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    if-eqz v0, :cond_3

    .line 75
    .line 76
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->isAnonymous()Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 81
    .line 82
    .line 83
    move-result-object v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 84
    :catch_0
    :cond_3
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 85
    .line 86
    invoke-static {v9, v0}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v8

    .line 90
    if-eqz v8, :cond_4

    .line 91
    .line 92
    return-object v0

    .line 93
    :cond_4
    const v0, 0x7f1305a1

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, v0}, Lqo0;->h(I)V

    .line 97
    .line 98
    .line 99
    :try_start_2
    sget-object v0, Lgg3;->a:Lgg3;

    .line 100
    .line 101
    iput v10, v7, Luf4;->c:I

    .line 102
    .line 103
    const-wide/16 v8, 0x4e20

    .line 104
    .line 105
    invoke-virtual {v0, v8, v9, v7}, Lgg3;->k(JLkv1;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 109
    sget-object v7, Lyx1;->a:Lyx1;

    .line 110
    .line 111
    if-ne v0, v7, :cond_5

    .line 112
    .line 113
    return-object v7

    .line 114
    :cond_5
    :goto_1
    :try_start_3
    check-cast v0, Ljava/lang/Boolean;

    .line 115
    .line 116
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-nez v0, :cond_6

    .line 121
    .line 122
    sget-object v11, Lvr6;->INSTANCE:Lvr6;

    .line 123
    .line 124
    iget-object v12, v1, La55;->b:Ljava/lang/String;

    .line 125
    .line 126
    const-string v13, "Firebase unavailable. Skipping first-run cloud settings restore."

    .line 127
    .line 128
    const/4 v15, 0x4

    .line 129
    const/16 v16, 0x0

    .line 130
    .line 131
    const/4 v14, 0x0

    .line 132
    invoke-static/range {v11 .. v16}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 136
    .line 137
    invoke-virtual {v1}, Lqo0;->f()V

    .line 138
    .line 139
    .line 140
    return-object v0

    .line 141
    :cond_6
    :try_start_4
    invoke-static {v1}, Lha7;->b(Lorg/swiftapps/swiftbackup/intro/d;)Z

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    if-nez v0, :cond_7

    .line 146
    .line 147
    sget-object v11, Lvr6;->INSTANCE:Lvr6;

    .line 148
    .line 149
    iget-object v12, v1, La55;->b:Ljava/lang/String;

    .line 150
    .line 151
    const-string v13, "Firebase settings read failed. Skipping first-run cloud settings restore."

    .line 152
    .line 153
    const/4 v15, 0x4

    .line 154
    const/16 v16, 0x0

    .line 155
    .line 156
    const/4 v14, 0x0

    .line 157
    invoke-static/range {v11 .. v16}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 161
    .line 162
    invoke-virtual {v1}, Lqo0;->f()V

    .line 163
    .line 164
    .line 165
    return-object v0

    .line 166
    :cond_7
    :try_start_5
    sget-object v11, Lvr6;->INSTANCE:Lvr6;

    .line 167
    .line 168
    iget-object v12, v1, La55;->b:Ljava/lang/String;

    .line 169
    .line 170
    const-string v13, "Restored Settings"

    .line 171
    .line 172
    const/4 v15, 0x4

    .line 173
    const/16 v16, 0x0

    .line 174
    .line 175
    const/4 v14, 0x0

    .line 176
    invoke-static/range {v11 .. v16}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    sget-object v0, Llr4;->a:Llr4;

    .line 180
    .line 181
    invoke-virtual {v0}, Llr4;->b()Z

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    iget-object v12, v1, La55;->b:Ljava/lang/String;

    .line 186
    .line 187
    sget-object v7, Llr4;->e:Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsData;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 188
    .line 189
    const-string v17, "---"

    .line 190
    .line 191
    if-eqz v7, :cond_8

    .line 192
    .line 193
    :try_start_6
    invoke-virtual {v7}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsData;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v7

    .line 197
    if-nez v7, :cond_9

    .line 198
    .line 199
    :cond_8
    move-object/from16 v7, v17

    .line 200
    .line 201
    :cond_9
    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v13

    .line 205
    const/4 v15, 0x4

    .line 206
    const/16 v16, 0x0

    .line 207
    .line 208
    const/4 v14, 0x0

    .line 209
    invoke-static/range {v11 .. v16}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 210
    .line 211
    .line 212
    sget-object v6, Lbr1;->a:Lbr1;

    .line 213
    .line 214
    invoke-virtual {v6}, Lbr1;->b()Z

    .line 215
    .line 216
    .line 217
    move-result v6

    .line 218
    const/16 v18, 0x0

    .line 219
    .line 220
    if-eqz v6, :cond_a

    .line 221
    .line 222
    if-eqz v0, :cond_a

    .line 223
    .line 224
    move v0, v10

    .line 225
    goto :goto_2

    .line 226
    :cond_a
    move/from16 v0, v18

    .line 227
    .line 228
    :goto_2
    iget-object v12, v1, La55;->b:Ljava/lang/String;

    .line 229
    .line 230
    sget-object v6, Lbr1;->e:Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigsData;

    .line 231
    .line 232
    if-eqz v6, :cond_b

    .line 233
    .line 234
    invoke-virtual {v6}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigsData;->getSize()Ljava/lang/Integer;

    .line 235
    .line 236
    .line 237
    move-result-object v6

    .line 238
    if-eqz v6, :cond_b

    .line 239
    .line 240
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 241
    .line 242
    .line 243
    move-result v6

    .line 244
    goto :goto_3

    .line 245
    :cond_b
    move/from16 v6, v18

    .line 246
    .line 247
    :goto_3
    new-instance v7, Ljava/lang/StringBuilder;

    .line 248
    .line 249
    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v13

    .line 259
    const/4 v15, 0x4

    .line 260
    const/16 v16, 0x0

    .line 261
    .line 262
    const/4 v14, 0x0

    .line 263
    invoke-static/range {v11 .. v16}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 264
    .line 265
    .line 266
    sget-object v12, Lc47;->a:Lc47;

    .line 267
    .line 268
    invoke-virtual {v12}, Lc47;->a()Z

    .line 269
    .line 270
    .line 271
    move-result v5

    .line 272
    if-eqz v5, :cond_c

    .line 273
    .line 274
    if-eqz v0, :cond_c

    .line 275
    .line 276
    move v0, v10

    .line 277
    goto :goto_4

    .line 278
    :cond_c
    move/from16 v0, v18

    .line 279
    .line 280
    :goto_4
    iget-object v5, v1, La55;->b:Ljava/lang/String;

    .line 281
    .line 282
    invoke-virtual {v12}, Lc47;->c()Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;

    .line 283
    .line 284
    .line 285
    move-result-object v6

    .line 286
    invoke-virtual {v6}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->getSchedules()Ljava/util/List;

    .line 287
    .line 288
    .line 289
    move-result-object v6

    .line 290
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 291
    .line 292
    .line 293
    move-result v6

    .line 294
    new-instance v7, Ljava/lang/StringBuilder;

    .line 295
    .line 296
    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v6

    .line 306
    const/4 v8, 0x4

    .line 307
    const/4 v9, 0x0

    .line 308
    const/4 v7, 0x0

    .line 309
    move-object v4, v11

    .line 310
    invoke-static/range {v4 .. v9}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 311
    .line 312
    .line 313
    sget-object v4, Lc64;->m:Lix6;

    .line 314
    .line 315
    invoke-virtual {v12}, Lc47;->c()Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;

    .line 316
    .line 317
    .line 318
    move-result-object v5

    .line 319
    invoke-virtual {v5}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->getSchedules()Ljava/util/List;

    .line 320
    .line 321
    .line 322
    move-result-object v5

    .line 323
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    .line 324
    .line 325
    .line 326
    move-result v5

    .line 327
    xor-int/2addr v5, v10

    .line 328
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 329
    .line 330
    .line 331
    move-result-object v5

    .line 332
    invoke-virtual {v4, v5}, Lix6;->k(Ljava/lang/Object;)V

    .line 333
    .line 334
    .line 335
    sget-object v4, Lv53;->a:Lv53;

    .line 336
    .line 337
    invoke-virtual {v4}, Lv53;->c()Z

    .line 338
    .line 339
    .line 340
    move-result v4

    .line 341
    if-eqz v4, :cond_d

    .line 342
    .line 343
    if-eqz v0, :cond_d

    .line 344
    .line 345
    move v0, v10

    .line 346
    goto :goto_5

    .line 347
    :cond_d
    move/from16 v0, v18

    .line 348
    .line 349
    :goto_5
    iget-object v4, v1, La55;->b:Ljava/lang/String;

    .line 350
    .line 351
    sget-object v5, Lv53;->c:Ljava/util/LinkedHashMap;

    .line 352
    .line 353
    invoke-interface {v5}, Ljava/util/Map;->size()I

    .line 354
    .line 355
    .line 356
    move-result v5

    .line 357
    new-instance v6, Ljava/lang/StringBuilder;

    .line 358
    .line 359
    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v5

    .line 369
    const/4 v7, 0x4

    .line 370
    const/4 v8, 0x0

    .line 371
    const/4 v6, 0x0

    .line 372
    move-object v3, v11

    .line 373
    invoke-static/range {v3 .. v8}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 374
    .line 375
    .line 376
    sget-object v3, Lgs0;->a:Lgs0;

    .line 377
    .line 378
    invoke-virtual {v3}, Lgs0;->b()Z

    .line 379
    .line 380
    .line 381
    move-result v3

    .line 382
    if-eqz v3, :cond_e

    .line 383
    .line 384
    if-eqz v0, :cond_e

    .line 385
    .line 386
    goto :goto_6

    .line 387
    :cond_e
    move/from16 v10, v18

    .line 388
    .line 389
    :goto_6
    iget-object v3, v1, La55;->b:Ljava/lang/String;

    .line 390
    .line 391
    sget-object v0, Lgs0;->c:Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistData;

    .line 392
    .line 393
    if-eqz v0, :cond_f

    .line 394
    .line 395
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistData;->getItems()Ljava/util/List;

    .line 396
    .line 397
    .line 398
    move-result-object v0

    .line 399
    if-eqz v0, :cond_f

    .line 400
    .line 401
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 402
    .line 403
    .line 404
    move-result v0

    .line 405
    new-instance v4, Ljava/lang/Integer;

    .line 406
    .line 407
    invoke-direct {v4, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 408
    .line 409
    .line 410
    goto :goto_7

    .line 411
    :cond_f
    move-object/from16 v4, v17

    .line 412
    .line 413
    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 414
    .line 415
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 416
    .line 417
    .line 418
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 419
    .line 420
    .line 421
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object v4

    .line 425
    const/4 v6, 0x4

    .line 426
    const/4 v7, 0x0

    .line 427
    const/4 v5, 0x0

    .line 428
    move-object v2, v11

    .line 429
    invoke-static/range {v2 .. v7}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 430
    .line 431
    .line 432
    if-nez v10, :cond_10

    .line 433
    .line 434
    iget-object v3, v1, La55;->b:Ljava/lang/String;

    .line 435
    .line 436
    const-string v4, "Some first-run cloud data reads failed. Skipping first-run cloud settings restore."

    .line 437
    .line 438
    const/4 v6, 0x4

    .line 439
    const/4 v7, 0x0

    .line 440
    const/4 v5, 0x0

    .line 441
    move-object v2, v11

    .line 442
    invoke-static/range {v2 .. v7}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 443
    .line 444
    .line 445
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 446
    .line 447
    invoke-virtual {v1}, Lqo0;->f()V

    .line 448
    .line 449
    .line 450
    return-object v0

    .line 451
    :cond_10
    invoke-virtual {v1}, Lqo0;->f()V

    .line 452
    .line 453
    .line 454
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 455
    .line 456
    return-object v0

    .line 457
    :goto_8
    invoke-virtual {v1}, Lqo0;->f()V

    .line 458
    .line 459
    .line 460
    throw v0
.end method

.method public final m(ZLorg/swiftapps/swiftbackup/intro/IntroActivity;)V
    .locals 7

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 7
    .line 8
    iget-object v1, p0, La55;->b:Ljava/lang/String;

    .line 9
    .line 10
    const/4 v4, 0x4

    .line 11
    const/4 v5, 0x0

    .line 12
    const-string v2, "Signing in Anonymously"

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-static/range {v0 .. v5}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    sget-object p1, Lorg/swiftapps/swiftbackup/intro/d$b;->RUNNING:Lorg/swiftapps/swiftbackup/intro/d$b;

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lorg/swiftapps/swiftbackup/intro/d;->p(Lorg/swiftapps/swiftbackup/intro/d$b;)V

    .line 21
    .line 22
    .line 23
    sget-object p1, Ld45;->b:Ld45;

    .line 24
    .line 25
    new-instance p2, Lcz;

    .line 26
    .line 27
    const/16 v0, 0xc

    .line 28
    .line 29
    invoke-direct {p2, p0, v0}, Lcz;-><init>(Ljava/lang/Object;I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    const/4 p0, 0x0

    .line 36
    :try_start_0
    sget-object v0, Lorg/swiftapps/swiftbackup/common/V;->INSTANCE:Lorg/swiftapps/swiftbackup/common/V;

    .line 37
    .line 38
    invoke-static {}, Lb45;->a()Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Lorg/swiftapps/swiftbackup/common/V;->setNon(Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;)V

    .line 43
    .line 44
    .line 45
    new-instance v0, Lc45;

    .line 46
    .line 47
    invoke-direct {v0, p0}, Lc45;-><init>(Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    const-string v1, "d45"

    .line 53
    .line 54
    const-string v2, "clearAnonymousSignIn"

    .line 55
    .line 56
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    sget-object v1, Lorg/swiftapps/swiftbackup/common/V;->INSTANCE:Lorg/swiftapps/swiftbackup/common/V;

    .line 60
    .line 61
    invoke-virtual {v1, p0}, Lorg/swiftapps/swiftbackup/common/V;->setNon(Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;)V

    .line 62
    .line 63
    .line 64
    new-instance p0, Lc45;

    .line 65
    .line 66
    invoke-direct {p0, v0}, Lc45;-><init>(Ljava/lang/Exception;)V

    .line 67
    .line 68
    .line 69
    move-object v0, p0

    .line 70
    :goto_0
    invoke-virtual {p2, v0}, Lcz;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Ld45;->b()V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :cond_0
    sget-object v1, Lvr6;->INSTANCE:Lvr6;

    .line 78
    .line 79
    iget-object v2, p0, La55;->b:Ljava/lang/String;

    .line 80
    .line 81
    const/4 v5, 0x4

    .line 82
    const/4 v6, 0x0

    .line 83
    const-string v3, "Signing in with Google"

    .line 84
    .line 85
    const/4 v4, 0x0

    .line 86
    invoke-static/range {v1 .. v6}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    sget-object p1, Lorg/swiftapps/swiftbackup/intro/d$b;->RUNNING:Lorg/swiftapps/swiftbackup/intro/d$b;

    .line 90
    .line 91
    invoke-virtual {p0, p1}, Lorg/swiftapps/swiftbackup/intro/d;->p(Lorg/swiftapps/swiftbackup/intro/d$b;)V

    .line 92
    .line 93
    .line 94
    const/16 p0, 0x3eb

    .line 95
    .line 96
    invoke-static {p2, p0}, Lhz3;->c(Landroid/app/Activity;I)V

    .line 97
    .line 98
    .line 99
    return-void
.end method

.method public final n(Landroid/content/Intent;ZLmt3;)Z
    .locals 7

    .line 1
    new-instance v0, Lwf4;

    .line 2
    .line 3
    const-string v5, "hideProgress()V"

    .line 4
    .line 5
    const/4 v6, 0x0

    .line 6
    const/4 v1, 0x0

    .line 7
    const-class v3, Lorg/swiftapps/swiftbackup/intro/d;

    .line 8
    .line 9
    const-string v4, "hideProgress"

    .line 10
    .line 11
    move-object v2, p0

    .line 12
    invoke-direct/range {v0 .. v6}, Lbu3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 13
    .line 14
    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    const p0, 0x7f130293

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, p0}, Lqo0;->h(I)V

    .line 21
    .line 22
    .line 23
    :cond_0
    new-instance p0, Lbz;

    .line 24
    .line 25
    const/4 v1, 0x6

    .line 26
    invoke-direct {p0, v1, v2, p1}, Lbz;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-interface {p3, p0}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    check-cast p0, Ljava/lang/Boolean;

    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-eqz p2, :cond_1

    .line 43
    .line 44
    if-nez p1, :cond_1

    .line 45
    .line 46
    invoke-virtual {v0}, Lwf4;->invoke()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    return p0
.end method

.method public final o()V
    .locals 4

    .line 1
    invoke-static {}, Lorg/swiftapps/swiftbackup/intro/d;->j()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/intro/d;->j:Lix6;

    .line 6
    .line 7
    invoke-virtual {v1}, Lzy4;->d()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-static {v2, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v1, v0}, Lix6;->k(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    sget-object v0, Ldz5;->a:Ldz5;

    .line 29
    .line 30
    invoke-static {}, Ldz5;->n()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/intro/d;->g:Lex6;

    .line 39
    .line 40
    invoke-virtual {v1, v0}, Lex6;->k(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    const-string v0, "android.permission.POST_NOTIFICATIONS"

    .line 44
    .line 45
    invoke-static {v0}, Ldz5;->h(Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/intro/d;->h:Lex6;

    .line 54
    .line 55
    invoke-virtual {v1, v0}, Lex6;->k(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    invoke-static {}, Ldz5;->k()Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/intro/d;->i:Lex6;

    .line 67
    .line 68
    invoke-virtual {p0, v0}, Lex6;->k(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public final p(Lorg/swiftapps/swiftbackup/intro/d$b;)V
    .locals 4

    .line 1
    invoke-static {}, Lorg/swiftapps/swiftbackup/intro/d;->j()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/intro/d;->j:Lix6;

    .line 6
    .line 7
    invoke-virtual {v1}, Lzy4;->d()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-static {v2, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v1, v0}, Lix6;->k(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    sget-object v0, Lorg/swiftapps/swiftbackup/intro/d$b;->RUNNING:Lorg/swiftapps/swiftbackup/intro/d$b;

    .line 29
    .line 30
    if-ne p1, v0, :cond_1

    .line 31
    .line 32
    const v0, 0x7f13042d

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v0}, Lqo0;->h(I)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {p0}, Lqo0;->f()V

    .line 40
    .line 41
    .line 42
    :goto_0
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/intro/d;->f:Lex6;

    .line 43
    .line 44
    invoke-virtual {p0, p1}, Lex6;->k(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method
