.class public final Lh57;
.super Lg57;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic G:Lj57;


# direct methods
.method public constructor <init>(Lj57;Lz27;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lh57;->G:Lj57;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lg57;-><init>(Lj57;Lz27;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final r(Lorg/swiftapps/swiftbackup/home/schedule/data/b;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lg57;->s(Lorg/swiftapps/swiftbackup/home/schedule/data/b;)V

    .line 5
    .line 6
    .line 7
    iget-boolean v0, p1, Lorg/swiftapps/swiftbackup/home/schedule/data/b;->d:Z

    .line 8
    .line 9
    iget-object v1, p0, Lh57;->G:Lj57;

    .line 10
    .line 11
    iget-object p0, p0, Lg57;->z:Lcom/google/android/material/button/MaterialButton;

    .line 12
    .line 13
    if-nez v0, :cond_8

    .line 14
    .line 15
    iget-object v0, p1, Lorg/swiftapps/swiftbackup/home/schedule/data/b;->q:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;

    .line 16
    .line 17
    instance-of v2, v0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsQuickActions;

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    instance-of v2, v0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;

    .line 24
    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    instance-of v2, v0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppConfig;

    .line 29
    .line 30
    if-eqz v2, :cond_2

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    instance-of v2, v0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Messages;

    .line 34
    .line 35
    if-eqz v2, :cond_3

    .line 36
    .line 37
    check-cast v0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Messages;

    .line 38
    .line 39
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Messages;->isPermissionsGranted()Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    goto :goto_0

    .line 44
    :cond_3
    instance-of v2, v0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$CallLogs;

    .line 45
    .line 46
    if-eqz v2, :cond_4

    .line 47
    .line 48
    check-cast v0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$CallLogs;

    .line 49
    .line 50
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$CallLogs;->isPermissionsGranted()Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    goto :goto_0

    .line 55
    :cond_4
    instance-of v2, v0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;

    .line 56
    .line 57
    if-eqz v2, :cond_5

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_5
    instance-of v2, v0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wallpapers;

    .line 61
    .line 62
    if-eqz v2, :cond_6

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_6
    instance-of v0, v0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;

    .line 66
    .line 67
    if-eqz v0, :cond_7

    .line 68
    .line 69
    :goto_0
    if-nez v3, :cond_8

    .line 70
    .line 71
    new-instance v0, Lfr;

    .line 72
    .line 73
    const/16 v2, 0x8

    .line 74
    .line 75
    invoke-direct {v0, v2, v1, p1}, Lfr;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :cond_7
    invoke-static {}, Lq;->j()V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :cond_8
    new-instance v0, Lgr;

    .line 87
    .line 88
    const/4 v2, 0x3

    .line 89
    invoke-direct {v0, v2, v1, p1}, Lgr;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    .line 94
    .line 95
    return-void
.end method
