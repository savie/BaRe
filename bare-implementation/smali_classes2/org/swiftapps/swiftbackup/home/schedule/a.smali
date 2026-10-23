.class public abstract Lorg/swiftapps/swiftbackup/home/schedule/a;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public static a(Ljava/lang/Exception;)Z
    .locals 2

    .line 1
    invoke-static {p0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const-string v1, "ForegroundServiceStartNotAllowedException"

    .line 14
    .line 15
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    const-string p0, "Time limit already exhausted"

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    invoke-static {v0, p0, v1}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    if-eqz p0, :cond_0

    .line 29
    .line 30
    const-string p0, "dataSync"

    .line 31
    .line 32
    invoke-static {v0, p0, v1}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    if-eqz p0, :cond_0

    .line 37
    .line 38
    return v1

    .line 39
    :cond_0
    const/4 p0, 0x0

    .line 40
    return p0
.end method

.method public static b(ZLorg/swiftapps/swiftbackup/home/schedule/ScheduleService$RunMode;Lmt3;)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lorg/swiftapps/swiftbackup/common/V;->INSTANCE:Lorg/swiftapps/swiftbackup/common/V;

    .line 5
    .line 6
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/common/V;->getA()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto/16 :goto_1

    .line 13
    .line 14
    :cond_0
    sget-object v0, Lhy7;->a:Lhy7;

    .line 15
    .line 16
    sget-object v0, Lorg/swiftapps/swiftbackup/tasks/TaskService;->b:Lgz7;

    .line 17
    .line 18
    sget-object v0, Lorg/swiftapps/swiftbackup/tasks/TaskService;->b:Lgz7;

    .line 19
    .line 20
    invoke-virtual {v0}, Lgz7;->isRunning()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    sget-object p0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 27
    .line 28
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    const p1, 0x7f130550

    .line 33
    .line 34
    .line 35
    invoke-static {p1}, Ldj7;->g(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    sget-object p2, Lzn4;->a:Lzn4;

    .line 40
    .line 41
    invoke-static {p0, p1}, Ldj7;->y(Landroid/content/Context;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 45
    .line 46
    sget-object v1, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->p:Ljava/lang/String;

    .line 47
    .line 48
    const/4 v4, 0x4

    .line 49
    const/4 v5, 0x0

    .line 50
    const-string v2, "App is already performing some tasks in background. Try again later."

    .line 51
    .line 52
    const/4 v3, 0x0

    .line 53
    invoke-static/range {v0 .. v5}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    const-string v1, "ScheduleService"

    .line 60
    .line 61
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    sget-object v1, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService$RunMode$Schedules;->INSTANCE:Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService$RunMode$Schedules;

    .line 65
    .line 66
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-eqz v1, :cond_2

    .line 71
    .line 72
    const-string v1, ".All"

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_2
    instance-of v1, p1, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService$RunMode$MultipleSchedules;

    .line 79
    .line 80
    if-eqz v1, :cond_3

    .line 81
    .line 82
    const-string v1, ".Multiple"

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_3
    instance-of v1, p1, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService$RunMode$SingleSchedule;

    .line 89
    .line 90
    if-eqz v1, :cond_7

    .line 91
    .line 92
    const-string v1, ".Single"

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    :goto_0
    if-eqz p0, :cond_4

    .line 98
    .line 99
    const-string v1, ":F"

    .line 100
    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    sput-object v0, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->p:Ljava/lang/String;

    .line 109
    .line 110
    sput-object p2, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->q:Lmt3;

    .line 111
    .line 112
    new-instance p2, Landroid/content/Intent;

    .line 113
    .line 114
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 115
    .line 116
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    const-class v1, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;

    .line 121
    .line 122
    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 123
    .line 124
    .line 125
    const-string v0, "is_forced_run"

    .line 126
    .line 127
    invoke-virtual {p2, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 128
    .line 129
    .line 130
    const-string v0, "schedule_run_mode"

    .line 131
    .line 132
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 133
    .line 134
    .line 135
    sget-object v1, Lvr6;->INSTANCE:Lvr6;

    .line 136
    .line 137
    sget-object v2, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->p:Ljava/lang/String;

    .line 138
    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    const-string v3, "start() called with: isForcedRun="

    .line 142
    .line 143
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    const-string v3, ", runMode="

    .line 150
    .line 151
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    const/4 v5, 0x4

    .line 162
    const/4 v6, 0x0

    .line 163
    const/4 v4, 0x0

    .line 164
    invoke-static/range {v1 .. v6}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    :try_start_0
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-virtual {v0, p2}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    .line 173
    .line 174
    return-void

    .line 175
    :catch_0
    move-exception v0

    .line 176
    move-object p2, v0

    .line 177
    move-object v3, p2

    .line 178
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 179
    .line 180
    sget-object v1, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->p:Ljava/lang/String;

    .line 181
    .line 182
    const/16 v5, 0x8

    .line 183
    .line 184
    const/4 v6, 0x0

    .line 185
    const-string v2, "start"

    .line 186
    .line 187
    const/4 v4, 0x0

    .line 188
    invoke-static/range {v0 .. v6}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 189
    .line 190
    .line 191
    invoke-static {v3}, Lorg/swiftapps/swiftbackup/home/schedule/a;->a(Ljava/lang/Exception;)Z

    .line 192
    .line 193
    .line 194
    move-result p2

    .line 195
    if-eqz p2, :cond_6

    .line 196
    .line 197
    invoke-static {v3}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v7

    .line 201
    invoke-static {}, Lo37;->d()V

    .line 202
    .line 203
    .line 204
    sget-object v4, Lkc2;->a:Lkc2;

    .line 205
    .line 206
    sget-object v5, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->p:Ljava/lang/String;

    .line 207
    .line 208
    const/4 v8, 0x1

    .line 209
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v6

    .line 213
    move v9, p0

    .line 214
    invoke-virtual/range {v4 .. v9}, Lkc2;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 215
    .line 216
    .line 217
    sget-object p0, Lqc2;->a:Lqc2;

    .line 218
    .line 219
    const-string p1, "ScheduleService start blocked"

    .line 220
    .line 221
    const/4 p2, 0x1

    .line 222
    invoke-virtual {p0, p1, p2}, Lqc2;->h(Ljava/lang/String;Z)V

    .line 223
    .line 224
    .line 225
    sget-object p0, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->q:Lmt3;

    .line 226
    .line 227
    if-eqz p0, :cond_5

    .line 228
    .line 229
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 230
    .line 231
    invoke-interface {p0, p1}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    :cond_5
    const/4 p0, 0x0

    .line 235
    sput-object p0, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->q:Lmt3;

    .line 236
    .line 237
    :cond_6
    :goto_1
    return-void

    .line 238
    :cond_7
    invoke-static {}, Lq;->j()V

    .line 239
    .line 240
    .line 241
    return-void
.end method
