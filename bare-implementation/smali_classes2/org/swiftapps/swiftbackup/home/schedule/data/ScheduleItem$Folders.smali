.class public final Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;
.super Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Folders"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final _backupAllFolders:Z

.field private final _backupStrategy:Ljava/lang/String;

.field private final _enabled:Z

.field private final _folderItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/swiftapps/swiftbackup/folders/data/FolderItem;",
            ">;"
        }
    .end annotation
.end field

.field private final _id:Ljava/lang/String;

.field private final _locations:Ljava/lang/String;

.field private final _repeatDays:Ljava/lang/String;

.field private final _syncOption:Ljava/lang/String;

.field private final _type:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/swiftapps/swiftbackup/home/schedule/data/k;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 12

    .line 92
    const/16 v10, 0x1ff

    const/4 v11, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;-><init>(Ljava/lang/String;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;",
            "Z",
            "Ljava/util/List<",
            "Lorg/swiftapps/swiftbackup/folders/data/FolderItem;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, v0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 83
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->_id:Ljava/lang/String;

    .line 84
    iput-object p2, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->_type:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;

    .line 85
    iput-boolean p3, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->_backupAllFolders:Z

    .line 86
    iput-object p4, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->_folderItems:Ljava/util/List;

    .line 87
    iput-object p5, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->_locations:Ljava/lang/String;

    .line 88
    iput-object p6, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->_syncOption:Ljava/lang/String;

    .line 89
    iput-object p7, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->_backupStrategy:Ljava/lang/String;

    .line 90
    iput-object p8, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->_repeatDays:Ljava/lang/String;

    .line 91
    iput-boolean p9, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->_enabled:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 2

    .line 1
    and-int/lit8 p11, p10, 0x1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eqz p11, :cond_0

    .line 5
    .line 6
    sget-object p1, Lnh4;->d:Lnh4;

    .line 7
    .line 8
    const/4 p11, 0x6

    .line 9
    invoke-virtual {p1, p11, v0, v0}, Lnh4;->i(IZZ)Ljava/lang/String;

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
    and-int/lit8 p11, p10, 0x2

    .line 17
    .line 18
    if-eqz p11, :cond_1

    .line 19
    .line 20
    sget-object p2, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;->Folders:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;

    .line 21
    .line 22
    :cond_1
    and-int/lit8 p11, p10, 0x4

    .line 23
    .line 24
    if-eqz p11, :cond_2

    .line 25
    .line 26
    move p3, v0

    .line 27
    :cond_2
    and-int/lit8 p11, p10, 0x8

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    if-eqz p11, :cond_3

    .line 31
    .line 32
    move-object p4, v1

    .line 33
    :cond_3
    and-int/lit8 p11, p10, 0x10

    .line 34
    .line 35
    if-eqz p11, :cond_4

    .line 36
    .line 37
    move-object p5, v1

    .line 38
    :cond_4
    and-int/lit8 p11, p10, 0x20

    .line 39
    .line 40
    if-eqz p11, :cond_5

    .line 41
    .line 42
    move-object p6, v1

    .line 43
    :cond_5
    and-int/lit8 p11, p10, 0x40

    .line 44
    .line 45
    if-eqz p11, :cond_6

    .line 46
    .line 47
    move-object p7, v1

    .line 48
    :cond_6
    and-int/lit16 p11, p10, 0x80

    .line 49
    .line 50
    if-eqz p11, :cond_7

    .line 51
    .line 52
    move-object p8, v1

    .line 53
    :cond_7
    and-int/lit16 p10, p10, 0x100

    .line 54
    .line 55
    if-eqz p10, :cond_8

    .line 56
    .line 57
    move p11, v0

    .line 58
    move-object p9, p7

    .line 59
    move-object p10, p8

    .line 60
    move-object p7, p5

    .line 61
    move-object p8, p6

    .line 62
    move p5, p3

    .line 63
    move-object p6, p4

    .line 64
    move-object p3, p1

    .line 65
    move-object p4, p2

    .line 66
    move-object p2, p0

    .line 67
    goto :goto_0

    .line 68
    :cond_8
    move p11, p9

    .line 69
    move-object p10, p8

    .line 70
    move-object p8, p6

    .line 71
    move-object p9, p7

    .line 72
    move-object p6, p4

    .line 73
    move-object p7, p5

    .line 74
    move-object p4, p2

    .line 75
    move p5, p3

    .line 76
    move-object p2, p0

    .line 77
    move-object p3, p1

    .line 78
    :goto_0
    invoke-direct/range {p2 .. p11}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;-><init>(Ljava/lang/String;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method public static synthetic copy$default(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;Ljava/lang/String;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;
    .locals 0

    .line 1
    and-int/lit8 p11, p10, 0x1

    .line 2
    .line 3
    if-eqz p11, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->_id:Ljava/lang/String;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p11, p10, 0x2

    .line 8
    .line 9
    if-eqz p11, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->_type:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p11, p10, 0x4

    .line 14
    .line 15
    if-eqz p11, :cond_2

    .line 16
    .line 17
    iget-boolean p3, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->_backupAllFolders:Z

    .line 18
    .line 19
    :cond_2
    and-int/lit8 p11, p10, 0x8

    .line 20
    .line 21
    if-eqz p11, :cond_3

    .line 22
    .line 23
    iget-object p4, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->_folderItems:Ljava/util/List;

    .line 24
    .line 25
    :cond_3
    and-int/lit8 p11, p10, 0x10

    .line 26
    .line 27
    if-eqz p11, :cond_4

    .line 28
    .line 29
    iget-object p5, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->_locations:Ljava/lang/String;

    .line 30
    .line 31
    :cond_4
    and-int/lit8 p11, p10, 0x20

    .line 32
    .line 33
    if-eqz p11, :cond_5

    .line 34
    .line 35
    iget-object p6, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->_syncOption:Ljava/lang/String;

    .line 36
    .line 37
    :cond_5
    and-int/lit8 p11, p10, 0x40

    .line 38
    .line 39
    if-eqz p11, :cond_6

    .line 40
    .line 41
    iget-object p7, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->_backupStrategy:Ljava/lang/String;

    .line 42
    .line 43
    :cond_6
    and-int/lit16 p11, p10, 0x80

    .line 44
    .line 45
    if-eqz p11, :cond_7

    .line 46
    .line 47
    iget-object p8, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->_repeatDays:Ljava/lang/String;

    .line 48
    .line 49
    :cond_7
    and-int/lit16 p10, p10, 0x100

    .line 50
    .line 51
    if-eqz p10, :cond_8

    .line 52
    .line 53
    iget-boolean p9, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->_enabled:Z

    .line 54
    .line 55
    :cond_8
    move-object p10, p8

    .line 56
    move p11, p9

    .line 57
    move-object p8, p6

    .line 58
    move-object p9, p7

    .line 59
    move-object p6, p4

    .line 60
    move-object p7, p5

    .line 61
    move-object p4, p2

    .line 62
    move p5, p3

    .line 63
    move-object p2, p0

    .line 64
    move-object p3, p1

    .line 65
    invoke-virtual/range {p2 .. p11}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->copy(Ljava/lang/String;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    return-object p0
.end method

.method public static synthetic e(Lorg/swiftapps/swiftbackup/folders/data/FolderItem;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->getFolderItems$lambda$1(Lorg/swiftapps/swiftbackup/folders/data/FolderItem;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final getBackupStrategy$lambda$0(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;)Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->_backupStrategy:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;->valueOf(Ljava/lang/String;)Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;

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

.method private static final getFolderItems$lambda$1(Lorg/swiftapps/swiftbackup/folders/data/FolderItem;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getDisplayName()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method private static final getLocations$lambda$0(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;)Ljava/util/List;
    .locals 2

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->_locations:Ljava/lang/String;

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

.method private static final getSyncOption$lambda$0(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;)Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->_syncOption:Ljava/lang/String;

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
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component2()Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->_type:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component3()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->_backupAllFolders:Z

    .line 2
    .line 3
    return p0
.end method

.method public final component4()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/swiftapps/swiftbackup/folders/data/FolderItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->_folderItems:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component5()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->_locations:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component6()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->_syncOption:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component7()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->_backupStrategy:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component8()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->_repeatDays:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component9()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->_enabled:Z

    .line 2
    .line 3
    return p0
.end method

.method public final copy(Ljava/lang/String;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;",
            "Z",
            "Ljava/util/List<",
            "Lorg/swiftapps/swiftbackup/folders/data/FolderItem;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    new-instance p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;

    .line 8
    .line 9
    invoke-direct/range {p0 .. p9}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;-><init>(Ljava/lang/String;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

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
    instance-of v1, p1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;

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
    check-cast p1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;

    .line 12
    .line 13
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->_id:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->_id:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->_type:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;

    .line 25
    .line 26
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->_type:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;

    .line 27
    .line 28
    if-eq v1, v3, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    iget-boolean v1, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->_backupAllFolders:Z

    .line 32
    .line 33
    iget-boolean v3, p1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->_backupAllFolders:Z

    .line 34
    .line 35
    if-eq v1, v3, :cond_4

    .line 36
    .line 37
    return v2

    .line 38
    :cond_4
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->_folderItems:Ljava/util/List;

    .line 39
    .line 40
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->_folderItems:Ljava/util/List;

    .line 41
    .line 42
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_5

    .line 47
    .line 48
    return v2

    .line 49
    :cond_5
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->_locations:Ljava/lang/String;

    .line 50
    .line 51
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->_locations:Ljava/lang/String;

    .line 52
    .line 53
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-nez v1, :cond_6

    .line 58
    .line 59
    return v2

    .line 60
    :cond_6
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->_syncOption:Ljava/lang/String;

    .line 61
    .line 62
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->_syncOption:Ljava/lang/String;

    .line 63
    .line 64
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-nez v1, :cond_7

    .line 69
    .line 70
    return v2

    .line 71
    :cond_7
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->_backupStrategy:Ljava/lang/String;

    .line 72
    .line 73
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->_backupStrategy:Ljava/lang/String;

    .line 74
    .line 75
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-nez v1, :cond_8

    .line 80
    .line 81
    return v2

    .line 82
    :cond_8
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->_repeatDays:Ljava/lang/String;

    .line 83
    .line 84
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->_repeatDays:Ljava/lang/String;

    .line 85
    .line 86
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-nez v1, :cond_9

    .line 91
    .line 92
    return v2

    .line 93
    :cond_9
    iget-boolean p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->_enabled:Z

    .line 94
    .line 95
    iget-boolean p1, p1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->_enabled:Z

    .line 96
    .line 97
    if-eq p0, p1, :cond_a

    .line 98
    .line 99
    return v2

    .line 100
    :cond_a
    return v0
.end method

.method public final getBackupStrategy()Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;
    .locals 0
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->getBackupStrategy$lambda$0(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;)Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;

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
    sget-object p0, Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;->Companion:Lfk3;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    sget-object p0, Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;->Single:Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;

    .line 15
    .line 16
    :cond_0
    return-object p0
.end method

.method public getCopy()Ljl0;
    .locals 12
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    const/16 v10, 0x1ff

    .line 2
    .line 3
    const/4 v11, 0x0

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
    const/4 v7, 0x0

    .line 11
    const/4 v8, 0x0

    .line 12
    const/4 v9, 0x0

    .line 13
    move-object v0, p0

    .line 14
    invoke-static/range {v0 .. v11}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->copy$default(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;Ljava/lang/String;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public final getFolderItems()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/swiftapps/swiftbackup/folders/data/FolderItem;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljz2;
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->_folderItems:Ljava/util/List;

    .line 2
    .line 3
    if-eqz p0, :cond_2

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    move-object v2, v1

    .line 25
    check-cast v2, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 26
    .line 27
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->isValid()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    sget-object p0, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->Companion:Lnm3;

    .line 38
    .line 39
    new-instance v1, Lnu;

    .line 40
    .line 41
    const/16 v2, 0xc

    .line 42
    .line 43
    invoke-direct {v1, v2}, Lnu;-><init>(I)V

    .line 44
    .line 45
    .line 46
    invoke-static {p0, v1}, Lnm3;->a(Lnm3;Lmt3;)Lym1;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-static {v0, p0}, Lel1;->n1(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    return-object p0

    .line 55
    :cond_2
    const/4 p0, 0x0

    .line 56
    return-object p0
.end method

.method public final getFolderNames()Ljava/util/List;
    .locals 2
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
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->getFolderItems()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    sget-object p0, Lov2;->a:Lov2;

    .line 8
    .line 9
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    const/16 v1, 0xa

    .line 12
    .line 13
    invoke-static {p0, v1}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 18
    .line 19
    .line 20
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 35
    .line 36
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getDisplayName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    return-object v0
.end method

.method public getItemId()Ljava/lang/String;
    .locals 0
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getItemType()Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;
    .locals 0
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->_type:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;

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
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->getLocations$lambda$0(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;)Ljava/util/List;

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
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->_repeatDays:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getSubtitle()Ljava/lang/String;
    .locals 6
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->isBackupAllFolders()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string p0, "All folder setups"

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->getFolderNames()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v4, 0x0

    .line 15
    const/16 v5, 0x3f

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    const/4 v2, 0x0

    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-static/range {v0 .. v5}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method

.method public final getSyncOption()Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;
    .locals 0
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->getSyncOption$lambda$0(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;)Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;

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
    const p0, 0x7f130281

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

.method public final get_backupAllFolders()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->_backupAllFolders:Z

    .line 2
    .line 3
    return p0
.end method

.method public final get_backupStrategy()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->_backupStrategy:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final get_enabled()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->_enabled:Z

    .line 2
    .line 3
    return p0
.end method

.method public final get_folderItems()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/swiftapps/swiftbackup/folders/data/FolderItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->_folderItems:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final get_id()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final get_locations()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->_locations:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final get_repeatDays()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->_repeatDays:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final get_syncOption()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->_syncOption:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final get_type()Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->_type:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;

    .line 2
    .line 3
    return-object p0
.end method

.method public hasAnyCloudLocations()Z
    .locals 0
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->getLocations()Ljava/util/List;

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
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->_id:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

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
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->_type:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;

    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    add-int/2addr v2, v0

    .line 17
    mul-int/2addr v2, v1

    .line 18
    iget-boolean v0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->_backupAllFolders:Z

    .line 19
    .line 20
    invoke-static {v2, v1, v0}, Lfz5;->h(IIZ)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->_folderItems:Ljava/util/List;

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    if-nez v2, :cond_0

    .line 28
    .line 29
    move v2, v3

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    :goto_0
    add-int/2addr v0, v2

    .line 36
    mul-int/2addr v0, v1

    .line 37
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->_locations:Ljava/lang/String;

    .line 38
    .line 39
    if-nez v2, :cond_1

    .line 40
    .line 41
    move v2, v3

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    :goto_1
    add-int/2addr v0, v2

    .line 48
    mul-int/2addr v0, v1

    .line 49
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->_syncOption:Ljava/lang/String;

    .line 50
    .line 51
    if-nez v2, :cond_2

    .line 52
    .line 53
    move v2, v3

    .line 54
    goto :goto_2

    .line 55
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    :goto_2
    add-int/2addr v0, v2

    .line 60
    mul-int/2addr v0, v1

    .line 61
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->_backupStrategy:Ljava/lang/String;

    .line 62
    .line 63
    if-nez v2, :cond_3

    .line 64
    .line 65
    move v2, v3

    .line 66
    goto :goto_3

    .line 67
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    :goto_3
    add-int/2addr v0, v2

    .line 72
    mul-int/2addr v0, v1

    .line 73
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->_repeatDays:Ljava/lang/String;

    .line 74
    .line 75
    if-nez v2, :cond_4

    .line 76
    .line 77
    goto :goto_4

    .line 78
    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    :goto_4
    add-int/2addr v0, v3

    .line 83
    mul-int/2addr v0, v1

    .line 84
    iget-boolean p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->_enabled:Z

    .line 85
    .line 86
    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    .line 87
    .line 88
    .line 89
    move-result p0

    .line 90
    add-int/2addr p0, v0

    .line 91
    return p0
.end method

.method public final isBackupAllFolders()Z
    .locals 1
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->_backupAllFolders:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->getFolderItems()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-eqz p0, :cond_1

    .line 10
    .line 11
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    return p0

    .line 20
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 21
    return p0
.end method

.method public isEnabled()Z
    .locals 0
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    iget-boolean p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->_enabled:Z

    .line 2
    .line 3
    return p0
.end method

.method public isRootNeeded()Z
    .locals 0
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public isRunnable()Z
    .locals 1
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->isBackupAllFolders()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->getFolderItems()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-eqz p0, :cond_1

    .line 18
    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    return p0

    .line 21
    :cond_1
    const/4 p0, 0x1

    .line 22
    return p0
.end method

.method public toDisplayString()Ljava/lang/String;
    .locals 9
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->getItemType()Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;

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
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->isBackupAllFolders()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const-string v2, "backupAllFolders="

    .line 14
    .line 15
    invoke-static {v2, v0}, Ldj7;->m(Ljava/lang/String;Z)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->getFolderNames()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_0

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    :goto_0
    move-object v3, v0

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    const-string v3, "folders="

    .line 33
    .line 34
    invoke-static {v3, v0}, Lxs1;->l(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    goto :goto_0

    .line 39
    :goto_1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->getLocations()Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const-string v4, "locations="

    .line 44
    .line 45
    invoke-static {v4, v0}, Lxs1;->l(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->getBackupStrategy()Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    new-instance v5, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v6, "backupStrategy="

    .line 56
    .line 57
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;->getRepeatDays()Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    const-string v6, "repeat="

    .line 72
    .line 73
    invoke-static {v6, v0}, Lxs1;->l(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->isEnabled()Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    const-string v7, "enabled="

    .line 82
    .line 83
    invoke-static {v7, v0}, Ldj7;->m(Ljava/lang/String;Z)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v7

    .line 87
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->isRunnable()Z

    .line 88
    .line 89
    .line 90
    move-result p0

    .line 91
    const-string v0, "runnable="

    .line 92
    .line 93
    invoke-static {v0, p0}, Ldj7;->m(Ljava/lang/String;Z)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v8

    .line 97
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    invoke-static {p0}, Lx50;->p0([Ljava/lang/Object;)Ljava/util/List;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    const/4 v4, 0x0

    .line 106
    const/16 v5, 0x3f

    .line 107
    .line 108
    const/4 v1, 0x0

    .line 109
    const/4 v2, 0x0

    .line 110
    const/4 v3, 0x0

    .line 111
    invoke-static/range {v0 .. v5}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->_id:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->_type:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;

    .line 4
    .line 5
    iget-boolean v2, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->_backupAllFolders:Z

    .line 6
    .line 7
    iget-object v3, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->_folderItems:Ljava/util/List;

    .line 8
    .line 9
    iget-object v4, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->_locations:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->_syncOption:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v6, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->_backupStrategy:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v7, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->_repeatDays:Ljava/lang/String;

    .line 16
    .line 17
    iget-boolean p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->_enabled:Z

    .line 18
    .line 19
    new-instance v8, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v9, "Folders(_id="

    .line 22
    .line 23
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v0, ", _type="

    .line 30
    .line 31
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v0, ", _backupAllFolders="

    .line 38
    .line 39
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v0, ", _folderItems="

    .line 46
    .line 47
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v0, ", _locations="

    .line 54
    .line 55
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v0, ", _syncOption="

    .line 59
    .line 60
    const-string v1, ", _backupStrategy="

    .line 61
    .line 62
    invoke-static {v8, v4, v0, v5, v1}, Lxs1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    const-string v0, ", _repeatDays="

    .line 66
    .line 67
    const-string v1, ", _enabled="

    .line 68
    .line 69
    invoke-static {v8, v6, v0, v7, v1}, Lxs1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    const-string v0, ")"

    .line 73
    .line 74
    invoke-static {v8, p0, v0}, Ldj7;->p(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->_id:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->_type:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-boolean v0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->_backupAllFolders:Z

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->_folderItems:Ljava/util/List;

    .line 24
    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    const/4 p2, 0x0

    .line 28
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    const/4 v1, 0x1

    .line 33
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_1

    .line 52
    .line 53
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    check-cast v1, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 58
    .line 59
    invoke-virtual {v1, p1, p2}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->writeToParcel(Landroid/os/Parcel;I)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    :goto_1
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->_locations:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->_syncOption:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->_backupStrategy:Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->_repeatDays:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iget-boolean p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->_enabled:Z

    .line 84
    .line 85
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    .line 87
    .line 88
    return-void
.end method
