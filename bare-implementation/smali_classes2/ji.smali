.class public final Lji;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljl0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lji$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lji;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lji$a;

.field public static final PARCEL_KEY:Ljava/lang/String; = "APP_PARCEL"

.field private static final logTag:Ljava/lang/String; = "App"


# instance fields
.field private _installerPackage:Ljava/lang/String;

.field private appId:Ljava/lang/String;

.field private cloudBackups:Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;

.field private dataDir:Ljava/lang/String;

.field private dateBackup:Ljava/lang/Long;

.field private dateBackupUpdated:Ljava/lang/Long;

.field private dateInstalled:Ljava/lang/Long;

.field private dateUpdated:Ljava/lang/Long;

.field private deDataDir:Ljava/lang/String;

.field private enabled:Z

.field private hasRestorableLocalBackup:Ljava/lang/Boolean;

.field private final installerPackage$delegate:Los4;

.field private isBundled:Z

.field private isCloudApp:Z

.field private isFavorite:Z

.field private isInstalled:Z

.field private isLaunchable:Z

.field private labels:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;",
            ">;"
        }
    .end annotation
.end field

.field private localBackups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lgm;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private randomIdToForceNotifyChange:Ljava/lang/String;

.field private sharedLibsInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lyc7;",
            ">;"
        }
    .end annotation
.end field

.field private sizeInfo:Lqx;

.field private sourceDir:Ljava/lang/String;

.field private splitSourceDirs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private versionCode:Ljava/lang/Long;

.field private versionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lji$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lji$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lji;->Companion:Lji$a;

    .line 8
    .line 9
    new-instance v0, Lji$b;

    .line 10
    .line 11
    invoke-direct {v0}, Lji$b;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lji;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;ZZZZLqx;Ljava/lang/String;Ljava/util/List;ZLorg/swiftapps/swiftbackup/model/app/AppCloudBackups;ZLjava/util/Set;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lyc7;",
            ">;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            "ZZZZ",
            "Lqx;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lgm;",
            ">;Z",
            "Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;",
            "Z",
            "Ljava/util/Set<",
            "Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lji;->packageName:Ljava/lang/String;

    .line 8
    iput-object p2, p0, Lji;->name:Ljava/lang/String;

    .line 9
    iput-object p3, p0, Lji;->appId:Ljava/lang/String;

    .line 10
    iput-object p4, p0, Lji;->versionName:Ljava/lang/String;

    .line 11
    iput-object p5, p0, Lji;->versionCode:Ljava/lang/Long;

    .line 12
    iput-object p6, p0, Lji;->sourceDir:Ljava/lang/String;

    .line 13
    iput-object p7, p0, Lji;->dataDir:Ljava/lang/String;

    .line 14
    iput-object p8, p0, Lji;->deDataDir:Ljava/lang/String;

    .line 15
    iput-object p9, p0, Lji;->splitSourceDirs:Ljava/util/List;

    .line 16
    iput-object p10, p0, Lji;->sharedLibsInfos:Ljava/util/List;

    .line 17
    iput-object p11, p0, Lji;->dateInstalled:Ljava/lang/Long;

    .line 18
    iput-object p12, p0, Lji;->dateUpdated:Ljava/lang/Long;

    .line 19
    iput-object p13, p0, Lji;->dateBackup:Ljava/lang/Long;

    .line 20
    iput-object p14, p0, Lji;->dateBackupUpdated:Ljava/lang/Long;

    .line 21
    iput-object p15, p0, Lji;->hasRestorableLocalBackup:Ljava/lang/Boolean;

    move/from16 p1, p16

    .line 22
    iput-boolean p1, p0, Lji;->isLaunchable:Z

    move/from16 p1, p17

    .line 23
    iput-boolean p1, p0, Lji;->isBundled:Z

    move/from16 p1, p18

    .line 24
    iput-boolean p1, p0, Lji;->isInstalled:Z

    move/from16 p1, p19

    .line 25
    iput-boolean p1, p0, Lji;->enabled:Z

    move-object/from16 p1, p20

    .line 26
    iput-object p1, p0, Lji;->sizeInfo:Lqx;

    move-object/from16 p1, p21

    .line 27
    iput-object p1, p0, Lji;->_installerPackage:Ljava/lang/String;

    move-object/from16 p1, p22

    .line 28
    iput-object p1, p0, Lji;->localBackups:Ljava/util/List;

    move/from16 p1, p23

    .line 29
    iput-boolean p1, p0, Lji;->isCloudApp:Z

    move-object/from16 p1, p24

    .line 30
    iput-object p1, p0, Lji;->cloudBackups:Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;

    move/from16 p1, p25

    .line 31
    iput-boolean p1, p0, Lji;->isFavorite:Z

    move-object/from16 p1, p26

    .line 32
    iput-object p1, p0, Lji;->labels:Ljava/util/Set;

    move-object/from16 p1, p27

    .line 33
    iput-object p1, p0, Lji;->randomIdToForceNotifyChange:Ljava/lang/String;

    .line 34
    new-instance p1, Lii;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lii;-><init>(Lji;I)V

    .line 35
    new-instance p2, Lgv7;

    invoke-direct {p2, p1}, Lgv7;-><init>(Lbt3;)V

    .line 36
    iput-object p2, p0, Lji;->installerPackage$delegate:Los4;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;ZZZZLqx;Ljava/lang/String;Ljava/util/List;ZLorg/swiftapps/swiftbackup/model/app/AppCloudBackups;ZLjava/util/Set;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 30

    move/from16 v0, p28

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_0

    .line 1
    sget-object v1, Lg00;->a:Lg00;

    invoke-static/range {p1 .. p1}, Lg00;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object/from16 v5, p3

    :goto_0
    and-int/lit8 v1, v0, 0x8

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object v6, v2

    goto :goto_1

    :cond_1
    move-object/from16 v6, p4

    :goto_1
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_2

    move-object v7, v2

    goto :goto_2

    :cond_2
    move-object/from16 v7, p5

    :goto_2
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_3

    move-object v8, v2

    goto :goto_3

    :cond_3
    move-object/from16 v8, p6

    :goto_3
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_4

    move-object v9, v2

    goto :goto_4

    :cond_4
    move-object/from16 v9, p7

    :goto_4
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_5

    move-object v10, v2

    goto :goto_5

    :cond_5
    move-object/from16 v10, p8

    :goto_5
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_6

    move-object v11, v2

    goto :goto_6

    :cond_6
    move-object/from16 v11, p9

    :goto_6
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_7

    move-object v12, v2

    goto :goto_7

    :cond_7
    move-object/from16 v12, p10

    :goto_7
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_8

    move-object v13, v2

    goto :goto_8

    :cond_8
    move-object/from16 v13, p11

    :goto_8
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_9

    move-object v14, v2

    goto :goto_9

    :cond_9
    move-object/from16 v14, p12

    :goto_9
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_a

    move-object v15, v2

    goto :goto_a

    :cond_a
    move-object/from16 v15, p13

    :goto_a
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_b

    move-object/from16 v16, v2

    goto :goto_b

    :cond_b
    move-object/from16 v16, p14

    :goto_b
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_c

    move-object/from16 v17, v2

    goto :goto_c

    :cond_c
    move-object/from16 v17, p15

    :goto_c
    const v1, 0x8000

    and-int/2addr v1, v0

    const/4 v3, 0x0

    if-eqz v1, :cond_d

    move/from16 v18, v3

    goto :goto_d

    :cond_d
    move/from16 v18, p16

    :goto_d
    const/high16 v1, 0x10000

    and-int/2addr v1, v0

    if-eqz v1, :cond_e

    move/from16 v19, v3

    goto :goto_e

    :cond_e
    move/from16 v19, p17

    :goto_e
    const/high16 v1, 0x20000

    and-int/2addr v1, v0

    if-eqz v1, :cond_f

    move/from16 v20, v3

    goto :goto_f

    :cond_f
    move/from16 v20, p18

    :goto_f
    const/high16 v1, 0x40000

    and-int/2addr v1, v0

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    move/from16 v21, v1

    goto :goto_10

    :cond_10
    move/from16 v21, p19

    :goto_10
    const/high16 v1, 0x80000

    and-int/2addr v1, v0

    if-eqz v1, :cond_11

    move-object/from16 v22, v2

    goto :goto_11

    :cond_11
    move-object/from16 v22, p20

    :goto_11
    const/high16 v1, 0x100000

    and-int/2addr v1, v0

    if-eqz v1, :cond_12

    move-object/from16 v23, v2

    goto :goto_12

    :cond_12
    move-object/from16 v23, p21

    :goto_12
    const/high16 v1, 0x200000

    and-int/2addr v1, v0

    if-eqz v1, :cond_13

    move-object/from16 v24, v2

    goto :goto_13

    :cond_13
    move-object/from16 v24, p22

    :goto_13
    const/high16 v1, 0x400000

    and-int/2addr v1, v0

    if-eqz v1, :cond_14

    move/from16 v25, v3

    goto :goto_14

    :cond_14
    move/from16 v25, p23

    :goto_14
    const/high16 v1, 0x800000

    and-int/2addr v1, v0

    if-eqz v1, :cond_15

    move-object/from16 v26, v2

    goto :goto_15

    :cond_15
    move-object/from16 v26, p24

    :goto_15
    const/high16 v1, 0x1000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_16

    .line 2
    sget-object v1, Lv53;->a:Lv53;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    sget-object v1, Lv53;->c:Ljava/util/LinkedHashMap;

    move-object/from16 v3, p1

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    move/from16 v27, v1

    goto :goto_16

    :cond_16
    move-object/from16 v3, p1

    move/from16 v27, p25

    :goto_16
    const/high16 v1, 0x2000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_17

    .line 4
    sget-object v1, Llr4;->a:Llr4;

    invoke-static {v5}, Llr4;->d(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    move-object/from16 v28, v1

    goto :goto_17

    :cond_17
    move-object/from16 v28, p26

    :goto_17
    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_18

    move-object/from16 v29, v2

    move-object/from16 v4, p2

    move-object/from16 v2, p0

    goto :goto_18

    :cond_18
    move-object/from16 v29, p27

    move-object/from16 v2, p0

    move-object/from16 v4, p2

    .line 5
    :goto_18
    invoke-direct/range {v2 .. v29}, Lji;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;ZZZZLqx;Ljava/lang/String;Ljava/util/List;ZLorg/swiftapps/swiftbackup/model/app/AppCloudBackups;ZLjava/util/Set;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$refreshExtras(Lji;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lji;->refreshExtras()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Ljava/io/File;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    invoke-static {p0}, Lji;->getSplitsUsingWorkaround$lambda$2(Ljava/io/File;)Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic copy$default(Lji;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;ZZZZLqx;Ljava/lang/String;Ljava/util/List;ZLorg/swiftapps/swiftbackup/model/app/AppCloudBackups;ZLjava/util/Set;Ljava/lang/String;ILjava/lang/Object;)Lji;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p28

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    .line 1
    iget-object v2, v0, Lji;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lji;->name:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lji;->appId:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lji;->versionName:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lji;->versionCode:Ljava/lang/Long;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lji;->sourceDir:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lji;->dataDir:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lji;->deDataDir:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lji;->splitSourceDirs:Ljava/util/List;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-object v11, v0, Lji;->sharedLibsInfos:Ljava/util/List;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-object v12, v0, Lji;->dateInstalled:Ljava/lang/Long;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget-object v13, v0, Lji;->dateUpdated:Ljava/lang/Long;

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget-object v14, v0, Lji;->dateBackup:Ljava/lang/Long;

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-object v15, v0, Lji;->dateBackupUpdated:Ljava/lang/Long;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    move-object/from16 p1, v2

    and-int/lit16 v2, v1, 0x4000

    if-eqz v2, :cond_e

    iget-object v2, v0, Lji;->hasRestorableLocalBackup:Ljava/lang/Boolean;

    goto :goto_e

    :cond_e
    move-object/from16 v2, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    if-eqz v16, :cond_f

    iget-boolean v1, v0, Lji;->isLaunchable:Z

    goto :goto_f

    :cond_f
    move/from16 v1, p16

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, p28, v16

    move/from16 p2, v1

    if-eqz v16, :cond_10

    iget-boolean v1, v0, Lji;->isBundled:Z

    goto :goto_10

    :cond_10
    move/from16 v1, p17

    :goto_10
    const/high16 v16, 0x20000

    and-int v16, p28, v16

    move/from16 p3, v1

    if-eqz v16, :cond_11

    iget-boolean v1, v0, Lji;->isInstalled:Z

    goto :goto_11

    :cond_11
    move/from16 v1, p18

    :goto_11
    const/high16 v16, 0x40000

    and-int v16, p28, v16

    move/from16 p4, v1

    if-eqz v16, :cond_12

    iget-boolean v1, v0, Lji;->enabled:Z

    goto :goto_12

    :cond_12
    move/from16 v1, p19

    :goto_12
    const/high16 v16, 0x80000

    and-int v16, p28, v16

    move/from16 p5, v1

    if-eqz v16, :cond_13

    iget-object v1, v0, Lji;->sizeInfo:Lqx;

    goto :goto_13

    :cond_13
    move-object/from16 v1, p20

    :goto_13
    const/high16 v16, 0x100000

    and-int v16, p28, v16

    move-object/from16 p6, v1

    if-eqz v16, :cond_14

    iget-object v1, v0, Lji;->_installerPackage:Ljava/lang/String;

    goto :goto_14

    :cond_14
    move-object/from16 v1, p21

    :goto_14
    const/high16 v16, 0x200000

    and-int v16, p28, v16

    move-object/from16 p7, v1

    if-eqz v16, :cond_15

    iget-object v1, v0, Lji;->localBackups:Ljava/util/List;

    goto :goto_15

    :cond_15
    move-object/from16 v1, p22

    :goto_15
    const/high16 v16, 0x400000

    and-int v16, p28, v16

    move-object/from16 p8, v1

    if-eqz v16, :cond_16

    iget-boolean v1, v0, Lji;->isCloudApp:Z

    goto :goto_16

    :cond_16
    move/from16 v1, p23

    :goto_16
    const/high16 v16, 0x800000

    and-int v16, p28, v16

    move/from16 p9, v1

    if-eqz v16, :cond_17

    iget-object v1, v0, Lji;->cloudBackups:Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;

    goto :goto_17

    :cond_17
    move-object/from16 v1, p24

    :goto_17
    const/high16 v16, 0x1000000

    and-int v16, p28, v16

    move-object/from16 p10, v1

    if-eqz v16, :cond_18

    iget-boolean v1, v0, Lji;->isFavorite:Z

    goto :goto_18

    :cond_18
    move/from16 v1, p25

    :goto_18
    const/high16 v16, 0x2000000

    and-int v16, p28, v16

    move/from16 p11, v1

    if-eqz v16, :cond_19

    iget-object v1, v0, Lji;->labels:Ljava/util/Set;

    goto :goto_19

    :cond_19
    move-object/from16 v1, p26

    :goto_19
    const/high16 v16, 0x4000000

    and-int v16, p28, v16

    if-eqz v16, :cond_1a

    move-object/from16 p12, v1

    iget-object v1, v0, Lji;->randomIdToForceNotifyChange:Ljava/lang/String;

    move-object/from16 p27, p12

    move-object/from16 p28, v1

    :goto_1a
    move/from16 p17, p2

    move/from16 p18, p3

    move/from16 p19, p4

    move/from16 p20, p5

    move-object/from16 p21, p6

    move-object/from16 p22, p7

    move-object/from16 p23, p8

    move/from16 p24, p9

    move-object/from16 p25, p10

    move/from16 p26, p11

    move-object/from16 p16, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move-object/from16 p10, v10

    move-object/from16 p11, v11

    move-object/from16 p12, v12

    move-object/from16 p13, v13

    move-object/from16 p14, v14

    move-object/from16 p15, v15

    move-object/from16 p2, p1

    move-object/from16 p1, v0

    goto :goto_1b

    :cond_1a
    move-object/from16 p28, p27

    move-object/from16 p27, v1

    goto :goto_1a

    :goto_1b
    invoke-virtual/range {p1 .. p28}, Lji;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;ZZZZLqx;Ljava/lang/String;Ljava/util/List;ZLorg/swiftapps/swiftbackup/model/app/AppCloudBackups;ZLjava/util/Set;Ljava/lang/String;)Lji;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic e(Lji;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lji;->installerPackage_delegate$lambda$0(Lji;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic getDateBackedUpOrUpdated$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getInstallerPackage$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method private static final getSplitsUsingWorkaround$lambda$2(Ljava/io/File;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method private static final installerPackage_delegate$lambda$0(Lji;)Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lji;->_installerPackage:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lg00;->a:Lg00;

    .line 6
    .line 7
    iget-object v0, p0, Lji;->packageName:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    new-instance v1, Lbk;

    .line 13
    .line 14
    const/4 v2, 0x5

    .line 15
    invoke-direct {v1, v0, v2}, Lbk;-><init>(Ljava/lang/Object;I)V

    .line 16
    .line 17
    .line 18
    const/16 v0, 0x8

    .line 19
    .line 20
    const-string v2, "AppUtil"

    .line 21
    .line 22
    const-string v3, "getInstallerPackage"

    .line 23
    .line 24
    const/4 v4, 0x1

    .line 25
    invoke-static {v2, v3, v4, v1, v0}, Lio4;->j(Ljava/lang/String;Ljava/lang/String;ZLbt3;I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Ljava/lang/String;

    .line 30
    .line 31
    iput-object v0, p0, Lji;->_installerPackage:Ljava/lang/String;

    .line 32
    .line 33
    :cond_0
    return-object v0
.end method

.method private final refreshExtras()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lji;->refreshBackupDetails()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lv53;->a:Lv53;

    .line 5
    .line 6
    iget-object v0, p0, Lji;->packageName:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    sget-object v1, Lv53;->c:Ljava/util/LinkedHashMap;

    .line 12
    .line 13
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iput-boolean v0, p0, Lji;->isFavorite:Z

    .line 18
    .line 19
    sget-object v0, Llr4;->a:Llr4;

    .line 20
    .line 21
    iget-object v0, p0, Lji;->appId:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v0}, Llr4;->d(Ljava/lang/String;)Ljava/util/Set;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lji;->labels:Ljava/util/Set;

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final asString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lji;->name:Ljava/lang/String;

    .line 2
    .line 3
    iget-object p0, p0, Lji;->packageName:Ljava/lang/String;

    .line 4
    .line 5
    const-string v1, " ("

    .line 6
    .line 7
    const-string v2, ")"

    .line 8
    .line 9
    invoke-static {v0, v1, p0, v2}, Lu48;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public final calculateSize(ZZZZ)V
    .locals 7

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Lji;->checkInstalled()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    sget-object v1, Lqx;->Companion:Lqx$a;

    .line 22
    .line 23
    move-object v2, p0

    .line 24
    move v3, p1

    .line 25
    move v4, p2

    .line 26
    move v5, p3

    .line 27
    move v6, p4

    .line 28
    invoke-virtual/range {v1 .. v6}, Lqx$a;->create(Lji;ZZZZ)Lqx;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    iput-object p0, v2, Lji;->sizeInfo:Lqx;

    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    move-object v2, p0

    .line 36
    invoke-virtual {v2}, Lji;->refreshBackupDetails()V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    invoke-static {}, Ld6;->o()V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final checkInstalled()Z
    .locals 3

    .line 1
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 2
    .line 3
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lji;->packageName:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    :catch_0
    :goto_0
    iput-boolean v2, p0, Lji;->isInstalled:Z

    .line 22
    .line 23
    return v2
.end method

.method public final component1()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lji;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component10()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lyc7;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lji;->sharedLibsInfos:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component11()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lji;->dateInstalled:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component12()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lji;->dateUpdated:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component13()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lji;->dateBackup:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component14()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lji;->dateBackupUpdated:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component15()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lji;->hasRestorableLocalBackup:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component16()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lji;->isLaunchable:Z

    .line 2
    .line 3
    return p0
.end method

.method public final component17()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lji;->isBundled:Z

    .line 2
    .line 3
    return p0
.end method

.method public final component18()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lji;->isInstalled:Z

    .line 2
    .line 3
    return p0
.end method

.method public final component19()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lji;->enabled:Z

    .line 2
    .line 3
    return p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lji;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component20()Lqx;
    .locals 0

    .line 1
    iget-object p0, p0, Lji;->sizeInfo:Lqx;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component21()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lji;->_installerPackage:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component22()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lgm;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lji;->localBackups:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component23()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lji;->isCloudApp:Z

    .line 2
    .line 3
    return p0
.end method

.method public final component24()Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;
    .locals 0

    .line 1
    iget-object p0, p0, Lji;->cloudBackups:Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component25()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lji;->isFavorite:Z

    .line 2
    .line 3
    return p0
.end method

.method public final component26()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lji;->labels:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component27()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lji;->randomIdToForceNotifyChange:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lji;->appId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component4()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lji;->versionName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component5()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lji;->versionCode:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component6()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lji;->sourceDir:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component7()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lji;->dataDir:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component8()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lji;->deDataDir:Ljava/lang/String;

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
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lji;->splitSourceDirs:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;ZZZZLqx;Ljava/lang/String;Ljava/util/List;ZLorg/swiftapps/swiftbackup/model/app/AppCloudBackups;ZLjava/util/Set;Ljava/lang/String;)Lji;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lyc7;",
            ">;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            "ZZZZ",
            "Lqx;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lgm;",
            ">;Z",
            "Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;",
            "Z",
            "Ljava/util/Set<",
            "Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lji;"
        }
    .end annotation

    .line 1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lji;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    move/from16 v18, p18

    move/from16 v19, p19

    move-object/from16 v20, p20

    move-object/from16 v21, p21

    move-object/from16 v22, p22

    move/from16 v23, p23

    move-object/from16 v24, p24

    move/from16 v25, p25

    move-object/from16 v26, p26

    move-object/from16 v27, p27

    invoke-direct/range {v0 .. v27}, Lji;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;ZZZZLqx;Ljava/lang/String;Ljava/util/List;ZLorg/swiftapps/swiftbackup/model/app/AppCloudBackups;ZLjava/util/Set;Ljava/lang/String;)V

    return-object v0
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
    instance-of v1, p1, Lji;

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
    check-cast p1, Lji;

    .line 12
    .line 13
    iget-object v1, p0, Lji;->packageName:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lji;->packageName:Ljava/lang/String;

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
    iget-object v1, p0, Lji;->name:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v3, p1, Lji;->name:Ljava/lang/String;

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
    iget-object v1, p0, Lji;->appId:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v3, p1, Lji;->appId:Ljava/lang/String;

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
    iget-object v1, p0, Lji;->versionName:Ljava/lang/String;

    .line 47
    .line 48
    iget-object v3, p1, Lji;->versionName:Ljava/lang/String;

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
    iget-object v1, p0, Lji;->versionCode:Ljava/lang/Long;

    .line 58
    .line 59
    iget-object v3, p1, Lji;->versionCode:Ljava/lang/Long;

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
    iget-object v1, p0, Lji;->sourceDir:Ljava/lang/String;

    .line 69
    .line 70
    iget-object v3, p1, Lji;->sourceDir:Ljava/lang/String;

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
    iget-object v1, p0, Lji;->dataDir:Ljava/lang/String;

    .line 80
    .line 81
    iget-object v3, p1, Lji;->dataDir:Ljava/lang/String;

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
    iget-object v1, p0, Lji;->deDataDir:Ljava/lang/String;

    .line 91
    .line 92
    iget-object v3, p1, Lji;->deDataDir:Ljava/lang/String;

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
    iget-object v1, p0, Lji;->splitSourceDirs:Ljava/util/List;

    .line 102
    .line 103
    iget-object v3, p1, Lji;->splitSourceDirs:Ljava/util/List;

    .line 104
    .line 105
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-nez v1, :cond_a

    .line 110
    .line 111
    return v2

    .line 112
    :cond_a
    iget-object v1, p0, Lji;->sharedLibsInfos:Ljava/util/List;

    .line 113
    .line 114
    iget-object v3, p1, Lji;->sharedLibsInfos:Ljava/util/List;

    .line 115
    .line 116
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-nez v1, :cond_b

    .line 121
    .line 122
    return v2

    .line 123
    :cond_b
    iget-object v1, p0, Lji;->dateInstalled:Ljava/lang/Long;

    .line 124
    .line 125
    iget-object v3, p1, Lji;->dateInstalled:Ljava/lang/Long;

    .line 126
    .line 127
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    if-nez v1, :cond_c

    .line 132
    .line 133
    return v2

    .line 134
    :cond_c
    iget-object v1, p0, Lji;->dateUpdated:Ljava/lang/Long;

    .line 135
    .line 136
    iget-object v3, p1, Lji;->dateUpdated:Ljava/lang/Long;

    .line 137
    .line 138
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    if-nez v1, :cond_d

    .line 143
    .line 144
    return v2

    .line 145
    :cond_d
    iget-object v1, p0, Lji;->dateBackup:Ljava/lang/Long;

    .line 146
    .line 147
    iget-object v3, p1, Lji;->dateBackup:Ljava/lang/Long;

    .line 148
    .line 149
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    if-nez v1, :cond_e

    .line 154
    .line 155
    return v2

    .line 156
    :cond_e
    iget-object v1, p0, Lji;->dateBackupUpdated:Ljava/lang/Long;

    .line 157
    .line 158
    iget-object v3, p1, Lji;->dateBackupUpdated:Ljava/lang/Long;

    .line 159
    .line 160
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    if-nez v1, :cond_f

    .line 165
    .line 166
    return v2

    .line 167
    :cond_f
    iget-object v1, p0, Lji;->hasRestorableLocalBackup:Ljava/lang/Boolean;

    .line 168
    .line 169
    iget-object v3, p1, Lji;->hasRestorableLocalBackup:Ljava/lang/Boolean;

    .line 170
    .line 171
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    if-nez v1, :cond_10

    .line 176
    .line 177
    return v2

    .line 178
    :cond_10
    iget-boolean v1, p0, Lji;->isLaunchable:Z

    .line 179
    .line 180
    iget-boolean v3, p1, Lji;->isLaunchable:Z

    .line 181
    .line 182
    if-eq v1, v3, :cond_11

    .line 183
    .line 184
    return v2

    .line 185
    :cond_11
    iget-boolean v1, p0, Lji;->isBundled:Z

    .line 186
    .line 187
    iget-boolean v3, p1, Lji;->isBundled:Z

    .line 188
    .line 189
    if-eq v1, v3, :cond_12

    .line 190
    .line 191
    return v2

    .line 192
    :cond_12
    iget-boolean v1, p0, Lji;->isInstalled:Z

    .line 193
    .line 194
    iget-boolean v3, p1, Lji;->isInstalled:Z

    .line 195
    .line 196
    if-eq v1, v3, :cond_13

    .line 197
    .line 198
    return v2

    .line 199
    :cond_13
    iget-boolean v1, p0, Lji;->enabled:Z

    .line 200
    .line 201
    iget-boolean v3, p1, Lji;->enabled:Z

    .line 202
    .line 203
    if-eq v1, v3, :cond_14

    .line 204
    .line 205
    return v2

    .line 206
    :cond_14
    iget-object v1, p0, Lji;->sizeInfo:Lqx;

    .line 207
    .line 208
    iget-object v3, p1, Lji;->sizeInfo:Lqx;

    .line 209
    .line 210
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    move-result v1

    .line 214
    if-nez v1, :cond_15

    .line 215
    .line 216
    return v2

    .line 217
    :cond_15
    iget-object v1, p0, Lji;->_installerPackage:Ljava/lang/String;

    .line 218
    .line 219
    iget-object v3, p1, Lji;->_installerPackage:Ljava/lang/String;

    .line 220
    .line 221
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    move-result v1

    .line 225
    if-nez v1, :cond_16

    .line 226
    .line 227
    return v2

    .line 228
    :cond_16
    iget-object v1, p0, Lji;->localBackups:Ljava/util/List;

    .line 229
    .line 230
    iget-object v3, p1, Lji;->localBackups:Ljava/util/List;

    .line 231
    .line 232
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    move-result v1

    .line 236
    if-nez v1, :cond_17

    .line 237
    .line 238
    return v2

    .line 239
    :cond_17
    iget-boolean v1, p0, Lji;->isCloudApp:Z

    .line 240
    .line 241
    iget-boolean v3, p1, Lji;->isCloudApp:Z

    .line 242
    .line 243
    if-eq v1, v3, :cond_18

    .line 244
    .line 245
    return v2

    .line 246
    :cond_18
    iget-object v1, p0, Lji;->cloudBackups:Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;

    .line 247
    .line 248
    iget-object v3, p1, Lji;->cloudBackups:Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;

    .line 249
    .line 250
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    move-result v1

    .line 254
    if-nez v1, :cond_19

    .line 255
    .line 256
    return v2

    .line 257
    :cond_19
    iget-boolean v1, p0, Lji;->isFavorite:Z

    .line 258
    .line 259
    iget-boolean v3, p1, Lji;->isFavorite:Z

    .line 260
    .line 261
    if-eq v1, v3, :cond_1a

    .line 262
    .line 263
    return v2

    .line 264
    :cond_1a
    iget-object v1, p0, Lji;->labels:Ljava/util/Set;

    .line 265
    .line 266
    iget-object v3, p1, Lji;->labels:Ljava/util/Set;

    .line 267
    .line 268
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 269
    .line 270
    .line 271
    move-result v1

    .line 272
    if-nez v1, :cond_1b

    .line 273
    .line 274
    return v2

    .line 275
    :cond_1b
    iget-object p0, p0, Lji;->randomIdToForceNotifyChange:Ljava/lang/String;

    .line 276
    .line 277
    iget-object p1, p1, Lji;->randomIdToForceNotifyChange:Ljava/lang/String;

    .line 278
    .line 279
    invoke-static {p0, p1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 280
    .line 281
    .line 282
    move-result p0

    .line 283
    if-nez p0, :cond_1c

    .line 284
    .line 285
    return v2

    .line 286
    :cond_1c
    return v0
.end method

.method public final getAppId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lji;->appId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getCloudBackups()Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;
    .locals 0

    .line 1
    iget-object p0, p0, Lji;->cloudBackups:Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;

    .line 2
    .line 3
    return-object p0
.end method

.method public getCopy()Lji;
    .locals 31

    .line 1
    const v29, 0x7ffffff

    .line 2
    .line 3
    .line 4
    const/16 v30, 0x0

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x0

    .line 9
    const/4 v5, 0x0

    .line 10
    const/4 v6, 0x0

    .line 11
    const/4 v7, 0x0

    .line 12
    const/4 v8, 0x0

    .line 13
    const/4 v9, 0x0

    .line 14
    const/4 v10, 0x0

    .line 15
    const/4 v11, 0x0

    .line 16
    const/4 v12, 0x0

    .line 17
    const/4 v13, 0x0

    .line 18
    const/4 v14, 0x0

    .line 19
    const/4 v15, 0x0

    .line 20
    const/16 v16, 0x0

    .line 21
    .line 22
    const/16 v17, 0x0

    .line 23
    .line 24
    const/16 v18, 0x0

    .line 25
    .line 26
    const/16 v19, 0x0

    .line 27
    .line 28
    const/16 v20, 0x0

    .line 29
    .line 30
    const/16 v21, 0x0

    .line 31
    .line 32
    const/16 v22, 0x0

    .line 33
    .line 34
    const/16 v23, 0x0

    .line 35
    .line 36
    const/16 v24, 0x0

    .line 37
    .line 38
    const/16 v25, 0x0

    .line 39
    .line 40
    const/16 v26, 0x0

    .line 41
    .line 42
    const/16 v27, 0x0

    .line 43
    .line 44
    const/16 v28, 0x0

    .line 45
    .line 46
    move-object/from16 v1, p0

    .line 47
    .line 48
    invoke-static/range {v1 .. v30}, Lji;->copy$default(Lji;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;ZZZZLqx;Ljava/lang/String;Ljava/util/List;ZLorg/swiftapps/swiftbackup/model/app/AppCloudBackups;ZLjava/util/Set;Ljava/lang/String;ILjava/lang/Object;)Lji;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    return-object v0
.end method

.method public bridge synthetic getCopy()Ljl0;
    .locals 0

    .line 53
    invoke-virtual {p0}, Lji;->getCopy()Lji;

    move-result-object p0

    return-object p0
.end method

.method public final getDataDir()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lji;->dataDir:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getDateBackedUpOrUpdated()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lji;->dateBackupUpdated:Ljava/lang/Long;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lji;->dateBackup:Ljava/lang/Long;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    return-object v0
.end method

.method public final getDateBackup()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lji;->dateBackup:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getDateBackupUpdated()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lji;->dateBackupUpdated:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getDateInstalled()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lji;->dateInstalled:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getDateUpdated()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lji;->dateUpdated:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getDeDataDir()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lji;->deDataDir:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getEnabled()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lji;->enabled:Z

    .line 2
    .line 3
    return p0
.end method

.method public final getExpansionDir()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object p0, p0, Lji;->packageName:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v0, "/Android/obb/"

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    sget-object v0, Lg00;->a:Lg00;

    .line 28
    .line 29
    invoke-static {}, Lg00;->x()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    sget-object v0, Lmp6;->a:Lmp6;

    .line 36
    .line 37
    invoke-static {}, Lmp6;->c()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sget-object v1, Lmp6;->f:Lgv7;

    .line 42
    .line 43
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Ljava/lang/String;

    .line 48
    .line 49
    invoke-static {p0, v0, v1}, Luq7;->T(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    :cond_0
    return-object p0
.end method

.method public final getExternalDataDir()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object p0, p0, Lji;->packageName:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v0, "/Android/data/"

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    sget-object v0, Lg00;->a:Lg00;

    .line 28
    .line 29
    invoke-static {}, Lg00;->x()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    sget-object v0, Lmp6;->a:Lmp6;

    .line 36
    .line 37
    invoke-static {}, Lmp6;->c()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sget-object v1, Lmp6;->f:Lgv7;

    .line 42
    .line 43
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Ljava/lang/String;

    .line 48
    .line 49
    invoke-static {p0, v0, v1}, Luq7;->T(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    :cond_0
    return-object p0
.end method

.method public final getHasRestorableLocalBackup()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lji;->hasRestorableLocalBackup:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getInstallerPackage()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lji;->installerPackage$delegate:Los4;

    .line 2
    .line 3
    invoke-interface {p0}, Los4;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/String;

    .line 8
    .line 9
    return-object p0
.end method

.method public getItemId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lji;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getLabels()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lji;->labels:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getLocalBackups()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lgm;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lji;->localBackups:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getMediaDir()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object p0, p0, Lji;->packageName:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v0, "/Android/media/"

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    sget-object v0, Lg00;->a:Lg00;

    .line 28
    .line 29
    invoke-static {}, Lg00;->x()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    sget-object v0, Lmp6;->a:Lmp6;

    .line 36
    .line 37
    invoke-static {}, Lmp6;->c()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sget-object v1, Lmp6;->f:Lgv7;

    .line 42
    .line 43
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Ljava/lang/String;

    .line 48
    .line 49
    invoke-static {p0, v0, v1}, Luq7;->T(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    :cond_0
    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lji;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lji;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getRandomIdToForceNotifyChange()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lji;->randomIdToForceNotifyChange:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSharedLibsInfos()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lyc7;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lji;->sharedLibsInfos:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSizeInfo()Lqx;
    .locals 0

    .line 1
    iget-object p0, p0, Lji;->sizeInfo:Lqx;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSourceDir()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lji;->sourceDir:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSplitSourceDirs()Ljava/util/List;
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
    iget-object p0, p0, Lji;->splitSourceDirs:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSplitsUsingWorkaround()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lji;->splitSourceDirs:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object p0, p0, Lji;->splitSourceDirs:Ljava/util/List;

    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_1
    :goto_0
    iget-object v0, p0, Lji;->sourceDir:Ljava/lang/String;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    if-nez v0, :cond_2

    .line 19
    .line 20
    return-object v1

    .line 21
    :cond_2
    new-instance v2, Ljava/io/File;

    .line 22
    .line 23
    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const/4 v2, 0x0

    .line 31
    if-eqz v0, :cond_5

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-eqz v0, :cond_5

    .line 38
    .line 39
    new-instance v3, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .line 43
    .line 44
    array-length v4, v0

    .line 45
    move v5, v2

    .line 46
    :goto_1
    if-ge v5, v4, :cond_4

    .line 47
    .line 48
    aget-object v6, v0, v5

    .line 49
    .line 50
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    const-string v8, "split"

    .line 58
    .line 59
    invoke-static {v7, v8, v2}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 60
    .line 61
    .line 62
    move-result v7

    .line 63
    if-eqz v7, :cond_3

    .line 64
    .line 65
    invoke-static {v6}, Lnc3;->R(Ljava/io/File;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v7

    .line 69
    const-string v8, "apk"

    .line 70
    .line 71
    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v7

    .line 75
    if-eqz v7, :cond_3

    .line 76
    .line 77
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_4
    invoke-static {v3}, Lel1;->m1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    move-object v3, v0

    .line 88
    goto :goto_2

    .line 89
    :cond_5
    move-object v3, v1

    .line 90
    :goto_2
    if-eqz v3, :cond_7

    .line 91
    .line 92
    new-instance v1, Ljava/util/ArrayList;

    .line 93
    .line 94
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .line 96
    .line 97
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    :cond_6
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    if-eqz v4, :cond_7

    .line 106
    .line 107
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    check-cast v4, Ljava/io/File;

    .line 112
    .line 113
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    if-eqz v4, :cond_6

    .line 118
    .line 119
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    goto :goto_3

    .line 123
    :cond_7
    iget-object v0, p0, Lji;->splitSourceDirs:Ljava/util/List;

    .line 124
    .line 125
    if-eqz v0, :cond_8

    .line 126
    .line 127
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-eqz v0, :cond_a

    .line 132
    .line 133
    :cond_8
    if-eqz v1, :cond_a

    .line 134
    .line 135
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    if-eqz v0, :cond_9

    .line 140
    .line 141
    goto :goto_4

    .line 142
    :cond_9
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    new-instance v7, Lhi;

    .line 147
    .line 148
    invoke-direct {v7, v2}, Lhi;-><init>(I)V

    .line 149
    .line 150
    .line 151
    const/16 v8, 0x1f

    .line 152
    .line 153
    const/4 v4, 0x0

    .line 154
    const/4 v5, 0x0

    .line 155
    const/4 v6, 0x0

    .line 156
    invoke-static/range {v3 .. v8}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    const-string v3, "Splits path were not shared by system PackageManager! However, we found "

    .line 161
    .line 162
    const-string v4, " splits: "

    .line 163
    .line 164
    invoke-static {v0, v3, v4, v2}, Lu48;->k(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 169
    .line 170
    const-string v3, "App"

    .line 171
    .line 172
    sget-object v4, Lvr6$a;->YELLOW:Lvr6$a;

    .line 173
    .line 174
    invoke-virtual {v2, v3, v0, v4}, Lvr6;->w(Ljava/lang/String;Ljava/lang/String;Lvr6$a;)V

    .line 175
    .line 176
    .line 177
    iput-object v1, p0, Lji;->splitSourceDirs:Ljava/util/List;

    .line 178
    .line 179
    :cond_a
    :goto_4
    return-object v1
.end method

.method public final getVersionCode()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lji;->versionCode:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getVersionName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lji;->versionName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final get_installerPackage()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lji;->_installerPackage:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final hasBackup(Z)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    iget-object p0, p0, Lji;->cloudBackups:Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;->getLatestBackup()Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->getMetadata()Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->hasBackups()Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-ne p0, v1, :cond_0

    .line 26
    .line 27
    return v1

    .line 28
    :cond_0
    return v0

    .line 29
    :cond_1
    iget-object p0, p0, Lji;->localBackups:Ljava/util/List;

    .line 30
    .line 31
    if-eqz p0, :cond_3

    .line 32
    .line 33
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-eqz p0, :cond_2

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    return v1

    .line 41
    :cond_3
    :goto_0
    return v0
.end method

.method public final hasBackupsWithNotes(Z)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p1, :cond_6

    .line 4
    .line 5
    iget-object p0, p0, Lji;->cloudBackups:Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;

    .line 6
    .line 7
    if-eqz p0, :cond_5

    .line 8
    .line 9
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;->getBackups()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    goto :goto_2

    .line 16
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    return v1

    .line 23
    :cond_1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_5

    .line 32
    .line 33
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;

    .line 38
    .line 39
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->getMetadata()Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getNote()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    if-eqz p1, :cond_4

    .line 48
    .line 49
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-nez p1, :cond_3

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    move p1, v1

    .line 57
    goto :goto_1

    .line 58
    :cond_4
    :goto_0
    move p1, v0

    .line 59
    :goto_1
    if-nez p1, :cond_2

    .line 60
    .line 61
    return v0

    .line 62
    :cond_5
    :goto_2
    return v1

    .line 63
    :cond_6
    iget-object p0, p0, Lji;->localBackups:Ljava/util/List;

    .line 64
    .line 65
    if-nez p0, :cond_7

    .line 66
    .line 67
    return v1

    .line 68
    :cond_7
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    if-eqz p1, :cond_8

    .line 73
    .line 74
    return v1

    .line 75
    :cond_8
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    :cond_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-eqz p1, :cond_c

    .line 84
    .line 85
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    check-cast p1, Lgm;

    .line 90
    .line 91
    iget-object p1, p1, Lgm;->b:Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;

    .line 92
    .line 93
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getNote()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    if-eqz p1, :cond_b

    .line 98
    .line 99
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    if-nez p1, :cond_a

    .line 104
    .line 105
    goto :goto_3

    .line 106
    :cond_a
    move p1, v1

    .line 107
    goto :goto_4

    .line 108
    :cond_b
    :goto_3
    move p1, v0

    .line 109
    :goto_4
    if-nez p1, :cond_9

    .line 110
    .line 111
    return v0

    .line 112
    :cond_c
    return v1
.end method

.method public final hasDeData()Z
    .locals 8

    .line 1
    sget-object v0, Lmp6;->a:Lmp6;

    .line 2
    .line 3
    sget-boolean v0, Lmp6;->g:Z

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-static {v0, v2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_d

    .line 22
    .line 23
    iget-object p0, p0, Lji;->deDataDir:Ljava/lang/String;

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    if-eqz p0, :cond_2

    .line 27
    .line 28
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-nez v2, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    move v2, v1

    .line 36
    goto :goto_1

    .line 37
    :cond_2
    :goto_0
    move v2, v0

    .line 38
    :goto_1
    const/4 v3, 0x0

    .line 39
    if-nez v2, :cond_3

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_3
    move-object p0, v3

    .line 43
    :goto_2
    if-nez p0, :cond_4

    .line 44
    .line 45
    return v1

    .line 46
    :cond_4
    new-instance v2, Ljr7;

    .line 47
    .line 48
    invoke-direct {v2, p0}, Ljr7;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const-string p0, "[ -e @@ ]"

    .line 52
    .line 53
    invoke-virtual {v2, p0}, Ljr7;->b(Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    if-nez p0, :cond_5

    .line 58
    .line 59
    return v1

    .line 60
    :cond_5
    invoke-virtual {v2}, Ljr7;->f()[Ljr7;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    if-eqz p0, :cond_c

    .line 65
    .line 66
    new-instance v2, Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .line 70
    .line 71
    array-length v3, p0

    .line 72
    move v4, v1

    .line 73
    :goto_3
    if-ge v4, v3, :cond_7

    .line 74
    .line 75
    aget-object v5, p0, v4

    .line 76
    .line 77
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    const-string v7, "code_cache"

    .line 82
    .line 83
    invoke-static {v6, v7}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v6

    .line 87
    if-nez v6, :cond_6

    .line 88
    .line 89
    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    :cond_6
    add-int/lit8 v4, v4, 0x1

    .line 93
    .line 94
    goto :goto_3

    .line 95
    :cond_7
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 96
    .line 97
    .line 98
    move-result p0

    .line 99
    if-eqz p0, :cond_8

    .line 100
    .line 101
    goto :goto_4

    .line 102
    :cond_8
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    :cond_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    if-eqz v2, :cond_b

    .line 111
    .line 112
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    check-cast v2, Ljr7;

    .line 117
    .line 118
    const-string v3, "[ -f @@ ]"

    .line 119
    .line 120
    invoke-virtual {v2, v3}, Ljr7;->b(Ljava/lang/String;)Z

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    if-nez v3, :cond_a

    .line 125
    .line 126
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    .line 132
    .line 133
    invoke-static {v2}, Le73;->a(Ljava/lang/String;)Z

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    if-eqz v2, :cond_9

    .line 138
    .line 139
    :cond_a
    move v1, v0

    .line 140
    :cond_b
    :goto_4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    :cond_c
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 145
    .line 146
    invoke-static {v3, p0}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result p0

    .line 150
    return p0

    .line 151
    :cond_d
    invoke-static {}, Ld6;->o()V

    .line 152
    .line 153
    .line 154
    return v1
.end method

.method public final hasExpansion()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lji;->getExpansionDir()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Ljr7;->g(Ljava/lang/String;)Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    if-eqz p0, :cond_1

    .line 20
    .line 21
    array-length p0, p0

    .line 22
    if-nez p0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p0, 0x1

    .line 26
    return p0

    .line 27
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 28
    return p0
.end method

.method public final hasExternalData(Z)Z
    .locals 7

    .line 1
    new-instance v0, Lq63;

    .line 2
    .line 3
    invoke-virtual {p0}, Lji;->getExternalDataDir()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-direct {v0, p0, v1}, Lq63;-><init>(Ljava/lang/String;I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lq63;->j()Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    const/4 v2, 0x0

    .line 16
    if-nez p0, :cond_0

    .line 17
    .line 18
    goto/16 :goto_2

    .line 19
    .line 20
    :cond_0
    invoke-virtual {v0}, Lq63;->B()Ljava/util/ArrayList;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    const/4 v0, 0x0

    .line 25
    if-eqz p0, :cond_1

    .line 26
    .line 27
    invoke-static {p0}, Lel1;->v1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    move-object p0, v0

    .line 33
    :goto_0
    const-string v3, "cache"

    .line 34
    .line 35
    if-nez p1, :cond_4

    .line 36
    .line 37
    if-eqz p0, :cond_3

    .line 38
    .line 39
    new-instance v0, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-eqz v4, :cond_3

    .line 53
    .line 54
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    move-object v5, v4

    .line 59
    check-cast v5, Lq63;

    .line 60
    .line 61
    invoke-virtual {v5}, Lq63;->x()Z

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    if-eqz v6, :cond_2

    .line 66
    .line 67
    invoke-virtual {v5}, Lq63;->p()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    if-eqz v5, :cond_2

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_2
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_3
    move-object p0, v0

    .line 83
    :cond_4
    if-eqz p0, :cond_a

    .line 84
    .line 85
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-eqz v0, :cond_5

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_5
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-ne v0, v1, :cond_6

    .line 97
    .line 98
    invoke-static {p0}, Lel1;->S0(Ljava/util/List;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    check-cast v0, Lq63;

    .line 103
    .line 104
    invoke-virtual {v0}, Lq63;->x()Z

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    if-eqz v4, :cond_6

    .line 109
    .line 110
    invoke-virtual {v0}, Lq63;->p()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    const-string v4, "files"

    .line 115
    .line 116
    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-eqz v0, :cond_6

    .line 121
    .line 122
    invoke-static {p0}, Lel1;->S0(Ljava/util/List;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    check-cast p0, Lq63;

    .line 127
    .line 128
    invoke-virtual {p0}, Lq63;->v()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    invoke-static {p0}, Le73;->a(Ljava/lang/String;)Z

    .line 133
    .line 134
    .line 135
    move-result p0

    .line 136
    return p0

    .line 137
    :cond_6
    if-eqz p1, :cond_9

    .line 138
    .line 139
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 140
    .line 141
    .line 142
    move-result p1

    .line 143
    if-ne p1, v1, :cond_9

    .line 144
    .line 145
    invoke-static {p0}, Lel1;->S0(Ljava/util/List;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    check-cast p1, Lq63;

    .line 150
    .line 151
    invoke-virtual {p1}, Lq63;->x()Z

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    if-eqz v0, :cond_9

    .line 156
    .line 157
    invoke-virtual {p1}, Lq63;->p()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result p1

    .line 165
    if-eqz p1, :cond_9

    .line 166
    .line 167
    invoke-static {p0}, Lel1;->S0(Ljava/util/List;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object p0

    .line 171
    check-cast p0, Lq63;

    .line 172
    .line 173
    invoke-virtual {p0}, Lq63;->B()Ljava/util/ArrayList;

    .line 174
    .line 175
    .line 176
    move-result-object p0

    .line 177
    if-eqz p0, :cond_7

    .line 178
    .line 179
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 180
    .line 181
    .line 182
    move-result p0

    .line 183
    if-eqz p0, :cond_8

    .line 184
    .line 185
    :cond_7
    move v2, v1

    .line 186
    :cond_8
    xor-int/lit8 p0, v2, 0x1

    .line 187
    .line 188
    return p0

    .line 189
    :cond_9
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 190
    .line 191
    .line 192
    move-result p0

    .line 193
    xor-int/2addr p0, v1

    .line 194
    return p0

    .line 195
    :cond_a
    :goto_2
    return v2
.end method

.method public final hasLabels()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lji;->labels:Ljava/util/Set;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eqz p0, :cond_1

    .line 5
    .line 6
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    :goto_0
    move p0, v0

    .line 16
    :goto_1
    xor-int/2addr p0, v0

    .line 17
    return p0
.end method

.method public final hasMedia()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lji;->getMediaDir()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Ljr7;->g(Ljava/lang/String;)Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    if-eqz p0, :cond_1

    .line 20
    .line 21
    array-length p0, p0

    .line 22
    if-nez p0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p0, 0x1

    .line 26
    return p0

    .line 27
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 28
    return p0
.end method

.method public final hasMultipleBackups(Z)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eqz p1, :cond_2

    .line 4
    .line 5
    iget-object p0, p0, Lji;->cloudBackups:Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;

    .line 6
    .line 7
    if-eqz p0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;->getBackups()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-le p0, v1, :cond_1

    .line 21
    .line 22
    return v1

    .line 23
    :cond_1
    :goto_0
    return v0

    .line 24
    :cond_2
    iget-object p0, p0, Lji;->localBackups:Ljava/util/List;

    .line 25
    .line 26
    if-nez p0, :cond_3

    .line 27
    .line 28
    return v0

    .line 29
    :cond_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    if-le p0, v1, :cond_4

    .line 34
    .line 35
    return v1

    .line 36
    :cond_4
    return v0
.end method

.method public final hasProtectedBackups(Z)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p1, :cond_4

    .line 4
    .line 5
    iget-object p0, p0, Lji;->cloudBackups:Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;

    .line 6
    .line 7
    if-eqz p0, :cond_3

    .line 8
    .line 9
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;->getBackups()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    return v1

    .line 23
    :cond_1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_3

    .line 32
    .line 33
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;

    .line 38
    .line 39
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->getMetadata()Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->isProtectedBackup()Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_2

    .line 48
    .line 49
    return v0

    .line 50
    :cond_3
    :goto_0
    return v1

    .line 51
    :cond_4
    iget-object p0, p0, Lji;->localBackups:Ljava/util/List;

    .line 52
    .line 53
    if-nez p0, :cond_5

    .line 54
    .line 55
    return v1

    .line 56
    :cond_5
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-eqz p1, :cond_6

    .line 61
    .line 62
    return v1

    .line 63
    :cond_6
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    :cond_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-eqz p1, :cond_8

    .line 72
    .line 73
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    check-cast p1, Lgm;

    .line 78
    .line 79
    iget-object p1, p1, Lgm;->b:Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;

    .line 80
    .line 81
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->isProtectedBackup()Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-eqz p1, :cond_7

    .line 86
    .line 87
    return v0

    .line 88
    :cond_8
    return v1
.end method

.method public final hasRestorableBackup(Z)Z
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object p1, p0, Lji;->cloudBackups:Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;->getLatestBackup()Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->getMetadata()Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    iget-boolean p0, p0, Lji;->isInstalled:Z

    .line 21
    .line 22
    invoke-virtual {p1, p0}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->hasRestorableBackup(Z)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    const/4 p1, 0x1

    .line 27
    if-ne p0, p1, :cond_0

    .line 28
    .line 29
    return p1

    .line 30
    :cond_0
    return v0

    .line 31
    :cond_1
    iget-object p0, p0, Lji;->hasRestorableLocalBackup:Ljava/lang/Boolean;

    .line 32
    .line 33
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 34
    .line 35
    invoke-static {p0, p1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    return p0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lji;->packageName:Ljava/lang/String;

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
    iget-object v2, p0, Lji;->name:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v0, v1, v2}, Lfz5;->g(IILjava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object v2, p0, Lji;->appId:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {v0, v1, v2}, Lfz5;->g(IILjava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget-object v2, p0, Lji;->versionName:Ljava/lang/String;

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
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

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
    iget-object v2, p0, Lji;->versionCode:Ljava/lang/Long;

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
    iget-object v2, p0, Lji;->sourceDir:Ljava/lang/String;

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
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

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
    iget-object v2, p0, Lji;->dataDir:Ljava/lang/String;

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
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

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
    iget-object v2, p0, Lji;->deDataDir:Ljava/lang/String;

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
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

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
    iget-object v2, p0, Lji;->splitSourceDirs:Ljava/util/List;

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
    iget-object v2, p0, Lji;->sharedLibsInfos:Ljava/util/List;

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
    iget-object v2, p0, Lji;->dateInstalled:Ljava/lang/Long;

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
    iget-object v2, p0, Lji;->dateUpdated:Ljava/lang/Long;

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
    iget-object v2, p0, Lji;->dateBackup:Ljava/lang/Long;

    .line 132
    .line 133
    if-nez v2, :cond_9

    .line 134
    .line 135
    move v2, v3

    .line 136
    goto :goto_9

    .line 137
    :cond_9
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 138
    .line 139
    .line 140
    move-result v2

    .line 141
    :goto_9
    add-int/2addr v0, v2

    .line 142
    mul-int/2addr v0, v1

    .line 143
    iget-object v2, p0, Lji;->dateBackupUpdated:Ljava/lang/Long;

    .line 144
    .line 145
    if-nez v2, :cond_a

    .line 146
    .line 147
    move v2, v3

    .line 148
    goto :goto_a

    .line 149
    :cond_a
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 150
    .line 151
    .line 152
    move-result v2

    .line 153
    :goto_a
    add-int/2addr v0, v2

    .line 154
    mul-int/2addr v0, v1

    .line 155
    iget-object v2, p0, Lji;->hasRestorableLocalBackup:Ljava/lang/Boolean;

    .line 156
    .line 157
    if-nez v2, :cond_b

    .line 158
    .line 159
    move v2, v3

    .line 160
    goto :goto_b

    .line 161
    :cond_b
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 162
    .line 163
    .line 164
    move-result v2

    .line 165
    :goto_b
    add-int/2addr v0, v2

    .line 166
    mul-int/2addr v0, v1

    .line 167
    iget-boolean v2, p0, Lji;->isLaunchable:Z

    .line 168
    .line 169
    invoke-static {v0, v1, v2}, Lfz5;->h(IIZ)I

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    iget-boolean v2, p0, Lji;->isBundled:Z

    .line 174
    .line 175
    invoke-static {v0, v1, v2}, Lfz5;->h(IIZ)I

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    iget-boolean v2, p0, Lji;->isInstalled:Z

    .line 180
    .line 181
    invoke-static {v0, v1, v2}, Lfz5;->h(IIZ)I

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    iget-boolean v2, p0, Lji;->enabled:Z

    .line 186
    .line 187
    invoke-static {v0, v1, v2}, Lfz5;->h(IIZ)I

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    iget-object v2, p0, Lji;->sizeInfo:Lqx;

    .line 192
    .line 193
    if-nez v2, :cond_c

    .line 194
    .line 195
    move v2, v3

    .line 196
    goto :goto_c

    .line 197
    :cond_c
    invoke-virtual {v2}, Lqx;->hashCode()I

    .line 198
    .line 199
    .line 200
    move-result v2

    .line 201
    :goto_c
    add-int/2addr v0, v2

    .line 202
    mul-int/2addr v0, v1

    .line 203
    iget-object v2, p0, Lji;->_installerPackage:Ljava/lang/String;

    .line 204
    .line 205
    if-nez v2, :cond_d

    .line 206
    .line 207
    move v2, v3

    .line 208
    goto :goto_d

    .line 209
    :cond_d
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 210
    .line 211
    .line 212
    move-result v2

    .line 213
    :goto_d
    add-int/2addr v0, v2

    .line 214
    mul-int/2addr v0, v1

    .line 215
    iget-object v2, p0, Lji;->localBackups:Ljava/util/List;

    .line 216
    .line 217
    if-nez v2, :cond_e

    .line 218
    .line 219
    move v2, v3

    .line 220
    goto :goto_e

    .line 221
    :cond_e
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 222
    .line 223
    .line 224
    move-result v2

    .line 225
    :goto_e
    add-int/2addr v0, v2

    .line 226
    mul-int/2addr v0, v1

    .line 227
    iget-boolean v2, p0, Lji;->isCloudApp:Z

    .line 228
    .line 229
    invoke-static {v0, v1, v2}, Lfz5;->h(IIZ)I

    .line 230
    .line 231
    .line 232
    move-result v0

    .line 233
    iget-object v2, p0, Lji;->cloudBackups:Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;

    .line 234
    .line 235
    if-nez v2, :cond_f

    .line 236
    .line 237
    move v2, v3

    .line 238
    goto :goto_f

    .line 239
    :cond_f
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;->hashCode()I

    .line 240
    .line 241
    .line 242
    move-result v2

    .line 243
    :goto_f
    add-int/2addr v0, v2

    .line 244
    mul-int/2addr v0, v1

    .line 245
    iget-boolean v2, p0, Lji;->isFavorite:Z

    .line 246
    .line 247
    invoke-static {v0, v1, v2}, Lfz5;->h(IIZ)I

    .line 248
    .line 249
    .line 250
    move-result v0

    .line 251
    iget-object v2, p0, Lji;->labels:Ljava/util/Set;

    .line 252
    .line 253
    if-nez v2, :cond_10

    .line 254
    .line 255
    move v2, v3

    .line 256
    goto :goto_10

    .line 257
    :cond_10
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 258
    .line 259
    .line 260
    move-result v2

    .line 261
    :goto_10
    add-int/2addr v0, v2

    .line 262
    mul-int/2addr v0, v1

    .line 263
    iget-object p0, p0, Lji;->randomIdToForceNotifyChange:Ljava/lang/String;

    .line 264
    .line 265
    if-nez p0, :cond_11

    .line 266
    .line 267
    goto :goto_11

    .line 268
    :cond_11
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 269
    .line 270
    .line 271
    move-result v3

    .line 272
    :goto_11
    add-int/2addr v0, v3

    .line 273
    return v0
.end method

.method public final isBundled()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lji;->isBundled:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isCloudApp()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lji;->isCloudApp:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isFavorite()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lji;->isFavorite:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isInstalled()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lji;->isInstalled:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isInstalledFromGooglePlay(Z)Z
    .locals 0

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object p0, p0, Lji;->cloudBackups:Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;->getLatestBackup()Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->getMetadata()Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->getInstallerPackage()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    invoke-virtual {p0}, Lji;->getInstallerPackage()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    :goto_0
    const-string p1, "com.android.vending"

    .line 31
    .line 32
    invoke-static {p0, p1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    return p0
.end method

.method public final isLabelledOrFavorites()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lji;->hasLabels()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-boolean p0, p0, Lji;->isFavorite:Z

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return p0

    .line 14
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 15
    return p0
.end method

.method public final isLaunchable()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lji;->isLaunchable:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isUninstalledWithoutBackup()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lji;->refresh()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lji;->localBackups:Ljava/util/List;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v0, v2

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    :goto_0
    move v0, v1

    .line 20
    :goto_1
    iget-object v3, p0, Lji;->cloudBackups:Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;

    .line 21
    .line 22
    if-eqz v3, :cond_2

    .line 23
    .line 24
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;->getLatestBackup()Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    if-eqz v3, :cond_2

    .line 29
    .line 30
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->getMetadata()Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    if-eqz v3, :cond_2

    .line 35
    .line 36
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->hasBackups()Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-ne v3, v1, :cond_2

    .line 41
    .line 42
    move v3, v1

    .line 43
    goto :goto_2

    .line 44
    :cond_2
    move v3, v2

    .line 45
    :goto_2
    iget-boolean p0, p0, Lji;->isInstalled:Z

    .line 46
    .line 47
    if-nez p0, :cond_3

    .line 48
    .line 49
    if-eqz v0, :cond_3

    .line 50
    .line 51
    if-nez v3, :cond_3

    .line 52
    .line 53
    return v1

    .line 54
    :cond_3
    return v2
.end method

.method public final isUpdatedSystemApp()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lji;->isBundled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lji;->dateUpdated:Ljava/lang/Long;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iget-object p0, p0, Lji;->dateInstalled:Ljava/lang/Long;

    .line 14
    .line 15
    invoke-static {p0}, Lio4;->h(Ljava/lang/Long;)J

    .line 16
    .line 17
    .line 18
    move-result-wide v2

    .line 19
    cmp-long p0, v0, v2

    .line 20
    .line 21
    if-lez p0, :cond_0

    .line 22
    .line 23
    const/4 p0, 0x1

    .line 24
    return p0

    .line 25
    :cond_0
    const/4 p0, 0x0

    .line 26
    return p0
.end method

.method public final refresh()V
    .locals 2

    .line 1
    sget-object v0, Lg00;->a:Lg00;

    .line 2
    .line 3
    iget-object v0, p0, Lji;->packageName:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v1, v0}, Lg00;->q(ILjava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    iput-boolean v1, p0, Lji;->isInstalled:Z

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lji;->setFromPackageInfo(Landroid/content/pm/PackageInfo;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iput-boolean v1, p0, Lji;->isInstalled:Z

    .line 20
    .line 21
    :goto_0
    invoke-direct {p0}, Lji;->refreshExtras()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final refreshBackupDetails()V
    .locals 8

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_e

    .line 14
    .line 15
    sget-object v0, Lhk;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 16
    .line 17
    iget-object v0, p0, Lji;->packageName:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v0}, Lfk;->b(Ljava/lang/String;)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/4 v1, 0x0

    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    new-instance v2, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_4

    .line 40
    .line 41
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    check-cast v3, Lhk;

    .line 46
    .line 47
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    invoke-static {v4, v5}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-nez v4, :cond_2

    .line 63
    .line 64
    invoke-virtual {v3}, Lhk;->u()Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    if-nez v4, :cond_1

    .line 69
    .line 70
    move-object v5, v1

    .line 71
    goto :goto_1

    .line 72
    :cond_1
    new-instance v5, Lgm;

    .line 73
    .line 74
    invoke-direct {v5, v3, v4}, Lgm;-><init>(Lhk;Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;)V

    .line 75
    .line 76
    .line 77
    :goto_1
    if-eqz v5, :cond_0

    .line 78
    .line 79
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_2
    invoke-static {}, Ld6;->o()V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :cond_3
    move-object v2, v1

    .line 88
    :cond_4
    iput-object v2, p0, Lji;->localBackups:Ljava/util/List;

    .line 89
    .line 90
    if-eqz v2, :cond_5

    .line 91
    .line 92
    invoke-static {v2}, Lel1;->U0(Ljava/util/List;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    check-cast v0, Lgm;

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_5
    move-object v0, v1

    .line 100
    :goto_2
    if-eqz v0, :cond_d

    .line 101
    .line 102
    iget-object v3, v0, Lgm;->a:Lhk;

    .line 103
    .line 104
    invoke-virtual {v3}, Lhk;->l()J

    .line 105
    .line 106
    .line 107
    move-result-wide v3

    .line 108
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    const-wide/16 v6, 0x0

    .line 113
    .line 114
    cmp-long v3, v3, v6

    .line 115
    .line 116
    if-lez v3, :cond_6

    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_6
    move-object v5, v1

    .line 120
    :goto_3
    iput-object v5, p0, Lji;->dateBackup:Ljava/lang/Long;

    .line 121
    .line 122
    iget-object v0, v0, Lgm;->b:Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;

    .line 123
    .line 124
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getDateBackupUpdated()Ljava/lang/Long;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    if-eqz v0, :cond_7

    .line 129
    .line 130
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 131
    .line 132
    .line 133
    move-result-wide v3

    .line 134
    cmp-long v3, v3, v6

    .line 135
    .line 136
    if-lez v3, :cond_7

    .line 137
    .line 138
    move-object v1, v0

    .line 139
    :cond_7
    iput-object v1, p0, Lji;->dateBackupUpdated:Ljava/lang/Long;

    .line 140
    .line 141
    const/4 v0, 0x0

    .line 142
    invoke-virtual {p0, v0}, Lji;->hasBackup(Z)Z

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    if-eqz v1, :cond_c

    .line 147
    .line 148
    if-eqz v2, :cond_8

    .line 149
    .line 150
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    if-eqz v1, :cond_8

    .line 155
    .line 156
    goto :goto_5

    .line 157
    :cond_8
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 162
    .line 163
    .line 164
    move-result v2

    .line 165
    if-eqz v2, :cond_c

    .line 166
    .line 167
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    check-cast v2, Lgm;

    .line 172
    .line 173
    iget-object v2, v2, Lgm;->a:Lhk;

    .line 174
    .line 175
    iget-boolean v3, p0, Lji;->isInstalled:Z

    .line 176
    .line 177
    const/4 v4, 0x1

    .line 178
    if-eqz v3, :cond_a

    .line 179
    .line 180
    invoke-virtual {v2}, Lhk;->E()Z

    .line 181
    .line 182
    .line 183
    move-result v2

    .line 184
    goto :goto_4

    .line 185
    :cond_a
    invoke-virtual {v2}, Lhk;->v()Lq63;

    .line 186
    .line 187
    .line 188
    move-result-object v3

    .line 189
    invoke-virtual {v3}, Lq63;->j()Z

    .line 190
    .line 191
    .line 192
    move-result v3

    .line 193
    if-eqz v3, :cond_b

    .line 194
    .line 195
    invoke-virtual {v2}, Lhk;->c()Lq63;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    invoke-virtual {v2}, Lq63;->j()Z

    .line 200
    .line 201
    .line 202
    move-result v2

    .line 203
    if-eqz v2, :cond_b

    .line 204
    .line 205
    move v2, v4

    .line 206
    goto :goto_4

    .line 207
    :cond_b
    move v2, v0

    .line 208
    :goto_4
    if-eqz v2, :cond_9

    .line 209
    .line 210
    move v0, v4

    .line 211
    :cond_c
    :goto_5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    iput-object v0, p0, Lji;->hasRestorableLocalBackup:Ljava/lang/Boolean;

    .line 216
    .line 217
    return-void

    .line 218
    :cond_d
    iput-object v1, p0, Lji;->dateBackup:Ljava/lang/Long;

    .line 219
    .line 220
    iput-object v1, p0, Lji;->dateBackupUpdated:Ljava/lang/Long;

    .line 221
    .line 222
    iput-object v1, p0, Lji;->hasRestorableLocalBackup:Ljava/lang/Boolean;

    .line 223
    .line 224
    return-void

    .line 225
    :cond_e
    invoke-static {}, Ld6;->o()V

    .line 226
    .line 227
    .line 228
    return-void
.end method

.method public final setAppId(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lji;->appId:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public final setBundled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lji;->isBundled:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setCloudApp(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lji;->isCloudApp:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setCloudBackups(Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lji;->cloudBackups:Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;

    .line 2
    .line 3
    return-void
.end method

.method public final setDataDir(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lji;->dataDir:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setDateBackup(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lji;->dateBackup:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setDateBackupUpdated(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lji;->dateBackupUpdated:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setDateInstalled(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lji;->dateInstalled:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setDateUpdated(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lji;->dateUpdated:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setDeDataDir(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lji;->deDataDir:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lji;->enabled:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setFavorite(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lji;->isFavorite:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setFromPackageInfo(Landroid/content/pm/PackageInfo;)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    iput-boolean v3, v0, Lji;->isInstalled:Z

    .line 12
    .line 13
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    iput-object v4, v0, Lji;->packageName:Ljava/lang/String;

    .line 19
    .line 20
    sget-object v4, Lum;->a:Lgv7;

    .line 21
    .line 22
    sget-object v4, Lg00;->a:Lg00;

    .line 23
    .line 24
    invoke-static {}, Lg00;->r()Landroid/content/pm/PackageManager;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    sget-object v5, Lum;->a:Lgv7;

    .line 29
    .line 30
    invoke-virtual {v5}, Lgv7;->getValue()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    check-cast v5, Lom;

    .line 35
    .line 36
    iget-object v6, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    iget-object v5, v5, Lom;->a:Leo6;

    .line 45
    .line 46
    new-instance v7, Llm;

    .line 47
    .line 48
    const/4 v8, 0x0

    .line 49
    invoke-direct {v7, v6, v8}, Llm;-><init>(Ljava/lang/Object;I)V

    .line 50
    .line 51
    .line 52
    invoke-static {v5, v3, v8, v7}, Lg67;->z(Leo6;ZZLmt3;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    check-cast v5, Lpm;

    .line 57
    .line 58
    const/4 v6, 0x0

    .line 59
    if-eqz v5, :cond_0

    .line 60
    .line 61
    iget-object v7, v5, Lpm;->a:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 64
    .line 65
    .line 66
    move-result v7

    .line 67
    if-lez v7, :cond_0

    .line 68
    .line 69
    iget-object v7, v5, Lpm;->b:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 72
    .line 73
    .line 74
    move-result v7

    .line 75
    if-lez v7, :cond_0

    .line 76
    .line 77
    iget-object v7, v5, Lpm;->e:Ljava/lang/Boolean;

    .line 78
    .line 79
    if-eqz v7, :cond_0

    .line 80
    .line 81
    iget-object v7, v5, Lpm;->c:Ljava/lang/Boolean;

    .line 82
    .line 83
    if-eqz v7, :cond_0

    .line 84
    .line 85
    iget-object v7, v5, Lpm;->d:Ljava/lang/Boolean;

    .line 86
    .line 87
    if-eqz v7, :cond_0

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_0
    move-object v5, v6

    .line 91
    :goto_0
    new-instance v7, Lrm;

    .line 92
    .line 93
    invoke-direct {v7, v8, v1, v4}, Lrm;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    new-instance v9, Lgv7;

    .line 97
    .line 98
    invoke-direct {v9, v7}, Lgv7;-><init>(Lbt3;)V

    .line 99
    .line 100
    .line 101
    new-instance v7, Lsm;

    .line 102
    .line 103
    invoke-direct {v7, v8}, Lsm;-><init>(I)V

    .line 104
    .line 105
    .line 106
    new-instance v10, Lgv7;

    .line 107
    .line 108
    invoke-direct {v10, v7}, Lgv7;-><init>(Lbt3;)V

    .line 109
    .line 110
    .line 111
    if-eqz v5, :cond_3

    .line 112
    .line 113
    iget-object v7, v5, Lpm;->d:Ljava/lang/Boolean;

    .line 114
    .line 115
    iget-object v11, v5, Lpm;->c:Ljava/lang/Boolean;

    .line 116
    .line 117
    iget-object v12, v5, Lpm;->b:Ljava/lang/String;

    .line 118
    .line 119
    invoke-virtual {v9}, Lgv7;->getValue()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v13

    .line 123
    check-cast v13, Ljava/lang/String;

    .line 124
    .line 125
    iget-object v14, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 126
    .line 127
    if-eqz v14, :cond_1

    .line 128
    .line 129
    iget-boolean v14, v14, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 130
    .line 131
    if-nez v14, :cond_1

    .line 132
    .line 133
    move v14, v3

    .line 134
    goto :goto_1

    .line 135
    :cond_1
    move v14, v8

    .line 136
    :goto_1
    xor-int/2addr v14, v3

    .line 137
    invoke-virtual {v10}, Lgv7;->getValue()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v15

    .line 141
    check-cast v15, Ljava/lang/String;

    .line 142
    .line 143
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    .line 145
    .line 146
    iget-object v3, v5, Lpm;->a:Ljava/lang/String;

    .line 147
    .line 148
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 149
    .line 150
    .line 151
    move-result v3

    .line 152
    if-lez v3, :cond_2

    .line 153
    .line 154
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    .line 155
    .line 156
    .line 157
    move-result v3

    .line 158
    if-lez v3, :cond_2

    .line 159
    .line 160
    iget-object v3, v5, Lpm;->e:Ljava/lang/Boolean;

    .line 161
    .line 162
    if-eqz v3, :cond_2

    .line 163
    .line 164
    if-eqz v11, :cond_2

    .line 165
    .line 166
    if-eqz v7, :cond_2

    .line 167
    .line 168
    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v3

    .line 172
    if-eqz v3, :cond_2

    .line 173
    .line 174
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 175
    .line 176
    invoke-virtual {v11, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result v3

    .line 180
    if-eqz v3, :cond_2

    .line 181
    .line 182
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    invoke-virtual {v7, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result v3

    .line 190
    if-eqz v3, :cond_2

    .line 191
    .line 192
    iget-object v3, v5, Lpm;->f:Ljava/lang/String;

    .line 193
    .line 194
    invoke-static {v3, v15}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result v3

    .line 198
    if-nez v3, :cond_6

    .line 199
    .line 200
    :cond_2
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 201
    .line 202
    new-instance v5, Ljava/lang/StringBuilder;

    .line 203
    .line 204
    const-string v7, "Updating cached data for package: "

    .line 205
    .line 206
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v3

    .line 216
    const-string v5, "AppCachedDataRepo"

    .line 217
    .line 218
    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    .line 220
    .line 221
    :cond_3
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 222
    .line 223
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v9}, Lgv7;->getValue()Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v5

    .line 230
    move-object/from16 v18, v5

    .line 231
    .line 232
    check-cast v18, Ljava/lang/String;

    .line 233
    .line 234
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 235
    .line 236
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    .line 238
    .line 239
    move-result-object v4

    .line 240
    if-eqz v4, :cond_4

    .line 241
    .line 242
    const/4 v4, 0x1

    .line 243
    goto :goto_2

    .line 244
    :cond_4
    move v4, v8

    .line 245
    :goto_2
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 246
    .line 247
    if-eqz v5, :cond_5

    .line 248
    .line 249
    iget-boolean v5, v5, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 250
    .line 251
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 252
    .line 253
    .line 254
    move-result-object v5

    .line 255
    move-object/from16 v20, v5

    .line 256
    .line 257
    goto :goto_3

    .line 258
    :cond_5
    move-object/from16 v20, v6

    .line 259
    .line 260
    :goto_3
    invoke-virtual {v10}, Lgv7;->getValue()Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v5

    .line 264
    move-object/from16 v22, v5

    .line 265
    .line 266
    check-cast v22, Ljava/lang/String;

    .line 267
    .line 268
    new-instance v16, Lpm;

    .line 269
    .line 270
    sget-object v19, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 271
    .line 272
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 273
    .line 274
    .line 275
    move-result-object v21

    .line 276
    move-object/from16 v17, v3

    .line 277
    .line 278
    invoke-direct/range {v16 .. v22}, Lpm;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    move-object/from16 v5, v16

    .line 282
    .line 283
    sget-object v3, Lzn4;->a:Lzn4;

    .line 284
    .line 285
    new-instance v3, Ltm;

    .line 286
    .line 287
    invoke-direct {v3, v5, v6, v8}, Ltm;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 288
    .line 289
    .line 290
    invoke-static {v6, v3}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 291
    .line 292
    .line 293
    :cond_6
    iget-object v3, v5, Lpm;->b:Ljava/lang/String;

    .line 294
    .line 295
    iput-object v3, v0, Lji;->name:Ljava/lang/String;

    .line 296
    .line 297
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 298
    .line 299
    iput-object v3, v0, Lji;->versionName:Ljava/lang/String;

    .line 300
    .line 301
    invoke-static {v1}, Ljd4;->r(Landroid/content/pm/PackageInfo;)J

    .line 302
    .line 303
    .line 304
    move-result-wide v3

    .line 305
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 306
    .line 307
    .line 308
    move-result-object v3

    .line 309
    iput-object v3, v0, Lji;->versionCode:Ljava/lang/Long;

    .line 310
    .line 311
    iget-object v3, v5, Lpm;->e:Ljava/lang/Boolean;

    .line 312
    .line 313
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 314
    .line 315
    invoke-static {v3, v4}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 316
    .line 317
    .line 318
    move-result v3

    .line 319
    iput-boolean v3, v0, Lji;->isLaunchable:Z

    .line 320
    .line 321
    if-eqz v2, :cond_7

    .line 322
    .line 323
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 324
    .line 325
    goto :goto_4

    .line 326
    :cond_7
    move-object v3, v6

    .line 327
    :goto_4
    iput-object v3, v0, Lji;->sourceDir:Ljava/lang/String;

    .line 328
    .line 329
    if-eqz v2, :cond_8

    .line 330
    .line 331
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 332
    .line 333
    goto :goto_5

    .line 334
    :cond_8
    move-object v3, v6

    .line 335
    :goto_5
    iput-object v3, v0, Lji;->dataDir:Ljava/lang/String;

    .line 336
    .line 337
    if-eqz v2, :cond_9

    .line 338
    .line 339
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    .line 340
    .line 341
    goto :goto_6

    .line 342
    :cond_9
    move-object v3, v6

    .line 343
    :goto_6
    iput-object v3, v0, Lji;->deDataDir:Ljava/lang/String;

    .line 344
    .line 345
    if-eqz v2, :cond_a

    .line 346
    .line 347
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    .line 348
    .line 349
    if-eqz v3, :cond_a

    .line 350
    .line 351
    invoke-static {v3}, Lx50;->z0([Ljava/lang/Object;)Ljava/util/List;

    .line 352
    .line 353
    .line 354
    move-result-object v3

    .line 355
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 356
    .line 357
    .line 358
    move-result v4

    .line 359
    if-nez v4, :cond_a

    .line 360
    .line 361
    goto :goto_7

    .line 362
    :cond_a
    move-object v3, v6

    .line 363
    :goto_7
    iput-object v3, v0, Lji;->splitSourceDirs:Ljava/util/List;

    .line 364
    .line 365
    iget-object v3, v0, Lji;->packageName:Ljava/lang/String;

    .line 366
    .line 367
    invoke-static {v3}, Lg00;->v(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 368
    .line 369
    .line 370
    move-result-object v3

    .line 371
    iput-object v3, v0, Lji;->sharedLibsInfos:Ljava/util/List;

    .line 372
    .line 373
    iget-wide v3, v1, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 374
    .line 375
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 376
    .line 377
    .line 378
    move-result-object v3

    .line 379
    iput-object v3, v0, Lji;->dateInstalled:Ljava/lang/Long;

    .line 380
    .line 381
    iget-wide v3, v1, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 382
    .line 383
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 384
    .line 385
    .line 386
    move-result-object v3

    .line 387
    iget-wide v4, v1, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 388
    .line 389
    iget-wide v9, v1, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 390
    .line 391
    cmp-long v4, v4, v9

    .line 392
    .line 393
    if-lez v4, :cond_b

    .line 394
    .line 395
    move-object v6, v3

    .line 396
    :cond_b
    iput-object v6, v0, Lji;->dateUpdated:Ljava/lang/Long;

    .line 397
    .line 398
    invoke-static {v1}, Lg00;->y(Landroid/content/pm/PackageInfo;)Z

    .line 399
    .line 400
    .line 401
    move-result v3

    .line 402
    iput-boolean v3, v0, Lji;->isBundled:Z

    .line 403
    .line 404
    if-eqz v2, :cond_c

    .line 405
    .line 406
    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 407
    .line 408
    const/4 v3, 0x1

    .line 409
    if-ne v2, v3, :cond_c

    .line 410
    .line 411
    const/4 v8, 0x1

    .line 412
    :cond_c
    iput-boolean v8, v0, Lji;->enabled:Z

    .line 413
    .line 414
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 415
    .line 416
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 417
    .line 418
    .line 419
    new-instance v2, Lbk;

    .line 420
    .line 421
    const/4 v3, 0x5

    .line 422
    invoke-direct {v2, v1, v3}, Lbk;-><init>(Ljava/lang/Object;I)V

    .line 423
    .line 424
    .line 425
    const/16 v1, 0x8

    .line 426
    .line 427
    const-string v3, "AppUtil"

    .line 428
    .line 429
    const-string v4, "getInstallerPackage"

    .line 430
    .line 431
    const/4 v5, 0x1

    .line 432
    invoke-static {v3, v4, v5, v2, v1}, Lio4;->j(Ljava/lang/String;Ljava/lang/String;ZLbt3;I)Ljava/lang/Object;

    .line 433
    .line 434
    .line 435
    move-result-object v1

    .line 436
    check-cast v1, Ljava/lang/String;

    .line 437
    .line 438
    iput-object v1, v0, Lji;->_installerPackage:Ljava/lang/String;

    .line 439
    .line 440
    return-void
.end method

.method public final setHasRestorableLocalBackup(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lji;->hasRestorableLocalBackup:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public final setInstalled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lji;->isInstalled:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setLabels(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lji;->labels:Ljava/util/Set;

    .line 2
    .line 3
    return-void
.end method

.method public final setLaunchable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lji;->isLaunchable:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setLocalBackups(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lgm;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lji;->localBackups:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lji;->name:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public final setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lji;->packageName:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public final setRandomIdToForceNotifyChange(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lji;->randomIdToForceNotifyChange:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setSharedLibsInfos(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lyc7;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lji;->sharedLibsInfos:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public final setSizeInfo(Lqx;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lji;->sizeInfo:Lqx;

    .line 2
    .line 3
    return-void
.end method

.method public final setSourceDir(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lji;->sourceDir:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setSplitSourceDirs(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lji;->splitSourceDirs:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public final setVersionCode(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lji;->versionCode:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setVersionName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lji;->versionName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final set_installerPackage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lji;->_installerPackage:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lji;->packageName:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, v0, Lji;->name:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, v0, Lji;->appId:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, v0, Lji;->versionName:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, v0, Lji;->versionCode:Ljava/lang/Long;

    .line 12
    .line 13
    iget-object v6, v0, Lji;->sourceDir:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v7, v0, Lji;->dataDir:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v8, v0, Lji;->deDataDir:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v9, v0, Lji;->splitSourceDirs:Ljava/util/List;

    .line 20
    .line 21
    iget-object v10, v0, Lji;->sharedLibsInfos:Ljava/util/List;

    .line 22
    .line 23
    iget-object v11, v0, Lji;->dateInstalled:Ljava/lang/Long;

    .line 24
    .line 25
    iget-object v12, v0, Lji;->dateUpdated:Ljava/lang/Long;

    .line 26
    .line 27
    iget-object v13, v0, Lji;->dateBackup:Ljava/lang/Long;

    .line 28
    .line 29
    iget-object v14, v0, Lji;->dateBackupUpdated:Ljava/lang/Long;

    .line 30
    .line 31
    iget-object v15, v0, Lji;->hasRestorableLocalBackup:Ljava/lang/Boolean;

    .line 32
    .line 33
    move-object/from16 v16, v15

    .line 34
    .line 35
    iget-boolean v15, v0, Lji;->isLaunchable:Z

    .line 36
    .line 37
    move/from16 v17, v15

    .line 38
    .line 39
    iget-boolean v15, v0, Lji;->isBundled:Z

    .line 40
    .line 41
    move/from16 v18, v15

    .line 42
    .line 43
    iget-boolean v15, v0, Lji;->isInstalled:Z

    .line 44
    .line 45
    move/from16 v19, v15

    .line 46
    .line 47
    iget-boolean v15, v0, Lji;->enabled:Z

    .line 48
    .line 49
    move/from16 v20, v15

    .line 50
    .line 51
    iget-object v15, v0, Lji;->sizeInfo:Lqx;

    .line 52
    .line 53
    move-object/from16 v21, v15

    .line 54
    .line 55
    iget-object v15, v0, Lji;->_installerPackage:Ljava/lang/String;

    .line 56
    .line 57
    move-object/from16 v22, v15

    .line 58
    .line 59
    iget-object v15, v0, Lji;->localBackups:Ljava/util/List;

    .line 60
    .line 61
    move-object/from16 v23, v15

    .line 62
    .line 63
    iget-boolean v15, v0, Lji;->isCloudApp:Z

    .line 64
    .line 65
    move/from16 v24, v15

    .line 66
    .line 67
    iget-object v15, v0, Lji;->cloudBackups:Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;

    .line 68
    .line 69
    move-object/from16 v25, v15

    .line 70
    .line 71
    iget-boolean v15, v0, Lji;->isFavorite:Z

    .line 72
    .line 73
    move/from16 v26, v15

    .line 74
    .line 75
    iget-object v15, v0, Lji;->labels:Ljava/util/Set;

    .line 76
    .line 77
    iget-object v0, v0, Lji;->randomIdToForceNotifyChange:Ljava/lang/String;

    .line 78
    .line 79
    move-object/from16 p0, v0

    .line 80
    .line 81
    const-string v0, ", name="

    .line 82
    .line 83
    move-object/from16 v27, v15

    .line 84
    .line 85
    const-string v15, ", appId="

    .line 86
    .line 87
    move-object/from16 v28, v13

    .line 88
    .line 89
    const-string v13, "App(packageName="

    .line 90
    .line 91
    invoke-static {v13, v1, v0, v2, v15}, Lu48;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    const-string v1, ", versionName="

    .line 96
    .line 97
    const-string v2, ", versionCode="

    .line 98
    .line 99
    invoke-static {v0, v3, v1, v4, v2}, Lxs1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string v1, ", sourceDir="

    .line 106
    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v1, ", dataDir="

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string v1, ", deDataDir="

    .line 119
    .line 120
    const-string v2, ", splitSourceDirs="

    .line 121
    .line 122
    invoke-static {v0, v7, v1, v8, v2}, Lxs1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const-string v1, ", sharedLibsInfos="

    .line 129
    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string v1, ", dateInstalled="

    .line 137
    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    const-string v1, ", dateUpdated="

    .line 142
    .line 143
    const-string v2, ", dateBackup="

    .line 144
    .line 145
    invoke-static {v0, v11, v1, v12, v2}, Lfz5;->q(Ljava/lang/StringBuilder;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    const-string v1, ", dateBackupUpdated="

    .line 149
    .line 150
    const-string v2, ", hasRestorableLocalBackup="

    .line 151
    .line 152
    move-object/from16 v3, v28

    .line 153
    .line 154
    invoke-static {v0, v3, v1, v14, v2}, Lfz5;->q(Ljava/lang/StringBuilder;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    move-object/from16 v1, v16

    .line 158
    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    const-string v1, ", isLaunchable="

    .line 163
    .line 164
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    move/from16 v1, v17

    .line 168
    .line 169
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    const-string v1, ", isBundled="

    .line 173
    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    move/from16 v1, v18

    .line 178
    .line 179
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    const-string v1, ", isInstalled="

    .line 183
    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    move/from16 v1, v19

    .line 188
    .line 189
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    const-string v1, ", enabled="

    .line 193
    .line 194
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    move/from16 v1, v20

    .line 198
    .line 199
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    const-string v1, ", sizeInfo="

    .line 203
    .line 204
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    move-object/from16 v1, v21

    .line 208
    .line 209
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    const-string v1, ", _installerPackage="

    .line 213
    .line 214
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    move-object/from16 v1, v22

    .line 218
    .line 219
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    const-string v1, ", localBackups="

    .line 223
    .line 224
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    move-object/from16 v1, v23

    .line 228
    .line 229
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    const-string v1, ", isCloudApp="

    .line 233
    .line 234
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    move/from16 v1, v24

    .line 238
    .line 239
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    const-string v1, ", cloudBackups="

    .line 243
    .line 244
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    move-object/from16 v1, v25

    .line 248
    .line 249
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    const-string v1, ", isFavorite="

    .line 253
    .line 254
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    move/from16 v1, v26

    .line 258
    .line 259
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    const-string v1, ", labels="

    .line 263
    .line 264
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    move-object/from16 v1, v27

    .line 268
    .line 269
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    const-string v1, ", randomIdToForceNotifyChange="

    .line 273
    .line 274
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    const-string v1, ")"

    .line 278
    .line 279
    move-object/from16 v2, p0

    .line 280
    .line 281
    invoke-static {v0, v2, v1}, Ldj7;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lji;->packageName:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lji;->name:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lji;->appId:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lji;->versionName:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lji;->versionCode:Ljava/lang/Long;

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    const/4 v2, 0x0

    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-static {p1, v1, v0}, Lfz5;->p(Landroid/os/Parcel;ILjava/lang/Long;)V

    .line 35
    .line 36
    .line 37
    :goto_0
    iget-object v0, p0, Lji;->sourceDir:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lji;->dataDir:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lji;->deDataDir:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lji;->splitSourceDirs:Ljava/util/List;

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lji;->sharedLibsInfos:Ljava/util/List;

    .line 58
    .line 59
    if-nez v0, :cond_1

    .line 60
    .line 61
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    .line 67
    .line 68
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    .line 74
    .line 75
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    if-eqz v3, :cond_2

    .line 84
    .line 85
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    check-cast v3, Lyc7;

    .line 90
    .line 91
    invoke-virtual {v3, p1, p2}, Lyc7;->writeToParcel(Landroid/os/Parcel;I)V

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_2
    :goto_2
    iget-object v0, p0, Lji;->dateInstalled:Ljava/lang/Long;

    .line 96
    .line 97
    if-nez v0, :cond_3

    .line 98
    .line 99
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    .line 101
    .line 102
    goto :goto_3

    .line 103
    :cond_3
    invoke-static {p1, v1, v0}, Lfz5;->p(Landroid/os/Parcel;ILjava/lang/Long;)V

    .line 104
    .line 105
    .line 106
    :goto_3
    iget-object v0, p0, Lji;->dateUpdated:Ljava/lang/Long;

    .line 107
    .line 108
    if-nez v0, :cond_4

    .line 109
    .line 110
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    .line 112
    .line 113
    goto :goto_4

    .line 114
    :cond_4
    invoke-static {p1, v1, v0}, Lfz5;->p(Landroid/os/Parcel;ILjava/lang/Long;)V

    .line 115
    .line 116
    .line 117
    :goto_4
    iget-object v0, p0, Lji;->dateBackup:Ljava/lang/Long;

    .line 118
    .line 119
    if-nez v0, :cond_5

    .line 120
    .line 121
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    .line 123
    .line 124
    goto :goto_5

    .line 125
    :cond_5
    invoke-static {p1, v1, v0}, Lfz5;->p(Landroid/os/Parcel;ILjava/lang/Long;)V

    .line 126
    .line 127
    .line 128
    :goto_5
    iget-object v0, p0, Lji;->dateBackupUpdated:Ljava/lang/Long;

    .line 129
    .line 130
    if-nez v0, :cond_6

    .line 131
    .line 132
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    .line 134
    .line 135
    goto :goto_6

    .line 136
    :cond_6
    invoke-static {p1, v1, v0}, Lfz5;->p(Landroid/os/Parcel;ILjava/lang/Long;)V

    .line 137
    .line 138
    .line 139
    :goto_6
    iget-object v0, p0, Lji;->hasRestorableLocalBackup:Ljava/lang/Boolean;

    .line 140
    .line 141
    if-nez v0, :cond_7

    .line 142
    .line 143
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    .line 145
    .line 146
    goto :goto_7

    .line 147
    :cond_7
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    .line 156
    .line 157
    :goto_7
    iget-boolean v0, p0, Lji;->isLaunchable:Z

    .line 158
    .line 159
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    .line 161
    .line 162
    iget-boolean v0, p0, Lji;->isBundled:Z

    .line 163
    .line 164
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    .line 166
    .line 167
    iget-boolean v0, p0, Lji;->isInstalled:Z

    .line 168
    .line 169
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    .line 171
    .line 172
    iget-boolean v0, p0, Lji;->enabled:Z

    .line 173
    .line 174
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    .line 176
    .line 177
    iget-object v0, p0, Lji;->sizeInfo:Lqx;

    .line 178
    .line 179
    if-nez v0, :cond_8

    .line 180
    .line 181
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    .line 183
    .line 184
    goto :goto_8

    .line 185
    :cond_8
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0, p1, p2}, Lqx;->writeToParcel(Landroid/os/Parcel;I)V

    .line 189
    .line 190
    .line 191
    :goto_8
    iget-object v0, p0, Lji;->_installerPackage:Ljava/lang/String;

    .line 192
    .line 193
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    iget-object v0, p0, Lji;->localBackups:Ljava/util/List;

    .line 197
    .line 198
    if-nez v0, :cond_9

    .line 199
    .line 200
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    .line 202
    .line 203
    goto :goto_a

    .line 204
    :cond_9
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    .line 206
    .line 207
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 208
    .line 209
    .line 210
    move-result v3

    .line 211
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    .line 213
    .line 214
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 219
    .line 220
    .line 221
    move-result v3

    .line 222
    if-eqz v3, :cond_a

    .line 223
    .line 224
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v3

    .line 228
    check-cast v3, Lgm;

    .line 229
    .line 230
    invoke-virtual {v3, p1, p2}, Lgm;->writeToParcel(Landroid/os/Parcel;I)V

    .line 231
    .line 232
    .line 233
    goto :goto_9

    .line 234
    :cond_a
    :goto_a
    iget-boolean v0, p0, Lji;->isCloudApp:Z

    .line 235
    .line 236
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    .line 238
    .line 239
    iget-object v0, p0, Lji;->cloudBackups:Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;

    .line 240
    .line 241
    if-nez v0, :cond_b

    .line 242
    .line 243
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 244
    .line 245
    .line 246
    goto :goto_b

    .line 247
    :cond_b
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v0, p1, p2}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;->writeToParcel(Landroid/os/Parcel;I)V

    .line 251
    .line 252
    .line 253
    :goto_b
    iget-boolean v0, p0, Lji;->isFavorite:Z

    .line 254
    .line 255
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 256
    .line 257
    .line 258
    iget-object v0, p0, Lji;->labels:Ljava/util/Set;

    .line 259
    .line 260
    if-nez v0, :cond_c

    .line 261
    .line 262
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 263
    .line 264
    .line 265
    goto :goto_d

    .line 266
    :cond_c
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 267
    .line 268
    .line 269
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 270
    .line 271
    .line 272
    move-result v1

    .line 273
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 274
    .line 275
    .line 276
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 281
    .line 282
    .line 283
    move-result v1

    .line 284
    if-eqz v1, :cond_d

    .line 285
    .line 286
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object v1

    .line 290
    check-cast v1, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;

    .line 291
    .line 292
    invoke-virtual {v1, p1, p2}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->writeToParcel(Landroid/os/Parcel;I)V

    .line 293
    .line 294
    .line 295
    goto :goto_c

    .line 296
    :cond_d
    :goto_d
    iget-object p0, p0, Lji;->randomIdToForceNotifyChange:Ljava/lang/String;

    .line 297
    .line 298
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    return-void
.end method
