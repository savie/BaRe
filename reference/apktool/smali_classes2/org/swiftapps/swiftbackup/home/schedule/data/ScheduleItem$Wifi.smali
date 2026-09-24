.class public final Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;
.super Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Wifi"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final _enabled:Z

.field private final _id:Ljava/lang/String;

.field private final _locations:Ljava/lang/String;

.field private final _repeatDays:Ljava/lang/String;

.field private final _syncOption:Ljava/lang/String;

.field private final _type:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/swiftapps/swiftbackup/home/schedule/data/n;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .line 68
    const/16 v7, 0x3f

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;-><init>(Ljava/lang/String;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, v0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 62
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;->_id:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;->_type:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;

    .line 64
    iput-object p3, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;->_locations:Ljava/lang/String;

    .line 65
    iput-object p4, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;->_syncOption:Ljava/lang/String;

    .line 66
    iput-object p5, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;->_repeatDays:Ljava/lang/String;

    .line 67
    iput-boolean p6, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;->_enabled:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 2

    .line 1
    and-int/lit8 p8, p7, 0x1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eqz p8, :cond_0

    .line 5
    .line 6
    sget-object p1, Lnh4;->d:Lnh4;

    .line 7
    .line 8
    const/4 p8, 0x6

    .line 9
    invoke-virtual {p1, p8, v0, v0}, Lnh4;->i(IZZ)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    :cond_0
    and-int/lit8 p8, p7, 0x2

    .line 17
    .line 18
    if-eqz p8, :cond_1

    .line 19
    .line 20
    sget-object p2, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;->Wifi:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;

    .line 21
    .line 22
    :cond_1
    and-int/lit8 p8, p7, 0x4

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    if-eqz p8, :cond_2

    .line 26
    .line 27
    move-object p3, v1

    .line 28
    :cond_2
    and-int/lit8 p8, p7, 0x8

    .line 29
    .line 30
    if-eqz p8, :cond_3

    .line 31
    .line 32
    move-object p4, v1

    .line 33
    :cond_3
    and-int/lit8 p8, p7, 0x10

    .line 34
    .line 35
    if-eqz p8, :cond_4

    .line 36
    .line 37
    move-object p5, v1

    .line 38
    :cond_4
    and-int/lit8 p7, p7, 0x20

    .line 39
    .line 40
    if-eqz p7, :cond_5

    .line 41
    .line 42
    move p8, v0

    .line 43
    move-object p6, p4

    .line 44
    move-object p7, p5

    .line 45
    move-object p4, p2

    .line 46
    move-object p5, p3

    .line 47
    move-object p2, p0

    .line 48
    move-object p3, p1

    .line 49
    goto :goto_0

    .line 50
    :cond_5
    move p8, p6

    .line 51
    move-object p7, p5

    .line 52
    move-object p5, p3

    .line 53
    move-object p6, p4

    .line 54
    move-object p3, p1

    .line 55
    move-object p4, p2

    .line 56
    move-object p2, p0

    .line 57
    :goto_0
    invoke-direct/range {p2 .. p8}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;-><init>(Ljava/lang/String;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public static synthetic copy$default(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;Ljava/lang/String;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;
    .locals 0

    .line 1
    and-int/lit8 p8, p7, 0x1

    .line 2
    .line 3
    if-eqz p8, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;->_id:Ljava/lang/String;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p8, p7, 0x2

    .line 8
    .line 9
    if-eqz p8, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;->_type:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p8, p7, 0x4

    .line 14
    .line 15
    if-eqz p8, :cond_2

    .line 16
    .line 17
    iget-object p3, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;->_locations:Ljava/lang/String;

    .line 18
    .line 19
    :cond_2
    and-int/lit8 p8, p7, 0x8

    .line 20
    .line 21
    if-eqz p8, :cond_3

    .line 22
    .line 23
    iget-object p4, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;->_syncOption:Ljava/lang/String;

    .line 24
    .line 25
    :cond_3
    and-int/lit8 p8, p7, 0x10

    .line 26
    .line 27
    if-eqz p8, :cond_4

    .line 28
    .line 29
    iget-object p5, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;->_repeatDays:Ljava/lang/String;

    .line 30
    .line 31
    :cond_4
    and-int/lit8 p7, p7, 0x20

    .line 32
    .line 33
    if-eqz p7, :cond_5

    .line 34
    .line 35
    iget-boolean p6, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;->_enabled:Z

    .line 36
    .line 37
    :cond_5
    move-object p7, p5

    .line 38
    move p8, p6

    .line 39
    move-object p5, p3

    .line 40
    move-object p6, p4

    .line 41
    move-object p3, p1

    .line 42
    move-object p4, p2

    .line 43
    move-object p2, p0

    .line 44
    invoke-virtual/range {p2 .. p8}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;->copy(Ljava/lang/String;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    return-object p0
.end method

.method private static final getLocations$lambda$0(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;)Ljava/util/List;
    .locals 2

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;->_locations:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    const-string v0, ", "

    .line 6
    .line 7
    filled-new-array {v0}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x6

    .line 12
    invoke-static {p0, v0, v1}, Lnq7;->x0(Ljava/lang/CharSequence;[Ljava/lang/String;I)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    .line 17
    .line 18
    const/16 v1, 0xa

    .line 19
    .line 20
    invoke-static {p0, v1}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 25
    .line 26
    .line 27
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Ljava/lang/String;

    .line 42
    .line 43
    invoke-static {v1}, Lq05;->valueOf(Ljava/lang/String;)Lq05;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    return-object v0

    .line 52
    :cond_1
    const/4 p0, 0x0

    .line 53
    return-object p0
.end method

.method private static final getSyncOption$lambda$0(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;)Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;->_syncOption:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;->valueOf(Ljava/lang/String;)Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;->_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component2()Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;->_type:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;->_locations:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component4()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;->_syncOption:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component5()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;->_repeatDays:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component6()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;->_enabled:Z

    .line 2
    .line 3
    return p0
.end method

.method public final copy(Ljava/lang/String;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    new-instance p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;

    .line 8
    .line 9
    invoke-direct/range {p0 .. p6}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;-><init>(Ljava/lang/String;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public final describeContents()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
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
    instance-of v1, p1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;

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
    check-cast p1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;

    .line 12
    .line 13
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;->_id:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;->_id:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;->_type:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;

    .line 25
    .line 26
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;->_type:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;

    .line 27
    .line 28
    if-eq v1, v3, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;->_locations:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;->_locations:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_4

    .line 40
    .line 41
    return v2

    .line 42
    :cond_4
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;->_syncOption:Ljava/lang/String;

    .line 43
    .line 44
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;->_syncOption:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-nez v1, :cond_5

    .line 51
    .line 52
    return v2

    .line 53
    :cond_5
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;->_repeatDays:Ljava/lang/String;

    .line 54
    .line 55
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;->_repeatDays:Ljava/lang/String;

    .line 56
    .line 57
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-nez v1, :cond_6

    .line 62
    .line 63
    return v2

    .line 64
    :cond_6
    iget-boolean p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;->_enabled:Z

    .line 65
    .line 66
    iget-boolean p1, p1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;->_enabled:Z

    .line 67
    .line 68
    if-eq p0, p1, :cond_7

    .line 69
    .line 70
    return v2

    .line 71
    :cond_7
    return v0
.end method

.method public getBackupRequirement()Lsk0;
    .locals 1
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v0, 0x1e

    .line 4
    .line 5
    if-lt p0, v0, :cond_0

    .line 6
    .line 7
    sget-object p0, Lsk0;->ROOT_OR_SHIZUKU:Lsk0;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    sget-object p0, Lsk0;->ROOT:Lsk0;

    .line 11
    .line 12
    return-object p0
.end method

.method public getCopy()Ljl0;
    .locals 9
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    const/16 v7, 0x3f

    .line 2
    .line 3
    const/4 v8, 0x0

    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x0

    .line 8
    const/4 v5, 0x0

    .line 9
    const/4 v6, 0x0

    .line 10
    move-object v0, p0

    .line 11
    invoke-static/range {v0 .. v8}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;->copy$default(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;Ljava/lang/String;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public getItemId()Ljava/lang/String;
    .locals 0
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;->_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getItemType()Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;
    .locals 0
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;->_type:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getLocations()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lq05;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljz2;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;->getLocations$lambda$0(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;)Ljava/util/List;

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
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/j;->b(Lorg/swiftapps/swiftbackup/home/schedule/data/j;)Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :cond_2
    new-instance p0, Ljava/util/LinkedHashSet;

    .line 27
    .line 28
    invoke-direct {p0, v0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 29
    .line 30
    .line 31
    invoke-static {p0}, Lel1;->v1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-static {p0}, Lel1;->m1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0
.end method

.method public getRepeatDaysString()Ljava/lang/String;
    .locals 0
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;->_repeatDays:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getSubtitle()Ljava/lang/String;
    .locals 0
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final getSyncOption()Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;
    .locals 0
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;->getSyncOption$lambda$0(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;)Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    goto :goto_0

    .line 6
    :catch_0
    const/4 p0, 0x0

    .line 7
    :goto_0
    if-nez p0, :cond_0

    .line 8
    .line 9
    sget-object p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;->Companion:Lorg/swiftapps/swiftbackup/home/schedule/data/j;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    sget-object p0, Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;->WIFI:Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;

    .line 15
    .line 16
    :cond_0
    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    sget-object p0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 2
    .line 3
    const p0, 0x7f1305b0

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Ldj7;->g(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public final get_enabled()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;->_enabled:Z

    .line 2
    .line 3
    return p0
.end method

.method public final get_id()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;->_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final get_locations()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;->_locations:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final get_repeatDays()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;->_repeatDays:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final get_syncOption()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;->_syncOption:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final get_type()Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;->_type:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;

    .line 2
    .line 3
    return-object p0
.end method

.method public hasAnyCloudLocations()Z
    .locals 0
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;->getLocations()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lji8;->r(Ljava/util/Collection;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;->_id:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;->_type:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v1, v0

    .line 16
    mul-int/lit8 v1, v1, 0x1f

    .line 17
    .line 18
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;->_locations:Ljava/lang/String;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    move v0, v2

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    :goto_0
    add-int/2addr v1, v0

    .line 30
    mul-int/lit8 v1, v1, 0x1f

    .line 31
    .line 32
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;->_syncOption:Ljava/lang/String;

    .line 33
    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    move v0, v2

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    :goto_1
    add-int/2addr v1, v0

    .line 43
    mul-int/lit8 v1, v1, 0x1f

    .line 44
    .line 45
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;->_repeatDays:Ljava/lang/String;

    .line 46
    .line 47
    if-nez v0, :cond_2

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    :goto_2
    add-int/2addr v1, v2

    .line 55
    mul-int/lit8 v1, v1, 0x1f

    .line 56
    .line 57
    iget-boolean p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;->_enabled:Z

    .line 58
    .line 59
    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    add-int/2addr p0, v1

    .line 64
    return p0
.end method

.method public isEnabled()Z
    .locals 0
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    iget-boolean p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;->_enabled:Z

    .line 2
    .line 3
    return p0
.end method

.method public isRootNeeded()Z
    .locals 0
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public isRunnable()Z
    .locals 0
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public toDisplayString()Ljava/lang/String;
    .locals 8
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;->getItemType()Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;->getLocations()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v2, "locations="

    .line 14
    .line 15
    invoke-static {v2, v0}, Lxs1;->l(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;->getSyncOption()Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    new-instance v3, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v4, "sync="

    .line 26
    .line 27
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;->getRepeatDays()Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const-string v4, "repeat="

    .line 42
    .line 43
    invoke-static {v4, v0}, Lxs1;->l(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;->isEnabled()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    const-string v5, "enabled="

    .line 52
    .line 53
    invoke-static {v5, v0}, Ldj7;->m(Ljava/lang/String;Z)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;->isRootNeeded()Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    const-string v6, "rootNeeded="

    .line 62
    .line 63
    invoke-static {v6, v0}, Ldj7;->m(Ljava/lang/String;Z)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;->isRunnable()Z

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    const-string v0, "runnable="

    .line 72
    .line 73
    invoke-static {v0, p0}, Ldj7;->m(Ljava/lang/String;Z)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-static {p0}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    const/4 v4, 0x0

    .line 86
    const/16 v5, 0x3f

    .line 87
    .line 88
    const/4 v1, 0x0

    .line 89
    const/4 v2, 0x0

    .line 90
    const/4 v3, 0x0

    .line 91
    invoke-static/range {v0 .. v5}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;->_id:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;->_type:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;->_locations:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;->_syncOption:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;->_repeatDays:Ljava/lang/String;

    .line 10
    .line 11
    iget-boolean p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;->_enabled:Z

    .line 12
    .line 13
    new-instance v5, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v6, "Wifi(_id="

    .line 16
    .line 17
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v0, ", _type="

    .line 24
    .line 25
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v0, ", _locations="

    .line 32
    .line 33
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v0, ", _syncOption="

    .line 37
    .line 38
    const-string v1, ", _repeatDays="

    .line 39
    .line 40
    invoke-static {v5, v2, v0, v3, v1}, Lxs1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v0, ", _enabled="

    .line 47
    .line 48
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string p0, ")"

    .line 55
    .line 56
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;->_id:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;->_type:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;

    .line 10
    .line 11
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;->_locations:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;->_syncOption:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;->_repeatDays:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-boolean p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Wifi;->_enabled:Z

    .line 34
    .line 35
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    .line 37
    .line 38
    return-void
.end method
