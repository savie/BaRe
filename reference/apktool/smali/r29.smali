.class public final Lr29;
.super Lb19;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic b:I

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/auth/api/signin/RevocationBoundService;)V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lr29;->b:I

    .line 13
    const-string v1, "com.google.android.gms.auth.api.signin.internal.IRevocationService"

    invoke-direct {p0, v1, v0}, Lb19;-><init>(Ljava/lang/String;I)V

    .line 14
    iput-object p1, p0, Lr29;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lu29;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lr29;->b:I

    .line 3
    .line 4
    iput-object p2, p0, Lr29;->c:Ljava/lang/Object;

    .line 5
    .line 6
    const-string p1, "com.google.android.gms.auth.api.identity.internal.IBeginSignInCallback"

    .line 7
    .line 8
    const/4 p2, 0x1

    .line 9
    invoke-direct {p0, p1, p2}, Lb19;-><init>(Ljava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final n(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 9

    .line 1
    iget p3, p0, Lr29;->b:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    iget-object v2, p0, Lr29;->c:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch p3, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    move-object v4, v2

    .line 11
    check-cast v4, Lcom/google/android/gms/auth/api/signin/RevocationBoundService;

    .line 12
    .line 13
    if-eq p1, v0, :cond_1

    .line 14
    .line 15
    const/4 p2, 0x2

    .line 16
    if-eq p1, p2, :cond_0

    .line 17
    .line 18
    move v0, v1

    .line 19
    goto/16 :goto_6

    .line 20
    .line 21
    :cond_0
    invoke-virtual {p0}, Lr29;->q()V

    .line 22
    .line 23
    .line 24
    invoke-static {v4}, Ll39;->k(Landroid/content/Context;)Ll39;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0}, Ll39;->l()V

    .line 29
    .line 30
    .line 31
    goto/16 :goto_6

    .line 32
    .line 33
    :cond_1
    invoke-virtual {p0}, Lr29;->q()V

    .line 34
    .line 35
    .line 36
    invoke-static {v4}, Lao7;->a(Landroid/content/Context;)Lao7;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {p0}, Lao7;->b()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    sget-object p2, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->r:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    .line 45
    .line 46
    const/4 p3, 0x0

    .line 47
    if-eqz p1, :cond_4

    .line 48
    .line 49
    const-string p2, "defaultGoogleSignInAccount"

    .line 50
    .line 51
    invoke-virtual {p0, p2}, Lao7;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_2

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    const-string v2, "googleSignInOptions"

    .line 63
    .line 64
    invoke-static {v2, p2}, Lao7;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    invoke-virtual {p0, p2}, Lao7;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    if-eqz p0, :cond_3

    .line 73
    .line 74
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->n(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    .line 75
    .line 76
    .line 77
    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    move-object p2, p0

    .line 79
    goto :goto_1

    .line 80
    :catch_0
    :cond_3
    :goto_0
    move-object p2, p3

    .line 81
    :cond_4
    :goto_1
    move-object v7, p2

    .line 82
    new-instance v3, Lw04;

    .line 83
    .line 84
    invoke-static {v7}, Lly8;->h(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    new-instance p0, Llk;

    .line 88
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    .line 91
    .line 92
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    new-instance v8, Ljz3;

    .line 97
    .line 98
    invoke-direct {v8, p0, p2}, Ljz3;-><init>(Llk;Landroid/os/Looper;)V

    .line 99
    .line 100
    .line 101
    const/4 v5, 0x0

    .line 102
    sget-object v6, Lc80;->a:Loe;

    .line 103
    .line 104
    invoke-direct/range {v3 .. v8}, Lkz3;-><init>(Landroid/content/Context;Landroid/app/Activity;Loe;Lme;Ljz3;)V

    .line 105
    .line 106
    .line 107
    const/4 p0, 0x3

    .line 108
    iget-object p2, v3, Lkz3;->a:Landroid/content/Context;

    .line 109
    .line 110
    iget-object v2, v3, Lkz3;->h:Li19;

    .line 111
    .line 112
    if-eqz p1, :cond_8

    .line 113
    .line 114
    invoke-virtual {v3}, Lw04;->c()I

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    if-ne p1, p0, :cond_5

    .line 119
    .line 120
    move p0, v0

    .line 121
    goto :goto_2

    .line 122
    :cond_5
    move p0, v1

    .line 123
    :goto_2
    sget-object p1, Lk39;->a:Lu50;

    .line 124
    .line 125
    const-string v3, "Revoking access"

    .line 126
    .line 127
    new-array v1, v1, [Ljava/lang/Object;

    .line 128
    .line 129
    invoke-virtual {p1, v3, v1}, Lu50;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    invoke-static {p2}, Lao7;->a(Landroid/content/Context;)Lao7;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    const-string v1, "refreshToken"

    .line 137
    .line 138
    invoke-virtual {p1, v1}, Lao7;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-static {p2}, Lk39;->b(Landroid/content/Context;)V

    .line 143
    .line 144
    .line 145
    if-eqz p0, :cond_7

    .line 146
    .line 147
    if-nez p1, :cond_6

    .line 148
    .line 149
    sget-object p0, Lx29;->c:Lu50;

    .line 150
    .line 151
    new-instance p0, Lcom/google/android/gms/common/api/Status;

    .line 152
    .line 153
    const/4 p1, 0x4

    .line 154
    invoke-direct {p0, p1, p3, p3, p3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;Lhs1;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/Status;->n()Z

    .line 158
    .line 159
    .line 160
    move-result p1

    .line 161
    xor-int/2addr p1, v0

    .line 162
    const-string p2, "Status code must not be SUCCESS"

    .line 163
    .line 164
    invoke-static {p2, p1}, Lly8;->b(Ljava/lang/String;Z)V

    .line 165
    .line 166
    .line 167
    new-instance p1, Lb29;

    .line 168
    .line 169
    invoke-direct {p1, p0}, Lb29;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p1, p0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->e(Lfn6;)V

    .line 173
    .line 174
    .line 175
    goto :goto_3

    .line 176
    :cond_6
    new-instance p0, Lx29;

    .line 177
    .line 178
    invoke-direct {p0, p1}, Lx29;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    new-instance p1, Ljava/lang/Thread;

    .line 182
    .line 183
    invoke-direct {p1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 187
    .line 188
    .line 189
    iget-object p1, p0, Lx29;->b:Lan7;

    .line 190
    .line 191
    goto :goto_3

    .line 192
    :cond_7
    new-instance p1, Li39;

    .line 193
    .line 194
    invoke-direct {p1, v2}, Lj39;-><init>(Li19;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v2, p1}, Li19;->a(Lj39;)Lj39;

    .line 198
    .line 199
    .line 200
    :goto_3
    new-instance p0, Lb05;

    .line 201
    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    .line 204
    .line 205
    new-instance p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 206
    .line 207
    invoke-direct {p2}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 208
    .line 209
    .line 210
    new-instance p3, Lz09;

    .line 211
    .line 212
    invoke-direct {p3, p1, p2, p0}, Lz09;-><init>(Lcom/google/android/gms/common/api/internal/BasePendingResult;Lcom/google/android/gms/tasks/TaskCompletionSource;Lb05;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {p1, p3}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->a(Lz09;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    .line 219
    .line 220
    .line 221
    goto :goto_6

    .line 222
    :cond_8
    invoke-virtual {v3}, Lw04;->c()I

    .line 223
    .line 224
    .line 225
    move-result p1

    .line 226
    if-ne p1, p0, :cond_9

    .line 227
    .line 228
    move p0, v0

    .line 229
    goto :goto_4

    .line 230
    :cond_9
    move p0, v1

    .line 231
    :goto_4
    sget-object p1, Lk39;->a:Lu50;

    .line 232
    .line 233
    const-string p3, "Signing out"

    .line 234
    .line 235
    new-array v1, v1, [Ljava/lang/Object;

    .line 236
    .line 237
    invoke-virtual {p1, p3, v1}, Lu50;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 238
    .line 239
    .line 240
    invoke-static {p2}, Lk39;->b(Landroid/content/Context;)V

    .line 241
    .line 242
    .line 243
    if-eqz p0, :cond_a

    .line 244
    .line 245
    new-instance p0, Lan7;

    .line 246
    .line 247
    invoke-direct {p0, v2}, Lcom/google/android/gms/common/api/internal/BasePendingResult;-><init>(Li19;)V

    .line 248
    .line 249
    .line 250
    sget-object p1, Lcom/google/android/gms/common/api/Status;->e:Lcom/google/android/gms/common/api/Status;

    .line 251
    .line 252
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->e(Lfn6;)V

    .line 253
    .line 254
    .line 255
    goto :goto_5

    .line 256
    :cond_a
    new-instance p0, Lg39;

    .line 257
    .line 258
    invoke-direct {p0, v2}, Lj39;-><init>(Li19;)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v2, p0}, Li19;->a(Lj39;)Lj39;

    .line 262
    .line 263
    .line 264
    :goto_5
    new-instance p1, Lb05;

    .line 265
    .line 266
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 267
    .line 268
    .line 269
    new-instance p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 270
    .line 271
    invoke-direct {p2}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 272
    .line 273
    .line 274
    new-instance p3, Lz09;

    .line 275
    .line 276
    invoke-direct {p3, p0, p2, p1}, Lz09;-><init>(Lcom/google/android/gms/common/api/internal/BasePendingResult;Lcom/google/android/gms/tasks/TaskCompletionSource;Lb05;)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {p0, p3}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->a(Lz09;)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    .line 283
    .line 284
    .line 285
    :goto_6
    return v0

    .line 286
    :pswitch_0
    if-ne p1, v0, :cond_b

    .line 287
    .line 288
    sget-object p0, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 289
    .line 290
    invoke-static {p2, p0}, Lz29;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 291
    .line 292
    .line 293
    move-result-object p0

    .line 294
    check-cast p0, Lcom/google/android/gms/common/api/Status;

    .line 295
    .line 296
    sget-object p1, Lxp0;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 297
    .line 298
    invoke-static {p2, p1}, Lz29;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 299
    .line 300
    .line 301
    move-result-object p1

    .line 302
    check-cast p1, Lxp0;

    .line 303
    .line 304
    invoke-static {p2}, Lz29;->c(Landroid/os/Parcel;)V

    .line 305
    .line 306
    .line 307
    check-cast v2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 308
    .line 309
    invoke-static {p0, p1, v2}, Lly8;->O(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 310
    .line 311
    .line 312
    goto :goto_7

    .line 313
    :cond_b
    move v0, v1

    .line 314
    :goto_7
    return v0

    .line 315
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public q()V
    .locals 7

    .line 1
    iget-object p0, p0, Lr29;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/google/android/gms/auth/api/signin/RevocationBoundService;

    .line 4
    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const-string v1, "com.google.android.gms"

    .line 10
    .line 11
    invoke-static {p0}, Lkw8;->a(Landroid/content/Context;)Lbe4;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    :try_start_0
    iget-object v2, v2, Lbe4;->b:Landroid/content/Context;

    .line 19
    .line 20
    const-string v3, "appops"

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Landroid/app/AppOpsManager;

    .line 27
    .line 28
    if-eqz v2, :cond_6

    .line 29
    .line 30
    invoke-virtual {v2, v0, v1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const/16 v2, 0x40

    .line 38
    .line 39
    :try_start_1
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 40
    .line 41
    .line 42
    move-result-object v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 43
    invoke-static {p0}, Lc14;->a(Landroid/content/Context;)Lc14;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    if-eqz v0, :cond_7

    .line 51
    .line 52
    const/4 v3, 0x0

    .line 53
    invoke-static {v0, v3}, Lc14;->b(Landroid/content/pm/PackageInfo;Z)Z

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-eqz v4, :cond_0

    .line 58
    .line 59
    goto :goto_4

    .line 60
    :cond_0
    const/4 v4, 0x1

    .line 61
    invoke-static {v0, v4}, Lc14;->b(Landroid/content/pm/PackageInfo;Z)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_7

    .line 66
    .line 67
    iget-object p0, p0, Lc14;->a:Landroid/content/Context;

    .line 68
    .line 69
    sget-boolean v0, Lu04;->c:Z

    .line 70
    .line 71
    if-nez v0, :cond_3

    .line 72
    .line 73
    :try_start_2
    invoke-static {p0}, Lkw8;->a(Landroid/content/Context;)Lbe4;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 78
    .line 79
    const/16 v6, 0x1c

    .line 80
    .line 81
    if-lt v5, v6, :cond_1

    .line 82
    .line 83
    const v2, 0x8000040

    .line 84
    .line 85
    .line 86
    :cond_1
    iget-object v0, v0, Lbe4;->b:Landroid/content/Context;

    .line 87
    .line 88
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-static {p0}, Lc14;->a(Landroid/content/Context;)Lc14;

    .line 97
    .line 98
    .line 99
    if-eqz v0, :cond_2

    .line 100
    .line 101
    invoke-static {v0, v3}, Lc14;->b(Landroid/content/pm/PackageInfo;Z)Z

    .line 102
    .line 103
    .line 104
    move-result p0

    .line 105
    if-nez p0, :cond_2

    .line 106
    .line 107
    invoke-static {v0, v4}, Lc14;->b(Landroid/content/pm/PackageInfo;Z)Z

    .line 108
    .line 109
    .line 110
    move-result p0

    .line 111
    if-eqz p0, :cond_2

    .line 112
    .line 113
    sput-boolean v4, Lu04;->b:Z

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :catchall_0
    move-exception p0

    .line 117
    goto :goto_2

    .line 118
    :catch_0
    move-exception p0

    .line 119
    goto :goto_1

    .line 120
    :cond_2
    sput-boolean v3, Lu04;->b:Z
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 121
    .line 122
    :goto_0
    sput-boolean v4, Lu04;->c:Z

    .line 123
    .line 124
    goto :goto_3

    .line 125
    :goto_1
    :try_start_3
    const-string v0, "GooglePlayServicesUtil"

    .line 126
    .line 127
    const-string v1, "Cannot find Google Play services package name."

    .line 128
    .line 129
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 130
    .line 131
    .line 132
    sput-boolean v4, Lu04;->c:Z

    .line 133
    .line 134
    goto :goto_3

    .line 135
    :goto_2
    sput-boolean v4, Lu04;->c:Z

    .line 136
    .line 137
    throw p0

    .line 138
    :cond_3
    :goto_3
    sget-boolean p0, Lu04;->b:Z

    .line 139
    .line 140
    if-nez p0, :cond_5

    .line 141
    .line 142
    const-string p0, "user"

    .line 143
    .line 144
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 145
    .line 146
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result p0

    .line 150
    if-nez p0, :cond_4

    .line 151
    .line 152
    goto :goto_4

    .line 153
    :cond_4
    const-string p0, "GoogleSignatureVerifier"

    .line 154
    .line 155
    const-string v0, "Test-keys aren\'t accepted on this build."

    .line 156
    .line 157
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    .line 159
    .line 160
    goto :goto_5

    .line 161
    :cond_5
    :goto_4
    return-void

    .line 162
    :catch_1
    const/4 p0, 0x3

    .line 163
    const-string v0, "UidVerifier"

    .line 164
    .line 165
    invoke-static {v0, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 166
    .line 167
    .line 168
    move-result p0

    .line 169
    if-eqz p0, :cond_7

    .line 170
    .line 171
    const-string p0, "Package manager can\'t find google play services package, defaulting to false"

    .line 172
    .line 173
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    .line 175
    .line 176
    goto :goto_5

    .line 177
    :cond_6
    :try_start_4
    new-instance p0, Ljava/lang/NullPointerException;

    .line 178
    .line 179
    const-string v0, "context.getSystemService(Context.APP_OPS_SERVICE) is null"

    .line 180
    .line 181
    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    throw p0
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_2

    .line 185
    :catch_2
    :cond_7
    :goto_5
    new-instance p0, Ljava/lang/SecurityException;

    .line 186
    .line 187
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 196
    .line 197
    .line 198
    move-result v1

    .line 199
    add-int/lit8 v1, v1, 0x29

    .line 200
    .line 201
    new-instance v2, Ljava/lang/StringBuilder;

    .line 202
    .line 203
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 204
    .line 205
    .line 206
    const-string v1, "Calling UID "

    .line 207
    .line 208
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    const-string v0, " is not Google Play services."

    .line 215
    .line 216
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    throw p0
.end method
