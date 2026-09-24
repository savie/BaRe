.class public final Lin5;
.super Lqo0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public e:Z

.field public final f:Lgv7;

.field public final g:Lix6;

.field public final h:Lix6;

.field public final i:Lix6;

.field public final j:Lix6;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lqo0;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lel;

    .line 5
    .line 6
    const/16 v1, 0x10

    .line 7
    .line 8
    invoke-direct {v0, v1}, Lel;-><init>(I)V

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
    iput-object v1, p0, Lin5;->f:Lgv7;

    .line 17
    .line 18
    new-instance v0, Lix6;

    .line 19
    .line 20
    invoke-direct {v0}, Lix6;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lin5;->g:Lix6;

    .line 24
    .line 25
    new-instance v0, Lix6;

    .line 26
    .line 27
    invoke-direct {v0}, Lix6;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lin5;->h:Lix6;

    .line 31
    .line 32
    new-instance v0, Lix6;

    .line 33
    .line 34
    invoke-direct {v0}, Lix6;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lin5;->i:Lix6;

    .line 38
    .line 39
    new-instance v0, Lix6;

    .line 40
    .line 41
    invoke-direct {v0}, Lix6;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lin5;->j:Lix6;

    .line 45
    .line 46
    return-void
.end method


# virtual methods
.method public final j(Landroid/content/Intent;Z)V
    .locals 8

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 4
    .line 5
    iget-object v1, p0, La55;->b:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v4, 0x4

    .line 8
    const/4 v5, 0x0

    .line 9
    const-string v2, "handleSignInResult: Sign in result intent is null"

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-static/range {v0 .. v5}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lin5;->h:Lix6;

    .line 16
    .line 17
    invoke-virtual {p0, v2}, Lix6;->k(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    sget-object v0, Lgn5;->a:Ljava/lang/String;

    .line 22
    .line 23
    new-instance v0, Lu10;

    .line 24
    .line 25
    const/16 v1, 0xf

    .line 26
    .line 27
    invoke-direct {v0, p0, v1}, Lu10;-><init>(Ljava/lang/Object;I)V

    .line 28
    .line 29
    .line 30
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 31
    .line 32
    const/4 v6, 0x4

    .line 33
    const/4 v7, 0x0

    .line 34
    const-string v3, "NoGmsClient"

    .line 35
    .line 36
    const-string v4, "handleSignInResult"

    .line 37
    .line 38
    const/4 v5, 0x0

    .line 39
    invoke-static/range {v2 .. v7}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    invoke-static {p1}, Lg90;->J(Landroid/content/Intent;)Lg90;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-static {p1}, Lz80;->e(Landroid/content/Intent;)Lz80;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    new-instance v1, Lf80;

    .line 51
    .line 52
    invoke-direct {v1, p0, p1}, Lf80;-><init>(Lg90;Lz80;)V

    .line 53
    .line 54
    .line 55
    invoke-static {v1}, Lhz3;->b(Lf80;)V

    .line 56
    .line 57
    .line 58
    if-eqz p1, :cond_1

    .line 59
    .line 60
    invoke-static {p1}, Lyc9;->g0(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    const-string p2, "handleSignInResult AuthError: "

    .line 65
    .line 66
    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    const/4 v6, 0x4

    .line 71
    const/4 v7, 0x0

    .line 72
    const-string v3, "NoGmsClient"

    .line 73
    .line 74
    const/4 v5, 0x0

    .line 75
    invoke-static/range {v2 .. v7}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    new-instance p0, Ldn5;

    .line 79
    .line 80
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-direct {p0, p1}, Ldn5;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, p0}, Lu10;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :cond_1
    if-nez p0, :cond_2

    .line 92
    .line 93
    const/4 v6, 0x4

    .line 94
    const/4 v7, 0x0

    .line 95
    const-string v3, "NoGmsClient"

    .line 96
    .line 97
    const-string v4, "handleSignInResult AuthResponse is null"

    .line 98
    .line 99
    const/4 v5, 0x0

    .line 100
    invoke-static/range {v2 .. v7}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    new-instance p0, Ldn5;

    .line 104
    .line 105
    invoke-direct {p0, v4}, Ldn5;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, p0}, Lu10;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    return-void

    .line 112
    :cond_2
    const/4 v6, 0x4

    .line 113
    const/4 v7, 0x0

    .line 114
    const-string v3, "NoGmsClient"

    .line 115
    .line 116
    const-string v4, "handleSignInResult Handled Authorization Response"

    .line 117
    .line 118
    const/4 v5, 0x0

    .line 119
    invoke-static/range {v2 .. v7}, Lvr6;->d$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    new-instance p1, Lk90;

    .line 123
    .line 124
    sget-object v2, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 125
    .line 126
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    invoke-direct {p1, v2}, Lk90;-><init>(Landroid/content/Context;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0}, Lg90;->I()Ll58;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    new-instance v2, Lbn5;

    .line 138
    .line 139
    invoke-direct {v2, v0, v1, p2}, Lbn5;-><init>(Lu10;Lf80;Z)V

    .line 140
    .line 141
    .line 142
    sget-object p2, Lq34;->d:Lq34;

    .line 143
    .line 144
    invoke-virtual {p1, p0, p2, v2}, Lk90;->c(Ll58;Lt91;Lj90;)V

    .line 145
    .line 146
    .line 147
    return-void
.end method

.method public final k(Z)V
    .locals 10

    .line 1
    sget-object v0, Lgn5;->a:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const-string v0, "https://www.googleapis.com/auth/drive.file"

    .line 6
    .line 7
    invoke-static {v0}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    move-object v8, v0

    .line 12
    goto :goto_1

    .line 13
    :cond_0
    const-string v0, "email"

    .line 14
    .line 15
    const-string v1, "profile"

    .line 16
    .line 17
    const-string v2, "openid"

    .line 18
    .line 19
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    goto :goto_0

    .line 28
    :goto_1
    sget-object v4, Lgn5;->a:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    new-instance v1, Luj;

    .line 34
    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    const-string v0, "access_type"

    .line 38
    .line 39
    const-string v2, "offline"

    .line 40
    .line 41
    invoke-static {v0, v2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    :goto_2
    move-object v7, v0

    .line 49
    goto :goto_3

    .line 50
    :cond_1
    sget-object v0, Lpv2;->a:Lpv2;

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :goto_3
    const/16 v9, 0x90

    .line 54
    .line 55
    const-string v2, "https://accounts.google.com/o/oauth2/v2/auth"

    .line 56
    .line 57
    const-string v3, "https://oauth2.googleapis.com/token"

    .line 58
    .line 59
    const-string v5, "org.swiftapps.swiftbackup:/oauth"

    .line 60
    .line 61
    const/4 v6, 0x0

    .line 62
    invoke-direct/range {v1 .. v9}, Luj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lxj;Ljava/util/Map;Ljava/util/List;I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Luj;->a()Lc90;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    sget-object v1, Ld45;->b:Ld45;

    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    invoke-static {}, Ld45;->a()Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    const/4 v2, 0x0

    .line 79
    if-eqz v1, :cond_8

    .line 80
    .line 81
    invoke-static {}, Ld45;->a()Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    if-eqz v1, :cond_7

    .line 86
    .line 87
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->getProviderData()Ljava/util/List;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    if-eqz v4, :cond_3

    .line 100
    .line 101
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    move-object v5, v4

    .line 106
    check-cast v5, Ldh8;

    .line 107
    .line 108
    invoke-interface {v5}, Ldh8;->l()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    const-string v6, "google.com"

    .line 113
    .line 114
    invoke-static {v5, v6}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v5

    .line 118
    if-eqz v5, :cond_2

    .line 119
    .line 120
    goto :goto_4

    .line 121
    :cond_3
    move-object v4, v2

    .line 122
    :goto_4
    check-cast v4, Ldh8;

    .line 123
    .line 124
    if-eqz v4, :cond_4

    .line 125
    .line 126
    invoke-interface {v4}, Ldh8;->m()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    if-nez v3, :cond_5

    .line 131
    .line 132
    :cond_4
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->getEmail()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    :cond_5
    if-eqz v3, :cond_6

    .line 137
    .line 138
    const-string v1, "login hint must be null or not empty"

    .line 139
    .line 140
    invoke-static {v3, v1}, Ljb9;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    :cond_6
    iput-object v3, v0, Lc90;->c:Ljava/lang/String;

    .line 144
    .line 145
    goto :goto_5

    .line 146
    :cond_7
    const-string p0, "System.exit returned normally, while it was supposed to halt JVM."

    .line 147
    .line 148
    const/4 p1, 0x0

    .line 149
    invoke-static {p1, p0}, Ldj7;->f(ILjava/lang/String;)Ljava/lang/RuntimeException;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    throw p0

    .line 154
    :cond_8
    :goto_5
    invoke-virtual {v0}, Lc90;->a()Le90;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    :try_start_0
    sget-object v1, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 159
    .line 160
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    invoke-static {v1, v0}, Luj;->b(Landroid/content/Context;Le90;)Landroid/content/Intent;

    .line 165
    .line 166
    .line 167
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    goto :goto_6

    .line 169
    :catch_0
    move-exception v0

    .line 170
    const-string v1, "NoGmsClient"

    .line 171
    .line 172
    const-string v3, "getSignInIntent"

    .line 173
    .line 174
    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 175
    .line 176
    .line 177
    invoke-static {v0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v6

    .line 181
    sget-object v4, Lvr6;->INSTANCE:Lvr6;

    .line 182
    .line 183
    const/4 v8, 0x4

    .line 184
    const/4 v9, 0x0

    .line 185
    const-string v5, "NoGmsClient"

    .line 186
    .line 187
    const/4 v7, 0x0

    .line 188
    invoke-static/range {v4 .. v9}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 189
    .line 190
    .line 191
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 192
    .line 193
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    sget-object v1, Lzn4;->a:Lzn4;

    .line 198
    .line 199
    invoke-static {v0, v6}, Ldj7;->y(Landroid/content/Context;Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    :goto_6
    if-nez v2, :cond_9

    .line 203
    .line 204
    goto :goto_7

    .line 205
    :cond_9
    if-nez p1, :cond_a

    .line 206
    .line 207
    iget-object p0, p0, Lin5;->i:Lix6;

    .line 208
    .line 209
    invoke-virtual {p0, v2}, Lix6;->k(Ljava/lang/Object;)V

    .line 210
    .line 211
    .line 212
    goto :goto_7

    .line 213
    :cond_a
    iget-object p0, p0, Lin5;->j:Lix6;

    .line 214
    .line 215
    invoke-virtual {p0, v2}, Lix6;->k(Ljava/lang/Object;)V

    .line 216
    .line 217
    .line 218
    :goto_7
    return-void
.end method
