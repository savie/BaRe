.class public Ldq0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final A:Ljava/lang/Long;

.field public final B:Lwx3;

.field public final a:Ljava/lang/Object;

.field public volatile b:I

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Landroid/os/Handler;

.field public volatile f:Lc49;

.field public final g:Landroid/content/Context;

.field public final h:Ll39;

.field public volatile i:Lw89;

.field public volatile j:Loa9;

.field public k:Z

.field public l:I

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:Z

.field public final x:Lma2;

.field public final y:Z

.field public z:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Lma2;Landroid/content/Context;Lc6;Ldb;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance p4, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p4, p0, Ldq0;->a:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 p4, 0x0

    .line 12
    iput p4, p0, Ldq0;->b:I

    .line 13
    .line 14
    new-instance v0, Landroid/os/Handler;

    .line 15
    .line 16
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Ldq0;->e:Landroid/os/Handler;

    .line 24
    .line 25
    iput p4, p0, Ldq0;->l:I

    .line 26
    .line 27
    new-instance v0, Ljava/util/Random;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    .line 33
    .line 34
    .line 35
    move-result-wide v0

    .line 36
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    iput-object v2, p0, Ldq0;->A:Ljava/lang/Long;

    .line 41
    .line 42
    sget-object v2, Lo99;->a:Lwx3;

    .line 43
    .line 44
    iput-object v2, p0, Ldq0;->B:Lwx3;

    .line 45
    .line 46
    const-string v2, "8.3.0"

    .line 47
    .line 48
    iput-object v2, p0, Ldq0;->c:Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {}, Ldq0;->h()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    iput-object v2, p0, Ldq0;->d:Ljava/lang/String;

    .line 55
    .line 56
    const-string v3, "BillingClient"

    .line 57
    .line 58
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    iput-object v4, p0, Ldq0;->g:Landroid/content/Context;

    .line 63
    .line 64
    invoke-static {}, Lhp9;->z()Lfp9;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    invoke-virtual {v4}, Lri9;->b()V

    .line 69
    .line 70
    .line 71
    iget-object v5, v4, Lri9;->b:Lxi9;

    .line 72
    .line 73
    check-cast v5, Lhp9;

    .line 74
    .line 75
    invoke-static {v5}, Lhp9;->x(Lhp9;)V

    .line 76
    .line 77
    .line 78
    if-eqz v2, :cond_0

    .line 79
    .line 80
    invoke-virtual {v4}, Lri9;->b()V

    .line 81
    .line 82
    .line 83
    iget-object v5, v4, Lri9;->b:Lxi9;

    .line 84
    .line 85
    check-cast v5, Lhp9;

    .line 86
    .line 87
    invoke-static {v5, v2}, Lhp9;->y(Lhp9;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    :cond_0
    iget-object v2, p0, Ldq0;->g:Landroid/content/Context;

    .line 91
    .line 92
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-virtual {v4}, Lri9;->b()V

    .line 97
    .line 98
    .line 99
    iget-object v5, v4, Lri9;->b:Lxi9;

    .line 100
    .line 101
    check-cast v5, Lhp9;

    .line 102
    .line 103
    invoke-static {v5, v2}, Lhp9;->q(Lhp9;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v4}, Lri9;->b()V

    .line 107
    .line 108
    .line 109
    iget-object v2, v4, Lri9;->b:Lxi9;

    .line 110
    .line 111
    check-cast v2, Lhp9;

    .line 112
    .line 113
    invoke-static {v2, v0, v1}, Lhp9;->D(Lhp9;J)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v4}, Lri9;->b()V

    .line 117
    .line 118
    .line 119
    iget-object v0, v4, Lri9;->b:Lxi9;

    .line 120
    .line 121
    check-cast v0, Lhp9;

    .line 122
    .line 123
    invoke-static {v0}, Lhp9;->w(Lhp9;)V

    .line 124
    .line 125
    .line 126
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 127
    .line 128
    invoke-virtual {v4}, Lri9;->b()V

    .line 129
    .line 130
    .line 131
    iget-object v1, v4, Lri9;->b:Lxi9;

    .line 132
    .line 133
    check-cast v1, Lhp9;

    .line 134
    .line 135
    invoke-static {v1, v0}, Lhp9;->A(Lhp9;I)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v4}, Lfp9;->c()V

    .line 139
    .line 140
    .line 141
    invoke-static {v4, p2}, Ldq0;->w(Lfp9;Landroid/content/Context;)V

    .line 142
    .line 143
    .line 144
    :try_start_0
    iget-object p2, p0, Ldq0;->g:Landroid/content/Context;

    .line 145
    .line 146
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 147
    .line 148
    .line 149
    move-result-object p2

    .line 150
    iget-object v0, p0, Ldq0;->g:Landroid/content/Context;

    .line 151
    .line 152
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-virtual {p2, v0, p4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 157
    .line 158
    .line 159
    move-result-object p2

    .line 160
    iget p2, p2, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 161
    .line 162
    invoke-virtual {v4}, Lri9;->b()V

    .line 163
    .line 164
    .line 165
    iget-object v0, v4, Lri9;->b:Lxi9;

    .line 166
    .line 167
    check-cast v0, Lhp9;

    .line 168
    .line 169
    invoke-static {v0, p2}, Lhp9;->B(Lhp9;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    .line 171
    .line 172
    goto :goto_0

    .line 173
    :catchall_0
    move-exception p2

    .line 174
    const-string v0, "Error getting app version code."

    .line 175
    .line 176
    invoke-static {v3, v0, p2}, Lta9;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 177
    .line 178
    .line 179
    :goto_0
    iget-object p2, p0, Ldq0;->g:Landroid/content/Context;

    .line 180
    .line 181
    invoke-virtual {v4}, Lri9;->a()Lxi9;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    check-cast v0, Lhp9;

    .line 186
    .line 187
    new-instance v1, Ll39;

    .line 188
    .line 189
    invoke-direct {v1, p2, v0}, Ll39;-><init>(Landroid/content/Context;Lhp9;)V

    .line 190
    .line 191
    .line 192
    iput-object v1, p0, Ldq0;->h:Ll39;

    .line 193
    .line 194
    if-nez p3, :cond_1

    .line 195
    .line 196
    const-string p2, "Billing client should have a valid listener but the provided is null."

    .line 197
    .line 198
    invoke-static {v3, p2}, Lta9;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    :cond_1
    new-instance p2, Lc49;

    .line 202
    .line 203
    iget-object v0, p0, Ldq0;->g:Landroid/content/Context;

    .line 204
    .line 205
    iget-object v1, p0, Ldq0;->h:Ll39;

    .line 206
    .line 207
    invoke-direct {p2, v0, p3, v1}, Lc49;-><init>(Landroid/content/Context;Lc6;Ll39;)V

    .line 208
    .line 209
    .line 210
    iput-object p2, p0, Ldq0;->f:Lc49;

    .line 211
    .line 212
    iput-object p1, p0, Ldq0;->x:Lma2;

    .line 213
    .line 214
    iput-boolean p4, p0, Ldq0;->y:Z

    .line 215
    .line 216
    iget-object p0, p0, Ldq0;->g:Landroid/content/Context;

    .line 217
    .line 218
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    return-void
.end method

.method public constructor <init>(Lma2;Landroid/content/Context;Ldb;)V
    .locals 6

    .line 222
    const-string p3, "BillingClient"

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ldq0;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Ldq0;->b:I

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Ldq0;->e:Landroid/os/Handler;

    iput v0, p0, Ldq0;->l:I

    new-instance v1, Ljava/util/Random;

    .line 225
    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, p0, Ldq0;->A:Ljava/lang/Long;

    .line 226
    sget-object v3, Lo99;->a:Lwx3;

    .line 227
    iput-object v3, p0, Ldq0;->B:Lwx3;

    const-string v3, "8.3.0"

    iput-object v3, p0, Ldq0;->c:Ljava/lang/String;

    .line 228
    invoke-static {}, Ldq0;->h()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ldq0;->d:Ljava/lang/String;

    .line 229
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Ldq0;->g:Landroid/content/Context;

    .line 230
    invoke-static {}, Lhp9;->z()Lfp9;

    move-result-object v4

    .line 231
    invoke-virtual {v4}, Lri9;->b()V

    iget-object v5, v4, Lri9;->b:Lxi9;

    .line 232
    check-cast v5, Lhp9;

    invoke-static {v5}, Lhp9;->x(Lhp9;)V

    if-eqz v3, :cond_0

    .line 233
    invoke-virtual {v4}, Lri9;->b()V

    iget-object v5, v4, Lri9;->b:Lxi9;

    .line 234
    check-cast v5, Lhp9;

    invoke-static {v5, v3}, Lhp9;->y(Lhp9;Ljava/lang/String;)V

    .line 235
    :cond_0
    iget-object v3, p0, Ldq0;->g:Landroid/content/Context;

    .line 236
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 237
    invoke-virtual {v4}, Lri9;->b()V

    iget-object v5, v4, Lri9;->b:Lxi9;

    .line 238
    check-cast v5, Lhp9;

    invoke-static {v5, v3}, Lhp9;->q(Lhp9;Ljava/lang/String;)V

    .line 239
    invoke-virtual {v4}, Lri9;->b()V

    iget-object v3, v4, Lri9;->b:Lxi9;

    .line 240
    check-cast v3, Lhp9;

    invoke-static {v3, v1, v2}, Lhp9;->D(Lhp9;J)V

    .line 241
    invoke-virtual {v4}, Lri9;->b()V

    iget-object v1, v4, Lri9;->b:Lxi9;

    .line 242
    check-cast v1, Lhp9;

    invoke-static {v1}, Lhp9;->w(Lhp9;)V

    .line 243
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 244
    invoke-virtual {v4}, Lri9;->b()V

    iget-object v2, v4, Lri9;->b:Lxi9;

    .line 245
    check-cast v2, Lhp9;

    invoke-static {v2, v1}, Lhp9;->A(Lhp9;I)V

    .line 246
    invoke-virtual {v4}, Lfp9;->c()V

    .line 247
    invoke-static {v4, p2}, Ldq0;->w(Lfp9;Landroid/content/Context;)V

    :try_start_0
    iget-object p2, p0, Ldq0;->g:Landroid/content/Context;

    .line 248
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    iget-object v1, p0, Ldq0;->g:Landroid/content/Context;

    .line 249
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 250
    invoke-virtual {p2, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p2

    iget p2, p2, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 251
    invoke-virtual {v4}, Lri9;->b()V

    iget-object v0, v4, Lri9;->b:Lxi9;

    .line 252
    check-cast v0, Lhp9;

    invoke-static {v0, p2}, Lhp9;->B(Lhp9;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 253
    const-string v0, "Error getting app version code."

    .line 254
    invoke-static {p3, v0, p2}, Lta9;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 255
    :goto_0
    iget-object p2, p0, Ldq0;->g:Landroid/content/Context;

    .line 256
    invoke-virtual {v4}, Lri9;->a()Lxi9;

    move-result-object v0

    check-cast v0, Lhp9;

    new-instance v1, Ll39;

    .line 257
    invoke-direct {v1, p2, v0}, Ll39;-><init>(Landroid/content/Context;Lhp9;)V

    iput-object v1, p0, Ldq0;->h:Ll39;

    const-string p2, "Billing client should have a valid listener but the provided is null."

    .line 258
    invoke-static {p3, p2}, Lta9;->h(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lc49;

    iget-object p3, p0, Ldq0;->g:Landroid/content/Context;

    const/4 v0, 0x0

    iget-object v1, p0, Ldq0;->h:Ll39;

    .line 259
    invoke-direct {p2, p3, v0, v1}, Lc49;-><init>(Landroid/content/Context;Lc6;Ll39;)V

    iput-object p2, p0, Ldq0;->f:Lc49;

    iput-object p1, p0, Ldq0;->x:Lma2;

    iget-object p0, p0, Ldq0;->g:Landroid/content/Context;

    .line 260
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    return-void
.end method

.method public static f(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;
    .locals 2

    .line 1
    :try_start_0
    invoke-interface {p5, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    long-to-double p1, p1

    .line 6
    new-instance p5, Lg99;

    .line 7
    .line 8
    invoke-direct {p5, p0, p3}, Lg99;-><init>(Ljava/util/concurrent/Future;Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    const-wide v0, 0x3fee666666666666L    # 0.95

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    mul-double/2addr p1, v0

    .line 17
    double-to-long p1, p1

    .line 18
    invoke-virtual {p4, p5, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 19
    .line 20
    .line 21
    return-object p0

    .line 22
    :catch_0
    move-exception p0

    .line 23
    const-string p1, "BillingClient"

    .line 24
    .line 25
    const-string p2, "Async task throws exception!"

    .line 26
    .line 27
    invoke-static {p1, p2, p0}, Lta9;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    .line 29
    .line 30
    const/4 p0, 0x0

    .line 31
    return-object p0
.end method

.method public static h()Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-string v1, "com.android.billingclient.ktx.BuildConfig"

    .line 3
    .line 4
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    const-string v2, "VERSION_NAME"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    return-object v1

    .line 21
    :catch_0
    return-object v0
.end method

.method public static j(Ldq0;I)V
    .locals 9

    .line 1
    if-nez p1, :cond_7

    .line 2
    .line 3
    iget-object p1, p0, Ldq0;->a:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter p1

    .line 6
    :try_start_0
    iget v0, p0, Ldq0;->b:I

    .line 7
    .line 8
    const/4 v1, 0x3

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    monitor-exit p1

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    move-object p0, v0

    .line 15
    goto :goto_3

    .line 16
    :cond_0
    const/4 v0, 0x2

    .line 17
    invoke-virtual {p0, v0}, Ldq0;->r(I)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Ldq0;->f:Lc49;

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    iget-object v1, p0, Ldq0;->f:Lc49;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    move-object v1, v2

    .line 29
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    if-eqz v1, :cond_6

    .line 31
    .line 32
    iget-boolean p0, p0, Ldq0;->u:Z

    .line 33
    .line 34
    new-instance v5, Landroid/content/IntentFilter;

    .line 35
    .line 36
    const-string p1, "com.android.vending.billing.PURCHASES_UPDATED"

    .line 37
    .line 38
    invoke-direct {v5, p1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    new-instance p1, Landroid/content/IntentFilter;

    .line 42
    .line 43
    const-string v3, "com.android.vending.billing.LOCAL_BROADCAST_PURCHASES_UPDATED"

    .line 44
    .line 45
    invoke-direct {p1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const-string v3, "com.android.vending.billing.ALTERNATIVE_BILLING"

    .line 49
    .line 50
    invoke-virtual {p1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iput-boolean p0, v1, Lc49;->f:Z

    .line 54
    .line 55
    iget-object p0, v1, Lc49;->e:Lx39;

    .line 56
    .line 57
    iget-object v3, v1, Lc49;->a:Landroid/content/Context;

    .line 58
    .line 59
    invoke-virtual {p0, v3, p1}, Lx39;->a(Landroid/content/Context;Landroid/content/IntentFilter;)V

    .line 60
    .line 61
    .line 62
    iget-boolean p0, v1, Lc49;->f:Z

    .line 63
    .line 64
    iget-object v4, v1, Lc49;->d:Lx39;

    .line 65
    .line 66
    if-eqz p0, :cond_5

    .line 67
    .line 68
    monitor-enter v4

    .line 69
    :try_start_1
    iget-boolean p0, v4, Lx39;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 70
    .line 71
    if-eqz p0, :cond_2

    .line 72
    .line 73
    monitor-exit v4

    .line 74
    return-void

    .line 75
    :cond_2
    :try_start_2
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 76
    .line 77
    const-string v6, "com.google.android.finsky.permission.PLAY_BILLING_LIBRARY_BROADCAST"

    .line 78
    .line 79
    const/16 p1, 0x21

    .line 80
    .line 81
    const/4 v1, 0x1

    .line 82
    if-lt p0, p1, :cond_4

    .line 83
    .line 84
    iget-boolean p0, v4, Lx39;->b:Z

    .line 85
    .line 86
    if-eq v1, p0, :cond_3

    .line 87
    .line 88
    const/4 v0, 0x4

    .line 89
    :cond_3
    move v8, v0

    .line 90
    const/4 v7, 0x0

    .line 91
    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :catchall_1
    move-exception v0

    .line 96
    move-object p0, v0

    .line 97
    goto :goto_2

    .line 98
    :cond_4
    invoke-virtual {v3, v4, v5, v6, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 99
    .line 100
    .line 101
    :goto_1
    iput-boolean v1, v4, Lx39;->a:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 102
    .line 103
    monitor-exit v4

    .line 104
    return-void

    .line 105
    :goto_2
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 106
    throw p0

    .line 107
    :cond_5
    invoke-virtual {v4, v3, v5}, Lx39;->a(Landroid/content/Context;Landroid/content/IntentFilter;)V

    .line 108
    .line 109
    .line 110
    :cond_6
    return-void

    .line 111
    :goto_3
    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 112
    throw p0

    .line 113
    :cond_7
    const/4 p1, 0x0

    .line 114
    invoke-virtual {p0, p1}, Ldq0;->r(I)V

    .line 115
    .line 116
    .line 117
    return-void
.end method

.method public static final w(Lfp9;Landroid/content/Context;)V
    .locals 4

    .line 1
    :try_start_0
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/app/ActivityManager;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 17
    .line 18
    .line 19
    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    .line 20
    .line 21
    const-wide/32 v2, 0x100000

    .line 22
    .line 23
    .line 24
    div-long/2addr v0, v2

    .line 25
    long-to-int p1, v0

    .line 26
    invoke-virtual {p0}, Lri9;->b()V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lri9;->b:Lxi9;

    .line 30
    .line 31
    check-cast v0, Lhp9;

    .line 32
    .line 33
    invoke-static {v0, p1}, Lhp9;->v(Lhp9;I)V

    .line 34
    .line 35
    .line 36
    sget-object p1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {p0}, Lri9;->b()V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lri9;->b:Lxi9;

    .line 42
    .line 43
    check-cast p1, Lhp9;

    .line 44
    .line 45
    invoke-static {p1}, Lhp9;->r(Lhp9;)V

    .line 46
    .line 47
    .line 48
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {p0}, Lri9;->b()V

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lri9;->b:Lxi9;

    .line 54
    .line 55
    check-cast p1, Lhp9;

    .line 56
    .line 57
    invoke-static {p1}, Lhp9;->u(Lhp9;)V

    .line 58
    .line 59
    .line 60
    sget-object p1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {p0}, Lri9;->b()V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lri9;->b:Lxi9;

    .line 66
    .line 67
    check-cast p1, Lhp9;

    .line 68
    .line 69
    invoke-static {p1}, Lhp9;->t(Lhp9;)V

    .line 70
    .line 71
    .line 72
    sget-object p1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {p0}, Lri9;->b()V

    .line 75
    .line 76
    .line 77
    iget-object p0, p0, Lri9;->b:Lxi9;

    .line 78
    .line 79
    check-cast p0, Lhp9;

    .line 80
    .line 81
    invoke-static {p0}, Lhp9;->s(Lhp9;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .line 83
    .line 84
    :cond_0
    return-void

    .line 85
    :catch_0
    move-exception p0

    .line 86
    const-string p1, "BillingClient"

    .line 87
    .line 88
    const-string v0, "Runtime error while populating device info."

    .line 89
    .line 90
    invoke-static {p1, v0, p0}, Lta9;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 91
    .line 92
    .line 93
    return-void
.end method


# virtual methods
.method public final A(IILyq0;Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    sget v0, Lzd9;->a:I

    .line 2
    .line 3
    sget-object v0, Lwo9;->b:Lwo9;

    .line 4
    .line 5
    invoke-static {p1, p2, p3, p4, v0}, Lzd9;->b(IILyq0;Ljava/lang/String;Lwo9;)Ldo9;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Ldq0;->o(Ldo9;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    const-string p1, "BillingClient"

    .line 15
    .line 16
    const-string p2, "Unable to log."

    .line 17
    .line 18
    invoke-static {p1, p2, p0}, Lta9;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final B(ILyq0;JZ)V
    .locals 5

    .line 1
    const-string v1, "Unable to log."

    .line 2
    .line 3
    const-string v2, "BillingClient"

    .line 4
    .line 5
    :try_start_0
    sget v0, Lzd9;->a:I

    .line 6
    .line 7
    sget-object v0, Lwo9;->b:Lwo9;

    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    const/4 v4, 0x0

    .line 11
    invoke-static {p1, v3, p2, v4, v0}, Lzd9;->b(IILyq0;Ljava/lang/String;Lwo9;)Ldo9;

    .line 12
    .line 13
    .line 14
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 15
    move-object p2, p0

    .line 16
    :try_start_1
    iget-object p0, p2, Ldq0;->h:Ll39;

    .line 17
    .line 18
    iget p2, p2, Ldq0;->l:I

    .line 19
    .line 20
    invoke-virtual/range {p0 .. p5}, Ll39;->s(Ldo9;IJZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception v0

    .line 25
    move-object p0, v0

    .line 26
    :try_start_2
    invoke-static {v2, v1, p0}, Lta9;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void

    .line 30
    :catchall_1
    move-exception v0

    .line 31
    move-object p0, v0

    .line 32
    invoke-static {v2, v1, p0}, Lta9;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final C(ILyq0;Ljava/lang/String;JZ)V
    .locals 4

    .line 1
    const-string v1, "Unable to log."

    .line 2
    .line 3
    const-string v2, "BillingClient"

    .line 4
    .line 5
    :try_start_0
    sget v0, Lzd9;->a:I

    .line 6
    .line 7
    sget-object v0, Lwo9;->b:Lwo9;

    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    invoke-static {p1, v3, p2, p3, v0}, Lzd9;->b(IILyq0;Ljava/lang/String;Lwo9;)Ldo9;

    .line 11
    .line 12
    .line 13
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 14
    move-object p2, p0

    .line 15
    :try_start_1
    iget-object p0, p2, Ldq0;->h:Ll39;

    .line 16
    .line 17
    iget p2, p2, Ldq0;->l:I

    .line 18
    .line 19
    move-wide p3, p4

    .line 20
    move p5, p6

    .line 21
    invoke-virtual/range {p0 .. p5}, Ll39;->s(Ldo9;IJZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    move-object p0, v0

    .line 27
    :try_start_2
    invoke-static {v2, v1, p0}, Lta9;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 28
    .line 29
    .line 30
    :goto_0
    return-void

    .line 31
    :catchall_1
    move-exception v0

    .line 32
    move-object p0, v0

    .line 33
    invoke-static {v2, v1, p0}, Lta9;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final D(Lyq0;)V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Lvb;

    .line 9
    .line 10
    const/4 v1, 0x4

    .line 11
    invoke-direct {v0, v1, p0, p1}, Lvb;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Ldq0;->e:Landroid/os/Handler;

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public a(Lia9;Lkq0;)V
    .locals 6

    .line 1
    new-instance v0, Lwu7;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2, p1}, Lwu7;-><init>(Ldq0;Lkq0;Lia9;)V

    .line 4
    .line 5
    .line 6
    new-instance v3, Lte2;

    .line 7
    .line 8
    const/4 p1, 0x4

    .line 9
    invoke-direct {v3, p0, p2, p1}, Lte2;-><init>(Ldq0;Ljava/lang/Object;I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Ldq0;->k()Landroid/os/Handler;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    invoke-virtual {p0}, Ldq0;->e()Ljava/util/concurrent/ExecutorService;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    const-wide/16 v1, 0x7530

    .line 21
    .line 22
    invoke-static/range {v0 .. v5}, Ldq0;->f(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    if-nez p1, :cond_0

    .line 27
    .line 28
    invoke-virtual {p0}, Ldq0;->n()Lyq0;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const/16 v0, 0x19

    .line 33
    .line 34
    const/4 v1, 0x3

    .line 35
    invoke-virtual {p0, v0, v1, p1}, Ldq0;->y(IILyq0;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2, p1}, Lkq0;->a(Lyq0;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    return-void
.end method

.method public b(Landroid/app/Activity;Lgq0;)Lyq0;
    .locals 29

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    move-object/from16 v5, p2

    .line 6
    .line 7
    new-instance v0, Ljava/util/Random;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    .line 13
    .line 14
    .line 15
    move-result-wide v2

    .line 16
    iget-object v0, v1, Ldq0;->f:Lc49;

    .line 17
    .line 18
    if-eqz v0, :cond_47

    .line 19
    .line 20
    iget-object v0, v1, Ldq0;->f:Lc49;

    .line 21
    .line 22
    iget-object v0, v0, Lc49;->b:Lc6;

    .line 23
    .line 24
    if-eqz v0, :cond_47

    .line 25
    .line 26
    const-string v4, "BillingClient"

    .line 27
    .line 28
    const-string v0, "Reconnection failed with result: "

    .line 29
    .line 30
    const-string v6, "Reconnection succeeded with result: "

    .line 31
    .line 32
    :try_start_0
    const-string v8, "BillingClient"

    .line 33
    .line 34
    const-string v9, "Already connected or not opted into auto reconnection."

    .line 35
    .line 36
    invoke-static {v8, v9}, Lta9;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    sget-object v8, Lle9;->i:Lyq0;

    .line 40
    .line 41
    new-instance v9, Lge9;

    .line 42
    .line 43
    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 44
    .line 45
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    iget v8, v8, Lyq0;->a:I

    .line 49
    .line 50
    if-nez v8, :cond_0

    .line 51
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-static {v4, v0}, Lta9;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :catch_0
    move-exception v0

    .line 69
    goto :goto_0

    .line 70
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-static {v4, v0}, Lta9;->h(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :goto_0
    instance-of v6, v0, Ljava/lang/InterruptedException;

    .line 87
    .line 88
    if-eqz v6, :cond_1

    .line 89
    .line 90
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    .line 95
    .line 96
    .line 97
    :cond_1
    const-string v6, "Error during reconnection attempt: "

    .line 98
    .line 99
    invoke-static {v4, v6, v0}, Lta9;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 100
    .line 101
    .line 102
    :goto_1
    invoke-virtual {v1}, Ldq0;->v()Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-nez v0, :cond_2

    .line 107
    .line 108
    sget-object v0, Lle9;->j:Lyq0;

    .line 109
    .line 110
    const/4 v4, 0x2

    .line 111
    invoke-virtual {v1, v4, v0, v2, v3}, Ldq0;->z(ILyq0;J)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1, v0}, Ldq0;->D(Lyq0;)V

    .line 115
    .line 116
    .line 117
    return-object v0

    .line 118
    :cond_2
    iget-object v4, v1, Ldq0;->a:Ljava/lang/Object;

    .line 119
    .line 120
    monitor-enter v4

    .line 121
    :try_start_1
    iget-object v0, v1, Ldq0;->j:Loa9;

    .line 122
    .line 123
    if-eqz v0, :cond_3

    .line 124
    .line 125
    iget-object v0, v1, Ldq0;->j:Loa9;

    .line 126
    .line 127
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    goto :goto_2

    .line 131
    :catchall_0
    move-exception v0

    .line 132
    goto/16 :goto_25

    .line 133
    .line 134
    :cond_3
    :goto_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    .line 136
    .line 137
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 138
    .line 139
    .line 140
    iget-object v4, v5, Lgq0;->e:Ljava/util/ArrayList;

    .line 141
    .line 142
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 143
    .line 144
    .line 145
    iget-object v4, v5, Lgq0;->d:Lma9;

    .line 146
    .line 147
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 148
    .line 149
    .line 150
    move-result-object v6

    .line 151
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 152
    .line 153
    .line 154
    move-result v8

    .line 155
    if-eqz v8, :cond_4

    .line 156
    .line 157
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v6

    .line 161
    goto :goto_3

    .line 162
    :cond_4
    const/4 v6, 0x0

    .line 163
    :goto_3
    if-nez v6, :cond_46

    .line 164
    .line 165
    invoke-virtual {v4}, Lma9;->iterator()Ljava/util/Iterator;

    .line 166
    .line 167
    .line 168
    move-result-object v6

    .line 169
    check-cast v6, Lga9;

    .line 170
    .line 171
    invoke-virtual {v6}, Lga9;->hasNext()Z

    .line 172
    .line 173
    .line 174
    move-result v8

    .line 175
    if-eqz v8, :cond_5

    .line 176
    .line 177
    invoke-virtual {v6}, Lga9;->next()Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v6

    .line 181
    goto :goto_4

    .line 182
    :cond_5
    const/4 v6, 0x0

    .line 183
    :goto_4
    check-cast v6, Lfq0;

    .line 184
    .line 185
    iget-object v8, v6, Lfq0;->a:Lv76;

    .line 186
    .line 187
    move-object v10, v4

    .line 188
    move-wide/from16 v27, v2

    .line 189
    .line 190
    move-object v2, v5

    .line 191
    move-wide/from16 v4, v27

    .line 192
    .line 193
    iget-object v3, v8, Lv76;->c:Ljava/lang/String;

    .line 194
    .line 195
    iget-object v8, v8, Lv76;->d:Ljava/lang/String;

    .line 196
    .line 197
    const-string v11, "subs"

    .line 198
    .line 199
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    move-result v11

    .line 203
    move-object v12, v6

    .line 204
    const/4 v6, 0x0

    .line 205
    if-eqz v11, :cond_7

    .line 206
    .line 207
    iget-boolean v11, v1, Ldq0;->k:Z

    .line 208
    .line 209
    if-eqz v11, :cond_6

    .line 210
    .line 211
    goto :goto_5

    .line 212
    :cond_6
    const-string v0, "BillingClient"

    .line 213
    .line 214
    const-string v2, "Current client doesn\'t support subscriptions."

    .line 215
    .line 216
    invoke-static {v0, v2}, Lta9;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    sget-object v3, Lle9;->l:Lyq0;

    .line 220
    .line 221
    const/16 v2, 0x9

    .line 222
    .line 223
    invoke-virtual/range {v1 .. v6}, Ldq0;->B(ILyq0;JZ)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v1, v3}, Ldq0;->D(Lyq0;)V

    .line 227
    .line 228
    .line 229
    return-object v3

    .line 230
    :cond_7
    :goto_5
    iget-object v11, v2, Lgq0;->b:Ljava/lang/String;

    .line 231
    .line 232
    const/4 v13, 0x0

    .line 233
    if-nez v11, :cond_8

    .line 234
    .line 235
    iget-object v11, v2, Lgq0;->c:Llk;

    .line 236
    .line 237
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 238
    .line 239
    .line 240
    iget-boolean v11, v2, Lgq0;->a:Z

    .line 241
    .line 242
    if-nez v11, :cond_8

    .line 243
    .line 244
    iget-object v11, v2, Lgq0;->d:Lma9;

    .line 245
    .line 246
    if-eqz v11, :cond_9

    .line 247
    .line 248
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 249
    .line 250
    .line 251
    move-result v14

    .line 252
    move v15, v13

    .line 253
    :goto_6
    if-ge v15, v14, :cond_9

    .line 254
    .line 255
    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v16

    .line 259
    check-cast v16, Lfq0;

    .line 260
    .line 261
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 262
    .line 263
    .line 264
    add-int/lit8 v15, v15, 0x1

    .line 265
    .line 266
    goto :goto_6

    .line 267
    :cond_8
    iget-boolean v11, v1, Ldq0;->m:Z

    .line 268
    .line 269
    if-nez v11, :cond_9

    .line 270
    .line 271
    const-string v0, "BillingClient"

    .line 272
    .line 273
    const-string v2, "Current client doesn\'t support extra params for buy intent."

    .line 274
    .line 275
    invoke-static {v0, v2}, Lta9;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    sget-object v3, Lle9;->f:Lyq0;

    .line 279
    .line 280
    const/16 v2, 0x12

    .line 281
    .line 282
    invoke-virtual/range {v1 .. v6}, Ldq0;->B(ILyq0;JZ)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v1, v3}, Ldq0;->D(Lyq0;)V

    .line 286
    .line 287
    .line 288
    return-object v3

    .line 289
    :cond_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 290
    .line 291
    .line 292
    move-result v11

    .line 293
    const/4 v14, 0x1

    .line 294
    if-le v11, v14, :cond_a

    .line 295
    .line 296
    iget-boolean v11, v1, Ldq0;->q:Z

    .line 297
    .line 298
    if-nez v11, :cond_a

    .line 299
    .line 300
    const-string v0, "BillingClient"

    .line 301
    .line 302
    const-string v2, "Current client doesn\'t support multi-item purchases."

    .line 303
    .line 304
    invoke-static {v0, v2}, Lta9;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    sget-object v3, Lle9;->m:Lyq0;

    .line 308
    .line 309
    const/16 v2, 0x13

    .line 310
    .line 311
    invoke-virtual/range {v1 .. v6}, Ldq0;->B(ILyq0;JZ)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v1, v3}, Ldq0;->D(Lyq0;)V

    .line 315
    .line 316
    .line 317
    return-object v3

    .line 318
    :cond_a
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    .line 319
    .line 320
    .line 321
    move-result v11

    .line 322
    if-nez v11, :cond_b

    .line 323
    .line 324
    iget-boolean v11, v1, Ldq0;->r:Z

    .line 325
    .line 326
    if-nez v11, :cond_b

    .line 327
    .line 328
    const-string v0, "BillingClient"

    .line 329
    .line 330
    const-string v2, "Current client doesn\'t support purchases with ProductDetails."

    .line 331
    .line 332
    invoke-static {v0, v2}, Lta9;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    sget-object v3, Lle9;->o:Lyq0;

    .line 336
    .line 337
    const/16 v2, 0x14

    .line 338
    .line 339
    invoke-virtual/range {v1 .. v6}, Ldq0;->B(ILyq0;JZ)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v1, v3}, Ldq0;->D(Lyq0;)V

    .line 343
    .line 344
    .line 345
    return-object v3

    .line 346
    :cond_b
    const-string v11, "packageName"

    .line 347
    .line 348
    const-string v15, "."

    .line 349
    .line 350
    const-string v6, "play_pass_subs"

    .line 351
    .line 352
    iget-object v14, v2, Lgq0;->d:Lma9;

    .line 353
    .line 354
    invoke-virtual {v14}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 355
    .line 356
    .line 357
    move-result v14

    .line 358
    if-eqz v14, :cond_c

    .line 359
    .line 360
    sget-object v6, Lle9;->i:Lyq0;

    .line 361
    .line 362
    move-object/from16 v19, v3

    .line 363
    .line 364
    move-wide/from16 v20, v4

    .line 365
    .line 366
    move-object v3, v6

    .line 367
    move-object/from16 v22, v8

    .line 368
    .line 369
    const/16 v17, 0x0

    .line 370
    .line 371
    goto/16 :goto_c

    .line 372
    .line 373
    :cond_c
    iget-object v14, v2, Lgq0;->d:Lma9;

    .line 374
    .line 375
    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 376
    .line 377
    .line 378
    move-result-object v14

    .line 379
    check-cast v14, Lfq0;

    .line 380
    .line 381
    const/4 v13, 0x1

    .line 382
    const/16 v17, 0x0

    .line 383
    .line 384
    :goto_7
    iget-object v9, v2, Lgq0;->d:Lma9;

    .line 385
    .line 386
    invoke-virtual {v9}, Ljava/util/AbstractCollection;->size()I

    .line 387
    .line 388
    .line 389
    move-result v9

    .line 390
    if-ge v13, v9, :cond_e

    .line 391
    .line 392
    iget-object v9, v2, Lgq0;->d:Lma9;

    .line 393
    .line 394
    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 395
    .line 396
    .line 397
    move-result-object v9

    .line 398
    check-cast v9, Lfq0;

    .line 399
    .line 400
    iget-object v1, v9, Lfq0;->a:Lv76;

    .line 401
    .line 402
    iget-object v1, v1, Lv76;->d:Ljava/lang/String;

    .line 403
    .line 404
    move-object/from16 v19, v3

    .line 405
    .line 406
    iget-object v3, v14, Lfq0;->a:Lv76;

    .line 407
    .line 408
    iget-object v3, v3, Lv76;->d:Ljava/lang/String;

    .line 409
    .line 410
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 411
    .line 412
    .line 413
    move-result v1

    .line 414
    if-nez v1, :cond_d

    .line 415
    .line 416
    iget-object v1, v9, Lfq0;->a:Lv76;

    .line 417
    .line 418
    iget-object v1, v1, Lv76;->d:Ljava/lang/String;

    .line 419
    .line 420
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 421
    .line 422
    .line 423
    move-result v1

    .line 424
    if-nez v1, :cond_d

    .line 425
    .line 426
    const-string v1, "All products should have same ProductType."

    .line 427
    .line 428
    const/4 v3, 0x5

    .line 429
    invoke-static {v3, v1}, Lle9;->a(ILjava/lang/String;)Lyq0;

    .line 430
    .line 431
    .line 432
    move-result-object v6

    .line 433
    move-wide/from16 v20, v4

    .line 434
    .line 435
    move-object v3, v6

    .line 436
    move-object/from16 v22, v8

    .line 437
    .line 438
    goto/16 :goto_c

    .line 439
    .line 440
    :cond_d
    add-int/lit8 v13, v13, 0x1

    .line 441
    .line 442
    move-object/from16 v1, p0

    .line 443
    .line 444
    move-object/from16 v3, v19

    .line 445
    .line 446
    goto :goto_7

    .line 447
    :cond_e
    move-object/from16 v19, v3

    .line 448
    .line 449
    iget-object v1, v14, Lfq0;->a:Lv76;

    .line 450
    .line 451
    iget-object v3, v1, Lv76;->b:Lorg/json/JSONObject;

    .line 452
    .line 453
    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 454
    .line 455
    .line 456
    move-result-object v3

    .line 457
    new-instance v9, Ljava/util/HashMap;

    .line 458
    .line 459
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 460
    .line 461
    .line 462
    new-instance v13, Ljava/util/HashSet;

    .line 463
    .line 464
    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    .line 465
    .line 466
    .line 467
    move-wide/from16 v20, v4

    .line 468
    .line 469
    iget-object v4, v2, Lgq0;->d:Lma9;

    .line 470
    .line 471
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 472
    .line 473
    .line 474
    move-result v5

    .line 475
    move-object/from16 v22, v8

    .line 476
    .line 477
    const/4 v8, 0x0

    .line 478
    :goto_8
    if-ge v8, v5, :cond_14

    .line 479
    .line 480
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 481
    .line 482
    .line 483
    move-result-object v23

    .line 484
    move-object/from16 v24, v4

    .line 485
    .line 486
    move-object/from16 v4, v23

    .line 487
    .line 488
    check-cast v4, Lfq0;

    .line 489
    .line 490
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 491
    .line 492
    .line 493
    move/from16 v23, v5

    .line 494
    .line 495
    iget-object v5, v4, Lfq0;->a:Lv76;

    .line 496
    .line 497
    move/from16 v25, v8

    .line 498
    .line 499
    iget-object v8, v5, Lv76;->h:Ljava/util/ArrayList;

    .line 500
    .line 501
    move-object/from16 v26, v8

    .line 502
    .line 503
    iget-object v8, v5, Lv76;->c:Ljava/lang/String;

    .line 504
    .line 505
    if-eqz v26, :cond_f

    .line 506
    .line 507
    move-object/from16 v26, v13

    .line 508
    .line 509
    iget-object v13, v4, Lfq0;->b:Ljava/lang/String;

    .line 510
    .line 511
    if-nez v13, :cond_10

    .line 512
    .line 513
    new-instance v1, Ljava/lang/StringBuilder;

    .line 514
    .line 515
    const-string v3, "offerToken is required for constructing ProductDetailsParams for subscriptions. Missing value for product id: "

    .line 516
    .line 517
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 518
    .line 519
    .line 520
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    .line 522
    .line 523
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 524
    .line 525
    .line 526
    move-result-object v1

    .line 527
    const/4 v3, 0x5

    .line 528
    invoke-static {v3, v1}, Lle9;->a(ILjava/lang/String;)Lyq0;

    .line 529
    .line 530
    .line 531
    move-result-object v6

    .line 532
    :goto_9
    move-object v3, v6

    .line 533
    goto/16 :goto_c

    .line 534
    .line 535
    :cond_f
    move-object/from16 v26, v13

    .line 536
    .line 537
    :cond_10
    invoke-virtual {v9, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 538
    .line 539
    .line 540
    move-result v13

    .line 541
    if-eqz v13, :cond_11

    .line 542
    .line 543
    new-instance v1, Ljava/lang/StringBuilder;

    .line 544
    .line 545
    const-string v3, "ProductId can not be duplicated. Invalid product id: "

    .line 546
    .line 547
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 548
    .line 549
    .line 550
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    .line 552
    .line 553
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    .line 555
    .line 556
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 557
    .line 558
    .line 559
    move-result-object v1

    .line 560
    const/4 v3, 0x5

    .line 561
    invoke-static {v3, v1}, Lle9;->a(ILjava/lang/String;)Lyq0;

    .line 562
    .line 563
    .line 564
    move-result-object v6

    .line 565
    goto :goto_9

    .line 566
    :cond_11
    invoke-virtual {v9, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    .line 568
    .line 569
    iget-object v4, v1, Lv76;->d:Ljava/lang/String;

    .line 570
    .line 571
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 572
    .line 573
    .line 574
    move-result v4

    .line 575
    if-nez v4, :cond_13

    .line 576
    .line 577
    iget-object v4, v5, Lv76;->d:Ljava/lang/String;

    .line 578
    .line 579
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 580
    .line 581
    .line 582
    move-result v4

    .line 583
    if-nez v4, :cond_13

    .line 584
    .line 585
    iget-object v4, v5, Lv76;->b:Lorg/json/JSONObject;

    .line 586
    .line 587
    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 588
    .line 589
    .line 590
    move-result-object v4

    .line 591
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 592
    .line 593
    .line 594
    move-result v4

    .line 595
    if-eqz v4, :cond_12

    .line 596
    .line 597
    goto :goto_a

    .line 598
    :cond_12
    const-string v1, "All products must have the same package name."

    .line 599
    .line 600
    const/4 v3, 0x5

    .line 601
    invoke-static {v3, v1}, Lle9;->a(ILjava/lang/String;)Lyq0;

    .line 602
    .line 603
    .line 604
    move-result-object v6

    .line 605
    goto :goto_9

    .line 606
    :cond_13
    :goto_a
    add-int/lit8 v8, v25, 0x1

    .line 607
    .line 608
    move/from16 v5, v23

    .line 609
    .line 610
    move-object/from16 v4, v24

    .line 611
    .line 612
    move-object/from16 v13, v26

    .line 613
    .line 614
    goto/16 :goto_8

    .line 615
    .line 616
    :cond_14
    move-object/from16 v26, v13

    .line 617
    .line 618
    invoke-virtual/range {v26 .. v26}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 619
    .line 620
    .line 621
    move-result-object v3

    .line 622
    :cond_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 623
    .line 624
    .line 625
    move-result v4

    .line 626
    if-eqz v4, :cond_16

    .line 627
    .line 628
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 629
    .line 630
    .line 631
    move-result-object v4

    .line 632
    check-cast v4, Ljava/lang/String;

    .line 633
    .line 634
    invoke-virtual {v9, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 635
    .line 636
    .line 637
    move-result v5

    .line 638
    if-eqz v5, :cond_15

    .line 639
    .line 640
    invoke-virtual {v9, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    .line 642
    .line 643
    move-result-object v1

    .line 644
    check-cast v1, Lfq0;

    .line 645
    .line 646
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 647
    .line 648
    .line 649
    new-instance v1, Ljava/lang/StringBuilder;

    .line 650
    .line 651
    const-string v3, "OldProductId must not be one of the products to be purchased. Invalid old product id: "

    .line 652
    .line 653
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 654
    .line 655
    .line 656
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    .line 658
    .line 659
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    .line 661
    .line 662
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 663
    .line 664
    .line 665
    move-result-object v1

    .line 666
    const/4 v3, 0x5

    .line 667
    invoke-static {v3, v1}, Lle9;->a(ILjava/lang/String;)Lyq0;

    .line 668
    .line 669
    .line 670
    move-result-object v6

    .line 671
    goto/16 :goto_9

    .line 672
    .line 673
    :cond_16
    iget-object v1, v1, Lv76;->i:Ljava/util/ArrayList;

    .line 674
    .line 675
    iget-object v3, v14, Lfq0;->b:Ljava/lang/String;

    .line 676
    .line 677
    if-eqz v3, :cond_19

    .line 678
    .line 679
    if-eqz v1, :cond_19

    .line 680
    .line 681
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 682
    .line 683
    .line 684
    move-result-object v1

    .line 685
    :cond_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 686
    .line 687
    .line 688
    move-result v4

    .line 689
    if-eqz v4, :cond_18

    .line 690
    .line 691
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 692
    .line 693
    .line 694
    move-result-object v4

    .line 695
    check-cast v4, Ls76;

    .line 696
    .line 697
    iget-object v5, v4, Ls76;->b:Ljava/lang/String;

    .line 698
    .line 699
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 700
    .line 701
    .line 702
    move-result v5

    .line 703
    if-eqz v5, :cond_17

    .line 704
    .line 705
    goto :goto_b

    .line 706
    :cond_18
    move-object/from16 v4, v17

    .line 707
    .line 708
    :goto_b
    if-eqz v4, :cond_19

    .line 709
    .line 710
    iget-object v1, v4, Ls76;->e:Lb05;

    .line 711
    .line 712
    if-eqz v1, :cond_19

    .line 713
    .line 714
    const-string v1, "Both autoPayDetails and autoPayBalanceThreshold is required for constructing ProductDetailsParams for autopay."

    .line 715
    .line 716
    const/4 v3, 0x5

    .line 717
    invoke-static {v3, v1}, Lle9;->a(ILjava/lang/String;)Lyq0;

    .line 718
    .line 719
    .line 720
    move-result-object v6

    .line 721
    goto/16 :goto_9

    .line 722
    .line 723
    :cond_19
    sget-object v6, Lle9;->i:Lyq0;

    .line 724
    .line 725
    goto/16 :goto_9

    .line 726
    .line 727
    :goto_c
    sget-object v1, Lle9;->i:Lyq0;

    .line 728
    .line 729
    if-eq v3, v1, :cond_1a

    .line 730
    .line 731
    const/16 v2, 0x6c

    .line 732
    .line 733
    const/4 v6, 0x0

    .line 734
    move-object/from16 v1, p0

    .line 735
    .line 736
    move-wide/from16 v4, v20

    .line 737
    .line 738
    invoke-virtual/range {v1 .. v6}, Ldq0;->B(ILyq0;JZ)V

    .line 739
    .line 740
    .line 741
    invoke-virtual {v1, v3}, Ldq0;->D(Lyq0;)V

    .line 742
    .line 743
    .line 744
    return-object v3

    .line 745
    :cond_1a
    const/4 v6, 0x0

    .line 746
    move-object/from16 v1, p0

    .line 747
    .line 748
    move-wide/from16 v4, v20

    .line 749
    .line 750
    iget-boolean v3, v1, Ldq0;->m:Z

    .line 751
    .line 752
    if-eqz v3, :cond_3e

    .line 753
    .line 754
    iget-boolean v3, v1, Ldq0;->n:Z

    .line 755
    .line 756
    iget-boolean v8, v1, Ldq0;->s:Z

    .line 757
    .line 758
    iget-object v9, v1, Ldq0;->x:Lma2;

    .line 759
    .line 760
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 761
    .line 762
    .line 763
    iget-object v9, v1, Ldq0;->x:Lma2;

    .line 764
    .line 765
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 766
    .line 767
    .line 768
    iget-boolean v9, v1, Ldq0;->y:Z

    .line 769
    .line 770
    iget-object v11, v1, Ldq0;->c:Ljava/lang/String;

    .line 771
    .line 772
    iget-object v13, v1, Ldq0;->d:Ljava/lang/String;

    .line 773
    .line 774
    iget-object v14, v1, Ldq0;->A:Ljava/lang/Long;

    .line 775
    .line 776
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    .line 777
    .line 778
    .line 779
    move-result-wide v14

    .line 780
    iget-object v6, v1, Ldq0;->g:Landroid/content/Context;

    .line 781
    .line 782
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 783
    .line 784
    .line 785
    new-instance v6, Landroid/os/Bundle;

    .line 786
    .line 787
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 788
    .line 789
    .line 790
    invoke-static {v6, v11, v13, v14, v15}, Lta9;->b(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;J)V

    .line 791
    .line 792
    .line 793
    const-string v11, "billingClientTransactionId"

    .line 794
    .line 795
    invoke-virtual {v6, v11, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 796
    .line 797
    .line 798
    iget-object v11, v2, Lgq0;->c:Llk;

    .line 799
    .line 800
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 801
    .line 802
    .line 803
    iget-object v11, v2, Lgq0;->b:Ljava/lang/String;

    .line 804
    .line 805
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 806
    .line 807
    .line 808
    move-result v11

    .line 809
    if-nez v11, :cond_1b

    .line 810
    .line 811
    iget-object v11, v2, Lgq0;->b:Ljava/lang/String;

    .line 812
    .line 813
    const-string v13, "accountId"

    .line 814
    .line 815
    invoke-virtual {v6, v13, v11}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    .line 817
    .line 818
    :cond_1b
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 819
    .line 820
    .line 821
    move-result v11

    .line 822
    if-nez v11, :cond_1c

    .line 823
    .line 824
    const-string v11, "obfuscatedProfileId"

    .line 825
    .line 826
    move-object/from16 v13, v17

    .line 827
    .line 828
    invoke-virtual {v6, v11, v13}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    .line 830
    .line 831
    goto :goto_d

    .line 832
    :cond_1c
    move-object/from16 v13, v17

    .line 833
    .line 834
    :goto_d
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 835
    .line 836
    .line 837
    move-result v11

    .line 838
    if-nez v11, :cond_1d

    .line 839
    .line 840
    new-instance v11, Ljava/util/ArrayList;

    .line 841
    .line 842
    filled-new-array {v13}, [Ljava/lang/String;

    .line 843
    .line 844
    .line 845
    move-result-object v14

    .line 846
    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 847
    .line 848
    .line 849
    move-result-object v14

    .line 850
    invoke-direct {v11, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 851
    .line 852
    .line 853
    const-string v14, "skusToReplace"

    .line 854
    .line 855
    invoke-virtual {v6, v14, v11}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 856
    .line 857
    .line 858
    :cond_1d
    iget-object v11, v2, Lgq0;->c:Llk;

    .line 859
    .line 860
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 861
    .line 862
    .line 863
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 864
    .line 865
    .line 866
    move-result v11

    .line 867
    if-nez v11, :cond_1e

    .line 868
    .line 869
    iget-object v11, v2, Lgq0;->c:Llk;

    .line 870
    .line 871
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 872
    .line 873
    .line 874
    const-string v11, "oldSkuPurchaseToken"

    .line 875
    .line 876
    invoke-virtual {v6, v11, v13}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    .line 878
    .line 879
    :cond_1e
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 880
    .line 881
    .line 882
    move-result v11

    .line 883
    if-nez v11, :cond_1f

    .line 884
    .line 885
    const-string v11, "oldSkuPurchaseId"

    .line 886
    .line 887
    invoke-virtual {v6, v11, v13}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    .line 889
    .line 890
    :cond_1f
    iget-object v11, v2, Lgq0;->c:Llk;

    .line 891
    .line 892
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 893
    .line 894
    .line 895
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 896
    .line 897
    .line 898
    move-result v11

    .line 899
    if-nez v11, :cond_20

    .line 900
    .line 901
    iget-object v11, v2, Lgq0;->c:Llk;

    .line 902
    .line 903
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 904
    .line 905
    .line 906
    const-string v11, "originalExternalTransactionId"

    .line 907
    .line 908
    invoke-virtual {v6, v11, v13}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    .line 910
    .line 911
    :cond_20
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 912
    .line 913
    .line 914
    move-result v11

    .line 915
    if-nez v11, :cond_21

    .line 916
    .line 917
    const-string v11, "paymentsPurchaseParams"

    .line 918
    .line 919
    invoke-virtual {v6, v11, v13}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    .line 921
    .line 922
    :cond_21
    if-eqz v3, :cond_22

    .line 923
    .line 924
    const-string v3, "enablePendingPurchases"

    .line 925
    .line 926
    const/4 v11, 0x1

    .line 927
    invoke-virtual {v6, v3, v11}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 928
    .line 929
    .line 930
    goto :goto_e

    .line 931
    :cond_22
    const/4 v11, 0x1

    .line 932
    :goto_e
    if-eqz v8, :cond_23

    .line 933
    .line 934
    const-string v3, "enablePendingPurchaseForSubscriptions"

    .line 935
    .line 936
    invoke-virtual {v6, v3, v11}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 937
    .line 938
    .line 939
    :cond_23
    if-nez v9, :cond_24

    .line 940
    .line 941
    goto :goto_f

    .line 942
    :cond_24
    const-string v3, "enableAlternativeBilling"

    .line 943
    .line 944
    invoke-virtual {v6, v3, v11}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 945
    .line 946
    .line 947
    :goto_f
    new-instance v3, Ljava/util/ArrayList;

    .line 948
    .line 949
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 950
    .line 951
    .line 952
    iget-object v8, v2, Lgq0;->d:Lma9;

    .line 953
    .line 954
    const/4 v9, 0x0

    .line 955
    invoke-virtual {v8, v9}, Lma9;->p(I)Lga9;

    .line 956
    .line 957
    .line 958
    move-result-object v8

    .line 959
    :goto_10
    invoke-virtual {v8}, Lga9;->hasNext()Z

    .line 960
    .line 961
    .line 962
    move-result v9

    .line 963
    if-eqz v9, :cond_25

    .line 964
    .line 965
    invoke-virtual {v8}, Lga9;->next()Ljava/lang/Object;

    .line 966
    .line 967
    .line 968
    move-result-object v9

    .line 969
    check-cast v9, Lfq0;

    .line 970
    .line 971
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 972
    .line 973
    .line 974
    goto :goto_10

    .line 975
    :cond_25
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 976
    .line 977
    .line 978
    move-result v8

    .line 979
    if-nez v8, :cond_26

    .line 980
    .line 981
    invoke-static {}, Lqf9;->p()Lmf9;

    .line 982
    .line 983
    .line 984
    move-result-object v8

    .line 985
    invoke-virtual {v8}, Lri9;->b()V

    .line 986
    .line 987
    .line 988
    iget-object v9, v8, Lri9;->b:Lxi9;

    .line 989
    .line 990
    check-cast v9, Lqf9;

    .line 991
    .line 992
    invoke-static {v9, v3}, Lqf9;->q(Lqf9;Ljava/util/ArrayList;)V

    .line 993
    .line 994
    .line 995
    invoke-virtual {v8}, Lri9;->a()Lxi9;

    .line 996
    .line 997
    .line 998
    move-result-object v3

    .line 999
    check-cast v3, Lqf9;

    .line 1000
    .line 1001
    invoke-virtual {v3}, Lmg9;->b()[B

    .line 1002
    .line 1003
    .line 1004
    move-result-object v3

    .line 1005
    const-string v8, "subscriptionProductReplacementParamsList"

    .line 1006
    .line 1007
    invoke-virtual {v6, v8, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1008
    .line 1009
    .line 1010
    :cond_26
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1011
    .line 1012
    .line 1013
    move-result v3

    .line 1014
    if-nez v3, :cond_2b

    .line 1015
    .line 1016
    new-instance v3, Ljava/util/ArrayList;

    .line 1017
    .line 1018
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1019
    .line 1020
    .line 1021
    new-instance v8, Ljava/util/ArrayList;

    .line 1022
    .line 1023
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1024
    .line 1025
    .line 1026
    new-instance v8, Ljava/util/ArrayList;

    .line 1027
    .line 1028
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1029
    .line 1030
    .line 1031
    new-instance v8, Ljava/util/ArrayList;

    .line 1032
    .line 1033
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1034
    .line 1035
    .line 1036
    new-instance v8, Ljava/util/ArrayList;

    .line 1037
    .line 1038
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1039
    .line 1040
    .line 1041
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1042
    .line 1043
    .line 1044
    move-result-object v8

    .line 1045
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 1046
    .line 1047
    .line 1048
    move-result v9

    .line 1049
    if-nez v9, :cond_2a

    .line 1050
    .line 1051
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1052
    .line 1053
    .line 1054
    move-result v8

    .line 1055
    if-nez v8, :cond_27

    .line 1056
    .line 1057
    const-string v8, "skuDetailsTokens"

    .line 1058
    .line 1059
    invoke-virtual {v6, v8, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1060
    .line 1061
    .line 1062
    :cond_27
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 1063
    .line 1064
    .line 1065
    move-result v3

    .line 1066
    const/4 v11, 0x1

    .line 1067
    if-le v3, v11, :cond_28

    .line 1068
    .line 1069
    new-instance v3, Ljava/util/ArrayList;

    .line 1070
    .line 1071
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 1072
    .line 1073
    .line 1074
    move-result v8

    .line 1075
    add-int/lit8 v8, v8, -0x1

    .line 1076
    .line 1077
    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 1078
    .line 1079
    .line 1080
    new-instance v8, Ljava/util/ArrayList;

    .line 1081
    .line 1082
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 1083
    .line 1084
    .line 1085
    move-result v9

    .line 1086
    add-int/lit8 v9, v9, -0x1

    .line 1087
    .line 1088
    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 1089
    .line 1090
    .line 1091
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 1092
    .line 1093
    .line 1094
    move-result v9

    .line 1095
    if-lt v11, v9, :cond_29

    .line 1096
    .line 1097
    const-string v0, "additionalSkus"

    .line 1098
    .line 1099
    invoke-virtual {v6, v0, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1100
    .line 1101
    .line 1102
    const-string v0, "additionalSkuTypes"

    .line 1103
    .line 1104
    invoke-virtual {v6, v0, v8}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1105
    .line 1106
    .line 1107
    :cond_28
    move-wide/from16 v20, v4

    .line 1108
    .line 1109
    goto/16 :goto_15

    .line 1110
    .line 1111
    :cond_29
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1112
    .line 1113
    .line 1114
    move-result-object v0

    .line 1115
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1116
    .line 1117
    .line 1118
    invoke-static {}, Le6;->d()V

    .line 1119
    .line 1120
    .line 1121
    :goto_11
    const/16 v17, 0x0

    .line 1122
    .line 1123
    return-object v17

    .line 1124
    :cond_2a
    invoke-static {v8}, Leq3;->h(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 1125
    .line 1126
    .line 1127
    move-result-object v0

    .line 1128
    throw v0

    .line 1129
    :cond_2b
    new-instance v0, Ljava/util/ArrayList;

    .line 1130
    .line 1131
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 1132
    .line 1133
    .line 1134
    move-result v3

    .line 1135
    add-int/lit8 v3, v3, -0x1

    .line 1136
    .line 1137
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1138
    .line 1139
    .line 1140
    new-instance v3, Ljava/util/ArrayList;

    .line 1141
    .line 1142
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 1143
    .line 1144
    .line 1145
    move-result v8

    .line 1146
    add-int/lit8 v8, v8, -0x1

    .line 1147
    .line 1148
    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 1149
    .line 1150
    .line 1151
    new-instance v8, Ljava/util/ArrayList;

    .line 1152
    .line 1153
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1154
    .line 1155
    .line 1156
    new-instance v9, Ljava/util/ArrayList;

    .line 1157
    .line 1158
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1159
    .line 1160
    .line 1161
    new-instance v11, Ljava/util/ArrayList;

    .line 1162
    .line 1163
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1164
    .line 1165
    .line 1166
    new-instance v13, Ljava/util/ArrayList;

    .line 1167
    .line 1168
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1169
    .line 1170
    .line 1171
    const/4 v14, 0x0

    .line 1172
    :goto_12
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 1173
    .line 1174
    .line 1175
    move-result v15

    .line 1176
    if-ge v14, v15, :cond_31

    .line 1177
    .line 1178
    invoke-interface {v10, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1179
    .line 1180
    .line 1181
    move-result-object v15

    .line 1182
    check-cast v15, Lfq0;

    .line 1183
    .line 1184
    iget-object v2, v15, Lfq0;->a:Lv76;

    .line 1185
    .line 1186
    move-wide/from16 v20, v4

    .line 1187
    .line 1188
    iget-object v4, v2, Lv76;->f:Ljava/lang/String;

    .line 1189
    .line 1190
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 1191
    .line 1192
    .line 1193
    move-result v4

    .line 1194
    if-nez v4, :cond_2c

    .line 1195
    .line 1196
    iget-object v4, v2, Lv76;->f:Ljava/lang/String;

    .line 1197
    .line 1198
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1199
    .line 1200
    .line 1201
    :cond_2c
    iget-object v4, v15, Lfq0;->b:Ljava/lang/String;

    .line 1202
    .line 1203
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1204
    .line 1205
    .line 1206
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1207
    .line 1208
    .line 1209
    move-result v5

    .line 1210
    if-nez v5, :cond_2e

    .line 1211
    .line 1212
    iget-object v5, v2, Lv76;->i:Ljava/util/ArrayList;

    .line 1213
    .line 1214
    if-eqz v5, :cond_2e

    .line 1215
    .line 1216
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1217
    .line 1218
    .line 1219
    move-result v15

    .line 1220
    if-nez v15, :cond_2e

    .line 1221
    .line 1222
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1223
    .line 1224
    .line 1225
    move-result-object v5

    .line 1226
    :goto_13
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 1227
    .line 1228
    .line 1229
    move-result v15

    .line 1230
    if-eqz v15, :cond_2e

    .line 1231
    .line 1232
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1233
    .line 1234
    .line 1235
    move-result-object v15

    .line 1236
    check-cast v15, Ls76;

    .line 1237
    .line 1238
    move-object/from16 v18, v5

    .line 1239
    .line 1240
    iget-object v5, v15, Ls76;->d:Ljava/lang/String;

    .line 1241
    .line 1242
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1243
    .line 1244
    .line 1245
    move-result v5

    .line 1246
    if-nez v5, :cond_2d

    .line 1247
    .line 1248
    iget-object v5, v15, Ls76;->b:Ljava/lang/String;

    .line 1249
    .line 1250
    invoke-static {v5, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1251
    .line 1252
    .line 1253
    move-result v5

    .line 1254
    if-eqz v5, :cond_2d

    .line 1255
    .line 1256
    iget-object v2, v15, Ls76;->d:Ljava/lang/String;

    .line 1257
    .line 1258
    goto :goto_14

    .line 1259
    :cond_2d
    move-object/from16 v5, v18

    .line 1260
    .line 1261
    goto :goto_13

    .line 1262
    :cond_2e
    iget-object v2, v2, Lv76;->g:Ljava/lang/String;

    .line 1263
    .line 1264
    :goto_14
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1265
    .line 1266
    .line 1267
    move-result v4

    .line 1268
    if-nez v4, :cond_2f

    .line 1269
    .line 1270
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1271
    .line 1272
    .line 1273
    :cond_2f
    if-lez v14, :cond_30

    .line 1274
    .line 1275
    invoke-interface {v10, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1276
    .line 1277
    .line 1278
    move-result-object v2

    .line 1279
    check-cast v2, Lfq0;

    .line 1280
    .line 1281
    iget-object v2, v2, Lfq0;->a:Lv76;

    .line 1282
    .line 1283
    iget-object v2, v2, Lv76;->c:Ljava/lang/String;

    .line 1284
    .line 1285
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1286
    .line 1287
    .line 1288
    invoke-interface {v10, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1289
    .line 1290
    .line 1291
    move-result-object v2

    .line 1292
    check-cast v2, Lfq0;

    .line 1293
    .line 1294
    iget-object v2, v2, Lfq0;->a:Lv76;

    .line 1295
    .line 1296
    iget-object v2, v2, Lv76;->d:Ljava/lang/String;

    .line 1297
    .line 1298
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1299
    .line 1300
    .line 1301
    :cond_30
    add-int/lit8 v14, v14, 0x1

    .line 1302
    .line 1303
    move-object/from16 v2, p2

    .line 1304
    .line 1305
    move-wide/from16 v4, v20

    .line 1306
    .line 1307
    goto/16 :goto_12

    .line 1308
    .line 1309
    :cond_31
    move-wide/from16 v20, v4

    .line 1310
    .line 1311
    const-string v2, "SKU_OFFER_ID_TOKEN_LIST"

    .line 1312
    .line 1313
    invoke-virtual {v6, v2, v9}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1314
    .line 1315
    .line 1316
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1317
    .line 1318
    .line 1319
    move-result v2

    .line 1320
    if-nez v2, :cond_32

    .line 1321
    .line 1322
    const-string v2, "autoPayBalanceThresholdList"

    .line 1323
    .line 1324
    invoke-virtual {v6, v2, v13}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1325
    .line 1326
    .line 1327
    :cond_32
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1328
    .line 1329
    .line 1330
    move-result v2

    .line 1331
    if-nez v2, :cond_33

    .line 1332
    .line 1333
    const-string v2, "skuDetailsTokens"

    .line 1334
    .line 1335
    invoke-virtual {v6, v2, v8}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1336
    .line 1337
    .line 1338
    :cond_33
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1339
    .line 1340
    .line 1341
    move-result v2

    .line 1342
    if-nez v2, :cond_34

    .line 1343
    .line 1344
    const-string v2, "SKU_SERIALIZED_DOCID_LIST"

    .line 1345
    .line 1346
    invoke-virtual {v6, v2, v11}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1347
    .line 1348
    .line 1349
    :cond_34
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1350
    .line 1351
    .line 1352
    move-result v2

    .line 1353
    if-nez v2, :cond_35

    .line 1354
    .line 1355
    const-string v2, "additionalSkus"

    .line 1356
    .line 1357
    invoke-virtual {v6, v2, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1358
    .line 1359
    .line 1360
    const-string v0, "additionalSkuTypes"

    .line 1361
    .line 1362
    invoke-virtual {v6, v0, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1363
    .line 1364
    .line 1365
    :cond_35
    :goto_15
    const-string v0, "SKU_OFFER_ID_TOKEN_LIST"

    .line 1366
    .line 1367
    invoke-virtual {v6, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 1368
    .line 1369
    .line 1370
    move-result v0

    .line 1371
    if-eqz v0, :cond_36

    .line 1372
    .line 1373
    iget-boolean v0, v1, Ldq0;->o:Z

    .line 1374
    .line 1375
    if-nez v0, :cond_36

    .line 1376
    .line 1377
    sget-object v3, Lle9;->n:Lyq0;

    .line 1378
    .line 1379
    const/16 v2, 0x15

    .line 1380
    .line 1381
    move-wide/from16 v4, v20

    .line 1382
    .line 1383
    const/4 v6, 0x0

    .line 1384
    invoke-virtual/range {v1 .. v6}, Ldq0;->B(ILyq0;JZ)V

    .line 1385
    .line 1386
    .line 1387
    invoke-virtual {v1, v3}, Ldq0;->D(Lyq0;)V

    .line 1388
    .line 1389
    .line 1390
    return-object v3

    .line 1391
    :cond_36
    const/16 v16, 0x0

    .line 1392
    .line 1393
    iget-object v0, v12, Lfq0;->a:Lv76;

    .line 1394
    .line 1395
    iget-object v0, v0, Lv76;->b:Lorg/json/JSONObject;

    .line 1396
    .line 1397
    const-string v2, "packageName"

    .line 1398
    .line 1399
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 1400
    .line 1401
    .line 1402
    move-result-object v0

    .line 1403
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1404
    .line 1405
    .line 1406
    move-result v0

    .line 1407
    if-nez v0, :cond_37

    .line 1408
    .line 1409
    iget-object v0, v12, Lfq0;->a:Lv76;

    .line 1410
    .line 1411
    iget-object v0, v0, Lv76;->b:Lorg/json/JSONObject;

    .line 1412
    .line 1413
    const-string v2, "packageName"

    .line 1414
    .line 1415
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 1416
    .line 1417
    .line 1418
    move-result-object v0

    .line 1419
    const-string v2, "skuPackageName"

    .line 1420
    .line 1421
    invoke-virtual {v6, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1422
    .line 1423
    .line 1424
    const/4 v0, 0x1

    .line 1425
    :goto_16
    const/4 v13, 0x0

    .line 1426
    goto :goto_17

    .line 1427
    :cond_37
    const/4 v0, 0x0

    .line 1428
    goto :goto_16

    .line 1429
    :goto_17
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1430
    .line 1431
    .line 1432
    move-result v2

    .line 1433
    if-nez v2, :cond_38

    .line 1434
    .line 1435
    const-string v2, "accountName"

    .line 1436
    .line 1437
    invoke-virtual {v6, v2, v13}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1438
    .line 1439
    .line 1440
    :cond_38
    invoke-virtual {v7}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 1441
    .line 1442
    .line 1443
    move-result-object v2

    .line 1444
    if-nez v2, :cond_39

    .line 1445
    .line 1446
    const-string v2, "BillingClient"

    .line 1447
    .line 1448
    const-string v3, "Activity\'s intent is null."

    .line 1449
    .line 1450
    invoke-static {v2, v3}, Lta9;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 1451
    .line 1452
    .line 1453
    goto :goto_18

    .line 1454
    :cond_39
    const-string v3, "PROXY_PACKAGE"

    .line 1455
    .line 1456
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 1457
    .line 1458
    .line 1459
    move-result-object v3

    .line 1460
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1461
    .line 1462
    .line 1463
    move-result v3

    .line 1464
    if-nez v3, :cond_3a

    .line 1465
    .line 1466
    const-string v3, "PROXY_PACKAGE"

    .line 1467
    .line 1468
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 1469
    .line 1470
    .line 1471
    move-result-object v2

    .line 1472
    const-string v3, "proxyPackage"

    .line 1473
    .line 1474
    invoke-virtual {v6, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1475
    .line 1476
    .line 1477
    :try_start_2
    iget-object v3, v1, Ldq0;->g:Landroid/content/Context;

    .line 1478
    .line 1479
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 1480
    .line 1481
    .line 1482
    move-result-object v3

    .line 1483
    const/4 v9, 0x0

    .line 1484
    invoke-virtual {v3, v2, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 1485
    .line 1486
    .line 1487
    move-result-object v2

    .line 1488
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 1489
    .line 1490
    const-string v3, "proxyPackageVersion"

    .line 1491
    .line 1492
    invoke-virtual {v6, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1493
    .line 1494
    .line 1495
    goto :goto_18

    .line 1496
    :catch_1
    const-string v2, "proxyPackageVersion"

    .line 1497
    .line 1498
    const-string v3, "package not found"

    .line 1499
    .line 1500
    invoke-virtual {v6, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1501
    .line 1502
    .line 1503
    :cond_3a
    :goto_18
    iget-boolean v2, v1, Ldq0;->r:Z

    .line 1504
    .line 1505
    if-eqz v2, :cond_3b

    .line 1506
    .line 1507
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    .line 1508
    .line 1509
    .line 1510
    move-result v2

    .line 1511
    if-nez v2, :cond_3b

    .line 1512
    .line 1513
    const/16 v0, 0x11

    .line 1514
    .line 1515
    :goto_19
    move v2, v0

    .line 1516
    goto :goto_1a

    .line 1517
    :cond_3b
    iget-boolean v2, v1, Ldq0;->p:Z

    .line 1518
    .line 1519
    if-eqz v2, :cond_3c

    .line 1520
    .line 1521
    if-eqz v0, :cond_3c

    .line 1522
    .line 1523
    const/16 v0, 0xf

    .line 1524
    .line 1525
    goto :goto_19

    .line 1526
    :cond_3c
    iget-boolean v0, v1, Ldq0;->n:Z

    .line 1527
    .line 1528
    if-eqz v0, :cond_3d

    .line 1529
    .line 1530
    const/16 v0, 0x9

    .line 1531
    .line 1532
    goto :goto_19

    .line 1533
    :cond_3d
    const/4 v0, 0x6

    .line 1534
    goto :goto_19

    .line 1535
    :goto_1a
    new-instance v0, Lm59;

    .line 1536
    .line 1537
    move-object/from16 v5, p2

    .line 1538
    .line 1539
    move-object/from16 v3, v19

    .line 1540
    .line 1541
    move-object/from16 v4, v22

    .line 1542
    .line 1543
    invoke-direct/range {v0 .. v6}, Lm59;-><init>(Ldq0;ILjava/lang/String;Ljava/lang/String;Lgq0;Landroid/os/Bundle;)V

    .line 1544
    .line 1545
    .line 1546
    iget-object v12, v1, Ldq0;->e:Landroid/os/Handler;

    .line 1547
    .line 1548
    invoke-virtual {v1}, Ldq0;->e()Ljava/util/concurrent/ExecutorService;

    .line 1549
    .line 1550
    .line 1551
    move-result-object v13

    .line 1552
    const-wide/16 v9, 0x1388

    .line 1553
    .line 1554
    const/4 v11, 0x0

    .line 1555
    move-object v8, v0

    .line 1556
    invoke-static/range {v8 .. v13}, Ldq0;->f(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    .line 1557
    .line 1558
    .line 1559
    move-result-object v0

    .line 1560
    goto :goto_1b

    .line 1561
    :cond_3e
    move-wide/from16 v20, v4

    .line 1562
    .line 1563
    move/from16 v16, v6

    .line 1564
    .line 1565
    move-object/from16 v3, v19

    .line 1566
    .line 1567
    move-object/from16 v4, v22

    .line 1568
    .line 1569
    new-instance v8, Lj25;

    .line 1570
    .line 1571
    const/4 v11, 0x1

    .line 1572
    invoke-direct {v8, v11, v1, v3, v4}, Lj25;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1573
    .line 1574
    .line 1575
    iget-object v12, v1, Ldq0;->e:Landroid/os/Handler;

    .line 1576
    .line 1577
    invoke-virtual {v1}, Ldq0;->e()Ljava/util/concurrent/ExecutorService;

    .line 1578
    .line 1579
    .line 1580
    move-result-object v13

    .line 1581
    const-wide/16 v9, 0x1388

    .line 1582
    .line 1583
    const/4 v11, 0x0

    .line 1584
    invoke-static/range {v8 .. v13}, Ldq0;->f(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    .line 1585
    .line 1586
    .line 1587
    move-result-object v0

    .line 1588
    :goto_1b
    if-nez v0, :cond_3f

    .line 1589
    .line 1590
    :try_start_3
    sget-object v3, Lle9;->c:Lyq0;
    :try_end_3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 1591
    .line 1592
    const/16 v2, 0x19

    .line 1593
    .line 1594
    move/from16 v6, v16

    .line 1595
    .line 1596
    move-wide/from16 v4, v20

    .line 1597
    .line 1598
    :try_start_4
    invoke-virtual/range {v1 .. v6}, Ldq0;->B(ILyq0;JZ)V

    .line 1599
    .line 1600
    .line 1601
    invoke-virtual {v1, v3}, Ldq0;->D(Lyq0;)V

    .line 1602
    .line 1603
    .line 1604
    return-object v3

    .line 1605
    :catch_2
    move-exception v0

    .line 1606
    goto/16 :goto_23

    .line 1607
    .line 1608
    :catch_3
    move-exception v0

    .line 1609
    goto/16 :goto_24

    .line 1610
    .line 1611
    :catch_4
    move-exception v0

    .line 1612
    goto/16 :goto_24

    .line 1613
    .line 1614
    :catch_5
    move-exception v0

    .line 1615
    move/from16 v6, v16

    .line 1616
    .line 1617
    move-wide/from16 v4, v20

    .line 1618
    .line 1619
    goto/16 :goto_23

    .line 1620
    .line 1621
    :catch_6
    move-exception v0

    .line 1622
    :goto_1c
    move/from16 v6, v16

    .line 1623
    .line 1624
    move-wide/from16 v4, v20

    .line 1625
    .line 1626
    goto/16 :goto_24

    .line 1627
    .line 1628
    :catch_7
    move-exception v0

    .line 1629
    goto :goto_1c

    .line 1630
    :cond_3f
    move/from16 v6, v16

    .line 1631
    .line 1632
    move-wide/from16 v4, v20

    .line 1633
    .line 1634
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1635
    .line 1636
    const-wide/16 v8, 0x1388

    .line 1637
    .line 1638
    invoke-interface {v0, v8, v9, v2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 1639
    .line 1640
    .line 1641
    move-result-object v0

    .line 1642
    move-object v2, v0

    .line 1643
    check-cast v2, Landroid/os/Bundle;

    .line 1644
    .line 1645
    const-string v0, "BillingClient"

    .line 1646
    .line 1647
    invoke-static {v2, v0}, Lta9;->a(Landroid/os/Bundle;Ljava/lang/String;)I

    .line 1648
    .line 1649
    .line 1650
    move-result v0

    .line 1651
    const-string v3, "BillingClient"

    .line 1652
    .line 1653
    invoke-static {v2, v3}, Lta9;->f(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    .line 1654
    .line 1655
    .line 1656
    move-result-object v3

    .line 1657
    if-eqz v0, :cond_45

    .line 1658
    .line 1659
    const-string v7, "BillingClient"

    .line 1660
    .line 1661
    new-instance v8, Ljava/lang/StringBuilder;

    .line 1662
    .line 1663
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1664
    .line 1665
    .line 1666
    const-string v9, "Unable to buy item, Error response code: "

    .line 1667
    .line 1668
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1669
    .line 1670
    .line 1671
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1672
    .line 1673
    .line 1674
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1675
    .line 1676
    .line 1677
    move-result-object v8

    .line 1678
    invoke-static {v7, v8}, Lta9;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 1679
    .line 1680
    .line 1681
    invoke-static {v0, v3}, Lle9;->a(ILjava/lang/String;)Lyq0;

    .line 1682
    .line 1683
    .line 1684
    move-result-object v3

    .line 1685
    const-string v7, "BillingClient"
    :try_end_4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 1686
    .line 1687
    if-nez v2, :cond_40

    .line 1688
    .line 1689
    :goto_1d
    const/4 v7, 0x1

    .line 1690
    const/4 v11, 0x1

    .line 1691
    goto :goto_1f

    .line 1692
    :cond_40
    :try_start_5
    const-string v0, "LOG_REASON"

    .line 1693
    .line 1694
    invoke-virtual {v2, v0}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 1695
    .line 1696
    .line 1697
    move-result-object v0

    .line 1698
    if-nez v0, :cond_41

    .line 1699
    .line 1700
    goto :goto_1d

    .line 1701
    :cond_41
    instance-of v8, v0, Ljava/lang/Integer;

    .line 1702
    .line 1703
    if-eqz v8, :cond_42

    .line 1704
    .line 1705
    check-cast v0, Ljava/lang/Integer;

    .line 1706
    .line 1707
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 1708
    .line 1709
    .line 1710
    move-result v0

    .line 1711
    invoke-static {v0}, Lu48;->f(I)I

    .line 1712
    .line 1713
    .line 1714
    move-result v11

    .line 1715
    const/4 v7, 0x1

    .line 1716
    goto :goto_1f

    .line 1717
    :catchall_1
    move-exception v0

    .line 1718
    goto :goto_1e

    .line 1719
    :cond_42
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1720
    .line 1721
    .line 1722
    move-result-object v0

    .line 1723
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1724
    .line 1725
    .line 1726
    move-result-object v0

    .line 1727
    new-instance v8, Ljava/lang/StringBuilder;

    .line 1728
    .line 1729
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1730
    .line 1731
    .line 1732
    const-string v9, "Unexpected type for bundle log reason: "

    .line 1733
    .line 1734
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1735
    .line 1736
    .line 1737
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1738
    .line 1739
    .line 1740
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1741
    .line 1742
    .line 1743
    move-result-object v0

    .line 1744
    invoke-static {v7, v0}, Lta9;->h(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1745
    .line 1746
    .line 1747
    goto :goto_1d

    .line 1748
    :goto_1e
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1749
    .line 1750
    .line 1751
    move-result-object v0

    .line 1752
    const-string v8, "Failed to get log reason from bundle: "

    .line 1753
    .line 1754
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1755
    .line 1756
    .line 1757
    move-result-object v0

    .line 1758
    invoke-virtual {v8, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1759
    .line 1760
    .line 1761
    move-result-object v0

    .line 1762
    invoke-static {v7, v0}, Lta9;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 1763
    .line 1764
    .line 1765
    goto :goto_1d

    .line 1766
    :goto_1f
    if-ne v11, v7, :cond_43

    .line 1767
    .line 1768
    const/16 v11, 0x17

    .line 1769
    .line 1770
    :cond_43
    const-string v7, "BillingClient"
    :try_end_6
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 1771
    .line 1772
    if-nez v2, :cond_44

    .line 1773
    .line 1774
    :goto_20
    move v7, v6

    .line 1775
    move v2, v11

    .line 1776
    move-wide v5, v4

    .line 1777
    const/4 v4, 0x0

    .line 1778
    goto :goto_21

    .line 1779
    :cond_44
    :try_start_7
    const-string v0, "ADDITIONAL_LOG_DETAILS"

    .line 1780
    .line 1781
    invoke-virtual {v2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1782
    .line 1783
    .line 1784
    move-result-object v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1785
    move v7, v6

    .line 1786
    move v2, v11

    .line 1787
    move-wide v5, v4

    .line 1788
    move-object v4, v9

    .line 1789
    goto :goto_21

    .line 1790
    :catchall_2
    move-exception v0

    .line 1791
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1792
    .line 1793
    .line 1794
    move-result-object v0

    .line 1795
    const-string v2, "Failed to get additional log details from bundle: "

    .line 1796
    .line 1797
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1798
    .line 1799
    .line 1800
    move-result-object v0

    .line 1801
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1802
    .line 1803
    .line 1804
    move-result-object v0

    .line 1805
    invoke-static {v7, v0}, Lta9;->h(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 1806
    .line 1807
    .line 1808
    goto :goto_20

    .line 1809
    :goto_21
    :try_start_9
    invoke-virtual/range {v1 .. v7}, Ldq0;->C(ILyq0;Ljava/lang/String;JZ)V
    :try_end_9
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_9 .. :try_end_9} :catch_a
    .catch Ljava/util/concurrent/CancellationException; {:try_start_9 .. :try_end_9} :catch_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    .line 1810
    .line 1811
    .line 1812
    move-wide v4, v5

    .line 1813
    move v6, v7

    .line 1814
    :try_start_a
    invoke-virtual {v1, v3}, Ldq0;->D(Lyq0;)V

    .line 1815
    .line 1816
    .line 1817
    return-object v3

    .line 1818
    :catch_8
    move-exception v0

    .line 1819
    move-wide v4, v5

    .line 1820
    move v6, v7

    .line 1821
    goto :goto_23

    .line 1822
    :catch_9
    move-exception v0

    .line 1823
    :goto_22
    move-wide v4, v5

    .line 1824
    move v6, v7

    .line 1825
    goto :goto_24

    .line 1826
    :catch_a
    move-exception v0

    .line 1827
    goto :goto_22

    .line 1828
    :cond_45
    new-instance v0, Landroid/content/Intent;

    .line 1829
    .line 1830
    const-class v3, Lcom/android/billingclient/api/ProxyBillingActivity;

    .line 1831
    .line 1832
    invoke-direct {v0, v7, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1833
    .line 1834
    .line 1835
    const-string v3, "BUY_INTENT"

    .line 1836
    .line 1837
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 1838
    .line 1839
    .line 1840
    move-result-object v2

    .line 1841
    check-cast v2, Landroid/app/PendingIntent;

    .line 1842
    .line 1843
    const-string v3, "BUY_INTENT"

    .line 1844
    .line 1845
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1846
    .line 1847
    .line 1848
    const-string v2, "billingClientTransactionId"

    .line 1849
    .line 1850
    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1851
    .line 1852
    .line 1853
    const-string v2, "wasServiceAutoReconnected"

    .line 1854
    .line 1855
    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1856
    .line 1857
    .line 1858
    invoke-virtual {v7, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_a
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    .line 1859
    .line 1860
    .line 1861
    sget-object v0, Lle9;->i:Lyq0;

    .line 1862
    .line 1863
    return-object v0

    .line 1864
    :goto_23
    const-string v2, "BillingClient"

    .line 1865
    .line 1866
    const-string v3, "Exception while launching billing flow. Try to reconnect"

    .line 1867
    .line 1868
    invoke-static {v2, v3, v0}, Lta9;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1869
    .line 1870
    .line 1871
    sget-object v3, Lle9;->j:Lyq0;

    .line 1872
    .line 1873
    invoke-static {v0}, Lzd9;->a(Ljava/lang/Exception;)Ljava/lang/String;

    .line 1874
    .line 1875
    .line 1876
    move-result-object v0

    .line 1877
    const/4 v2, 0x5

    .line 1878
    move v7, v6

    .line 1879
    move-wide v5, v4

    .line 1880
    move-object v4, v0

    .line 1881
    invoke-virtual/range {v1 .. v7}, Ldq0;->C(ILyq0;Ljava/lang/String;JZ)V

    .line 1882
    .line 1883
    .line 1884
    invoke-virtual {v1, v3}, Ldq0;->D(Lyq0;)V

    .line 1885
    .line 1886
    .line 1887
    return-object v3

    .line 1888
    :goto_24
    const-string v2, "BillingClient"

    .line 1889
    .line 1890
    const-string v3, "Time out while launching billing flow. Try to reconnect"

    .line 1891
    .line 1892
    invoke-static {v2, v3, v0}, Lta9;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1893
    .line 1894
    .line 1895
    sget-object v3, Lle9;->k:Lyq0;

    .line 1896
    .line 1897
    invoke-static {v0}, Lzd9;->a(Ljava/lang/Exception;)Ljava/lang/String;

    .line 1898
    .line 1899
    .line 1900
    move-result-object v0

    .line 1901
    const/4 v2, 0x4

    .line 1902
    move v7, v6

    .line 1903
    move-wide v5, v4

    .line 1904
    move-object v4, v0

    .line 1905
    invoke-virtual/range {v1 .. v7}, Ldq0;->C(ILyq0;Ljava/lang/String;JZ)V

    .line 1906
    .line 1907
    .line 1908
    invoke-virtual {v1, v3}, Ldq0;->D(Lyq0;)V

    .line 1909
    .line 1910
    .line 1911
    return-object v3

    .line 1912
    :cond_46
    invoke-static {}, Le6;->d()V

    .line 1913
    .line 1914
    .line 1915
    goto/16 :goto_11

    .line 1916
    .line 1917
    :goto_25
    :try_start_b
    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 1918
    throw v0

    .line 1919
    :cond_47
    move-wide v5, v2

    .line 1920
    sget-object v0, Lle9;->q:Lyq0;

    .line 1921
    .line 1922
    const/16 v2, 0xc

    .line 1923
    .line 1924
    invoke-virtual {v1, v2, v0, v5, v6}, Ldq0;->z(ILyq0;J)V

    .line 1925
    .line 1926
    .line 1927
    return-object v0
.end method

.method public c(Ljq6;Lw76;)V
    .locals 6

    .line 1
    new-instance v0, Lj25;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, v1, p0, p2, p1}, Lj25;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    new-instance v3, Lte2;

    .line 8
    .line 9
    const/4 p1, 0x5

    .line 10
    invoke-direct {v3, p0, p2, p1}, Lte2;-><init>(Ldq0;Ljava/lang/Object;I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Ldq0;->k()Landroid/os/Handler;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    invoke-virtual {p0}, Ldq0;->e()Ljava/util/concurrent/ExecutorService;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    const-wide/16 v1, 0x7530

    .line 22
    .line 23
    invoke-static/range {v0 .. v5}, Ldq0;->f(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-nez p1, :cond_0

    .line 28
    .line 29
    invoke-virtual {p0}, Ldq0;->n()Lyq0;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const/16 v0, 0x19

    .line 34
    .line 35
    const/4 v1, 0x7

    .line 36
    invoke-virtual {p0, v0, v1, p1}, Ldq0;->y(IILyq0;)V

    .line 37
    .line 38
    .line 39
    new-instance p0, Lib;

    .line 40
    .line 41
    sget-object v0, Lma9;->b:Lga9;

    .line 42
    .line 43
    sget-object v0, Lmb9;->e:Lmb9;

    .line 44
    .line 45
    const/16 v1, 0xa

    .line 46
    .line 47
    invoke-direct {p0, v1, v0, v0}, Lib;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    invoke-interface {p2, p1, p0}, Lw76;->a(Lyq0;Lib;)V

    .line 51
    .line 52
    .line 53
    :cond_0
    return-void
.end method

.method public d(Leq0;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ldq0;->s(Leq0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final declared-synchronized e()Ljava/util/concurrent/ExecutorService;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Ldq0;->z:Ljava/util/concurrent/ExecutorService;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget v0, Lta9;->a:I

    .line 7
    .line 8
    new-instance v1, Lv99;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Lv99;-><init>(Ldq0;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Ldq0;->z:Ljava/util/concurrent/ExecutorService;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    iget-object v0, p0, Ldq0;->z:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    monitor-exit p0

    .line 25
    return-object v0

    .line 26
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    throw v0
.end method

.method public final g()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object p0, p0, Ldq0;->g:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final i(Lkq0;Lyq0;ILjava/lang/Exception;)V
    .locals 2

    .line 1
    const-string v0, "BillingClient"

    .line 2
    .line 3
    const-string v1, "Error in acknowledge purchase!"

    .line 4
    .line 5
    invoke-static {v0, v1, p4}, Lta9;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x3

    .line 9
    invoke-static {p4}, Lzd9;->a(Ljava/lang/Exception;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p4

    .line 13
    invoke-virtual {p0, p3, v0, p2, p4}, Ldq0;->A(IILyq0;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p2}, Lkq0;->a(Lyq0;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final k()Landroid/os/Handler;
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Ldq0;->e:Landroid/os/Handler;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    new-instance p0, Landroid/os/Handler;

    .line 11
    .line 12
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 17
    .line 18
    .line 19
    return-object p0
.end method

.method public final l(Lyq0;ILjava/lang/String;Ljava/lang/Exception;)Lwb9;
    .locals 1

    .line 1
    const-string v0, "BillingClient"

    .line 2
    .line 3
    invoke-static {v0, p3, p4}, Lta9;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    .line 5
    .line 6
    const/4 p3, 0x7

    .line 7
    invoke-static {p4}, Lzd9;->a(Ljava/lang/Exception;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p4

    .line 11
    invoke-virtual {p0, p2, p3, p1, p4}, Ldq0;->A(IILyq0;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    new-instance p0, Lwb9;

    .line 15
    .line 16
    iget p2, p1, Lyq0;->a:I

    .line 17
    .line 18
    iget-object p1, p1, Lyq0;->c:Ljava/lang/String;

    .line 19
    .line 20
    new-instance p3, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    new-instance p4, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, p2, p1, p3, p4}, Lwb9;-><init>(ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 31
    .line 32
    .line 33
    return-object p0
.end method

.method public final m()Lyq0;
    .locals 3

    .line 1
    const-string v0, "BillingClient"

    .line 2
    .line 3
    const-string v1, "Service connection is valid. No need to re-initialize."

    .line 4
    .line 5
    invoke-static {v0, v1}, Lta9;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lno9;->q()Lho9;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lri9;->b()V

    .line 13
    .line 14
    .line 15
    iget-object v1, v0, Lri9;->b:Lxi9;

    .line 16
    .line 17
    check-cast v1, Lno9;

    .line 18
    .line 19
    const/4 v2, 0x6

    .line 20
    invoke-static {v1, v2}, Lno9;->p(Lno9;I)V

    .line 21
    .line 22
    .line 23
    invoke-static {}, Luq9;->p()Ltq9;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Lri9;->b()V

    .line 28
    .line 29
    .line 30
    iget-object v2, v1, Lri9;->b:Lxi9;

    .line 31
    .line 32
    check-cast v2, Luq9;

    .line 33
    .line 34
    invoke-static {v2}, Luq9;->u(Luq9;)V

    .line 35
    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    invoke-virtual {v1, v2}, Ltq9;->c(Z)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ltq9;->d()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Lri9;->b()V

    .line 45
    .line 46
    .line 47
    iget-object v2, v0, Lri9;->b:Lxi9;

    .line 48
    .line 49
    check-cast v2, Lno9;

    .line 50
    .line 51
    invoke-virtual {v1}, Lri9;->a()Lxi9;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    check-cast v1, Luq9;

    .line 56
    .line 57
    invoke-static {v2, v1}, Lno9;->u(Lno9;Luq9;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Lri9;->a()Lxi9;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Lno9;

    .line 65
    .line 66
    invoke-virtual {p0, v0}, Ldq0;->p(Lno9;)V

    .line 67
    .line 68
    .line 69
    sget-object p0, Lle9;->i:Lyq0;

    .line 70
    .line 71
    return-object p0
.end method

.method public final n()Lyq0;
    .locals 5

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x0

    .line 3
    filled-new-array {v1, v0}, [I

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v2, p0, Ldq0;->a:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v2

    .line 10
    :goto_0
    const/4 v3, 0x2

    .line 11
    if-ge v1, v3, :cond_1

    .line 12
    .line 13
    :try_start_0
    aget v3, v0, v1

    .line 14
    .line 15
    iget v4, p0, Ldq0;->b:I

    .line 16
    .line 17
    if-ne v4, v3, :cond_0

    .line 18
    .line 19
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    sget-object p0, Lle9;->j:Lyq0;

    .line 21
    .line 22
    return-object p0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    sget-object p0, Lle9;->h:Lyq0;

    .line 30
    .line 31
    return-object p0

    .line 32
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 33
    throw p0
.end method

.method public final o(Ldo9;)V
    .locals 4

    .line 1
    const-string v0, "Unable to log."

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Ldq0;->h:Ll39;

    .line 4
    .line 5
    iget p0, p0, Ldq0;->l:I

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    .line 9
    .line 10
    :try_start_1
    iget-object v2, v1, Ll39;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v2, Lhp9;

    .line 13
    .line 14
    invoke-virtual {v2}, Lxi9;->l()Lri9;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lfp9;

    .line 19
    .line 20
    invoke-virtual {v2}, Lri9;->b()V

    .line 21
    .line 22
    .line 23
    iget-object v3, v2, Lri9;->b:Lxi9;

    .line 24
    .line 25
    check-cast v3, Lhp9;

    .line 26
    .line 27
    invoke-static {v3, p0}, Lhp9;->C(Lhp9;I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Lri9;->a()Lxi9;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    check-cast p0, Lhp9;

    .line 35
    .line 36
    iput-object p0, v1, Ll39;->b:Ljava/lang/Object;

    .line 37
    .line 38
    invoke-virtual {v1, p1}, Ll39;->p(Ldo9;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    :try_start_2
    const-string p1, "BillingLogger"

    .line 44
    .line 45
    invoke-static {p1, v0, p0}, Lta9;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :catchall_1
    move-exception p0

    .line 50
    const-string p1, "BillingClient"

    .line 51
    .line 52
    invoke-static {p1, v0, p0}, Lta9;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public final p(Lno9;)V
    .locals 5

    .line 1
    const-string v0, "BillingLogger"

    .line 2
    .line 3
    const-string v1, "Unable to log."

    .line 4
    .line 5
    :try_start_0
    iget-object v2, p0, Ldq0;->h:Ll39;

    .line 6
    .line 7
    iget p0, p0, Ldq0;->l:I

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 10
    .line 11
    .line 12
    :try_start_1
    iget-object v3, v2, Ll39;->b:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v3, Lhp9;

    .line 15
    .line 16
    invoke-virtual {v3}, Lxi9;->l()Lri9;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    check-cast v3, Lfp9;

    .line 21
    .line 22
    invoke-virtual {v3}, Lri9;->b()V

    .line 23
    .line 24
    .line 25
    iget-object v4, v3, Lri9;->b:Lxi9;

    .line 26
    .line 27
    check-cast v4, Lhp9;

    .line 28
    .line 29
    invoke-static {v4, p0}, Lhp9;->C(Lhp9;I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3}, Lri9;->a()Lxi9;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    check-cast p0, Lhp9;

    .line 37
    .line 38
    iput-object p0, v2, Ll39;->b:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 39
    .line 40
    :try_start_2
    invoke-virtual {v2, p1, p0}, Ll39;->x(Lno9;Lhp9;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    :try_start_3
    invoke-static {v0, v1, p0}, Lta9;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catchall_1
    move-exception p0

    .line 50
    :try_start_4
    invoke-static {v0, v1, p0}, Lta9;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 51
    .line 52
    .line 53
    :goto_0
    return-void

    .line 54
    :catchall_2
    move-exception p0

    .line 55
    const-string p1, "BillingClient"

    .line 56
    .line 57
    invoke-static {p1, v1, p0}, Lta9;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public final q(ILyq0;)V
    .locals 3

    .line 1
    :try_start_0
    sget v0, Lzd9;->a:I

    .line 2
    .line 3
    sget-object v0, Lwo9;->b:Lwo9;

    .line 4
    .line 5
    const/4 v1, 0x6

    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-static {p1, v1, p2, v2, v0}, Lzd9;->b(IILyq0;Ljava/lang/String;Lwo9;)Ldo9;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lxi9;->l()Lri9;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lco9;

    .line 16
    .line 17
    invoke-static {}, Luq9;->p()Ltq9;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    const/4 v0, 0x0

    .line 22
    invoke-virtual {p2, v0}, Ltq9;->c(Z)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2}, Ltq9;->d()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p2}, Lco9;->d(Ltq9;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Lri9;->a()Lxi9;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Ldo9;

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Ldq0;->o(Ldo9;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    const-string p1, "BillingClient"

    .line 43
    .line 44
    const-string p2, "Unable to log."

    .line 45
    .line 46
    invoke-static {p1, p2, p0}, Lta9;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final r(I)V
    .locals 6

    .line 1
    const-string v0, "Setting clientState from "

    .line 2
    .line 3
    iget-object v1, p0, Ldq0;->a:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget v2, p0, Ldq0;->b:I

    .line 7
    .line 8
    const/4 v3, 0x3

    .line 9
    if-ne v2, v3, :cond_0

    .line 10
    .line 11
    monitor-exit v1

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    goto :goto_2

    .line 15
    :cond_0
    const-string v2, "BillingClient"

    .line 16
    .line 17
    iget v3, p0, Ldq0;->b:I

    .line 18
    .line 19
    const/4 v4, 0x2

    .line 20
    const/4 v5, 0x1

    .line 21
    if-eqz v3, :cond_3

    .line 22
    .line 23
    if-eq v3, v5, :cond_2

    .line 24
    .line 25
    if-eq v3, v4, :cond_1

    .line 26
    .line 27
    const-string v3, "CLOSED"

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const-string v3, "CONNECTED"

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    const-string v3, "CONNECTING"

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_3
    const-string v3, "DISCONNECTED"

    .line 37
    .line 38
    :goto_0
    if-eqz p1, :cond_6

    .line 39
    .line 40
    if-eq p1, v5, :cond_5

    .line 41
    .line 42
    if-eq p1, v4, :cond_4

    .line 43
    .line 44
    const-string v4, "CLOSED"

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_4
    const-string v4, "CONNECTED"

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_5
    const-string v4, "CONNECTING"

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_6
    const-string v4, "DISCONNECTED"

    .line 54
    .line 55
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v0, " to "

    .line 64
    .line 65
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-static {v2, v0}, Lta9;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iput p1, p0, Ldq0;->b:I

    .line 79
    .line 80
    monitor-exit v1

    .line 81
    return-void

    .line 82
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    throw p0
.end method

.method public final s(Leq0;)V
    .locals 7

    .line 1
    iget-object v0, p0, Ldq0;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Ldq0;->v()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Ldq0;->m()Lyq0;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    monitor-exit v0

    .line 15
    goto/16 :goto_3

    .line 16
    .line 17
    :catchall_0
    move-exception p0

    .line 18
    goto/16 :goto_4

    .line 19
    .line 20
    :cond_0
    iget v1, p0, Ldq0;->b:I

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    if-ne v1, v2, :cond_1

    .line 24
    .line 25
    const-string v1, "BillingClient"

    .line 26
    .line 27
    const-string v2, "Client is already in the process of connecting to billing service."

    .line 28
    .line 29
    invoke-static {v1, v2}, Lta9;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    sget-object v1, Lle9;->d:Lyq0;

    .line 33
    .line 34
    const/16 v2, 0x25

    .line 35
    .line 36
    invoke-virtual {p0, v2, v1}, Ldq0;->q(ILyq0;)V

    .line 37
    .line 38
    .line 39
    monitor-exit v0

    .line 40
    :goto_0
    move-object p0, v1

    .line 41
    goto/16 :goto_3

    .line 42
    .line 43
    :cond_1
    iget v1, p0, Ldq0;->b:I

    .line 44
    .line 45
    const/4 v3, 0x3

    .line 46
    if-ne v1, v3, :cond_2

    .line 47
    .line 48
    const-string v1, "BillingClient"

    .line 49
    .line 50
    const-string v2, "Client was already closed and can\'t be reused. Please create another instance."

    .line 51
    .line 52
    invoke-static {v1, v2}, Lta9;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    sget-object v1, Lle9;->j:Lyq0;

    .line 56
    .line 57
    const/16 v2, 0x26

    .line 58
    .line 59
    invoke-virtual {p0, v2, v1}, Ldq0;->q(ILyq0;)V

    .line 60
    .line 61
    .line 62
    monitor-exit v0

    .line 63
    goto :goto_0

    .line 64
    :cond_2
    invoke-virtual {p0, v2}, Ldq0;->r(I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Ldq0;->t()V

    .line 68
    .line 69
    .line 70
    const-string v1, "BillingClient"

    .line 71
    .line 72
    const-string v3, "Starting in-app billing setup."

    .line 73
    .line 74
    invoke-static {v1, v3}, Lta9;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    new-instance v1, Loa9;

    .line 78
    .line 79
    invoke-direct {v1, p0, p1}, Loa9;-><init>(Ldq0;Leq0;)V

    .line 80
    .line 81
    .line 82
    iput-object v1, p0, Ldq0;->j:Loa9;

    .line 83
    .line 84
    iget-object v1, p0, Ldq0;->j:Loa9;

    .line 85
    .line 86
    iget-object v3, v1, Loa9;->d:Ldq0;

    .line 87
    .line 88
    iget-object v3, v3, Ldq0;->a:Ljava/lang/Object;

    .line 89
    .line 90
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :try_start_1
    iget-object v1, v1, Loa9;->b:Lt99;

    .line 92
    .line 93
    const-wide/16 v4, 0x0

    .line 94
    .line 95
    iput-wide v4, v1, Lt99;->c:J

    .line 96
    .line 97
    const/4 v4, 0x0

    .line 98
    iput-boolean v4, v1, Lt99;->b:Z

    .line 99
    .line 100
    invoke-virtual {v1}, Lt99;->a()V

    .line 101
    .line 102
    .line 103
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 104
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 105
    new-instance v0, Landroid/content/Intent;

    .line 106
    .line 107
    const-string v1, "com.android.vending.billing.InAppBillingService.BIND"

    .line 108
    .line 109
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    const-string v1, "com.android.vending"

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    .line 116
    .line 117
    iget-object v1, p0, Ldq0;->g:Landroid/content/Context;

    .line 118
    .line 119
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-virtual {v1, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    if-eqz v1, :cond_8

    .line 128
    .line 129
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 130
    .line 131
    .line 132
    move-result v3

    .line 133
    if-nez v3, :cond_8

    .line 134
    .line 135
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 140
    .line 141
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 142
    .line 143
    const/16 v3, 0x28

    .line 144
    .line 145
    if-eqz v1, :cond_7

    .line 146
    .line 147
    iget-object v5, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 148
    .line 149
    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 150
    .line 151
    const-string v6, "com.android.vending"

    .line 152
    .line 153
    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v6

    .line 157
    if-eqz v6, :cond_6

    .line 158
    .line 159
    if-eqz v1, :cond_6

    .line 160
    .line 161
    new-instance v3, Landroid/content/ComponentName;

    .line 162
    .line 163
    invoke-direct {v3, v5, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    new-instance v1, Landroid/content/Intent;

    .line 167
    .line 168
    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 172
    .line 173
    .line 174
    iget-object v0, p0, Ldq0;->c:Ljava/lang/String;

    .line 175
    .line 176
    const-string v3, "playBillingLibraryVersion"

    .line 177
    .line 178
    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    .line 180
    .line 181
    iget-object v0, p0, Ldq0;->a:Ljava/lang/Object;

    .line 182
    .line 183
    monitor-enter v0

    .line 184
    :try_start_3
    iget v3, p0, Ldq0;->b:I

    .line 185
    .line 186
    const/4 v5, 0x2

    .line 187
    if-ne v3, v5, :cond_3

    .line 188
    .line 189
    invoke-virtual {p0}, Ldq0;->m()Lyq0;

    .line 190
    .line 191
    .line 192
    move-result-object p0

    .line 193
    monitor-exit v0

    .line 194
    goto :goto_3

    .line 195
    :catchall_1
    move-exception p0

    .line 196
    goto :goto_1

    .line 197
    :cond_3
    iget v3, p0, Ldq0;->b:I

    .line 198
    .line 199
    if-eq v3, v2, :cond_4

    .line 200
    .line 201
    const-string v1, "BillingClient"

    .line 202
    .line 203
    const-string v2, "Client state no longer CONNECTING, returning service disconnected."

    .line 204
    .line 205
    invoke-static {v1, v2}, Lta9;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    sget-object v1, Lle9;->j:Lyq0;

    .line 209
    .line 210
    const/16 v2, 0x69

    .line 211
    .line 212
    invoke-virtual {p0, v2, v1}, Ldq0;->q(ILyq0;)V

    .line 213
    .line 214
    .line 215
    monitor-exit v0

    .line 216
    goto/16 :goto_0

    .line 217
    .line 218
    :cond_4
    iget-object v3, p0, Ldq0;->j:Loa9;

    .line 219
    .line 220
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 221
    iget-object v0, p0, Ldq0;->g:Landroid/content/Context;

    .line 222
    .line 223
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 224
    .line 225
    .line 226
    move-result v0

    .line 227
    if-eqz v0, :cond_5

    .line 228
    .line 229
    const-string p0, "BillingClient"

    .line 230
    .line 231
    const-string v0, "Service was bonded successfully."

    .line 232
    .line 233
    invoke-static {p0, v0}, Lta9;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    const/4 p0, 0x0

    .line 237
    goto :goto_3

    .line 238
    :cond_5
    const-string v0, "BillingClient"

    .line 239
    .line 240
    const-string v1, "Connection to Billing service is blocked."

    .line 241
    .line 242
    invoke-static {v0, v1}, Lta9;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    const/16 v3, 0x27

    .line 246
    .line 247
    goto :goto_2

    .line 248
    :goto_1
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 249
    throw p0

    .line 250
    :cond_6
    const-string v0, "BillingClient"

    .line 251
    .line 252
    const-string v1, "The device doesn\'t have valid Play Store."

    .line 253
    .line 254
    invoke-static {v0, v1}, Lta9;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    goto :goto_2

    .line 258
    :cond_7
    const-string v0, "BillingClient"

    .line 259
    .line 260
    const-string v1, "The device doesn\'t have valid Play Store."

    .line 261
    .line 262
    invoke-static {v0, v1}, Lta9;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    goto :goto_2

    .line 266
    :cond_8
    const/16 v3, 0x29

    .line 267
    .line 268
    :goto_2
    invoke-virtual {p0, v4}, Ldq0;->r(I)V

    .line 269
    .line 270
    .line 271
    const-string v0, "BillingClient"

    .line 272
    .line 273
    const-string v1, "Billing service unavailable on device."

    .line 274
    .line 275
    invoke-static {v0, v1}, Lta9;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    sget-object v0, Lle9;->b:Lyq0;

    .line 279
    .line 280
    invoke-virtual {p0, v3, v0}, Ldq0;->q(ILyq0;)V

    .line 281
    .line 282
    .line 283
    move-object p0, v0

    .line 284
    :goto_3
    if-eqz p0, :cond_9

    .line 285
    .line 286
    invoke-interface {p1, p0}, Leq0;->a(Lyq0;)V

    .line 287
    .line 288
    .line 289
    :cond_9
    return-void

    .line 290
    :catchall_2
    move-exception p0

    .line 291
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 292
    :try_start_6
    throw p0

    .line 293
    :goto_4
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 294
    throw p0
.end method

.method public final t()V
    .locals 5

    .line 1
    iget-object v0, p0, Ldq0;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Ldq0;->j:Loa9;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    :try_start_1
    iget-object v2, p0, Ldq0;->g:Landroid/content/Context;

    .line 10
    .line 11
    iget-object v3, p0, Ldq0;->j:Loa9;

    .line 12
    .line 13
    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 14
    .line 15
    .line 16
    :try_start_2
    iput-object v1, p0, Ldq0;->i:Lw89;

    .line 17
    .line 18
    iput-object v1, p0, Ldq0;->j:Loa9;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto :goto_1

    .line 23
    :catchall_1
    move-exception v2

    .line 24
    :try_start_3
    const-string v3, "BillingClient"

    .line 25
    .line 26
    const-string v4, "There was an exception while unbinding service!"

    .line 27
    .line 28
    invoke-static {v3, v4, v2}, Lta9;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 29
    .line 30
    .line 31
    :try_start_4
    iput-object v1, p0, Ldq0;->i:Lw89;

    .line 32
    .line 33
    iput-object v1, p0, Ldq0;->j:Loa9;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_2
    move-exception v2

    .line 37
    iput-object v1, p0, Ldq0;->i:Lw89;

    .line 38
    .line 39
    iput-object v1, p0, Ldq0;->j:Loa9;

    .line 40
    .line 41
    throw v2

    .line 42
    :cond_0
    :goto_0
    monitor-exit v0

    .line 43
    return-void

    .line 44
    :goto_1
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 45
    throw p0
.end method

.method public final u()Z
    .locals 21

    .line 1
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2
    .line 3
    move-object/from16 v2, p0

    .line 4
    .line 5
    iget-object v3, v2, Ldq0;->B:Lwx3;

    .line 6
    .line 7
    if-eqz v3, :cond_6

    .line 8
    .line 9
    invoke-virtual {v3}, Lwx3;->F()J

    .line 10
    .line 11
    .line 12
    move-result-wide v4

    .line 13
    const/4 v0, 0x1

    .line 14
    const-wide/16 v6, 0x7530

    .line 15
    .line 16
    move v8, v0

    .line 17
    move-wide v9, v6

    .line 18
    :goto_0
    const/4 v11, 0x3

    .line 19
    const-string v12, "BillingClient"

    .line 20
    .line 21
    if-gt v8, v11, :cond_5

    .line 22
    .line 23
    const-wide/16 v13, 0x0

    .line 24
    .line 25
    :try_start_0
    invoke-static {v13, v14, v9, v10}, Ljava/lang/Math;->max(JJ)J

    .line 26
    .line 27
    .line 28
    move-result-wide v9

    .line 29
    cmp-long v0, v9, v13

    .line 30
    .line 31
    if-gtz v0, :cond_0

    .line 32
    .line 33
    const-string v0, "No time remaining for reconnection attempt."

    .line 34
    .line 35
    invoke-static {v12, v0}, Lta9;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Ldq0;->v()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    return v0

    .line 43
    :catch_0
    move-exception v0

    .line 44
    goto :goto_1

    .line 45
    :cond_0
    const-string v0, "Already connected or not opted into auto reconnection."

    .line 46
    .line 47
    invoke-static {v12, v0}, Lta9;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    sget-object v0, Lle9;->i:Lyq0;

    .line 51
    .line 52
    new-instance v9, Lge9;

    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    iget v0, v0, Lyq0;->a:I

    .line 58
    .line 59
    if-nez v0, :cond_1

    .line 60
    .line 61
    new-instance v9, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    const-string v10, "Reconnection succeeded with result: "

    .line 67
    .line 68
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-static {v12, v0}, Lta9;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2}, Ldq0;->v()Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    return v0

    .line 86
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    const-string v10, "Reconnection failed with result: "

    .line 92
    .line 93
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-static {v12, v0}, Lta9;->h(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .line 105
    .line 106
    goto :goto_2

    .line 107
    :goto_1
    instance-of v9, v0, Ljava/lang/InterruptedException;

    .line 108
    .line 109
    if-eqz v9, :cond_2

    .line 110
    .line 111
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 112
    .line 113
    .line 114
    move-result-object v9

    .line 115
    invoke-virtual {v9}, Ljava/lang/Thread;->interrupt()V

    .line 116
    .line 117
    .line 118
    :cond_2
    const-string v9, "Error during reconnection attempt: "

    .line 119
    .line 120
    invoke-static {v12, v9, v0}, Lta9;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 121
    .line 122
    .line 123
    :goto_2
    invoke-virtual {v3}, Lwx3;->F()J

    .line 124
    .line 125
    .line 126
    move-result-wide v9

    .line 127
    sub-long/2addr v9, v4

    .line 128
    add-long/2addr v9, v13

    .line 129
    const-wide/32 v15, 0xf4240

    .line 130
    .line 131
    .line 132
    div-long/2addr v9, v15

    .line 133
    sub-long v9, v6, v9

    .line 134
    .line 135
    add-int/lit8 v0, v8, -0x1

    .line 136
    .line 137
    move-wide/from16 v17, v6

    .line 138
    .line 139
    int-to-double v6, v0

    .line 140
    move-wide/from16 v19, v13

    .line 141
    .line 142
    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    .line 143
    .line 144
    invoke-static {v13, v14, v6, v7}, Ljava/lang/Math;->pow(DD)D

    .line 145
    .line 146
    .line 147
    move-result-wide v6

    .line 148
    double-to-long v6, v6

    .line 149
    const-wide/16 v13, 0x3e8

    .line 150
    .line 151
    mul-long/2addr v6, v13

    .line 152
    cmp-long v0, v9, v6

    .line 153
    .line 154
    if-gez v0, :cond_3

    .line 155
    .line 156
    const-string v0, "Reconnection failed due to timeout limit reached."

    .line 157
    .line 158
    invoke-static {v12, v0}, Lta9;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v2}, Ldq0;->v()Z

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    return v0

    .line 166
    :cond_3
    if-ge v8, v11, :cond_4

    .line 167
    .line 168
    cmp-long v0, v6, v19

    .line 169
    .line 170
    if-lez v0, :cond_4

    .line 171
    .line 172
    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v3}, Lwx3;->F()J

    .line 176
    .line 177
    .line 178
    move-result-wide v6

    .line 179
    sub-long/2addr v6, v4

    .line 180
    add-long v6, v6, v19

    .line 181
    .line 182
    div-long/2addr v6, v15
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 183
    sub-long v6, v17, v6

    .line 184
    .line 185
    move-wide v9, v6

    .line 186
    goto :goto_3

    .line 187
    :catch_1
    move-exception v0

    .line 188
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 193
    .line 194
    .line 195
    const-string v1, "Error sleeping during reconnection attempt: "

    .line 196
    .line 197
    invoke-static {v12, v1, v0}, Lta9;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 198
    .line 199
    .line 200
    goto :goto_4

    .line 201
    :cond_4
    :goto_3
    add-int/lit8 v8, v8, 0x1

    .line 202
    .line 203
    move-wide/from16 v6, v17

    .line 204
    .line 205
    goto/16 :goto_0

    .line 206
    .line 207
    :cond_5
    :goto_4
    const-string v0, "Max retries reached."

    .line 208
    .line 209
    invoke-static {v12, v0}, Lta9;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v2}, Ldq0;->v()Z

    .line 213
    .line 214
    .line 215
    move-result v0

    .line 216
    return v0

    .line 217
    :cond_6
    const-string v0, "ticker"

    .line 218
    .line 219
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    const/4 v0, 0x0

    .line 223
    return v0
.end method

.method public final v()Z
    .locals 4

    .line 1
    iget-object v0, p0, Ldq0;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Ldq0;->b:I

    .line 5
    .line 6
    const/4 v2, 0x2

    .line 7
    const/4 v3, 0x0

    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Ldq0;->i:Lw89;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iget-object p0, p0, Ldq0;->j:Loa9;

    .line 15
    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    const/4 v3, 0x1

    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit v0

    .line 23
    return v3

    .line 24
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public final x(Lyq0;ILjava/lang/String;Ljava/lang/Exception;)Lot9;
    .locals 2

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    invoke-static {p4}, Lzd9;->a(Ljava/lang/Exception;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p0, p2, v0, p1, v1}, Ldq0;->A(IILyq0;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string p0, "BillingClient"

    .line 11
    .line 12
    invoke-static {p0, p3, p4}, Lta9;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    .line 14
    .line 15
    new-instance p0, Lot9;

    .line 16
    .line 17
    const/4 p2, 0x0

    .line 18
    invoke-direct {p0, p1, p2}, Lot9;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    return-object p0
.end method

.method public final y(IILyq0;)V
    .locals 2

    .line 1
    :try_start_0
    sget v0, Lzd9;->a:I

    .line 2
    .line 3
    sget-object v0, Lwo9;->b:Lwo9;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {p1, p2, p3, v1, v0}, Lzd9;->b(IILyq0;Ljava/lang/String;Lwo9;)Ldo9;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p0, p1}, Ldq0;->o(Ldo9;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    const-string p1, "BillingClient"

    .line 16
    .line 17
    const-string p2, "Unable to log."

    .line 18
    .line 19
    invoke-static {p1, p2, p0}, Lta9;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final z(ILyq0;J)V
    .locals 5

    .line 1
    const-string v0, "Unable to log."

    .line 2
    .line 3
    const-string v1, "BillingClient"

    .line 4
    .line 5
    :try_start_0
    sget v2, Lzd9;->a:I

    .line 6
    .line 7
    sget-object v2, Lwo9;->b:Lwo9;

    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    const/4 v4, 0x0

    .line 11
    invoke-static {p1, v3, p2, v4, v2}, Lzd9;->b(IILyq0;Ljava/lang/String;Lwo9;)Ldo9;

    .line 12
    .line 13
    .line 14
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 15
    :try_start_1
    iget-object p2, p0, Ldq0;->h:Ll39;

    .line 16
    .line 17
    iget p0, p0, Ldq0;->l:I

    .line 18
    .line 19
    invoke-virtual {p2, p1, p0, p3, p4}, Ll39;->q(Ldo9;IJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    :try_start_2
    invoke-static {v1, v0, p0}, Lta9;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :catchall_1
    move-exception p0

    .line 29
    invoke-static {v1, v0, p0}, Lta9;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
