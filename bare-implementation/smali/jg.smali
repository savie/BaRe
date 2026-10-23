.class public final synthetic Ljg;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:Lmg;

.field public final synthetic b:Z

.field public final synthetic c:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lmg;ZLandroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ljg;->a:Lmg;

    .line 5
    .line 6
    iput-boolean p2, p0, Ljg;->b:Z

    .line 7
    .line 8
    iput-object p3, p0, Ljg;->c:Landroid/net/Uri;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Lorg/swiftapps/swiftbackup/apptasks/AppsWorkingDir;->INSTANCE:Lorg/swiftapps/swiftbackup/apptasks/AppsWorkingDir;

    .line 3
    .line 4
    const-string v2, "apks_import"

    .line 5
    .line 6
    const-wide/16 v3, 0x0

    .line 7
    .line 8
    invoke-virtual {v1, v2, v3, v4}, Lorg/swiftapps/swiftbackup/apptasks/AppsWorkingDir;->getWorkingDir(Ljava/lang/String;J)Lq63;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide v2

    .line 16
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v1, v2}, Lq63;->J(Ljava/lang/String;)Lq63;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v1}, Lq63;->E(Lq63;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    move-object v0, v1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const-string v2, "Unable to create APKS import working directory: "

    .line 33
    .line 34
    invoke-static {v1, v2}, Lxs1;->i(Lq63;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {v1}, Lg84;->f(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    .line 41
    :goto_0
    iget-boolean v1, p0, Ljg;->b:Z

    .line 42
    .line 43
    iget-object v2, p0, Ljg;->c:Landroid/net/Uri;

    .line 44
    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    :try_start_1
    const-string v1, "base.apk"

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Lq63;->J(Ljava/lang/String;)Lq63;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    const-string v3, "Unable to open APK file"

    .line 54
    .line 55
    invoke-static {v2, v1, v3}, Lmg;->k(Landroid/net/Uri;Lq63;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    new-instance v2, Lzh;

    .line 59
    .line 60
    invoke-static {v1}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    sget-object v3, Lov2;->a:Lov2;

    .line 65
    .line 66
    invoke-direct {v2, v0, v1, v3}, Lzh;-><init>(Lq63;Ljava/util/List;Ljava/util/List;)V

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_1
    invoke-static {v2, v0}, Lmg;->n(Landroid/net/Uri;Lq63;)Lzh;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    :goto_1
    iget-object v1, v2, Lzh;->c:Ljava/util/List;

    .line 75
    .line 76
    iget-object v2, v2, Lzh;->b:Ljava/util/List;

    .line 77
    .line 78
    invoke-static {v2, v1}, Lcg;->a(Ljava/util/List;Ljava/util/List;)Lbg;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    new-instance v4, Lzf;

    .line 83
    .line 84
    iget-object v5, v3, Lbg;->c:Ljava/lang/String;

    .line 85
    .line 86
    invoke-direct {v4, v0, v2, v1, v5}, Lzf;-><init>(Lq63;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    new-instance v1, Lpw5;

    .line 90
    .line 91
    invoke-direct {v1, v4, v3}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    .line 93
    .line 94
    goto :goto_2

    .line 95
    :catchall_0
    move-exception v1

    .line 96
    new-instance v2, Lbn6;

    .line 97
    .line 98
    invoke-direct {v2, v1}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 99
    .line 100
    .line 101
    move-object v1, v2

    .line 102
    :goto_2
    const/4 v2, 0x0

    .line 103
    iget-object p0, p0, Ljg;->a:Lmg;

    .line 104
    .line 105
    iput-boolean v2, p0, Lmg;->h:Z

    .line 106
    .line 107
    instance-of v2, v1, Lbn6;

    .line 108
    .line 109
    if-nez v2, :cond_2

    .line 110
    .line 111
    move-object v2, v1

    .line 112
    check-cast v2, Lpw5;

    .line 113
    .line 114
    iget-object v3, v2, Lpw5;->a:Ljava/lang/Object;

    .line 115
    .line 116
    check-cast v3, Lzf;

    .line 117
    .line 118
    iget-object v2, v2, Lpw5;->b:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast v2, Lbg;

    .line 121
    .line 122
    iput-object v3, p0, Lmg;->j:Lzf;

    .line 123
    .line 124
    new-instance v4, Lgg;

    .line 125
    .line 126
    invoke-direct {v4, v2, v3}, Lgg;-><init>(Lbg;Lzf;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0, v4}, Lmg;->o(Lig;)V

    .line 130
    .line 131
    .line 132
    :cond_2
    invoke-static {v1}, Len6;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    if-eqz v1, :cond_4

    .line 137
    .line 138
    if-eqz v0, :cond_3

    .line 139
    .line 140
    invoke-virtual {v0}, Lq63;->h()Z

    .line 141
    .line 142
    .line 143
    :cond_3
    new-instance v0, Leg;

    .line 144
    .line 145
    invoke-virtual {p0}, Lmg;->l()Lbg;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    new-instance v3, Lcw5;

    .line 150
    .line 151
    sget-object v4, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 152
    .line 153
    const v4, 0x7f130047

    .line 154
    .line 155
    .line 156
    invoke-static {v4}, Ldj7;->g(I)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 161
    .line 162
    .line 163
    move-result-object v5

    .line 164
    const v6, 0x7f1302ce

    .line 165
    .line 166
    .line 167
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v5

    .line 171
    invoke-static {v1}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    const-string v6, "\n\n"

    .line 176
    .line 177
    invoke-static {v5, v6, v1}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    invoke-direct {v3, v4, v1}, Lcw5;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    invoke-direct {v0, v2, v3}, Leg;-><init>(Lbg;Lcw5;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p0, v0}, Lmg;->o(Lig;)V

    .line 188
    .line 189
    .line 190
    :cond_4
    sget-object p0, Lbe8;->a:Lbe8;

    .line 191
    .line 192
    return-object p0
.end method
