.class public final Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;
.super Landroid/app/IntentService;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService$RunMode;
    }
.end annotation


# static fields
.field public static p:Ljava/lang/String; = "ScheduleService"

.field public static q:Lmt3;


# instance fields
.field public a:Z

.field public b:Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService$RunMode;

.field public c:Z

.field public volatile d:Z

.field public volatile e:Ljava/lang/String;

.field public final f:Ljava/lang/Object;

.field public final k:Lgv7;

.field public final n:Lgv7;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    sget-object v0, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->p:Ljava/lang/String;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService$RunMode$Schedules;->INSTANCE:Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService$RunMode$Schedules;

    .line 7
    .line 8
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->b:Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService$RunMode;

    .line 9
    .line 10
    new-instance v0, Ljava/lang/Object;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->f:Ljava/lang/Object;

    .line 16
    .line 17
    new-instance v0, Lfl;

    .line 18
    .line 19
    const/16 v1, 0xb

    .line 20
    .line 21
    invoke-direct {v0, v1}, Lfl;-><init>(I)V

    .line 22
    .line 23
    .line 24
    new-instance v1, Lgv7;

    .line 25
    .line 26
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->k:Lgv7;

    .line 30
    .line 31
    new-instance v0, Ljx;

    .line 32
    .line 33
    const/16 v1, 0x15

    .line 34
    .line 35
    invoke-direct {v0, v1}, Ljx;-><init>(I)V

    .line 36
    .line 37
    .line 38
    new-instance v1, Lgv7;

    .line 39
    .line 40
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 41
    .line 42
    .line 43
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->n:Lgv7;

    .line 44
    .line 45
    return-void
.end method

.method public static a()Landroid/app/Notification;
    .locals 12

    .line 1
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 2
    .line 3
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v2, Lwo5;

    .line 8
    .line 9
    const-string v0, "normal_channel"

    .line 10
    .line 11
    invoke-direct {v2, v1, v0}, Lwo5;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const/4 v3, 0x0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    const/high16 v3, 0x10200000

    .line 36
    .line 37
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    :cond_0
    const/high16 v0, 0xc000000

    .line 42
    .line 43
    const/4 v4, 0x0

    .line 44
    :try_start_0
    invoke-static {v1, v4, v3, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iput-object v0, v2, Lwo5;->g:Landroid/app/PendingIntent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    const-string v3, "Error creating PendingIntent"

    .line 53
    .line 54
    sget-object v5, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->p:Ljava/lang/String;

    .line 55
    .line 56
    invoke-static {v5, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    .line 58
    .line 59
    sget-object v6, Lvr6;->INSTANCE:Lvr6;

    .line 60
    .line 61
    sget-object v7, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->p:Ljava/lang/String;

    .line 62
    .line 63
    invoke-static {v0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    const-string v3, "Error creating PendingIntent: "

    .line 68
    .line 69
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v8

    .line 73
    const/4 v10, 0x4

    .line 74
    const/4 v11, 0x0

    .line 75
    const/4 v9, 0x0

    .line 76
    invoke-static/range {v6 .. v11}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    :goto_0
    const/4 v0, 0x2

    .line 80
    invoke-virtual {v2, v0}, Lwo5;->c(I)V

    .line 81
    .line 82
    .line 83
    const v0, 0x7f1302bb

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-static {v0}, Lwo5;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    iput-object v0, v2, Lwo5;->e:Ljava/lang/CharSequence;

    .line 95
    .line 96
    const/16 v0, 0x8

    .line 97
    .line 98
    invoke-virtual {v2, v0}, Lwo5;->c(I)V

    .line 99
    .line 100
    .line 101
    const v0, 0x7f06001b

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1, v0}, Landroid/content/Context;->getColor(I)I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    iput v0, v2, Lwo5;->r:I

    .line 109
    .line 110
    const v0, 0x7f0801f6

    .line 111
    .line 112
    .line 113
    iget-object v1, v2, Lwo5;->u:Landroid/app/Notification;

    .line 114
    .line 115
    iput v0, v1, Landroid/app/Notification;->icon:I

    .line 116
    .line 117
    const/16 v0, 0x64

    .line 118
    .line 119
    iput v0, v2, Lwo5;->m:I

    .line 120
    .line 121
    iput v4, v2, Lwo5;->n:I

    .line 122
    .line 123
    const/4 v0, 0x1

    .line 124
    iput-boolean v0, v2, Lwo5;->o:Z

    .line 125
    .line 126
    invoke-virtual {v2}, Lwo5;->a()Landroid/app/Notification;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    .line 132
    .line 133
    return-object v0
.end method


# virtual methods
.method public final b(Ljc2;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->e:Ljava/lang/String;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->e:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    monitor-exit p0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    sget-object p0, Lkc2;->a:Lkc2;

    .line 11
    .line 12
    invoke-static {v0, p1}, Lkc2;->c(Ljava/lang/String;Ljc2;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    monitor-exit p0

    .line 18
    throw p1
.end method

.method public final c(Ljava/lang/String;Ljava/util/List;Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;)Lxy7;
    .locals 11

    .line 1
    invoke-static {p2}, Lel1;->x1(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object p2, Lvr6;->INSTANCE:Lvr6;

    .line 6
    .line 7
    sget-object v6, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->p:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const/16 v5, 0x3e

    .line 11
    .line 12
    const-string v1, ", "

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-static/range {v0 .. v5}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v2, "getMessageCallsTaskParameters: Backup locations: "

    .line 21
    .line 22
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    const/4 v5, 0x4

    .line 27
    move-object v2, v6

    .line 28
    const/4 v6, 0x0

    .line 29
    move-object v1, p2

    .line 30
    invoke-static/range {v1 .. v6}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    sget-object p2, Lq05;->CLOUD:Lq05;

    .line 34
    .line 35
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    const/4 v7, 0x1

    .line 40
    const-wide/16 v8, 0x0

    .line 41
    .line 42
    const/4 v10, 0x0

    .line 43
    if-eqz v2, :cond_1

    .line 44
    .line 45
    const-string v2, "getMessageCallsTaskParameters: "

    .line 46
    .line 47
    invoke-virtual {p0, v2, v0}, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->g(Ljava/lang/String;Ljava/util/ArrayList;)Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    if-nez v2, :cond_2

    .line 52
    .line 53
    invoke-virtual {p0, p1, p3}, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->f(Ljava/lang/String;Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;)Z

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    if-nez p0, :cond_2

    .line 58
    .line 59
    sget-object v2, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->p:Ljava/lang/String;

    .line 60
    .line 61
    new-instance p0, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    const-string v3, "getMessageCallsTaskParameters: Sync option not met: "

    .line 64
    .line 65
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    const/4 v5, 0x4

    .line 76
    const/4 v6, 0x0

    .line 77
    const/4 v4, 0x0

    .line 78
    invoke-static/range {v1 .. v6}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    new-instance p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$SkippedUploadSyncOptionsError;

    .line 82
    .line 83
    invoke-direct {p0, v8, v9, v7, v10}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$SkippedUploadSyncOptionsError;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 84
    .line 85
    .line 86
    invoke-static {v0}, Lji8;->t(Ljava/util/Collection;)Z

    .line 87
    .line 88
    .line 89
    move-result p3

    .line 90
    if-eqz p3, :cond_0

    .line 91
    .line 92
    sget-object v2, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->p:Ljava/lang/String;

    .line 93
    .line 94
    const/4 v5, 0x4

    .line 95
    const/4 v6, 0x0

    .line 96
    const-string v3, "getMessageCallsTaskParameters: Can\'t proceed as syncing isn\'t possible and destination is only cloud"

    .line 97
    .line 98
    const/4 v4, 0x0

    .line 99
    invoke-static/range {v1 .. v6}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    sget-object p2, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails;->Companion:Lorg/swiftapps/swiftbackup/home/schedule/data/o;

    .line 103
    .line 104
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    invoke-static {p1, p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/o;->d(Ljava/lang/String;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails;)V

    .line 108
    .line 109
    .line 110
    return-object v10

    .line 111
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    sget-object v2, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->p:Ljava/lang/String;

    .line 115
    .line 116
    const/4 v5, 0x4

    .line 117
    const/4 v6, 0x0

    .line 118
    const-string v3, "getMessageCallsTaskParameters: Removed cloud location"

    .line 119
    .line 120
    const/4 v4, 0x0

    .line 121
    invoke-static/range {v1 .. v6}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    move-object v2, p0

    .line 125
    goto :goto_0

    .line 126
    :cond_1
    move-object v2, v10

    .line 127
    :cond_2
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 128
    .line 129
    .line 130
    move-result p0

    .line 131
    if-eqz p0, :cond_4

    .line 132
    .line 133
    if-eqz v2, :cond_3

    .line 134
    .line 135
    sget-object p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails;->Companion:Lorg/swiftapps/swiftbackup/home/schedule/data/o;

    .line 136
    .line 137
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    .line 139
    .line 140
    invoke-static {p1, v2}, Lorg/swiftapps/swiftbackup/home/schedule/data/o;->d(Ljava/lang/String;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails;)V

    .line 141
    .line 142
    .line 143
    :cond_3
    return-object v10

    .line 144
    :cond_4
    if-nez v2, :cond_5

    .line 145
    .line 146
    new-instance v2, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$Started;

    .line 147
    .line 148
    invoke-direct {v2, v8, v9, v7, v10}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$Started;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 149
    .line 150
    .line 151
    :cond_5
    sget-object p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails;->Companion:Lorg/swiftapps/swiftbackup/home/schedule/data/o;

    .line 152
    .line 153
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 154
    .line 155
    .line 156
    invoke-static {p1, v2}, Lorg/swiftapps/swiftbackup/home/schedule/data/o;->d(Ljava/lang/String;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails;)V

    .line 157
    .line 158
    .line 159
    new-instance p0, Lxy7;

    .line 160
    .line 161
    const/4 p1, 0x0

    .line 162
    invoke-direct {p0, v0, p1}, Lxy7;-><init>(Ljava/util/List;Z)V

    .line 163
    .line 164
    .line 165
    return-object p0
.end method

.method public final d(ILjava/lang/String;)V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->d:Z

    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 8
    .line 9
    .line 10
    sget-object v1, Lvr6;->INSTANCE:Lvr6;

    .line 11
    .line 12
    sget-object v2, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->p:Ljava/lang/String;

    .line 13
    .line 14
    const-string v3, "Foreground service timeout: startId="

    .line 15
    .line 16
    const-string v4, ", fgsType="

    .line 17
    .line 18
    invoke-static {p1, v3, v4, p2}, Lu48;->k(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    const/4 v5, 0x4

    .line 23
    const/4 v6, 0x0

    .line 24
    const/4 v4, 0x0

    .line 25
    invoke-static/range {v1 .. v6}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-static {}, Lo37;->d()V

    .line 29
    .line 30
    .line 31
    sget-object p1, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->q:Lmt3;

    .line 32
    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 36
    .line 37
    invoke-interface {p1, p2}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    :cond_0
    const/4 p1, 0x0

    .line 41
    sput-object p1, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->q:Lmt3;

    .line 42
    .line 43
    sget-object p2, Lzn4;->a:Lzn4;

    .line 44
    .line 45
    new-instance p2, Luv;

    .line 46
    .line 47
    invoke-direct {p2, p0, p1, v0}, Luv;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 48
    .line 49
    .line 50
    invoke-static {p1, p2}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public final e()V
    .locals 38

    move-object/from16 v4, p0

    .line 1
    sget-object v0, Lry5;->u:Ljava/lang/String;

    .line 2
    sget-object v0, Lzn7;->q:Lyn7;

    invoke-virtual {v0}, Lyn7;->d()Lzn7;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lqy5;->b(Lzn7;)Lry5;

    .line 4
    sget-object v0, Lg00;->a:Lg00;

    invoke-static {}, Lg00;->C()V

    .line 5
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v0, v4, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->b:Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService$RunMode;

    .line 7
    instance-of v1, v0, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService$RunMode$Schedules;

    const/4 v11, 0x0

    const/4 v14, 0x1

    if-eqz v1, :cond_4

    .line 8
    sget-object v15, Lvr6;->INSTANCE:Lvr6;

    sget-object v16, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->p:Ljava/lang/String;

    const-string v17, "Doing a basic assessment of runnable schedules"

    const/16 v19, 0x4

    const/16 v20, 0x0

    const/16 v18, 0x0

    invoke-static/range {v15 .. v20}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 9
    sget-object v0, Lc47;->a:Lc47;

    invoke-virtual {v0}, Lc47;->c()Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->getSchedules()Ljava/util/List;

    move-result-object v0

    .line 11
    sget-object v16, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->p:Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const-string v2, "Total schedules = "

    .line 12
    invoke-static {v1, v2}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 13
    invoke-static/range {v15 .. v20}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 14
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 16
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    add-int/2addr v5, v14

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;

    .line 17
    invoke-virtual {v8}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;->isEnabled()Z

    move-result v9

    .line 18
    invoke-virtual {v8}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;->isRunnable()Z

    move-result v10

    .line 19
    iget-boolean v12, v4, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->a:Z

    if-eqz v12, :cond_1

    if-eqz v9, :cond_0

    if-eqz v10, :cond_0

    :goto_1
    move v9, v14

    goto :goto_2

    :cond_0
    const/4 v9, 0x0

    goto :goto_2

    .line 20
    :cond_1
    invoke-virtual {v8}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;->getRepeatDays()Ljava/util/List;

    move-result-object v12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    if-eqz v9, :cond_0

    if-eqz v10, :cond_0

    goto :goto_1

    .line 21
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v8}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;->toDisplayString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "["

    const-string v15, "/"

    const-string v7, "]: "

    .line 22
    invoke-static {v13, v5, v15, v7, v10}, Lxs1;->n(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 23
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    if-eqz v9, :cond_2

    .line 24
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    sget-object v8, Lvr6;->INSTANCE:Lvr6;

    sget-object v9, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->p:Ljava/lang/String;

    sget-object v10, Lvr6$a;->GREEN:Lvr6$a;

    invoke-virtual {v8, v9, v7, v10}, Lvr6;->i(Ljava/lang/String;Ljava/lang/String;Lvr6$a;)V

    goto :goto_0

    .line 26
    :cond_2
    sget-object v17, Lvr6;->INSTANCE:Lvr6;

    sget-object v18, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->p:Ljava/lang/String;

    const/16 v21, 0x4

    const/16 v22, 0x0

    const/16 v20, 0x0

    move-object/from16 v19, v7

    invoke-static/range {v17 .. v22}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    goto :goto_0

    :cond_3
    :goto_3
    move-object v7, v1

    goto/16 :goto_6

    .line 27
    :cond_4
    instance-of v1, v0, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService$RunMode$MultipleSchedules;

    if-eqz v1, :cond_7

    .line 28
    check-cast v0, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService$RunMode$MultipleSchedules;

    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService$RunMode$MultipleSchedules;->getScheduleItems()Ljava/util/List;

    move-result-object v0

    .line 29
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 30
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 31
    check-cast v2, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;

    .line 32
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;->toDisplayString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "RunMode.MultipleSchedules: "

    .line 33
    invoke-static {v5, v3}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 34
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;->isRunnable()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 35
    sget-object v5, Lvr6;->INSTANCE:Lvr6;

    sget-object v7, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->p:Ljava/lang/String;

    sget-object v8, Lvr6$a;->GREEN:Lvr6$a;

    invoke-virtual {v5, v7, v3, v8}, Lvr6;->i(Ljava/lang/String;Ljava/lang/String;Lvr6$a;)V

    goto :goto_5

    .line 36
    :cond_6
    sget-object v17, Lvr6;->INSTANCE:Lvr6;

    sget-object v18, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->p:Ljava/lang/String;

    const/16 v21, 0x4

    const/16 v22, 0x0

    const/16 v20, 0x0

    move-object/from16 v19, v3

    invoke-static/range {v17 .. v22}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    move-object v2, v11

    :goto_5
    if-eqz v2, :cond_5

    .line 37
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 38
    :cond_7
    instance-of v1, v0, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService$RunMode$SingleSchedule;

    if-eqz v1, :cond_71

    .line 39
    check-cast v0, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService$RunMode$SingleSchedule;

    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService$RunMode$SingleSchedule;->getScheduleItem()Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;->toDisplayString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RunMode.SingleSchedule: "

    .line 41
    invoke-static {v2, v1}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 42
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;->canRunManually()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 43
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    sget-object v3, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->p:Ljava/lang/String;

    sget-object v5, Lvr6$a;->GREEN:Lvr6$a;

    invoke-virtual {v2, v3, v1, v5}, Lvr6;->i(Ljava/lang/String;Ljava/lang/String;Lvr6$a;)V

    .line 44
    invoke-static {v0}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_3

    .line 45
    :cond_8
    sget-object v17, Lvr6;->INSTANCE:Lvr6;

    sget-object v18, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->p:Ljava/lang/String;

    const/16 v21, 0x4

    const/16 v22, 0x0

    const/16 v20, 0x0

    move-object/from16 v19, v1

    invoke-static/range {v17 .. v22}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 46
    sget-object v1, Lov2;->a:Lov2;

    goto/16 :goto_3

    .line 47
    :goto_6
    sget-object v0, Lorg/swiftapps/swiftbackup/common/V;->INSTANCE:Lorg/swiftapps/swiftbackup/common/V;

    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/common/V;->getVp()Z

    move-result v0

    if-nez v0, :cond_9

    .line 48
    sget-object v0, Lc47;->a:Lc47;

    invoke-virtual {v0}, Lc47;->c()Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->getSchedules()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "all="

    .line 49
    invoke-static {v0, v1}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    const-string v2, "runnable="

    .line 51
    invoke-static {v1, v2}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 52
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-static {v0}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    .line 54
    sget-object v0, Lre3;->a:Lzc2;

    sget-object v0, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->p:Ljava/lang/String;

    const/16 v21, 0x0

    const/16 v22, 0x3f

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v17 .. v22}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    move-result-object v1

    .line 55
    new-instance v2, Lqe3;

    invoke-direct {v2, v0, v1}, Lqe3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :try_start_0
    invoke-virtual {v2}, Lqe3;->invoke()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :catch_0
    :cond_9
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 58
    sget-object v17, Lvr6;->INSTANCE:Lvr6;

    sget-object v18, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->p:Ljava/lang/String;

    const-string v19, "No schedules eligible for this run"

    const/16 v21, 0x4

    const/16 v22, 0x0

    const/16 v20, 0x0

    invoke-static/range {v17 .. v22}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    return-void

    .line 59
    :cond_a
    sget-object v23, Lvr6;->INSTANCE:Lvr6;

    sget-object v24, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->p:Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " runnable schedules"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v27, 0x4

    const/16 v28, 0x0

    const/16 v26, 0x0

    invoke-static/range {v23 .. v28}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 60
    iget-boolean v0, v4, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->a:Z

    const-wide/16 v8, 0x0

    const/4 v15, 0x4

    const/4 v1, 0x2

    if-nez v0, :cond_12

    .line 61
    sget-object v0, Lc47;->a:Lc47;

    invoke-virtual {v0}, Lc47;->c()Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;

    move-result-object v2

    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->getBatteryReqEnum()Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData$a;

    move-result-object v2

    .line 62
    sget-object v3, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData$a;->CHARGING:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData$a;

    if-ne v2, v3, :cond_10

    .line 63
    new-instance v3, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v3, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 64
    sget-object v5, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->a()Lorg/swiftapps/swiftbackup/SwiftApp;

    move-result-object v5

    invoke-virtual {v5, v11, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 65
    const-string v5, "plugged"

    const/4 v10, -0x1

    invoke-virtual {v3, v5, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_7

    :cond_b
    move-object v3, v11

    :goto_7
    if-nez v3, :cond_c

    goto :goto_8

    .line 66
    :cond_c
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v5, v14, :cond_10

    :goto_8
    if-nez v3, :cond_d

    goto :goto_9

    .line 67
    :cond_d
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v5, v1, :cond_10

    :goto_9
    if-nez v3, :cond_e

    goto :goto_a

    .line 68
    :cond_e
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v15, :cond_f

    goto :goto_b

    .line 69
    :cond_f
    :goto_a
    sget-object v24, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->p:Ljava/lang/String;

    const-string v25, "Not performing schedule (Device not charging)"

    const/16 v27, 0x4

    const/16 v28, 0x0

    const/16 v26, 0x0

    invoke-static/range {v23 .. v28}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 70
    new-instance v0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$BlockedNotCharging;

    invoke-direct {v0, v8, v9, v14, v11}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$BlockedNotCharging;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_d

    .line 71
    :cond_10
    :goto_b
    sget-object v3, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData$a;->MINIMUM_PERCENT:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData$a;

    if-ne v2, v3, :cond_12

    .line 72
    invoke-virtual {v0}, Lc47;->c()Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;

    move-result-object v2

    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->getBatteryPercentReq()I

    move-result v2

    .line 73
    sget-object v3, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    move-result-object v3

    const-string v5, "batterymanager"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v3, Landroid/os/BatteryManager;

    .line 74
    invoke-virtual {v3, v15}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v3

    if-lt v3, v2, :cond_11

    goto :goto_c

    .line 75
    :cond_11
    invoke-virtual {v0}, Lc47;->c()Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->getBatteryPercentReq()I

    move-result v0

    .line 76
    sget-object v24, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->p:Ljava/lang/String;

    const-string v2, "Not performing schedule (Battery < "

    const-string v3, "%)"

    .line 77
    invoke-static {v0, v2, v3}, Lxs1;->h(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const/16 v27, 0x4

    const/16 v28, 0x0

    const/16 v26, 0x0

    .line 78
    invoke-static/range {v23 .. v28}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 79
    new-instance v24, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$BlockedLowBattery;

    .line 80
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    move-result-object v2

    const-string v3, "batterymanager"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v2, Landroid/os/BatteryManager;

    .line 81
    invoke-virtual {v2, v15}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v27

    const/16 v29, 0x1

    const/16 v30, 0x0

    const-wide/16 v25, 0x0

    move/from16 v28, v0

    .line 82
    invoke-direct/range {v24 .. v30}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$BlockedLowBattery;-><init>(JIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v0, v24

    goto :goto_d

    :cond_12
    :goto_c
    move-object v0, v11

    .line 83
    :goto_d
    sget-object v2, Lorg/swiftapps/swiftbackup/home/schedule/data/GlobalScheduleError;->Companion:Lyy3;

    if-eqz v0, :cond_13

    .line 84
    new-instance v3, Lorg/swiftapps/swiftbackup/home/schedule/data/GlobalScheduleError;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails;->asHumanReadableString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v12, v13, v5}, Lorg/swiftapps/swiftbackup/home/schedule/data/GlobalScheduleError;-><init>(JLjava/lang/String;)V

    goto :goto_e

    :cond_13
    move-object v3, v11

    .line 85
    :goto_e
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    sget-object v2, Lw14;->a:Lgv7;

    const-string v2, "saved_global_schedule_error"

    invoke-static {v3, v2}, Lw14;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_14

    .line 87
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails;->asHumanReadableString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v14}, Lo37;->c(Ljava/lang/String;Z)V

    return-void

    .line 88
    :cond_14
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_f

    .line 89
    :cond_15
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;

    .line 90
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;->hasAnyCloudLocations()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 91
    sget-object v17, Lvr6;->INSTANCE:Lvr6;

    sget-object v18, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->p:Ljava/lang/String;

    const-string v19, "Some schedules have cloud locations set. Checking for Internet and Cloud service access..."

    const/16 v21, 0x4

    const/16 v22, 0x0

    const/16 v20, 0x0

    invoke-static/range {v17 .. v22}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 92
    iget-object v0, v4, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->k:Lgv7;

    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    iget-object v0, v4, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->n:Lgv7;

    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    :cond_17
    :goto_f
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v10, 0x0

    if-eqz v2, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;

    .line 95
    sget-object v3, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails;->Companion:Lorg/swiftapps/swiftbackup/home/schedule/data/o;

    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;->getItemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    const-string v3, "editor"

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    invoke-static {v2}, Lorg/swiftapps/swiftbackup/home/schedule/data/o;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 98
    const-string v5, "_type"

    invoke-virtual {v2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 99
    sget-object v12, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    if-eqz v12, :cond_19

    invoke-interface {v12, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 100
    sget-object v5, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    if-eqz v5, :cond_18

    invoke-interface {v5, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_10

    :cond_18
    invoke-static {v3}, Lpe4;->F(Ljava/lang/String;)V

    throw v10

    .line 101
    :cond_19
    invoke-static {v3}, Lpe4;->F(Ljava/lang/String;)V

    throw v10

    .line 102
    :cond_1a
    const-class v12, Lc40;

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 103
    new-instance v5, Lky7;

    const/4 v0, 0x0

    .line 104
    invoke-direct {v5, v1, v0}, Lty7;-><init>(II)V

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 106
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1b
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppConfig;

    if-eqz v3, :cond_1b

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 107
    :cond_1c
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1d

    goto :goto_12

    :cond_1d
    move-object v0, v11

    :goto_12
    if-eqz v0, :cond_27

    .line 108
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    add-int/2addr v2, v14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v22, v3

    check-cast v22, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppConfig;

    .line 109
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 110
    invoke-virtual/range {v22 .. v22}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppConfig;->toDisplayString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Preparing app backup tasks for Config schedules ("

    const-string v11, "/"

    const-string v15, "): "

    .line 111
    invoke-static {v9, v2, v11, v15, v3}, Lxs1;->n(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 112
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 113
    sget-object v27, Lvr6;->INSTANCE:Lvr6;

    sget-object v28, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->p:Ljava/lang/String;

    const/16 v31, 0x4

    const/16 v32, 0x0

    const/16 v30, 0x0

    invoke-static/range {v27 .. v32}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 114
    invoke-virtual/range {v22 .. v22}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppConfig;->getConfig()Lorg/swiftapps/swiftbackup/appconfigs/data/Config;

    move-result-object v3

    if-nez v3, :cond_1e

    :goto_14
    move-object/from16 v29, v0

    move-object/from16 v36, v1

    goto/16 :goto_1a

    .line 115
    :cond_1e
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->getValidSettings()Ljava/util/List;

    move-result-object v8

    if-nez v8, :cond_1f

    goto :goto_14

    .line 116
    :cond_1f
    new-instance v9, Llh6;

    .line 117
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 118
    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_20

    goto :goto_15

    .line 119
    :cond_20
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_21
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_22

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;

    .line 120
    invoke-virtual {v15}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->getLocations()Ljava/util/List;

    move-result-object v15

    invoke-static {v15}, Lji8;->r(Ljava/util/Collection;)Z

    move-result v15

    if-eqz v15, :cond_21

    .line 121
    const-string v11, "Config schedule:"

    invoke-virtual {v4, v11}, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->h(Ljava/lang/String;)Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails;

    move-result-object v11

    if-eqz v11, :cond_22

    .line 122
    iput-object v11, v9, Llh6;->a:Ljava/lang/Object;

    .line 123
    sget-object v27, Lvr6;->INSTANCE:Lvr6;

    .line 124
    sget-object v28, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->p:Ljava/lang/String;

    .line 125
    invoke-virtual {v11}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails;->asHumanReadableString()Ljava/lang/String;

    move-result-object v11

    const-string v15, "Some settings have cloud location, but cloud upload will be skipped: "

    .line 126
    invoke-static {v15, v11}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const/16 v31, 0x4

    const/16 v32, 0x0

    const/16 v30, 0x0

    .line 127
    invoke-static/range {v27 .. v32}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    const/4 v11, 0x0

    goto :goto_16

    :cond_22
    :goto_15
    move v11, v14

    .line 128
    :goto_16
    new-instance v15, Lih6;

    .line 129
    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 131
    invoke-interface {v8}, Ljava/util/Collection;->size()I

    move-result v14

    move-object/from16 v29, v0

    const/4 v0, 0x0

    :goto_17
    if-ge v0, v14, :cond_26

    .line 132
    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;

    if-nez v11, :cond_24

    .line 133
    invoke-virtual/range {v17 .. v17}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->getLocations()Ljava/util/List;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lji8;->r(Ljava/util/Collection;)Z

    move-result v18

    if-eqz v18, :cond_24

    .line 134
    sget-object v30, Lvr6;->INSTANCE:Lvr6;

    sget-object v31, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->p:Ljava/lang/String;

    const-string v32, "Removing cloud location due to network/cloud service issue."

    const/16 v34, 0x4

    const/16 v35, 0x0

    const/16 v33, 0x0

    invoke-static/range {v30 .. v35}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 135
    invoke-virtual/range {v17 .. v17}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->removeCloudLocation()Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;

    move-result-object v17

    move/from16 v18, v0

    const/4 v0, 0x1

    .line 136
    iput-boolean v0, v15, Lih6;->a:Z

    .line 137
    invoke-virtual/range {v17 .. v17}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->getLocations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 138
    sget-object v31, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->p:Ljava/lang/String;

    add-int/lit8 v0, v18, 0x1

    move-object/from16 v36, v1

    const-string v1, "No locations for backup destination. Skipping ConfigSettings #"

    .line 139
    invoke-static {v0, v1}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v32

    const/16 v34, 0x4

    const/16 v35, 0x0

    const/16 v33, 0x0

    .line 140
    invoke-static/range {v30 .. v35}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_19

    :cond_23
    :goto_18
    move-object/from16 v36, v1

    move-object/from16 v0, v17

    goto :goto_19

    :cond_24
    move/from16 v18, v0

    goto :goto_18

    :goto_19
    if-eqz v0, :cond_25

    .line 141
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_25
    add-int/lit8 v0, v18, 0x1

    move-object/from16 v1, v36

    goto :goto_17

    :cond_26
    move-object/from16 v36, v1

    .line 142
    new-instance v0, Lrw6;

    new-instance v17, Ld47;

    move-object/from16 v19, v5

    move-object/from16 v21, v9

    move-object/from16 v18, v10

    move-object/from16 v20, v15

    invoke-direct/range {v17 .. v22}, Ld47;-><init>(Ljava/util/ArrayList;Lky7;Lih6;Llh6;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppConfig;)V

    move-object/from16 v1, v17

    invoke-direct {v0, v12, v1}, Lrw6;-><init>(Ljava/lang/Class;Lbt3;)V

    const/4 v1, 0x1

    .line 143
    invoke-static {v3, v1}, Ley7;->a(Lorg/swiftapps/swiftbackup/appconfigs/data/Config;Z)Lvq;

    move-result-object v3

    .line 144
    iput-object v3, v0, Lrw6;->d:Lvq;

    .line 145
    new-instance v1, Lg47;

    invoke-virtual/range {v22 .. v22}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppConfig;->getItemId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Lg47;-><init>(Ljava/lang/String;Lrw6;)V

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1a
    move-object/from16 v0, v29

    move-object/from16 v1, v36

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x4

    goto/16 :goto_13

    .line 146
    :cond_27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 147
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_28
    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;

    if-eqz v3, :cond_28

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 148
    :cond_29
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2a

    move-object v2, v0

    goto :goto_1c

    :cond_2a
    const/4 v2, 0x0

    :goto_1c
    const v8, 0x7f130079

    if-eqz v2, :cond_2b

    .line 149
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v1, 0x0

    :goto_1d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    add-int/lit8 v10, v1, 0x1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;

    .line 150
    new-instance v11, Lrw6;

    new-instance v0, Le47;

    invoke-direct/range {v0 .. v5}, Le47;-><init>(ILjava/util/ArrayList;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;Lky7;)V

    invoke-direct {v11, v12, v0}, Lrw6;-><init>(Ljava/lang/Class;Lbt3;)V

    .line 151
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->getLabels()Ljava/util/Set;

    move-result-object v0

    .line 152
    sget-object v1, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    move-result-object v1

    .line 153
    new-instance v4, Lvq;

    .line 154
    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v15, 0x7f1302e3

    .line 155
    invoke-virtual {v1, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 156
    invoke-direct {v4, v14, v1, v0}, Lvq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 157
    iput-object v4, v11, Lrw6;->d:Lvq;

    .line 158
    new-instance v0, Lg47;

    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->getItemId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v11}, Lg47;-><init>(Ljava/lang/String;Lrw6;)V

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v4, p0

    move v1, v10

    goto :goto_1d

    .line 159
    :cond_2b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 160
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2c
    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsQuickActions;

    if-eqz v3, :cond_2c

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 161
    :cond_2d
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2e

    move-object v2, v0

    goto :goto_1f

    :cond_2e
    const/4 v2, 0x0

    :goto_1f
    if-eqz v2, :cond_30

    .line 162
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v1, 0x0

    :goto_20
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    add-int/lit8 v10, v1, 0x1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsQuickActions;

    .line 163
    new-instance v11, Lrw6;

    new-instance v0, Lf47;

    move-object/from16 v4, p0

    invoke-direct/range {v0 .. v5}, Lf47;-><init>(ILjava/util/ArrayList;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsQuickActions;Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;Lky7;)V

    invoke-direct {v11, v12, v0}, Lrw6;-><init>(Ljava/lang/Class;Lbt3;)V

    .line 164
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsQuickActions;->getSubtitle()Ljava/lang/String;

    move-result-object v0

    .line 165
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 166
    sget-object v1, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    move-result-object v1

    .line 167
    new-instance v14, Lvq;

    .line 168
    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 169
    invoke-static {v0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_2f

    :goto_21
    const/4 v15, 0x0

    goto :goto_22

    :cond_2f
    const/4 v0, 0x0

    goto :goto_21

    .line 170
    :goto_22
    invoke-direct {v14, v1, v0, v15}, Lvq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 171
    iput-object v14, v11, Lrw6;->d:Lvq;

    .line 172
    new-instance v0, Lg47;

    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsQuickActions;->getItemId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v11}, Lg47;-><init>(Ljava/lang/String;Lrw6;)V

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v10

    goto :goto_20

    :cond_30
    const/4 v15, 0x0

    move-object/from16 v4, p0

    .line 173
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 174
    iget-boolean v0, v4, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->d:Z

    if-eqz v0, :cond_31

    goto/16 :goto_47

    .line 175
    :cond_31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 176
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_32
    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Messages;

    if-eqz v3, :cond_32

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 177
    :cond_33
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_34

    goto :goto_24

    :cond_34
    const/4 v0, 0x0

    :goto_24
    if-eqz v0, :cond_38

    .line 178
    sget-object v1, Ldz5;->a:Ldz5;

    invoke-static {}, Ldz5;->m()Z

    move-result v1

    if-nez v1, :cond_35

    .line 179
    sget-object v8, Lvr6;->INSTANCE:Lvr6;

    sget-object v9, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->p:Ljava/lang/String;

    const-string v10, "Messages permission not granted"

    const/4 v12, 0x4

    const/4 v13, 0x0

    const/4 v11, 0x0

    invoke-static/range {v8 .. v13}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    const-wide/16 v1, 0x0

    const/4 v5, 0x0

    const/4 v11, 0x0

    goto/16 :goto_26

    .line 180
    :cond_35
    sget-object v1, Lud5;->a:Lgv7;

    new-instance v10, Lwg5$c;

    invoke-direct {v10}, Lwg5$c;-><init>()V

    .line 181
    sget-object v8, Lqv1;->Companion:Lqv1$a;

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v9, 0x0

    const-wide/16 v1, 0x0

    const/4 v11, 0x0

    invoke-static/range {v8 .. v13}, Lqv1$a;->getList$default(Lqv1$a;ZLwg5$c;Lmt3;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 182
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_36

    .line 183
    const-string v19, "No messages found, skipping messages task"

    .line 184
    sget-object v17, Lvr6;->INSTANCE:Lvr6;

    sget-object v18, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->p:Ljava/lang/String;

    const/16 v21, 0x4

    const/16 v22, 0x0

    const/16 v20, 0x0

    invoke-static/range {v17 .. v22}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 185
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    move-result-object v0

    const-string v3, "No messages found"

    .line 186
    sget-object v5, Lzn4;->a:Lzn4;

    new-instance v5, Lcv;

    const/16 v8, 0xe

    invoke-direct {v5, v8, v0, v3}, Lcv;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v5}, Lzn4;->e(Lbt3;)V

    .line 187
    new-instance v0, Lsl4;

    .line 188
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 189
    invoke-static {}, Lny2;->b()Lny2;

    move-result-object v3

    invoke-virtual {v3, v0}, Lny2;->e(Ljava/lang/Object;)V

    move-object v5, v11

    goto :goto_26

    .line 190
    :cond_36
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 191
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Messages;

    .line 192
    new-instance v9, Lrw6;

    const-class v10, Lff5;

    new-instance v12, Lbj0;

    invoke-direct {v12, v4, v8, v3}, Lbj0;-><init>(Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Messages;Ljava/util/List;)V

    invoke-direct {v9, v10, v12}, Lrw6;-><init>(Ljava/lang/Class;Lbt3;)V

    .line 193
    new-instance v10, Lvq;

    invoke-virtual {v8}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Messages;->getTitle()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Messages;->getSubtitle()Ljava/lang/String;

    move-result-object v13

    .line 194
    invoke-direct {v10, v12, v13, v15}, Lvq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 195
    iput-object v10, v9, Lrw6;->d:Lvq;

    .line 196
    new-instance v10, Lg47;

    invoke-virtual {v8}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Messages;->getItemId()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v10, v8, v9}, Lg47;-><init>(Ljava/lang/String;Lrw6;)V

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_25

    :cond_37
    :goto_26
    if-eqz v5, :cond_39

    .line 197
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_27

    :cond_38
    const-wide/16 v1, 0x0

    const/4 v11, 0x0

    .line 198
    :cond_39
    :goto_27
    iget-boolean v0, v4, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->d:Z

    if-eqz v0, :cond_3a

    goto/16 :goto_47

    .line 199
    :cond_3a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 200
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3b
    :goto_28
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    instance-of v8, v5, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$CallLogs;

    if-eqz v8, :cond_3b

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_28

    .line 201
    :cond_3c
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3d

    goto :goto_29

    :cond_3d
    move-object v0, v11

    :goto_29
    if-eqz v0, :cond_41

    .line 202
    sget-object v3, Ldz5;->a:Ldz5;

    invoke-static {}, Ldz5;->g()Z

    move-result v3

    if-nez v3, :cond_3e

    .line 203
    sget-object v17, Lvr6;->INSTANCE:Lvr6;

    sget-object v18, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->p:Ljava/lang/String;

    const-string v19, "Messages permission not granted"

    const/16 v21, 0x4

    const/16 v22, 0x0

    const/16 v20, 0x0

    invoke-static/range {v17 .. v22}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    :goto_2a
    move-object v5, v11

    goto :goto_2c

    .line 204
    :cond_3e
    invoke-static {}, Ld01;->g()Ljava/util/ArrayList;

    move-result-object v3

    .line 205
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 206
    sget-object v17, Lvr6;->INSTANCE:Lvr6;

    sget-object v18, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->p:Ljava/lang/String;

    const-string v19, "No call logs found, skipping call logs task"

    const/16 v21, 0x4

    const/16 v22, 0x0

    const/16 v20, 0x0

    invoke-static/range {v17 .. v22}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 207
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    move-result-object v0

    const-string v3, "No call logs found"

    .line 208
    sget-object v5, Lzn4;->a:Lzn4;

    .line 209
    invoke-static {v0, v3}, Ldj7;->y(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2a

    .line 210
    :cond_3f
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 211
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$CallLogs;

    .line 212
    new-instance v9, Lrw6;

    const-class v10, Lz11;

    new-instance v12, Ly10;

    invoke-direct {v12, v4, v8, v3}, Ly10;-><init>(Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$CallLogs;Ljava/util/ArrayList;)V

    invoke-direct {v9, v10, v12}, Lrw6;-><init>(Ljava/lang/Class;Lbt3;)V

    .line 213
    new-instance v10, Lvq;

    invoke-virtual {v8}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$CallLogs;->getTitle()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$CallLogs;->getSubtitle()Ljava/lang/String;

    move-result-object v13

    .line 214
    invoke-direct {v10, v12, v13, v15}, Lvq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 215
    iput-object v10, v9, Lrw6;->d:Lvq;

    .line 216
    new-instance v10, Lg47;

    invoke-virtual {v8}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$CallLogs;->getItemId()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v10, v8, v9}, Lg47;-><init>(Ljava/lang/String;Lrw6;)V

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    :cond_40
    :goto_2c
    if-eqz v5, :cond_41

    .line 217
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 218
    :cond_41
    iget-boolean v0, v4, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->d:Z

    if-eqz v0, :cond_42

    goto/16 :goto_47

    .line 219
    :cond_42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 220
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_43
    :goto_2d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_44

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    instance-of v8, v5, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wallpapers;

    if-eqz v8, :cond_43

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    .line 221
    :cond_44
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_45

    goto :goto_2e

    :cond_45
    move-object v0, v11

    :goto_2e
    if-eqz v0, :cond_48

    .line 222
    invoke-static {}, Ltv7;->a()Lsv7;

    move-result-object v3

    .line 223
    iget-object v5, v3, Lsv7;->a:Lrv7;

    .line 224
    iget-object v3, v3, Lsv7;->b:Lrv7;

    .line 225
    filled-new-array {v5, v3}, [Lrv7;

    move-result-object v3

    .line 226
    invoke-static {v3}, Lx50;->p0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 227
    move-object v5, v3

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_46

    .line 228
    sget-object v17, Lvr6;->INSTANCE:Lvr6;

    sget-object v18, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->p:Ljava/lang/String;

    const-string v19, "No valid system wallpapers found"

    const/16 v21, 0x4

    const/16 v22, 0x0

    const/16 v20, 0x0

    invoke-static/range {v17 .. v22}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 229
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    move-result-object v0

    const-string v3, "No wallpapers found"

    .line 230
    sget-object v5, Lzn4;->a:Lzn4;

    .line 231
    invoke-static {v0, v3}, Ldj7;->y(Landroid/content/Context;Ljava/lang/String;)V

    move-object v5, v11

    goto :goto_30

    .line 232
    :cond_46
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 233
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_47

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wallpapers;

    .line 234
    new-instance v9, Lrw6;

    const-class v10, Lwp8;

    new-instance v12, Lmh;

    const/4 v13, 0x4

    invoke-direct {v12, v13, v4, v8, v3}, Lmh;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v9, v10, v12}, Lrw6;-><init>(Ljava/lang/Class;Lbt3;)V

    .line 235
    new-instance v10, Lvq;

    invoke-virtual {v8}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wallpapers;->getTitle()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wallpapers;->getSubtitle()Ljava/lang/String;

    move-result-object v14

    .line 236
    invoke-direct {v10, v12, v14, v15}, Lvq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 237
    iput-object v10, v9, Lrw6;->d:Lvq;

    .line 238
    new-instance v10, Lg47;

    invoke-virtual {v8}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wallpapers;->getItemId()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v10, v8, v9}, Lg47;-><init>(Ljava/lang/String;Lrw6;)V

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    :cond_47
    :goto_30
    if-eqz v5, :cond_48

    .line 239
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 240
    :cond_48
    iget-boolean v0, v4, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->d:Z

    if-eqz v0, :cond_49

    goto/16 :goto_47

    .line 241
    :cond_49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 242
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4a
    :goto_31
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    instance-of v8, v5, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;

    if-eqz v8, :cond_4a

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_31

    .line 243
    :cond_4b
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4c

    goto :goto_32

    :cond_4c
    move-object v0, v11

    :goto_32
    if-eqz v0, :cond_53

    .line 244
    sget-object v3, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v5, "wifi"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 245
    new-instance v4, Lus8;

    invoke-direct {v4, v3}, Lus8;-><init>(Landroid/net/wifi/WifiManager;)V

    .line 246
    iget-object v3, v4, Lus8;->a:Lke;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 247
    sget-object v5, Lkt8;->BACKUP:Lkt8;

    invoke-virtual {v3, v5}, Lke;->m(Lkt8;)Lis8;

    move-result-object v3

    .line 248
    instance-of v5, v3, Lhs8;

    if-eqz v5, :cond_50

    .line 249
    check-cast v3, Lhs8;

    iget-object v3, v3, Lhs8;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4e

    .line 250
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 251
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_33
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;

    .line 252
    new-instance v10, Lrw6;

    const-class v12, Ltt8;

    new-instance v0, Lld6;

    const/4 v5, 0x2

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lld6;-><init>(Landroid/content/ComponentCallbacks;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object/from16 v37, v1

    move-object v1, v0

    move-object v0, v4

    move-object/from16 v4, v37

    invoke-direct {v10, v12, v1}, Lrw6;-><init>(Ljava/lang/Class;Lbt3;)V

    .line 253
    new-instance v1, Lvq;

    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;->getSubtitle()Ljava/lang/String;

    move-result-object v12

    .line 254
    invoke-direct {v1, v5, v12, v15}, Lvq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 255
    iput-object v1, v10, Lrw6;->d:Lvq;

    .line 256
    new-instance v1, Lg47;

    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;->getItemId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v10}, Lg47;-><init>(Ljava/lang/String;Lrw6;)V

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v4, v0

    goto :goto_33

    :cond_4d
    move-object/from16 v4, p0

    goto :goto_36

    :cond_4e
    move-object/from16 v4, p0

    .line 257
    sget-object v17, Lvr6;->INSTANCE:Lvr6;

    sget-object v18, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->p:Ljava/lang/String;

    const-string v19, "No saved wifi networks found"

    const/16 v21, 0x4

    const/16 v22, 0x0

    const/16 v20, 0x0

    invoke-static/range {v17 .. v22}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    :cond_4f
    move-object v8, v11

    goto :goto_36

    :cond_50
    move-object/from16 v4, p0

    .line 258
    instance-of v5, v3, Lgs8;

    if-eqz v5, :cond_52

    .line 259
    sget-object v17, Lvr6;->INSTANCE:Lvr6;

    sget-object v18, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->p:Ljava/lang/String;

    check-cast v3, Lgs8;

    .line 260
    iget-object v5, v3, Lgs8;->a:Lds8;

    .line 261
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "WiFi schedule device read failed: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v21, 0x4

    const/16 v22, 0x0

    const/16 v20, 0x0

    invoke-static/range {v17 .. v22}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 262
    sget-object v5, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails;->Companion:Lorg/swiftapps/swiftbackup/home/schedule/data/o;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 263
    iget-object v3, v3, Lgs8;->a:Lds8;

    .line 264
    sget-object v5, Lds8;->ACCESS_UNAVAILABLE:Lds8;

    if-ne v3, v5, :cond_51

    .line 265
    new-instance v3, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$BlockedWifiPrivilegedAccess;

    const/4 v5, 0x1

    invoke-direct {v3, v1, v2, v5, v15}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$BlockedWifiPrivilegedAccess;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_34

    :cond_51
    const/4 v5, 0x1

    .line 266
    new-instance v3, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$FailedWifiDeviceRead;

    invoke-direct {v3, v1, v2, v5, v15}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$FailedWifiDeviceRead;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 267
    :goto_34
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_35
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;

    .line 268
    sget-object v2, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails;->Companion:Lorg/swiftapps/swiftbackup/home/schedule/data/o;

    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;->getItemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v3}, Lorg/swiftapps/swiftbackup/home/schedule/data/o;->d(Ljava/lang/String;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails;)V

    goto :goto_35

    :goto_36
    if-eqz v8, :cond_53

    .line 269
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_37

    .line 270
    :cond_52
    invoke-static {}, Lq;->j()V

    return-void

    .line 271
    :cond_53
    :goto_37
    iget-boolean v0, v4, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->d:Z

    if-eqz v0, :cond_54

    goto/16 :goto_47

    .line 272
    :cond_54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 273
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_55
    :goto_38
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_56

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;

    if-eqz v3, :cond_55

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_38

    .line 274
    :cond_56
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_57

    goto :goto_39

    :cond_57
    move-object v0, v11

    :goto_39
    if-eqz v0, :cond_59

    .line 275
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 276
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_58

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;

    .line 277
    new-instance v3, Lrw6;

    const-class v5, Lqp3;

    new-instance v8, Ll30;

    const/16 v9, 0xc

    invoke-direct {v8, v9, v2, v4}, Ll30;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v3, v5, v8}, Lrw6;-><init>(Ljava/lang/Class;Lbt3;)V

    .line 278
    new-instance v5, Lvq;

    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->getSubtitle()Ljava/lang/String;

    move-result-object v9

    .line 279
    invoke-direct {v5, v8, v9, v15}, Lvq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 280
    iput-object v5, v3, Lrw6;->d:Lvq;

    .line 281
    new-instance v5, Lg47;

    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->getItemId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2, v3}, Lg47;-><init>(Ljava/lang/String;Lrw6;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3a

    .line 282
    :cond_58
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 283
    :cond_59
    iget-boolean v0, v4, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->d:Z

    if-eqz v0, :cond_5a

    goto/16 :goto_47

    .line 284
    :cond_5a
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v7, v1}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 285
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 286
    check-cast v3, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;

    .line 287
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;->getItemId()Ljava/lang/String;

    move-result-object v3

    .line 288
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3b

    .line 289
    :cond_5b
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 290
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 291
    move-object v6, v5

    check-cast v6, Lg47;

    .line 292
    iget-object v6, v6, Lg47;->a:Ljava/lang/String;

    .line 293
    invoke-virtual {v2, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_5c

    .line 294
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 295
    invoke-interface {v2, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    :cond_5c
    check-cast v8, Ljava/util/List;

    .line 297
    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3c

    .line 298
    :cond_5d
    invoke-static {v0}, Leq3;->p(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v0

    .line 299
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 300
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_60

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 301
    check-cast v5, Ljava/lang/String;

    .line 302
    invoke-virtual {v2, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-nez v5, :cond_5e

    sget-object v5, Lov2;->a:Lov2;

    .line 303
    :cond_5e
    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v5, v1}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 304
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 305
    check-cast v8, Lg47;

    .line 306
    iget-object v8, v8, Lg47;->b:Lrw6;

    .line 307
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3e

    .line 308
    :cond_5f
    invoke-static {v6, v3}, Lel1;->K0(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    goto :goto_3d

    .line 309
    :cond_60
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_61

    const/4 v0, 0x0

    goto :goto_40

    .line 310
    :cond_61
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_62
    :goto_3f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_65

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;

    .line 311
    sget-object v5, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails;->Companion:Lorg/swiftapps/swiftbackup/home/schedule/data/o;

    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;->getItemId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, Lorg/swiftapps/swiftbackup/home/schedule/data/o;->b(Ljava/lang/String;)Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails;

    move-result-object v5

    if-eqz v5, :cond_63

    .line 312
    invoke-virtual {v5}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails;->isError()Z

    move-result v6

    if-eqz v6, :cond_63

    .line 313
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;->toDisplayString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "Error in schedule: Schedule="

    const-string v7, "."

    .line 314
    invoke-static {v6, v2, v7}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 315
    invoke-virtual {v5}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails;->asHumanReadableString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " Error="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 316
    invoke-virtual {v2, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 317
    sget-object v17, Lvr6;->INSTANCE:Lvr6;

    sget-object v18, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->p:Ljava/lang/String;

    const/16 v21, 0x4

    const/16 v22, 0x0

    const/16 v20, 0x0

    invoke-static/range {v17 .. v22}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    :cond_63
    if-eqz v5, :cond_62

    .line 318
    invoke-virtual {v5}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails;->isError()Z

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_62

    add-int/lit8 v1, v1, 0x1

    if-ltz v1, :cond_64

    goto :goto_3f

    .line 319
    :cond_64
    invoke-static {}, Lfl1;->E0()V

    throw v15

    :cond_65
    move v0, v1

    :goto_40
    if-lez v0, :cond_66

    const v0, 0x7f1304c3

    .line 320
    invoke-virtual {v4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_41

    :cond_66
    move-object v0, v11

    .line 321
    :goto_41
    iget-boolean v1, v4, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->d:Z

    if-eqz v1, :cond_67

    .line 322
    sget-object v4, Lvr6;->INSTANCE:Lvr6;

    sget-object v5, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->p:Ljava/lang/String;

    const-string v6, "Foreground service timed out while preparing schedules; skipping task handoff"

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    return-void

    .line 323
    :cond_67
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_42
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_68

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrw6;

    const/4 v5, 0x1

    .line 324
    iput-boolean v5, v2, Lrw6;->e:Z

    goto :goto_42

    :cond_68
    const/4 v5, 0x1

    .line 325
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_69

    sget-object v1, Lhy7;->a:Lhy7;

    invoke-static {v3}, Lhy7;->b(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_69

    move v14, v5

    goto :goto_43

    :cond_69
    const/4 v14, 0x0

    .line 326
    :goto_43
    iget-boolean v1, v4, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->d:Z

    if-eqz v1, :cond_6a

    .line 327
    sget-object v4, Lvr6;->INSTANCE:Lvr6;

    sget-object v5, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->p:Ljava/lang/String;

    const-string v6, "Foreground service timed out while adding tasks; skipping task handoff"

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    return-void

    :cond_6a
    if-eqz v14, :cond_6e

    .line 328
    sget-object v17, Lvr6;->INSTANCE:Lvr6;

    sget-object v18, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->p:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v2, "Added "

    const-string v3, " taskProviders"

    .line 329
    invoke-static {v1, v2, v3}, Lxs1;->h(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const/16 v21, 0x4

    const/16 v22, 0x0

    const/16 v20, 0x0

    .line 330
    invoke-static/range {v17 .. v22}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 331
    iget-object v1, v4, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 332
    :try_start_1
    iget-boolean v2, v4, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->d:Z

    if-eqz v2, :cond_6b

    const/4 v7, 0x0

    goto :goto_45

    .line 333
    :cond_6b
    sget-object v2, Lhy7;->a:Lhy7;

    iget-boolean v2, v4, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->a:Z

    iget-object v3, v4, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->b:Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService$RunMode;

    .line 334
    sput-boolean v2, Lhy7;->f:Z

    if-eqz v3, :cond_6c

    .line 335
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_44

    :cond_6c
    move-object v2, v11

    :goto_44
    sput-object v2, Lhy7;->g:Ljava/lang/String;

    .line 336
    iget-boolean v2, v4, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->a:Z

    if-eqz v2, :cond_6d

    .line 337
    invoke-static {v4, v0}, Lhy7;->e(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    goto :goto_45

    :catchall_0
    move-exception v0

    goto :goto_46

    .line 338
    :cond_6d
    invoke-static {v11, v0}, Lhy7;->e(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 339
    :goto_45
    monitor-exit v1

    iput-boolean v7, v4, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->c:Z

    goto :goto_47

    :goto_46
    monitor-exit v1

    throw v0

    .line 340
    :cond_6e
    sget-object v1, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1303d1

    .line 341
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 342
    sget-object v3, Lzn4;->a:Lzn4;

    .line 343
    invoke-static {v1, v2}, Ldj7;->y(Landroid/content/Context;Ljava/lang/String;)V

    .line 344
    sget-object v4, Lvr6;->INSTANCE:Lvr6;

    sget-object v5, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->p:Ljava/lang/String;

    const-string v6, "No tasks to perform in any schedules! Exiting."

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    if-eqz v0, :cond_70

    .line 345
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_6f

    goto :goto_47

    :cond_6f
    const/4 v1, 0x0

    .line 346
    invoke-static {v0, v1}, Lo37;->c(Ljava/lang/String;Z)V

    :cond_70
    :goto_47
    return-void

    .line 347
    :cond_71
    invoke-static {}, Lq;->j()V

    return-void
.end method

.method public final f(Ljava/lang/String;Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;)Z
    .locals 7

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
    sget-object v1, Lvr6;->INSTANCE:Lvr6;

    .line 8
    .line 9
    sget-object v2, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->p:Ljava/lang/String;

    .line 10
    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v4, "SyncOption: "

    .line 14
    .line 15
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    const/4 v5, 0x4

    .line 26
    const/4 v6, 0x0

    .line 27
    const/4 v4, 0x0

    .line 28
    invoke-static/range {v1 .. v6}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    sget-object v2, Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;->WIFI:Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;

    .line 32
    .line 33
    if-ne p2, v2, :cond_0

    .line 34
    .line 35
    invoke-static {}, Lorg/swiftapps/swiftbackup/common/Const;->z()Z

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    if-nez p2, :cond_0

    .line 40
    .line 41
    sget-object v2, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->p:Ljava/lang/String;

    .line 42
    .line 43
    const p0, 0x7f1305b4

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    const/4 v5, 0x4

    .line 54
    const/4 v6, 0x0

    .line 55
    const/4 v4, 0x0

    .line 56
    invoke-static/range {v1 .. v6}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    sget-object p2, Lzn4;->a:Lzn4;

    .line 67
    .line 68
    invoke-static {v0, p0}, Ldj7;->y(Landroid/content/Context;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    sget-object p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails;->Companion:Lorg/swiftapps/swiftbackup/home/schedule/data/o;

    .line 72
    .line 73
    new-instance p2, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$SkippedUploadSyncOptionsError;

    .line 74
    .line 75
    const/4 v0, 0x1

    .line 76
    const/4 v1, 0x0

    .line 77
    const-wide/16 v2, 0x0

    .line 78
    .line 79
    invoke-direct {p2, v2, v3, v0, v1}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$SkippedUploadSyncOptionsError;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    invoke-static {p1, p2}, Lorg/swiftapps/swiftbackup/home/schedule/data/o;->d(Ljava/lang/String;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails;)V

    .line 86
    .line 87
    .line 88
    const/4 p0, 0x0

    .line 89
    return p0

    .line 90
    :cond_0
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->k:Lgv7;

    .line 91
    .line 92
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    check-cast p0, Ljava/lang/Boolean;

    .line 97
    .line 98
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 99
    .line 100
    .line 101
    move-result p0

    .line 102
    return p0
.end method

.method public final g(Ljava/lang/String;Ljava/util/ArrayList;)Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails;
    .locals 2

    .line 1
    sget-object v0, Lq05;->CLOUD:Lq05;

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0, p1}, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->h(Ljava/lang/String;)Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-nez p0, :cond_1

    .line 15
    .line 16
    :goto_0
    const/4 p0, 0x0

    .line 17
    return-object p0

    .line 18
    :cond_1
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    return-object p0
.end method

.method public final h(Ljava/lang/String;)Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails;
    .locals 11

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->n:Lgv7;

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
    const/4 v1, 0x1

    .line 14
    const-wide/16 v2, 0x0

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    sget-object p0, Ltb1;->a:Ltb1;

    .line 20
    .line 21
    invoke-static {}, Lqb1;->d()Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-nez p0, :cond_0

    .line 26
    .line 27
    sget-object v5, Lvr6;->INSTANCE:Lvr6;

    .line 28
    .line 29
    sget-object v6, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->p:Ljava/lang/String;

    .line 30
    .line 31
    const-string p0, " Cloud client not connected"

    .line 32
    .line 33
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v7

    .line 37
    const/4 v9, 0x4

    .line 38
    const/4 v10, 0x0

    .line 39
    const/4 v8, 0x0

    .line 40
    invoke-static/range {v5 .. v10}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    new-instance p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$SkippedUploadCloudNotConnected;

    .line 44
    .line 45
    invoke-direct {p0, v2, v3, v1, v4}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$SkippedUploadCloudNotConnected;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 46
    .line 47
    .line 48
    return-object p0

    .line 49
    :cond_0
    sget-object v5, Lvr6;->INSTANCE:Lvr6;

    .line 50
    .line 51
    sget-object v6, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->p:Ljava/lang/String;

    .line 52
    .line 53
    const-string p0, " Cloud connection check failed"

    .line 54
    .line 55
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    const/4 v9, 0x4

    .line 60
    const/4 v10, 0x0

    .line 61
    const/4 v8, 0x0

    .line 62
    invoke-static/range {v5 .. v10}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    new-instance p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$SkippedUploadNetworkError;

    .line 66
    .line 67
    invoke-direct {p0, v2, v3, v1, v4}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$SkippedUploadNetworkError;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 68
    .line 69
    .line 70
    return-object p0

    .line 71
    :cond_1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->k:Lgv7;

    .line 72
    .line 73
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    check-cast p0, Ljava/lang/Boolean;

    .line 78
    .line 79
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 80
    .line 81
    .line 82
    move-result p0

    .line 83
    if-nez p0, :cond_2

    .line 84
    .line 85
    sget-object v5, Lvr6;->INSTANCE:Lvr6;

    .line 86
    .line 87
    sget-object v6, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->p:Ljava/lang/String;

    .line 88
    .line 89
    const-string p0, " No internet connection"

    .line 90
    .line 91
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v7

    .line 95
    const/4 v9, 0x4

    .line 96
    const/4 v10, 0x0

    .line 97
    const/4 v8, 0x0

    .line 98
    invoke-static/range {v5 .. v10}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    new-instance p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$SkippedUploadNetworkError;

    .line 102
    .line 103
    invoke-direct {p0, v2, v3, v1, v4}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$SkippedUploadNetworkError;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 104
    .line 105
    .line 106
    return-object p0

    .line 107
    :cond_2
    return-object v4
.end method

.method public final onDestroy()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->d:Z

    .line 2
    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    sget-object v1, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->q:Lmt3;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v1, v0}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    sput-object v0, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->q:Lmt3;

    .line 18
    .line 19
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final onHandleIntent(Landroid/content/Intent;)V
    .locals 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const-string v2, "ScheduleService finished before TaskService"

    .line 6
    .line 7
    sget-object v3, Lqc2;->a:Lqc2;

    .line 8
    .line 9
    const-string v4, "Blocked by dataSync FGS quota: "

    .line 10
    .line 11
    const-string v5, "ScheduleService mode="

    .line 12
    .line 13
    const-string v6, "Starting service with mode="

    .line 14
    .line 15
    const/4 v7, 0x1

    .line 16
    const/4 v8, 0x0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const-string v9, "is_forced_run"

    .line 20
    .line 21
    invoke-virtual {v0, v9, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 22
    .line 23
    .line 24
    move-result v9

    .line 25
    if-ne v9, v7, :cond_0

    .line 26
    .line 27
    move v9, v7

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move v9, v8

    .line 30
    :goto_0
    iput-boolean v9, v1, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->a:Z

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    const-string v9, "schedule_run_mode"

    .line 35
    .line 36
    invoke-virtual {v0, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService$RunMode;

    .line 41
    .line 42
    if-nez v0, :cond_2

    .line 43
    .line 44
    :cond_1
    sget-object v0, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService$RunMode$Schedules;->INSTANCE:Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService$RunMode$Schedules;

    .line 45
    .line 46
    :cond_2
    iput-object v0, v1, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->b:Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService$RunMode;

    .line 47
    .line 48
    iput-boolean v8, v1, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->c:Z

    .line 49
    .line 50
    iput-boolean v8, v1, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->d:Z

    .line 51
    .line 52
    const/4 v9, 0x0

    .line 53
    iput-object v9, v1, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->e:Ljava/lang/String;

    .line 54
    .line 55
    sget-object v10, Ljc2;->ERROR:Ljc2;

    .line 56
    .line 57
    :try_start_0
    sget-object v11, Lvr6;->INSTANCE:Lvr6;

    .line 58
    .line 59
    sget-object v12, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->p:Ljava/lang/String;

    .line 60
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    iget-object v13, v1, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->b:Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService$RunMode;

    .line 67
    .line 68
    new-instance v14, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v14, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    iget-boolean v6, v1, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->a:Z

    .line 84
    .line 85
    if-eqz v6, :cond_3

    .line 86
    .line 87
    const-string v6, " (Forced)"

    .line 88
    .line 89
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :catchall_0
    move-exception v0

    .line 94
    move v7, v8

    .line 95
    goto/16 :goto_5

    .line 96
    .line 97
    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v13

    .line 101
    const/4 v15, 0x4

    .line 102
    const/16 v16, 0x0

    .line 103
    .line 104
    const/4 v14, 0x0

    .line 105
    invoke-static/range {v11 .. v16}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    invoke-static {}, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->a()Landroid/app/Notification;

    .line 109
    .line 110
    .line 111
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    :try_start_1
    invoke-static {}, Lb67;->b()Z

    .line 113
    .line 114
    .line 115
    move-result v6

    .line 116
    const/16 v12, 0x3b

    .line 117
    .line 118
    if-eqz v6, :cond_4

    .line 119
    .line 120
    const/4 v6, -0x1

    .line 121
    invoke-virtual {v1, v12, v0, v6}, Landroid/app/IntentService;->startForeground(ILandroid/app/Notification;I)V

    .line 122
    .line 123
    .line 124
    goto :goto_2

    .line 125
    :catch_0
    move-exception v0

    .line 126
    goto/16 :goto_4

    .line 127
    .line 128
    :cond_4
    invoke-virtual {v1, v12, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    .line 130
    .line 131
    :goto_2
    :try_start_2
    sget-object v0, Lkc2;->a:Lkc2;

    .line 132
    .line 133
    sget-object v4, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->p:Ljava/lang/String;

    .line 134
    .line 135
    iget-boolean v6, v1, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->a:Z

    .line 136
    .line 137
    iget-object v12, v1, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->b:Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService$RunMode;

    .line 138
    .line 139
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v12

    .line 143
    invoke-virtual {v0, v4, v12, v7, v6}, Lkc2;->h(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    iput-object v0, v1, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->e:Ljava/lang/String;

    .line 148
    .line 149
    sget-object v0, Lmp6;->a:Lmp6;

    .line 150
    .line 151
    const/4 v4, 0x3

    .line 152
    invoke-static {v0, v8, v8, v4}, Lmp6;->d(Lmp6;ZZI)Z

    .line 153
    .line 154
    .line 155
    iget-object v0, v1, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->b:Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService$RunMode;

    .line 156
    .line 157
    iget-boolean v4, v1, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->a:Z

    .line 158
    .line 159
    new-instance v6, Ljava/lang/StringBuilder;

    .line 160
    .line 161
    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    const-string v0, " forced="

    .line 168
    .line 169
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    invoke-virtual {v3, v0}, Lqc2;->c(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    sget-object v0, Ld45;->b:Ld45;

    .line 183
    .line 184
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 185
    .line 186
    .line 187
    invoke-static {}, Ld45;->a()Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    if-eqz v0, :cond_a

    .line 192
    .line 193
    sget-object v0, Ldz5;->a:Ldz5;

    .line 194
    .line 195
    invoke-static {}, Ldz5;->n()Z

    .line 196
    .line 197
    .line 198
    move-result v0

    .line 199
    if-eqz v0, :cond_9

    .line 200
    .line 201
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->e()V

    .line 202
    .line 203
    .line 204
    iget-boolean v0, v1, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->d:Z

    .line 205
    .line 206
    if-eqz v0, :cond_5

    .line 207
    .line 208
    sget-object v0, Ljc2;->TIMEOUT:Ljc2;

    .line 209
    .line 210
    goto :goto_3

    .line 211
    :cond_5
    iget-boolean v0, v1, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->c:Z

    .line 212
    .line 213
    if-eqz v0, :cond_6

    .line 214
    .line 215
    sget-object v0, Ljc2;->HANDED_OFF:Ljc2;

    .line 216
    .line 217
    goto :goto_3

    .line 218
    :cond_6
    sget-object v0, Ljc2;->COMPLETED:Ljc2;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 219
    .line 220
    :goto_3
    iget-boolean v3, v1, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->d:Z

    .line 221
    .line 222
    if-eqz v3, :cond_7

    .line 223
    .line 224
    sget-object v0, Ljc2;->TIMEOUT:Ljc2;

    .line 225
    .line 226
    :cond_7
    invoke-virtual {v1, v0}, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->b(Ljc2;)V

    .line 227
    .line 228
    .line 229
    iget-boolean v0, v1, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->c:Z

    .line 230
    .line 231
    if-nez v0, :cond_8

    .line 232
    .line 233
    invoke-static {v2}, Lqc2;->g(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    :cond_8
    return-void

    .line 237
    :cond_9
    :try_start_3
    const-string v13, "Storage permission not available, Exiting."

    .line 238
    .line 239
    sget-object v12, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->p:Ljava/lang/String;

    .line 240
    .line 241
    const/4 v15, 0x4

    .line 242
    const/16 v16, 0x0

    .line 243
    .line 244
    const/4 v14, 0x0

    .line 245
    invoke-static/range {v11 .. v16}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 246
    .line 247
    .line 248
    invoke-static {v13, v7}, Lorg/swiftapps/swiftbackup/common/Const;->g(Ljava/lang/String;Z)V

    .line 249
    .line 250
    .line 251
    throw v9

    .line 252
    :cond_a
    const-string v13, "User not signed in! Exiting."

    .line 253
    .line 254
    sget-object v12, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->p:Ljava/lang/String;

    .line 255
    .line 256
    const/4 v15, 0x4

    .line 257
    const/16 v16, 0x0

    .line 258
    .line 259
    const/4 v14, 0x0

    .line 260
    invoke-static/range {v11 .. v16}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 261
    .line 262
    .line 263
    invoke-static {v13, v7}, Lorg/swiftapps/swiftbackup/common/Const;->g(Ljava/lang/String;Z)V

    .line 264
    .line 265
    .line 266
    throw v9

    .line 267
    :goto_4
    invoke-static {v0}, Lorg/swiftapps/swiftbackup/home/schedule/a;->a(Ljava/lang/Exception;)Z

    .line 268
    .line 269
    .line 270
    move-result v5

    .line 271
    if-eqz v5, :cond_d

    .line 272
    .line 273
    invoke-static {v0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v14

    .line 277
    sget-object v15, Lvr6;->INSTANCE:Lvr6;

    .line 278
    .line 279
    sget-object v16, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->p:Ljava/lang/String;

    .line 280
    .line 281
    invoke-virtual {v4, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v17

    .line 285
    const/16 v19, 0x4

    .line 286
    .line 287
    const/16 v20, 0x0

    .line 288
    .line 289
    const/16 v18, 0x0

    .line 290
    .line 291
    invoke-static/range {v15 .. v20}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 292
    .line 293
    .line 294
    invoke-static {}, Lo37;->d()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 295
    .line 296
    .line 297
    :try_start_4
    sget-object v11, Lkc2;->a:Lkc2;

    .line 298
    .line 299
    sget-object v12, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->p:Ljava/lang/String;

    .line 300
    .line 301
    iget-boolean v0, v1, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->a:Z

    .line 302
    .line 303
    iget-object v4, v1, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->b:Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService$RunMode;

    .line 304
    .line 305
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v13

    .line 309
    const/4 v15, 0x1

    .line 310
    move/from16 v16, v0

    .line 311
    .line 312
    invoke-virtual/range {v11 .. v16}, Lkc2;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 313
    .line 314
    .line 315
    const-string v0, "ScheduleService startForeground blocked"

    .line 316
    .line 317
    invoke-virtual {v3, v0, v8}, Lqc2;->h(Ljava/lang/String;Z)V

    .line 318
    .line 319
    .line 320
    sget-object v0, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->q:Lmt3;

    .line 321
    .line 322
    if-eqz v0, :cond_b

    .line 323
    .line 324
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 325
    .line 326
    invoke-interface {v0, v3}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    .line 328
    .line 329
    :cond_b
    sput-object v9, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->q:Lmt3;

    .line 330
    .line 331
    sget-object v0, Ljc2;->START_BLOCKED_QUOTA:Ljc2;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 332
    .line 333
    iget-boolean v2, v1, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->d:Z

    .line 334
    .line 335
    if-eqz v2, :cond_c

    .line 336
    .line 337
    sget-object v0, Ljc2;->TIMEOUT:Ljc2;

    .line 338
    .line 339
    :cond_c
    invoke-virtual {v1, v0}, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->b(Ljc2;)V

    .line 340
    .line 341
    .line 342
    return-void

    .line 343
    :catchall_1
    move-exception v0

    .line 344
    goto :goto_5

    .line 345
    :cond_d
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 346
    :goto_5
    iget-boolean v3, v1, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->d:Z

    .line 347
    .line 348
    if-eqz v3, :cond_e

    .line 349
    .line 350
    sget-object v10, Ljc2;->TIMEOUT:Ljc2;

    .line 351
    .line 352
    :cond_e
    invoke-virtual {v1, v10}, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->b(Ljc2;)V

    .line 353
    .line 354
    .line 355
    iget-boolean v1, v1, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->c:Z

    .line 356
    .line 357
    if-nez v1, :cond_f

    .line 358
    .line 359
    if-nez v7, :cond_f

    .line 360
    .line 361
    invoke-static {v2}, Lqc2;->g(Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    :cond_f
    throw v0
.end method

.method public final onTimeout(I)V
    .locals 1

    .line 9
    const-string v0, "shortService"

    invoke-virtual {p0, p1, v0}, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->d(ILjava/lang/String;)V

    return-void
.end method

.method public final onTimeout(II)V
    .locals 0

    .line 1
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p0, p1, p2}, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->d(ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
