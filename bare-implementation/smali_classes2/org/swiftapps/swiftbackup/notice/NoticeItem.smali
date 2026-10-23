.class public final Lorg/swiftapps/swiftbackup/notice/NoticeItem;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljl0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/swiftapps/swiftbackup/notice/NoticeItem$a;
    }
.end annotation


# static fields
.field public static final Companion:Lmo5;

.field private static final logTag:Ljava/lang/String; = "NoticeItem"


# instance fields
.field private final _subtitle:Ljava/lang/String;

.field private final active:Z

.field private final id:Ljava/lang/String;

.field private final maxAppVersion:Ljava/lang/Integer;

.field private final maxSdkVersion:Ljava/lang/Integer;

.field private final message:Ljava/lang/String;

.field private final minAppVersion:Ljava/lang/Integer;

.field private final minSdkVersion:Ljava/lang/Integer;

.field private final priority:Lorg/swiftapps/swiftbackup/notice/NoticeItem$a;

.field private final testing:Z

.field private final title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lmo5;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->Companion:Lmo5;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 14

    .line 89
    const/16 v12, 0x7ff

    const/4 v13, 0x0

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

    move-object v0, p0

    invoke-direct/range {v0 .. v13}, Lorg/swiftapps/swiftbackup/notice/NoticeItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lorg/swiftapps/swiftbackup/notice/NoticeItem$a;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lorg/swiftapps/swiftbackup/notice/NoticeItem$a;ZZ)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->id:Ljava/lang/String;

    .line 79
    iput-object p2, p0, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->title:Ljava/lang/String;

    .line 80
    iput-object p3, p0, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->_subtitle:Ljava/lang/String;

    .line 81
    iput-object p4, p0, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->message:Ljava/lang/String;

    .line 82
    iput-object p5, p0, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->minAppVersion:Ljava/lang/Integer;

    .line 83
    iput-object p6, p0, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->maxAppVersion:Ljava/lang/Integer;

    .line 84
    iput-object p7, p0, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->minSdkVersion:Ljava/lang/Integer;

    .line 85
    iput-object p8, p0, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->maxSdkVersion:Ljava/lang/Integer;

    .line 86
    iput-object p9, p0, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->priority:Lorg/swiftapps/swiftbackup/notice/NoticeItem$a;

    .line 87
    iput-boolean p10, p0, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->active:Z

    .line 88
    iput-boolean p11, p0, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->testing:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lorg/swiftapps/swiftbackup/notice/NoticeItem$a;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    .line 1
    and-int/lit8 p13, p12, 0x1

    .line 2
    .line 3
    if-eqz p13, :cond_0

    .line 4
    .line 5
    const-string p1, "notice_id"

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p13, p12, 0x2

    .line 8
    .line 9
    const-string v0, ""

    .line 10
    .line 11
    if-eqz p13, :cond_1

    .line 12
    .line 13
    move-object p2, v0

    .line 14
    :cond_1
    and-int/lit8 p13, p12, 0x4

    .line 15
    .line 16
    if-eqz p13, :cond_2

    .line 17
    .line 18
    move-object p3, v0

    .line 19
    :cond_2
    and-int/lit8 p13, p12, 0x8

    .line 20
    .line 21
    if-eqz p13, :cond_3

    .line 22
    .line 23
    move-object p4, v0

    .line 24
    :cond_3
    and-int/lit8 p13, p12, 0x10

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    if-eqz p13, :cond_4

    .line 28
    .line 29
    move-object p5, v0

    .line 30
    :cond_4
    and-int/lit8 p13, p12, 0x20

    .line 31
    .line 32
    if-eqz p13, :cond_5

    .line 33
    .line 34
    move-object p6, v0

    .line 35
    :cond_5
    and-int/lit8 p13, p12, 0x40

    .line 36
    .line 37
    if-eqz p13, :cond_6

    .line 38
    .line 39
    move-object p7, v0

    .line 40
    :cond_6
    and-int/lit16 p13, p12, 0x80

    .line 41
    .line 42
    if-eqz p13, :cond_7

    .line 43
    .line 44
    move-object p8, v0

    .line 45
    :cond_7
    and-int/lit16 p13, p12, 0x100

    .line 46
    .line 47
    if-eqz p13, :cond_8

    .line 48
    .line 49
    sget-object p9, Lorg/swiftapps/swiftbackup/notice/NoticeItem$a;->LOW:Lorg/swiftapps/swiftbackup/notice/NoticeItem$a;

    .line 50
    .line 51
    :cond_8
    and-int/lit16 p13, p12, 0x200

    .line 52
    .line 53
    if-eqz p13, :cond_9

    .line 54
    .line 55
    const/4 p10, 0x0

    .line 56
    :cond_9
    and-int/lit16 p12, p12, 0x400

    .line 57
    .line 58
    if-eqz p12, :cond_a

    .line 59
    .line 60
    const/4 p11, 0x1

    .line 61
    :cond_a
    move p12, p10

    .line 62
    move p13, p11

    .line 63
    move-object p10, p8

    .line 64
    move-object p11, p9

    .line 65
    move-object p8, p6

    .line 66
    move-object p9, p7

    .line 67
    move-object p6, p4

    .line 68
    move-object p7, p5

    .line 69
    move-object p4, p2

    .line 70
    move-object p5, p3

    .line 71
    move-object p2, p0

    .line 72
    move-object p3, p1

    .line 73
    invoke-direct/range {p2 .. p13}, Lorg/swiftapps/swiftbackup/notice/NoticeItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lorg/swiftapps/swiftbackup/notice/NoticeItem$a;ZZ)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public static synthetic copy$default(Lorg/swiftapps/swiftbackup/notice/NoticeItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lorg/swiftapps/swiftbackup/notice/NoticeItem$a;ZZILjava/lang/Object;)Lorg/swiftapps/swiftbackup/notice/NoticeItem;
    .locals 0

    .line 1
    and-int/lit8 p13, p12, 0x1

    .line 2
    .line 3
    if-eqz p13, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->id:Ljava/lang/String;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p13, p12, 0x2

    .line 8
    .line 9
    if-eqz p13, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->title:Ljava/lang/String;

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p13, p12, 0x4

    .line 14
    .line 15
    if-eqz p13, :cond_2

    .line 16
    .line 17
    iget-object p3, p0, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->_subtitle:Ljava/lang/String;

    .line 18
    .line 19
    :cond_2
    and-int/lit8 p13, p12, 0x8

    .line 20
    .line 21
    if-eqz p13, :cond_3

    .line 22
    .line 23
    iget-object p4, p0, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->message:Ljava/lang/String;

    .line 24
    .line 25
    :cond_3
    and-int/lit8 p13, p12, 0x10

    .line 26
    .line 27
    if-eqz p13, :cond_4

    .line 28
    .line 29
    iget-object p5, p0, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->minAppVersion:Ljava/lang/Integer;

    .line 30
    .line 31
    :cond_4
    and-int/lit8 p13, p12, 0x20

    .line 32
    .line 33
    if-eqz p13, :cond_5

    .line 34
    .line 35
    iget-object p6, p0, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->maxAppVersion:Ljava/lang/Integer;

    .line 36
    .line 37
    :cond_5
    and-int/lit8 p13, p12, 0x40

    .line 38
    .line 39
    if-eqz p13, :cond_6

    .line 40
    .line 41
    iget-object p7, p0, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->minSdkVersion:Ljava/lang/Integer;

    .line 42
    .line 43
    :cond_6
    and-int/lit16 p13, p12, 0x80

    .line 44
    .line 45
    if-eqz p13, :cond_7

    .line 46
    .line 47
    iget-object p8, p0, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->maxSdkVersion:Ljava/lang/Integer;

    .line 48
    .line 49
    :cond_7
    and-int/lit16 p13, p12, 0x100

    .line 50
    .line 51
    if-eqz p13, :cond_8

    .line 52
    .line 53
    iget-object p9, p0, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->priority:Lorg/swiftapps/swiftbackup/notice/NoticeItem$a;

    .line 54
    .line 55
    :cond_8
    and-int/lit16 p13, p12, 0x200

    .line 56
    .line 57
    if-eqz p13, :cond_9

    .line 58
    .line 59
    iget-boolean p10, p0, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->active:Z

    .line 60
    .line 61
    :cond_9
    and-int/lit16 p12, p12, 0x400

    .line 62
    .line 63
    if-eqz p12, :cond_a

    .line 64
    .line 65
    iget-boolean p11, p0, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->testing:Z

    .line 66
    .line 67
    :cond_a
    move p12, p10

    .line 68
    move p13, p11

    .line 69
    move-object p10, p8

    .line 70
    move-object p11, p9

    .line 71
    move-object p8, p6

    .line 72
    move-object p9, p7

    .line 73
    move-object p6, p4

    .line 74
    move-object p7, p5

    .line 75
    move-object p4, p2

    .line 76
    move-object p5, p3

    .line 77
    move-object p2, p0

    .line 78
    move-object p3, p1

    .line 79
    invoke-virtual/range {p2 .. p13}, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lorg/swiftapps/swiftbackup/notice/NoticeItem$a;ZZ)Lorg/swiftapps/swiftbackup/notice/NoticeItem;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    return-object p0
.end method

.method private final matchesAppVersion()Z
    .locals 3
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->minAppVersion:Ljava/lang/Integer;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/16 v2, 0x26c

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-ge v2, v0, :cond_0

    .line 13
    .line 14
    return v1

    .line 15
    :cond_0
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->maxAppVersion:Ljava/lang/Integer;

    .line 16
    .line 17
    if-eqz p0, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-le v2, p0, :cond_1

    .line 24
    .line 25
    return v1

    .line 26
    :cond_1
    const/4 p0, 0x1

    .line 27
    return p0
.end method

.method private final matchesSdk()Z
    .locals 3
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->minSdkVersion:Ljava/lang/Integer;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-ge v0, v1, :cond_0

    .line 13
    .line 14
    return v2

    .line 15
    :cond_0
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->maxSdkVersion:Ljava/lang/Integer;

    .line 16
    .line 17
    if-eqz p0, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-le v0, p0, :cond_1

    .line 24
    .line 25
    return v2

    .line 26
    :cond_1
    const/4 p0, 0x1

    .line 27
    return p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component10()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->active:Z

    .line 2
    .line 3
    return p0
.end method

.method public final component11()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->testing:Z

    .line 2
    .line 3
    return p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->_subtitle:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component4()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->message:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component5()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->minAppVersion:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component6()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->maxAppVersion:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component7()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->minSdkVersion:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component8()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->maxSdkVersion:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component9()Lorg/swiftapps/swiftbackup/notice/NoticeItem$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->priority:Lorg/swiftapps/swiftbackup/notice/NoticeItem$a;

    .line 2
    .line 3
    return-object p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lorg/swiftapps/swiftbackup/notice/NoticeItem$a;ZZ)Lorg/swiftapps/swiftbackup/notice/NoticeItem;
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
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    new-instance p0, Lorg/swiftapps/swiftbackup/notice/NoticeItem;

    .line 17
    .line 18
    invoke-direct/range {p0 .. p11}, Lorg/swiftapps/swiftbackup/notice/NoticeItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lorg/swiftapps/swiftbackup/notice/NoticeItem$a;ZZ)V

    .line 19
    .line 20
    .line 21
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
    instance-of v1, p1, Lorg/swiftapps/swiftbackup/notice/NoticeItem;

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
    check-cast p1, Lorg/swiftapps/swiftbackup/notice/NoticeItem;

    .line 12
    .line 13
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->id:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->id:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->title:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->title:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->_subtitle:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->_subtitle:Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_4

    .line 44
    .line 45
    return v2

    .line 46
    :cond_4
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->message:Ljava/lang/String;

    .line 47
    .line 48
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->message:Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_5

    .line 55
    .line 56
    return v2

    .line 57
    :cond_5
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->minAppVersion:Ljava/lang/Integer;

    .line 58
    .line 59
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->minAppVersion:Ljava/lang/Integer;

    .line 60
    .line 61
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-nez v1, :cond_6

    .line 66
    .line 67
    return v2

    .line 68
    :cond_6
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->maxAppVersion:Ljava/lang/Integer;

    .line 69
    .line 70
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->maxAppVersion:Ljava/lang/Integer;

    .line 71
    .line 72
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-nez v1, :cond_7

    .line 77
    .line 78
    return v2

    .line 79
    :cond_7
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->minSdkVersion:Ljava/lang/Integer;

    .line 80
    .line 81
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->minSdkVersion:Ljava/lang/Integer;

    .line 82
    .line 83
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-nez v1, :cond_8

    .line 88
    .line 89
    return v2

    .line 90
    :cond_8
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->maxSdkVersion:Ljava/lang/Integer;

    .line 91
    .line 92
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->maxSdkVersion:Ljava/lang/Integer;

    .line 93
    .line 94
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-nez v1, :cond_9

    .line 99
    .line 100
    return v2

    .line 101
    :cond_9
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->priority:Lorg/swiftapps/swiftbackup/notice/NoticeItem$a;

    .line 102
    .line 103
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->priority:Lorg/swiftapps/swiftbackup/notice/NoticeItem$a;

    .line 104
    .line 105
    if-eq v1, v3, :cond_a

    .line 106
    .line 107
    return v2

    .line 108
    :cond_a
    iget-boolean v1, p0, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->active:Z

    .line 109
    .line 110
    iget-boolean v3, p1, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->active:Z

    .line 111
    .line 112
    if-eq v1, v3, :cond_b

    .line 113
    .line 114
    return v2

    .line 115
    :cond_b
    iget-boolean p0, p0, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->testing:Z

    .line 116
    .line 117
    iget-boolean p1, p1, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->testing:Z

    .line 118
    .line 119
    if-eq p0, p1, :cond_c

    .line 120
    .line 121
    return v2

    .line 122
    :cond_c
    return v0
.end method

.method public final getActive()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->active:Z

    .line 2
    .line 3
    return p0
.end method

.method public getCopy()Ljl0;
    .locals 14
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    const/16 v12, 0x7ff

    .line 2
    .line 3
    const/4 v13, 0x0

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
    const/4 v10, 0x0

    .line 14
    const/4 v11, 0x0

    .line 15
    move-object v0, p0

    .line 16
    invoke-static/range {v0 .. v13}, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->copy$default(Lorg/swiftapps/swiftbackup/notice/NoticeItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lorg/swiftapps/swiftbackup/notice/NoticeItem$a;ZZILjava/lang/Object;)Lorg/swiftapps/swiftbackup/notice/NoticeItem;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public final getId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getItemId()Ljava/lang/String;
    .locals 0
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getMaxAppVersion()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->maxAppVersion:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getMaxSdkVersion()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->maxSdkVersion:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->message:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getMinAppVersion()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->minAppVersion:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getMinSdkVersion()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->minSdkVersion:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getPriority()Lorg/swiftapps/swiftbackup/notice/NoticeItem$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->priority:Lorg/swiftapps/swiftbackup/notice/NoticeItem$a;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSubtitle()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->_subtitle:Ljava/lang/String;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-lez v1, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    if-nez v0, :cond_1

    .line 18
    .line 19
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->message:Ljava/lang/String;

    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_1
    return-object v0
.end method

.method public final getTesting()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->testing:Z

    .line 2
    .line 3
    return p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final get_subtitle()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->_subtitle:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->id:Ljava/lang/String;

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
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->title:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v0, v1, v2}, Lfz5;->g(IILjava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->_subtitle:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {v0, v1, v2}, Lfz5;->g(IILjava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->message:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v0, v1, v2}, Lfz5;->g(IILjava/lang/String;)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->minAppVersion:Ljava/lang/Integer;

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    if-nez v2, :cond_0

    .line 32
    .line 33
    move v2, v3

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    :goto_0
    add-int/2addr v0, v2

    .line 40
    mul-int/2addr v0, v1

    .line 41
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->maxAppVersion:Ljava/lang/Integer;

    .line 42
    .line 43
    if-nez v2, :cond_1

    .line 44
    .line 45
    move v2, v3

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    :goto_1
    add-int/2addr v0, v2

    .line 52
    mul-int/2addr v0, v1

    .line 53
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->minSdkVersion:Ljava/lang/Integer;

    .line 54
    .line 55
    if-nez v2, :cond_2

    .line 56
    .line 57
    move v2, v3

    .line 58
    goto :goto_2

    .line 59
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    :goto_2
    add-int/2addr v0, v2

    .line 64
    mul-int/2addr v0, v1

    .line 65
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->maxSdkVersion:Ljava/lang/Integer;

    .line 66
    .line 67
    if-nez v2, :cond_3

    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    :goto_3
    add-int/2addr v0, v3

    .line 75
    mul-int/2addr v0, v1

    .line 76
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->priority:Lorg/swiftapps/swiftbackup/notice/NoticeItem$a;

    .line 77
    .line 78
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    add-int/2addr v2, v0

    .line 83
    mul-int/2addr v2, v1

    .line 84
    iget-boolean v0, p0, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->active:Z

    .line 85
    .line 86
    invoke-static {v2, v1, v0}, Lfz5;->h(IIZ)I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    iget-boolean p0, p0, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->testing:Z

    .line 91
    .line 92
    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    .line 93
    .line 94
    .line 95
    move-result p0

    .line 96
    add-int/2addr p0, v0

    .line 97
    return p0
.end method

.method public final isLinkOnly()Z
    .locals 1
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Ljava/net/URL;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->message:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    return p0

    .line 10
    :catch_0
    const/4 p0, 0x0

    .line 11
    return p0
.end method

.method public final shouldShowToUser(Z)Z
    .locals 2
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_1

    .line 3
    .line 4
    sget-object p1, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->Companion:Lmo5;

    .line 5
    .line 6
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->id:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    const-string p1, "notice_seen_id_"

    .line 15
    .line 16
    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    :try_start_0
    sget-object v1, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const-string p1, "prefs"

    .line 30
    .line 31
    invoke-static {p1}, Lpe4;->F(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/4 p1, 0x0

    .line 35
    throw p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :catch_0
    move p1, v0

    .line 37
    :goto_0
    if-eqz p1, :cond_1

    .line 38
    .line 39
    return v0

    .line 40
    :cond_1
    iget-boolean p1, p0, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->testing:Z

    .line 41
    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    return v0

    .line 45
    :cond_2
    iget-boolean p1, p0, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->active:Z

    .line 46
    .line 47
    if-eqz p1, :cond_3

    .line 48
    .line 49
    iget-object p1, p0, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->message:Ljava/lang/String;

    .line 50
    .line 51
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-lez p1, :cond_3

    .line 56
    .line 57
    iget-object p1, p0, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->message:Ljava/lang/String;

    .line 58
    .line 59
    invoke-static {p1}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-nez p1, :cond_3

    .line 64
    .line 65
    invoke-direct {p0}, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->matchesSdk()Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-eqz p1, :cond_3

    .line 70
    .line 71
    invoke-direct {p0}, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->matchesAppVersion()Z

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    if-eqz p0, :cond_3

    .line 76
    .line 77
    const/4 v0, 0x1

    .line 78
    :cond_3
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 13

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->id:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->title:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->_subtitle:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->message:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->minAppVersion:Ljava/lang/Integer;

    .line 10
    .line 11
    iget-object v5, p0, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->maxAppVersion:Ljava/lang/Integer;

    .line 12
    .line 13
    iget-object v6, p0, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->minSdkVersion:Ljava/lang/Integer;

    .line 14
    .line 15
    iget-object v7, p0, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->maxSdkVersion:Ljava/lang/Integer;

    .line 16
    .line 17
    iget-object v8, p0, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->priority:Lorg/swiftapps/swiftbackup/notice/NoticeItem$a;

    .line 18
    .line 19
    iget-boolean v9, p0, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->active:Z

    .line 20
    .line 21
    iget-boolean p0, p0, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->testing:Z

    .line 22
    .line 23
    const-string v10, ", title="

    .line 24
    .line 25
    const-string v11, ", _subtitle="

    .line 26
    .line 27
    const-string v12, "NoticeItem(id="

    .line 28
    .line 29
    invoke-static {v12, v0, v10, v1, v11}, Lu48;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v1, ", message="

    .line 34
    .line 35
    const-string v10, ", minAppVersion="

    .line 36
    .line 37
    invoke-static {v0, v2, v1, v3, v10}, Lxs1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", maxAppVersion="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v1, ", minSdkVersion="

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v1, ", maxSdkVersion="

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v1, ", priority="

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v1, ", active="

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v1, ", testing="

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v1, ")"

    .line 89
    .line 90
    invoke-static {v0, p0, v1}, Ldj7;->p(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    return-object p0
.end method
