.class public final Lorg/swiftapps/swiftbackup/cloud/connect/NoGmsSignInActivity;
.super Lil0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final synthetic M:I


# instance fields
.field public final K:Ll90;

.field public L:I


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lil0;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lf20;

    .line 5
    .line 6
    const/16 v1, 0x8

    .line 7
    .line 8
    invoke-direct {v0, p0, v1}, Lf20;-><init>(Lil0;I)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Ll90;

    .line 12
    .line 13
    const-class v2, Lin5;

    .line 14
    .line 15
    invoke-static {v2}, Lph6;->a(Ljava/lang/Class;)Ln81;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    new-instance v3, Lls;

    .line 20
    .line 21
    const/16 v4, 0xa

    .line 22
    .line 23
    invoke-direct {v3, p0, v4}, Lls;-><init>(Lil0;I)V

    .line 24
    .line 25
    .line 26
    new-instance v4, Lms;

    .line 27
    .line 28
    const/16 v5, 0xd

    .line 29
    .line 30
    invoke-direct {v4, p0, v5}, Lms;-><init>(Lil0;I)V

    .line 31
    .line 32
    .line 33
    invoke-direct {v1, v2, v3, v0, v4}, Ll90;-><init>(Ln81;Lbt3;Lbt3;Lbt3;)V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/cloud/connect/NoGmsSignInActivity;->K:Ll90;

    .line 37
    .line 38
    const/4 v0, -0x1

    .line 39
    iput v0, p0, Lorg/swiftapps/swiftbackup/cloud/connect/NoGmsSignInActivity;->L:I

    .line 40
    .line 41
    return-void
.end method


# virtual methods
.method public final D()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final bridge synthetic F()Lqo0;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/NoGmsSignInActivity;->N()Lin5;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final N()Lin5;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/connect/NoGmsSignInActivity;->K:Ll90;

    .line 2
    .line 3
    invoke-virtual {p0}, Ll90;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lin5;

    .line 8
    .line 9
    return-object p0
.end method

.method public final O(Landroid/content/Intent;I)V
    .locals 7

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lio1;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    return-void

    .line 5
    :catch_0
    move-exception v0

    .line 6
    move-object p1, v0

    .line 7
    invoke-virtual {p0}, Lk28;->r()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    const-string v0, "Error in signIn"

    .line 12
    .line 13
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    sget-object v1, Lvr6;->INSTANCE:Lvr6;

    .line 21
    .line 22
    invoke-virtual {p0}, Lk28;->r()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    const/4 v5, 0x4

    .line 27
    const/4 v6, 0x0

    .line 28
    const/4 v4, 0x0

    .line 29
    invoke-static/range {v1 .. v6}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    sget-object p1, Lzn4;->a:Lzn4;

    .line 33
    .line 34
    new-instance p1, Lcv;

    .line 35
    .line 36
    const/16 p2, 0xe

    .line 37
    .line 38
    invoke-direct {p1, p2, p0, v3}, Lcv;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-static {p1}, Lzn4;->e(Lbt3;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 1
    const/16 v0, 0x3eb

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/NoGmsSignInActivity;->N()Lin5;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-virtual {v0, p3, v1}, Lin5;->j(Landroid/content/Intent;Z)V

    .line 11
    .line 12
    .line 13
    :cond_0
    const/16 v0, 0x7d4

    .line 14
    .line 15
    if-ne p1, v0, :cond_2

    .line 16
    .line 17
    const/4 v0, -0x1

    .line 18
    const/4 v1, 0x0

    .line 19
    if-ne p2, v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/NoGmsSignInActivity;->N()Lin5;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0, p3, v1}, Lin5;->j(Landroid/content/Intent;Z)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 33
    .line 34
    .line 35
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/u;->onActivityResult(IILandroid/content/Intent;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 14

    .line 1
    invoke-super {p0, p1}, Lil0;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const-string v0, "EXTRA_REQUEST_CODE"

    .line 9
    .line 10
    const/16 v1, 0x3eb

    .line 11
    .line 12
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    iput p1, p0, Lorg/swiftapps/swiftbackup/cloud/connect/NoGmsSignInActivity;->L:I

    .line 17
    .line 18
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/NoGmsSignInActivity;->N()Lin5;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iget v0, p0, Lorg/swiftapps/swiftbackup/cloud/connect/NoGmsSignInActivity;->L:I

    .line 23
    .line 24
    iget-object v2, p1, Lin5;->h:Lix6;

    .line 25
    .line 26
    iget-boolean v3, p1, Lin5;->e:Z

    .line 27
    .line 28
    const/4 v4, 0x1

    .line 29
    if-eqz v3, :cond_0

    .line 30
    .line 31
    goto/16 :goto_1

    .line 32
    .line 33
    :cond_0
    iput-boolean v4, p1, Lin5;->e:Z

    .line 34
    .line 35
    sget-object v3, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 36
    .line 37
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    new-instance v5, Landroid/content/Intent;

    .line 42
    .line 43
    const-string v6, "android.intent.action.VIEW"

    .line 44
    .line 45
    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const/high16 v7, 0x10000000

    .line 49
    .line 50
    invoke-virtual {v5, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 51
    .line 52
    .line 53
    const-string v7, "https://www.google.com"

    .line 54
    .line 55
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    invoke-virtual {v5, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    const/high16 v7, 0x10000

    .line 67
    .line 68
    invoke-virtual {v3, v5, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    if-eqz v3, :cond_1

    .line 80
    .line 81
    const v0, 0x7f1303c3

    .line 82
    .line 83
    .line 84
    invoke-static {v0}, Ldj7;->g(I)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v7

    .line 88
    sget-object v5, Lvr6;->INSTANCE:Lvr6;

    .line 89
    .line 90
    iget-object v6, p1, La55;->b:Ljava/lang/String;

    .line 91
    .line 92
    const/4 v9, 0x4

    .line 93
    const/4 v10, 0x0

    .line 94
    const/4 v8, 0x0

    .line 95
    invoke-static/range {v5 .. v10}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2, v7}, Lix6;->k(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    goto/16 :goto_1

    .line 102
    .line 103
    :cond_1
    new-instance v3, Landroid/content/Intent;

    .line 104
    .line 105
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 106
    .line 107
    .line 108
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    invoke-virtual {v3, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    .line 121
    .line 122
    const-string v5, "android.intent.category.BROWSABLE"

    .line 123
    .line 124
    invoke-virtual {v3, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    .line 126
    .line 127
    sget-object v5, Lgn5;->b:Landroid/net/Uri;

    .line 128
    .line 129
    invoke-virtual {v3, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 130
    .line 131
    .line 132
    sget-object v5, Lg00;->a:Lg00;

    .line 133
    .line 134
    invoke-static {}, Lg00;->r()Landroid/content/pm/PackageManager;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    const/4 v6, 0x0

    .line 139
    invoke-virtual {v5, v3, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    .line 145
    .line 146
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 147
    .line 148
    .line 149
    move-result-object v5

    .line 150
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 151
    .line 152
    .line 153
    move-result v7

    .line 154
    if-eqz v7, :cond_2

    .line 155
    .line 156
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v7

    .line 160
    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 161
    .line 162
    sget-object v8, Lvr6;->INSTANCE:Lvr6;

    .line 163
    .line 164
    iget-object v9, p1, La55;->b:Ljava/lang/String;

    .line 165
    .line 166
    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 167
    .line 168
    new-instance v10, Ljava/lang/StringBuilder;

    .line 169
    .line 170
    const-string v11, "Handler activities: "

    .line 171
    .line 172
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v10

    .line 182
    const/4 v12, 0x4

    .line 183
    const/4 v13, 0x0

    .line 184
    const/4 v11, 0x0

    .line 185
    invoke-static/range {v8 .. v13}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 186
    .line 187
    .line 188
    goto :goto_0

    .line 189
    :cond_2
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 190
    .line 191
    .line 192
    move-result v3

    .line 193
    if-eqz v3, :cond_3

    .line 194
    .line 195
    sget-object v7, Lvr6;->INSTANCE:Lvr6;

    .line 196
    .line 197
    iget-object v8, p1, La55;->b:Ljava/lang/String;

    .line 198
    .line 199
    const/4 v11, 0x4

    .line 200
    const/4 v12, 0x0

    .line 201
    const-string v9, "No handler activity found!"

    .line 202
    .line 203
    const/4 v10, 0x0

    .line 204
    invoke-static/range {v7 .. v12}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v2, v9}, Lix6;->k(Ljava/lang/Object;)V

    .line 208
    .line 209
    .line 210
    goto :goto_1

    .line 211
    :cond_3
    if-eq v0, v1, :cond_6

    .line 212
    .line 213
    const/16 v1, 0x7d4

    .line 214
    .line 215
    if-eq v0, v1, :cond_5

    .line 216
    .line 217
    const/16 v1, 0xbbd

    .line 218
    .line 219
    if-eq v0, v1, :cond_4

    .line 220
    .line 221
    goto :goto_1

    .line 222
    :cond_4
    iget-object v0, p1, La55;->b:Ljava/lang/String;

    .line 223
    .line 224
    const-string v1, "signOut() called"

    .line 225
    .line 226
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    .line 228
    .line 229
    const/4 v0, 0x0

    .line 230
    invoke-static {v0}, Lhz3;->b(Lf80;)V

    .line 231
    .line 232
    .line 233
    iget-object p1, p1, Lin5;->f:Lgv7;

    .line 234
    .line 235
    invoke-virtual {p1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    check-cast p1, Ld45;

    .line 240
    .line 241
    invoke-virtual {p1}, Ld45;->c()V

    .line 242
    .line 243
    .line 244
    goto :goto_1

    .line 245
    :cond_5
    invoke-virtual {p1, v4}, Lin5;->k(Z)V

    .line 246
    .line 247
    .line 248
    goto :goto_1

    .line 249
    :cond_6
    invoke-virtual {p1, v6}, Lin5;->k(Z)V

    .line 250
    .line 251
    .line 252
    :goto_1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/NoGmsSignInActivity;->N()Lin5;

    .line 253
    .line 254
    .line 255
    move-result-object p1

    .line 256
    iget-object p1, p1, Lin5;->i:Lix6;

    .line 257
    .line 258
    new-instance v0, Lzs;

    .line 259
    .line 260
    const/16 v1, 0xc

    .line 261
    .line 262
    invoke-direct {v0, p0, v1}, Lzs;-><init>(Ljava/lang/Object;I)V

    .line 263
    .line 264
    .line 265
    new-instance v1, Lne5;

    .line 266
    .line 267
    invoke-direct {v1, v4, v0}, Lne5;-><init>(ILmt3;)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {p1, p0, v1}, Lix6;->e(Lfu4;Les5;)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/NoGmsSignInActivity;->N()Lin5;

    .line 274
    .line 275
    .line 276
    move-result-object p1

    .line 277
    iget-object p1, p1, Lin5;->j:Lix6;

    .line 278
    .line 279
    new-instance v0, Llm;

    .line 280
    .line 281
    const/16 v1, 0x10

    .line 282
    .line 283
    invoke-direct {v0, p0, v1}, Llm;-><init>(Ljava/lang/Object;I)V

    .line 284
    .line 285
    .line 286
    new-instance v1, Lne5;

    .line 287
    .line 288
    invoke-direct {v1, v4, v0}, Lne5;-><init>(ILmt3;)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {p1, p0, v1}, Lix6;->e(Lfu4;Les5;)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/NoGmsSignInActivity;->N()Lin5;

    .line 295
    .line 296
    .line 297
    move-result-object p1

    .line 298
    iget-object p1, p1, Lin5;->g:Lix6;

    .line 299
    .line 300
    new-instance v0, Lw20;

    .line 301
    .line 302
    const/16 v1, 0x12

    .line 303
    .line 304
    invoke-direct {v0, p0, v1}, Lw20;-><init>(Ljava/lang/Object;I)V

    .line 305
    .line 306
    .line 307
    new-instance v1, Lne5;

    .line 308
    .line 309
    invoke-direct {v1, v4, v0}, Lne5;-><init>(ILmt3;)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {p1, p0, v1}, Lix6;->e(Lfu4;Les5;)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/NoGmsSignInActivity;->N()Lin5;

    .line 316
    .line 317
    .line 318
    move-result-object p1

    .line 319
    iget-object p1, p1, Lin5;->h:Lix6;

    .line 320
    .line 321
    new-instance v0, Lc7;

    .line 322
    .line 323
    const/16 v1, 0x17

    .line 324
    .line 325
    invoke-direct {v0, p0, v1}, Lc7;-><init>(Ljava/lang/Object;I)V

    .line 326
    .line 327
    .line 328
    new-instance v1, Lne5;

    .line 329
    .line 330
    invoke-direct {v1, v4, v0}, Lne5;-><init>(ILmt3;)V

    .line 331
    .line 332
    .line 333
    invoke-virtual {p1, p0, v1}, Lix6;->e(Lfu4;Les5;)V

    .line 334
    .line 335
    .line 336
    return-void
.end method
