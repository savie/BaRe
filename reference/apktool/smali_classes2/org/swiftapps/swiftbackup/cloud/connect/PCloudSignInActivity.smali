.class public final Lorg/swiftapps/swiftbackup/cloud/connect/PCloudSignInActivity;
.super Lil0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final synthetic M:I


# instance fields
.field public final K:Ll90;

.field public final L:I


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lil0;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lo30;

    .line 5
    .line 6
    const/16 v1, 0xa

    .line 7
    .line 8
    invoke-direct {v0, p0, v1}, Lo30;-><init>(Lil0;I)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Ll90;

    .line 12
    .line 13
    const-class v2, Lsv5;

    .line 14
    .line 15
    invoke-static {v2}, Lph6;->a(Ljava/lang/Class;)Ln81;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    new-instance v3, Lp30;

    .line 20
    .line 21
    const/4 v4, 0x7

    .line 22
    invoke-direct {v3, p0, v4}, Lp30;-><init>(Lil0;I)V

    .line 23
    .line 24
    .line 25
    new-instance v5, Lq30;

    .line 26
    .line 27
    invoke-direct {v5, p0, v4}, Lq30;-><init>(Lil0;I)V

    .line 28
    .line 29
    .line 30
    invoke-direct {v1, v2, v3, v0, v5}, Ll90;-><init>(Ln81;Lbt3;Lbt3;Lbt3;)V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/cloud/connect/PCloudSignInActivity;->K:Ll90;

    .line 34
    .line 35
    const/16 v0, 0x740

    .line 36
    .line 37
    iput v0, p0, Lorg/swiftapps/swiftbackup/cloud/connect/PCloudSignInActivity;->L:I

    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public final bridge synthetic F()Lqo0;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/PCloudSignInActivity;->N()Lsv5;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final N()Lsv5;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/connect/PCloudSignInActivity;->K:Ll90;

    .line 2
    .line 3
    invoke-virtual {p0}, Ll90;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lsv5;

    .line 8
    .line 9
    return-object p0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/u;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lorg/swiftapps/swiftbackup/cloud/connect/PCloudSignInActivity;->L:I

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-ne p1, v0, :cond_6

    .line 8
    .line 9
    const/4 p1, -0x1

    .line 10
    if-ne p2, p1, :cond_6

    .line 11
    .line 12
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/PCloudSignInActivity;->N()Lsv5;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-nez p3, :cond_0

    .line 17
    .line 18
    goto/16 :goto_1

    .line 19
    .line 20
    :cond_0
    iget-object p2, p1, La55;->b:Ljava/lang/String;

    .line 21
    .line 22
    new-instance v0, Las4;

    .line 23
    .line 24
    const/4 v2, 0x7

    .line 25
    invoke-direct {v0, p3, v2}, Las4;-><init>(Ljava/lang/Object;I)V

    .line 26
    .line 27
    .line 28
    const/16 p3, 0xc

    .line 29
    .line 30
    const-string v2, "onActivityResult"

    .line 31
    .line 32
    invoke-static {p2, v2, v1, v0, p3}, Lio4;->j(Ljava/lang/String;Ljava/lang/String;ZLbt3;I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    check-cast p2, Lv80;

    .line 37
    .line 38
    if-nez p2, :cond_1

    .line 39
    .line 40
    goto/16 :goto_1

    .line 41
    .line 42
    :cond_1
    iget-object p3, p2, Lv80;->b:Lh90;

    .line 43
    .line 44
    sget-object v0, Lh90;->a:Lh90;

    .line 45
    .line 46
    if-eq p3, v0, :cond_2

    .line 47
    .line 48
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 49
    .line 50
    iget-object v3, p1, La55;->b:Ljava/lang/String;

    .line 51
    .line 52
    new-instance p3, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v0, "handleSignInResult:: authData="

    .line 55
    .line 56
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    const/4 v6, 0x4

    .line 67
    const/4 v7, 0x0

    .line 68
    const/4 v5, 0x0

    .line 69
    invoke-static/range {v2 .. v7}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    iget-object p1, p1, Lsv5;->k:Lix6;

    .line 73
    .line 74
    iget-object p2, p2, Lv80;->n:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {p1, p2}, Lix6;->k(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_2
    iget-object p0, p2, Lv80;->c:Ljava/lang/String;

    .line 81
    .line 82
    if-eqz p0, :cond_5

    .line 83
    .line 84
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 85
    .line 86
    .line 87
    move-result p2

    .line 88
    if-nez p2, :cond_3

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_3
    invoke-static {p0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 92
    .line 93
    .line 94
    move-result p2

    .line 95
    if-nez p2, :cond_5

    .line 96
    .line 97
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 98
    .line 99
    iget-object v1, p1, La55;->b:Ljava/lang/String;

    .line 100
    .line 101
    const/4 p2, 0x5

    .line 102
    invoke-static {p2, p0}, Lnq7;->G0(ILjava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p3

    .line 106
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    if-le p2, v2, :cond_4

    .line 111
    .line 112
    move p2, v2

    .line 113
    :cond_4
    sub-int/2addr v2, p2

    .line 114
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    const-string v2, "Token received: "

    .line 119
    .line 120
    const-string v3, "..."

    .line 121
    .line 122
    invoke-static {v2, p3, v3, p2}, Ldj7;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    const/4 v4, 0x4

    .line 127
    const/4 v5, 0x0

    .line 128
    const/4 v3, 0x0

    .line 129
    invoke-static/range {v0 .. v5}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    sget-object p2, Lzn4;->a:Lzn4;

    .line 133
    .line 134
    new-instance p2, Lrv5;

    .line 135
    .line 136
    const/4 p3, 0x0

    .line 137
    invoke-direct {p2, p1, p0, p3}, Lrv5;-><init>(Lsv5;Ljava/lang/String;Ljv1;)V

    .line 138
    .line 139
    .line 140
    invoke-static {p3, p2}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 141
    .line 142
    .line 143
    return-void

    .line 144
    :cond_5
    :goto_0
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 145
    .line 146
    iget-object v1, p1, La55;->b:Ljava/lang/String;

    .line 147
    .line 148
    const-string p2, "Invalid token from server "

    .line 149
    .line 150
    invoke-static {p2, p0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    const/4 v4, 0x4

    .line 155
    const/4 v5, 0x0

    .line 156
    const/4 v3, 0x0

    .line 157
    invoke-static/range {v0 .. v5}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    iget-object p0, p1, Lsv5;->j:Lix6;

    .line 161
    .line 162
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 163
    .line 164
    invoke-virtual {p0, p1}, Lix6;->k(Ljava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    return-void

    .line 168
    :cond_6
    :goto_1
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 172
    .line 173
    .line 174
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 11

    .line 1
    invoke-super {p0, p1}, Lil0;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/PCloudSignInActivity;->N()Lsv5;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iget-object v0, p1, Lsv5;->k:Lix6;

    .line 9
    .line 10
    iget-boolean v1, p1, Lsv5;->e:Z

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    goto/16 :goto_1

    .line 16
    .line 17
    :cond_0
    const/4 v1, 0x1

    .line 18
    iput-boolean v1, p1, Lsv5;->e:Z

    .line 19
    .line 20
    sget-object v1, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 21
    .line 22
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    new-instance v3, Landroid/content/Intent;

    .line 27
    .line 28
    const-string v4, "android.intent.action.VIEW"

    .line 29
    .line 30
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const/high16 v4, 0x10000000

    .line 34
    .line 35
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 36
    .line 37
    .line 38
    const-string v4, "https://www.google.com"

    .line 39
    .line 40
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    const/high16 v4, 0x10000

    .line 52
    .line 53
    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_1

    .line 65
    .line 66
    const v1, 0x7f1303c3

    .line 67
    .line 68
    .line 69
    invoke-static {v1}, Ldj7;->g(I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    sget-object v3, Lvr6;->INSTANCE:Lvr6;

    .line 74
    .line 75
    iget-object v4, p1, La55;->b:Ljava/lang/String;

    .line 76
    .line 77
    const/4 v7, 0x4

    .line 78
    const/4 v8, 0x0

    .line 79
    const/4 v6, 0x0

    .line 80
    invoke-static/range {v3 .. v8}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v5}, Lix6;->k(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_1
    invoke-virtual {p1}, Lsv5;->j()Landroid/content/Intent;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    sget-object v3, Lg00;->a:Lg00;

    .line 92
    .line 93
    invoke-static {}, Lg00;->r()Landroid/content/pm/PackageManager;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    invoke-virtual {v3, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    if-eqz v4, :cond_2

    .line 113
    .line 114
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 119
    .line 120
    sget-object v5, Lvr6;->INSTANCE:Lvr6;

    .line 121
    .line 122
    iget-object v6, p1, La55;->b:Ljava/lang/String;

    .line 123
    .line 124
    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 125
    .line 126
    new-instance v7, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    const-string v8, "Handler activities: "

    .line 129
    .line 130
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v7

    .line 140
    const/4 v9, 0x4

    .line 141
    const/4 v10, 0x0

    .line 142
    const/4 v8, 0x0

    .line 143
    invoke-static/range {v5 .. v10}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_2
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    if-eqz v1, :cond_3

    .line 152
    .line 153
    sget-object v3, Lvr6;->INSTANCE:Lvr6;

    .line 154
    .line 155
    iget-object v4, p1, La55;->b:Ljava/lang/String;

    .line 156
    .line 157
    const/4 v7, 0x4

    .line 158
    const/4 v8, 0x0

    .line 159
    const-string v5, "No handler activity found!"

    .line 160
    .line 161
    const/4 v6, 0x0

    .line 162
    invoke-static/range {v3 .. v8}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0, v5}, Lix6;->k(Ljava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    goto :goto_1

    .line 169
    :cond_3
    iget-object v0, p1, Lsv5;->i:Lix6;

    .line 170
    .line 171
    invoke-virtual {p1}, Lsv5;->j()Landroid/content/Intent;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    invoke-virtual {v0, p1}, Lix6;->k(Ljava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    :goto_1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/PCloudSignInActivity;->N()Lsv5;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    iget-object p1, p1, Lsv5;->i:Lix6;

    .line 183
    .line 184
    new-instance v0, Le7;

    .line 185
    .line 186
    const/16 v1, 0x16

    .line 187
    .line 188
    invoke-direct {v0, p0, v1}, Le7;-><init>(Ljava/lang/Object;I)V

    .line 189
    .line 190
    .line 191
    new-instance v1, Lqv5;

    .line 192
    .line 193
    invoke-direct {v1, v0, v2}, Lqv5;-><init>(Ljava/lang/Object;I)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p1, p0, v1}, Lix6;->e(Lfu4;Les5;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/PCloudSignInActivity;->N()Lsv5;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    iget-object p1, p1, Lsv5;->j:Lix6;

    .line 204
    .line 205
    new-instance v0, Lk3;

    .line 206
    .line 207
    const/16 v1, 0x12

    .line 208
    .line 209
    invoke-direct {v0, p0, v1}, Lk3;-><init>(Ljava/lang/Object;I)V

    .line 210
    .line 211
    .line 212
    new-instance v1, Lqv5;

    .line 213
    .line 214
    invoke-direct {v1, v0, v2}, Lqv5;-><init>(Ljava/lang/Object;I)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {p1, p0, v1}, Lix6;->e(Lfu4;Les5;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/PCloudSignInActivity;->N()Lsv5;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    iget-object p1, p1, Lsv5;->k:Lix6;

    .line 225
    .line 226
    new-instance v0, Lhj;

    .line 227
    .line 228
    const/16 v1, 0x15

    .line 229
    .line 230
    invoke-direct {v0, p0, v1}, Lhj;-><init>(Ljava/lang/Object;I)V

    .line 231
    .line 232
    .line 233
    new-instance v1, Lqv5;

    .line 234
    .line 235
    invoke-direct {v1, v0, v2}, Lqv5;-><init>(Ljava/lang/Object;I)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {p1, p0, v1}, Lix6;->e(Lfu4;Les5;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/PCloudSignInActivity;->N()Lsv5;

    .line 242
    .line 243
    .line 244
    move-result-object p1

    .line 245
    iget-object p1, p1, Lsv5;->l:Lix6;

    .line 246
    .line 247
    new-instance v0, Lox;

    .line 248
    .line 249
    const/16 v1, 0x14

    .line 250
    .line 251
    invoke-direct {v0, p0, v1}, Lox;-><init>(Ljava/lang/Object;I)V

    .line 252
    .line 253
    .line 254
    new-instance v1, Lqv5;

    .line 255
    .line 256
    invoke-direct {v1, v0, v2}, Lqv5;-><init>(Ljava/lang/Object;I)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {p1, p0, v1}, Lix6;->e(Lfu4;Les5;)V

    .line 260
    .line 261
    .line 262
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
    return-void
.end method
