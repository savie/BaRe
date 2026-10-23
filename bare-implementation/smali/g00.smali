.class public final Lg00;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Lg00;

.field public static final b:Lgv7;

.field public static final c:Lex6;

.field public static final d:Lgv7;

.field public static final e:Lgv7;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lg00;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lg00;->a:Lg00;

    .line 7
    .line 8
    new-instance v0, Ljx;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-direct {v0, v1}, Ljx;-><init>(I)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Lgv7;

    .line 15
    .line 16
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lg00;->b:Lgv7;

    .line 20
    .line 21
    new-instance v0, Lex6;

    .line 22
    .line 23
    invoke-direct {v0}, Lzy4;-><init>()V

    .line 24
    .line 25
    .line 26
    sput-object v0, Lg00;->c:Lex6;

    .line 27
    .line 28
    new-instance v0, Lzj;

    .line 29
    .line 30
    const/4 v1, 0x2

    .line 31
    invoke-direct {v0, v1}, Lzj;-><init>(I)V

    .line 32
    .line 33
    .line 34
    new-instance v1, Lgv7;

    .line 35
    .line 36
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 37
    .line 38
    .line 39
    sput-object v1, Lg00;->d:Lgv7;

    .line 40
    .line 41
    new-instance v0, Lb7;

    .line 42
    .line 43
    const/4 v1, 0x4

    .line 44
    invoke-direct {v0, v1}, Lb7;-><init>(I)V

    .line 45
    .line 46
    .line 47
    new-instance v1, Lgv7;

    .line 48
    .line 49
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 50
    .line 51
    .line 52
    sput-object v1, Lg00;->e:Lgv7;

    .line 53
    .line 54
    return-void
.end method

.method public static A(Lg00;Ljava/lang/String;)Z
    .locals 2

    .line 1
    const-string p0, "show_system_apps"

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    :try_start_0
    sget-object v1, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-interface {v1, p0, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-string p0, "prefs"

    .line 14
    .line 15
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    throw p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    :catch_0
    move p0, v0

    .line 21
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-static {v0, p1}, Lg00;->q(ILjava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-static {v1, p0}, Lg00;->z(Landroid/content/pm/PackageInfo;Z)Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    return p0

    .line 35
    :cond_1
    invoke-static {p1}, Lg00;->w(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    if-nez p0, :cond_2

    .line 40
    .line 41
    sget-object p0, Lgs0;->a:Lgs0;

    .line 42
    .line 43
    sget-object p0, Lis0;->Hide:Lis0;

    .line 44
    .line 45
    invoke-static {p1, p0}, Lgs0;->c(Ljava/lang/String;Lis0;)Z

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    if-nez p0, :cond_2

    .line 50
    .line 51
    const/4 p0, 0x1

    .line 52
    return p0

    .line 53
    :cond_2
    return v0
.end method

.method public static B(Lzm;Lji;)V
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
    invoke-virtual {p1}, Lji;->checkInstalled()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    :try_start_0
    invoke-virtual {p1}, Lji;->getPackageName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    const/high16 p1, 0x10000000

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    const-string v0, "Util"

    .line 40
    .line 41
    const-string v1, "openApp: Package not found: "

    .line 42
    .line 43
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :catch_0
    move-exception p1

    .line 52
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    if-nez p1, :cond_2

    .line 57
    .line 58
    const p1, 0x7f130581

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    :cond_2
    new-instance v0, Lhv1;

    .line 69
    .line 70
    const v1, 0x7f140160

    .line 71
    .line 72
    .line 73
    invoke-direct {v0, p0, v1}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 74
    .line 75
    .line 76
    new-instance v2, Ls35;

    .line 77
    .line 78
    const/4 v3, 0x0

    .line 79
    invoke-direct {v2, p0, v1, v0, v3}, Ls35;-><init>(Lio1;ILhv1;Ljava/lang/Float;)V

    .line 80
    .line 81
    .line 82
    iget-object v0, v2, Lva;->b:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v0, Lra;

    .line 85
    .line 86
    iput-object p1, v0, Lra;->f:Ljava/lang/CharSequence;

    .line 87
    .line 88
    const p1, 0x7f1303e6

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2, p0, v3}, Lv75;->t(Ljava/lang/String;Lkb1;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2}, Ls35;->m()Lwa;

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :cond_3
    sget-object p0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 106
    .line 107
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    const p1, 0x7f1303db

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    new-instance v0, Lcv;

    .line 122
    .line 123
    const/16 v1, 0xe

    .line 124
    .line 125
    invoke-direct {v0, v1, p0, p1}, Lcv;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    invoke-static {v0}, Lzn4;->e(Lbt3;)V

    .line 129
    .line 130
    .line 131
    return-void
.end method

.method public static C()V
    .locals 4

    .line 1
    sget-object v0, Lv53;->a:Lv53;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Ld45;->b:Ld45;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-static {}, Ld45;->a()Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    sget-boolean v1, Lv53;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    :try_start_1
    sput-boolean v2, Lv53;->b:Z

    .line 23
    .line 24
    const-string v1, "_FavoriteAppsRepo"

    .line 25
    .line 26
    const-string v3, "Initializing"

    .line 27
    .line 28
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    sget-object v1, Lzn4;->a:Lzn4;

    .line 32
    .line 33
    new-instance v1, Ljx;

    .line 34
    .line 35
    const/16 v3, 0xa

    .line 36
    .line 37
    invoke-direct {v1, v3}, Ljx;-><init>(I)V

    .line 38
    .line 39
    .line 40
    invoke-static {v1}, Lzn4;->c(Lbt3;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    .line 42
    .line 43
    monitor-exit v0

    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception v1

    .line 46
    goto/16 :goto_6

    .line 47
    .line 48
    :cond_1
    :try_start_2
    const-string v1, "_FavoriteAppsRepo"

    .line 49
    .line 50
    const-string v3, "User not signed in. Skipping repo setup."

    .line 51
    .line 52
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 53
    .line 54
    .line 55
    monitor-exit v0

    .line 56
    :goto_0
    sget-object v1, Llr4;->a:Llr4;

    .line 57
    .line 58
    monitor-enter v1

    .line 59
    :try_start_3
    invoke-static {}, Ld45;->a()Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    if-eqz v0, :cond_3

    .line 64
    .line 65
    sget-boolean v0, Llr4;->b:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 66
    .line 67
    if-eqz v0, :cond_2

    .line 68
    .line 69
    monitor-exit v1

    .line 70
    goto :goto_1

    .line 71
    :cond_2
    :try_start_4
    sput-boolean v2, Llr4;->b:Z

    .line 72
    .line 73
    const-string v0, "LabelRepo"

    .line 74
    .line 75
    const-string v3, "Initializing"

    .line 76
    .line 77
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    sget-object v0, Lzn4;->a:Lzn4;

    .line 81
    .line 82
    new-instance v0, Lpu;

    .line 83
    .line 84
    const/16 v3, 0x9

    .line 85
    .line 86
    invoke-direct {v0, v3}, Lpu;-><init>(I)V

    .line 87
    .line 88
    .line 89
    invoke-static {v0}, Lzn4;->c(Lbt3;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 90
    .line 91
    .line 92
    monitor-exit v1

    .line 93
    goto :goto_1

    .line 94
    :catchall_1
    move-exception v0

    .line 95
    goto/16 :goto_5

    .line 96
    .line 97
    :cond_3
    :try_start_5
    const-string v0, "LabelRepo"

    .line 98
    .line 99
    const-string v3, "User not signed in. Skipping repo setup."

    .line 100
    .line 101
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 102
    .line 103
    .line 104
    monitor-exit v1

    .line 105
    :goto_1
    sget-object v0, Lbr1;->a:Lbr1;

    .line 106
    .line 107
    monitor-enter v0

    .line 108
    :try_start_6
    invoke-static {}, Ld45;->a()Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    if-eqz v1, :cond_6

    .line 113
    .line 114
    sget-object v1, Lorg/swiftapps/swiftbackup/common/V;->INSTANCE:Lorg/swiftapps/swiftbackup/common/V;

    .line 115
    .line 116
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/common/V;->getA()Z

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-nez v1, :cond_4

    .line 121
    .line 122
    sget-object v1, Lmp6;->a:Lmp6;

    .line 123
    .line 124
    invoke-static {}, Lmp6;->f()Z

    .line 125
    .line 126
    .line 127
    move-result v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 128
    if-nez v1, :cond_4

    .line 129
    .line 130
    monitor-exit v0

    .line 131
    goto :goto_2

    .line 132
    :cond_4
    :try_start_7
    sget-boolean v1, Lbr1;->b:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 133
    .line 134
    if-eqz v1, :cond_5

    .line 135
    .line 136
    monitor-exit v0

    .line 137
    goto :goto_2

    .line 138
    :cond_5
    :try_start_8
    sput-boolean v2, Lbr1;->b:Z

    .line 139
    .line 140
    const-string v1, "ConfigRepo"

    .line 141
    .line 142
    const-string v3, "Initializing"

    .line 143
    .line 144
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    .line 146
    .line 147
    sget-object v1, Lzn4;->a:Lzn4;

    .line 148
    .line 149
    new-instance v1, Lel;

    .line 150
    .line 151
    const/4 v3, 0x7

    .line 152
    invoke-direct {v1, v3}, Lel;-><init>(I)V

    .line 153
    .line 154
    .line 155
    invoke-static {v1}, Lzn4;->c(Lbt3;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 156
    .line 157
    .line 158
    monitor-exit v0

    .line 159
    goto :goto_2

    .line 160
    :catchall_2
    move-exception v1

    .line 161
    goto :goto_4

    .line 162
    :cond_6
    :try_start_9
    const-string v1, "ConfigRepo"

    .line 163
    .line 164
    const-string v3, "User not signed in. Skipping repo setup."

    .line 165
    .line 166
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 167
    .line 168
    .line 169
    monitor-exit v0

    .line 170
    :goto_2
    sget-object v1, Lgs0;->a:Lgs0;

    .line 171
    .line 172
    monitor-enter v1

    .line 173
    :try_start_a
    invoke-static {}, Ld45;->a()Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    if-eqz v0, :cond_8

    .line 178
    .line 179
    sget-boolean v0, Lgs0;->b:Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 180
    .line 181
    if-eqz v0, :cond_7

    .line 182
    .line 183
    monitor-exit v1

    .line 184
    return-void

    .line 185
    :cond_7
    :try_start_b
    sput-boolean v2, Lgs0;->b:Z

    .line 186
    .line 187
    const-string v0, "BlacklistRepo"

    .line 188
    .line 189
    const-string v2, "Initializing"

    .line 190
    .line 191
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    .line 193
    .line 194
    sget-object v0, Lzn4;->a:Lzn4;

    .line 195
    .line 196
    new-instance v0, Lfl;

    .line 197
    .line 198
    const/4 v2, 0x2

    .line 199
    invoke-direct {v0, v2}, Lfl;-><init>(I)V

    .line 200
    .line 201
    .line 202
    invoke-static {v0}, Lzn4;->c(Lbt3;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 203
    .line 204
    .line 205
    monitor-exit v1

    .line 206
    return-void

    .line 207
    :catchall_3
    move-exception v0

    .line 208
    goto :goto_3

    .line 209
    :cond_8
    :try_start_c
    const-string v0, "BlacklistRepo"

    .line 210
    .line 211
    const-string v2, "User not signed in. Skipping repo setup."

    .line 212
    .line 213
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 214
    .line 215
    .line 216
    monitor-exit v1

    .line 217
    return-void

    .line 218
    :goto_3
    :try_start_d
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 219
    throw v0

    .line 220
    :goto_4
    :try_start_e
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 221
    throw v1

    .line 222
    :goto_5
    :try_start_f
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 223
    throw v0

    .line 224
    :goto_6
    :try_start_10
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 225
    throw v1
.end method

.method public static D(Lzm;Lji;)V
    .locals 4

    .line 1
    const-string v0, "package:"

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lji;->checkInstalled()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    sget-object p0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 16
    .line 17
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const p1, 0x7f1303db

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    new-instance v0, Lcv;

    .line 32
    .line 33
    const/16 v1, 0xe

    .line 34
    .line 35
    invoke-direct {v0, v1, p0, p1}, Lcv;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Lzn4;->e(Lbt3;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    .line 43
    .line 44
    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 45
    .line 46
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const-string v2, "android.intent.category.DEFAULT"

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {p1}, Lji;->getPackageName()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    const/high16 v0, 0x10000000

    .line 83
    .line 84
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :catch_0
    move-exception p1

    .line 92
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    if-nez p1, :cond_1

    .line 97
    .line 98
    const p1, 0x7f130581

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    :cond_1
    new-instance v0, Lhv1;

    .line 109
    .line 110
    const v1, 0x7f140160

    .line 111
    .line 112
    .line 113
    invoke-direct {v0, p0, v1}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 114
    .line 115
    .line 116
    new-instance v2, Ls35;

    .line 117
    .line 118
    const/4 v3, 0x0

    .line 119
    invoke-direct {v2, p0, v1, v0, v3}, Ls35;-><init>(Lio1;ILhv1;Ljava/lang/Float;)V

    .line 120
    .line 121
    .line 122
    iget-object v0, v2, Lva;->b:Ljava/lang/Object;

    .line 123
    .line 124
    check-cast v0, Lra;

    .line 125
    .line 126
    iput-object p1, v0, Lra;->f:Ljava/lang/CharSequence;

    .line 127
    .line 128
    const p1, 0x7f1303e6

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v2, p0, v3}, Lv75;->t(Ljava/lang/String;Lkb1;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v2}, Ls35;->m()Lwa;

    .line 142
    .line 143
    .line 144
    return-void
.end method

.method public static E(ILjava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lmp6;->a:Lmp6;

    .line 5
    .line 6
    sget-boolean v0, Lmp6;->g:Z

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance v0, Ljr7;

    .line 12
    .line 13
    invoke-direct {v0, p2}, Ljr7;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v1, "[ -e @@ ]"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljr7;->b(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const-string v3, "[ -d @@ ]"

    .line 23
    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0, v3}, Ljr7;->b(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-nez v2, :cond_2

    .line 31
    .line 32
    :cond_1
    const/4 v2, 0x2

    .line 33
    new-array v2, v2, [Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljr7;->b(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    invoke-virtual {v0, v3}, Ljr7;->b(Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    new-instance v5, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string v6, "performChownOnDir: dir="

    .line 46
    .line 47
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v6, ", exists="

    .line 54
    .line 55
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v4, ", isDir="

    .line 62
    .line 63
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    const/4 v4, 0x0

    .line 74
    aput-object v3, v2, v4

    .line 75
    .line 76
    const/16 v3, 0x2f

    .line 77
    .line 78
    invoke-static {p2, v3}, Lnq7;->B0(Ljava/lang/String;C)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    const-string v3, "ls -l | grep "

    .line 83
    .line 84
    invoke-virtual {v3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    filled-new-array {p2}, [Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    invoke-static {p2}, Lmp6;->i([Ljava/lang/String;)Ljava/util/List;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    invoke-static {p2}, Lel1;->U0(Ljava/util/List;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    const/4 v3, 0x1

    .line 101
    aput-object p2, v2, v3

    .line 102
    .line 103
    invoke-static {v2}, Lx50;->p0([Ljava/lang/Object;)Ljava/util/List;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    sget-object p2, Lvr6;->INSTANCE:Lvr6;

    .line 108
    .line 109
    const/4 v8, 0x0

    .line 110
    const/16 v9, 0x3f

    .line 111
    .line 112
    const/4 v5, 0x0

    .line 113
    const/4 v6, 0x0

    .line 114
    const/4 v7, 0x0

    .line 115
    invoke-static/range {v4 .. v9}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v7

    .line 119
    const/4 v9, 0x4

    .line 120
    const/4 v10, 0x0

    .line 121
    const-string v6, "AppUtil"

    .line 122
    .line 123
    move-object v5, p2

    .line 124
    invoke-static/range {v5 .. v10}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    :cond_2
    invoke-virtual {v0, v1}, Ljr7;->b(Ljava/lang/String;)Z

    .line 128
    .line 129
    .line 130
    move-result p2

    .line 131
    if-eqz p2, :cond_3

    .line 132
    .line 133
    sget-boolean p2, Lg42;->a:Z

    .line 134
    .line 135
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p2

    .line 139
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    .line 141
    .line 142
    invoke-static {p0, p1, p2}, Lg42;->e(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    filled-new-array {p0}, [Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    invoke-static {p0}, Lmp6;->i([Ljava/lang/String;)Ljava/util/List;

    .line 151
    .line 152
    .line 153
    return-void

    .line 154
    :cond_3
    new-instance p0, Ljava/io/FileNotFoundException;

    .line 155
    .line 156
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    throw p0
.end method

.method public static F(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-class v0, Lg00;

    .line 5
    .line 6
    invoke-static {v0, p0}, Lw13;->q(Ljava/lang/Class;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lg00;->r()Landroid/content/pm/PackageManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lb67;->c()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->getInstallSourceInfo(Ljava/lang/String;)Landroid/content/pm/InstallSourceInfo;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/content/pm/InstallSourceInfo;->getInstallingPackageName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :cond_0
    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method

.method public static b(Lq63;Ljava/lang/Long;)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lq63;->A()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 9
    .line 10
    .line 11
    move-result-wide v2

    .line 12
    const-wide/16 v4, 0x0

    .line 13
    .line 14
    cmp-long p0, v2, v4

    .line 15
    .line 16
    if-lez p0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 19
    .line 20
    .line 21
    move-result-wide v2

    .line 22
    cmp-long p0, v2, v0

    .line 23
    .line 24
    if-eqz p0, :cond_0

    .line 25
    .line 26
    sget-object p0, Lp93;->a:Lp93;

    .line 27
    .line 28
    invoke-static {p1}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-static {v2}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 41
    .line 42
    .line 43
    move-result-wide v3

    .line 44
    sub-long/2addr v0, v3

    .line 45
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    .line 46
    .line 47
    .line 48
    move-result-wide v0

    .line 49
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-static {p1}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    const-string v0, ", Found: "

    .line 58
    .line 59
    const-string v1, ", Diff: "

    .line 60
    .line 61
    const-string v3, "Backup file size mismatch! Expected: "

    .line 62
    .line 63
    invoke-static {v3, p0, v0, v2, v1}, Lu48;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    const-string v0, "."

    .line 68
    .line 69
    invoke-static {p0, p1, v0}, Ldj7;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    return-object p0

    .line 74
    :cond_0
    const/4 p0, 0x0

    .line 75
    return-object p0
.end method

.method public static c(Ljava/lang/String;Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lg00;->i()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const-string v1, "pm clear --user "

    .line 9
    .line 10
    const-string v2, " "

    .line 11
    .line 12
    invoke-static {v0, v1, v2, p0}, Lu48;->k(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sget-object v1, Lmp6;->a:Lmp6;

    .line 17
    .line 18
    filled-new-array {v0}, [Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sget-object v2, Lip6;->SHIZUKU:Lip6;

    .line 23
    .line 24
    invoke-virtual {v1, p1, v0, v2}, Lmp6;->j(Z[Ljava/lang/String;Lip6;)Ljava/util/List;

    .line 25
    .line 26
    .line 27
    invoke-static {p0}, Lg00;->F(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lai8;->b()V

    .line 8
    .line 9
    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    const-string p1, "disable-user"

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-string p1, "enable"

    .line 16
    .line 17
    :goto_0
    invoke-static {}, Lg00;->i()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const-string v1, " --user "

    .line 22
    .line 23
    const-string v2, " "

    .line 24
    .line 25
    const-string v3, "pm "

    .line 26
    .line 27
    invoke-static {v3, p1, v1, v0, v2}, Ldj7;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    sget-object v0, Lmp6;->a:Lmp6;

    .line 39
    .line 40
    filled-new-array {p1}, [Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    sget-object v1, Lip6;->SHIZUKU:Lip6;

    .line 45
    .line 46
    invoke-virtual {v0, p1, v1}, Lmp6;->h([Ljava/lang/String;Lip6;)Ljava/util/List;

    .line 47
    .line 48
    .line 49
    if-nez p2, :cond_2

    .line 50
    .line 51
    const/4 p1, 0x0

    .line 52
    :try_start_0
    invoke-static {p1, p0}, Lg00;->q(ILjava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    if-nez p1, :cond_1

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_1
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 60
    .line 61
    if-eqz p1, :cond_2

    .line 62
    .line 63
    iget-boolean p1, p1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 64
    .line 65
    if-nez p1, :cond_2

    .line 66
    .line 67
    const-string v2, "Failed to enable the app due to manufacturer restrictions. Executing a workaround..."

    .line 68
    .line 69
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 70
    .line 71
    const-string v1, "AppUtil"

    .line 72
    .line 73
    const/4 v4, 0x4

    .line 74
    const/4 v5, 0x0

    .line 75
    const/4 v3, 0x0

    .line 76
    invoke-static/range {v0 .. v5}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    sget-object p1, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 80
    .line 81
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-static {p1, p0}, Lai8;->j(Landroid/content/Context;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-static {p0}, Lg00;->g(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :catch_0
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 93
    .line 94
    const/4 v4, 0x4

    .line 95
    const/4 v5, 0x0

    .line 96
    const-string v1, "AppUtil"

    .line 97
    .line 98
    const-string v2, "Workaround to enable app failed"

    .line 99
    .line 100
    const/4 v3, 0x0

    .line 101
    invoke-static/range {v0 .. v5}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    :cond_2
    :goto_1
    return-void
.end method

.method public static e(Lji;Ljava/lang/Integer;Ljava/lang/String;Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lji;->getPackageName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-static {p1}, Lg00;->n(Ljava/lang/String;)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    :cond_0
    if-eqz p1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-lez v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Lji;->getDataDir()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p0}, Lji;->getDeDataDir()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    invoke-static {v0, p0, p1, p2, p3}, Lg00;->f(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    new-instance p2, Ljava/lang/RuntimeException;

    .line 39
    .line 40
    invoke-virtual {p0}, Lji;->asString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    new-instance p3, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v0, "fixDataOwnership: Unable to get package uid for "

    .line 47
    .line 48
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string p0, ". uid="

    .line 55
    .line 56
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-direct {p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p2
.end method

.method public static f(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 2

    .line 1
    invoke-static {}, Lnc8;->p()Lww4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {p0, v1, p3, p4}, Lg00;->j(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Z)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {v0, p0}, Lww4;->addAll(Ljava/util/Collection;)Z

    .line 14
    .line 15
    .line 16
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-static {p1, p0, p3, p4}, Lg00;->j(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Z)Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {v0, p0}, Lww4;->addAll(Ljava/util/Collection;)Z

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Lnc8;->h(Lww4;)Lww4;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p0}, Lww4;->isEmpty()Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-nez p1, :cond_0

    .line 36
    .line 37
    sget-object p1, Lmp6;->a:Lmp6;

    .line 38
    .line 39
    const/4 p1, 0x0

    .line 40
    new-array p1, p1, [Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {p0, p1}, Lww4;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    check-cast p0, [Ljava/lang/String;

    .line 47
    .line 48
    array-length p1, p0

    .line 49
    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    check-cast p0, [Ljava/lang/String;

    .line 54
    .line 55
    invoke-static {p0}, Lmp6;->i([Ljava/lang/String;)Ljava/util/List;

    .line 56
    .line 57
    .line 58
    :cond_0
    return-void
.end method

.method public static g(Ljava/lang/String;)V
    .locals 2

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
    if-nez v0, :cond_0

    .line 17
    .line 18
    sget-object v0, Lmp6;->a:Lmp6;

    .line 19
    .line 20
    const-string v1, "am force-stop "

    .line 21
    .line 22
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    filled-new-array {p0}, [Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    sget-object v1, Lip6;->SHIZUKU:Lip6;

    .line 31
    .line 32
    invoke-virtual {v0, p0, v1}, Lmp6;->h([Ljava/lang/String;Lip6;)Ljava/util/List;

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    invoke-static {}, Ld6;->o()V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public static h(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "."

    .line 5
    .line 6
    const-string v1, ""

    .line 7
    .line 8
    invoke-static {p0, v0, v1}, Luq7;->T(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public static i()I
    .locals 9

    .line 1
    const/4 v1, 0x0

    .line 2
    :try_start_0
    sget-object v0, Lg42;->v:Lgv7;

    .line 3
    .line 4
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Ljava/lang/String;

    .line 9
    .line 10
    sget-object v2, Lmp6;->a:Lmp6;

    .line 11
    .line 12
    filled-new-array {v0}, [Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sget-object v3, Lip6;->SHIZUKU:Lip6;

    .line 17
    .line 18
    const/4 v4, 0x1

    .line 19
    invoke-virtual {v2, v4, v0, v3}, Lmp6;->j(Z[Ljava/lang/String;Lip6;)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Lel1;->U0(Ljava/util/List;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Ljava/lang/String;

    .line 28
    .line 29
    const/16 v2, 0xa

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    invoke-static {v2, v0}, Luq7;->W(ILjava/lang/String;)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-exception v0

    .line 39
    goto :goto_2

    .line 40
    :cond_0
    move-object v0, v1

    .line 41
    :goto_0
    invoke-static {}, Lg00;->x()Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_3

    .line 46
    .line 47
    if-nez v0, :cond_1

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-nez v3, :cond_3

    .line 55
    .line 56
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    invoke-static {v2, v0}, Luq7;->W(ILjava/lang/String;)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    if-nez v0, :cond_2

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-nez v2, :cond_3

    .line 79
    .line 80
    sget-object v3, Lvr6;->INSTANCE:Lvr6;

    .line 81
    .line 82
    const-string v4, "AppUtil"

    .line 83
    .line 84
    const-string v5, "getCurrentUser: Secondary user id still reported \'0\' when it shouldn\'t be!"

    .line 85
    .line 86
    const/4 v7, 0x4

    .line 87
    const/4 v8, 0x0

    .line 88
    const/4 v6, 0x0

    .line 89
    invoke-static/range {v3 .. v8}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .line 91
    .line 92
    :cond_3
    :goto_1
    move-object v1, v0

    .line 93
    goto :goto_3

    .line 94
    :goto_2
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 95
    .line 96
    invoke-static {v0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    const-string v3, "getCurrentUser="

    .line 101
    .line 102
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    const/4 v6, 0x4

    .line 107
    const/4 v7, 0x0

    .line 108
    const-string v3, "AppUtil"

    .line 109
    .line 110
    const/4 v5, 0x0

    .line 111
    invoke-static/range {v2 .. v7}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    :goto_3
    if-eqz v1, :cond_4

    .line 115
    .line 116
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    goto :goto_4

    .line 121
    :cond_4
    const/4 v0, 0x0

    .line 122
    :goto_4
    return v0
.end method

.method public static j(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Z)Ljava/util/List;
    .locals 4

    .line 1
    if-eqz p0, :cond_5

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_2

    .line 10
    .line 11
    :cond_0
    new-instance v0, Ljr7;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Ljr7;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v1, "[ -e @@ ]"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljr7;->b(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_5

    .line 23
    .line 24
    new-instance v0, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    if-eqz p2, :cond_2

    .line 31
    .line 32
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-nez v2, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    invoke-static {p2}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-nez v2, :cond_2

    .line 44
    .line 45
    sget-object v2, Lg42;->q:Lgv7;

    .line 46
    .line 47
    invoke-virtual {v2}, Lgv7;->getValue()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Ljava/lang/String;

    .line 52
    .line 53
    const/4 v3, 0x2

    .line 54
    filled-new-array {p2, p0}, [Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-static {p2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    invoke-static {v2, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    goto :goto_1

    .line 67
    :cond_2
    :goto_0
    invoke-static {}, Lg00;->x()Z

    .line 68
    .line 69
    .line 70
    move-result p2

    .line 71
    if-eqz p2, :cond_3

    .line 72
    .line 73
    sget-object p2, Lg42;->p:Lgv7;

    .line 74
    .line 75
    invoke-virtual {p2}, Lgv7;->getValue()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    check-cast p2, Ljava/lang/String;

    .line 80
    .line 81
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-static {p2, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    goto :goto_1

    .line 94
    :cond_3
    sget-object p2, Lg42;->o:Lgv7;

    .line 95
    .line 96
    invoke-virtual {p2}, Lgv7;->getValue()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    check-cast p2, Ljava/lang/String;

    .line 101
    .line 102
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-static {p2, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    :goto_1
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    sget-boolean p2, Lg42;->a:Z

    .line 118
    .line 119
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 120
    .line 121
    .line 122
    move-result p2

    .line 123
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-static {p2, p1, p0}, Lg42;->e(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    if-eqz p3, :cond_4

    .line 139
    .line 140
    sget-object p1, Lg42;->s:Lgv7;

    .line 141
    .line 142
    invoke-virtual {p1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    check-cast p1, Ljava/lang/String;

    .line 147
    .line 148
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    :cond_4
    return-object v0

    .line 164
    :cond_5
    :goto_2
    sget-object p0, Lov2;->a:Lov2;

    .line 165
    .line 166
    return-object p0
.end method

.method public static k(Lq63;)Ljava/lang/String;
    .locals 4

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Lq63;->j()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0}, Lq63;->n()Lorg/swiftapps/filesystem/File$FileType;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lorg/swiftapps/filesystem/File$FileType;->getFile()Ljava/io/File;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    sget-object v1, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    .line 25
    .line 26
    filled-new-array {v1}, [Ljava/nio/file/LinkOption;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-class v2, Ljava/nio/file/attribute/PosixFileAttributes;

    .line 31
    .line 32
    invoke-static {v0, v2, v1}, Ljava/nio/file/Files;->readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Ljava/nio/file/attribute/PosixFileAttributes;

    .line 37
    .line 38
    invoke-interface {v0}, Ljava/nio/file/attribute/PosixFileAttributes;->group()Ljava/nio/file/attribute/GroupPrincipal;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-lez v1, :cond_0

    .line 51
    .line 52
    return-object v0

    .line 53
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v2, "Invalid gid for file="

    .line 56
    .line 57
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string p0, ", gid="

    .line 64
    .line 65
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 76
    .line 77
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw v0

    .line 85
    :cond_1
    const/4 v0, 0x0

    .line 86
    if-eqz p0, :cond_2

    .line 87
    .line 88
    invoke-virtual {p0}, Lq63;->j()Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    goto :goto_0

    .line 97
    :cond_2
    move-object v1, v0

    .line 98
    :goto_0
    const-string v2, "Can\'t fetch gid! file="

    .line 99
    .line 100
    const-string v3, ", exists="

    .line 101
    .line 102
    invoke-static {v2, p0, v3, v1}, Lq;->f(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    return-object v0
.end method

.method public static m(Z)Ljava/util/List;
    .locals 16

    .line 1
    invoke-static {}, Lg00;->r()Landroid/content/pm/PackageManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_5

    .line 18
    .line 19
    sget-object v3, Lvr6;->INSTANCE:Lvr6;

    .line 20
    .line 21
    const/4 v7, 0x4

    .line 22
    const/4 v8, 0x0

    .line 23
    const-string v10, "AppUtil: getInstalledApps"

    .line 24
    .line 25
    const-string v5, "No installed apps found, workaround search in progress"

    .line 26
    .line 27
    const/4 v6, 0x0

    .line 28
    move-object v4, v10

    .line 29
    invoke-static/range {v3 .. v8}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    :try_start_0
    sget-object v0, Lmp6;->a:Lmp6;

    .line 33
    .line 34
    sget-boolean v3, Lg42;->a:Z

    .line 35
    .line 36
    const-string v3, "AQIsN1o92HK2PiHRIgUdcveNkX5tzYs4UaCUq8vRmxDE8T5XIiwJvDgRTKaAzg=="

    .line 37
    .line 38
    invoke-static {v3}, Lg42;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    filled-new-array {v3}, [Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    sget-object v4, Lip6;->SHIZUKU:Lip6;

    .line 47
    .line 48
    invoke-virtual {v0, v3, v4}, Lmp6;->h([Ljava/lang/String;Lip6;)Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    new-instance v3, Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    if-eqz v4, :cond_2

    .line 66
    .line 67
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    check-cast v4, Ljava/lang/String;

    .line 72
    .line 73
    const-string v5, "package:"

    .line 74
    .line 75
    invoke-static {v4, v5, v1}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    const/4 v6, 0x0

    .line 80
    if-eqz v5, :cond_1

    .line 81
    .line 82
    const/16 v5, 0x8

    .line 83
    .line 84
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    if-lez v5, :cond_1

    .line 93
    .line 94
    move-object v6, v4

    .line 95
    goto :goto_1

    .line 96
    :catch_0
    move-exception v0

    .line 97
    move-object v12, v0

    .line 98
    goto :goto_3

    .line 99
    :cond_1
    :goto_1
    if-eqz v6, :cond_0

    .line 100
    .line 101
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    .line 106
    .line 107
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    if-eqz v3, :cond_4

    .line 119
    .line 120
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    check-cast v3, Ljava/lang/String;

    .line 125
    .line 126
    invoke-static {v1, v3}, Lg00;->q(ILjava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    if-eqz v3, :cond_3

    .line 131
    .line 132
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_4
    :try_start_1
    sget-object v9, Lvr6;->INSTANCE:Lvr6;

    .line 137
    .line 138
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .line 146
    .line 147
    const-string v2, "Found "

    .line 148
    .line 149
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    const-string v0, " packages using workaround"

    .line 156
    .line 157
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v11

    .line 164
    const/4 v13, 0x4

    .line 165
    const/4 v14, 0x0

    .line 166
    const/4 v12, 0x0

    .line 167
    invoke-static/range {v9 .. v14}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 168
    .line 169
    .line 170
    move-object v2, v4

    .line 171
    goto :goto_4

    .line 172
    :catch_1
    move-exception v0

    .line 173
    move-object v12, v0

    .line 174
    move-object v2, v4

    .line 175
    :goto_3
    sget-object v9, Lvr6;->INSTANCE:Lvr6;

    .line 176
    .line 177
    const/16 v14, 0x8

    .line 178
    .line 179
    const/4 v15, 0x0

    .line 180
    const-string v11, "Error while getting installed apps using workaround"

    .line 181
    .line 182
    const/4 v13, 0x0

    .line 183
    invoke-static/range {v9 .. v15}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    :cond_5
    :goto_4
    new-instance v0, Lll1;

    .line 187
    .line 188
    invoke-direct {v0, v2}, Lll1;-><init>(Ljava/lang/Iterable;)V

    .line 189
    .line 190
    .line 191
    new-instance v1, Lb00;

    .line 192
    .line 193
    move/from16 v2, p0

    .line 194
    .line 195
    invoke-direct {v1, v2}, Lb00;-><init>(Z)V

    .line 196
    .line 197
    .line 198
    new-instance v2, Lme3;

    .line 199
    .line 200
    const/4 v3, 0x1

    .line 201
    invoke-direct {v2, v0, v3, v1}, Lme3;-><init>(Lf77;ZLmt3;)V

    .line 202
    .line 203
    .line 204
    new-instance v0, Lnk;

    .line 205
    .line 206
    const/4 v1, 0x2

    .line 207
    invoke-direct {v0, v1}, Lnk;-><init>(I)V

    .line 208
    .line 209
    .line 210
    new-instance v1, Lq98;

    .line 211
    .line 212
    invoke-direct {v1, v2, v0}, Lq98;-><init>(Lf77;Lmt3;)V

    .line 213
    .line 214
    .line 215
    invoke-static {v1}, Lh77;->C0(Lf77;)Ljava/util/List;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    return-object v0
.end method

.method public static n(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-static {}, Lg00;->r()Landroid/content/pm/PackageManager;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 14
    .line 15
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    return-object p0

    .line 20
    :catch_0
    move-exception v0

    .line 21
    sget-object v1, Lvr6;->INSTANCE:Lvr6;

    .line 22
    .line 23
    invoke-static {v0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v2, "getInstalledPackageUid(non-root): "

    .line 28
    .line 29
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    const/4 v5, 0x4

    .line 34
    const/4 v6, 0x0

    .line 35
    const-string v2, "AppUtil"

    .line 36
    .line 37
    const/4 v4, 0x0

    .line 38
    invoke-static/range {v1 .. v6}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    sget-object v0, Lmp6;->a:Lmp6;

    .line 42
    .line 43
    invoke-static {}, Lmp6;->f()Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    const/4 v7, 0x0

    .line 48
    if-eqz v2, :cond_2

    .line 49
    .line 50
    sget-object v2, Lg42;->A:Lgv7;

    .line 51
    .line 52
    invoke-virtual {v2}, Lgv7;->getValue()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    check-cast v2, Ljava/lang/String;

    .line 57
    .line 58
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    const/4 v3, 0x1

    .line 63
    invoke-static {p0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-static {v2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    filled-new-array {p0}, [Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    sget-object v2, Lip6;->SHIZUKU:Lip6;

    .line 76
    .line 77
    invoke-virtual {v0, v3, p0, v2}, Lmp6;->j(Z[Ljava/lang/String;Lip6;)Ljava/util/List;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-static {p0}, Lel1;->U0(Ljava/util/List;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    check-cast p0, Ljava/lang/String;

    .line 86
    .line 87
    if-eqz p0, :cond_0

    .line 88
    .line 89
    invoke-static {p0}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    if-eqz p0, :cond_0

    .line 98
    .line 99
    const/16 v0, 0xa

    .line 100
    .line 101
    invoke-static {v0, p0}, Luq7;->W(ILjava/lang/String;)Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    goto :goto_0

    .line 106
    :cond_0
    move-object p0, v7

    .line 107
    :goto_0
    if-eqz p0, :cond_1

    .line 108
    .line 109
    return-object p0

    .line 110
    :cond_1
    const/4 v5, 0x4

    .line 111
    const/4 v6, 0x0

    .line 112
    const-string v2, "AppUtil"

    .line 113
    .line 114
    const-string v3, "Unable to get uid even with root access"

    .line 115
    .line 116
    const/4 v4, 0x0

    .line 117
    invoke-static/range {v1 .. v6}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    :cond_2
    return-object v7
.end method

.method public static o(Lq63;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0}, Lg00;->p(Lq63;I)Landroid/content/pm/PackageInfo;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    :goto_0
    const/4 p0, 0x0

    .line 14
    return-object p0

    .line 15
    :cond_1
    invoke-virtual {p0}, Lq63;->v()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {p0}, Lq63;->v()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    iput-object p0, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 26
    .line 27
    sget-object p0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 28
    .line 29
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {v0, p0}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0
.end method

.method public static p(Lq63;I)Landroid/content/pm/PackageInfo;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lq63;->b()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-static {}, Laq6;->c()Lz84;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Lq63;->v()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-interface {v0, p0, p1}, Lz84;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    :cond_0
    const/4 p0, 0x0

    .line 26
    return-object p0

    .line 27
    :cond_1
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 28
    .line 29
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p0}, Lq63;->v()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {v0, p0, p1}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0
.end method

.method public static q(ILjava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    :try_start_0
    invoke-static {}, Lg00;->r()Landroid/content/pm/PackageManager;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p1, p0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 9
    .line 10
    .line 11
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    return-object p0

    .line 13
    :catch_0
    :goto_0
    const/4 p0, 0x0

    .line 14
    return-object p0
.end method

.method public static r()Landroid/content/pm/PackageManager;
    .locals 1

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
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public static s(Ljava/util/Set;)Ljava/util/LinkedHashSet;
    .locals 8

    .line 1
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lkz4;->g:Lkz4;

    .line 7
    .line 8
    iget-object v1, v1, Ldv;->c:Lfk6;

    .line 9
    .line 10
    invoke-virtual {v1}, Lfk6;->a()Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_2

    .line 23
    .line 24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Lji;

    .line 29
    .line 30
    invoke-virtual {v2}, Lji;->isInstalled()Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-nez v3, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    new-instance v3, Lck;

    .line 38
    .line 39
    const/4 v4, 0x7

    .line 40
    invoke-direct {v3, v2, v4}, Lck;-><init>(Ljava/lang/Object;I)V

    .line 41
    .line 42
    .line 43
    const/16 v4, 0xc

    .line 44
    .line 45
    const-string v5, "AppUtil"

    .line 46
    .line 47
    const-string v6, "getPackageNamesForUids"

    .line 48
    .line 49
    const/4 v7, 0x0

    .line 50
    invoke-static {v5, v6, v7, v3, v4}, Lio4;->j(Ljava/lang/String;Ljava/lang/String;ZLbt3;I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    check-cast v3, Ljava/lang/Integer;

    .line 55
    .line 56
    if-eqz v3, :cond_0

    .line 57
    .line 58
    invoke-interface {p0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-eqz v3, :cond_0

    .line 63
    .line 64
    invoke-virtual {v2}, Lji;->getPackageName()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    return-object v0
.end method

.method public static t(Ljava/lang/String;)Ljava/util/LinkedHashSet;
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/16 v0, 0xf

    .line 5
    .line 6
    invoke-static {v0, p0}, Lg00;->q(ILjava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-eqz p0, :cond_8

    .line 11
    .line 12
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    new-instance v3, Ljava/util/ArrayList;

    .line 23
    .line 24
    array-length v4, v1

    .line 25
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 26
    .line 27
    .line 28
    array-length v4, v1

    .line 29
    move v5, v2

    .line 30
    :goto_0
    if-ge v5, v4, :cond_0

    .line 31
    .line 32
    aget-object v6, v1, v5

    .line 33
    .line 34
    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    add-int/lit8 v5, v5, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 43
    .line 44
    .line 45
    :cond_1
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    .line 46
    .line 47
    if-eqz v1, :cond_3

    .line 48
    .line 49
    new-instance v3, Ljava/util/ArrayList;

    .line 50
    .line 51
    array-length v4, v1

    .line 52
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 53
    .line 54
    .line 55
    array-length v4, v1

    .line 56
    move v5, v2

    .line 57
    :goto_1
    if-ge v5, v4, :cond_2

    .line 58
    .line 59
    aget-object v6, v1, v5

    .line 60
    .line 61
    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    add-int/lit8 v5, v5, 0x1

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_2
    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 70
    .line 71
    .line 72
    :cond_3
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    .line 73
    .line 74
    if-eqz v1, :cond_5

    .line 75
    .line 76
    new-instance v3, Ljava/util/ArrayList;

    .line 77
    .line 78
    array-length v4, v1

    .line 79
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 80
    .line 81
    .line 82
    array-length v4, v1

    .line 83
    move v5, v2

    .line 84
    :goto_2
    if-ge v5, v4, :cond_4

    .line 85
    .line 86
    aget-object v6, v1, v5

    .line 87
    .line 88
    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    add-int/lit8 v5, v5, 0x1

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_4
    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 97
    .line 98
    .line 99
    :cond_5
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    .line 100
    .line 101
    if-eqz p0, :cond_7

    .line 102
    .line 103
    new-instance v1, Ljava/util/ArrayList;

    .line 104
    .line 105
    array-length v3, p0

    .line 106
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 107
    .line 108
    .line 109
    array-length v3, p0

    .line 110
    :goto_3
    if-ge v2, v3, :cond_6

    .line 111
    .line 112
    aget-object v4, p0, v2

    .line 113
    .line 114
    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    .line 115
    .line 116
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    add-int/lit8 v2, v2, 0x1

    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_6
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 123
    .line 124
    .line 125
    :cond_7
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 126
    .line 127
    .line 128
    move-result p0

    .line 129
    if-nez p0, :cond_8

    .line 130
    .line 131
    return-object v0

    .line 132
    :cond_8
    const/4 p0, 0x0

    .line 133
    return-object p0
.end method

.method public static u(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Ljr7;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Ljr7;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v1, "[ -e @@ ]"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljr7;->b(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    sget-object v0, Lmp6;->a:Lmp6;

    .line 25
    .line 26
    sget-object v0, Lg42;->n:Lgv7;

    .line 27
    .line 28
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Ljava/lang/String;

    .line 33
    .line 34
    const/4 v1, 0x1

    .line 35
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    filled-new-array {p0}, [Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-static {p0}, Lmp6;->i([Ljava/lang/String;)Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-static {p0}, Lel1;->U0(Ljava/util/List;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    check-cast p0, Ljava/lang/String;

    .line 60
    .line 61
    return-object p0

    .line 62
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 63
    return-object p0
.end method

.method public static v(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x400

    .line 5
    .line 6
    invoke-static {v0, p0}, Lg00;->q(ILjava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const/4 v0, 0x0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz p0, :cond_2

    .line 13
    .line 14
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 15
    .line 16
    if-eqz p0, :cond_2

    .line 17
    .line 18
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    .line 19
    .line 20
    if-eqz p0, :cond_2

    .line 21
    .line 22
    new-instance v2, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    array-length v3, p0

    .line 28
    move v4, v0

    .line 29
    :goto_0
    if-ge v4, v3, :cond_1

    .line 30
    .line 31
    aget-object v5, p0, v4

    .line 32
    .line 33
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    const-string v6, "/data/app/"

    .line 37
    .line 38
    invoke-static {v5, v6, v0}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    if-eqz v6, :cond_0

    .line 43
    .line 44
    const-string v6, ".apk"

    .line 45
    .line 46
    invoke-static {v5, v6, v0}, Luq7;->O(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    if-eqz v6, :cond_0

    .line 51
    .line 52
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    if-nez p0, :cond_2

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    move-object v2, v1

    .line 66
    :goto_1
    if-nez v2, :cond_3

    .line 67
    .line 68
    goto :goto_5

    .line 69
    :cond_3
    new-instance p0, Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    if-eqz v3, :cond_7

    .line 83
    .line 84
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    check-cast v3, Ljava/lang/String;

    .line 89
    .line 90
    new-instance v4, Lq63;

    .line 91
    .line 92
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    const/4 v5, 0x1

    .line 96
    invoke-direct {v4, v3, v5}, Lq63;-><init>(Ljava/lang/String;I)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v4}, Lq63;->j()Z

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    if-eqz v5, :cond_4

    .line 104
    .line 105
    goto :goto_3

    .line 106
    :cond_4
    move-object v4, v1

    .line 107
    :goto_3
    if-nez v4, :cond_5

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_5
    invoke-static {v4, v0}, Lg00;->p(Lq63;I)Landroid/content/pm/PackageInfo;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    if-nez v4, :cond_6

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_6
    new-instance v5, Lyc7;

    .line 118
    .line 119
    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 120
    .line 121
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    .line 123
    .line 124
    invoke-direct {v5, v4, v3}, Lyc7;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    .line 132
    .line 133
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    :cond_8
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    if-eqz v2, :cond_9

    .line 145
    .line 146
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    move-object v3, v2

    .line 151
    check-cast v3, Lyc7;

    .line 152
    .line 153
    invoke-virtual {v3}, Lyc7;->isValid()Z

    .line 154
    .line 155
    .line 156
    move-result v3

    .line 157
    if-eqz v3, :cond_8

    .line 158
    .line 159
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    goto :goto_4

    .line 163
    :cond_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 164
    .line 165
    .line 166
    move-result p0

    .line 167
    if-nez p0, :cond_a

    .line 168
    .line 169
    return-object v0

    .line 170
    :cond_a
    :goto_5
    return-object v1
.end method

.method public static w(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "org.swiftapps.swiftbackup"

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {p0, v0, v1}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    const-string v0, "com.topjohnwu.magisk"

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return v1

    .line 23
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 24
    return p0
.end method

.method public static x()Z
    .locals 1

    .line 1
    sget-object v0, Lg00;->b:Lgv7;

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
    return v0
.end method

.method public static y(Landroid/content/pm/PackageInfo;)Z
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    and-int/2addr v0, v1

    .line 13
    if-nez v0, :cond_3

    .line 14
    .line 15
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    .line 16
    .line 17
    const-string v0, "android.uid.system"

    .line 18
    .line 19
    invoke-static {p0, v0}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-eqz p0, :cond_2

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 27
    return p0

    .line 28
    :cond_3
    :goto_1
    return v1
.end method

.method public static z(Landroid/content/pm/PackageInfo;Z)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lb67;->b()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isResourceOverlay()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-ne v1, v3, :cond_0

    .line 26
    .line 27
    :goto_0
    move v1, v3

    .line 28
    goto :goto_5

    .line 29
    :cond_0
    :goto_1
    move v1, v2

    .line 30
    goto :goto_5

    .line 31
    :cond_1
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    const-string v4, "withOMS"

    .line 37
    .line 38
    invoke-static {v1, v4, v2}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    const-string v4, "overlayTarget"

    .line 50
    .line 51
    invoke-static {v1, v4}, Ltu0;->m(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    if-nez v1, :cond_3

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_3
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Ljava/lang/String;

    .line 63
    .line 64
    if-eqz v1, :cond_5

    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 67
    .line 68
    .line 69
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    if-nez v1, :cond_4

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_4
    move v1, v2

    .line 74
    goto :goto_3

    .line 75
    :catch_0
    move-exception v1

    .line 76
    goto :goto_4

    .line 77
    :cond_5
    :goto_2
    move v1, v3

    .line 78
    :goto_3
    xor-int/2addr v1, v3

    .line 79
    goto :goto_5

    .line 80
    :goto_4
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    const-string v4, "isOverlay: "

    .line 85
    .line 86
    const-string v5, "AppUtil"

    .line 87
    .line 88
    invoke-static {v4, v1, v5}, Lu48;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :goto_5
    if-nez v1, :cond_7

    .line 93
    .line 94
    invoke-static {v0}, Lg00;->w(Ljava/lang/String;)Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-nez v1, :cond_7

    .line 99
    .line 100
    sget-object v1, Lgs0;->a:Lgs0;

    .line 101
    .line 102
    sget-object v1, Lis0;->Hide:Lis0;

    .line 103
    .line 104
    invoke-static {v0, v1}, Lgs0;->c(Ljava/lang/String;Lis0;)Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-nez v1, :cond_7

    .line 109
    .line 110
    if-nez p1, :cond_6

    .line 111
    .line 112
    invoke-static {p0}, Lg00;->y(Landroid/content/pm/PackageInfo;)Z

    .line 113
    .line 114
    .line 115
    move-result p0

    .line 116
    if-nez p0, :cond_7

    .line 117
    .line 118
    :cond_6
    sget-object p0, Lmp6;->i:Ljava/lang/String;

    .line 119
    .line 120
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result p0

    .line 124
    if-eqz p0, :cond_8

    .line 125
    .line 126
    :cond_7
    move v2, v3

    .line 127
    :cond_8
    xor-int/lit8 p0, v2, 0x1

    .line 128
    .line 129
    return p0
.end method


# virtual methods
.method public final l(Z)Lc00;
    .locals 31

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    if-nez v0, :cond_2a

    .line 15
    .line 16
    new-instance v0, Lq63;

    .line 17
    .line 18
    sget-object v2, Lry5;->u:Ljava/lang/String;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-static {v2, v1}, Lqy5;->f(ZLzn7;)Lry5;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    iget-object v3, v3, Lry5;->b:Ljava/lang/String;

    .line 26
    .line 27
    const/4 v4, 0x2

    .line 28
    invoke-direct {v0, v3, v4}, Lq63;-><init>(Ljava/lang/String;I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lq63;->B()Ljava/util/ArrayList;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const/4 v3, 0x1

    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    new-instance v5, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    if-eqz v6, :cond_1

    .line 52
    .line 53
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    move-object v7, v6

    .line 58
    check-cast v7, Lq63;

    .line 59
    .line 60
    invoke-virtual {v7}, Lq63;->x()Z

    .line 61
    .line 62
    .line 63
    move-result v7

    .line 64
    if-eqz v7, :cond_0

    .line 65
    .line 66
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-nez v0, :cond_2

    .line 75
    .line 76
    move-object v6, v5

    .line 77
    goto :goto_1

    .line 78
    :cond_2
    move-object v6, v1

    .line 79
    :goto_1
    if-eqz v6, :cond_3

    .line 80
    .line 81
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 82
    .line 83
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    new-instance v10, Lrx;

    .line 88
    .line 89
    invoke-direct {v10, v3}, Lrx;-><init>(I)V

    .line 90
    .line 91
    .line 92
    const/16 v11, 0x1f

    .line 93
    .line 94
    const/4 v7, 0x0

    .line 95
    const/4 v8, 0x0

    .line 96
    const/4 v9, 0x0

    .line 97
    invoke-static/range {v6 .. v11}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v6

    .line 101
    new-instance v7, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string v5, " directories in accounts folder: "

    .line 110
    .line 111
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v9

    .line 121
    const/4 v11, 0x4

    .line 122
    const/4 v12, 0x0

    .line 123
    const-string v8, "AppUtil"

    .line 124
    .line 125
    const/4 v10, 0x0

    .line 126
    move-object v7, v0

    .line 127
    invoke-static/range {v7 .. v12}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    :cond_3
    new-instance v5, Lq63;

    .line 131
    .line 132
    sget-object v0, Lry5;->u:Ljava/lang/String;

    .line 133
    .line 134
    invoke-static {v2, v1}, Lqy5;->f(ZLzn7;)Lry5;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    iget-object v0, v0, Lry5;->g:Ljava/lang/String;

    .line 139
    .line 140
    invoke-direct {v5, v0, v4}, Lq63;-><init>(Ljava/lang/String;I)V

    .line 141
    .line 142
    .line 143
    new-instance v6, Lq63;

    .line 144
    .line 145
    invoke-static {v2, v1}, Lqy5;->f(ZLzn7;)Lry5;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    iget-object v0, v0, Lry5;->f:Ljava/lang/String;

    .line 150
    .line 151
    const-string v7, "local_archived/"

    .line 152
    .line 153
    invoke-static {v0, v7}, Leq3;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-direct {v6, v0, v4}, Lq63;-><init>(Ljava/lang/String;I)V

    .line 158
    .line 159
    .line 160
    new-instance v0, Ljava/util/ArrayList;

    .line 161
    .line 162
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .line 164
    .line 165
    filled-new-array {v5, v6}, [Lq63;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    invoke-static {v4}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 170
    .line 171
    .line 172
    move-result-object v4

    .line 173
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 174
    .line 175
    .line 176
    move-result-object v4

    .line 177
    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 178
    .line 179
    .line 180
    move-result v7

    .line 181
    if-eqz v7, :cond_9

    .line 182
    .line 183
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v7

    .line 187
    check-cast v7, Lq63;

    .line 188
    .line 189
    invoke-virtual {v7}, Lq63;->j()Z

    .line 190
    .line 191
    .line 192
    move-result v8

    .line 193
    if-eqz v8, :cond_5

    .line 194
    .line 195
    goto :goto_3

    .line 196
    :cond_5
    move-object v7, v1

    .line 197
    :goto_3
    if-eqz v7, :cond_4

    .line 198
    .line 199
    invoke-virtual {v7}, Lq63;->B()Ljava/util/ArrayList;

    .line 200
    .line 201
    .line 202
    move-result-object v7

    .line 203
    if-eqz v7, :cond_4

    .line 204
    .line 205
    new-instance v8, Ljava/util/ArrayList;

    .line 206
    .line 207
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 211
    .line 212
    .line 213
    move-result-object v7

    .line 214
    :cond_6
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 215
    .line 216
    .line 217
    move-result v9

    .line 218
    if-eqz v9, :cond_7

    .line 219
    .line 220
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v9

    .line 224
    move-object v10, v9

    .line 225
    check-cast v10, Lq63;

    .line 226
    .line 227
    invoke-virtual {v10}, Lq63;->y()Z

    .line 228
    .line 229
    .line 230
    move-result v11

    .line 231
    if-eqz v11, :cond_6

    .line 232
    .line 233
    invoke-virtual {v10}, Lq63;->m()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v10

    .line 237
    const-string v11, "xml"

    .line 238
    .line 239
    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    move-result v10

    .line 243
    if-eqz v10, :cond_6

    .line 244
    .line 245
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    goto :goto_4

    .line 249
    :cond_7
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    .line 250
    .line 251
    .line 252
    move-result v7

    .line 253
    if-nez v7, :cond_8

    .line 254
    .line 255
    goto :goto_5

    .line 256
    :cond_8
    move-object v8, v1

    .line 257
    :goto_5
    if-eqz v8, :cond_4

    .line 258
    .line 259
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 260
    .line 261
    .line 262
    goto :goto_2

    .line 263
    :cond_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 264
    .line 265
    .line 266
    move-result v4

    .line 267
    if-nez v4, :cond_1b

    .line 268
    .line 269
    const-string v4, " to "

    .line 270
    .line 271
    const-string v7, "Error while moving file "

    .line 272
    .line 273
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 274
    .line 275
    .line 276
    move-result v8

    .line 277
    const-string v9, "Migrating local backup files for "

    .line 278
    .line 279
    const-string v10, " apps."

    .line 280
    .line 281
    invoke-static {v8, v9, v10}, Lxs1;->h(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v13

    .line 285
    sget-object v11, Lvr6;->INSTANCE:Lvr6;

    .line 286
    .line 287
    const/4 v15, 0x4

    .line 288
    const/16 v16, 0x0

    .line 289
    .line 290
    const-string v18, "MigrationV5"

    .line 291
    .line 292
    const/4 v14, 0x0

    .line 293
    move-object/from16 v12, v18

    .line 294
    .line 295
    invoke-static/range {v11 .. v16}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 296
    .line 297
    .line 298
    new-instance v9, Ljava/util/ArrayList;

    .line 299
    .line 300
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 304
    .line 305
    .line 306
    move-result-object v10

    .line 307
    move v0, v2

    .line 308
    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 309
    .line 310
    .line 311
    move-result v11

    .line 312
    sget-object v12, Lg00;->c:Lex6;

    .line 313
    .line 314
    if-eqz v11, :cond_1a

    .line 315
    .line 316
    add-int/lit8 v11, v0, 0x1

    .line 317
    .line 318
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    check-cast v0, Lq63;

    .line 323
    .line 324
    new-instance v14, Lf00;

    .line 325
    .line 326
    invoke-direct {v14, v11, v8, v13}, Lf00;-><init>(IILjava/lang/String;)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v12, v14}, Lzy4;->i(Ljava/lang/Object;)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {v0}, Lq63;->q()Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v15

    .line 336
    :try_start_0
    invoke-static {v0}, Lcu;->b(Lq63;)Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;

    .line 337
    .line 338
    .line 339
    move-result-object v16

    .line 340
    if-nez v16, :cond_a

    .line 341
    .line 342
    move-object/from16 v24, v6

    .line 343
    .line 344
    move/from16 v25, v8

    .line 345
    .line 346
    move-object/from16 v26, v9

    .line 347
    .line 348
    move-object/from16 v27, v10

    .line 349
    .line 350
    move-object v9, v4

    .line 351
    goto/16 :goto_1e

    .line 352
    .line 353
    :cond_a
    invoke-virtual/range {v16 .. v16}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getDateBackup()Ljava/lang/Long;

    .line 354
    .line 355
    .line 356
    move-result-object v16

    .line 357
    if-eqz v16, :cond_b

    .line 358
    .line 359
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    .line 360
    .line 361
    .line 362
    move-result-wide v16

    .line 363
    :goto_7
    move-object/from16 v23, v4

    .line 364
    .line 365
    move-wide/from16 v3, v16

    .line 366
    .line 367
    goto :goto_8

    .line 368
    :catchall_0
    move-exception v0

    .line 369
    move-object/from16 v24, v6

    .line 370
    .line 371
    move/from16 v25, v8

    .line 372
    .line 373
    move-object/from16 v26, v9

    .line 374
    .line 375
    move-object/from16 v27, v10

    .line 376
    .line 377
    move-object v9, v4

    .line 378
    goto/16 :goto_1d

    .line 379
    .line 380
    :cond_b
    invoke-virtual {v0}, Lq63;->z()J

    .line 381
    .line 382
    .line 383
    move-result-wide v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 384
    goto :goto_7

    .line 385
    :goto_8
    :try_start_1
    invoke-virtual {v0}, Lq63;->t()Lq63;

    .line 386
    .line 387
    .line 388
    move-result-object v1

    .line 389
    if-eqz v1, :cond_c

    .line 390
    .line 391
    new-instance v2, Ljava/lang/StringBuilder;

    .line 392
    .line 393
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 394
    .line 395
    .line 396
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    .line 398
    .line 399
    move-object/from16 v17, v0

    .line 400
    .line 401
    const-string v0, ".app"

    .line 402
    .line 403
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    .line 405
    .line 406
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v0

    .line 410
    invoke-virtual {v1, v0}, Lq63;->J(Ljava/lang/String;)Lq63;

    .line 411
    .line 412
    .line 413
    move-result-object v0

    .line 414
    move-object/from16 v24, v0

    .line 415
    .line 416
    goto :goto_b

    .line 417
    :catchall_1
    move-exception v0

    .line 418
    :goto_9
    move-object/from16 v24, v6

    .line 419
    .line 420
    move/from16 v25, v8

    .line 421
    .line 422
    move-object/from16 v26, v9

    .line 423
    .line 424
    move-object/from16 v27, v10

    .line 425
    .line 426
    :goto_a
    move-object/from16 v9, v23

    .line 427
    .line 428
    goto/16 :goto_1d

    .line 429
    .line 430
    :cond_c
    move-object/from16 v17, v0

    .line 431
    .line 432
    const/16 v24, 0x0

    .line 433
    .line 434
    :goto_b
    invoke-virtual/range {v17 .. v17}, Lq63;->t()Lq63;

    .line 435
    .line 436
    .line 437
    move-result-object v0

    .line 438
    if-eqz v0, :cond_d

    .line 439
    .line 440
    new-instance v1, Ljava/lang/StringBuilder;

    .line 441
    .line 442
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 443
    .line 444
    .line 445
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    .line 447
    .line 448
    const-string v2, ".splits"

    .line 449
    .line 450
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    .line 452
    .line 453
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 454
    .line 455
    .line 456
    move-result-object v1

    .line 457
    invoke-virtual {v0, v1}, Lq63;->J(Ljava/lang/String;)Lq63;

    .line 458
    .line 459
    .line 460
    move-result-object v0

    .line 461
    move-object/from16 v25, v0

    .line 462
    .line 463
    goto :goto_c

    .line 464
    :cond_d
    const/16 v25, 0x0

    .line 465
    .line 466
    :goto_c
    invoke-virtual/range {v17 .. v17}, Lq63;->t()Lq63;

    .line 467
    .line 468
    .line 469
    move-result-object v0

    .line 470
    if-eqz v0, :cond_e

    .line 471
    .line 472
    new-instance v1, Ljava/lang/StringBuilder;

    .line 473
    .line 474
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 475
    .line 476
    .line 477
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    .line 479
    .line 480
    const-string v2, ".dat"

    .line 481
    .line 482
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    .line 484
    .line 485
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 486
    .line 487
    .line 488
    move-result-object v1

    .line 489
    invoke-virtual {v0, v1}, Lq63;->J(Ljava/lang/String;)Lq63;

    .line 490
    .line 491
    .line 492
    move-result-object v0

    .line 493
    move-object/from16 v26, v0

    .line 494
    .line 495
    goto :goto_d

    .line 496
    :cond_e
    const/16 v26, 0x0

    .line 497
    .line 498
    :goto_d
    invoke-virtual/range {v17 .. v17}, Lq63;->t()Lq63;

    .line 499
    .line 500
    .line 501
    move-result-object v0

    .line 502
    if-eqz v0, :cond_f

    .line 503
    .line 504
    new-instance v1, Ljava/lang/StringBuilder;

    .line 505
    .line 506
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 507
    .line 508
    .line 509
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    .line 511
    .line 512
    const-string v2, ".extdat"

    .line 513
    .line 514
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    .line 516
    .line 517
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 518
    .line 519
    .line 520
    move-result-object v1

    .line 521
    invoke-virtual {v0, v1}, Lq63;->J(Ljava/lang/String;)Lq63;

    .line 522
    .line 523
    .line 524
    move-result-object v0

    .line 525
    move-object/from16 v27, v0

    .line 526
    .line 527
    goto :goto_e

    .line 528
    :cond_f
    const/16 v27, 0x0

    .line 529
    .line 530
    :goto_e
    invoke-virtual/range {v17 .. v17}, Lq63;->t()Lq63;

    .line 531
    .line 532
    .line 533
    move-result-object v0

    .line 534
    if-eqz v0, :cond_10

    .line 535
    .line 536
    new-instance v1, Ljava/lang/StringBuilder;

    .line 537
    .line 538
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 539
    .line 540
    .line 541
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    .line 543
    .line 544
    const-string v2, ".exp"

    .line 545
    .line 546
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    .line 548
    .line 549
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 550
    .line 551
    .line 552
    move-result-object v1

    .line 553
    invoke-virtual {v0, v1}, Lq63;->J(Ljava/lang/String;)Lq63;

    .line 554
    .line 555
    .line 556
    move-result-object v0

    .line 557
    move-object/from16 v28, v0

    .line 558
    .line 559
    goto :goto_f

    .line 560
    :cond_10
    const/16 v28, 0x0

    .line 561
    .line 562
    :goto_f
    invoke-virtual/range {v17 .. v17}, Lq63;->t()Lq63;

    .line 563
    .line 564
    .line 565
    move-result-object v0

    .line 566
    if-eqz v0, :cond_11

    .line 567
    .line 568
    new-instance v1, Ljava/lang/StringBuilder;

    .line 569
    .line 570
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 571
    .line 572
    .line 573
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    .line 575
    .line 576
    const-string v2, ".med"

    .line 577
    .line 578
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    .line 580
    .line 581
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 582
    .line 583
    .line 584
    move-result-object v1

    .line 585
    invoke-virtual {v0, v1}, Lq63;->J(Ljava/lang/String;)Lq63;

    .line 586
    .line 587
    .line 588
    move-result-object v0

    .line 589
    move-object/from16 v29, v0

    .line 590
    .line 591
    goto :goto_10

    .line 592
    :cond_11
    const/16 v29, 0x0

    .line 593
    .line 594
    :goto_10
    invoke-virtual/range {v17 .. v17}, Lq63;->t()Lq63;

    .line 595
    .line 596
    .line 597
    move-result-object v0

    .line 598
    if-eqz v0, :cond_12

    .line 599
    .line 600
    new-instance v1, Ljava/lang/StringBuilder;

    .line 601
    .line 602
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 603
    .line 604
    .line 605
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    .line 607
    .line 608
    const-string v2, ".xml"

    .line 609
    .line 610
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    .line 612
    .line 613
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 614
    .line 615
    .line 616
    move-result-object v1

    .line 617
    invoke-virtual {v0, v1}, Lq63;->J(Ljava/lang/String;)Lq63;

    .line 618
    .line 619
    .line 620
    move-result-object v0

    .line 621
    move-object/from16 v30, v0

    .line 622
    .line 623
    goto :goto_11

    .line 624
    :cond_12
    const/16 v30, 0x0

    .line 625
    .line 626
    :goto_11
    filled-new-array/range {v24 .. v30}, [Lq63;

    .line 627
    .line 628
    .line 629
    move-result-object v0

    .line 630
    invoke-static {v0}, Lx50;->p0([Ljava/lang/Object;)Ljava/util/List;

    .line 631
    .line 632
    .line 633
    move-result-object v0

    .line 634
    new-instance v1, Ljava/util/ArrayList;

    .line 635
    .line 636
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 637
    .line 638
    .line 639
    check-cast v0, Ljava/util/ArrayList;

    .line 640
    .line 641
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 642
    .line 643
    .line 644
    move-result-object v0

    .line 645
    :cond_13
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 646
    .line 647
    .line 648
    move-result v2

    .line 649
    if-eqz v2, :cond_14

    .line 650
    .line 651
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 652
    .line 653
    .line 654
    move-result-object v2

    .line 655
    move-object/from16 v17, v2

    .line 656
    .line 657
    check-cast v17, Lq63;

    .line 658
    .line 659
    invoke-virtual/range {v17 .. v17}, Lq63;->j()Z

    .line 660
    .line 661
    .line 662
    move-result v17

    .line 663
    if-eqz v17, :cond_13

    .line 664
    .line 665
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 666
    .line 667
    .line 668
    goto :goto_12

    .line 669
    :cond_14
    new-instance v2, Lhk;

    .line 670
    .line 671
    sget-object v0, Lhk;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 672
    .line 673
    invoke-static {v3, v4, v9}, Lfk;->d(JLjava/util/List;)Ljava/lang/String;

    .line 674
    .line 675
    .line 676
    move-result-object v0

    .line 677
    const/4 v3, 0x0

    .line 678
    invoke-direct {v2, v0, v15, v3}, Lhk;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 679
    .line 680
    .line 681
    invoke-virtual {v2}, Lhk;->e()Lq63;

    .line 682
    .line 683
    .line 684
    move-result-object v0

    .line 685
    invoke-static {v0}, Lq63;->E(Lq63;)Z

    .line 686
    .line 687
    .line 688
    iget-object v0, v2, Lhk;->H:Lgv7;

    .line 689
    .line 690
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 691
    .line 692
    .line 693
    move-result-object v0

    .line 694
    check-cast v0, Ljava/lang/String;

    .line 695
    .line 696
    if-eqz v0, :cond_15

    .line 697
    .line 698
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 699
    .line 700
    .line 701
    :cond_15
    sget-object v17, Lvr6;->INSTANCE:Lvr6;

    .line 702
    .line 703
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 704
    .line 705
    .line 706
    move-result v0

    .line 707
    invoke-virtual {v2}, Lhk;->e()Lq63;

    .line 708
    .line 709
    .line 710
    move-result-object v3

    .line 711
    new-instance v4, Ljava/lang/StringBuilder;

    .line 712
    .line 713
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 714
    .line 715
    .line 716
    move-object/from16 v24, v1

    .line 717
    .line 718
    const-string v1, "Moving "

    .line 719
    .line 720
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 721
    .line 722
    .line 723
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 724
    .line 725
    .line 726
    const-string v0, " backup files for package \'"

    .line 727
    .line 728
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 729
    .line 730
    .line 731
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 732
    .line 733
    .line 734
    const-string v0, "\' to directory "

    .line 735
    .line 736
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 737
    .line 738
    .line 739
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 740
    .line 741
    .line 742
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 743
    .line 744
    .line 745
    move-result-object v19

    .line 746
    const/16 v21, 0x4

    .line 747
    .line 748
    const/16 v22, 0x0

    .line 749
    .line 750
    const/16 v20, 0x0

    .line 751
    .line 752
    invoke-static/range {v17 .. v22}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 753
    .line 754
    .line 755
    move-object/from16 v1, v18

    .line 756
    .line 757
    :try_start_2
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 758
    .line 759
    .line 760
    move-result-object v3

    .line 761
    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 762
    .line 763
    .line 764
    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_e

    .line 765
    if-eqz v0, :cond_19

    .line 766
    .line 767
    :try_start_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 768
    .line 769
    .line 770
    move-result-object v0

    .line 771
    move-object v4, v0

    .line 772
    check-cast v4, Lq63;

    .line 773
    .line 774
    move-object/from16 v17, v2

    .line 775
    .line 776
    move-object/from16 v18, v3

    .line 777
    .line 778
    invoke-virtual {v4}, Lq63;->A()J

    .line 779
    .line 780
    .line 781
    move-result-wide v2

    .line 782
    invoke-virtual/range {v17 .. v17}, Lhk;->e()Lq63;

    .line 783
    .line 784
    .line 785
    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_c

    .line 786
    move-object/from16 v24, v6

    .line 787
    .line 788
    :try_start_4
    invoke-virtual {v4}, Lq63;->p()Ljava/lang/String;

    .line 789
    .line 790
    .line 791
    move-result-object v6

    .line 792
    invoke-virtual {v0, v6}, Lq63;->J(Ljava/lang/String;)Lq63;

    .line 793
    .line 794
    .line 795
    move-result-object v6

    .line 796
    invoke-virtual {v4}, Lq63;->p()Ljava/lang/String;

    .line 797
    .line 798
    .line 799
    move-result-object v0

    .line 800
    sget-object v19, Lp93;->a:Lp93;

    .line 801
    .line 802
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 803
    .line 804
    .line 805
    move-result-object v19
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_b

    .line 806
    move/from16 v25, v8

    .line 807
    .line 808
    :try_start_5
    invoke-static/range {v19 .. v19}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 809
    .line 810
    .line 811
    move-result-object v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_a

    .line 812
    move-object/from16 v26, v9

    .line 813
    .line 814
    :try_start_6
    new-instance v9, Ljava/lang/StringBuilder;

    .line 815
    .line 816
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 817
    .line 818
    .line 819
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 820
    .line 821
    .line 822
    const-string v0, "\n("

    .line 823
    .line 824
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 825
    .line 826
    .line 827
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 828
    .line 829
    .line 830
    const-string v0, ")"

    .line 831
    .line 832
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 833
    .line 834
    .line 835
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 836
    .line 837
    .line 838
    move-result-object v0

    .line 839
    new-instance v8, Ljava/lang/StringBuilder;

    .line 840
    .line 841
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 842
    .line 843
    .line 844
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 845
    .line 846
    .line 847
    const-string v9, "\n\n"

    .line 848
    .line 849
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 850
    .line 851
    .line 852
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 853
    .line 854
    .line 855
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 856
    .line 857
    .line 858
    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_9

    .line 859
    :try_start_7
    iget v8, v14, Lf00;->a:I

    .line 860
    .line 861
    iget v9, v14, Lf00;->b:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_8

    .line 862
    .line 863
    move-object/from16 v27, v10

    .line 864
    .line 865
    :try_start_8
    new-instance v10, Lf00;

    .line 866
    .line 867
    invoke-direct {v10, v8, v9, v0}, Lf00;-><init>(IILjava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    .line 868
    .line 869
    .line 870
    :try_start_9
    invoke-virtual {v12, v10}, Lzy4;->i(Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 871
    .line 872
    .line 873
    :try_start_a
    invoke-virtual {v4, v6}, Lq63;->I(Lq63;)Z

    .line 874
    .line 875
    .line 876
    move-result v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 877
    move-object/from16 v9, v23

    .line 878
    .line 879
    goto :goto_14

    .line 880
    :catchall_2
    move-exception v0

    .line 881
    move-object/from16 v18, v1

    .line 882
    .line 883
    goto/16 :goto_a

    .line 884
    .line 885
    :catch_0
    move-exception v0

    .line 886
    :try_start_b
    invoke-static {v0}, Lyc9;->g0(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 887
    .line 888
    .line 889
    move-result-object v0

    .line 890
    new-instance v8, Ljava/lang/StringBuilder;

    .line 891
    .line 892
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 893
    .line 894
    .line 895
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 896
    .line 897
    .line 898
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 899
    .line 900
    .line 901
    move-object/from16 v9, v23

    .line 902
    .line 903
    :try_start_c
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 904
    .line 905
    .line 906
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 907
    .line 908
    .line 909
    const-string v10, ": "

    .line 910
    .line 911
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 912
    .line 913
    .line 914
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 915
    .line 916
    .line 917
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 918
    .line 919
    .line 920
    move-result-object v0

    .line 921
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 922
    .line 923
    .line 924
    const/4 v0, 0x0

    .line 925
    :goto_14
    if-eqz v0, :cond_16

    .line 926
    .line 927
    :try_start_d
    invoke-virtual {v4}, Lq63;->p()Ljava/lang/String;

    .line 928
    .line 929
    .line 930
    move-result-object v0

    .line 931
    new-instance v8, Ljava/lang/StringBuilder;

    .line 932
    .line 933
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 934
    .line 935
    .line 936
    const-string v10, "Moved successful for file "

    .line 937
    .line 938
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 939
    .line 940
    .line 941
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 942
    .line 943
    .line 944
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 945
    .line 946
    .line 947
    move-result-object v0

    .line 948
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 949
    .line 950
    .line 951
    :goto_15
    move-object v8, v1

    .line 952
    goto :goto_16

    .line 953
    :catchall_3
    move-exception v0

    .line 954
    move-object/from16 v18, v1

    .line 955
    .line 956
    goto/16 :goto_1d

    .line 957
    .line 958
    :cond_16
    :try_start_e
    new-instance v0, Ljava/lang/StringBuilder;

    .line 959
    .line 960
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 961
    .line 962
    .line 963
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 964
    .line 965
    .line 966
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 967
    .line 968
    .line 969
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 970
    .line 971
    .line 972
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 973
    .line 974
    .line 975
    const-string v8, ". Copying the file instead..."

    .line 976
    .line 977
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 978
    .line 979
    .line 980
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 981
    .line 982
    .line 983
    move-result-object v0

    .line 984
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    .line 986
    .line 987
    const/4 v8, 0x0

    .line 988
    invoke-virtual {v4, v6, v8}, Lq63;->d(Lq63;Lkl;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 989
    .line 990
    .line 991
    goto :goto_15

    .line 992
    :goto_16
    :try_start_f
    invoke-virtual {v6}, Lq63;->A()J

    .line 993
    .line 994
    .line 995
    move-result-wide v0

    .line 996
    cmp-long v6, v2, v0

    .line 997
    .line 998
    if-nez v6, :cond_18

    .line 999
    .line 1000
    invoke-virtual {v4}, Lq63;->j()Z

    .line 1001
    .line 1002
    .line 1003
    move-result v0

    .line 1004
    if-eqz v0, :cond_17

    .line 1005
    .line 1006
    invoke-virtual {v4}, Lq63;->h()Z

    .line 1007
    .line 1008
    .line 1009
    goto :goto_18

    .line 1010
    :catchall_4
    move-exception v0

    .line 1011
    :goto_17
    move-object/from16 v18, v8

    .line 1012
    .line 1013
    goto/16 :goto_1d

    .line 1014
    .line 1015
    :cond_17
    :goto_18
    move-object v1, v8

    .line 1016
    move-object/from16 v23, v9

    .line 1017
    .line 1018
    move-object/from16 v2, v17

    .line 1019
    .line 1020
    move-object/from16 v3, v18

    .line 1021
    .line 1022
    move-object/from16 v6, v24

    .line 1023
    .line 1024
    move/from16 v8, v25

    .line 1025
    .line 1026
    move-object/from16 v9, v26

    .line 1027
    .line 1028
    move-object/from16 v10, v27

    .line 1029
    .line 1030
    goto/16 :goto_13

    .line 1031
    .line 1032
    :cond_18
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1033
    .line 1034
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1035
    .line 1036
    .line 1037
    const-string v6, "Mismatch between src and dest length: src: "

    .line 1038
    .line 1039
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1040
    .line 1041
    .line 1042
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1043
    .line 1044
    .line 1045
    const-string v2, ", dest: "

    .line 1046
    .line 1047
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1048
    .line 1049
    .line 1050
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1051
    .line 1052
    .line 1053
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1054
    .line 1055
    .line 1056
    move-result-object v0

    .line 1057
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 1058
    .line 1059
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1060
    .line 1061
    .line 1062
    move-result-object v0

    .line 1063
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1064
    .line 1065
    .line 1066
    throw v1

    .line 1067
    :catchall_5
    move-exception v0

    .line 1068
    :goto_19
    move-object v8, v1

    .line 1069
    goto :goto_17

    .line 1070
    :catchall_6
    move-exception v0

    .line 1071
    move-object v8, v1

    .line 1072
    :goto_1a
    move-object/from16 v9, v23

    .line 1073
    .line 1074
    goto :goto_17

    .line 1075
    :catchall_7
    move-exception v0

    .line 1076
    move-object v8, v1

    .line 1077
    goto :goto_1a

    .line 1078
    :catchall_8
    move-exception v0

    .line 1079
    move-object v8, v1

    .line 1080
    move-object/from16 v27, v10

    .line 1081
    .line 1082
    goto :goto_1a

    .line 1083
    :catchall_9
    move-exception v0

    .line 1084
    move-object v8, v1

    .line 1085
    :goto_1b
    move-object/from16 v27, v10

    .line 1086
    .line 1087
    goto :goto_1a

    .line 1088
    :catchall_a
    move-exception v0

    .line 1089
    move-object v8, v1

    .line 1090
    move-object/from16 v26, v9

    .line 1091
    .line 1092
    goto :goto_1b

    .line 1093
    :catchall_b
    move-exception v0

    .line 1094
    :goto_1c
    move/from16 v25, v8

    .line 1095
    .line 1096
    move-object/from16 v26, v9

    .line 1097
    .line 1098
    move-object/from16 v27, v10

    .line 1099
    .line 1100
    move-object/from16 v9, v23

    .line 1101
    .line 1102
    goto :goto_19

    .line 1103
    :catchall_c
    move-exception v0

    .line 1104
    move-object/from16 v24, v6

    .line 1105
    .line 1106
    goto :goto_1c

    .line 1107
    :cond_19
    move-object/from16 v24, v6

    .line 1108
    .line 1109
    move/from16 v25, v8

    .line 1110
    .line 1111
    move-object/from16 v26, v9

    .line 1112
    .line 1113
    move-object/from16 v27, v10

    .line 1114
    .line 1115
    move-object/from16 v9, v23

    .line 1116
    .line 1117
    move-object v8, v1

    .line 1118
    sget-object v17, Lvr6;->INSTANCE:Lvr6;

    .line 1119
    .line 1120
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1121
    .line 1122
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1123
    .line 1124
    .line 1125
    const-string v1, "Successfully migrated backups for package "

    .line 1126
    .line 1127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1128
    .line 1129
    .line 1130
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1131
    .line 1132
    .line 1133
    const-string v1, " to new directory structure"

    .line 1134
    .line 1135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1136
    .line 1137
    .line 1138
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1139
    .line 1140
    .line 1141
    move-result-object v19
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 1142
    const/16 v21, 0x4

    .line 1143
    .line 1144
    const/16 v22, 0x0

    .line 1145
    .line 1146
    const/16 v20, 0x0

    .line 1147
    .line 1148
    move-object/from16 v18, v8

    .line 1149
    .line 1150
    :try_start_10
    invoke-static/range {v17 .. v22}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_d

    .line 1151
    .line 1152
    .line 1153
    goto :goto_1e

    .line 1154
    :catchall_d
    move-exception v0

    .line 1155
    goto :goto_1d

    .line 1156
    :catchall_e
    move-exception v0

    .line 1157
    move-object/from16 v18, v1

    .line 1158
    .line 1159
    goto/16 :goto_9

    .line 1160
    .line 1161
    :goto_1d
    sget-object v17, Lvr6;->INSTANCE:Lvr6;

    .line 1162
    .line 1163
    invoke-static {v0}, Lyc9;->g0(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 1164
    .line 1165
    .line 1166
    move-result-object v0

    .line 1167
    const-string v1, "Error while migrating legacy backups of package \'"

    .line 1168
    .line 1169
    const-string v2, "\': "

    .line 1170
    .line 1171
    invoke-static {v1, v15, v2, v0}, Ldj7;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1172
    .line 1173
    .line 1174
    move-result-object v19

    .line 1175
    const/16 v21, 0x4

    .line 1176
    .line 1177
    const/16 v22, 0x0

    .line 1178
    .line 1179
    const/16 v20, 0x0

    .line 1180
    .line 1181
    invoke-static/range {v17 .. v22}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 1182
    .line 1183
    .line 1184
    :goto_1e
    move-object v4, v9

    .line 1185
    move v0, v11

    .line 1186
    move-object/from16 v6, v24

    .line 1187
    .line 1188
    move/from16 v8, v25

    .line 1189
    .line 1190
    move-object/from16 v9, v26

    .line 1191
    .line 1192
    move-object/from16 v10, v27

    .line 1193
    .line 1194
    const/4 v1, 0x0

    .line 1195
    const/4 v2, 0x0

    .line 1196
    const/4 v3, 0x1

    .line 1197
    goto/16 :goto_6

    .line 1198
    .line 1199
    :cond_1a
    move-object v8, v1

    .line 1200
    move-object/from16 v24, v6

    .line 1201
    .line 1202
    invoke-virtual {v12, v8}, Lzy4;->i(Ljava/lang/Object;)V

    .line 1203
    .line 1204
    .line 1205
    goto :goto_1f

    .line 1206
    :cond_1b
    move-object/from16 v24, v6

    .line 1207
    .line 1208
    :goto_1f
    invoke-virtual/range {v24 .. v24}, Lq63;->n()Lorg/swiftapps/filesystem/File$FileType;

    .line 1209
    .line 1210
    .line 1211
    move-result-object v0

    .line 1212
    invoke-virtual {v0}, Lorg/swiftapps/filesystem/File$FileType;->getFile()Ljava/io/File;

    .line 1213
    .line 1214
    .line 1215
    move-result-object v0

    .line 1216
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    .line 1217
    .line 1218
    .line 1219
    move-result-object v0

    .line 1220
    if-eqz v0, :cond_1c

    .line 1221
    .line 1222
    array-length v0, v0

    .line 1223
    if-nez v0, :cond_1d

    .line 1224
    .line 1225
    :cond_1c
    invoke-virtual/range {v24 .. v24}, Lq63;->h()Z

    .line 1226
    .line 1227
    .line 1228
    :cond_1d
    invoke-static/range {p1 .. p1}, Lg00;->m(Z)Ljava/util/List;

    .line 1229
    .line 1230
    .line 1231
    move-result-object v0

    .line 1232
    new-instance v1, Ljava/util/ArrayList;

    .line 1233
    .line 1234
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1235
    .line 1236
    .line 1237
    invoke-virtual {v5}, Lq63;->B()Ljava/util/ArrayList;

    .line 1238
    .line 1239
    .line 1240
    move-result-object v2

    .line 1241
    if-eqz v2, :cond_20

    .line 1242
    .line 1243
    new-instance v3, Ljava/util/ArrayList;

    .line 1244
    .line 1245
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1246
    .line 1247
    .line 1248
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1249
    .line 1250
    .line 1251
    move-result-object v2

    .line 1252
    :cond_1e
    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1253
    .line 1254
    .line 1255
    move-result v4

    .line 1256
    if-eqz v4, :cond_1f

    .line 1257
    .line 1258
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1259
    .line 1260
    .line 1261
    move-result-object v4

    .line 1262
    move-object v6, v4

    .line 1263
    check-cast v6, Lq63;

    .line 1264
    .line 1265
    invoke-virtual {v6}, Lq63;->x()Z

    .line 1266
    .line 1267
    .line 1268
    move-result v6

    .line 1269
    if-eqz v6, :cond_1e

    .line 1270
    .line 1271
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1272
    .line 1273
    .line 1274
    goto :goto_20

    .line 1275
    :cond_1f
    move-object/from16 v16, v3

    .line 1276
    .line 1277
    goto :goto_21

    .line 1278
    :cond_20
    const/16 v16, 0x0

    .line 1279
    .line 1280
    :goto_21
    sget-object v6, Lvr6;->INSTANCE:Lvr6;

    .line 1281
    .line 1282
    if-eqz v16, :cond_21

    .line 1283
    .line 1284
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    .line 1285
    .line 1286
    .line 1287
    move-result v3

    .line 1288
    goto :goto_22

    .line 1289
    :cond_21
    const/4 v3, 0x0

    .line 1290
    :goto_22
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1291
    .line 1292
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1293
    .line 1294
    .line 1295
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1296
    .line 1297
    .line 1298
    const-string v3, " package directories in "

    .line 1299
    .line 1300
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1301
    .line 1302
    .line 1303
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1304
    .line 1305
    .line 1306
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1307
    .line 1308
    .line 1309
    move-result-object v8

    .line 1310
    const/4 v10, 0x4

    .line 1311
    const/4 v11, 0x0

    .line 1312
    const-string v7, "AppUtil"

    .line 1313
    .line 1314
    const/4 v9, 0x0

    .line 1315
    invoke-static/range {v6 .. v11}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 1316
    .line 1317
    .line 1318
    if-eqz v16, :cond_29

    .line 1319
    .line 1320
    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->isEmpty()Z

    .line 1321
    .line 1322
    .line 1323
    move-result v2

    .line 1324
    if-eqz v2, :cond_22

    .line 1325
    .line 1326
    goto :goto_25

    .line 1327
    :cond_22
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1328
    .line 1329
    .line 1330
    move-result-object v2

    .line 1331
    :cond_23
    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1332
    .line 1333
    .line 1334
    move-result v3

    .line 1335
    if-eqz v3, :cond_29

    .line 1336
    .line 1337
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1338
    .line 1339
    .line 1340
    move-result-object v3

    .line 1341
    check-cast v3, Lq63;

    .line 1342
    .line 1343
    invoke-virtual {v3}, Lq63;->p()Ljava/lang/String;

    .line 1344
    .line 1345
    .line 1346
    move-result-object v3

    .line 1347
    move-object/from16 v4, p0

    .line 1348
    .line 1349
    invoke-static {v4, v3}, Lg00;->A(Lg00;Ljava/lang/String;)Z

    .line 1350
    .line 1351
    .line 1352
    move-result v5

    .line 1353
    if-nez v5, :cond_24

    .line 1354
    .line 1355
    goto :goto_23

    .line 1356
    :cond_24
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 1357
    .line 1358
    .line 1359
    move-result v5

    .line 1360
    if-eqz v5, :cond_25

    .line 1361
    .line 1362
    goto :goto_24

    .line 1363
    :cond_25
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1364
    .line 1365
    .line 1366
    move-result-object v5

    .line 1367
    :cond_26
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 1368
    .line 1369
    .line 1370
    move-result v6

    .line 1371
    if-eqz v6, :cond_27

    .line 1372
    .line 1373
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1374
    .line 1375
    .line 1376
    move-result-object v6

    .line 1377
    check-cast v6, Lji;

    .line 1378
    .line 1379
    invoke-virtual {v6}, Lji;->getPackageName()Ljava/lang/String;

    .line 1380
    .line 1381
    .line 1382
    move-result-object v6

    .line 1383
    invoke-static {v6, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1384
    .line 1385
    .line 1386
    move-result v6

    .line 1387
    if-eqz v6, :cond_26

    .line 1388
    .line 1389
    goto :goto_23

    .line 1390
    :cond_27
    :goto_24
    sget-object v5, Lhk;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1391
    .line 1392
    invoke-static {v3}, Lfk;->b(Ljava/lang/String;)Ljava/util/List;

    .line 1393
    .line 1394
    .line 1395
    move-result-object v3

    .line 1396
    if-eqz v3, :cond_23

    .line 1397
    .line 1398
    invoke-static {v3}, Lel1;->U0(Ljava/util/List;)Ljava/lang/Object;

    .line 1399
    .line 1400
    .line 1401
    move-result-object v3

    .line 1402
    check-cast v3, Lhk;

    .line 1403
    .line 1404
    if-nez v3, :cond_28

    .line 1405
    .line 1406
    goto :goto_23

    .line 1407
    :cond_28
    sget-object v5, Lji;->Companion:Lji$a;

    .line 1408
    .line 1409
    invoke-virtual {v3}, Lhk;->v()Lq63;

    .line 1410
    .line 1411
    .line 1412
    move-result-object v3

    .line 1413
    invoke-virtual {v5, v3}, Lji$a;->fromMetadataFile(Lq63;)Lji;

    .line 1414
    .line 1415
    .line 1416
    move-result-object v3

    .line 1417
    if-eqz v3, :cond_23

    .line 1418
    .line 1419
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1420
    .line 1421
    .line 1422
    goto :goto_23

    .line 1423
    :cond_29
    :goto_25
    new-instance v2, Lc00;

    .line 1424
    .line 1425
    const/4 v3, 0x0

    .line 1426
    invoke-direct {v2, v3, v0, v1}, Lc00;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1427
    .line 1428
    .line 1429
    return-object v2

    .line 1430
    :cond_2a
    invoke-static {}, Ld6;->o()V

    .line 1431
    .line 1432
    .line 1433
    const/16 v16, 0x0

    .line 1434
    .line 1435
    return-object v16
.end method
