.class public final Lorg/swiftapps/swiftbackup/common/Const;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Lorg/swiftapps/swiftbackup/common/Const;

.field public static b:Z = false

.field private static final c:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/swiftapps/swiftbackup/common/Const;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/swiftapps/swiftbackup/common/Const;->a:Lorg/swiftapps/swiftbackup/common/Const;

    .line 7
    .line 8
    return-void
.end method

.method public static A(Landroid/content/Context;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    .line 5
    .line 6
    const-string v1, "android.settings.IGNORE_BATTERY_OPTIMIZATION_SETTINGS"

    .line 7
    .line 8
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :catch_0
    move-exception v0

    .line 16
    sget-object v1, Lvr6;->INSTANCE:Lvr6;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v2, "openBatteryOptSettingsScreen: "

    .line 23
    .line 24
    invoke-static {v2, v0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    const/4 v5, 0x4

    .line 29
    const/4 v6, 0x0

    .line 30
    const-string v2, "Const"

    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    invoke-static/range {v1 .. v6}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    const v0, 0x7f1303d6

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    sget-object v1, Lzn4;->a:Lzn4;

    .line 47
    .line 48
    invoke-static {p0, v0}, Ldj7;->y(Landroid/content/Context;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public static B(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    :try_start_0
    invoke-static {p0}, Lzm5;->e(Landroid/content/Context;)Lix0;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v2, v0, Lix0;->b:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v2, Landroid/content/Intent;

    .line 18
    .line 19
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    iget-object v0, v0, Lix0;->c:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v0, Landroid/os/Bundle;

    .line 25
    .line 26
    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    const/4 p0, 0x1

    .line 30
    return p0

    .line 31
    :catch_0
    move-exception v0

    .line 32
    sget-object v1, Lvr6;->INSTANCE:Lvr6;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    const/4 v5, 0x4

    .line 43
    const/4 v6, 0x0

    .line 44
    const-string v2, "Const"

    .line 45
    .line 46
    const/4 v4, 0x0

    .line 47
    invoke-static/range {v1 .. v6}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    invoke-static {p0, p1}, Lai8;->k(Landroid/content/Context;Ljava/lang/String;)Z

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    return p0
.end method

.method public static C(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 2
    .line 3
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :catch_0
    move-exception p0

    .line 12
    const-string p1, "Const"

    .line 13
    .line 14
    const-string v0, "registerReceiver: "

    .line 15
    .line 16
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public static D(Lzn7;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-static {v0, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_9

    .line 17
    .line 18
    sget-object v0, Lry5;->u:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {p0}, Lqy5;->d(Lzn7;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sget-object v1, Lvr6;->INSTANCE:Lvr6;

    .line 25
    .line 26
    const-string v2, "File_R/W: Checking r/w access at "

    .line 27
    .line 28
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    const/4 v5, 0x4

    .line 33
    const/4 v6, 0x0

    .line 34
    const-string v2, "Const"

    .line 35
    .line 36
    const/4 v4, 0x0

    .line 37
    invoke-static/range {v1 .. v6}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    new-instance v2, Lq63;

    .line 41
    .line 42
    const/4 v3, 0x2

    .line 43
    invoke-direct {v2, v0, v3}, Lq63;-><init>(Ljava/lang/String;I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Lq63;->j()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_1

    .line 51
    .line 52
    invoke-static {v2}, Lq63;->E(Lq63;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_0

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    const-string p0, "Unable to create base folder at "

    .line 60
    .line 61
    invoke-static {v2, p0}, Lxs1;->i(Lq63;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-static {p0}, Lg84;->f(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_1
    :goto_0
    new-instance v0, Lq63;

    .line 70
    .line 71
    const-string v4, "test_rw"

    .line 72
    .line 73
    invoke-direct {v0, v3, v2, v4}, Lq63;-><init>(ILq63;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Lq63;->j()Z

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    if-eqz v2, :cond_3

    .line 81
    .line 82
    invoke-virtual {v0}, Lq63;->f()Z

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    if-eqz v2, :cond_2

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_2
    const-string p0, "Unable to delete already existing file "

    .line 90
    .line 91
    invoke-static {v0, p0}, Lxs1;->i(Lq63;Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    invoke-static {p0}, Lg84;->f(Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :cond_3
    :goto_1
    invoke-virtual {v0}, Lq63;->n()Lorg/swiftapps/filesystem/File$FileType;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-virtual {v2}, Lorg/swiftapps/filesystem/File$FileType;->getFile()Ljava/io/File;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    if-eqz v2, :cond_8

    .line 112
    .line 113
    const-string v2, "swiftbackup_rw_check"

    .line 114
    .line 115
    invoke-static {v0, v2}, Lq63;->K(Lq63;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-static {v0}, Lq63;->H(Lq63;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    if-eqz v2, :cond_7

    .line 127
    .line 128
    invoke-virtual {v0}, Lq63;->f()Z

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    if-eqz v2, :cond_6

    .line 133
    .line 134
    sget-boolean v0, Lq63;->e:Z

    .line 135
    .line 136
    if-eqz v0, :cond_5

    .line 137
    .line 138
    iget-boolean v0, p0, Lzn7;->b:Z

    .line 139
    .line 140
    if-eqz v0, :cond_5

    .line 141
    .line 142
    invoke-virtual {p0}, Lzn7;->m()Z

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-eqz v0, :cond_5

    .line 147
    .line 148
    invoke-virtual {p0}, Lzn7;->g()Z

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    if-eqz v0, :cond_4

    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_4
    const-string v0, "No SAF access on removable storage ("

    .line 156
    .line 157
    const-string v1, ")"

    .line 158
    .line 159
    invoke-static {p0, v1, v0}, Lf6;->h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    return-void

    .line 163
    :cond_5
    :goto_2
    const/4 v5, 0x4

    .line 164
    const/4 v6, 0x0

    .line 165
    const-string v2, "Const"

    .line 166
    .line 167
    const-string v3, "File_R/W File read/write checks passed"

    .line 168
    .line 169
    const/4 v4, 0x0

    .line 170
    invoke-static/range {v1 .. v6}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    return-void

    .line 174
    :cond_6
    const-string p0, "Unable to delete file "

    .line 175
    .line 176
    invoke-static {v0, p0}, Lxs1;->i(Lq63;Ljava/lang/String;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p0

    .line 180
    invoke-static {p0}, Lg84;->f(Ljava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    return-void

    .line 184
    :cond_7
    const-string p0, "Unable to read file "

    .line 185
    .line 186
    invoke-static {v0, p0}, Lxs1;->i(Lq63;Ljava/lang/String;)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p0

    .line 190
    invoke-static {p0}, Lg84;->f(Ljava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    return-void

    .line 194
    :cond_8
    const-string p0, "Unable to create file "

    .line 195
    .line 196
    invoke-static {v0, p0}, Lxs1;->i(Lq63;Ljava/lang/String;)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object p0

    .line 200
    invoke-static {p0}, Lg84;->f(Ljava/lang/Object;)V

    .line 201
    .line 202
    .line 203
    return-void

    .line 204
    :cond_9
    invoke-static {}, Ld6;->o()V

    .line 205
    .line 206
    .line 207
    return-void
.end method

.method public static E(Ljava/lang/String;)V
    .locals 8

    .line 1
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 2
    .line 3
    const-string v1, "restartApp called with reason = "

    .line 4
    .line 5
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const/4 v4, 0x4

    .line 10
    const/4 v5, 0x0

    .line 11
    const-string v1, "Const"

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-static/range {v0 .. v5}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    :try_start_0
    invoke-static {}, Lb67;->c()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x0

    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 25
    .line 26
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-class v2, Landroid/app/ActivityManager;

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Landroid/app/ActivityManager;

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    sget-object v2, Lf51;->a:Ljava/nio/charset/Charset;

    .line 41
    .line 42
    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    array-length v2, p0

    .line 50
    const/16 v3, 0x80

    .line 51
    .line 52
    if-ge v3, v2, :cond_0

    .line 53
    .line 54
    new-instance v2, Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 57
    .line 58
    .line 59
    array-length v4, p0

    .line 60
    move v5, v1

    .line 61
    move v6, v5

    .line 62
    :goto_0
    if-ge v5, v4, :cond_1

    .line 63
    .line 64
    aget-byte v7, p0, v5

    .line 65
    .line 66
    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 67
    .line 68
    .line 69
    move-result-object v7

    .line 70
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    add-int/lit8 v6, v6, 0x1

    .line 74
    .line 75
    if-eq v6, v3, :cond_1

    .line 76
    .line 77
    add-int/lit8 v5, v5, 0x1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_0
    invoke-static {p0}, Lx50;->x0([B)Ljava/util/List;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    :cond_1
    invoke-static {v2}, Lel1;->s1(Ljava/util/List;)[B

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    invoke-virtual {v0, p0}, Landroid/app/ActivityManager;->setProcessStateSummary([B)V

    .line 89
    .line 90
    .line 91
    :cond_2
    sget-object p0, Lg00;->a:Lg00;

    .line 92
    .line 93
    invoke-static {}, Lg00;->r()Landroid/content/pm/PackageManager;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 98
    .line 99
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    invoke-static {p0}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {v0, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 127
    .line 128
    .line 129
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 130
    .line 131
    .line 132
    new-instance p0, Ljava/lang/RuntimeException;

    .line 133
    .line 134
    const-string v0, "System.exit returned normally, while it was supposed to halt JVM."

    .line 135
    .line 136
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :catch_0
    move-exception v0

    .line 141
    move-object p0, v0

    .line 142
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 143
    .line 144
    invoke-static {p0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    const/4 v4, 0x4

    .line 149
    const/4 v5, 0x0

    .line 150
    const-string v1, "Const"

    .line 151
    .line 152
    const/4 v3, 0x0

    .line 153
    invoke-static/range {v0 .. v5}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    return-void
.end method

.method public static F(Lil0;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const v0, 0x7f130541

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    const-string v1, "Storage changed"

    .line 15
    .line 16
    invoke-static {p0, v0, v1}, Lorg/swiftapps/swiftbackup/common/Const;->G(Lil0;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public static G(Lil0;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lil0;->G()Lqo0;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0, p1}, Lqo0;->i(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sget-object p1, Lzn4;->a:Lzn4;

    .line 18
    .line 19
    new-instance p1, Lrm;

    .line 20
    .line 21
    const/4 v0, 0x4

    .line 22
    invoke-direct {p1, v0, p0, p2}, Lrm;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    const-wide/16 v0, 0x7d0

    .line 26
    .line 27
    invoke-static {v0, v1, p1}, Lzn4;->f(JLbt3;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public static H(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    sget-object p1, Lvs7;->e:Lvs7;

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    sget-object p1, Lvs7;->b:Lvs7;

    .line 10
    .line 11
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p1, v0}, Lvs7;->a(Landroid/content/Context;)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-virtual {p0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setProgressBackgroundColorSchemeColor(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Lsz8;->x(Landroid/content/Context;)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    filled-new-array {p1}, [I

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeColors([I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    const/high16 v0, 0x43800000    # 256.0f

    .line 49
    .line 50
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 51
    .line 52
    mul-float/2addr v0, p1

    .line 53
    float-to-int p1, v0

    .line 54
    invoke-virtual {p0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setDistanceToTriggerSync(I)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public static I(Lzm;Ljava/lang/String;Ljava/lang/String;Lbt3;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    const v0, 0x7f13054e

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v0, "\n\n"

    .line 35
    .line 36
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    :cond_0
    new-instance p2, Lhv1;

    .line 47
    .line 48
    const v1, 0x7f140160

    .line 49
    .line 50
    .line 51
    invoke-direct {p2, p0, v1}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 52
    .line 53
    .line 54
    new-instance v2, Ls35;

    .line 55
    .line 56
    const/4 v3, 0x0

    .line 57
    invoke-direct {v2, p0, v1, p2, v3}, Ls35;-><init>(Lio1;ILhv1;Ljava/lang/Float;)V

    .line 58
    .line 59
    .line 60
    iget-object p0, v2, Lva;->b:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast p0, Lra;

    .line 63
    .line 64
    iput-object p1, p0, Lra;->d:Ljava/lang/CharSequence;

    .line 65
    .line 66
    iput-object v0, p0, Lra;->f:Ljava/lang/CharSequence;

    .line 67
    .line 68
    new-instance p0, Lsy;

    .line 69
    .line 70
    const/4 p1, 0x2

    .line 71
    invoke-direct {p0, p3, p1}, Lsy;-><init>(Ljava/lang/Object;I)V

    .line 72
    .line 73
    .line 74
    const p1, 0x7f1305d0

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2, p1, p0}, Lv75;->s(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 78
    .line 79
    .line 80
    new-instance p0, Lys;

    .line 81
    .line 82
    const/4 p1, 0x1

    .line 83
    invoke-direct {p0, p1}, Lys;-><init>(I)V

    .line 84
    .line 85
    .line 86
    const p1, 0x7f1303ba

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2, p1, p0}, Lv75;->q(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2}, Ls35;->m()Lwa;

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method public static J(Lio1;ILbt3;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-static {p0, p1, p2, v0}, Lorg/swiftapps/swiftbackup/common/Const;->K(Lio1;ILbt3;Lbk;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static K(Lio1;ILbt3;Lbk;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lhv1;

    .line 5
    .line 6
    const v1, 0x7f140160

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p0, v1}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 10
    .line 11
    .line 12
    new-instance v2, Ls35;

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-direct {v2, p0, v1, v0, v3}, Ls35;-><init>(Lio1;ILhv1;Ljava/lang/Float;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, p1}, Lv75;->v(I)V

    .line 19
    .line 20
    .line 21
    const p0, 0x7f13054e

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, p0}, Lv75;->n(I)V

    .line 25
    .line 26
    .line 27
    new-instance p0, Liq1;

    .line 28
    .line 29
    const/4 p1, 0x1

    .line 30
    invoke-direct {p0, p2, p1}, Liq1;-><init>(Ljava/lang/Object;I)V

    .line 31
    .line 32
    .line 33
    const p2, 0x7f1305d0

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, p2, p0}, Lv75;->s(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 37
    .line 38
    .line 39
    new-instance p0, Luq1;

    .line 40
    .line 41
    invoke-direct {p0, p3, p1}, Luq1;-><init>(Ljava/lang/Object;I)V

    .line 42
    .line 43
    .line 44
    const p1, 0x7f1303ba

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, p1, p0}, Lv75;->q(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Ls35;->m()Lwa;

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public static L()V
    .locals 2

    .line 1
    sget-object v0, Lzn4;->a:Lzn4;

    .line 2
    .line 3
    new-instance v0, Lqm;

    .line 4
    .line 5
    const/4 v1, 0x6

    .line 6
    invoke-direct {v0, v1}, Lqm;-><init>(I)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lzn4;->e(Lbt3;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static M(Lil0;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    :try_start_0
    sget-object v1, Ld45;->b:Ld45;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {}, Ld45;->a()Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->isAnonymous()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 21
    .line 22
    .line 23
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    goto :goto_0

    .line 25
    :catch_0
    :cond_0
    move-object v1, v0

    .line 26
    :goto_0
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 27
    .line 28
    invoke-static {v1, v2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    new-instance v1, La14;

    .line 35
    .line 36
    new-instance v2, Lrc1;

    .line 37
    .line 38
    const/4 v3, 0x1

    .line 39
    invoke-direct {v2, v3}, Lrc1;-><init>(I)V

    .line 40
    .line 41
    .line 42
    const/4 v4, 0x0

    .line 43
    invoke-direct {v1, p0, v4, v3, v2}, La14;-><init>(Lk28;ZZLqt3;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, p0, v0}, Lol1;->G(Lzm;Ljava/lang/Integer;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    return-void
.end method

.method public static N(Lil0;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const v0, 0x7f13049f

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    new-instance v1, Lhv1;

    .line 15
    .line 16
    const v2, 0x7f140160

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, p0, v2}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 20
    .line 21
    .line 22
    new-instance v3, Ls35;

    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    invoke-direct {v3, p0, v2, v1, v4}, Ls35;-><init>(Lio1;ILhv1;Ljava/lang/Float;)V

    .line 26
    .line 27
    .line 28
    iget-object v1, v3, Lva;->b:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v1, Lra;

    .line 31
    .line 32
    iput-object v0, v1, Lra;->d:Ljava/lang/CharSequence;

    .line 33
    .line 34
    const v0, 0x7f130239

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iput-object v0, v1, Lra;->f:Ljava/lang/CharSequence;

    .line 42
    .line 43
    const v0, 0x7f1303e6

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v3, v0, v4}, Lv75;->t(Ljava/lang/String;Lkb1;)V

    .line 51
    .line 52
    .line 53
    new-instance v0, Lsy;

    .line 54
    .line 55
    const/4 v2, 0x3

    .line 56
    invoke-direct {v0, p0, v2}, Lsy;-><init>(Ljava/lang/Object;I)V

    .line 57
    .line 58
    .line 59
    const-string p0, "Shizuku"

    .line 60
    .line 61
    iput-object p0, v1, Lra;->k:Ljava/lang/CharSequence;

    .line 62
    .line 63
    iput-object v0, v1, Lra;->l:Landroid/content/DialogInterface$OnClickListener;

    .line 64
    .line 65
    invoke-virtual {v3}, Ls35;->m()Lwa;

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public static O()V
    .locals 3

    .line 1
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 2
    .line 3
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const v1, 0x7f13049f

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    sget-object v2, Lzn4;->a:Lzn4;

    .line 18
    .line 19
    invoke-static {v0, v1}, Ldj7;->y(Landroid/content/Context;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public static P()V
    .locals 3

    .line 1
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 2
    .line 3
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const v1, 0x7f130581

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    sget-object v2, Lzn4;->a:Lzn4;

    .line 18
    .line 19
    invoke-static {v0, v1}, Ldj7;->y(Landroid/content/Context;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public static R()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x1388

    .line 2
    .line 3
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    :catch_0
    return-void
.end method

.method public static S(Landroid/content/BroadcastReceiver;)V
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    :try_start_0
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 4
    .line 5
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :catch_0
    move-exception p0

    .line 14
    const-string v0, "Const"

    .line 15
    .line 16
    const-string v1, "unregisterReceiver: "

    .line 17
    .line 18
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public static T()V
    .locals 3

    .line 1
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 2
    .line 3
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-class v1, Landroid/os/Vibrator;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/os/Vibrator;

    .line 14
    .line 15
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 16
    .line 17
    const/16 v2, 0x1d

    .line 18
    .line 19
    if-lt v1, v2, :cond_0

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    const/4 v1, 0x5

    .line 24
    invoke-static {v1}, Landroid/os/VibrationEffect;->createPredefined(I)Landroid/os/VibrationEffect;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    if-eqz v0, :cond_1

    .line 33
    .line 34
    const-wide/16 v1, 0x64

    .line 35
    .line 36
    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 37
    .line 38
    .line 39
    :cond_1
    return-void
.end method

.method public static U(Ljava/lang/String;)V
    .locals 10

    .line 1
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 2
    .line 3
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v2, "error.txt"

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-static {v0, v2}, Lnc3;->U(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    :cond_0
    new-instance v0, Ljava/io/File;

    .line 21
    .line 22
    sget-object v3, Lry5;->u:Ljava/lang/String;

    .line 23
    .line 24
    new-instance v3, Lq63;

    .line 25
    .line 26
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    const-string v5, "SwiftBackup"

    .line 31
    .line 32
    const/4 v6, 0x2

    .line 33
    invoke-direct {v3, v4, v5, v6}, Lq63;-><init>(Ljava/io/File;Ljava/lang/String;I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3}, Lq63;->v()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-direct {v0, v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    filled-new-array {v1, v0}, [Ljava/io/File;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {v0}, Lx50;->p0([Ljava/lang/Object;)Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    :catch_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_1

    .line 62
    .line 63
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    check-cast v0, Ljava/io/File;

    .line 68
    .line 69
    :try_start_0
    invoke-static {v0}, Lf13;->b(Ljava/io/File;)Z

    .line 70
    .line 71
    .line 72
    sget-object v2, Lf51;->a:Ljava/nio/charset/Charset;

    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    new-instance v3, Ljava/io/FileOutputStream;

    .line 81
    .line 82
    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .line 84
    .line 85
    :try_start_1
    invoke-static {v3, p0, v2}, Lnc3;->X(Ljava/io/FileOutputStream;Ljava/lang/String;Ljava/nio/charset/Charset;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    .line 87
    .line 88
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 89
    .line 90
    .line 91
    sget-object v4, Lvr6;->INSTANCE:Lvr6;

    .line 92
    .line 93
    const-string v5, "Const"

    .line 94
    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    const-string v3, "Wrote error stacktrace at "

    .line 98
    .line 99
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v6

    .line 109
    const/4 v8, 0x4

    .line 110
    const/4 v9, 0x0

    .line 111
    const/4 v7, 0x0

    .line 112
    invoke-static/range {v4 .. v9}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :catchall_0
    move-exception v0

    .line 117
    move-object v2, v0

    .line 118
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 119
    :catchall_1
    move-exception v0

    .line 120
    :try_start_4
    invoke-static {v3, v2}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 121
    .line 122
    .line 123
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 124
    :cond_1
    return-void
.end method

.method public static a()Z
    .locals 2

    .line 1
    invoke-static {}, Lorg/swiftapps/swiftbackup/common/Const;->z()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-wide/16 v0, 0x2710

    .line 8
    .line 9
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    :catch_0
    invoke-static {}, Lorg/swiftapps/swiftbackup/common/Const;->z()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    return v0

    .line 20
    :cond_0
    const/4 v0, 0x1

    .line 21
    return v0
.end method

.method public static synthetic b(Lzn7;I)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    and-int/2addr p1, v0

    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    sget-object p0, Lzn7;->q:Lyn7;

    .line 6
    .line 7
    invoke-virtual {p0}, Lyn7;->d()Lzn7;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    sget-object v1, Lorg/swiftapps/swiftbackup/common/Const;->a:Lorg/swiftapps/swiftbackup/common/Const;

    .line 13
    .line 14
    invoke-virtual {v1, p0, v0, p1}, Lorg/swiftapps/swiftbackup/common/Const;->checkFileReadWriteAccess(Lzn7;ZZ)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    return p0
.end method

.method public static final c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {p0}, Lnq7;->m0(Ljava/lang/String;)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x1

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    :cond_0
    move v2, v1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Ljava/lang/String;

    .line 38
    .line 39
    const/4 v2, 0x0

    .line 40
    invoke-static {v0, p1, v2}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-eqz v3, :cond_2

    .line 45
    .line 46
    invoke-static {v0, p2, v2}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    :goto_0
    xor-int/lit8 p0, v2, 0x1

    .line 53
    .line 54
    return p0
.end method

.method public static final cn(Landroid/content/pm/PackageInfo;[Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    if-eqz p0, :cond_4

    .line 6
    .line 7
    :try_start_0
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 8
    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    new-instance v1, Ljava/io/File;

    .line 13
    .line 14
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    if-nez p0, :cond_1

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    array-length v1, p0

    .line 27
    move v2, v0

    .line 28
    :goto_0
    if-ge v2, v1, :cond_3

    .line 29
    .line 30
    aget-object v3, p0, v2

    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-static {p1, v3}, Lx50;->e0([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-nez v3, :cond_2

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_3
    const/4 p0, 0x1

    .line 47
    goto :goto_2

    .line 48
    :cond_4
    :goto_1
    move p0, v0

    .line 49
    :goto_2
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 50
    .line 51
    .line 52
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    goto :goto_3

    .line 54
    :catch_0
    const/4 p0, 0x0

    .line 55
    :goto_3
    if-eqz p0, :cond_5

    .line 56
    .line 57
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    :cond_5
    return v0
.end method

.method public static d(Lzm;)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lai8;->i(Landroid/content/Context;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    new-instance v1, Lhv1;

    .line 11
    .line 12
    const v2, 0x7f140160

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, p0, v2}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 16
    .line 17
    .line 18
    new-instance v3, Ls35;

    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    invoke-direct {v3, p0, v2, v1, v4}, Ls35;-><init>(Lio1;ILhv1;Ljava/lang/Float;)V

    .line 22
    .line 23
    .line 24
    const p0, 0x7f1303c7

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3, p0}, Lv75;->v(I)V

    .line 28
    .line 29
    .line 30
    const p0, 0x7f1303c8

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, p0}, Lv75;->n(I)V

    .line 34
    .line 35
    .line 36
    const p0, 0x7f1303e6

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3, p0, v4}, Lv75;->s(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3}, Ls35;->m()Lwa;

    .line 43
    .line 44
    .line 45
    :cond_0
    return v0
.end method

.method public static final e(Ljava/lang/String;)V
    .locals 6

    .line 47
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, ""

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    return-void
.end method

.method public static f(Ljava/lang/String;Ljava/lang/String;Lmt3;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    if-eqz p0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    :cond_0
    sget-object v1, Lvr6;->INSTANCE:Lvr6;

    .line 13
    .line 14
    const-string v0, "Invalid text: "

    .line 15
    .line 16
    invoke-static {v0, p0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    const/4 v5, 0x4

    .line 21
    const/4 v6, 0x0

    .line 22
    const-string v2, "Const"

    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    invoke-static/range {v1 .. v6}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 29
    .line 30
    invoke-interface {p2, v0}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    :cond_1
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 34
    .line 35
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const-string v1, "clipboard"

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    check-cast v0, Landroid/content/ClipboardManager;

    .line 49
    .line 50
    invoke-static {p1, p0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-virtual {v0, p0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 55
    .line 56
    .line 57
    invoke-static {}, Lorg/swiftapps/swiftbackup/common/Const;->T()V

    .line 58
    .line 59
    .line 60
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 61
    .line 62
    invoke-interface {p2, p0}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public static g(Ljava/lang/String;Z)V
    .locals 6

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 4
    .line 5
    const-string p1, "exit called with reason="

    .line 6
    .line 7
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const/4 v4, 0x4

    .line 12
    const/4 v5, 0x0

    .line 13
    const-string v1, "Const"

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-static/range {v0 .. v5}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-static {}, Lb67;->c()Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    const/4 v1, 0x0

    .line 24
    if-eqz p1, :cond_2

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-lez p1, :cond_2

    .line 31
    .line 32
    sget-object p1, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 33
    .line 34
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const-class v0, Landroid/app/ActivityManager;

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Landroid/app/ActivityManager;

    .line 45
    .line 46
    if-eqz p1, :cond_2

    .line 47
    .line 48
    :try_start_0
    sget-object v0, Lf51;->a:Ljava/nio/charset/Charset;

    .line 49
    .line 50
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v0}, Landroid/app/ActivityManager;->setProcessStateSummary([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    move-object p1, v0

    .line 63
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    if-eqz p1, :cond_2

    .line 68
    .line 69
    const-string v0, "too large"

    .line 70
    .line 71
    invoke-static {p1, v0, v1}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    const/4 v0, 0x1

    .line 76
    if-ne p1, v0, :cond_2

    .line 77
    .line 78
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    add-int/lit8 p1, p1, -0xa

    .line 83
    .line 84
    if-gez p1, :cond_1

    .line 85
    .line 86
    move p1, v1

    .line 87
    :cond_1
    invoke-static {p1, p0}, Lnq7;->G0(ILjava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-static {p0, v1}, Lorg/swiftapps/swiftbackup/common/Const;->g(Ljava/lang/String;Z)V

    .line 92
    .line 93
    .line 94
    const/4 p0, 0x0

    .line 95
    throw p0

    .line 96
    :cond_2
    :goto_0
    const-string p0, "System.exit returned normally, while it was supposed to halt JVM."

    .line 97
    .line 98
    invoke-static {v1, p0}, Ldj7;->f(ILjava/lang/String;)Ljava/lang/RuntimeException;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    throw p0
.end method

.method public static h(J)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/Date;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    return-object p0
.end method

.method public static i(J)Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Lu33;->c:Lt33;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const/4 v3, 0x3

    .line 15
    invoke-virtual {v0, v3, v2, v1}, Lt33;->a(ILjava/util/Locale;Ljava/util/TimeZone;)Ljava/text/Format;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lu33;

    .line 20
    .line 21
    iget-object v0, v0, Lu33;->a:Lg53;

    .line 22
    .line 23
    iget-object v1, v0, Lg53;->b:Ljava/util/TimeZone;

    .line 24
    .line 25
    iget-object v2, v0, Lg53;->c:Ljava/util/Locale;

    .line 26
    .line 27
    invoke-static {v1, v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 32
    .line 33
    .line 34
    new-instance p0, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    iget p1, v0, Lg53;->e:I

    .line 37
    .line 38
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 39
    .line 40
    .line 41
    iget-object p1, v0, Lg53;->d:[Ls43;

    .line 42
    .line 43
    array-length v0, p1

    .line 44
    const/4 v2, 0x0

    .line 45
    :goto_0
    if-ge v2, v0, :cond_0

    .line 46
    .line 47
    aget-object v3, p1, v2

    .line 48
    .line 49
    invoke-interface {v3, p0, v1}, Ls43;->a(Ljava/lang/StringBuilder;Ljava/util/Calendar;)V

    .line 50
    .line 51
    .line 52
    add-int/lit8 v2, v2, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    return-object p0
.end method

.method public static j(I)Landroid/view/animation/AlphaAnimation;
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    and-int/2addr p0, v0

    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const p0, 0x3dcccccd    # 0.1f

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const p0, 0x3f19999a    # 0.6f

    .line 10
    .line 11
    .line 12
    :goto_0
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    .line 13
    .line 14
    const/high16 v2, 0x3f800000    # 1.0f

    .line 15
    .line 16
    invoke-direct {v1, p0, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 17
    .line 18
    .line 19
    new-instance p0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 20
    .line 21
    invoke-direct {p0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 25
    .line 26
    .line 27
    const-wide/16 v2, 0x3e8

    .line 28
    .line 29
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 33
    .line 34
    .line 35
    return-object v1
.end method

.method public static k(Landroid/content/Context;)I
    .locals 1

    .line 1
    instance-of v0, p0, Lk28;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p0

    .line 6
    check-cast v0, Lk28;

    .line 7
    .line 8
    invoke-virtual {v0}, Lk28;->v()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-static {p0}, Lio4;->e(Landroid/content/Context;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    :goto_0
    if-eqz v0, :cond_1

    .line 18
    .line 19
    sget-object v0, Lh28;->Companion:Lf28;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-static {}, Lf28;->e()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    const v0, 0x7f04062b

    .line 31
    .line 32
    .line 33
    invoke-static {p0, v0}, Lsz8;->y(Landroid/content/Context;I)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    return p0

    .line 42
    :cond_1
    sget-object v0, Lvs7;->d:Lvs7;

    .line 43
    .line 44
    invoke-virtual {v0, p0}, Lvs7;->a(Landroid/content/Context;)I

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    return p0
.end method

.method public static l()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->f:Lgv7;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const-string v0, " "

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string v0, "  "

    .line 19
    .line 20
    :goto_0
    const-string v1, "Running"

    .line 21
    .line 22
    const-string v2, "org.swiftapps.swiftbackup v5.1.0 (620)"

    .line 23
    .line 24
    invoke-static {v1, v0, v2}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    return-object v0
.end method

.method public static m(JJ)J
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    sub-long/2addr v0, p0

    .line 6
    cmp-long p0, v0, p2

    .line 7
    .line 8
    if-ltz p0, :cond_0

    .line 9
    .line 10
    const-wide/16 p0, 0x0

    .line 11
    .line 12
    return-wide p0

    .line 13
    :cond_0
    sub-long/2addr p2, v0

    .line 14
    return-wide p2
.end method

.method public static n()Ljava/lang/String;
    .locals 7

    .line 1
    invoke-static {}, Lorg/swiftapps/swiftbackup/common/Const;->o()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Ljava/util/Map$Entry;

    .line 33
    .line 34
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    new-instance v4, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v3, ": "

    .line 51
    .line 52
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    const/4 v5, 0x0

    .line 67
    const/16 v6, 0x3e

    .line 68
    .line 69
    const-string v2, "\n"

    .line 70
    .line 71
    const/4 v3, 0x0

    .line 72
    const/4 v4, 0x0

    .line 73
    invoke-static/range {v1 .. v6}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    return-object v0
.end method

.method public static o()Ljava/util/Map;
    .locals 15

    .line 1
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Lpw5;

    .line 4
    .line 5
    const-string v2, "Build"

    .line 6
    .line 7
    invoke-direct {v1, v2, v0}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 11
    .line 12
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 13
    .line 14
    const-string v3, "/"

    .line 15
    .line 16
    invoke-static {v0, v3, v2}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    new-instance v2, Lpw5;

    .line 21
    .line 22
    const-string v3, "Model"

    .line 23
    .line 24
    invoke-direct {v2, v3, v0}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {}, Lb67;->c()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const/4 v4, 0x0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE_OR_CODENAME:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    goto :goto_3

    .line 42
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .line 46
    .line 47
    const-class v5, Landroid/os/Build$VERSION_CODES;

    .line 48
    .line 49
    :goto_0
    if-eqz v5, :cond_1

    .line 50
    .line 51
    invoke-virtual {v5}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    invoke-static {v0, v6}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    invoke-virtual {v5}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    goto :goto_0

    .line 63
    :cond_1
    sget-object v5, Lod2;->a:[Ljava/lang/reflect/Field;

    .line 64
    .line 65
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    move-object v5, v0

    .line 70
    check-cast v5, [Ljava/lang/reflect/Field;

    .line 71
    .line 72
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    array-length v6, v5

    .line 76
    move v7, v4

    .line 77
    :goto_1
    if-ge v7, v6, :cond_3

    .line 78
    .line 79
    aget-object v0, v5, v7

    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v8

    .line 85
    :try_start_0
    new-instance v9, Ljava/lang/Object;

    .line 86
    .line 87
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v9}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    .line 91
    .line 92
    .line 93
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    goto :goto_2

    .line 95
    :catch_0
    move-exception v0

    .line 96
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 97
    .line 98
    .line 99
    const/4 v0, -0x1

    .line 100
    :goto_2
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 101
    .line 102
    if-ne v0, v9, :cond_2

    .line 103
    .line 104
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    move-object v0, v8

    .line 108
    goto :goto_3

    .line 109
    :cond_2
    add-int/lit8 v7, v7, 0x1

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_3
    const-string v0, "unknown"

    .line 113
    .line 114
    :goto_3
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 115
    .line 116
    const-string v6, "SDK "

    .line 117
    .line 118
    invoke-static {v5, v6}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    sget v6, Landroid/os/Build$VERSION;->PREVIEW_SDK_INT:I

    .line 123
    .line 124
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 125
    .line 126
    .line 127
    move-result-object v7

    .line 128
    const/4 v8, 0x0

    .line 129
    if-lez v6, :cond_4

    .line 130
    .line 131
    goto :goto_4

    .line 132
    :cond_4
    move-object v7, v8

    .line 133
    :goto_4
    if-eqz v7, :cond_5

    .line 134
    .line 135
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    .line 136
    .line 137
    .line 138
    move-result v6

    .line 139
    const-string v7, "Preview SDK "

    .line 140
    .line 141
    invoke-static {v6, v7}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v6

    .line 145
    goto :goto_5

    .line 146
    :cond_5
    move-object v6, v8

    .line 147
    :goto_5
    sget-object v7, Llz3;->d:Llz3;

    .line 148
    .line 149
    sget-object v9, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 150
    .line 151
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 152
    .line 153
    .line 154
    move-result-object v9

    .line 155
    sget v10, Lmz3;->a:I

    .line 156
    .line 157
    invoke-virtual {v7, v9, v10}, Lmz3;->c(Landroid/content/Context;I)I

    .line 158
    .line 159
    .line 160
    move-result v7

    .line 161
    if-nez v7, :cond_6

    .line 162
    .line 163
    move-object v7, v8

    .line 164
    goto :goto_6

    .line 165
    :cond_6
    const-string v7, "No GMS"

    .line 166
    .line 167
    :goto_6
    filled-new-array {v3, v0, v5, v6, v7}, [Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-static {v0}, Lx50;->p0([Ljava/lang/Object;)Ljava/util/List;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    new-instance v3, Ljava/util/LinkedHashSet;

    .line 176
    .line 177
    invoke-direct {v3, v0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 178
    .line 179
    .line 180
    invoke-static {v3}, Lel1;->v1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 181
    .line 182
    .line 183
    move-result-object v9

    .line 184
    const/4 v13, 0x0

    .line 185
    const/16 v14, 0x3f

    .line 186
    .line 187
    const/4 v10, 0x0

    .line 188
    const/4 v11, 0x0

    .line 189
    const/4 v12, 0x0

    .line 190
    invoke-static/range {v9 .. v14}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    new-instance v3, Lpw5;

    .line 195
    .line 196
    const-string v5, "OS"

    .line 197
    .line 198
    invoke-direct {v3, v5, v0}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 199
    .line 200
    .line 201
    sget-object v0, Lg00;->a:Lg00;

    .line 202
    .line 203
    invoke-static {}, Lg00;->x()Z

    .line 204
    .line 205
    .line 206
    move-result v0

    .line 207
    invoke-static {}, Lg00;->i()I

    .line 208
    .line 209
    .line 210
    move-result v5

    .line 211
    new-instance v6, Ljava/lang/StringBuilder;

    .line 212
    .line 213
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    const-string v0, " (id="

    .line 220
    .line 221
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    const-string v0, ")"

    .line 228
    .line 229
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    move v5, v4

    .line 237
    new-instance v4, Lpw5;

    .line 238
    .line 239
    const-string v6, "Secondary user"

    .line 240
    .line 241
    invoke-direct {v4, v6, v0}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 242
    .line 243
    .line 244
    const-string v0, "app_locale"

    .line 245
    .line 246
    :try_start_1
    sget-object v6, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 247
    .line 248
    if-eqz v6, :cond_7

    .line 249
    .line 250
    invoke-interface {v6, v0, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    goto :goto_7

    .line 255
    :cond_7
    const-string v0, "prefs"

    .line 256
    .line 257
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    throw v8
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 261
    :catch_1
    move-object v0, v8

    .line 262
    :goto_7
    if-eqz v0, :cond_9

    .line 263
    .line 264
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 265
    .line 266
    .line 267
    move-result v6

    .line 268
    if-nez v6, :cond_8

    .line 269
    .line 270
    goto :goto_8

    .line 271
    :cond_8
    invoke-static {v0}, Lxx3;->g(Ljava/lang/String;)Lis4;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    invoke-virtual {v0}, Lis4;->a()Ljava/util/Locale;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    goto :goto_9

    .line 280
    :cond_9
    :goto_8
    invoke-static {}, Lxx3;->h()Lis4;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    invoke-virtual {v0}, Lis4;->a()Ljava/util/Locale;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    :goto_9
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    move v6, v5

    .line 293
    new-instance v5, Lpw5;

    .line 294
    .line 295
    const-string v7, "Locale"

    .line 296
    .line 297
    invoke-direct {v5, v7, v0}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 298
    .line 299
    .line 300
    sget-object v0, Lmp6;->a:Lmp6;

    .line 301
    .line 302
    invoke-static {}, Lmp6;->g()Z

    .line 303
    .line 304
    .line 305
    move-result v7

    .line 306
    if-eqz v7, :cond_a

    .line 307
    .line 308
    invoke-static {}, Lqe7;->a()I

    .line 309
    .line 310
    .line 311
    move-result v0

    .line 312
    const-string v7, "No root, Shizuku v"

    .line 313
    .line 314
    invoke-static {v0, v7}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    :goto_a
    move v7, v6

    .line 319
    goto :goto_b

    .line 320
    :cond_a
    sget-boolean v7, Lmp6;->g:Z

    .line 321
    .line 322
    if-eqz v7, :cond_b

    .line 323
    .line 324
    invoke-virtual {v0}, Lmp6;->b()Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    goto :goto_a

    .line 333
    :cond_b
    const-string v0, "Not rooted"

    .line 334
    .line 335
    goto :goto_a

    .line 336
    :goto_b
    new-instance v6, Lpw5;

    .line 337
    .line 338
    const-string v9, "Root state"

    .line 339
    .line 340
    invoke-direct {v6, v9, v0}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 341
    .line 342
    .line 343
    invoke-static {}, Lorg/swiftapps/swiftbackup/common/Const;->l()Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v0

    .line 347
    move v9, v7

    .line 348
    new-instance v7, Lpw5;

    .line 349
    .line 350
    const-string v10, "App info"

    .line 351
    .line 352
    invoke-direct {v7, v10, v0}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 353
    .line 354
    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    .line 356
    .line 357
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 358
    .line 359
    .line 360
    sget-object v10, Ld45;->b:Ld45;

    .line 361
    .line 362
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 363
    .line 364
    .line 365
    invoke-static {}, Ld45;->a()Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    .line 366
    .line 367
    .line 368
    move-result-object v11

    .line 369
    const-string v12, "Not signed in"

    .line 370
    .line 371
    if-eqz v11, :cond_d

    .line 372
    .line 373
    sget-object v11, Lzn7;->q:Lyn7;

    .line 374
    .line 375
    invoke-virtual {v11}, Lyn7;->d()Lzn7;

    .line 376
    .line 377
    .line 378
    move-result-object v11

    .line 379
    iget-boolean v11, v11, Lzn7;->c:Z

    .line 380
    .line 381
    if-eqz v11, :cond_c

    .line 382
    .line 383
    const-string v11, "USB: "

    .line 384
    .line 385
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    :cond_c
    sget-object v11, Lry5;->u:Ljava/lang/String;

    .line 389
    .line 390
    invoke-static {v9, v8}, Lqy5;->f(ZLzn7;)Lry5;

    .line 391
    .line 392
    .line 393
    move-result-object v11

    .line 394
    iget-object v11, v11, Lry5;->c:Ljava/lang/String;

    .line 395
    .line 396
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    .line 398
    .line 399
    goto :goto_c

    .line 400
    :cond_d
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    .line 402
    .line 403
    :goto_c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v0

    .line 407
    move-object v11, v8

    .line 408
    new-instance v8, Lpw5;

    .line 409
    .line 410
    const-string v13, "Folder"

    .line 411
    .line 412
    invoke-direct {v8, v13, v0}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 413
    .line 414
    .line 415
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 416
    .line 417
    .line 418
    invoke-static {}, Ld45;->a()Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    .line 419
    .line 420
    .line 421
    move-result-object v0

    .line 422
    if-eqz v0, :cond_11

    .line 423
    .line 424
    :try_start_2
    sget-object v0, Ld45;->b:Ld45;

    .line 425
    .line 426
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 427
    .line 428
    .line 429
    invoke-static {}, Ld45;->a()Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    .line 430
    .line 431
    .line 432
    move-result-object v0

    .line 433
    if-eqz v0, :cond_e

    .line 434
    .line 435
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->isAnonymous()Z

    .line 436
    .line 437
    .line 438
    move-result v0

    .line 439
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 440
    .line 441
    .line 442
    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 443
    goto :goto_d

    .line 444
    :catch_2
    :cond_e
    move-object v0, v11

    .line 445
    :goto_d
    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 446
    .line 447
    invoke-static {v0, v10}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 448
    .line 449
    .line 450
    move-result v0

    .line 451
    if-eqz v0, :cond_f

    .line 452
    .line 453
    const-string v12, "Anonymous"

    .line 454
    .line 455
    goto :goto_e

    .line 456
    :cond_f
    sget-object v0, Ld45;->b:Ld45;

    .line 457
    .line 458
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 459
    .line 460
    .line 461
    invoke-static {}, Ld45;->a()Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    .line 462
    .line 463
    .line 464
    move-result-object v0

    .line 465
    if-eqz v0, :cond_10

    .line 466
    .line 467
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->getEmail()Ljava/lang/String;

    .line 468
    .line 469
    .line 470
    move-result-object v12

    .line 471
    goto :goto_e

    .line 472
    :cond_10
    const-string v0, "System.exit returned normally, while it was supposed to halt JVM."

    .line 473
    .line 474
    invoke-static {v9, v0}, Ldj7;->f(ILjava/lang/String;)Ljava/lang/RuntimeException;

    .line 475
    .line 476
    .line 477
    move-result-object v0

    .line 478
    throw v0

    .line 479
    :cond_11
    :goto_e
    new-instance v9, Lpw5;

    .line 480
    .line 481
    const-string v0, "User account"

    .line 482
    .line 483
    invoke-direct {v9, v0, v12}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 484
    .line 485
    .line 486
    filled-new-array/range {v1 .. v9}, [Lpw5;

    .line 487
    .line 488
    .line 489
    move-result-object v0

    .line 490
    invoke-static {v0}, Lx65;->r0([Lpw5;)Ljava/util/Map;

    .line 491
    .line 492
    .line 493
    move-result-object v0

    .line 494
    return-object v0
.end method

.method public static p(Landroid/content/Context;IIZ)Landroid/text/SpannableStringBuilder;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, " / "

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    if-eqz p3, :cond_0

    .line 30
    .line 31
    if-le p1, p2, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    if-lt p1, p2, :cond_1

    .line 35
    .line 36
    :goto_0
    invoke-static {p0}, Lsz8;->r(Landroid/content/Context;)I

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    .line 41
    .line 42
    invoke-direct {p1, p0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 53
    .line 54
    .line 55
    move-result p2

    .line 56
    const/16 p3, 0x11

    .line 57
    .line 58
    invoke-virtual {v0, p1, p0, p2, p3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 59
    .line 60
    .line 61
    return-object v0

    .line 62
    :cond_1
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 63
    .line 64
    .line 65
    return-object v0
.end method

.method public static final p()Z
    .locals 1

    .line 66
    sget-object v0, Lg00;->a:Lg00;

    invoke-static {}, Lg00;->x()Z

    move-result v0

    return v0
.end method

.method public static q(II)I
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_0
    int-to-long v0, p0

    .line 6
    const-wide/16 v2, 0x64

    .line 7
    .line 8
    mul-long/2addr v0, v2

    .line 9
    int-to-long p0, p1

    .line 10
    div-long/2addr v0, p0

    .line 11
    long-to-int p0, v0

    .line 12
    const/16 p1, 0x64

    .line 13
    .line 14
    if-le p0, p1, :cond_1

    .line 15
    .line 16
    return p1

    .line 17
    :cond_1
    return p0
.end method

.method public static r(JJ)I
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p2, v0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    const-wide/16 v0, 0x64

    .line 10
    .line 11
    mul-long/2addr p0, v0

    .line 12
    div-long/2addr p0, p2

    .line 13
    long-to-int p0, p0

    .line 14
    return p0
.end method

.method public static s(J)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Lss1;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lss1;-><init>(J)V

    .line 4
    .line 5
    .line 6
    const/16 p0, 0xa

    .line 7
    .line 8
    const-string p1, "Const.getReadableDate"

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-static {p1, v1, v2, v0, p0}, Lio4;->j(Ljava/lang/String;Ljava/lang/String;ZLbt3;I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Ljava/lang/String;

    .line 17
    .line 18
    if-nez p0, :cond_0

    .line 19
    .line 20
    const-string p0, ""

    .line 21
    .line 22
    :cond_0
    return-object p0
.end method

.method public static final s(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    invoke-static {p0}, Lyc9;->g0(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static t(ILandroid/content/Context;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .locals 11

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 13
    .line 14
    int-to-float v0, v0

    .line 15
    const/high16 v1, 0x43200000    # 160.0f

    .line 16
    .line 17
    div-float/2addr v0, v1

    .line 18
    const/high16 v2, 0x41000000    # 8.0f

    .line 19
    .line 20
    mul-float/2addr v0, v2

    .line 21
    invoke-static {v0}, Ltu0;->v(F)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const-string v2, "\n"

    .line 26
    .line 27
    filled-new-array {v2}, [Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    const/4 v4, 0x6

    .line 32
    invoke-static {p2, v3, v4}, Lnq7;->x0(Ljava/lang/CharSequence;[Ljava/lang/String;I)Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    new-instance v3, Landroid/text/SpannableStringBuilder;

    .line 37
    .line 38
    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    const/4 v5, 0x0

    .line 46
    move v6, v5

    .line 47
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    if-eqz v7, :cond_3

    .line 52
    .line 53
    add-int/lit8 v6, v6, 0x1

    .line 54
    .line 55
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    check-cast v7, Ljava/lang/String;

    .line 60
    .line 61
    invoke-static {v7}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 62
    .line 63
    .line 64
    move-result-object v7

    .line 65
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v7

    .line 69
    const-string v8, "-"

    .line 70
    .line 71
    invoke-static {v7, v8, v5}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 72
    .line 73
    .line 74
    move-result v8

    .line 75
    if-eqz v8, :cond_2

    .line 76
    .line 77
    const/4 v8, 0x2

    .line 78
    new-array v8, v8, [C

    .line 79
    .line 80
    fill-array-data v8, :array_0

    .line 81
    .line 82
    .line 83
    invoke-static {v7, v8}, Lnq7;->I0(Ljava/lang/String;[C)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v7

    .line 87
    new-instance v8, Landroid/text/SpannableString;

    .line 88
    .line 89
    invoke-direct {v8, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 90
    .line 91
    .line 92
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 93
    .line 94
    const/16 v10, 0x1c

    .line 95
    .line 96
    if-lt v9, v10, :cond_1

    .line 97
    .line 98
    new-instance v9, Landroid/text/style/BulletSpan;

    .line 99
    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 101
    .line 102
    .line 103
    move-result-object v9

    .line 104
    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 105
    .line 106
    .line 107
    move-result-object v9

    .line 108
    iget v9, v9, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 109
    .line 110
    int-to-float v9, v9

    .line 111
    div-float/2addr v9, v1

    .line 112
    const/high16 v10, 0x3fc00000    # 1.5f

    .line 113
    .line 114
    mul-float/2addr v9, v10

    .line 115
    float-to-int v9, v9

    .line 116
    invoke-static {v0, p0, v9}, Lqs1;->b(III)Landroid/text/style/BulletSpan;

    .line 117
    .line 118
    .line 119
    move-result-object v9

    .line 120
    goto :goto_1

    .line 121
    :cond_1
    new-instance v9, Landroid/text/style/BulletSpan;

    .line 122
    .line 123
    invoke-direct {v9, v0, p0}, Landroid/text/style/BulletSpan;-><init>(II)V

    .line 124
    .line 125
    .line 126
    :goto_1
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 127
    .line 128
    .line 129
    move-result v7

    .line 130
    const/16 v10, 0x21

    .line 131
    .line 132
    invoke-virtual {v8, v9, v5, v7, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v3, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 136
    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_2
    invoke-virtual {v3, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 140
    .line 141
    .line 142
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 143
    .line 144
    .line 145
    move-result v7

    .line 146
    if-ge v6, v7, :cond_0

    .line 147
    .line 148
    invoke-virtual {v3, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 149
    .line 150
    .line 151
    goto :goto_0

    .line 152
    :cond_3
    return-object v3

    .line 153
    :array_0
    .array-data 2
        0x2ds
        0x20s
    .end array-data
.end method

.method public static u(JJ)Ljava/lang/String;
    .locals 2

    .line 1
    sub-long/2addr p2, p0

    .line 2
    long-to-double p0, p2

    .line 3
    const-wide p2, 0x408f400000000000L    # 1000.0

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    div-double/2addr p0, p2

    .line 9
    const-wide/high16 p2, 0x4059000000000000L    # 100.0

    .line 10
    .line 11
    mul-double/2addr p0, p2

    .line 12
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_2

    .line 17
    .line 18
    const-wide v0, 0x41dfffffffc00000L    # 2.147483647E9

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    cmpl-double v0, p0, v0

    .line 24
    .line 25
    if-lez v0, :cond_0

    .line 26
    .line 27
    const p0, 0x7fffffff

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const-wide/high16 v0, -0x3e20000000000000L    # -2.147483648E9

    .line 32
    .line 33
    cmpg-double v0, p0, v0

    .line 34
    .line 35
    if-gez v0, :cond_1

    .line 36
    .line 37
    const/high16 p0, -0x80000000

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    .line 41
    .line 42
    .line 43
    move-result-wide p0

    .line 44
    long-to-int p0, p0

    .line 45
    :goto_0
    int-to-double p0, p0

    .line 46
    div-double/2addr p0, p2

    .line 47
    new-instance p2, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string p3, "Completed in "

    .line 50
    .line 51
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string p0, " s"

    .line 58
    .line 59
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    return-object p0

    .line 67
    :cond_2
    const-string p0, "Cannot round NaN value."

    .line 68
    .line 69
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    const/4 p0, 0x0

    .line 73
    return-object p0
.end method

.method public static synthetic v(J)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {p0, p1, v0, v1}, Lorg/swiftapps/swiftbackup/common/Const;->u(JJ)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static final vs(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    :try_start_0
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 5
    .line 6
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->d()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    return p0

    .line 15
    :catchall_0
    const/4 p0, 0x0

    .line 16
    return p0
.end method

.method public static w(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 16
    .line 17
    .line 18
    return-object p0
.end method

.method public static final writeErrorStacktraceToFile(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lyc9;->g0(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/common/Const;->U(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static x(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "android.intent.action.MAIN"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "android.intent.category.HOME"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    const/high16 v1, 0x10000000

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public static y(Lzm;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/common/Const;->d(Lzm;)Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    sget-object p0, Ltb1;->a:Ltb1;

    .line 11
    .line 12
    invoke-static {}, Lqb1;->m()Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    const/4 p0, 0x1

    .line 19
    return p0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    return p0
.end method

.method public static z()Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const/4 v2, 0x3

    .line 7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    filled-new-array {v1, v2}, [Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v1}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    sget-object v2, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 20
    .line 21
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const-class v3, Landroid/net/ConnectivityManager;

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Landroid/net/ConnectivityManager;

    .line 32
    .line 33
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    if-nez v2, :cond_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-eqz v3, :cond_3

    .line 60
    .line 61
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    check-cast v3, Ljava/lang/Number;

    .line 66
    .line 67
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    if-eqz v3, :cond_2

    .line 76
    .line 77
    return v0

    .line 78
    :cond_3
    :goto_0
    const/4 v0, 0x0

    .line 79
    return v0
.end method


# virtual methods
.method public final declared-synchronized Q(Ljava/lang/String;)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-boolean v0, Lorg/swiftapps/swiftbackup/common/Const;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    :try_start_1
    sput-boolean v0, Lorg/swiftapps/swiftbackup/common/Const;->b:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    .line 11
    :try_start_2
    sget-object v1, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 12
    .line 13
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    sget-object v2, Lzn4;->a:Lzn4;

    .line 18
    .line 19
    new-instance v2, Ll30;

    .line 20
    .line 21
    const/16 v3, 0xf

    .line 22
    .line 23
    invoke-direct {v2, v3, v1, p1}, Ll30;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    invoke-static {v2}, Lzn4;->e(Lbt3;)V

    .line 27
    .line 28
    .line 29
    sget-object v1, Ld45;->b:Ld45;

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    invoke-static {}, Ld45;->a()Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    invoke-virtual {v1}, Ld45;->c()V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    new-instance v1, Lrs1;

    .line 47
    .line 48
    const/4 v2, 0x0

    .line 49
    invoke-direct {v1, p1, v2}, Lrs1;-><init>(Ljava/lang/String;I)V

    .line 50
    .line 51
    .line 52
    const-wide/16 v2, 0x1f4

    .line 53
    .line 54
    invoke-static {v2, v3, v1}, Lzn4;->f(JLbt3;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 55
    .line 56
    .line 57
    :goto_0
    monitor-exit p0

    .line 58
    return-void

    .line 59
    :catch_0
    :try_start_3
    invoke-static {p1, v0}, Lorg/swiftapps/swiftbackup/common/Const;->g(Ljava/lang/String;Z)V

    .line 60
    .line 61
    .line 62
    const/4 p1, 0x0

    .line 63
    throw p1

    .line 64
    :goto_1
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 65
    throw p1
.end method

.method public final declared-synchronized checkFileReadWriteAccess(Lzn7;ZZ)Z
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v2, p3

    .line 4
    .line 5
    const-string v3, "File_R/W: "

    .line 6
    .line 7
    const-string v4, "File_R/W: Failed (Storage permission: "

    .line 8
    .line 9
    monitor-enter p0

    .line 10
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    invoke-static {v0, v5}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    if-nez v0, :cond_9

    .line 26
    .line 27
    const/4 v5, 0x1

    .line 28
    :try_start_1
    invoke-static/range {p1 .. p1}, Lorg/swiftapps/swiftbackup/common/Const;->D(Lzn7;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    .line 30
    .line 31
    monitor-exit p0

    .line 32
    return v5

    .line 33
    :catchall_0
    move-exception v0

    .line 34
    goto/16 :goto_0

    .line 35
    .line 36
    :catch_0
    move-exception v0

    .line 37
    :try_start_2
    sget-object v6, Lvr6;->INSTANCE:Lvr6;

    .line 38
    .line 39
    const-string v7, "Const"

    .line 40
    .line 41
    sget-object v8, Ldz5;->a:Ldz5;

    .line 42
    .line 43
    invoke-static {}, Ldz5;->n()Z

    .line 44
    .line 45
    .line 46
    move-result v8

    .line 47
    new-instance v9, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v4, ")"

    .line 56
    .line 57
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    const/4 v10, 0x4

    .line 65
    const/4 v11, 0x0

    .line 66
    const/4 v9, 0x0

    .line 67
    invoke-static/range {v6 .. v11}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    sget-object v12, Lvr6;->INSTANCE:Lvr6;

    .line 71
    .line 72
    const-string v13, "Const"

    .line 73
    .line 74
    invoke-static {v0}, Lyc9;->g0(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v14

    .line 82
    const/16 v16, 0x4

    .line 83
    .line 84
    const/16 v17, 0x0

    .line 85
    .line 86
    const/4 v15, 0x0

    .line 87
    invoke-static/range {v12 .. v17}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    sget-object v3, Lmp6;->a:Lmp6;

    .line 91
    .line 92
    const/4 v4, 0x3

    .line 93
    const/4 v6, 0x0

    .line 94
    invoke-static {v3, v6, v6, v4}, Lmp6;->d(Lmp6;ZZI)Z

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    if-nez v3, :cond_1

    .line 99
    .line 100
    sget-object v7, Lvr6;->INSTANCE:Lvr6;

    .line 101
    .line 102
    const-string v8, "Const"

    .line 103
    .line 104
    const-string v9, "File_R/W: Not rooted, so nothing to do here. Check failed."

    .line 105
    .line 106
    const/4 v11, 0x4

    .line 107
    const/4 v12, 0x0

    .line 108
    const/4 v10, 0x0

    .line 109
    invoke-static/range {v7 .. v12}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 110
    .line 111
    .line 112
    if-nez v2, :cond_0

    .line 113
    .line 114
    monitor-exit p0

    .line 115
    return v6

    .line 116
    :cond_0
    :try_start_3
    throw v0

    .line 117
    :cond_1
    sget-object v3, Ldz5;->a:Ldz5;

    .line 118
    .line 119
    invoke-static {}, Ldz5;->n()Z

    .line 120
    .line 121
    .line 122
    move-result v3

    .line 123
    if-nez v3, :cond_3

    .line 124
    .line 125
    sget-object v7, Lvr6;->INSTANCE:Lvr6;

    .line 126
    .line 127
    const-string v8, "Const"

    .line 128
    .line 129
    const-string v9, "File_R/W: Storage permission is not granted, attempting to take it with root"

    .line 130
    .line 131
    const/4 v11, 0x4

    .line 132
    const/4 v12, 0x0

    .line 133
    const/4 v10, 0x0

    .line 134
    invoke-static/range {v7 .. v12}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    invoke-static {}, Ldz5;->f()V

    .line 138
    .line 139
    .line 140
    invoke-static {}, Ldz5;->n()Z

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    if-eqz v3, :cond_3

    .line 145
    .line 146
    const-string v8, "Const"

    .line 147
    .line 148
    const-string v9, "File_R/W: Successfully taken storage permission with root, checking access..."

    .line 149
    .line 150
    const/4 v11, 0x4

    .line 151
    const/4 v12, 0x0

    .line 152
    const/4 v10, 0x0

    .line 153
    invoke-static/range {v7 .. v12}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual/range {p0 .. p3}, Lorg/swiftapps/swiftbackup/common/Const;->checkFileReadWriteAccess(Lzn7;ZZ)Z

    .line 157
    .line 158
    .line 159
    move-result v3

    .line 160
    if-eqz v3, :cond_2

    .line 161
    .line 162
    const-string v8, "Const"

    .line 163
    .line 164
    const-string v9, "File_R/W: Success!"

    .line 165
    .line 166
    const/4 v11, 0x4

    .line 167
    const/4 v12, 0x0

    .line 168
    const/4 v10, 0x0

    .line 169
    invoke-static/range {v7 .. v12}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 170
    .line 171
    .line 172
    monitor-exit p0

    .line 173
    return v5

    .line 174
    :cond_2
    :try_start_4
    const-string v8, "Const"

    .line 175
    .line 176
    const-string v9, "File_R/W: Still failed after taking storage permission!"

    .line 177
    .line 178
    const/4 v11, 0x4

    .line 179
    const/4 v12, 0x0

    .line 180
    const/4 v10, 0x0

    .line 181
    invoke-static/range {v7 .. v12}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    :cond_3
    if-nez p2, :cond_5

    .line 185
    .line 186
    sget-object v7, Lvr6;->INSTANCE:Lvr6;

    .line 187
    .line 188
    const-string v8, "Const"

    .line 189
    .line 190
    const-string v9, "Retry with root mode not allowed. Check failed."

    .line 191
    .line 192
    const/4 v11, 0x4

    .line 193
    const/4 v12, 0x0

    .line 194
    const/4 v10, 0x0

    .line 195
    invoke-static/range {v7 .. v12}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 196
    .line 197
    .line 198
    if-nez v2, :cond_4

    .line 199
    .line 200
    monitor-exit p0

    .line 201
    return v6

    .line 202
    :cond_4
    :try_start_5
    throw v0

    .line 203
    :cond_5
    sget-boolean v3, Lq63;->d:Z

    .line 204
    .line 205
    if-nez v3, :cond_7

    .line 206
    .line 207
    sget-object v7, Lvr6;->INSTANCE:Lvr6;

    .line 208
    .line 209
    const-string v3, "Const"

    .line 210
    .line 211
    const-string v4, "File_R/W: Forcing root mode filesystem and retrying"

    .line 212
    .line 213
    sget-object v8, Lvr6$a;->YELLOW:Lvr6$a;

    .line 214
    .line 215
    invoke-virtual {v7, v3, v4, v8}, Lvr6;->w(Ljava/lang/String;Ljava/lang/String;Lvr6$a;)V

    .line 216
    .line 217
    .line 218
    sput-boolean v5, Lq63;->d:Z

    .line 219
    .line 220
    move-object/from16 v3, p1

    .line 221
    .line 222
    invoke-virtual {v1, v3, v6, v2}, Lorg/swiftapps/swiftbackup/common/Const;->checkFileReadWriteAccess(Lzn7;ZZ)Z

    .line 223
    .line 224
    .line 225
    move-result v3

    .line 226
    if-eqz v3, :cond_6

    .line 227
    .line 228
    const-string v8, "Const"

    .line 229
    .line 230
    const-string v9, "File_R/W: Success!"

    .line 231
    .line 232
    const/4 v11, 0x4

    .line 233
    const/4 v12, 0x0

    .line 234
    const/4 v10, 0x0

    .line 235
    invoke-static/range {v7 .. v12}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 236
    .line 237
    .line 238
    monitor-exit p0

    .line 239
    return v5

    .line 240
    :cond_6
    :try_start_6
    const-string v8, "Const"

    .line 241
    .line 242
    const-string v9, "File_R/W: Still failed after forcing root mode, oh well..."

    .line 243
    .line 244
    const/4 v11, 0x4

    .line 245
    const/4 v12, 0x0

    .line 246
    const/4 v10, 0x0

    .line 247
    invoke-static/range {v7 .. v12}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 248
    .line 249
    .line 250
    :cond_7
    sget-object v7, Lvr6;->INSTANCE:Lvr6;

    .line 251
    .line 252
    const-string v8, "Const"

    .line 253
    .line 254
    const-string v9, "File_R/W: Nothing to do, checks failed."

    .line 255
    .line 256
    const/4 v11, 0x4

    .line 257
    const/4 v12, 0x0

    .line 258
    const/4 v10, 0x0

    .line 259
    invoke-static/range {v7 .. v12}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 260
    .line 261
    .line 262
    if-nez v2, :cond_8

    .line 263
    .line 264
    monitor-exit p0

    .line 265
    return v6

    .line 266
    :cond_8
    :try_start_7
    throw v0

    .line 267
    :cond_9
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    .line 268
    .line 269
    const-string v2, "Method called from main thread"

    .line 270
    .line 271
    invoke-direct {v0, v2}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    throw v0

    .line 275
    :goto_0
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 276
    throw v0
.end method

.method public final e()V
    .locals 3

    .line 1
    sget-boolean v0, Lg42;->a:Z

    .line 2
    .line 3
    const-string v0, "AQJBD/K2igFqstvxpdd6E5Qct1FG0FeqN7nhKMWOgCifVTrjnLQ9eelRB7tTmCBNSYY3CswMQaWZakhBwJlfCvFpnKqylwOgxBgrUWVPZRvQWtMf3+6Y0leYgX1x0gdKIppkV7cNFT0B07Q8EK8KhjLI3PMwuvFRpYifZTyYTHbGY/g6vRiqBg=="

    .line 4
    .line 5
    invoke-static {v0}, Lg42;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lorg/swiftapps/swiftbackup/common/V;->INSTANCE:Lorg/swiftapps/swiftbackup/common/V;

    .line 10
    .line 11
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/common/V;->getB()Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/16 v2, 0x26c

    .line 22
    .line 23
    if-gt v2, v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lorg/swiftapps/swiftbackup/common/Const;->Q(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-static {}, Lre3;->b()Lzc2;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    const-string v1, "blockedVersion"

    .line 33
    .line 34
    invoke-virtual {p0, v1}, Lzc2;->d(Ljava/lang/String;)Lzc2;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    new-instance v1, Lus1;

    .line 39
    .line 40
    invoke-direct {v1, v0}, Lus1;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v1}, Lzc2;->b(Laj8;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method
