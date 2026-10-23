.class public final Lorg/swiftapps/swiftbackup/cloud/connect/TeraBoxSignInActivity;
.super Lil0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final synthetic N:I


# instance fields
.field public final K:Ll90;

.field public L:Z

.field public M:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lil0;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lp30;

    .line 5
    .line 6
    const/16 v1, 0x9

    .line 7
    .line 8
    invoke-direct {v0, p0, v1}, Lp30;-><init>(Lil0;I)V

    .line 9
    .line 10
    .line 11
    new-instance v2, Ll90;

    .line 12
    .line 13
    const-class v3, Ll08;

    .line 14
    .line 15
    invoke-static {v3}, Lph6;->a(Ljava/lang/Class;)Ln81;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    new-instance v4, Lq30;

    .line 20
    .line 21
    invoke-direct {v4, p0, v1}, Lq30;-><init>(Lil0;I)V

    .line 22
    .line 23
    .line 24
    new-instance v1, Lgl0;

    .line 25
    .line 26
    const/16 v5, 0xa

    .line 27
    .line 28
    invoke-direct {v1, p0, v5}, Lgl0;-><init>(Lil0;I)V

    .line 29
    .line 30
    .line 31
    invoke-direct {v2, v3, v4, v0, v1}, Ll90;-><init>(Ln81;Lbt3;Lbt3;Lbt3;)V

    .line 32
    .line 33
    .line 34
    iput-object v2, p0, Lorg/swiftapps/swiftbackup/cloud/connect/TeraBoxSignInActivity;->K:Ll90;

    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public final bridge synthetic F()Lqo0;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/TeraBoxSignInActivity;->N()Ll08;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final N()Ll08;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/connect/TeraBoxSignInActivity;->K:Ll90;

    .line 2
    .line 3
    invoke-virtual {p0}, Ll90;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ll08;

    .line 8
    .line 9
    return-object p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 12

    .line 1
    invoke-super {p0, p1}, Lil0;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/TeraBoxSignInActivity;->N()Ll08;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iget-object v0, p1, Ll08;->g:Lzz7;

    .line 9
    .line 10
    iget-object v1, p1, Ll08;->k:Lix6;

    .line 11
    .line 12
    iget-boolean v2, p1, Ll08;->e:Z

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    goto/16 :goto_1

    .line 18
    .line 19
    :cond_0
    iput-boolean v3, p1, Ll08;->e:Z

    .line 20
    .line 21
    invoke-virtual {v0}, Lzz7;->a()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 28
    .line 29
    const v0, 0x7f130570

    .line 30
    .line 31
    .line 32
    invoke-static {v0}, Ldj7;->g(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    sget-object v4, Lvr6;->INSTANCE:Lvr6;

    .line 37
    .line 38
    iget-object v5, p1, La55;->b:Ljava/lang/String;

    .line 39
    .line 40
    const/4 v8, 0x4

    .line 41
    const/4 v9, 0x0

    .line 42
    const/4 v7, 0x0

    .line 43
    invoke-static/range {v4 .. v9}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v6}, Lix6;->k(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    goto/16 :goto_1

    .line 50
    .line 51
    :cond_1
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 52
    .line 53
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    new-instance v2, Landroid/content/Intent;

    .line 58
    .line 59
    const-string v4, "android.intent.action.VIEW"

    .line 60
    .line 61
    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const/high16 v5, 0x10000000

    .line 65
    .line 66
    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 67
    .line 68
    .line 69
    const-string v5, "https://www.google.com"

    .line 70
    .line 71
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    invoke-virtual {v2, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    const/high16 v5, 0x10000

    .line 83
    .line 84
    invoke-virtual {v0, v2, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_2

    .line 96
    .line 97
    const v0, 0x7f1303c3

    .line 98
    .line 99
    .line 100
    invoke-static {v0}, Ldj7;->g(I)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    sget-object v4, Lvr6;->INSTANCE:Lvr6;

    .line 105
    .line 106
    iget-object v5, p1, La55;->b:Ljava/lang/String;

    .line 107
    .line 108
    const/4 v8, 0x4

    .line 109
    const/4 v9, 0x0

    .line 110
    const/4 v7, 0x0

    .line 111
    invoke-static/range {v4 .. v9}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1, v6}, Lix6;->k(Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    goto/16 :goto_1

    .line 118
    .line 119
    :cond_2
    const-string v0, "https://www.terabox.com/wap/outside/login"

    .line 120
    .line 121
    invoke-static {v0}, Lokhttp3/HttpUrl$Companion;->b(Ljava/lang/String;)Lokhttp3/HttpUrl;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->g()Lokhttp3/HttpUrl$Builder;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    const-string v2, "clientId"

    .line 130
    .line 131
    const-string v5, ""

    .line 132
    .line 133
    invoke-virtual {v0, v2, v5}, Lokhttp3/HttpUrl$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    const-string v2, "isFromApp"

    .line 137
    .line 138
    const-string v5, "1"

    .line 139
    .line 140
    invoke-virtual {v0, v2, v5}, Lokhttp3/HttpUrl$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0}, Lokhttp3/HttpUrl$Builder;->e()Lokhttp3/HttpUrl;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    iget-object v0, v0, Lokhttp3/HttpUrl;->h:Ljava/lang/String;

    .line 148
    .line 149
    new-instance v2, Landroid/content/Intent;

    .line 150
    .line 151
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 152
    .line 153
    .line 154
    move-result-object v5

    .line 155
    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 156
    .line 157
    .line 158
    sget-object v4, Lg00;->a:Lg00;

    .line 159
    .line 160
    invoke-static {}, Lg00;->r()Landroid/content/pm/PackageManager;

    .line 161
    .line 162
    .line 163
    move-result-object v4

    .line 164
    const/4 v5, 0x0

    .line 165
    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 170
    .line 171
    .line 172
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 173
    .line 174
    .line 175
    move-result-object v4

    .line 176
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 177
    .line 178
    .line 179
    move-result v5

    .line 180
    if-eqz v5, :cond_3

    .line 181
    .line 182
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v5

    .line 186
    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 187
    .line 188
    sget-object v6, Lvr6;->INSTANCE:Lvr6;

    .line 189
    .line 190
    iget-object v7, p1, La55;->b:Ljava/lang/String;

    .line 191
    .line 192
    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 193
    .line 194
    new-instance v8, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    const-string v9, "Handler activities: "

    .line 197
    .line 198
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v8

    .line 208
    const/4 v10, 0x4

    .line 209
    const/4 v11, 0x0

    .line 210
    const/4 v9, 0x0

    .line 211
    invoke-static/range {v6 .. v11}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 212
    .line 213
    .line 214
    goto :goto_0

    .line 215
    :cond_3
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 216
    .line 217
    .line 218
    move-result v2

    .line 219
    if-eqz v2, :cond_4

    .line 220
    .line 221
    sget-object v4, Lvr6;->INSTANCE:Lvr6;

    .line 222
    .line 223
    iget-object v5, p1, La55;->b:Ljava/lang/String;

    .line 224
    .line 225
    const/4 v8, 0x4

    .line 226
    const/4 v9, 0x0

    .line 227
    const-string v6, "No handler activity found!"

    .line 228
    .line 229
    const/4 v7, 0x0

    .line 230
    invoke-static/range {v4 .. v9}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v1, v6}, Lix6;->k(Ljava/lang/Object;)V

    .line 234
    .line 235
    .line 236
    goto :goto_1

    .line 237
    :cond_4
    iget-object p1, p1, Ll08;->i:Lix6;

    .line 238
    .line 239
    invoke-virtual {p1, v0}, Lix6;->k(Ljava/lang/Object;)V

    .line 240
    .line 241
    .line 242
    :goto_1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/TeraBoxSignInActivity;->N()Ll08;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    iget-object p1, p1, Ll08;->i:Lix6;

    .line 247
    .line 248
    new-instance v0, Le7;

    .line 249
    .line 250
    const/16 v1, 0x1a

    .line 251
    .line 252
    invoke-direct {v0, p0, v1}, Le7;-><init>(Ljava/lang/Object;I)V

    .line 253
    .line 254
    .line 255
    new-instance v1, Lez;

    .line 256
    .line 257
    const/4 v2, 0x4

    .line 258
    invoke-direct {v1, v2, v0}, Lez;-><init>(ILmt3;)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {p1, p0, v1}, Lix6;->e(Lfu4;Les5;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/TeraBoxSignInActivity;->N()Ll08;

    .line 265
    .line 266
    .line 267
    move-result-object p1

    .line 268
    iget-object p1, p1, Ll08;->j:Lix6;

    .line 269
    .line 270
    new-instance v0, Lk3;

    .line 271
    .line 272
    const/16 v1, 0x15

    .line 273
    .line 274
    invoke-direct {v0, p0, v1}, Lk3;-><init>(Ljava/lang/Object;I)V

    .line 275
    .line 276
    .line 277
    new-instance v1, Lez;

    .line 278
    .line 279
    invoke-direct {v1, v2, v0}, Lez;-><init>(ILmt3;)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {p1, p0, v1}, Lix6;->e(Lfu4;Les5;)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/TeraBoxSignInActivity;->N()Ll08;

    .line 286
    .line 287
    .line 288
    move-result-object p1

    .line 289
    iget-object p1, p1, Ll08;->k:Lix6;

    .line 290
    .line 291
    new-instance v0, Lqp8;

    .line 292
    .line 293
    invoke-direct {v0, p0, v3}, Lqp8;-><init>(Lil0;I)V

    .line 294
    .line 295
    .line 296
    new-instance v1, Lez;

    .line 297
    .line 298
    invoke-direct {v1, v2, v0}, Lez;-><init>(ILmt3;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {p1, p0, v1}, Lix6;->e(Lfu4;Les5;)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/TeraBoxSignInActivity;->N()Ll08;

    .line 305
    .line 306
    .line 307
    move-result-object p1

    .line 308
    iget-object p1, p1, Ll08;->l:Lix6;

    .line 309
    .line 310
    new-instance v0, Lox;

    .line 311
    .line 312
    const/16 v1, 0x16

    .line 313
    .line 314
    invoke-direct {v0, p0, v1}, Lox;-><init>(Ljava/lang/Object;I)V

    .line 315
    .line 316
    .line 317
    new-instance v1, Lez;

    .line 318
    .line 319
    invoke-direct {v1, v2, v0}, Lez;-><init>(ILmt3;)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {p1, p0, v1}, Lix6;->e(Lfu4;Les5;)V

    .line 323
    .line 324
    .line 325
    return-void
.end method

.method public final onNewIntent(Landroid/content/Intent;)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lorg/swiftapps/swiftbackup/cloud/connect/TeraBoxSignInActivity;->M:Z

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lorg/swiftapps/swiftbackup/cloud/connect/TeraBoxSignInActivity;->L:Z

    .line 9
    .line 10
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/TeraBoxSignInActivity;->N()Ll08;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 21
    .line 22
    iget-object v3, v0, La55;->b:Ljava/lang/String;

    .line 23
    .line 24
    const/4 v6, 0x4

    .line 25
    const/4 v7, 0x0

    .line 26
    const-string v4, "handleSignInResult: Sign in result intent is null"

    .line 27
    .line 28
    const/4 v5, 0x0

    .line 29
    invoke-static/range {v2 .. v7}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, v0, Ll08;->k:Lix6;

    .line 33
    .line 34
    invoke-virtual {v0, v4}, Lix6;->k(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_0
    const-string v2, "code"

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    if-eqz v2, :cond_2

    .line 45
    .line 46
    invoke-static {v2}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    sget-object v4, Lvr6;->INSTANCE:Lvr6;

    .line 54
    .line 55
    iget-object v5, v0, La55;->b:Ljava/lang/String;

    .line 56
    .line 57
    const/4 v8, 0x4

    .line 58
    const/4 v9, 0x0

    .line 59
    const-string v6, "Authorization code received."

    .line 60
    .line 61
    const/4 v7, 0x0

    .line 62
    invoke-static/range {v4 .. v9}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    sget-object v1, Lzn4;->a:Lzn4;

    .line 66
    .line 67
    new-instance v1, Lk08;

    .line 68
    .line 69
    const/4 v3, 0x0

    .line 70
    invoke-direct {v1, v0, v2, v3}, Lk08;-><init>(Ll08;Ljava/lang/String;Ljv1;)V

    .line 71
    .line 72
    .line 73
    invoke-static {v3, v1}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_2
    :goto_0
    sget-object v4, Lvr6;->INSTANCE:Lvr6;

    .line 78
    .line 79
    iget-object v5, v0, La55;->b:Ljava/lang/String;

    .line 80
    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    const-string v3, "Invalid response from server. uri="

    .line 84
    .line 85
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    const/4 v8, 0x4

    .line 96
    const/4 v9, 0x0

    .line 97
    const/4 v7, 0x0

    .line 98
    invoke-static/range {v4 .. v9}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    iget-object v0, v0, Ll08;->j:Lix6;

    .line 102
    .line 103
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Lix6;->k(Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    :goto_1
    invoke-super {p0, p1}, Lio1;->onNewIntent(Landroid/content/Intent;)V

    .line 109
    .line 110
    .line 111
    return-void
.end method

.method public final onStart()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lk28;->r()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "onStart"

    .line 6
    .line 7
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    iget-boolean v0, p0, Lorg/swiftapps/swiftbackup/cloud/connect/TeraBoxSignInActivity;->L:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lorg/swiftapps/swiftbackup/cloud/connect/TeraBoxSignInActivity;->L:Z

    .line 16
    .line 17
    sget-object v0, Lzn4;->a:Lzn4;

    .line 18
    .line 19
    new-instance v0, Ln55;

    .line 20
    .line 21
    const/16 v1, 0xa

    .line 22
    .line 23
    invoke-direct {v0, p0, v1}, Ln55;-><init>(Ljava/lang/Object;I)V

    .line 24
    .line 25
    .line 26
    const-wide/16 v1, 0x1f4

    .line 27
    .line 28
    invoke-static {v1, v2, v0}, Lzn4;->f(JLbt3;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-super {p0}, Lil0;->onStart()V

    .line 32
    .line 33
    .line 34
    return-void
.end method
