.class public abstract Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljl0;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppConfig;,
        Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;,
        Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsQuickActions;,
        Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$CallLogs;,
        Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;,
        Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Messages;,
        Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;,
        Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wallpapers;,
        Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/swiftapps/swiftbackup/home/schedule/data/j;


# instance fields
.field private final logTag:Ljava/lang/String;
    .annotation runtime Ljz2;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/swiftapps/swiftbackup/home/schedule/data/j;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;->Companion:Lorg/swiftapps/swiftbackup/home/schedule/data/j;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;->logTag:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;-><init>()V

    return-void
.end method

.method public static synthetic c(Ljd2;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;->getRepeatDisplayString$lambda$1(Ljd2;)Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final getRepeatDays$lambda$0(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;)Ljava/util/List;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;->getRepeatDaysString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_2

    .line 6
    .line 7
    const-string v0, ", "

    .line 8
    .line 9
    filled-new-array {v0}, [Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x6

    .line 14
    invoke-static {p0, v0, v1}, Lnq7;->x0(Ljava/lang/CharSequence;[Ljava/lang/String;I)Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {v1}, Luq7;->X(Ljava/lang/String;)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    if-eqz v1, :cond_0

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    return-object v0

    .line 50
    :cond_2
    const/4 p0, 0x0

    .line 51
    return-object p0
.end method

.method private static final getRepeatDisplayString$lambda$1(Ljd2;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Ljd2;->b:Ljava/lang/String;

    .line 5
    .line 6
    return-object p0
.end method


# virtual methods
.method public final canRunManually()Z
    .locals 1
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;->isRunnable()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;->isPermissionsGranted()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;->isBackupRequirementPossible()Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    const/4 p0, 0x1

    .line 20
    return p0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    return p0
.end method

.method public getBackupRequirement()Lsk0;
    .locals 0
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;->isRootNeeded()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    sget-object p0, Lsk0;->ROOT:Lsk0;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    sget-object p0, Lsk0;->NONE:Lsk0;

    .line 11
    .line 12
    return-object p0
.end method

.method public abstract synthetic getCopy()Ljl0;
.end method

.method public abstract synthetic getItemId()Ljava/lang/String;
.end method

.method public abstract getItemType()Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;
    .annotation runtime Ljz2;
    .end annotation
.end method

.method public final getLastRunText()Ljava/lang/CharSequence;
    .locals 4
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    sget-object v0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails;->Companion:Lorg/swiftapps/swiftbackup/home/schedule/data/o;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;->getItemId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 14
    .line 15
    const v0, 0x7f1302e9

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Ldj7;->g(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v2, ": "

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/o;->b(Ljava/lang/String;)Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    if-nez p0, :cond_0

    .line 41
    .line 42
    sget-object p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$NeverRun;->INSTANCE:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$NeverRun;

    .line 43
    .line 44
    :cond_0
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails;->getTimeMillis()Ljava/lang/Long;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 51
    .line 52
    .line 53
    move-result-wide v2

    .line 54
    invoke-static {v2, v3}, Lorg/swiftapps/swiftbackup/home/schedule/data/o;->a(J)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    :cond_1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails;->asHumanReadableString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-lez v0, :cond_2

    .line 70
    .line 71
    invoke-static {p0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-nez v0, :cond_2

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_2
    const/4 p0, 0x0

    .line 79
    :goto_0
    if-eqz p0, :cond_3

    .line 80
    .line 81
    const-string v0, "\n"

    .line 82
    .line 83
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    return-object p0
.end method

.method public final getLogTag()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;->logTag:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getNextRunText()Ljava/lang/String;
    .locals 4
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    sget-object v0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails;->Companion:Lorg/swiftapps/swiftbackup/home/schedule/data/o;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;->getRepeatDays()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    sget-object v1, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 21
    .line 22
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->a()Lorg/swiftapps/swiftbackup/SwiftApp;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iget-object v1, v1, Lorg/swiftapps/swiftbackup/SwiftApp;->c:Lgv7;

    .line 27
    .line 28
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lorg/swiftapps/swiftbackup/jobs/AlarmReceiver;

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    invoke-static {}, Lorg/swiftapps/swiftbackup/jobs/AlarmReceiver;->b()Ljava/util/Calendar;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    :goto_0
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_0

    .line 46
    .line 47
    const/4 v2, 0x7

    .line 48
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-nez v2, :cond_0

    .line 61
    .line 62
    const/4 v2, 0x5

    .line 63
    const/4 v3, 0x1

    .line 64
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    sget-object p0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 69
    .line 70
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    const v0, 0x7f1303b8

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    const-string v0, ": "

    .line 85
    .line 86
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    sget-object v0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails;->Companion:Lorg/swiftapps/swiftbackup/home/schedule/data/o;

    .line 91
    .line 92
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 93
    .line 94
    .line 95
    move-result-wide v1

    .line 96
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    invoke-static {v1, v2}, Lorg/swiftapps/swiftbackup/home/schedule/data/o;->a(J)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    return-object p0
.end method

.method public final getRepeatDays()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljz2;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;->getRepeatDays$lambda$0(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;)Ljava/util/List;

    .line 3
    .line 4
    .line 5
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-object p0, v0

    .line 8
    :goto_0
    if-eqz p0, :cond_1

    .line 9
    .line 10
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    move-object v0, p0

    .line 18
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 19
    .line 20
    sget-object p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;->Companion:Lorg/swiftapps/swiftbackup/home/schedule/data/j;

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    new-instance p0, Lnd4;

    .line 26
    .line 27
    const/4 v0, 0x7

    .line 28
    const/4 v1, 0x1

    .line 29
    invoke-direct {p0, v1, v0, v1}, Lld4;-><init>(III)V

    .line 30
    .line 31
    .line 32
    invoke-static {p0}, Lel1;->v1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    :cond_2
    new-instance p0, Ljava/util/LinkedHashSet;

    .line 37
    .line 38
    invoke-direct {p0, v0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 39
    .line 40
    .line 41
    invoke-static {p0}, Lel1;->v1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-static {p0}, Lel1;->m1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    return-object p0
.end method

.method public abstract getRepeatDaysString()Ljava/lang/String;
    .annotation runtime Ljz2;
    .end annotation
.end method

.method public final getRepeatDisplayString()Ljava/lang/String;
    .locals 8
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;->getRepeatDays()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x7

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    sget-object p0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 13
    .line 14
    const p0, 0x7f130227

    .line 15
    .line 16
    .line 17
    invoke-static {p0}, Ldj7;->g(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :cond_0
    invoke-static {}, Lsz8;->l()Ljava/util/ArrayList;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    new-instance v2, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_2

    .line 40
    .line 41
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    move-object v4, v3

    .line 46
    check-cast v4, Ljd2;

    .line 47
    .line 48
    iget v4, v4, Ljd2;->a:I

    .line 49
    .line 50
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-interface {p0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    if-eqz v4, :cond_1

    .line 59
    .line 60
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    new-instance v6, Lhi;

    .line 65
    .line 66
    invoke-direct {v6, v1}, Lhi;-><init>(I)V

    .line 67
    .line 68
    .line 69
    const/16 v7, 0x1f

    .line 70
    .line 71
    const/4 v3, 0x0

    .line 72
    const/4 v4, 0x0

    .line 73
    const/4 v5, 0x0

    .line 74
    invoke-static/range {v2 .. v7}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    return-object p0
.end method

.method public abstract getSubtitle()Ljava/lang/String;
    .annotation runtime Ljz2;
    .end annotation
.end method

.method public abstract getTitle()Ljava/lang/String;
    .annotation runtime Ljz2;
    .end annotation
.end method

.method public abstract hasAnyCloudLocations()Z
    .annotation runtime Ljz2;
    .end annotation
.end method

.method public final hasLastRunError()Z
    .locals 1
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    sget-object v0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails;->Companion:Lorg/swiftapps/swiftbackup/home/schedule/data/o;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;->getItemId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/o;->b(Ljava/lang/String;)Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails;->isError()Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    const/4 v0, 0x1

    .line 21
    if-ne p0, v0, :cond_0

    .line 22
    .line 23
    return v0

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    return p0
.end method

.method public isBackupRequirementPossible()Z
    .locals 0
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;->getBackupRequirement()Lsk0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lsk0;->isPossible()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public abstract isEnabled()Z
    .annotation runtime Ljz2;
    .end annotation
.end method

.method public isPermissionsGranted()Z
    .locals 0
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public abstract isRootNeeded()Z
    .annotation runtime Ljz2;
    .end annotation
.end method

.method public abstract isRunnable()Z
    .annotation runtime Ljz2;
    .end annotation
.end method

.method public isSyncOnly()Z
    .locals 0
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public abstract toDisplayString()Ljava/lang/String;
    .annotation runtime Ljz2;
    .end annotation
.end method
