.class public final Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData$a;
    }
.end annotation


# instance fields
.field private final _batteryPercentReq:Ljava/lang/Integer;

.field private final appConfigSchedules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final appsLabelSchedules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;",
            ">;"
        }
    .end annotation
.end field

.field private final appsQuickActionSchedules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsQuickActions;",
            ">;"
        }
    .end annotation
.end field

.field private final batteryReq:I

.field private final callLogsSchedules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$CallLogs;",
            ">;"
        }
    .end annotation
.end field

.field private final foldersSchedules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;",
            ">;"
        }
    .end annotation
.end field

.field private final messagesSchedules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Messages;",
            ">;"
        }
    .end annotation
.end field

.field private final scheduleOrderIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final startHour:I

.field private final startMinute:I

.field private final wallsSchedules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wallpapers;",
            ">;"
        }
    .end annotation
.end field

.field private final wifiSchedules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 16

    .line 18
    const/16 v14, 0x1fff

    const/4 v15, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v15}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;-><init>(IIILjava/lang/Integer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IIILjava/lang/Integer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsQuickActions;",
            ">;",
            "Ljava/util/List<",
            "Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;",
            ">;",
            "Ljava/util/List<",
            "Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppConfig;",
            ">;",
            "Ljava/util/List<",
            "Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Messages;",
            ">;",
            "Ljava/util/List<",
            "Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$CallLogs;",
            ">;",
            "Ljava/util/List<",
            "Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wallpapers;",
            ">;",
            "Ljava/util/List<",
            "Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;",
            ">;",
            "Ljava/util/List<",
            "Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput p1, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->startHour:I

    .line 6
    iput p2, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->startMinute:I

    .line 7
    iput p3, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->batteryReq:I

    .line 8
    iput-object p4, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->_batteryPercentReq:Ljava/lang/Integer;

    .line 9
    iput-object p5, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->appsQuickActionSchedules:Ljava/util/List;

    .line 10
    iput-object p6, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->appsLabelSchedules:Ljava/util/List;

    .line 11
    iput-object p7, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->appConfigSchedules:Ljava/util/List;

    .line 12
    iput-object p8, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->messagesSchedules:Ljava/util/List;

    .line 13
    iput-object p9, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->callLogsSchedules:Ljava/util/List;

    .line 14
    iput-object p10, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->wallsSchedules:Ljava/util/List;

    .line 15
    iput-object p11, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->wifiSchedules:Ljava/util/List;

    .line 16
    iput-object p12, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->foldersSchedules:Ljava/util/List;

    .line 17
    iput-object p13, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->scheduleOrderIds:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(IIILjava/lang/Integer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 13

    move/from16 v0, p14

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const/4 p1, 0x3

    :cond_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move v1, p2

    :goto_0
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_2

    .line 1
    sget-object v2, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData$a;->NONE:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData$a;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    goto :goto_1

    :cond_2
    move/from16 v2, p3

    :goto_1
    and-int/lit8 v3, v0, 0x8

    if-eqz v3, :cond_3

    const/16 v3, 0x32

    .line 2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_2

    :cond_3
    move-object/from16 v3, p4

    :goto_2
    and-int/lit8 v4, v0, 0x10

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    move-object v4, v5

    goto :goto_3

    :cond_4
    move-object/from16 v4, p5

    :goto_3
    and-int/lit8 v6, v0, 0x20

    if-eqz v6, :cond_5

    move-object v6, v5

    goto :goto_4

    :cond_5
    move-object/from16 v6, p6

    :goto_4
    and-int/lit8 v7, v0, 0x40

    if-eqz v7, :cond_6

    move-object v7, v5

    goto :goto_5

    :cond_6
    move-object/from16 v7, p7

    :goto_5
    and-int/lit16 v8, v0, 0x80

    if-eqz v8, :cond_7

    move-object v8, v5

    goto :goto_6

    :cond_7
    move-object/from16 v8, p8

    :goto_6
    and-int/lit16 v9, v0, 0x100

    if-eqz v9, :cond_8

    move-object v9, v5

    goto :goto_7

    :cond_8
    move-object/from16 v9, p9

    :goto_7
    and-int/lit16 v10, v0, 0x200

    if-eqz v10, :cond_9

    move-object v10, v5

    goto :goto_8

    :cond_9
    move-object/from16 v10, p10

    :goto_8
    and-int/lit16 v11, v0, 0x400

    if-eqz v11, :cond_a

    move-object v11, v5

    goto :goto_9

    :cond_a
    move-object/from16 v11, p11

    :goto_9
    and-int/lit16 v12, v0, 0x800

    if-eqz v12, :cond_b

    move-object v12, v5

    goto :goto_a

    :cond_b
    move-object/from16 v12, p12

    :goto_a
    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_c

    move-object/from16 p15, v5

    :goto_b
    move-object p2, p0

    move/from16 p3, p1

    move/from16 p4, v1

    move/from16 p5, v2

    move-object/from16 p6, v3

    move-object/from16 p7, v4

    move-object/from16 p8, v6

    move-object/from16 p9, v7

    move-object/from16 p10, v8

    move-object/from16 p11, v9

    move-object/from16 p12, v10

    move-object/from16 p13, v11

    move-object/from16 p14, v12

    goto :goto_c

    :cond_c
    move-object/from16 p15, p13

    goto :goto_b

    .line 3
    :goto_c
    invoke-direct/range {p2 .. p15}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;-><init>(IIILjava/lang/Integer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic copy$default(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;IIILjava/lang/Integer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;
    .locals 12

    .line 1
    move/from16 v0, p14

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    iget p1, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->startHour:I

    :cond_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    iget v1, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->startMinute:I

    goto :goto_0

    :cond_1
    move v1, p2

    :goto_0
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_2

    iget v2, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->batteryReq:I

    goto :goto_1

    :cond_2
    move v2, p3

    :goto_1
    and-int/lit8 v3, v0, 0x8

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->_batteryPercentReq:Ljava/lang/Integer;

    goto :goto_2

    :cond_3
    move-object/from16 v3, p4

    :goto_2
    and-int/lit8 v4, v0, 0x10

    if-eqz v4, :cond_4

    iget-object v4, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->appsQuickActionSchedules:Ljava/util/List;

    goto :goto_3

    :cond_4
    move-object/from16 v4, p5

    :goto_3
    and-int/lit8 v5, v0, 0x20

    if-eqz v5, :cond_5

    iget-object v5, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->appsLabelSchedules:Ljava/util/List;

    goto :goto_4

    :cond_5
    move-object/from16 v5, p6

    :goto_4
    and-int/lit8 v6, v0, 0x40

    if-eqz v6, :cond_6

    iget-object v6, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->appConfigSchedules:Ljava/util/List;

    goto :goto_5

    :cond_6
    move-object/from16 v6, p7

    :goto_5
    and-int/lit16 v7, v0, 0x80

    if-eqz v7, :cond_7

    iget-object v7, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->messagesSchedules:Ljava/util/List;

    goto :goto_6

    :cond_7
    move-object/from16 v7, p8

    :goto_6
    and-int/lit16 v8, v0, 0x100

    if-eqz v8, :cond_8

    iget-object v8, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->callLogsSchedules:Ljava/util/List;

    goto :goto_7

    :cond_8
    move-object/from16 v8, p9

    :goto_7
    and-int/lit16 v9, v0, 0x200

    if-eqz v9, :cond_9

    iget-object v9, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->wallsSchedules:Ljava/util/List;

    goto :goto_8

    :cond_9
    move-object/from16 v9, p10

    :goto_8
    and-int/lit16 v10, v0, 0x400

    if-eqz v10, :cond_a

    iget-object v10, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->wifiSchedules:Ljava/util/List;

    goto :goto_9

    :cond_a
    move-object/from16 v10, p11

    :goto_9
    and-int/lit16 v11, v0, 0x800

    if-eqz v11, :cond_b

    iget-object v11, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->foldersSchedules:Ljava/util/List;

    goto :goto_a

    :cond_b
    move-object/from16 v11, p12

    :goto_a
    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->scheduleOrderIds:Ljava/util/List;

    move-object/from16 p15, v0

    :goto_b
    move-object p2, p0

    move p3, p1

    move/from16 p4, v1

    move/from16 p5, v2

    move-object/from16 p6, v3

    move-object/from16 p7, v4

    move-object/from16 p8, v5

    move-object/from16 p9, v6

    move-object/from16 p10, v7

    move-object/from16 p11, v8

    move-object/from16 p12, v9

    move-object/from16 p13, v10

    move-object/from16 p14, v11

    goto :goto_c

    :cond_c
    move-object/from16 p15, p13

    goto :goto_b

    :goto_c
    invoke-virtual/range {p2 .. p15}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->copy(IIILjava/lang/Integer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;

    move-result-object p0

    return-object p0
.end method

.method private final getSchedulesInLegacyOrder()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljz2;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->appConfigSchedules:Ljava/util/List;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->appsLabelSchedules:Ljava/util/List;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 18
    .line 19
    .line 20
    :cond_1
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->appsQuickActionSchedules:Ljava/util/List;

    .line 21
    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 25
    .line 26
    .line 27
    :cond_2
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->messagesSchedules:Ljava/util/List;

    .line 28
    .line 29
    if-eqz v1, :cond_3

    .line 30
    .line 31
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 32
    .line 33
    .line 34
    :cond_3
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->callLogsSchedules:Ljava/util/List;

    .line 35
    .line 36
    if-eqz v1, :cond_4

    .line 37
    .line 38
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 39
    .line 40
    .line 41
    :cond_4
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->wallsSchedules:Ljava/util/List;

    .line 42
    .line 43
    if-eqz v1, :cond_5

    .line 44
    .line 45
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 46
    .line 47
    .line 48
    :cond_5
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->wifiSchedules:Ljava/util/List;

    .line 49
    .line 50
    if-eqz v1, :cond_6

    .line 51
    .line 52
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 53
    .line 54
    .line 55
    :cond_6
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->foldersSchedules:Ljava/util/List;

    .line 56
    .line 57
    if-eqz p0, :cond_7

    .line 58
    .line 59
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 60
    .line 61
    .line 62
    :cond_7
    const/16 p0, 0x14

    .line 63
    .line 64
    invoke-static {v0, p0}, Lel1;->p1(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->startHour:I

    .line 2
    .line 3
    return p0
.end method

.method public final component10()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wallpapers;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->wallsSchedules:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component11()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->wifiSchedules:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component12()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->foldersSchedules:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component13()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->scheduleOrderIds:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component2()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->startMinute:I

    .line 2
    .line 3
    return p0
.end method

.method public final component3()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->batteryReq:I

    .line 2
    .line 3
    return p0
.end method

.method public final component4()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->_batteryPercentReq:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component5()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsQuickActions;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->appsQuickActionSchedules:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component6()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->appsLabelSchedules:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component7()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppConfig;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->appConfigSchedules:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component8()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Messages;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->messagesSchedules:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component9()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$CallLogs;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->callLogsSchedules:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final copy(IIILjava/lang/Integer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsQuickActions;",
            ">;",
            "Ljava/util/List<",
            "Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;",
            ">;",
            "Ljava/util/List<",
            "Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppConfig;",
            ">;",
            "Ljava/util/List<",
            "Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Messages;",
            ">;",
            "Ljava/util/List<",
            "Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$CallLogs;",
            ">;",
            "Ljava/util/List<",
            "Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wallpapers;",
            ">;",
            "Ljava/util/List<",
            "Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;",
            ">;",
            "Ljava/util/List<",
            "Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;"
        }
    .end annotation

    .line 1
    new-instance p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;

    .line 2
    .line 3
    invoke-direct/range {p0 .. p13}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;-><init>(IIILjava/lang/Integer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;

    .line 12
    .line 13
    iget v1, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->startHour:I

    .line 14
    .line 15
    iget v3, p1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->startHour:I

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget v1, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->startMinute:I

    .line 21
    .line 22
    iget v3, p1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->startMinute:I

    .line 23
    .line 24
    if-eq v1, v3, :cond_3

    .line 25
    .line 26
    return v2

    .line 27
    :cond_3
    iget v1, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->batteryReq:I

    .line 28
    .line 29
    iget v3, p1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->batteryReq:I

    .line 30
    .line 31
    if-eq v1, v3, :cond_4

    .line 32
    .line 33
    return v2

    .line 34
    :cond_4
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->_batteryPercentReq:Ljava/lang/Integer;

    .line 35
    .line 36
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->_batteryPercentReq:Ljava/lang/Integer;

    .line 37
    .line 38
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-nez v1, :cond_5

    .line 43
    .line 44
    return v2

    .line 45
    :cond_5
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->appsQuickActionSchedules:Ljava/util/List;

    .line 46
    .line 47
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->appsQuickActionSchedules:Ljava/util/List;

    .line 48
    .line 49
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-nez v1, :cond_6

    .line 54
    .line 55
    return v2

    .line 56
    :cond_6
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->appsLabelSchedules:Ljava/util/List;

    .line 57
    .line 58
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->appsLabelSchedules:Ljava/util/List;

    .line 59
    .line 60
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-nez v1, :cond_7

    .line 65
    .line 66
    return v2

    .line 67
    :cond_7
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->appConfigSchedules:Ljava/util/List;

    .line 68
    .line 69
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->appConfigSchedules:Ljava/util/List;

    .line 70
    .line 71
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-nez v1, :cond_8

    .line 76
    .line 77
    return v2

    .line 78
    :cond_8
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->messagesSchedules:Ljava/util/List;

    .line 79
    .line 80
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->messagesSchedules:Ljava/util/List;

    .line 81
    .line 82
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-nez v1, :cond_9

    .line 87
    .line 88
    return v2

    .line 89
    :cond_9
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->callLogsSchedules:Ljava/util/List;

    .line 90
    .line 91
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->callLogsSchedules:Ljava/util/List;

    .line 92
    .line 93
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-nez v1, :cond_a

    .line 98
    .line 99
    return v2

    .line 100
    :cond_a
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->wallsSchedules:Ljava/util/List;

    .line 101
    .line 102
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->wallsSchedules:Ljava/util/List;

    .line 103
    .line 104
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-nez v1, :cond_b

    .line 109
    .line 110
    return v2

    .line 111
    :cond_b
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->wifiSchedules:Ljava/util/List;

    .line 112
    .line 113
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->wifiSchedules:Ljava/util/List;

    .line 114
    .line 115
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    if-nez v1, :cond_c

    .line 120
    .line 121
    return v2

    .line 122
    :cond_c
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->foldersSchedules:Ljava/util/List;

    .line 123
    .line 124
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->foldersSchedules:Ljava/util/List;

    .line 125
    .line 126
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    if-nez v1, :cond_d

    .line 131
    .line 132
    return v2

    .line 133
    :cond_d
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->scheduleOrderIds:Ljava/util/List;

    .line 134
    .line 135
    iget-object p1, p1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->scheduleOrderIds:Ljava/util/List;

    .line 136
    .line 137
    invoke-static {p0, p1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result p0

    .line 141
    if-nez p0, :cond_e

    .line 142
    .line 143
    return v2

    .line 144
    :cond_e
    return v0
.end method

.method public final getAppConfigSchedules()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppConfig;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->appConfigSchedules:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getAppsLabelSchedules()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->appsLabelSchedules:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getAppsQuickActionSchedules()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsQuickActions;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->appsQuickActionSchedules:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getBatteryPercentReq()I
    .locals 2
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->_batteryPercentReq:Ljava/lang/Integer;

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/16 v1, 0xa

    .line 10
    .line 11
    if-gt v1, v0, :cond_0

    .line 12
    .line 13
    const/16 v1, 0x65

    .line 14
    .line 15
    if-ge v0, v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    :goto_0
    if-eqz p0, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    return p0

    .line 26
    :cond_1
    const/16 p0, 0x32

    .line 27
    .line 28
    return p0
.end method

.method public final getBatteryReq()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->batteryReq:I

    .line 2
    .line 3
    return p0
.end method

.method public final getBatteryReqEnum()Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData$a;
    .locals 4
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    invoke-static {}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData$a;->getEntries()Ljx2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    move-object v2, v1

    .line 20
    check-cast v2, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData$a;

    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    iget v3, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->batteryReq:I

    .line 27
    .line 28
    if-ne v2, v3, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v1, 0x0

    .line 32
    :goto_0
    check-cast v1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData$a;

    .line 33
    .line 34
    if-nez v1, :cond_2

    .line 35
    .line 36
    sget-object p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData$a;->NONE:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData$a;

    .line 37
    .line 38
    return-object p0

    .line 39
    :cond_2
    return-object v1
.end method

.method public final getCallLogsSchedules()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$CallLogs;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->callLogsSchedules:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getFoldersSchedules()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->foldersSchedules:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getMessagesSchedules()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Messages;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->messagesSchedules:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getNormalizedScheduleOrderIds()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljz2;
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->getSchedulesInLegacyOrder()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 6
    .line 7
    const/16 v2, 0xa

    .line 8
    .line 9
    invoke-static {v0, v2}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    .line 15
    .line 16
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;

    .line 31
    .line 32
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;->getItemId()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-static {v1}, Lel1;->z1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->scheduleOrderIds:Ljava/util/List;

    .line 45
    .line 46
    if-nez p0, :cond_1

    .line 47
    .line 48
    sget-object p0, Lov2;->a:Lov2;

    .line 49
    .line 50
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-eqz v3, :cond_3

    .line 64
    .line 65
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    move-object v4, v3

    .line 70
    check-cast v4, Ljava/lang/String;

    .line 71
    .line 72
    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    if-eqz v4, :cond_2

    .line 77
    .line 78
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_3
    invoke-static {v2}, Leq3;->p(Ljava/util/ArrayList;)Ljava/util/List;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    if-eqz v2, :cond_5

    .line 100
    .line 101
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    move-object v3, v2

    .line 106
    check-cast v3, Ljava/lang/String;

    .line 107
    .line 108
    invoke-interface {p0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    if-nez v3, :cond_4

    .line 113
    .line 114
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_5
    invoke-static {p0, v0}, Lel1;->g1(Ljava/util/Collection;Ljava/util/List;)Ljava/util/ArrayList;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    return-object p0
.end method

.method public final getScheduleOrderIds()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->scheduleOrderIds:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSchedules()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljz2;
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->getSchedulesInLegacyOrder()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0xa

    .line 6
    .line 7
    invoke-static {v0, v1}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-static {v1}, Lx65;->q0(I)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/16 v2, 0x10

    .line 16
    .line 17
    if-ge v1, v2, :cond_0

    .line 18
    .line 19
    move v1, v2

    .line 20
    :cond_0
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 21
    .line 22
    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 23
    .line 24
    .line 25
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    move-object v3, v1

    .line 40
    check-cast v3, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;

    .line 41
    .line 42
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;->getItemId()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->getNormalizedScheduleOrderIds()Ljava/util/List;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_3

    .line 68
    .line 69
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    check-cast v1, Ljava/lang/String;

    .line 74
    .line 75
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    check-cast v1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;

    .line 80
    .line 81
    if-eqz v1, :cond_2

    .line 82
    .line 83
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_3
    const/16 p0, 0x14

    .line 88
    .line 89
    invoke-static {v0, p0}, Lel1;->p1(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    return-object p0
.end method

.method public final getStartHour()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->startHour:I

    .line 2
    .line 3
    return p0
.end method

.method public final getStartMinute()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->startMinute:I

    .line 2
    .line 3
    return p0
.end method

.method public final getWallsSchedules()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wallpapers;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->wallsSchedules:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getWifiSchedules()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->wifiSchedules:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final get_batteryPercentReq()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->_batteryPercentReq:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget v0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->startHour:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x1f

    .line 8
    .line 9
    mul-int/2addr v0, v1

    .line 10
    iget v2, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->startMinute:I

    .line 11
    .line 12
    invoke-static {v2, v0, v1}, Leq3;->d(III)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget v2, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->batteryReq:I

    .line 17
    .line 18
    invoke-static {v2, v0, v1}, Leq3;->d(III)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->_batteryPercentReq:Ljava/lang/Integer;

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    if-nez v2, :cond_0

    .line 26
    .line 27
    move v2, v3

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    :goto_0
    add-int/2addr v0, v2

    .line 34
    mul-int/2addr v0, v1

    .line 35
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->appsQuickActionSchedules:Ljava/util/List;

    .line 36
    .line 37
    if-nez v2, :cond_1

    .line 38
    .line 39
    move v2, v3

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    :goto_1
    add-int/2addr v0, v2

    .line 46
    mul-int/2addr v0, v1

    .line 47
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->appsLabelSchedules:Ljava/util/List;

    .line 48
    .line 49
    if-nez v2, :cond_2

    .line 50
    .line 51
    move v2, v3

    .line 52
    goto :goto_2

    .line 53
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    :goto_2
    add-int/2addr v0, v2

    .line 58
    mul-int/2addr v0, v1

    .line 59
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->appConfigSchedules:Ljava/util/List;

    .line 60
    .line 61
    if-nez v2, :cond_3

    .line 62
    .line 63
    move v2, v3

    .line 64
    goto :goto_3

    .line 65
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    :goto_3
    add-int/2addr v0, v2

    .line 70
    mul-int/2addr v0, v1

    .line 71
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->messagesSchedules:Ljava/util/List;

    .line 72
    .line 73
    if-nez v2, :cond_4

    .line 74
    .line 75
    move v2, v3

    .line 76
    goto :goto_4

    .line 77
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    :goto_4
    add-int/2addr v0, v2

    .line 82
    mul-int/2addr v0, v1

    .line 83
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->callLogsSchedules:Ljava/util/List;

    .line 84
    .line 85
    if-nez v2, :cond_5

    .line 86
    .line 87
    move v2, v3

    .line 88
    goto :goto_5

    .line 89
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    :goto_5
    add-int/2addr v0, v2

    .line 94
    mul-int/2addr v0, v1

    .line 95
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->wallsSchedules:Ljava/util/List;

    .line 96
    .line 97
    if-nez v2, :cond_6

    .line 98
    .line 99
    move v2, v3

    .line 100
    goto :goto_6

    .line 101
    :cond_6
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    :goto_6
    add-int/2addr v0, v2

    .line 106
    mul-int/2addr v0, v1

    .line 107
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->wifiSchedules:Ljava/util/List;

    .line 108
    .line 109
    if-nez v2, :cond_7

    .line 110
    .line 111
    move v2, v3

    .line 112
    goto :goto_7

    .line 113
    :cond_7
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    :goto_7
    add-int/2addr v0, v2

    .line 118
    mul-int/2addr v0, v1

    .line 119
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->foldersSchedules:Ljava/util/List;

    .line 120
    .line 121
    if-nez v2, :cond_8

    .line 122
    .line 123
    move v2, v3

    .line 124
    goto :goto_8

    .line 125
    :cond_8
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    :goto_8
    add-int/2addr v0, v2

    .line 130
    mul-int/2addr v0, v1

    .line 131
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->scheduleOrderIds:Ljava/util/List;

    .line 132
    .line 133
    if-nez p0, :cond_9

    .line 134
    .line 135
    goto :goto_9

    .line 136
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 137
    .line 138
    .line 139
    move-result v3

    .line 140
    :goto_9
    add-int/2addr v0, v3

    .line 141
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 15

    .line 1
    iget v0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->startHour:I

    .line 2
    .line 3
    iget v1, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->startMinute:I

    .line 4
    .line 5
    iget v2, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->batteryReq:I

    .line 6
    .line 7
    iget-object v3, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->_batteryPercentReq:Ljava/lang/Integer;

    .line 8
    .line 9
    iget-object v4, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->appsQuickActionSchedules:Ljava/util/List;

    .line 10
    .line 11
    iget-object v5, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->appsLabelSchedules:Ljava/util/List;

    .line 12
    .line 13
    iget-object v6, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->appConfigSchedules:Ljava/util/List;

    .line 14
    .line 15
    iget-object v7, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->messagesSchedules:Ljava/util/List;

    .line 16
    .line 17
    iget-object v8, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->callLogsSchedules:Ljava/util/List;

    .line 18
    .line 19
    iget-object v9, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->wallsSchedules:Ljava/util/List;

    .line 20
    .line 21
    iget-object v10, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->wifiSchedules:Ljava/util/List;

    .line 22
    .line 23
    iget-object v11, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->foldersSchedules:Ljava/util/List;

    .line 24
    .line 25
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->scheduleOrderIds:Ljava/util/List;

    .line 26
    .line 27
    const-string v12, ", startMinute="

    .line 28
    .line 29
    const-string v13, ", batteryReq="

    .line 30
    .line 31
    const-string v14, "ScheduleData(startHour="

    .line 32
    .line 33
    invoke-static {v14, v0, v12, v13, v1}, Lxs1;->n(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v1, ", _batteryPercentReq="

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v1, ", appsQuickActionSchedules="

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, ", appsLabelSchedules="

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v1, ", appConfigSchedules="

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v1, ", messagesSchedules="

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v1, ", callLogsSchedules="

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v1, ", wallsSchedules="

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v1, ", wifiSchedules="

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v1, ", foldersSchedules="

    .line 105
    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string v1, ", scheduleOrderIds="

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const-string v1, ")"

    .line 118
    .line 119
    invoke-static {v0, p0, v1}, Ldj7;->o(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    return-object p0
.end method

.method public final withNormalizedScheduleOrder()Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;
    .locals 17
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    invoke-virtual/range {p0 .. p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->getNormalizedScheduleOrderIds()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v14

    .line 5
    const/16 v15, 0xfff

    .line 6
    .line 7
    const/16 v16, 0x0

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v6, 0x0

    .line 14
    const/4 v7, 0x0

    .line 15
    const/4 v8, 0x0

    .line 16
    const/4 v9, 0x0

    .line 17
    const/4 v10, 0x0

    .line 18
    const/4 v11, 0x0

    .line 19
    const/4 v12, 0x0

    .line 20
    const/4 v13, 0x0

    .line 21
    move-object/from16 v1, p0

    .line 22
    .line 23
    invoke-static/range {v1 .. v16}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->copy$default(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;IIILjava/lang/Integer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0
.end method

.method public final withScheduleAppended(Ljava/lang/String;)Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;
    .locals 21
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual/range {p0 .. p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->getNormalizedScheduleOrderIds()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    new-instance v2, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_1

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    move-object v4, v3

    .line 30
    check-cast v4, Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {v4, v0}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-nez v4, :cond_0

    .line 37
    .line 38
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    invoke-static {v0, v2}, Lel1;->f1(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 43
    .line 44
    .line 45
    move-result-object v18

    .line 46
    const/16 v19, 0xfff

    .line 47
    .line 48
    const/16 v20, 0x0

    .line 49
    .line 50
    const/4 v6, 0x0

    .line 51
    const/4 v7, 0x0

    .line 52
    const/4 v8, 0x0

    .line 53
    const/4 v9, 0x0

    .line 54
    const/4 v10, 0x0

    .line 55
    const/4 v11, 0x0

    .line 56
    const/4 v12, 0x0

    .line 57
    const/4 v13, 0x0

    .line 58
    const/4 v14, 0x0

    .line 59
    const/4 v15, 0x0

    .line 60
    const/16 v16, 0x0

    .line 61
    .line 62
    const/16 v17, 0x0

    .line 63
    .line 64
    move-object/from16 v5, p0

    .line 65
    .line 66
    invoke-static/range {v5 .. v20}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->copy$default(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;IIILjava/lang/Integer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    return-object v0
.end method

.method public final withScheduleDeleted(Ljava/lang/String;)Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;
    .locals 17
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual/range {p0 .. p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->getNormalizedScheduleOrderIds()Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    new-instance v14, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    move-object v2, v1

    .line 28
    check-cast v2, Ljava/lang/String;

    .line 29
    .line 30
    move-object/from16 v3, p1

    .line 31
    .line 32
    invoke-static {v2, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-nez v2, :cond_0

    .line 37
    .line 38
    invoke-interface {v14, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const/16 v15, 0xfff

    .line 43
    .line 44
    const/16 v16, 0x0

    .line 45
    .line 46
    const/4 v2, 0x0

    .line 47
    const/4 v3, 0x0

    .line 48
    const/4 v4, 0x0

    .line 49
    const/4 v5, 0x0

    .line 50
    const/4 v6, 0x0

    .line 51
    const/4 v7, 0x0

    .line 52
    const/4 v8, 0x0

    .line 53
    const/4 v9, 0x0

    .line 54
    const/4 v10, 0x0

    .line 55
    const/4 v11, 0x0

    .line 56
    const/4 v12, 0x0

    .line 57
    const/4 v13, 0x0

    .line 58
    move-object/from16 v1, p0

    .line 59
    .line 60
    invoke-static/range {v1 .. v16}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->copy$default(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;IIILjava/lang/Integer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    return-object v0
.end method

.method public final withScheduleMoved(Ljava/lang/String;I)Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;
    .locals 17
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual/range {p0 .. p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->getNormalizedScheduleOrderIds()Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Lel1;->x1(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    move-result-object v14

    .line 12
    move-object/from16 v0, p1

    .line 13
    .line 14
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    add-int v1, v0, p2

    .line 19
    .line 20
    if-ltz v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-ge v0, v2, :cond_0

    .line 27
    .line 28
    if-ltz v1, :cond_0

    .line 29
    .line 30
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-ge v1, v2, :cond_0

    .line 35
    .line 36
    invoke-static {v14, v0, v1}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 37
    .line 38
    .line 39
    const/16 v15, 0xfff

    .line 40
    .line 41
    const/16 v16, 0x0

    .line 42
    .line 43
    const/4 v2, 0x0

    .line 44
    const/4 v3, 0x0

    .line 45
    const/4 v4, 0x0

    .line 46
    const/4 v5, 0x0

    .line 47
    const/4 v6, 0x0

    .line 48
    const/4 v7, 0x0

    .line 49
    const/4 v8, 0x0

    .line 50
    const/4 v9, 0x0

    .line 51
    const/4 v10, 0x0

    .line 52
    const/4 v11, 0x0

    .line 53
    const/4 v12, 0x0

    .line 54
    const/4 v13, 0x0

    .line 55
    move-object/from16 v1, p0

    .line 56
    .line 57
    invoke-static/range {v1 .. v16}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->copy$default(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;IIILjava/lang/Integer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    return-object v0

    .line 62
    :cond_0
    const/16 v15, 0xfff

    .line 63
    .line 64
    const/16 v16, 0x0

    .line 65
    .line 66
    const/4 v2, 0x0

    .line 67
    const/4 v3, 0x0

    .line 68
    const/4 v4, 0x0

    .line 69
    const/4 v5, 0x0

    .line 70
    const/4 v6, 0x0

    .line 71
    const/4 v7, 0x0

    .line 72
    const/4 v8, 0x0

    .line 73
    const/4 v9, 0x0

    .line 74
    const/4 v10, 0x0

    .line 75
    const/4 v11, 0x0

    .line 76
    const/4 v12, 0x0

    .line 77
    const/4 v13, 0x0

    .line 78
    move-object/from16 v1, p0

    .line 79
    .line 80
    invoke-static/range {v1 .. v16}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->copy$default(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;IIILjava/lang/Integer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    return-object v0
.end method
