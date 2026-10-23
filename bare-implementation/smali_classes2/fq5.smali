.class public abstract Lfq5;
.super Lil0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final K:Ll90;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lil0;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lz20;

    .line 5
    .line 6
    const/16 v1, 0xd

    .line 7
    .line 8
    invoke-direct {v0, p0, v1}, Lz20;-><init>(Lil0;I)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Ll90;

    .line 12
    .line 13
    const-class v2, Lhq5;

    .line 14
    .line 15
    invoke-static {v2}, Lph6;->a(Ljava/lang/Class;)Ln81;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    new-instance v3, Lo30;

    .line 20
    .line 21
    const/16 v4, 0x9

    .line 22
    .line 23
    invoke-direct {v3, p0, v4}, Lo30;-><init>(Lil0;I)V

    .line 24
    .line 25
    .line 26
    new-instance v4, Lp30;

    .line 27
    .line 28
    const/4 v5, 0x6

    .line 29
    invoke-direct {v4, p0, v5}, Lp30;-><init>(Lil0;I)V

    .line 30
    .line 31
    .line 32
    invoke-direct {v1, v2, v3, v0, v4}, Ll90;-><init>(Ln81;Lbt3;Lbt3;Lbt3;)V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, Lfq5;->K:Ll90;

    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public final bridge synthetic F()Lqo0;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lfq5;->N()Lhq5;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final N()Lhq5;
    .locals 0

    .line 1
    iget-object p0, p0, Lfq5;->K:Ll90;

    .line 2
    .line 3
    invoke-virtual {p0}, Ll90;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lhq5;

    .line 8
    .line 9
    return-object p0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .line 1
    const/16 v0, 0x1394

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/u;->onActivityResult(IILandroid/content/Intent;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p0}, Lfq5;->N()Lhq5;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    iget-object p1, p0, Lhq5;->j:Lix6;

    .line 14
    .line 15
    if-nez p3, :cond_1

    .line 16
    .line 17
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 18
    .line 19
    iget-object v1, p0, La55;->b:Ljava/lang/String;

    .line 20
    .line 21
    const/4 v4, 0x4

    .line 22
    const/4 v5, 0x0

    .line 23
    const-string v2, "Sign in result intent is null"

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    invoke-static/range {v0 .. v5}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v2}, Lix6;->k(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    invoke-static {p3}, Lz80;->e(Landroid/content/Intent;)Lz80;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-static {p3}, Lg90;->J(Landroid/content/Intent;)Lg90;

    .line 38
    .line 39
    .line 40
    move-result-object p3

    .line 41
    const/4 v0, 0x0

    .line 42
    if-nez p3, :cond_6

    .line 43
    .line 44
    if-eqz p2, :cond_3

    .line 45
    .line 46
    iget-object p3, p2, Lz80;->d:Ljava/lang/String;

    .line 47
    .line 48
    if-nez p3, :cond_2

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    :goto_0
    move-object v2, p3

    .line 52
    goto :goto_2

    .line 53
    :cond_3
    :goto_1
    if-eqz p2, :cond_4

    .line 54
    .line 55
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    :cond_4
    if-nez v0, :cond_5

    .line 60
    .line 61
    const-string p3, "Authorization failed"

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_5
    move-object v2, v0

    .line 65
    :goto_2
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 66
    .line 67
    iget-object v1, p0, La55;->b:Ljava/lang/String;

    .line 68
    .line 69
    const/4 v4, 0x4

    .line 70
    const/4 v5, 0x0

    .line 71
    const/4 v3, 0x0

    .line 72
    invoke-static/range {v0 .. v5}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v2}, Lix6;->k(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :cond_6
    sget-object p1, Lzn4;->a:Lzn4;

    .line 80
    .line 81
    new-instance p1, Lgq5;

    .line 82
    .line 83
    invoke-direct {p1, p0, p3, v0}, Lgq5;-><init>(Lhq5;Lg90;Ljv1;)V

    .line 84
    .line 85
    .line 86
    invoke-static {v0, p1}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 1
    invoke-super {p0, p1}, Lil0;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lfq5;->N()Lhq5;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iget-object p1, p1, Lhq5;->h:Lix6;

    .line 9
    .line 10
    new-instance v0, Le7;

    .line 11
    .line 12
    const/16 v1, 0x14

    .line 13
    .line 14
    invoke-direct {v0, p0, v1}, Le7;-><init>(Ljava/lang/Object;I)V

    .line 15
    .line 16
    .line 17
    new-instance v2, Li7;

    .line 18
    .line 19
    const/4 v3, 0x2

    .line 20
    invoke-direct {v2, v3, v0}, Li7;-><init>(ILmt3;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p0, v2}, Lix6;->e(Lfu4;Les5;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lfq5;->N()Lhq5;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iget-object p1, p1, Lhq5;->i:Lix6;

    .line 31
    .line 32
    new-instance v0, Lk3;

    .line 33
    .line 34
    const/16 v2, 0x11

    .line 35
    .line 36
    invoke-direct {v0, p0, v2}, Lk3;-><init>(Ljava/lang/Object;I)V

    .line 37
    .line 38
    .line 39
    new-instance v2, Li7;

    .line 40
    .line 41
    invoke-direct {v2, v3, v0}, Li7;-><init>(ILmt3;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, p0, v2}, Lix6;->e(Lfu4;Les5;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lfq5;->N()Lhq5;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iget-object p1, p1, Lhq5;->j:Lix6;

    .line 52
    .line 53
    new-instance v0, Lhj;

    .line 54
    .line 55
    invoke-direct {v0, p0, v1}, Lhj;-><init>(Ljava/lang/Object;I)V

    .line 56
    .line 57
    .line 58
    new-instance v1, Li7;

    .line 59
    .line 60
    invoke-direct {v1, v3, v0}, Li7;-><init>(ILmt3;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, p0, v1}, Lix6;->e(Lfu4;Les5;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Lfq5;->N()Lhq5;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    new-instance v0, Luj;

    .line 71
    .line 72
    const-string p1, "force_confirm"

    .line 73
    .line 74
    const-string v1, "yes"

    .line 75
    .line 76
    invoke-static {p1, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    const/4 v7, 0x0

    .line 84
    const/16 v8, 0xd0

    .line 85
    .line 86
    const-string v1, "https://oauth.yandex.com/authorize"

    .line 87
    .line 88
    const-string v2, "https://oauth.yandex.com/token"

    .line 89
    .line 90
    const-string v3, "ec2ee695f64042bfa6285a6999ef11bf"

    .line 91
    .line 92
    const-string v4, "org.swiftapps.swiftbackup.yandex://oauth"

    .line 93
    .line 94
    const/4 v5, 0x0

    .line 95
    invoke-direct/range {v0 .. v8}, Luj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lxj;Ljava/util/Map;Ljava/util/List;I)V

    .line 96
    .line 97
    .line 98
    new-instance p1, Lnh4;

    .line 99
    .line 100
    const/16 v1, 0xe

    .line 101
    .line 102
    invoke-direct {p1, v1}, Lnh4;-><init>(I)V

    .line 103
    .line 104
    .line 105
    iget-object v1, p0, Lhq5;->j:Lix6;

    .line 106
    .line 107
    iget-boolean v2, p0, Lhq5;->e:Z

    .line 108
    .line 109
    if-eqz v2, :cond_0

    .line 110
    .line 111
    return-void

    .line 112
    :cond_0
    const/4 v2, 0x1

    .line 113
    iput-boolean v2, p0, Lhq5;->e:Z

    .line 114
    .line 115
    iput-object v0, p0, Lhq5;->f:Luj;

    .line 116
    .line 117
    iput-object p1, p0, Lhq5;->g:Lnh4;

    .line 118
    .line 119
    sget-object p1, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 120
    .line 121
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    new-instance v2, Landroid/content/Intent;

    .line 126
    .line 127
    const-string v3, "android.intent.action.VIEW"

    .line 128
    .line 129
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    const/high16 v5, 0x10000000

    .line 133
    .line 134
    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 135
    .line 136
    .line 137
    const-string v5, "https://www.google.com"

    .line 138
    .line 139
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 140
    .line 141
    .line 142
    move-result-object v5

    .line 143
    invoke-virtual {v2, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    const/high16 v5, 0x10000

    .line 151
    .line 152
    invoke-virtual {p1, v2, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 157
    .line 158
    .line 159
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 160
    .line 161
    .line 162
    move-result p1

    .line 163
    if-eqz p1, :cond_1

    .line 164
    .line 165
    const p1, 0x7f1303c3

    .line 166
    .line 167
    .line 168
    invoke-static {p1}, Ldj7;->g(I)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 173
    .line 174
    iget-object v3, p0, La55;->b:Ljava/lang/String;

    .line 175
    .line 176
    const/4 v6, 0x4

    .line 177
    const/4 v7, 0x0

    .line 178
    const/4 v5, 0x0

    .line 179
    invoke-static/range {v2 .. v7}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v1, v4}, Lix6;->k(Ljava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    return-void

    .line 186
    :cond_1
    new-instance p1, Landroid/content/Intent;

    .line 187
    .line 188
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    invoke-direct {p1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 193
    .line 194
    .line 195
    sget-object v2, Lg00;->a:Lg00;

    .line 196
    .line 197
    invoke-static {}, Lg00;->r()Landroid/content/pm/PackageManager;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    const/4 v3, 0x0

    .line 202
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 207
    .line 208
    .line 209
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 214
    .line 215
    .line 216
    move-result v3

    .line 217
    if-eqz v3, :cond_2

    .line 218
    .line 219
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v3

    .line 223
    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 224
    .line 225
    sget-object v4, Lvr6;->INSTANCE:Lvr6;

    .line 226
    .line 227
    iget-object v5, p0, La55;->b:Ljava/lang/String;

    .line 228
    .line 229
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 230
    .line 231
    new-instance v6, Ljava/lang/StringBuilder;

    .line 232
    .line 233
    const-string v7, "Handler activities: "

    .line 234
    .line 235
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v6

    .line 245
    const/4 v8, 0x4

    .line 246
    const/4 v9, 0x0

    .line 247
    const/4 v7, 0x0

    .line 248
    invoke-static/range {v4 .. v9}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 249
    .line 250
    .line 251
    goto :goto_0

    .line 252
    :cond_2
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 253
    .line 254
    .line 255
    move-result p1

    .line 256
    if-eqz p1, :cond_3

    .line 257
    .line 258
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 259
    .line 260
    iget-object v3, p0, La55;->b:Ljava/lang/String;

    .line 261
    .line 262
    const/4 v6, 0x4

    .line 263
    const/4 v7, 0x0

    .line 264
    const-string v4, "No handler activity found for org.swiftapps.swiftbackup.yandex://oauth"

    .line 265
    .line 266
    const/4 v5, 0x0

    .line 267
    invoke-static/range {v2 .. v7}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v1, v4}, Lix6;->k(Ljava/lang/Object;)V

    .line 271
    .line 272
    .line 273
    return-void

    .line 274
    :cond_3
    iget-object p0, p0, Lhq5;->h:Lix6;

    .line 275
    .line 276
    sget-object p1, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 277
    .line 278
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 279
    .line 280
    .line 281
    move-result-object p1

    .line 282
    invoke-virtual {v0}, Luj;->a()Lc90;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    invoke-virtual {v0}, Lc90;->a()Le90;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    invoke-static {p1, v0}, Luj;->b(Landroid/content/Context;Le90;)Landroid/content/Intent;

    .line 291
    .line 292
    .line 293
    move-result-object p1

    .line 294
    invoke-virtual {p0, p1}, Lix6;->k(Ljava/lang/Object;)V

    .line 295
    .line 296
    .line 297
    return-void
.end method
