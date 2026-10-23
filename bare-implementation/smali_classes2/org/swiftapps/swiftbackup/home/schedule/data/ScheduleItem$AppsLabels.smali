.class public final Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;
.super Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AppsLabels"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final _appParts:Ljava/lang/String;

.field private final _enabled:Z

.field private final _id:Ljava/lang/String;

.field private final _labelIds:Ljava/lang/String;

.field private final _locations:Ljava/lang/String;

.field private final _repeatDays:Ljava/lang/String;

.field private final _syncOption:Ljava/lang/String;

.field private final _type:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/swiftapps/swiftbackup/home/schedule/data/f;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 11

    .line 121
    const/16 v9, 0xff

    const/4 v10, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;-><init>(Ljava/lang/String;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 112
    invoke-direct {p0, v0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 113
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->_id:Ljava/lang/String;

    .line 114
    iput-object p2, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->_type:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;

    .line 115
    iput-object p3, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->_labelIds:Ljava/lang/String;

    .line 116
    iput-object p4, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->_appParts:Ljava/lang/String;

    .line 117
    iput-object p5, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->_locations:Ljava/lang/String;

    .line 118
    iput-object p6, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->_syncOption:Ljava/lang/String;

    .line 119
    iput-object p7, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->_repeatDays:Ljava/lang/String;

    .line 120
    iput-boolean p8, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->_enabled:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 11

    .line 1
    move/from16 v0, p9

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    sget-object p1, Lxe6;->b:Lxe6;

    .line 10
    .line 11
    iget-object p1, p1, Lxe6;->a:Ljava/util/function/Supplier;

    .line 12
    .line 13
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Ljava/util/Random;

    .line 18
    .line 19
    const/4 v1, 0x6

    .line 20
    invoke-static {v1, v3, v3, v2, p1}, Lnh4;->k(IZZ[CLjava/util/Random;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    :cond_0
    and-int/lit8 v1, v0, 0x2

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    sget-object p2, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;->AppsLabels:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;

    .line 32
    .line 33
    :cond_1
    and-int/lit8 v1, v0, 0x4

    .line 34
    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    move-object v1, v2

    .line 38
    goto :goto_0

    .line 39
    :cond_2
    move-object v1, p3

    .line 40
    :goto_0
    and-int/lit8 v4, v0, 0x8

    .line 41
    .line 42
    if-eqz v4, :cond_3

    .line 43
    .line 44
    sget-object v4, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;->Companion:Lorg/swiftapps/swiftbackup/home/schedule/data/j;

    .line 45
    .line 46
    invoke-static {v4}, Lorg/swiftapps/swiftbackup/home/schedule/data/j;->a(Lorg/swiftapps/swiftbackup/home/schedule/data/j;)Ljava/util/Set;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    const/4 v9, 0x0

    .line 51
    const/16 v10, 0x3f

    .line 52
    .line 53
    const/4 v6, 0x0

    .line 54
    const/4 v7, 0x0

    .line 55
    const/4 v8, 0x0

    .line 56
    invoke-static/range {v5 .. v10}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    goto :goto_1

    .line 61
    :cond_3
    move-object v4, p4

    .line 62
    :goto_1
    and-int/lit8 v5, v0, 0x10

    .line 63
    .line 64
    if-eqz v5, :cond_4

    .line 65
    .line 66
    move-object v5, v2

    .line 67
    goto :goto_2

    .line 68
    :cond_4
    move-object/from16 v5, p5

    .line 69
    .line 70
    :goto_2
    and-int/lit8 v6, v0, 0x20

    .line 71
    .line 72
    if-eqz v6, :cond_5

    .line 73
    .line 74
    move-object v6, v2

    .line 75
    goto :goto_3

    .line 76
    :cond_5
    move-object/from16 v6, p6

    .line 77
    .line 78
    :goto_3
    and-int/lit8 v7, v0, 0x40

    .line 79
    .line 80
    if-eqz v7, :cond_6

    .line 81
    .line 82
    goto :goto_4

    .line 83
    :cond_6
    move-object/from16 v2, p7

    .line 84
    .line 85
    :goto_4
    and-int/lit16 v0, v0, 0x80

    .line 86
    .line 87
    if-eqz v0, :cond_7

    .line 88
    .line 89
    move/from16 p10, v3

    .line 90
    .line 91
    :goto_5
    move-object p3, p1

    .line 92
    move-object p4, p2

    .line 93
    move-object/from16 p5, v1

    .line 94
    .line 95
    move-object/from16 p9, v2

    .line 96
    .line 97
    move-object/from16 p6, v4

    .line 98
    .line 99
    move-object/from16 p7, v5

    .line 100
    .line 101
    move-object/from16 p8, v6

    .line 102
    .line 103
    move-object p2, p0

    .line 104
    goto :goto_6

    .line 105
    :cond_7
    move/from16 p10, p8

    .line 106
    .line 107
    goto :goto_5

    .line 108
    :goto_6
    invoke-direct/range {p2 .. p10}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;-><init>(Ljava/lang/String;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 109
    .line 110
    .line 111
    return-void
.end method

.method public static synthetic copy$default(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;Ljava/lang/String;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;
    .locals 0

    .line 1
    and-int/lit8 p10, p9, 0x1

    .line 2
    .line 3
    if-eqz p10, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->_id:Ljava/lang/String;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p10, p9, 0x2

    .line 8
    .line 9
    if-eqz p10, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->_type:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p10, p9, 0x4

    .line 14
    .line 15
    if-eqz p10, :cond_2

    .line 16
    .line 17
    iget-object p3, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->_labelIds:Ljava/lang/String;

    .line 18
    .line 19
    :cond_2
    and-int/lit8 p10, p9, 0x8

    .line 20
    .line 21
    if-eqz p10, :cond_3

    .line 22
    .line 23
    iget-object p4, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->_appParts:Ljava/lang/String;

    .line 24
    .line 25
    :cond_3
    and-int/lit8 p10, p9, 0x10

    .line 26
    .line 27
    if-eqz p10, :cond_4

    .line 28
    .line 29
    iget-object p5, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->_locations:Ljava/lang/String;

    .line 30
    .line 31
    :cond_4
    and-int/lit8 p10, p9, 0x20

    .line 32
    .line 33
    if-eqz p10, :cond_5

    .line 34
    .line 35
    iget-object p6, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->_syncOption:Ljava/lang/String;

    .line 36
    .line 37
    :cond_5
    and-int/lit8 p10, p9, 0x40

    .line 38
    .line 39
    if-eqz p10, :cond_6

    .line 40
    .line 41
    iget-object p7, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->_repeatDays:Ljava/lang/String;

    .line 42
    .line 43
    :cond_6
    and-int/lit16 p9, p9, 0x80

    .line 44
    .line 45
    if-eqz p9, :cond_7

    .line 46
    .line 47
    iget-boolean p8, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->_enabled:Z

    .line 48
    .line 49
    :cond_7
    move-object p9, p7

    .line 50
    move p10, p8

    .line 51
    move-object p7, p5

    .line 52
    move-object p8, p6

    .line 53
    move-object p5, p3

    .line 54
    move-object p6, p4

    .line 55
    move-object p3, p1

    .line 56
    move-object p4, p2

    .line 57
    move-object p2, p0

    .line 58
    invoke-virtual/range {p2 .. p10}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->copy(Ljava/lang/String;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    return-object p0
.end method

.method public static synthetic e(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->getLabelIds$lambda$0(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final getAppParts$lambda$0(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;)Ljava/util/List;
    .locals 2

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->_appParts:Ljava/lang/String;

    .line 2
    .line 3
    const-string v0, ", "

    .line 4
    .line 5
    filled-new-array {v0}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x6

    .line 10
    invoke-static {p0, v0, v1}, Lnq7;->x0(Ljava/lang/CharSequence;[Ljava/lang/String;I)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    const/16 v1, 0xa

    .line 17
    .line 18
    invoke-static {p0, v1}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 23
    .line 24
    .line 25
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Ljava/lang/String;

    .line 40
    .line 41
    invoke-static {v1}, Liu;->valueOf(Ljava/lang/String;)Liu;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    return-object v0
.end method

.method private static final getLabelIds$lambda$0(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;)Ljava/util/List;
    .locals 13

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->_labelIds:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const-string v2, ", "

    .line 7
    .line 8
    filled-new-array {v2}, [Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const/4 v3, 0x6

    .line 13
    invoke-static {v0, v2, v3}, Lnq7;->x0(Ljava/lang/CharSequence;[Ljava/lang/String;I)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object v0, v1

    .line 19
    :goto_0
    if-eqz v0, :cond_5

    .line 20
    .line 21
    new-instance v1, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_4

    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    move-object v3, v2

    .line 41
    check-cast v3, Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-nez v4, :cond_2

    .line 48
    .line 49
    const/4 v3, 0x0

    .line 50
    goto :goto_2

    .line 51
    :cond_2
    sget-object v4, Llr4;->a:Llr4;

    .line 52
    .line 53
    invoke-static {v3}, Llr4;->h(Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-nez v4, :cond_3

    .line 58
    .line 59
    const-string v5, "getLabelIds(): Label with id="

    .line 60
    .line 61
    const-string v6, " no longer exists."

    .line 62
    .line 63
    invoke-static {v5, v3, v6}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v9

    .line 67
    sget-object v7, Lvr6;->INSTANCE:Lvr6;

    .line 68
    .line 69
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;->getLogTag()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v8

    .line 73
    const/4 v11, 0x4

    .line 74
    const/4 v12, 0x0

    .line 75
    const/4 v10, 0x0

    .line 76
    invoke-static/range {v7 .. v12}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    :cond_3
    move v3, v4

    .line 80
    :goto_2
    if-eqz v3, :cond_1

    .line 81
    .line 82
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_4
    invoke-static {v1}, Leq3;->p(Ljava/util/ArrayList;)Ljava/util/List;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    return-object p0

    .line 91
    :cond_5
    return-object v1
.end method

.method private static final getLocations$lambda$0(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;)Ljava/util/List;
    .locals 2

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->_locations:Ljava/lang/String;

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

.method private static final getSyncOption$lambda$0(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;)Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->_syncOption:Ljava/lang/String;

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
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component2()Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->_type:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->_labelIds:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component4()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->_appParts:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component5()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->_locations:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component6()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->_syncOption:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component7()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->_repeatDays:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component8()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->_enabled:Z

    .line 2
    .line 3
    return p0
.end method

.method public final copy(Ljava/lang/String;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;
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
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;

    .line 11
    .line 12
    invoke-direct/range {p0 .. p8}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;-><init>(Ljava/lang/String;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 13
    .line 14
    .line 15
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
    instance-of v1, p1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;

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
    check-cast p1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;

    .line 12
    .line 13
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->_id:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->_id:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->_type:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;

    .line 25
    .line 26
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->_type:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;

    .line 27
    .line 28
    if-eq v1, v3, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->_labelIds:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->_labelIds:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->_appParts:Ljava/lang/String;

    .line 43
    .line 44
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->_appParts:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->_locations:Ljava/lang/String;

    .line 54
    .line 55
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->_locations:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->_syncOption:Ljava/lang/String;

    .line 65
    .line 66
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->_syncOption:Ljava/lang/String;

    .line 67
    .line 68
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-nez v1, :cond_7

    .line 73
    .line 74
    return v2

    .line 75
    :cond_7
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->_repeatDays:Ljava/lang/String;

    .line 76
    .line 77
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->_repeatDays:Ljava/lang/String;

    .line 78
    .line 79
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-nez v1, :cond_8

    .line 84
    .line 85
    return v2

    .line 86
    :cond_8
    iget-boolean p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->_enabled:Z

    .line 87
    .line 88
    iget-boolean p1, p1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->_enabled:Z

    .line 89
    .line 90
    if-eq p0, p1, :cond_9

    .line 91
    .line 92
    return v2

    .line 93
    :cond_9
    return v0
.end method

.method public final getAppParts()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Liu;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljz2;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->getAppParts$lambda$0(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;)Ljava/util/List;

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
    if-eqz v0, :cond_2

    .line 19
    .line 20
    goto :goto_2

    .line 21
    :cond_2
    sget-object p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;->Companion:Lorg/swiftapps/swiftbackup/home/schedule/data/j;

    .line 22
    .line 23
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/j;->a(Lorg/swiftapps/swiftbackup/home/schedule/data/j;)Ljava/util/Set;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    :goto_2
    new-instance p0, Ljava/util/LinkedHashSet;

    .line 28
    .line 29
    invoke-direct {p0, v0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 30
    .line 31
    .line 32
    invoke-static {p0}, Lel1;->v1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-static {p0}, Lel1;->m1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0
.end method

.method public getCopy()Ljl0;
    .locals 11
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    const/16 v9, 0xff

    .line 2
    .line 3
    const/4 v10, 0x0

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
    move-object v0, p0

    .line 13
    invoke-static/range {v0 .. v10}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->copy$default(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;Ljava/lang/String;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public getItemId()Ljava/lang/String;
    .locals 0
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getItemType()Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;
    .locals 0
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->_type:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getLabelIds()Ljava/util/List;
    .locals 4
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
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;->getLogTag()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Las4;

    .line 6
    .line 7
    const/16 v2, 0xb

    .line 8
    .line 9
    invoke-direct {v1, p0, v2}, Las4;-><init>(Ljava/lang/Object;I)V

    .line 10
    .line 11
    .line 12
    const/16 p0, 0xa

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-static {v0, v2, v3, v1, p0}, Lio4;->j(Ljava/lang/String;Ljava/lang/String;ZLbt3;I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Ljava/util/List;

    .line 21
    .line 22
    return-object p0
.end method

.method public final getLabelNames()Ljava/util/List;
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
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->getLabels()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    sget-object p0, Lsv2;->a:Lsv2;

    .line 8
    .line 9
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;

    .line 29
    .line 30
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->getName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    return-object v0
.end method

.method public final getLabels()Ljava/util/Set;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljz2;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->getLabelIds()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_4

    .line 7
    .line 8
    new-instance v2, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

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
    move-result v3

    .line 21
    if-eqz v3, :cond_3

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-nez v4, :cond_1

    .line 34
    .line 35
    move-object v4, v1

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    sget-object v4, Llr4;->a:Llr4;

    .line 38
    .line 39
    invoke-static {v3}, Llr4;->c(Ljava/lang/String;)Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    if-nez v4, :cond_2

    .line 44
    .line 45
    const-string v5, "getLabels(): Label with id="

    .line 46
    .line 47
    const-string v6, " no longer exists. Check your schedules please, updated if needed."

    .line 48
    .line 49
    invoke-static {v5, v3, v6}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v9

    .line 53
    sget-object v7, Lvr6;->INSTANCE:Lvr6;

    .line 54
    .line 55
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;->getLogTag()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v8

    .line 59
    const/4 v11, 0x4

    .line 60
    const/4 v12, 0x0

    .line 61
    const/4 v10, 0x0

    .line 62
    invoke-static/range {v7 .. v12}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    :cond_2
    :goto_1
    if-eqz v4, :cond_0

    .line 66
    .line 67
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_3
    sget-object p0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->Companion:Lhr4;

    .line 72
    .line 73
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    new-instance p0, Lxg;

    .line 77
    .line 78
    const/4 v0, 0x7

    .line 79
    invoke-direct {p0, v0}, Lxg;-><init>(I)V

    .line 80
    .line 81
    .line 82
    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    new-instance v0, Lyg;

    .line 88
    .line 89
    const/4 v1, 0x4

    .line 90
    invoke-direct {v0, p0, v1}, Lyg;-><init>(Ljava/util/Comparator;I)V

    .line 91
    .line 92
    .line 93
    invoke-static {v2, v0}, Lel1;->n1(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    invoke-static {p0}, Lel1;->z1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    return-object p0

    .line 102
    :cond_4
    return-object v1
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
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->getLocations$lambda$0(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;)Ljava/util/List;

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
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->_repeatDays:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getSubtitle()Ljava/lang/String;
    .locals 6
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->getLabelNames()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v4, 0x0

    .line 6
    const/16 v5, 0x3f

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-static/range {v0 .. v5}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const-string v0, "app_locale"

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    :try_start_0
    sget-object v2, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const-string v0, "prefs"

    .line 28
    .line 29
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :catch_0
    :goto_0
    if-eqz v1, :cond_2

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    invoke-static {v1}, Lxx3;->g(Ljava/lang/String;)Lis4;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lis4;->a()Ljava/util/Locale;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    goto :goto_2

    .line 51
    :cond_2
    :goto_1
    invoke-static {}, Lxx3;->h()Lis4;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lis4;->a()Ljava/util/Locale;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    :goto_2
    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    return-object p0
.end method

.method public final getSyncOption()Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;
    .locals 0
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->getSyncOption$lambda$0(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;)Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;

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
    .locals 2
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    sget-object p0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 2
    .line 3
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const v0, 0x7f130079

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const v1, 0x7f1302e3

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, ": "

    .line 26
    .line 27
    invoke-static {p0, v1, v0}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method

.method public final get_appParts()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->_appParts:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final get_enabled()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->_enabled:Z

    .line 2
    .line 3
    return p0
.end method

.method public final get_id()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final get_labelIds()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->_labelIds:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final get_locations()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->_locations:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final get_repeatDays()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->_repeatDays:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final get_syncOption()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->_syncOption:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final get_type()Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->_type:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;

    .line 2
    .line 3
    return-object p0
.end method

.method public hasAnyCloudLocations()Z
    .locals 0
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->getLocations()Ljava/util/List;

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
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->_id:Ljava/lang/String;

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
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->_type:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;

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
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->_labelIds:Ljava/lang/String;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    move v0, v3

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
    add-int/2addr v2, v0

    .line 30
    mul-int/2addr v2, v1

    .line 31
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->_appParts:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v2, v1, v0}, Lfz5;->g(IILjava/lang/String;)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->_locations:Ljava/lang/String;

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
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->_syncOption:Ljava/lang/String;

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
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->_repeatDays:Ljava/lang/String;

    .line 62
    .line 63
    if-nez v2, :cond_3

    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    :goto_3
    add-int/2addr v0, v3

    .line 71
    mul-int/2addr v0, v1

    .line 72
    iget-boolean p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->_enabled:Z

    .line 73
    .line 74
    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    .line 75
    .line 76
    .line 77
    move-result p0

    .line 78
    add-int/2addr p0, v0

    .line 79
    return p0
.end method

.method public isEnabled()Z
    .locals 0
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    iget-boolean p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->_enabled:Z

    .line 2
    .line 3
    return p0
.end method

.method public isRootNeeded()Z
    .locals 3
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->getAppParts()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    return v0

    .line 15
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Liu;

    .line 30
    .line 31
    invoke-virtual {v1}, Liu;->getBackupReq()Lsk0;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    sget-object v2, Lsk0;->ROOT:Lsk0;

    .line 36
    .line 37
    if-ne v1, v2, :cond_1

    .line 38
    .line 39
    const/4 p0, 0x1

    .line 40
    return p0

    .line 41
    :cond_2
    return v0
.end method

.method public isRunnable()Z
    .locals 2
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->isRootNeeded()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    sget-object v0, Lmp6;->a:Lmp6;

    .line 9
    .line 10
    sget-boolean v0, Lmp6;->g:Z

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    return v1

    .line 15
    :cond_0
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->getLabelIds()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const/4 v0, 0x1

    .line 20
    if-eqz p0, :cond_1

    .line 21
    .line 22
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    if-eqz p0, :cond_2

    .line 27
    .line 28
    :cond_1
    move v1, v0

    .line 29
    :cond_2
    xor-int/lit8 p0, v1, 0x1

    .line 30
    .line 31
    return p0
.end method

.method public toDisplayString()Ljava/lang/String;
    .locals 10
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->getItemType()Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;

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
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->getLabelNames()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v2, "labels="

    .line 14
    .line 15
    invoke-static {v2, v0}, Lxs1;->l(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->getAppParts()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v3, "parts="

    .line 24
    .line 25
    invoke-static {v3, v0}, Lxs1;->l(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->getLocations()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v4, "locations="

    .line 34
    .line 35
    invoke-static {v4, v0}, Lxs1;->l(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->getSyncOption()Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    new-instance v5, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string v6, "sync="

    .line 46
    .line 47
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;->getRepeatDays()Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    const-string v6, "repeat="

    .line 62
    .line 63
    invoke-static {v6, v0}, Lxs1;->l(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->isEnabled()Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    const-string v7, "enabled="

    .line 72
    .line 73
    invoke-static {v7, v0}, Ldj7;->m(Ljava/lang/String;Z)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->isRootNeeded()Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    const-string v8, "rootNeeded="

    .line 82
    .line 83
    invoke-static {v8, v0}, Ldj7;->m(Ljava/lang/String;Z)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v8

    .line 87
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->isRunnable()Z

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
    move-result-object v9

    .line 97
    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    invoke-static {p0}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

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
    .locals 9

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->_id:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->_type:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->_labelIds:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->_appParts:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->_locations:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->_syncOption:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v6, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->_repeatDays:Ljava/lang/String;

    .line 14
    .line 15
    iget-boolean p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->_enabled:Z

    .line 16
    .line 17
    new-instance v7, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v8, "AppsLabels(_id="

    .line 20
    .line 21
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v0, ", _type="

    .line 28
    .line 29
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v0, ", _labelIds="

    .line 36
    .line 37
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v0, ", _appParts="

    .line 41
    .line 42
    const-string v1, ", _locations="

    .line 43
    .line 44
    invoke-static {v7, v2, v0, v3, v1}, Lxs1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const-string v0, ", _syncOption="

    .line 48
    .line 49
    const-string v1, ", _repeatDays="

    .line 50
    .line 51
    invoke-static {v7, v4, v0, v5, v1}, Lxs1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v0, ", _enabled="

    .line 58
    .line 59
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string p0, ")"

    .line 66
    .line 67
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->_id:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->_type:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;

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
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->_labelIds:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->_appParts:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->_locations:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->_syncOption:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->_repeatDays:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-boolean p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsLabels;->_enabled:Z

    .line 44
    .line 45
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    .line 47
    .line 48
    return-void
.end method
