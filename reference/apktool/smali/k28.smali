.class public abstract Lk28;
.super Lzm;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lgv7;

.field public final b:Z

.field public final c:Z

.field public d:Ljava/lang/Integer;

.field public final e:Z

.field public final f:Lgv7;

.field public final k:Lgv7;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lzm;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lhs4;

    .line 5
    .line 6
    const/16 v1, 0xf

    .line 7
    .line 8
    invoke-direct {v0, p0, v1}, Lhs4;-><init>(Ljava/lang/Object;I)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lgv7;

    .line 12
    .line 13
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lk28;->a:Lgv7;

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lk28;->b:Z

    .line 20
    .line 21
    iput-boolean v0, p0, Lk28;->c:Z

    .line 22
    .line 23
    iput-boolean v0, p0, Lk28;->e:Z

    .line 24
    .line 25
    new-instance v0, Lb56;

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    invoke-direct {v0, p0, v1}, Lb56;-><init>(Lk28;I)V

    .line 29
    .line 30
    .line 31
    new-instance v1, Lgv7;

    .line 32
    .line 33
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lk28;->f:Lgv7;

    .line 37
    .line 38
    new-instance v0, Lno5;

    .line 39
    .line 40
    const/4 v1, 0x7

    .line 41
    invoke-direct {v0, p0, v1}, Lno5;-><init>(Ljava/lang/Object;I)V

    .line 42
    .line 43
    .line 44
    new-instance v1, Lgv7;

    .line 45
    .line 46
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 47
    .line 48
    .line 49
    iput-object v1, p0, Lk28;->k:Lgv7;

    .line 50
    .line 51
    return-void
.end method


# virtual methods
.method public final varargs n([Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lk28;->t()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {p0}, Lk28;->p()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-static {p0}, Lio4;->a(Landroid/app/Activity;)Landroid/view/ViewGroup;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Lx50;->p0([Ljava/lang/Object;)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Landroid/view/View;

    .line 40
    .line 41
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-static {}, Lb67;->f()Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-eqz p1, :cond_2

    .line 50
    .line 51
    :goto_1
    return-void

    .line 52
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {p0, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public final o()Z
    .locals 4

    .line 1
    sget-object v0, Lge6;->j:[I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const/16 v1, 0x75

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 17
    .line 18
    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    sget-object v0, Lzn4;->a:Lzn4;

    .line 32
    .line 33
    new-instance v0, Ll30;

    .line 34
    .line 35
    const/16 v2, 0xf

    .line 36
    .line 37
    const-string v3, "Theme error: You need to use a Theme.AppCompat theme (or descendant) with this activity."

    .line 38
    .line 39
    invoke-direct {v0, v2, p0, v3}, Ll30;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    invoke-static {v0}, Lzn4;->e(Lbt3;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    return v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lk28;->u()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_f

    .line 6
    .line 7
    sget-object v0, Lh28;->Companion:Lf28;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-static {p0}, Lf28;->d(Lk28;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-virtual {p0, v0}, Lzm;->setTheme(I)V

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lk28;->d:Ljava/lang/Integer;

    .line 24
    .line 25
    invoke-virtual {p0}, Lk28;->o()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    goto/16 :goto_8

    .line 32
    .line 33
    :cond_0
    const-string v0, "dynamic_colors"

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    const/4 v2, 0x1

    .line 37
    :try_start_0
    sget-object v3, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 38
    .line 39
    if-eqz v3, :cond_1

    .line 40
    .line 41
    invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const-string v0, "prefs"

    .line 47
    .line 48
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :catch_0
    move v0, v2

    .line 53
    :goto_0
    const/4 v3, 0x0

    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    invoke-static {}, Lb67;->d()Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    const v0, 0x7f0401fa

    .line 63
    .line 64
    .line 65
    filled-new-array {v0}, [I

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    invoke-virtual {p0, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v4, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 81
    .line 82
    .line 83
    if-eqz v5, :cond_2

    .line 84
    .line 85
    :try_start_1
    filled-new-array {v0}, [I

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 101
    .line 102
    .line 103
    if-eqz v4, :cond_2

    .line 104
    .line 105
    invoke-virtual {p0, v4}, Lzm;->setTheme(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :catch_1
    move-exception v0

    .line 110
    invoke-virtual {p0}, Lk28;->r()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    const-string v5, "Couldn\'t apply dynamic colors"

    .line 115
    .line 116
    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 117
    .line 118
    .line 119
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lk28;->s()Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-eqz v0, :cond_4

    .line 124
    .line 125
    invoke-virtual {p0}, Lk28;->t()Z

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-eqz v0, :cond_4

    .line 130
    .line 131
    invoke-virtual {p0}, Lk28;->p()I

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    invoke-static {}, Lb67;->f()Z

    .line 136
    .line 137
    .line 138
    move-result v4

    .line 139
    if-eqz v4, :cond_3

    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    invoke-virtual {v4, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 147
    .line 148
    .line 149
    :cond_4
    :goto_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 150
    .line 151
    const/16 v4, 0x1a

    .line 152
    .line 153
    if-gt v0, v4, :cond_7

    .line 154
    .line 155
    invoke-virtual {p0}, Lk28;->v()Z

    .line 156
    .line 157
    .line 158
    move-result v4

    .line 159
    xor-int/2addr v4, v2

    .line 160
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 161
    .line 162
    .line 163
    move-result-object v5

    .line 164
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 165
    .line 166
    .line 167
    move-result-object v6

    .line 168
    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 169
    .line 170
    .line 171
    move-result-object v6

    .line 172
    new-instance v7, Lge;

    .line 173
    .line 174
    invoke-direct {v7, v6}, Lge;-><init>(Landroid/view/View;)V

    .line 175
    .line 176
    .line 177
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 178
    .line 179
    const/16 v8, 0x23

    .line 180
    .line 181
    if-lt v6, v8, :cond_5

    .line 182
    .line 183
    new-instance v6, Lxv8;

    .line 184
    .line 185
    invoke-direct {v6, v5, v7}, Lvv8;-><init>(Landroid/view/Window;Lge;)V

    .line 186
    .line 187
    .line 188
    goto :goto_3

    .line 189
    :cond_5
    const/16 v8, 0x1e

    .line 190
    .line 191
    if-lt v6, v8, :cond_6

    .line 192
    .line 193
    new-instance v6, Lvv8;

    .line 194
    .line 195
    invoke-direct {v6, v5, v7}, Lvv8;-><init>(Landroid/view/Window;Lge;)V

    .line 196
    .line 197
    .line 198
    goto :goto_3

    .line 199
    :cond_6
    new-instance v6, Luv8;

    .line 200
    .line 201
    invoke-direct {v6, v5, v7}, Luv8;-><init>(Landroid/view/Window;Lge;)V

    .line 202
    .line 203
    .line 204
    :goto_3
    invoke-virtual {v6, v4}, Ly13;->C(Z)V

    .line 205
    .line 206
    .line 207
    :cond_7
    const/16 v4, 0x1b

    .line 208
    .line 209
    const v5, 0x7f060034

    .line 210
    .line 211
    .line 212
    if-ge v0, v4, :cond_9

    .line 213
    .line 214
    invoke-virtual {p0, v5}, Landroid/content/Context;->getColor(I)I

    .line 215
    .line 216
    .line 217
    move-result v4

    .line 218
    invoke-static {}, Lb67;->f()Z

    .line 219
    .line 220
    .line 221
    move-result v6

    .line 222
    if-eqz v6, :cond_8

    .line 223
    .line 224
    goto :goto_4

    .line 225
    :cond_8
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 226
    .line 227
    .line 228
    move-result-object v6

    .line 229
    invoke-virtual {v6, v4}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 230
    .line 231
    .line 232
    :cond_9
    :goto_4
    const/16 v4, 0x1c

    .line 233
    .line 234
    if-ge v0, v4, :cond_c

    .line 235
    .line 236
    invoke-virtual {p0}, Lk28;->v()Z

    .line 237
    .line 238
    .line 239
    move-result v6

    .line 240
    if-eqz v6, :cond_a

    .line 241
    .line 242
    goto :goto_5

    .line 243
    :cond_a
    const v5, 0x7f0604dd

    .line 244
    .line 245
    .line 246
    :goto_5
    invoke-virtual {p0, v5}, Landroid/content/Context;->getColor(I)I

    .line 247
    .line 248
    .line 249
    move-result v5

    .line 250
    if-ge v0, v4, :cond_b

    .line 251
    .line 252
    invoke-virtual {p0}, Lzm;->getResources()Landroid/content/res/Resources;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    const/high16 v4, 0x7f100000

    .line 257
    .line 258
    invoke-static {v0, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    new-instance v4, Landroid/app/ActivityManager$TaskDescription;

    .line 263
    .line 264
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v6

    .line 268
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 269
    .line 270
    .line 271
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 272
    .line 273
    .line 274
    move-result-object v7

    .line 275
    invoke-virtual {v7, v6, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 276
    .line 277
    .line 278
    move-result-object v6

    .line 279
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v7, v6}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 283
    .line 284
    .line 285
    move-result-object v6

    .line 286
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 287
    .line 288
    .line 289
    check-cast v6, Ljava/lang/String;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 290
    .line 291
    move-object v1, v6

    .line 292
    :catch_2
    invoke-direct {v4, v1, v0, v5}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    .line 293
    .line 294
    .line 295
    goto :goto_6

    .line 296
    :cond_b
    new-instance v0, Landroid/app/ActivityManager$TaskDescription;

    .line 297
    .line 298
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 303
    .line 304
    .line 305
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 306
    .line 307
    .line 308
    move-result-object v4

    .line 309
    invoke-virtual {v4, v0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 314
    .line 315
    .line 316
    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 321
    .line 322
    .line 323
    check-cast v0, Ljava/lang/String;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    .line 324
    .line 325
    move-object v1, v0

    .line 326
    :catch_3
    invoke-static {v5, v1}, Lqs1;->a(ILjava/lang/String;)Landroid/app/ActivityManager$TaskDescription;

    .line 327
    .line 328
    .line 329
    move-result-object v4

    .line 330
    :goto_6
    invoke-virtual {p0, v4}, Landroid/app/Activity;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    .line 331
    .line 332
    .line 333
    :cond_c
    invoke-static {}, Lb67;->f()Z

    .line 334
    .line 335
    .line 336
    move-result v0

    .line 337
    if-eqz v0, :cond_d

    .line 338
    .line 339
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 340
    .line 341
    .line 342
    move-result-object v0

    .line 343
    invoke-virtual {p0}, Lk28;->q()Z

    .line 344
    .line 345
    .line 346
    move-result v1

    .line 347
    xor-int/2addr v1, v2

    .line 348
    invoke-static {v0, v1}, Lw13;->r(Landroid/view/Window;Z)V

    .line 349
    .line 350
    .line 351
    goto :goto_8

    .line 352
    :cond_d
    invoke-static {}, Lb67;->b()Z

    .line 353
    .line 354
    .line 355
    move-result v0

    .line 356
    if-eqz v0, :cond_f

    .line 357
    .line 358
    invoke-static {}, Lb67;->f()Z

    .line 359
    .line 360
    .line 361
    move-result v0

    .line 362
    if-eqz v0, :cond_e

    .line 363
    .line 364
    goto :goto_7

    .line 365
    :cond_e
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 366
    .line 367
    .line 368
    move-result-object v0

    .line 369
    invoke-virtual {v0, v3}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 370
    .line 371
    .line 372
    :goto_7
    const v0, 0x1020002

    .line 373
    .line 374
    .line 375
    invoke-virtual {p0, v0}, Lzm;->findViewById(I)Landroid/view/View;

    .line 376
    .line 377
    .line 378
    move-result-object v0

    .line 379
    check-cast v0, Landroid/view/ViewGroup;

    .line 380
    .line 381
    const/16 v1, 0x300

    .line 382
    .line 383
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 384
    .line 385
    .line 386
    :cond_f
    :goto_8
    invoke-super {p0, p1}, Landroidx/fragment/app/u;->onCreate(Landroid/os/Bundle;)V

    .line 387
    .line 388
    .line 389
    return-void
.end method

.method public final p()I
    .locals 0

    .line 1
    iget-object p0, p0, Lk28;->k:Lgv7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public q()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lk28;->b:Z

    .line 2
    .line 3
    return p0
.end method

.method public final r()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lk28;->a:Lgv7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    check-cast p0, Ljava/lang/String;

    .line 11
    .line 12
    return-object p0
.end method

.method public s()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lk28;->c:Z

    .line 2
    .line 3
    return p0
.end method

.method public final setContentView(I)V
    .locals 0

    .line 12
    invoke-super {p0, p1}, Lzm;->setContentView(I)V

    const/4 p1, 0x0

    .line 13
    new-array p1, p1, [Landroid/view/View;

    invoke-virtual {p0, p1}, Lk28;->n([Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lzm;->setContentView(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    filled-new-array {p1}, [Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p0, p1}, Lk28;->n([Landroid/view/View;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 14
    invoke-super {p0, p1, p2}, Lzm;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 15
    filled-new-array {p1}, [Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lk28;->n([Landroid/view/View;)V

    return-void
.end method

.method public t()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lk28;->u()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lk28;->f:Lgv7;

    .line 8
    .line 9
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Ljava/lang/Boolean;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-nez p0, :cond_0

    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    return p0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    return p0
.end method

.method public u()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lk28;->e:Z

    .line 2
    .line 3
    return p0
.end method

.method public final v()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lk28;->d:Ljava/lang/Integer;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_2

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    const v1, 0x7f14029d

    .line 11
    .line 12
    .line 13
    if-eq p0, v1, :cond_1

    .line 14
    .line 15
    const v1, 0x7f14029c

    .line 16
    .line 17
    .line 18
    if-eq p0, v1, :cond_1

    .line 19
    .line 20
    const v1, 0x7f140158

    .line 21
    .line 22
    .line 23
    if-eq p0, v1, :cond_1

    .line 24
    .line 25
    const v1, 0x7f140157

    .line 26
    .line 27
    .line 28
    if-ne p0, v1, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    return v0

    .line 32
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 33
    return p0

    .line 34
    :cond_2
    return v0
.end method
