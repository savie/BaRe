.class public final synthetic Lz47;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;


# direct methods
.method public synthetic constructor <init>(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;I)V
    .locals 0

    .line 1
    iput p2, p0, Lz47;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lz47;->b:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    iget v0, p0, Lz47;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object p0, p0, Lz47;->b:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast p1, Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-object v2, p0

    .line 15
    check-cast v2, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;

    .line 16
    .line 17
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->getLocations()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-static {p0}, Lji8;->r(Ljava/util/Collection;)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_0

    .line 26
    .line 27
    sget-object p0, Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;->WIFI:Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;

    .line 28
    .line 29
    if-eq p1, p0, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move-object p1, v1

    .line 33
    :goto_0
    if-eqz p1, :cond_1

    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    :cond_1
    move-object v8, v1

    .line 40
    const/16 v11, 0xdf

    .line 41
    .line 42
    const/4 v12, 0x0

    .line 43
    const/4 v3, 0x0

    .line 44
    const/4 v4, 0x0

    .line 45
    const/4 v5, 0x0

    .line 46
    const/4 v6, 0x0

    .line 47
    const/4 v7, 0x0

    .line 48
    const/4 v9, 0x0

    .line 49
    const/4 v10, 0x0

    .line 50
    invoke-static/range {v2 .. v12}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->copy$default(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;Ljava/lang/String;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    return-object p0

    .line 55
    :pswitch_0
    check-cast p1, Ljava/util/Set;

    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    move-object v2, p0

    .line 61
    check-cast v2, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;

    .line 62
    .line 63
    invoke-interface {p1}, Ljava/util/Set;->size()I

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    const/4 v0, 0x7

    .line 68
    if-eq p0, v0, :cond_2

    .line 69
    .line 70
    move-object v3, p1

    .line 71
    goto :goto_1

    .line 72
    :cond_2
    move-object v3, v1

    .line 73
    :goto_1
    if-eqz v3, :cond_3

    .line 74
    .line 75
    const/4 v7, 0x0

    .line 76
    const/16 v8, 0x3f

    .line 77
    .line 78
    const/4 v4, 0x0

    .line 79
    const/4 v5, 0x0

    .line 80
    const/4 v6, 0x0

    .line 81
    invoke-static/range {v3 .. v8}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    :cond_3
    move-object v7, v1

    .line 86
    const/16 v9, 0x2f

    .line 87
    .line 88
    const/4 v10, 0x0

    .line 89
    const/4 v3, 0x0

    .line 90
    const/4 v4, 0x0

    .line 91
    const/4 v5, 0x0

    .line 92
    const/4 v6, 0x0

    .line 93
    const/4 v8, 0x0

    .line 94
    invoke-static/range {v2 .. v10}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;->copy$default(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;Ljava/lang/String;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    return-object p0

    .line 99
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
