.class public final Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$NewBackupCondition;,
        Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation;,
        Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Type;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lorg/swiftapps/swiftbackup/settings/b;

.field private static final DEFAULT_NUM_OF_MULTIPLE_BACKUPS:I = 0x2

.field public static final MAX_NUM_OF_MULTIPLE_BACKUPS:I = 0xa

.field public static final MIN_NUM_OF_MULTIPLE_BACKUPS:I = 0x2

.field private static final PREF_KEY_STRATEGY:Ljava/lang/String; = "apps_multiple_backups_strategy"

.field private static final defaultConditionalBackupsStrategy$delegate:Los4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Los4;"
        }
    .end annotation
.end field

.field private static final defaultDatedBackupsStrategy$delegate:Los4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Los4;"
        }
    .end annotation
.end field

.field private static final defaultStrategy$delegate:Los4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Los4;"
        }
    .end annotation
.end field

.field private static final legacyArchiveStrategy$delegate:Los4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Los4;"
        }
    .end annotation
.end field

.field private static final singleBackupStrategy$delegate:Los4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Los4;"
        }
    .end annotation
.end field


# instance fields
.field private final conditionInt:Ljava/lang/Integer;

.field private final maxNumOfBackups:Ljava/lang/Integer;

.field private final typeInt:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/swiftapps/swiftbackup/settings/b;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;->Companion:Lorg/swiftapps/swiftbackup/settings/b;

    .line 7
    .line 8
    new-instance v0, Lm8;

    .line 9
    .line 10
    const/16 v1, 0x9

    .line 11
    .line 12
    invoke-direct {v0, v1}, Lm8;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 16
    .line 17
    new-instance v0, Lzj;

    .line 18
    .line 19
    const/16 v1, 0xc

    .line 20
    .line 21
    invoke-direct {v0, v1}, Lzj;-><init>(I)V

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
    sput-object v1, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;->defaultStrategy$delegate:Los4;

    .line 30
    .line 31
    new-instance v0, Lb7;

    .line 32
    .line 33
    const/16 v1, 0x17

    .line 34
    .line 35
    invoke-direct {v0, v1}, Lb7;-><init>(I)V

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
    sput-object v1, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;->singleBackupStrategy$delegate:Los4;

    .line 44
    .line 45
    new-instance v0, Lov;

    .line 46
    .line 47
    const/16 v1, 0xb

    .line 48
    .line 49
    invoke-direct {v0, v1}, Lov;-><init>(I)V

    .line 50
    .line 51
    .line 52
    new-instance v1, Lgv7;

    .line 53
    .line 54
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 55
    .line 56
    .line 57
    sput-object v1, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;->defaultDatedBackupsStrategy$delegate:Los4;

    .line 58
    .line 59
    new-instance v0, Lqm;

    .line 60
    .line 61
    const/16 v1, 0xf

    .line 62
    .line 63
    invoke-direct {v0, v1}, Lqm;-><init>(I)V

    .line 64
    .line 65
    .line 66
    new-instance v1, Lgv7;

    .line 67
    .line 68
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 69
    .line 70
    .line 71
    sput-object v1, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;->defaultConditionalBackupsStrategy$delegate:Los4;

    .line 72
    .line 73
    new-instance v0, Lpu;

    .line 74
    .line 75
    const/16 v1, 0xa

    .line 76
    .line 77
    invoke-direct {v0, v1}, Lpu;-><init>(I)V

    .line 78
    .line 79
    .line 80
    new-instance v1, Lgv7;

    .line 81
    .line 82
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 83
    .line 84
    .line 85
    sput-object v1, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;->legacyArchiveStrategy$delegate:Los4;

    .line 86
    .line 87
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 25
    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;->typeInt:Ljava/lang/Integer;

    .line 23
    iput-object p2, p0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;->maxNumOfBackups:Ljava/lang/Integer;

    .line 24
    iput-object p3, p0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;->conditionInt:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    .line 1
    and-int/lit8 p5, p4, 0x1

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p5, :cond_0

    .line 5
    .line 6
    move-object p1, v0

    .line 7
    :cond_0
    and-int/lit8 p5, p4, 0x2

    .line 8
    .line 9
    if-eqz p5, :cond_1

    .line 10
    .line 11
    move-object p2, v0

    .line 12
    :cond_1
    and-int/lit8 p4, p4, 0x4

    .line 13
    .line 14
    if-eqz p4, :cond_2

    .line 15
    .line 16
    move-object p3, v0

    .line 17
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public static final synthetic access$getDefaultConditionalBackupsStrategy$delegate$cp()Los4;
    .locals 1

    .line 1
    sget-object v0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;->defaultConditionalBackupsStrategy$delegate:Los4;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getDefaultDatedBackupsStrategy$delegate$cp()Los4;
    .locals 1

    .line 1
    sget-object v0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;->defaultDatedBackupsStrategy$delegate:Los4;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getDefaultStrategy$delegate$cp()Los4;
    .locals 1

    .line 1
    sget-object v0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;->defaultStrategy$delegate:Los4;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getLegacyArchiveStrategy$delegate$cp()Los4;
    .locals 1

    .line 1
    sget-object v0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;->legacyArchiveStrategy$delegate:Los4;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getSingleBackupStrategy$delegate$cp()Los4;
    .locals 1

    .line 1
    sget-object v0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;->singleBackupStrategy$delegate:Los4;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic c()Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;
    .locals 1

    .line 1
    invoke-static {}, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;->defaultConditionalBackupsStrategy_delegate$lambda$0()Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic copy$default(Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;
    .locals 0

    .line 1
    and-int/lit8 p5, p4, 0x1

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;->typeInt:Ljava/lang/Integer;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p5, p4, 0x2

    .line 8
    .line 9
    if-eqz p5, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;->maxNumOfBackups:Ljava/lang/Integer;

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p4, p4, 0x4

    .line 14
    .line 15
    if-eqz p4, :cond_2

    .line 16
    .line 17
    iget-object p3, p0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;->conditionInt:Ljava/lang/Integer;

    .line 18
    .line 19
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;->copy(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method private static final defaultConditionalBackupsStrategy_delegate$lambda$0()Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;
    .locals 1

    .line 1
    sget-object v0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;->Companion:Lorg/swiftapps/swiftbackup/settings/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lorg/swiftapps/swiftbackup/settings/b;->b()Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method private static final defaultDatedBackupsStrategy_delegate$lambda$0()Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;
    .locals 6

    .line 1
    new-instance v0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 2
    .line 3
    sget-object v1, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Type;->DatedBackups:Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Type;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x2

    .line 14
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const/4 v4, 0x4

    .line 19
    const/4 v5, 0x0

    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-direct/range {v0 .. v5}, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 22
    .line 23
    .line 24
    return-object v0
.end method

.method private static final defaultStrategy_delegate$lambda$0()Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;
    .locals 1

    .line 1
    sget-object v0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;->Companion:Lorg/swiftapps/swiftbackup/settings/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;->access$getSingleBackupStrategy$delegate$cp()Los4;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Los4;->getValue()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 15
    .line 16
    return-object v0
.end method

.method public static synthetic e()Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;
    .locals 1

    .line 1
    invoke-static {}, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;->singleBackupStrategy_delegate$lambda$0()Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic g()Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;
    .locals 1

    .line 1
    invoke-static {}, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;->defaultStrategy_delegate$lambda$0()Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic l()Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;
    .locals 1

    .line 1
    invoke-static {}, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;->legacyArchiveStrategy_delegate$lambda$0()Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private static final legacyArchiveStrategy_delegate$lambda$0()Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;
    .locals 4

    .line 1
    new-instance v0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 2
    .line 3
    sget-object v1, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Type;->ConditionalBackup:Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Type;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x2

    .line 14
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    sget-object v3, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$NewBackupCondition;->ApkChanges:Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$NewBackupCondition;

    .line 19
    .line 20
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-direct {v0, v1, v2, v3}, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 29
    .line 30
    .line 31
    return-object v0
.end method

.method public static synthetic m()Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;
    .locals 1

    .line 1
    invoke-static {}, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;->defaultDatedBackupsStrategy_delegate$lambda$0()Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private static final singleBackupStrategy_delegate$lambda$0()Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;
    .locals 6

    .line 1
    new-instance v0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 2
    .line 3
    sget-object v1, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Type;->SingleBackup:Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Type;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v4, 0x6

    .line 14
    const/4 v5, 0x0

    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-direct/range {v0 .. v5}, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;->typeInt:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component2()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;->maxNumOfBackups:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component3()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;->conditionInt:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final copy(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;
    .locals 0

    .line 1
    new-instance p0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3}, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 4
    .line 5
    .line 6
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
    instance-of v1, p1, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

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
    check-cast p1, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 12
    .line 13
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;->typeInt:Ljava/lang/Integer;

    .line 14
    .line 15
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;->typeInt:Ljava/lang/Integer;

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
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;->maxNumOfBackups:Ljava/lang/Integer;

    .line 25
    .line 26
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;->maxNumOfBackups:Ljava/lang/Integer;

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
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;->conditionInt:Ljava/lang/Integer;

    .line 36
    .line 37
    iget-object p1, p1, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;->conditionInt:Ljava/lang/Integer;

    .line 38
    .line 39
    invoke-static {p0, p1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    if-nez p0, :cond_4

    .line 44
    .line 45
    return v2

    .line 46
    :cond_4
    return v0
.end method

.method public final getConditionInt()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;->conditionInt:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getMaxNumOfBackups()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;->maxNumOfBackups:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getTypeInt()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;->typeInt:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;->typeInt:Ljava/lang/Integer;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    move v0, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;->maxNumOfBackups:Ljava/lang/Integer;

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    move v2, v1

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    :goto_1
    add-int/2addr v0, v2

    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;->conditionInt:Ljava/lang/Integer;

    .line 28
    .line 29
    if-nez p0, :cond_2

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    :goto_2
    add-int/2addr v0, v1

    .line 37
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;->typeInt:Ljava/lang/Integer;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;->maxNumOfBackups:Ljava/lang/Integer;

    .line 4
    .line 5
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;->conditionInt:Ljava/lang/Integer;

    .line 6
    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v3, "MultipleBackupStrategy(typeInt="

    .line 10
    .line 11
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v0, ", maxNumOfBackups="

    .line 18
    .line 19
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v0, ", conditionInt="

    .line 26
    .line 27
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string p0, ")"

    .line 34
    .line 35
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;->typeInt:Ljava/lang/Integer;

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-static {p1, v0, p2}, Lfz5;->o(Landroid/os/Parcel;ILjava/lang/Integer;)V

    .line 15
    .line 16
    .line 17
    :goto_0
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;->maxNumOfBackups:Ljava/lang/Integer;

    .line 18
    .line 19
    if-nez p2, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    invoke-static {p1, v0, p2}, Lfz5;->o(Landroid/os/Parcel;ILjava/lang/Integer;)V

    .line 26
    .line 27
    .line 28
    :goto_1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;->conditionInt:Ljava/lang/Integer;

    .line 29
    .line 30
    if-nez p0, :cond_2

    .line 31
    .line 32
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_2
    invoke-static {p1, v0, p0}, Lfz5;->o(Landroid/os/Parcel;ILjava/lang/Integer;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method
