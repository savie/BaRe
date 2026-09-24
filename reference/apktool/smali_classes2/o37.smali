.class public final Lo37;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static a()Z
    .locals 9

    .line 1
    invoke-static {}, Lb67;->d()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    :try_start_0
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 9
    .line 10
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-class v2, Landroid/app/AlarmManager;

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Landroid/app/AlarmManager;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/app/AlarmManager;->canScheduleExactAlarms()Z

    .line 23
    .line 24
    .line 25
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    return v0

    .line 27
    :catchall_0
    move-exception v0

    .line 28
    move-object v5, v0

    .line 29
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 30
    .line 31
    const/16 v7, 0x8

    .line 32
    .line 33
    const/4 v8, 0x0

    .line 34
    const-string v3, "ScheduleHelper"

    .line 35
    .line 36
    const-string v4, "canScheduleExactAlarms"

    .line 37
    .line 38
    const/4 v6, 0x0

    .line 39
    invoke-static/range {v2 .. v8}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    invoke-static {v5}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const-string v2, "ScheduleHelper.canScheduleExactAlarms: "

    .line 47
    .line 48
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-static {v0, v1}, Lorg/swiftapps/swiftbackup/common/Const;->g(Ljava/lang/String;Z)V

    .line 53
    .line 54
    .line 55
    const/4 v0, 0x0

    .line 56
    throw v0

    .line 57
    :cond_0
    return v1
.end method

.method public static b()Z
    .locals 7

    .line 1
    invoke-static {}, Lo37;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    sget-object v0, Lmp6;->a:Lmp6;

    .line 9
    .line 10
    invoke-static {}, Lmp6;->f()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    sget-object v2, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 17
    .line 18
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    sget-object v3, Leu;->allow:Leu;

    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    sget-boolean v4, Lg42;->a:Z

    .line 35
    .line 36
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    invoke-static {}, Lg42;->d()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    const-string v5, "set"

    .line 48
    .line 49
    const-string v6, "android:schedule_exact_alarm"

    .line 50
    .line 51
    filled-new-array {v5, v2, v6, v3}, [Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    const/4 v3, 0x4

    .line 56
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    filled-new-array {v2}, [Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    sget-object v3, Lip6;->SHIZUKU:Lip6;

    .line 69
    .line 70
    invoke-virtual {v0, v1, v2, v3}, Lmp6;->j(Z[Ljava/lang/String;Lip6;)Ljava/util/List;

    .line 71
    .line 72
    .line 73
    :cond_0
    const-string v0, "KEY_SCHEDULE_ENABLED"

    .line 74
    .line 75
    const/4 v2, 0x0

    .line 76
    :try_start_0
    sget-object v3, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 77
    .line 78
    if-eqz v3, :cond_1

    .line 79
    .line 80
    invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    goto :goto_0

    .line 85
    :cond_1
    const-string v0, "prefs"

    .line 86
    .line 87
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    const/4 v0, 0x0

    .line 91
    throw v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :catch_0
    move v0, v2

    .line 93
    :goto_0
    if-eqz v0, :cond_2

    .line 94
    .line 95
    sget-object v0, Lorg/swiftapps/swiftbackup/common/V;->INSTANCE:Lorg/swiftapps/swiftbackup/common/V;

    .line 96
    .line 97
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/common/V;->getA()Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-eqz v0, :cond_2

    .line 102
    .line 103
    invoke-static {}, Lo37;->a()Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-eqz v0, :cond_2

    .line 108
    .line 109
    return v1

    .line 110
    :cond_2
    return v2
.end method

.method public static c(Ljava/lang/String;Z)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 5
    .line 6
    const-string v1, "Notifying schedule error, "

    .line 7
    .line 8
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const/4 v4, 0x4

    .line 13
    const/4 v5, 0x0

    .line 14
    const-string v1, "ScheduleHelper"

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-static/range {v0 .. v5}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    const-string v0, "play_notification_sounds"

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    const/4 v2, 0x1

    .line 24
    :try_start_0
    sget-object v3, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 25
    .line 26
    if-eqz v3, :cond_0

    .line 27
    .line 28
    invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const-string v0, "prefs"

    .line 34
    .line 35
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :catch_0
    move v0, v2

    .line 40
    :goto_0
    if-nez v0, :cond_1

    .line 41
    .line 42
    const-string v3, "task_completion_channel_silent"

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    const-string v3, "task_completion_channel_error"

    .line 46
    .line 47
    :goto_1
    new-instance v4, Lwo5;

    .line 48
    .line 49
    sget-object v5, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 50
    .line 51
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    invoke-direct {v4, v5, v3}, Lwo5;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const/16 v3, 0x10

    .line 59
    .line 60
    invoke-virtual {v4, v3}, Lwo5;->c(I)V

    .line 61
    .line 62
    .line 63
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    const v5, 0x7f06001b

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3, v5}, Landroid/content/Context;->getColor(I)I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    iput v3, v4, Lwo5;->r:I

    .line 75
    .line 76
    const v3, 0x7f0801f6

    .line 77
    .line 78
    .line 79
    iget-object v5, v4, Lwo5;->u:Landroid/app/Notification;

    .line 80
    .line 81
    iput v3, v5, Landroid/app/Notification;->icon:I

    .line 82
    .line 83
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    const v6, 0x7f1304c4

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-static {v3}, Lwo5;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    iput-object v3, v4, Lwo5;->e:Ljava/lang/CharSequence;

    .line 99
    .line 100
    invoke-static {p0}, Lwo5;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    iput-object v3, v4, Lwo5;->f:Ljava/lang/CharSequence;

    .line 105
    .line 106
    new-instance v3, Lc00;

    .line 107
    .line 108
    invoke-direct {v3, v4}, Lc00;-><init>(Lwo5;)V

    .line 109
    .line 110
    .line 111
    invoke-static {p0}, Lwo5;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    iput-object p0, v3, Lc00;->c:Ljava/lang/Object;

    .line 116
    .line 117
    invoke-virtual {v4, v3}, Lwo5;->e(Lc00;)V

    .line 118
    .line 119
    .line 120
    new-array p0, v2, [J

    .line 121
    .line 122
    const-wide/16 v6, 0x1f4

    .line 123
    .line 124
    const/4 v3, 0x0

    .line 125
    aput-wide v6, p0, v3

    .line 126
    .line 127
    iput-object p0, v5, Landroid/app/Notification;->vibrate:[J

    .line 128
    .line 129
    iput v3, v4, Lwo5;->i:I

    .line 130
    .line 131
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 140
    .line 141
    .line 142
    move-result-object v5

    .line 143
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v5

    .line 147
    invoke-virtual {p0, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    const/high16 v5, 0xc000000

    .line 152
    .line 153
    if-eqz p0, :cond_2

    .line 154
    .line 155
    invoke-virtual {p0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    .line 157
    .line 158
    const/high16 v1, 0x10200000

    .line 159
    .line 160
    invoke-virtual {p0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 161
    .line 162
    .line 163
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    invoke-static {v1, v3, p0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 168
    .line 169
    .line 170
    move-result-object p0

    .line 171
    iput-object p0, v4, Lwo5;->g:Landroid/app/PendingIntent;

    .line 172
    .line 173
    :cond_2
    if-eqz p1, :cond_3

    .line 174
    .line 175
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 176
    .line 177
    .line 178
    move-result-object p0

    .line 179
    sget p1, Lorg/swiftapps/swiftbackup/shortcuts/ShortcutsActivity;->P:I

    .line 180
    .line 181
    const-string p1, "scheduled_backup"

    .line 182
    .line 183
    invoke-static {p1}, Lye7;->a(Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    invoke-static {p0, v3, p1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 188
    .line 189
    .line 190
    move-result-object p0

    .line 191
    const p1, 0x7f1304a8

    .line 192
    .line 193
    .line 194
    invoke-static {p1}, Ldj7;->g(I)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    new-instance v1, Lvo5;

    .line 199
    .line 200
    const v3, 0x7f0801ec

    .line 201
    .line 202
    .line 203
    invoke-direct {v1, v3, p1, p0}, Lvo5;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 204
    .line 205
    .line 206
    iget-object p0, v4, Lwo5;->b:Ljava/util/ArrayList;

    .line 207
    .line 208
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    :cond_3
    if-eqz v0, :cond_4

    .line 212
    .line 213
    invoke-static {v4, v2}, Lorg/swiftapps/swiftbackup/common/NotificationHelper;->g(Lwo5;Z)V

    .line 214
    .line 215
    .line 216
    :cond_4
    invoke-static {}, Lorg/swiftapps/swiftbackup/common/NotificationHelper;->d()Landroid/app/NotificationManager;

    .line 217
    .line 218
    .line 219
    move-result-object p0

    .line 220
    const/16 p1, 0x12e

    .line 221
    .line 222
    invoke-virtual {v4}, Lwo5;->a()Landroid/app/Notification;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    invoke-virtual {p0, p1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 227
    .line 228
    .line 229
    return-void
.end method

.method public static d()V
    .locals 8

    .line 1
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 2
    .line 3
    const v0, 0x7f1304c5

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Ldj7;->g(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Lvr6;->INSTANCE:Lvr6;

    .line 11
    .line 12
    const/4 v5, 0x4

    .line 13
    const/4 v6, 0x0

    .line 14
    const-string v2, "ScheduleHelper"

    .line 15
    .line 16
    const-string v3, "Notifying schedule FGS quota error"

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    invoke-static/range {v1 .. v6}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    const-string v1, "play_notification_sounds"

    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    :try_start_0
    sget-object v3, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 26
    .line 27
    if-eqz v3, :cond_0

    .line 28
    .line 29
    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const-string v1, "prefs"

    .line 35
    .line 36
    invoke-static {v1}, Lpe4;->F(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const/4 v1, 0x0

    .line 40
    throw v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :catch_0
    move v1, v2

    .line 42
    :goto_0
    if-nez v1, :cond_1

    .line 43
    .line 44
    const-string v3, "task_completion_channel_silent"

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    const-string v3, "task_completion_channel_error"

    .line 48
    .line 49
    :goto_1
    new-instance v4, Lwo5;

    .line 50
    .line 51
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    invoke-direct {v4, v5, v3}, Lwo5;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const/16 v3, 0x10

    .line 59
    .line 60
    invoke-virtual {v4, v3}, Lwo5;->c(I)V

    .line 61
    .line 62
    .line 63
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    const v5, 0x7f06001b

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3, v5}, Landroid/content/Context;->getColor(I)I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    iput v3, v4, Lwo5;->r:I

    .line 75
    .line 76
    const v3, 0x7f0801f6

    .line 77
    .line 78
    .line 79
    iget-object v5, v4, Lwo5;->u:Landroid/app/Notification;

    .line 80
    .line 81
    iput v3, v5, Landroid/app/Notification;->icon:I

    .line 82
    .line 83
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    const v6, 0x7f1304c6

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-static {v3}, Lwo5;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    iput-object v3, v4, Lwo5;->e:Ljava/lang/CharSequence;

    .line 99
    .line 100
    invoke-static {v0}, Lwo5;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    iput-object v3, v4, Lwo5;->f:Ljava/lang/CharSequence;

    .line 105
    .line 106
    new-instance v3, Lc00;

    .line 107
    .line 108
    invoke-direct {v3, v4}, Lc00;-><init>(Lwo5;)V

    .line 109
    .line 110
    .line 111
    invoke-static {v0}, Lwo5;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    iput-object v0, v3, Lc00;->c:Ljava/lang/Object;

    .line 116
    .line 117
    invoke-virtual {v4, v3}, Lwo5;->e(Lc00;)V

    .line 118
    .line 119
    .line 120
    new-array v0, v2, [J

    .line 121
    .line 122
    const-wide/16 v6, 0x1f4

    .line 123
    .line 124
    const/4 v3, 0x0

    .line 125
    aput-wide v6, v0, v3

    .line 126
    .line 127
    iput-object v0, v5, Landroid/app/Notification;->vibrate:[J

    .line 128
    .line 129
    iput v3, v4, Lwo5;->i:I

    .line 130
    .line 131
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    sget v5, Lorg/swiftapps/swiftbackup/shortcuts/ShortcutsActivity;->P:I

    .line 136
    .line 137
    const-string v5, "scheduled_backup"

    .line 138
    .line 139
    invoke-static {v5}, Lye7;->a(Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    .line 141
    .line 142
    move-result-object v5

    .line 143
    const/high16 v6, 0xc000000

    .line 144
    .line 145
    invoke-static {v0, v3, v5, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    const v3, 0x7f1304a8

    .line 150
    .line 151
    .line 152
    invoke-static {v3}, Ldj7;->g(I)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    new-instance v5, Lvo5;

    .line 157
    .line 158
    const v6, 0x7f0801ec

    .line 159
    .line 160
    .line 161
    invoke-direct {v5, v6, v3, v0}, Lvo5;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 162
    .line 163
    .line 164
    iget-object v3, v4, Lwo5;->b:Ljava/util/ArrayList;

    .line 165
    .line 166
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    iput-object v0, v4, Lwo5;->g:Landroid/app/PendingIntent;

    .line 170
    .line 171
    if-eqz v1, :cond_2

    .line 172
    .line 173
    invoke-static {v4, v2}, Lorg/swiftapps/swiftbackup/common/NotificationHelper;->g(Lwo5;Z)V

    .line 174
    .line 175
    .line 176
    :cond_2
    invoke-static {}, Lorg/swiftapps/swiftbackup/common/NotificationHelper;->d()Landroid/app/NotificationManager;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    const/16 v1, 0x12e

    .line 181
    .line 182
    invoke-virtual {v4}, Lwo5;->a()Landroid/app/Notification;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 187
    .line 188
    .line 189
    return-void
.end method
