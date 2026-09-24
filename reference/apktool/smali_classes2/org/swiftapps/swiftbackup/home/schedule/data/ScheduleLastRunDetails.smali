.class public abstract Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$BlockedLowBattery;,
        Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$BlockedNotCharging;,
        Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$BlockedWifiPrivilegedAccess;,
        Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$FailedWifiDeviceRead;,
        Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$NeverRun;,
        Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$SkippedUploadCloudNotConnected;,
        Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$SkippedUploadNetworkError;,
        Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$SkippedUploadSyncOptionsError;,
        Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$Started;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/swiftapps/swiftbackup/home/schedule/data/o;

.field private static final storedTypeClasses:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lorg/swiftapps/swiftbackup/home/schedule/data/o;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails;->Companion:Lorg/swiftapps/swiftbackup/home/schedule/data/o;

    .line 7
    .line 8
    const-class v8, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$BlockedWifiPrivilegedAccess;

    .line 9
    .line 10
    const-class v9, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$FailedWifiDeviceRead;

    .line 11
    .line 12
    const-class v1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$NeverRun;

    .line 13
    .line 14
    const-class v2, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$Started;

    .line 15
    .line 16
    const-class v3, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$BlockedLowBattery;

    .line 17
    .line 18
    const-class v4, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$BlockedNotCharging;

    .line 19
    .line 20
    const-class v5, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$SkippedUploadNetworkError;

    .line 21
    .line 22
    const-class v6, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$SkippedUploadCloudNotConnected;

    .line 23
    .line 24
    const-class v7, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$SkippedUploadSyncOptionsError;

    .line 25
    .line 26
    filled-new-array/range {v1 .. v9}, [Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v0}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const/16 v1, 0xa

    .line 35
    .line 36
    invoke-static {v0, v1}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    invoke-static {v1}, Lx65;->q0(I)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    const/16 v2, 0x10

    .line 45
    .line 46
    if-ge v1, v2, :cond_0

    .line 47
    .line 48
    move v1, v2

    .line 49
    :cond_0
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 50
    .line 51
    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 52
    .line 53
    .line 54
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_1

    .line 63
    .line 64
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    move-object v3, v1

    .line 69
    check-cast v3, Ljava/lang/Class;

    .line 70
    .line 71
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_1
    sput-object v2, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails;->storedTypeClasses:Ljava/util/Map;

    .line 80
    .line 81
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$getStoredTypeClasses$cp()Ljava/util/Map;
    .locals 1

    .line 1
    sget-object v0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails;->storedTypeClasses:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public abstract asHumanReadableString()Ljava/lang/String;
.end method

.method public abstract getTimeMillis()Ljava/lang/Long;
.end method

.method public final isError()Z
    .locals 1

    .line 1
    instance-of v0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$NeverRun;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    instance-of p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleLastRunDetails$Started;

    .line 6
    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method
