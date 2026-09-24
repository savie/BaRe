.class public final Lorg/swiftapps/swiftbackup/cloud/connect/BoxSignInActivity;
.super Lil0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final synthetic L:I


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
    new-instance v0, Lms;

    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    invoke-direct {v0, p0, v1}, Lms;-><init>(Lil0;I)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Ll90;

    .line 11
    .line 12
    const-class v2, Lpv0;

    .line 13
    .line 14
    invoke-static {v2}, Lph6;->a(Ljava/lang/Class;)Ln81;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    new-instance v3, Lns;

    .line 19
    .line 20
    const/4 v4, 0x3

    .line 21
    invoke-direct {v3, p0, v4}, Lns;-><init>(Lil0;I)V

    .line 22
    .line 23
    .line 24
    new-instance v4, Lz20;

    .line 25
    .line 26
    const/4 v5, 0x1

    .line 27
    invoke-direct {v4, p0, v5}, Lz20;-><init>(Lil0;I)V

    .line 28
    .line 29
    .line 30
    invoke-direct {v1, v2, v3, v0, v4}, Ll90;-><init>(Ln81;Lbt3;Lbt3;Lbt3;)V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/cloud/connect/BoxSignInActivity;->K:Ll90;

    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public final bridge synthetic F()Lqo0;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/BoxSignInActivity;->N()Lpv0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final N()Lpv0;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/connect/BoxSignInActivity;->K:Ll90;

    .line 2
    .line 3
    invoke-virtual {p0}, Ll90;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lpv0;

    .line 8
    .line 9
    return-object p0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .line 1
    const/16 v0, 0x1393

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
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/BoxSignInActivity;->N()Lpv0;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    iget-object p1, p0, Lpv0;->h:Lix6;

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
    const-string v2, "Box sign-in result intent is null"

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
    const-string p3, "Box authorization failed"

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
    new-instance p1, Lov0;

    .line 82
    .line 83
    invoke-direct {p1, p0, p3, v0}, Lov0;-><init>(Lpv0;Lg90;Ljv1;)V

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
    .locals 9

    .line 1
    invoke-super {p0, p1}, Lil0;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/BoxSignInActivity;->N()Lpv0;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iget-object p1, p1, Lpv0;->g:Lix6;

    .line 9
    .line 10
    new-instance v0, Lc7;

    .line 11
    .line 12
    const/4 v1, 0x6

    .line 13
    invoke-direct {v0, p0, v1}, Lc7;-><init>(Ljava/lang/Object;I)V

    .line 14
    .line 15
    .line 16
    new-instance v1, Ly20;

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    invoke-direct {v1, v2, v0}, Ly20;-><init>(ILmt3;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p0, v1}, Lix6;->e(Lfu4;Les5;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/BoxSignInActivity;->N()Lpv0;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iget-object p1, p1, Lpv0;->h:Lix6;

    .line 30
    .line 31
    new-instance v0, Ld7;

    .line 32
    .line 33
    const/4 v1, 0x5

    .line 34
    invoke-direct {v0, p0, v1}, Ld7;-><init>(Ljava/lang/Object;I)V

    .line 35
    .line 36
    .line 37
    new-instance v3, Ly20;

    .line 38
    .line 39
    invoke-direct {v3, v2, v0}, Ly20;-><init>(ILmt3;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, p0, v3}, Lix6;->e(Lfu4;Les5;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/BoxSignInActivity;->N()Lpv0;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iget-object p1, p1, Lpv0;->f:Lix6;

    .line 50
    .line 51
    new-instance v0, Le7;

    .line 52
    .line 53
    invoke-direct {v0, p0, v1}, Le7;-><init>(Ljava/lang/Object;I)V

    .line 54
    .line 55
    .line 56
    new-instance v1, Ly20;

    .line 57
    .line 58
    invoke-direct {v1, v2, v0}, Ly20;-><init>(ILmt3;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, p0, v1}, Lix6;->e(Lfu4;Les5;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/BoxSignInActivity;->N()Lpv0;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    iget-object p1, p0, Lpv0;->h:Lix6;

    .line 69
    .line 70
    iget-boolean v0, p0, Lpv0;->e:Z

    .line 71
    .line 72
    if-eqz v0, :cond_0

    .line 73
    .line 74
    return-void

    .line 75
    :cond_0
    iput-boolean v2, p0, Lpv0;->e:Z

    .line 76
    .line 77
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 78
    .line 79
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    new-instance v1, Landroid/content/Intent;

    .line 84
    .line 85
    const-string v2, "android.intent.action.VIEW"

    .line 86
    .line 87
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    const/high16 v3, 0x10000000

    .line 91
    .line 92
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 93
    .line 94
    .line 95
    const-string v3, "https://www.google.com"

    .line 96
    .line 97
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    const/high16 v3, 0x10000

    .line 109
    .line 110
    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-eqz v0, :cond_1

    .line 122
    .line 123
    const v0, 0x7f1303c3

    .line 124
    .line 125
    .line 126
    invoke-static {v0}, Ldj7;->g(I)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    sget-object v1, Lvr6;->INSTANCE:Lvr6;

    .line 131
    .line 132
    iget-object v2, p0, La55;->b:Ljava/lang/String;

    .line 133
    .line 134
    const/4 v5, 0x4

    .line 135
    const/4 v6, 0x0

    .line 136
    const/4 v4, 0x0

    .line 137
    invoke-static/range {v1 .. v6}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1, v3}, Lix6;->k(Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    return-void

    .line 144
    :cond_1
    sget-object v0, Lzu0;->a:Lzu0;

    .line 145
    .line 146
    new-instance v0, Landroid/content/Intent;

    .line 147
    .line 148
    const-string v1, "org.swiftapps.swiftbackup.box://oauth"

    .line 149
    .line 150
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 155
    .line 156
    .line 157
    sget-object v1, Lg00;->a:Lg00;

    .line 158
    .line 159
    invoke-static {}, Lg00;->r()Landroid/content/pm/PackageManager;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    const/4 v2, 0x0

    .line 164
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 169
    .line 170
    .line 171
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 176
    .line 177
    .line 178
    move-result v2

    .line 179
    if-eqz v2, :cond_2

    .line 180
    .line 181
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 186
    .line 187
    sget-object v3, Lvr6;->INSTANCE:Lvr6;

    .line 188
    .line 189
    iget-object v4, p0, La55;->b:Ljava/lang/String;

    .line 190
    .line 191
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 192
    .line 193
    new-instance v5, Ljava/lang/StringBuilder;

    .line 194
    .line 195
    const-string v6, "Handler activities: "

    .line 196
    .line 197
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v5

    .line 207
    const/4 v7, 0x4

    .line 208
    const/4 v8, 0x0

    .line 209
    const/4 v6, 0x0

    .line 210
    invoke-static/range {v3 .. v8}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 211
    .line 212
    .line 213
    goto :goto_0

    .line 214
    :cond_2
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 215
    .line 216
    .line 217
    move-result v0

    .line 218
    if-eqz v0, :cond_3

    .line 219
    .line 220
    sget-object v1, Lvr6;->INSTANCE:Lvr6;

    .line 221
    .line 222
    iget-object v2, p0, La55;->b:Ljava/lang/String;

    .line 223
    .line 224
    const/4 v5, 0x4

    .line 225
    const/4 v6, 0x0

    .line 226
    const-string v3, "No handler activity found for Box redirect URI: org.swiftapps.swiftbackup.box://oauth"

    .line 227
    .line 228
    const/4 v4, 0x0

    .line 229
    invoke-static/range {v1 .. v6}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {p1, v3}, Lix6;->k(Ljava/lang/Object;)V

    .line 233
    .line 234
    .line 235
    return-void

    .line 236
    :cond_3
    iget-object p0, p0, Lpv0;->f:Lix6;

    .line 237
    .line 238
    sget-object p1, Lzu0;->a:Lzu0;

    .line 239
    .line 240
    sget-object p1, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 241
    .line 242
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    invoke-static {}, Lzu0;->a()Luj;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    invoke-virtual {v0}, Luj;->a()Lc90;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    invoke-virtual {v0}, Lc90;->a()Le90;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    invoke-static {p1, v0}, Luj;->b(Landroid/content/Context;Le90;)Landroid/content/Intent;

    .line 259
    .line 260
    .line 261
    move-result-object p1

    .line 262
    invoke-virtual {p0, p1}, Lix6;->k(Ljava/lang/Object;)V

    .line 263
    .line 264
    .line 265
    return-void
.end method
