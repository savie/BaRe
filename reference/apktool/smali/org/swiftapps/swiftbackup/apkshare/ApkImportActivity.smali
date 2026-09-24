.class public final Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;
.super Lil0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity$a;
    }
.end annotation


# static fields
.field public static final synthetic Q:I


# instance fields
.field public final K:Ll90;

.field public final L:Lgv7;

.field public M:Lzf;

.field public N:Lag;

.field public final O:Lgv7;

.field public final P:Landroid/view/animation/AlphaAnimation;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lil0;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Luf;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, v1}, Luf;-><init>(Lil0;I)V

    .line 8
    .line 9
    .line 10
    new-instance v2, Ll90;

    .line 11
    .line 12
    const-class v3, Lmg;

    .line 13
    .line 14
    invoke-static {v3}, Lph6;->a(Ljava/lang/Class;)Ln81;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    new-instance v4, Lvf;

    .line 19
    .line 20
    invoke-direct {v4, p0, v1}, Lvf;-><init>(Lil0;I)V

    .line 21
    .line 22
    .line 23
    new-instance v5, Lwf;

    .line 24
    .line 25
    invoke-direct {v5, p0, v1}, Lwf;-><init>(Lil0;I)V

    .line 26
    .line 27
    .line 28
    invoke-direct {v2, v3, v4, v0, v5}, Ll90;-><init>(Ln81;Lbt3;Lbt3;Lbt3;)V

    .line 29
    .line 30
    .line 31
    iput-object v2, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->K:Ll90;

    .line 32
    .line 33
    new-instance v0, Lkf;

    .line 34
    .line 35
    invoke-direct {v0, p0, v1}, Lkf;-><init>(Ljava/lang/Object;I)V

    .line 36
    .line 37
    .line 38
    new-instance v2, Lgv7;

    .line 39
    .line 40
    invoke-direct {v2, v0}, Lgv7;-><init>(Lbt3;)V

    .line 41
    .line 42
    .line 43
    iput-object v2, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->L:Lgv7;

    .line 44
    .line 45
    new-instance v0, Llf;

    .line 46
    .line 47
    invoke-direct {v0, p0, v1}, Llf;-><init>(Ljava/lang/Object;I)V

    .line 48
    .line 49
    .line 50
    new-instance v1, Lgv7;

    .line 51
    .line 52
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 53
    .line 54
    .line 55
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->O:Lgv7;

    .line 56
    .line 57
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .line 58
    .line 59
    const/high16 v1, 0x3f000000    # 0.5f

    .line 60
    .line 61
    const/high16 v2, 0x3f800000    # 1.0f

    .line 62
    .line 63
    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 64
    .line 65
    .line 66
    const-wide/16 v1, 0x1f4

    .line 67
    .line 68
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 69
    .line 70
    .line 71
    const-wide/16 v1, 0x14

    .line 72
    .line 73
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 74
    .line 75
    .line 76
    const/4 v1, 0x2

    .line 77
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 78
    .line 79
    .line 80
    const/4 v1, -0x1

    .line 81
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 82
    .line 83
    .line 84
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->P:Landroid/view/animation/AlphaAnimation;

    .line 85
    .line 86
    return-void
.end method


# virtual methods
.method public final bridge synthetic F()Lqo0;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->O()Lmg;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final N()Lyf;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->L:Lgv7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lyf;

    .line 8
    .line 9
    return-object p0
.end method

.method public final O()Lmg;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->K:Ll90;

    .line 2
    .line 3
    invoke-virtual {p0}, Ll90;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lmg;

    .line 8
    .line 9
    return-object p0
.end method

.method public final P(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->O:Lgv7;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Landroid/view/View;

    .line 24
    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->P:Landroid/view/animation/AlphaAnimation;

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    return-void
.end method

.method public final Q(Landroid/content/Intent;)V
    .locals 9

    .line 1
    const/4 v1, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object v0, v1

    .line 10
    :goto_0
    const-string v2, "android.intent.extra.STREAM"

    .line 11
    .line 12
    if-eqz v0, :cond_6

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    const v4, -0x45ee9a33

    .line 19
    .line 20
    .line 21
    if-eq v3, v4, :cond_3

    .line 22
    .line 23
    const v4, -0x45ed2f16

    .line 24
    .line 25
    .line 26
    if-eq v3, v4, :cond_1

    .line 27
    .line 28
    goto :goto_3

    .line 29
    :cond_1
    const-string v3, "android.intent.action.VIEW"

    .line 30
    .line 31
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_2

    .line 36
    .line 37
    goto :goto_3

    .line 38
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    :goto_1
    move-object v3, p1

    .line 43
    goto :goto_6

    .line 44
    :cond_3
    const-string v3, "android.intent.action.SEND"

    .line 45
    .line 46
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_4

    .line 51
    .line 52
    goto :goto_3

    .line 53
    :cond_4
    if-eqz p1, :cond_5

    .line 54
    .line 55
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    goto :goto_2

    .line 60
    :cond_5
    move-object p1, v1

    .line 61
    :goto_2
    check-cast p1, Landroid/net/Uri;

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_6
    :goto_3
    if-eqz p1, :cond_8

    .line 65
    .line 66
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    if-nez v0, :cond_7

    .line 71
    .line 72
    goto :goto_4

    .line 73
    :cond_7
    move-object v3, v0

    .line 74
    goto :goto_6

    .line 75
    :cond_8
    :goto_4
    if-eqz p1, :cond_9

    .line 76
    .line 77
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    goto :goto_5

    .line 82
    :cond_9
    move-object p1, v1

    .line 83
    :goto_5
    check-cast p1, Landroid/net/Uri;

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :goto_6
    const/4 p1, 0x0

    .line 87
    const/4 v8, 0x1

    .line 88
    if-eqz v3, :cond_10

    .line 89
    .line 90
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    const-string v0, "_display_name"

    .line 95
    .line 96
    filled-new-array {v0}, [Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    const/4 v6, 0x0

    .line 101
    const/4 v7, 0x0

    .line 102
    const/4 v5, 0x0

    .line 103
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 104
    .line 105
    .line 106
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 107
    if-eqz v2, :cond_b

    .line 108
    .line 109
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-eqz v0, :cond_a

    .line 114
    .line 115
    invoke-interface {v2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    goto :goto_7

    .line 120
    :catchall_0
    move-exception v0

    .line 121
    move-object v4, v0

    .line 122
    goto :goto_8

    .line 123
    :cond_a
    move-object v0, v1

    .line 124
    :goto_7
    :try_start_2
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 125
    .line 126
    .line 127
    goto :goto_a

    .line 128
    :catchall_1
    move-exception v0

    .line 129
    goto :goto_9

    .line 130
    :goto_8
    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 131
    :catchall_2
    move-exception v0

    .line 132
    :try_start_4
    invoke-static {v2, v4}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 133
    .line 134
    .line 135
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 136
    :cond_b
    move-object v0, v1

    .line 137
    goto :goto_a

    .line 138
    :goto_9
    new-instance v2, Lbn6;

    .line 139
    .line 140
    invoke-direct {v2, v0}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 141
    .line 142
    .line 143
    move-object v0, v2

    .line 144
    :goto_a
    nop

    .line 145
    instance-of v2, v0, Lbn6;

    .line 146
    .line 147
    if-eqz v2, :cond_c

    .line 148
    .line 149
    move-object v0, v1

    .line 150
    :cond_c
    check-cast v0, Ljava/lang/String;

    .line 151
    .line 152
    if-nez v0, :cond_d

    .line 153
    .line 154
    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    if-nez v0, :cond_d

    .line 159
    .line 160
    const-string v0, ""

    .line 161
    .line 162
    :cond_d
    const-string v2, ".apks"

    .line 163
    .line 164
    invoke-static {v0, v2, v8}, Luq7;->O(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 165
    .line 166
    .line 167
    move-result v2

    .line 168
    if-eqz v2, :cond_e

    .line 169
    .line 170
    sget-object v0, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity$a;->APKS_ARCHIVE:Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity$a;

    .line 171
    .line 172
    goto :goto_b

    .line 173
    :cond_e
    const-string v2, ".apk"

    .line 174
    .line 175
    invoke-static {v0, v2, v8}, Luq7;->O(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    if-eqz v0, :cond_f

    .line 180
    .line 181
    sget-object v0, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity$a;->SINGLE_APK:Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity$a;

    .line 182
    .line 183
    goto :goto_b

    .line 184
    :cond_f
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    invoke-virtual {v0, v3}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    const-string v2, "application/vnd.android.package-archive"

    .line 193
    .line 194
    invoke-static {v0, v2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result v0

    .line 198
    if-eqz v0, :cond_10

    .line 199
    .line 200
    sget-object v0, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity$a;->SINGLE_APK:Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity$a;

    .line 201
    .line 202
    goto :goto_b

    .line 203
    :cond_10
    move-object v0, v1

    .line 204
    :goto_b
    if-eqz v3, :cond_16

    .line 205
    .line 206
    if-nez v0, :cond_11

    .line 207
    .line 208
    goto :goto_d

    .line 209
    :cond_11
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->O()Lmg;

    .line 210
    .line 211
    .line 212
    move-result-object p0

    .line 213
    sget-object v2, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity$a;->SINGLE_APK:Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity$a;

    .line 214
    .line 215
    if-ne v0, v2, :cond_12

    .line 216
    .line 217
    move p1, v8

    .line 218
    :cond_12
    new-instance v0, Llg;

    .line 219
    .line 220
    invoke-direct {v0, v3, p1}, Llg;-><init>(Landroid/net/Uri;Z)V

    .line 221
    .line 222
    .line 223
    iget-boolean v2, p0, Lmg;->h:Z

    .line 224
    .line 225
    if-nez v2, :cond_15

    .line 226
    .line 227
    iget-object v2, p0, Lmg;->g:Llg;

    .line 228
    .line 229
    invoke-static {v2, v0}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    move-result v2

    .line 233
    if-eqz v2, :cond_13

    .line 234
    .line 235
    goto :goto_c

    .line 236
    :cond_13
    iget-object v2, p0, Lmg;->j:Lzf;

    .line 237
    .line 238
    if-eqz v2, :cond_14

    .line 239
    .line 240
    iget-object v2, v2, Lzf;->a:Lq63;

    .line 241
    .line 242
    invoke-virtual {v2}, Lq63;->h()Z

    .line 243
    .line 244
    .line 245
    :cond_14
    iput-object v1, p0, Lmg;->j:Lzf;

    .line 246
    .line 247
    iput-object v0, p0, Lmg;->g:Llg;

    .line 248
    .line 249
    iput-boolean v8, p0, Lmg;->h:Z

    .line 250
    .line 251
    new-instance v0, Lfg;

    .line 252
    .line 253
    invoke-direct {v0}, Lfg;-><init>()V

    .line 254
    .line 255
    .line 256
    invoke-virtual {p0, v0}, Lmg;->o(Lig;)V

    .line 257
    .line 258
    .line 259
    sget-object v0, Lzn4;->a:Lzn4;

    .line 260
    .line 261
    new-instance v0, Ljg;

    .line 262
    .line 263
    invoke-direct {v0, p0, p1, v3}, Ljg;-><init>(Lmg;ZLandroid/net/Uri;)V

    .line 264
    .line 265
    .line 266
    invoke-static {v0}, Lzn4;->d(Lbt3;)V

    .line 267
    .line 268
    .line 269
    :cond_15
    :goto_c
    return-void

    .line 270
    :cond_16
    :goto_d
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->O()Lmg;

    .line 271
    .line 272
    .line 273
    move-result-object p0

    .line 274
    iget-object p1, p0, Lmg;->j:Lzf;

    .line 275
    .line 276
    if-eqz p1, :cond_17

    .line 277
    .line 278
    iget-object p1, p1, Lzf;->a:Lq63;

    .line 279
    .line 280
    invoke-virtual {p1}, Lq63;->h()Z

    .line 281
    .line 282
    .line 283
    :cond_17
    iput-object v1, p0, Lmg;->j:Lzf;

    .line 284
    .line 285
    new-instance p1, Leg;

    .line 286
    .line 287
    new-instance v0, Lcw5;

    .line 288
    .line 289
    sget-object v2, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 290
    .line 291
    const v2, 0x7f130047

    .line 292
    .line 293
    .line 294
    invoke-static {v2}, Ldj7;->g(I)Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v2

    .line 298
    const v3, 0x7f130584

    .line 299
    .line 300
    .line 301
    invoke-static {v3}, Ldj7;->g(I)Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v3

    .line 305
    invoke-direct {v0, v2, v3}, Lcw5;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    invoke-direct {p1, v1, v0}, Leg;-><init>(Lbg;Lcw5;)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {p0, p1}, Lmg;->o(Lig;)V

    .line 312
    .line 313
    .line 314
    return-void
.end method

.method public final R(Lzf;)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->O()Lmg;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    iput-object v1, v0, Lmg;->j:Lzf;

    .line 10
    .line 11
    new-instance v1, Lfg;

    .line 12
    .line 13
    const v2, 0x7f13004c

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lmg;->l()Lbg;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-direct {v1, v2, v3}, Lfg;-><init>(ILbg;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lmg;->o(Lig;)V

    .line 24
    .line 25
    .line 26
    iget-object v5, p1, Lzf;->b:Ljava/util/List;

    .line 27
    .line 28
    new-instance v8, Lhf;

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    invoke-direct {v8, v0, p0, p1}, Lhf;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    new-instance v9, Ljf;

    .line 35
    .line 36
    invoke-direct {v9, v0, p0, p1}, Ljf;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    const/4 v6, 0x0

    .line 40
    const/4 v7, 0x0

    .line 41
    move-object v4, p0

    .line 42
    invoke-static/range {v4 .. v9}, Lcr;->e(Lil0;Ljava/util/List;ZZLhf;Ljf;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->O()Lmg;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    new-instance p1, Lfg;

    .line 50
    .line 51
    const v0, 0x7f130050

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lmg;->l()Lbg;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-direct {p1, v0, v1}, Lfg;-><init>(ILbg;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, p1}, Lmg;->o(Lig;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public final S(Lbg;)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->P(Z)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->N()Lyf;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v1, v1, Lyf;->n:Lcom/google/android/material/card/MaterialCardView;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->N()Lyf;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-object v1, v1, Lyf;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 19
    .line 20
    const/16 v2, 0x8

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->N()Lyf;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget-object v1, v1, Lyf;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p1, Lbg;->a:Landroid/graphics/drawable/Drawable;

    .line 35
    .line 36
    iget-object v3, p1, Lbg;->h:Ljava/lang/String;

    .line 37
    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->N()Lyf;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    iget-object v1, v1, Lyf;->x:Landroid/widget/ImageView;

    .line 45
    .line 46
    iget-object v4, p1, Lbg;->a:Landroid/graphics/drawable/Drawable;

    .line 47
    .line 48
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->N()Lyf;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    iget-object v1, v1, Lyf;->x:Landroid/widget/ImageView;

    .line 57
    .line 58
    const v4, 0x7f0802b0

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 62
    .line 63
    .line 64
    :goto_0
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->N()Lyf;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    iget-object v1, v1, Lyf;->J:Landroid/widget/TextView;

    .line 69
    .line 70
    iget-object v4, p1, Lbg;->b:Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->N()Lyf;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    iget-object v1, v1, Lyf;->L:Landroid/widget/TextView;

    .line 80
    .line 81
    iget-object v4, p1, Lbg;->c:Ljava/lang/String;

    .line 82
    .line 83
    if-eqz v4, :cond_1

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_1
    const v4, 0x7f130580

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    :goto_1
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->N()Lyf;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    iget-object v1, v1, Lyf;->O:Landroid/widget/TextView;

    .line 104
    .line 105
    iget-object v4, p1, Lbg;->d:Ljava/lang/String;

    .line 106
    .line 107
    iget-object v5, p1, Lbg;->e:Ljava/lang/Long;

    .line 108
    .line 109
    const-string v6, ")"

    .line 110
    .line 111
    if-eqz v4, :cond_3

    .line 112
    .line 113
    invoke-static {v4}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 114
    .line 115
    .line 116
    move-result v7

    .line 117
    if-eqz v7, :cond_2

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_2
    if-eqz v5, :cond_3

    .line 121
    .line 122
    new-instance v7, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const-string v4, " ("

    .line 131
    .line 132
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    goto :goto_3

    .line 146
    :cond_3
    :goto_2
    if-eqz v4, :cond_4

    .line 147
    .line 148
    invoke-static {v4}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 149
    .line 150
    .line 151
    move-result v7

    .line 152
    if-eqz v7, :cond_6

    .line 153
    .line 154
    :cond_4
    if-eqz v5, :cond_5

    .line 155
    .line 156
    new-instance v4, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    const-string v7, "("

    .line 159
    .line 160
    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v4

    .line 173
    goto :goto_3

    .line 174
    :cond_5
    const-string v4, ""

    .line 175
    .line 176
    :cond_6
    :goto_3
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->N()Lyf;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    iget-object v1, v1, Lyf;->O:Landroid/widget/TextView;

    .line 184
    .line 185
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->N()Lyf;

    .line 186
    .line 187
    .line 188
    move-result-object v4

    .line 189
    iget-object v4, v4, Lyf;->O:Landroid/widget/TextView;

    .line 190
    .line 191
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 192
    .line 193
    .line 194
    move-result-object v4

    .line 195
    if-eqz v4, :cond_8

    .line 196
    .line 197
    invoke-static {v4}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 198
    .line 199
    .line 200
    move-result v4

    .line 201
    if-eqz v4, :cond_7

    .line 202
    .line 203
    goto :goto_4

    .line 204
    :cond_7
    move v4, v0

    .line 205
    goto :goto_5

    .line 206
    :cond_8
    :goto_4
    move v4, v2

    .line 207
    :goto_5
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->N()Lyf;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    iget-object v1, v1, Lyf;->I:Landroid/widget/TextView;

    .line 215
    .line 216
    iget v4, p1, Lbg;->f:I

    .line 217
    .line 218
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 219
    .line 220
    .line 221
    move-result-object v4

    .line 222
    sget-object v5, Lp93;->a:Lp93;

    .line 223
    .line 224
    iget-wide v5, p1, Lbg;->g:J

    .line 225
    .line 226
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    invoke-static {p1}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    filled-new-array {v4, p1}, [Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object p1

    .line 238
    const v4, 0x7f130046

    .line 239
    .line 240
    .line 241
    invoke-virtual {p0, v4, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object p1

    .line 245
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->N()Lyf;

    .line 249
    .line 250
    .line 251
    move-result-object p1

    .line 252
    iget-object p1, p1, Lyf;->K:Landroid/widget/TextView;

    .line 253
    .line 254
    if-eqz v3, :cond_9

    .line 255
    .line 256
    invoke-static {v3}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 257
    .line 258
    .line 259
    move-result v1

    .line 260
    if-eqz v1, :cond_a

    .line 261
    .line 262
    :cond_9
    move v0, v2

    .line 263
    :cond_a
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->N()Lyf;

    .line 267
    .line 268
    .line 269
    move-result-object p1

    .line 270
    iget-object p1, p1, Lyf;->K:Landroid/widget/TextView;

    .line 271
    .line 272
    if-eqz v3, :cond_b

    .line 273
    .line 274
    const v0, 0x7f130049

    .line 275
    .line 276
    .line 277
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v1

    .line 281
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object p0

    .line 285
    goto :goto_6

    .line 286
    :cond_b
    const/4 p0, 0x0

    .line 287
    :goto_6
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    .line 289
    .line 290
    return-void
.end method

.method public final T(Lbg;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->S(Lbg;)V

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1}, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->P(Z)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->M:Lzf;

    .line 13
    .line 14
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->N:Lag;

    .line 15
    .line 16
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->N()Lyf;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v0, v0, Lyf;->n:Lcom/google/android/material/card/MaterialCardView;

    .line 21
    .line 22
    const/16 v1, 0x8

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->N()Lyf;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object v0, v0, Lyf;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->N()Lyf;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget-object v0, v0, Lyf;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->N()Lyf;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget-object v0, v0, Lyf;->x:Landroid/widget/ImageView;

    .line 50
    .line 51
    const v2, 0x7f0802b0

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->N()Lyf;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iget-object v0, v0, Lyf;->J:Landroid/widget/TextView;

    .line 62
    .line 63
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->N()Lyf;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iget-object v0, v0, Lyf;->L:Landroid/widget/TextView;

    .line 71
    .line 72
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->N()Lyf;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    iget-object v0, v0, Lyf;->O:Landroid/widget/TextView;

    .line 80
    .line 81
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->N()Lyf;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    iget-object v0, v0, Lyf;->I:Landroid/widget/TextView;

    .line 89
    .line 90
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->N()Lyf;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    iget-object v0, v0, Lyf;->K:Landroid/widget/TextView;

    .line 98
    .line 99
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->N()Lyf;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    iget-object p0, p0, Lyf;->K:Landroid/widget/TextView;

    .line 107
    .line 108
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 109
    .line 110
    .line 111
    return-void
.end method

.method public final U(ZZZZ)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->N()Lyf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lyf;->e:Lcom/google/android/material/button/MaterialButton;

    .line 6
    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    move v3, v2

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v3, v1

    .line 15
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->N()Lyf;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v0, v0, Lyf;->k:Lcom/google/android/material/button/MaterialButton;

    .line 23
    .line 24
    if-eqz p2, :cond_1

    .line 25
    .line 26
    move v3, v2

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move v3, v1

    .line 29
    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->N()Lyf;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-object v0, v0, Lyf;->f:Lcom/google/android/material/button/MaterialButton;

    .line 37
    .line 38
    if-eqz p3, :cond_2

    .line 39
    .line 40
    move v3, v2

    .line 41
    goto :goto_2

    .line 42
    :cond_2
    move v3, v1

    .line 43
    :goto_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->N()Lyf;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iget-object v0, v0, Lyf;->d:Lcom/google/android/material/button/MaterialButton;

    .line 51
    .line 52
    if-eqz p4, :cond_3

    .line 53
    .line 54
    move v3, v2

    .line 55
    goto :goto_3

    .line 56
    :cond_3
    move v3, v1

    .line 57
    :goto_3
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->N()Lyf;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iget-object v0, v0, Lyf;->r:Landroid/widget/LinearLayout;

    .line 65
    .line 66
    if-nez p3, :cond_5

    .line 67
    .line 68
    if-eqz p4, :cond_4

    .line 69
    .line 70
    goto :goto_4

    .line 71
    :cond_4
    move v3, v1

    .line 72
    goto :goto_5

    .line 73
    :cond_5
    :goto_4
    move v3, v2

    .line 74
    :goto_5
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->N()Lyf;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    iget-object p0, p0, Lyf;->p:Landroid/widget/LinearLayout;

    .line 82
    .line 83
    if-nez p1, :cond_6

    .line 84
    .line 85
    if-nez p2, :cond_6

    .line 86
    .line 87
    if-nez p3, :cond_6

    .line 88
    .line 89
    if-eqz p4, :cond_7

    .line 90
    .line 91
    :cond_6
    move v1, v2

    .line 92
    :cond_7
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/u;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p0, p1, p2, p3}, Lcr;->b(Lil0;IILandroid/content/Intent;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 11

    .line 1
    invoke-super {p0, p1}, Lil0;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->N()Lyf;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iget-object p1, p1, Lyf;->a:Landroid/widget/LinearLayout;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lil0;->K(Landroid/view/View;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->N()Lyf;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iget-object p1, p1, Lyf;->y:Landroid/widget/ImageView;

    .line 25
    .line 26
    new-instance v0, Lmf;

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-direct {v0, p0, v1}, Lmf;-><init>(Ljava/lang/Object;I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->N()Lyf;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iget-object p1, p1, Lyf;->e:Lcom/google/android/material/button/MaterialButton;

    .line 40
    .line 41
    new-instance v0, Lnf;

    .line 42
    .line 43
    invoke-direct {v0, p0, v1}, Lnf;-><init>(Ljava/lang/Object;I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->N()Lyf;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iget-object p1, p1, Lyf;->k:Lcom/google/android/material/button/MaterialButton;

    .line 54
    .line 55
    new-instance v0, Lg7;

    .line 56
    .line 57
    const/4 v2, 0x1

    .line 58
    invoke-direct {v0, p0, v2}, Lg7;-><init>(Ljava/lang/Object;I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->N()Lyf;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    iget-object p1, p1, Lyf;->d:Lcom/google/android/material/button/MaterialButton;

    .line 69
    .line 70
    new-instance v0, Lh7;

    .line 71
    .line 72
    invoke-direct {v0, p0, v2}, Lh7;-><init>(Ljava/lang/Object;I)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->N()Lyf;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    iget-object p1, p1, Lyf;->f:Lcom/google/android/material/button/MaterialButton;

    .line 83
    .line 84
    new-instance v0, Lof;

    .line 85
    .line 86
    invoke-direct {v0, p0, v1}, Lof;-><init>(Ljava/lang/Object;I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->N()Lyf;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    iget-object p1, p1, Lyf;->q:Landroid/widget/LinearLayout;

    .line 97
    .line 98
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    const/16 v0, 0xd

    .line 102
    .line 103
    invoke-static {p1, v0}, Lsz8;->b(Landroid/view/View;I)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->N()Lyf;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    iget-object p1, p1, Lyf;->p:Landroid/widget/LinearLayout;

    .line 111
    .line 112
    const/4 v0, 0x7

    .line 113
    invoke-static {p1, v0}, Lsz8;->b(Landroid/view/View;I)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->O()Lmg;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    iget-object p1, p1, Lmg;->e:Lex6;

    .line 121
    .line 122
    new-instance v3, Lxf;

    .line 123
    .line 124
    const/4 v9, 0x0

    .line 125
    const/4 v10, 0x0

    .line 126
    const/4 v4, 0x1

    .line 127
    const-class v6, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;

    .line 128
    .line 129
    const-string v7, "renderState"

    .line 130
    .line 131
    const-string v8, "renderState(Lorg/swiftapps/swiftbackup/apkshare/ApkImportUiState;)V"

    .line 132
    .line 133
    move-object v5, p0

    .line 134
    invoke-direct/range {v3 .. v10}, Lxf;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 135
    .line 136
    .line 137
    new-instance p0, Ltf;

    .line 138
    .line 139
    invoke-direct {p0, v1, v3}, Ltf;-><init>(ILmt3;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1, v5, p0}, Lzy4;->e(Lfu4;Les5;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v5}, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->O()Lmg;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    iget-object p0, p0, Lmg;->f:Lix6;

    .line 150
    .line 151
    new-instance p1, Ld7;

    .line 152
    .line 153
    invoke-direct {p1, v5, v2}, Ld7;-><init>(Ljava/lang/Object;I)V

    .line 154
    .line 155
    .line 156
    new-instance v0, Ltf;

    .line 157
    .line 158
    invoke-direct {v0, v1, p1}, Ltf;-><init>(ILmt3;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p0, v5, v0}, Lix6;->e(Lfu4;Les5;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    invoke-virtual {v5, p0}, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->Q(Landroid/content/Intent;)V

    .line 169
    .line 170
    .line 171
    return-void
.end method

.method public final onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Lio1;->onNewIntent(Landroid/content/Intent;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->Q(Landroid/content/Intent;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
