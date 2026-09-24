.class public final Lorg/swiftapps/swiftbackup/jobs/AlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "AlarmReceiver"

    .line 5
    .line 6
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/jobs/AlarmReceiver;->a:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public static b()Ljava/util/Calendar;
    .locals 4

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 10
    .line 11
    .line 12
    sget-object v1, Lc47;->a:Lc47;

    .line 13
    .line 14
    invoke-virtual {v1}, Lc47;->c()Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->getStartHour()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    invoke-virtual {v1}, Lc47;->c()Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->getStartMinute()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    const/16 v3, 0xb

    .line 31
    .line 32
    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 33
    .line 34
    .line 35
    const/16 v2, 0xc

    .line 36
    .line 37
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 38
    .line 39
    .line 40
    const/16 v1, 0xd

    .line 41
    .line 42
    const/4 v2, 0x0

    .line 43
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 44
    .line 45
    .line 46
    const/16 v1, 0xe

    .line 47
    .line 48
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 49
    .line 50
    .line 51
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_0

    .line 60
    .line 61
    const/4 v1, 0x5

    .line 62
    const/4 v2, 0x1

    .line 63
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 64
    .line 65
    .line 66
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 6

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
    sget-object v1, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const-string v2, "KEY_SCHEDULE_ENABLED"

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 19
    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    invoke-static {v1}, Lrs9;->s(Z)V

    .line 23
    .line 24
    .line 25
    const-string v2, "alarm"

    .line 26
    .line 27
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    check-cast v2, Landroid/app/AlarmManager;

    .line 35
    .line 36
    new-instance v4, Landroid/content/Intent;

    .line 37
    .line 38
    const-class v5, Lorg/swiftapps/swiftbackup/jobs/AlarmReceiver;

    .line 39
    .line 40
    invoke-direct {v4, v0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 41
    .line 42
    .line 43
    const/high16 v5, 0x4000000

    .line 44
    .line 45
    invoke-static {v0, v3, v4, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/jobs/AlarmReceiver;->a:Ljava/lang/String;

    .line 50
    .line 51
    const-string v4, "cancelAlarm: Cancelling alarm"

    .line 52
    .line 53
    invoke-static {p0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 57
    .line 58
    .line 59
    new-instance p0, Landroid/content/ComponentName;

    .line 60
    .line 61
    const-class v2, Lorg/swiftapps/swiftbackup/jobs/BootReceiver;

    .line 62
    .line 63
    invoke-direct {p0, v0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 64
    .line 65
    .line 66
    sget-object v0, Lg00;->a:Lg00;

    .line 67
    .line 68
    invoke-static {}, Lg00;->r()Landroid/content/pm/PackageManager;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    const/4 v2, 0x2

    .line 73
    invoke-virtual {v0, p0, v2, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :cond_0
    const-string p0, "editor"

    .line 78
    .line 79
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    const/4 p0, 0x0

    .line 83
    throw p0
.end method

.method public final c()V
    .locals 10

    .line 1
    const-string v0, "updateAlarm: Setting next alarm "

    .line 2
    .line 3
    :try_start_0
    sget-object v1, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 4
    .line 5
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "KEY_SCHEDULE_ENABLED"

    .line 10
    .line 11
    sget-object v3, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 12
    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 21
    .line 22
    .line 23
    invoke-static {v4}, Lrs9;->s(Z)V

    .line 24
    .line 25
    .line 26
    const-string v2, "alarm"

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    check-cast v2, Landroid/app/AlarmManager;

    .line 36
    .line 37
    new-instance v3, Landroid/content/Intent;

    .line 38
    .line 39
    const-class v5, Lorg/swiftapps/swiftbackup/jobs/AlarmReceiver;

    .line 40
    .line 41
    invoke-direct {v3, v1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 42
    .line 43
    .line 44
    const/high16 v5, 0x4000000

    .line 45
    .line 46
    const/4 v6, 0x0

    .line 47
    invoke-static {v1, v6, v3, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-static {}, Lorg/swiftapps/swiftbackup/jobs/AlarmReceiver;->b()Ljava/util/Calendar;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    iget-object v7, p0, Lorg/swiftapps/swiftbackup/jobs/AlarmReceiver;->a:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 58
    .line 59
    .line 60
    move-result-wide v8

    .line 61
    invoke-static {v8, v9}, Lorg/swiftapps/swiftbackup/common/Const;->i(J)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v8

    .line 65
    invoke-virtual {v0, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 73
    .line 74
    .line 75
    move-result-wide v7

    .line 76
    invoke-virtual {v2, v6, v7, v8, v3}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 77
    .line 78
    .line 79
    new-instance v0, Landroid/content/ComponentName;

    .line 80
    .line 81
    const-class v2, Lorg/swiftapps/swiftbackup/jobs/BootReceiver;

    .line 82
    .line 83
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 84
    .line 85
    .line 86
    sget-object v1, Lg00;->a:Lg00;

    .line 87
    .line 88
    invoke-static {}, Lg00;->r()Landroid/content/pm/PackageManager;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v1, v0, v4, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    goto :goto_0

    .line 98
    :cond_0
    const-string v0, "editor"

    .line 99
    .line 100
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    const/4 v0, 0x0

    .line 104
    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_0
    sget-object v1, Lvr6;->INSTANCE:Lvr6;

    .line 106
    .line 107
    invoke-static {v0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    const-string v2, "updateAlarm: "

    .line 112
    .line 113
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    const/4 v5, 0x4

    .line 118
    const/4 v6, 0x0

    .line 119
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/jobs/AlarmReceiver;->a:Ljava/lang/String;

    .line 120
    .line 121
    const/4 v4, 0x0

    .line 122
    invoke-static/range {v1 .. v6}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide p1

    .line 11
    invoke-static {p1, p2}, Lorg/swiftapps/swiftbackup/common/Const;->i(J)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string p2, "onReceive: Alarm fired at time = "

    .line 16
    .line 17
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 22
    .line 23
    const/4 v4, 0x4

    .line 24
    const/4 v5, 0x0

    .line 25
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/jobs/AlarmReceiver;->a:Ljava/lang/String;

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-static/range {v0 .. v5}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lorg/swiftapps/swiftbackup/jobs/AlarmReceiver;->a:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    sget-object p2, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 37
    .line 38
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    const-string v0, "power"

    .line 43
    .line 44
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    check-cast p2, Landroid/os/PowerManager;

    .line 52
    .line 53
    const/4 v0, 0x1

    .line 54
    invoke-virtual {p2, v0, p1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    const-wide/32 v0, 0xea60

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/jobs/AlarmReceiver;->c()V

    .line 65
    .line 66
    .line 67
    sget-object p0, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->p:Ljava/lang/String;

    .line 68
    .line 69
    const/4 p0, 0x0

    .line 70
    sget-object p1, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService$RunMode$Schedules;->INSTANCE:Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService$RunMode$Schedules;

    .line 71
    .line 72
    const/4 p2, 0x0

    .line 73
    invoke-static {p0, p1, p2}, Lorg/swiftapps/swiftbackup/home/schedule/a;->b(ZLorg/swiftapps/swiftbackup/home/schedule/ScheduleService$RunMode;Lmt3;)V

    .line 74
    .line 75
    .line 76
    return-void
.end method
