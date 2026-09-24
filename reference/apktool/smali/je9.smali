.class public abstract Lje9;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final f:Ljava/lang/Object;

.field public static volatile g:Lnb9;

.field public static final h:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final a:Lea3;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/Object;

.field public volatile d:I

.field public volatile e:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lje9;->f:Ljava/lang/Object;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 16
    .line 17
    .line 18
    sput-object v0, Lje9;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 19
    .line 20
    return-void
.end method

.method public synthetic constructor <init>(Lea3;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lje9;->d:I

    .line 6
    .line 7
    iget-object v0, p1, Lea3;->b:Ljava/lang/Comparable;

    .line 8
    .line 9
    check-cast v0, Landroid/net/Uri;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iput-object p1, p0, Lje9;->a:Lea3;

    .line 14
    .line 15
    iput-object p2, p0, Lje9;->b:Ljava/lang/String;

    .line 16
    .line 17
    iput-object p3, p0, Lje9;->c:Ljava/lang/Object;

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    const-string p0, "Must pass a valid SharedPreferences file name or ContentProvider URI"

    .line 21
    .line 22
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 p0, 0x0

    .line 26
    throw p0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 4

    .line 1
    sget-object v0, Lje9;->g:Lnb9;

    .line 2
    .line 3
    if-nez v0, :cond_5

    .line 4
    .line 5
    sget-object v0, Lje9;->f:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lje9;->g:Lnb9;

    .line 9
    .line 10
    if-nez v1, :cond_4

    .line 11
    .line 12
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 13
    :try_start_1
    sget-object v1, Lje9;->g:Lnb9;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    move-object p0, v2

    .line 22
    :cond_0
    if-eqz v1, :cond_1

    .line 23
    .line 24
    iget-object v1, v1, Lnb9;->a:Landroid/content/Context;

    .line 25
    .line 26
    if-eq v1, p0, :cond_3

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto :goto_3

    .line 31
    :cond_1
    :goto_0
    invoke-static {}, Ltb9;->b()V

    .line 32
    .line 33
    .line 34
    invoke-static {}, Lne9;->a()V

    .line 35
    .line 36
    .line 37
    const-class v1, Lwc9;

    .line 38
    .line 39
    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    :try_start_2
    sget-object v2, Lwc9;->d:Lwc9;

    .line 41
    .line 42
    if-eqz v2, :cond_2

    .line 43
    .line 44
    iget-object v3, v2, Lwc9;->b:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v3, Landroid/content/Context;

    .line 47
    .line 48
    if-eqz v3, :cond_2

    .line 49
    .line 50
    iget-object v2, v2, Lwc9;->c:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v2, Ltc9;

    .line 53
    .line 54
    if-eqz v2, :cond_2

    .line 55
    .line 56
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    sget-object v3, Lwc9;->d:Lwc9;

    .line 61
    .line 62
    iget-object v3, v3, Lwc9;->c:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v3, Ltc9;

    .line 65
    .line 66
    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :catchall_1
    move-exception p0

    .line 71
    goto :goto_2

    .line 72
    :cond_2
    :goto_1
    const/4 v2, 0x0

    .line 73
    sput-object v2, Lwc9;->d:Lwc9;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 74
    .line 75
    :try_start_3
    monitor-exit v1

    .line 76
    new-instance v1, Ljq6;

    .line 77
    .line 78
    const/16 v2, 0x17

    .line 79
    .line 80
    invoke-direct {v1, p0, v2}, Ljq6;-><init>(Ljava/lang/Object;I)V

    .line 81
    .line 82
    .line 83
    invoke-static {v1}, Lms8;->T(Lxe9;)Lxe9;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    new-instance v2, Lnb9;

    .line 88
    .line 89
    invoke-direct {v2, p0, v1}, Lnb9;-><init>(Landroid/content/Context;Lxe9;)V

    .line 90
    .line 91
    .line 92
    sput-object v2, Lje9;->g:Lnb9;

    .line 93
    .line 94
    sget-object p0, Lje9;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 95
    .line 96
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 97
    .line 98
    .line 99
    :cond_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 100
    goto :goto_4

    .line 101
    :goto_2
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 102
    :try_start_5
    throw p0

    .line 103
    :goto_3
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 104
    :try_start_6
    throw p0

    .line 105
    :catchall_2
    move-exception p0

    .line 106
    goto :goto_5

    .line 107
    :cond_4
    :goto_4
    monitor-exit v0

    .line 108
    return-void

    .line 109
    :goto_5
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 110
    throw p0

    .line 111
    :cond_5
    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public final b()Ljava/lang/Object;
    .locals 11

    .line 1
    sget-object v0, Lje9;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lje9;->d:I

    .line 8
    .line 9
    if-ge v1, v0, :cond_11

    .line 10
    .line 11
    monitor-enter p0

    .line 12
    :try_start_0
    iget v1, p0, Lje9;->d:I

    .line 13
    .line 14
    if-ge v1, v0, :cond_10

    .line 15
    .line 16
    sget-object v1, Lje9;->g:Lnb9;

    .line 17
    .line 18
    sget-object v2, Lre9;->a:Lre9;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    iget-object v2, v1, Lnb9;->b:Lxe9;

    .line 24
    .line 25
    invoke-interface {v2}, Lxe9;->zza()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lve9;

    .line 30
    .line 31
    invoke-virtual {v2}, Lve9;->b()Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-eqz v4, :cond_2

    .line 36
    .line 37
    invoke-virtual {v2}, Lve9;->a()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    check-cast v4, Lcc9;

    .line 42
    .line 43
    iget-object v5, p0, Lje9;->a:Lea3;

    .line 44
    .line 45
    iget-object v5, v5, Lea3;->b:Ljava/lang/Comparable;

    .line 46
    .line 47
    check-cast v5, Landroid/net/Uri;

    .line 48
    .line 49
    iget-object v6, p0, Lje9;->b:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    if-eqz v5, :cond_0

    .line 55
    .line 56
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    iget-object v4, v4, Lcc9;->a:Ldg7;

    .line 61
    .line 62
    invoke-virtual {v4, v5}, Ldg7;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    check-cast v4, Ldg7;

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_0
    move-object v4, v3

    .line 70
    :goto_0
    if-nez v4, :cond_1

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_1
    const-string v5, ""

    .line 74
    .line 75
    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    invoke-virtual {v4, v5}, Ldg7;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    check-cast v4, Ljava/lang/String;

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :catchall_0
    move-exception v0

    .line 87
    goto/16 :goto_e

    .line 88
    .line 89
    :cond_2
    :goto_1
    move-object v4, v3

    .line 90
    :goto_2
    const-string v5, "Must call PhenotypeFlag.init() first"

    .line 91
    .line 92
    if-eqz v1, :cond_f

    .line 93
    .line 94
    iget-object v5, p0, Lje9;->a:Lea3;

    .line 95
    .line 96
    iget-object v5, v5, Lea3;->b:Ljava/lang/Comparable;

    .line 97
    .line 98
    check-cast v5, Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    .line 100
    iget-object v6, v1, Lnb9;->a:Landroid/content/Context;

    .line 101
    .line 102
    if-eqz v5, :cond_e

    .line 103
    .line 104
    :try_start_1
    invoke-static {v6, v5}, Ldd9;->a(Landroid/content/Context;Landroid/net/Uri;)Z

    .line 105
    .line 106
    .line 107
    move-result v5

    .line 108
    if-eqz v5, :cond_4

    .line 109
    .line 110
    iget-object v5, v1, Lnb9;->a:Landroid/content/Context;

    .line 111
    .line 112
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    iget-object v6, p0, Lje9;->a:Lea3;

    .line 117
    .line 118
    iget-object v6, v6, Lea3;->b:Ljava/lang/Comparable;

    .line 119
    .line 120
    check-cast v6, Landroid/net/Uri;

    .line 121
    .line 122
    sget-object v7, Ltb9;->g:Lk50;

    .line 123
    .line 124
    const-class v7, Ltb9;

    .line 125
    .line 126
    monitor-enter v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    :try_start_2
    sget-object v8, Ltb9;->g:Lk50;

    .line 128
    .line 129
    invoke-virtual {v8, v6}, Ldg7;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v9

    .line 133
    check-cast v9, Ltb9;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 134
    .line 135
    if-nez v9, :cond_3

    .line 136
    .line 137
    :try_start_3
    new-instance v10, Ltb9;

    .line 138
    .line 139
    invoke-direct {v10, v5, v6}, Ltb9;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 140
    .line 141
    .line 142
    :try_start_4
    invoke-virtual {v8, v6, v10}, Ldg7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 143
    .line 144
    .line 145
    goto :goto_3

    .line 146
    :catchall_1
    move-exception v0

    .line 147
    goto :goto_4

    .line 148
    :catch_0
    :goto_3
    move-object v9, v10

    .line 149
    :catch_1
    :cond_3
    :try_start_5
    monitor-exit v7

    .line 150
    goto :goto_5

    .line 151
    :goto_4
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 152
    :try_start_6
    throw v0

    .line 153
    :cond_4
    move-object v9, v3

    .line 154
    :goto_5
    if-eqz v9, :cond_5

    .line 155
    .line 156
    iget-object v5, p0, Lje9;->b:Ljava/lang/String;

    .line 157
    .line 158
    invoke-virtual {v9, v5}, Ltb9;->a(Ljava/lang/String;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v5

    .line 162
    if-eqz v5, :cond_5

    .line 163
    .line 164
    check-cast v5, Ljava/lang/String;

    .line 165
    .line 166
    invoke-virtual {p0, v5}, Lje9;->a(Ljava/lang/String;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v5

    .line 170
    goto :goto_6

    .line 171
    :cond_5
    move-object v5, v3

    .line 172
    :goto_6
    if-nez v5, :cond_b

    .line 173
    .line 174
    iget-object v5, p0, Lje9;->a:Lea3;

    .line 175
    .line 176
    iget-boolean v5, v5, Lea3;->a:Z

    .line 177
    .line 178
    if-nez v5, :cond_9

    .line 179
    .line 180
    iget-object v1, v1, Lnb9;->a:Landroid/content/Context;

    .line 181
    .line 182
    const-class v5, Lwc9;

    .line 183
    .line 184
    monitor-enter v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 185
    :try_start_7
    sget-object v6, Lwc9;->d:Lwc9;

    .line 186
    .line 187
    if-nez v6, :cond_7

    .line 188
    .line 189
    const-string v6, "com.google.android.providers.gsf.permission.READ_GSERVICES"

    .line 190
    .line 191
    invoke-static {v1, v6}, Llg7;->d(Landroid/content/Context;Ljava/lang/String;)I

    .line 192
    .line 193
    .line 194
    move-result v6

    .line 195
    const/4 v7, 0x0

    .line 196
    if-nez v6, :cond_6

    .line 197
    .line 198
    new-instance v6, Lwc9;

    .line 199
    .line 200
    invoke-direct {v6, v1, v7}, Lwc9;-><init>(Landroid/content/Context;I)V

    .line 201
    .line 202
    .line 203
    goto :goto_7

    .line 204
    :catchall_2
    move-exception v0

    .line 205
    goto :goto_9

    .line 206
    :cond_6
    new-instance v6, Lwc9;

    .line 207
    .line 208
    invoke-direct {v6, v7}, Lwc9;-><init>(I)V

    .line 209
    .line 210
    .line 211
    :goto_7
    sput-object v6, Lwc9;->d:Lwc9;

    .line 212
    .line 213
    :cond_7
    sget-object v1, Lwc9;->d:Lwc9;

    .line 214
    .line 215
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 216
    :try_start_8
    iget-object v5, p0, Lje9;->a:Lea3;

    .line 217
    .line 218
    iget-boolean v5, v5, Lea3;->a:Z

    .line 219
    .line 220
    if-eqz v5, :cond_8

    .line 221
    .line 222
    move-object v5, v3

    .line 223
    goto :goto_8

    .line 224
    :cond_8
    iget-object v5, p0, Lje9;->b:Ljava/lang/String;

    .line 225
    .line 226
    :goto_8
    invoke-virtual {v1, v5}, Lwc9;->i(Ljava/lang/String;)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    if-eqz v1, :cond_9

    .line 231
    .line 232
    invoke-virtual {p0, v1}, Lje9;->a(Ljava/lang/String;)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 236
    goto :goto_a

    .line 237
    :goto_9
    :try_start_9
    monitor-exit v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 238
    :try_start_a
    throw v0

    .line 239
    :cond_9
    :goto_a
    if-nez v3, :cond_a

    .line 240
    .line 241
    iget-object v5, p0, Lje9;->c:Ljava/lang/Object;

    .line 242
    .line 243
    goto :goto_b

    .line 244
    :cond_a
    move-object v5, v3

    .line 245
    :cond_b
    :goto_b
    invoke-virtual {v2}, Lve9;->b()Z

    .line 246
    .line 247
    .line 248
    move-result v1

    .line 249
    if-eqz v1, :cond_d

    .line 250
    .line 251
    if-nez v4, :cond_c

    .line 252
    .line 253
    iget-object v5, p0, Lje9;->c:Ljava/lang/Object;

    .line 254
    .line 255
    goto :goto_c

    .line 256
    :cond_c
    invoke-virtual {p0, v4}, Lje9;->a(Ljava/lang/String;)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v5

    .line 260
    :cond_d
    :goto_c
    iput-object v5, p0, Lje9;->e:Ljava/lang/Object;

    .line 261
    .line 262
    iput v0, p0, Lje9;->d:I

    .line 263
    .line 264
    goto :goto_d

    .line 265
    :cond_e
    sget-object v0, Lne9;->a:Lk50;

    .line 266
    .line 267
    throw v3

    .line 268
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 269
    .line 270
    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    throw v0

    .line 274
    :cond_10
    :goto_d
    monitor-exit p0

    .line 275
    goto :goto_f

    .line 276
    :goto_e
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 277
    throw v0

    .line 278
    :cond_11
    :goto_f
    iget-object p0, p0, Lje9;->e:Ljava/lang/Object;

    .line 279
    .line 280
    return-object p0
.end method
